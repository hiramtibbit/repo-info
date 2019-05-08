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
$ docker pull redis@sha256:7fc9611f45fe48b6ee5b31775c697557c627df3c74045e9d8b2e1fbd6d3de77b
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
$ docker pull redis@sha256:7fc9611f45fe48b6ee5b31775c697557c627df3c74045e9d8b2e1fbd6d3de77b
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
$ docker pull redis@sha256:0234510fa3cdd474e6ec718842f0b860161569de00deb80ca49989182561b6f4
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
$ docker pull redis@sha256:64dfae7bd973c94511110d9e92aa99915eebbb21bfde4f692a46785e68cd4b68
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28397841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2831af28978b0783a850816bcb9d4f6abcbf64fb4769cbd2cf1e7cc35727632`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Mar 2019 12:07:48 GMT
ADD file:6bf06125d936ccaf67981470df5ef6b9bd5dee3c0ef0e042a448fc60bb02f191 in / 
# Wed, 27 Mar 2019 12:07:49 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 15:20:43 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 15:20:44 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 15:21:25 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 15:22:49 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 27 Mar 2019 15:22:49 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 27 Mar 2019 15:22:50 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 27 Mar 2019 15:23:31 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 15:23:33 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 15:23:34 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 15:23:34 GMT
WORKDIR /data
# Wed, 27 Mar 2019 15:23:35 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 15:23:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 15:23:36 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 15:23:36 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:fac132c5d16f670820c8c4ae332bd663c2ff856e9af86b2b23a201db263d851e`  
		Last Modified: Wed, 27 Mar 2019 12:13:15 GMT  
		Size: 19.3 MB (19282442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e2fe4e656b4ef2c65b13804ba160b7e965946dfa62ac428ae2e06c6be52e805`  
		Last Modified: Wed, 27 Mar 2019 15:24:02 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9425121a58ef3107c6a89df6558f6a58f7894a6ad37ef27fb928e53cb4004556`  
		Last Modified: Wed, 27 Mar 2019 15:24:03 GMT  
		Size: 915.9 KB (915851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfa62a7c8adc4d41b8db0babbfc6c2ac25fb5f55e993ec593084e2759e01c429`  
		Last Modified: Wed, 27 Mar 2019 15:24:26 GMT  
		Size: 8.2 MB (8197267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86a981f240d5b98379df31d263d21f4ea9623dfac103beeb3daa8f596f2f4133`  
		Last Modified: Wed, 27 Mar 2019 15:24:24 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07de251417530d354db9c5a45a5d4ec41926fd5c9c4eca42bcf0b4aec0493cf3`  
		Last Modified: Wed, 27 Mar 2019 15:24:24 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:3eac20b9b226f06478b8a650dd5633bf1c55377f15c39bc0e5d5f3aa13f27f22
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.7 MB (29748823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a702f300b3df49d861d4be07d9d4805e4d2d4bc18ce3d0dce0cd816172963a1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:46 GMT
ADD file:9db7760cb1c28ef0cd3fa9ee9d0f528d2bcfe80b1c3973daa9f87e30b2047102 in / 
# Wed, 27 Mar 2019 08:47:47 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:09:11 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 12:09:12 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 12:11:14 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 12:14:19 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 27 Mar 2019 12:14:20 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 27 Mar 2019 12:14:20 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 27 Mar 2019 12:17:24 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 12:17:26 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 12:17:27 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 12:17:27 GMT
WORKDIR /data
# Wed, 27 Mar 2019 12:17:28 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 12:17:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 12:17:30 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 12:17:30 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:007027d142c80b166a004bc7265c04036b80df438ac408f1a947e05c581b418e`  
		Last Modified: Wed, 27 Mar 2019 08:52:56 GMT  
		Size: 20.3 MB (20340179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf60f2128f3195c471ec3689b8be025149dcff169970e8d8968c4864c282c8cd`  
		Last Modified: Wed, 27 Mar 2019 12:18:10 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcf7593f1ca581039b8fd820fbd9a7b8dabbf87cb88ae708b921ab5d18bee68c`  
		Last Modified: Wed, 27 Mar 2019 12:18:10 GMT  
		Size: 908.1 KB (908060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5597d685f1041f784c1600ed455161a8dae073fd5b1b00190bac2fa4155d32e`  
		Last Modified: Wed, 27 Mar 2019 12:18:40 GMT  
		Size: 8.5 MB (8498329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4388924faeaff651b6398d721f550ddba938511b550a42babf2366dea8458e2`  
		Last Modified: Wed, 27 Mar 2019 12:18:36 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a330a6abb07de3e45384c34b541a6a3881d0f71890e59bd4ed6c9c6afa0c9759`  
		Last Modified: Wed, 27 Mar 2019 12:18:36 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; 386

```console
$ docker pull redis@sha256:42643c982b5ce8bccdd31e0bef870313d9ff0cb2aee50fb5ca7451f91da2245f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32306370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e21273c1123b3b32fbb0523226fb4bfb4c58e00ad5cee8e576b1bb9caad7311`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Mar 2019 10:43:41 GMT
ADD file:13e40d14dbdd0814b4fb7b2a378757164620517fec383739c87747c27e07d8e7 in / 
# Wed, 27 Mar 2019 10:43:41 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 16:13:05 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 16:13:06 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 16:13:20 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 16:14:35 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 27 Mar 2019 16:14:35 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 27 Mar 2019 16:14:36 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 27 Mar 2019 16:15:15 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 16:15:16 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 16:15:16 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 16:15:16 GMT
WORKDIR /data
# Wed, 27 Mar 2019 16:15:16 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 16:15:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 16:15:17 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 16:15:17 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:a5ba78e1989e52ae238c3f225934c1a2dee4dfaa4667abd6f2e0717b78159472`  
		Last Modified: Wed, 27 Mar 2019 10:49:24 GMT  
		Size: 23.1 MB (23125745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcc0e5b68b9dbbba70332f0cad07bf511d38a873ec0d6c82b4c06e897e924689`  
		Last Modified: Wed, 27 Mar 2019 16:15:34 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2a0f34b494237693bbdb853e52e9727e46f0f5a30d022759bcb9cc90710cb1e`  
		Last Modified: Wed, 27 Mar 2019 16:15:34 GMT  
		Size: 920.2 KB (920184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ade7b786a71575d0d0b9641d5ee086c370698b1dbd4ac1fbcf0c5402abd0429a`  
		Last Modified: Wed, 27 Mar 2019 16:15:46 GMT  
		Size: 8.3 MB (8258192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a68814567d45a0baf2a13183cf5ab57dd62879035674ef45702d38699a80306`  
		Last Modified: Wed, 27 Mar 2019 16:15:44 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:418f76c6bc7a112f5a64bf9f367edfe3cdb48e1bbe70688f4ff6186f105dfee0`  
		Last Modified: Wed, 27 Mar 2019 16:15:44 GMT  
		Size: 418.0 B  
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
$ docker pull redis@sha256:0234510fa3cdd474e6ec718842f0b860161569de00deb80ca49989182561b6f4
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
$ docker pull redis@sha256:64dfae7bd973c94511110d9e92aa99915eebbb21bfde4f692a46785e68cd4b68
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28397841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2831af28978b0783a850816bcb9d4f6abcbf64fb4769cbd2cf1e7cc35727632`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Mar 2019 12:07:48 GMT
ADD file:6bf06125d936ccaf67981470df5ef6b9bd5dee3c0ef0e042a448fc60bb02f191 in / 
# Wed, 27 Mar 2019 12:07:49 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 15:20:43 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 15:20:44 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 15:21:25 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 15:22:49 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 27 Mar 2019 15:22:49 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 27 Mar 2019 15:22:50 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 27 Mar 2019 15:23:31 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 15:23:33 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 15:23:34 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 15:23:34 GMT
WORKDIR /data
# Wed, 27 Mar 2019 15:23:35 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 15:23:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 15:23:36 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 15:23:36 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:fac132c5d16f670820c8c4ae332bd663c2ff856e9af86b2b23a201db263d851e`  
		Last Modified: Wed, 27 Mar 2019 12:13:15 GMT  
		Size: 19.3 MB (19282442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e2fe4e656b4ef2c65b13804ba160b7e965946dfa62ac428ae2e06c6be52e805`  
		Last Modified: Wed, 27 Mar 2019 15:24:02 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9425121a58ef3107c6a89df6558f6a58f7894a6ad37ef27fb928e53cb4004556`  
		Last Modified: Wed, 27 Mar 2019 15:24:03 GMT  
		Size: 915.9 KB (915851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfa62a7c8adc4d41b8db0babbfc6c2ac25fb5f55e993ec593084e2759e01c429`  
		Last Modified: Wed, 27 Mar 2019 15:24:26 GMT  
		Size: 8.2 MB (8197267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86a981f240d5b98379df31d263d21f4ea9623dfac103beeb3daa8f596f2f4133`  
		Last Modified: Wed, 27 Mar 2019 15:24:24 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07de251417530d354db9c5a45a5d4ec41926fd5c9c4eca42bcf0b4aec0493cf3`  
		Last Modified: Wed, 27 Mar 2019 15:24:24 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:3eac20b9b226f06478b8a650dd5633bf1c55377f15c39bc0e5d5f3aa13f27f22
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.7 MB (29748823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a702f300b3df49d861d4be07d9d4805e4d2d4bc18ce3d0dce0cd816172963a1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:46 GMT
ADD file:9db7760cb1c28ef0cd3fa9ee9d0f528d2bcfe80b1c3973daa9f87e30b2047102 in / 
# Wed, 27 Mar 2019 08:47:47 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:09:11 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 12:09:12 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 12:11:14 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 12:14:19 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 27 Mar 2019 12:14:20 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 27 Mar 2019 12:14:20 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 27 Mar 2019 12:17:24 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 12:17:26 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 12:17:27 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 12:17:27 GMT
WORKDIR /data
# Wed, 27 Mar 2019 12:17:28 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 12:17:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 12:17:30 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 12:17:30 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:007027d142c80b166a004bc7265c04036b80df438ac408f1a947e05c581b418e`  
		Last Modified: Wed, 27 Mar 2019 08:52:56 GMT  
		Size: 20.3 MB (20340179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf60f2128f3195c471ec3689b8be025149dcff169970e8d8968c4864c282c8cd`  
		Last Modified: Wed, 27 Mar 2019 12:18:10 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcf7593f1ca581039b8fd820fbd9a7b8dabbf87cb88ae708b921ab5d18bee68c`  
		Last Modified: Wed, 27 Mar 2019 12:18:10 GMT  
		Size: 908.1 KB (908060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5597d685f1041f784c1600ed455161a8dae073fd5b1b00190bac2fa4155d32e`  
		Last Modified: Wed, 27 Mar 2019 12:18:40 GMT  
		Size: 8.5 MB (8498329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4388924faeaff651b6398d721f550ddba938511b550a42babf2366dea8458e2`  
		Last Modified: Wed, 27 Mar 2019 12:18:36 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a330a6abb07de3e45384c34b541a6a3881d0f71890e59bd4ed6c9c6afa0c9759`  
		Last Modified: Wed, 27 Mar 2019 12:18:36 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; 386

```console
$ docker pull redis@sha256:42643c982b5ce8bccdd31e0bef870313d9ff0cb2aee50fb5ca7451f91da2245f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32306370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e21273c1123b3b32fbb0523226fb4bfb4c58e00ad5cee8e576b1bb9caad7311`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Mar 2019 10:43:41 GMT
ADD file:13e40d14dbdd0814b4fb7b2a378757164620517fec383739c87747c27e07d8e7 in / 
# Wed, 27 Mar 2019 10:43:41 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 16:13:05 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 16:13:06 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 16:13:20 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 16:14:35 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 27 Mar 2019 16:14:35 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 27 Mar 2019 16:14:36 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 27 Mar 2019 16:15:15 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 16:15:16 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 16:15:16 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 16:15:16 GMT
WORKDIR /data
# Wed, 27 Mar 2019 16:15:16 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 16:15:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 16:15:17 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 16:15:17 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:a5ba78e1989e52ae238c3f225934c1a2dee4dfaa4667abd6f2e0717b78159472`  
		Last Modified: Wed, 27 Mar 2019 10:49:24 GMT  
		Size: 23.1 MB (23125745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcc0e5b68b9dbbba70332f0cad07bf511d38a873ec0d6c82b4c06e897e924689`  
		Last Modified: Wed, 27 Mar 2019 16:15:34 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2a0f34b494237693bbdb853e52e9727e46f0f5a30d022759bcb9cc90710cb1e`  
		Last Modified: Wed, 27 Mar 2019 16:15:34 GMT  
		Size: 920.2 KB (920184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ade7b786a71575d0d0b9641d5ee086c370698b1dbd4ac1fbcf0c5402abd0429a`  
		Last Modified: Wed, 27 Mar 2019 16:15:46 GMT  
		Size: 8.3 MB (8258192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a68814567d45a0baf2a13183cf5ab57dd62879035674ef45702d38699a80306`  
		Last Modified: Wed, 27 Mar 2019 16:15:44 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:418f76c6bc7a112f5a64bf9f367edfe3cdb48e1bbe70688f4ff6186f105dfee0`  
		Last Modified: Wed, 27 Mar 2019 16:15:44 GMT  
		Size: 418.0 B  
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
$ docker pull redis@sha256:0234510fa3cdd474e6ec718842f0b860161569de00deb80ca49989182561b6f4
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
$ docker pull redis@sha256:64dfae7bd973c94511110d9e92aa99915eebbb21bfde4f692a46785e68cd4b68
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28397841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2831af28978b0783a850816bcb9d4f6abcbf64fb4769cbd2cf1e7cc35727632`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Mar 2019 12:07:48 GMT
ADD file:6bf06125d936ccaf67981470df5ef6b9bd5dee3c0ef0e042a448fc60bb02f191 in / 
# Wed, 27 Mar 2019 12:07:49 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 15:20:43 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 15:20:44 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 15:21:25 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 15:22:49 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 27 Mar 2019 15:22:49 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 27 Mar 2019 15:22:50 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 27 Mar 2019 15:23:31 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 15:23:33 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 15:23:34 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 15:23:34 GMT
WORKDIR /data
# Wed, 27 Mar 2019 15:23:35 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 15:23:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 15:23:36 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 15:23:36 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:fac132c5d16f670820c8c4ae332bd663c2ff856e9af86b2b23a201db263d851e`  
		Last Modified: Wed, 27 Mar 2019 12:13:15 GMT  
		Size: 19.3 MB (19282442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e2fe4e656b4ef2c65b13804ba160b7e965946dfa62ac428ae2e06c6be52e805`  
		Last Modified: Wed, 27 Mar 2019 15:24:02 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9425121a58ef3107c6a89df6558f6a58f7894a6ad37ef27fb928e53cb4004556`  
		Last Modified: Wed, 27 Mar 2019 15:24:03 GMT  
		Size: 915.9 KB (915851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfa62a7c8adc4d41b8db0babbfc6c2ac25fb5f55e993ec593084e2759e01c429`  
		Last Modified: Wed, 27 Mar 2019 15:24:26 GMT  
		Size: 8.2 MB (8197267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86a981f240d5b98379df31d263d21f4ea9623dfac103beeb3daa8f596f2f4133`  
		Last Modified: Wed, 27 Mar 2019 15:24:24 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07de251417530d354db9c5a45a5d4ec41926fd5c9c4eca42bcf0b4aec0493cf3`  
		Last Modified: Wed, 27 Mar 2019 15:24:24 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.14` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:3eac20b9b226f06478b8a650dd5633bf1c55377f15c39bc0e5d5f3aa13f27f22
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.7 MB (29748823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a702f300b3df49d861d4be07d9d4805e4d2d4bc18ce3d0dce0cd816172963a1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:46 GMT
ADD file:9db7760cb1c28ef0cd3fa9ee9d0f528d2bcfe80b1c3973daa9f87e30b2047102 in / 
# Wed, 27 Mar 2019 08:47:47 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:09:11 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 12:09:12 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 12:11:14 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 12:14:19 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 27 Mar 2019 12:14:20 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 27 Mar 2019 12:14:20 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 27 Mar 2019 12:17:24 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 12:17:26 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 12:17:27 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 12:17:27 GMT
WORKDIR /data
# Wed, 27 Mar 2019 12:17:28 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 12:17:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 12:17:30 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 12:17:30 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:007027d142c80b166a004bc7265c04036b80df438ac408f1a947e05c581b418e`  
		Last Modified: Wed, 27 Mar 2019 08:52:56 GMT  
		Size: 20.3 MB (20340179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf60f2128f3195c471ec3689b8be025149dcff169970e8d8968c4864c282c8cd`  
		Last Modified: Wed, 27 Mar 2019 12:18:10 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcf7593f1ca581039b8fd820fbd9a7b8dabbf87cb88ae708b921ab5d18bee68c`  
		Last Modified: Wed, 27 Mar 2019 12:18:10 GMT  
		Size: 908.1 KB (908060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5597d685f1041f784c1600ed455161a8dae073fd5b1b00190bac2fa4155d32e`  
		Last Modified: Wed, 27 Mar 2019 12:18:40 GMT  
		Size: 8.5 MB (8498329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4388924faeaff651b6398d721f550ddba938511b550a42babf2366dea8458e2`  
		Last Modified: Wed, 27 Mar 2019 12:18:36 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a330a6abb07de3e45384c34b541a6a3881d0f71890e59bd4ed6c9c6afa0c9759`  
		Last Modified: Wed, 27 Mar 2019 12:18:36 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.14` - linux; 386

```console
$ docker pull redis@sha256:42643c982b5ce8bccdd31e0bef870313d9ff0cb2aee50fb5ca7451f91da2245f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32306370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e21273c1123b3b32fbb0523226fb4bfb4c58e00ad5cee8e576b1bb9caad7311`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Mar 2019 10:43:41 GMT
ADD file:13e40d14dbdd0814b4fb7b2a378757164620517fec383739c87747c27e07d8e7 in / 
# Wed, 27 Mar 2019 10:43:41 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 16:13:05 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 16:13:06 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 16:13:20 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 16:14:35 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 27 Mar 2019 16:14:35 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 27 Mar 2019 16:14:36 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 27 Mar 2019 16:15:15 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 16:15:16 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 16:15:16 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 16:15:16 GMT
WORKDIR /data
# Wed, 27 Mar 2019 16:15:16 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 16:15:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 16:15:17 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 16:15:17 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:a5ba78e1989e52ae238c3f225934c1a2dee4dfaa4667abd6f2e0717b78159472`  
		Last Modified: Wed, 27 Mar 2019 10:49:24 GMT  
		Size: 23.1 MB (23125745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcc0e5b68b9dbbba70332f0cad07bf511d38a873ec0d6c82b4c06e897e924689`  
		Last Modified: Wed, 27 Mar 2019 16:15:34 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2a0f34b494237693bbdb853e52e9727e46f0f5a30d022759bcb9cc90710cb1e`  
		Last Modified: Wed, 27 Mar 2019 16:15:34 GMT  
		Size: 920.2 KB (920184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ade7b786a71575d0d0b9641d5ee086c370698b1dbd4ac1fbcf0c5402abd0429a`  
		Last Modified: Wed, 27 Mar 2019 16:15:46 GMT  
		Size: 8.3 MB (8258192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a68814567d45a0baf2a13183cf5ab57dd62879035674ef45702d38699a80306`  
		Last Modified: Wed, 27 Mar 2019 16:15:44 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:418f76c6bc7a112f5a64bf9f367edfe3cdb48e1bbe70688f4ff6186f105dfee0`  
		Last Modified: Wed, 27 Mar 2019 16:15:44 GMT  
		Size: 418.0 B  
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
$ docker pull redis@sha256:0b87e59d1d0908e07b8895735e846cbe26bca16890cfd7b05c6100fc0a1c1588
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
$ docker pull redis@sha256:0b87e59d1d0908e07b8895735e846cbe26bca16890cfd7b05c6100fc0a1c1588
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
$ docker pull redis@sha256:f6226137081875ee70351244851a326208ffec21ed44abbdc71d74c99d961121
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
$ docker pull redis@sha256:c80e7c19b42cc376597791e2ccb9a516ec18d20a0e2a74c461ec6cffdef82c6d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 MB (13945712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e3119fbb796502da4ac9e1aff74a343d6b3a6ad522837d22406b200be11d548`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Tue, 09 Apr 2019 23:56:52 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Tue, 09 Apr 2019 23:56:54 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Tue, 09 Apr 2019 23:58:40 GMT
ENV REDIS_VERSION=4.0.14
# Tue, 09 Apr 2019 23:58:40 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Tue, 09 Apr 2019 23:58:40 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Tue, 09 Apr 2019 23:59:14 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Tue, 09 Apr 2019 23:59:15 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 09 Apr 2019 23:59:15 GMT
VOLUME [/data]
# Tue, 09 Apr 2019 23:59:15 GMT
WORKDIR /data
# Tue, 09 Apr 2019 23:59:15 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Tue, 09 Apr 2019 23:59:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 Apr 2019 23:59:16 GMT
EXPOSE 6379
# Tue, 09 Apr 2019 23:59:16 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:542e0c4f2f182e0f9c8c3e8a9a4303f5478207940914c9a88232c829c4e74fcf`  
		Last Modified: Tue, 09 Apr 2019 23:59:41 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbf113c39f6550bbc31b5b985e138e40938b5902f154527a952cdd45b0868b11`  
		Last Modified: Tue, 09 Apr 2019 23:59:41 GMT  
		Size: 403.0 KB (403004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:976c755ff9d681459e3fc55196d0850fb1ccd02711d8d3ac84ccaa7f2b3c675e`  
		Last Modified: Tue, 09 Apr 2019 23:59:56 GMT  
		Size: 10.8 MB (10783933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:825af00ce8d058b062a6805896d6331108425ad64c3387fd5d983457c2faa313`  
		Last Modified: Tue, 09 Apr 2019 23:59:52 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4351afe1ec8b7e39a7ba947814a4a42edf411cc4ab88db0ee0bcbbdd8c828a0a`  
		Last Modified: Tue, 09 Apr 2019 23:59:52 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.14-alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:516149016d9d7eb5e56975900484e524fd1b8f1d53c962839af93be79bc5595a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.3 MB (13349131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21c072d178b181d50fb973b8150c8a7f7a086cc8172fe820779a4953a32d84f1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 08:26:14 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 Apr 2019 08:26:16 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 10 Apr 2019 08:27:07 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 10 Apr 2019 08:27:07 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 10 Apr 2019 08:27:07 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 10 Apr 2019 08:27:31 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 10 Apr 2019 08:27:33 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 Apr 2019 08:27:33 GMT
VOLUME [/data]
# Wed, 10 Apr 2019 08:27:34 GMT
WORKDIR /data
# Wed, 10 Apr 2019 08:27:34 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 10 Apr 2019 08:27:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 08:27:35 GMT
EXPOSE 6379
# Wed, 10 Apr 2019 08:27:35 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cac72c52417597f37150f22f15904bd5df64bf389a18ebb8145b857f4da966a5`  
		Last Modified: Wed, 10 Apr 2019 08:27:48 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6db8b29787ef73ca4d0464c2c22edee9ca3e063a81cf9a8830b1ec5c8befc20`  
		Last Modified: Wed, 10 Apr 2019 08:27:48 GMT  
		Size: 405.3 KB (405287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa6dfb62ea1fc0a697ec823d63e2c98ad50f432fb6ca6d5761aae0e68b10e9cf`  
		Last Modified: Wed, 10 Apr 2019 08:28:09 GMT  
		Size: 10.4 MB (10398575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13158c6805150f6c4f5f8a3ef9e3228ec59f3c808cfcd2d576691225184031cb`  
		Last Modified: Wed, 10 Apr 2019 08:28:06 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c81f5f8478e4b111b511cf40f73a417774488046fc7e1d47e84a0402cb074aa3`  
		Last Modified: Wed, 10 Apr 2019 08:28:06 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.14-alpine` - linux; arm variant v7

```console
$ docker pull redis@sha256:d9b65d02bfb522f1a9cb3f2e20a94a34bc6378ae49d80c96cac35a03936c2ab6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 MB (12994573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3655c0fd0b129fca49907da27db7a8d20f3a38877ab376f59d159484779f528f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 Apr 2019 11:57:47 GMT
ADD file:1a27b74f23795a1f205247dcd6eff48ac56f0b8f2afe0c358199a0b60f694861 in / 
# Wed, 10 Apr 2019 11:57:48 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 12:31:32 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 Apr 2019 12:31:35 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 10 Apr 2019 12:32:39 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 10 Apr 2019 12:32:39 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 10 Apr 2019 12:32:40 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 10 Apr 2019 12:33:05 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 10 Apr 2019 12:33:07 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 Apr 2019 12:33:08 GMT
VOLUME [/data]
# Wed, 10 Apr 2019 12:33:08 GMT
WORKDIR /data
# Wed, 10 Apr 2019 12:33:09 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 10 Apr 2019 12:33:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 12:33:10 GMT
EXPOSE 6379
# Wed, 10 Apr 2019 12:33:10 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:c2a5cdd4aa08146b4516cc95f6b461f2994250a819b3e6f75f23fa2a8c1b1744`  
		Last Modified: Wed, 10 Apr 2019 11:58:04 GMT  
		Size: 2.4 MB (2350757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f02904c22d1f59beea301a4e2c19f4b14edae521f98cd0cae4edec6c880c34bb`  
		Last Modified: Wed, 10 Apr 2019 12:33:35 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0132ad3f4069c0da06d221747600eb8c244a3bfcf23a05b129ab41c109b76640`  
		Last Modified: Wed, 10 Apr 2019 12:33:35 GMT  
		Size: 398.6 KB (398582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d03579c9d74991005666f6cbeeb010f5c41c679247a70817ac40c6b053a2ebc`  
		Last Modified: Wed, 10 Apr 2019 12:33:57 GMT  
		Size: 10.2 MB (10243402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ee06ddc0f32027d438ca817d00e39d9b0351ea00042cbf084b68f7c687cb59c`  
		Last Modified: Wed, 10 Apr 2019 12:33:55 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:354f584195614a8c5cfa5fac87d57a6b74b73e36d0cb6fdc8d12f481cf4dc67e`  
		Last Modified: Wed, 10 Apr 2019 12:33:54 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.14-alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:d4812abf0bc7a40b7ee15882658e0a255882db368f5ad829446700d98ce22584
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 MB (13744943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d0e3bd088b30596a7ecdf473fa2f658131324257317b8a27706d4071bb6548d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 Apr 2019 08:49:11 GMT
ADD file:30e0a8ccdca70b20b8ce637f0ba5108157f4ba491447d20aafbe45d82392bd81 in / 
# Wed, 10 Apr 2019 08:49:12 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 09:30:47 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 Apr 2019 09:30:51 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 10 Apr 2019 09:32:51 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 10 Apr 2019 09:32:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 10 Apr 2019 09:32:52 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 10 Apr 2019 09:33:41 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 10 Apr 2019 09:33:44 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 Apr 2019 09:33:45 GMT
VOLUME [/data]
# Wed, 10 Apr 2019 09:33:46 GMT
WORKDIR /data
# Wed, 10 Apr 2019 09:33:46 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 10 Apr 2019 09:33:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 09:33:48 GMT
EXPOSE 6379
# Wed, 10 Apr 2019 09:33:49 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6f37394be673296a0fdc21b819c5df40431baf7d3af121bee451726dd1457493`  
		Last Modified: Wed, 10 Apr 2019 08:50:38 GMT  
		Size: 2.7 MB (2688778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd87357e3604d3d4278cd171c27e1f6eab0970cb1af16c2fd37a4df05d7fa114`  
		Last Modified: Wed, 10 Apr 2019 09:34:18 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3ed8d359e92c573c3aa65aa6bf63c31debc70eed441317642f91d442905b980`  
		Last Modified: Wed, 10 Apr 2019 09:34:19 GMT  
		Size: 405.2 KB (405228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f89ba3e0ff5b04c5863eb9bee5806e4d12f05ed6c4a979a468f65aa77cdfdef8`  
		Last Modified: Wed, 10 Apr 2019 09:34:51 GMT  
		Size: 10.6 MB (10649170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19663d0ed9b27292fa1622897264db3a6188174cc1bfeaf8323356d2957a6fd6`  
		Last Modified: Wed, 10 Apr 2019 09:34:47 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc6d8254dc66ab7c184faf0311379ae18139fdfcb11617b2ad54fbbc3d9b3020`  
		Last Modified: Wed, 10 Apr 2019 09:34:47 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.14-alpine` - linux; 386

```console
$ docker pull redis@sha256:a9f629f09c360df1a009b5f46334c62902f966d2abc65062a6f3fd90ab8aac3b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.5 MB (13451176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edde63ef99d3fd58f52413315baa0e0223996efde17b691bc558fe1329e0f9e7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 Apr 2019 10:38:55 GMT
ADD file:51f7bb95ef6cc3519317dcb7abbf6155e6bb7b73a17ad7d90cad7911e8a8933c in / 
# Wed, 10 Apr 2019 10:38:55 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 13:10:48 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 Apr 2019 13:10:49 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 10 Apr 2019 13:12:04 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 10 Apr 2019 13:12:04 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 10 Apr 2019 13:12:04 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 10 Apr 2019 13:12:38 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 10 Apr 2019 13:12:39 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 Apr 2019 13:12:39 GMT
VOLUME [/data]
# Wed, 10 Apr 2019 13:12:39 GMT
WORKDIR /data
# Wed, 10 Apr 2019 13:12:39 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 10 Apr 2019 13:12:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 13:12:40 GMT
EXPOSE 6379
# Wed, 10 Apr 2019 13:12:40 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:9a81e6a1a3b4f174d22173a96692c9aeffaefcd00f40607d508951a2b14d6f1f`  
		Last Modified: Wed, 10 Apr 2019 10:39:15 GMT  
		Size: 2.8 MB (2752162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b30efed26125f06596e1a58493943baf64ba49f78b66a0f10ea815430c3057`  
		Last Modified: Wed, 10 Apr 2019 13:13:00 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2e8a8f5562f29213b62563c0cb0612f50141b1e8f26c831a71a2be46703a387`  
		Last Modified: Wed, 10 Apr 2019 13:13:00 GMT  
		Size: 408.0 KB (408011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47a186cf4c1655bcbca426438d67a2130fba20f277c938263f6f438f3a927a27`  
		Last Modified: Wed, 10 Apr 2019 13:13:15 GMT  
		Size: 10.3 MB (10289237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d7adcf33e9a23a6a4fe1b20460af572161c937e870b11b62088a22f2c718404`  
		Last Modified: Wed, 10 Apr 2019 13:13:12 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df7a12cd6a3c747670d2f93691a98e33948ba68552e5626364edba35df97d700`  
		Last Modified: Wed, 10 Apr 2019 13:13:12 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.14-alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:8f82c43ead4136fb282b0a95ac7ce36b4ae17b45fd85600f92bcc2a23360de95
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14402336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c678fe5968306fac24879a9b89d4066e698cd9873de2830dc24b5b285b822387`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 Apr 2019 08:27:30 GMT
ADD file:c13c1c2b4e6d71924f570a910caf6a1756ea5a28a4017c7b11305e021eacd0ee in / 
# Wed, 10 Apr 2019 08:27:33 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 10:26:02 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 Apr 2019 10:26:09 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 10 Apr 2019 10:28:38 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 10 Apr 2019 10:28:47 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 10 Apr 2019 10:28:53 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 10 Apr 2019 10:29:29 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 10 Apr 2019 10:29:39 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 Apr 2019 10:29:43 GMT
VOLUME [/data]
# Wed, 10 Apr 2019 10:29:48 GMT
WORKDIR /data
# Wed, 10 Apr 2019 10:29:49 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 10 Apr 2019 10:29:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 10:29:55 GMT
EXPOSE 6379
# Wed, 10 Apr 2019 10:29:59 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:fe0f92a92ee06f38abf50fefd22331ac42262e3872ecd2d7ddfa7c24ab71a53a`  
		Last Modified: Wed, 10 Apr 2019 08:28:34 GMT  
		Size: 2.8 MB (2781020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81a3976b0f5f6d320d4e2c4b563bf1d516e9b3dbff3642de3ba2dfdc8aba06df`  
		Last Modified: Wed, 10 Apr 2019 10:30:51 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f552250dac1f95ee5efd4654d27d1b92081cd004b8c8357efb1d5a60bf6b1aa`  
		Last Modified: Wed, 10 Apr 2019 10:30:51 GMT  
		Size: 410.4 KB (410350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09c2c8616bd2f48624b3020ef458b43b0b9c2cca0267c24d2b4017ccde6476fe`  
		Last Modified: Wed, 10 Apr 2019 10:31:33 GMT  
		Size: 11.2 MB (11209134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67fae49a772ab1d392635663595cbc233441f77f45561b61a1de886a8276d001`  
		Last Modified: Wed, 10 Apr 2019 10:31:29 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3649909e0b0f5d7f582d0f3250faa3d424277c82d9fc4725c72f0c881408b71a`  
		Last Modified: Wed, 10 Apr 2019 10:31:29 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.14-alpine` - linux; s390x

```console
$ docker pull redis@sha256:d7a7c643f8502fcca6e3598ebfd52b08d3071a395f48eb489030bb817377dd73
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 MB (13818104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e958649ccad0db85005cc2be36636a8331c3d129b74e5d4e3dea108f2bbbe903`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 Apr 2019 11:42:23 GMT
ADD file:ab106eb2cf4bf0e1ca7861a56dc24e44dd206fd3ae8d3587684324e5c11136f4 in / 
# Wed, 10 Apr 2019 11:42:23 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 14:22:12 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 Apr 2019 14:22:15 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 10 Apr 2019 14:24:30 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 10 Apr 2019 14:24:31 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 10 Apr 2019 14:24:31 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 10 Apr 2019 14:25:53 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 10 Apr 2019 14:25:57 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 Apr 2019 14:25:58 GMT
VOLUME [/data]
# Wed, 10 Apr 2019 14:25:59 GMT
WORKDIR /data
# Wed, 10 Apr 2019 14:25:59 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 10 Apr 2019 14:26:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 14:26:01 GMT
EXPOSE 6379
# Wed, 10 Apr 2019 14:26:02 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5b51e37a522c2e7cd3c67e8a3e5500b45189ea6698e9fdaed7f5d48282326633`  
		Last Modified: Wed, 10 Apr 2019 11:43:06 GMT  
		Size: 2.5 MB (2543326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e72810cb2904dec74b6a6ec5f4a983c700825faf21979eb2e7a360b42515f26`  
		Last Modified: Wed, 10 Apr 2019 14:26:58 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4816af0620533e2d07b1778a9f075eb91da554fb6e81c803e8fe455a6d9cadb`  
		Last Modified: Wed, 10 Apr 2019 14:26:59 GMT  
		Size: 407.9 KB (407873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f7203d5d1fe441f47786ad4a3c4b2eb3d0cafcb9aa56af3df281ce1f8e35fe8`  
		Last Modified: Wed, 10 Apr 2019 14:27:41 GMT  
		Size: 10.9 MB (10865139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2434d76c6682b1afdf70b4a41ffca5766c0e6028c0d18938698457310413deec`  
		Last Modified: Wed, 10 Apr 2019 14:27:36 GMT  
		Size: 101.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:834e59b75edc12e66c93cb940b6e197d9f2d4e35323d9eacba70504b9fa8d105`  
		Last Modified: Wed, 10 Apr 2019 14:27:36 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.14-alpine3.9`

```console
$ docker pull redis@sha256:f6226137081875ee70351244851a326208ffec21ed44abbdc71d74c99d961121
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
$ docker pull redis@sha256:c80e7c19b42cc376597791e2ccb9a516ec18d20a0e2a74c461ec6cffdef82c6d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 MB (13945712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e3119fbb796502da4ac9e1aff74a343d6b3a6ad522837d22406b200be11d548`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Tue, 09 Apr 2019 23:56:52 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Tue, 09 Apr 2019 23:56:54 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Tue, 09 Apr 2019 23:58:40 GMT
ENV REDIS_VERSION=4.0.14
# Tue, 09 Apr 2019 23:58:40 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Tue, 09 Apr 2019 23:58:40 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Tue, 09 Apr 2019 23:59:14 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Tue, 09 Apr 2019 23:59:15 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 09 Apr 2019 23:59:15 GMT
VOLUME [/data]
# Tue, 09 Apr 2019 23:59:15 GMT
WORKDIR /data
# Tue, 09 Apr 2019 23:59:15 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Tue, 09 Apr 2019 23:59:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 Apr 2019 23:59:16 GMT
EXPOSE 6379
# Tue, 09 Apr 2019 23:59:16 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:542e0c4f2f182e0f9c8c3e8a9a4303f5478207940914c9a88232c829c4e74fcf`  
		Last Modified: Tue, 09 Apr 2019 23:59:41 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbf113c39f6550bbc31b5b985e138e40938b5902f154527a952cdd45b0868b11`  
		Last Modified: Tue, 09 Apr 2019 23:59:41 GMT  
		Size: 403.0 KB (403004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:976c755ff9d681459e3fc55196d0850fb1ccd02711d8d3ac84ccaa7f2b3c675e`  
		Last Modified: Tue, 09 Apr 2019 23:59:56 GMT  
		Size: 10.8 MB (10783933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:825af00ce8d058b062a6805896d6331108425ad64c3387fd5d983457c2faa313`  
		Last Modified: Tue, 09 Apr 2019 23:59:52 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4351afe1ec8b7e39a7ba947814a4a42edf411cc4ab88db0ee0bcbbdd8c828a0a`  
		Last Modified: Tue, 09 Apr 2019 23:59:52 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.14-alpine3.9` - linux; arm variant v6

```console
$ docker pull redis@sha256:516149016d9d7eb5e56975900484e524fd1b8f1d53c962839af93be79bc5595a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.3 MB (13349131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21c072d178b181d50fb973b8150c8a7f7a086cc8172fe820779a4953a32d84f1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 08:26:14 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 Apr 2019 08:26:16 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 10 Apr 2019 08:27:07 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 10 Apr 2019 08:27:07 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 10 Apr 2019 08:27:07 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 10 Apr 2019 08:27:31 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 10 Apr 2019 08:27:33 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 Apr 2019 08:27:33 GMT
VOLUME [/data]
# Wed, 10 Apr 2019 08:27:34 GMT
WORKDIR /data
# Wed, 10 Apr 2019 08:27:34 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 10 Apr 2019 08:27:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 08:27:35 GMT
EXPOSE 6379
# Wed, 10 Apr 2019 08:27:35 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cac72c52417597f37150f22f15904bd5df64bf389a18ebb8145b857f4da966a5`  
		Last Modified: Wed, 10 Apr 2019 08:27:48 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6db8b29787ef73ca4d0464c2c22edee9ca3e063a81cf9a8830b1ec5c8befc20`  
		Last Modified: Wed, 10 Apr 2019 08:27:48 GMT  
		Size: 405.3 KB (405287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa6dfb62ea1fc0a697ec823d63e2c98ad50f432fb6ca6d5761aae0e68b10e9cf`  
		Last Modified: Wed, 10 Apr 2019 08:28:09 GMT  
		Size: 10.4 MB (10398575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13158c6805150f6c4f5f8a3ef9e3228ec59f3c808cfcd2d576691225184031cb`  
		Last Modified: Wed, 10 Apr 2019 08:28:06 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c81f5f8478e4b111b511cf40f73a417774488046fc7e1d47e84a0402cb074aa3`  
		Last Modified: Wed, 10 Apr 2019 08:28:06 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.14-alpine3.9` - linux; arm variant v7

```console
$ docker pull redis@sha256:d9b65d02bfb522f1a9cb3f2e20a94a34bc6378ae49d80c96cac35a03936c2ab6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 MB (12994573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3655c0fd0b129fca49907da27db7a8d20f3a38877ab376f59d159484779f528f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 Apr 2019 11:57:47 GMT
ADD file:1a27b74f23795a1f205247dcd6eff48ac56f0b8f2afe0c358199a0b60f694861 in / 
# Wed, 10 Apr 2019 11:57:48 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 12:31:32 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 Apr 2019 12:31:35 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 10 Apr 2019 12:32:39 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 10 Apr 2019 12:32:39 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 10 Apr 2019 12:32:40 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 10 Apr 2019 12:33:05 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 10 Apr 2019 12:33:07 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 Apr 2019 12:33:08 GMT
VOLUME [/data]
# Wed, 10 Apr 2019 12:33:08 GMT
WORKDIR /data
# Wed, 10 Apr 2019 12:33:09 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 10 Apr 2019 12:33:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 12:33:10 GMT
EXPOSE 6379
# Wed, 10 Apr 2019 12:33:10 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:c2a5cdd4aa08146b4516cc95f6b461f2994250a819b3e6f75f23fa2a8c1b1744`  
		Last Modified: Wed, 10 Apr 2019 11:58:04 GMT  
		Size: 2.4 MB (2350757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f02904c22d1f59beea301a4e2c19f4b14edae521f98cd0cae4edec6c880c34bb`  
		Last Modified: Wed, 10 Apr 2019 12:33:35 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0132ad3f4069c0da06d221747600eb8c244a3bfcf23a05b129ab41c109b76640`  
		Last Modified: Wed, 10 Apr 2019 12:33:35 GMT  
		Size: 398.6 KB (398582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d03579c9d74991005666f6cbeeb010f5c41c679247a70817ac40c6b053a2ebc`  
		Last Modified: Wed, 10 Apr 2019 12:33:57 GMT  
		Size: 10.2 MB (10243402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ee06ddc0f32027d438ca817d00e39d9b0351ea00042cbf084b68f7c687cb59c`  
		Last Modified: Wed, 10 Apr 2019 12:33:55 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:354f584195614a8c5cfa5fac87d57a6b74b73e36d0cb6fdc8d12f481cf4dc67e`  
		Last Modified: Wed, 10 Apr 2019 12:33:54 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.14-alpine3.9` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:d4812abf0bc7a40b7ee15882658e0a255882db368f5ad829446700d98ce22584
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 MB (13744943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d0e3bd088b30596a7ecdf473fa2f658131324257317b8a27706d4071bb6548d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 Apr 2019 08:49:11 GMT
ADD file:30e0a8ccdca70b20b8ce637f0ba5108157f4ba491447d20aafbe45d82392bd81 in / 
# Wed, 10 Apr 2019 08:49:12 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 09:30:47 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 Apr 2019 09:30:51 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 10 Apr 2019 09:32:51 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 10 Apr 2019 09:32:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 10 Apr 2019 09:32:52 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 10 Apr 2019 09:33:41 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 10 Apr 2019 09:33:44 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 Apr 2019 09:33:45 GMT
VOLUME [/data]
# Wed, 10 Apr 2019 09:33:46 GMT
WORKDIR /data
# Wed, 10 Apr 2019 09:33:46 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 10 Apr 2019 09:33:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 09:33:48 GMT
EXPOSE 6379
# Wed, 10 Apr 2019 09:33:49 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6f37394be673296a0fdc21b819c5df40431baf7d3af121bee451726dd1457493`  
		Last Modified: Wed, 10 Apr 2019 08:50:38 GMT  
		Size: 2.7 MB (2688778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd87357e3604d3d4278cd171c27e1f6eab0970cb1af16c2fd37a4df05d7fa114`  
		Last Modified: Wed, 10 Apr 2019 09:34:18 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3ed8d359e92c573c3aa65aa6bf63c31debc70eed441317642f91d442905b980`  
		Last Modified: Wed, 10 Apr 2019 09:34:19 GMT  
		Size: 405.2 KB (405228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f89ba3e0ff5b04c5863eb9bee5806e4d12f05ed6c4a979a468f65aa77cdfdef8`  
		Last Modified: Wed, 10 Apr 2019 09:34:51 GMT  
		Size: 10.6 MB (10649170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19663d0ed9b27292fa1622897264db3a6188174cc1bfeaf8323356d2957a6fd6`  
		Last Modified: Wed, 10 Apr 2019 09:34:47 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc6d8254dc66ab7c184faf0311379ae18139fdfcb11617b2ad54fbbc3d9b3020`  
		Last Modified: Wed, 10 Apr 2019 09:34:47 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.14-alpine3.9` - linux; 386

```console
$ docker pull redis@sha256:a9f629f09c360df1a009b5f46334c62902f966d2abc65062a6f3fd90ab8aac3b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.5 MB (13451176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edde63ef99d3fd58f52413315baa0e0223996efde17b691bc558fe1329e0f9e7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 Apr 2019 10:38:55 GMT
ADD file:51f7bb95ef6cc3519317dcb7abbf6155e6bb7b73a17ad7d90cad7911e8a8933c in / 
# Wed, 10 Apr 2019 10:38:55 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 13:10:48 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 Apr 2019 13:10:49 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 10 Apr 2019 13:12:04 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 10 Apr 2019 13:12:04 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 10 Apr 2019 13:12:04 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 10 Apr 2019 13:12:38 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 10 Apr 2019 13:12:39 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 Apr 2019 13:12:39 GMT
VOLUME [/data]
# Wed, 10 Apr 2019 13:12:39 GMT
WORKDIR /data
# Wed, 10 Apr 2019 13:12:39 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 10 Apr 2019 13:12:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 13:12:40 GMT
EXPOSE 6379
# Wed, 10 Apr 2019 13:12:40 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:9a81e6a1a3b4f174d22173a96692c9aeffaefcd00f40607d508951a2b14d6f1f`  
		Last Modified: Wed, 10 Apr 2019 10:39:15 GMT  
		Size: 2.8 MB (2752162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b30efed26125f06596e1a58493943baf64ba49f78b66a0f10ea815430c3057`  
		Last Modified: Wed, 10 Apr 2019 13:13:00 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2e8a8f5562f29213b62563c0cb0612f50141b1e8f26c831a71a2be46703a387`  
		Last Modified: Wed, 10 Apr 2019 13:13:00 GMT  
		Size: 408.0 KB (408011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47a186cf4c1655bcbca426438d67a2130fba20f277c938263f6f438f3a927a27`  
		Last Modified: Wed, 10 Apr 2019 13:13:15 GMT  
		Size: 10.3 MB (10289237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d7adcf33e9a23a6a4fe1b20460af572161c937e870b11b62088a22f2c718404`  
		Last Modified: Wed, 10 Apr 2019 13:13:12 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df7a12cd6a3c747670d2f93691a98e33948ba68552e5626364edba35df97d700`  
		Last Modified: Wed, 10 Apr 2019 13:13:12 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.14-alpine3.9` - linux; ppc64le

```console
$ docker pull redis@sha256:8f82c43ead4136fb282b0a95ac7ce36b4ae17b45fd85600f92bcc2a23360de95
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14402336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c678fe5968306fac24879a9b89d4066e698cd9873de2830dc24b5b285b822387`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 Apr 2019 08:27:30 GMT
ADD file:c13c1c2b4e6d71924f570a910caf6a1756ea5a28a4017c7b11305e021eacd0ee in / 
# Wed, 10 Apr 2019 08:27:33 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 10:26:02 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 Apr 2019 10:26:09 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 10 Apr 2019 10:28:38 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 10 Apr 2019 10:28:47 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 10 Apr 2019 10:28:53 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 10 Apr 2019 10:29:29 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 10 Apr 2019 10:29:39 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 Apr 2019 10:29:43 GMT
VOLUME [/data]
# Wed, 10 Apr 2019 10:29:48 GMT
WORKDIR /data
# Wed, 10 Apr 2019 10:29:49 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 10 Apr 2019 10:29:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 10:29:55 GMT
EXPOSE 6379
# Wed, 10 Apr 2019 10:29:59 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:fe0f92a92ee06f38abf50fefd22331ac42262e3872ecd2d7ddfa7c24ab71a53a`  
		Last Modified: Wed, 10 Apr 2019 08:28:34 GMT  
		Size: 2.8 MB (2781020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81a3976b0f5f6d320d4e2c4b563bf1d516e9b3dbff3642de3ba2dfdc8aba06df`  
		Last Modified: Wed, 10 Apr 2019 10:30:51 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f552250dac1f95ee5efd4654d27d1b92081cd004b8c8357efb1d5a60bf6b1aa`  
		Last Modified: Wed, 10 Apr 2019 10:30:51 GMT  
		Size: 410.4 KB (410350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09c2c8616bd2f48624b3020ef458b43b0b9c2cca0267c24d2b4017ccde6476fe`  
		Last Modified: Wed, 10 Apr 2019 10:31:33 GMT  
		Size: 11.2 MB (11209134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67fae49a772ab1d392635663595cbc233441f77f45561b61a1de886a8276d001`  
		Last Modified: Wed, 10 Apr 2019 10:31:29 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3649909e0b0f5d7f582d0f3250faa3d424277c82d9fc4725c72f0c881408b71a`  
		Last Modified: Wed, 10 Apr 2019 10:31:29 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.14-alpine3.9` - linux; s390x

```console
$ docker pull redis@sha256:d7a7c643f8502fcca6e3598ebfd52b08d3071a395f48eb489030bb817377dd73
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 MB (13818104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e958649ccad0db85005cc2be36636a8331c3d129b74e5d4e3dea108f2bbbe903`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 Apr 2019 11:42:23 GMT
ADD file:ab106eb2cf4bf0e1ca7861a56dc24e44dd206fd3ae8d3587684324e5c11136f4 in / 
# Wed, 10 Apr 2019 11:42:23 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 14:22:12 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 Apr 2019 14:22:15 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 10 Apr 2019 14:24:30 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 10 Apr 2019 14:24:31 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 10 Apr 2019 14:24:31 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 10 Apr 2019 14:25:53 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 10 Apr 2019 14:25:57 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 Apr 2019 14:25:58 GMT
VOLUME [/data]
# Wed, 10 Apr 2019 14:25:59 GMT
WORKDIR /data
# Wed, 10 Apr 2019 14:25:59 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 10 Apr 2019 14:26:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 14:26:01 GMT
EXPOSE 6379
# Wed, 10 Apr 2019 14:26:02 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5b51e37a522c2e7cd3c67e8a3e5500b45189ea6698e9fdaed7f5d48282326633`  
		Last Modified: Wed, 10 Apr 2019 11:43:06 GMT  
		Size: 2.5 MB (2543326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e72810cb2904dec74b6a6ec5f4a983c700825faf21979eb2e7a360b42515f26`  
		Last Modified: Wed, 10 Apr 2019 14:26:58 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4816af0620533e2d07b1778a9f075eb91da554fb6e81c803e8fe455a6d9cadb`  
		Last Modified: Wed, 10 Apr 2019 14:26:59 GMT  
		Size: 407.9 KB (407873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f7203d5d1fe441f47786ad4a3c4b2eb3d0cafcb9aa56af3df281ce1f8e35fe8`  
		Last Modified: Wed, 10 Apr 2019 14:27:41 GMT  
		Size: 10.9 MB (10865139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2434d76c6682b1afdf70b4a41ffca5766c0e6028c0d18938698457310413deec`  
		Last Modified: Wed, 10 Apr 2019 14:27:36 GMT  
		Size: 101.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:834e59b75edc12e66c93cb940b6e197d9f2d4e35323d9eacba70504b9fa8d105`  
		Last Modified: Wed, 10 Apr 2019 14:27:36 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.14-stretch`

```console
$ docker pull redis@sha256:0234510fa3cdd474e6ec718842f0b860161569de00deb80ca49989182561b6f4
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
$ docker pull redis@sha256:64dfae7bd973c94511110d9e92aa99915eebbb21bfde4f692a46785e68cd4b68
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28397841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2831af28978b0783a850816bcb9d4f6abcbf64fb4769cbd2cf1e7cc35727632`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Mar 2019 12:07:48 GMT
ADD file:6bf06125d936ccaf67981470df5ef6b9bd5dee3c0ef0e042a448fc60bb02f191 in / 
# Wed, 27 Mar 2019 12:07:49 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 15:20:43 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 15:20:44 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 15:21:25 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 15:22:49 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 27 Mar 2019 15:22:49 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 27 Mar 2019 15:22:50 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 27 Mar 2019 15:23:31 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 15:23:33 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 15:23:34 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 15:23:34 GMT
WORKDIR /data
# Wed, 27 Mar 2019 15:23:35 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 15:23:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 15:23:36 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 15:23:36 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:fac132c5d16f670820c8c4ae332bd663c2ff856e9af86b2b23a201db263d851e`  
		Last Modified: Wed, 27 Mar 2019 12:13:15 GMT  
		Size: 19.3 MB (19282442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e2fe4e656b4ef2c65b13804ba160b7e965946dfa62ac428ae2e06c6be52e805`  
		Last Modified: Wed, 27 Mar 2019 15:24:02 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9425121a58ef3107c6a89df6558f6a58f7894a6ad37ef27fb928e53cb4004556`  
		Last Modified: Wed, 27 Mar 2019 15:24:03 GMT  
		Size: 915.9 KB (915851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfa62a7c8adc4d41b8db0babbfc6c2ac25fb5f55e993ec593084e2759e01c429`  
		Last Modified: Wed, 27 Mar 2019 15:24:26 GMT  
		Size: 8.2 MB (8197267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86a981f240d5b98379df31d263d21f4ea9623dfac103beeb3daa8f596f2f4133`  
		Last Modified: Wed, 27 Mar 2019 15:24:24 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07de251417530d354db9c5a45a5d4ec41926fd5c9c4eca42bcf0b4aec0493cf3`  
		Last Modified: Wed, 27 Mar 2019 15:24:24 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.14-stretch` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:3eac20b9b226f06478b8a650dd5633bf1c55377f15c39bc0e5d5f3aa13f27f22
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.7 MB (29748823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a702f300b3df49d861d4be07d9d4805e4d2d4bc18ce3d0dce0cd816172963a1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:46 GMT
ADD file:9db7760cb1c28ef0cd3fa9ee9d0f528d2bcfe80b1c3973daa9f87e30b2047102 in / 
# Wed, 27 Mar 2019 08:47:47 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:09:11 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 12:09:12 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 12:11:14 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 12:14:19 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 27 Mar 2019 12:14:20 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 27 Mar 2019 12:14:20 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 27 Mar 2019 12:17:24 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 12:17:26 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 12:17:27 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 12:17:27 GMT
WORKDIR /data
# Wed, 27 Mar 2019 12:17:28 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 12:17:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 12:17:30 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 12:17:30 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:007027d142c80b166a004bc7265c04036b80df438ac408f1a947e05c581b418e`  
		Last Modified: Wed, 27 Mar 2019 08:52:56 GMT  
		Size: 20.3 MB (20340179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf60f2128f3195c471ec3689b8be025149dcff169970e8d8968c4864c282c8cd`  
		Last Modified: Wed, 27 Mar 2019 12:18:10 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcf7593f1ca581039b8fd820fbd9a7b8dabbf87cb88ae708b921ab5d18bee68c`  
		Last Modified: Wed, 27 Mar 2019 12:18:10 GMT  
		Size: 908.1 KB (908060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5597d685f1041f784c1600ed455161a8dae073fd5b1b00190bac2fa4155d32e`  
		Last Modified: Wed, 27 Mar 2019 12:18:40 GMT  
		Size: 8.5 MB (8498329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4388924faeaff651b6398d721f550ddba938511b550a42babf2366dea8458e2`  
		Last Modified: Wed, 27 Mar 2019 12:18:36 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a330a6abb07de3e45384c34b541a6a3881d0f71890e59bd4ed6c9c6afa0c9759`  
		Last Modified: Wed, 27 Mar 2019 12:18:36 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.14-stretch` - linux; 386

```console
$ docker pull redis@sha256:42643c982b5ce8bccdd31e0bef870313d9ff0cb2aee50fb5ca7451f91da2245f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32306370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e21273c1123b3b32fbb0523226fb4bfb4c58e00ad5cee8e576b1bb9caad7311`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Mar 2019 10:43:41 GMT
ADD file:13e40d14dbdd0814b4fb7b2a378757164620517fec383739c87747c27e07d8e7 in / 
# Wed, 27 Mar 2019 10:43:41 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 16:13:05 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 16:13:06 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 16:13:20 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 16:14:35 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 27 Mar 2019 16:14:35 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 27 Mar 2019 16:14:36 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 27 Mar 2019 16:15:15 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 16:15:16 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 16:15:16 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 16:15:16 GMT
WORKDIR /data
# Wed, 27 Mar 2019 16:15:16 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 16:15:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 16:15:17 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 16:15:17 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:a5ba78e1989e52ae238c3f225934c1a2dee4dfaa4667abd6f2e0717b78159472`  
		Last Modified: Wed, 27 Mar 2019 10:49:24 GMT  
		Size: 23.1 MB (23125745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcc0e5b68b9dbbba70332f0cad07bf511d38a873ec0d6c82b4c06e897e924689`  
		Last Modified: Wed, 27 Mar 2019 16:15:34 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2a0f34b494237693bbdb853e52e9727e46f0f5a30d022759bcb9cc90710cb1e`  
		Last Modified: Wed, 27 Mar 2019 16:15:34 GMT  
		Size: 920.2 KB (920184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ade7b786a71575d0d0b9641d5ee086c370698b1dbd4ac1fbcf0c5402abd0429a`  
		Last Modified: Wed, 27 Mar 2019 16:15:46 GMT  
		Size: 8.3 MB (8258192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a68814567d45a0baf2a13183cf5ab57dd62879035674ef45702d38699a80306`  
		Last Modified: Wed, 27 Mar 2019 16:15:44 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:418f76c6bc7a112f5a64bf9f367edfe3cdb48e1bbe70688f4ff6186f105dfee0`  
		Last Modified: Wed, 27 Mar 2019 16:15:44 GMT  
		Size: 418.0 B  
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
$ docker pull redis@sha256:0b87e59d1d0908e07b8895735e846cbe26bca16890cfd7b05c6100fc0a1c1588
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
$ docker pull redis@sha256:0b87e59d1d0908e07b8895735e846cbe26bca16890cfd7b05c6100fc0a1c1588
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
$ docker pull redis@sha256:f6226137081875ee70351244851a326208ffec21ed44abbdc71d74c99d961121
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
$ docker pull redis@sha256:c80e7c19b42cc376597791e2ccb9a516ec18d20a0e2a74c461ec6cffdef82c6d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 MB (13945712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e3119fbb796502da4ac9e1aff74a343d6b3a6ad522837d22406b200be11d548`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Tue, 09 Apr 2019 23:56:52 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Tue, 09 Apr 2019 23:56:54 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Tue, 09 Apr 2019 23:58:40 GMT
ENV REDIS_VERSION=4.0.14
# Tue, 09 Apr 2019 23:58:40 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Tue, 09 Apr 2019 23:58:40 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Tue, 09 Apr 2019 23:59:14 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Tue, 09 Apr 2019 23:59:15 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 09 Apr 2019 23:59:15 GMT
VOLUME [/data]
# Tue, 09 Apr 2019 23:59:15 GMT
WORKDIR /data
# Tue, 09 Apr 2019 23:59:15 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Tue, 09 Apr 2019 23:59:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 Apr 2019 23:59:16 GMT
EXPOSE 6379
# Tue, 09 Apr 2019 23:59:16 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:542e0c4f2f182e0f9c8c3e8a9a4303f5478207940914c9a88232c829c4e74fcf`  
		Last Modified: Tue, 09 Apr 2019 23:59:41 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbf113c39f6550bbc31b5b985e138e40938b5902f154527a952cdd45b0868b11`  
		Last Modified: Tue, 09 Apr 2019 23:59:41 GMT  
		Size: 403.0 KB (403004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:976c755ff9d681459e3fc55196d0850fb1ccd02711d8d3ac84ccaa7f2b3c675e`  
		Last Modified: Tue, 09 Apr 2019 23:59:56 GMT  
		Size: 10.8 MB (10783933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:825af00ce8d058b062a6805896d6331108425ad64c3387fd5d983457c2faa313`  
		Last Modified: Tue, 09 Apr 2019 23:59:52 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4351afe1ec8b7e39a7ba947814a4a42edf411cc4ab88db0ee0bcbbdd8c828a0a`  
		Last Modified: Tue, 09 Apr 2019 23:59:52 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:516149016d9d7eb5e56975900484e524fd1b8f1d53c962839af93be79bc5595a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.3 MB (13349131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21c072d178b181d50fb973b8150c8a7f7a086cc8172fe820779a4953a32d84f1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 08:26:14 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 Apr 2019 08:26:16 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 10 Apr 2019 08:27:07 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 10 Apr 2019 08:27:07 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 10 Apr 2019 08:27:07 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 10 Apr 2019 08:27:31 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 10 Apr 2019 08:27:33 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 Apr 2019 08:27:33 GMT
VOLUME [/data]
# Wed, 10 Apr 2019 08:27:34 GMT
WORKDIR /data
# Wed, 10 Apr 2019 08:27:34 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 10 Apr 2019 08:27:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 08:27:35 GMT
EXPOSE 6379
# Wed, 10 Apr 2019 08:27:35 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cac72c52417597f37150f22f15904bd5df64bf389a18ebb8145b857f4da966a5`  
		Last Modified: Wed, 10 Apr 2019 08:27:48 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6db8b29787ef73ca4d0464c2c22edee9ca3e063a81cf9a8830b1ec5c8befc20`  
		Last Modified: Wed, 10 Apr 2019 08:27:48 GMT  
		Size: 405.3 KB (405287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa6dfb62ea1fc0a697ec823d63e2c98ad50f432fb6ca6d5761aae0e68b10e9cf`  
		Last Modified: Wed, 10 Apr 2019 08:28:09 GMT  
		Size: 10.4 MB (10398575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13158c6805150f6c4f5f8a3ef9e3228ec59f3c808cfcd2d576691225184031cb`  
		Last Modified: Wed, 10 Apr 2019 08:28:06 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c81f5f8478e4b111b511cf40f73a417774488046fc7e1d47e84a0402cb074aa3`  
		Last Modified: Wed, 10 Apr 2019 08:28:06 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine` - linux; arm variant v7

```console
$ docker pull redis@sha256:d9b65d02bfb522f1a9cb3f2e20a94a34bc6378ae49d80c96cac35a03936c2ab6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 MB (12994573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3655c0fd0b129fca49907da27db7a8d20f3a38877ab376f59d159484779f528f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 Apr 2019 11:57:47 GMT
ADD file:1a27b74f23795a1f205247dcd6eff48ac56f0b8f2afe0c358199a0b60f694861 in / 
# Wed, 10 Apr 2019 11:57:48 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 12:31:32 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 Apr 2019 12:31:35 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 10 Apr 2019 12:32:39 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 10 Apr 2019 12:32:39 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 10 Apr 2019 12:32:40 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 10 Apr 2019 12:33:05 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 10 Apr 2019 12:33:07 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 Apr 2019 12:33:08 GMT
VOLUME [/data]
# Wed, 10 Apr 2019 12:33:08 GMT
WORKDIR /data
# Wed, 10 Apr 2019 12:33:09 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 10 Apr 2019 12:33:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 12:33:10 GMT
EXPOSE 6379
# Wed, 10 Apr 2019 12:33:10 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:c2a5cdd4aa08146b4516cc95f6b461f2994250a819b3e6f75f23fa2a8c1b1744`  
		Last Modified: Wed, 10 Apr 2019 11:58:04 GMT  
		Size: 2.4 MB (2350757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f02904c22d1f59beea301a4e2c19f4b14edae521f98cd0cae4edec6c880c34bb`  
		Last Modified: Wed, 10 Apr 2019 12:33:35 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0132ad3f4069c0da06d221747600eb8c244a3bfcf23a05b129ab41c109b76640`  
		Last Modified: Wed, 10 Apr 2019 12:33:35 GMT  
		Size: 398.6 KB (398582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d03579c9d74991005666f6cbeeb010f5c41c679247a70817ac40c6b053a2ebc`  
		Last Modified: Wed, 10 Apr 2019 12:33:57 GMT  
		Size: 10.2 MB (10243402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ee06ddc0f32027d438ca817d00e39d9b0351ea00042cbf084b68f7c687cb59c`  
		Last Modified: Wed, 10 Apr 2019 12:33:55 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:354f584195614a8c5cfa5fac87d57a6b74b73e36d0cb6fdc8d12f481cf4dc67e`  
		Last Modified: Wed, 10 Apr 2019 12:33:54 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:d4812abf0bc7a40b7ee15882658e0a255882db368f5ad829446700d98ce22584
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 MB (13744943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d0e3bd088b30596a7ecdf473fa2f658131324257317b8a27706d4071bb6548d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 Apr 2019 08:49:11 GMT
ADD file:30e0a8ccdca70b20b8ce637f0ba5108157f4ba491447d20aafbe45d82392bd81 in / 
# Wed, 10 Apr 2019 08:49:12 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 09:30:47 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 Apr 2019 09:30:51 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 10 Apr 2019 09:32:51 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 10 Apr 2019 09:32:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 10 Apr 2019 09:32:52 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 10 Apr 2019 09:33:41 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 10 Apr 2019 09:33:44 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 Apr 2019 09:33:45 GMT
VOLUME [/data]
# Wed, 10 Apr 2019 09:33:46 GMT
WORKDIR /data
# Wed, 10 Apr 2019 09:33:46 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 10 Apr 2019 09:33:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 09:33:48 GMT
EXPOSE 6379
# Wed, 10 Apr 2019 09:33:49 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6f37394be673296a0fdc21b819c5df40431baf7d3af121bee451726dd1457493`  
		Last Modified: Wed, 10 Apr 2019 08:50:38 GMT  
		Size: 2.7 MB (2688778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd87357e3604d3d4278cd171c27e1f6eab0970cb1af16c2fd37a4df05d7fa114`  
		Last Modified: Wed, 10 Apr 2019 09:34:18 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3ed8d359e92c573c3aa65aa6bf63c31debc70eed441317642f91d442905b980`  
		Last Modified: Wed, 10 Apr 2019 09:34:19 GMT  
		Size: 405.2 KB (405228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f89ba3e0ff5b04c5863eb9bee5806e4d12f05ed6c4a979a468f65aa77cdfdef8`  
		Last Modified: Wed, 10 Apr 2019 09:34:51 GMT  
		Size: 10.6 MB (10649170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19663d0ed9b27292fa1622897264db3a6188174cc1bfeaf8323356d2957a6fd6`  
		Last Modified: Wed, 10 Apr 2019 09:34:47 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc6d8254dc66ab7c184faf0311379ae18139fdfcb11617b2ad54fbbc3d9b3020`  
		Last Modified: Wed, 10 Apr 2019 09:34:47 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine` - linux; 386

```console
$ docker pull redis@sha256:a9f629f09c360df1a009b5f46334c62902f966d2abc65062a6f3fd90ab8aac3b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.5 MB (13451176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edde63ef99d3fd58f52413315baa0e0223996efde17b691bc558fe1329e0f9e7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 Apr 2019 10:38:55 GMT
ADD file:51f7bb95ef6cc3519317dcb7abbf6155e6bb7b73a17ad7d90cad7911e8a8933c in / 
# Wed, 10 Apr 2019 10:38:55 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 13:10:48 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 Apr 2019 13:10:49 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 10 Apr 2019 13:12:04 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 10 Apr 2019 13:12:04 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 10 Apr 2019 13:12:04 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 10 Apr 2019 13:12:38 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 10 Apr 2019 13:12:39 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 Apr 2019 13:12:39 GMT
VOLUME [/data]
# Wed, 10 Apr 2019 13:12:39 GMT
WORKDIR /data
# Wed, 10 Apr 2019 13:12:39 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 10 Apr 2019 13:12:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 13:12:40 GMT
EXPOSE 6379
# Wed, 10 Apr 2019 13:12:40 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:9a81e6a1a3b4f174d22173a96692c9aeffaefcd00f40607d508951a2b14d6f1f`  
		Last Modified: Wed, 10 Apr 2019 10:39:15 GMT  
		Size: 2.8 MB (2752162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b30efed26125f06596e1a58493943baf64ba49f78b66a0f10ea815430c3057`  
		Last Modified: Wed, 10 Apr 2019 13:13:00 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2e8a8f5562f29213b62563c0cb0612f50141b1e8f26c831a71a2be46703a387`  
		Last Modified: Wed, 10 Apr 2019 13:13:00 GMT  
		Size: 408.0 KB (408011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47a186cf4c1655bcbca426438d67a2130fba20f277c938263f6f438f3a927a27`  
		Last Modified: Wed, 10 Apr 2019 13:13:15 GMT  
		Size: 10.3 MB (10289237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d7adcf33e9a23a6a4fe1b20460af572161c937e870b11b62088a22f2c718404`  
		Last Modified: Wed, 10 Apr 2019 13:13:12 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df7a12cd6a3c747670d2f93691a98e33948ba68552e5626364edba35df97d700`  
		Last Modified: Wed, 10 Apr 2019 13:13:12 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:8f82c43ead4136fb282b0a95ac7ce36b4ae17b45fd85600f92bcc2a23360de95
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14402336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c678fe5968306fac24879a9b89d4066e698cd9873de2830dc24b5b285b822387`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 Apr 2019 08:27:30 GMT
ADD file:c13c1c2b4e6d71924f570a910caf6a1756ea5a28a4017c7b11305e021eacd0ee in / 
# Wed, 10 Apr 2019 08:27:33 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 10:26:02 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 Apr 2019 10:26:09 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 10 Apr 2019 10:28:38 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 10 Apr 2019 10:28:47 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 10 Apr 2019 10:28:53 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 10 Apr 2019 10:29:29 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 10 Apr 2019 10:29:39 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 Apr 2019 10:29:43 GMT
VOLUME [/data]
# Wed, 10 Apr 2019 10:29:48 GMT
WORKDIR /data
# Wed, 10 Apr 2019 10:29:49 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 10 Apr 2019 10:29:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 10:29:55 GMT
EXPOSE 6379
# Wed, 10 Apr 2019 10:29:59 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:fe0f92a92ee06f38abf50fefd22331ac42262e3872ecd2d7ddfa7c24ab71a53a`  
		Last Modified: Wed, 10 Apr 2019 08:28:34 GMT  
		Size: 2.8 MB (2781020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81a3976b0f5f6d320d4e2c4b563bf1d516e9b3dbff3642de3ba2dfdc8aba06df`  
		Last Modified: Wed, 10 Apr 2019 10:30:51 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f552250dac1f95ee5efd4654d27d1b92081cd004b8c8357efb1d5a60bf6b1aa`  
		Last Modified: Wed, 10 Apr 2019 10:30:51 GMT  
		Size: 410.4 KB (410350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09c2c8616bd2f48624b3020ef458b43b0b9c2cca0267c24d2b4017ccde6476fe`  
		Last Modified: Wed, 10 Apr 2019 10:31:33 GMT  
		Size: 11.2 MB (11209134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67fae49a772ab1d392635663595cbc233441f77f45561b61a1de886a8276d001`  
		Last Modified: Wed, 10 Apr 2019 10:31:29 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3649909e0b0f5d7f582d0f3250faa3d424277c82d9fc4725c72f0c881408b71a`  
		Last Modified: Wed, 10 Apr 2019 10:31:29 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine` - linux; s390x

```console
$ docker pull redis@sha256:d7a7c643f8502fcca6e3598ebfd52b08d3071a395f48eb489030bb817377dd73
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 MB (13818104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e958649ccad0db85005cc2be36636a8331c3d129b74e5d4e3dea108f2bbbe903`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 Apr 2019 11:42:23 GMT
ADD file:ab106eb2cf4bf0e1ca7861a56dc24e44dd206fd3ae8d3587684324e5c11136f4 in / 
# Wed, 10 Apr 2019 11:42:23 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 14:22:12 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 Apr 2019 14:22:15 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 10 Apr 2019 14:24:30 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 10 Apr 2019 14:24:31 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 10 Apr 2019 14:24:31 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 10 Apr 2019 14:25:53 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 10 Apr 2019 14:25:57 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 Apr 2019 14:25:58 GMT
VOLUME [/data]
# Wed, 10 Apr 2019 14:25:59 GMT
WORKDIR /data
# Wed, 10 Apr 2019 14:25:59 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 10 Apr 2019 14:26:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 14:26:01 GMT
EXPOSE 6379
# Wed, 10 Apr 2019 14:26:02 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5b51e37a522c2e7cd3c67e8a3e5500b45189ea6698e9fdaed7f5d48282326633`  
		Last Modified: Wed, 10 Apr 2019 11:43:06 GMT  
		Size: 2.5 MB (2543326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e72810cb2904dec74b6a6ec5f4a983c700825faf21979eb2e7a360b42515f26`  
		Last Modified: Wed, 10 Apr 2019 14:26:58 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4816af0620533e2d07b1778a9f075eb91da554fb6e81c803e8fe455a6d9cadb`  
		Last Modified: Wed, 10 Apr 2019 14:26:59 GMT  
		Size: 407.9 KB (407873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f7203d5d1fe441f47786ad4a3c4b2eb3d0cafcb9aa56af3df281ce1f8e35fe8`  
		Last Modified: Wed, 10 Apr 2019 14:27:41 GMT  
		Size: 10.9 MB (10865139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2434d76c6682b1afdf70b4a41ffca5766c0e6028c0d18938698457310413deec`  
		Last Modified: Wed, 10 Apr 2019 14:27:36 GMT  
		Size: 101.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:834e59b75edc12e66c93cb940b6e197d9f2d4e35323d9eacba70504b9fa8d105`  
		Last Modified: Wed, 10 Apr 2019 14:27:36 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0-alpine3.9`

```console
$ docker pull redis@sha256:f6226137081875ee70351244851a326208ffec21ed44abbdc71d74c99d961121
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
$ docker pull redis@sha256:c80e7c19b42cc376597791e2ccb9a516ec18d20a0e2a74c461ec6cffdef82c6d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 MB (13945712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e3119fbb796502da4ac9e1aff74a343d6b3a6ad522837d22406b200be11d548`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Tue, 09 Apr 2019 23:56:52 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Tue, 09 Apr 2019 23:56:54 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Tue, 09 Apr 2019 23:58:40 GMT
ENV REDIS_VERSION=4.0.14
# Tue, 09 Apr 2019 23:58:40 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Tue, 09 Apr 2019 23:58:40 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Tue, 09 Apr 2019 23:59:14 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Tue, 09 Apr 2019 23:59:15 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 09 Apr 2019 23:59:15 GMT
VOLUME [/data]
# Tue, 09 Apr 2019 23:59:15 GMT
WORKDIR /data
# Tue, 09 Apr 2019 23:59:15 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Tue, 09 Apr 2019 23:59:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 Apr 2019 23:59:16 GMT
EXPOSE 6379
# Tue, 09 Apr 2019 23:59:16 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:542e0c4f2f182e0f9c8c3e8a9a4303f5478207940914c9a88232c829c4e74fcf`  
		Last Modified: Tue, 09 Apr 2019 23:59:41 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbf113c39f6550bbc31b5b985e138e40938b5902f154527a952cdd45b0868b11`  
		Last Modified: Tue, 09 Apr 2019 23:59:41 GMT  
		Size: 403.0 KB (403004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:976c755ff9d681459e3fc55196d0850fb1ccd02711d8d3ac84ccaa7f2b3c675e`  
		Last Modified: Tue, 09 Apr 2019 23:59:56 GMT  
		Size: 10.8 MB (10783933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:825af00ce8d058b062a6805896d6331108425ad64c3387fd5d983457c2faa313`  
		Last Modified: Tue, 09 Apr 2019 23:59:52 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4351afe1ec8b7e39a7ba947814a4a42edf411cc4ab88db0ee0bcbbdd8c828a0a`  
		Last Modified: Tue, 09 Apr 2019 23:59:52 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine3.9` - linux; arm variant v6

```console
$ docker pull redis@sha256:516149016d9d7eb5e56975900484e524fd1b8f1d53c962839af93be79bc5595a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.3 MB (13349131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21c072d178b181d50fb973b8150c8a7f7a086cc8172fe820779a4953a32d84f1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 08:26:14 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 Apr 2019 08:26:16 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 10 Apr 2019 08:27:07 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 10 Apr 2019 08:27:07 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 10 Apr 2019 08:27:07 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 10 Apr 2019 08:27:31 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 10 Apr 2019 08:27:33 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 Apr 2019 08:27:33 GMT
VOLUME [/data]
# Wed, 10 Apr 2019 08:27:34 GMT
WORKDIR /data
# Wed, 10 Apr 2019 08:27:34 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 10 Apr 2019 08:27:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 08:27:35 GMT
EXPOSE 6379
# Wed, 10 Apr 2019 08:27:35 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cac72c52417597f37150f22f15904bd5df64bf389a18ebb8145b857f4da966a5`  
		Last Modified: Wed, 10 Apr 2019 08:27:48 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6db8b29787ef73ca4d0464c2c22edee9ca3e063a81cf9a8830b1ec5c8befc20`  
		Last Modified: Wed, 10 Apr 2019 08:27:48 GMT  
		Size: 405.3 KB (405287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa6dfb62ea1fc0a697ec823d63e2c98ad50f432fb6ca6d5761aae0e68b10e9cf`  
		Last Modified: Wed, 10 Apr 2019 08:28:09 GMT  
		Size: 10.4 MB (10398575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13158c6805150f6c4f5f8a3ef9e3228ec59f3c808cfcd2d576691225184031cb`  
		Last Modified: Wed, 10 Apr 2019 08:28:06 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c81f5f8478e4b111b511cf40f73a417774488046fc7e1d47e84a0402cb074aa3`  
		Last Modified: Wed, 10 Apr 2019 08:28:06 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine3.9` - linux; arm variant v7

```console
$ docker pull redis@sha256:d9b65d02bfb522f1a9cb3f2e20a94a34bc6378ae49d80c96cac35a03936c2ab6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 MB (12994573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3655c0fd0b129fca49907da27db7a8d20f3a38877ab376f59d159484779f528f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 Apr 2019 11:57:47 GMT
ADD file:1a27b74f23795a1f205247dcd6eff48ac56f0b8f2afe0c358199a0b60f694861 in / 
# Wed, 10 Apr 2019 11:57:48 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 12:31:32 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 Apr 2019 12:31:35 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 10 Apr 2019 12:32:39 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 10 Apr 2019 12:32:39 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 10 Apr 2019 12:32:40 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 10 Apr 2019 12:33:05 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 10 Apr 2019 12:33:07 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 Apr 2019 12:33:08 GMT
VOLUME [/data]
# Wed, 10 Apr 2019 12:33:08 GMT
WORKDIR /data
# Wed, 10 Apr 2019 12:33:09 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 10 Apr 2019 12:33:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 12:33:10 GMT
EXPOSE 6379
# Wed, 10 Apr 2019 12:33:10 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:c2a5cdd4aa08146b4516cc95f6b461f2994250a819b3e6f75f23fa2a8c1b1744`  
		Last Modified: Wed, 10 Apr 2019 11:58:04 GMT  
		Size: 2.4 MB (2350757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f02904c22d1f59beea301a4e2c19f4b14edae521f98cd0cae4edec6c880c34bb`  
		Last Modified: Wed, 10 Apr 2019 12:33:35 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0132ad3f4069c0da06d221747600eb8c244a3bfcf23a05b129ab41c109b76640`  
		Last Modified: Wed, 10 Apr 2019 12:33:35 GMT  
		Size: 398.6 KB (398582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d03579c9d74991005666f6cbeeb010f5c41c679247a70817ac40c6b053a2ebc`  
		Last Modified: Wed, 10 Apr 2019 12:33:57 GMT  
		Size: 10.2 MB (10243402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ee06ddc0f32027d438ca817d00e39d9b0351ea00042cbf084b68f7c687cb59c`  
		Last Modified: Wed, 10 Apr 2019 12:33:55 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:354f584195614a8c5cfa5fac87d57a6b74b73e36d0cb6fdc8d12f481cf4dc67e`  
		Last Modified: Wed, 10 Apr 2019 12:33:54 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine3.9` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:d4812abf0bc7a40b7ee15882658e0a255882db368f5ad829446700d98ce22584
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 MB (13744943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d0e3bd088b30596a7ecdf473fa2f658131324257317b8a27706d4071bb6548d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 Apr 2019 08:49:11 GMT
ADD file:30e0a8ccdca70b20b8ce637f0ba5108157f4ba491447d20aafbe45d82392bd81 in / 
# Wed, 10 Apr 2019 08:49:12 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 09:30:47 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 Apr 2019 09:30:51 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 10 Apr 2019 09:32:51 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 10 Apr 2019 09:32:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 10 Apr 2019 09:32:52 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 10 Apr 2019 09:33:41 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 10 Apr 2019 09:33:44 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 Apr 2019 09:33:45 GMT
VOLUME [/data]
# Wed, 10 Apr 2019 09:33:46 GMT
WORKDIR /data
# Wed, 10 Apr 2019 09:33:46 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 10 Apr 2019 09:33:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 09:33:48 GMT
EXPOSE 6379
# Wed, 10 Apr 2019 09:33:49 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6f37394be673296a0fdc21b819c5df40431baf7d3af121bee451726dd1457493`  
		Last Modified: Wed, 10 Apr 2019 08:50:38 GMT  
		Size: 2.7 MB (2688778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd87357e3604d3d4278cd171c27e1f6eab0970cb1af16c2fd37a4df05d7fa114`  
		Last Modified: Wed, 10 Apr 2019 09:34:18 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3ed8d359e92c573c3aa65aa6bf63c31debc70eed441317642f91d442905b980`  
		Last Modified: Wed, 10 Apr 2019 09:34:19 GMT  
		Size: 405.2 KB (405228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f89ba3e0ff5b04c5863eb9bee5806e4d12f05ed6c4a979a468f65aa77cdfdef8`  
		Last Modified: Wed, 10 Apr 2019 09:34:51 GMT  
		Size: 10.6 MB (10649170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19663d0ed9b27292fa1622897264db3a6188174cc1bfeaf8323356d2957a6fd6`  
		Last Modified: Wed, 10 Apr 2019 09:34:47 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc6d8254dc66ab7c184faf0311379ae18139fdfcb11617b2ad54fbbc3d9b3020`  
		Last Modified: Wed, 10 Apr 2019 09:34:47 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine3.9` - linux; 386

```console
$ docker pull redis@sha256:a9f629f09c360df1a009b5f46334c62902f966d2abc65062a6f3fd90ab8aac3b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.5 MB (13451176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edde63ef99d3fd58f52413315baa0e0223996efde17b691bc558fe1329e0f9e7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 Apr 2019 10:38:55 GMT
ADD file:51f7bb95ef6cc3519317dcb7abbf6155e6bb7b73a17ad7d90cad7911e8a8933c in / 
# Wed, 10 Apr 2019 10:38:55 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 13:10:48 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 Apr 2019 13:10:49 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 10 Apr 2019 13:12:04 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 10 Apr 2019 13:12:04 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 10 Apr 2019 13:12:04 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 10 Apr 2019 13:12:38 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 10 Apr 2019 13:12:39 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 Apr 2019 13:12:39 GMT
VOLUME [/data]
# Wed, 10 Apr 2019 13:12:39 GMT
WORKDIR /data
# Wed, 10 Apr 2019 13:12:39 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 10 Apr 2019 13:12:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 13:12:40 GMT
EXPOSE 6379
# Wed, 10 Apr 2019 13:12:40 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:9a81e6a1a3b4f174d22173a96692c9aeffaefcd00f40607d508951a2b14d6f1f`  
		Last Modified: Wed, 10 Apr 2019 10:39:15 GMT  
		Size: 2.8 MB (2752162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b30efed26125f06596e1a58493943baf64ba49f78b66a0f10ea815430c3057`  
		Last Modified: Wed, 10 Apr 2019 13:13:00 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2e8a8f5562f29213b62563c0cb0612f50141b1e8f26c831a71a2be46703a387`  
		Last Modified: Wed, 10 Apr 2019 13:13:00 GMT  
		Size: 408.0 KB (408011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47a186cf4c1655bcbca426438d67a2130fba20f277c938263f6f438f3a927a27`  
		Last Modified: Wed, 10 Apr 2019 13:13:15 GMT  
		Size: 10.3 MB (10289237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d7adcf33e9a23a6a4fe1b20460af572161c937e870b11b62088a22f2c718404`  
		Last Modified: Wed, 10 Apr 2019 13:13:12 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df7a12cd6a3c747670d2f93691a98e33948ba68552e5626364edba35df97d700`  
		Last Modified: Wed, 10 Apr 2019 13:13:12 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine3.9` - linux; ppc64le

```console
$ docker pull redis@sha256:8f82c43ead4136fb282b0a95ac7ce36b4ae17b45fd85600f92bcc2a23360de95
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14402336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c678fe5968306fac24879a9b89d4066e698cd9873de2830dc24b5b285b822387`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 Apr 2019 08:27:30 GMT
ADD file:c13c1c2b4e6d71924f570a910caf6a1756ea5a28a4017c7b11305e021eacd0ee in / 
# Wed, 10 Apr 2019 08:27:33 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 10:26:02 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 Apr 2019 10:26:09 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 10 Apr 2019 10:28:38 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 10 Apr 2019 10:28:47 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 10 Apr 2019 10:28:53 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 10 Apr 2019 10:29:29 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 10 Apr 2019 10:29:39 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 Apr 2019 10:29:43 GMT
VOLUME [/data]
# Wed, 10 Apr 2019 10:29:48 GMT
WORKDIR /data
# Wed, 10 Apr 2019 10:29:49 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 10 Apr 2019 10:29:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 10:29:55 GMT
EXPOSE 6379
# Wed, 10 Apr 2019 10:29:59 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:fe0f92a92ee06f38abf50fefd22331ac42262e3872ecd2d7ddfa7c24ab71a53a`  
		Last Modified: Wed, 10 Apr 2019 08:28:34 GMT  
		Size: 2.8 MB (2781020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81a3976b0f5f6d320d4e2c4b563bf1d516e9b3dbff3642de3ba2dfdc8aba06df`  
		Last Modified: Wed, 10 Apr 2019 10:30:51 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f552250dac1f95ee5efd4654d27d1b92081cd004b8c8357efb1d5a60bf6b1aa`  
		Last Modified: Wed, 10 Apr 2019 10:30:51 GMT  
		Size: 410.4 KB (410350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09c2c8616bd2f48624b3020ef458b43b0b9c2cca0267c24d2b4017ccde6476fe`  
		Last Modified: Wed, 10 Apr 2019 10:31:33 GMT  
		Size: 11.2 MB (11209134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67fae49a772ab1d392635663595cbc233441f77f45561b61a1de886a8276d001`  
		Last Modified: Wed, 10 Apr 2019 10:31:29 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3649909e0b0f5d7f582d0f3250faa3d424277c82d9fc4725c72f0c881408b71a`  
		Last Modified: Wed, 10 Apr 2019 10:31:29 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine3.9` - linux; s390x

```console
$ docker pull redis@sha256:d7a7c643f8502fcca6e3598ebfd52b08d3071a395f48eb489030bb817377dd73
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 MB (13818104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e958649ccad0db85005cc2be36636a8331c3d129b74e5d4e3dea108f2bbbe903`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 Apr 2019 11:42:23 GMT
ADD file:ab106eb2cf4bf0e1ca7861a56dc24e44dd206fd3ae8d3587684324e5c11136f4 in / 
# Wed, 10 Apr 2019 11:42:23 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 14:22:12 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 Apr 2019 14:22:15 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 10 Apr 2019 14:24:30 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 10 Apr 2019 14:24:31 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 10 Apr 2019 14:24:31 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 10 Apr 2019 14:25:53 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 10 Apr 2019 14:25:57 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 Apr 2019 14:25:58 GMT
VOLUME [/data]
# Wed, 10 Apr 2019 14:25:59 GMT
WORKDIR /data
# Wed, 10 Apr 2019 14:25:59 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 10 Apr 2019 14:26:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 14:26:01 GMT
EXPOSE 6379
# Wed, 10 Apr 2019 14:26:02 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5b51e37a522c2e7cd3c67e8a3e5500b45189ea6698e9fdaed7f5d48282326633`  
		Last Modified: Wed, 10 Apr 2019 11:43:06 GMT  
		Size: 2.5 MB (2543326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e72810cb2904dec74b6a6ec5f4a983c700825faf21979eb2e7a360b42515f26`  
		Last Modified: Wed, 10 Apr 2019 14:26:58 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4816af0620533e2d07b1778a9f075eb91da554fb6e81c803e8fe455a6d9cadb`  
		Last Modified: Wed, 10 Apr 2019 14:26:59 GMT  
		Size: 407.9 KB (407873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f7203d5d1fe441f47786ad4a3c4b2eb3d0cafcb9aa56af3df281ce1f8e35fe8`  
		Last Modified: Wed, 10 Apr 2019 14:27:41 GMT  
		Size: 10.9 MB (10865139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2434d76c6682b1afdf70b4a41ffca5766c0e6028c0d18938698457310413deec`  
		Last Modified: Wed, 10 Apr 2019 14:27:36 GMT  
		Size: 101.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:834e59b75edc12e66c93cb940b6e197d9f2d4e35323d9eacba70504b9fa8d105`  
		Last Modified: Wed, 10 Apr 2019 14:27:36 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0-stretch`

```console
$ docker pull redis@sha256:0234510fa3cdd474e6ec718842f0b860161569de00deb80ca49989182561b6f4
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
$ docker pull redis@sha256:64dfae7bd973c94511110d9e92aa99915eebbb21bfde4f692a46785e68cd4b68
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28397841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2831af28978b0783a850816bcb9d4f6abcbf64fb4769cbd2cf1e7cc35727632`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Mar 2019 12:07:48 GMT
ADD file:6bf06125d936ccaf67981470df5ef6b9bd5dee3c0ef0e042a448fc60bb02f191 in / 
# Wed, 27 Mar 2019 12:07:49 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 15:20:43 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 15:20:44 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 15:21:25 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 15:22:49 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 27 Mar 2019 15:22:49 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 27 Mar 2019 15:22:50 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 27 Mar 2019 15:23:31 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 15:23:33 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 15:23:34 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 15:23:34 GMT
WORKDIR /data
# Wed, 27 Mar 2019 15:23:35 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 15:23:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 15:23:36 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 15:23:36 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:fac132c5d16f670820c8c4ae332bd663c2ff856e9af86b2b23a201db263d851e`  
		Last Modified: Wed, 27 Mar 2019 12:13:15 GMT  
		Size: 19.3 MB (19282442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e2fe4e656b4ef2c65b13804ba160b7e965946dfa62ac428ae2e06c6be52e805`  
		Last Modified: Wed, 27 Mar 2019 15:24:02 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9425121a58ef3107c6a89df6558f6a58f7894a6ad37ef27fb928e53cb4004556`  
		Last Modified: Wed, 27 Mar 2019 15:24:03 GMT  
		Size: 915.9 KB (915851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfa62a7c8adc4d41b8db0babbfc6c2ac25fb5f55e993ec593084e2759e01c429`  
		Last Modified: Wed, 27 Mar 2019 15:24:26 GMT  
		Size: 8.2 MB (8197267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86a981f240d5b98379df31d263d21f4ea9623dfac103beeb3daa8f596f2f4133`  
		Last Modified: Wed, 27 Mar 2019 15:24:24 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07de251417530d354db9c5a45a5d4ec41926fd5c9c4eca42bcf0b4aec0493cf3`  
		Last Modified: Wed, 27 Mar 2019 15:24:24 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-stretch` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:3eac20b9b226f06478b8a650dd5633bf1c55377f15c39bc0e5d5f3aa13f27f22
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.7 MB (29748823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a702f300b3df49d861d4be07d9d4805e4d2d4bc18ce3d0dce0cd816172963a1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:46 GMT
ADD file:9db7760cb1c28ef0cd3fa9ee9d0f528d2bcfe80b1c3973daa9f87e30b2047102 in / 
# Wed, 27 Mar 2019 08:47:47 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:09:11 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 12:09:12 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 12:11:14 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 12:14:19 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 27 Mar 2019 12:14:20 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 27 Mar 2019 12:14:20 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 27 Mar 2019 12:17:24 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 12:17:26 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 12:17:27 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 12:17:27 GMT
WORKDIR /data
# Wed, 27 Mar 2019 12:17:28 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 12:17:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 12:17:30 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 12:17:30 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:007027d142c80b166a004bc7265c04036b80df438ac408f1a947e05c581b418e`  
		Last Modified: Wed, 27 Mar 2019 08:52:56 GMT  
		Size: 20.3 MB (20340179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf60f2128f3195c471ec3689b8be025149dcff169970e8d8968c4864c282c8cd`  
		Last Modified: Wed, 27 Mar 2019 12:18:10 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcf7593f1ca581039b8fd820fbd9a7b8dabbf87cb88ae708b921ab5d18bee68c`  
		Last Modified: Wed, 27 Mar 2019 12:18:10 GMT  
		Size: 908.1 KB (908060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5597d685f1041f784c1600ed455161a8dae073fd5b1b00190bac2fa4155d32e`  
		Last Modified: Wed, 27 Mar 2019 12:18:40 GMT  
		Size: 8.5 MB (8498329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4388924faeaff651b6398d721f550ddba938511b550a42babf2366dea8458e2`  
		Last Modified: Wed, 27 Mar 2019 12:18:36 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a330a6abb07de3e45384c34b541a6a3881d0f71890e59bd4ed6c9c6afa0c9759`  
		Last Modified: Wed, 27 Mar 2019 12:18:36 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-stretch` - linux; 386

```console
$ docker pull redis@sha256:42643c982b5ce8bccdd31e0bef870313d9ff0cb2aee50fb5ca7451f91da2245f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32306370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e21273c1123b3b32fbb0523226fb4bfb4c58e00ad5cee8e576b1bb9caad7311`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Mar 2019 10:43:41 GMT
ADD file:13e40d14dbdd0814b4fb7b2a378757164620517fec383739c87747c27e07d8e7 in / 
# Wed, 27 Mar 2019 10:43:41 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 16:13:05 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 16:13:06 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 16:13:20 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 16:14:35 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 27 Mar 2019 16:14:35 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 27 Mar 2019 16:14:36 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 27 Mar 2019 16:15:15 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 16:15:16 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 16:15:16 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 16:15:16 GMT
WORKDIR /data
# Wed, 27 Mar 2019 16:15:16 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 16:15:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 16:15:17 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 16:15:17 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:a5ba78e1989e52ae238c3f225934c1a2dee4dfaa4667abd6f2e0717b78159472`  
		Last Modified: Wed, 27 Mar 2019 10:49:24 GMT  
		Size: 23.1 MB (23125745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcc0e5b68b9dbbba70332f0cad07bf511d38a873ec0d6c82b4c06e897e924689`  
		Last Modified: Wed, 27 Mar 2019 16:15:34 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2a0f34b494237693bbdb853e52e9727e46f0f5a30d022759bcb9cc90710cb1e`  
		Last Modified: Wed, 27 Mar 2019 16:15:34 GMT  
		Size: 920.2 KB (920184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ade7b786a71575d0d0b9641d5ee086c370698b1dbd4ac1fbcf0c5402abd0429a`  
		Last Modified: Wed, 27 Mar 2019 16:15:46 GMT  
		Size: 8.3 MB (8258192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a68814567d45a0baf2a13183cf5ab57dd62879035674ef45702d38699a80306`  
		Last Modified: Wed, 27 Mar 2019 16:15:44 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:418f76c6bc7a112f5a64bf9f367edfe3cdb48e1bbe70688f4ff6186f105dfee0`  
		Last Modified: Wed, 27 Mar 2019 16:15:44 GMT  
		Size: 418.0 B  
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
$ docker pull redis@sha256:0b87e59d1d0908e07b8895735e846cbe26bca16890cfd7b05c6100fc0a1c1588
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
$ docker pull redis@sha256:0b87e59d1d0908e07b8895735e846cbe26bca16890cfd7b05c6100fc0a1c1588
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
$ docker pull redis@sha256:f6226137081875ee70351244851a326208ffec21ed44abbdc71d74c99d961121
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
$ docker pull redis@sha256:c80e7c19b42cc376597791e2ccb9a516ec18d20a0e2a74c461ec6cffdef82c6d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 MB (13945712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e3119fbb796502da4ac9e1aff74a343d6b3a6ad522837d22406b200be11d548`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Tue, 09 Apr 2019 23:56:52 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Tue, 09 Apr 2019 23:56:54 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Tue, 09 Apr 2019 23:58:40 GMT
ENV REDIS_VERSION=4.0.14
# Tue, 09 Apr 2019 23:58:40 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Tue, 09 Apr 2019 23:58:40 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Tue, 09 Apr 2019 23:59:14 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Tue, 09 Apr 2019 23:59:15 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 09 Apr 2019 23:59:15 GMT
VOLUME [/data]
# Tue, 09 Apr 2019 23:59:15 GMT
WORKDIR /data
# Tue, 09 Apr 2019 23:59:15 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Tue, 09 Apr 2019 23:59:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 Apr 2019 23:59:16 GMT
EXPOSE 6379
# Tue, 09 Apr 2019 23:59:16 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:542e0c4f2f182e0f9c8c3e8a9a4303f5478207940914c9a88232c829c4e74fcf`  
		Last Modified: Tue, 09 Apr 2019 23:59:41 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbf113c39f6550bbc31b5b985e138e40938b5902f154527a952cdd45b0868b11`  
		Last Modified: Tue, 09 Apr 2019 23:59:41 GMT  
		Size: 403.0 KB (403004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:976c755ff9d681459e3fc55196d0850fb1ccd02711d8d3ac84ccaa7f2b3c675e`  
		Last Modified: Tue, 09 Apr 2019 23:59:56 GMT  
		Size: 10.8 MB (10783933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:825af00ce8d058b062a6805896d6331108425ad64c3387fd5d983457c2faa313`  
		Last Modified: Tue, 09 Apr 2019 23:59:52 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4351afe1ec8b7e39a7ba947814a4a42edf411cc4ab88db0ee0bcbbdd8c828a0a`  
		Last Modified: Tue, 09 Apr 2019 23:59:52 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:516149016d9d7eb5e56975900484e524fd1b8f1d53c962839af93be79bc5595a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.3 MB (13349131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21c072d178b181d50fb973b8150c8a7f7a086cc8172fe820779a4953a32d84f1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 08:26:14 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 Apr 2019 08:26:16 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 10 Apr 2019 08:27:07 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 10 Apr 2019 08:27:07 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 10 Apr 2019 08:27:07 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 10 Apr 2019 08:27:31 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 10 Apr 2019 08:27:33 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 Apr 2019 08:27:33 GMT
VOLUME [/data]
# Wed, 10 Apr 2019 08:27:34 GMT
WORKDIR /data
# Wed, 10 Apr 2019 08:27:34 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 10 Apr 2019 08:27:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 08:27:35 GMT
EXPOSE 6379
# Wed, 10 Apr 2019 08:27:35 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cac72c52417597f37150f22f15904bd5df64bf389a18ebb8145b857f4da966a5`  
		Last Modified: Wed, 10 Apr 2019 08:27:48 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6db8b29787ef73ca4d0464c2c22edee9ca3e063a81cf9a8830b1ec5c8befc20`  
		Last Modified: Wed, 10 Apr 2019 08:27:48 GMT  
		Size: 405.3 KB (405287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa6dfb62ea1fc0a697ec823d63e2c98ad50f432fb6ca6d5761aae0e68b10e9cf`  
		Last Modified: Wed, 10 Apr 2019 08:28:09 GMT  
		Size: 10.4 MB (10398575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13158c6805150f6c4f5f8a3ef9e3228ec59f3c808cfcd2d576691225184031cb`  
		Last Modified: Wed, 10 Apr 2019 08:28:06 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c81f5f8478e4b111b511cf40f73a417774488046fc7e1d47e84a0402cb074aa3`  
		Last Modified: Wed, 10 Apr 2019 08:28:06 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine` - linux; arm variant v7

```console
$ docker pull redis@sha256:d9b65d02bfb522f1a9cb3f2e20a94a34bc6378ae49d80c96cac35a03936c2ab6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 MB (12994573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3655c0fd0b129fca49907da27db7a8d20f3a38877ab376f59d159484779f528f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 Apr 2019 11:57:47 GMT
ADD file:1a27b74f23795a1f205247dcd6eff48ac56f0b8f2afe0c358199a0b60f694861 in / 
# Wed, 10 Apr 2019 11:57:48 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 12:31:32 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 Apr 2019 12:31:35 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 10 Apr 2019 12:32:39 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 10 Apr 2019 12:32:39 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 10 Apr 2019 12:32:40 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 10 Apr 2019 12:33:05 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 10 Apr 2019 12:33:07 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 Apr 2019 12:33:08 GMT
VOLUME [/data]
# Wed, 10 Apr 2019 12:33:08 GMT
WORKDIR /data
# Wed, 10 Apr 2019 12:33:09 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 10 Apr 2019 12:33:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 12:33:10 GMT
EXPOSE 6379
# Wed, 10 Apr 2019 12:33:10 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:c2a5cdd4aa08146b4516cc95f6b461f2994250a819b3e6f75f23fa2a8c1b1744`  
		Last Modified: Wed, 10 Apr 2019 11:58:04 GMT  
		Size: 2.4 MB (2350757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f02904c22d1f59beea301a4e2c19f4b14edae521f98cd0cae4edec6c880c34bb`  
		Last Modified: Wed, 10 Apr 2019 12:33:35 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0132ad3f4069c0da06d221747600eb8c244a3bfcf23a05b129ab41c109b76640`  
		Last Modified: Wed, 10 Apr 2019 12:33:35 GMT  
		Size: 398.6 KB (398582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d03579c9d74991005666f6cbeeb010f5c41c679247a70817ac40c6b053a2ebc`  
		Last Modified: Wed, 10 Apr 2019 12:33:57 GMT  
		Size: 10.2 MB (10243402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ee06ddc0f32027d438ca817d00e39d9b0351ea00042cbf084b68f7c687cb59c`  
		Last Modified: Wed, 10 Apr 2019 12:33:55 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:354f584195614a8c5cfa5fac87d57a6b74b73e36d0cb6fdc8d12f481cf4dc67e`  
		Last Modified: Wed, 10 Apr 2019 12:33:54 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:d4812abf0bc7a40b7ee15882658e0a255882db368f5ad829446700d98ce22584
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 MB (13744943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d0e3bd088b30596a7ecdf473fa2f658131324257317b8a27706d4071bb6548d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 Apr 2019 08:49:11 GMT
ADD file:30e0a8ccdca70b20b8ce637f0ba5108157f4ba491447d20aafbe45d82392bd81 in / 
# Wed, 10 Apr 2019 08:49:12 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 09:30:47 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 Apr 2019 09:30:51 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 10 Apr 2019 09:32:51 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 10 Apr 2019 09:32:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 10 Apr 2019 09:32:52 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 10 Apr 2019 09:33:41 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 10 Apr 2019 09:33:44 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 Apr 2019 09:33:45 GMT
VOLUME [/data]
# Wed, 10 Apr 2019 09:33:46 GMT
WORKDIR /data
# Wed, 10 Apr 2019 09:33:46 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 10 Apr 2019 09:33:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 09:33:48 GMT
EXPOSE 6379
# Wed, 10 Apr 2019 09:33:49 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6f37394be673296a0fdc21b819c5df40431baf7d3af121bee451726dd1457493`  
		Last Modified: Wed, 10 Apr 2019 08:50:38 GMT  
		Size: 2.7 MB (2688778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd87357e3604d3d4278cd171c27e1f6eab0970cb1af16c2fd37a4df05d7fa114`  
		Last Modified: Wed, 10 Apr 2019 09:34:18 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3ed8d359e92c573c3aa65aa6bf63c31debc70eed441317642f91d442905b980`  
		Last Modified: Wed, 10 Apr 2019 09:34:19 GMT  
		Size: 405.2 KB (405228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f89ba3e0ff5b04c5863eb9bee5806e4d12f05ed6c4a979a468f65aa77cdfdef8`  
		Last Modified: Wed, 10 Apr 2019 09:34:51 GMT  
		Size: 10.6 MB (10649170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19663d0ed9b27292fa1622897264db3a6188174cc1bfeaf8323356d2957a6fd6`  
		Last Modified: Wed, 10 Apr 2019 09:34:47 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc6d8254dc66ab7c184faf0311379ae18139fdfcb11617b2ad54fbbc3d9b3020`  
		Last Modified: Wed, 10 Apr 2019 09:34:47 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine` - linux; 386

```console
$ docker pull redis@sha256:a9f629f09c360df1a009b5f46334c62902f966d2abc65062a6f3fd90ab8aac3b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.5 MB (13451176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edde63ef99d3fd58f52413315baa0e0223996efde17b691bc558fe1329e0f9e7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 Apr 2019 10:38:55 GMT
ADD file:51f7bb95ef6cc3519317dcb7abbf6155e6bb7b73a17ad7d90cad7911e8a8933c in / 
# Wed, 10 Apr 2019 10:38:55 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 13:10:48 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 Apr 2019 13:10:49 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 10 Apr 2019 13:12:04 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 10 Apr 2019 13:12:04 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 10 Apr 2019 13:12:04 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 10 Apr 2019 13:12:38 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 10 Apr 2019 13:12:39 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 Apr 2019 13:12:39 GMT
VOLUME [/data]
# Wed, 10 Apr 2019 13:12:39 GMT
WORKDIR /data
# Wed, 10 Apr 2019 13:12:39 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 10 Apr 2019 13:12:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 13:12:40 GMT
EXPOSE 6379
# Wed, 10 Apr 2019 13:12:40 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:9a81e6a1a3b4f174d22173a96692c9aeffaefcd00f40607d508951a2b14d6f1f`  
		Last Modified: Wed, 10 Apr 2019 10:39:15 GMT  
		Size: 2.8 MB (2752162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b30efed26125f06596e1a58493943baf64ba49f78b66a0f10ea815430c3057`  
		Last Modified: Wed, 10 Apr 2019 13:13:00 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2e8a8f5562f29213b62563c0cb0612f50141b1e8f26c831a71a2be46703a387`  
		Last Modified: Wed, 10 Apr 2019 13:13:00 GMT  
		Size: 408.0 KB (408011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47a186cf4c1655bcbca426438d67a2130fba20f277c938263f6f438f3a927a27`  
		Last Modified: Wed, 10 Apr 2019 13:13:15 GMT  
		Size: 10.3 MB (10289237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d7adcf33e9a23a6a4fe1b20460af572161c937e870b11b62088a22f2c718404`  
		Last Modified: Wed, 10 Apr 2019 13:13:12 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df7a12cd6a3c747670d2f93691a98e33948ba68552e5626364edba35df97d700`  
		Last Modified: Wed, 10 Apr 2019 13:13:12 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:8f82c43ead4136fb282b0a95ac7ce36b4ae17b45fd85600f92bcc2a23360de95
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14402336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c678fe5968306fac24879a9b89d4066e698cd9873de2830dc24b5b285b822387`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 Apr 2019 08:27:30 GMT
ADD file:c13c1c2b4e6d71924f570a910caf6a1756ea5a28a4017c7b11305e021eacd0ee in / 
# Wed, 10 Apr 2019 08:27:33 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 10:26:02 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 Apr 2019 10:26:09 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 10 Apr 2019 10:28:38 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 10 Apr 2019 10:28:47 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 10 Apr 2019 10:28:53 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 10 Apr 2019 10:29:29 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 10 Apr 2019 10:29:39 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 Apr 2019 10:29:43 GMT
VOLUME [/data]
# Wed, 10 Apr 2019 10:29:48 GMT
WORKDIR /data
# Wed, 10 Apr 2019 10:29:49 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 10 Apr 2019 10:29:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 10:29:55 GMT
EXPOSE 6379
# Wed, 10 Apr 2019 10:29:59 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:fe0f92a92ee06f38abf50fefd22331ac42262e3872ecd2d7ddfa7c24ab71a53a`  
		Last Modified: Wed, 10 Apr 2019 08:28:34 GMT  
		Size: 2.8 MB (2781020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81a3976b0f5f6d320d4e2c4b563bf1d516e9b3dbff3642de3ba2dfdc8aba06df`  
		Last Modified: Wed, 10 Apr 2019 10:30:51 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f552250dac1f95ee5efd4654d27d1b92081cd004b8c8357efb1d5a60bf6b1aa`  
		Last Modified: Wed, 10 Apr 2019 10:30:51 GMT  
		Size: 410.4 KB (410350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09c2c8616bd2f48624b3020ef458b43b0b9c2cca0267c24d2b4017ccde6476fe`  
		Last Modified: Wed, 10 Apr 2019 10:31:33 GMT  
		Size: 11.2 MB (11209134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67fae49a772ab1d392635663595cbc233441f77f45561b61a1de886a8276d001`  
		Last Modified: Wed, 10 Apr 2019 10:31:29 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3649909e0b0f5d7f582d0f3250faa3d424277c82d9fc4725c72f0c881408b71a`  
		Last Modified: Wed, 10 Apr 2019 10:31:29 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine` - linux; s390x

```console
$ docker pull redis@sha256:d7a7c643f8502fcca6e3598ebfd52b08d3071a395f48eb489030bb817377dd73
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 MB (13818104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e958649ccad0db85005cc2be36636a8331c3d129b74e5d4e3dea108f2bbbe903`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 Apr 2019 11:42:23 GMT
ADD file:ab106eb2cf4bf0e1ca7861a56dc24e44dd206fd3ae8d3587684324e5c11136f4 in / 
# Wed, 10 Apr 2019 11:42:23 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 14:22:12 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 Apr 2019 14:22:15 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 10 Apr 2019 14:24:30 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 10 Apr 2019 14:24:31 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 10 Apr 2019 14:24:31 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 10 Apr 2019 14:25:53 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 10 Apr 2019 14:25:57 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 Apr 2019 14:25:58 GMT
VOLUME [/data]
# Wed, 10 Apr 2019 14:25:59 GMT
WORKDIR /data
# Wed, 10 Apr 2019 14:25:59 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 10 Apr 2019 14:26:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 14:26:01 GMT
EXPOSE 6379
# Wed, 10 Apr 2019 14:26:02 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5b51e37a522c2e7cd3c67e8a3e5500b45189ea6698e9fdaed7f5d48282326633`  
		Last Modified: Wed, 10 Apr 2019 11:43:06 GMT  
		Size: 2.5 MB (2543326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e72810cb2904dec74b6a6ec5f4a983c700825faf21979eb2e7a360b42515f26`  
		Last Modified: Wed, 10 Apr 2019 14:26:58 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4816af0620533e2d07b1778a9f075eb91da554fb6e81c803e8fe455a6d9cadb`  
		Last Modified: Wed, 10 Apr 2019 14:26:59 GMT  
		Size: 407.9 KB (407873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f7203d5d1fe441f47786ad4a3c4b2eb3d0cafcb9aa56af3df281ce1f8e35fe8`  
		Last Modified: Wed, 10 Apr 2019 14:27:41 GMT  
		Size: 10.9 MB (10865139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2434d76c6682b1afdf70b4a41ffca5766c0e6028c0d18938698457310413deec`  
		Last Modified: Wed, 10 Apr 2019 14:27:36 GMT  
		Size: 101.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:834e59b75edc12e66c93cb940b6e197d9f2d4e35323d9eacba70504b9fa8d105`  
		Last Modified: Wed, 10 Apr 2019 14:27:36 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4-alpine3.9`

```console
$ docker pull redis@sha256:f6226137081875ee70351244851a326208ffec21ed44abbdc71d74c99d961121
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
$ docker pull redis@sha256:c80e7c19b42cc376597791e2ccb9a516ec18d20a0e2a74c461ec6cffdef82c6d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 MB (13945712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e3119fbb796502da4ac9e1aff74a343d6b3a6ad522837d22406b200be11d548`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Tue, 09 Apr 2019 23:56:52 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Tue, 09 Apr 2019 23:56:54 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Tue, 09 Apr 2019 23:58:40 GMT
ENV REDIS_VERSION=4.0.14
# Tue, 09 Apr 2019 23:58:40 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Tue, 09 Apr 2019 23:58:40 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Tue, 09 Apr 2019 23:59:14 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Tue, 09 Apr 2019 23:59:15 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 09 Apr 2019 23:59:15 GMT
VOLUME [/data]
# Tue, 09 Apr 2019 23:59:15 GMT
WORKDIR /data
# Tue, 09 Apr 2019 23:59:15 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Tue, 09 Apr 2019 23:59:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 Apr 2019 23:59:16 GMT
EXPOSE 6379
# Tue, 09 Apr 2019 23:59:16 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:542e0c4f2f182e0f9c8c3e8a9a4303f5478207940914c9a88232c829c4e74fcf`  
		Last Modified: Tue, 09 Apr 2019 23:59:41 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbf113c39f6550bbc31b5b985e138e40938b5902f154527a952cdd45b0868b11`  
		Last Modified: Tue, 09 Apr 2019 23:59:41 GMT  
		Size: 403.0 KB (403004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:976c755ff9d681459e3fc55196d0850fb1ccd02711d8d3ac84ccaa7f2b3c675e`  
		Last Modified: Tue, 09 Apr 2019 23:59:56 GMT  
		Size: 10.8 MB (10783933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:825af00ce8d058b062a6805896d6331108425ad64c3387fd5d983457c2faa313`  
		Last Modified: Tue, 09 Apr 2019 23:59:52 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4351afe1ec8b7e39a7ba947814a4a42edf411cc4ab88db0ee0bcbbdd8c828a0a`  
		Last Modified: Tue, 09 Apr 2019 23:59:52 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine3.9` - linux; arm variant v6

```console
$ docker pull redis@sha256:516149016d9d7eb5e56975900484e524fd1b8f1d53c962839af93be79bc5595a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.3 MB (13349131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21c072d178b181d50fb973b8150c8a7f7a086cc8172fe820779a4953a32d84f1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 08:26:14 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 Apr 2019 08:26:16 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 10 Apr 2019 08:27:07 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 10 Apr 2019 08:27:07 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 10 Apr 2019 08:27:07 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 10 Apr 2019 08:27:31 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 10 Apr 2019 08:27:33 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 Apr 2019 08:27:33 GMT
VOLUME [/data]
# Wed, 10 Apr 2019 08:27:34 GMT
WORKDIR /data
# Wed, 10 Apr 2019 08:27:34 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 10 Apr 2019 08:27:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 08:27:35 GMT
EXPOSE 6379
# Wed, 10 Apr 2019 08:27:35 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cac72c52417597f37150f22f15904bd5df64bf389a18ebb8145b857f4da966a5`  
		Last Modified: Wed, 10 Apr 2019 08:27:48 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6db8b29787ef73ca4d0464c2c22edee9ca3e063a81cf9a8830b1ec5c8befc20`  
		Last Modified: Wed, 10 Apr 2019 08:27:48 GMT  
		Size: 405.3 KB (405287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa6dfb62ea1fc0a697ec823d63e2c98ad50f432fb6ca6d5761aae0e68b10e9cf`  
		Last Modified: Wed, 10 Apr 2019 08:28:09 GMT  
		Size: 10.4 MB (10398575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13158c6805150f6c4f5f8a3ef9e3228ec59f3c808cfcd2d576691225184031cb`  
		Last Modified: Wed, 10 Apr 2019 08:28:06 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c81f5f8478e4b111b511cf40f73a417774488046fc7e1d47e84a0402cb074aa3`  
		Last Modified: Wed, 10 Apr 2019 08:28:06 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine3.9` - linux; arm variant v7

```console
$ docker pull redis@sha256:d9b65d02bfb522f1a9cb3f2e20a94a34bc6378ae49d80c96cac35a03936c2ab6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 MB (12994573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3655c0fd0b129fca49907da27db7a8d20f3a38877ab376f59d159484779f528f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 Apr 2019 11:57:47 GMT
ADD file:1a27b74f23795a1f205247dcd6eff48ac56f0b8f2afe0c358199a0b60f694861 in / 
# Wed, 10 Apr 2019 11:57:48 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 12:31:32 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 Apr 2019 12:31:35 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 10 Apr 2019 12:32:39 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 10 Apr 2019 12:32:39 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 10 Apr 2019 12:32:40 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 10 Apr 2019 12:33:05 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 10 Apr 2019 12:33:07 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 Apr 2019 12:33:08 GMT
VOLUME [/data]
# Wed, 10 Apr 2019 12:33:08 GMT
WORKDIR /data
# Wed, 10 Apr 2019 12:33:09 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 10 Apr 2019 12:33:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 12:33:10 GMT
EXPOSE 6379
# Wed, 10 Apr 2019 12:33:10 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:c2a5cdd4aa08146b4516cc95f6b461f2994250a819b3e6f75f23fa2a8c1b1744`  
		Last Modified: Wed, 10 Apr 2019 11:58:04 GMT  
		Size: 2.4 MB (2350757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f02904c22d1f59beea301a4e2c19f4b14edae521f98cd0cae4edec6c880c34bb`  
		Last Modified: Wed, 10 Apr 2019 12:33:35 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0132ad3f4069c0da06d221747600eb8c244a3bfcf23a05b129ab41c109b76640`  
		Last Modified: Wed, 10 Apr 2019 12:33:35 GMT  
		Size: 398.6 KB (398582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d03579c9d74991005666f6cbeeb010f5c41c679247a70817ac40c6b053a2ebc`  
		Last Modified: Wed, 10 Apr 2019 12:33:57 GMT  
		Size: 10.2 MB (10243402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ee06ddc0f32027d438ca817d00e39d9b0351ea00042cbf084b68f7c687cb59c`  
		Last Modified: Wed, 10 Apr 2019 12:33:55 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:354f584195614a8c5cfa5fac87d57a6b74b73e36d0cb6fdc8d12f481cf4dc67e`  
		Last Modified: Wed, 10 Apr 2019 12:33:54 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine3.9` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:d4812abf0bc7a40b7ee15882658e0a255882db368f5ad829446700d98ce22584
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 MB (13744943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d0e3bd088b30596a7ecdf473fa2f658131324257317b8a27706d4071bb6548d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 Apr 2019 08:49:11 GMT
ADD file:30e0a8ccdca70b20b8ce637f0ba5108157f4ba491447d20aafbe45d82392bd81 in / 
# Wed, 10 Apr 2019 08:49:12 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 09:30:47 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 Apr 2019 09:30:51 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 10 Apr 2019 09:32:51 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 10 Apr 2019 09:32:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 10 Apr 2019 09:32:52 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 10 Apr 2019 09:33:41 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 10 Apr 2019 09:33:44 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 Apr 2019 09:33:45 GMT
VOLUME [/data]
# Wed, 10 Apr 2019 09:33:46 GMT
WORKDIR /data
# Wed, 10 Apr 2019 09:33:46 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 10 Apr 2019 09:33:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 09:33:48 GMT
EXPOSE 6379
# Wed, 10 Apr 2019 09:33:49 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6f37394be673296a0fdc21b819c5df40431baf7d3af121bee451726dd1457493`  
		Last Modified: Wed, 10 Apr 2019 08:50:38 GMT  
		Size: 2.7 MB (2688778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd87357e3604d3d4278cd171c27e1f6eab0970cb1af16c2fd37a4df05d7fa114`  
		Last Modified: Wed, 10 Apr 2019 09:34:18 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3ed8d359e92c573c3aa65aa6bf63c31debc70eed441317642f91d442905b980`  
		Last Modified: Wed, 10 Apr 2019 09:34:19 GMT  
		Size: 405.2 KB (405228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f89ba3e0ff5b04c5863eb9bee5806e4d12f05ed6c4a979a468f65aa77cdfdef8`  
		Last Modified: Wed, 10 Apr 2019 09:34:51 GMT  
		Size: 10.6 MB (10649170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19663d0ed9b27292fa1622897264db3a6188174cc1bfeaf8323356d2957a6fd6`  
		Last Modified: Wed, 10 Apr 2019 09:34:47 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc6d8254dc66ab7c184faf0311379ae18139fdfcb11617b2ad54fbbc3d9b3020`  
		Last Modified: Wed, 10 Apr 2019 09:34:47 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine3.9` - linux; 386

```console
$ docker pull redis@sha256:a9f629f09c360df1a009b5f46334c62902f966d2abc65062a6f3fd90ab8aac3b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.5 MB (13451176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edde63ef99d3fd58f52413315baa0e0223996efde17b691bc558fe1329e0f9e7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 Apr 2019 10:38:55 GMT
ADD file:51f7bb95ef6cc3519317dcb7abbf6155e6bb7b73a17ad7d90cad7911e8a8933c in / 
# Wed, 10 Apr 2019 10:38:55 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 13:10:48 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 Apr 2019 13:10:49 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 10 Apr 2019 13:12:04 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 10 Apr 2019 13:12:04 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 10 Apr 2019 13:12:04 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 10 Apr 2019 13:12:38 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 10 Apr 2019 13:12:39 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 Apr 2019 13:12:39 GMT
VOLUME [/data]
# Wed, 10 Apr 2019 13:12:39 GMT
WORKDIR /data
# Wed, 10 Apr 2019 13:12:39 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 10 Apr 2019 13:12:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 13:12:40 GMT
EXPOSE 6379
# Wed, 10 Apr 2019 13:12:40 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:9a81e6a1a3b4f174d22173a96692c9aeffaefcd00f40607d508951a2b14d6f1f`  
		Last Modified: Wed, 10 Apr 2019 10:39:15 GMT  
		Size: 2.8 MB (2752162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b30efed26125f06596e1a58493943baf64ba49f78b66a0f10ea815430c3057`  
		Last Modified: Wed, 10 Apr 2019 13:13:00 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2e8a8f5562f29213b62563c0cb0612f50141b1e8f26c831a71a2be46703a387`  
		Last Modified: Wed, 10 Apr 2019 13:13:00 GMT  
		Size: 408.0 KB (408011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47a186cf4c1655bcbca426438d67a2130fba20f277c938263f6f438f3a927a27`  
		Last Modified: Wed, 10 Apr 2019 13:13:15 GMT  
		Size: 10.3 MB (10289237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d7adcf33e9a23a6a4fe1b20460af572161c937e870b11b62088a22f2c718404`  
		Last Modified: Wed, 10 Apr 2019 13:13:12 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df7a12cd6a3c747670d2f93691a98e33948ba68552e5626364edba35df97d700`  
		Last Modified: Wed, 10 Apr 2019 13:13:12 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine3.9` - linux; ppc64le

```console
$ docker pull redis@sha256:8f82c43ead4136fb282b0a95ac7ce36b4ae17b45fd85600f92bcc2a23360de95
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14402336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c678fe5968306fac24879a9b89d4066e698cd9873de2830dc24b5b285b822387`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 Apr 2019 08:27:30 GMT
ADD file:c13c1c2b4e6d71924f570a910caf6a1756ea5a28a4017c7b11305e021eacd0ee in / 
# Wed, 10 Apr 2019 08:27:33 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 10:26:02 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 Apr 2019 10:26:09 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 10 Apr 2019 10:28:38 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 10 Apr 2019 10:28:47 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 10 Apr 2019 10:28:53 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 10 Apr 2019 10:29:29 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 10 Apr 2019 10:29:39 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 Apr 2019 10:29:43 GMT
VOLUME [/data]
# Wed, 10 Apr 2019 10:29:48 GMT
WORKDIR /data
# Wed, 10 Apr 2019 10:29:49 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 10 Apr 2019 10:29:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 10:29:55 GMT
EXPOSE 6379
# Wed, 10 Apr 2019 10:29:59 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:fe0f92a92ee06f38abf50fefd22331ac42262e3872ecd2d7ddfa7c24ab71a53a`  
		Last Modified: Wed, 10 Apr 2019 08:28:34 GMT  
		Size: 2.8 MB (2781020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81a3976b0f5f6d320d4e2c4b563bf1d516e9b3dbff3642de3ba2dfdc8aba06df`  
		Last Modified: Wed, 10 Apr 2019 10:30:51 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f552250dac1f95ee5efd4654d27d1b92081cd004b8c8357efb1d5a60bf6b1aa`  
		Last Modified: Wed, 10 Apr 2019 10:30:51 GMT  
		Size: 410.4 KB (410350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09c2c8616bd2f48624b3020ef458b43b0b9c2cca0267c24d2b4017ccde6476fe`  
		Last Modified: Wed, 10 Apr 2019 10:31:33 GMT  
		Size: 11.2 MB (11209134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67fae49a772ab1d392635663595cbc233441f77f45561b61a1de886a8276d001`  
		Last Modified: Wed, 10 Apr 2019 10:31:29 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3649909e0b0f5d7f582d0f3250faa3d424277c82d9fc4725c72f0c881408b71a`  
		Last Modified: Wed, 10 Apr 2019 10:31:29 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine3.9` - linux; s390x

```console
$ docker pull redis@sha256:d7a7c643f8502fcca6e3598ebfd52b08d3071a395f48eb489030bb817377dd73
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 MB (13818104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e958649ccad0db85005cc2be36636a8331c3d129b74e5d4e3dea108f2bbbe903`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 Apr 2019 11:42:23 GMT
ADD file:ab106eb2cf4bf0e1ca7861a56dc24e44dd206fd3ae8d3587684324e5c11136f4 in / 
# Wed, 10 Apr 2019 11:42:23 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 14:22:12 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 Apr 2019 14:22:15 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 10 Apr 2019 14:24:30 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 10 Apr 2019 14:24:31 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 10 Apr 2019 14:24:31 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 10 Apr 2019 14:25:53 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 10 Apr 2019 14:25:57 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 Apr 2019 14:25:58 GMT
VOLUME [/data]
# Wed, 10 Apr 2019 14:25:59 GMT
WORKDIR /data
# Wed, 10 Apr 2019 14:25:59 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 10 Apr 2019 14:26:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 14:26:01 GMT
EXPOSE 6379
# Wed, 10 Apr 2019 14:26:02 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5b51e37a522c2e7cd3c67e8a3e5500b45189ea6698e9fdaed7f5d48282326633`  
		Last Modified: Wed, 10 Apr 2019 11:43:06 GMT  
		Size: 2.5 MB (2543326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e72810cb2904dec74b6a6ec5f4a983c700825faf21979eb2e7a360b42515f26`  
		Last Modified: Wed, 10 Apr 2019 14:26:58 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4816af0620533e2d07b1778a9f075eb91da554fb6e81c803e8fe455a6d9cadb`  
		Last Modified: Wed, 10 Apr 2019 14:26:59 GMT  
		Size: 407.9 KB (407873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f7203d5d1fe441f47786ad4a3c4b2eb3d0cafcb9aa56af3df281ce1f8e35fe8`  
		Last Modified: Wed, 10 Apr 2019 14:27:41 GMT  
		Size: 10.9 MB (10865139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2434d76c6682b1afdf70b4a41ffca5766c0e6028c0d18938698457310413deec`  
		Last Modified: Wed, 10 Apr 2019 14:27:36 GMT  
		Size: 101.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:834e59b75edc12e66c93cb940b6e197d9f2d4e35323d9eacba70504b9fa8d105`  
		Last Modified: Wed, 10 Apr 2019 14:27:36 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4-stretch`

```console
$ docker pull redis@sha256:0234510fa3cdd474e6ec718842f0b860161569de00deb80ca49989182561b6f4
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
$ docker pull redis@sha256:64dfae7bd973c94511110d9e92aa99915eebbb21bfde4f692a46785e68cd4b68
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28397841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2831af28978b0783a850816bcb9d4f6abcbf64fb4769cbd2cf1e7cc35727632`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Mar 2019 12:07:48 GMT
ADD file:6bf06125d936ccaf67981470df5ef6b9bd5dee3c0ef0e042a448fc60bb02f191 in / 
# Wed, 27 Mar 2019 12:07:49 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 15:20:43 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 15:20:44 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 15:21:25 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 15:22:49 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 27 Mar 2019 15:22:49 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 27 Mar 2019 15:22:50 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 27 Mar 2019 15:23:31 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 15:23:33 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 15:23:34 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 15:23:34 GMT
WORKDIR /data
# Wed, 27 Mar 2019 15:23:35 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 15:23:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 15:23:36 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 15:23:36 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:fac132c5d16f670820c8c4ae332bd663c2ff856e9af86b2b23a201db263d851e`  
		Last Modified: Wed, 27 Mar 2019 12:13:15 GMT  
		Size: 19.3 MB (19282442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e2fe4e656b4ef2c65b13804ba160b7e965946dfa62ac428ae2e06c6be52e805`  
		Last Modified: Wed, 27 Mar 2019 15:24:02 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9425121a58ef3107c6a89df6558f6a58f7894a6ad37ef27fb928e53cb4004556`  
		Last Modified: Wed, 27 Mar 2019 15:24:03 GMT  
		Size: 915.9 KB (915851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfa62a7c8adc4d41b8db0babbfc6c2ac25fb5f55e993ec593084e2759e01c429`  
		Last Modified: Wed, 27 Mar 2019 15:24:26 GMT  
		Size: 8.2 MB (8197267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86a981f240d5b98379df31d263d21f4ea9623dfac103beeb3daa8f596f2f4133`  
		Last Modified: Wed, 27 Mar 2019 15:24:24 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07de251417530d354db9c5a45a5d4ec41926fd5c9c4eca42bcf0b4aec0493cf3`  
		Last Modified: Wed, 27 Mar 2019 15:24:24 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-stretch` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:3eac20b9b226f06478b8a650dd5633bf1c55377f15c39bc0e5d5f3aa13f27f22
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.7 MB (29748823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a702f300b3df49d861d4be07d9d4805e4d2d4bc18ce3d0dce0cd816172963a1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:46 GMT
ADD file:9db7760cb1c28ef0cd3fa9ee9d0f528d2bcfe80b1c3973daa9f87e30b2047102 in / 
# Wed, 27 Mar 2019 08:47:47 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:09:11 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 12:09:12 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 12:11:14 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 12:14:19 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 27 Mar 2019 12:14:20 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 27 Mar 2019 12:14:20 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 27 Mar 2019 12:17:24 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 12:17:26 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 12:17:27 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 12:17:27 GMT
WORKDIR /data
# Wed, 27 Mar 2019 12:17:28 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 12:17:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 12:17:30 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 12:17:30 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:007027d142c80b166a004bc7265c04036b80df438ac408f1a947e05c581b418e`  
		Last Modified: Wed, 27 Mar 2019 08:52:56 GMT  
		Size: 20.3 MB (20340179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf60f2128f3195c471ec3689b8be025149dcff169970e8d8968c4864c282c8cd`  
		Last Modified: Wed, 27 Mar 2019 12:18:10 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcf7593f1ca581039b8fd820fbd9a7b8dabbf87cb88ae708b921ab5d18bee68c`  
		Last Modified: Wed, 27 Mar 2019 12:18:10 GMT  
		Size: 908.1 KB (908060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5597d685f1041f784c1600ed455161a8dae073fd5b1b00190bac2fa4155d32e`  
		Last Modified: Wed, 27 Mar 2019 12:18:40 GMT  
		Size: 8.5 MB (8498329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4388924faeaff651b6398d721f550ddba938511b550a42babf2366dea8458e2`  
		Last Modified: Wed, 27 Mar 2019 12:18:36 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a330a6abb07de3e45384c34b541a6a3881d0f71890e59bd4ed6c9c6afa0c9759`  
		Last Modified: Wed, 27 Mar 2019 12:18:36 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-stretch` - linux; 386

```console
$ docker pull redis@sha256:42643c982b5ce8bccdd31e0bef870313d9ff0cb2aee50fb5ca7451f91da2245f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32306370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e21273c1123b3b32fbb0523226fb4bfb4c58e00ad5cee8e576b1bb9caad7311`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Mar 2019 10:43:41 GMT
ADD file:13e40d14dbdd0814b4fb7b2a378757164620517fec383739c87747c27e07d8e7 in / 
# Wed, 27 Mar 2019 10:43:41 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 16:13:05 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 16:13:06 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 16:13:20 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 16:14:35 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 27 Mar 2019 16:14:35 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 27 Mar 2019 16:14:36 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 27 Mar 2019 16:15:15 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 16:15:16 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 16:15:16 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 16:15:16 GMT
WORKDIR /data
# Wed, 27 Mar 2019 16:15:16 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 16:15:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 16:15:17 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 16:15:17 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:a5ba78e1989e52ae238c3f225934c1a2dee4dfaa4667abd6f2e0717b78159472`  
		Last Modified: Wed, 27 Mar 2019 10:49:24 GMT  
		Size: 23.1 MB (23125745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcc0e5b68b9dbbba70332f0cad07bf511d38a873ec0d6c82b4c06e897e924689`  
		Last Modified: Wed, 27 Mar 2019 16:15:34 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2a0f34b494237693bbdb853e52e9727e46f0f5a30d022759bcb9cc90710cb1e`  
		Last Modified: Wed, 27 Mar 2019 16:15:34 GMT  
		Size: 920.2 KB (920184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ade7b786a71575d0d0b9641d5ee086c370698b1dbd4ac1fbcf0c5402abd0429a`  
		Last Modified: Wed, 27 Mar 2019 16:15:46 GMT  
		Size: 8.3 MB (8258192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a68814567d45a0baf2a13183cf5ab57dd62879035674ef45702d38699a80306`  
		Last Modified: Wed, 27 Mar 2019 16:15:44 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:418f76c6bc7a112f5a64bf9f367edfe3cdb48e1bbe70688f4ff6186f105dfee0`  
		Last Modified: Wed, 27 Mar 2019 16:15:44 GMT  
		Size: 418.0 B  
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
$ docker pull redis@sha256:b3029915d55726bf33afe99f44a0e982be14a673e0a696f03769b4a8a249cf68
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
$ docker pull redis@sha256:09a573fa229a6208414163d419d4e116e34cc3851bc3e3d63c1e6a60825c09c3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.3 MB (31339669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c337d5ec7522ea787542c7c4cefe7d3ee5c3ba8d3ef01d733e8aaee0ff5f4ab`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Mar 2019 12:07:48 GMT
ADD file:6bf06125d936ccaf67981470df5ef6b9bd5dee3c0ef0e042a448fc60bb02f191 in / 
# Wed, 27 Mar 2019 12:07:49 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 15:20:43 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 15:20:44 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 15:21:25 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 15:21:25 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 27 Mar 2019 15:21:26 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 27 Mar 2019 15:21:26 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 27 Mar 2019 15:22:30 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 15:22:33 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 15:22:34 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 15:22:34 GMT
WORKDIR /data
# Wed, 27 Mar 2019 15:22:35 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 15:22:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 15:22:36 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 15:22:37 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:fac132c5d16f670820c8c4ae332bd663c2ff856e9af86b2b23a201db263d851e`  
		Last Modified: Wed, 27 Mar 2019 12:13:15 GMT  
		Size: 19.3 MB (19282442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e2fe4e656b4ef2c65b13804ba160b7e965946dfa62ac428ae2e06c6be52e805`  
		Last Modified: Wed, 27 Mar 2019 15:24:02 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9425121a58ef3107c6a89df6558f6a58f7894a6ad37ef27fb928e53cb4004556`  
		Last Modified: Wed, 27 Mar 2019 15:24:03 GMT  
		Size: 915.9 KB (915851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da14e123dcb0661155a81c70a90bee81219eff6a3938239f5cc017f94002ceaf`  
		Last Modified: Wed, 27 Mar 2019 15:24:07 GMT  
		Size: 11.1 MB (11139093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7badf93016bec7cff427666144e15d4acb03120561649afaba03f3e0c82e13fd`  
		Last Modified: Wed, 27 Mar 2019 15:24:02 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d4f4e75a3dd622cfc1d829060709821ae6e597df6bee22e4ab7a7d3f1466ee`  
		Last Modified: Wed, 27 Mar 2019 15:24:03 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:1fd6b4b4a89e65e4a5d8b53dbd5863c81bec1256b2b2d4de8542851903aa6a26
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32834543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3982a09544e6d4c493b07353597a8c53ea7d5568da29f05d0c9ce03c6b2d0bf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:46 GMT
ADD file:9db7760cb1c28ef0cd3fa9ee9d0f528d2bcfe80b1c3973daa9f87e30b2047102 in / 
# Wed, 27 Mar 2019 08:47:47 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:09:11 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 12:09:12 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 12:11:14 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 12:11:15 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 27 Mar 2019 12:11:16 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 27 Mar 2019 12:11:17 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 27 Mar 2019 12:13:50 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 12:13:52 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 12:13:53 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 12:13:54 GMT
WORKDIR /data
# Wed, 27 Mar 2019 12:13:55 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 12:13:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 12:13:59 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 12:14:02 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:007027d142c80b166a004bc7265c04036b80df438ac408f1a947e05c581b418e`  
		Last Modified: Wed, 27 Mar 2019 08:52:56 GMT  
		Size: 20.3 MB (20340179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf60f2128f3195c471ec3689b8be025149dcff169970e8d8968c4864c282c8cd`  
		Last Modified: Wed, 27 Mar 2019 12:18:10 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcf7593f1ca581039b8fd820fbd9a7b8dabbf87cb88ae708b921ab5d18bee68c`  
		Last Modified: Wed, 27 Mar 2019 12:18:10 GMT  
		Size: 908.1 KB (908060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3cbddd935987c1549bc21b22bd4cccea4ccbc979b82ca563ecc7eb57b89d00f`  
		Last Modified: Wed, 27 Mar 2019 12:18:15 GMT  
		Size: 11.6 MB (11584046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2da2a323648ee0bbdd0b8beb16ce04363a5d790d90858bba40fe2a5a7cb4fd3`  
		Last Modified: Wed, 27 Mar 2019 12:18:09 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86bf7471abe33a96059db397ae2346398af968e52349393336745d3c179e594d`  
		Last Modified: Wed, 27 Mar 2019 12:18:09 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5` - linux; 386

```console
$ docker pull redis@sha256:f0584aac9b21b9ed160f44d54d78d9445244f638a84e5695af7372c399cd8f00
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35237407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fea2c87a1b74a70ff96f8624ed14e97c95e551f287d399b2ce406cbb8899a869`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Mar 2019 10:43:41 GMT
ADD file:13e40d14dbdd0814b4fb7b2a378757164620517fec383739c87747c27e07d8e7 in / 
# Wed, 27 Mar 2019 10:43:41 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 16:13:05 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 16:13:06 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 16:13:20 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 16:13:21 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 27 Mar 2019 16:13:21 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 27 Mar 2019 16:13:21 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 27 Mar 2019 16:14:25 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 16:14:26 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 16:14:26 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 16:14:26 GMT
WORKDIR /data
# Wed, 27 Mar 2019 16:14:26 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 16:14:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 16:14:27 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 16:14:27 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:a5ba78e1989e52ae238c3f225934c1a2dee4dfaa4667abd6f2e0717b78159472`  
		Last Modified: Wed, 27 Mar 2019 10:49:24 GMT  
		Size: 23.1 MB (23125745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcc0e5b68b9dbbba70332f0cad07bf511d38a873ec0d6c82b4c06e897e924689`  
		Last Modified: Wed, 27 Mar 2019 16:15:34 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2a0f34b494237693bbdb853e52e9727e46f0f5a30d022759bcb9cc90710cb1e`  
		Last Modified: Wed, 27 Mar 2019 16:15:34 GMT  
		Size: 920.2 KB (920184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6987feeb4ac2efbd1dcbc2347dc8ac0fe3d2056dcb5e3ec70f8808c58b6d6d9f`  
		Last Modified: Wed, 27 Mar 2019 16:15:36 GMT  
		Size: 11.2 MB (11189231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:768442472b87e72bce877687c423de8d25aff318cf91e1866cc44e273b863942`  
		Last Modified: Wed, 27 Mar 2019 16:15:33 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d0f2fd77a4a7f48fcad100c95795f19dde4c993323e84bf1962240601f45755`  
		Last Modified: Wed, 27 Mar 2019 16:15:33 GMT  
		Size: 418.0 B  
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
$ docker pull redis@sha256:b3029915d55726bf33afe99f44a0e982be14a673e0a696f03769b4a8a249cf68
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
$ docker pull redis@sha256:09a573fa229a6208414163d419d4e116e34cc3851bc3e3d63c1e6a60825c09c3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.3 MB (31339669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c337d5ec7522ea787542c7c4cefe7d3ee5c3ba8d3ef01d733e8aaee0ff5f4ab`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Mar 2019 12:07:48 GMT
ADD file:6bf06125d936ccaf67981470df5ef6b9bd5dee3c0ef0e042a448fc60bb02f191 in / 
# Wed, 27 Mar 2019 12:07:49 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 15:20:43 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 15:20:44 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 15:21:25 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 15:21:25 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 27 Mar 2019 15:21:26 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 27 Mar 2019 15:21:26 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 27 Mar 2019 15:22:30 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 15:22:33 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 15:22:34 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 15:22:34 GMT
WORKDIR /data
# Wed, 27 Mar 2019 15:22:35 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 15:22:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 15:22:36 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 15:22:37 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:fac132c5d16f670820c8c4ae332bd663c2ff856e9af86b2b23a201db263d851e`  
		Last Modified: Wed, 27 Mar 2019 12:13:15 GMT  
		Size: 19.3 MB (19282442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e2fe4e656b4ef2c65b13804ba160b7e965946dfa62ac428ae2e06c6be52e805`  
		Last Modified: Wed, 27 Mar 2019 15:24:02 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9425121a58ef3107c6a89df6558f6a58f7894a6ad37ef27fb928e53cb4004556`  
		Last Modified: Wed, 27 Mar 2019 15:24:03 GMT  
		Size: 915.9 KB (915851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da14e123dcb0661155a81c70a90bee81219eff6a3938239f5cc017f94002ceaf`  
		Last Modified: Wed, 27 Mar 2019 15:24:07 GMT  
		Size: 11.1 MB (11139093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7badf93016bec7cff427666144e15d4acb03120561649afaba03f3e0c82e13fd`  
		Last Modified: Wed, 27 Mar 2019 15:24:02 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d4f4e75a3dd622cfc1d829060709821ae6e597df6bee22e4ab7a7d3f1466ee`  
		Last Modified: Wed, 27 Mar 2019 15:24:03 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:1fd6b4b4a89e65e4a5d8b53dbd5863c81bec1256b2b2d4de8542851903aa6a26
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32834543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3982a09544e6d4c493b07353597a8c53ea7d5568da29f05d0c9ce03c6b2d0bf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:46 GMT
ADD file:9db7760cb1c28ef0cd3fa9ee9d0f528d2bcfe80b1c3973daa9f87e30b2047102 in / 
# Wed, 27 Mar 2019 08:47:47 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:09:11 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 12:09:12 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 12:11:14 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 12:11:15 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 27 Mar 2019 12:11:16 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 27 Mar 2019 12:11:17 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 27 Mar 2019 12:13:50 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 12:13:52 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 12:13:53 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 12:13:54 GMT
WORKDIR /data
# Wed, 27 Mar 2019 12:13:55 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 12:13:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 12:13:59 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 12:14:02 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:007027d142c80b166a004bc7265c04036b80df438ac408f1a947e05c581b418e`  
		Last Modified: Wed, 27 Mar 2019 08:52:56 GMT  
		Size: 20.3 MB (20340179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf60f2128f3195c471ec3689b8be025149dcff169970e8d8968c4864c282c8cd`  
		Last Modified: Wed, 27 Mar 2019 12:18:10 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcf7593f1ca581039b8fd820fbd9a7b8dabbf87cb88ae708b921ab5d18bee68c`  
		Last Modified: Wed, 27 Mar 2019 12:18:10 GMT  
		Size: 908.1 KB (908060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3cbddd935987c1549bc21b22bd4cccea4ccbc979b82ca563ecc7eb57b89d00f`  
		Last Modified: Wed, 27 Mar 2019 12:18:15 GMT  
		Size: 11.6 MB (11584046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2da2a323648ee0bbdd0b8beb16ce04363a5d790d90858bba40fe2a5a7cb4fd3`  
		Last Modified: Wed, 27 Mar 2019 12:18:09 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86bf7471abe33a96059db397ae2346398af968e52349393336745d3c179e594d`  
		Last Modified: Wed, 27 Mar 2019 12:18:09 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0` - linux; 386

```console
$ docker pull redis@sha256:f0584aac9b21b9ed160f44d54d78d9445244f638a84e5695af7372c399cd8f00
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35237407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fea2c87a1b74a70ff96f8624ed14e97c95e551f287d399b2ce406cbb8899a869`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Mar 2019 10:43:41 GMT
ADD file:13e40d14dbdd0814b4fb7b2a378757164620517fec383739c87747c27e07d8e7 in / 
# Wed, 27 Mar 2019 10:43:41 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 16:13:05 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 16:13:06 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 16:13:20 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 16:13:21 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 27 Mar 2019 16:13:21 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 27 Mar 2019 16:13:21 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 27 Mar 2019 16:14:25 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 16:14:26 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 16:14:26 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 16:14:26 GMT
WORKDIR /data
# Wed, 27 Mar 2019 16:14:26 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 16:14:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 16:14:27 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 16:14:27 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:a5ba78e1989e52ae238c3f225934c1a2dee4dfaa4667abd6f2e0717b78159472`  
		Last Modified: Wed, 27 Mar 2019 10:49:24 GMT  
		Size: 23.1 MB (23125745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcc0e5b68b9dbbba70332f0cad07bf511d38a873ec0d6c82b4c06e897e924689`  
		Last Modified: Wed, 27 Mar 2019 16:15:34 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2a0f34b494237693bbdb853e52e9727e46f0f5a30d022759bcb9cc90710cb1e`  
		Last Modified: Wed, 27 Mar 2019 16:15:34 GMT  
		Size: 920.2 KB (920184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6987feeb4ac2efbd1dcbc2347dc8ac0fe3d2056dcb5e3ec70f8808c58b6d6d9f`  
		Last Modified: Wed, 27 Mar 2019 16:15:36 GMT  
		Size: 11.2 MB (11189231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:768442472b87e72bce877687c423de8d25aff318cf91e1866cc44e273b863942`  
		Last Modified: Wed, 27 Mar 2019 16:15:33 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d0f2fd77a4a7f48fcad100c95795f19dde4c993323e84bf1962240601f45755`  
		Last Modified: Wed, 27 Mar 2019 16:15:33 GMT  
		Size: 418.0 B  
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
$ docker pull redis@sha256:7fc9611f45fe48b6ee5b31775c697557c627df3c74045e9d8b2e1fbd6d3de77b
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
$ docker pull redis@sha256:7fc9611f45fe48b6ee5b31775c697557c627df3c74045e9d8b2e1fbd6d3de77b
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
$ docker pull redis@sha256:b3029915d55726bf33afe99f44a0e982be14a673e0a696f03769b4a8a249cf68
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
$ docker pull redis@sha256:09a573fa229a6208414163d419d4e116e34cc3851bc3e3d63c1e6a60825c09c3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.3 MB (31339669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c337d5ec7522ea787542c7c4cefe7d3ee5c3ba8d3ef01d733e8aaee0ff5f4ab`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Mar 2019 12:07:48 GMT
ADD file:6bf06125d936ccaf67981470df5ef6b9bd5dee3c0ef0e042a448fc60bb02f191 in / 
# Wed, 27 Mar 2019 12:07:49 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 15:20:43 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 15:20:44 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 15:21:25 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 15:21:25 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 27 Mar 2019 15:21:26 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 27 Mar 2019 15:21:26 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 27 Mar 2019 15:22:30 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 15:22:33 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 15:22:34 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 15:22:34 GMT
WORKDIR /data
# Wed, 27 Mar 2019 15:22:35 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 15:22:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 15:22:36 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 15:22:37 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:fac132c5d16f670820c8c4ae332bd663c2ff856e9af86b2b23a201db263d851e`  
		Last Modified: Wed, 27 Mar 2019 12:13:15 GMT  
		Size: 19.3 MB (19282442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e2fe4e656b4ef2c65b13804ba160b7e965946dfa62ac428ae2e06c6be52e805`  
		Last Modified: Wed, 27 Mar 2019 15:24:02 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9425121a58ef3107c6a89df6558f6a58f7894a6ad37ef27fb928e53cb4004556`  
		Last Modified: Wed, 27 Mar 2019 15:24:03 GMT  
		Size: 915.9 KB (915851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da14e123dcb0661155a81c70a90bee81219eff6a3938239f5cc017f94002ceaf`  
		Last Modified: Wed, 27 Mar 2019 15:24:07 GMT  
		Size: 11.1 MB (11139093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7badf93016bec7cff427666144e15d4acb03120561649afaba03f3e0c82e13fd`  
		Last Modified: Wed, 27 Mar 2019 15:24:02 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d4f4e75a3dd622cfc1d829060709821ae6e597df6bee22e4ab7a7d3f1466ee`  
		Last Modified: Wed, 27 Mar 2019 15:24:03 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.4` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:1fd6b4b4a89e65e4a5d8b53dbd5863c81bec1256b2b2d4de8542851903aa6a26
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32834543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3982a09544e6d4c493b07353597a8c53ea7d5568da29f05d0c9ce03c6b2d0bf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:46 GMT
ADD file:9db7760cb1c28ef0cd3fa9ee9d0f528d2bcfe80b1c3973daa9f87e30b2047102 in / 
# Wed, 27 Mar 2019 08:47:47 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:09:11 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 12:09:12 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 12:11:14 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 12:11:15 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 27 Mar 2019 12:11:16 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 27 Mar 2019 12:11:17 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 27 Mar 2019 12:13:50 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 12:13:52 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 12:13:53 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 12:13:54 GMT
WORKDIR /data
# Wed, 27 Mar 2019 12:13:55 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 12:13:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 12:13:59 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 12:14:02 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:007027d142c80b166a004bc7265c04036b80df438ac408f1a947e05c581b418e`  
		Last Modified: Wed, 27 Mar 2019 08:52:56 GMT  
		Size: 20.3 MB (20340179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf60f2128f3195c471ec3689b8be025149dcff169970e8d8968c4864c282c8cd`  
		Last Modified: Wed, 27 Mar 2019 12:18:10 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcf7593f1ca581039b8fd820fbd9a7b8dabbf87cb88ae708b921ab5d18bee68c`  
		Last Modified: Wed, 27 Mar 2019 12:18:10 GMT  
		Size: 908.1 KB (908060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3cbddd935987c1549bc21b22bd4cccea4ccbc979b82ca563ecc7eb57b89d00f`  
		Last Modified: Wed, 27 Mar 2019 12:18:15 GMT  
		Size: 11.6 MB (11584046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2da2a323648ee0bbdd0b8beb16ce04363a5d790d90858bba40fe2a5a7cb4fd3`  
		Last Modified: Wed, 27 Mar 2019 12:18:09 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86bf7471abe33a96059db397ae2346398af968e52349393336745d3c179e594d`  
		Last Modified: Wed, 27 Mar 2019 12:18:09 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.4` - linux; 386

```console
$ docker pull redis@sha256:f0584aac9b21b9ed160f44d54d78d9445244f638a84e5695af7372c399cd8f00
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35237407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fea2c87a1b74a70ff96f8624ed14e97c95e551f287d399b2ce406cbb8899a869`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Mar 2019 10:43:41 GMT
ADD file:13e40d14dbdd0814b4fb7b2a378757164620517fec383739c87747c27e07d8e7 in / 
# Wed, 27 Mar 2019 10:43:41 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 16:13:05 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 16:13:06 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 16:13:20 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 16:13:21 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 27 Mar 2019 16:13:21 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 27 Mar 2019 16:13:21 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 27 Mar 2019 16:14:25 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 16:14:26 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 16:14:26 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 16:14:26 GMT
WORKDIR /data
# Wed, 27 Mar 2019 16:14:26 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 16:14:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 16:14:27 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 16:14:27 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:a5ba78e1989e52ae238c3f225934c1a2dee4dfaa4667abd6f2e0717b78159472`  
		Last Modified: Wed, 27 Mar 2019 10:49:24 GMT  
		Size: 23.1 MB (23125745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcc0e5b68b9dbbba70332f0cad07bf511d38a873ec0d6c82b4c06e897e924689`  
		Last Modified: Wed, 27 Mar 2019 16:15:34 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2a0f34b494237693bbdb853e52e9727e46f0f5a30d022759bcb9cc90710cb1e`  
		Last Modified: Wed, 27 Mar 2019 16:15:34 GMT  
		Size: 920.2 KB (920184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6987feeb4ac2efbd1dcbc2347dc8ac0fe3d2056dcb5e3ec70f8808c58b6d6d9f`  
		Last Modified: Wed, 27 Mar 2019 16:15:36 GMT  
		Size: 11.2 MB (11189231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:768442472b87e72bce877687c423de8d25aff318cf91e1866cc44e273b863942`  
		Last Modified: Wed, 27 Mar 2019 16:15:33 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d0f2fd77a4a7f48fcad100c95795f19dde4c993323e84bf1962240601f45755`  
		Last Modified: Wed, 27 Mar 2019 16:15:33 GMT  
		Size: 418.0 B  
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
$ docker pull redis@sha256:7fc9611f45fe48b6ee5b31775c697557c627df3c74045e9d8b2e1fbd6d3de77b
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
$ docker pull redis@sha256:7fc9611f45fe48b6ee5b31775c697557c627df3c74045e9d8b2e1fbd6d3de77b
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
$ docker pull redis@sha256:ef67270b8bcb6b801a67d186ed16051520867b985e4f2f1233b510938dc55b22
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
$ docker pull redis@sha256:72c09617b38189123a9b360c8a1998a59be3af52759269d4c740397bd54a31f2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17764271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8eda26fcdab8d161a96a3ac0eaca47dcb4bb8995555e11bec43968738a17009`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Tue, 09 Apr 2019 23:56:52 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Tue, 09 Apr 2019 23:56:54 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Tue, 09 Apr 2019 23:56:54 GMT
ENV REDIS_VERSION=5.0.4
# Tue, 09 Apr 2019 23:56:54 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Tue, 09 Apr 2019 23:56:54 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Tue, 09 Apr 2019 23:58:23 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Tue, 09 Apr 2019 23:58:24 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 09 Apr 2019 23:58:25 GMT
VOLUME [/data]
# Tue, 09 Apr 2019 23:58:25 GMT
WORKDIR /data
# Tue, 09 Apr 2019 23:58:25 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Tue, 09 Apr 2019 23:58:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 Apr 2019 23:58:25 GMT
EXPOSE 6379
# Tue, 09 Apr 2019 23:58:25 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:542e0c4f2f182e0f9c8c3e8a9a4303f5478207940914c9a88232c829c4e74fcf`  
		Last Modified: Tue, 09 Apr 2019 23:59:41 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbf113c39f6550bbc31b5b985e138e40938b5902f154527a952cdd45b0868b11`  
		Last Modified: Tue, 09 Apr 2019 23:59:41 GMT  
		Size: 403.0 KB (403004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09158274ea6c254b2b668d48a19b58c2970251fb8fb4d5addacedf0897983b51`  
		Last Modified: Tue, 09 Apr 2019 23:59:44 GMT  
		Size: 14.6 MB (14602489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffc2a2e9a3a6c4d67ad5d2ab35ea7e1adeeaded5898320036a7a7f04156a2de2`  
		Last Modified: Tue, 09 Apr 2019 23:59:41 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcdc222d2d8e0820fce72abeb2283d14ead8c6b41112fd6a18379774a48782cd`  
		Last Modified: Tue, 09 Apr 2019 23:59:41 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.4-alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:668bc841494da7d97a0951f7ed528d10075c04daeb39b038a02d172f7856b60e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17140707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69a810a8a06e9be50883a6eec89ec93dc992bccb888653d0f6f5ecdf2c1a65f9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 08:26:14 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 Apr 2019 08:26:16 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 10 Apr 2019 08:26:17 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 10 Apr 2019 08:26:17 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 10 Apr 2019 08:26:17 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 10 Apr 2019 08:26:58 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 10 Apr 2019 08:27:00 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 Apr 2019 08:27:00 GMT
VOLUME [/data]
# Wed, 10 Apr 2019 08:27:00 GMT
WORKDIR /data
# Wed, 10 Apr 2019 08:27:01 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 10 Apr 2019 08:27:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 08:27:02 GMT
EXPOSE 6379
# Wed, 10 Apr 2019 08:27:02 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cac72c52417597f37150f22f15904bd5df64bf389a18ebb8145b857f4da966a5`  
		Last Modified: Wed, 10 Apr 2019 08:27:48 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6db8b29787ef73ca4d0464c2c22edee9ca3e063a81cf9a8830b1ec5c8befc20`  
		Last Modified: Wed, 10 Apr 2019 08:27:48 GMT  
		Size: 405.3 KB (405287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d1b8efcf6bb926cffa540cbaf391a2b5a4cb2c2909ef482699ca42c5ca13ee1`  
		Last Modified: Wed, 10 Apr 2019 08:27:52 GMT  
		Size: 14.2 MB (14190151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f27870568a67c98d7f2fd1b39999b4b1b283d67c110fbc00393495ae02a8943`  
		Last Modified: Wed, 10 Apr 2019 08:27:48 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c715f8c9e15317612d670e62d5a34ced8850627792295c42b061aeb5751a23bf`  
		Last Modified: Wed, 10 Apr 2019 08:27:48 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.4-alpine` - linux; arm variant v7

```console
$ docker pull redis@sha256:bd9758298229750ec0613563b8ad0a7e990505bf9b7f74289024777a1eeb80ec
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16691575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f12a0c672a7ad12eebfd450fadb7f9801b245183b802cc18bd6dddbc5632ad7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 Apr 2019 11:57:47 GMT
ADD file:1a27b74f23795a1f205247dcd6eff48ac56f0b8f2afe0c358199a0b60f694861 in / 
# Wed, 10 Apr 2019 11:57:48 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 12:31:32 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 Apr 2019 12:31:35 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 10 Apr 2019 12:31:36 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 10 Apr 2019 12:31:37 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 10 Apr 2019 12:31:38 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 10 Apr 2019 12:32:24 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 10 Apr 2019 12:32:27 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 Apr 2019 12:32:27 GMT
VOLUME [/data]
# Wed, 10 Apr 2019 12:32:28 GMT
WORKDIR /data
# Wed, 10 Apr 2019 12:32:28 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 10 Apr 2019 12:32:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 12:32:30 GMT
EXPOSE 6379
# Wed, 10 Apr 2019 12:32:30 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:c2a5cdd4aa08146b4516cc95f6b461f2994250a819b3e6f75f23fa2a8c1b1744`  
		Last Modified: Wed, 10 Apr 2019 11:58:04 GMT  
		Size: 2.4 MB (2350757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f02904c22d1f59beea301a4e2c19f4b14edae521f98cd0cae4edec6c880c34bb`  
		Last Modified: Wed, 10 Apr 2019 12:33:35 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0132ad3f4069c0da06d221747600eb8c244a3bfcf23a05b129ab41c109b76640`  
		Last Modified: Wed, 10 Apr 2019 12:33:35 GMT  
		Size: 398.6 KB (398582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccd1fa1a3ff503e3849ba7b85a1268731b8a37909e632c077910b89d5f14f1c4`  
		Last Modified: Wed, 10 Apr 2019 12:33:39 GMT  
		Size: 13.9 MB (13940403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aed146897e3069648170d9f3d83c58d37b1c525e949cf1d4424957bd616c94b`  
		Last Modified: Wed, 10 Apr 2019 12:33:35 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6134f104361e7f2439ced2e4f476e4ff4b7031cabe2e3fdfa625f20d9562ba7`  
		Last Modified: Wed, 10 Apr 2019 12:33:35 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.4-alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:6f9aab70b6a807954b377a0a4596ee2c024f57c1a63cce869a9146abbb74b87c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.6 MB (17604095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:107a7a2f46542d15554b68f73ad23cc0b5abbfca6cc879e26c24dd52627525ac`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 Apr 2019 08:49:11 GMT
ADD file:30e0a8ccdca70b20b8ce637f0ba5108157f4ba491447d20aafbe45d82392bd81 in / 
# Wed, 10 Apr 2019 08:49:12 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 09:30:47 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 Apr 2019 09:30:51 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 10 Apr 2019 09:30:51 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 10 Apr 2019 09:30:52 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 10 Apr 2019 09:30:53 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 10 Apr 2019 09:32:32 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 10 Apr 2019 09:32:34 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 Apr 2019 09:32:35 GMT
VOLUME [/data]
# Wed, 10 Apr 2019 09:32:36 GMT
WORKDIR /data
# Wed, 10 Apr 2019 09:32:37 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 10 Apr 2019 09:32:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 09:32:38 GMT
EXPOSE 6379
# Wed, 10 Apr 2019 09:32:39 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6f37394be673296a0fdc21b819c5df40431baf7d3af121bee451726dd1457493`  
		Last Modified: Wed, 10 Apr 2019 08:50:38 GMT  
		Size: 2.7 MB (2688778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd87357e3604d3d4278cd171c27e1f6eab0970cb1af16c2fd37a4df05d7fa114`  
		Last Modified: Wed, 10 Apr 2019 09:34:18 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3ed8d359e92c573c3aa65aa6bf63c31debc70eed441317642f91d442905b980`  
		Last Modified: Wed, 10 Apr 2019 09:34:19 GMT  
		Size: 405.2 KB (405228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d737f88f38956dce2665b67e52ea0e56b55e490b1a27454342dd86289aefec`  
		Last Modified: Wed, 10 Apr 2019 09:34:25 GMT  
		Size: 14.5 MB (14508323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9a62c4508f4096bc9c594bc955df3654878f2af55301b2e106848012f6f0087`  
		Last Modified: Wed, 10 Apr 2019 09:34:19 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4955611fe1ed5ecaef528e1260b632eb460b9664cb1ea80809e5694e2e90b61a`  
		Last Modified: Wed, 10 Apr 2019 09:34:19 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.4-alpine` - linux; 386

```console
$ docker pull redis@sha256:a80850d63514e18b9da7e3e31e0dd218d1b271292c2b8b876957b42854d9bf92
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17127766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a936b9cc965a5dbfbf988b02bee815e4b091ce96e8e098e710d62bddc09aa219`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 Apr 2019 10:38:55 GMT
ADD file:51f7bb95ef6cc3519317dcb7abbf6155e6bb7b73a17ad7d90cad7911e8a8933c in / 
# Wed, 10 Apr 2019 10:38:55 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 13:10:48 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 Apr 2019 13:10:49 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 10 Apr 2019 13:10:49 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 10 Apr 2019 13:10:49 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 10 Apr 2019 13:10:49 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 10 Apr 2019 13:11:52 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 10 Apr 2019 13:11:53 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 Apr 2019 13:11:53 GMT
VOLUME [/data]
# Wed, 10 Apr 2019 13:11:53 GMT
WORKDIR /data
# Wed, 10 Apr 2019 13:11:53 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 10 Apr 2019 13:11:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 13:11:54 GMT
EXPOSE 6379
# Wed, 10 Apr 2019 13:11:54 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:9a81e6a1a3b4f174d22173a96692c9aeffaefcd00f40607d508951a2b14d6f1f`  
		Last Modified: Wed, 10 Apr 2019 10:39:15 GMT  
		Size: 2.8 MB (2752162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b30efed26125f06596e1a58493943baf64ba49f78b66a0f10ea815430c3057`  
		Last Modified: Wed, 10 Apr 2019 13:13:00 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2e8a8f5562f29213b62563c0cb0612f50141b1e8f26c831a71a2be46703a387`  
		Last Modified: Wed, 10 Apr 2019 13:13:00 GMT  
		Size: 408.0 KB (408011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7fb5953abb7fffb527b97c1115b1b3abeb9347830903462fb2b3797e2e5a43b`  
		Last Modified: Wed, 10 Apr 2019 13:13:03 GMT  
		Size: 14.0 MB (13965829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bab5fa3f4af93735539dfefe3c87765cde5923466da353ce7e83ebe8805a662e`  
		Last Modified: Wed, 10 Apr 2019 13:13:00 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0f194f7b5c4038bff9343db96166ab70299afd5bd8f99567cec67932f5f56e9`  
		Last Modified: Wed, 10 Apr 2019 13:13:00 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.4-alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:3fae93862754c27baa36e63c9d0e34b7f13466db1557d78dfc828ecde148ad71
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18615961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdedaf41839a738ad000d87d1e59d076ea332a695698f87a414c4cf8562abc89`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 Apr 2019 08:27:30 GMT
ADD file:c13c1c2b4e6d71924f570a910caf6a1756ea5a28a4017c7b11305e021eacd0ee in / 
# Wed, 10 Apr 2019 08:27:33 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 10:26:02 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 Apr 2019 10:26:09 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 10 Apr 2019 10:26:13 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 10 Apr 2019 10:26:16 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 10 Apr 2019 10:26:22 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 10 Apr 2019 10:27:22 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 10 Apr 2019 10:27:30 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 Apr 2019 10:27:34 GMT
VOLUME [/data]
# Wed, 10 Apr 2019 10:27:41 GMT
WORKDIR /data
# Wed, 10 Apr 2019 10:27:43 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 10 Apr 2019 10:27:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 10:27:55 GMT
EXPOSE 6379
# Wed, 10 Apr 2019 10:28:03 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:fe0f92a92ee06f38abf50fefd22331ac42262e3872ecd2d7ddfa7c24ab71a53a`  
		Last Modified: Wed, 10 Apr 2019 08:28:34 GMT  
		Size: 2.8 MB (2781020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81a3976b0f5f6d320d4e2c4b563bf1d516e9b3dbff3642de3ba2dfdc8aba06df`  
		Last Modified: Wed, 10 Apr 2019 10:30:51 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f552250dac1f95ee5efd4654d27d1b92081cd004b8c8357efb1d5a60bf6b1aa`  
		Last Modified: Wed, 10 Apr 2019 10:30:51 GMT  
		Size: 410.4 KB (410350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0896b2ad48e0d7fc0e9898981dbf4c11e860d203407bde6d575aa231671a85a2`  
		Last Modified: Wed, 10 Apr 2019 10:30:56 GMT  
		Size: 15.4 MB (15422757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49583b5366e690de3a5b14276f913af572cfc6bee7de3fa6cf5b048a5031538c`  
		Last Modified: Wed, 10 Apr 2019 10:30:51 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8c5f265664fe94e4b324c6ef63383c97dc8f6af89e1ae512938abae73191951`  
		Last Modified: Wed, 10 Apr 2019 10:30:51 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.4-alpine` - linux; s390x

```console
$ docker pull redis@sha256:1eb67ffe3d0167eb53d8a33e8a2eaa385c7ac8337f96e1e6397d110e0da8303d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17821115 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecc683be58697fd97857072de161c829167bdea75379ac52c61c773af81bf1ee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 Apr 2019 11:42:23 GMT
ADD file:ab106eb2cf4bf0e1ca7861a56dc24e44dd206fd3ae8d3587684324e5c11136f4 in / 
# Wed, 10 Apr 2019 11:42:23 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 14:22:12 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 Apr 2019 14:22:15 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 10 Apr 2019 14:22:16 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 10 Apr 2019 14:22:16 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 10 Apr 2019 14:22:17 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 10 Apr 2019 14:23:46 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 10 Apr 2019 14:23:50 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 Apr 2019 14:23:51 GMT
VOLUME [/data]
# Wed, 10 Apr 2019 14:23:52 GMT
WORKDIR /data
# Wed, 10 Apr 2019 14:23:53 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 10 Apr 2019 14:23:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 14:23:55 GMT
EXPOSE 6379
# Wed, 10 Apr 2019 14:23:56 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5b51e37a522c2e7cd3c67e8a3e5500b45189ea6698e9fdaed7f5d48282326633`  
		Last Modified: Wed, 10 Apr 2019 11:43:06 GMT  
		Size: 2.5 MB (2543326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e72810cb2904dec74b6a6ec5f4a983c700825faf21979eb2e7a360b42515f26`  
		Last Modified: Wed, 10 Apr 2019 14:26:58 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4816af0620533e2d07b1778a9f075eb91da554fb6e81c803e8fe455a6d9cadb`  
		Last Modified: Wed, 10 Apr 2019 14:26:59 GMT  
		Size: 407.9 KB (407873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daf166aeb7e683d13516e79a7a02f63c3f6a237e0f821b521394f21fffdca6c6`  
		Last Modified: Wed, 10 Apr 2019 14:27:06 GMT  
		Size: 14.9 MB (14868151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddca5358a6a73aaad90211e7f78d95b62fca2a0095375893ed5d11cd111a4d25`  
		Last Modified: Wed, 10 Apr 2019 14:26:58 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d16179b45b9f6d2b424b0ad5f77b5adbda66f123a9f37d5d38d128c6f243705d`  
		Last Modified: Wed, 10 Apr 2019 14:26:59 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0.4-alpine3.9`

```console
$ docker pull redis@sha256:ef67270b8bcb6b801a67d186ed16051520867b985e4f2f1233b510938dc55b22
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
$ docker pull redis@sha256:72c09617b38189123a9b360c8a1998a59be3af52759269d4c740397bd54a31f2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17764271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8eda26fcdab8d161a96a3ac0eaca47dcb4bb8995555e11bec43968738a17009`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Tue, 09 Apr 2019 23:56:52 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Tue, 09 Apr 2019 23:56:54 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Tue, 09 Apr 2019 23:56:54 GMT
ENV REDIS_VERSION=5.0.4
# Tue, 09 Apr 2019 23:56:54 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Tue, 09 Apr 2019 23:56:54 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Tue, 09 Apr 2019 23:58:23 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Tue, 09 Apr 2019 23:58:24 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 09 Apr 2019 23:58:25 GMT
VOLUME [/data]
# Tue, 09 Apr 2019 23:58:25 GMT
WORKDIR /data
# Tue, 09 Apr 2019 23:58:25 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Tue, 09 Apr 2019 23:58:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 Apr 2019 23:58:25 GMT
EXPOSE 6379
# Tue, 09 Apr 2019 23:58:25 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:542e0c4f2f182e0f9c8c3e8a9a4303f5478207940914c9a88232c829c4e74fcf`  
		Last Modified: Tue, 09 Apr 2019 23:59:41 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbf113c39f6550bbc31b5b985e138e40938b5902f154527a952cdd45b0868b11`  
		Last Modified: Tue, 09 Apr 2019 23:59:41 GMT  
		Size: 403.0 KB (403004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09158274ea6c254b2b668d48a19b58c2970251fb8fb4d5addacedf0897983b51`  
		Last Modified: Tue, 09 Apr 2019 23:59:44 GMT  
		Size: 14.6 MB (14602489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffc2a2e9a3a6c4d67ad5d2ab35ea7e1adeeaded5898320036a7a7f04156a2de2`  
		Last Modified: Tue, 09 Apr 2019 23:59:41 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcdc222d2d8e0820fce72abeb2283d14ead8c6b41112fd6a18379774a48782cd`  
		Last Modified: Tue, 09 Apr 2019 23:59:41 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.4-alpine3.9` - linux; arm variant v6

```console
$ docker pull redis@sha256:668bc841494da7d97a0951f7ed528d10075c04daeb39b038a02d172f7856b60e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17140707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69a810a8a06e9be50883a6eec89ec93dc992bccb888653d0f6f5ecdf2c1a65f9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 08:26:14 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 Apr 2019 08:26:16 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 10 Apr 2019 08:26:17 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 10 Apr 2019 08:26:17 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 10 Apr 2019 08:26:17 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 10 Apr 2019 08:26:58 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 10 Apr 2019 08:27:00 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 Apr 2019 08:27:00 GMT
VOLUME [/data]
# Wed, 10 Apr 2019 08:27:00 GMT
WORKDIR /data
# Wed, 10 Apr 2019 08:27:01 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 10 Apr 2019 08:27:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 08:27:02 GMT
EXPOSE 6379
# Wed, 10 Apr 2019 08:27:02 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cac72c52417597f37150f22f15904bd5df64bf389a18ebb8145b857f4da966a5`  
		Last Modified: Wed, 10 Apr 2019 08:27:48 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6db8b29787ef73ca4d0464c2c22edee9ca3e063a81cf9a8830b1ec5c8befc20`  
		Last Modified: Wed, 10 Apr 2019 08:27:48 GMT  
		Size: 405.3 KB (405287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d1b8efcf6bb926cffa540cbaf391a2b5a4cb2c2909ef482699ca42c5ca13ee1`  
		Last Modified: Wed, 10 Apr 2019 08:27:52 GMT  
		Size: 14.2 MB (14190151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f27870568a67c98d7f2fd1b39999b4b1b283d67c110fbc00393495ae02a8943`  
		Last Modified: Wed, 10 Apr 2019 08:27:48 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c715f8c9e15317612d670e62d5a34ced8850627792295c42b061aeb5751a23bf`  
		Last Modified: Wed, 10 Apr 2019 08:27:48 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.4-alpine3.9` - linux; arm variant v7

```console
$ docker pull redis@sha256:bd9758298229750ec0613563b8ad0a7e990505bf9b7f74289024777a1eeb80ec
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16691575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f12a0c672a7ad12eebfd450fadb7f9801b245183b802cc18bd6dddbc5632ad7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 Apr 2019 11:57:47 GMT
ADD file:1a27b74f23795a1f205247dcd6eff48ac56f0b8f2afe0c358199a0b60f694861 in / 
# Wed, 10 Apr 2019 11:57:48 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 12:31:32 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 Apr 2019 12:31:35 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 10 Apr 2019 12:31:36 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 10 Apr 2019 12:31:37 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 10 Apr 2019 12:31:38 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 10 Apr 2019 12:32:24 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 10 Apr 2019 12:32:27 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 Apr 2019 12:32:27 GMT
VOLUME [/data]
# Wed, 10 Apr 2019 12:32:28 GMT
WORKDIR /data
# Wed, 10 Apr 2019 12:32:28 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 10 Apr 2019 12:32:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 12:32:30 GMT
EXPOSE 6379
# Wed, 10 Apr 2019 12:32:30 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:c2a5cdd4aa08146b4516cc95f6b461f2994250a819b3e6f75f23fa2a8c1b1744`  
		Last Modified: Wed, 10 Apr 2019 11:58:04 GMT  
		Size: 2.4 MB (2350757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f02904c22d1f59beea301a4e2c19f4b14edae521f98cd0cae4edec6c880c34bb`  
		Last Modified: Wed, 10 Apr 2019 12:33:35 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0132ad3f4069c0da06d221747600eb8c244a3bfcf23a05b129ab41c109b76640`  
		Last Modified: Wed, 10 Apr 2019 12:33:35 GMT  
		Size: 398.6 KB (398582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccd1fa1a3ff503e3849ba7b85a1268731b8a37909e632c077910b89d5f14f1c4`  
		Last Modified: Wed, 10 Apr 2019 12:33:39 GMT  
		Size: 13.9 MB (13940403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aed146897e3069648170d9f3d83c58d37b1c525e949cf1d4424957bd616c94b`  
		Last Modified: Wed, 10 Apr 2019 12:33:35 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6134f104361e7f2439ced2e4f476e4ff4b7031cabe2e3fdfa625f20d9562ba7`  
		Last Modified: Wed, 10 Apr 2019 12:33:35 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.4-alpine3.9` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:6f9aab70b6a807954b377a0a4596ee2c024f57c1a63cce869a9146abbb74b87c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.6 MB (17604095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:107a7a2f46542d15554b68f73ad23cc0b5abbfca6cc879e26c24dd52627525ac`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 Apr 2019 08:49:11 GMT
ADD file:30e0a8ccdca70b20b8ce637f0ba5108157f4ba491447d20aafbe45d82392bd81 in / 
# Wed, 10 Apr 2019 08:49:12 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 09:30:47 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 Apr 2019 09:30:51 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 10 Apr 2019 09:30:51 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 10 Apr 2019 09:30:52 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 10 Apr 2019 09:30:53 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 10 Apr 2019 09:32:32 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 10 Apr 2019 09:32:34 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 Apr 2019 09:32:35 GMT
VOLUME [/data]
# Wed, 10 Apr 2019 09:32:36 GMT
WORKDIR /data
# Wed, 10 Apr 2019 09:32:37 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 10 Apr 2019 09:32:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 09:32:38 GMT
EXPOSE 6379
# Wed, 10 Apr 2019 09:32:39 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6f37394be673296a0fdc21b819c5df40431baf7d3af121bee451726dd1457493`  
		Last Modified: Wed, 10 Apr 2019 08:50:38 GMT  
		Size: 2.7 MB (2688778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd87357e3604d3d4278cd171c27e1f6eab0970cb1af16c2fd37a4df05d7fa114`  
		Last Modified: Wed, 10 Apr 2019 09:34:18 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3ed8d359e92c573c3aa65aa6bf63c31debc70eed441317642f91d442905b980`  
		Last Modified: Wed, 10 Apr 2019 09:34:19 GMT  
		Size: 405.2 KB (405228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d737f88f38956dce2665b67e52ea0e56b55e490b1a27454342dd86289aefec`  
		Last Modified: Wed, 10 Apr 2019 09:34:25 GMT  
		Size: 14.5 MB (14508323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9a62c4508f4096bc9c594bc955df3654878f2af55301b2e106848012f6f0087`  
		Last Modified: Wed, 10 Apr 2019 09:34:19 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4955611fe1ed5ecaef528e1260b632eb460b9664cb1ea80809e5694e2e90b61a`  
		Last Modified: Wed, 10 Apr 2019 09:34:19 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.4-alpine3.9` - linux; 386

```console
$ docker pull redis@sha256:a80850d63514e18b9da7e3e31e0dd218d1b271292c2b8b876957b42854d9bf92
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17127766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a936b9cc965a5dbfbf988b02bee815e4b091ce96e8e098e710d62bddc09aa219`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 Apr 2019 10:38:55 GMT
ADD file:51f7bb95ef6cc3519317dcb7abbf6155e6bb7b73a17ad7d90cad7911e8a8933c in / 
# Wed, 10 Apr 2019 10:38:55 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 13:10:48 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 Apr 2019 13:10:49 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 10 Apr 2019 13:10:49 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 10 Apr 2019 13:10:49 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 10 Apr 2019 13:10:49 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 10 Apr 2019 13:11:52 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 10 Apr 2019 13:11:53 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 Apr 2019 13:11:53 GMT
VOLUME [/data]
# Wed, 10 Apr 2019 13:11:53 GMT
WORKDIR /data
# Wed, 10 Apr 2019 13:11:53 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 10 Apr 2019 13:11:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 13:11:54 GMT
EXPOSE 6379
# Wed, 10 Apr 2019 13:11:54 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:9a81e6a1a3b4f174d22173a96692c9aeffaefcd00f40607d508951a2b14d6f1f`  
		Last Modified: Wed, 10 Apr 2019 10:39:15 GMT  
		Size: 2.8 MB (2752162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b30efed26125f06596e1a58493943baf64ba49f78b66a0f10ea815430c3057`  
		Last Modified: Wed, 10 Apr 2019 13:13:00 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2e8a8f5562f29213b62563c0cb0612f50141b1e8f26c831a71a2be46703a387`  
		Last Modified: Wed, 10 Apr 2019 13:13:00 GMT  
		Size: 408.0 KB (408011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7fb5953abb7fffb527b97c1115b1b3abeb9347830903462fb2b3797e2e5a43b`  
		Last Modified: Wed, 10 Apr 2019 13:13:03 GMT  
		Size: 14.0 MB (13965829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bab5fa3f4af93735539dfefe3c87765cde5923466da353ce7e83ebe8805a662e`  
		Last Modified: Wed, 10 Apr 2019 13:13:00 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0f194f7b5c4038bff9343db96166ab70299afd5bd8f99567cec67932f5f56e9`  
		Last Modified: Wed, 10 Apr 2019 13:13:00 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.4-alpine3.9` - linux; ppc64le

```console
$ docker pull redis@sha256:3fae93862754c27baa36e63c9d0e34b7f13466db1557d78dfc828ecde148ad71
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18615961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdedaf41839a738ad000d87d1e59d076ea332a695698f87a414c4cf8562abc89`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 Apr 2019 08:27:30 GMT
ADD file:c13c1c2b4e6d71924f570a910caf6a1756ea5a28a4017c7b11305e021eacd0ee in / 
# Wed, 10 Apr 2019 08:27:33 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 10:26:02 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 Apr 2019 10:26:09 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 10 Apr 2019 10:26:13 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 10 Apr 2019 10:26:16 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 10 Apr 2019 10:26:22 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 10 Apr 2019 10:27:22 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 10 Apr 2019 10:27:30 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 Apr 2019 10:27:34 GMT
VOLUME [/data]
# Wed, 10 Apr 2019 10:27:41 GMT
WORKDIR /data
# Wed, 10 Apr 2019 10:27:43 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 10 Apr 2019 10:27:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 10:27:55 GMT
EXPOSE 6379
# Wed, 10 Apr 2019 10:28:03 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:fe0f92a92ee06f38abf50fefd22331ac42262e3872ecd2d7ddfa7c24ab71a53a`  
		Last Modified: Wed, 10 Apr 2019 08:28:34 GMT  
		Size: 2.8 MB (2781020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81a3976b0f5f6d320d4e2c4b563bf1d516e9b3dbff3642de3ba2dfdc8aba06df`  
		Last Modified: Wed, 10 Apr 2019 10:30:51 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f552250dac1f95ee5efd4654d27d1b92081cd004b8c8357efb1d5a60bf6b1aa`  
		Last Modified: Wed, 10 Apr 2019 10:30:51 GMT  
		Size: 410.4 KB (410350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0896b2ad48e0d7fc0e9898981dbf4c11e860d203407bde6d575aa231671a85a2`  
		Last Modified: Wed, 10 Apr 2019 10:30:56 GMT  
		Size: 15.4 MB (15422757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49583b5366e690de3a5b14276f913af572cfc6bee7de3fa6cf5b048a5031538c`  
		Last Modified: Wed, 10 Apr 2019 10:30:51 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8c5f265664fe94e4b324c6ef63383c97dc8f6af89e1ae512938abae73191951`  
		Last Modified: Wed, 10 Apr 2019 10:30:51 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.4-alpine3.9` - linux; s390x

```console
$ docker pull redis@sha256:1eb67ffe3d0167eb53d8a33e8a2eaa385c7ac8337f96e1e6397d110e0da8303d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17821115 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecc683be58697fd97857072de161c829167bdea75379ac52c61c773af81bf1ee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 Apr 2019 11:42:23 GMT
ADD file:ab106eb2cf4bf0e1ca7861a56dc24e44dd206fd3ae8d3587684324e5c11136f4 in / 
# Wed, 10 Apr 2019 11:42:23 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 14:22:12 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 Apr 2019 14:22:15 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 10 Apr 2019 14:22:16 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 10 Apr 2019 14:22:16 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 10 Apr 2019 14:22:17 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 10 Apr 2019 14:23:46 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 10 Apr 2019 14:23:50 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 Apr 2019 14:23:51 GMT
VOLUME [/data]
# Wed, 10 Apr 2019 14:23:52 GMT
WORKDIR /data
# Wed, 10 Apr 2019 14:23:53 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 10 Apr 2019 14:23:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 14:23:55 GMT
EXPOSE 6379
# Wed, 10 Apr 2019 14:23:56 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5b51e37a522c2e7cd3c67e8a3e5500b45189ea6698e9fdaed7f5d48282326633`  
		Last Modified: Wed, 10 Apr 2019 11:43:06 GMT  
		Size: 2.5 MB (2543326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e72810cb2904dec74b6a6ec5f4a983c700825faf21979eb2e7a360b42515f26`  
		Last Modified: Wed, 10 Apr 2019 14:26:58 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4816af0620533e2d07b1778a9f075eb91da554fb6e81c803e8fe455a6d9cadb`  
		Last Modified: Wed, 10 Apr 2019 14:26:59 GMT  
		Size: 407.9 KB (407873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daf166aeb7e683d13516e79a7a02f63c3f6a237e0f821b521394f21fffdca6c6`  
		Last Modified: Wed, 10 Apr 2019 14:27:06 GMT  
		Size: 14.9 MB (14868151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddca5358a6a73aaad90211e7f78d95b62fca2a0095375893ed5d11cd111a4d25`  
		Last Modified: Wed, 10 Apr 2019 14:26:58 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d16179b45b9f6d2b424b0ad5f77b5adbda66f123a9f37d5d38d128c6f243705d`  
		Last Modified: Wed, 10 Apr 2019 14:26:59 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0.4-stretch`

```console
$ docker pull redis@sha256:b3029915d55726bf33afe99f44a0e982be14a673e0a696f03769b4a8a249cf68
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
$ docker pull redis@sha256:09a573fa229a6208414163d419d4e116e34cc3851bc3e3d63c1e6a60825c09c3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.3 MB (31339669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c337d5ec7522ea787542c7c4cefe7d3ee5c3ba8d3ef01d733e8aaee0ff5f4ab`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Mar 2019 12:07:48 GMT
ADD file:6bf06125d936ccaf67981470df5ef6b9bd5dee3c0ef0e042a448fc60bb02f191 in / 
# Wed, 27 Mar 2019 12:07:49 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 15:20:43 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 15:20:44 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 15:21:25 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 15:21:25 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 27 Mar 2019 15:21:26 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 27 Mar 2019 15:21:26 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 27 Mar 2019 15:22:30 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 15:22:33 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 15:22:34 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 15:22:34 GMT
WORKDIR /data
# Wed, 27 Mar 2019 15:22:35 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 15:22:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 15:22:36 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 15:22:37 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:fac132c5d16f670820c8c4ae332bd663c2ff856e9af86b2b23a201db263d851e`  
		Last Modified: Wed, 27 Mar 2019 12:13:15 GMT  
		Size: 19.3 MB (19282442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e2fe4e656b4ef2c65b13804ba160b7e965946dfa62ac428ae2e06c6be52e805`  
		Last Modified: Wed, 27 Mar 2019 15:24:02 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9425121a58ef3107c6a89df6558f6a58f7894a6ad37ef27fb928e53cb4004556`  
		Last Modified: Wed, 27 Mar 2019 15:24:03 GMT  
		Size: 915.9 KB (915851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da14e123dcb0661155a81c70a90bee81219eff6a3938239f5cc017f94002ceaf`  
		Last Modified: Wed, 27 Mar 2019 15:24:07 GMT  
		Size: 11.1 MB (11139093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7badf93016bec7cff427666144e15d4acb03120561649afaba03f3e0c82e13fd`  
		Last Modified: Wed, 27 Mar 2019 15:24:02 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d4f4e75a3dd622cfc1d829060709821ae6e597df6bee22e4ab7a7d3f1466ee`  
		Last Modified: Wed, 27 Mar 2019 15:24:03 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.4-stretch` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:1fd6b4b4a89e65e4a5d8b53dbd5863c81bec1256b2b2d4de8542851903aa6a26
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32834543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3982a09544e6d4c493b07353597a8c53ea7d5568da29f05d0c9ce03c6b2d0bf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:46 GMT
ADD file:9db7760cb1c28ef0cd3fa9ee9d0f528d2bcfe80b1c3973daa9f87e30b2047102 in / 
# Wed, 27 Mar 2019 08:47:47 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:09:11 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 12:09:12 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 12:11:14 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 12:11:15 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 27 Mar 2019 12:11:16 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 27 Mar 2019 12:11:17 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 27 Mar 2019 12:13:50 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 12:13:52 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 12:13:53 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 12:13:54 GMT
WORKDIR /data
# Wed, 27 Mar 2019 12:13:55 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 12:13:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 12:13:59 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 12:14:02 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:007027d142c80b166a004bc7265c04036b80df438ac408f1a947e05c581b418e`  
		Last Modified: Wed, 27 Mar 2019 08:52:56 GMT  
		Size: 20.3 MB (20340179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf60f2128f3195c471ec3689b8be025149dcff169970e8d8968c4864c282c8cd`  
		Last Modified: Wed, 27 Mar 2019 12:18:10 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcf7593f1ca581039b8fd820fbd9a7b8dabbf87cb88ae708b921ab5d18bee68c`  
		Last Modified: Wed, 27 Mar 2019 12:18:10 GMT  
		Size: 908.1 KB (908060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3cbddd935987c1549bc21b22bd4cccea4ccbc979b82ca563ecc7eb57b89d00f`  
		Last Modified: Wed, 27 Mar 2019 12:18:15 GMT  
		Size: 11.6 MB (11584046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2da2a323648ee0bbdd0b8beb16ce04363a5d790d90858bba40fe2a5a7cb4fd3`  
		Last Modified: Wed, 27 Mar 2019 12:18:09 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86bf7471abe33a96059db397ae2346398af968e52349393336745d3c179e594d`  
		Last Modified: Wed, 27 Mar 2019 12:18:09 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.4-stretch` - linux; 386

```console
$ docker pull redis@sha256:f0584aac9b21b9ed160f44d54d78d9445244f638a84e5695af7372c399cd8f00
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35237407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fea2c87a1b74a70ff96f8624ed14e97c95e551f287d399b2ce406cbb8899a869`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Mar 2019 10:43:41 GMT
ADD file:13e40d14dbdd0814b4fb7b2a378757164620517fec383739c87747c27e07d8e7 in / 
# Wed, 27 Mar 2019 10:43:41 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 16:13:05 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 16:13:06 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 16:13:20 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 16:13:21 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 27 Mar 2019 16:13:21 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 27 Mar 2019 16:13:21 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 27 Mar 2019 16:14:25 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 16:14:26 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 16:14:26 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 16:14:26 GMT
WORKDIR /data
# Wed, 27 Mar 2019 16:14:26 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 16:14:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 16:14:27 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 16:14:27 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:a5ba78e1989e52ae238c3f225934c1a2dee4dfaa4667abd6f2e0717b78159472`  
		Last Modified: Wed, 27 Mar 2019 10:49:24 GMT  
		Size: 23.1 MB (23125745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcc0e5b68b9dbbba70332f0cad07bf511d38a873ec0d6c82b4c06e897e924689`  
		Last Modified: Wed, 27 Mar 2019 16:15:34 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2a0f34b494237693bbdb853e52e9727e46f0f5a30d022759bcb9cc90710cb1e`  
		Last Modified: Wed, 27 Mar 2019 16:15:34 GMT  
		Size: 920.2 KB (920184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6987feeb4ac2efbd1dcbc2347dc8ac0fe3d2056dcb5e3ec70f8808c58b6d6d9f`  
		Last Modified: Wed, 27 Mar 2019 16:15:36 GMT  
		Size: 11.2 MB (11189231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:768442472b87e72bce877687c423de8d25aff318cf91e1866cc44e273b863942`  
		Last Modified: Wed, 27 Mar 2019 16:15:33 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d0f2fd77a4a7f48fcad100c95795f19dde4c993323e84bf1962240601f45755`  
		Last Modified: Wed, 27 Mar 2019 16:15:33 GMT  
		Size: 418.0 B  
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
$ docker pull redis@sha256:ef67270b8bcb6b801a67d186ed16051520867b985e4f2f1233b510938dc55b22
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
$ docker pull redis@sha256:72c09617b38189123a9b360c8a1998a59be3af52759269d4c740397bd54a31f2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17764271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8eda26fcdab8d161a96a3ac0eaca47dcb4bb8995555e11bec43968738a17009`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Tue, 09 Apr 2019 23:56:52 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Tue, 09 Apr 2019 23:56:54 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Tue, 09 Apr 2019 23:56:54 GMT
ENV REDIS_VERSION=5.0.4
# Tue, 09 Apr 2019 23:56:54 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Tue, 09 Apr 2019 23:56:54 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Tue, 09 Apr 2019 23:58:23 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Tue, 09 Apr 2019 23:58:24 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 09 Apr 2019 23:58:25 GMT
VOLUME [/data]
# Tue, 09 Apr 2019 23:58:25 GMT
WORKDIR /data
# Tue, 09 Apr 2019 23:58:25 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Tue, 09 Apr 2019 23:58:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 Apr 2019 23:58:25 GMT
EXPOSE 6379
# Tue, 09 Apr 2019 23:58:25 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:542e0c4f2f182e0f9c8c3e8a9a4303f5478207940914c9a88232c829c4e74fcf`  
		Last Modified: Tue, 09 Apr 2019 23:59:41 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbf113c39f6550bbc31b5b985e138e40938b5902f154527a952cdd45b0868b11`  
		Last Modified: Tue, 09 Apr 2019 23:59:41 GMT  
		Size: 403.0 KB (403004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09158274ea6c254b2b668d48a19b58c2970251fb8fb4d5addacedf0897983b51`  
		Last Modified: Tue, 09 Apr 2019 23:59:44 GMT  
		Size: 14.6 MB (14602489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffc2a2e9a3a6c4d67ad5d2ab35ea7e1adeeaded5898320036a7a7f04156a2de2`  
		Last Modified: Tue, 09 Apr 2019 23:59:41 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcdc222d2d8e0820fce72abeb2283d14ead8c6b41112fd6a18379774a48782cd`  
		Last Modified: Tue, 09 Apr 2019 23:59:41 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:668bc841494da7d97a0951f7ed528d10075c04daeb39b038a02d172f7856b60e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17140707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69a810a8a06e9be50883a6eec89ec93dc992bccb888653d0f6f5ecdf2c1a65f9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 08:26:14 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 Apr 2019 08:26:16 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 10 Apr 2019 08:26:17 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 10 Apr 2019 08:26:17 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 10 Apr 2019 08:26:17 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 10 Apr 2019 08:26:58 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 10 Apr 2019 08:27:00 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 Apr 2019 08:27:00 GMT
VOLUME [/data]
# Wed, 10 Apr 2019 08:27:00 GMT
WORKDIR /data
# Wed, 10 Apr 2019 08:27:01 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 10 Apr 2019 08:27:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 08:27:02 GMT
EXPOSE 6379
# Wed, 10 Apr 2019 08:27:02 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cac72c52417597f37150f22f15904bd5df64bf389a18ebb8145b857f4da966a5`  
		Last Modified: Wed, 10 Apr 2019 08:27:48 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6db8b29787ef73ca4d0464c2c22edee9ca3e063a81cf9a8830b1ec5c8befc20`  
		Last Modified: Wed, 10 Apr 2019 08:27:48 GMT  
		Size: 405.3 KB (405287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d1b8efcf6bb926cffa540cbaf391a2b5a4cb2c2909ef482699ca42c5ca13ee1`  
		Last Modified: Wed, 10 Apr 2019 08:27:52 GMT  
		Size: 14.2 MB (14190151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f27870568a67c98d7f2fd1b39999b4b1b283d67c110fbc00393495ae02a8943`  
		Last Modified: Wed, 10 Apr 2019 08:27:48 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c715f8c9e15317612d670e62d5a34ced8850627792295c42b061aeb5751a23bf`  
		Last Modified: Wed, 10 Apr 2019 08:27:48 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-alpine` - linux; arm variant v7

```console
$ docker pull redis@sha256:bd9758298229750ec0613563b8ad0a7e990505bf9b7f74289024777a1eeb80ec
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16691575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f12a0c672a7ad12eebfd450fadb7f9801b245183b802cc18bd6dddbc5632ad7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 Apr 2019 11:57:47 GMT
ADD file:1a27b74f23795a1f205247dcd6eff48ac56f0b8f2afe0c358199a0b60f694861 in / 
# Wed, 10 Apr 2019 11:57:48 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 12:31:32 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 Apr 2019 12:31:35 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 10 Apr 2019 12:31:36 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 10 Apr 2019 12:31:37 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 10 Apr 2019 12:31:38 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 10 Apr 2019 12:32:24 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 10 Apr 2019 12:32:27 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 Apr 2019 12:32:27 GMT
VOLUME [/data]
# Wed, 10 Apr 2019 12:32:28 GMT
WORKDIR /data
# Wed, 10 Apr 2019 12:32:28 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 10 Apr 2019 12:32:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 12:32:30 GMT
EXPOSE 6379
# Wed, 10 Apr 2019 12:32:30 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:c2a5cdd4aa08146b4516cc95f6b461f2994250a819b3e6f75f23fa2a8c1b1744`  
		Last Modified: Wed, 10 Apr 2019 11:58:04 GMT  
		Size: 2.4 MB (2350757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f02904c22d1f59beea301a4e2c19f4b14edae521f98cd0cae4edec6c880c34bb`  
		Last Modified: Wed, 10 Apr 2019 12:33:35 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0132ad3f4069c0da06d221747600eb8c244a3bfcf23a05b129ab41c109b76640`  
		Last Modified: Wed, 10 Apr 2019 12:33:35 GMT  
		Size: 398.6 KB (398582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccd1fa1a3ff503e3849ba7b85a1268731b8a37909e632c077910b89d5f14f1c4`  
		Last Modified: Wed, 10 Apr 2019 12:33:39 GMT  
		Size: 13.9 MB (13940403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aed146897e3069648170d9f3d83c58d37b1c525e949cf1d4424957bd616c94b`  
		Last Modified: Wed, 10 Apr 2019 12:33:35 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6134f104361e7f2439ced2e4f476e4ff4b7031cabe2e3fdfa625f20d9562ba7`  
		Last Modified: Wed, 10 Apr 2019 12:33:35 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:6f9aab70b6a807954b377a0a4596ee2c024f57c1a63cce869a9146abbb74b87c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.6 MB (17604095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:107a7a2f46542d15554b68f73ad23cc0b5abbfca6cc879e26c24dd52627525ac`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 Apr 2019 08:49:11 GMT
ADD file:30e0a8ccdca70b20b8ce637f0ba5108157f4ba491447d20aafbe45d82392bd81 in / 
# Wed, 10 Apr 2019 08:49:12 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 09:30:47 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 Apr 2019 09:30:51 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 10 Apr 2019 09:30:51 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 10 Apr 2019 09:30:52 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 10 Apr 2019 09:30:53 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 10 Apr 2019 09:32:32 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 10 Apr 2019 09:32:34 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 Apr 2019 09:32:35 GMT
VOLUME [/data]
# Wed, 10 Apr 2019 09:32:36 GMT
WORKDIR /data
# Wed, 10 Apr 2019 09:32:37 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 10 Apr 2019 09:32:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 09:32:38 GMT
EXPOSE 6379
# Wed, 10 Apr 2019 09:32:39 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6f37394be673296a0fdc21b819c5df40431baf7d3af121bee451726dd1457493`  
		Last Modified: Wed, 10 Apr 2019 08:50:38 GMT  
		Size: 2.7 MB (2688778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd87357e3604d3d4278cd171c27e1f6eab0970cb1af16c2fd37a4df05d7fa114`  
		Last Modified: Wed, 10 Apr 2019 09:34:18 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3ed8d359e92c573c3aa65aa6bf63c31debc70eed441317642f91d442905b980`  
		Last Modified: Wed, 10 Apr 2019 09:34:19 GMT  
		Size: 405.2 KB (405228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d737f88f38956dce2665b67e52ea0e56b55e490b1a27454342dd86289aefec`  
		Last Modified: Wed, 10 Apr 2019 09:34:25 GMT  
		Size: 14.5 MB (14508323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9a62c4508f4096bc9c594bc955df3654878f2af55301b2e106848012f6f0087`  
		Last Modified: Wed, 10 Apr 2019 09:34:19 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4955611fe1ed5ecaef528e1260b632eb460b9664cb1ea80809e5694e2e90b61a`  
		Last Modified: Wed, 10 Apr 2019 09:34:19 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-alpine` - linux; 386

```console
$ docker pull redis@sha256:a80850d63514e18b9da7e3e31e0dd218d1b271292c2b8b876957b42854d9bf92
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17127766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a936b9cc965a5dbfbf988b02bee815e4b091ce96e8e098e710d62bddc09aa219`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 Apr 2019 10:38:55 GMT
ADD file:51f7bb95ef6cc3519317dcb7abbf6155e6bb7b73a17ad7d90cad7911e8a8933c in / 
# Wed, 10 Apr 2019 10:38:55 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 13:10:48 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 Apr 2019 13:10:49 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 10 Apr 2019 13:10:49 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 10 Apr 2019 13:10:49 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 10 Apr 2019 13:10:49 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 10 Apr 2019 13:11:52 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 10 Apr 2019 13:11:53 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 Apr 2019 13:11:53 GMT
VOLUME [/data]
# Wed, 10 Apr 2019 13:11:53 GMT
WORKDIR /data
# Wed, 10 Apr 2019 13:11:53 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 10 Apr 2019 13:11:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 13:11:54 GMT
EXPOSE 6379
# Wed, 10 Apr 2019 13:11:54 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:9a81e6a1a3b4f174d22173a96692c9aeffaefcd00f40607d508951a2b14d6f1f`  
		Last Modified: Wed, 10 Apr 2019 10:39:15 GMT  
		Size: 2.8 MB (2752162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b30efed26125f06596e1a58493943baf64ba49f78b66a0f10ea815430c3057`  
		Last Modified: Wed, 10 Apr 2019 13:13:00 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2e8a8f5562f29213b62563c0cb0612f50141b1e8f26c831a71a2be46703a387`  
		Last Modified: Wed, 10 Apr 2019 13:13:00 GMT  
		Size: 408.0 KB (408011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7fb5953abb7fffb527b97c1115b1b3abeb9347830903462fb2b3797e2e5a43b`  
		Last Modified: Wed, 10 Apr 2019 13:13:03 GMT  
		Size: 14.0 MB (13965829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bab5fa3f4af93735539dfefe3c87765cde5923466da353ce7e83ebe8805a662e`  
		Last Modified: Wed, 10 Apr 2019 13:13:00 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0f194f7b5c4038bff9343db96166ab70299afd5bd8f99567cec67932f5f56e9`  
		Last Modified: Wed, 10 Apr 2019 13:13:00 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:3fae93862754c27baa36e63c9d0e34b7f13466db1557d78dfc828ecde148ad71
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18615961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdedaf41839a738ad000d87d1e59d076ea332a695698f87a414c4cf8562abc89`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 Apr 2019 08:27:30 GMT
ADD file:c13c1c2b4e6d71924f570a910caf6a1756ea5a28a4017c7b11305e021eacd0ee in / 
# Wed, 10 Apr 2019 08:27:33 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 10:26:02 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 Apr 2019 10:26:09 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 10 Apr 2019 10:26:13 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 10 Apr 2019 10:26:16 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 10 Apr 2019 10:26:22 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 10 Apr 2019 10:27:22 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 10 Apr 2019 10:27:30 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 Apr 2019 10:27:34 GMT
VOLUME [/data]
# Wed, 10 Apr 2019 10:27:41 GMT
WORKDIR /data
# Wed, 10 Apr 2019 10:27:43 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 10 Apr 2019 10:27:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 10:27:55 GMT
EXPOSE 6379
# Wed, 10 Apr 2019 10:28:03 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:fe0f92a92ee06f38abf50fefd22331ac42262e3872ecd2d7ddfa7c24ab71a53a`  
		Last Modified: Wed, 10 Apr 2019 08:28:34 GMT  
		Size: 2.8 MB (2781020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81a3976b0f5f6d320d4e2c4b563bf1d516e9b3dbff3642de3ba2dfdc8aba06df`  
		Last Modified: Wed, 10 Apr 2019 10:30:51 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f552250dac1f95ee5efd4654d27d1b92081cd004b8c8357efb1d5a60bf6b1aa`  
		Last Modified: Wed, 10 Apr 2019 10:30:51 GMT  
		Size: 410.4 KB (410350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0896b2ad48e0d7fc0e9898981dbf4c11e860d203407bde6d575aa231671a85a2`  
		Last Modified: Wed, 10 Apr 2019 10:30:56 GMT  
		Size: 15.4 MB (15422757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49583b5366e690de3a5b14276f913af572cfc6bee7de3fa6cf5b048a5031538c`  
		Last Modified: Wed, 10 Apr 2019 10:30:51 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8c5f265664fe94e4b324c6ef63383c97dc8f6af89e1ae512938abae73191951`  
		Last Modified: Wed, 10 Apr 2019 10:30:51 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-alpine` - linux; s390x

```console
$ docker pull redis@sha256:1eb67ffe3d0167eb53d8a33e8a2eaa385c7ac8337f96e1e6397d110e0da8303d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17821115 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecc683be58697fd97857072de161c829167bdea75379ac52c61c773af81bf1ee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 Apr 2019 11:42:23 GMT
ADD file:ab106eb2cf4bf0e1ca7861a56dc24e44dd206fd3ae8d3587684324e5c11136f4 in / 
# Wed, 10 Apr 2019 11:42:23 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 14:22:12 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 Apr 2019 14:22:15 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 10 Apr 2019 14:22:16 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 10 Apr 2019 14:22:16 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 10 Apr 2019 14:22:17 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 10 Apr 2019 14:23:46 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 10 Apr 2019 14:23:50 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 Apr 2019 14:23:51 GMT
VOLUME [/data]
# Wed, 10 Apr 2019 14:23:52 GMT
WORKDIR /data
# Wed, 10 Apr 2019 14:23:53 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 10 Apr 2019 14:23:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 14:23:55 GMT
EXPOSE 6379
# Wed, 10 Apr 2019 14:23:56 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5b51e37a522c2e7cd3c67e8a3e5500b45189ea6698e9fdaed7f5d48282326633`  
		Last Modified: Wed, 10 Apr 2019 11:43:06 GMT  
		Size: 2.5 MB (2543326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e72810cb2904dec74b6a6ec5f4a983c700825faf21979eb2e7a360b42515f26`  
		Last Modified: Wed, 10 Apr 2019 14:26:58 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4816af0620533e2d07b1778a9f075eb91da554fb6e81c803e8fe455a6d9cadb`  
		Last Modified: Wed, 10 Apr 2019 14:26:59 GMT  
		Size: 407.9 KB (407873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daf166aeb7e683d13516e79a7a02f63c3f6a237e0f821b521394f21fffdca6c6`  
		Last Modified: Wed, 10 Apr 2019 14:27:06 GMT  
		Size: 14.9 MB (14868151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddca5358a6a73aaad90211e7f78d95b62fca2a0095375893ed5d11cd111a4d25`  
		Last Modified: Wed, 10 Apr 2019 14:26:58 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d16179b45b9f6d2b424b0ad5f77b5adbda66f123a9f37d5d38d128c6f243705d`  
		Last Modified: Wed, 10 Apr 2019 14:26:59 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0-alpine3.9`

```console
$ docker pull redis@sha256:ef67270b8bcb6b801a67d186ed16051520867b985e4f2f1233b510938dc55b22
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
$ docker pull redis@sha256:72c09617b38189123a9b360c8a1998a59be3af52759269d4c740397bd54a31f2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17764271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8eda26fcdab8d161a96a3ac0eaca47dcb4bb8995555e11bec43968738a17009`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Tue, 09 Apr 2019 23:56:52 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Tue, 09 Apr 2019 23:56:54 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Tue, 09 Apr 2019 23:56:54 GMT
ENV REDIS_VERSION=5.0.4
# Tue, 09 Apr 2019 23:56:54 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Tue, 09 Apr 2019 23:56:54 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Tue, 09 Apr 2019 23:58:23 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Tue, 09 Apr 2019 23:58:24 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 09 Apr 2019 23:58:25 GMT
VOLUME [/data]
# Tue, 09 Apr 2019 23:58:25 GMT
WORKDIR /data
# Tue, 09 Apr 2019 23:58:25 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Tue, 09 Apr 2019 23:58:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 Apr 2019 23:58:25 GMT
EXPOSE 6379
# Tue, 09 Apr 2019 23:58:25 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:542e0c4f2f182e0f9c8c3e8a9a4303f5478207940914c9a88232c829c4e74fcf`  
		Last Modified: Tue, 09 Apr 2019 23:59:41 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbf113c39f6550bbc31b5b985e138e40938b5902f154527a952cdd45b0868b11`  
		Last Modified: Tue, 09 Apr 2019 23:59:41 GMT  
		Size: 403.0 KB (403004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09158274ea6c254b2b668d48a19b58c2970251fb8fb4d5addacedf0897983b51`  
		Last Modified: Tue, 09 Apr 2019 23:59:44 GMT  
		Size: 14.6 MB (14602489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffc2a2e9a3a6c4d67ad5d2ab35ea7e1adeeaded5898320036a7a7f04156a2de2`  
		Last Modified: Tue, 09 Apr 2019 23:59:41 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcdc222d2d8e0820fce72abeb2283d14ead8c6b41112fd6a18379774a48782cd`  
		Last Modified: Tue, 09 Apr 2019 23:59:41 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-alpine3.9` - linux; arm variant v6

```console
$ docker pull redis@sha256:668bc841494da7d97a0951f7ed528d10075c04daeb39b038a02d172f7856b60e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17140707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69a810a8a06e9be50883a6eec89ec93dc992bccb888653d0f6f5ecdf2c1a65f9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 08:26:14 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 Apr 2019 08:26:16 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 10 Apr 2019 08:26:17 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 10 Apr 2019 08:26:17 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 10 Apr 2019 08:26:17 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 10 Apr 2019 08:26:58 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 10 Apr 2019 08:27:00 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 Apr 2019 08:27:00 GMT
VOLUME [/data]
# Wed, 10 Apr 2019 08:27:00 GMT
WORKDIR /data
# Wed, 10 Apr 2019 08:27:01 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 10 Apr 2019 08:27:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 08:27:02 GMT
EXPOSE 6379
# Wed, 10 Apr 2019 08:27:02 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cac72c52417597f37150f22f15904bd5df64bf389a18ebb8145b857f4da966a5`  
		Last Modified: Wed, 10 Apr 2019 08:27:48 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6db8b29787ef73ca4d0464c2c22edee9ca3e063a81cf9a8830b1ec5c8befc20`  
		Last Modified: Wed, 10 Apr 2019 08:27:48 GMT  
		Size: 405.3 KB (405287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d1b8efcf6bb926cffa540cbaf391a2b5a4cb2c2909ef482699ca42c5ca13ee1`  
		Last Modified: Wed, 10 Apr 2019 08:27:52 GMT  
		Size: 14.2 MB (14190151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f27870568a67c98d7f2fd1b39999b4b1b283d67c110fbc00393495ae02a8943`  
		Last Modified: Wed, 10 Apr 2019 08:27:48 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c715f8c9e15317612d670e62d5a34ced8850627792295c42b061aeb5751a23bf`  
		Last Modified: Wed, 10 Apr 2019 08:27:48 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-alpine3.9` - linux; arm variant v7

```console
$ docker pull redis@sha256:bd9758298229750ec0613563b8ad0a7e990505bf9b7f74289024777a1eeb80ec
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16691575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f12a0c672a7ad12eebfd450fadb7f9801b245183b802cc18bd6dddbc5632ad7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 Apr 2019 11:57:47 GMT
ADD file:1a27b74f23795a1f205247dcd6eff48ac56f0b8f2afe0c358199a0b60f694861 in / 
# Wed, 10 Apr 2019 11:57:48 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 12:31:32 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 Apr 2019 12:31:35 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 10 Apr 2019 12:31:36 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 10 Apr 2019 12:31:37 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 10 Apr 2019 12:31:38 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 10 Apr 2019 12:32:24 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 10 Apr 2019 12:32:27 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 Apr 2019 12:32:27 GMT
VOLUME [/data]
# Wed, 10 Apr 2019 12:32:28 GMT
WORKDIR /data
# Wed, 10 Apr 2019 12:32:28 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 10 Apr 2019 12:32:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 12:32:30 GMT
EXPOSE 6379
# Wed, 10 Apr 2019 12:32:30 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:c2a5cdd4aa08146b4516cc95f6b461f2994250a819b3e6f75f23fa2a8c1b1744`  
		Last Modified: Wed, 10 Apr 2019 11:58:04 GMT  
		Size: 2.4 MB (2350757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f02904c22d1f59beea301a4e2c19f4b14edae521f98cd0cae4edec6c880c34bb`  
		Last Modified: Wed, 10 Apr 2019 12:33:35 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0132ad3f4069c0da06d221747600eb8c244a3bfcf23a05b129ab41c109b76640`  
		Last Modified: Wed, 10 Apr 2019 12:33:35 GMT  
		Size: 398.6 KB (398582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccd1fa1a3ff503e3849ba7b85a1268731b8a37909e632c077910b89d5f14f1c4`  
		Last Modified: Wed, 10 Apr 2019 12:33:39 GMT  
		Size: 13.9 MB (13940403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aed146897e3069648170d9f3d83c58d37b1c525e949cf1d4424957bd616c94b`  
		Last Modified: Wed, 10 Apr 2019 12:33:35 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6134f104361e7f2439ced2e4f476e4ff4b7031cabe2e3fdfa625f20d9562ba7`  
		Last Modified: Wed, 10 Apr 2019 12:33:35 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-alpine3.9` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:6f9aab70b6a807954b377a0a4596ee2c024f57c1a63cce869a9146abbb74b87c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.6 MB (17604095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:107a7a2f46542d15554b68f73ad23cc0b5abbfca6cc879e26c24dd52627525ac`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 Apr 2019 08:49:11 GMT
ADD file:30e0a8ccdca70b20b8ce637f0ba5108157f4ba491447d20aafbe45d82392bd81 in / 
# Wed, 10 Apr 2019 08:49:12 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 09:30:47 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 Apr 2019 09:30:51 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 10 Apr 2019 09:30:51 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 10 Apr 2019 09:30:52 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 10 Apr 2019 09:30:53 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 10 Apr 2019 09:32:32 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 10 Apr 2019 09:32:34 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 Apr 2019 09:32:35 GMT
VOLUME [/data]
# Wed, 10 Apr 2019 09:32:36 GMT
WORKDIR /data
# Wed, 10 Apr 2019 09:32:37 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 10 Apr 2019 09:32:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 09:32:38 GMT
EXPOSE 6379
# Wed, 10 Apr 2019 09:32:39 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6f37394be673296a0fdc21b819c5df40431baf7d3af121bee451726dd1457493`  
		Last Modified: Wed, 10 Apr 2019 08:50:38 GMT  
		Size: 2.7 MB (2688778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd87357e3604d3d4278cd171c27e1f6eab0970cb1af16c2fd37a4df05d7fa114`  
		Last Modified: Wed, 10 Apr 2019 09:34:18 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3ed8d359e92c573c3aa65aa6bf63c31debc70eed441317642f91d442905b980`  
		Last Modified: Wed, 10 Apr 2019 09:34:19 GMT  
		Size: 405.2 KB (405228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d737f88f38956dce2665b67e52ea0e56b55e490b1a27454342dd86289aefec`  
		Last Modified: Wed, 10 Apr 2019 09:34:25 GMT  
		Size: 14.5 MB (14508323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9a62c4508f4096bc9c594bc955df3654878f2af55301b2e106848012f6f0087`  
		Last Modified: Wed, 10 Apr 2019 09:34:19 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4955611fe1ed5ecaef528e1260b632eb460b9664cb1ea80809e5694e2e90b61a`  
		Last Modified: Wed, 10 Apr 2019 09:34:19 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-alpine3.9` - linux; 386

```console
$ docker pull redis@sha256:a80850d63514e18b9da7e3e31e0dd218d1b271292c2b8b876957b42854d9bf92
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17127766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a936b9cc965a5dbfbf988b02bee815e4b091ce96e8e098e710d62bddc09aa219`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 Apr 2019 10:38:55 GMT
ADD file:51f7bb95ef6cc3519317dcb7abbf6155e6bb7b73a17ad7d90cad7911e8a8933c in / 
# Wed, 10 Apr 2019 10:38:55 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 13:10:48 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 Apr 2019 13:10:49 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 10 Apr 2019 13:10:49 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 10 Apr 2019 13:10:49 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 10 Apr 2019 13:10:49 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 10 Apr 2019 13:11:52 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 10 Apr 2019 13:11:53 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 Apr 2019 13:11:53 GMT
VOLUME [/data]
# Wed, 10 Apr 2019 13:11:53 GMT
WORKDIR /data
# Wed, 10 Apr 2019 13:11:53 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 10 Apr 2019 13:11:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 13:11:54 GMT
EXPOSE 6379
# Wed, 10 Apr 2019 13:11:54 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:9a81e6a1a3b4f174d22173a96692c9aeffaefcd00f40607d508951a2b14d6f1f`  
		Last Modified: Wed, 10 Apr 2019 10:39:15 GMT  
		Size: 2.8 MB (2752162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b30efed26125f06596e1a58493943baf64ba49f78b66a0f10ea815430c3057`  
		Last Modified: Wed, 10 Apr 2019 13:13:00 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2e8a8f5562f29213b62563c0cb0612f50141b1e8f26c831a71a2be46703a387`  
		Last Modified: Wed, 10 Apr 2019 13:13:00 GMT  
		Size: 408.0 KB (408011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7fb5953abb7fffb527b97c1115b1b3abeb9347830903462fb2b3797e2e5a43b`  
		Last Modified: Wed, 10 Apr 2019 13:13:03 GMT  
		Size: 14.0 MB (13965829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bab5fa3f4af93735539dfefe3c87765cde5923466da353ce7e83ebe8805a662e`  
		Last Modified: Wed, 10 Apr 2019 13:13:00 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0f194f7b5c4038bff9343db96166ab70299afd5bd8f99567cec67932f5f56e9`  
		Last Modified: Wed, 10 Apr 2019 13:13:00 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-alpine3.9` - linux; ppc64le

```console
$ docker pull redis@sha256:3fae93862754c27baa36e63c9d0e34b7f13466db1557d78dfc828ecde148ad71
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18615961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdedaf41839a738ad000d87d1e59d076ea332a695698f87a414c4cf8562abc89`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 Apr 2019 08:27:30 GMT
ADD file:c13c1c2b4e6d71924f570a910caf6a1756ea5a28a4017c7b11305e021eacd0ee in / 
# Wed, 10 Apr 2019 08:27:33 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 10:26:02 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 Apr 2019 10:26:09 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 10 Apr 2019 10:26:13 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 10 Apr 2019 10:26:16 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 10 Apr 2019 10:26:22 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 10 Apr 2019 10:27:22 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 10 Apr 2019 10:27:30 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 Apr 2019 10:27:34 GMT
VOLUME [/data]
# Wed, 10 Apr 2019 10:27:41 GMT
WORKDIR /data
# Wed, 10 Apr 2019 10:27:43 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 10 Apr 2019 10:27:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 10:27:55 GMT
EXPOSE 6379
# Wed, 10 Apr 2019 10:28:03 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:fe0f92a92ee06f38abf50fefd22331ac42262e3872ecd2d7ddfa7c24ab71a53a`  
		Last Modified: Wed, 10 Apr 2019 08:28:34 GMT  
		Size: 2.8 MB (2781020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81a3976b0f5f6d320d4e2c4b563bf1d516e9b3dbff3642de3ba2dfdc8aba06df`  
		Last Modified: Wed, 10 Apr 2019 10:30:51 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f552250dac1f95ee5efd4654d27d1b92081cd004b8c8357efb1d5a60bf6b1aa`  
		Last Modified: Wed, 10 Apr 2019 10:30:51 GMT  
		Size: 410.4 KB (410350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0896b2ad48e0d7fc0e9898981dbf4c11e860d203407bde6d575aa231671a85a2`  
		Last Modified: Wed, 10 Apr 2019 10:30:56 GMT  
		Size: 15.4 MB (15422757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49583b5366e690de3a5b14276f913af572cfc6bee7de3fa6cf5b048a5031538c`  
		Last Modified: Wed, 10 Apr 2019 10:30:51 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8c5f265664fe94e4b324c6ef63383c97dc8f6af89e1ae512938abae73191951`  
		Last Modified: Wed, 10 Apr 2019 10:30:51 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-alpine3.9` - linux; s390x

```console
$ docker pull redis@sha256:1eb67ffe3d0167eb53d8a33e8a2eaa385c7ac8337f96e1e6397d110e0da8303d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17821115 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecc683be58697fd97857072de161c829167bdea75379ac52c61c773af81bf1ee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 Apr 2019 11:42:23 GMT
ADD file:ab106eb2cf4bf0e1ca7861a56dc24e44dd206fd3ae8d3587684324e5c11136f4 in / 
# Wed, 10 Apr 2019 11:42:23 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 14:22:12 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 Apr 2019 14:22:15 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 10 Apr 2019 14:22:16 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 10 Apr 2019 14:22:16 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 10 Apr 2019 14:22:17 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 10 Apr 2019 14:23:46 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 10 Apr 2019 14:23:50 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 Apr 2019 14:23:51 GMT
VOLUME [/data]
# Wed, 10 Apr 2019 14:23:52 GMT
WORKDIR /data
# Wed, 10 Apr 2019 14:23:53 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 10 Apr 2019 14:23:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 14:23:55 GMT
EXPOSE 6379
# Wed, 10 Apr 2019 14:23:56 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5b51e37a522c2e7cd3c67e8a3e5500b45189ea6698e9fdaed7f5d48282326633`  
		Last Modified: Wed, 10 Apr 2019 11:43:06 GMT  
		Size: 2.5 MB (2543326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e72810cb2904dec74b6a6ec5f4a983c700825faf21979eb2e7a360b42515f26`  
		Last Modified: Wed, 10 Apr 2019 14:26:58 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4816af0620533e2d07b1778a9f075eb91da554fb6e81c803e8fe455a6d9cadb`  
		Last Modified: Wed, 10 Apr 2019 14:26:59 GMT  
		Size: 407.9 KB (407873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daf166aeb7e683d13516e79a7a02f63c3f6a237e0f821b521394f21fffdca6c6`  
		Last Modified: Wed, 10 Apr 2019 14:27:06 GMT  
		Size: 14.9 MB (14868151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddca5358a6a73aaad90211e7f78d95b62fca2a0095375893ed5d11cd111a4d25`  
		Last Modified: Wed, 10 Apr 2019 14:26:58 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d16179b45b9f6d2b424b0ad5f77b5adbda66f123a9f37d5d38d128c6f243705d`  
		Last Modified: Wed, 10 Apr 2019 14:26:59 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0-stretch`

```console
$ docker pull redis@sha256:b3029915d55726bf33afe99f44a0e982be14a673e0a696f03769b4a8a249cf68
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
$ docker pull redis@sha256:09a573fa229a6208414163d419d4e116e34cc3851bc3e3d63c1e6a60825c09c3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.3 MB (31339669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c337d5ec7522ea787542c7c4cefe7d3ee5c3ba8d3ef01d733e8aaee0ff5f4ab`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Mar 2019 12:07:48 GMT
ADD file:6bf06125d936ccaf67981470df5ef6b9bd5dee3c0ef0e042a448fc60bb02f191 in / 
# Wed, 27 Mar 2019 12:07:49 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 15:20:43 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 15:20:44 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 15:21:25 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 15:21:25 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 27 Mar 2019 15:21:26 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 27 Mar 2019 15:21:26 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 27 Mar 2019 15:22:30 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 15:22:33 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 15:22:34 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 15:22:34 GMT
WORKDIR /data
# Wed, 27 Mar 2019 15:22:35 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 15:22:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 15:22:36 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 15:22:37 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:fac132c5d16f670820c8c4ae332bd663c2ff856e9af86b2b23a201db263d851e`  
		Last Modified: Wed, 27 Mar 2019 12:13:15 GMT  
		Size: 19.3 MB (19282442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e2fe4e656b4ef2c65b13804ba160b7e965946dfa62ac428ae2e06c6be52e805`  
		Last Modified: Wed, 27 Mar 2019 15:24:02 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9425121a58ef3107c6a89df6558f6a58f7894a6ad37ef27fb928e53cb4004556`  
		Last Modified: Wed, 27 Mar 2019 15:24:03 GMT  
		Size: 915.9 KB (915851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da14e123dcb0661155a81c70a90bee81219eff6a3938239f5cc017f94002ceaf`  
		Last Modified: Wed, 27 Mar 2019 15:24:07 GMT  
		Size: 11.1 MB (11139093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7badf93016bec7cff427666144e15d4acb03120561649afaba03f3e0c82e13fd`  
		Last Modified: Wed, 27 Mar 2019 15:24:02 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d4f4e75a3dd622cfc1d829060709821ae6e597df6bee22e4ab7a7d3f1466ee`  
		Last Modified: Wed, 27 Mar 2019 15:24:03 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-stretch` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:1fd6b4b4a89e65e4a5d8b53dbd5863c81bec1256b2b2d4de8542851903aa6a26
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32834543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3982a09544e6d4c493b07353597a8c53ea7d5568da29f05d0c9ce03c6b2d0bf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:46 GMT
ADD file:9db7760cb1c28ef0cd3fa9ee9d0f528d2bcfe80b1c3973daa9f87e30b2047102 in / 
# Wed, 27 Mar 2019 08:47:47 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:09:11 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 12:09:12 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 12:11:14 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 12:11:15 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 27 Mar 2019 12:11:16 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 27 Mar 2019 12:11:17 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 27 Mar 2019 12:13:50 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 12:13:52 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 12:13:53 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 12:13:54 GMT
WORKDIR /data
# Wed, 27 Mar 2019 12:13:55 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 12:13:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 12:13:59 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 12:14:02 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:007027d142c80b166a004bc7265c04036b80df438ac408f1a947e05c581b418e`  
		Last Modified: Wed, 27 Mar 2019 08:52:56 GMT  
		Size: 20.3 MB (20340179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf60f2128f3195c471ec3689b8be025149dcff169970e8d8968c4864c282c8cd`  
		Last Modified: Wed, 27 Mar 2019 12:18:10 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcf7593f1ca581039b8fd820fbd9a7b8dabbf87cb88ae708b921ab5d18bee68c`  
		Last Modified: Wed, 27 Mar 2019 12:18:10 GMT  
		Size: 908.1 KB (908060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3cbddd935987c1549bc21b22bd4cccea4ccbc979b82ca563ecc7eb57b89d00f`  
		Last Modified: Wed, 27 Mar 2019 12:18:15 GMT  
		Size: 11.6 MB (11584046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2da2a323648ee0bbdd0b8beb16ce04363a5d790d90858bba40fe2a5a7cb4fd3`  
		Last Modified: Wed, 27 Mar 2019 12:18:09 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86bf7471abe33a96059db397ae2346398af968e52349393336745d3c179e594d`  
		Last Modified: Wed, 27 Mar 2019 12:18:09 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-stretch` - linux; 386

```console
$ docker pull redis@sha256:f0584aac9b21b9ed160f44d54d78d9445244f638a84e5695af7372c399cd8f00
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35237407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fea2c87a1b74a70ff96f8624ed14e97c95e551f287d399b2ce406cbb8899a869`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Mar 2019 10:43:41 GMT
ADD file:13e40d14dbdd0814b4fb7b2a378757164620517fec383739c87747c27e07d8e7 in / 
# Wed, 27 Mar 2019 10:43:41 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 16:13:05 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 16:13:06 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 16:13:20 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 16:13:21 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 27 Mar 2019 16:13:21 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 27 Mar 2019 16:13:21 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 27 Mar 2019 16:14:25 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 16:14:26 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 16:14:26 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 16:14:26 GMT
WORKDIR /data
# Wed, 27 Mar 2019 16:14:26 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 16:14:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 16:14:27 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 16:14:27 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:a5ba78e1989e52ae238c3f225934c1a2dee4dfaa4667abd6f2e0717b78159472`  
		Last Modified: Wed, 27 Mar 2019 10:49:24 GMT  
		Size: 23.1 MB (23125745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcc0e5b68b9dbbba70332f0cad07bf511d38a873ec0d6c82b4c06e897e924689`  
		Last Modified: Wed, 27 Mar 2019 16:15:34 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2a0f34b494237693bbdb853e52e9727e46f0f5a30d022759bcb9cc90710cb1e`  
		Last Modified: Wed, 27 Mar 2019 16:15:34 GMT  
		Size: 920.2 KB (920184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6987feeb4ac2efbd1dcbc2347dc8ac0fe3d2056dcb5e3ec70f8808c58b6d6d9f`  
		Last Modified: Wed, 27 Mar 2019 16:15:36 GMT  
		Size: 11.2 MB (11189231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:768442472b87e72bce877687c423de8d25aff318cf91e1866cc44e273b863942`  
		Last Modified: Wed, 27 Mar 2019 16:15:33 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d0f2fd77a4a7f48fcad100c95795f19dde4c993323e84bf1962240601f45755`  
		Last Modified: Wed, 27 Mar 2019 16:15:33 GMT  
		Size: 418.0 B  
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
$ docker pull redis@sha256:7fc9611f45fe48b6ee5b31775c697557c627df3c74045e9d8b2e1fbd6d3de77b
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
$ docker pull redis@sha256:7fc9611f45fe48b6ee5b31775c697557c627df3c74045e9d8b2e1fbd6d3de77b
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
$ docker pull redis@sha256:ef67270b8bcb6b801a67d186ed16051520867b985e4f2f1233b510938dc55b22
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
$ docker pull redis@sha256:72c09617b38189123a9b360c8a1998a59be3af52759269d4c740397bd54a31f2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17764271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8eda26fcdab8d161a96a3ac0eaca47dcb4bb8995555e11bec43968738a17009`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Tue, 09 Apr 2019 23:56:52 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Tue, 09 Apr 2019 23:56:54 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Tue, 09 Apr 2019 23:56:54 GMT
ENV REDIS_VERSION=5.0.4
# Tue, 09 Apr 2019 23:56:54 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Tue, 09 Apr 2019 23:56:54 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Tue, 09 Apr 2019 23:58:23 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Tue, 09 Apr 2019 23:58:24 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 09 Apr 2019 23:58:25 GMT
VOLUME [/data]
# Tue, 09 Apr 2019 23:58:25 GMT
WORKDIR /data
# Tue, 09 Apr 2019 23:58:25 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Tue, 09 Apr 2019 23:58:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 Apr 2019 23:58:25 GMT
EXPOSE 6379
# Tue, 09 Apr 2019 23:58:25 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:542e0c4f2f182e0f9c8c3e8a9a4303f5478207940914c9a88232c829c4e74fcf`  
		Last Modified: Tue, 09 Apr 2019 23:59:41 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbf113c39f6550bbc31b5b985e138e40938b5902f154527a952cdd45b0868b11`  
		Last Modified: Tue, 09 Apr 2019 23:59:41 GMT  
		Size: 403.0 KB (403004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09158274ea6c254b2b668d48a19b58c2970251fb8fb4d5addacedf0897983b51`  
		Last Modified: Tue, 09 Apr 2019 23:59:44 GMT  
		Size: 14.6 MB (14602489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffc2a2e9a3a6c4d67ad5d2ab35ea7e1adeeaded5898320036a7a7f04156a2de2`  
		Last Modified: Tue, 09 Apr 2019 23:59:41 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcdc222d2d8e0820fce72abeb2283d14ead8c6b41112fd6a18379774a48782cd`  
		Last Modified: Tue, 09 Apr 2019 23:59:41 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:668bc841494da7d97a0951f7ed528d10075c04daeb39b038a02d172f7856b60e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17140707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69a810a8a06e9be50883a6eec89ec93dc992bccb888653d0f6f5ecdf2c1a65f9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 08:26:14 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 Apr 2019 08:26:16 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 10 Apr 2019 08:26:17 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 10 Apr 2019 08:26:17 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 10 Apr 2019 08:26:17 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 10 Apr 2019 08:26:58 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 10 Apr 2019 08:27:00 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 Apr 2019 08:27:00 GMT
VOLUME [/data]
# Wed, 10 Apr 2019 08:27:00 GMT
WORKDIR /data
# Wed, 10 Apr 2019 08:27:01 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 10 Apr 2019 08:27:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 08:27:02 GMT
EXPOSE 6379
# Wed, 10 Apr 2019 08:27:02 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cac72c52417597f37150f22f15904bd5df64bf389a18ebb8145b857f4da966a5`  
		Last Modified: Wed, 10 Apr 2019 08:27:48 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6db8b29787ef73ca4d0464c2c22edee9ca3e063a81cf9a8830b1ec5c8befc20`  
		Last Modified: Wed, 10 Apr 2019 08:27:48 GMT  
		Size: 405.3 KB (405287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d1b8efcf6bb926cffa540cbaf391a2b5a4cb2c2909ef482699ca42c5ca13ee1`  
		Last Modified: Wed, 10 Apr 2019 08:27:52 GMT  
		Size: 14.2 MB (14190151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f27870568a67c98d7f2fd1b39999b4b1b283d67c110fbc00393495ae02a8943`  
		Last Modified: Wed, 10 Apr 2019 08:27:48 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c715f8c9e15317612d670e62d5a34ced8850627792295c42b061aeb5751a23bf`  
		Last Modified: Wed, 10 Apr 2019 08:27:48 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-alpine` - linux; arm variant v7

```console
$ docker pull redis@sha256:bd9758298229750ec0613563b8ad0a7e990505bf9b7f74289024777a1eeb80ec
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16691575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f12a0c672a7ad12eebfd450fadb7f9801b245183b802cc18bd6dddbc5632ad7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 Apr 2019 11:57:47 GMT
ADD file:1a27b74f23795a1f205247dcd6eff48ac56f0b8f2afe0c358199a0b60f694861 in / 
# Wed, 10 Apr 2019 11:57:48 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 12:31:32 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 Apr 2019 12:31:35 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 10 Apr 2019 12:31:36 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 10 Apr 2019 12:31:37 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 10 Apr 2019 12:31:38 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 10 Apr 2019 12:32:24 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 10 Apr 2019 12:32:27 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 Apr 2019 12:32:27 GMT
VOLUME [/data]
# Wed, 10 Apr 2019 12:32:28 GMT
WORKDIR /data
# Wed, 10 Apr 2019 12:32:28 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 10 Apr 2019 12:32:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 12:32:30 GMT
EXPOSE 6379
# Wed, 10 Apr 2019 12:32:30 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:c2a5cdd4aa08146b4516cc95f6b461f2994250a819b3e6f75f23fa2a8c1b1744`  
		Last Modified: Wed, 10 Apr 2019 11:58:04 GMT  
		Size: 2.4 MB (2350757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f02904c22d1f59beea301a4e2c19f4b14edae521f98cd0cae4edec6c880c34bb`  
		Last Modified: Wed, 10 Apr 2019 12:33:35 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0132ad3f4069c0da06d221747600eb8c244a3bfcf23a05b129ab41c109b76640`  
		Last Modified: Wed, 10 Apr 2019 12:33:35 GMT  
		Size: 398.6 KB (398582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccd1fa1a3ff503e3849ba7b85a1268731b8a37909e632c077910b89d5f14f1c4`  
		Last Modified: Wed, 10 Apr 2019 12:33:39 GMT  
		Size: 13.9 MB (13940403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aed146897e3069648170d9f3d83c58d37b1c525e949cf1d4424957bd616c94b`  
		Last Modified: Wed, 10 Apr 2019 12:33:35 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6134f104361e7f2439ced2e4f476e4ff4b7031cabe2e3fdfa625f20d9562ba7`  
		Last Modified: Wed, 10 Apr 2019 12:33:35 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:6f9aab70b6a807954b377a0a4596ee2c024f57c1a63cce869a9146abbb74b87c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.6 MB (17604095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:107a7a2f46542d15554b68f73ad23cc0b5abbfca6cc879e26c24dd52627525ac`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 Apr 2019 08:49:11 GMT
ADD file:30e0a8ccdca70b20b8ce637f0ba5108157f4ba491447d20aafbe45d82392bd81 in / 
# Wed, 10 Apr 2019 08:49:12 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 09:30:47 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 Apr 2019 09:30:51 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 10 Apr 2019 09:30:51 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 10 Apr 2019 09:30:52 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 10 Apr 2019 09:30:53 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 10 Apr 2019 09:32:32 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 10 Apr 2019 09:32:34 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 Apr 2019 09:32:35 GMT
VOLUME [/data]
# Wed, 10 Apr 2019 09:32:36 GMT
WORKDIR /data
# Wed, 10 Apr 2019 09:32:37 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 10 Apr 2019 09:32:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 09:32:38 GMT
EXPOSE 6379
# Wed, 10 Apr 2019 09:32:39 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6f37394be673296a0fdc21b819c5df40431baf7d3af121bee451726dd1457493`  
		Last Modified: Wed, 10 Apr 2019 08:50:38 GMT  
		Size: 2.7 MB (2688778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd87357e3604d3d4278cd171c27e1f6eab0970cb1af16c2fd37a4df05d7fa114`  
		Last Modified: Wed, 10 Apr 2019 09:34:18 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3ed8d359e92c573c3aa65aa6bf63c31debc70eed441317642f91d442905b980`  
		Last Modified: Wed, 10 Apr 2019 09:34:19 GMT  
		Size: 405.2 KB (405228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d737f88f38956dce2665b67e52ea0e56b55e490b1a27454342dd86289aefec`  
		Last Modified: Wed, 10 Apr 2019 09:34:25 GMT  
		Size: 14.5 MB (14508323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9a62c4508f4096bc9c594bc955df3654878f2af55301b2e106848012f6f0087`  
		Last Modified: Wed, 10 Apr 2019 09:34:19 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4955611fe1ed5ecaef528e1260b632eb460b9664cb1ea80809e5694e2e90b61a`  
		Last Modified: Wed, 10 Apr 2019 09:34:19 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-alpine` - linux; 386

```console
$ docker pull redis@sha256:a80850d63514e18b9da7e3e31e0dd218d1b271292c2b8b876957b42854d9bf92
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17127766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a936b9cc965a5dbfbf988b02bee815e4b091ce96e8e098e710d62bddc09aa219`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 Apr 2019 10:38:55 GMT
ADD file:51f7bb95ef6cc3519317dcb7abbf6155e6bb7b73a17ad7d90cad7911e8a8933c in / 
# Wed, 10 Apr 2019 10:38:55 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 13:10:48 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 Apr 2019 13:10:49 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 10 Apr 2019 13:10:49 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 10 Apr 2019 13:10:49 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 10 Apr 2019 13:10:49 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 10 Apr 2019 13:11:52 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 10 Apr 2019 13:11:53 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 Apr 2019 13:11:53 GMT
VOLUME [/data]
# Wed, 10 Apr 2019 13:11:53 GMT
WORKDIR /data
# Wed, 10 Apr 2019 13:11:53 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 10 Apr 2019 13:11:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 13:11:54 GMT
EXPOSE 6379
# Wed, 10 Apr 2019 13:11:54 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:9a81e6a1a3b4f174d22173a96692c9aeffaefcd00f40607d508951a2b14d6f1f`  
		Last Modified: Wed, 10 Apr 2019 10:39:15 GMT  
		Size: 2.8 MB (2752162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b30efed26125f06596e1a58493943baf64ba49f78b66a0f10ea815430c3057`  
		Last Modified: Wed, 10 Apr 2019 13:13:00 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2e8a8f5562f29213b62563c0cb0612f50141b1e8f26c831a71a2be46703a387`  
		Last Modified: Wed, 10 Apr 2019 13:13:00 GMT  
		Size: 408.0 KB (408011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7fb5953abb7fffb527b97c1115b1b3abeb9347830903462fb2b3797e2e5a43b`  
		Last Modified: Wed, 10 Apr 2019 13:13:03 GMT  
		Size: 14.0 MB (13965829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bab5fa3f4af93735539dfefe3c87765cde5923466da353ce7e83ebe8805a662e`  
		Last Modified: Wed, 10 Apr 2019 13:13:00 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0f194f7b5c4038bff9343db96166ab70299afd5bd8f99567cec67932f5f56e9`  
		Last Modified: Wed, 10 Apr 2019 13:13:00 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:3fae93862754c27baa36e63c9d0e34b7f13466db1557d78dfc828ecde148ad71
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18615961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdedaf41839a738ad000d87d1e59d076ea332a695698f87a414c4cf8562abc89`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 Apr 2019 08:27:30 GMT
ADD file:c13c1c2b4e6d71924f570a910caf6a1756ea5a28a4017c7b11305e021eacd0ee in / 
# Wed, 10 Apr 2019 08:27:33 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 10:26:02 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 Apr 2019 10:26:09 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 10 Apr 2019 10:26:13 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 10 Apr 2019 10:26:16 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 10 Apr 2019 10:26:22 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 10 Apr 2019 10:27:22 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 10 Apr 2019 10:27:30 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 Apr 2019 10:27:34 GMT
VOLUME [/data]
# Wed, 10 Apr 2019 10:27:41 GMT
WORKDIR /data
# Wed, 10 Apr 2019 10:27:43 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 10 Apr 2019 10:27:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 10:27:55 GMT
EXPOSE 6379
# Wed, 10 Apr 2019 10:28:03 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:fe0f92a92ee06f38abf50fefd22331ac42262e3872ecd2d7ddfa7c24ab71a53a`  
		Last Modified: Wed, 10 Apr 2019 08:28:34 GMT  
		Size: 2.8 MB (2781020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81a3976b0f5f6d320d4e2c4b563bf1d516e9b3dbff3642de3ba2dfdc8aba06df`  
		Last Modified: Wed, 10 Apr 2019 10:30:51 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f552250dac1f95ee5efd4654d27d1b92081cd004b8c8357efb1d5a60bf6b1aa`  
		Last Modified: Wed, 10 Apr 2019 10:30:51 GMT  
		Size: 410.4 KB (410350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0896b2ad48e0d7fc0e9898981dbf4c11e860d203407bde6d575aa231671a85a2`  
		Last Modified: Wed, 10 Apr 2019 10:30:56 GMT  
		Size: 15.4 MB (15422757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49583b5366e690de3a5b14276f913af572cfc6bee7de3fa6cf5b048a5031538c`  
		Last Modified: Wed, 10 Apr 2019 10:30:51 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8c5f265664fe94e4b324c6ef63383c97dc8f6af89e1ae512938abae73191951`  
		Last Modified: Wed, 10 Apr 2019 10:30:51 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-alpine` - linux; s390x

```console
$ docker pull redis@sha256:1eb67ffe3d0167eb53d8a33e8a2eaa385c7ac8337f96e1e6397d110e0da8303d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17821115 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecc683be58697fd97857072de161c829167bdea75379ac52c61c773af81bf1ee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 Apr 2019 11:42:23 GMT
ADD file:ab106eb2cf4bf0e1ca7861a56dc24e44dd206fd3ae8d3587684324e5c11136f4 in / 
# Wed, 10 Apr 2019 11:42:23 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 14:22:12 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 Apr 2019 14:22:15 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 10 Apr 2019 14:22:16 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 10 Apr 2019 14:22:16 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 10 Apr 2019 14:22:17 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 10 Apr 2019 14:23:46 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 10 Apr 2019 14:23:50 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 Apr 2019 14:23:51 GMT
VOLUME [/data]
# Wed, 10 Apr 2019 14:23:52 GMT
WORKDIR /data
# Wed, 10 Apr 2019 14:23:53 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 10 Apr 2019 14:23:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 14:23:55 GMT
EXPOSE 6379
# Wed, 10 Apr 2019 14:23:56 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5b51e37a522c2e7cd3c67e8a3e5500b45189ea6698e9fdaed7f5d48282326633`  
		Last Modified: Wed, 10 Apr 2019 11:43:06 GMT  
		Size: 2.5 MB (2543326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e72810cb2904dec74b6a6ec5f4a983c700825faf21979eb2e7a360b42515f26`  
		Last Modified: Wed, 10 Apr 2019 14:26:58 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4816af0620533e2d07b1778a9f075eb91da554fb6e81c803e8fe455a6d9cadb`  
		Last Modified: Wed, 10 Apr 2019 14:26:59 GMT  
		Size: 407.9 KB (407873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daf166aeb7e683d13516e79a7a02f63c3f6a237e0f821b521394f21fffdca6c6`  
		Last Modified: Wed, 10 Apr 2019 14:27:06 GMT  
		Size: 14.9 MB (14868151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddca5358a6a73aaad90211e7f78d95b62fca2a0095375893ed5d11cd111a4d25`  
		Last Modified: Wed, 10 Apr 2019 14:26:58 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d16179b45b9f6d2b424b0ad5f77b5adbda66f123a9f37d5d38d128c6f243705d`  
		Last Modified: Wed, 10 Apr 2019 14:26:59 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5-alpine3.9`

```console
$ docker pull redis@sha256:ef67270b8bcb6b801a67d186ed16051520867b985e4f2f1233b510938dc55b22
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
$ docker pull redis@sha256:72c09617b38189123a9b360c8a1998a59be3af52759269d4c740397bd54a31f2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17764271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8eda26fcdab8d161a96a3ac0eaca47dcb4bb8995555e11bec43968738a17009`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Tue, 09 Apr 2019 23:56:52 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Tue, 09 Apr 2019 23:56:54 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Tue, 09 Apr 2019 23:56:54 GMT
ENV REDIS_VERSION=5.0.4
# Tue, 09 Apr 2019 23:56:54 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Tue, 09 Apr 2019 23:56:54 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Tue, 09 Apr 2019 23:58:23 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Tue, 09 Apr 2019 23:58:24 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 09 Apr 2019 23:58:25 GMT
VOLUME [/data]
# Tue, 09 Apr 2019 23:58:25 GMT
WORKDIR /data
# Tue, 09 Apr 2019 23:58:25 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Tue, 09 Apr 2019 23:58:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 Apr 2019 23:58:25 GMT
EXPOSE 6379
# Tue, 09 Apr 2019 23:58:25 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:542e0c4f2f182e0f9c8c3e8a9a4303f5478207940914c9a88232c829c4e74fcf`  
		Last Modified: Tue, 09 Apr 2019 23:59:41 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbf113c39f6550bbc31b5b985e138e40938b5902f154527a952cdd45b0868b11`  
		Last Modified: Tue, 09 Apr 2019 23:59:41 GMT  
		Size: 403.0 KB (403004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09158274ea6c254b2b668d48a19b58c2970251fb8fb4d5addacedf0897983b51`  
		Last Modified: Tue, 09 Apr 2019 23:59:44 GMT  
		Size: 14.6 MB (14602489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffc2a2e9a3a6c4d67ad5d2ab35ea7e1adeeaded5898320036a7a7f04156a2de2`  
		Last Modified: Tue, 09 Apr 2019 23:59:41 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcdc222d2d8e0820fce72abeb2283d14ead8c6b41112fd6a18379774a48782cd`  
		Last Modified: Tue, 09 Apr 2019 23:59:41 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-alpine3.9` - linux; arm variant v6

```console
$ docker pull redis@sha256:668bc841494da7d97a0951f7ed528d10075c04daeb39b038a02d172f7856b60e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17140707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69a810a8a06e9be50883a6eec89ec93dc992bccb888653d0f6f5ecdf2c1a65f9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 08:26:14 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 Apr 2019 08:26:16 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 10 Apr 2019 08:26:17 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 10 Apr 2019 08:26:17 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 10 Apr 2019 08:26:17 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 10 Apr 2019 08:26:58 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 10 Apr 2019 08:27:00 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 Apr 2019 08:27:00 GMT
VOLUME [/data]
# Wed, 10 Apr 2019 08:27:00 GMT
WORKDIR /data
# Wed, 10 Apr 2019 08:27:01 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 10 Apr 2019 08:27:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 08:27:02 GMT
EXPOSE 6379
# Wed, 10 Apr 2019 08:27:02 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cac72c52417597f37150f22f15904bd5df64bf389a18ebb8145b857f4da966a5`  
		Last Modified: Wed, 10 Apr 2019 08:27:48 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6db8b29787ef73ca4d0464c2c22edee9ca3e063a81cf9a8830b1ec5c8befc20`  
		Last Modified: Wed, 10 Apr 2019 08:27:48 GMT  
		Size: 405.3 KB (405287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d1b8efcf6bb926cffa540cbaf391a2b5a4cb2c2909ef482699ca42c5ca13ee1`  
		Last Modified: Wed, 10 Apr 2019 08:27:52 GMT  
		Size: 14.2 MB (14190151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f27870568a67c98d7f2fd1b39999b4b1b283d67c110fbc00393495ae02a8943`  
		Last Modified: Wed, 10 Apr 2019 08:27:48 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c715f8c9e15317612d670e62d5a34ced8850627792295c42b061aeb5751a23bf`  
		Last Modified: Wed, 10 Apr 2019 08:27:48 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-alpine3.9` - linux; arm variant v7

```console
$ docker pull redis@sha256:bd9758298229750ec0613563b8ad0a7e990505bf9b7f74289024777a1eeb80ec
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16691575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f12a0c672a7ad12eebfd450fadb7f9801b245183b802cc18bd6dddbc5632ad7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 Apr 2019 11:57:47 GMT
ADD file:1a27b74f23795a1f205247dcd6eff48ac56f0b8f2afe0c358199a0b60f694861 in / 
# Wed, 10 Apr 2019 11:57:48 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 12:31:32 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 Apr 2019 12:31:35 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 10 Apr 2019 12:31:36 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 10 Apr 2019 12:31:37 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 10 Apr 2019 12:31:38 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 10 Apr 2019 12:32:24 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 10 Apr 2019 12:32:27 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 Apr 2019 12:32:27 GMT
VOLUME [/data]
# Wed, 10 Apr 2019 12:32:28 GMT
WORKDIR /data
# Wed, 10 Apr 2019 12:32:28 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 10 Apr 2019 12:32:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 12:32:30 GMT
EXPOSE 6379
# Wed, 10 Apr 2019 12:32:30 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:c2a5cdd4aa08146b4516cc95f6b461f2994250a819b3e6f75f23fa2a8c1b1744`  
		Last Modified: Wed, 10 Apr 2019 11:58:04 GMT  
		Size: 2.4 MB (2350757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f02904c22d1f59beea301a4e2c19f4b14edae521f98cd0cae4edec6c880c34bb`  
		Last Modified: Wed, 10 Apr 2019 12:33:35 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0132ad3f4069c0da06d221747600eb8c244a3bfcf23a05b129ab41c109b76640`  
		Last Modified: Wed, 10 Apr 2019 12:33:35 GMT  
		Size: 398.6 KB (398582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccd1fa1a3ff503e3849ba7b85a1268731b8a37909e632c077910b89d5f14f1c4`  
		Last Modified: Wed, 10 Apr 2019 12:33:39 GMT  
		Size: 13.9 MB (13940403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aed146897e3069648170d9f3d83c58d37b1c525e949cf1d4424957bd616c94b`  
		Last Modified: Wed, 10 Apr 2019 12:33:35 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6134f104361e7f2439ced2e4f476e4ff4b7031cabe2e3fdfa625f20d9562ba7`  
		Last Modified: Wed, 10 Apr 2019 12:33:35 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-alpine3.9` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:6f9aab70b6a807954b377a0a4596ee2c024f57c1a63cce869a9146abbb74b87c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.6 MB (17604095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:107a7a2f46542d15554b68f73ad23cc0b5abbfca6cc879e26c24dd52627525ac`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 Apr 2019 08:49:11 GMT
ADD file:30e0a8ccdca70b20b8ce637f0ba5108157f4ba491447d20aafbe45d82392bd81 in / 
# Wed, 10 Apr 2019 08:49:12 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 09:30:47 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 Apr 2019 09:30:51 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 10 Apr 2019 09:30:51 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 10 Apr 2019 09:30:52 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 10 Apr 2019 09:30:53 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 10 Apr 2019 09:32:32 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 10 Apr 2019 09:32:34 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 Apr 2019 09:32:35 GMT
VOLUME [/data]
# Wed, 10 Apr 2019 09:32:36 GMT
WORKDIR /data
# Wed, 10 Apr 2019 09:32:37 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 10 Apr 2019 09:32:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 09:32:38 GMT
EXPOSE 6379
# Wed, 10 Apr 2019 09:32:39 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6f37394be673296a0fdc21b819c5df40431baf7d3af121bee451726dd1457493`  
		Last Modified: Wed, 10 Apr 2019 08:50:38 GMT  
		Size: 2.7 MB (2688778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd87357e3604d3d4278cd171c27e1f6eab0970cb1af16c2fd37a4df05d7fa114`  
		Last Modified: Wed, 10 Apr 2019 09:34:18 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3ed8d359e92c573c3aa65aa6bf63c31debc70eed441317642f91d442905b980`  
		Last Modified: Wed, 10 Apr 2019 09:34:19 GMT  
		Size: 405.2 KB (405228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d737f88f38956dce2665b67e52ea0e56b55e490b1a27454342dd86289aefec`  
		Last Modified: Wed, 10 Apr 2019 09:34:25 GMT  
		Size: 14.5 MB (14508323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9a62c4508f4096bc9c594bc955df3654878f2af55301b2e106848012f6f0087`  
		Last Modified: Wed, 10 Apr 2019 09:34:19 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4955611fe1ed5ecaef528e1260b632eb460b9664cb1ea80809e5694e2e90b61a`  
		Last Modified: Wed, 10 Apr 2019 09:34:19 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-alpine3.9` - linux; 386

```console
$ docker pull redis@sha256:a80850d63514e18b9da7e3e31e0dd218d1b271292c2b8b876957b42854d9bf92
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17127766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a936b9cc965a5dbfbf988b02bee815e4b091ce96e8e098e710d62bddc09aa219`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 Apr 2019 10:38:55 GMT
ADD file:51f7bb95ef6cc3519317dcb7abbf6155e6bb7b73a17ad7d90cad7911e8a8933c in / 
# Wed, 10 Apr 2019 10:38:55 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 13:10:48 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 Apr 2019 13:10:49 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 10 Apr 2019 13:10:49 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 10 Apr 2019 13:10:49 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 10 Apr 2019 13:10:49 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 10 Apr 2019 13:11:52 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 10 Apr 2019 13:11:53 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 Apr 2019 13:11:53 GMT
VOLUME [/data]
# Wed, 10 Apr 2019 13:11:53 GMT
WORKDIR /data
# Wed, 10 Apr 2019 13:11:53 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 10 Apr 2019 13:11:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 13:11:54 GMT
EXPOSE 6379
# Wed, 10 Apr 2019 13:11:54 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:9a81e6a1a3b4f174d22173a96692c9aeffaefcd00f40607d508951a2b14d6f1f`  
		Last Modified: Wed, 10 Apr 2019 10:39:15 GMT  
		Size: 2.8 MB (2752162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b30efed26125f06596e1a58493943baf64ba49f78b66a0f10ea815430c3057`  
		Last Modified: Wed, 10 Apr 2019 13:13:00 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2e8a8f5562f29213b62563c0cb0612f50141b1e8f26c831a71a2be46703a387`  
		Last Modified: Wed, 10 Apr 2019 13:13:00 GMT  
		Size: 408.0 KB (408011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7fb5953abb7fffb527b97c1115b1b3abeb9347830903462fb2b3797e2e5a43b`  
		Last Modified: Wed, 10 Apr 2019 13:13:03 GMT  
		Size: 14.0 MB (13965829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bab5fa3f4af93735539dfefe3c87765cde5923466da353ce7e83ebe8805a662e`  
		Last Modified: Wed, 10 Apr 2019 13:13:00 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0f194f7b5c4038bff9343db96166ab70299afd5bd8f99567cec67932f5f56e9`  
		Last Modified: Wed, 10 Apr 2019 13:13:00 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-alpine3.9` - linux; ppc64le

```console
$ docker pull redis@sha256:3fae93862754c27baa36e63c9d0e34b7f13466db1557d78dfc828ecde148ad71
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18615961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdedaf41839a738ad000d87d1e59d076ea332a695698f87a414c4cf8562abc89`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 Apr 2019 08:27:30 GMT
ADD file:c13c1c2b4e6d71924f570a910caf6a1756ea5a28a4017c7b11305e021eacd0ee in / 
# Wed, 10 Apr 2019 08:27:33 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 10:26:02 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 Apr 2019 10:26:09 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 10 Apr 2019 10:26:13 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 10 Apr 2019 10:26:16 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 10 Apr 2019 10:26:22 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 10 Apr 2019 10:27:22 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 10 Apr 2019 10:27:30 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 Apr 2019 10:27:34 GMT
VOLUME [/data]
# Wed, 10 Apr 2019 10:27:41 GMT
WORKDIR /data
# Wed, 10 Apr 2019 10:27:43 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 10 Apr 2019 10:27:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 10:27:55 GMT
EXPOSE 6379
# Wed, 10 Apr 2019 10:28:03 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:fe0f92a92ee06f38abf50fefd22331ac42262e3872ecd2d7ddfa7c24ab71a53a`  
		Last Modified: Wed, 10 Apr 2019 08:28:34 GMT  
		Size: 2.8 MB (2781020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81a3976b0f5f6d320d4e2c4b563bf1d516e9b3dbff3642de3ba2dfdc8aba06df`  
		Last Modified: Wed, 10 Apr 2019 10:30:51 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f552250dac1f95ee5efd4654d27d1b92081cd004b8c8357efb1d5a60bf6b1aa`  
		Last Modified: Wed, 10 Apr 2019 10:30:51 GMT  
		Size: 410.4 KB (410350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0896b2ad48e0d7fc0e9898981dbf4c11e860d203407bde6d575aa231671a85a2`  
		Last Modified: Wed, 10 Apr 2019 10:30:56 GMT  
		Size: 15.4 MB (15422757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49583b5366e690de3a5b14276f913af572cfc6bee7de3fa6cf5b048a5031538c`  
		Last Modified: Wed, 10 Apr 2019 10:30:51 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8c5f265664fe94e4b324c6ef63383c97dc8f6af89e1ae512938abae73191951`  
		Last Modified: Wed, 10 Apr 2019 10:30:51 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-alpine3.9` - linux; s390x

```console
$ docker pull redis@sha256:1eb67ffe3d0167eb53d8a33e8a2eaa385c7ac8337f96e1e6397d110e0da8303d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17821115 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecc683be58697fd97857072de161c829167bdea75379ac52c61c773af81bf1ee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 Apr 2019 11:42:23 GMT
ADD file:ab106eb2cf4bf0e1ca7861a56dc24e44dd206fd3ae8d3587684324e5c11136f4 in / 
# Wed, 10 Apr 2019 11:42:23 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 14:22:12 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 Apr 2019 14:22:15 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 10 Apr 2019 14:22:16 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 10 Apr 2019 14:22:16 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 10 Apr 2019 14:22:17 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 10 Apr 2019 14:23:46 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 10 Apr 2019 14:23:50 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 Apr 2019 14:23:51 GMT
VOLUME [/data]
# Wed, 10 Apr 2019 14:23:52 GMT
WORKDIR /data
# Wed, 10 Apr 2019 14:23:53 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 10 Apr 2019 14:23:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 14:23:55 GMT
EXPOSE 6379
# Wed, 10 Apr 2019 14:23:56 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5b51e37a522c2e7cd3c67e8a3e5500b45189ea6698e9fdaed7f5d48282326633`  
		Last Modified: Wed, 10 Apr 2019 11:43:06 GMT  
		Size: 2.5 MB (2543326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e72810cb2904dec74b6a6ec5f4a983c700825faf21979eb2e7a360b42515f26`  
		Last Modified: Wed, 10 Apr 2019 14:26:58 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4816af0620533e2d07b1778a9f075eb91da554fb6e81c803e8fe455a6d9cadb`  
		Last Modified: Wed, 10 Apr 2019 14:26:59 GMT  
		Size: 407.9 KB (407873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daf166aeb7e683d13516e79a7a02f63c3f6a237e0f821b521394f21fffdca6c6`  
		Last Modified: Wed, 10 Apr 2019 14:27:06 GMT  
		Size: 14.9 MB (14868151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddca5358a6a73aaad90211e7f78d95b62fca2a0095375893ed5d11cd111a4d25`  
		Last Modified: Wed, 10 Apr 2019 14:26:58 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d16179b45b9f6d2b424b0ad5f77b5adbda66f123a9f37d5d38d128c6f243705d`  
		Last Modified: Wed, 10 Apr 2019 14:26:59 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5-stretch`

```console
$ docker pull redis@sha256:b3029915d55726bf33afe99f44a0e982be14a673e0a696f03769b4a8a249cf68
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
$ docker pull redis@sha256:09a573fa229a6208414163d419d4e116e34cc3851bc3e3d63c1e6a60825c09c3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.3 MB (31339669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c337d5ec7522ea787542c7c4cefe7d3ee5c3ba8d3ef01d733e8aaee0ff5f4ab`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Mar 2019 12:07:48 GMT
ADD file:6bf06125d936ccaf67981470df5ef6b9bd5dee3c0ef0e042a448fc60bb02f191 in / 
# Wed, 27 Mar 2019 12:07:49 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 15:20:43 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 15:20:44 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 15:21:25 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 15:21:25 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 27 Mar 2019 15:21:26 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 27 Mar 2019 15:21:26 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 27 Mar 2019 15:22:30 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 15:22:33 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 15:22:34 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 15:22:34 GMT
WORKDIR /data
# Wed, 27 Mar 2019 15:22:35 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 15:22:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 15:22:36 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 15:22:37 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:fac132c5d16f670820c8c4ae332bd663c2ff856e9af86b2b23a201db263d851e`  
		Last Modified: Wed, 27 Mar 2019 12:13:15 GMT  
		Size: 19.3 MB (19282442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e2fe4e656b4ef2c65b13804ba160b7e965946dfa62ac428ae2e06c6be52e805`  
		Last Modified: Wed, 27 Mar 2019 15:24:02 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9425121a58ef3107c6a89df6558f6a58f7894a6ad37ef27fb928e53cb4004556`  
		Last Modified: Wed, 27 Mar 2019 15:24:03 GMT  
		Size: 915.9 KB (915851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da14e123dcb0661155a81c70a90bee81219eff6a3938239f5cc017f94002ceaf`  
		Last Modified: Wed, 27 Mar 2019 15:24:07 GMT  
		Size: 11.1 MB (11139093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7badf93016bec7cff427666144e15d4acb03120561649afaba03f3e0c82e13fd`  
		Last Modified: Wed, 27 Mar 2019 15:24:02 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d4f4e75a3dd622cfc1d829060709821ae6e597df6bee22e4ab7a7d3f1466ee`  
		Last Modified: Wed, 27 Mar 2019 15:24:03 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-stretch` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:1fd6b4b4a89e65e4a5d8b53dbd5863c81bec1256b2b2d4de8542851903aa6a26
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32834543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3982a09544e6d4c493b07353597a8c53ea7d5568da29f05d0c9ce03c6b2d0bf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:46 GMT
ADD file:9db7760cb1c28ef0cd3fa9ee9d0f528d2bcfe80b1c3973daa9f87e30b2047102 in / 
# Wed, 27 Mar 2019 08:47:47 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:09:11 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 12:09:12 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 12:11:14 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 12:11:15 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 27 Mar 2019 12:11:16 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 27 Mar 2019 12:11:17 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 27 Mar 2019 12:13:50 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 12:13:52 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 12:13:53 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 12:13:54 GMT
WORKDIR /data
# Wed, 27 Mar 2019 12:13:55 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 12:13:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 12:13:59 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 12:14:02 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:007027d142c80b166a004bc7265c04036b80df438ac408f1a947e05c581b418e`  
		Last Modified: Wed, 27 Mar 2019 08:52:56 GMT  
		Size: 20.3 MB (20340179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf60f2128f3195c471ec3689b8be025149dcff169970e8d8968c4864c282c8cd`  
		Last Modified: Wed, 27 Mar 2019 12:18:10 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcf7593f1ca581039b8fd820fbd9a7b8dabbf87cb88ae708b921ab5d18bee68c`  
		Last Modified: Wed, 27 Mar 2019 12:18:10 GMT  
		Size: 908.1 KB (908060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3cbddd935987c1549bc21b22bd4cccea4ccbc979b82ca563ecc7eb57b89d00f`  
		Last Modified: Wed, 27 Mar 2019 12:18:15 GMT  
		Size: 11.6 MB (11584046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2da2a323648ee0bbdd0b8beb16ce04363a5d790d90858bba40fe2a5a7cb4fd3`  
		Last Modified: Wed, 27 Mar 2019 12:18:09 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86bf7471abe33a96059db397ae2346398af968e52349393336745d3c179e594d`  
		Last Modified: Wed, 27 Mar 2019 12:18:09 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-stretch` - linux; 386

```console
$ docker pull redis@sha256:f0584aac9b21b9ed160f44d54d78d9445244f638a84e5695af7372c399cd8f00
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35237407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fea2c87a1b74a70ff96f8624ed14e97c95e551f287d399b2ce406cbb8899a869`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Mar 2019 10:43:41 GMT
ADD file:13e40d14dbdd0814b4fb7b2a378757164620517fec383739c87747c27e07d8e7 in / 
# Wed, 27 Mar 2019 10:43:41 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 16:13:05 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 16:13:06 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 16:13:20 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 16:13:21 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 27 Mar 2019 16:13:21 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 27 Mar 2019 16:13:21 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 27 Mar 2019 16:14:25 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 16:14:26 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 16:14:26 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 16:14:26 GMT
WORKDIR /data
# Wed, 27 Mar 2019 16:14:26 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 16:14:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 16:14:27 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 16:14:27 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:a5ba78e1989e52ae238c3f225934c1a2dee4dfaa4667abd6f2e0717b78159472`  
		Last Modified: Wed, 27 Mar 2019 10:49:24 GMT  
		Size: 23.1 MB (23125745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcc0e5b68b9dbbba70332f0cad07bf511d38a873ec0d6c82b4c06e897e924689`  
		Last Modified: Wed, 27 Mar 2019 16:15:34 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2a0f34b494237693bbdb853e52e9727e46f0f5a30d022759bcb9cc90710cb1e`  
		Last Modified: Wed, 27 Mar 2019 16:15:34 GMT  
		Size: 920.2 KB (920184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6987feeb4ac2efbd1dcbc2347dc8ac0fe3d2056dcb5e3ec70f8808c58b6d6d9f`  
		Last Modified: Wed, 27 Mar 2019 16:15:36 GMT  
		Size: 11.2 MB (11189231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:768442472b87e72bce877687c423de8d25aff318cf91e1866cc44e273b863942`  
		Last Modified: Wed, 27 Mar 2019 16:15:33 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d0f2fd77a4a7f48fcad100c95795f19dde4c993323e84bf1962240601f45755`  
		Last Modified: Wed, 27 Mar 2019 16:15:33 GMT  
		Size: 418.0 B  
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
$ docker pull redis@sha256:ef67270b8bcb6b801a67d186ed16051520867b985e4f2f1233b510938dc55b22
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
$ docker pull redis@sha256:72c09617b38189123a9b360c8a1998a59be3af52759269d4c740397bd54a31f2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17764271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8eda26fcdab8d161a96a3ac0eaca47dcb4bb8995555e11bec43968738a17009`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Tue, 09 Apr 2019 23:56:52 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Tue, 09 Apr 2019 23:56:54 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Tue, 09 Apr 2019 23:56:54 GMT
ENV REDIS_VERSION=5.0.4
# Tue, 09 Apr 2019 23:56:54 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Tue, 09 Apr 2019 23:56:54 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Tue, 09 Apr 2019 23:58:23 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Tue, 09 Apr 2019 23:58:24 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 09 Apr 2019 23:58:25 GMT
VOLUME [/data]
# Tue, 09 Apr 2019 23:58:25 GMT
WORKDIR /data
# Tue, 09 Apr 2019 23:58:25 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Tue, 09 Apr 2019 23:58:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 Apr 2019 23:58:25 GMT
EXPOSE 6379
# Tue, 09 Apr 2019 23:58:25 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:542e0c4f2f182e0f9c8c3e8a9a4303f5478207940914c9a88232c829c4e74fcf`  
		Last Modified: Tue, 09 Apr 2019 23:59:41 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbf113c39f6550bbc31b5b985e138e40938b5902f154527a952cdd45b0868b11`  
		Last Modified: Tue, 09 Apr 2019 23:59:41 GMT  
		Size: 403.0 KB (403004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09158274ea6c254b2b668d48a19b58c2970251fb8fb4d5addacedf0897983b51`  
		Last Modified: Tue, 09 Apr 2019 23:59:44 GMT  
		Size: 14.6 MB (14602489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffc2a2e9a3a6c4d67ad5d2ab35ea7e1adeeaded5898320036a7a7f04156a2de2`  
		Last Modified: Tue, 09 Apr 2019 23:59:41 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcdc222d2d8e0820fce72abeb2283d14ead8c6b41112fd6a18379774a48782cd`  
		Last Modified: Tue, 09 Apr 2019 23:59:41 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:668bc841494da7d97a0951f7ed528d10075c04daeb39b038a02d172f7856b60e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17140707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69a810a8a06e9be50883a6eec89ec93dc992bccb888653d0f6f5ecdf2c1a65f9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 08:26:14 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 Apr 2019 08:26:16 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 10 Apr 2019 08:26:17 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 10 Apr 2019 08:26:17 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 10 Apr 2019 08:26:17 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 10 Apr 2019 08:26:58 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 10 Apr 2019 08:27:00 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 Apr 2019 08:27:00 GMT
VOLUME [/data]
# Wed, 10 Apr 2019 08:27:00 GMT
WORKDIR /data
# Wed, 10 Apr 2019 08:27:01 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 10 Apr 2019 08:27:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 08:27:02 GMT
EXPOSE 6379
# Wed, 10 Apr 2019 08:27:02 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cac72c52417597f37150f22f15904bd5df64bf389a18ebb8145b857f4da966a5`  
		Last Modified: Wed, 10 Apr 2019 08:27:48 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6db8b29787ef73ca4d0464c2c22edee9ca3e063a81cf9a8830b1ec5c8befc20`  
		Last Modified: Wed, 10 Apr 2019 08:27:48 GMT  
		Size: 405.3 KB (405287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d1b8efcf6bb926cffa540cbaf391a2b5a4cb2c2909ef482699ca42c5ca13ee1`  
		Last Modified: Wed, 10 Apr 2019 08:27:52 GMT  
		Size: 14.2 MB (14190151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f27870568a67c98d7f2fd1b39999b4b1b283d67c110fbc00393495ae02a8943`  
		Last Modified: Wed, 10 Apr 2019 08:27:48 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c715f8c9e15317612d670e62d5a34ced8850627792295c42b061aeb5751a23bf`  
		Last Modified: Wed, 10 Apr 2019 08:27:48 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine` - linux; arm variant v7

```console
$ docker pull redis@sha256:bd9758298229750ec0613563b8ad0a7e990505bf9b7f74289024777a1eeb80ec
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16691575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f12a0c672a7ad12eebfd450fadb7f9801b245183b802cc18bd6dddbc5632ad7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 Apr 2019 11:57:47 GMT
ADD file:1a27b74f23795a1f205247dcd6eff48ac56f0b8f2afe0c358199a0b60f694861 in / 
# Wed, 10 Apr 2019 11:57:48 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 12:31:32 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 Apr 2019 12:31:35 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 10 Apr 2019 12:31:36 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 10 Apr 2019 12:31:37 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 10 Apr 2019 12:31:38 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 10 Apr 2019 12:32:24 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 10 Apr 2019 12:32:27 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 Apr 2019 12:32:27 GMT
VOLUME [/data]
# Wed, 10 Apr 2019 12:32:28 GMT
WORKDIR /data
# Wed, 10 Apr 2019 12:32:28 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 10 Apr 2019 12:32:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 12:32:30 GMT
EXPOSE 6379
# Wed, 10 Apr 2019 12:32:30 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:c2a5cdd4aa08146b4516cc95f6b461f2994250a819b3e6f75f23fa2a8c1b1744`  
		Last Modified: Wed, 10 Apr 2019 11:58:04 GMT  
		Size: 2.4 MB (2350757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f02904c22d1f59beea301a4e2c19f4b14edae521f98cd0cae4edec6c880c34bb`  
		Last Modified: Wed, 10 Apr 2019 12:33:35 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0132ad3f4069c0da06d221747600eb8c244a3bfcf23a05b129ab41c109b76640`  
		Last Modified: Wed, 10 Apr 2019 12:33:35 GMT  
		Size: 398.6 KB (398582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccd1fa1a3ff503e3849ba7b85a1268731b8a37909e632c077910b89d5f14f1c4`  
		Last Modified: Wed, 10 Apr 2019 12:33:39 GMT  
		Size: 13.9 MB (13940403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aed146897e3069648170d9f3d83c58d37b1c525e949cf1d4424957bd616c94b`  
		Last Modified: Wed, 10 Apr 2019 12:33:35 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6134f104361e7f2439ced2e4f476e4ff4b7031cabe2e3fdfa625f20d9562ba7`  
		Last Modified: Wed, 10 Apr 2019 12:33:35 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:6f9aab70b6a807954b377a0a4596ee2c024f57c1a63cce869a9146abbb74b87c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.6 MB (17604095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:107a7a2f46542d15554b68f73ad23cc0b5abbfca6cc879e26c24dd52627525ac`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 Apr 2019 08:49:11 GMT
ADD file:30e0a8ccdca70b20b8ce637f0ba5108157f4ba491447d20aafbe45d82392bd81 in / 
# Wed, 10 Apr 2019 08:49:12 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 09:30:47 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 Apr 2019 09:30:51 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 10 Apr 2019 09:30:51 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 10 Apr 2019 09:30:52 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 10 Apr 2019 09:30:53 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 10 Apr 2019 09:32:32 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 10 Apr 2019 09:32:34 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 Apr 2019 09:32:35 GMT
VOLUME [/data]
# Wed, 10 Apr 2019 09:32:36 GMT
WORKDIR /data
# Wed, 10 Apr 2019 09:32:37 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 10 Apr 2019 09:32:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 09:32:38 GMT
EXPOSE 6379
# Wed, 10 Apr 2019 09:32:39 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6f37394be673296a0fdc21b819c5df40431baf7d3af121bee451726dd1457493`  
		Last Modified: Wed, 10 Apr 2019 08:50:38 GMT  
		Size: 2.7 MB (2688778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd87357e3604d3d4278cd171c27e1f6eab0970cb1af16c2fd37a4df05d7fa114`  
		Last Modified: Wed, 10 Apr 2019 09:34:18 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3ed8d359e92c573c3aa65aa6bf63c31debc70eed441317642f91d442905b980`  
		Last Modified: Wed, 10 Apr 2019 09:34:19 GMT  
		Size: 405.2 KB (405228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d737f88f38956dce2665b67e52ea0e56b55e490b1a27454342dd86289aefec`  
		Last Modified: Wed, 10 Apr 2019 09:34:25 GMT  
		Size: 14.5 MB (14508323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9a62c4508f4096bc9c594bc955df3654878f2af55301b2e106848012f6f0087`  
		Last Modified: Wed, 10 Apr 2019 09:34:19 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4955611fe1ed5ecaef528e1260b632eb460b9664cb1ea80809e5694e2e90b61a`  
		Last Modified: Wed, 10 Apr 2019 09:34:19 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine` - linux; 386

```console
$ docker pull redis@sha256:a80850d63514e18b9da7e3e31e0dd218d1b271292c2b8b876957b42854d9bf92
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17127766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a936b9cc965a5dbfbf988b02bee815e4b091ce96e8e098e710d62bddc09aa219`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 Apr 2019 10:38:55 GMT
ADD file:51f7bb95ef6cc3519317dcb7abbf6155e6bb7b73a17ad7d90cad7911e8a8933c in / 
# Wed, 10 Apr 2019 10:38:55 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 13:10:48 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 Apr 2019 13:10:49 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 10 Apr 2019 13:10:49 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 10 Apr 2019 13:10:49 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 10 Apr 2019 13:10:49 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 10 Apr 2019 13:11:52 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 10 Apr 2019 13:11:53 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 Apr 2019 13:11:53 GMT
VOLUME [/data]
# Wed, 10 Apr 2019 13:11:53 GMT
WORKDIR /data
# Wed, 10 Apr 2019 13:11:53 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 10 Apr 2019 13:11:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 13:11:54 GMT
EXPOSE 6379
# Wed, 10 Apr 2019 13:11:54 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:9a81e6a1a3b4f174d22173a96692c9aeffaefcd00f40607d508951a2b14d6f1f`  
		Last Modified: Wed, 10 Apr 2019 10:39:15 GMT  
		Size: 2.8 MB (2752162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b30efed26125f06596e1a58493943baf64ba49f78b66a0f10ea815430c3057`  
		Last Modified: Wed, 10 Apr 2019 13:13:00 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2e8a8f5562f29213b62563c0cb0612f50141b1e8f26c831a71a2be46703a387`  
		Last Modified: Wed, 10 Apr 2019 13:13:00 GMT  
		Size: 408.0 KB (408011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7fb5953abb7fffb527b97c1115b1b3abeb9347830903462fb2b3797e2e5a43b`  
		Last Modified: Wed, 10 Apr 2019 13:13:03 GMT  
		Size: 14.0 MB (13965829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bab5fa3f4af93735539dfefe3c87765cde5923466da353ce7e83ebe8805a662e`  
		Last Modified: Wed, 10 Apr 2019 13:13:00 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0f194f7b5c4038bff9343db96166ab70299afd5bd8f99567cec67932f5f56e9`  
		Last Modified: Wed, 10 Apr 2019 13:13:00 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:3fae93862754c27baa36e63c9d0e34b7f13466db1557d78dfc828ecde148ad71
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18615961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdedaf41839a738ad000d87d1e59d076ea332a695698f87a414c4cf8562abc89`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 Apr 2019 08:27:30 GMT
ADD file:c13c1c2b4e6d71924f570a910caf6a1756ea5a28a4017c7b11305e021eacd0ee in / 
# Wed, 10 Apr 2019 08:27:33 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 10:26:02 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 Apr 2019 10:26:09 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 10 Apr 2019 10:26:13 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 10 Apr 2019 10:26:16 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 10 Apr 2019 10:26:22 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 10 Apr 2019 10:27:22 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 10 Apr 2019 10:27:30 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 Apr 2019 10:27:34 GMT
VOLUME [/data]
# Wed, 10 Apr 2019 10:27:41 GMT
WORKDIR /data
# Wed, 10 Apr 2019 10:27:43 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 10 Apr 2019 10:27:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 10:27:55 GMT
EXPOSE 6379
# Wed, 10 Apr 2019 10:28:03 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:fe0f92a92ee06f38abf50fefd22331ac42262e3872ecd2d7ddfa7c24ab71a53a`  
		Last Modified: Wed, 10 Apr 2019 08:28:34 GMT  
		Size: 2.8 MB (2781020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81a3976b0f5f6d320d4e2c4b563bf1d516e9b3dbff3642de3ba2dfdc8aba06df`  
		Last Modified: Wed, 10 Apr 2019 10:30:51 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f552250dac1f95ee5efd4654d27d1b92081cd004b8c8357efb1d5a60bf6b1aa`  
		Last Modified: Wed, 10 Apr 2019 10:30:51 GMT  
		Size: 410.4 KB (410350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0896b2ad48e0d7fc0e9898981dbf4c11e860d203407bde6d575aa231671a85a2`  
		Last Modified: Wed, 10 Apr 2019 10:30:56 GMT  
		Size: 15.4 MB (15422757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49583b5366e690de3a5b14276f913af572cfc6bee7de3fa6cf5b048a5031538c`  
		Last Modified: Wed, 10 Apr 2019 10:30:51 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8c5f265664fe94e4b324c6ef63383c97dc8f6af89e1ae512938abae73191951`  
		Last Modified: Wed, 10 Apr 2019 10:30:51 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine` - linux; s390x

```console
$ docker pull redis@sha256:1eb67ffe3d0167eb53d8a33e8a2eaa385c7ac8337f96e1e6397d110e0da8303d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17821115 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecc683be58697fd97857072de161c829167bdea75379ac52c61c773af81bf1ee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 Apr 2019 11:42:23 GMT
ADD file:ab106eb2cf4bf0e1ca7861a56dc24e44dd206fd3ae8d3587684324e5c11136f4 in / 
# Wed, 10 Apr 2019 11:42:23 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 14:22:12 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 Apr 2019 14:22:15 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 10 Apr 2019 14:22:16 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 10 Apr 2019 14:22:16 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 10 Apr 2019 14:22:17 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 10 Apr 2019 14:23:46 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 10 Apr 2019 14:23:50 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 Apr 2019 14:23:51 GMT
VOLUME [/data]
# Wed, 10 Apr 2019 14:23:52 GMT
WORKDIR /data
# Wed, 10 Apr 2019 14:23:53 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 10 Apr 2019 14:23:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 14:23:55 GMT
EXPOSE 6379
# Wed, 10 Apr 2019 14:23:56 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5b51e37a522c2e7cd3c67e8a3e5500b45189ea6698e9fdaed7f5d48282326633`  
		Last Modified: Wed, 10 Apr 2019 11:43:06 GMT  
		Size: 2.5 MB (2543326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e72810cb2904dec74b6a6ec5f4a983c700825faf21979eb2e7a360b42515f26`  
		Last Modified: Wed, 10 Apr 2019 14:26:58 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4816af0620533e2d07b1778a9f075eb91da554fb6e81c803e8fe455a6d9cadb`  
		Last Modified: Wed, 10 Apr 2019 14:26:59 GMT  
		Size: 407.9 KB (407873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daf166aeb7e683d13516e79a7a02f63c3f6a237e0f821b521394f21fffdca6c6`  
		Last Modified: Wed, 10 Apr 2019 14:27:06 GMT  
		Size: 14.9 MB (14868151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddca5358a6a73aaad90211e7f78d95b62fca2a0095375893ed5d11cd111a4d25`  
		Last Modified: Wed, 10 Apr 2019 14:26:58 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d16179b45b9f6d2b424b0ad5f77b5adbda66f123a9f37d5d38d128c6f243705d`  
		Last Modified: Wed, 10 Apr 2019 14:26:59 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:alpine3.9`

```console
$ docker pull redis@sha256:ef67270b8bcb6b801a67d186ed16051520867b985e4f2f1233b510938dc55b22
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
$ docker pull redis@sha256:72c09617b38189123a9b360c8a1998a59be3af52759269d4c740397bd54a31f2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17764271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8eda26fcdab8d161a96a3ac0eaca47dcb4bb8995555e11bec43968738a17009`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Tue, 09 Apr 2019 23:56:52 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Tue, 09 Apr 2019 23:56:54 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Tue, 09 Apr 2019 23:56:54 GMT
ENV REDIS_VERSION=5.0.4
# Tue, 09 Apr 2019 23:56:54 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Tue, 09 Apr 2019 23:56:54 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Tue, 09 Apr 2019 23:58:23 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Tue, 09 Apr 2019 23:58:24 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 09 Apr 2019 23:58:25 GMT
VOLUME [/data]
# Tue, 09 Apr 2019 23:58:25 GMT
WORKDIR /data
# Tue, 09 Apr 2019 23:58:25 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Tue, 09 Apr 2019 23:58:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 Apr 2019 23:58:25 GMT
EXPOSE 6379
# Tue, 09 Apr 2019 23:58:25 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:542e0c4f2f182e0f9c8c3e8a9a4303f5478207940914c9a88232c829c4e74fcf`  
		Last Modified: Tue, 09 Apr 2019 23:59:41 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbf113c39f6550bbc31b5b985e138e40938b5902f154527a952cdd45b0868b11`  
		Last Modified: Tue, 09 Apr 2019 23:59:41 GMT  
		Size: 403.0 KB (403004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09158274ea6c254b2b668d48a19b58c2970251fb8fb4d5addacedf0897983b51`  
		Last Modified: Tue, 09 Apr 2019 23:59:44 GMT  
		Size: 14.6 MB (14602489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffc2a2e9a3a6c4d67ad5d2ab35ea7e1adeeaded5898320036a7a7f04156a2de2`  
		Last Modified: Tue, 09 Apr 2019 23:59:41 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcdc222d2d8e0820fce72abeb2283d14ead8c6b41112fd6a18379774a48782cd`  
		Last Modified: Tue, 09 Apr 2019 23:59:41 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine3.9` - linux; arm variant v6

```console
$ docker pull redis@sha256:668bc841494da7d97a0951f7ed528d10075c04daeb39b038a02d172f7856b60e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17140707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69a810a8a06e9be50883a6eec89ec93dc992bccb888653d0f6f5ecdf2c1a65f9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 08:26:14 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 Apr 2019 08:26:16 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 10 Apr 2019 08:26:17 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 10 Apr 2019 08:26:17 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 10 Apr 2019 08:26:17 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 10 Apr 2019 08:26:58 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 10 Apr 2019 08:27:00 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 Apr 2019 08:27:00 GMT
VOLUME [/data]
# Wed, 10 Apr 2019 08:27:00 GMT
WORKDIR /data
# Wed, 10 Apr 2019 08:27:01 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 10 Apr 2019 08:27:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 08:27:02 GMT
EXPOSE 6379
# Wed, 10 Apr 2019 08:27:02 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cac72c52417597f37150f22f15904bd5df64bf389a18ebb8145b857f4da966a5`  
		Last Modified: Wed, 10 Apr 2019 08:27:48 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6db8b29787ef73ca4d0464c2c22edee9ca3e063a81cf9a8830b1ec5c8befc20`  
		Last Modified: Wed, 10 Apr 2019 08:27:48 GMT  
		Size: 405.3 KB (405287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d1b8efcf6bb926cffa540cbaf391a2b5a4cb2c2909ef482699ca42c5ca13ee1`  
		Last Modified: Wed, 10 Apr 2019 08:27:52 GMT  
		Size: 14.2 MB (14190151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f27870568a67c98d7f2fd1b39999b4b1b283d67c110fbc00393495ae02a8943`  
		Last Modified: Wed, 10 Apr 2019 08:27:48 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c715f8c9e15317612d670e62d5a34ced8850627792295c42b061aeb5751a23bf`  
		Last Modified: Wed, 10 Apr 2019 08:27:48 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine3.9` - linux; arm variant v7

```console
$ docker pull redis@sha256:bd9758298229750ec0613563b8ad0a7e990505bf9b7f74289024777a1eeb80ec
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16691575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f12a0c672a7ad12eebfd450fadb7f9801b245183b802cc18bd6dddbc5632ad7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 Apr 2019 11:57:47 GMT
ADD file:1a27b74f23795a1f205247dcd6eff48ac56f0b8f2afe0c358199a0b60f694861 in / 
# Wed, 10 Apr 2019 11:57:48 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 12:31:32 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 Apr 2019 12:31:35 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 10 Apr 2019 12:31:36 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 10 Apr 2019 12:31:37 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 10 Apr 2019 12:31:38 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 10 Apr 2019 12:32:24 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 10 Apr 2019 12:32:27 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 Apr 2019 12:32:27 GMT
VOLUME [/data]
# Wed, 10 Apr 2019 12:32:28 GMT
WORKDIR /data
# Wed, 10 Apr 2019 12:32:28 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 10 Apr 2019 12:32:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 12:32:30 GMT
EXPOSE 6379
# Wed, 10 Apr 2019 12:32:30 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:c2a5cdd4aa08146b4516cc95f6b461f2994250a819b3e6f75f23fa2a8c1b1744`  
		Last Modified: Wed, 10 Apr 2019 11:58:04 GMT  
		Size: 2.4 MB (2350757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f02904c22d1f59beea301a4e2c19f4b14edae521f98cd0cae4edec6c880c34bb`  
		Last Modified: Wed, 10 Apr 2019 12:33:35 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0132ad3f4069c0da06d221747600eb8c244a3bfcf23a05b129ab41c109b76640`  
		Last Modified: Wed, 10 Apr 2019 12:33:35 GMT  
		Size: 398.6 KB (398582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccd1fa1a3ff503e3849ba7b85a1268731b8a37909e632c077910b89d5f14f1c4`  
		Last Modified: Wed, 10 Apr 2019 12:33:39 GMT  
		Size: 13.9 MB (13940403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aed146897e3069648170d9f3d83c58d37b1c525e949cf1d4424957bd616c94b`  
		Last Modified: Wed, 10 Apr 2019 12:33:35 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6134f104361e7f2439ced2e4f476e4ff4b7031cabe2e3fdfa625f20d9562ba7`  
		Last Modified: Wed, 10 Apr 2019 12:33:35 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine3.9` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:6f9aab70b6a807954b377a0a4596ee2c024f57c1a63cce869a9146abbb74b87c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.6 MB (17604095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:107a7a2f46542d15554b68f73ad23cc0b5abbfca6cc879e26c24dd52627525ac`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 Apr 2019 08:49:11 GMT
ADD file:30e0a8ccdca70b20b8ce637f0ba5108157f4ba491447d20aafbe45d82392bd81 in / 
# Wed, 10 Apr 2019 08:49:12 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 09:30:47 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 Apr 2019 09:30:51 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 10 Apr 2019 09:30:51 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 10 Apr 2019 09:30:52 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 10 Apr 2019 09:30:53 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 10 Apr 2019 09:32:32 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 10 Apr 2019 09:32:34 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 Apr 2019 09:32:35 GMT
VOLUME [/data]
# Wed, 10 Apr 2019 09:32:36 GMT
WORKDIR /data
# Wed, 10 Apr 2019 09:32:37 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 10 Apr 2019 09:32:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 09:32:38 GMT
EXPOSE 6379
# Wed, 10 Apr 2019 09:32:39 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6f37394be673296a0fdc21b819c5df40431baf7d3af121bee451726dd1457493`  
		Last Modified: Wed, 10 Apr 2019 08:50:38 GMT  
		Size: 2.7 MB (2688778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd87357e3604d3d4278cd171c27e1f6eab0970cb1af16c2fd37a4df05d7fa114`  
		Last Modified: Wed, 10 Apr 2019 09:34:18 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3ed8d359e92c573c3aa65aa6bf63c31debc70eed441317642f91d442905b980`  
		Last Modified: Wed, 10 Apr 2019 09:34:19 GMT  
		Size: 405.2 KB (405228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d737f88f38956dce2665b67e52ea0e56b55e490b1a27454342dd86289aefec`  
		Last Modified: Wed, 10 Apr 2019 09:34:25 GMT  
		Size: 14.5 MB (14508323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9a62c4508f4096bc9c594bc955df3654878f2af55301b2e106848012f6f0087`  
		Last Modified: Wed, 10 Apr 2019 09:34:19 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4955611fe1ed5ecaef528e1260b632eb460b9664cb1ea80809e5694e2e90b61a`  
		Last Modified: Wed, 10 Apr 2019 09:34:19 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine3.9` - linux; 386

```console
$ docker pull redis@sha256:a80850d63514e18b9da7e3e31e0dd218d1b271292c2b8b876957b42854d9bf92
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17127766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a936b9cc965a5dbfbf988b02bee815e4b091ce96e8e098e710d62bddc09aa219`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 Apr 2019 10:38:55 GMT
ADD file:51f7bb95ef6cc3519317dcb7abbf6155e6bb7b73a17ad7d90cad7911e8a8933c in / 
# Wed, 10 Apr 2019 10:38:55 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 13:10:48 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 Apr 2019 13:10:49 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 10 Apr 2019 13:10:49 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 10 Apr 2019 13:10:49 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 10 Apr 2019 13:10:49 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 10 Apr 2019 13:11:52 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 10 Apr 2019 13:11:53 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 Apr 2019 13:11:53 GMT
VOLUME [/data]
# Wed, 10 Apr 2019 13:11:53 GMT
WORKDIR /data
# Wed, 10 Apr 2019 13:11:53 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 10 Apr 2019 13:11:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 13:11:54 GMT
EXPOSE 6379
# Wed, 10 Apr 2019 13:11:54 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:9a81e6a1a3b4f174d22173a96692c9aeffaefcd00f40607d508951a2b14d6f1f`  
		Last Modified: Wed, 10 Apr 2019 10:39:15 GMT  
		Size: 2.8 MB (2752162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b30efed26125f06596e1a58493943baf64ba49f78b66a0f10ea815430c3057`  
		Last Modified: Wed, 10 Apr 2019 13:13:00 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2e8a8f5562f29213b62563c0cb0612f50141b1e8f26c831a71a2be46703a387`  
		Last Modified: Wed, 10 Apr 2019 13:13:00 GMT  
		Size: 408.0 KB (408011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7fb5953abb7fffb527b97c1115b1b3abeb9347830903462fb2b3797e2e5a43b`  
		Last Modified: Wed, 10 Apr 2019 13:13:03 GMT  
		Size: 14.0 MB (13965829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bab5fa3f4af93735539dfefe3c87765cde5923466da353ce7e83ebe8805a662e`  
		Last Modified: Wed, 10 Apr 2019 13:13:00 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0f194f7b5c4038bff9343db96166ab70299afd5bd8f99567cec67932f5f56e9`  
		Last Modified: Wed, 10 Apr 2019 13:13:00 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine3.9` - linux; ppc64le

```console
$ docker pull redis@sha256:3fae93862754c27baa36e63c9d0e34b7f13466db1557d78dfc828ecde148ad71
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18615961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdedaf41839a738ad000d87d1e59d076ea332a695698f87a414c4cf8562abc89`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 Apr 2019 08:27:30 GMT
ADD file:c13c1c2b4e6d71924f570a910caf6a1756ea5a28a4017c7b11305e021eacd0ee in / 
# Wed, 10 Apr 2019 08:27:33 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 10:26:02 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 Apr 2019 10:26:09 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 10 Apr 2019 10:26:13 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 10 Apr 2019 10:26:16 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 10 Apr 2019 10:26:22 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 10 Apr 2019 10:27:22 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 10 Apr 2019 10:27:30 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 Apr 2019 10:27:34 GMT
VOLUME [/data]
# Wed, 10 Apr 2019 10:27:41 GMT
WORKDIR /data
# Wed, 10 Apr 2019 10:27:43 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 10 Apr 2019 10:27:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 10:27:55 GMT
EXPOSE 6379
# Wed, 10 Apr 2019 10:28:03 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:fe0f92a92ee06f38abf50fefd22331ac42262e3872ecd2d7ddfa7c24ab71a53a`  
		Last Modified: Wed, 10 Apr 2019 08:28:34 GMT  
		Size: 2.8 MB (2781020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81a3976b0f5f6d320d4e2c4b563bf1d516e9b3dbff3642de3ba2dfdc8aba06df`  
		Last Modified: Wed, 10 Apr 2019 10:30:51 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f552250dac1f95ee5efd4654d27d1b92081cd004b8c8357efb1d5a60bf6b1aa`  
		Last Modified: Wed, 10 Apr 2019 10:30:51 GMT  
		Size: 410.4 KB (410350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0896b2ad48e0d7fc0e9898981dbf4c11e860d203407bde6d575aa231671a85a2`  
		Last Modified: Wed, 10 Apr 2019 10:30:56 GMT  
		Size: 15.4 MB (15422757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49583b5366e690de3a5b14276f913af572cfc6bee7de3fa6cf5b048a5031538c`  
		Last Modified: Wed, 10 Apr 2019 10:30:51 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8c5f265664fe94e4b324c6ef63383c97dc8f6af89e1ae512938abae73191951`  
		Last Modified: Wed, 10 Apr 2019 10:30:51 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine3.9` - linux; s390x

```console
$ docker pull redis@sha256:1eb67ffe3d0167eb53d8a33e8a2eaa385c7ac8337f96e1e6397d110e0da8303d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17821115 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecc683be58697fd97857072de161c829167bdea75379ac52c61c773af81bf1ee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 Apr 2019 11:42:23 GMT
ADD file:ab106eb2cf4bf0e1ca7861a56dc24e44dd206fd3ae8d3587684324e5c11136f4 in / 
# Wed, 10 Apr 2019 11:42:23 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 14:22:12 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 Apr 2019 14:22:15 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 10 Apr 2019 14:22:16 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 10 Apr 2019 14:22:16 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 10 Apr 2019 14:22:17 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 10 Apr 2019 14:23:46 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 10 Apr 2019 14:23:50 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 Apr 2019 14:23:51 GMT
VOLUME [/data]
# Wed, 10 Apr 2019 14:23:52 GMT
WORKDIR /data
# Wed, 10 Apr 2019 14:23:53 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 10 Apr 2019 14:23:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 14:23:55 GMT
EXPOSE 6379
# Wed, 10 Apr 2019 14:23:56 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5b51e37a522c2e7cd3c67e8a3e5500b45189ea6698e9fdaed7f5d48282326633`  
		Last Modified: Wed, 10 Apr 2019 11:43:06 GMT  
		Size: 2.5 MB (2543326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e72810cb2904dec74b6a6ec5f4a983c700825faf21979eb2e7a360b42515f26`  
		Last Modified: Wed, 10 Apr 2019 14:26:58 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4816af0620533e2d07b1778a9f075eb91da554fb6e81c803e8fe455a6d9cadb`  
		Last Modified: Wed, 10 Apr 2019 14:26:59 GMT  
		Size: 407.9 KB (407873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daf166aeb7e683d13516e79a7a02f63c3f6a237e0f821b521394f21fffdca6c6`  
		Last Modified: Wed, 10 Apr 2019 14:27:06 GMT  
		Size: 14.9 MB (14868151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddca5358a6a73aaad90211e7f78d95b62fca2a0095375893ed5d11cd111a4d25`  
		Last Modified: Wed, 10 Apr 2019 14:26:58 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d16179b45b9f6d2b424b0ad5f77b5adbda66f123a9f37d5d38d128c6f243705d`  
		Last Modified: Wed, 10 Apr 2019 14:26:59 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:latest`

```console
$ docker pull redis@sha256:b3029915d55726bf33afe99f44a0e982be14a673e0a696f03769b4a8a249cf68
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
$ docker pull redis@sha256:09a573fa229a6208414163d419d4e116e34cc3851bc3e3d63c1e6a60825c09c3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.3 MB (31339669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c337d5ec7522ea787542c7c4cefe7d3ee5c3ba8d3ef01d733e8aaee0ff5f4ab`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Mar 2019 12:07:48 GMT
ADD file:6bf06125d936ccaf67981470df5ef6b9bd5dee3c0ef0e042a448fc60bb02f191 in / 
# Wed, 27 Mar 2019 12:07:49 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 15:20:43 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 15:20:44 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 15:21:25 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 15:21:25 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 27 Mar 2019 15:21:26 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 27 Mar 2019 15:21:26 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 27 Mar 2019 15:22:30 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 15:22:33 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 15:22:34 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 15:22:34 GMT
WORKDIR /data
# Wed, 27 Mar 2019 15:22:35 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 15:22:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 15:22:36 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 15:22:37 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:fac132c5d16f670820c8c4ae332bd663c2ff856e9af86b2b23a201db263d851e`  
		Last Modified: Wed, 27 Mar 2019 12:13:15 GMT  
		Size: 19.3 MB (19282442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e2fe4e656b4ef2c65b13804ba160b7e965946dfa62ac428ae2e06c6be52e805`  
		Last Modified: Wed, 27 Mar 2019 15:24:02 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9425121a58ef3107c6a89df6558f6a58f7894a6ad37ef27fb928e53cb4004556`  
		Last Modified: Wed, 27 Mar 2019 15:24:03 GMT  
		Size: 915.9 KB (915851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da14e123dcb0661155a81c70a90bee81219eff6a3938239f5cc017f94002ceaf`  
		Last Modified: Wed, 27 Mar 2019 15:24:07 GMT  
		Size: 11.1 MB (11139093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7badf93016bec7cff427666144e15d4acb03120561649afaba03f3e0c82e13fd`  
		Last Modified: Wed, 27 Mar 2019 15:24:02 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d4f4e75a3dd622cfc1d829060709821ae6e597df6bee22e4ab7a7d3f1466ee`  
		Last Modified: Wed, 27 Mar 2019 15:24:03 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:1fd6b4b4a89e65e4a5d8b53dbd5863c81bec1256b2b2d4de8542851903aa6a26
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32834543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3982a09544e6d4c493b07353597a8c53ea7d5568da29f05d0c9ce03c6b2d0bf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:46 GMT
ADD file:9db7760cb1c28ef0cd3fa9ee9d0f528d2bcfe80b1c3973daa9f87e30b2047102 in / 
# Wed, 27 Mar 2019 08:47:47 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:09:11 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 12:09:12 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 12:11:14 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 12:11:15 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 27 Mar 2019 12:11:16 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 27 Mar 2019 12:11:17 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 27 Mar 2019 12:13:50 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 12:13:52 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 12:13:53 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 12:13:54 GMT
WORKDIR /data
# Wed, 27 Mar 2019 12:13:55 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 12:13:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 12:13:59 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 12:14:02 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:007027d142c80b166a004bc7265c04036b80df438ac408f1a947e05c581b418e`  
		Last Modified: Wed, 27 Mar 2019 08:52:56 GMT  
		Size: 20.3 MB (20340179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf60f2128f3195c471ec3689b8be025149dcff169970e8d8968c4864c282c8cd`  
		Last Modified: Wed, 27 Mar 2019 12:18:10 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcf7593f1ca581039b8fd820fbd9a7b8dabbf87cb88ae708b921ab5d18bee68c`  
		Last Modified: Wed, 27 Mar 2019 12:18:10 GMT  
		Size: 908.1 KB (908060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3cbddd935987c1549bc21b22bd4cccea4ccbc979b82ca563ecc7eb57b89d00f`  
		Last Modified: Wed, 27 Mar 2019 12:18:15 GMT  
		Size: 11.6 MB (11584046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2da2a323648ee0bbdd0b8beb16ce04363a5d790d90858bba40fe2a5a7cb4fd3`  
		Last Modified: Wed, 27 Mar 2019 12:18:09 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86bf7471abe33a96059db397ae2346398af968e52349393336745d3c179e594d`  
		Last Modified: Wed, 27 Mar 2019 12:18:09 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; 386

```console
$ docker pull redis@sha256:f0584aac9b21b9ed160f44d54d78d9445244f638a84e5695af7372c399cd8f00
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35237407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fea2c87a1b74a70ff96f8624ed14e97c95e551f287d399b2ce406cbb8899a869`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Mar 2019 10:43:41 GMT
ADD file:13e40d14dbdd0814b4fb7b2a378757164620517fec383739c87747c27e07d8e7 in / 
# Wed, 27 Mar 2019 10:43:41 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 16:13:05 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 16:13:06 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 16:13:20 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 16:13:21 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 27 Mar 2019 16:13:21 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 27 Mar 2019 16:13:21 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 27 Mar 2019 16:14:25 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 16:14:26 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 16:14:26 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 16:14:26 GMT
WORKDIR /data
# Wed, 27 Mar 2019 16:14:26 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 16:14:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 16:14:27 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 16:14:27 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:a5ba78e1989e52ae238c3f225934c1a2dee4dfaa4667abd6f2e0717b78159472`  
		Last Modified: Wed, 27 Mar 2019 10:49:24 GMT  
		Size: 23.1 MB (23125745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcc0e5b68b9dbbba70332f0cad07bf511d38a873ec0d6c82b4c06e897e924689`  
		Last Modified: Wed, 27 Mar 2019 16:15:34 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2a0f34b494237693bbdb853e52e9727e46f0f5a30d022759bcb9cc90710cb1e`  
		Last Modified: Wed, 27 Mar 2019 16:15:34 GMT  
		Size: 920.2 KB (920184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6987feeb4ac2efbd1dcbc2347dc8ac0fe3d2056dcb5e3ec70f8808c58b6d6d9f`  
		Last Modified: Wed, 27 Mar 2019 16:15:36 GMT  
		Size: 11.2 MB (11189231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:768442472b87e72bce877687c423de8d25aff318cf91e1866cc44e273b863942`  
		Last Modified: Wed, 27 Mar 2019 16:15:33 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d0f2fd77a4a7f48fcad100c95795f19dde4c993323e84bf1962240601f45755`  
		Last Modified: Wed, 27 Mar 2019 16:15:33 GMT  
		Size: 418.0 B  
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
$ docker pull redis@sha256:b3029915d55726bf33afe99f44a0e982be14a673e0a696f03769b4a8a249cf68
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
$ docker pull redis@sha256:09a573fa229a6208414163d419d4e116e34cc3851bc3e3d63c1e6a60825c09c3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.3 MB (31339669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c337d5ec7522ea787542c7c4cefe7d3ee5c3ba8d3ef01d733e8aaee0ff5f4ab`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Mar 2019 12:07:48 GMT
ADD file:6bf06125d936ccaf67981470df5ef6b9bd5dee3c0ef0e042a448fc60bb02f191 in / 
# Wed, 27 Mar 2019 12:07:49 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 15:20:43 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 15:20:44 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 15:21:25 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 15:21:25 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 27 Mar 2019 15:21:26 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 27 Mar 2019 15:21:26 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 27 Mar 2019 15:22:30 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 15:22:33 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 15:22:34 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 15:22:34 GMT
WORKDIR /data
# Wed, 27 Mar 2019 15:22:35 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 15:22:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 15:22:36 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 15:22:37 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:fac132c5d16f670820c8c4ae332bd663c2ff856e9af86b2b23a201db263d851e`  
		Last Modified: Wed, 27 Mar 2019 12:13:15 GMT  
		Size: 19.3 MB (19282442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e2fe4e656b4ef2c65b13804ba160b7e965946dfa62ac428ae2e06c6be52e805`  
		Last Modified: Wed, 27 Mar 2019 15:24:02 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9425121a58ef3107c6a89df6558f6a58f7894a6ad37ef27fb928e53cb4004556`  
		Last Modified: Wed, 27 Mar 2019 15:24:03 GMT  
		Size: 915.9 KB (915851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da14e123dcb0661155a81c70a90bee81219eff6a3938239f5cc017f94002ceaf`  
		Last Modified: Wed, 27 Mar 2019 15:24:07 GMT  
		Size: 11.1 MB (11139093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7badf93016bec7cff427666144e15d4acb03120561649afaba03f3e0c82e13fd`  
		Last Modified: Wed, 27 Mar 2019 15:24:02 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d4f4e75a3dd622cfc1d829060709821ae6e597df6bee22e4ab7a7d3f1466ee`  
		Last Modified: Wed, 27 Mar 2019 15:24:03 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:stretch` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:1fd6b4b4a89e65e4a5d8b53dbd5863c81bec1256b2b2d4de8542851903aa6a26
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32834543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3982a09544e6d4c493b07353597a8c53ea7d5568da29f05d0c9ce03c6b2d0bf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:46 GMT
ADD file:9db7760cb1c28ef0cd3fa9ee9d0f528d2bcfe80b1c3973daa9f87e30b2047102 in / 
# Wed, 27 Mar 2019 08:47:47 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:09:11 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 12:09:12 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 12:11:14 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 12:11:15 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 27 Mar 2019 12:11:16 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 27 Mar 2019 12:11:17 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 27 Mar 2019 12:13:50 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 12:13:52 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 12:13:53 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 12:13:54 GMT
WORKDIR /data
# Wed, 27 Mar 2019 12:13:55 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 12:13:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 12:13:59 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 12:14:02 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:007027d142c80b166a004bc7265c04036b80df438ac408f1a947e05c581b418e`  
		Last Modified: Wed, 27 Mar 2019 08:52:56 GMT  
		Size: 20.3 MB (20340179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf60f2128f3195c471ec3689b8be025149dcff169970e8d8968c4864c282c8cd`  
		Last Modified: Wed, 27 Mar 2019 12:18:10 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcf7593f1ca581039b8fd820fbd9a7b8dabbf87cb88ae708b921ab5d18bee68c`  
		Last Modified: Wed, 27 Mar 2019 12:18:10 GMT  
		Size: 908.1 KB (908060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3cbddd935987c1549bc21b22bd4cccea4ccbc979b82ca563ecc7eb57b89d00f`  
		Last Modified: Wed, 27 Mar 2019 12:18:15 GMT  
		Size: 11.6 MB (11584046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2da2a323648ee0bbdd0b8beb16ce04363a5d790d90858bba40fe2a5a7cb4fd3`  
		Last Modified: Wed, 27 Mar 2019 12:18:09 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86bf7471abe33a96059db397ae2346398af968e52349393336745d3c179e594d`  
		Last Modified: Wed, 27 Mar 2019 12:18:09 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:stretch` - linux; 386

```console
$ docker pull redis@sha256:f0584aac9b21b9ed160f44d54d78d9445244f638a84e5695af7372c399cd8f00
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35237407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fea2c87a1b74a70ff96f8624ed14e97c95e551f287d399b2ce406cbb8899a869`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Mar 2019 10:43:41 GMT
ADD file:13e40d14dbdd0814b4fb7b2a378757164620517fec383739c87747c27e07d8e7 in / 
# Wed, 27 Mar 2019 10:43:41 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 16:13:05 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 16:13:06 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 16:13:20 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 16:13:21 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 27 Mar 2019 16:13:21 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 27 Mar 2019 16:13:21 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 27 Mar 2019 16:14:25 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 16:14:26 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 16:14:26 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 16:14:26 GMT
WORKDIR /data
# Wed, 27 Mar 2019 16:14:26 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 16:14:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 16:14:27 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 16:14:27 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:a5ba78e1989e52ae238c3f225934c1a2dee4dfaa4667abd6f2e0717b78159472`  
		Last Modified: Wed, 27 Mar 2019 10:49:24 GMT  
		Size: 23.1 MB (23125745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcc0e5b68b9dbbba70332f0cad07bf511d38a873ec0d6c82b4c06e897e924689`  
		Last Modified: Wed, 27 Mar 2019 16:15:34 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2a0f34b494237693bbdb853e52e9727e46f0f5a30d022759bcb9cc90710cb1e`  
		Last Modified: Wed, 27 Mar 2019 16:15:34 GMT  
		Size: 920.2 KB (920184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6987feeb4ac2efbd1dcbc2347dc8ac0fe3d2056dcb5e3ec70f8808c58b6d6d9f`  
		Last Modified: Wed, 27 Mar 2019 16:15:36 GMT  
		Size: 11.2 MB (11189231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:768442472b87e72bce877687c423de8d25aff318cf91e1866cc44e273b863942`  
		Last Modified: Wed, 27 Mar 2019 16:15:33 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d0f2fd77a4a7f48fcad100c95795f19dde4c993323e84bf1962240601f45755`  
		Last Modified: Wed, 27 Mar 2019 16:15:33 GMT  
		Size: 418.0 B  
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
