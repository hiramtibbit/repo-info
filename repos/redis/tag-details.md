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
$ docker pull redis@sha256:ae402bba1730b3efde985c0a580756ccf9a940008c5c6bd0e0cfa8fde9d56e67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:32bit` - linux; amd64

```console
$ docker pull redis@sha256:342449f1ecbb55562a938f8bf53105398b636aaa8f0283ea436eb3a88a46690a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.5 MB (39483449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:983ad83543fafb3a59a9e8dc9d9e8341c4c3053a25fd763ef0d31f95f9fc3472`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:47:35 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 00:47:35 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 00:47:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 00:47:51 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 27 Mar 2019 00:47:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 27 Mar 2019 00:47:51 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 27 Mar 2019 00:49:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:50:26 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 00:50:27 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 00:50:28 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 00:50:28 GMT
WORKDIR /data
# Wed, 27 Mar 2019 00:50:29 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 00:50:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 00:50:30 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 00:50:30 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cde8019a4b43a4c7fb70ef830196d12a8ba0d031add8e93c3853685b60146393`  
		Last Modified: Wed, 27 Mar 2019 00:53:22 GMT  
		Size: 1.7 KB (1735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a473b37fb2921176dcdeb10cecd0171a8b2ef20ea51fcbf330a8ccd9c7efb3`  
		Last Modified: Wed, 27 Mar 2019 00:53:23 GMT  
		Size: 941.4 KB (941376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc5c8b0d5bbc8926ad1ef130f543f79adf62dffd53f42160d12c0514791b3b1d`  
		Last Modified: Wed, 27 Mar 2019 00:53:34 GMT  
		Size: 4.8 MB (4849447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38d00d5ff28f86cdb45f73cc17ae677c4cd3ed03d0db145ac0a5ece71f650c56`  
		Last Modified: Wed, 27 Mar 2019 00:53:35 GMT  
		Size: 11.2 MB (11194322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a76ec6bb9d2beae99a7f11f6e1a4929dc410020eecf23d44d656166e047df6a5`  
		Last Modified: Wed, 27 Mar 2019 00:53:33 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:621631de6bb0cfe59b58ae5490d83c17103d7979968e544467f732d2d2991d38`  
		Last Modified: Wed, 27 Mar 2019 00:53:33 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:32bit-stretch`

```console
$ docker pull redis@sha256:ae402bba1730b3efde985c0a580756ccf9a940008c5c6bd0e0cfa8fde9d56e67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:32bit-stretch` - linux; amd64

```console
$ docker pull redis@sha256:342449f1ecbb55562a938f8bf53105398b636aaa8f0283ea436eb3a88a46690a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.5 MB (39483449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:983ad83543fafb3a59a9e8dc9d9e8341c4c3053a25fd763ef0d31f95f9fc3472`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:47:35 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 00:47:35 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 00:47:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 00:47:51 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 27 Mar 2019 00:47:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 27 Mar 2019 00:47:51 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 27 Mar 2019 00:49:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:50:26 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 00:50:27 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 00:50:28 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 00:50:28 GMT
WORKDIR /data
# Wed, 27 Mar 2019 00:50:29 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 00:50:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 00:50:30 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 00:50:30 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cde8019a4b43a4c7fb70ef830196d12a8ba0d031add8e93c3853685b60146393`  
		Last Modified: Wed, 27 Mar 2019 00:53:22 GMT  
		Size: 1.7 KB (1735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a473b37fb2921176dcdeb10cecd0171a8b2ef20ea51fcbf330a8ccd9c7efb3`  
		Last Modified: Wed, 27 Mar 2019 00:53:23 GMT  
		Size: 941.4 KB (941376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc5c8b0d5bbc8926ad1ef130f543f79adf62dffd53f42160d12c0514791b3b1d`  
		Last Modified: Wed, 27 Mar 2019 00:53:34 GMT  
		Size: 4.8 MB (4849447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38d00d5ff28f86cdb45f73cc17ae677c4cd3ed03d0db145ac0a5ece71f650c56`  
		Last Modified: Wed, 27 Mar 2019 00:53:35 GMT  
		Size: 11.2 MB (11194322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a76ec6bb9d2beae99a7f11f6e1a4929dc410020eecf23d44d656166e047df6a5`  
		Last Modified: Wed, 27 Mar 2019 00:53:33 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:621631de6bb0cfe59b58ae5490d83c17103d7979968e544467f732d2d2991d38`  
		Last Modified: Wed, 27 Mar 2019 00:53:33 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4`

```console
$ docker pull redis@sha256:af0ec8065fa7f1ce2132a9d616cf1728acbd1d80917008f406f37135cb5a2e0e
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
$ docker pull redis@sha256:875bb0f0a17a3a4d60a7a526a9a6d16cb7beb3852fbd267cf5d4c958a110ee1d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32138267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14433f4e77ab854faecae1ba0089bd42ef8dda98411278f71d4dcfc068433fb4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:47:35 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 00:47:35 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 00:47:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 00:50:50 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 27 Mar 2019 00:50:50 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 27 Mar 2019 00:50:51 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 27 Mar 2019 00:51:33 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 00:51:33 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 00:51:33 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 00:51:34 GMT
WORKDIR /data
# Wed, 27 Mar 2019 00:51:34 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 00:51:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 00:51:35 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 00:51:35 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cde8019a4b43a4c7fb70ef830196d12a8ba0d031add8e93c3853685b60146393`  
		Last Modified: Wed, 27 Mar 2019 00:53:22 GMT  
		Size: 1.7 KB (1735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a473b37fb2921176dcdeb10cecd0171a8b2ef20ea51fcbf330a8ccd9c7efb3`  
		Last Modified: Wed, 27 Mar 2019 00:53:23 GMT  
		Size: 941.4 KB (941376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5b25739b6641469b330cfb1da254de23326f2755826879b8de798a05512dd9b`  
		Last Modified: Wed, 27 Mar 2019 00:53:44 GMT  
		Size: 8.7 MB (8698592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:304d8b43da6cfd0125015ee676da73734d2f116486594ebfbc5b8423810f1abc`  
		Last Modified: Wed, 27 Mar 2019 00:53:43 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d5b26f886bd3179d29679e82b77d8849c85372702117961a662c640292ec596`  
		Last Modified: Wed, 27 Mar 2019 00:53:42 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; arm variant v5

```console
$ docker pull redis@sha256:5ca508397fc9b3ec076c0dcce70cc4a1128f6e3d49535312a1e9e4412424464e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30517717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d303062e1bf1379f1083845244d50307ac9ab50f824d14da1f78cce533be61c6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:57 GMT
ADD file:7a35d0949b1b3e7394102d060feb38dba6645340f0c24c11c41eab11995474e2 in / 
# Wed, 27 Mar 2019 08:53:58 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 11:26:24 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 11:26:25 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 11:26:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 11:28:07 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 27 Mar 2019 11:28:07 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 27 Mar 2019 11:28:08 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 27 Mar 2019 11:28:55 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 11:28:56 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 11:28:56 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 11:28:57 GMT
WORKDIR /data
# Wed, 27 Mar 2019 11:28:57 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 11:28:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 11:28:58 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 11:28:59 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:2e028234e3987a188a306c264af3c27abc8240fc8e19373e1c5adc01b31e6176`  
		Last Modified: Wed, 27 Mar 2019 08:59:38 GMT  
		Size: 21.2 MB (21160663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22282ee903e4c1d6bf8a2d2a6d97abed822566f7c086113bc216da0e19f98481`  
		Last Modified: Wed, 27 Mar 2019 11:29:19 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e500ce3d68f7530cd30cab9d55a054fab93622078e8a8462c3a27c37a54a698`  
		Last Modified: Wed, 27 Mar 2019 11:29:19 GMT  
		Size: 931.2 KB (931223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c118fc26a93c9f17b8521fed4c76966c78517b6d0ca5fd8d75b3ad3e9a5c348f`  
		Last Modified: Wed, 27 Mar 2019 11:29:38 GMT  
		Size: 8.4 MB (8423543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cf1adf853369bb68a46403802842d3925343bbb1cc6abd5a0766296ed953ab7`  
		Last Modified: Wed, 27 Mar 2019 11:29:35 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff112a026566ef6a8079f2b967ee1485a9057c0cbffe2347e551746f333ffe67`  
		Last Modified: Wed, 27 Mar 2019 11:29:35 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; arm variant v7

```console
$ docker pull redis@sha256:61ebc007608875ee4dd11ac89573c32e01e382bbb5cf13a47c14cc40e4d963e5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28397869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f57000771083a959a74a0b86540c80c85f0722a856f862f1579e54716eb73e1`
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
# Wed, 20 Mar 2019 12:08:30 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 20 Mar 2019 12:08:31 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 20 Mar 2019 12:08:31 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 20 Mar 2019 12:09:09 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 20 Mar 2019 12:09:10 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 12:09:11 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 12:09:11 GMT
WORKDIR /data
# Wed, 20 Mar 2019 12:09:11 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 20 Mar 2019 12:09:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 12:09:12 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 12:09:13 GMT
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
	-	`sha256:40588ad618e817134950146d46fa435ce90b8b920831fef2fbb6ab052bf77013`  
		Last Modified: Wed, 20 Mar 2019 12:11:17 GMT  
		Size: 8.2 MB (8197264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cab37edd4f6c33eec0df5f6e29c2d377d4494270744ce32a047542bfdca6d8a8`  
		Last Modified: Wed, 20 Mar 2019 12:11:14 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbf89b74800746ec375ac91c7dbab8e55c80e6d4d9001703025d4c04c294890d`  
		Last Modified: Wed, 20 Mar 2019 12:11:14 GMT  
		Size: 419.0 B  
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
$ docker pull redis@sha256:ec28bc1c54fd79d376e1511b657c137f0d2c7cb7f372d646e7cdeff76b60843f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32306227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b6ce8aba3dd0cebd238561fe24055704d52c6c9fac8d329f9bfd5ee9e1a5f95`
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
# Wed, 20 Mar 2019 11:47:08 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 20 Mar 2019 11:47:08 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 20 Mar 2019 11:47:08 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 20 Mar 2019 11:47:49 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 20 Mar 2019 11:47:50 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 11:47:50 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 11:47:50 GMT
WORKDIR /data
# Wed, 20 Mar 2019 11:47:50 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 20 Mar 2019 11:47:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 11:47:51 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 11:47:51 GMT
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
	-	`sha256:96e9d76b540492f2d3806a307dae2c87cd1b8f754a343dcb14add874451f492d`  
		Last Modified: Wed, 20 Mar 2019 11:49:26 GMT  
		Size: 8.3 MB (8258170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14d6428583b890186b8af74bf116f421603ec4cba3131c2ac7604fb3a8e491b5`  
		Last Modified: Wed, 20 Mar 2019 11:49:24 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6ea3e305b49572cb9a6ca0bf46a34b2ae903994197f884339507b9e06a9a134`  
		Last Modified: Wed, 20 Mar 2019 11:49:24 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; ppc64le

```console
$ docker pull redis@sha256:71c40a074a64dd41d1cbceb34cb97fb24ebab2b53df5e2455d025004b70190da
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.5 MB (32536235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb0f163cfb6d11cdd8305d8678dc7228f89c25c8a87978ae1043fa40e1d82067`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 10:05:16 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 10:05:19 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 10:06:39 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 10:09:26 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 27 Mar 2019 10:09:28 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 27 Mar 2019 10:09:29 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 27 Mar 2019 10:10:49 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 10:10:54 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 10:10:55 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 10:10:57 GMT
WORKDIR /data
# Wed, 27 Mar 2019 10:10:58 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 10:11:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 10:11:03 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 10:11:05 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:47457ee2fac27696752b903854c4e4621e3481edc7a34b727f45b4c355de7976`  
		Last Modified: Wed, 27 Mar 2019 08:32:50 GMT  
		Size: 22.8 MB (22751385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819a2a3a3ce9b3f41a4d25dea1025d16f8da4ae9f0c26fc2f7676f4d6e20bf74`  
		Last Modified: Wed, 27 Mar 2019 10:11:42 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c2e912949846d9432577f43246c2dcd56037117a714ac374e7d5778e93748ef`  
		Last Modified: Wed, 27 Mar 2019 10:11:43 GMT  
		Size: 909.8 KB (909818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:458def4e63521abe9024bc8694adab44aa1883c7e259fadd7e1eecdf8811e60c`  
		Last Modified: Wed, 27 Mar 2019 10:12:17 GMT  
		Size: 8.9 MB (8872741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a800ec3808b81a01a6026e76c8a03d0ec2aba981d8f73dc7d09dd3675961a372`  
		Last Modified: Wed, 27 Mar 2019 10:12:14 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58a5f4c89b11770201cb9e0597443b1ae5ae89da41969c451ebb05baafc5dfd6`  
		Last Modified: Wed, 27 Mar 2019 10:12:15 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; s390x

```console
$ docker pull redis@sha256:be1da9c852c46a8176500c4b3b1d07722376597d6fd189e43503a06f18567bf5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32366496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09dbab1dcbe95a364008742b7b9cad160c8ab082487469b88cd59181e9416aa9`
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
# Wed, 20 Mar 2019 12:38:38 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 20 Mar 2019 12:38:38 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 20 Mar 2019 12:38:39 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 20 Mar 2019 12:40:04 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 20 Mar 2019 12:40:07 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 12:40:08 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 12:40:09 GMT
WORKDIR /data
# Wed, 20 Mar 2019 12:40:09 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 20 Mar 2019 12:40:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 12:40:13 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 12:40:14 GMT
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
	-	`sha256:d0600d3dbd107715dc88d68facf31b9dcd9831ae0eb4e5c6e30069e9dce17c5b`  
		Last Modified: Wed, 20 Mar 2019 12:43:17 GMT  
		Size: 9.1 MB (9092067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dc424a122702e5a383df145eef6938fcc7e460556655f705fa1edd1ca295af2`  
		Last Modified: Wed, 20 Mar 2019 12:43:13 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1177266c560d3cbff9e5b72766a2e80d4a8973d1a4f8fd35f5b6c0fbad428ad8`  
		Last Modified: Wed, 20 Mar 2019 12:43:13 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0`

```console
$ docker pull redis@sha256:af0ec8065fa7f1ce2132a9d616cf1728acbd1d80917008f406f37135cb5a2e0e
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
$ docker pull redis@sha256:875bb0f0a17a3a4d60a7a526a9a6d16cb7beb3852fbd267cf5d4c958a110ee1d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32138267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14433f4e77ab854faecae1ba0089bd42ef8dda98411278f71d4dcfc068433fb4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:47:35 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 00:47:35 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 00:47:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 00:50:50 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 27 Mar 2019 00:50:50 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 27 Mar 2019 00:50:51 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 27 Mar 2019 00:51:33 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 00:51:33 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 00:51:33 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 00:51:34 GMT
WORKDIR /data
# Wed, 27 Mar 2019 00:51:34 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 00:51:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 00:51:35 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 00:51:35 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cde8019a4b43a4c7fb70ef830196d12a8ba0d031add8e93c3853685b60146393`  
		Last Modified: Wed, 27 Mar 2019 00:53:22 GMT  
		Size: 1.7 KB (1735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a473b37fb2921176dcdeb10cecd0171a8b2ef20ea51fcbf330a8ccd9c7efb3`  
		Last Modified: Wed, 27 Mar 2019 00:53:23 GMT  
		Size: 941.4 KB (941376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5b25739b6641469b330cfb1da254de23326f2755826879b8de798a05512dd9b`  
		Last Modified: Wed, 27 Mar 2019 00:53:44 GMT  
		Size: 8.7 MB (8698592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:304d8b43da6cfd0125015ee676da73734d2f116486594ebfbc5b8423810f1abc`  
		Last Modified: Wed, 27 Mar 2019 00:53:43 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d5b26f886bd3179d29679e82b77d8849c85372702117961a662c640292ec596`  
		Last Modified: Wed, 27 Mar 2019 00:53:42 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; arm variant v5

```console
$ docker pull redis@sha256:5ca508397fc9b3ec076c0dcce70cc4a1128f6e3d49535312a1e9e4412424464e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30517717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d303062e1bf1379f1083845244d50307ac9ab50f824d14da1f78cce533be61c6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:57 GMT
ADD file:7a35d0949b1b3e7394102d060feb38dba6645340f0c24c11c41eab11995474e2 in / 
# Wed, 27 Mar 2019 08:53:58 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 11:26:24 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 11:26:25 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 11:26:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 11:28:07 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 27 Mar 2019 11:28:07 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 27 Mar 2019 11:28:08 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 27 Mar 2019 11:28:55 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 11:28:56 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 11:28:56 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 11:28:57 GMT
WORKDIR /data
# Wed, 27 Mar 2019 11:28:57 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 11:28:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 11:28:58 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 11:28:59 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:2e028234e3987a188a306c264af3c27abc8240fc8e19373e1c5adc01b31e6176`  
		Last Modified: Wed, 27 Mar 2019 08:59:38 GMT  
		Size: 21.2 MB (21160663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22282ee903e4c1d6bf8a2d2a6d97abed822566f7c086113bc216da0e19f98481`  
		Last Modified: Wed, 27 Mar 2019 11:29:19 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e500ce3d68f7530cd30cab9d55a054fab93622078e8a8462c3a27c37a54a698`  
		Last Modified: Wed, 27 Mar 2019 11:29:19 GMT  
		Size: 931.2 KB (931223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c118fc26a93c9f17b8521fed4c76966c78517b6d0ca5fd8d75b3ad3e9a5c348f`  
		Last Modified: Wed, 27 Mar 2019 11:29:38 GMT  
		Size: 8.4 MB (8423543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cf1adf853369bb68a46403802842d3925343bbb1cc6abd5a0766296ed953ab7`  
		Last Modified: Wed, 27 Mar 2019 11:29:35 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff112a026566ef6a8079f2b967ee1485a9057c0cbffe2347e551746f333ffe67`  
		Last Modified: Wed, 27 Mar 2019 11:29:35 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; arm variant v7

```console
$ docker pull redis@sha256:61ebc007608875ee4dd11ac89573c32e01e382bbb5cf13a47c14cc40e4d963e5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28397869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f57000771083a959a74a0b86540c80c85f0722a856f862f1579e54716eb73e1`
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
# Wed, 20 Mar 2019 12:08:30 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 20 Mar 2019 12:08:31 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 20 Mar 2019 12:08:31 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 20 Mar 2019 12:09:09 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 20 Mar 2019 12:09:10 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 12:09:11 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 12:09:11 GMT
WORKDIR /data
# Wed, 20 Mar 2019 12:09:11 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 20 Mar 2019 12:09:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 12:09:12 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 12:09:13 GMT
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
	-	`sha256:40588ad618e817134950146d46fa435ce90b8b920831fef2fbb6ab052bf77013`  
		Last Modified: Wed, 20 Mar 2019 12:11:17 GMT  
		Size: 8.2 MB (8197264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cab37edd4f6c33eec0df5f6e29c2d377d4494270744ce32a047542bfdca6d8a8`  
		Last Modified: Wed, 20 Mar 2019 12:11:14 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbf89b74800746ec375ac91c7dbab8e55c80e6d4d9001703025d4c04c294890d`  
		Last Modified: Wed, 20 Mar 2019 12:11:14 GMT  
		Size: 419.0 B  
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
$ docker pull redis@sha256:ec28bc1c54fd79d376e1511b657c137f0d2c7cb7f372d646e7cdeff76b60843f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32306227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b6ce8aba3dd0cebd238561fe24055704d52c6c9fac8d329f9bfd5ee9e1a5f95`
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
# Wed, 20 Mar 2019 11:47:08 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 20 Mar 2019 11:47:08 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 20 Mar 2019 11:47:08 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 20 Mar 2019 11:47:49 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 20 Mar 2019 11:47:50 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 11:47:50 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 11:47:50 GMT
WORKDIR /data
# Wed, 20 Mar 2019 11:47:50 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 20 Mar 2019 11:47:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 11:47:51 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 11:47:51 GMT
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
	-	`sha256:96e9d76b540492f2d3806a307dae2c87cd1b8f754a343dcb14add874451f492d`  
		Last Modified: Wed, 20 Mar 2019 11:49:26 GMT  
		Size: 8.3 MB (8258170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14d6428583b890186b8af74bf116f421603ec4cba3131c2ac7604fb3a8e491b5`  
		Last Modified: Wed, 20 Mar 2019 11:49:24 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6ea3e305b49572cb9a6ca0bf46a34b2ae903994197f884339507b9e06a9a134`  
		Last Modified: Wed, 20 Mar 2019 11:49:24 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; ppc64le

```console
$ docker pull redis@sha256:71c40a074a64dd41d1cbceb34cb97fb24ebab2b53df5e2455d025004b70190da
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.5 MB (32536235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb0f163cfb6d11cdd8305d8678dc7228f89c25c8a87978ae1043fa40e1d82067`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 10:05:16 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 10:05:19 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 10:06:39 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 10:09:26 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 27 Mar 2019 10:09:28 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 27 Mar 2019 10:09:29 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 27 Mar 2019 10:10:49 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 10:10:54 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 10:10:55 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 10:10:57 GMT
WORKDIR /data
# Wed, 27 Mar 2019 10:10:58 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 10:11:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 10:11:03 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 10:11:05 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:47457ee2fac27696752b903854c4e4621e3481edc7a34b727f45b4c355de7976`  
		Last Modified: Wed, 27 Mar 2019 08:32:50 GMT  
		Size: 22.8 MB (22751385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819a2a3a3ce9b3f41a4d25dea1025d16f8da4ae9f0c26fc2f7676f4d6e20bf74`  
		Last Modified: Wed, 27 Mar 2019 10:11:42 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c2e912949846d9432577f43246c2dcd56037117a714ac374e7d5778e93748ef`  
		Last Modified: Wed, 27 Mar 2019 10:11:43 GMT  
		Size: 909.8 KB (909818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:458def4e63521abe9024bc8694adab44aa1883c7e259fadd7e1eecdf8811e60c`  
		Last Modified: Wed, 27 Mar 2019 10:12:17 GMT  
		Size: 8.9 MB (8872741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a800ec3808b81a01a6026e76c8a03d0ec2aba981d8f73dc7d09dd3675961a372`  
		Last Modified: Wed, 27 Mar 2019 10:12:14 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58a5f4c89b11770201cb9e0597443b1ae5ae89da41969c451ebb05baafc5dfd6`  
		Last Modified: Wed, 27 Mar 2019 10:12:15 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; s390x

```console
$ docker pull redis@sha256:be1da9c852c46a8176500c4b3b1d07722376597d6fd189e43503a06f18567bf5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32366496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09dbab1dcbe95a364008742b7b9cad160c8ab082487469b88cd59181e9416aa9`
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
# Wed, 20 Mar 2019 12:38:38 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 20 Mar 2019 12:38:38 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 20 Mar 2019 12:38:39 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 20 Mar 2019 12:40:04 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 20 Mar 2019 12:40:07 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 12:40:08 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 12:40:09 GMT
WORKDIR /data
# Wed, 20 Mar 2019 12:40:09 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 20 Mar 2019 12:40:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 12:40:13 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 12:40:14 GMT
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
	-	`sha256:d0600d3dbd107715dc88d68facf31b9dcd9831ae0eb4e5c6e30069e9dce17c5b`  
		Last Modified: Wed, 20 Mar 2019 12:43:17 GMT  
		Size: 9.1 MB (9092067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dc424a122702e5a383df145eef6938fcc7e460556655f705fa1edd1ca295af2`  
		Last Modified: Wed, 20 Mar 2019 12:43:13 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1177266c560d3cbff9e5b72766a2e80d4a8973d1a4f8fd35f5b6c0fbad428ad8`  
		Last Modified: Wed, 20 Mar 2019 12:43:13 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.14`

```console
$ docker pull redis@sha256:af0ec8065fa7f1ce2132a9d616cf1728acbd1d80917008f406f37135cb5a2e0e
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
$ docker pull redis@sha256:875bb0f0a17a3a4d60a7a526a9a6d16cb7beb3852fbd267cf5d4c958a110ee1d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32138267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14433f4e77ab854faecae1ba0089bd42ef8dda98411278f71d4dcfc068433fb4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:47:35 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 00:47:35 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 00:47:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 00:50:50 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 27 Mar 2019 00:50:50 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 27 Mar 2019 00:50:51 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 27 Mar 2019 00:51:33 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 00:51:33 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 00:51:33 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 00:51:34 GMT
WORKDIR /data
# Wed, 27 Mar 2019 00:51:34 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 00:51:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 00:51:35 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 00:51:35 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cde8019a4b43a4c7fb70ef830196d12a8ba0d031add8e93c3853685b60146393`  
		Last Modified: Wed, 27 Mar 2019 00:53:22 GMT  
		Size: 1.7 KB (1735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a473b37fb2921176dcdeb10cecd0171a8b2ef20ea51fcbf330a8ccd9c7efb3`  
		Last Modified: Wed, 27 Mar 2019 00:53:23 GMT  
		Size: 941.4 KB (941376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5b25739b6641469b330cfb1da254de23326f2755826879b8de798a05512dd9b`  
		Last Modified: Wed, 27 Mar 2019 00:53:44 GMT  
		Size: 8.7 MB (8698592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:304d8b43da6cfd0125015ee676da73734d2f116486594ebfbc5b8423810f1abc`  
		Last Modified: Wed, 27 Mar 2019 00:53:43 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d5b26f886bd3179d29679e82b77d8849c85372702117961a662c640292ec596`  
		Last Modified: Wed, 27 Mar 2019 00:53:42 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.14` - linux; arm variant v5

```console
$ docker pull redis@sha256:5ca508397fc9b3ec076c0dcce70cc4a1128f6e3d49535312a1e9e4412424464e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30517717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d303062e1bf1379f1083845244d50307ac9ab50f824d14da1f78cce533be61c6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:57 GMT
ADD file:7a35d0949b1b3e7394102d060feb38dba6645340f0c24c11c41eab11995474e2 in / 
# Wed, 27 Mar 2019 08:53:58 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 11:26:24 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 11:26:25 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 11:26:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 11:28:07 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 27 Mar 2019 11:28:07 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 27 Mar 2019 11:28:08 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 27 Mar 2019 11:28:55 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 11:28:56 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 11:28:56 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 11:28:57 GMT
WORKDIR /data
# Wed, 27 Mar 2019 11:28:57 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 11:28:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 11:28:58 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 11:28:59 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:2e028234e3987a188a306c264af3c27abc8240fc8e19373e1c5adc01b31e6176`  
		Last Modified: Wed, 27 Mar 2019 08:59:38 GMT  
		Size: 21.2 MB (21160663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22282ee903e4c1d6bf8a2d2a6d97abed822566f7c086113bc216da0e19f98481`  
		Last Modified: Wed, 27 Mar 2019 11:29:19 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e500ce3d68f7530cd30cab9d55a054fab93622078e8a8462c3a27c37a54a698`  
		Last Modified: Wed, 27 Mar 2019 11:29:19 GMT  
		Size: 931.2 KB (931223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c118fc26a93c9f17b8521fed4c76966c78517b6d0ca5fd8d75b3ad3e9a5c348f`  
		Last Modified: Wed, 27 Mar 2019 11:29:38 GMT  
		Size: 8.4 MB (8423543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cf1adf853369bb68a46403802842d3925343bbb1cc6abd5a0766296ed953ab7`  
		Last Modified: Wed, 27 Mar 2019 11:29:35 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff112a026566ef6a8079f2b967ee1485a9057c0cbffe2347e551746f333ffe67`  
		Last Modified: Wed, 27 Mar 2019 11:29:35 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.14` - linux; arm variant v7

```console
$ docker pull redis@sha256:61ebc007608875ee4dd11ac89573c32e01e382bbb5cf13a47c14cc40e4d963e5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28397869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f57000771083a959a74a0b86540c80c85f0722a856f862f1579e54716eb73e1`
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
# Wed, 20 Mar 2019 12:08:30 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 20 Mar 2019 12:08:31 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 20 Mar 2019 12:08:31 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 20 Mar 2019 12:09:09 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 20 Mar 2019 12:09:10 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 12:09:11 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 12:09:11 GMT
WORKDIR /data
# Wed, 20 Mar 2019 12:09:11 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 20 Mar 2019 12:09:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 12:09:12 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 12:09:13 GMT
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
	-	`sha256:40588ad618e817134950146d46fa435ce90b8b920831fef2fbb6ab052bf77013`  
		Last Modified: Wed, 20 Mar 2019 12:11:17 GMT  
		Size: 8.2 MB (8197264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cab37edd4f6c33eec0df5f6e29c2d377d4494270744ce32a047542bfdca6d8a8`  
		Last Modified: Wed, 20 Mar 2019 12:11:14 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbf89b74800746ec375ac91c7dbab8e55c80e6d4d9001703025d4c04c294890d`  
		Last Modified: Wed, 20 Mar 2019 12:11:14 GMT  
		Size: 419.0 B  
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
$ docker pull redis@sha256:ec28bc1c54fd79d376e1511b657c137f0d2c7cb7f372d646e7cdeff76b60843f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32306227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b6ce8aba3dd0cebd238561fe24055704d52c6c9fac8d329f9bfd5ee9e1a5f95`
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
# Wed, 20 Mar 2019 11:47:08 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 20 Mar 2019 11:47:08 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 20 Mar 2019 11:47:08 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 20 Mar 2019 11:47:49 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 20 Mar 2019 11:47:50 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 11:47:50 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 11:47:50 GMT
WORKDIR /data
# Wed, 20 Mar 2019 11:47:50 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 20 Mar 2019 11:47:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 11:47:51 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 11:47:51 GMT
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
	-	`sha256:96e9d76b540492f2d3806a307dae2c87cd1b8f754a343dcb14add874451f492d`  
		Last Modified: Wed, 20 Mar 2019 11:49:26 GMT  
		Size: 8.3 MB (8258170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14d6428583b890186b8af74bf116f421603ec4cba3131c2ac7604fb3a8e491b5`  
		Last Modified: Wed, 20 Mar 2019 11:49:24 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6ea3e305b49572cb9a6ca0bf46a34b2ae903994197f884339507b9e06a9a134`  
		Last Modified: Wed, 20 Mar 2019 11:49:24 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.14` - linux; ppc64le

```console
$ docker pull redis@sha256:71c40a074a64dd41d1cbceb34cb97fb24ebab2b53df5e2455d025004b70190da
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.5 MB (32536235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb0f163cfb6d11cdd8305d8678dc7228f89c25c8a87978ae1043fa40e1d82067`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 10:05:16 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 10:05:19 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 10:06:39 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 10:09:26 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 27 Mar 2019 10:09:28 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 27 Mar 2019 10:09:29 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 27 Mar 2019 10:10:49 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 10:10:54 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 10:10:55 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 10:10:57 GMT
WORKDIR /data
# Wed, 27 Mar 2019 10:10:58 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 10:11:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 10:11:03 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 10:11:05 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:47457ee2fac27696752b903854c4e4621e3481edc7a34b727f45b4c355de7976`  
		Last Modified: Wed, 27 Mar 2019 08:32:50 GMT  
		Size: 22.8 MB (22751385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819a2a3a3ce9b3f41a4d25dea1025d16f8da4ae9f0c26fc2f7676f4d6e20bf74`  
		Last Modified: Wed, 27 Mar 2019 10:11:42 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c2e912949846d9432577f43246c2dcd56037117a714ac374e7d5778e93748ef`  
		Last Modified: Wed, 27 Mar 2019 10:11:43 GMT  
		Size: 909.8 KB (909818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:458def4e63521abe9024bc8694adab44aa1883c7e259fadd7e1eecdf8811e60c`  
		Last Modified: Wed, 27 Mar 2019 10:12:17 GMT  
		Size: 8.9 MB (8872741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a800ec3808b81a01a6026e76c8a03d0ec2aba981d8f73dc7d09dd3675961a372`  
		Last Modified: Wed, 27 Mar 2019 10:12:14 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58a5f4c89b11770201cb9e0597443b1ae5ae89da41969c451ebb05baafc5dfd6`  
		Last Modified: Wed, 27 Mar 2019 10:12:15 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.14` - linux; s390x

```console
$ docker pull redis@sha256:be1da9c852c46a8176500c4b3b1d07722376597d6fd189e43503a06f18567bf5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32366496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09dbab1dcbe95a364008742b7b9cad160c8ab082487469b88cd59181e9416aa9`
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
# Wed, 20 Mar 2019 12:38:38 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 20 Mar 2019 12:38:38 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 20 Mar 2019 12:38:39 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 20 Mar 2019 12:40:04 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 20 Mar 2019 12:40:07 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 12:40:08 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 12:40:09 GMT
WORKDIR /data
# Wed, 20 Mar 2019 12:40:09 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 20 Mar 2019 12:40:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 12:40:13 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 12:40:14 GMT
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
	-	`sha256:d0600d3dbd107715dc88d68facf31b9dcd9831ae0eb4e5c6e30069e9dce17c5b`  
		Last Modified: Wed, 20 Mar 2019 12:43:17 GMT  
		Size: 9.1 MB (9092067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dc424a122702e5a383df145eef6938fcc7e460556655f705fa1edd1ca295af2`  
		Last Modified: Wed, 20 Mar 2019 12:43:13 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1177266c560d3cbff9e5b72766a2e80d4a8973d1a4f8fd35f5b6c0fbad428ad8`  
		Last Modified: Wed, 20 Mar 2019 12:43:13 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.14-32bit`

```console
$ docker pull redis@sha256:2c0a5e8161a33c79208e6fe2b40775e320529ab4402bbd5ee4870218cdd68894
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4.0.14-32bit` - linux; amd64

```console
$ docker pull redis@sha256:5982b62e07047986cf2a608646f32b55a715b5bb9ace1a53ba38e1ae25309dd6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36551646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b16a694465c5e2ebeb4fe7ef1185ce3257c918c1d0dea54b33485b321aa8b52`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:47:35 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 00:47:35 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 00:47:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 00:50:50 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 27 Mar 2019 00:50:50 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 27 Mar 2019 00:50:51 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 27 Mar 2019 00:52:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:52:53 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 00:52:54 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 00:52:55 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 00:52:55 GMT
WORKDIR /data
# Wed, 27 Mar 2019 00:52:56 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 00:52:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 00:52:57 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 00:52:57 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cde8019a4b43a4c7fb70ef830196d12a8ba0d031add8e93c3853685b60146393`  
		Last Modified: Wed, 27 Mar 2019 00:53:22 GMT  
		Size: 1.7 KB (1735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a473b37fb2921176dcdeb10cecd0171a8b2ef20ea51fcbf330a8ccd9c7efb3`  
		Last Modified: Wed, 27 Mar 2019 00:53:23 GMT  
		Size: 941.4 KB (941376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef382f94fd2491fa03f4c4c434dd975029e2a5b29967ce46ae35299bd2feb2a2`  
		Last Modified: Wed, 27 Mar 2019 00:53:51 GMT  
		Size: 4.8 MB (4849431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58929f25e82774186949485037286e3162faa7701215bf717833e2bcca2ef057`  
		Last Modified: Wed, 27 Mar 2019 00:53:51 GMT  
		Size: 8.3 MB (8262536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e2f85d52fc7ec626213b97e3ea7124bad1a42e542cd152823d399ac7222a03c`  
		Last Modified: Wed, 27 Mar 2019 00:53:50 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0d6708241bd0726441979e5b9e9cef20c7c6057a104274399df540cc9bc5d5b`  
		Last Modified: Wed, 27 Mar 2019 00:53:50 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.14-32bit-stretch`

```console
$ docker pull redis@sha256:2c0a5e8161a33c79208e6fe2b40775e320529ab4402bbd5ee4870218cdd68894
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4.0.14-32bit-stretch` - linux; amd64

```console
$ docker pull redis@sha256:5982b62e07047986cf2a608646f32b55a715b5bb9ace1a53ba38e1ae25309dd6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36551646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b16a694465c5e2ebeb4fe7ef1185ce3257c918c1d0dea54b33485b321aa8b52`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:47:35 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 00:47:35 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 00:47:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 00:50:50 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 27 Mar 2019 00:50:50 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 27 Mar 2019 00:50:51 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 27 Mar 2019 00:52:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:52:53 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 00:52:54 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 00:52:55 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 00:52:55 GMT
WORKDIR /data
# Wed, 27 Mar 2019 00:52:56 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 00:52:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 00:52:57 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 00:52:57 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cde8019a4b43a4c7fb70ef830196d12a8ba0d031add8e93c3853685b60146393`  
		Last Modified: Wed, 27 Mar 2019 00:53:22 GMT  
		Size: 1.7 KB (1735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a473b37fb2921176dcdeb10cecd0171a8b2ef20ea51fcbf330a8ccd9c7efb3`  
		Last Modified: Wed, 27 Mar 2019 00:53:23 GMT  
		Size: 941.4 KB (941376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef382f94fd2491fa03f4c4c434dd975029e2a5b29967ce46ae35299bd2feb2a2`  
		Last Modified: Wed, 27 Mar 2019 00:53:51 GMT  
		Size: 4.8 MB (4849431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58929f25e82774186949485037286e3162faa7701215bf717833e2bcca2ef057`  
		Last Modified: Wed, 27 Mar 2019 00:53:51 GMT  
		Size: 8.3 MB (8262536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e2f85d52fc7ec626213b97e3ea7124bad1a42e542cd152823d399ac7222a03c`  
		Last Modified: Wed, 27 Mar 2019 00:53:50 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0d6708241bd0726441979e5b9e9cef20c7c6057a104274399df540cc9bc5d5b`  
		Last Modified: Wed, 27 Mar 2019 00:53:50 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.14-alpine`

```console
$ docker pull redis@sha256:7a543f606ea3e055a18ccbda719fb1e04f6922078f733cb39863619983e05031
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

### `redis:4.0.14-alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:e10fa92121e0462a8eb31300a18d2d8ea30775a90e886645f8ccc70519f72b7b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 MB (13699634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b3f042b7de545adc615ce0c3ffeb60628c380689e6ac96c5c39b340221c60cb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 05:38:42 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 05:38:44 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 20 Mar 2019 07:58:04 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 20 Mar 2019 07:58:04 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 20 Mar 2019 07:58:05 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 20 Mar 2019 07:58:29 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 20 Mar 2019 07:58:30 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 07:58:31 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 07:58:31 GMT
WORKDIR /data
# Wed, 20 Mar 2019 07:58:32 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 20 Mar 2019 07:58:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 07:58:32 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 07:58:33 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ba0c1f7e5a3f3ed61244f636c2d0a994092d082d619f402abd66e2d9a112e6c`  
		Last Modified: Fri, 08 Mar 2019 05:40:31 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b8b2a00ff26d6561bdd7a5a984e982700a4875d6c405669665f4a1690ca6eb`  
		Last Modified: Fri, 08 Mar 2019 05:40:32 GMT  
		Size: 405.3 KB (405282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b65a86152aaa712b6210169fbd0c900f1d59bc831b97ead3f2ae806d26ecbf77`  
		Last Modified: Wed, 20 Mar 2019 07:59:07 GMT  
		Size: 10.8 MB (10751850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8376c332d522ccf0c7cca2177f654d8e7fcf2c8e24b5b322647155058634625`  
		Last Modified: Wed, 20 Mar 2019 07:59:04 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bf522bd7ffbf6f434c14f958be14d68dd64cdb2c9984c586ddb79acdb79cab9`  
		Last Modified: Wed, 20 Mar 2019 07:59:04 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.14-alpine` - linux; arm variant v7

```console
$ docker pull redis@sha256:8c6225661981b7930543573ae247834f489a5c5bc93d390c46edb22da0b2d652
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.3 MB (13320142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:727d60926f8a6708b011956ec533ceea26c1abc2c63f628595c81ae6ce8a9acd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:52 GMT
ADD file:e9ae09c8f3973b62bf7e10dd8b9251e50f5479c0d8d1644f632f3886e02c7323 in / 
# Fri, 08 Mar 2019 03:35:52 GMT
CMD ["/bin/sh"]
# Tue, 12 Mar 2019 12:38:36 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Tue, 12 Mar 2019 12:38:38 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 20 Mar 2019 12:09:17 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 20 Mar 2019 12:09:17 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 20 Mar 2019 12:09:18 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 20 Mar 2019 12:09:46 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 20 Mar 2019 12:09:48 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 12:09:48 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 12:09:49 GMT
WORKDIR /data
# Wed, 20 Mar 2019 12:09:49 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 20 Mar 2019 12:09:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 12:09:50 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 12:09:51 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d8d287cbc5740a5d49f37493eecadafc220fee4fd570329023344cad978c4272`  
		Last Modified: Tue, 05 Mar 2019 08:53:06 GMT  
		Size: 2.3 MB (2348580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:148b4b0bab4816ad532c54415c960ce71044f82bad2883bee5f7a92549976b00`  
		Last Modified: Tue, 12 Mar 2019 12:40:38 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae65ef83e1480c00e4c632b5c256740f5286e126c96c2d10771be08b010dff0f`  
		Last Modified: Tue, 12 Mar 2019 12:40:38 GMT  
		Size: 398.6 KB (398574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04d58386d1c0326458aa39cd073d4a756cd69686b747ebb39928f1317c760bbe`  
		Last Modified: Wed, 20 Mar 2019 12:11:33 GMT  
		Size: 10.6 MB (10571154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f42a48a4d9d7efbe4877237742a060ed3993479a04bfa0da8489a71f89754add`  
		Last Modified: Wed, 20 Mar 2019 12:11:31 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8a7a8ba2deda6d8fd37ce03454d922965d4e0b56bc18effac3fab2c465bef7d`  
		Last Modified: Wed, 20 Mar 2019 12:11:30 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.14-alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:422f2f782d888adf68e334ce3bbdfaf070790bdc88784efcf36c8c6668ba201f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 MB (14146999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20a8788af8fc061b3d07e1613e10099d20cadf1b1c798e0065ed52db9312ec29`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 11:43:54 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 11:43:57 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 20 Mar 2019 10:22:06 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 20 Mar 2019 10:22:07 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 20 Mar 2019 10:22:09 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 20 Mar 2019 10:23:16 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 20 Mar 2019 10:23:19 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 10:23:20 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 10:23:21 GMT
WORKDIR /data
# Wed, 20 Mar 2019 10:23:22 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 20 Mar 2019 10:23:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 10:23:23 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 10:23:24 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9399e6d0245cf7181b0da72bf72a7673a2cbd03df8e8d269a7f581072fe06d06`  
		Last Modified: Fri, 08 Mar 2019 11:48:54 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:110f2f1a6525b6f6416d05654def28abb3f85447e8520aa1d50e95e5f74f8e48`  
		Last Modified: Fri, 08 Mar 2019 11:48:54 GMT  
		Size: 405.2 KB (405226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2238b8b5ee7bc8cba5972d31a48aa52b9c1653782b3549e69e1a294ebe8f5f4`  
		Last Modified: Wed, 20 Mar 2019 10:25:16 GMT  
		Size: 11.1 MB (11052064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b005940d990350f78b388d1c08a61a9d552a9c4f6657c7003863de5fedf3ca`  
		Last Modified: Wed, 20 Mar 2019 10:25:12 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bc1cfcb8278c98ab7d628f3ca853f1fca8808744e5a93f9c8f4263e5935c505`  
		Last Modified: Wed, 20 Mar 2019 10:25:12 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.14-alpine` - linux; 386

```console
$ docker pull redis@sha256:626a288a462b8071aebd987a2c8f04b38898decc630f2bfbae8df1279b69b252
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 MB (13817779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a60a8dbec84e46c59cc1198c9a38f94b656f5e034bee02eda6faef0eab227282`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:50 GMT
ADD file:98a0f92574b6a8592a131ccb07c4f516694e053d610a1701fde2d5e7c65c2175 in / 
# Fri, 08 Mar 2019 03:35:50 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 10:14:05 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 10:14:07 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 20 Mar 2019 11:48:01 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 20 Mar 2019 11:48:01 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 20 Mar 2019 11:48:01 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 20 Mar 2019 11:48:47 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 20 Mar 2019 11:48:48 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 11:48:48 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 11:48:48 GMT
WORKDIR /data
# Wed, 20 Mar 2019 11:48:48 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 20 Mar 2019 11:48:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 11:48:49 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 11:48:49 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:a4c1e43a7431a562d92c5eb6e09e96b4731a474af51cad1c46e2d305ede29005`  
		Last Modified: Fri, 08 Mar 2019 03:36:34 GMT  
		Size: 2.7 MB (2749355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed2f32c3fa1b6c04a79ca05078e80927d1f1819bd561ce4b1ccb8a2f149d8356`  
		Last Modified: Fri, 08 Mar 2019 10:16:17 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee3d69b92603c14c56cbff7eb925f16b36a83bda909ae7a9f75374d27186e0a`  
		Last Modified: Fri, 08 Mar 2019 10:16:17 GMT  
		Size: 408.0 KB (408008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f72afb30629131f88fb6eabe974096078ccbbdb590d26aa366589838dbc26ebb`  
		Last Modified: Wed, 20 Mar 2019 11:49:34 GMT  
		Size: 10.7 MB (10658649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:044ec38b361f97f4cc9ff740cff2eae6a2d71dcc6180283e2b7ad4c918ed9225`  
		Last Modified: Wed, 20 Mar 2019 11:49:31 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac11188b949d48f3e2a949aa3ffbd6e4543cb38437c0305df8dede125cf983e1`  
		Last Modified: Wed, 20 Mar 2019 11:49:31 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.14-alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:ad8a6c69a71bd960d24c49d0d33130bb2a35d31807ba71df373bdf7d29673cb2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.8 MB (14803981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38fcf8627e0b1c86e6f89e72f94e24526d7f1f63251a29c059056857071b347a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:33 GMT
ADD file:6dfaec9befa64397af571d1da2e766c694148f7a025b9411404a924d3de64bd3 in / 
# Fri, 08 Mar 2019 03:37:36 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 06:21:57 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 06:22:04 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 20 Mar 2019 09:20:17 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 20 Mar 2019 09:20:22 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 20 Mar 2019 09:20:24 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 20 Mar 2019 09:20:53 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 20 Mar 2019 09:20:58 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 09:21:00 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 09:21:02 GMT
WORKDIR /data
# Wed, 20 Mar 2019 09:21:05 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 20 Mar 2019 09:21:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 09:21:12 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 09:21:15 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:611bce2a4fa9a0e18025e088381d26f1dda2e1c02160c4d24a2720f9dbca9eaf`  
		Last Modified: Fri, 08 Mar 2019 03:38:31 GMT  
		Size: 2.8 MB (2778638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25449434ca2fa6ccc1883d472a26a792336aa1e27c229839f973d583c91a00fe`  
		Last Modified: Fri, 08 Mar 2019 06:27:10 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec248071ec2459c6ae88a0190e574312e021aeb70c18e5058f9878489c0e00b`  
		Last Modified: Fri, 08 Mar 2019 06:27:10 GMT  
		Size: 410.3 KB (410336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f50579f583495a822825c1d0b5f3365b98cb30afe39833f85f87d7bd46f887d`  
		Last Modified: Wed, 20 Mar 2019 09:23:13 GMT  
		Size: 11.6 MB (11613171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:116d2f7ce80629b7a3c5f4021df99407e777da8122688199c4cac7d6ea4eac66`  
		Last Modified: Wed, 20 Mar 2019 09:23:10 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0684f7d8203891138362858c010d75e20cd257b6580bc019d560dc8737bcea1`  
		Last Modified: Wed, 20 Mar 2019 09:23:10 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.14-alpine` - linux; s390x

```console
$ docker pull redis@sha256:4ffbcb1f78e8790da4474d75f9dc644f1a4f759096878213bbbf3011bd07a00c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 MB (14213531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34f4d0f9f94997371e5dbbd377a0201d371ffe7b2fba8d2d45e5cc32d49af16f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 05:35:49 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 05:35:50 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 20 Mar 2019 12:40:30 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 20 Mar 2019 12:40:31 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 20 Mar 2019 12:40:31 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 20 Mar 2019 12:41:39 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 20 Mar 2019 12:41:40 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 12:41:41 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 12:41:41 GMT
WORKDIR /data
# Wed, 20 Mar 2019 12:41:42 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 20 Mar 2019 12:41:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 12:41:43 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 12:41:43 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:668dbb1da38bf6b755c53ced346a702cc89f825fae11e7c280c4937d86c6052f`  
		Last Modified: Fri, 08 Mar 2019 05:37:28 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a9bb4447ea68836f7469bf09fbdaf11252c6449487839e8864900ba4b92d03f`  
		Last Modified: Fri, 08 Mar 2019 05:37:28 GMT  
		Size: 407.9 KB (407852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:999fb1503a16236b99a7ff0d7a3221ddfbad7fb54388a5374e4d945596768737`  
		Last Modified: Wed, 20 Mar 2019 12:43:35 GMT  
		Size: 11.3 MB (11262610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d62e66b2a21e703e0fcedd76df7f872f365e6e6fb2c4e26a95df8b2011ad7d8c`  
		Last Modified: Wed, 20 Mar 2019 12:43:30 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cd52c8a3770ce676ab6279d6ad8f0a5329939110c080d3a24c9f26b571904cf`  
		Last Modified: Wed, 20 Mar 2019 12:43:30 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.14-alpine3.9`

```console
$ docker pull redis@sha256:7a543f606ea3e055a18ccbda719fb1e04f6922078f733cb39863619983e05031
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

### `redis:4.0.14-alpine3.9` - linux; arm variant v6

```console
$ docker pull redis@sha256:e10fa92121e0462a8eb31300a18d2d8ea30775a90e886645f8ccc70519f72b7b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 MB (13699634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b3f042b7de545adc615ce0c3ffeb60628c380689e6ac96c5c39b340221c60cb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 05:38:42 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 05:38:44 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 20 Mar 2019 07:58:04 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 20 Mar 2019 07:58:04 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 20 Mar 2019 07:58:05 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 20 Mar 2019 07:58:29 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 20 Mar 2019 07:58:30 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 07:58:31 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 07:58:31 GMT
WORKDIR /data
# Wed, 20 Mar 2019 07:58:32 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 20 Mar 2019 07:58:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 07:58:32 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 07:58:33 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ba0c1f7e5a3f3ed61244f636c2d0a994092d082d619f402abd66e2d9a112e6c`  
		Last Modified: Fri, 08 Mar 2019 05:40:31 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b8b2a00ff26d6561bdd7a5a984e982700a4875d6c405669665f4a1690ca6eb`  
		Last Modified: Fri, 08 Mar 2019 05:40:32 GMT  
		Size: 405.3 KB (405282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b65a86152aaa712b6210169fbd0c900f1d59bc831b97ead3f2ae806d26ecbf77`  
		Last Modified: Wed, 20 Mar 2019 07:59:07 GMT  
		Size: 10.8 MB (10751850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8376c332d522ccf0c7cca2177f654d8e7fcf2c8e24b5b322647155058634625`  
		Last Modified: Wed, 20 Mar 2019 07:59:04 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bf522bd7ffbf6f434c14f958be14d68dd64cdb2c9984c586ddb79acdb79cab9`  
		Last Modified: Wed, 20 Mar 2019 07:59:04 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.14-alpine3.9` - linux; arm variant v7

```console
$ docker pull redis@sha256:8c6225661981b7930543573ae247834f489a5c5bc93d390c46edb22da0b2d652
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.3 MB (13320142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:727d60926f8a6708b011956ec533ceea26c1abc2c63f628595c81ae6ce8a9acd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:52 GMT
ADD file:e9ae09c8f3973b62bf7e10dd8b9251e50f5479c0d8d1644f632f3886e02c7323 in / 
# Fri, 08 Mar 2019 03:35:52 GMT
CMD ["/bin/sh"]
# Tue, 12 Mar 2019 12:38:36 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Tue, 12 Mar 2019 12:38:38 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 20 Mar 2019 12:09:17 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 20 Mar 2019 12:09:17 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 20 Mar 2019 12:09:18 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 20 Mar 2019 12:09:46 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 20 Mar 2019 12:09:48 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 12:09:48 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 12:09:49 GMT
WORKDIR /data
# Wed, 20 Mar 2019 12:09:49 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 20 Mar 2019 12:09:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 12:09:50 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 12:09:51 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d8d287cbc5740a5d49f37493eecadafc220fee4fd570329023344cad978c4272`  
		Last Modified: Tue, 05 Mar 2019 08:53:06 GMT  
		Size: 2.3 MB (2348580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:148b4b0bab4816ad532c54415c960ce71044f82bad2883bee5f7a92549976b00`  
		Last Modified: Tue, 12 Mar 2019 12:40:38 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae65ef83e1480c00e4c632b5c256740f5286e126c96c2d10771be08b010dff0f`  
		Last Modified: Tue, 12 Mar 2019 12:40:38 GMT  
		Size: 398.6 KB (398574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04d58386d1c0326458aa39cd073d4a756cd69686b747ebb39928f1317c760bbe`  
		Last Modified: Wed, 20 Mar 2019 12:11:33 GMT  
		Size: 10.6 MB (10571154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f42a48a4d9d7efbe4877237742a060ed3993479a04bfa0da8489a71f89754add`  
		Last Modified: Wed, 20 Mar 2019 12:11:31 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8a7a8ba2deda6d8fd37ce03454d922965d4e0b56bc18effac3fab2c465bef7d`  
		Last Modified: Wed, 20 Mar 2019 12:11:30 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.14-alpine3.9` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:422f2f782d888adf68e334ce3bbdfaf070790bdc88784efcf36c8c6668ba201f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 MB (14146999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20a8788af8fc061b3d07e1613e10099d20cadf1b1c798e0065ed52db9312ec29`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 11:43:54 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 11:43:57 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 20 Mar 2019 10:22:06 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 20 Mar 2019 10:22:07 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 20 Mar 2019 10:22:09 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 20 Mar 2019 10:23:16 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 20 Mar 2019 10:23:19 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 10:23:20 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 10:23:21 GMT
WORKDIR /data
# Wed, 20 Mar 2019 10:23:22 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 20 Mar 2019 10:23:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 10:23:23 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 10:23:24 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9399e6d0245cf7181b0da72bf72a7673a2cbd03df8e8d269a7f581072fe06d06`  
		Last Modified: Fri, 08 Mar 2019 11:48:54 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:110f2f1a6525b6f6416d05654def28abb3f85447e8520aa1d50e95e5f74f8e48`  
		Last Modified: Fri, 08 Mar 2019 11:48:54 GMT  
		Size: 405.2 KB (405226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2238b8b5ee7bc8cba5972d31a48aa52b9c1653782b3549e69e1a294ebe8f5f4`  
		Last Modified: Wed, 20 Mar 2019 10:25:16 GMT  
		Size: 11.1 MB (11052064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b005940d990350f78b388d1c08a61a9d552a9c4f6657c7003863de5fedf3ca`  
		Last Modified: Wed, 20 Mar 2019 10:25:12 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bc1cfcb8278c98ab7d628f3ca853f1fca8808744e5a93f9c8f4263e5935c505`  
		Last Modified: Wed, 20 Mar 2019 10:25:12 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.14-alpine3.9` - linux; 386

```console
$ docker pull redis@sha256:626a288a462b8071aebd987a2c8f04b38898decc630f2bfbae8df1279b69b252
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 MB (13817779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a60a8dbec84e46c59cc1198c9a38f94b656f5e034bee02eda6faef0eab227282`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:50 GMT
ADD file:98a0f92574b6a8592a131ccb07c4f516694e053d610a1701fde2d5e7c65c2175 in / 
# Fri, 08 Mar 2019 03:35:50 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 10:14:05 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 10:14:07 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 20 Mar 2019 11:48:01 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 20 Mar 2019 11:48:01 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 20 Mar 2019 11:48:01 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 20 Mar 2019 11:48:47 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 20 Mar 2019 11:48:48 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 11:48:48 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 11:48:48 GMT
WORKDIR /data
# Wed, 20 Mar 2019 11:48:48 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 20 Mar 2019 11:48:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 11:48:49 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 11:48:49 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:a4c1e43a7431a562d92c5eb6e09e96b4731a474af51cad1c46e2d305ede29005`  
		Last Modified: Fri, 08 Mar 2019 03:36:34 GMT  
		Size: 2.7 MB (2749355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed2f32c3fa1b6c04a79ca05078e80927d1f1819bd561ce4b1ccb8a2f149d8356`  
		Last Modified: Fri, 08 Mar 2019 10:16:17 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee3d69b92603c14c56cbff7eb925f16b36a83bda909ae7a9f75374d27186e0a`  
		Last Modified: Fri, 08 Mar 2019 10:16:17 GMT  
		Size: 408.0 KB (408008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f72afb30629131f88fb6eabe974096078ccbbdb590d26aa366589838dbc26ebb`  
		Last Modified: Wed, 20 Mar 2019 11:49:34 GMT  
		Size: 10.7 MB (10658649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:044ec38b361f97f4cc9ff740cff2eae6a2d71dcc6180283e2b7ad4c918ed9225`  
		Last Modified: Wed, 20 Mar 2019 11:49:31 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac11188b949d48f3e2a949aa3ffbd6e4543cb38437c0305df8dede125cf983e1`  
		Last Modified: Wed, 20 Mar 2019 11:49:31 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.14-alpine3.9` - linux; ppc64le

```console
$ docker pull redis@sha256:ad8a6c69a71bd960d24c49d0d33130bb2a35d31807ba71df373bdf7d29673cb2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.8 MB (14803981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38fcf8627e0b1c86e6f89e72f94e24526d7f1f63251a29c059056857071b347a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:33 GMT
ADD file:6dfaec9befa64397af571d1da2e766c694148f7a025b9411404a924d3de64bd3 in / 
# Fri, 08 Mar 2019 03:37:36 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 06:21:57 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 06:22:04 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 20 Mar 2019 09:20:17 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 20 Mar 2019 09:20:22 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 20 Mar 2019 09:20:24 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 20 Mar 2019 09:20:53 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 20 Mar 2019 09:20:58 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 09:21:00 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 09:21:02 GMT
WORKDIR /data
# Wed, 20 Mar 2019 09:21:05 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 20 Mar 2019 09:21:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 09:21:12 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 09:21:15 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:611bce2a4fa9a0e18025e088381d26f1dda2e1c02160c4d24a2720f9dbca9eaf`  
		Last Modified: Fri, 08 Mar 2019 03:38:31 GMT  
		Size: 2.8 MB (2778638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25449434ca2fa6ccc1883d472a26a792336aa1e27c229839f973d583c91a00fe`  
		Last Modified: Fri, 08 Mar 2019 06:27:10 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec248071ec2459c6ae88a0190e574312e021aeb70c18e5058f9878489c0e00b`  
		Last Modified: Fri, 08 Mar 2019 06:27:10 GMT  
		Size: 410.3 KB (410336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f50579f583495a822825c1d0b5f3365b98cb30afe39833f85f87d7bd46f887d`  
		Last Modified: Wed, 20 Mar 2019 09:23:13 GMT  
		Size: 11.6 MB (11613171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:116d2f7ce80629b7a3c5f4021df99407e777da8122688199c4cac7d6ea4eac66`  
		Last Modified: Wed, 20 Mar 2019 09:23:10 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0684f7d8203891138362858c010d75e20cd257b6580bc019d560dc8737bcea1`  
		Last Modified: Wed, 20 Mar 2019 09:23:10 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.14-alpine3.9` - linux; s390x

```console
$ docker pull redis@sha256:4ffbcb1f78e8790da4474d75f9dc644f1a4f759096878213bbbf3011bd07a00c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 MB (14213531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34f4d0f9f94997371e5dbbd377a0201d371ffe7b2fba8d2d45e5cc32d49af16f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 05:35:49 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 05:35:50 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 20 Mar 2019 12:40:30 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 20 Mar 2019 12:40:31 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 20 Mar 2019 12:40:31 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 20 Mar 2019 12:41:39 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 20 Mar 2019 12:41:40 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 12:41:41 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 12:41:41 GMT
WORKDIR /data
# Wed, 20 Mar 2019 12:41:42 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 20 Mar 2019 12:41:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 12:41:43 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 12:41:43 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:668dbb1da38bf6b755c53ced346a702cc89f825fae11e7c280c4937d86c6052f`  
		Last Modified: Fri, 08 Mar 2019 05:37:28 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a9bb4447ea68836f7469bf09fbdaf11252c6449487839e8864900ba4b92d03f`  
		Last Modified: Fri, 08 Mar 2019 05:37:28 GMT  
		Size: 407.9 KB (407852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:999fb1503a16236b99a7ff0d7a3221ddfbad7fb54388a5374e4d945596768737`  
		Last Modified: Wed, 20 Mar 2019 12:43:35 GMT  
		Size: 11.3 MB (11262610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d62e66b2a21e703e0fcedd76df7f872f365e6e6fb2c4e26a95df8b2011ad7d8c`  
		Last Modified: Wed, 20 Mar 2019 12:43:30 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cd52c8a3770ce676ab6279d6ad8f0a5329939110c080d3a24c9f26b571904cf`  
		Last Modified: Wed, 20 Mar 2019 12:43:30 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.14-stretch`

```console
$ docker pull redis@sha256:af0ec8065fa7f1ce2132a9d616cf1728acbd1d80917008f406f37135cb5a2e0e
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
$ docker pull redis@sha256:875bb0f0a17a3a4d60a7a526a9a6d16cb7beb3852fbd267cf5d4c958a110ee1d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32138267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14433f4e77ab854faecae1ba0089bd42ef8dda98411278f71d4dcfc068433fb4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:47:35 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 00:47:35 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 00:47:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 00:50:50 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 27 Mar 2019 00:50:50 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 27 Mar 2019 00:50:51 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 27 Mar 2019 00:51:33 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 00:51:33 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 00:51:33 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 00:51:34 GMT
WORKDIR /data
# Wed, 27 Mar 2019 00:51:34 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 00:51:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 00:51:35 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 00:51:35 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cde8019a4b43a4c7fb70ef830196d12a8ba0d031add8e93c3853685b60146393`  
		Last Modified: Wed, 27 Mar 2019 00:53:22 GMT  
		Size: 1.7 KB (1735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a473b37fb2921176dcdeb10cecd0171a8b2ef20ea51fcbf330a8ccd9c7efb3`  
		Last Modified: Wed, 27 Mar 2019 00:53:23 GMT  
		Size: 941.4 KB (941376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5b25739b6641469b330cfb1da254de23326f2755826879b8de798a05512dd9b`  
		Last Modified: Wed, 27 Mar 2019 00:53:44 GMT  
		Size: 8.7 MB (8698592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:304d8b43da6cfd0125015ee676da73734d2f116486594ebfbc5b8423810f1abc`  
		Last Modified: Wed, 27 Mar 2019 00:53:43 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d5b26f886bd3179d29679e82b77d8849c85372702117961a662c640292ec596`  
		Last Modified: Wed, 27 Mar 2019 00:53:42 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.14-stretch` - linux; arm variant v5

```console
$ docker pull redis@sha256:5ca508397fc9b3ec076c0dcce70cc4a1128f6e3d49535312a1e9e4412424464e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30517717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d303062e1bf1379f1083845244d50307ac9ab50f824d14da1f78cce533be61c6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:57 GMT
ADD file:7a35d0949b1b3e7394102d060feb38dba6645340f0c24c11c41eab11995474e2 in / 
# Wed, 27 Mar 2019 08:53:58 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 11:26:24 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 11:26:25 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 11:26:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 11:28:07 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 27 Mar 2019 11:28:07 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 27 Mar 2019 11:28:08 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 27 Mar 2019 11:28:55 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 11:28:56 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 11:28:56 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 11:28:57 GMT
WORKDIR /data
# Wed, 27 Mar 2019 11:28:57 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 11:28:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 11:28:58 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 11:28:59 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:2e028234e3987a188a306c264af3c27abc8240fc8e19373e1c5adc01b31e6176`  
		Last Modified: Wed, 27 Mar 2019 08:59:38 GMT  
		Size: 21.2 MB (21160663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22282ee903e4c1d6bf8a2d2a6d97abed822566f7c086113bc216da0e19f98481`  
		Last Modified: Wed, 27 Mar 2019 11:29:19 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e500ce3d68f7530cd30cab9d55a054fab93622078e8a8462c3a27c37a54a698`  
		Last Modified: Wed, 27 Mar 2019 11:29:19 GMT  
		Size: 931.2 KB (931223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c118fc26a93c9f17b8521fed4c76966c78517b6d0ca5fd8d75b3ad3e9a5c348f`  
		Last Modified: Wed, 27 Mar 2019 11:29:38 GMT  
		Size: 8.4 MB (8423543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cf1adf853369bb68a46403802842d3925343bbb1cc6abd5a0766296ed953ab7`  
		Last Modified: Wed, 27 Mar 2019 11:29:35 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff112a026566ef6a8079f2b967ee1485a9057c0cbffe2347e551746f333ffe67`  
		Last Modified: Wed, 27 Mar 2019 11:29:35 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.14-stretch` - linux; arm variant v7

```console
$ docker pull redis@sha256:61ebc007608875ee4dd11ac89573c32e01e382bbb5cf13a47c14cc40e4d963e5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28397869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f57000771083a959a74a0b86540c80c85f0722a856f862f1579e54716eb73e1`
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
# Wed, 20 Mar 2019 12:08:30 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 20 Mar 2019 12:08:31 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 20 Mar 2019 12:08:31 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 20 Mar 2019 12:09:09 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 20 Mar 2019 12:09:10 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 12:09:11 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 12:09:11 GMT
WORKDIR /data
# Wed, 20 Mar 2019 12:09:11 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 20 Mar 2019 12:09:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 12:09:12 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 12:09:13 GMT
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
	-	`sha256:40588ad618e817134950146d46fa435ce90b8b920831fef2fbb6ab052bf77013`  
		Last Modified: Wed, 20 Mar 2019 12:11:17 GMT  
		Size: 8.2 MB (8197264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cab37edd4f6c33eec0df5f6e29c2d377d4494270744ce32a047542bfdca6d8a8`  
		Last Modified: Wed, 20 Mar 2019 12:11:14 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbf89b74800746ec375ac91c7dbab8e55c80e6d4d9001703025d4c04c294890d`  
		Last Modified: Wed, 20 Mar 2019 12:11:14 GMT  
		Size: 419.0 B  
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
$ docker pull redis@sha256:ec28bc1c54fd79d376e1511b657c137f0d2c7cb7f372d646e7cdeff76b60843f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32306227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b6ce8aba3dd0cebd238561fe24055704d52c6c9fac8d329f9bfd5ee9e1a5f95`
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
# Wed, 20 Mar 2019 11:47:08 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 20 Mar 2019 11:47:08 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 20 Mar 2019 11:47:08 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 20 Mar 2019 11:47:49 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 20 Mar 2019 11:47:50 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 11:47:50 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 11:47:50 GMT
WORKDIR /data
# Wed, 20 Mar 2019 11:47:50 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 20 Mar 2019 11:47:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 11:47:51 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 11:47:51 GMT
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
	-	`sha256:96e9d76b540492f2d3806a307dae2c87cd1b8f754a343dcb14add874451f492d`  
		Last Modified: Wed, 20 Mar 2019 11:49:26 GMT  
		Size: 8.3 MB (8258170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14d6428583b890186b8af74bf116f421603ec4cba3131c2ac7604fb3a8e491b5`  
		Last Modified: Wed, 20 Mar 2019 11:49:24 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6ea3e305b49572cb9a6ca0bf46a34b2ae903994197f884339507b9e06a9a134`  
		Last Modified: Wed, 20 Mar 2019 11:49:24 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.14-stretch` - linux; ppc64le

```console
$ docker pull redis@sha256:71c40a074a64dd41d1cbceb34cb97fb24ebab2b53df5e2455d025004b70190da
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.5 MB (32536235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb0f163cfb6d11cdd8305d8678dc7228f89c25c8a87978ae1043fa40e1d82067`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 10:05:16 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 10:05:19 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 10:06:39 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 10:09:26 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 27 Mar 2019 10:09:28 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 27 Mar 2019 10:09:29 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 27 Mar 2019 10:10:49 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 10:10:54 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 10:10:55 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 10:10:57 GMT
WORKDIR /data
# Wed, 27 Mar 2019 10:10:58 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 10:11:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 10:11:03 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 10:11:05 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:47457ee2fac27696752b903854c4e4621e3481edc7a34b727f45b4c355de7976`  
		Last Modified: Wed, 27 Mar 2019 08:32:50 GMT  
		Size: 22.8 MB (22751385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819a2a3a3ce9b3f41a4d25dea1025d16f8da4ae9f0c26fc2f7676f4d6e20bf74`  
		Last Modified: Wed, 27 Mar 2019 10:11:42 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c2e912949846d9432577f43246c2dcd56037117a714ac374e7d5778e93748ef`  
		Last Modified: Wed, 27 Mar 2019 10:11:43 GMT  
		Size: 909.8 KB (909818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:458def4e63521abe9024bc8694adab44aa1883c7e259fadd7e1eecdf8811e60c`  
		Last Modified: Wed, 27 Mar 2019 10:12:17 GMT  
		Size: 8.9 MB (8872741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a800ec3808b81a01a6026e76c8a03d0ec2aba981d8f73dc7d09dd3675961a372`  
		Last Modified: Wed, 27 Mar 2019 10:12:14 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58a5f4c89b11770201cb9e0597443b1ae5ae89da41969c451ebb05baafc5dfd6`  
		Last Modified: Wed, 27 Mar 2019 10:12:15 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.14-stretch` - linux; s390x

```console
$ docker pull redis@sha256:be1da9c852c46a8176500c4b3b1d07722376597d6fd189e43503a06f18567bf5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32366496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09dbab1dcbe95a364008742b7b9cad160c8ab082487469b88cd59181e9416aa9`
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
# Wed, 20 Mar 2019 12:38:38 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 20 Mar 2019 12:38:38 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 20 Mar 2019 12:38:39 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 20 Mar 2019 12:40:04 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 20 Mar 2019 12:40:07 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 12:40:08 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 12:40:09 GMT
WORKDIR /data
# Wed, 20 Mar 2019 12:40:09 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 20 Mar 2019 12:40:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 12:40:13 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 12:40:14 GMT
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
	-	`sha256:d0600d3dbd107715dc88d68facf31b9dcd9831ae0eb4e5c6e30069e9dce17c5b`  
		Last Modified: Wed, 20 Mar 2019 12:43:17 GMT  
		Size: 9.1 MB (9092067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dc424a122702e5a383df145eef6938fcc7e460556655f705fa1edd1ca295af2`  
		Last Modified: Wed, 20 Mar 2019 12:43:13 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1177266c560d3cbff9e5b72766a2e80d4a8973d1a4f8fd35f5b6c0fbad428ad8`  
		Last Modified: Wed, 20 Mar 2019 12:43:13 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0-32bit`

```console
$ docker pull redis@sha256:2c0a5e8161a33c79208e6fe2b40775e320529ab4402bbd5ee4870218cdd68894
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4.0-32bit` - linux; amd64

```console
$ docker pull redis@sha256:5982b62e07047986cf2a608646f32b55a715b5bb9ace1a53ba38e1ae25309dd6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36551646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b16a694465c5e2ebeb4fe7ef1185ce3257c918c1d0dea54b33485b321aa8b52`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:47:35 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 00:47:35 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 00:47:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 00:50:50 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 27 Mar 2019 00:50:50 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 27 Mar 2019 00:50:51 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 27 Mar 2019 00:52:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:52:53 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 00:52:54 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 00:52:55 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 00:52:55 GMT
WORKDIR /data
# Wed, 27 Mar 2019 00:52:56 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 00:52:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 00:52:57 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 00:52:57 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cde8019a4b43a4c7fb70ef830196d12a8ba0d031add8e93c3853685b60146393`  
		Last Modified: Wed, 27 Mar 2019 00:53:22 GMT  
		Size: 1.7 KB (1735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a473b37fb2921176dcdeb10cecd0171a8b2ef20ea51fcbf330a8ccd9c7efb3`  
		Last Modified: Wed, 27 Mar 2019 00:53:23 GMT  
		Size: 941.4 KB (941376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef382f94fd2491fa03f4c4c434dd975029e2a5b29967ce46ae35299bd2feb2a2`  
		Last Modified: Wed, 27 Mar 2019 00:53:51 GMT  
		Size: 4.8 MB (4849431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58929f25e82774186949485037286e3162faa7701215bf717833e2bcca2ef057`  
		Last Modified: Wed, 27 Mar 2019 00:53:51 GMT  
		Size: 8.3 MB (8262536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e2f85d52fc7ec626213b97e3ea7124bad1a42e542cd152823d399ac7222a03c`  
		Last Modified: Wed, 27 Mar 2019 00:53:50 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0d6708241bd0726441979e5b9e9cef20c7c6057a104274399df540cc9bc5d5b`  
		Last Modified: Wed, 27 Mar 2019 00:53:50 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0-32bit-stretch`

```console
$ docker pull redis@sha256:2c0a5e8161a33c79208e6fe2b40775e320529ab4402bbd5ee4870218cdd68894
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4.0-32bit-stretch` - linux; amd64

```console
$ docker pull redis@sha256:5982b62e07047986cf2a608646f32b55a715b5bb9ace1a53ba38e1ae25309dd6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36551646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b16a694465c5e2ebeb4fe7ef1185ce3257c918c1d0dea54b33485b321aa8b52`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:47:35 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 00:47:35 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 00:47:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 00:50:50 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 27 Mar 2019 00:50:50 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 27 Mar 2019 00:50:51 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 27 Mar 2019 00:52:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:52:53 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 00:52:54 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 00:52:55 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 00:52:55 GMT
WORKDIR /data
# Wed, 27 Mar 2019 00:52:56 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 00:52:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 00:52:57 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 00:52:57 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cde8019a4b43a4c7fb70ef830196d12a8ba0d031add8e93c3853685b60146393`  
		Last Modified: Wed, 27 Mar 2019 00:53:22 GMT  
		Size: 1.7 KB (1735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a473b37fb2921176dcdeb10cecd0171a8b2ef20ea51fcbf330a8ccd9c7efb3`  
		Last Modified: Wed, 27 Mar 2019 00:53:23 GMT  
		Size: 941.4 KB (941376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef382f94fd2491fa03f4c4c434dd975029e2a5b29967ce46ae35299bd2feb2a2`  
		Last Modified: Wed, 27 Mar 2019 00:53:51 GMT  
		Size: 4.8 MB (4849431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58929f25e82774186949485037286e3162faa7701215bf717833e2bcca2ef057`  
		Last Modified: Wed, 27 Mar 2019 00:53:51 GMT  
		Size: 8.3 MB (8262536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e2f85d52fc7ec626213b97e3ea7124bad1a42e542cd152823d399ac7222a03c`  
		Last Modified: Wed, 27 Mar 2019 00:53:50 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0d6708241bd0726441979e5b9e9cef20c7c6057a104274399df540cc9bc5d5b`  
		Last Modified: Wed, 27 Mar 2019 00:53:50 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0-alpine`

```console
$ docker pull redis@sha256:7a543f606ea3e055a18ccbda719fb1e04f6922078f733cb39863619983e05031
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

### `redis:4.0-alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:e10fa92121e0462a8eb31300a18d2d8ea30775a90e886645f8ccc70519f72b7b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 MB (13699634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b3f042b7de545adc615ce0c3ffeb60628c380689e6ac96c5c39b340221c60cb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 05:38:42 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 05:38:44 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 20 Mar 2019 07:58:04 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 20 Mar 2019 07:58:04 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 20 Mar 2019 07:58:05 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 20 Mar 2019 07:58:29 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 20 Mar 2019 07:58:30 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 07:58:31 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 07:58:31 GMT
WORKDIR /data
# Wed, 20 Mar 2019 07:58:32 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 20 Mar 2019 07:58:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 07:58:32 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 07:58:33 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ba0c1f7e5a3f3ed61244f636c2d0a994092d082d619f402abd66e2d9a112e6c`  
		Last Modified: Fri, 08 Mar 2019 05:40:31 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b8b2a00ff26d6561bdd7a5a984e982700a4875d6c405669665f4a1690ca6eb`  
		Last Modified: Fri, 08 Mar 2019 05:40:32 GMT  
		Size: 405.3 KB (405282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b65a86152aaa712b6210169fbd0c900f1d59bc831b97ead3f2ae806d26ecbf77`  
		Last Modified: Wed, 20 Mar 2019 07:59:07 GMT  
		Size: 10.8 MB (10751850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8376c332d522ccf0c7cca2177f654d8e7fcf2c8e24b5b322647155058634625`  
		Last Modified: Wed, 20 Mar 2019 07:59:04 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bf522bd7ffbf6f434c14f958be14d68dd64cdb2c9984c586ddb79acdb79cab9`  
		Last Modified: Wed, 20 Mar 2019 07:59:04 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine` - linux; arm variant v7

```console
$ docker pull redis@sha256:8c6225661981b7930543573ae247834f489a5c5bc93d390c46edb22da0b2d652
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.3 MB (13320142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:727d60926f8a6708b011956ec533ceea26c1abc2c63f628595c81ae6ce8a9acd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:52 GMT
ADD file:e9ae09c8f3973b62bf7e10dd8b9251e50f5479c0d8d1644f632f3886e02c7323 in / 
# Fri, 08 Mar 2019 03:35:52 GMT
CMD ["/bin/sh"]
# Tue, 12 Mar 2019 12:38:36 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Tue, 12 Mar 2019 12:38:38 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 20 Mar 2019 12:09:17 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 20 Mar 2019 12:09:17 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 20 Mar 2019 12:09:18 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 20 Mar 2019 12:09:46 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 20 Mar 2019 12:09:48 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 12:09:48 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 12:09:49 GMT
WORKDIR /data
# Wed, 20 Mar 2019 12:09:49 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 20 Mar 2019 12:09:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 12:09:50 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 12:09:51 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d8d287cbc5740a5d49f37493eecadafc220fee4fd570329023344cad978c4272`  
		Last Modified: Tue, 05 Mar 2019 08:53:06 GMT  
		Size: 2.3 MB (2348580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:148b4b0bab4816ad532c54415c960ce71044f82bad2883bee5f7a92549976b00`  
		Last Modified: Tue, 12 Mar 2019 12:40:38 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae65ef83e1480c00e4c632b5c256740f5286e126c96c2d10771be08b010dff0f`  
		Last Modified: Tue, 12 Mar 2019 12:40:38 GMT  
		Size: 398.6 KB (398574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04d58386d1c0326458aa39cd073d4a756cd69686b747ebb39928f1317c760bbe`  
		Last Modified: Wed, 20 Mar 2019 12:11:33 GMT  
		Size: 10.6 MB (10571154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f42a48a4d9d7efbe4877237742a060ed3993479a04bfa0da8489a71f89754add`  
		Last Modified: Wed, 20 Mar 2019 12:11:31 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8a7a8ba2deda6d8fd37ce03454d922965d4e0b56bc18effac3fab2c465bef7d`  
		Last Modified: Wed, 20 Mar 2019 12:11:30 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:422f2f782d888adf68e334ce3bbdfaf070790bdc88784efcf36c8c6668ba201f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 MB (14146999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20a8788af8fc061b3d07e1613e10099d20cadf1b1c798e0065ed52db9312ec29`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 11:43:54 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 11:43:57 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 20 Mar 2019 10:22:06 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 20 Mar 2019 10:22:07 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 20 Mar 2019 10:22:09 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 20 Mar 2019 10:23:16 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 20 Mar 2019 10:23:19 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 10:23:20 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 10:23:21 GMT
WORKDIR /data
# Wed, 20 Mar 2019 10:23:22 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 20 Mar 2019 10:23:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 10:23:23 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 10:23:24 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9399e6d0245cf7181b0da72bf72a7673a2cbd03df8e8d269a7f581072fe06d06`  
		Last Modified: Fri, 08 Mar 2019 11:48:54 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:110f2f1a6525b6f6416d05654def28abb3f85447e8520aa1d50e95e5f74f8e48`  
		Last Modified: Fri, 08 Mar 2019 11:48:54 GMT  
		Size: 405.2 KB (405226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2238b8b5ee7bc8cba5972d31a48aa52b9c1653782b3549e69e1a294ebe8f5f4`  
		Last Modified: Wed, 20 Mar 2019 10:25:16 GMT  
		Size: 11.1 MB (11052064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b005940d990350f78b388d1c08a61a9d552a9c4f6657c7003863de5fedf3ca`  
		Last Modified: Wed, 20 Mar 2019 10:25:12 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bc1cfcb8278c98ab7d628f3ca853f1fca8808744e5a93f9c8f4263e5935c505`  
		Last Modified: Wed, 20 Mar 2019 10:25:12 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine` - linux; 386

```console
$ docker pull redis@sha256:626a288a462b8071aebd987a2c8f04b38898decc630f2bfbae8df1279b69b252
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 MB (13817779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a60a8dbec84e46c59cc1198c9a38f94b656f5e034bee02eda6faef0eab227282`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:50 GMT
ADD file:98a0f92574b6a8592a131ccb07c4f516694e053d610a1701fde2d5e7c65c2175 in / 
# Fri, 08 Mar 2019 03:35:50 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 10:14:05 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 10:14:07 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 20 Mar 2019 11:48:01 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 20 Mar 2019 11:48:01 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 20 Mar 2019 11:48:01 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 20 Mar 2019 11:48:47 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 20 Mar 2019 11:48:48 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 11:48:48 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 11:48:48 GMT
WORKDIR /data
# Wed, 20 Mar 2019 11:48:48 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 20 Mar 2019 11:48:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 11:48:49 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 11:48:49 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:a4c1e43a7431a562d92c5eb6e09e96b4731a474af51cad1c46e2d305ede29005`  
		Last Modified: Fri, 08 Mar 2019 03:36:34 GMT  
		Size: 2.7 MB (2749355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed2f32c3fa1b6c04a79ca05078e80927d1f1819bd561ce4b1ccb8a2f149d8356`  
		Last Modified: Fri, 08 Mar 2019 10:16:17 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee3d69b92603c14c56cbff7eb925f16b36a83bda909ae7a9f75374d27186e0a`  
		Last Modified: Fri, 08 Mar 2019 10:16:17 GMT  
		Size: 408.0 KB (408008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f72afb30629131f88fb6eabe974096078ccbbdb590d26aa366589838dbc26ebb`  
		Last Modified: Wed, 20 Mar 2019 11:49:34 GMT  
		Size: 10.7 MB (10658649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:044ec38b361f97f4cc9ff740cff2eae6a2d71dcc6180283e2b7ad4c918ed9225`  
		Last Modified: Wed, 20 Mar 2019 11:49:31 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac11188b949d48f3e2a949aa3ffbd6e4543cb38437c0305df8dede125cf983e1`  
		Last Modified: Wed, 20 Mar 2019 11:49:31 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:ad8a6c69a71bd960d24c49d0d33130bb2a35d31807ba71df373bdf7d29673cb2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.8 MB (14803981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38fcf8627e0b1c86e6f89e72f94e24526d7f1f63251a29c059056857071b347a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:33 GMT
ADD file:6dfaec9befa64397af571d1da2e766c694148f7a025b9411404a924d3de64bd3 in / 
# Fri, 08 Mar 2019 03:37:36 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 06:21:57 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 06:22:04 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 20 Mar 2019 09:20:17 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 20 Mar 2019 09:20:22 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 20 Mar 2019 09:20:24 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 20 Mar 2019 09:20:53 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 20 Mar 2019 09:20:58 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 09:21:00 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 09:21:02 GMT
WORKDIR /data
# Wed, 20 Mar 2019 09:21:05 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 20 Mar 2019 09:21:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 09:21:12 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 09:21:15 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:611bce2a4fa9a0e18025e088381d26f1dda2e1c02160c4d24a2720f9dbca9eaf`  
		Last Modified: Fri, 08 Mar 2019 03:38:31 GMT  
		Size: 2.8 MB (2778638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25449434ca2fa6ccc1883d472a26a792336aa1e27c229839f973d583c91a00fe`  
		Last Modified: Fri, 08 Mar 2019 06:27:10 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec248071ec2459c6ae88a0190e574312e021aeb70c18e5058f9878489c0e00b`  
		Last Modified: Fri, 08 Mar 2019 06:27:10 GMT  
		Size: 410.3 KB (410336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f50579f583495a822825c1d0b5f3365b98cb30afe39833f85f87d7bd46f887d`  
		Last Modified: Wed, 20 Mar 2019 09:23:13 GMT  
		Size: 11.6 MB (11613171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:116d2f7ce80629b7a3c5f4021df99407e777da8122688199c4cac7d6ea4eac66`  
		Last Modified: Wed, 20 Mar 2019 09:23:10 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0684f7d8203891138362858c010d75e20cd257b6580bc019d560dc8737bcea1`  
		Last Modified: Wed, 20 Mar 2019 09:23:10 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine` - linux; s390x

```console
$ docker pull redis@sha256:4ffbcb1f78e8790da4474d75f9dc644f1a4f759096878213bbbf3011bd07a00c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 MB (14213531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34f4d0f9f94997371e5dbbd377a0201d371ffe7b2fba8d2d45e5cc32d49af16f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 05:35:49 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 05:35:50 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 20 Mar 2019 12:40:30 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 20 Mar 2019 12:40:31 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 20 Mar 2019 12:40:31 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 20 Mar 2019 12:41:39 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 20 Mar 2019 12:41:40 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 12:41:41 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 12:41:41 GMT
WORKDIR /data
# Wed, 20 Mar 2019 12:41:42 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 20 Mar 2019 12:41:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 12:41:43 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 12:41:43 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:668dbb1da38bf6b755c53ced346a702cc89f825fae11e7c280c4937d86c6052f`  
		Last Modified: Fri, 08 Mar 2019 05:37:28 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a9bb4447ea68836f7469bf09fbdaf11252c6449487839e8864900ba4b92d03f`  
		Last Modified: Fri, 08 Mar 2019 05:37:28 GMT  
		Size: 407.9 KB (407852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:999fb1503a16236b99a7ff0d7a3221ddfbad7fb54388a5374e4d945596768737`  
		Last Modified: Wed, 20 Mar 2019 12:43:35 GMT  
		Size: 11.3 MB (11262610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d62e66b2a21e703e0fcedd76df7f872f365e6e6fb2c4e26a95df8b2011ad7d8c`  
		Last Modified: Wed, 20 Mar 2019 12:43:30 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cd52c8a3770ce676ab6279d6ad8f0a5329939110c080d3a24c9f26b571904cf`  
		Last Modified: Wed, 20 Mar 2019 12:43:30 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0-alpine3.9`

```console
$ docker pull redis@sha256:7a543f606ea3e055a18ccbda719fb1e04f6922078f733cb39863619983e05031
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

### `redis:4.0-alpine3.9` - linux; arm variant v6

```console
$ docker pull redis@sha256:e10fa92121e0462a8eb31300a18d2d8ea30775a90e886645f8ccc70519f72b7b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 MB (13699634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b3f042b7de545adc615ce0c3ffeb60628c380689e6ac96c5c39b340221c60cb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 05:38:42 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 05:38:44 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 20 Mar 2019 07:58:04 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 20 Mar 2019 07:58:04 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 20 Mar 2019 07:58:05 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 20 Mar 2019 07:58:29 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 20 Mar 2019 07:58:30 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 07:58:31 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 07:58:31 GMT
WORKDIR /data
# Wed, 20 Mar 2019 07:58:32 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 20 Mar 2019 07:58:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 07:58:32 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 07:58:33 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ba0c1f7e5a3f3ed61244f636c2d0a994092d082d619f402abd66e2d9a112e6c`  
		Last Modified: Fri, 08 Mar 2019 05:40:31 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b8b2a00ff26d6561bdd7a5a984e982700a4875d6c405669665f4a1690ca6eb`  
		Last Modified: Fri, 08 Mar 2019 05:40:32 GMT  
		Size: 405.3 KB (405282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b65a86152aaa712b6210169fbd0c900f1d59bc831b97ead3f2ae806d26ecbf77`  
		Last Modified: Wed, 20 Mar 2019 07:59:07 GMT  
		Size: 10.8 MB (10751850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8376c332d522ccf0c7cca2177f654d8e7fcf2c8e24b5b322647155058634625`  
		Last Modified: Wed, 20 Mar 2019 07:59:04 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bf522bd7ffbf6f434c14f958be14d68dd64cdb2c9984c586ddb79acdb79cab9`  
		Last Modified: Wed, 20 Mar 2019 07:59:04 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine3.9` - linux; arm variant v7

```console
$ docker pull redis@sha256:8c6225661981b7930543573ae247834f489a5c5bc93d390c46edb22da0b2d652
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.3 MB (13320142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:727d60926f8a6708b011956ec533ceea26c1abc2c63f628595c81ae6ce8a9acd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:52 GMT
ADD file:e9ae09c8f3973b62bf7e10dd8b9251e50f5479c0d8d1644f632f3886e02c7323 in / 
# Fri, 08 Mar 2019 03:35:52 GMT
CMD ["/bin/sh"]
# Tue, 12 Mar 2019 12:38:36 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Tue, 12 Mar 2019 12:38:38 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 20 Mar 2019 12:09:17 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 20 Mar 2019 12:09:17 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 20 Mar 2019 12:09:18 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 20 Mar 2019 12:09:46 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 20 Mar 2019 12:09:48 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 12:09:48 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 12:09:49 GMT
WORKDIR /data
# Wed, 20 Mar 2019 12:09:49 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 20 Mar 2019 12:09:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 12:09:50 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 12:09:51 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d8d287cbc5740a5d49f37493eecadafc220fee4fd570329023344cad978c4272`  
		Last Modified: Tue, 05 Mar 2019 08:53:06 GMT  
		Size: 2.3 MB (2348580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:148b4b0bab4816ad532c54415c960ce71044f82bad2883bee5f7a92549976b00`  
		Last Modified: Tue, 12 Mar 2019 12:40:38 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae65ef83e1480c00e4c632b5c256740f5286e126c96c2d10771be08b010dff0f`  
		Last Modified: Tue, 12 Mar 2019 12:40:38 GMT  
		Size: 398.6 KB (398574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04d58386d1c0326458aa39cd073d4a756cd69686b747ebb39928f1317c760bbe`  
		Last Modified: Wed, 20 Mar 2019 12:11:33 GMT  
		Size: 10.6 MB (10571154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f42a48a4d9d7efbe4877237742a060ed3993479a04bfa0da8489a71f89754add`  
		Last Modified: Wed, 20 Mar 2019 12:11:31 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8a7a8ba2deda6d8fd37ce03454d922965d4e0b56bc18effac3fab2c465bef7d`  
		Last Modified: Wed, 20 Mar 2019 12:11:30 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine3.9` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:422f2f782d888adf68e334ce3bbdfaf070790bdc88784efcf36c8c6668ba201f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 MB (14146999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20a8788af8fc061b3d07e1613e10099d20cadf1b1c798e0065ed52db9312ec29`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 11:43:54 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 11:43:57 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 20 Mar 2019 10:22:06 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 20 Mar 2019 10:22:07 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 20 Mar 2019 10:22:09 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 20 Mar 2019 10:23:16 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 20 Mar 2019 10:23:19 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 10:23:20 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 10:23:21 GMT
WORKDIR /data
# Wed, 20 Mar 2019 10:23:22 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 20 Mar 2019 10:23:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 10:23:23 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 10:23:24 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9399e6d0245cf7181b0da72bf72a7673a2cbd03df8e8d269a7f581072fe06d06`  
		Last Modified: Fri, 08 Mar 2019 11:48:54 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:110f2f1a6525b6f6416d05654def28abb3f85447e8520aa1d50e95e5f74f8e48`  
		Last Modified: Fri, 08 Mar 2019 11:48:54 GMT  
		Size: 405.2 KB (405226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2238b8b5ee7bc8cba5972d31a48aa52b9c1653782b3549e69e1a294ebe8f5f4`  
		Last Modified: Wed, 20 Mar 2019 10:25:16 GMT  
		Size: 11.1 MB (11052064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b005940d990350f78b388d1c08a61a9d552a9c4f6657c7003863de5fedf3ca`  
		Last Modified: Wed, 20 Mar 2019 10:25:12 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bc1cfcb8278c98ab7d628f3ca853f1fca8808744e5a93f9c8f4263e5935c505`  
		Last Modified: Wed, 20 Mar 2019 10:25:12 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine3.9` - linux; 386

```console
$ docker pull redis@sha256:626a288a462b8071aebd987a2c8f04b38898decc630f2bfbae8df1279b69b252
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 MB (13817779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a60a8dbec84e46c59cc1198c9a38f94b656f5e034bee02eda6faef0eab227282`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:50 GMT
ADD file:98a0f92574b6a8592a131ccb07c4f516694e053d610a1701fde2d5e7c65c2175 in / 
# Fri, 08 Mar 2019 03:35:50 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 10:14:05 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 10:14:07 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 20 Mar 2019 11:48:01 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 20 Mar 2019 11:48:01 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 20 Mar 2019 11:48:01 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 20 Mar 2019 11:48:47 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 20 Mar 2019 11:48:48 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 11:48:48 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 11:48:48 GMT
WORKDIR /data
# Wed, 20 Mar 2019 11:48:48 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 20 Mar 2019 11:48:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 11:48:49 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 11:48:49 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:a4c1e43a7431a562d92c5eb6e09e96b4731a474af51cad1c46e2d305ede29005`  
		Last Modified: Fri, 08 Mar 2019 03:36:34 GMT  
		Size: 2.7 MB (2749355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed2f32c3fa1b6c04a79ca05078e80927d1f1819bd561ce4b1ccb8a2f149d8356`  
		Last Modified: Fri, 08 Mar 2019 10:16:17 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee3d69b92603c14c56cbff7eb925f16b36a83bda909ae7a9f75374d27186e0a`  
		Last Modified: Fri, 08 Mar 2019 10:16:17 GMT  
		Size: 408.0 KB (408008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f72afb30629131f88fb6eabe974096078ccbbdb590d26aa366589838dbc26ebb`  
		Last Modified: Wed, 20 Mar 2019 11:49:34 GMT  
		Size: 10.7 MB (10658649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:044ec38b361f97f4cc9ff740cff2eae6a2d71dcc6180283e2b7ad4c918ed9225`  
		Last Modified: Wed, 20 Mar 2019 11:49:31 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac11188b949d48f3e2a949aa3ffbd6e4543cb38437c0305df8dede125cf983e1`  
		Last Modified: Wed, 20 Mar 2019 11:49:31 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine3.9` - linux; ppc64le

```console
$ docker pull redis@sha256:ad8a6c69a71bd960d24c49d0d33130bb2a35d31807ba71df373bdf7d29673cb2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.8 MB (14803981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38fcf8627e0b1c86e6f89e72f94e24526d7f1f63251a29c059056857071b347a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:33 GMT
ADD file:6dfaec9befa64397af571d1da2e766c694148f7a025b9411404a924d3de64bd3 in / 
# Fri, 08 Mar 2019 03:37:36 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 06:21:57 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 06:22:04 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 20 Mar 2019 09:20:17 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 20 Mar 2019 09:20:22 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 20 Mar 2019 09:20:24 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 20 Mar 2019 09:20:53 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 20 Mar 2019 09:20:58 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 09:21:00 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 09:21:02 GMT
WORKDIR /data
# Wed, 20 Mar 2019 09:21:05 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 20 Mar 2019 09:21:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 09:21:12 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 09:21:15 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:611bce2a4fa9a0e18025e088381d26f1dda2e1c02160c4d24a2720f9dbca9eaf`  
		Last Modified: Fri, 08 Mar 2019 03:38:31 GMT  
		Size: 2.8 MB (2778638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25449434ca2fa6ccc1883d472a26a792336aa1e27c229839f973d583c91a00fe`  
		Last Modified: Fri, 08 Mar 2019 06:27:10 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec248071ec2459c6ae88a0190e574312e021aeb70c18e5058f9878489c0e00b`  
		Last Modified: Fri, 08 Mar 2019 06:27:10 GMT  
		Size: 410.3 KB (410336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f50579f583495a822825c1d0b5f3365b98cb30afe39833f85f87d7bd46f887d`  
		Last Modified: Wed, 20 Mar 2019 09:23:13 GMT  
		Size: 11.6 MB (11613171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:116d2f7ce80629b7a3c5f4021df99407e777da8122688199c4cac7d6ea4eac66`  
		Last Modified: Wed, 20 Mar 2019 09:23:10 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0684f7d8203891138362858c010d75e20cd257b6580bc019d560dc8737bcea1`  
		Last Modified: Wed, 20 Mar 2019 09:23:10 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine3.9` - linux; s390x

```console
$ docker pull redis@sha256:4ffbcb1f78e8790da4474d75f9dc644f1a4f759096878213bbbf3011bd07a00c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 MB (14213531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34f4d0f9f94997371e5dbbd377a0201d371ffe7b2fba8d2d45e5cc32d49af16f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 05:35:49 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 05:35:50 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 20 Mar 2019 12:40:30 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 20 Mar 2019 12:40:31 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 20 Mar 2019 12:40:31 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 20 Mar 2019 12:41:39 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 20 Mar 2019 12:41:40 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 12:41:41 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 12:41:41 GMT
WORKDIR /data
# Wed, 20 Mar 2019 12:41:42 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 20 Mar 2019 12:41:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 12:41:43 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 12:41:43 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:668dbb1da38bf6b755c53ced346a702cc89f825fae11e7c280c4937d86c6052f`  
		Last Modified: Fri, 08 Mar 2019 05:37:28 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a9bb4447ea68836f7469bf09fbdaf11252c6449487839e8864900ba4b92d03f`  
		Last Modified: Fri, 08 Mar 2019 05:37:28 GMT  
		Size: 407.9 KB (407852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:999fb1503a16236b99a7ff0d7a3221ddfbad7fb54388a5374e4d945596768737`  
		Last Modified: Wed, 20 Mar 2019 12:43:35 GMT  
		Size: 11.3 MB (11262610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d62e66b2a21e703e0fcedd76df7f872f365e6e6fb2c4e26a95df8b2011ad7d8c`  
		Last Modified: Wed, 20 Mar 2019 12:43:30 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cd52c8a3770ce676ab6279d6ad8f0a5329939110c080d3a24c9f26b571904cf`  
		Last Modified: Wed, 20 Mar 2019 12:43:30 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0-stretch`

```console
$ docker pull redis@sha256:af0ec8065fa7f1ce2132a9d616cf1728acbd1d80917008f406f37135cb5a2e0e
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
$ docker pull redis@sha256:875bb0f0a17a3a4d60a7a526a9a6d16cb7beb3852fbd267cf5d4c958a110ee1d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32138267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14433f4e77ab854faecae1ba0089bd42ef8dda98411278f71d4dcfc068433fb4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:47:35 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 00:47:35 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 00:47:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 00:50:50 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 27 Mar 2019 00:50:50 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 27 Mar 2019 00:50:51 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 27 Mar 2019 00:51:33 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 00:51:33 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 00:51:33 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 00:51:34 GMT
WORKDIR /data
# Wed, 27 Mar 2019 00:51:34 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 00:51:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 00:51:35 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 00:51:35 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cde8019a4b43a4c7fb70ef830196d12a8ba0d031add8e93c3853685b60146393`  
		Last Modified: Wed, 27 Mar 2019 00:53:22 GMT  
		Size: 1.7 KB (1735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a473b37fb2921176dcdeb10cecd0171a8b2ef20ea51fcbf330a8ccd9c7efb3`  
		Last Modified: Wed, 27 Mar 2019 00:53:23 GMT  
		Size: 941.4 KB (941376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5b25739b6641469b330cfb1da254de23326f2755826879b8de798a05512dd9b`  
		Last Modified: Wed, 27 Mar 2019 00:53:44 GMT  
		Size: 8.7 MB (8698592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:304d8b43da6cfd0125015ee676da73734d2f116486594ebfbc5b8423810f1abc`  
		Last Modified: Wed, 27 Mar 2019 00:53:43 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d5b26f886bd3179d29679e82b77d8849c85372702117961a662c640292ec596`  
		Last Modified: Wed, 27 Mar 2019 00:53:42 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-stretch` - linux; arm variant v5

```console
$ docker pull redis@sha256:5ca508397fc9b3ec076c0dcce70cc4a1128f6e3d49535312a1e9e4412424464e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30517717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d303062e1bf1379f1083845244d50307ac9ab50f824d14da1f78cce533be61c6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:57 GMT
ADD file:7a35d0949b1b3e7394102d060feb38dba6645340f0c24c11c41eab11995474e2 in / 
# Wed, 27 Mar 2019 08:53:58 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 11:26:24 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 11:26:25 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 11:26:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 11:28:07 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 27 Mar 2019 11:28:07 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 27 Mar 2019 11:28:08 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 27 Mar 2019 11:28:55 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 11:28:56 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 11:28:56 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 11:28:57 GMT
WORKDIR /data
# Wed, 27 Mar 2019 11:28:57 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 11:28:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 11:28:58 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 11:28:59 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:2e028234e3987a188a306c264af3c27abc8240fc8e19373e1c5adc01b31e6176`  
		Last Modified: Wed, 27 Mar 2019 08:59:38 GMT  
		Size: 21.2 MB (21160663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22282ee903e4c1d6bf8a2d2a6d97abed822566f7c086113bc216da0e19f98481`  
		Last Modified: Wed, 27 Mar 2019 11:29:19 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e500ce3d68f7530cd30cab9d55a054fab93622078e8a8462c3a27c37a54a698`  
		Last Modified: Wed, 27 Mar 2019 11:29:19 GMT  
		Size: 931.2 KB (931223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c118fc26a93c9f17b8521fed4c76966c78517b6d0ca5fd8d75b3ad3e9a5c348f`  
		Last Modified: Wed, 27 Mar 2019 11:29:38 GMT  
		Size: 8.4 MB (8423543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cf1adf853369bb68a46403802842d3925343bbb1cc6abd5a0766296ed953ab7`  
		Last Modified: Wed, 27 Mar 2019 11:29:35 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff112a026566ef6a8079f2b967ee1485a9057c0cbffe2347e551746f333ffe67`  
		Last Modified: Wed, 27 Mar 2019 11:29:35 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-stretch` - linux; arm variant v7

```console
$ docker pull redis@sha256:61ebc007608875ee4dd11ac89573c32e01e382bbb5cf13a47c14cc40e4d963e5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28397869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f57000771083a959a74a0b86540c80c85f0722a856f862f1579e54716eb73e1`
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
# Wed, 20 Mar 2019 12:08:30 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 20 Mar 2019 12:08:31 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 20 Mar 2019 12:08:31 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 20 Mar 2019 12:09:09 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 20 Mar 2019 12:09:10 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 12:09:11 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 12:09:11 GMT
WORKDIR /data
# Wed, 20 Mar 2019 12:09:11 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 20 Mar 2019 12:09:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 12:09:12 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 12:09:13 GMT
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
	-	`sha256:40588ad618e817134950146d46fa435ce90b8b920831fef2fbb6ab052bf77013`  
		Last Modified: Wed, 20 Mar 2019 12:11:17 GMT  
		Size: 8.2 MB (8197264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cab37edd4f6c33eec0df5f6e29c2d377d4494270744ce32a047542bfdca6d8a8`  
		Last Modified: Wed, 20 Mar 2019 12:11:14 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbf89b74800746ec375ac91c7dbab8e55c80e6d4d9001703025d4c04c294890d`  
		Last Modified: Wed, 20 Mar 2019 12:11:14 GMT  
		Size: 419.0 B  
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
$ docker pull redis@sha256:ec28bc1c54fd79d376e1511b657c137f0d2c7cb7f372d646e7cdeff76b60843f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32306227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b6ce8aba3dd0cebd238561fe24055704d52c6c9fac8d329f9bfd5ee9e1a5f95`
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
# Wed, 20 Mar 2019 11:47:08 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 20 Mar 2019 11:47:08 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 20 Mar 2019 11:47:08 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 20 Mar 2019 11:47:49 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 20 Mar 2019 11:47:50 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 11:47:50 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 11:47:50 GMT
WORKDIR /data
# Wed, 20 Mar 2019 11:47:50 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 20 Mar 2019 11:47:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 11:47:51 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 11:47:51 GMT
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
	-	`sha256:96e9d76b540492f2d3806a307dae2c87cd1b8f754a343dcb14add874451f492d`  
		Last Modified: Wed, 20 Mar 2019 11:49:26 GMT  
		Size: 8.3 MB (8258170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14d6428583b890186b8af74bf116f421603ec4cba3131c2ac7604fb3a8e491b5`  
		Last Modified: Wed, 20 Mar 2019 11:49:24 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6ea3e305b49572cb9a6ca0bf46a34b2ae903994197f884339507b9e06a9a134`  
		Last Modified: Wed, 20 Mar 2019 11:49:24 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-stretch` - linux; ppc64le

```console
$ docker pull redis@sha256:71c40a074a64dd41d1cbceb34cb97fb24ebab2b53df5e2455d025004b70190da
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.5 MB (32536235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb0f163cfb6d11cdd8305d8678dc7228f89c25c8a87978ae1043fa40e1d82067`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 10:05:16 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 10:05:19 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 10:06:39 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 10:09:26 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 27 Mar 2019 10:09:28 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 27 Mar 2019 10:09:29 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 27 Mar 2019 10:10:49 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 10:10:54 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 10:10:55 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 10:10:57 GMT
WORKDIR /data
# Wed, 27 Mar 2019 10:10:58 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 10:11:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 10:11:03 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 10:11:05 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:47457ee2fac27696752b903854c4e4621e3481edc7a34b727f45b4c355de7976`  
		Last Modified: Wed, 27 Mar 2019 08:32:50 GMT  
		Size: 22.8 MB (22751385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819a2a3a3ce9b3f41a4d25dea1025d16f8da4ae9f0c26fc2f7676f4d6e20bf74`  
		Last Modified: Wed, 27 Mar 2019 10:11:42 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c2e912949846d9432577f43246c2dcd56037117a714ac374e7d5778e93748ef`  
		Last Modified: Wed, 27 Mar 2019 10:11:43 GMT  
		Size: 909.8 KB (909818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:458def4e63521abe9024bc8694adab44aa1883c7e259fadd7e1eecdf8811e60c`  
		Last Modified: Wed, 27 Mar 2019 10:12:17 GMT  
		Size: 8.9 MB (8872741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a800ec3808b81a01a6026e76c8a03d0ec2aba981d8f73dc7d09dd3675961a372`  
		Last Modified: Wed, 27 Mar 2019 10:12:14 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58a5f4c89b11770201cb9e0597443b1ae5ae89da41969c451ebb05baafc5dfd6`  
		Last Modified: Wed, 27 Mar 2019 10:12:15 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-stretch` - linux; s390x

```console
$ docker pull redis@sha256:be1da9c852c46a8176500c4b3b1d07722376597d6fd189e43503a06f18567bf5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32366496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09dbab1dcbe95a364008742b7b9cad160c8ab082487469b88cd59181e9416aa9`
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
# Wed, 20 Mar 2019 12:38:38 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 20 Mar 2019 12:38:38 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 20 Mar 2019 12:38:39 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 20 Mar 2019 12:40:04 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 20 Mar 2019 12:40:07 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 12:40:08 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 12:40:09 GMT
WORKDIR /data
# Wed, 20 Mar 2019 12:40:09 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 20 Mar 2019 12:40:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 12:40:13 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 12:40:14 GMT
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
	-	`sha256:d0600d3dbd107715dc88d68facf31b9dcd9831ae0eb4e5c6e30069e9dce17c5b`  
		Last Modified: Wed, 20 Mar 2019 12:43:17 GMT  
		Size: 9.1 MB (9092067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dc424a122702e5a383df145eef6938fcc7e460556655f705fa1edd1ca295af2`  
		Last Modified: Wed, 20 Mar 2019 12:43:13 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1177266c560d3cbff9e5b72766a2e80d4a8973d1a4f8fd35f5b6c0fbad428ad8`  
		Last Modified: Wed, 20 Mar 2019 12:43:13 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4-32bit`

```console
$ docker pull redis@sha256:2c0a5e8161a33c79208e6fe2b40775e320529ab4402bbd5ee4870218cdd68894
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4-32bit` - linux; amd64

```console
$ docker pull redis@sha256:5982b62e07047986cf2a608646f32b55a715b5bb9ace1a53ba38e1ae25309dd6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36551646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b16a694465c5e2ebeb4fe7ef1185ce3257c918c1d0dea54b33485b321aa8b52`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:47:35 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 00:47:35 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 00:47:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 00:50:50 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 27 Mar 2019 00:50:50 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 27 Mar 2019 00:50:51 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 27 Mar 2019 00:52:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:52:53 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 00:52:54 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 00:52:55 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 00:52:55 GMT
WORKDIR /data
# Wed, 27 Mar 2019 00:52:56 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 00:52:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 00:52:57 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 00:52:57 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cde8019a4b43a4c7fb70ef830196d12a8ba0d031add8e93c3853685b60146393`  
		Last Modified: Wed, 27 Mar 2019 00:53:22 GMT  
		Size: 1.7 KB (1735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a473b37fb2921176dcdeb10cecd0171a8b2ef20ea51fcbf330a8ccd9c7efb3`  
		Last Modified: Wed, 27 Mar 2019 00:53:23 GMT  
		Size: 941.4 KB (941376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef382f94fd2491fa03f4c4c434dd975029e2a5b29967ce46ae35299bd2feb2a2`  
		Last Modified: Wed, 27 Mar 2019 00:53:51 GMT  
		Size: 4.8 MB (4849431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58929f25e82774186949485037286e3162faa7701215bf717833e2bcca2ef057`  
		Last Modified: Wed, 27 Mar 2019 00:53:51 GMT  
		Size: 8.3 MB (8262536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e2f85d52fc7ec626213b97e3ea7124bad1a42e542cd152823d399ac7222a03c`  
		Last Modified: Wed, 27 Mar 2019 00:53:50 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0d6708241bd0726441979e5b9e9cef20c7c6057a104274399df540cc9bc5d5b`  
		Last Modified: Wed, 27 Mar 2019 00:53:50 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4-32bit-stretch`

```console
$ docker pull redis@sha256:2c0a5e8161a33c79208e6fe2b40775e320529ab4402bbd5ee4870218cdd68894
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4-32bit-stretch` - linux; amd64

```console
$ docker pull redis@sha256:5982b62e07047986cf2a608646f32b55a715b5bb9ace1a53ba38e1ae25309dd6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36551646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b16a694465c5e2ebeb4fe7ef1185ce3257c918c1d0dea54b33485b321aa8b52`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:47:35 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 00:47:35 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 00:47:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 00:50:50 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 27 Mar 2019 00:50:50 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 27 Mar 2019 00:50:51 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 27 Mar 2019 00:52:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:52:53 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 00:52:54 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 00:52:55 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 00:52:55 GMT
WORKDIR /data
# Wed, 27 Mar 2019 00:52:56 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 00:52:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 00:52:57 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 00:52:57 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cde8019a4b43a4c7fb70ef830196d12a8ba0d031add8e93c3853685b60146393`  
		Last Modified: Wed, 27 Mar 2019 00:53:22 GMT  
		Size: 1.7 KB (1735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a473b37fb2921176dcdeb10cecd0171a8b2ef20ea51fcbf330a8ccd9c7efb3`  
		Last Modified: Wed, 27 Mar 2019 00:53:23 GMT  
		Size: 941.4 KB (941376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef382f94fd2491fa03f4c4c434dd975029e2a5b29967ce46ae35299bd2feb2a2`  
		Last Modified: Wed, 27 Mar 2019 00:53:51 GMT  
		Size: 4.8 MB (4849431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58929f25e82774186949485037286e3162faa7701215bf717833e2bcca2ef057`  
		Last Modified: Wed, 27 Mar 2019 00:53:51 GMT  
		Size: 8.3 MB (8262536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e2f85d52fc7ec626213b97e3ea7124bad1a42e542cd152823d399ac7222a03c`  
		Last Modified: Wed, 27 Mar 2019 00:53:50 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0d6708241bd0726441979e5b9e9cef20c7c6057a104274399df540cc9bc5d5b`  
		Last Modified: Wed, 27 Mar 2019 00:53:50 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4-alpine`

```console
$ docker pull redis@sha256:7a543f606ea3e055a18ccbda719fb1e04f6922078f733cb39863619983e05031
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

### `redis:4-alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:e10fa92121e0462a8eb31300a18d2d8ea30775a90e886645f8ccc70519f72b7b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 MB (13699634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b3f042b7de545adc615ce0c3ffeb60628c380689e6ac96c5c39b340221c60cb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 05:38:42 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 05:38:44 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 20 Mar 2019 07:58:04 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 20 Mar 2019 07:58:04 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 20 Mar 2019 07:58:05 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 20 Mar 2019 07:58:29 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 20 Mar 2019 07:58:30 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 07:58:31 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 07:58:31 GMT
WORKDIR /data
# Wed, 20 Mar 2019 07:58:32 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 20 Mar 2019 07:58:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 07:58:32 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 07:58:33 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ba0c1f7e5a3f3ed61244f636c2d0a994092d082d619f402abd66e2d9a112e6c`  
		Last Modified: Fri, 08 Mar 2019 05:40:31 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b8b2a00ff26d6561bdd7a5a984e982700a4875d6c405669665f4a1690ca6eb`  
		Last Modified: Fri, 08 Mar 2019 05:40:32 GMT  
		Size: 405.3 KB (405282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b65a86152aaa712b6210169fbd0c900f1d59bc831b97ead3f2ae806d26ecbf77`  
		Last Modified: Wed, 20 Mar 2019 07:59:07 GMT  
		Size: 10.8 MB (10751850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8376c332d522ccf0c7cca2177f654d8e7fcf2c8e24b5b322647155058634625`  
		Last Modified: Wed, 20 Mar 2019 07:59:04 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bf522bd7ffbf6f434c14f958be14d68dd64cdb2c9984c586ddb79acdb79cab9`  
		Last Modified: Wed, 20 Mar 2019 07:59:04 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine` - linux; arm variant v7

```console
$ docker pull redis@sha256:8c6225661981b7930543573ae247834f489a5c5bc93d390c46edb22da0b2d652
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.3 MB (13320142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:727d60926f8a6708b011956ec533ceea26c1abc2c63f628595c81ae6ce8a9acd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:52 GMT
ADD file:e9ae09c8f3973b62bf7e10dd8b9251e50f5479c0d8d1644f632f3886e02c7323 in / 
# Fri, 08 Mar 2019 03:35:52 GMT
CMD ["/bin/sh"]
# Tue, 12 Mar 2019 12:38:36 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Tue, 12 Mar 2019 12:38:38 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 20 Mar 2019 12:09:17 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 20 Mar 2019 12:09:17 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 20 Mar 2019 12:09:18 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 20 Mar 2019 12:09:46 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 20 Mar 2019 12:09:48 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 12:09:48 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 12:09:49 GMT
WORKDIR /data
# Wed, 20 Mar 2019 12:09:49 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 20 Mar 2019 12:09:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 12:09:50 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 12:09:51 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d8d287cbc5740a5d49f37493eecadafc220fee4fd570329023344cad978c4272`  
		Last Modified: Tue, 05 Mar 2019 08:53:06 GMT  
		Size: 2.3 MB (2348580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:148b4b0bab4816ad532c54415c960ce71044f82bad2883bee5f7a92549976b00`  
		Last Modified: Tue, 12 Mar 2019 12:40:38 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae65ef83e1480c00e4c632b5c256740f5286e126c96c2d10771be08b010dff0f`  
		Last Modified: Tue, 12 Mar 2019 12:40:38 GMT  
		Size: 398.6 KB (398574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04d58386d1c0326458aa39cd073d4a756cd69686b747ebb39928f1317c760bbe`  
		Last Modified: Wed, 20 Mar 2019 12:11:33 GMT  
		Size: 10.6 MB (10571154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f42a48a4d9d7efbe4877237742a060ed3993479a04bfa0da8489a71f89754add`  
		Last Modified: Wed, 20 Mar 2019 12:11:31 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8a7a8ba2deda6d8fd37ce03454d922965d4e0b56bc18effac3fab2c465bef7d`  
		Last Modified: Wed, 20 Mar 2019 12:11:30 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:422f2f782d888adf68e334ce3bbdfaf070790bdc88784efcf36c8c6668ba201f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 MB (14146999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20a8788af8fc061b3d07e1613e10099d20cadf1b1c798e0065ed52db9312ec29`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 11:43:54 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 11:43:57 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 20 Mar 2019 10:22:06 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 20 Mar 2019 10:22:07 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 20 Mar 2019 10:22:09 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 20 Mar 2019 10:23:16 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 20 Mar 2019 10:23:19 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 10:23:20 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 10:23:21 GMT
WORKDIR /data
# Wed, 20 Mar 2019 10:23:22 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 20 Mar 2019 10:23:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 10:23:23 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 10:23:24 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9399e6d0245cf7181b0da72bf72a7673a2cbd03df8e8d269a7f581072fe06d06`  
		Last Modified: Fri, 08 Mar 2019 11:48:54 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:110f2f1a6525b6f6416d05654def28abb3f85447e8520aa1d50e95e5f74f8e48`  
		Last Modified: Fri, 08 Mar 2019 11:48:54 GMT  
		Size: 405.2 KB (405226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2238b8b5ee7bc8cba5972d31a48aa52b9c1653782b3549e69e1a294ebe8f5f4`  
		Last Modified: Wed, 20 Mar 2019 10:25:16 GMT  
		Size: 11.1 MB (11052064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b005940d990350f78b388d1c08a61a9d552a9c4f6657c7003863de5fedf3ca`  
		Last Modified: Wed, 20 Mar 2019 10:25:12 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bc1cfcb8278c98ab7d628f3ca853f1fca8808744e5a93f9c8f4263e5935c505`  
		Last Modified: Wed, 20 Mar 2019 10:25:12 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine` - linux; 386

```console
$ docker pull redis@sha256:626a288a462b8071aebd987a2c8f04b38898decc630f2bfbae8df1279b69b252
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 MB (13817779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a60a8dbec84e46c59cc1198c9a38f94b656f5e034bee02eda6faef0eab227282`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:50 GMT
ADD file:98a0f92574b6a8592a131ccb07c4f516694e053d610a1701fde2d5e7c65c2175 in / 
# Fri, 08 Mar 2019 03:35:50 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 10:14:05 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 10:14:07 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 20 Mar 2019 11:48:01 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 20 Mar 2019 11:48:01 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 20 Mar 2019 11:48:01 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 20 Mar 2019 11:48:47 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 20 Mar 2019 11:48:48 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 11:48:48 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 11:48:48 GMT
WORKDIR /data
# Wed, 20 Mar 2019 11:48:48 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 20 Mar 2019 11:48:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 11:48:49 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 11:48:49 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:a4c1e43a7431a562d92c5eb6e09e96b4731a474af51cad1c46e2d305ede29005`  
		Last Modified: Fri, 08 Mar 2019 03:36:34 GMT  
		Size: 2.7 MB (2749355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed2f32c3fa1b6c04a79ca05078e80927d1f1819bd561ce4b1ccb8a2f149d8356`  
		Last Modified: Fri, 08 Mar 2019 10:16:17 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee3d69b92603c14c56cbff7eb925f16b36a83bda909ae7a9f75374d27186e0a`  
		Last Modified: Fri, 08 Mar 2019 10:16:17 GMT  
		Size: 408.0 KB (408008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f72afb30629131f88fb6eabe974096078ccbbdb590d26aa366589838dbc26ebb`  
		Last Modified: Wed, 20 Mar 2019 11:49:34 GMT  
		Size: 10.7 MB (10658649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:044ec38b361f97f4cc9ff740cff2eae6a2d71dcc6180283e2b7ad4c918ed9225`  
		Last Modified: Wed, 20 Mar 2019 11:49:31 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac11188b949d48f3e2a949aa3ffbd6e4543cb38437c0305df8dede125cf983e1`  
		Last Modified: Wed, 20 Mar 2019 11:49:31 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:ad8a6c69a71bd960d24c49d0d33130bb2a35d31807ba71df373bdf7d29673cb2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.8 MB (14803981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38fcf8627e0b1c86e6f89e72f94e24526d7f1f63251a29c059056857071b347a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:33 GMT
ADD file:6dfaec9befa64397af571d1da2e766c694148f7a025b9411404a924d3de64bd3 in / 
# Fri, 08 Mar 2019 03:37:36 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 06:21:57 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 06:22:04 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 20 Mar 2019 09:20:17 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 20 Mar 2019 09:20:22 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 20 Mar 2019 09:20:24 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 20 Mar 2019 09:20:53 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 20 Mar 2019 09:20:58 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 09:21:00 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 09:21:02 GMT
WORKDIR /data
# Wed, 20 Mar 2019 09:21:05 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 20 Mar 2019 09:21:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 09:21:12 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 09:21:15 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:611bce2a4fa9a0e18025e088381d26f1dda2e1c02160c4d24a2720f9dbca9eaf`  
		Last Modified: Fri, 08 Mar 2019 03:38:31 GMT  
		Size: 2.8 MB (2778638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25449434ca2fa6ccc1883d472a26a792336aa1e27c229839f973d583c91a00fe`  
		Last Modified: Fri, 08 Mar 2019 06:27:10 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec248071ec2459c6ae88a0190e574312e021aeb70c18e5058f9878489c0e00b`  
		Last Modified: Fri, 08 Mar 2019 06:27:10 GMT  
		Size: 410.3 KB (410336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f50579f583495a822825c1d0b5f3365b98cb30afe39833f85f87d7bd46f887d`  
		Last Modified: Wed, 20 Mar 2019 09:23:13 GMT  
		Size: 11.6 MB (11613171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:116d2f7ce80629b7a3c5f4021df99407e777da8122688199c4cac7d6ea4eac66`  
		Last Modified: Wed, 20 Mar 2019 09:23:10 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0684f7d8203891138362858c010d75e20cd257b6580bc019d560dc8737bcea1`  
		Last Modified: Wed, 20 Mar 2019 09:23:10 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine` - linux; s390x

```console
$ docker pull redis@sha256:4ffbcb1f78e8790da4474d75f9dc644f1a4f759096878213bbbf3011bd07a00c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 MB (14213531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34f4d0f9f94997371e5dbbd377a0201d371ffe7b2fba8d2d45e5cc32d49af16f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 05:35:49 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 05:35:50 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 20 Mar 2019 12:40:30 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 20 Mar 2019 12:40:31 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 20 Mar 2019 12:40:31 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 20 Mar 2019 12:41:39 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 20 Mar 2019 12:41:40 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 12:41:41 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 12:41:41 GMT
WORKDIR /data
# Wed, 20 Mar 2019 12:41:42 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 20 Mar 2019 12:41:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 12:41:43 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 12:41:43 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:668dbb1da38bf6b755c53ced346a702cc89f825fae11e7c280c4937d86c6052f`  
		Last Modified: Fri, 08 Mar 2019 05:37:28 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a9bb4447ea68836f7469bf09fbdaf11252c6449487839e8864900ba4b92d03f`  
		Last Modified: Fri, 08 Mar 2019 05:37:28 GMT  
		Size: 407.9 KB (407852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:999fb1503a16236b99a7ff0d7a3221ddfbad7fb54388a5374e4d945596768737`  
		Last Modified: Wed, 20 Mar 2019 12:43:35 GMT  
		Size: 11.3 MB (11262610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d62e66b2a21e703e0fcedd76df7f872f365e6e6fb2c4e26a95df8b2011ad7d8c`  
		Last Modified: Wed, 20 Mar 2019 12:43:30 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cd52c8a3770ce676ab6279d6ad8f0a5329939110c080d3a24c9f26b571904cf`  
		Last Modified: Wed, 20 Mar 2019 12:43:30 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4-alpine3.9`

```console
$ docker pull redis@sha256:7a543f606ea3e055a18ccbda719fb1e04f6922078f733cb39863619983e05031
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

### `redis:4-alpine3.9` - linux; arm variant v6

```console
$ docker pull redis@sha256:e10fa92121e0462a8eb31300a18d2d8ea30775a90e886645f8ccc70519f72b7b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 MB (13699634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b3f042b7de545adc615ce0c3ffeb60628c380689e6ac96c5c39b340221c60cb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 05:38:42 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 05:38:44 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 20 Mar 2019 07:58:04 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 20 Mar 2019 07:58:04 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 20 Mar 2019 07:58:05 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 20 Mar 2019 07:58:29 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 20 Mar 2019 07:58:30 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 07:58:31 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 07:58:31 GMT
WORKDIR /data
# Wed, 20 Mar 2019 07:58:32 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 20 Mar 2019 07:58:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 07:58:32 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 07:58:33 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ba0c1f7e5a3f3ed61244f636c2d0a994092d082d619f402abd66e2d9a112e6c`  
		Last Modified: Fri, 08 Mar 2019 05:40:31 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b8b2a00ff26d6561bdd7a5a984e982700a4875d6c405669665f4a1690ca6eb`  
		Last Modified: Fri, 08 Mar 2019 05:40:32 GMT  
		Size: 405.3 KB (405282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b65a86152aaa712b6210169fbd0c900f1d59bc831b97ead3f2ae806d26ecbf77`  
		Last Modified: Wed, 20 Mar 2019 07:59:07 GMT  
		Size: 10.8 MB (10751850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8376c332d522ccf0c7cca2177f654d8e7fcf2c8e24b5b322647155058634625`  
		Last Modified: Wed, 20 Mar 2019 07:59:04 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bf522bd7ffbf6f434c14f958be14d68dd64cdb2c9984c586ddb79acdb79cab9`  
		Last Modified: Wed, 20 Mar 2019 07:59:04 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine3.9` - linux; arm variant v7

```console
$ docker pull redis@sha256:8c6225661981b7930543573ae247834f489a5c5bc93d390c46edb22da0b2d652
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.3 MB (13320142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:727d60926f8a6708b011956ec533ceea26c1abc2c63f628595c81ae6ce8a9acd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:52 GMT
ADD file:e9ae09c8f3973b62bf7e10dd8b9251e50f5479c0d8d1644f632f3886e02c7323 in / 
# Fri, 08 Mar 2019 03:35:52 GMT
CMD ["/bin/sh"]
# Tue, 12 Mar 2019 12:38:36 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Tue, 12 Mar 2019 12:38:38 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 20 Mar 2019 12:09:17 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 20 Mar 2019 12:09:17 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 20 Mar 2019 12:09:18 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 20 Mar 2019 12:09:46 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 20 Mar 2019 12:09:48 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 12:09:48 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 12:09:49 GMT
WORKDIR /data
# Wed, 20 Mar 2019 12:09:49 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 20 Mar 2019 12:09:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 12:09:50 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 12:09:51 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d8d287cbc5740a5d49f37493eecadafc220fee4fd570329023344cad978c4272`  
		Last Modified: Tue, 05 Mar 2019 08:53:06 GMT  
		Size: 2.3 MB (2348580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:148b4b0bab4816ad532c54415c960ce71044f82bad2883bee5f7a92549976b00`  
		Last Modified: Tue, 12 Mar 2019 12:40:38 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae65ef83e1480c00e4c632b5c256740f5286e126c96c2d10771be08b010dff0f`  
		Last Modified: Tue, 12 Mar 2019 12:40:38 GMT  
		Size: 398.6 KB (398574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04d58386d1c0326458aa39cd073d4a756cd69686b747ebb39928f1317c760bbe`  
		Last Modified: Wed, 20 Mar 2019 12:11:33 GMT  
		Size: 10.6 MB (10571154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f42a48a4d9d7efbe4877237742a060ed3993479a04bfa0da8489a71f89754add`  
		Last Modified: Wed, 20 Mar 2019 12:11:31 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8a7a8ba2deda6d8fd37ce03454d922965d4e0b56bc18effac3fab2c465bef7d`  
		Last Modified: Wed, 20 Mar 2019 12:11:30 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine3.9` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:422f2f782d888adf68e334ce3bbdfaf070790bdc88784efcf36c8c6668ba201f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 MB (14146999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20a8788af8fc061b3d07e1613e10099d20cadf1b1c798e0065ed52db9312ec29`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 11:43:54 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 11:43:57 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 20 Mar 2019 10:22:06 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 20 Mar 2019 10:22:07 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 20 Mar 2019 10:22:09 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 20 Mar 2019 10:23:16 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 20 Mar 2019 10:23:19 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 10:23:20 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 10:23:21 GMT
WORKDIR /data
# Wed, 20 Mar 2019 10:23:22 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 20 Mar 2019 10:23:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 10:23:23 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 10:23:24 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9399e6d0245cf7181b0da72bf72a7673a2cbd03df8e8d269a7f581072fe06d06`  
		Last Modified: Fri, 08 Mar 2019 11:48:54 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:110f2f1a6525b6f6416d05654def28abb3f85447e8520aa1d50e95e5f74f8e48`  
		Last Modified: Fri, 08 Mar 2019 11:48:54 GMT  
		Size: 405.2 KB (405226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2238b8b5ee7bc8cba5972d31a48aa52b9c1653782b3549e69e1a294ebe8f5f4`  
		Last Modified: Wed, 20 Mar 2019 10:25:16 GMT  
		Size: 11.1 MB (11052064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b005940d990350f78b388d1c08a61a9d552a9c4f6657c7003863de5fedf3ca`  
		Last Modified: Wed, 20 Mar 2019 10:25:12 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bc1cfcb8278c98ab7d628f3ca853f1fca8808744e5a93f9c8f4263e5935c505`  
		Last Modified: Wed, 20 Mar 2019 10:25:12 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine3.9` - linux; 386

```console
$ docker pull redis@sha256:626a288a462b8071aebd987a2c8f04b38898decc630f2bfbae8df1279b69b252
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 MB (13817779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a60a8dbec84e46c59cc1198c9a38f94b656f5e034bee02eda6faef0eab227282`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:50 GMT
ADD file:98a0f92574b6a8592a131ccb07c4f516694e053d610a1701fde2d5e7c65c2175 in / 
# Fri, 08 Mar 2019 03:35:50 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 10:14:05 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 10:14:07 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 20 Mar 2019 11:48:01 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 20 Mar 2019 11:48:01 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 20 Mar 2019 11:48:01 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 20 Mar 2019 11:48:47 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 20 Mar 2019 11:48:48 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 11:48:48 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 11:48:48 GMT
WORKDIR /data
# Wed, 20 Mar 2019 11:48:48 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 20 Mar 2019 11:48:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 11:48:49 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 11:48:49 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:a4c1e43a7431a562d92c5eb6e09e96b4731a474af51cad1c46e2d305ede29005`  
		Last Modified: Fri, 08 Mar 2019 03:36:34 GMT  
		Size: 2.7 MB (2749355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed2f32c3fa1b6c04a79ca05078e80927d1f1819bd561ce4b1ccb8a2f149d8356`  
		Last Modified: Fri, 08 Mar 2019 10:16:17 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee3d69b92603c14c56cbff7eb925f16b36a83bda909ae7a9f75374d27186e0a`  
		Last Modified: Fri, 08 Mar 2019 10:16:17 GMT  
		Size: 408.0 KB (408008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f72afb30629131f88fb6eabe974096078ccbbdb590d26aa366589838dbc26ebb`  
		Last Modified: Wed, 20 Mar 2019 11:49:34 GMT  
		Size: 10.7 MB (10658649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:044ec38b361f97f4cc9ff740cff2eae6a2d71dcc6180283e2b7ad4c918ed9225`  
		Last Modified: Wed, 20 Mar 2019 11:49:31 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac11188b949d48f3e2a949aa3ffbd6e4543cb38437c0305df8dede125cf983e1`  
		Last Modified: Wed, 20 Mar 2019 11:49:31 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine3.9` - linux; ppc64le

```console
$ docker pull redis@sha256:ad8a6c69a71bd960d24c49d0d33130bb2a35d31807ba71df373bdf7d29673cb2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.8 MB (14803981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38fcf8627e0b1c86e6f89e72f94e24526d7f1f63251a29c059056857071b347a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:33 GMT
ADD file:6dfaec9befa64397af571d1da2e766c694148f7a025b9411404a924d3de64bd3 in / 
# Fri, 08 Mar 2019 03:37:36 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 06:21:57 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 06:22:04 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 20 Mar 2019 09:20:17 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 20 Mar 2019 09:20:22 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 20 Mar 2019 09:20:24 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 20 Mar 2019 09:20:53 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 20 Mar 2019 09:20:58 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 09:21:00 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 09:21:02 GMT
WORKDIR /data
# Wed, 20 Mar 2019 09:21:05 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 20 Mar 2019 09:21:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 09:21:12 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 09:21:15 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:611bce2a4fa9a0e18025e088381d26f1dda2e1c02160c4d24a2720f9dbca9eaf`  
		Last Modified: Fri, 08 Mar 2019 03:38:31 GMT  
		Size: 2.8 MB (2778638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25449434ca2fa6ccc1883d472a26a792336aa1e27c229839f973d583c91a00fe`  
		Last Modified: Fri, 08 Mar 2019 06:27:10 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec248071ec2459c6ae88a0190e574312e021aeb70c18e5058f9878489c0e00b`  
		Last Modified: Fri, 08 Mar 2019 06:27:10 GMT  
		Size: 410.3 KB (410336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f50579f583495a822825c1d0b5f3365b98cb30afe39833f85f87d7bd46f887d`  
		Last Modified: Wed, 20 Mar 2019 09:23:13 GMT  
		Size: 11.6 MB (11613171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:116d2f7ce80629b7a3c5f4021df99407e777da8122688199c4cac7d6ea4eac66`  
		Last Modified: Wed, 20 Mar 2019 09:23:10 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0684f7d8203891138362858c010d75e20cd257b6580bc019d560dc8737bcea1`  
		Last Modified: Wed, 20 Mar 2019 09:23:10 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine3.9` - linux; s390x

```console
$ docker pull redis@sha256:4ffbcb1f78e8790da4474d75f9dc644f1a4f759096878213bbbf3011bd07a00c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 MB (14213531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34f4d0f9f94997371e5dbbd377a0201d371ffe7b2fba8d2d45e5cc32d49af16f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 05:35:49 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 05:35:50 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 20 Mar 2019 12:40:30 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 20 Mar 2019 12:40:31 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 20 Mar 2019 12:40:31 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 20 Mar 2019 12:41:39 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 20 Mar 2019 12:41:40 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 12:41:41 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 12:41:41 GMT
WORKDIR /data
# Wed, 20 Mar 2019 12:41:42 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 20 Mar 2019 12:41:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 12:41:43 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 12:41:43 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:668dbb1da38bf6b755c53ced346a702cc89f825fae11e7c280c4937d86c6052f`  
		Last Modified: Fri, 08 Mar 2019 05:37:28 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a9bb4447ea68836f7469bf09fbdaf11252c6449487839e8864900ba4b92d03f`  
		Last Modified: Fri, 08 Mar 2019 05:37:28 GMT  
		Size: 407.9 KB (407852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:999fb1503a16236b99a7ff0d7a3221ddfbad7fb54388a5374e4d945596768737`  
		Last Modified: Wed, 20 Mar 2019 12:43:35 GMT  
		Size: 11.3 MB (11262610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d62e66b2a21e703e0fcedd76df7f872f365e6e6fb2c4e26a95df8b2011ad7d8c`  
		Last Modified: Wed, 20 Mar 2019 12:43:30 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cd52c8a3770ce676ab6279d6ad8f0a5329939110c080d3a24c9f26b571904cf`  
		Last Modified: Wed, 20 Mar 2019 12:43:30 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4-stretch`

```console
$ docker pull redis@sha256:af0ec8065fa7f1ce2132a9d616cf1728acbd1d80917008f406f37135cb5a2e0e
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
$ docker pull redis@sha256:875bb0f0a17a3a4d60a7a526a9a6d16cb7beb3852fbd267cf5d4c958a110ee1d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32138267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14433f4e77ab854faecae1ba0089bd42ef8dda98411278f71d4dcfc068433fb4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:47:35 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 00:47:35 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 00:47:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 00:50:50 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 27 Mar 2019 00:50:50 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 27 Mar 2019 00:50:51 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 27 Mar 2019 00:51:33 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 00:51:33 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 00:51:33 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 00:51:34 GMT
WORKDIR /data
# Wed, 27 Mar 2019 00:51:34 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 00:51:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 00:51:35 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 00:51:35 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cde8019a4b43a4c7fb70ef830196d12a8ba0d031add8e93c3853685b60146393`  
		Last Modified: Wed, 27 Mar 2019 00:53:22 GMT  
		Size: 1.7 KB (1735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a473b37fb2921176dcdeb10cecd0171a8b2ef20ea51fcbf330a8ccd9c7efb3`  
		Last Modified: Wed, 27 Mar 2019 00:53:23 GMT  
		Size: 941.4 KB (941376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5b25739b6641469b330cfb1da254de23326f2755826879b8de798a05512dd9b`  
		Last Modified: Wed, 27 Mar 2019 00:53:44 GMT  
		Size: 8.7 MB (8698592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:304d8b43da6cfd0125015ee676da73734d2f116486594ebfbc5b8423810f1abc`  
		Last Modified: Wed, 27 Mar 2019 00:53:43 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d5b26f886bd3179d29679e82b77d8849c85372702117961a662c640292ec596`  
		Last Modified: Wed, 27 Mar 2019 00:53:42 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-stretch` - linux; arm variant v5

```console
$ docker pull redis@sha256:5ca508397fc9b3ec076c0dcce70cc4a1128f6e3d49535312a1e9e4412424464e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30517717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d303062e1bf1379f1083845244d50307ac9ab50f824d14da1f78cce533be61c6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:57 GMT
ADD file:7a35d0949b1b3e7394102d060feb38dba6645340f0c24c11c41eab11995474e2 in / 
# Wed, 27 Mar 2019 08:53:58 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 11:26:24 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 11:26:25 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 11:26:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 11:28:07 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 27 Mar 2019 11:28:07 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 27 Mar 2019 11:28:08 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 27 Mar 2019 11:28:55 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 11:28:56 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 11:28:56 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 11:28:57 GMT
WORKDIR /data
# Wed, 27 Mar 2019 11:28:57 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 11:28:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 11:28:58 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 11:28:59 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:2e028234e3987a188a306c264af3c27abc8240fc8e19373e1c5adc01b31e6176`  
		Last Modified: Wed, 27 Mar 2019 08:59:38 GMT  
		Size: 21.2 MB (21160663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22282ee903e4c1d6bf8a2d2a6d97abed822566f7c086113bc216da0e19f98481`  
		Last Modified: Wed, 27 Mar 2019 11:29:19 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e500ce3d68f7530cd30cab9d55a054fab93622078e8a8462c3a27c37a54a698`  
		Last Modified: Wed, 27 Mar 2019 11:29:19 GMT  
		Size: 931.2 KB (931223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c118fc26a93c9f17b8521fed4c76966c78517b6d0ca5fd8d75b3ad3e9a5c348f`  
		Last Modified: Wed, 27 Mar 2019 11:29:38 GMT  
		Size: 8.4 MB (8423543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cf1adf853369bb68a46403802842d3925343bbb1cc6abd5a0766296ed953ab7`  
		Last Modified: Wed, 27 Mar 2019 11:29:35 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff112a026566ef6a8079f2b967ee1485a9057c0cbffe2347e551746f333ffe67`  
		Last Modified: Wed, 27 Mar 2019 11:29:35 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-stretch` - linux; arm variant v7

```console
$ docker pull redis@sha256:61ebc007608875ee4dd11ac89573c32e01e382bbb5cf13a47c14cc40e4d963e5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28397869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f57000771083a959a74a0b86540c80c85f0722a856f862f1579e54716eb73e1`
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
# Wed, 20 Mar 2019 12:08:30 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 20 Mar 2019 12:08:31 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 20 Mar 2019 12:08:31 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 20 Mar 2019 12:09:09 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 20 Mar 2019 12:09:10 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 12:09:11 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 12:09:11 GMT
WORKDIR /data
# Wed, 20 Mar 2019 12:09:11 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 20 Mar 2019 12:09:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 12:09:12 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 12:09:13 GMT
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
	-	`sha256:40588ad618e817134950146d46fa435ce90b8b920831fef2fbb6ab052bf77013`  
		Last Modified: Wed, 20 Mar 2019 12:11:17 GMT  
		Size: 8.2 MB (8197264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cab37edd4f6c33eec0df5f6e29c2d377d4494270744ce32a047542bfdca6d8a8`  
		Last Modified: Wed, 20 Mar 2019 12:11:14 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbf89b74800746ec375ac91c7dbab8e55c80e6d4d9001703025d4c04c294890d`  
		Last Modified: Wed, 20 Mar 2019 12:11:14 GMT  
		Size: 419.0 B  
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
$ docker pull redis@sha256:ec28bc1c54fd79d376e1511b657c137f0d2c7cb7f372d646e7cdeff76b60843f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32306227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b6ce8aba3dd0cebd238561fe24055704d52c6c9fac8d329f9bfd5ee9e1a5f95`
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
# Wed, 20 Mar 2019 11:47:08 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 20 Mar 2019 11:47:08 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 20 Mar 2019 11:47:08 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 20 Mar 2019 11:47:49 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 20 Mar 2019 11:47:50 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 11:47:50 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 11:47:50 GMT
WORKDIR /data
# Wed, 20 Mar 2019 11:47:50 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 20 Mar 2019 11:47:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 11:47:51 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 11:47:51 GMT
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
	-	`sha256:96e9d76b540492f2d3806a307dae2c87cd1b8f754a343dcb14add874451f492d`  
		Last Modified: Wed, 20 Mar 2019 11:49:26 GMT  
		Size: 8.3 MB (8258170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14d6428583b890186b8af74bf116f421603ec4cba3131c2ac7604fb3a8e491b5`  
		Last Modified: Wed, 20 Mar 2019 11:49:24 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6ea3e305b49572cb9a6ca0bf46a34b2ae903994197f884339507b9e06a9a134`  
		Last Modified: Wed, 20 Mar 2019 11:49:24 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-stretch` - linux; ppc64le

```console
$ docker pull redis@sha256:71c40a074a64dd41d1cbceb34cb97fb24ebab2b53df5e2455d025004b70190da
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.5 MB (32536235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb0f163cfb6d11cdd8305d8678dc7228f89c25c8a87978ae1043fa40e1d82067`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 10:05:16 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 10:05:19 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 10:06:39 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 10:09:26 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 27 Mar 2019 10:09:28 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 27 Mar 2019 10:09:29 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 27 Mar 2019 10:10:49 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 10:10:54 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 10:10:55 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 10:10:57 GMT
WORKDIR /data
# Wed, 27 Mar 2019 10:10:58 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 10:11:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 10:11:03 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 10:11:05 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:47457ee2fac27696752b903854c4e4621e3481edc7a34b727f45b4c355de7976`  
		Last Modified: Wed, 27 Mar 2019 08:32:50 GMT  
		Size: 22.8 MB (22751385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819a2a3a3ce9b3f41a4d25dea1025d16f8da4ae9f0c26fc2f7676f4d6e20bf74`  
		Last Modified: Wed, 27 Mar 2019 10:11:42 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c2e912949846d9432577f43246c2dcd56037117a714ac374e7d5778e93748ef`  
		Last Modified: Wed, 27 Mar 2019 10:11:43 GMT  
		Size: 909.8 KB (909818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:458def4e63521abe9024bc8694adab44aa1883c7e259fadd7e1eecdf8811e60c`  
		Last Modified: Wed, 27 Mar 2019 10:12:17 GMT  
		Size: 8.9 MB (8872741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a800ec3808b81a01a6026e76c8a03d0ec2aba981d8f73dc7d09dd3675961a372`  
		Last Modified: Wed, 27 Mar 2019 10:12:14 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58a5f4c89b11770201cb9e0597443b1ae5ae89da41969c451ebb05baafc5dfd6`  
		Last Modified: Wed, 27 Mar 2019 10:12:15 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-stretch` - linux; s390x

```console
$ docker pull redis@sha256:be1da9c852c46a8176500c4b3b1d07722376597d6fd189e43503a06f18567bf5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32366496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09dbab1dcbe95a364008742b7b9cad160c8ab082487469b88cd59181e9416aa9`
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
# Wed, 20 Mar 2019 12:38:38 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 20 Mar 2019 12:38:38 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 20 Mar 2019 12:38:39 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 20 Mar 2019 12:40:04 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 20 Mar 2019 12:40:07 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 12:40:08 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 12:40:09 GMT
WORKDIR /data
# Wed, 20 Mar 2019 12:40:09 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 20 Mar 2019 12:40:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 12:40:13 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 12:40:14 GMT
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
	-	`sha256:d0600d3dbd107715dc88d68facf31b9dcd9831ae0eb4e5c6e30069e9dce17c5b`  
		Last Modified: Wed, 20 Mar 2019 12:43:17 GMT  
		Size: 9.1 MB (9092067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dc424a122702e5a383df145eef6938fcc7e460556655f705fa1edd1ca295af2`  
		Last Modified: Wed, 20 Mar 2019 12:43:13 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1177266c560d3cbff9e5b72766a2e80d4a8973d1a4f8fd35f5b6c0fbad428ad8`  
		Last Modified: Wed, 20 Mar 2019 12:43:13 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5`

```console
$ docker pull redis@sha256:700869cf656bb5ed0d5c3ba3bf3b12c997f85a31e2b85af35ff93ed745c9b8c7
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
$ docker pull redis@sha256:478392fbb4f132b36b8ead3435087553ee7e6f0395b3d64987ae195268d13493
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35222046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a55fbf438dfd878424c402e365ef3d80c634f07d0f5832193880ee1b95626e4e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:47:35 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 00:47:35 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 00:47:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 00:47:51 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 27 Mar 2019 00:47:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 27 Mar 2019 00:47:51 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 27 Mar 2019 00:48:58 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 00:48:58 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 00:48:59 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 00:48:59 GMT
WORKDIR /data
# Wed, 27 Mar 2019 00:48:59 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 00:48:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 00:48:59 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 00:49:00 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cde8019a4b43a4c7fb70ef830196d12a8ba0d031add8e93c3853685b60146393`  
		Last Modified: Wed, 27 Mar 2019 00:53:22 GMT  
		Size: 1.7 KB (1735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a473b37fb2921176dcdeb10cecd0171a8b2ef20ea51fcbf330a8ccd9c7efb3`  
		Last Modified: Wed, 27 Mar 2019 00:53:23 GMT  
		Size: 941.4 KB (941376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6fe0dfbb7e3e8e6828b7e292526ac875639aaeeb98ad2f4bb89b9cedaa1645d`  
		Last Modified: Wed, 27 Mar 2019 00:53:25 GMT  
		Size: 11.8 MB (11782371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39c8f5ba1240221350872c51b65a0bd1944a5dcc735fddbe132ff565afcba704`  
		Last Modified: Wed, 27 Mar 2019 00:53:23 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfbdd870cf756e661412595b81f9b819efc6c16a4c8f19858091d873e72588ed`  
		Last Modified: Wed, 27 Mar 2019 00:53:23 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5` - linux; arm variant v5

```console
$ docker pull redis@sha256:fd9b0178983e7fb5f74ec0545e973ce6a0c77211d2f24a26a901448c91f2ebf8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.5 MB (33540111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5987ee1a68fd50958b0fa5af1b27242e5ced433d0152ff45ce96ce7b71f01939`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:57 GMT
ADD file:7a35d0949b1b3e7394102d060feb38dba6645340f0c24c11c41eab11995474e2 in / 
# Wed, 27 Mar 2019 08:53:58 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 11:26:24 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 11:26:25 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 11:26:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 11:26:51 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 27 Mar 2019 11:26:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 27 Mar 2019 11:26:52 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 27 Mar 2019 11:27:54 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 11:27:56 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 11:27:56 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 11:27:57 GMT
WORKDIR /data
# Wed, 27 Mar 2019 11:27:57 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 11:27:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 11:27:58 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 11:27:58 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:2e028234e3987a188a306c264af3c27abc8240fc8e19373e1c5adc01b31e6176`  
		Last Modified: Wed, 27 Mar 2019 08:59:38 GMT  
		Size: 21.2 MB (21160663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22282ee903e4c1d6bf8a2d2a6d97abed822566f7c086113bc216da0e19f98481`  
		Last Modified: Wed, 27 Mar 2019 11:29:19 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e500ce3d68f7530cd30cab9d55a054fab93622078e8a8462c3a27c37a54a698`  
		Last Modified: Wed, 27 Mar 2019 11:29:19 GMT  
		Size: 931.2 KB (931223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c08071d71257763604ab303f761b64c80e085befe9fce6a7686287c5a0228792`  
		Last Modified: Wed, 27 Mar 2019 11:29:23 GMT  
		Size: 11.4 MB (11445937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:869fc327634f84645c936f77e060d26bbcc40ecfc718845e6ff9ac55bc50531e`  
		Last Modified: Wed, 27 Mar 2019 11:29:19 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6abbd648b20d3e9a0b2ce67bd883a649791aefc3b29ac104b1bb164d192ffa82`  
		Last Modified: Wed, 27 Mar 2019 11:29:19 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5` - linux; arm variant v7

```console
$ docker pull redis@sha256:de55867d7acbd41008419d62298446538cb426e95ca533ce4c6d71e582c6ce8f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.3 MB (31339743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f2f791562c1cda7eb29471329caa81ac83f70e81f04a40a95ac15b060009601`
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
# Wed, 20 Mar 2019 12:06:11 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 20 Mar 2019 12:06:11 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 20 Mar 2019 12:06:12 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 20 Mar 2019 12:07:09 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 20 Mar 2019 12:07:11 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 12:07:11 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 12:07:11 GMT
WORKDIR /data
# Wed, 20 Mar 2019 12:07:12 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 20 Mar 2019 12:07:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 12:07:13 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 12:07:14 GMT
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
	-	`sha256:c9cefe4f315f74160d67281bf3e651633dcbed6623cc9a30bd2ec9ade858dda1`  
		Last Modified: Wed, 20 Mar 2019 12:10:23 GMT  
		Size: 11.1 MB (11139138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c6dec50134944fada3d15997b282673f570a7d6c892241753d2ae0c6aacbac9`  
		Last Modified: Wed, 20 Mar 2019 12:10:20 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f203757c40c7635cc1a3a75f65351f0bf0e0efdce6576e1e03fc098edb977b1e`  
		Last Modified: Wed, 20 Mar 2019 12:10:20 GMT  
		Size: 419.0 B  
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
$ docker pull redis@sha256:6e57e9543dbe89377b9909d28f5e015aa31318647c6f82fe0c71224e5c8d69a1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35237305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f12efbbcdc4022fdb35f0639a348a3f89e0d9e6fc3bc339ecd2a689e82b99e9d`
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
# Wed, 20 Mar 2019 11:44:40 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 20 Mar 2019 11:44:40 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 20 Mar 2019 11:44:40 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 20 Mar 2019 11:45:47 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 20 Mar 2019 11:45:48 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 11:45:48 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 11:45:49 GMT
WORKDIR /data
# Wed, 20 Mar 2019 11:45:49 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 20 Mar 2019 11:45:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 11:45:49 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 11:45:49 GMT
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
	-	`sha256:573066ab191147533112e67e028f470da80f9b3b09a6772354dbe459c5bc555d`  
		Last Modified: Wed, 20 Mar 2019 11:49:06 GMT  
		Size: 11.2 MB (11189248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14e5410e183228234f2d672e125def3e58594daeab4a79da9705adcb58f73ae2`  
		Last Modified: Wed, 20 Mar 2019 11:49:03 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2defcaa16eb55ca59ebec9e74a6c28b2c0795608ccab0a74d22473a62c642e17`  
		Last Modified: Wed, 20 Mar 2019 11:49:03 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5` - linux; ppc64le

```console
$ docker pull redis@sha256:78b34d526155f60c59915d5e37242da507843e8e5196a3e364145b1c0a26fdaf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.6 MB (35637695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1b7285fef3d0eac504fcb80dd75012303f72e1e7615394c7effa50ce0e5bb25`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 10:05:16 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 10:05:19 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 10:06:39 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 10:06:41 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 27 Mar 2019 10:06:44 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 27 Mar 2019 10:06:46 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 27 Mar 2019 10:08:44 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 10:08:50 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 10:08:52 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 10:08:55 GMT
WORKDIR /data
# Wed, 27 Mar 2019 10:08:56 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 10:09:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 10:09:05 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 10:09:09 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:47457ee2fac27696752b903854c4e4621e3481edc7a34b727f45b4c355de7976`  
		Last Modified: Wed, 27 Mar 2019 08:32:50 GMT  
		Size: 22.8 MB (22751385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819a2a3a3ce9b3f41a4d25dea1025d16f8da4ae9f0c26fc2f7676f4d6e20bf74`  
		Last Modified: Wed, 27 Mar 2019 10:11:42 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c2e912949846d9432577f43246c2dcd56037117a714ac374e7d5778e93748ef`  
		Last Modified: Wed, 27 Mar 2019 10:11:43 GMT  
		Size: 909.8 KB (909818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a596f9258b7863e930b8bed166ac8131225480347d444b926f3ee4c4ff1e742d`  
		Last Modified: Wed, 27 Mar 2019 10:11:46 GMT  
		Size: 12.0 MB (11974197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95b245f45ebd0bc9bbe507016aa20ac3fc241417d776dff5c163aae809dd5044`  
		Last Modified: Wed, 27 Mar 2019 10:11:42 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e505d8d7410abc2c0dd126136c877ec907aa45ed746b9290f49b51fa3bd0219`  
		Last Modified: Wed, 27 Mar 2019 10:11:42 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5` - linux; s390x

```console
$ docker pull redis@sha256:648cfcb034348b04058139643fa2087551d0bc11704cef29ee2b3d68825d19ba
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.5 MB (35512456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b543f23ad60b250b011388278a67bea31000d41473f3b0695be16401daab6e74`
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
# Wed, 20 Mar 2019 12:34:27 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 20 Mar 2019 12:34:28 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 20 Mar 2019 12:34:28 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 20 Mar 2019 12:36:41 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 20 Mar 2019 12:36:43 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 12:36:43 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 12:36:44 GMT
WORKDIR /data
# Wed, 20 Mar 2019 12:36:45 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 20 Mar 2019 12:36:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 12:36:45 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 12:36:46 GMT
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
	-	`sha256:20a96b1b951937cd266398bfb674a2b2e899b7e22f0c1af913fa60fd651f3322`  
		Last Modified: Wed, 20 Mar 2019 12:42:29 GMT  
		Size: 12.2 MB (12238025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9feb4386bd929c0319bc63c55b1a1c9a58d004772043de1407da08fed7dc25e`  
		Last Modified: Wed, 20 Mar 2019 12:42:24 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ea97a055b5db2e066b6bd2233524d33b3c03c98dc3964d31f34b0e4396a1eb5`  
		Last Modified: Wed, 20 Mar 2019 12:42:24 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0`

```console
$ docker pull redis@sha256:700869cf656bb5ed0d5c3ba3bf3b12c997f85a31e2b85af35ff93ed745c9b8c7
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
$ docker pull redis@sha256:478392fbb4f132b36b8ead3435087553ee7e6f0395b3d64987ae195268d13493
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35222046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a55fbf438dfd878424c402e365ef3d80c634f07d0f5832193880ee1b95626e4e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:47:35 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 00:47:35 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 00:47:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 00:47:51 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 27 Mar 2019 00:47:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 27 Mar 2019 00:47:51 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 27 Mar 2019 00:48:58 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 00:48:58 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 00:48:59 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 00:48:59 GMT
WORKDIR /data
# Wed, 27 Mar 2019 00:48:59 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 00:48:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 00:48:59 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 00:49:00 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cde8019a4b43a4c7fb70ef830196d12a8ba0d031add8e93c3853685b60146393`  
		Last Modified: Wed, 27 Mar 2019 00:53:22 GMT  
		Size: 1.7 KB (1735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a473b37fb2921176dcdeb10cecd0171a8b2ef20ea51fcbf330a8ccd9c7efb3`  
		Last Modified: Wed, 27 Mar 2019 00:53:23 GMT  
		Size: 941.4 KB (941376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6fe0dfbb7e3e8e6828b7e292526ac875639aaeeb98ad2f4bb89b9cedaa1645d`  
		Last Modified: Wed, 27 Mar 2019 00:53:25 GMT  
		Size: 11.8 MB (11782371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39c8f5ba1240221350872c51b65a0bd1944a5dcc735fddbe132ff565afcba704`  
		Last Modified: Wed, 27 Mar 2019 00:53:23 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfbdd870cf756e661412595b81f9b819efc6c16a4c8f19858091d873e72588ed`  
		Last Modified: Wed, 27 Mar 2019 00:53:23 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0` - linux; arm variant v5

```console
$ docker pull redis@sha256:fd9b0178983e7fb5f74ec0545e973ce6a0c77211d2f24a26a901448c91f2ebf8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.5 MB (33540111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5987ee1a68fd50958b0fa5af1b27242e5ced433d0152ff45ce96ce7b71f01939`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:57 GMT
ADD file:7a35d0949b1b3e7394102d060feb38dba6645340f0c24c11c41eab11995474e2 in / 
# Wed, 27 Mar 2019 08:53:58 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 11:26:24 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 11:26:25 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 11:26:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 11:26:51 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 27 Mar 2019 11:26:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 27 Mar 2019 11:26:52 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 27 Mar 2019 11:27:54 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 11:27:56 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 11:27:56 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 11:27:57 GMT
WORKDIR /data
# Wed, 27 Mar 2019 11:27:57 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 11:27:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 11:27:58 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 11:27:58 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:2e028234e3987a188a306c264af3c27abc8240fc8e19373e1c5adc01b31e6176`  
		Last Modified: Wed, 27 Mar 2019 08:59:38 GMT  
		Size: 21.2 MB (21160663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22282ee903e4c1d6bf8a2d2a6d97abed822566f7c086113bc216da0e19f98481`  
		Last Modified: Wed, 27 Mar 2019 11:29:19 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e500ce3d68f7530cd30cab9d55a054fab93622078e8a8462c3a27c37a54a698`  
		Last Modified: Wed, 27 Mar 2019 11:29:19 GMT  
		Size: 931.2 KB (931223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c08071d71257763604ab303f761b64c80e085befe9fce6a7686287c5a0228792`  
		Last Modified: Wed, 27 Mar 2019 11:29:23 GMT  
		Size: 11.4 MB (11445937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:869fc327634f84645c936f77e060d26bbcc40ecfc718845e6ff9ac55bc50531e`  
		Last Modified: Wed, 27 Mar 2019 11:29:19 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6abbd648b20d3e9a0b2ce67bd883a649791aefc3b29ac104b1bb164d192ffa82`  
		Last Modified: Wed, 27 Mar 2019 11:29:19 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0` - linux; arm variant v7

```console
$ docker pull redis@sha256:de55867d7acbd41008419d62298446538cb426e95ca533ce4c6d71e582c6ce8f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.3 MB (31339743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f2f791562c1cda7eb29471329caa81ac83f70e81f04a40a95ac15b060009601`
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
# Wed, 20 Mar 2019 12:06:11 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 20 Mar 2019 12:06:11 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 20 Mar 2019 12:06:12 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 20 Mar 2019 12:07:09 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 20 Mar 2019 12:07:11 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 12:07:11 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 12:07:11 GMT
WORKDIR /data
# Wed, 20 Mar 2019 12:07:12 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 20 Mar 2019 12:07:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 12:07:13 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 12:07:14 GMT
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
	-	`sha256:c9cefe4f315f74160d67281bf3e651633dcbed6623cc9a30bd2ec9ade858dda1`  
		Last Modified: Wed, 20 Mar 2019 12:10:23 GMT  
		Size: 11.1 MB (11139138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c6dec50134944fada3d15997b282673f570a7d6c892241753d2ae0c6aacbac9`  
		Last Modified: Wed, 20 Mar 2019 12:10:20 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f203757c40c7635cc1a3a75f65351f0bf0e0efdce6576e1e03fc098edb977b1e`  
		Last Modified: Wed, 20 Mar 2019 12:10:20 GMT  
		Size: 419.0 B  
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
$ docker pull redis@sha256:6e57e9543dbe89377b9909d28f5e015aa31318647c6f82fe0c71224e5c8d69a1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35237305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f12efbbcdc4022fdb35f0639a348a3f89e0d9e6fc3bc339ecd2a689e82b99e9d`
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
# Wed, 20 Mar 2019 11:44:40 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 20 Mar 2019 11:44:40 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 20 Mar 2019 11:44:40 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 20 Mar 2019 11:45:47 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 20 Mar 2019 11:45:48 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 11:45:48 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 11:45:49 GMT
WORKDIR /data
# Wed, 20 Mar 2019 11:45:49 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 20 Mar 2019 11:45:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 11:45:49 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 11:45:49 GMT
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
	-	`sha256:573066ab191147533112e67e028f470da80f9b3b09a6772354dbe459c5bc555d`  
		Last Modified: Wed, 20 Mar 2019 11:49:06 GMT  
		Size: 11.2 MB (11189248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14e5410e183228234f2d672e125def3e58594daeab4a79da9705adcb58f73ae2`  
		Last Modified: Wed, 20 Mar 2019 11:49:03 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2defcaa16eb55ca59ebec9e74a6c28b2c0795608ccab0a74d22473a62c642e17`  
		Last Modified: Wed, 20 Mar 2019 11:49:03 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0` - linux; ppc64le

```console
$ docker pull redis@sha256:78b34d526155f60c59915d5e37242da507843e8e5196a3e364145b1c0a26fdaf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.6 MB (35637695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1b7285fef3d0eac504fcb80dd75012303f72e1e7615394c7effa50ce0e5bb25`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 10:05:16 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 10:05:19 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 10:06:39 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 10:06:41 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 27 Mar 2019 10:06:44 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 27 Mar 2019 10:06:46 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 27 Mar 2019 10:08:44 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 10:08:50 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 10:08:52 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 10:08:55 GMT
WORKDIR /data
# Wed, 27 Mar 2019 10:08:56 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 10:09:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 10:09:05 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 10:09:09 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:47457ee2fac27696752b903854c4e4621e3481edc7a34b727f45b4c355de7976`  
		Last Modified: Wed, 27 Mar 2019 08:32:50 GMT  
		Size: 22.8 MB (22751385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819a2a3a3ce9b3f41a4d25dea1025d16f8da4ae9f0c26fc2f7676f4d6e20bf74`  
		Last Modified: Wed, 27 Mar 2019 10:11:42 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c2e912949846d9432577f43246c2dcd56037117a714ac374e7d5778e93748ef`  
		Last Modified: Wed, 27 Mar 2019 10:11:43 GMT  
		Size: 909.8 KB (909818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a596f9258b7863e930b8bed166ac8131225480347d444b926f3ee4c4ff1e742d`  
		Last Modified: Wed, 27 Mar 2019 10:11:46 GMT  
		Size: 12.0 MB (11974197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95b245f45ebd0bc9bbe507016aa20ac3fc241417d776dff5c163aae809dd5044`  
		Last Modified: Wed, 27 Mar 2019 10:11:42 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e505d8d7410abc2c0dd126136c877ec907aa45ed746b9290f49b51fa3bd0219`  
		Last Modified: Wed, 27 Mar 2019 10:11:42 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0` - linux; s390x

```console
$ docker pull redis@sha256:648cfcb034348b04058139643fa2087551d0bc11704cef29ee2b3d68825d19ba
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.5 MB (35512456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b543f23ad60b250b011388278a67bea31000d41473f3b0695be16401daab6e74`
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
# Wed, 20 Mar 2019 12:34:27 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 20 Mar 2019 12:34:28 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 20 Mar 2019 12:34:28 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 20 Mar 2019 12:36:41 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 20 Mar 2019 12:36:43 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 12:36:43 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 12:36:44 GMT
WORKDIR /data
# Wed, 20 Mar 2019 12:36:45 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 20 Mar 2019 12:36:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 12:36:45 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 12:36:46 GMT
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
	-	`sha256:20a96b1b951937cd266398bfb674a2b2e899b7e22f0c1af913fa60fd651f3322`  
		Last Modified: Wed, 20 Mar 2019 12:42:29 GMT  
		Size: 12.2 MB (12238025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9feb4386bd929c0319bc63c55b1a1c9a58d004772043de1407da08fed7dc25e`  
		Last Modified: Wed, 20 Mar 2019 12:42:24 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ea97a055b5db2e066b6bd2233524d33b3c03c98dc3964d31f34b0e4396a1eb5`  
		Last Modified: Wed, 20 Mar 2019 12:42:24 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0-32bit`

```console
$ docker pull redis@sha256:ae402bba1730b3efde985c0a580756ccf9a940008c5c6bd0e0cfa8fde9d56e67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5.0-32bit` - linux; amd64

```console
$ docker pull redis@sha256:342449f1ecbb55562a938f8bf53105398b636aaa8f0283ea436eb3a88a46690a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.5 MB (39483449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:983ad83543fafb3a59a9e8dc9d9e8341c4c3053a25fd763ef0d31f95f9fc3472`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:47:35 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 00:47:35 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 00:47:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 00:47:51 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 27 Mar 2019 00:47:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 27 Mar 2019 00:47:51 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 27 Mar 2019 00:49:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:50:26 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 00:50:27 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 00:50:28 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 00:50:28 GMT
WORKDIR /data
# Wed, 27 Mar 2019 00:50:29 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 00:50:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 00:50:30 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 00:50:30 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cde8019a4b43a4c7fb70ef830196d12a8ba0d031add8e93c3853685b60146393`  
		Last Modified: Wed, 27 Mar 2019 00:53:22 GMT  
		Size: 1.7 KB (1735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a473b37fb2921176dcdeb10cecd0171a8b2ef20ea51fcbf330a8ccd9c7efb3`  
		Last Modified: Wed, 27 Mar 2019 00:53:23 GMT  
		Size: 941.4 KB (941376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc5c8b0d5bbc8926ad1ef130f543f79adf62dffd53f42160d12c0514791b3b1d`  
		Last Modified: Wed, 27 Mar 2019 00:53:34 GMT  
		Size: 4.8 MB (4849447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38d00d5ff28f86cdb45f73cc17ae677c4cd3ed03d0db145ac0a5ece71f650c56`  
		Last Modified: Wed, 27 Mar 2019 00:53:35 GMT  
		Size: 11.2 MB (11194322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a76ec6bb9d2beae99a7f11f6e1a4929dc410020eecf23d44d656166e047df6a5`  
		Last Modified: Wed, 27 Mar 2019 00:53:33 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:621631de6bb0cfe59b58ae5490d83c17103d7979968e544467f732d2d2991d38`  
		Last Modified: Wed, 27 Mar 2019 00:53:33 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0-32bit-stretch`

```console
$ docker pull redis@sha256:ae402bba1730b3efde985c0a580756ccf9a940008c5c6bd0e0cfa8fde9d56e67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5.0-32bit-stretch` - linux; amd64

```console
$ docker pull redis@sha256:342449f1ecbb55562a938f8bf53105398b636aaa8f0283ea436eb3a88a46690a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.5 MB (39483449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:983ad83543fafb3a59a9e8dc9d9e8341c4c3053a25fd763ef0d31f95f9fc3472`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:47:35 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 00:47:35 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 00:47:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 00:47:51 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 27 Mar 2019 00:47:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 27 Mar 2019 00:47:51 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 27 Mar 2019 00:49:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:50:26 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 00:50:27 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 00:50:28 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 00:50:28 GMT
WORKDIR /data
# Wed, 27 Mar 2019 00:50:29 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 00:50:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 00:50:30 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 00:50:30 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cde8019a4b43a4c7fb70ef830196d12a8ba0d031add8e93c3853685b60146393`  
		Last Modified: Wed, 27 Mar 2019 00:53:22 GMT  
		Size: 1.7 KB (1735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a473b37fb2921176dcdeb10cecd0171a8b2ef20ea51fcbf330a8ccd9c7efb3`  
		Last Modified: Wed, 27 Mar 2019 00:53:23 GMT  
		Size: 941.4 KB (941376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc5c8b0d5bbc8926ad1ef130f543f79adf62dffd53f42160d12c0514791b3b1d`  
		Last Modified: Wed, 27 Mar 2019 00:53:34 GMT  
		Size: 4.8 MB (4849447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38d00d5ff28f86cdb45f73cc17ae677c4cd3ed03d0db145ac0a5ece71f650c56`  
		Last Modified: Wed, 27 Mar 2019 00:53:35 GMT  
		Size: 11.2 MB (11194322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a76ec6bb9d2beae99a7f11f6e1a4929dc410020eecf23d44d656166e047df6a5`  
		Last Modified: Wed, 27 Mar 2019 00:53:33 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:621631de6bb0cfe59b58ae5490d83c17103d7979968e544467f732d2d2991d38`  
		Last Modified: Wed, 27 Mar 2019 00:53:33 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0.4`

```console
$ docker pull redis@sha256:700869cf656bb5ed0d5c3ba3bf3b12c997f85a31e2b85af35ff93ed745c9b8c7
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
$ docker pull redis@sha256:478392fbb4f132b36b8ead3435087553ee7e6f0395b3d64987ae195268d13493
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35222046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a55fbf438dfd878424c402e365ef3d80c634f07d0f5832193880ee1b95626e4e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:47:35 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 00:47:35 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 00:47:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 00:47:51 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 27 Mar 2019 00:47:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 27 Mar 2019 00:47:51 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 27 Mar 2019 00:48:58 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 00:48:58 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 00:48:59 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 00:48:59 GMT
WORKDIR /data
# Wed, 27 Mar 2019 00:48:59 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 00:48:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 00:48:59 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 00:49:00 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cde8019a4b43a4c7fb70ef830196d12a8ba0d031add8e93c3853685b60146393`  
		Last Modified: Wed, 27 Mar 2019 00:53:22 GMT  
		Size: 1.7 KB (1735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a473b37fb2921176dcdeb10cecd0171a8b2ef20ea51fcbf330a8ccd9c7efb3`  
		Last Modified: Wed, 27 Mar 2019 00:53:23 GMT  
		Size: 941.4 KB (941376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6fe0dfbb7e3e8e6828b7e292526ac875639aaeeb98ad2f4bb89b9cedaa1645d`  
		Last Modified: Wed, 27 Mar 2019 00:53:25 GMT  
		Size: 11.8 MB (11782371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39c8f5ba1240221350872c51b65a0bd1944a5dcc735fddbe132ff565afcba704`  
		Last Modified: Wed, 27 Mar 2019 00:53:23 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfbdd870cf756e661412595b81f9b819efc6c16a4c8f19858091d873e72588ed`  
		Last Modified: Wed, 27 Mar 2019 00:53:23 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.4` - linux; arm variant v5

```console
$ docker pull redis@sha256:fd9b0178983e7fb5f74ec0545e973ce6a0c77211d2f24a26a901448c91f2ebf8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.5 MB (33540111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5987ee1a68fd50958b0fa5af1b27242e5ced433d0152ff45ce96ce7b71f01939`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:57 GMT
ADD file:7a35d0949b1b3e7394102d060feb38dba6645340f0c24c11c41eab11995474e2 in / 
# Wed, 27 Mar 2019 08:53:58 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 11:26:24 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 11:26:25 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 11:26:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 11:26:51 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 27 Mar 2019 11:26:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 27 Mar 2019 11:26:52 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 27 Mar 2019 11:27:54 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 11:27:56 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 11:27:56 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 11:27:57 GMT
WORKDIR /data
# Wed, 27 Mar 2019 11:27:57 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 11:27:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 11:27:58 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 11:27:58 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:2e028234e3987a188a306c264af3c27abc8240fc8e19373e1c5adc01b31e6176`  
		Last Modified: Wed, 27 Mar 2019 08:59:38 GMT  
		Size: 21.2 MB (21160663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22282ee903e4c1d6bf8a2d2a6d97abed822566f7c086113bc216da0e19f98481`  
		Last Modified: Wed, 27 Mar 2019 11:29:19 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e500ce3d68f7530cd30cab9d55a054fab93622078e8a8462c3a27c37a54a698`  
		Last Modified: Wed, 27 Mar 2019 11:29:19 GMT  
		Size: 931.2 KB (931223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c08071d71257763604ab303f761b64c80e085befe9fce6a7686287c5a0228792`  
		Last Modified: Wed, 27 Mar 2019 11:29:23 GMT  
		Size: 11.4 MB (11445937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:869fc327634f84645c936f77e060d26bbcc40ecfc718845e6ff9ac55bc50531e`  
		Last Modified: Wed, 27 Mar 2019 11:29:19 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6abbd648b20d3e9a0b2ce67bd883a649791aefc3b29ac104b1bb164d192ffa82`  
		Last Modified: Wed, 27 Mar 2019 11:29:19 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.4` - linux; arm variant v7

```console
$ docker pull redis@sha256:de55867d7acbd41008419d62298446538cb426e95ca533ce4c6d71e582c6ce8f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.3 MB (31339743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f2f791562c1cda7eb29471329caa81ac83f70e81f04a40a95ac15b060009601`
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
# Wed, 20 Mar 2019 12:06:11 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 20 Mar 2019 12:06:11 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 20 Mar 2019 12:06:12 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 20 Mar 2019 12:07:09 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 20 Mar 2019 12:07:11 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 12:07:11 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 12:07:11 GMT
WORKDIR /data
# Wed, 20 Mar 2019 12:07:12 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 20 Mar 2019 12:07:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 12:07:13 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 12:07:14 GMT
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
	-	`sha256:c9cefe4f315f74160d67281bf3e651633dcbed6623cc9a30bd2ec9ade858dda1`  
		Last Modified: Wed, 20 Mar 2019 12:10:23 GMT  
		Size: 11.1 MB (11139138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c6dec50134944fada3d15997b282673f570a7d6c892241753d2ae0c6aacbac9`  
		Last Modified: Wed, 20 Mar 2019 12:10:20 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f203757c40c7635cc1a3a75f65351f0bf0e0efdce6576e1e03fc098edb977b1e`  
		Last Modified: Wed, 20 Mar 2019 12:10:20 GMT  
		Size: 419.0 B  
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
$ docker pull redis@sha256:6e57e9543dbe89377b9909d28f5e015aa31318647c6f82fe0c71224e5c8d69a1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35237305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f12efbbcdc4022fdb35f0639a348a3f89e0d9e6fc3bc339ecd2a689e82b99e9d`
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
# Wed, 20 Mar 2019 11:44:40 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 20 Mar 2019 11:44:40 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 20 Mar 2019 11:44:40 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 20 Mar 2019 11:45:47 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 20 Mar 2019 11:45:48 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 11:45:48 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 11:45:49 GMT
WORKDIR /data
# Wed, 20 Mar 2019 11:45:49 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 20 Mar 2019 11:45:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 11:45:49 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 11:45:49 GMT
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
	-	`sha256:573066ab191147533112e67e028f470da80f9b3b09a6772354dbe459c5bc555d`  
		Last Modified: Wed, 20 Mar 2019 11:49:06 GMT  
		Size: 11.2 MB (11189248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14e5410e183228234f2d672e125def3e58594daeab4a79da9705adcb58f73ae2`  
		Last Modified: Wed, 20 Mar 2019 11:49:03 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2defcaa16eb55ca59ebec9e74a6c28b2c0795608ccab0a74d22473a62c642e17`  
		Last Modified: Wed, 20 Mar 2019 11:49:03 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.4` - linux; ppc64le

```console
$ docker pull redis@sha256:78b34d526155f60c59915d5e37242da507843e8e5196a3e364145b1c0a26fdaf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.6 MB (35637695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1b7285fef3d0eac504fcb80dd75012303f72e1e7615394c7effa50ce0e5bb25`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 10:05:16 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 10:05:19 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 10:06:39 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 10:06:41 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 27 Mar 2019 10:06:44 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 27 Mar 2019 10:06:46 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 27 Mar 2019 10:08:44 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 10:08:50 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 10:08:52 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 10:08:55 GMT
WORKDIR /data
# Wed, 27 Mar 2019 10:08:56 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 10:09:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 10:09:05 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 10:09:09 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:47457ee2fac27696752b903854c4e4621e3481edc7a34b727f45b4c355de7976`  
		Last Modified: Wed, 27 Mar 2019 08:32:50 GMT  
		Size: 22.8 MB (22751385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819a2a3a3ce9b3f41a4d25dea1025d16f8da4ae9f0c26fc2f7676f4d6e20bf74`  
		Last Modified: Wed, 27 Mar 2019 10:11:42 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c2e912949846d9432577f43246c2dcd56037117a714ac374e7d5778e93748ef`  
		Last Modified: Wed, 27 Mar 2019 10:11:43 GMT  
		Size: 909.8 KB (909818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a596f9258b7863e930b8bed166ac8131225480347d444b926f3ee4c4ff1e742d`  
		Last Modified: Wed, 27 Mar 2019 10:11:46 GMT  
		Size: 12.0 MB (11974197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95b245f45ebd0bc9bbe507016aa20ac3fc241417d776dff5c163aae809dd5044`  
		Last Modified: Wed, 27 Mar 2019 10:11:42 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e505d8d7410abc2c0dd126136c877ec907aa45ed746b9290f49b51fa3bd0219`  
		Last Modified: Wed, 27 Mar 2019 10:11:42 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.4` - linux; s390x

```console
$ docker pull redis@sha256:648cfcb034348b04058139643fa2087551d0bc11704cef29ee2b3d68825d19ba
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.5 MB (35512456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b543f23ad60b250b011388278a67bea31000d41473f3b0695be16401daab6e74`
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
# Wed, 20 Mar 2019 12:34:27 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 20 Mar 2019 12:34:28 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 20 Mar 2019 12:34:28 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 20 Mar 2019 12:36:41 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 20 Mar 2019 12:36:43 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 12:36:43 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 12:36:44 GMT
WORKDIR /data
# Wed, 20 Mar 2019 12:36:45 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 20 Mar 2019 12:36:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 12:36:45 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 12:36:46 GMT
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
	-	`sha256:20a96b1b951937cd266398bfb674a2b2e899b7e22f0c1af913fa60fd651f3322`  
		Last Modified: Wed, 20 Mar 2019 12:42:29 GMT  
		Size: 12.2 MB (12238025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9feb4386bd929c0319bc63c55b1a1c9a58d004772043de1407da08fed7dc25e`  
		Last Modified: Wed, 20 Mar 2019 12:42:24 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ea97a055b5db2e066b6bd2233524d33b3c03c98dc3964d31f34b0e4396a1eb5`  
		Last Modified: Wed, 20 Mar 2019 12:42:24 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0.4-32bit`

```console
$ docker pull redis@sha256:ae402bba1730b3efde985c0a580756ccf9a940008c5c6bd0e0cfa8fde9d56e67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5.0.4-32bit` - linux; amd64

```console
$ docker pull redis@sha256:342449f1ecbb55562a938f8bf53105398b636aaa8f0283ea436eb3a88a46690a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.5 MB (39483449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:983ad83543fafb3a59a9e8dc9d9e8341c4c3053a25fd763ef0d31f95f9fc3472`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:47:35 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 00:47:35 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 00:47:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 00:47:51 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 27 Mar 2019 00:47:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 27 Mar 2019 00:47:51 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 27 Mar 2019 00:49:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:50:26 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 00:50:27 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 00:50:28 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 00:50:28 GMT
WORKDIR /data
# Wed, 27 Mar 2019 00:50:29 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 00:50:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 00:50:30 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 00:50:30 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cde8019a4b43a4c7fb70ef830196d12a8ba0d031add8e93c3853685b60146393`  
		Last Modified: Wed, 27 Mar 2019 00:53:22 GMT  
		Size: 1.7 KB (1735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a473b37fb2921176dcdeb10cecd0171a8b2ef20ea51fcbf330a8ccd9c7efb3`  
		Last Modified: Wed, 27 Mar 2019 00:53:23 GMT  
		Size: 941.4 KB (941376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc5c8b0d5bbc8926ad1ef130f543f79adf62dffd53f42160d12c0514791b3b1d`  
		Last Modified: Wed, 27 Mar 2019 00:53:34 GMT  
		Size: 4.8 MB (4849447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38d00d5ff28f86cdb45f73cc17ae677c4cd3ed03d0db145ac0a5ece71f650c56`  
		Last Modified: Wed, 27 Mar 2019 00:53:35 GMT  
		Size: 11.2 MB (11194322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a76ec6bb9d2beae99a7f11f6e1a4929dc410020eecf23d44d656166e047df6a5`  
		Last Modified: Wed, 27 Mar 2019 00:53:33 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:621631de6bb0cfe59b58ae5490d83c17103d7979968e544467f732d2d2991d38`  
		Last Modified: Wed, 27 Mar 2019 00:53:33 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0.4-32bit-stretch`

```console
$ docker pull redis@sha256:ae402bba1730b3efde985c0a580756ccf9a940008c5c6bd0e0cfa8fde9d56e67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5.0.4-32bit-stretch` - linux; amd64

```console
$ docker pull redis@sha256:342449f1ecbb55562a938f8bf53105398b636aaa8f0283ea436eb3a88a46690a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.5 MB (39483449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:983ad83543fafb3a59a9e8dc9d9e8341c4c3053a25fd763ef0d31f95f9fc3472`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:47:35 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 00:47:35 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 00:47:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 00:47:51 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 27 Mar 2019 00:47:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 27 Mar 2019 00:47:51 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 27 Mar 2019 00:49:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:50:26 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 00:50:27 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 00:50:28 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 00:50:28 GMT
WORKDIR /data
# Wed, 27 Mar 2019 00:50:29 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 00:50:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 00:50:30 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 00:50:30 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cde8019a4b43a4c7fb70ef830196d12a8ba0d031add8e93c3853685b60146393`  
		Last Modified: Wed, 27 Mar 2019 00:53:22 GMT  
		Size: 1.7 KB (1735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a473b37fb2921176dcdeb10cecd0171a8b2ef20ea51fcbf330a8ccd9c7efb3`  
		Last Modified: Wed, 27 Mar 2019 00:53:23 GMT  
		Size: 941.4 KB (941376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc5c8b0d5bbc8926ad1ef130f543f79adf62dffd53f42160d12c0514791b3b1d`  
		Last Modified: Wed, 27 Mar 2019 00:53:34 GMT  
		Size: 4.8 MB (4849447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38d00d5ff28f86cdb45f73cc17ae677c4cd3ed03d0db145ac0a5ece71f650c56`  
		Last Modified: Wed, 27 Mar 2019 00:53:35 GMT  
		Size: 11.2 MB (11194322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a76ec6bb9d2beae99a7f11f6e1a4929dc410020eecf23d44d656166e047df6a5`  
		Last Modified: Wed, 27 Mar 2019 00:53:33 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:621631de6bb0cfe59b58ae5490d83c17103d7979968e544467f732d2d2991d38`  
		Last Modified: Wed, 27 Mar 2019 00:53:33 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0.4-alpine`

```console
$ docker pull redis@sha256:a228f66132cd46a53fd818443c42458af5d6a3e1231df25184304b8e732e51c4
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

### `redis:5.0.4-alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:a2c37214f97ebaf38119e42c4ab4ea655417c2f26e771376eeb7e311cd97ad9e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17526688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec98e4f1b75174ffd9f4763b8a512a0b3bbbefc3d96e0de5aa2ae38b87dd817f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 05:38:42 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 05:38:44 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 20 Mar 2019 07:57:10 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 20 Mar 2019 07:57:10 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 20 Mar 2019 07:57:11 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 20 Mar 2019 07:57:53 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 20 Mar 2019 07:57:54 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 07:57:55 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 07:57:55 GMT
WORKDIR /data
# Wed, 20 Mar 2019 07:57:56 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 20 Mar 2019 07:57:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 07:57:56 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 07:57:57 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ba0c1f7e5a3f3ed61244f636c2d0a994092d082d619f402abd66e2d9a112e6c`  
		Last Modified: Fri, 08 Mar 2019 05:40:31 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b8b2a00ff26d6561bdd7a5a984e982700a4875d6c405669665f4a1690ca6eb`  
		Last Modified: Fri, 08 Mar 2019 05:40:32 GMT  
		Size: 405.3 KB (405282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a115841c3f8e41c6ca59a2fdd0404998e1bace108bc2ceb0ef82ab3569d0a0`  
		Last Modified: Wed, 20 Mar 2019 07:58:51 GMT  
		Size: 14.6 MB (14578904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84e7a60b829aedfc0be0f0bdf16041a82138ec09a6b0728ff2da55b28a8a6c31`  
		Last Modified: Wed, 20 Mar 2019 07:58:46 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:491f7dcd2376a670c686cb298ef7d8663748a067010967927ae1058edd6246d2`  
		Last Modified: Wed, 20 Mar 2019 07:58:46 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.4-alpine` - linux; arm variant v7

```console
$ docker pull redis@sha256:4d6f51ca9a49e92f66c3fe81810b227e562a46b0442cba330cefdee29b381af1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17060140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:989e3bcc9490b75b5c469ba345864b506a3000defecbdb6a60d02fd34e0149f8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:52 GMT
ADD file:e9ae09c8f3973b62bf7e10dd8b9251e50f5479c0d8d1644f632f3886e02c7323 in / 
# Fri, 08 Mar 2019 03:35:52 GMT
CMD ["/bin/sh"]
# Tue, 12 Mar 2019 12:38:36 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Tue, 12 Mar 2019 12:38:38 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 20 Mar 2019 12:07:27 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 20 Mar 2019 12:07:27 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 20 Mar 2019 12:07:28 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 20 Mar 2019 12:08:17 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 20 Mar 2019 12:08:18 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 12:08:19 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 12:08:19 GMT
WORKDIR /data
# Wed, 20 Mar 2019 12:08:20 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 20 Mar 2019 12:08:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 12:08:21 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 12:08:21 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d8d287cbc5740a5d49f37493eecadafc220fee4fd570329023344cad978c4272`  
		Last Modified: Tue, 05 Mar 2019 08:53:06 GMT  
		Size: 2.3 MB (2348580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:148b4b0bab4816ad532c54415c960ce71044f82bad2883bee5f7a92549976b00`  
		Last Modified: Tue, 12 Mar 2019 12:40:38 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae65ef83e1480c00e4c632b5c256740f5286e126c96c2d10771be08b010dff0f`  
		Last Modified: Tue, 12 Mar 2019 12:40:38 GMT  
		Size: 398.6 KB (398574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff642bc2c3f25f805467760129100bd92c3a67b1b0807613763168e300b4f109`  
		Last Modified: Wed, 20 Mar 2019 12:10:51 GMT  
		Size: 14.3 MB (14311155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:926413d8cc4fe3fc883b6fbad81f92a8f268d66e52ad30f5d48c219a0a3d1d31`  
		Last Modified: Wed, 20 Mar 2019 12:10:46 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f858f1590be7b6693d6e1418032ad9d4d20f6240c28da9bf954a75dad5609f2`  
		Last Modified: Wed, 20 Mar 2019 12:10:47 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.4-alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:71abf39e582ccd9ab7e7a8d59d37131cbf3700856798f618cb1cd7f33aaebb6e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.0 MB (18015822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f41d42397e6788ff96c44cfa886907c2c026d733b1fbf83214d01f638adb439f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 11:43:54 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 11:43:57 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 20 Mar 2019 10:17:23 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 20 Mar 2019 10:17:23 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 20 Mar 2019 10:17:24 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 20 Mar 2019 10:19:40 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 20 Mar 2019 10:19:42 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 10:19:43 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 10:19:43 GMT
WORKDIR /data
# Wed, 20 Mar 2019 10:19:44 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 20 Mar 2019 10:19:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 10:19:45 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 10:19:46 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9399e6d0245cf7181b0da72bf72a7673a2cbd03df8e8d269a7f581072fe06d06`  
		Last Modified: Fri, 08 Mar 2019 11:48:54 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:110f2f1a6525b6f6416d05654def28abb3f85447e8520aa1d50e95e5f74f8e48`  
		Last Modified: Fri, 08 Mar 2019 11:48:54 GMT  
		Size: 405.2 KB (405226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aedb298b99d10399b870bafb275ee8052cacaeb192c7dbc5e08476b9a1a2f808`  
		Last Modified: Wed, 20 Mar 2019 10:24:31 GMT  
		Size: 14.9 MB (14920888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69e150556614bd0167cf369c26b300dc39c0ff6c12e384ae2cde120b77509ac9`  
		Last Modified: Wed, 20 Mar 2019 10:24:25 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf7db64c4ce32cfa7cc12a5c7725042561ea9b70177d54de49b552b930388f3f`  
		Last Modified: Wed, 20 Mar 2019 10:24:26 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.4-alpine` - linux; 386

```console
$ docker pull redis@sha256:dc38d2b07f11f0d809f43ac0e1537986e1a9f58c5441c5823307fec0e16ed3ad
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17516376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93b11d851e7b1f26ff58237a8dd3b1e23732ba555e16c58dbb8dae241eb13649`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:50 GMT
ADD file:98a0f92574b6a8592a131ccb07c4f516694e053d610a1701fde2d5e7c65c2175 in / 
# Fri, 08 Mar 2019 03:35:50 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 10:14:05 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 10:14:07 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 20 Mar 2019 11:45:54 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 20 Mar 2019 11:45:54 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 20 Mar 2019 11:45:54 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 20 Mar 2019 11:46:56 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 20 Mar 2019 11:46:57 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 11:46:57 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 11:46:57 GMT
WORKDIR /data
# Wed, 20 Mar 2019 11:46:57 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 20 Mar 2019 11:46:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 11:46:58 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 11:46:58 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:a4c1e43a7431a562d92c5eb6e09e96b4731a474af51cad1c46e2d305ede29005`  
		Last Modified: Fri, 08 Mar 2019 03:36:34 GMT  
		Size: 2.7 MB (2749355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed2f32c3fa1b6c04a79ca05078e80927d1f1819bd561ce4b1ccb8a2f149d8356`  
		Last Modified: Fri, 08 Mar 2019 10:16:17 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee3d69b92603c14c56cbff7eb925f16b36a83bda909ae7a9f75374d27186e0a`  
		Last Modified: Fri, 08 Mar 2019 10:16:17 GMT  
		Size: 408.0 KB (408008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f074ac0a183b6715f4ee51334aeaf56afcb6f80cc1003e43f61f586b81f64c`  
		Last Modified: Wed, 20 Mar 2019 11:49:17 GMT  
		Size: 14.4 MB (14357248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69f5b3c600b3b6424beee72a744dbe8875146e3417fc5fa869e6a4ff9d1c1b53`  
		Last Modified: Wed, 20 Mar 2019 11:49:13 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d87e8ae131c80120ea8e88d6c7b8a923d35db131ba3a05c9aa4f7ddb6fc2eddd`  
		Last Modified: Wed, 20 Mar 2019 11:49:13 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.4-alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:d2a4d55706d9b95d88003ae29c7106151416b6792343d3f086a9af943088d323
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 MB (19030351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:665471668212bb192c6e2154a34a621c224dd4773df3790e0bb3d0961b4e8629`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:33 GMT
ADD file:6dfaec9befa64397af571d1da2e766c694148f7a025b9411404a924d3de64bd3 in / 
# Fri, 08 Mar 2019 03:37:36 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 06:21:57 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 06:22:04 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 20 Mar 2019 09:16:25 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 20 Mar 2019 09:16:27 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 20 Mar 2019 09:16:30 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 20 Mar 2019 09:17:19 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 20 Mar 2019 09:17:25 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 09:17:30 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 09:17:34 GMT
WORKDIR /data
# Wed, 20 Mar 2019 09:17:35 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 20 Mar 2019 09:17:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 09:17:39 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 09:17:43 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:611bce2a4fa9a0e18025e088381d26f1dda2e1c02160c4d24a2720f9dbca9eaf`  
		Last Modified: Fri, 08 Mar 2019 03:38:31 GMT  
		Size: 2.8 MB (2778638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25449434ca2fa6ccc1883d472a26a792336aa1e27c229839f973d583c91a00fe`  
		Last Modified: Fri, 08 Mar 2019 06:27:10 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec248071ec2459c6ae88a0190e574312e021aeb70c18e5058f9878489c0e00b`  
		Last Modified: Fri, 08 Mar 2019 06:27:10 GMT  
		Size: 410.3 KB (410336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0016760e111e977ec727147e27d17d658917d04a95c03f0b6bf695994918683e`  
		Last Modified: Wed, 20 Mar 2019 09:22:21 GMT  
		Size: 15.8 MB (15839543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab407244d63bc1913344c4cd1bf0e82c68fe276670aec144dd83130f7bb83a7e`  
		Last Modified: Wed, 20 Mar 2019 09:22:18 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9124533ac2b510ac109a3516d320d246ba3490f61445d468ff9a1678ee058e5`  
		Last Modified: Wed, 20 Mar 2019 09:22:18 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.4-alpine` - linux; s390x

```console
$ docker pull redis@sha256:16b1ed14f6e57bb89819ad6e6d913b5893e3b45dc421684e29afc7e5bff8a85e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.3 MB (18258462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e4ef67768dbf5548b60a7de042797b2e7dc2df494d6b08fe85a1fd715f1c0dd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 05:35:49 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 05:35:50 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 20 Mar 2019 12:37:01 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 20 Mar 2019 12:37:02 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 20 Mar 2019 12:37:03 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 20 Mar 2019 12:38:25 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 20 Mar 2019 12:38:27 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 12:38:28 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 12:38:28 GMT
WORKDIR /data
# Wed, 20 Mar 2019 12:38:29 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 20 Mar 2019 12:38:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 12:38:30 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 12:38:30 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:668dbb1da38bf6b755c53ced346a702cc89f825fae11e7c280c4937d86c6052f`  
		Last Modified: Fri, 08 Mar 2019 05:37:28 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a9bb4447ea68836f7469bf09fbdaf11252c6449487839e8864900ba4b92d03f`  
		Last Modified: Fri, 08 Mar 2019 05:37:28 GMT  
		Size: 407.9 KB (407852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a395be24428d9ff014ce30020e4a9ea7df74473a39108d7cb1206903e6daf0d8`  
		Last Modified: Wed, 20 Mar 2019 12:42:55 GMT  
		Size: 15.3 MB (15307542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e4cc4c9a48c0e0315f79df913857436d858b63b72688053a7ac19e70a3e6d1`  
		Last Modified: Wed, 20 Mar 2019 12:42:49 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:094178e893cdad85f9261d0fb769bdec1d3b7caf8d638760286efd4aba37199e`  
		Last Modified: Wed, 20 Mar 2019 12:42:49 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0.4-alpine3.9`

```console
$ docker pull redis@sha256:a228f66132cd46a53fd818443c42458af5d6a3e1231df25184304b8e732e51c4
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

### `redis:5.0.4-alpine3.9` - linux; arm variant v6

```console
$ docker pull redis@sha256:a2c37214f97ebaf38119e42c4ab4ea655417c2f26e771376eeb7e311cd97ad9e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17526688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec98e4f1b75174ffd9f4763b8a512a0b3bbbefc3d96e0de5aa2ae38b87dd817f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 05:38:42 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 05:38:44 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 20 Mar 2019 07:57:10 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 20 Mar 2019 07:57:10 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 20 Mar 2019 07:57:11 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 20 Mar 2019 07:57:53 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 20 Mar 2019 07:57:54 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 07:57:55 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 07:57:55 GMT
WORKDIR /data
# Wed, 20 Mar 2019 07:57:56 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 20 Mar 2019 07:57:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 07:57:56 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 07:57:57 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ba0c1f7e5a3f3ed61244f636c2d0a994092d082d619f402abd66e2d9a112e6c`  
		Last Modified: Fri, 08 Mar 2019 05:40:31 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b8b2a00ff26d6561bdd7a5a984e982700a4875d6c405669665f4a1690ca6eb`  
		Last Modified: Fri, 08 Mar 2019 05:40:32 GMT  
		Size: 405.3 KB (405282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a115841c3f8e41c6ca59a2fdd0404998e1bace108bc2ceb0ef82ab3569d0a0`  
		Last Modified: Wed, 20 Mar 2019 07:58:51 GMT  
		Size: 14.6 MB (14578904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84e7a60b829aedfc0be0f0bdf16041a82138ec09a6b0728ff2da55b28a8a6c31`  
		Last Modified: Wed, 20 Mar 2019 07:58:46 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:491f7dcd2376a670c686cb298ef7d8663748a067010967927ae1058edd6246d2`  
		Last Modified: Wed, 20 Mar 2019 07:58:46 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.4-alpine3.9` - linux; arm variant v7

```console
$ docker pull redis@sha256:4d6f51ca9a49e92f66c3fe81810b227e562a46b0442cba330cefdee29b381af1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17060140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:989e3bcc9490b75b5c469ba345864b506a3000defecbdb6a60d02fd34e0149f8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:52 GMT
ADD file:e9ae09c8f3973b62bf7e10dd8b9251e50f5479c0d8d1644f632f3886e02c7323 in / 
# Fri, 08 Mar 2019 03:35:52 GMT
CMD ["/bin/sh"]
# Tue, 12 Mar 2019 12:38:36 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Tue, 12 Mar 2019 12:38:38 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 20 Mar 2019 12:07:27 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 20 Mar 2019 12:07:27 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 20 Mar 2019 12:07:28 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 20 Mar 2019 12:08:17 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 20 Mar 2019 12:08:18 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 12:08:19 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 12:08:19 GMT
WORKDIR /data
# Wed, 20 Mar 2019 12:08:20 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 20 Mar 2019 12:08:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 12:08:21 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 12:08:21 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d8d287cbc5740a5d49f37493eecadafc220fee4fd570329023344cad978c4272`  
		Last Modified: Tue, 05 Mar 2019 08:53:06 GMT  
		Size: 2.3 MB (2348580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:148b4b0bab4816ad532c54415c960ce71044f82bad2883bee5f7a92549976b00`  
		Last Modified: Tue, 12 Mar 2019 12:40:38 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae65ef83e1480c00e4c632b5c256740f5286e126c96c2d10771be08b010dff0f`  
		Last Modified: Tue, 12 Mar 2019 12:40:38 GMT  
		Size: 398.6 KB (398574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff642bc2c3f25f805467760129100bd92c3a67b1b0807613763168e300b4f109`  
		Last Modified: Wed, 20 Mar 2019 12:10:51 GMT  
		Size: 14.3 MB (14311155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:926413d8cc4fe3fc883b6fbad81f92a8f268d66e52ad30f5d48c219a0a3d1d31`  
		Last Modified: Wed, 20 Mar 2019 12:10:46 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f858f1590be7b6693d6e1418032ad9d4d20f6240c28da9bf954a75dad5609f2`  
		Last Modified: Wed, 20 Mar 2019 12:10:47 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.4-alpine3.9` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:71abf39e582ccd9ab7e7a8d59d37131cbf3700856798f618cb1cd7f33aaebb6e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.0 MB (18015822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f41d42397e6788ff96c44cfa886907c2c026d733b1fbf83214d01f638adb439f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 11:43:54 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 11:43:57 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 20 Mar 2019 10:17:23 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 20 Mar 2019 10:17:23 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 20 Mar 2019 10:17:24 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 20 Mar 2019 10:19:40 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 20 Mar 2019 10:19:42 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 10:19:43 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 10:19:43 GMT
WORKDIR /data
# Wed, 20 Mar 2019 10:19:44 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 20 Mar 2019 10:19:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 10:19:45 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 10:19:46 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9399e6d0245cf7181b0da72bf72a7673a2cbd03df8e8d269a7f581072fe06d06`  
		Last Modified: Fri, 08 Mar 2019 11:48:54 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:110f2f1a6525b6f6416d05654def28abb3f85447e8520aa1d50e95e5f74f8e48`  
		Last Modified: Fri, 08 Mar 2019 11:48:54 GMT  
		Size: 405.2 KB (405226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aedb298b99d10399b870bafb275ee8052cacaeb192c7dbc5e08476b9a1a2f808`  
		Last Modified: Wed, 20 Mar 2019 10:24:31 GMT  
		Size: 14.9 MB (14920888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69e150556614bd0167cf369c26b300dc39c0ff6c12e384ae2cde120b77509ac9`  
		Last Modified: Wed, 20 Mar 2019 10:24:25 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf7db64c4ce32cfa7cc12a5c7725042561ea9b70177d54de49b552b930388f3f`  
		Last Modified: Wed, 20 Mar 2019 10:24:26 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.4-alpine3.9` - linux; 386

```console
$ docker pull redis@sha256:dc38d2b07f11f0d809f43ac0e1537986e1a9f58c5441c5823307fec0e16ed3ad
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17516376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93b11d851e7b1f26ff58237a8dd3b1e23732ba555e16c58dbb8dae241eb13649`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:50 GMT
ADD file:98a0f92574b6a8592a131ccb07c4f516694e053d610a1701fde2d5e7c65c2175 in / 
# Fri, 08 Mar 2019 03:35:50 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 10:14:05 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 10:14:07 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 20 Mar 2019 11:45:54 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 20 Mar 2019 11:45:54 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 20 Mar 2019 11:45:54 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 20 Mar 2019 11:46:56 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 20 Mar 2019 11:46:57 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 11:46:57 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 11:46:57 GMT
WORKDIR /data
# Wed, 20 Mar 2019 11:46:57 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 20 Mar 2019 11:46:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 11:46:58 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 11:46:58 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:a4c1e43a7431a562d92c5eb6e09e96b4731a474af51cad1c46e2d305ede29005`  
		Last Modified: Fri, 08 Mar 2019 03:36:34 GMT  
		Size: 2.7 MB (2749355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed2f32c3fa1b6c04a79ca05078e80927d1f1819bd561ce4b1ccb8a2f149d8356`  
		Last Modified: Fri, 08 Mar 2019 10:16:17 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee3d69b92603c14c56cbff7eb925f16b36a83bda909ae7a9f75374d27186e0a`  
		Last Modified: Fri, 08 Mar 2019 10:16:17 GMT  
		Size: 408.0 KB (408008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f074ac0a183b6715f4ee51334aeaf56afcb6f80cc1003e43f61f586b81f64c`  
		Last Modified: Wed, 20 Mar 2019 11:49:17 GMT  
		Size: 14.4 MB (14357248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69f5b3c600b3b6424beee72a744dbe8875146e3417fc5fa869e6a4ff9d1c1b53`  
		Last Modified: Wed, 20 Mar 2019 11:49:13 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d87e8ae131c80120ea8e88d6c7b8a923d35db131ba3a05c9aa4f7ddb6fc2eddd`  
		Last Modified: Wed, 20 Mar 2019 11:49:13 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.4-alpine3.9` - linux; ppc64le

```console
$ docker pull redis@sha256:d2a4d55706d9b95d88003ae29c7106151416b6792343d3f086a9af943088d323
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 MB (19030351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:665471668212bb192c6e2154a34a621c224dd4773df3790e0bb3d0961b4e8629`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:33 GMT
ADD file:6dfaec9befa64397af571d1da2e766c694148f7a025b9411404a924d3de64bd3 in / 
# Fri, 08 Mar 2019 03:37:36 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 06:21:57 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 06:22:04 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 20 Mar 2019 09:16:25 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 20 Mar 2019 09:16:27 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 20 Mar 2019 09:16:30 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 20 Mar 2019 09:17:19 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 20 Mar 2019 09:17:25 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 09:17:30 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 09:17:34 GMT
WORKDIR /data
# Wed, 20 Mar 2019 09:17:35 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 20 Mar 2019 09:17:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 09:17:39 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 09:17:43 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:611bce2a4fa9a0e18025e088381d26f1dda2e1c02160c4d24a2720f9dbca9eaf`  
		Last Modified: Fri, 08 Mar 2019 03:38:31 GMT  
		Size: 2.8 MB (2778638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25449434ca2fa6ccc1883d472a26a792336aa1e27c229839f973d583c91a00fe`  
		Last Modified: Fri, 08 Mar 2019 06:27:10 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec248071ec2459c6ae88a0190e574312e021aeb70c18e5058f9878489c0e00b`  
		Last Modified: Fri, 08 Mar 2019 06:27:10 GMT  
		Size: 410.3 KB (410336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0016760e111e977ec727147e27d17d658917d04a95c03f0b6bf695994918683e`  
		Last Modified: Wed, 20 Mar 2019 09:22:21 GMT  
		Size: 15.8 MB (15839543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab407244d63bc1913344c4cd1bf0e82c68fe276670aec144dd83130f7bb83a7e`  
		Last Modified: Wed, 20 Mar 2019 09:22:18 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9124533ac2b510ac109a3516d320d246ba3490f61445d468ff9a1678ee058e5`  
		Last Modified: Wed, 20 Mar 2019 09:22:18 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.4-alpine3.9` - linux; s390x

```console
$ docker pull redis@sha256:16b1ed14f6e57bb89819ad6e6d913b5893e3b45dc421684e29afc7e5bff8a85e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.3 MB (18258462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e4ef67768dbf5548b60a7de042797b2e7dc2df494d6b08fe85a1fd715f1c0dd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 05:35:49 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 05:35:50 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 20 Mar 2019 12:37:01 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 20 Mar 2019 12:37:02 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 20 Mar 2019 12:37:03 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 20 Mar 2019 12:38:25 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 20 Mar 2019 12:38:27 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 12:38:28 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 12:38:28 GMT
WORKDIR /data
# Wed, 20 Mar 2019 12:38:29 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 20 Mar 2019 12:38:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 12:38:30 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 12:38:30 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:668dbb1da38bf6b755c53ced346a702cc89f825fae11e7c280c4937d86c6052f`  
		Last Modified: Fri, 08 Mar 2019 05:37:28 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a9bb4447ea68836f7469bf09fbdaf11252c6449487839e8864900ba4b92d03f`  
		Last Modified: Fri, 08 Mar 2019 05:37:28 GMT  
		Size: 407.9 KB (407852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a395be24428d9ff014ce30020e4a9ea7df74473a39108d7cb1206903e6daf0d8`  
		Last Modified: Wed, 20 Mar 2019 12:42:55 GMT  
		Size: 15.3 MB (15307542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e4cc4c9a48c0e0315f79df913857436d858b63b72688053a7ac19e70a3e6d1`  
		Last Modified: Wed, 20 Mar 2019 12:42:49 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:094178e893cdad85f9261d0fb769bdec1d3b7caf8d638760286efd4aba37199e`  
		Last Modified: Wed, 20 Mar 2019 12:42:49 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0.4-stretch`

```console
$ docker pull redis@sha256:700869cf656bb5ed0d5c3ba3bf3b12c997f85a31e2b85af35ff93ed745c9b8c7
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
$ docker pull redis@sha256:478392fbb4f132b36b8ead3435087553ee7e6f0395b3d64987ae195268d13493
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35222046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a55fbf438dfd878424c402e365ef3d80c634f07d0f5832193880ee1b95626e4e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:47:35 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 00:47:35 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 00:47:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 00:47:51 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 27 Mar 2019 00:47:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 27 Mar 2019 00:47:51 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 27 Mar 2019 00:48:58 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 00:48:58 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 00:48:59 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 00:48:59 GMT
WORKDIR /data
# Wed, 27 Mar 2019 00:48:59 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 00:48:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 00:48:59 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 00:49:00 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cde8019a4b43a4c7fb70ef830196d12a8ba0d031add8e93c3853685b60146393`  
		Last Modified: Wed, 27 Mar 2019 00:53:22 GMT  
		Size: 1.7 KB (1735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a473b37fb2921176dcdeb10cecd0171a8b2ef20ea51fcbf330a8ccd9c7efb3`  
		Last Modified: Wed, 27 Mar 2019 00:53:23 GMT  
		Size: 941.4 KB (941376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6fe0dfbb7e3e8e6828b7e292526ac875639aaeeb98ad2f4bb89b9cedaa1645d`  
		Last Modified: Wed, 27 Mar 2019 00:53:25 GMT  
		Size: 11.8 MB (11782371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39c8f5ba1240221350872c51b65a0bd1944a5dcc735fddbe132ff565afcba704`  
		Last Modified: Wed, 27 Mar 2019 00:53:23 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfbdd870cf756e661412595b81f9b819efc6c16a4c8f19858091d873e72588ed`  
		Last Modified: Wed, 27 Mar 2019 00:53:23 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.4-stretch` - linux; arm variant v5

```console
$ docker pull redis@sha256:fd9b0178983e7fb5f74ec0545e973ce6a0c77211d2f24a26a901448c91f2ebf8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.5 MB (33540111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5987ee1a68fd50958b0fa5af1b27242e5ced433d0152ff45ce96ce7b71f01939`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:57 GMT
ADD file:7a35d0949b1b3e7394102d060feb38dba6645340f0c24c11c41eab11995474e2 in / 
# Wed, 27 Mar 2019 08:53:58 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 11:26:24 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 11:26:25 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 11:26:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 11:26:51 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 27 Mar 2019 11:26:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 27 Mar 2019 11:26:52 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 27 Mar 2019 11:27:54 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 11:27:56 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 11:27:56 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 11:27:57 GMT
WORKDIR /data
# Wed, 27 Mar 2019 11:27:57 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 11:27:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 11:27:58 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 11:27:58 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:2e028234e3987a188a306c264af3c27abc8240fc8e19373e1c5adc01b31e6176`  
		Last Modified: Wed, 27 Mar 2019 08:59:38 GMT  
		Size: 21.2 MB (21160663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22282ee903e4c1d6bf8a2d2a6d97abed822566f7c086113bc216da0e19f98481`  
		Last Modified: Wed, 27 Mar 2019 11:29:19 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e500ce3d68f7530cd30cab9d55a054fab93622078e8a8462c3a27c37a54a698`  
		Last Modified: Wed, 27 Mar 2019 11:29:19 GMT  
		Size: 931.2 KB (931223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c08071d71257763604ab303f761b64c80e085befe9fce6a7686287c5a0228792`  
		Last Modified: Wed, 27 Mar 2019 11:29:23 GMT  
		Size: 11.4 MB (11445937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:869fc327634f84645c936f77e060d26bbcc40ecfc718845e6ff9ac55bc50531e`  
		Last Modified: Wed, 27 Mar 2019 11:29:19 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6abbd648b20d3e9a0b2ce67bd883a649791aefc3b29ac104b1bb164d192ffa82`  
		Last Modified: Wed, 27 Mar 2019 11:29:19 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.4-stretch` - linux; arm variant v7

```console
$ docker pull redis@sha256:de55867d7acbd41008419d62298446538cb426e95ca533ce4c6d71e582c6ce8f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.3 MB (31339743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f2f791562c1cda7eb29471329caa81ac83f70e81f04a40a95ac15b060009601`
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
# Wed, 20 Mar 2019 12:06:11 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 20 Mar 2019 12:06:11 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 20 Mar 2019 12:06:12 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 20 Mar 2019 12:07:09 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 20 Mar 2019 12:07:11 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 12:07:11 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 12:07:11 GMT
WORKDIR /data
# Wed, 20 Mar 2019 12:07:12 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 20 Mar 2019 12:07:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 12:07:13 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 12:07:14 GMT
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
	-	`sha256:c9cefe4f315f74160d67281bf3e651633dcbed6623cc9a30bd2ec9ade858dda1`  
		Last Modified: Wed, 20 Mar 2019 12:10:23 GMT  
		Size: 11.1 MB (11139138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c6dec50134944fada3d15997b282673f570a7d6c892241753d2ae0c6aacbac9`  
		Last Modified: Wed, 20 Mar 2019 12:10:20 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f203757c40c7635cc1a3a75f65351f0bf0e0efdce6576e1e03fc098edb977b1e`  
		Last Modified: Wed, 20 Mar 2019 12:10:20 GMT  
		Size: 419.0 B  
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
$ docker pull redis@sha256:6e57e9543dbe89377b9909d28f5e015aa31318647c6f82fe0c71224e5c8d69a1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35237305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f12efbbcdc4022fdb35f0639a348a3f89e0d9e6fc3bc339ecd2a689e82b99e9d`
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
# Wed, 20 Mar 2019 11:44:40 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 20 Mar 2019 11:44:40 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 20 Mar 2019 11:44:40 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 20 Mar 2019 11:45:47 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 20 Mar 2019 11:45:48 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 11:45:48 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 11:45:49 GMT
WORKDIR /data
# Wed, 20 Mar 2019 11:45:49 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 20 Mar 2019 11:45:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 11:45:49 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 11:45:49 GMT
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
	-	`sha256:573066ab191147533112e67e028f470da80f9b3b09a6772354dbe459c5bc555d`  
		Last Modified: Wed, 20 Mar 2019 11:49:06 GMT  
		Size: 11.2 MB (11189248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14e5410e183228234f2d672e125def3e58594daeab4a79da9705adcb58f73ae2`  
		Last Modified: Wed, 20 Mar 2019 11:49:03 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2defcaa16eb55ca59ebec9e74a6c28b2c0795608ccab0a74d22473a62c642e17`  
		Last Modified: Wed, 20 Mar 2019 11:49:03 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.4-stretch` - linux; ppc64le

```console
$ docker pull redis@sha256:78b34d526155f60c59915d5e37242da507843e8e5196a3e364145b1c0a26fdaf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.6 MB (35637695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1b7285fef3d0eac504fcb80dd75012303f72e1e7615394c7effa50ce0e5bb25`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 10:05:16 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 10:05:19 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 10:06:39 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 10:06:41 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 27 Mar 2019 10:06:44 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 27 Mar 2019 10:06:46 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 27 Mar 2019 10:08:44 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 10:08:50 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 10:08:52 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 10:08:55 GMT
WORKDIR /data
# Wed, 27 Mar 2019 10:08:56 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 10:09:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 10:09:05 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 10:09:09 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:47457ee2fac27696752b903854c4e4621e3481edc7a34b727f45b4c355de7976`  
		Last Modified: Wed, 27 Mar 2019 08:32:50 GMT  
		Size: 22.8 MB (22751385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819a2a3a3ce9b3f41a4d25dea1025d16f8da4ae9f0c26fc2f7676f4d6e20bf74`  
		Last Modified: Wed, 27 Mar 2019 10:11:42 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c2e912949846d9432577f43246c2dcd56037117a714ac374e7d5778e93748ef`  
		Last Modified: Wed, 27 Mar 2019 10:11:43 GMT  
		Size: 909.8 KB (909818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a596f9258b7863e930b8bed166ac8131225480347d444b926f3ee4c4ff1e742d`  
		Last Modified: Wed, 27 Mar 2019 10:11:46 GMT  
		Size: 12.0 MB (11974197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95b245f45ebd0bc9bbe507016aa20ac3fc241417d776dff5c163aae809dd5044`  
		Last Modified: Wed, 27 Mar 2019 10:11:42 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e505d8d7410abc2c0dd126136c877ec907aa45ed746b9290f49b51fa3bd0219`  
		Last Modified: Wed, 27 Mar 2019 10:11:42 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.4-stretch` - linux; s390x

```console
$ docker pull redis@sha256:648cfcb034348b04058139643fa2087551d0bc11704cef29ee2b3d68825d19ba
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.5 MB (35512456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b543f23ad60b250b011388278a67bea31000d41473f3b0695be16401daab6e74`
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
# Wed, 20 Mar 2019 12:34:27 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 20 Mar 2019 12:34:28 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 20 Mar 2019 12:34:28 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 20 Mar 2019 12:36:41 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 20 Mar 2019 12:36:43 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 12:36:43 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 12:36:44 GMT
WORKDIR /data
# Wed, 20 Mar 2019 12:36:45 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 20 Mar 2019 12:36:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 12:36:45 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 12:36:46 GMT
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
	-	`sha256:20a96b1b951937cd266398bfb674a2b2e899b7e22f0c1af913fa60fd651f3322`  
		Last Modified: Wed, 20 Mar 2019 12:42:29 GMT  
		Size: 12.2 MB (12238025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9feb4386bd929c0319bc63c55b1a1c9a58d004772043de1407da08fed7dc25e`  
		Last Modified: Wed, 20 Mar 2019 12:42:24 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ea97a055b5db2e066b6bd2233524d33b3c03c98dc3964d31f34b0e4396a1eb5`  
		Last Modified: Wed, 20 Mar 2019 12:42:24 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0-alpine`

```console
$ docker pull redis@sha256:a228f66132cd46a53fd818443c42458af5d6a3e1231df25184304b8e732e51c4
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

### `redis:5.0-alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:a2c37214f97ebaf38119e42c4ab4ea655417c2f26e771376eeb7e311cd97ad9e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17526688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec98e4f1b75174ffd9f4763b8a512a0b3bbbefc3d96e0de5aa2ae38b87dd817f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 05:38:42 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 05:38:44 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 20 Mar 2019 07:57:10 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 20 Mar 2019 07:57:10 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 20 Mar 2019 07:57:11 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 20 Mar 2019 07:57:53 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 20 Mar 2019 07:57:54 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 07:57:55 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 07:57:55 GMT
WORKDIR /data
# Wed, 20 Mar 2019 07:57:56 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 20 Mar 2019 07:57:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 07:57:56 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 07:57:57 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ba0c1f7e5a3f3ed61244f636c2d0a994092d082d619f402abd66e2d9a112e6c`  
		Last Modified: Fri, 08 Mar 2019 05:40:31 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b8b2a00ff26d6561bdd7a5a984e982700a4875d6c405669665f4a1690ca6eb`  
		Last Modified: Fri, 08 Mar 2019 05:40:32 GMT  
		Size: 405.3 KB (405282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a115841c3f8e41c6ca59a2fdd0404998e1bace108bc2ceb0ef82ab3569d0a0`  
		Last Modified: Wed, 20 Mar 2019 07:58:51 GMT  
		Size: 14.6 MB (14578904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84e7a60b829aedfc0be0f0bdf16041a82138ec09a6b0728ff2da55b28a8a6c31`  
		Last Modified: Wed, 20 Mar 2019 07:58:46 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:491f7dcd2376a670c686cb298ef7d8663748a067010967927ae1058edd6246d2`  
		Last Modified: Wed, 20 Mar 2019 07:58:46 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-alpine` - linux; arm variant v7

```console
$ docker pull redis@sha256:4d6f51ca9a49e92f66c3fe81810b227e562a46b0442cba330cefdee29b381af1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17060140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:989e3bcc9490b75b5c469ba345864b506a3000defecbdb6a60d02fd34e0149f8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:52 GMT
ADD file:e9ae09c8f3973b62bf7e10dd8b9251e50f5479c0d8d1644f632f3886e02c7323 in / 
# Fri, 08 Mar 2019 03:35:52 GMT
CMD ["/bin/sh"]
# Tue, 12 Mar 2019 12:38:36 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Tue, 12 Mar 2019 12:38:38 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 20 Mar 2019 12:07:27 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 20 Mar 2019 12:07:27 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 20 Mar 2019 12:07:28 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 20 Mar 2019 12:08:17 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 20 Mar 2019 12:08:18 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 12:08:19 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 12:08:19 GMT
WORKDIR /data
# Wed, 20 Mar 2019 12:08:20 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 20 Mar 2019 12:08:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 12:08:21 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 12:08:21 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d8d287cbc5740a5d49f37493eecadafc220fee4fd570329023344cad978c4272`  
		Last Modified: Tue, 05 Mar 2019 08:53:06 GMT  
		Size: 2.3 MB (2348580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:148b4b0bab4816ad532c54415c960ce71044f82bad2883bee5f7a92549976b00`  
		Last Modified: Tue, 12 Mar 2019 12:40:38 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae65ef83e1480c00e4c632b5c256740f5286e126c96c2d10771be08b010dff0f`  
		Last Modified: Tue, 12 Mar 2019 12:40:38 GMT  
		Size: 398.6 KB (398574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff642bc2c3f25f805467760129100bd92c3a67b1b0807613763168e300b4f109`  
		Last Modified: Wed, 20 Mar 2019 12:10:51 GMT  
		Size: 14.3 MB (14311155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:926413d8cc4fe3fc883b6fbad81f92a8f268d66e52ad30f5d48c219a0a3d1d31`  
		Last Modified: Wed, 20 Mar 2019 12:10:46 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f858f1590be7b6693d6e1418032ad9d4d20f6240c28da9bf954a75dad5609f2`  
		Last Modified: Wed, 20 Mar 2019 12:10:47 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:71abf39e582ccd9ab7e7a8d59d37131cbf3700856798f618cb1cd7f33aaebb6e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.0 MB (18015822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f41d42397e6788ff96c44cfa886907c2c026d733b1fbf83214d01f638adb439f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 11:43:54 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 11:43:57 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 20 Mar 2019 10:17:23 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 20 Mar 2019 10:17:23 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 20 Mar 2019 10:17:24 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 20 Mar 2019 10:19:40 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 20 Mar 2019 10:19:42 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 10:19:43 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 10:19:43 GMT
WORKDIR /data
# Wed, 20 Mar 2019 10:19:44 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 20 Mar 2019 10:19:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 10:19:45 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 10:19:46 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9399e6d0245cf7181b0da72bf72a7673a2cbd03df8e8d269a7f581072fe06d06`  
		Last Modified: Fri, 08 Mar 2019 11:48:54 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:110f2f1a6525b6f6416d05654def28abb3f85447e8520aa1d50e95e5f74f8e48`  
		Last Modified: Fri, 08 Mar 2019 11:48:54 GMT  
		Size: 405.2 KB (405226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aedb298b99d10399b870bafb275ee8052cacaeb192c7dbc5e08476b9a1a2f808`  
		Last Modified: Wed, 20 Mar 2019 10:24:31 GMT  
		Size: 14.9 MB (14920888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69e150556614bd0167cf369c26b300dc39c0ff6c12e384ae2cde120b77509ac9`  
		Last Modified: Wed, 20 Mar 2019 10:24:25 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf7db64c4ce32cfa7cc12a5c7725042561ea9b70177d54de49b552b930388f3f`  
		Last Modified: Wed, 20 Mar 2019 10:24:26 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-alpine` - linux; 386

```console
$ docker pull redis@sha256:dc38d2b07f11f0d809f43ac0e1537986e1a9f58c5441c5823307fec0e16ed3ad
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17516376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93b11d851e7b1f26ff58237a8dd3b1e23732ba555e16c58dbb8dae241eb13649`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:50 GMT
ADD file:98a0f92574b6a8592a131ccb07c4f516694e053d610a1701fde2d5e7c65c2175 in / 
# Fri, 08 Mar 2019 03:35:50 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 10:14:05 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 10:14:07 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 20 Mar 2019 11:45:54 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 20 Mar 2019 11:45:54 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 20 Mar 2019 11:45:54 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 20 Mar 2019 11:46:56 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 20 Mar 2019 11:46:57 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 11:46:57 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 11:46:57 GMT
WORKDIR /data
# Wed, 20 Mar 2019 11:46:57 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 20 Mar 2019 11:46:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 11:46:58 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 11:46:58 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:a4c1e43a7431a562d92c5eb6e09e96b4731a474af51cad1c46e2d305ede29005`  
		Last Modified: Fri, 08 Mar 2019 03:36:34 GMT  
		Size: 2.7 MB (2749355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed2f32c3fa1b6c04a79ca05078e80927d1f1819bd561ce4b1ccb8a2f149d8356`  
		Last Modified: Fri, 08 Mar 2019 10:16:17 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee3d69b92603c14c56cbff7eb925f16b36a83bda909ae7a9f75374d27186e0a`  
		Last Modified: Fri, 08 Mar 2019 10:16:17 GMT  
		Size: 408.0 KB (408008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f074ac0a183b6715f4ee51334aeaf56afcb6f80cc1003e43f61f586b81f64c`  
		Last Modified: Wed, 20 Mar 2019 11:49:17 GMT  
		Size: 14.4 MB (14357248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69f5b3c600b3b6424beee72a744dbe8875146e3417fc5fa869e6a4ff9d1c1b53`  
		Last Modified: Wed, 20 Mar 2019 11:49:13 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d87e8ae131c80120ea8e88d6c7b8a923d35db131ba3a05c9aa4f7ddb6fc2eddd`  
		Last Modified: Wed, 20 Mar 2019 11:49:13 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:d2a4d55706d9b95d88003ae29c7106151416b6792343d3f086a9af943088d323
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 MB (19030351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:665471668212bb192c6e2154a34a621c224dd4773df3790e0bb3d0961b4e8629`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:33 GMT
ADD file:6dfaec9befa64397af571d1da2e766c694148f7a025b9411404a924d3de64bd3 in / 
# Fri, 08 Mar 2019 03:37:36 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 06:21:57 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 06:22:04 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 20 Mar 2019 09:16:25 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 20 Mar 2019 09:16:27 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 20 Mar 2019 09:16:30 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 20 Mar 2019 09:17:19 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 20 Mar 2019 09:17:25 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 09:17:30 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 09:17:34 GMT
WORKDIR /data
# Wed, 20 Mar 2019 09:17:35 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 20 Mar 2019 09:17:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 09:17:39 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 09:17:43 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:611bce2a4fa9a0e18025e088381d26f1dda2e1c02160c4d24a2720f9dbca9eaf`  
		Last Modified: Fri, 08 Mar 2019 03:38:31 GMT  
		Size: 2.8 MB (2778638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25449434ca2fa6ccc1883d472a26a792336aa1e27c229839f973d583c91a00fe`  
		Last Modified: Fri, 08 Mar 2019 06:27:10 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec248071ec2459c6ae88a0190e574312e021aeb70c18e5058f9878489c0e00b`  
		Last Modified: Fri, 08 Mar 2019 06:27:10 GMT  
		Size: 410.3 KB (410336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0016760e111e977ec727147e27d17d658917d04a95c03f0b6bf695994918683e`  
		Last Modified: Wed, 20 Mar 2019 09:22:21 GMT  
		Size: 15.8 MB (15839543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab407244d63bc1913344c4cd1bf0e82c68fe276670aec144dd83130f7bb83a7e`  
		Last Modified: Wed, 20 Mar 2019 09:22:18 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9124533ac2b510ac109a3516d320d246ba3490f61445d468ff9a1678ee058e5`  
		Last Modified: Wed, 20 Mar 2019 09:22:18 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-alpine` - linux; s390x

```console
$ docker pull redis@sha256:16b1ed14f6e57bb89819ad6e6d913b5893e3b45dc421684e29afc7e5bff8a85e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.3 MB (18258462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e4ef67768dbf5548b60a7de042797b2e7dc2df494d6b08fe85a1fd715f1c0dd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 05:35:49 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 05:35:50 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 20 Mar 2019 12:37:01 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 20 Mar 2019 12:37:02 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 20 Mar 2019 12:37:03 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 20 Mar 2019 12:38:25 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 20 Mar 2019 12:38:27 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 12:38:28 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 12:38:28 GMT
WORKDIR /data
# Wed, 20 Mar 2019 12:38:29 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 20 Mar 2019 12:38:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 12:38:30 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 12:38:30 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:668dbb1da38bf6b755c53ced346a702cc89f825fae11e7c280c4937d86c6052f`  
		Last Modified: Fri, 08 Mar 2019 05:37:28 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a9bb4447ea68836f7469bf09fbdaf11252c6449487839e8864900ba4b92d03f`  
		Last Modified: Fri, 08 Mar 2019 05:37:28 GMT  
		Size: 407.9 KB (407852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a395be24428d9ff014ce30020e4a9ea7df74473a39108d7cb1206903e6daf0d8`  
		Last Modified: Wed, 20 Mar 2019 12:42:55 GMT  
		Size: 15.3 MB (15307542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e4cc4c9a48c0e0315f79df913857436d858b63b72688053a7ac19e70a3e6d1`  
		Last Modified: Wed, 20 Mar 2019 12:42:49 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:094178e893cdad85f9261d0fb769bdec1d3b7caf8d638760286efd4aba37199e`  
		Last Modified: Wed, 20 Mar 2019 12:42:49 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0-alpine3.9`

```console
$ docker pull redis@sha256:a228f66132cd46a53fd818443c42458af5d6a3e1231df25184304b8e732e51c4
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

### `redis:5.0-alpine3.9` - linux; arm variant v6

```console
$ docker pull redis@sha256:a2c37214f97ebaf38119e42c4ab4ea655417c2f26e771376eeb7e311cd97ad9e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17526688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec98e4f1b75174ffd9f4763b8a512a0b3bbbefc3d96e0de5aa2ae38b87dd817f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 05:38:42 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 05:38:44 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 20 Mar 2019 07:57:10 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 20 Mar 2019 07:57:10 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 20 Mar 2019 07:57:11 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 20 Mar 2019 07:57:53 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 20 Mar 2019 07:57:54 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 07:57:55 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 07:57:55 GMT
WORKDIR /data
# Wed, 20 Mar 2019 07:57:56 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 20 Mar 2019 07:57:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 07:57:56 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 07:57:57 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ba0c1f7e5a3f3ed61244f636c2d0a994092d082d619f402abd66e2d9a112e6c`  
		Last Modified: Fri, 08 Mar 2019 05:40:31 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b8b2a00ff26d6561bdd7a5a984e982700a4875d6c405669665f4a1690ca6eb`  
		Last Modified: Fri, 08 Mar 2019 05:40:32 GMT  
		Size: 405.3 KB (405282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a115841c3f8e41c6ca59a2fdd0404998e1bace108bc2ceb0ef82ab3569d0a0`  
		Last Modified: Wed, 20 Mar 2019 07:58:51 GMT  
		Size: 14.6 MB (14578904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84e7a60b829aedfc0be0f0bdf16041a82138ec09a6b0728ff2da55b28a8a6c31`  
		Last Modified: Wed, 20 Mar 2019 07:58:46 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:491f7dcd2376a670c686cb298ef7d8663748a067010967927ae1058edd6246d2`  
		Last Modified: Wed, 20 Mar 2019 07:58:46 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-alpine3.9` - linux; arm variant v7

```console
$ docker pull redis@sha256:4d6f51ca9a49e92f66c3fe81810b227e562a46b0442cba330cefdee29b381af1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17060140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:989e3bcc9490b75b5c469ba345864b506a3000defecbdb6a60d02fd34e0149f8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:52 GMT
ADD file:e9ae09c8f3973b62bf7e10dd8b9251e50f5479c0d8d1644f632f3886e02c7323 in / 
# Fri, 08 Mar 2019 03:35:52 GMT
CMD ["/bin/sh"]
# Tue, 12 Mar 2019 12:38:36 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Tue, 12 Mar 2019 12:38:38 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 20 Mar 2019 12:07:27 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 20 Mar 2019 12:07:27 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 20 Mar 2019 12:07:28 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 20 Mar 2019 12:08:17 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 20 Mar 2019 12:08:18 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 12:08:19 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 12:08:19 GMT
WORKDIR /data
# Wed, 20 Mar 2019 12:08:20 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 20 Mar 2019 12:08:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 12:08:21 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 12:08:21 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d8d287cbc5740a5d49f37493eecadafc220fee4fd570329023344cad978c4272`  
		Last Modified: Tue, 05 Mar 2019 08:53:06 GMT  
		Size: 2.3 MB (2348580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:148b4b0bab4816ad532c54415c960ce71044f82bad2883bee5f7a92549976b00`  
		Last Modified: Tue, 12 Mar 2019 12:40:38 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae65ef83e1480c00e4c632b5c256740f5286e126c96c2d10771be08b010dff0f`  
		Last Modified: Tue, 12 Mar 2019 12:40:38 GMT  
		Size: 398.6 KB (398574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff642bc2c3f25f805467760129100bd92c3a67b1b0807613763168e300b4f109`  
		Last Modified: Wed, 20 Mar 2019 12:10:51 GMT  
		Size: 14.3 MB (14311155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:926413d8cc4fe3fc883b6fbad81f92a8f268d66e52ad30f5d48c219a0a3d1d31`  
		Last Modified: Wed, 20 Mar 2019 12:10:46 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f858f1590be7b6693d6e1418032ad9d4d20f6240c28da9bf954a75dad5609f2`  
		Last Modified: Wed, 20 Mar 2019 12:10:47 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-alpine3.9` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:71abf39e582ccd9ab7e7a8d59d37131cbf3700856798f618cb1cd7f33aaebb6e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.0 MB (18015822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f41d42397e6788ff96c44cfa886907c2c026d733b1fbf83214d01f638adb439f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 11:43:54 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 11:43:57 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 20 Mar 2019 10:17:23 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 20 Mar 2019 10:17:23 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 20 Mar 2019 10:17:24 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 20 Mar 2019 10:19:40 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 20 Mar 2019 10:19:42 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 10:19:43 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 10:19:43 GMT
WORKDIR /data
# Wed, 20 Mar 2019 10:19:44 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 20 Mar 2019 10:19:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 10:19:45 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 10:19:46 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9399e6d0245cf7181b0da72bf72a7673a2cbd03df8e8d269a7f581072fe06d06`  
		Last Modified: Fri, 08 Mar 2019 11:48:54 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:110f2f1a6525b6f6416d05654def28abb3f85447e8520aa1d50e95e5f74f8e48`  
		Last Modified: Fri, 08 Mar 2019 11:48:54 GMT  
		Size: 405.2 KB (405226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aedb298b99d10399b870bafb275ee8052cacaeb192c7dbc5e08476b9a1a2f808`  
		Last Modified: Wed, 20 Mar 2019 10:24:31 GMT  
		Size: 14.9 MB (14920888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69e150556614bd0167cf369c26b300dc39c0ff6c12e384ae2cde120b77509ac9`  
		Last Modified: Wed, 20 Mar 2019 10:24:25 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf7db64c4ce32cfa7cc12a5c7725042561ea9b70177d54de49b552b930388f3f`  
		Last Modified: Wed, 20 Mar 2019 10:24:26 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-alpine3.9` - linux; 386

```console
$ docker pull redis@sha256:dc38d2b07f11f0d809f43ac0e1537986e1a9f58c5441c5823307fec0e16ed3ad
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17516376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93b11d851e7b1f26ff58237a8dd3b1e23732ba555e16c58dbb8dae241eb13649`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:50 GMT
ADD file:98a0f92574b6a8592a131ccb07c4f516694e053d610a1701fde2d5e7c65c2175 in / 
# Fri, 08 Mar 2019 03:35:50 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 10:14:05 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 10:14:07 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 20 Mar 2019 11:45:54 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 20 Mar 2019 11:45:54 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 20 Mar 2019 11:45:54 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 20 Mar 2019 11:46:56 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 20 Mar 2019 11:46:57 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 11:46:57 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 11:46:57 GMT
WORKDIR /data
# Wed, 20 Mar 2019 11:46:57 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 20 Mar 2019 11:46:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 11:46:58 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 11:46:58 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:a4c1e43a7431a562d92c5eb6e09e96b4731a474af51cad1c46e2d305ede29005`  
		Last Modified: Fri, 08 Mar 2019 03:36:34 GMT  
		Size: 2.7 MB (2749355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed2f32c3fa1b6c04a79ca05078e80927d1f1819bd561ce4b1ccb8a2f149d8356`  
		Last Modified: Fri, 08 Mar 2019 10:16:17 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee3d69b92603c14c56cbff7eb925f16b36a83bda909ae7a9f75374d27186e0a`  
		Last Modified: Fri, 08 Mar 2019 10:16:17 GMT  
		Size: 408.0 KB (408008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f074ac0a183b6715f4ee51334aeaf56afcb6f80cc1003e43f61f586b81f64c`  
		Last Modified: Wed, 20 Mar 2019 11:49:17 GMT  
		Size: 14.4 MB (14357248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69f5b3c600b3b6424beee72a744dbe8875146e3417fc5fa869e6a4ff9d1c1b53`  
		Last Modified: Wed, 20 Mar 2019 11:49:13 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d87e8ae131c80120ea8e88d6c7b8a923d35db131ba3a05c9aa4f7ddb6fc2eddd`  
		Last Modified: Wed, 20 Mar 2019 11:49:13 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-alpine3.9` - linux; ppc64le

```console
$ docker pull redis@sha256:d2a4d55706d9b95d88003ae29c7106151416b6792343d3f086a9af943088d323
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 MB (19030351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:665471668212bb192c6e2154a34a621c224dd4773df3790e0bb3d0961b4e8629`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:33 GMT
ADD file:6dfaec9befa64397af571d1da2e766c694148f7a025b9411404a924d3de64bd3 in / 
# Fri, 08 Mar 2019 03:37:36 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 06:21:57 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 06:22:04 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 20 Mar 2019 09:16:25 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 20 Mar 2019 09:16:27 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 20 Mar 2019 09:16:30 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 20 Mar 2019 09:17:19 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 20 Mar 2019 09:17:25 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 09:17:30 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 09:17:34 GMT
WORKDIR /data
# Wed, 20 Mar 2019 09:17:35 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 20 Mar 2019 09:17:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 09:17:39 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 09:17:43 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:611bce2a4fa9a0e18025e088381d26f1dda2e1c02160c4d24a2720f9dbca9eaf`  
		Last Modified: Fri, 08 Mar 2019 03:38:31 GMT  
		Size: 2.8 MB (2778638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25449434ca2fa6ccc1883d472a26a792336aa1e27c229839f973d583c91a00fe`  
		Last Modified: Fri, 08 Mar 2019 06:27:10 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec248071ec2459c6ae88a0190e574312e021aeb70c18e5058f9878489c0e00b`  
		Last Modified: Fri, 08 Mar 2019 06:27:10 GMT  
		Size: 410.3 KB (410336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0016760e111e977ec727147e27d17d658917d04a95c03f0b6bf695994918683e`  
		Last Modified: Wed, 20 Mar 2019 09:22:21 GMT  
		Size: 15.8 MB (15839543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab407244d63bc1913344c4cd1bf0e82c68fe276670aec144dd83130f7bb83a7e`  
		Last Modified: Wed, 20 Mar 2019 09:22:18 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9124533ac2b510ac109a3516d320d246ba3490f61445d468ff9a1678ee058e5`  
		Last Modified: Wed, 20 Mar 2019 09:22:18 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-alpine3.9` - linux; s390x

```console
$ docker pull redis@sha256:16b1ed14f6e57bb89819ad6e6d913b5893e3b45dc421684e29afc7e5bff8a85e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.3 MB (18258462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e4ef67768dbf5548b60a7de042797b2e7dc2df494d6b08fe85a1fd715f1c0dd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 05:35:49 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 05:35:50 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 20 Mar 2019 12:37:01 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 20 Mar 2019 12:37:02 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 20 Mar 2019 12:37:03 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 20 Mar 2019 12:38:25 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 20 Mar 2019 12:38:27 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 12:38:28 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 12:38:28 GMT
WORKDIR /data
# Wed, 20 Mar 2019 12:38:29 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 20 Mar 2019 12:38:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 12:38:30 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 12:38:30 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:668dbb1da38bf6b755c53ced346a702cc89f825fae11e7c280c4937d86c6052f`  
		Last Modified: Fri, 08 Mar 2019 05:37:28 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a9bb4447ea68836f7469bf09fbdaf11252c6449487839e8864900ba4b92d03f`  
		Last Modified: Fri, 08 Mar 2019 05:37:28 GMT  
		Size: 407.9 KB (407852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a395be24428d9ff014ce30020e4a9ea7df74473a39108d7cb1206903e6daf0d8`  
		Last Modified: Wed, 20 Mar 2019 12:42:55 GMT  
		Size: 15.3 MB (15307542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e4cc4c9a48c0e0315f79df913857436d858b63b72688053a7ac19e70a3e6d1`  
		Last Modified: Wed, 20 Mar 2019 12:42:49 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:094178e893cdad85f9261d0fb769bdec1d3b7caf8d638760286efd4aba37199e`  
		Last Modified: Wed, 20 Mar 2019 12:42:49 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0-stretch`

```console
$ docker pull redis@sha256:700869cf656bb5ed0d5c3ba3bf3b12c997f85a31e2b85af35ff93ed745c9b8c7
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
$ docker pull redis@sha256:478392fbb4f132b36b8ead3435087553ee7e6f0395b3d64987ae195268d13493
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35222046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a55fbf438dfd878424c402e365ef3d80c634f07d0f5832193880ee1b95626e4e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:47:35 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 00:47:35 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 00:47:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 00:47:51 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 27 Mar 2019 00:47:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 27 Mar 2019 00:47:51 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 27 Mar 2019 00:48:58 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 00:48:58 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 00:48:59 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 00:48:59 GMT
WORKDIR /data
# Wed, 27 Mar 2019 00:48:59 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 00:48:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 00:48:59 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 00:49:00 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cde8019a4b43a4c7fb70ef830196d12a8ba0d031add8e93c3853685b60146393`  
		Last Modified: Wed, 27 Mar 2019 00:53:22 GMT  
		Size: 1.7 KB (1735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a473b37fb2921176dcdeb10cecd0171a8b2ef20ea51fcbf330a8ccd9c7efb3`  
		Last Modified: Wed, 27 Mar 2019 00:53:23 GMT  
		Size: 941.4 KB (941376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6fe0dfbb7e3e8e6828b7e292526ac875639aaeeb98ad2f4bb89b9cedaa1645d`  
		Last Modified: Wed, 27 Mar 2019 00:53:25 GMT  
		Size: 11.8 MB (11782371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39c8f5ba1240221350872c51b65a0bd1944a5dcc735fddbe132ff565afcba704`  
		Last Modified: Wed, 27 Mar 2019 00:53:23 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfbdd870cf756e661412595b81f9b819efc6c16a4c8f19858091d873e72588ed`  
		Last Modified: Wed, 27 Mar 2019 00:53:23 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-stretch` - linux; arm variant v5

```console
$ docker pull redis@sha256:fd9b0178983e7fb5f74ec0545e973ce6a0c77211d2f24a26a901448c91f2ebf8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.5 MB (33540111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5987ee1a68fd50958b0fa5af1b27242e5ced433d0152ff45ce96ce7b71f01939`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:57 GMT
ADD file:7a35d0949b1b3e7394102d060feb38dba6645340f0c24c11c41eab11995474e2 in / 
# Wed, 27 Mar 2019 08:53:58 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 11:26:24 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 11:26:25 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 11:26:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 11:26:51 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 27 Mar 2019 11:26:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 27 Mar 2019 11:26:52 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 27 Mar 2019 11:27:54 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 11:27:56 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 11:27:56 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 11:27:57 GMT
WORKDIR /data
# Wed, 27 Mar 2019 11:27:57 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 11:27:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 11:27:58 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 11:27:58 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:2e028234e3987a188a306c264af3c27abc8240fc8e19373e1c5adc01b31e6176`  
		Last Modified: Wed, 27 Mar 2019 08:59:38 GMT  
		Size: 21.2 MB (21160663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22282ee903e4c1d6bf8a2d2a6d97abed822566f7c086113bc216da0e19f98481`  
		Last Modified: Wed, 27 Mar 2019 11:29:19 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e500ce3d68f7530cd30cab9d55a054fab93622078e8a8462c3a27c37a54a698`  
		Last Modified: Wed, 27 Mar 2019 11:29:19 GMT  
		Size: 931.2 KB (931223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c08071d71257763604ab303f761b64c80e085befe9fce6a7686287c5a0228792`  
		Last Modified: Wed, 27 Mar 2019 11:29:23 GMT  
		Size: 11.4 MB (11445937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:869fc327634f84645c936f77e060d26bbcc40ecfc718845e6ff9ac55bc50531e`  
		Last Modified: Wed, 27 Mar 2019 11:29:19 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6abbd648b20d3e9a0b2ce67bd883a649791aefc3b29ac104b1bb164d192ffa82`  
		Last Modified: Wed, 27 Mar 2019 11:29:19 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-stretch` - linux; arm variant v7

```console
$ docker pull redis@sha256:de55867d7acbd41008419d62298446538cb426e95ca533ce4c6d71e582c6ce8f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.3 MB (31339743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f2f791562c1cda7eb29471329caa81ac83f70e81f04a40a95ac15b060009601`
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
# Wed, 20 Mar 2019 12:06:11 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 20 Mar 2019 12:06:11 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 20 Mar 2019 12:06:12 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 20 Mar 2019 12:07:09 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 20 Mar 2019 12:07:11 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 12:07:11 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 12:07:11 GMT
WORKDIR /data
# Wed, 20 Mar 2019 12:07:12 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 20 Mar 2019 12:07:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 12:07:13 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 12:07:14 GMT
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
	-	`sha256:c9cefe4f315f74160d67281bf3e651633dcbed6623cc9a30bd2ec9ade858dda1`  
		Last Modified: Wed, 20 Mar 2019 12:10:23 GMT  
		Size: 11.1 MB (11139138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c6dec50134944fada3d15997b282673f570a7d6c892241753d2ae0c6aacbac9`  
		Last Modified: Wed, 20 Mar 2019 12:10:20 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f203757c40c7635cc1a3a75f65351f0bf0e0efdce6576e1e03fc098edb977b1e`  
		Last Modified: Wed, 20 Mar 2019 12:10:20 GMT  
		Size: 419.0 B  
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
$ docker pull redis@sha256:6e57e9543dbe89377b9909d28f5e015aa31318647c6f82fe0c71224e5c8d69a1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35237305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f12efbbcdc4022fdb35f0639a348a3f89e0d9e6fc3bc339ecd2a689e82b99e9d`
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
# Wed, 20 Mar 2019 11:44:40 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 20 Mar 2019 11:44:40 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 20 Mar 2019 11:44:40 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 20 Mar 2019 11:45:47 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 20 Mar 2019 11:45:48 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 11:45:48 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 11:45:49 GMT
WORKDIR /data
# Wed, 20 Mar 2019 11:45:49 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 20 Mar 2019 11:45:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 11:45:49 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 11:45:49 GMT
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
	-	`sha256:573066ab191147533112e67e028f470da80f9b3b09a6772354dbe459c5bc555d`  
		Last Modified: Wed, 20 Mar 2019 11:49:06 GMT  
		Size: 11.2 MB (11189248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14e5410e183228234f2d672e125def3e58594daeab4a79da9705adcb58f73ae2`  
		Last Modified: Wed, 20 Mar 2019 11:49:03 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2defcaa16eb55ca59ebec9e74a6c28b2c0795608ccab0a74d22473a62c642e17`  
		Last Modified: Wed, 20 Mar 2019 11:49:03 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-stretch` - linux; ppc64le

```console
$ docker pull redis@sha256:78b34d526155f60c59915d5e37242da507843e8e5196a3e364145b1c0a26fdaf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.6 MB (35637695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1b7285fef3d0eac504fcb80dd75012303f72e1e7615394c7effa50ce0e5bb25`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 10:05:16 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 10:05:19 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 10:06:39 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 10:06:41 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 27 Mar 2019 10:06:44 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 27 Mar 2019 10:06:46 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 27 Mar 2019 10:08:44 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 10:08:50 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 10:08:52 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 10:08:55 GMT
WORKDIR /data
# Wed, 27 Mar 2019 10:08:56 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 10:09:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 10:09:05 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 10:09:09 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:47457ee2fac27696752b903854c4e4621e3481edc7a34b727f45b4c355de7976`  
		Last Modified: Wed, 27 Mar 2019 08:32:50 GMT  
		Size: 22.8 MB (22751385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819a2a3a3ce9b3f41a4d25dea1025d16f8da4ae9f0c26fc2f7676f4d6e20bf74`  
		Last Modified: Wed, 27 Mar 2019 10:11:42 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c2e912949846d9432577f43246c2dcd56037117a714ac374e7d5778e93748ef`  
		Last Modified: Wed, 27 Mar 2019 10:11:43 GMT  
		Size: 909.8 KB (909818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a596f9258b7863e930b8bed166ac8131225480347d444b926f3ee4c4ff1e742d`  
		Last Modified: Wed, 27 Mar 2019 10:11:46 GMT  
		Size: 12.0 MB (11974197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95b245f45ebd0bc9bbe507016aa20ac3fc241417d776dff5c163aae809dd5044`  
		Last Modified: Wed, 27 Mar 2019 10:11:42 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e505d8d7410abc2c0dd126136c877ec907aa45ed746b9290f49b51fa3bd0219`  
		Last Modified: Wed, 27 Mar 2019 10:11:42 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-stretch` - linux; s390x

```console
$ docker pull redis@sha256:648cfcb034348b04058139643fa2087551d0bc11704cef29ee2b3d68825d19ba
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.5 MB (35512456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b543f23ad60b250b011388278a67bea31000d41473f3b0695be16401daab6e74`
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
# Wed, 20 Mar 2019 12:34:27 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 20 Mar 2019 12:34:28 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 20 Mar 2019 12:34:28 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 20 Mar 2019 12:36:41 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 20 Mar 2019 12:36:43 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 12:36:43 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 12:36:44 GMT
WORKDIR /data
# Wed, 20 Mar 2019 12:36:45 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 20 Mar 2019 12:36:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 12:36:45 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 12:36:46 GMT
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
	-	`sha256:20a96b1b951937cd266398bfb674a2b2e899b7e22f0c1af913fa60fd651f3322`  
		Last Modified: Wed, 20 Mar 2019 12:42:29 GMT  
		Size: 12.2 MB (12238025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9feb4386bd929c0319bc63c55b1a1c9a58d004772043de1407da08fed7dc25e`  
		Last Modified: Wed, 20 Mar 2019 12:42:24 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ea97a055b5db2e066b6bd2233524d33b3c03c98dc3964d31f34b0e4396a1eb5`  
		Last Modified: Wed, 20 Mar 2019 12:42:24 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5-32bit`

```console
$ docker pull redis@sha256:ae402bba1730b3efde985c0a580756ccf9a940008c5c6bd0e0cfa8fde9d56e67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5-32bit` - linux; amd64

```console
$ docker pull redis@sha256:342449f1ecbb55562a938f8bf53105398b636aaa8f0283ea436eb3a88a46690a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.5 MB (39483449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:983ad83543fafb3a59a9e8dc9d9e8341c4c3053a25fd763ef0d31f95f9fc3472`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:47:35 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 00:47:35 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 00:47:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 00:47:51 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 27 Mar 2019 00:47:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 27 Mar 2019 00:47:51 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 27 Mar 2019 00:49:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:50:26 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 00:50:27 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 00:50:28 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 00:50:28 GMT
WORKDIR /data
# Wed, 27 Mar 2019 00:50:29 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 00:50:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 00:50:30 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 00:50:30 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cde8019a4b43a4c7fb70ef830196d12a8ba0d031add8e93c3853685b60146393`  
		Last Modified: Wed, 27 Mar 2019 00:53:22 GMT  
		Size: 1.7 KB (1735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a473b37fb2921176dcdeb10cecd0171a8b2ef20ea51fcbf330a8ccd9c7efb3`  
		Last Modified: Wed, 27 Mar 2019 00:53:23 GMT  
		Size: 941.4 KB (941376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc5c8b0d5bbc8926ad1ef130f543f79adf62dffd53f42160d12c0514791b3b1d`  
		Last Modified: Wed, 27 Mar 2019 00:53:34 GMT  
		Size: 4.8 MB (4849447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38d00d5ff28f86cdb45f73cc17ae677c4cd3ed03d0db145ac0a5ece71f650c56`  
		Last Modified: Wed, 27 Mar 2019 00:53:35 GMT  
		Size: 11.2 MB (11194322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a76ec6bb9d2beae99a7f11f6e1a4929dc410020eecf23d44d656166e047df6a5`  
		Last Modified: Wed, 27 Mar 2019 00:53:33 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:621631de6bb0cfe59b58ae5490d83c17103d7979968e544467f732d2d2991d38`  
		Last Modified: Wed, 27 Mar 2019 00:53:33 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5-32bit-stretch`

```console
$ docker pull redis@sha256:ae402bba1730b3efde985c0a580756ccf9a940008c5c6bd0e0cfa8fde9d56e67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5-32bit-stretch` - linux; amd64

```console
$ docker pull redis@sha256:342449f1ecbb55562a938f8bf53105398b636aaa8f0283ea436eb3a88a46690a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.5 MB (39483449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:983ad83543fafb3a59a9e8dc9d9e8341c4c3053a25fd763ef0d31f95f9fc3472`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:47:35 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 00:47:35 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 00:47:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 00:47:51 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 27 Mar 2019 00:47:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 27 Mar 2019 00:47:51 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 27 Mar 2019 00:49:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:50:26 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 00:50:27 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 00:50:28 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 00:50:28 GMT
WORKDIR /data
# Wed, 27 Mar 2019 00:50:29 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 00:50:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 00:50:30 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 00:50:30 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cde8019a4b43a4c7fb70ef830196d12a8ba0d031add8e93c3853685b60146393`  
		Last Modified: Wed, 27 Mar 2019 00:53:22 GMT  
		Size: 1.7 KB (1735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a473b37fb2921176dcdeb10cecd0171a8b2ef20ea51fcbf330a8ccd9c7efb3`  
		Last Modified: Wed, 27 Mar 2019 00:53:23 GMT  
		Size: 941.4 KB (941376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc5c8b0d5bbc8926ad1ef130f543f79adf62dffd53f42160d12c0514791b3b1d`  
		Last Modified: Wed, 27 Mar 2019 00:53:34 GMT  
		Size: 4.8 MB (4849447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38d00d5ff28f86cdb45f73cc17ae677c4cd3ed03d0db145ac0a5ece71f650c56`  
		Last Modified: Wed, 27 Mar 2019 00:53:35 GMT  
		Size: 11.2 MB (11194322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a76ec6bb9d2beae99a7f11f6e1a4929dc410020eecf23d44d656166e047df6a5`  
		Last Modified: Wed, 27 Mar 2019 00:53:33 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:621631de6bb0cfe59b58ae5490d83c17103d7979968e544467f732d2d2991d38`  
		Last Modified: Wed, 27 Mar 2019 00:53:33 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5-alpine`

```console
$ docker pull redis@sha256:a228f66132cd46a53fd818443c42458af5d6a3e1231df25184304b8e732e51c4
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

### `redis:5-alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:a2c37214f97ebaf38119e42c4ab4ea655417c2f26e771376eeb7e311cd97ad9e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17526688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec98e4f1b75174ffd9f4763b8a512a0b3bbbefc3d96e0de5aa2ae38b87dd817f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 05:38:42 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 05:38:44 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 20 Mar 2019 07:57:10 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 20 Mar 2019 07:57:10 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 20 Mar 2019 07:57:11 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 20 Mar 2019 07:57:53 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 20 Mar 2019 07:57:54 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 07:57:55 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 07:57:55 GMT
WORKDIR /data
# Wed, 20 Mar 2019 07:57:56 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 20 Mar 2019 07:57:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 07:57:56 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 07:57:57 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ba0c1f7e5a3f3ed61244f636c2d0a994092d082d619f402abd66e2d9a112e6c`  
		Last Modified: Fri, 08 Mar 2019 05:40:31 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b8b2a00ff26d6561bdd7a5a984e982700a4875d6c405669665f4a1690ca6eb`  
		Last Modified: Fri, 08 Mar 2019 05:40:32 GMT  
		Size: 405.3 KB (405282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a115841c3f8e41c6ca59a2fdd0404998e1bace108bc2ceb0ef82ab3569d0a0`  
		Last Modified: Wed, 20 Mar 2019 07:58:51 GMT  
		Size: 14.6 MB (14578904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84e7a60b829aedfc0be0f0bdf16041a82138ec09a6b0728ff2da55b28a8a6c31`  
		Last Modified: Wed, 20 Mar 2019 07:58:46 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:491f7dcd2376a670c686cb298ef7d8663748a067010967927ae1058edd6246d2`  
		Last Modified: Wed, 20 Mar 2019 07:58:46 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-alpine` - linux; arm variant v7

```console
$ docker pull redis@sha256:4d6f51ca9a49e92f66c3fe81810b227e562a46b0442cba330cefdee29b381af1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17060140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:989e3bcc9490b75b5c469ba345864b506a3000defecbdb6a60d02fd34e0149f8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:52 GMT
ADD file:e9ae09c8f3973b62bf7e10dd8b9251e50f5479c0d8d1644f632f3886e02c7323 in / 
# Fri, 08 Mar 2019 03:35:52 GMT
CMD ["/bin/sh"]
# Tue, 12 Mar 2019 12:38:36 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Tue, 12 Mar 2019 12:38:38 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 20 Mar 2019 12:07:27 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 20 Mar 2019 12:07:27 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 20 Mar 2019 12:07:28 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 20 Mar 2019 12:08:17 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 20 Mar 2019 12:08:18 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 12:08:19 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 12:08:19 GMT
WORKDIR /data
# Wed, 20 Mar 2019 12:08:20 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 20 Mar 2019 12:08:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 12:08:21 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 12:08:21 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d8d287cbc5740a5d49f37493eecadafc220fee4fd570329023344cad978c4272`  
		Last Modified: Tue, 05 Mar 2019 08:53:06 GMT  
		Size: 2.3 MB (2348580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:148b4b0bab4816ad532c54415c960ce71044f82bad2883bee5f7a92549976b00`  
		Last Modified: Tue, 12 Mar 2019 12:40:38 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae65ef83e1480c00e4c632b5c256740f5286e126c96c2d10771be08b010dff0f`  
		Last Modified: Tue, 12 Mar 2019 12:40:38 GMT  
		Size: 398.6 KB (398574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff642bc2c3f25f805467760129100bd92c3a67b1b0807613763168e300b4f109`  
		Last Modified: Wed, 20 Mar 2019 12:10:51 GMT  
		Size: 14.3 MB (14311155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:926413d8cc4fe3fc883b6fbad81f92a8f268d66e52ad30f5d48c219a0a3d1d31`  
		Last Modified: Wed, 20 Mar 2019 12:10:46 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f858f1590be7b6693d6e1418032ad9d4d20f6240c28da9bf954a75dad5609f2`  
		Last Modified: Wed, 20 Mar 2019 12:10:47 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:71abf39e582ccd9ab7e7a8d59d37131cbf3700856798f618cb1cd7f33aaebb6e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.0 MB (18015822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f41d42397e6788ff96c44cfa886907c2c026d733b1fbf83214d01f638adb439f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 11:43:54 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 11:43:57 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 20 Mar 2019 10:17:23 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 20 Mar 2019 10:17:23 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 20 Mar 2019 10:17:24 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 20 Mar 2019 10:19:40 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 20 Mar 2019 10:19:42 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 10:19:43 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 10:19:43 GMT
WORKDIR /data
# Wed, 20 Mar 2019 10:19:44 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 20 Mar 2019 10:19:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 10:19:45 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 10:19:46 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9399e6d0245cf7181b0da72bf72a7673a2cbd03df8e8d269a7f581072fe06d06`  
		Last Modified: Fri, 08 Mar 2019 11:48:54 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:110f2f1a6525b6f6416d05654def28abb3f85447e8520aa1d50e95e5f74f8e48`  
		Last Modified: Fri, 08 Mar 2019 11:48:54 GMT  
		Size: 405.2 KB (405226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aedb298b99d10399b870bafb275ee8052cacaeb192c7dbc5e08476b9a1a2f808`  
		Last Modified: Wed, 20 Mar 2019 10:24:31 GMT  
		Size: 14.9 MB (14920888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69e150556614bd0167cf369c26b300dc39c0ff6c12e384ae2cde120b77509ac9`  
		Last Modified: Wed, 20 Mar 2019 10:24:25 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf7db64c4ce32cfa7cc12a5c7725042561ea9b70177d54de49b552b930388f3f`  
		Last Modified: Wed, 20 Mar 2019 10:24:26 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-alpine` - linux; 386

```console
$ docker pull redis@sha256:dc38d2b07f11f0d809f43ac0e1537986e1a9f58c5441c5823307fec0e16ed3ad
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17516376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93b11d851e7b1f26ff58237a8dd3b1e23732ba555e16c58dbb8dae241eb13649`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:50 GMT
ADD file:98a0f92574b6a8592a131ccb07c4f516694e053d610a1701fde2d5e7c65c2175 in / 
# Fri, 08 Mar 2019 03:35:50 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 10:14:05 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 10:14:07 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 20 Mar 2019 11:45:54 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 20 Mar 2019 11:45:54 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 20 Mar 2019 11:45:54 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 20 Mar 2019 11:46:56 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 20 Mar 2019 11:46:57 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 11:46:57 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 11:46:57 GMT
WORKDIR /data
# Wed, 20 Mar 2019 11:46:57 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 20 Mar 2019 11:46:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 11:46:58 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 11:46:58 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:a4c1e43a7431a562d92c5eb6e09e96b4731a474af51cad1c46e2d305ede29005`  
		Last Modified: Fri, 08 Mar 2019 03:36:34 GMT  
		Size: 2.7 MB (2749355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed2f32c3fa1b6c04a79ca05078e80927d1f1819bd561ce4b1ccb8a2f149d8356`  
		Last Modified: Fri, 08 Mar 2019 10:16:17 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee3d69b92603c14c56cbff7eb925f16b36a83bda909ae7a9f75374d27186e0a`  
		Last Modified: Fri, 08 Mar 2019 10:16:17 GMT  
		Size: 408.0 KB (408008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f074ac0a183b6715f4ee51334aeaf56afcb6f80cc1003e43f61f586b81f64c`  
		Last Modified: Wed, 20 Mar 2019 11:49:17 GMT  
		Size: 14.4 MB (14357248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69f5b3c600b3b6424beee72a744dbe8875146e3417fc5fa869e6a4ff9d1c1b53`  
		Last Modified: Wed, 20 Mar 2019 11:49:13 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d87e8ae131c80120ea8e88d6c7b8a923d35db131ba3a05c9aa4f7ddb6fc2eddd`  
		Last Modified: Wed, 20 Mar 2019 11:49:13 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:d2a4d55706d9b95d88003ae29c7106151416b6792343d3f086a9af943088d323
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 MB (19030351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:665471668212bb192c6e2154a34a621c224dd4773df3790e0bb3d0961b4e8629`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:33 GMT
ADD file:6dfaec9befa64397af571d1da2e766c694148f7a025b9411404a924d3de64bd3 in / 
# Fri, 08 Mar 2019 03:37:36 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 06:21:57 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 06:22:04 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 20 Mar 2019 09:16:25 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 20 Mar 2019 09:16:27 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 20 Mar 2019 09:16:30 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 20 Mar 2019 09:17:19 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 20 Mar 2019 09:17:25 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 09:17:30 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 09:17:34 GMT
WORKDIR /data
# Wed, 20 Mar 2019 09:17:35 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 20 Mar 2019 09:17:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 09:17:39 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 09:17:43 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:611bce2a4fa9a0e18025e088381d26f1dda2e1c02160c4d24a2720f9dbca9eaf`  
		Last Modified: Fri, 08 Mar 2019 03:38:31 GMT  
		Size: 2.8 MB (2778638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25449434ca2fa6ccc1883d472a26a792336aa1e27c229839f973d583c91a00fe`  
		Last Modified: Fri, 08 Mar 2019 06:27:10 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec248071ec2459c6ae88a0190e574312e021aeb70c18e5058f9878489c0e00b`  
		Last Modified: Fri, 08 Mar 2019 06:27:10 GMT  
		Size: 410.3 KB (410336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0016760e111e977ec727147e27d17d658917d04a95c03f0b6bf695994918683e`  
		Last Modified: Wed, 20 Mar 2019 09:22:21 GMT  
		Size: 15.8 MB (15839543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab407244d63bc1913344c4cd1bf0e82c68fe276670aec144dd83130f7bb83a7e`  
		Last Modified: Wed, 20 Mar 2019 09:22:18 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9124533ac2b510ac109a3516d320d246ba3490f61445d468ff9a1678ee058e5`  
		Last Modified: Wed, 20 Mar 2019 09:22:18 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-alpine` - linux; s390x

```console
$ docker pull redis@sha256:16b1ed14f6e57bb89819ad6e6d913b5893e3b45dc421684e29afc7e5bff8a85e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.3 MB (18258462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e4ef67768dbf5548b60a7de042797b2e7dc2df494d6b08fe85a1fd715f1c0dd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 05:35:49 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 05:35:50 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 20 Mar 2019 12:37:01 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 20 Mar 2019 12:37:02 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 20 Mar 2019 12:37:03 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 20 Mar 2019 12:38:25 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 20 Mar 2019 12:38:27 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 12:38:28 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 12:38:28 GMT
WORKDIR /data
# Wed, 20 Mar 2019 12:38:29 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 20 Mar 2019 12:38:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 12:38:30 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 12:38:30 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:668dbb1da38bf6b755c53ced346a702cc89f825fae11e7c280c4937d86c6052f`  
		Last Modified: Fri, 08 Mar 2019 05:37:28 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a9bb4447ea68836f7469bf09fbdaf11252c6449487839e8864900ba4b92d03f`  
		Last Modified: Fri, 08 Mar 2019 05:37:28 GMT  
		Size: 407.9 KB (407852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a395be24428d9ff014ce30020e4a9ea7df74473a39108d7cb1206903e6daf0d8`  
		Last Modified: Wed, 20 Mar 2019 12:42:55 GMT  
		Size: 15.3 MB (15307542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e4cc4c9a48c0e0315f79df913857436d858b63b72688053a7ac19e70a3e6d1`  
		Last Modified: Wed, 20 Mar 2019 12:42:49 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:094178e893cdad85f9261d0fb769bdec1d3b7caf8d638760286efd4aba37199e`  
		Last Modified: Wed, 20 Mar 2019 12:42:49 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5-alpine3.9`

```console
$ docker pull redis@sha256:a228f66132cd46a53fd818443c42458af5d6a3e1231df25184304b8e732e51c4
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

### `redis:5-alpine3.9` - linux; arm variant v6

```console
$ docker pull redis@sha256:a2c37214f97ebaf38119e42c4ab4ea655417c2f26e771376eeb7e311cd97ad9e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17526688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec98e4f1b75174ffd9f4763b8a512a0b3bbbefc3d96e0de5aa2ae38b87dd817f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 05:38:42 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 05:38:44 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 20 Mar 2019 07:57:10 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 20 Mar 2019 07:57:10 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 20 Mar 2019 07:57:11 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 20 Mar 2019 07:57:53 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 20 Mar 2019 07:57:54 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 07:57:55 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 07:57:55 GMT
WORKDIR /data
# Wed, 20 Mar 2019 07:57:56 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 20 Mar 2019 07:57:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 07:57:56 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 07:57:57 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ba0c1f7e5a3f3ed61244f636c2d0a994092d082d619f402abd66e2d9a112e6c`  
		Last Modified: Fri, 08 Mar 2019 05:40:31 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b8b2a00ff26d6561bdd7a5a984e982700a4875d6c405669665f4a1690ca6eb`  
		Last Modified: Fri, 08 Mar 2019 05:40:32 GMT  
		Size: 405.3 KB (405282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a115841c3f8e41c6ca59a2fdd0404998e1bace108bc2ceb0ef82ab3569d0a0`  
		Last Modified: Wed, 20 Mar 2019 07:58:51 GMT  
		Size: 14.6 MB (14578904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84e7a60b829aedfc0be0f0bdf16041a82138ec09a6b0728ff2da55b28a8a6c31`  
		Last Modified: Wed, 20 Mar 2019 07:58:46 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:491f7dcd2376a670c686cb298ef7d8663748a067010967927ae1058edd6246d2`  
		Last Modified: Wed, 20 Mar 2019 07:58:46 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-alpine3.9` - linux; arm variant v7

```console
$ docker pull redis@sha256:4d6f51ca9a49e92f66c3fe81810b227e562a46b0442cba330cefdee29b381af1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17060140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:989e3bcc9490b75b5c469ba345864b506a3000defecbdb6a60d02fd34e0149f8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:52 GMT
ADD file:e9ae09c8f3973b62bf7e10dd8b9251e50f5479c0d8d1644f632f3886e02c7323 in / 
# Fri, 08 Mar 2019 03:35:52 GMT
CMD ["/bin/sh"]
# Tue, 12 Mar 2019 12:38:36 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Tue, 12 Mar 2019 12:38:38 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 20 Mar 2019 12:07:27 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 20 Mar 2019 12:07:27 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 20 Mar 2019 12:07:28 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 20 Mar 2019 12:08:17 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 20 Mar 2019 12:08:18 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 12:08:19 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 12:08:19 GMT
WORKDIR /data
# Wed, 20 Mar 2019 12:08:20 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 20 Mar 2019 12:08:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 12:08:21 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 12:08:21 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d8d287cbc5740a5d49f37493eecadafc220fee4fd570329023344cad978c4272`  
		Last Modified: Tue, 05 Mar 2019 08:53:06 GMT  
		Size: 2.3 MB (2348580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:148b4b0bab4816ad532c54415c960ce71044f82bad2883bee5f7a92549976b00`  
		Last Modified: Tue, 12 Mar 2019 12:40:38 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae65ef83e1480c00e4c632b5c256740f5286e126c96c2d10771be08b010dff0f`  
		Last Modified: Tue, 12 Mar 2019 12:40:38 GMT  
		Size: 398.6 KB (398574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff642bc2c3f25f805467760129100bd92c3a67b1b0807613763168e300b4f109`  
		Last Modified: Wed, 20 Mar 2019 12:10:51 GMT  
		Size: 14.3 MB (14311155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:926413d8cc4fe3fc883b6fbad81f92a8f268d66e52ad30f5d48c219a0a3d1d31`  
		Last Modified: Wed, 20 Mar 2019 12:10:46 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f858f1590be7b6693d6e1418032ad9d4d20f6240c28da9bf954a75dad5609f2`  
		Last Modified: Wed, 20 Mar 2019 12:10:47 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-alpine3.9` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:71abf39e582ccd9ab7e7a8d59d37131cbf3700856798f618cb1cd7f33aaebb6e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.0 MB (18015822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f41d42397e6788ff96c44cfa886907c2c026d733b1fbf83214d01f638adb439f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 11:43:54 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 11:43:57 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 20 Mar 2019 10:17:23 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 20 Mar 2019 10:17:23 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 20 Mar 2019 10:17:24 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 20 Mar 2019 10:19:40 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 20 Mar 2019 10:19:42 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 10:19:43 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 10:19:43 GMT
WORKDIR /data
# Wed, 20 Mar 2019 10:19:44 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 20 Mar 2019 10:19:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 10:19:45 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 10:19:46 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9399e6d0245cf7181b0da72bf72a7673a2cbd03df8e8d269a7f581072fe06d06`  
		Last Modified: Fri, 08 Mar 2019 11:48:54 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:110f2f1a6525b6f6416d05654def28abb3f85447e8520aa1d50e95e5f74f8e48`  
		Last Modified: Fri, 08 Mar 2019 11:48:54 GMT  
		Size: 405.2 KB (405226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aedb298b99d10399b870bafb275ee8052cacaeb192c7dbc5e08476b9a1a2f808`  
		Last Modified: Wed, 20 Mar 2019 10:24:31 GMT  
		Size: 14.9 MB (14920888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69e150556614bd0167cf369c26b300dc39c0ff6c12e384ae2cde120b77509ac9`  
		Last Modified: Wed, 20 Mar 2019 10:24:25 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf7db64c4ce32cfa7cc12a5c7725042561ea9b70177d54de49b552b930388f3f`  
		Last Modified: Wed, 20 Mar 2019 10:24:26 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-alpine3.9` - linux; 386

```console
$ docker pull redis@sha256:dc38d2b07f11f0d809f43ac0e1537986e1a9f58c5441c5823307fec0e16ed3ad
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17516376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93b11d851e7b1f26ff58237a8dd3b1e23732ba555e16c58dbb8dae241eb13649`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:50 GMT
ADD file:98a0f92574b6a8592a131ccb07c4f516694e053d610a1701fde2d5e7c65c2175 in / 
# Fri, 08 Mar 2019 03:35:50 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 10:14:05 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 10:14:07 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 20 Mar 2019 11:45:54 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 20 Mar 2019 11:45:54 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 20 Mar 2019 11:45:54 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 20 Mar 2019 11:46:56 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 20 Mar 2019 11:46:57 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 11:46:57 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 11:46:57 GMT
WORKDIR /data
# Wed, 20 Mar 2019 11:46:57 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 20 Mar 2019 11:46:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 11:46:58 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 11:46:58 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:a4c1e43a7431a562d92c5eb6e09e96b4731a474af51cad1c46e2d305ede29005`  
		Last Modified: Fri, 08 Mar 2019 03:36:34 GMT  
		Size: 2.7 MB (2749355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed2f32c3fa1b6c04a79ca05078e80927d1f1819bd561ce4b1ccb8a2f149d8356`  
		Last Modified: Fri, 08 Mar 2019 10:16:17 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee3d69b92603c14c56cbff7eb925f16b36a83bda909ae7a9f75374d27186e0a`  
		Last Modified: Fri, 08 Mar 2019 10:16:17 GMT  
		Size: 408.0 KB (408008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f074ac0a183b6715f4ee51334aeaf56afcb6f80cc1003e43f61f586b81f64c`  
		Last Modified: Wed, 20 Mar 2019 11:49:17 GMT  
		Size: 14.4 MB (14357248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69f5b3c600b3b6424beee72a744dbe8875146e3417fc5fa869e6a4ff9d1c1b53`  
		Last Modified: Wed, 20 Mar 2019 11:49:13 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d87e8ae131c80120ea8e88d6c7b8a923d35db131ba3a05c9aa4f7ddb6fc2eddd`  
		Last Modified: Wed, 20 Mar 2019 11:49:13 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-alpine3.9` - linux; ppc64le

```console
$ docker pull redis@sha256:d2a4d55706d9b95d88003ae29c7106151416b6792343d3f086a9af943088d323
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 MB (19030351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:665471668212bb192c6e2154a34a621c224dd4773df3790e0bb3d0961b4e8629`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:33 GMT
ADD file:6dfaec9befa64397af571d1da2e766c694148f7a025b9411404a924d3de64bd3 in / 
# Fri, 08 Mar 2019 03:37:36 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 06:21:57 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 06:22:04 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 20 Mar 2019 09:16:25 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 20 Mar 2019 09:16:27 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 20 Mar 2019 09:16:30 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 20 Mar 2019 09:17:19 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 20 Mar 2019 09:17:25 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 09:17:30 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 09:17:34 GMT
WORKDIR /data
# Wed, 20 Mar 2019 09:17:35 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 20 Mar 2019 09:17:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 09:17:39 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 09:17:43 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:611bce2a4fa9a0e18025e088381d26f1dda2e1c02160c4d24a2720f9dbca9eaf`  
		Last Modified: Fri, 08 Mar 2019 03:38:31 GMT  
		Size: 2.8 MB (2778638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25449434ca2fa6ccc1883d472a26a792336aa1e27c229839f973d583c91a00fe`  
		Last Modified: Fri, 08 Mar 2019 06:27:10 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec248071ec2459c6ae88a0190e574312e021aeb70c18e5058f9878489c0e00b`  
		Last Modified: Fri, 08 Mar 2019 06:27:10 GMT  
		Size: 410.3 KB (410336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0016760e111e977ec727147e27d17d658917d04a95c03f0b6bf695994918683e`  
		Last Modified: Wed, 20 Mar 2019 09:22:21 GMT  
		Size: 15.8 MB (15839543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab407244d63bc1913344c4cd1bf0e82c68fe276670aec144dd83130f7bb83a7e`  
		Last Modified: Wed, 20 Mar 2019 09:22:18 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9124533ac2b510ac109a3516d320d246ba3490f61445d468ff9a1678ee058e5`  
		Last Modified: Wed, 20 Mar 2019 09:22:18 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-alpine3.9` - linux; s390x

```console
$ docker pull redis@sha256:16b1ed14f6e57bb89819ad6e6d913b5893e3b45dc421684e29afc7e5bff8a85e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.3 MB (18258462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e4ef67768dbf5548b60a7de042797b2e7dc2df494d6b08fe85a1fd715f1c0dd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 05:35:49 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 05:35:50 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 20 Mar 2019 12:37:01 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 20 Mar 2019 12:37:02 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 20 Mar 2019 12:37:03 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 20 Mar 2019 12:38:25 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 20 Mar 2019 12:38:27 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 12:38:28 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 12:38:28 GMT
WORKDIR /data
# Wed, 20 Mar 2019 12:38:29 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 20 Mar 2019 12:38:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 12:38:30 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 12:38:30 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:668dbb1da38bf6b755c53ced346a702cc89f825fae11e7c280c4937d86c6052f`  
		Last Modified: Fri, 08 Mar 2019 05:37:28 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a9bb4447ea68836f7469bf09fbdaf11252c6449487839e8864900ba4b92d03f`  
		Last Modified: Fri, 08 Mar 2019 05:37:28 GMT  
		Size: 407.9 KB (407852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a395be24428d9ff014ce30020e4a9ea7df74473a39108d7cb1206903e6daf0d8`  
		Last Modified: Wed, 20 Mar 2019 12:42:55 GMT  
		Size: 15.3 MB (15307542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e4cc4c9a48c0e0315f79df913857436d858b63b72688053a7ac19e70a3e6d1`  
		Last Modified: Wed, 20 Mar 2019 12:42:49 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:094178e893cdad85f9261d0fb769bdec1d3b7caf8d638760286efd4aba37199e`  
		Last Modified: Wed, 20 Mar 2019 12:42:49 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5-stretch`

```console
$ docker pull redis@sha256:700869cf656bb5ed0d5c3ba3bf3b12c997f85a31e2b85af35ff93ed745c9b8c7
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
$ docker pull redis@sha256:478392fbb4f132b36b8ead3435087553ee7e6f0395b3d64987ae195268d13493
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35222046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a55fbf438dfd878424c402e365ef3d80c634f07d0f5832193880ee1b95626e4e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:47:35 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 00:47:35 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 00:47:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 00:47:51 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 27 Mar 2019 00:47:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 27 Mar 2019 00:47:51 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 27 Mar 2019 00:48:58 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 00:48:58 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 00:48:59 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 00:48:59 GMT
WORKDIR /data
# Wed, 27 Mar 2019 00:48:59 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 00:48:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 00:48:59 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 00:49:00 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cde8019a4b43a4c7fb70ef830196d12a8ba0d031add8e93c3853685b60146393`  
		Last Modified: Wed, 27 Mar 2019 00:53:22 GMT  
		Size: 1.7 KB (1735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a473b37fb2921176dcdeb10cecd0171a8b2ef20ea51fcbf330a8ccd9c7efb3`  
		Last Modified: Wed, 27 Mar 2019 00:53:23 GMT  
		Size: 941.4 KB (941376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6fe0dfbb7e3e8e6828b7e292526ac875639aaeeb98ad2f4bb89b9cedaa1645d`  
		Last Modified: Wed, 27 Mar 2019 00:53:25 GMT  
		Size: 11.8 MB (11782371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39c8f5ba1240221350872c51b65a0bd1944a5dcc735fddbe132ff565afcba704`  
		Last Modified: Wed, 27 Mar 2019 00:53:23 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfbdd870cf756e661412595b81f9b819efc6c16a4c8f19858091d873e72588ed`  
		Last Modified: Wed, 27 Mar 2019 00:53:23 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-stretch` - linux; arm variant v5

```console
$ docker pull redis@sha256:fd9b0178983e7fb5f74ec0545e973ce6a0c77211d2f24a26a901448c91f2ebf8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.5 MB (33540111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5987ee1a68fd50958b0fa5af1b27242e5ced433d0152ff45ce96ce7b71f01939`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:57 GMT
ADD file:7a35d0949b1b3e7394102d060feb38dba6645340f0c24c11c41eab11995474e2 in / 
# Wed, 27 Mar 2019 08:53:58 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 11:26:24 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 11:26:25 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 11:26:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 11:26:51 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 27 Mar 2019 11:26:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 27 Mar 2019 11:26:52 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 27 Mar 2019 11:27:54 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 11:27:56 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 11:27:56 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 11:27:57 GMT
WORKDIR /data
# Wed, 27 Mar 2019 11:27:57 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 11:27:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 11:27:58 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 11:27:58 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:2e028234e3987a188a306c264af3c27abc8240fc8e19373e1c5adc01b31e6176`  
		Last Modified: Wed, 27 Mar 2019 08:59:38 GMT  
		Size: 21.2 MB (21160663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22282ee903e4c1d6bf8a2d2a6d97abed822566f7c086113bc216da0e19f98481`  
		Last Modified: Wed, 27 Mar 2019 11:29:19 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e500ce3d68f7530cd30cab9d55a054fab93622078e8a8462c3a27c37a54a698`  
		Last Modified: Wed, 27 Mar 2019 11:29:19 GMT  
		Size: 931.2 KB (931223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c08071d71257763604ab303f761b64c80e085befe9fce6a7686287c5a0228792`  
		Last Modified: Wed, 27 Mar 2019 11:29:23 GMT  
		Size: 11.4 MB (11445937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:869fc327634f84645c936f77e060d26bbcc40ecfc718845e6ff9ac55bc50531e`  
		Last Modified: Wed, 27 Mar 2019 11:29:19 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6abbd648b20d3e9a0b2ce67bd883a649791aefc3b29ac104b1bb164d192ffa82`  
		Last Modified: Wed, 27 Mar 2019 11:29:19 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-stretch` - linux; arm variant v7

```console
$ docker pull redis@sha256:de55867d7acbd41008419d62298446538cb426e95ca533ce4c6d71e582c6ce8f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.3 MB (31339743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f2f791562c1cda7eb29471329caa81ac83f70e81f04a40a95ac15b060009601`
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
# Wed, 20 Mar 2019 12:06:11 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 20 Mar 2019 12:06:11 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 20 Mar 2019 12:06:12 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 20 Mar 2019 12:07:09 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 20 Mar 2019 12:07:11 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 12:07:11 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 12:07:11 GMT
WORKDIR /data
# Wed, 20 Mar 2019 12:07:12 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 20 Mar 2019 12:07:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 12:07:13 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 12:07:14 GMT
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
	-	`sha256:c9cefe4f315f74160d67281bf3e651633dcbed6623cc9a30bd2ec9ade858dda1`  
		Last Modified: Wed, 20 Mar 2019 12:10:23 GMT  
		Size: 11.1 MB (11139138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c6dec50134944fada3d15997b282673f570a7d6c892241753d2ae0c6aacbac9`  
		Last Modified: Wed, 20 Mar 2019 12:10:20 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f203757c40c7635cc1a3a75f65351f0bf0e0efdce6576e1e03fc098edb977b1e`  
		Last Modified: Wed, 20 Mar 2019 12:10:20 GMT  
		Size: 419.0 B  
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
$ docker pull redis@sha256:6e57e9543dbe89377b9909d28f5e015aa31318647c6f82fe0c71224e5c8d69a1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35237305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f12efbbcdc4022fdb35f0639a348a3f89e0d9e6fc3bc339ecd2a689e82b99e9d`
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
# Wed, 20 Mar 2019 11:44:40 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 20 Mar 2019 11:44:40 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 20 Mar 2019 11:44:40 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 20 Mar 2019 11:45:47 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 20 Mar 2019 11:45:48 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 11:45:48 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 11:45:49 GMT
WORKDIR /data
# Wed, 20 Mar 2019 11:45:49 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 20 Mar 2019 11:45:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 11:45:49 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 11:45:49 GMT
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
	-	`sha256:573066ab191147533112e67e028f470da80f9b3b09a6772354dbe459c5bc555d`  
		Last Modified: Wed, 20 Mar 2019 11:49:06 GMT  
		Size: 11.2 MB (11189248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14e5410e183228234f2d672e125def3e58594daeab4a79da9705adcb58f73ae2`  
		Last Modified: Wed, 20 Mar 2019 11:49:03 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2defcaa16eb55ca59ebec9e74a6c28b2c0795608ccab0a74d22473a62c642e17`  
		Last Modified: Wed, 20 Mar 2019 11:49:03 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-stretch` - linux; ppc64le

```console
$ docker pull redis@sha256:78b34d526155f60c59915d5e37242da507843e8e5196a3e364145b1c0a26fdaf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.6 MB (35637695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1b7285fef3d0eac504fcb80dd75012303f72e1e7615394c7effa50ce0e5bb25`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 10:05:16 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 10:05:19 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 10:06:39 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 10:06:41 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 27 Mar 2019 10:06:44 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 27 Mar 2019 10:06:46 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 27 Mar 2019 10:08:44 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 10:08:50 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 10:08:52 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 10:08:55 GMT
WORKDIR /data
# Wed, 27 Mar 2019 10:08:56 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 10:09:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 10:09:05 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 10:09:09 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:47457ee2fac27696752b903854c4e4621e3481edc7a34b727f45b4c355de7976`  
		Last Modified: Wed, 27 Mar 2019 08:32:50 GMT  
		Size: 22.8 MB (22751385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819a2a3a3ce9b3f41a4d25dea1025d16f8da4ae9f0c26fc2f7676f4d6e20bf74`  
		Last Modified: Wed, 27 Mar 2019 10:11:42 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c2e912949846d9432577f43246c2dcd56037117a714ac374e7d5778e93748ef`  
		Last Modified: Wed, 27 Mar 2019 10:11:43 GMT  
		Size: 909.8 KB (909818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a596f9258b7863e930b8bed166ac8131225480347d444b926f3ee4c4ff1e742d`  
		Last Modified: Wed, 27 Mar 2019 10:11:46 GMT  
		Size: 12.0 MB (11974197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95b245f45ebd0bc9bbe507016aa20ac3fc241417d776dff5c163aae809dd5044`  
		Last Modified: Wed, 27 Mar 2019 10:11:42 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e505d8d7410abc2c0dd126136c877ec907aa45ed746b9290f49b51fa3bd0219`  
		Last Modified: Wed, 27 Mar 2019 10:11:42 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-stretch` - linux; s390x

```console
$ docker pull redis@sha256:648cfcb034348b04058139643fa2087551d0bc11704cef29ee2b3d68825d19ba
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.5 MB (35512456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b543f23ad60b250b011388278a67bea31000d41473f3b0695be16401daab6e74`
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
# Wed, 20 Mar 2019 12:34:27 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 20 Mar 2019 12:34:28 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 20 Mar 2019 12:34:28 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 20 Mar 2019 12:36:41 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 20 Mar 2019 12:36:43 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 12:36:43 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 12:36:44 GMT
WORKDIR /data
# Wed, 20 Mar 2019 12:36:45 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 20 Mar 2019 12:36:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 12:36:45 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 12:36:46 GMT
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
	-	`sha256:20a96b1b951937cd266398bfb674a2b2e899b7e22f0c1af913fa60fd651f3322`  
		Last Modified: Wed, 20 Mar 2019 12:42:29 GMT  
		Size: 12.2 MB (12238025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9feb4386bd929c0319bc63c55b1a1c9a58d004772043de1407da08fed7dc25e`  
		Last Modified: Wed, 20 Mar 2019 12:42:24 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ea97a055b5db2e066b6bd2233524d33b3c03c98dc3964d31f34b0e4396a1eb5`  
		Last Modified: Wed, 20 Mar 2019 12:42:24 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:alpine`

```console
$ docker pull redis@sha256:a228f66132cd46a53fd818443c42458af5d6a3e1231df25184304b8e732e51c4
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

### `redis:alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:a2c37214f97ebaf38119e42c4ab4ea655417c2f26e771376eeb7e311cd97ad9e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17526688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec98e4f1b75174ffd9f4763b8a512a0b3bbbefc3d96e0de5aa2ae38b87dd817f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 05:38:42 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 05:38:44 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 20 Mar 2019 07:57:10 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 20 Mar 2019 07:57:10 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 20 Mar 2019 07:57:11 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 20 Mar 2019 07:57:53 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 20 Mar 2019 07:57:54 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 07:57:55 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 07:57:55 GMT
WORKDIR /data
# Wed, 20 Mar 2019 07:57:56 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 20 Mar 2019 07:57:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 07:57:56 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 07:57:57 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ba0c1f7e5a3f3ed61244f636c2d0a994092d082d619f402abd66e2d9a112e6c`  
		Last Modified: Fri, 08 Mar 2019 05:40:31 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b8b2a00ff26d6561bdd7a5a984e982700a4875d6c405669665f4a1690ca6eb`  
		Last Modified: Fri, 08 Mar 2019 05:40:32 GMT  
		Size: 405.3 KB (405282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a115841c3f8e41c6ca59a2fdd0404998e1bace108bc2ceb0ef82ab3569d0a0`  
		Last Modified: Wed, 20 Mar 2019 07:58:51 GMT  
		Size: 14.6 MB (14578904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84e7a60b829aedfc0be0f0bdf16041a82138ec09a6b0728ff2da55b28a8a6c31`  
		Last Modified: Wed, 20 Mar 2019 07:58:46 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:491f7dcd2376a670c686cb298ef7d8663748a067010967927ae1058edd6246d2`  
		Last Modified: Wed, 20 Mar 2019 07:58:46 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine` - linux; arm variant v7

```console
$ docker pull redis@sha256:4d6f51ca9a49e92f66c3fe81810b227e562a46b0442cba330cefdee29b381af1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17060140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:989e3bcc9490b75b5c469ba345864b506a3000defecbdb6a60d02fd34e0149f8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:52 GMT
ADD file:e9ae09c8f3973b62bf7e10dd8b9251e50f5479c0d8d1644f632f3886e02c7323 in / 
# Fri, 08 Mar 2019 03:35:52 GMT
CMD ["/bin/sh"]
# Tue, 12 Mar 2019 12:38:36 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Tue, 12 Mar 2019 12:38:38 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 20 Mar 2019 12:07:27 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 20 Mar 2019 12:07:27 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 20 Mar 2019 12:07:28 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 20 Mar 2019 12:08:17 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 20 Mar 2019 12:08:18 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 12:08:19 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 12:08:19 GMT
WORKDIR /data
# Wed, 20 Mar 2019 12:08:20 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 20 Mar 2019 12:08:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 12:08:21 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 12:08:21 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d8d287cbc5740a5d49f37493eecadafc220fee4fd570329023344cad978c4272`  
		Last Modified: Tue, 05 Mar 2019 08:53:06 GMT  
		Size: 2.3 MB (2348580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:148b4b0bab4816ad532c54415c960ce71044f82bad2883bee5f7a92549976b00`  
		Last Modified: Tue, 12 Mar 2019 12:40:38 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae65ef83e1480c00e4c632b5c256740f5286e126c96c2d10771be08b010dff0f`  
		Last Modified: Tue, 12 Mar 2019 12:40:38 GMT  
		Size: 398.6 KB (398574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff642bc2c3f25f805467760129100bd92c3a67b1b0807613763168e300b4f109`  
		Last Modified: Wed, 20 Mar 2019 12:10:51 GMT  
		Size: 14.3 MB (14311155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:926413d8cc4fe3fc883b6fbad81f92a8f268d66e52ad30f5d48c219a0a3d1d31`  
		Last Modified: Wed, 20 Mar 2019 12:10:46 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f858f1590be7b6693d6e1418032ad9d4d20f6240c28da9bf954a75dad5609f2`  
		Last Modified: Wed, 20 Mar 2019 12:10:47 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:71abf39e582ccd9ab7e7a8d59d37131cbf3700856798f618cb1cd7f33aaebb6e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.0 MB (18015822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f41d42397e6788ff96c44cfa886907c2c026d733b1fbf83214d01f638adb439f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 11:43:54 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 11:43:57 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 20 Mar 2019 10:17:23 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 20 Mar 2019 10:17:23 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 20 Mar 2019 10:17:24 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 20 Mar 2019 10:19:40 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 20 Mar 2019 10:19:42 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 10:19:43 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 10:19:43 GMT
WORKDIR /data
# Wed, 20 Mar 2019 10:19:44 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 20 Mar 2019 10:19:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 10:19:45 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 10:19:46 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9399e6d0245cf7181b0da72bf72a7673a2cbd03df8e8d269a7f581072fe06d06`  
		Last Modified: Fri, 08 Mar 2019 11:48:54 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:110f2f1a6525b6f6416d05654def28abb3f85447e8520aa1d50e95e5f74f8e48`  
		Last Modified: Fri, 08 Mar 2019 11:48:54 GMT  
		Size: 405.2 KB (405226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aedb298b99d10399b870bafb275ee8052cacaeb192c7dbc5e08476b9a1a2f808`  
		Last Modified: Wed, 20 Mar 2019 10:24:31 GMT  
		Size: 14.9 MB (14920888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69e150556614bd0167cf369c26b300dc39c0ff6c12e384ae2cde120b77509ac9`  
		Last Modified: Wed, 20 Mar 2019 10:24:25 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf7db64c4ce32cfa7cc12a5c7725042561ea9b70177d54de49b552b930388f3f`  
		Last Modified: Wed, 20 Mar 2019 10:24:26 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine` - linux; 386

```console
$ docker pull redis@sha256:dc38d2b07f11f0d809f43ac0e1537986e1a9f58c5441c5823307fec0e16ed3ad
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17516376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93b11d851e7b1f26ff58237a8dd3b1e23732ba555e16c58dbb8dae241eb13649`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:50 GMT
ADD file:98a0f92574b6a8592a131ccb07c4f516694e053d610a1701fde2d5e7c65c2175 in / 
# Fri, 08 Mar 2019 03:35:50 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 10:14:05 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 10:14:07 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 20 Mar 2019 11:45:54 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 20 Mar 2019 11:45:54 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 20 Mar 2019 11:45:54 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 20 Mar 2019 11:46:56 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 20 Mar 2019 11:46:57 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 11:46:57 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 11:46:57 GMT
WORKDIR /data
# Wed, 20 Mar 2019 11:46:57 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 20 Mar 2019 11:46:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 11:46:58 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 11:46:58 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:a4c1e43a7431a562d92c5eb6e09e96b4731a474af51cad1c46e2d305ede29005`  
		Last Modified: Fri, 08 Mar 2019 03:36:34 GMT  
		Size: 2.7 MB (2749355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed2f32c3fa1b6c04a79ca05078e80927d1f1819bd561ce4b1ccb8a2f149d8356`  
		Last Modified: Fri, 08 Mar 2019 10:16:17 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee3d69b92603c14c56cbff7eb925f16b36a83bda909ae7a9f75374d27186e0a`  
		Last Modified: Fri, 08 Mar 2019 10:16:17 GMT  
		Size: 408.0 KB (408008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f074ac0a183b6715f4ee51334aeaf56afcb6f80cc1003e43f61f586b81f64c`  
		Last Modified: Wed, 20 Mar 2019 11:49:17 GMT  
		Size: 14.4 MB (14357248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69f5b3c600b3b6424beee72a744dbe8875146e3417fc5fa869e6a4ff9d1c1b53`  
		Last Modified: Wed, 20 Mar 2019 11:49:13 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d87e8ae131c80120ea8e88d6c7b8a923d35db131ba3a05c9aa4f7ddb6fc2eddd`  
		Last Modified: Wed, 20 Mar 2019 11:49:13 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:d2a4d55706d9b95d88003ae29c7106151416b6792343d3f086a9af943088d323
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 MB (19030351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:665471668212bb192c6e2154a34a621c224dd4773df3790e0bb3d0961b4e8629`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:33 GMT
ADD file:6dfaec9befa64397af571d1da2e766c694148f7a025b9411404a924d3de64bd3 in / 
# Fri, 08 Mar 2019 03:37:36 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 06:21:57 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 06:22:04 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 20 Mar 2019 09:16:25 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 20 Mar 2019 09:16:27 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 20 Mar 2019 09:16:30 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 20 Mar 2019 09:17:19 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 20 Mar 2019 09:17:25 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 09:17:30 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 09:17:34 GMT
WORKDIR /data
# Wed, 20 Mar 2019 09:17:35 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 20 Mar 2019 09:17:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 09:17:39 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 09:17:43 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:611bce2a4fa9a0e18025e088381d26f1dda2e1c02160c4d24a2720f9dbca9eaf`  
		Last Modified: Fri, 08 Mar 2019 03:38:31 GMT  
		Size: 2.8 MB (2778638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25449434ca2fa6ccc1883d472a26a792336aa1e27c229839f973d583c91a00fe`  
		Last Modified: Fri, 08 Mar 2019 06:27:10 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec248071ec2459c6ae88a0190e574312e021aeb70c18e5058f9878489c0e00b`  
		Last Modified: Fri, 08 Mar 2019 06:27:10 GMT  
		Size: 410.3 KB (410336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0016760e111e977ec727147e27d17d658917d04a95c03f0b6bf695994918683e`  
		Last Modified: Wed, 20 Mar 2019 09:22:21 GMT  
		Size: 15.8 MB (15839543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab407244d63bc1913344c4cd1bf0e82c68fe276670aec144dd83130f7bb83a7e`  
		Last Modified: Wed, 20 Mar 2019 09:22:18 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9124533ac2b510ac109a3516d320d246ba3490f61445d468ff9a1678ee058e5`  
		Last Modified: Wed, 20 Mar 2019 09:22:18 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine` - linux; s390x

```console
$ docker pull redis@sha256:16b1ed14f6e57bb89819ad6e6d913b5893e3b45dc421684e29afc7e5bff8a85e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.3 MB (18258462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e4ef67768dbf5548b60a7de042797b2e7dc2df494d6b08fe85a1fd715f1c0dd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 05:35:49 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 05:35:50 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 20 Mar 2019 12:37:01 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 20 Mar 2019 12:37:02 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 20 Mar 2019 12:37:03 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 20 Mar 2019 12:38:25 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 20 Mar 2019 12:38:27 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 12:38:28 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 12:38:28 GMT
WORKDIR /data
# Wed, 20 Mar 2019 12:38:29 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 20 Mar 2019 12:38:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 12:38:30 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 12:38:30 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:668dbb1da38bf6b755c53ced346a702cc89f825fae11e7c280c4937d86c6052f`  
		Last Modified: Fri, 08 Mar 2019 05:37:28 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a9bb4447ea68836f7469bf09fbdaf11252c6449487839e8864900ba4b92d03f`  
		Last Modified: Fri, 08 Mar 2019 05:37:28 GMT  
		Size: 407.9 KB (407852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a395be24428d9ff014ce30020e4a9ea7df74473a39108d7cb1206903e6daf0d8`  
		Last Modified: Wed, 20 Mar 2019 12:42:55 GMT  
		Size: 15.3 MB (15307542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e4cc4c9a48c0e0315f79df913857436d858b63b72688053a7ac19e70a3e6d1`  
		Last Modified: Wed, 20 Mar 2019 12:42:49 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:094178e893cdad85f9261d0fb769bdec1d3b7caf8d638760286efd4aba37199e`  
		Last Modified: Wed, 20 Mar 2019 12:42:49 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:alpine3.9`

```console
$ docker pull redis@sha256:a228f66132cd46a53fd818443c42458af5d6a3e1231df25184304b8e732e51c4
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

### `redis:alpine3.9` - linux; arm variant v6

```console
$ docker pull redis@sha256:a2c37214f97ebaf38119e42c4ab4ea655417c2f26e771376eeb7e311cd97ad9e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17526688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec98e4f1b75174ffd9f4763b8a512a0b3bbbefc3d96e0de5aa2ae38b87dd817f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 05:38:42 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 05:38:44 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 20 Mar 2019 07:57:10 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 20 Mar 2019 07:57:10 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 20 Mar 2019 07:57:11 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 20 Mar 2019 07:57:53 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 20 Mar 2019 07:57:54 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 07:57:55 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 07:57:55 GMT
WORKDIR /data
# Wed, 20 Mar 2019 07:57:56 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 20 Mar 2019 07:57:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 07:57:56 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 07:57:57 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ba0c1f7e5a3f3ed61244f636c2d0a994092d082d619f402abd66e2d9a112e6c`  
		Last Modified: Fri, 08 Mar 2019 05:40:31 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b8b2a00ff26d6561bdd7a5a984e982700a4875d6c405669665f4a1690ca6eb`  
		Last Modified: Fri, 08 Mar 2019 05:40:32 GMT  
		Size: 405.3 KB (405282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a115841c3f8e41c6ca59a2fdd0404998e1bace108bc2ceb0ef82ab3569d0a0`  
		Last Modified: Wed, 20 Mar 2019 07:58:51 GMT  
		Size: 14.6 MB (14578904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84e7a60b829aedfc0be0f0bdf16041a82138ec09a6b0728ff2da55b28a8a6c31`  
		Last Modified: Wed, 20 Mar 2019 07:58:46 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:491f7dcd2376a670c686cb298ef7d8663748a067010967927ae1058edd6246d2`  
		Last Modified: Wed, 20 Mar 2019 07:58:46 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine3.9` - linux; arm variant v7

```console
$ docker pull redis@sha256:4d6f51ca9a49e92f66c3fe81810b227e562a46b0442cba330cefdee29b381af1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17060140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:989e3bcc9490b75b5c469ba345864b506a3000defecbdb6a60d02fd34e0149f8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:52 GMT
ADD file:e9ae09c8f3973b62bf7e10dd8b9251e50f5479c0d8d1644f632f3886e02c7323 in / 
# Fri, 08 Mar 2019 03:35:52 GMT
CMD ["/bin/sh"]
# Tue, 12 Mar 2019 12:38:36 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Tue, 12 Mar 2019 12:38:38 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 20 Mar 2019 12:07:27 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 20 Mar 2019 12:07:27 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 20 Mar 2019 12:07:28 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 20 Mar 2019 12:08:17 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 20 Mar 2019 12:08:18 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 12:08:19 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 12:08:19 GMT
WORKDIR /data
# Wed, 20 Mar 2019 12:08:20 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 20 Mar 2019 12:08:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 12:08:21 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 12:08:21 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d8d287cbc5740a5d49f37493eecadafc220fee4fd570329023344cad978c4272`  
		Last Modified: Tue, 05 Mar 2019 08:53:06 GMT  
		Size: 2.3 MB (2348580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:148b4b0bab4816ad532c54415c960ce71044f82bad2883bee5f7a92549976b00`  
		Last Modified: Tue, 12 Mar 2019 12:40:38 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae65ef83e1480c00e4c632b5c256740f5286e126c96c2d10771be08b010dff0f`  
		Last Modified: Tue, 12 Mar 2019 12:40:38 GMT  
		Size: 398.6 KB (398574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff642bc2c3f25f805467760129100bd92c3a67b1b0807613763168e300b4f109`  
		Last Modified: Wed, 20 Mar 2019 12:10:51 GMT  
		Size: 14.3 MB (14311155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:926413d8cc4fe3fc883b6fbad81f92a8f268d66e52ad30f5d48c219a0a3d1d31`  
		Last Modified: Wed, 20 Mar 2019 12:10:46 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f858f1590be7b6693d6e1418032ad9d4d20f6240c28da9bf954a75dad5609f2`  
		Last Modified: Wed, 20 Mar 2019 12:10:47 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine3.9` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:71abf39e582ccd9ab7e7a8d59d37131cbf3700856798f618cb1cd7f33aaebb6e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.0 MB (18015822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f41d42397e6788ff96c44cfa886907c2c026d733b1fbf83214d01f638adb439f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 11:43:54 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 11:43:57 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 20 Mar 2019 10:17:23 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 20 Mar 2019 10:17:23 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 20 Mar 2019 10:17:24 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 20 Mar 2019 10:19:40 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 20 Mar 2019 10:19:42 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 10:19:43 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 10:19:43 GMT
WORKDIR /data
# Wed, 20 Mar 2019 10:19:44 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 20 Mar 2019 10:19:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 10:19:45 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 10:19:46 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9399e6d0245cf7181b0da72bf72a7673a2cbd03df8e8d269a7f581072fe06d06`  
		Last Modified: Fri, 08 Mar 2019 11:48:54 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:110f2f1a6525b6f6416d05654def28abb3f85447e8520aa1d50e95e5f74f8e48`  
		Last Modified: Fri, 08 Mar 2019 11:48:54 GMT  
		Size: 405.2 KB (405226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aedb298b99d10399b870bafb275ee8052cacaeb192c7dbc5e08476b9a1a2f808`  
		Last Modified: Wed, 20 Mar 2019 10:24:31 GMT  
		Size: 14.9 MB (14920888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69e150556614bd0167cf369c26b300dc39c0ff6c12e384ae2cde120b77509ac9`  
		Last Modified: Wed, 20 Mar 2019 10:24:25 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf7db64c4ce32cfa7cc12a5c7725042561ea9b70177d54de49b552b930388f3f`  
		Last Modified: Wed, 20 Mar 2019 10:24:26 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine3.9` - linux; 386

```console
$ docker pull redis@sha256:dc38d2b07f11f0d809f43ac0e1537986e1a9f58c5441c5823307fec0e16ed3ad
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17516376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93b11d851e7b1f26ff58237a8dd3b1e23732ba555e16c58dbb8dae241eb13649`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:50 GMT
ADD file:98a0f92574b6a8592a131ccb07c4f516694e053d610a1701fde2d5e7c65c2175 in / 
# Fri, 08 Mar 2019 03:35:50 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 10:14:05 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 10:14:07 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 20 Mar 2019 11:45:54 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 20 Mar 2019 11:45:54 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 20 Mar 2019 11:45:54 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 20 Mar 2019 11:46:56 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 20 Mar 2019 11:46:57 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 11:46:57 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 11:46:57 GMT
WORKDIR /data
# Wed, 20 Mar 2019 11:46:57 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 20 Mar 2019 11:46:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 11:46:58 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 11:46:58 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:a4c1e43a7431a562d92c5eb6e09e96b4731a474af51cad1c46e2d305ede29005`  
		Last Modified: Fri, 08 Mar 2019 03:36:34 GMT  
		Size: 2.7 MB (2749355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed2f32c3fa1b6c04a79ca05078e80927d1f1819bd561ce4b1ccb8a2f149d8356`  
		Last Modified: Fri, 08 Mar 2019 10:16:17 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee3d69b92603c14c56cbff7eb925f16b36a83bda909ae7a9f75374d27186e0a`  
		Last Modified: Fri, 08 Mar 2019 10:16:17 GMT  
		Size: 408.0 KB (408008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f074ac0a183b6715f4ee51334aeaf56afcb6f80cc1003e43f61f586b81f64c`  
		Last Modified: Wed, 20 Mar 2019 11:49:17 GMT  
		Size: 14.4 MB (14357248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69f5b3c600b3b6424beee72a744dbe8875146e3417fc5fa869e6a4ff9d1c1b53`  
		Last Modified: Wed, 20 Mar 2019 11:49:13 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d87e8ae131c80120ea8e88d6c7b8a923d35db131ba3a05c9aa4f7ddb6fc2eddd`  
		Last Modified: Wed, 20 Mar 2019 11:49:13 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine3.9` - linux; ppc64le

```console
$ docker pull redis@sha256:d2a4d55706d9b95d88003ae29c7106151416b6792343d3f086a9af943088d323
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 MB (19030351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:665471668212bb192c6e2154a34a621c224dd4773df3790e0bb3d0961b4e8629`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:33 GMT
ADD file:6dfaec9befa64397af571d1da2e766c694148f7a025b9411404a924d3de64bd3 in / 
# Fri, 08 Mar 2019 03:37:36 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 06:21:57 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 06:22:04 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 20 Mar 2019 09:16:25 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 20 Mar 2019 09:16:27 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 20 Mar 2019 09:16:30 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 20 Mar 2019 09:17:19 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 20 Mar 2019 09:17:25 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 09:17:30 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 09:17:34 GMT
WORKDIR /data
# Wed, 20 Mar 2019 09:17:35 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 20 Mar 2019 09:17:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 09:17:39 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 09:17:43 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:611bce2a4fa9a0e18025e088381d26f1dda2e1c02160c4d24a2720f9dbca9eaf`  
		Last Modified: Fri, 08 Mar 2019 03:38:31 GMT  
		Size: 2.8 MB (2778638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25449434ca2fa6ccc1883d472a26a792336aa1e27c229839f973d583c91a00fe`  
		Last Modified: Fri, 08 Mar 2019 06:27:10 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec248071ec2459c6ae88a0190e574312e021aeb70c18e5058f9878489c0e00b`  
		Last Modified: Fri, 08 Mar 2019 06:27:10 GMT  
		Size: 410.3 KB (410336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0016760e111e977ec727147e27d17d658917d04a95c03f0b6bf695994918683e`  
		Last Modified: Wed, 20 Mar 2019 09:22:21 GMT  
		Size: 15.8 MB (15839543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab407244d63bc1913344c4cd1bf0e82c68fe276670aec144dd83130f7bb83a7e`  
		Last Modified: Wed, 20 Mar 2019 09:22:18 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9124533ac2b510ac109a3516d320d246ba3490f61445d468ff9a1678ee058e5`  
		Last Modified: Wed, 20 Mar 2019 09:22:18 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine3.9` - linux; s390x

```console
$ docker pull redis@sha256:16b1ed14f6e57bb89819ad6e6d913b5893e3b45dc421684e29afc7e5bff8a85e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.3 MB (18258462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e4ef67768dbf5548b60a7de042797b2e7dc2df494d6b08fe85a1fd715f1c0dd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 05:35:49 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 05:35:50 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 20 Mar 2019 12:37:01 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 20 Mar 2019 12:37:02 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 20 Mar 2019 12:37:03 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 20 Mar 2019 12:38:25 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 20 Mar 2019 12:38:27 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 12:38:28 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 12:38:28 GMT
WORKDIR /data
# Wed, 20 Mar 2019 12:38:29 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 20 Mar 2019 12:38:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 12:38:30 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 12:38:30 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:668dbb1da38bf6b755c53ced346a702cc89f825fae11e7c280c4937d86c6052f`  
		Last Modified: Fri, 08 Mar 2019 05:37:28 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a9bb4447ea68836f7469bf09fbdaf11252c6449487839e8864900ba4b92d03f`  
		Last Modified: Fri, 08 Mar 2019 05:37:28 GMT  
		Size: 407.9 KB (407852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a395be24428d9ff014ce30020e4a9ea7df74473a39108d7cb1206903e6daf0d8`  
		Last Modified: Wed, 20 Mar 2019 12:42:55 GMT  
		Size: 15.3 MB (15307542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e4cc4c9a48c0e0315f79df913857436d858b63b72688053a7ac19e70a3e6d1`  
		Last Modified: Wed, 20 Mar 2019 12:42:49 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:094178e893cdad85f9261d0fb769bdec1d3b7caf8d638760286efd4aba37199e`  
		Last Modified: Wed, 20 Mar 2019 12:42:49 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:latest`

```console
$ docker pull redis@sha256:668d60a5e0361919872f84cd62290c67a3a714302b307f4f9380d4dd8444c9b0
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
$ docker pull redis@sha256:478392fbb4f132b36b8ead3435087553ee7e6f0395b3d64987ae195268d13493
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35222046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a55fbf438dfd878424c402e365ef3d80c634f07d0f5832193880ee1b95626e4e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:47:35 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 00:47:35 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 00:47:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 00:47:51 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 27 Mar 2019 00:47:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 27 Mar 2019 00:47:51 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 27 Mar 2019 00:48:58 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 00:48:58 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 00:48:59 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 00:48:59 GMT
WORKDIR /data
# Wed, 27 Mar 2019 00:48:59 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 00:48:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 00:48:59 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 00:49:00 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cde8019a4b43a4c7fb70ef830196d12a8ba0d031add8e93c3853685b60146393`  
		Last Modified: Wed, 27 Mar 2019 00:53:22 GMT  
		Size: 1.7 KB (1735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a473b37fb2921176dcdeb10cecd0171a8b2ef20ea51fcbf330a8ccd9c7efb3`  
		Last Modified: Wed, 27 Mar 2019 00:53:23 GMT  
		Size: 941.4 KB (941376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6fe0dfbb7e3e8e6828b7e292526ac875639aaeeb98ad2f4bb89b9cedaa1645d`  
		Last Modified: Wed, 27 Mar 2019 00:53:25 GMT  
		Size: 11.8 MB (11782371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39c8f5ba1240221350872c51b65a0bd1944a5dcc735fddbe132ff565afcba704`  
		Last Modified: Wed, 27 Mar 2019 00:53:23 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfbdd870cf756e661412595b81f9b819efc6c16a4c8f19858091d873e72588ed`  
		Last Modified: Wed, 27 Mar 2019 00:53:23 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; arm variant v5

```console
$ docker pull redis@sha256:fd9b0178983e7fb5f74ec0545e973ce6a0c77211d2f24a26a901448c91f2ebf8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.5 MB (33540111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5987ee1a68fd50958b0fa5af1b27242e5ced433d0152ff45ce96ce7b71f01939`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:57 GMT
ADD file:7a35d0949b1b3e7394102d060feb38dba6645340f0c24c11c41eab11995474e2 in / 
# Wed, 27 Mar 2019 08:53:58 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 11:26:24 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 11:26:25 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 11:26:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 11:26:51 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 27 Mar 2019 11:26:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 27 Mar 2019 11:26:52 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 27 Mar 2019 11:27:54 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 11:27:56 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 11:27:56 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 11:27:57 GMT
WORKDIR /data
# Wed, 27 Mar 2019 11:27:57 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 11:27:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 11:27:58 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 11:27:58 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:2e028234e3987a188a306c264af3c27abc8240fc8e19373e1c5adc01b31e6176`  
		Last Modified: Wed, 27 Mar 2019 08:59:38 GMT  
		Size: 21.2 MB (21160663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22282ee903e4c1d6bf8a2d2a6d97abed822566f7c086113bc216da0e19f98481`  
		Last Modified: Wed, 27 Mar 2019 11:29:19 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e500ce3d68f7530cd30cab9d55a054fab93622078e8a8462c3a27c37a54a698`  
		Last Modified: Wed, 27 Mar 2019 11:29:19 GMT  
		Size: 931.2 KB (931223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c08071d71257763604ab303f761b64c80e085befe9fce6a7686287c5a0228792`  
		Last Modified: Wed, 27 Mar 2019 11:29:23 GMT  
		Size: 11.4 MB (11445937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:869fc327634f84645c936f77e060d26bbcc40ecfc718845e6ff9ac55bc50531e`  
		Last Modified: Wed, 27 Mar 2019 11:29:19 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6abbd648b20d3e9a0b2ce67bd883a649791aefc3b29ac104b1bb164d192ffa82`  
		Last Modified: Wed, 27 Mar 2019 11:29:19 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; arm variant v7

```console
$ docker pull redis@sha256:de55867d7acbd41008419d62298446538cb426e95ca533ce4c6d71e582c6ce8f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.3 MB (31339743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f2f791562c1cda7eb29471329caa81ac83f70e81f04a40a95ac15b060009601`
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
# Wed, 20 Mar 2019 12:06:11 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 20 Mar 2019 12:06:11 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 20 Mar 2019 12:06:12 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 20 Mar 2019 12:07:09 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 20 Mar 2019 12:07:11 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 12:07:11 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 12:07:11 GMT
WORKDIR /data
# Wed, 20 Mar 2019 12:07:12 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 20 Mar 2019 12:07:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 12:07:13 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 12:07:14 GMT
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
	-	`sha256:c9cefe4f315f74160d67281bf3e651633dcbed6623cc9a30bd2ec9ade858dda1`  
		Last Modified: Wed, 20 Mar 2019 12:10:23 GMT  
		Size: 11.1 MB (11139138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c6dec50134944fada3d15997b282673f570a7d6c892241753d2ae0c6aacbac9`  
		Last Modified: Wed, 20 Mar 2019 12:10:20 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f203757c40c7635cc1a3a75f65351f0bf0e0efdce6576e1e03fc098edb977b1e`  
		Last Modified: Wed, 20 Mar 2019 12:10:20 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:5b00bc77e83fbff281dbe645c793e24b5005cd1473c85ebc9bd09918961be6e8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36947719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f89f9d3724eca7e4f8de9b790db14ec94d944b68bbc0e9796bced5c95475cd56`
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
# Wed, 20 Mar 2019 10:13:39 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 20 Mar 2019 10:13:40 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 20 Mar 2019 10:13:41 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 20 Mar 2019 10:16:57 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 20 Mar 2019 10:16:59 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 10:17:00 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 10:17:01 GMT
WORKDIR /data
# Wed, 20 Mar 2019 10:17:02 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 20 Mar 2019 10:17:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 10:17:03 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 10:17:05 GMT
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
	-	`sha256:7679aeb9f85a844dfc4fa35a0f9c0f3f1771ec7113c07958ad30bef39326b450`  
		Last Modified: Wed, 20 Mar 2019 10:24:06 GMT  
		Size: 15.7 MB (15686985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee00b5aaa655087a0d655ccd07944d52138911d8907ede7e379a3a3decf38930`  
		Last Modified: Wed, 20 Mar 2019 10:23:59 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93f868fec2e63aeaef944edb910e597985634c6f8c7afbd919c1baae2e55f5b4`  
		Last Modified: Wed, 20 Mar 2019 10:24:00 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; 386

```console
$ docker pull redis@sha256:6e57e9543dbe89377b9909d28f5e015aa31318647c6f82fe0c71224e5c8d69a1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35237305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f12efbbcdc4022fdb35f0639a348a3f89e0d9e6fc3bc339ecd2a689e82b99e9d`
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
# Wed, 20 Mar 2019 11:44:40 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 20 Mar 2019 11:44:40 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 20 Mar 2019 11:44:40 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 20 Mar 2019 11:45:47 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 20 Mar 2019 11:45:48 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 11:45:48 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 11:45:49 GMT
WORKDIR /data
# Wed, 20 Mar 2019 11:45:49 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 20 Mar 2019 11:45:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 11:45:49 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 11:45:49 GMT
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
	-	`sha256:573066ab191147533112e67e028f470da80f9b3b09a6772354dbe459c5bc555d`  
		Last Modified: Wed, 20 Mar 2019 11:49:06 GMT  
		Size: 11.2 MB (11189248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14e5410e183228234f2d672e125def3e58594daeab4a79da9705adcb58f73ae2`  
		Last Modified: Wed, 20 Mar 2019 11:49:03 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2defcaa16eb55ca59ebec9e74a6c28b2c0795608ccab0a74d22473a62c642e17`  
		Last Modified: Wed, 20 Mar 2019 11:49:03 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; ppc64le

```console
$ docker pull redis@sha256:78b34d526155f60c59915d5e37242da507843e8e5196a3e364145b1c0a26fdaf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.6 MB (35637695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1b7285fef3d0eac504fcb80dd75012303f72e1e7615394c7effa50ce0e5bb25`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 10:05:16 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 10:05:19 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 10:06:39 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 10:06:41 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 27 Mar 2019 10:06:44 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 27 Mar 2019 10:06:46 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 27 Mar 2019 10:08:44 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 10:08:50 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 10:08:52 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 10:08:55 GMT
WORKDIR /data
# Wed, 27 Mar 2019 10:08:56 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 10:09:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 10:09:05 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 10:09:09 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:47457ee2fac27696752b903854c4e4621e3481edc7a34b727f45b4c355de7976`  
		Last Modified: Wed, 27 Mar 2019 08:32:50 GMT  
		Size: 22.8 MB (22751385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819a2a3a3ce9b3f41a4d25dea1025d16f8da4ae9f0c26fc2f7676f4d6e20bf74`  
		Last Modified: Wed, 27 Mar 2019 10:11:42 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c2e912949846d9432577f43246c2dcd56037117a714ac374e7d5778e93748ef`  
		Last Modified: Wed, 27 Mar 2019 10:11:43 GMT  
		Size: 909.8 KB (909818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a596f9258b7863e930b8bed166ac8131225480347d444b926f3ee4c4ff1e742d`  
		Last Modified: Wed, 27 Mar 2019 10:11:46 GMT  
		Size: 12.0 MB (11974197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95b245f45ebd0bc9bbe507016aa20ac3fc241417d776dff5c163aae809dd5044`  
		Last Modified: Wed, 27 Mar 2019 10:11:42 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e505d8d7410abc2c0dd126136c877ec907aa45ed746b9290f49b51fa3bd0219`  
		Last Modified: Wed, 27 Mar 2019 10:11:42 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; s390x

```console
$ docker pull redis@sha256:648cfcb034348b04058139643fa2087551d0bc11704cef29ee2b3d68825d19ba
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.5 MB (35512456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b543f23ad60b250b011388278a67bea31000d41473f3b0695be16401daab6e74`
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
# Wed, 20 Mar 2019 12:34:27 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 20 Mar 2019 12:34:28 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 20 Mar 2019 12:34:28 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 20 Mar 2019 12:36:41 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 20 Mar 2019 12:36:43 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 12:36:43 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 12:36:44 GMT
WORKDIR /data
# Wed, 20 Mar 2019 12:36:45 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 20 Mar 2019 12:36:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 12:36:45 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 12:36:46 GMT
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
	-	`sha256:20a96b1b951937cd266398bfb674a2b2e899b7e22f0c1af913fa60fd651f3322`  
		Last Modified: Wed, 20 Mar 2019 12:42:29 GMT  
		Size: 12.2 MB (12238025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9feb4386bd929c0319bc63c55b1a1c9a58d004772043de1407da08fed7dc25e`  
		Last Modified: Wed, 20 Mar 2019 12:42:24 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ea97a055b5db2e066b6bd2233524d33b3c03c98dc3964d31f34b0e4396a1eb5`  
		Last Modified: Wed, 20 Mar 2019 12:42:24 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:stretch`

```console
$ docker pull redis@sha256:700869cf656bb5ed0d5c3ba3bf3b12c997f85a31e2b85af35ff93ed745c9b8c7
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
$ docker pull redis@sha256:478392fbb4f132b36b8ead3435087553ee7e6f0395b3d64987ae195268d13493
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35222046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a55fbf438dfd878424c402e365ef3d80c634f07d0f5832193880ee1b95626e4e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:47:35 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 00:47:35 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 00:47:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 00:47:51 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 27 Mar 2019 00:47:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 27 Mar 2019 00:47:51 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 27 Mar 2019 00:48:58 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 00:48:58 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 00:48:59 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 00:48:59 GMT
WORKDIR /data
# Wed, 27 Mar 2019 00:48:59 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 00:48:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 00:48:59 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 00:49:00 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cde8019a4b43a4c7fb70ef830196d12a8ba0d031add8e93c3853685b60146393`  
		Last Modified: Wed, 27 Mar 2019 00:53:22 GMT  
		Size: 1.7 KB (1735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a473b37fb2921176dcdeb10cecd0171a8b2ef20ea51fcbf330a8ccd9c7efb3`  
		Last Modified: Wed, 27 Mar 2019 00:53:23 GMT  
		Size: 941.4 KB (941376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6fe0dfbb7e3e8e6828b7e292526ac875639aaeeb98ad2f4bb89b9cedaa1645d`  
		Last Modified: Wed, 27 Mar 2019 00:53:25 GMT  
		Size: 11.8 MB (11782371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39c8f5ba1240221350872c51b65a0bd1944a5dcc735fddbe132ff565afcba704`  
		Last Modified: Wed, 27 Mar 2019 00:53:23 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfbdd870cf756e661412595b81f9b819efc6c16a4c8f19858091d873e72588ed`  
		Last Modified: Wed, 27 Mar 2019 00:53:23 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:stretch` - linux; arm variant v5

```console
$ docker pull redis@sha256:fd9b0178983e7fb5f74ec0545e973ce6a0c77211d2f24a26a901448c91f2ebf8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.5 MB (33540111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5987ee1a68fd50958b0fa5af1b27242e5ced433d0152ff45ce96ce7b71f01939`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:57 GMT
ADD file:7a35d0949b1b3e7394102d060feb38dba6645340f0c24c11c41eab11995474e2 in / 
# Wed, 27 Mar 2019 08:53:58 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 11:26:24 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 11:26:25 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 11:26:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 11:26:51 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 27 Mar 2019 11:26:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 27 Mar 2019 11:26:52 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 27 Mar 2019 11:27:54 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 11:27:56 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 11:27:56 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 11:27:57 GMT
WORKDIR /data
# Wed, 27 Mar 2019 11:27:57 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 11:27:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 11:27:58 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 11:27:58 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:2e028234e3987a188a306c264af3c27abc8240fc8e19373e1c5adc01b31e6176`  
		Last Modified: Wed, 27 Mar 2019 08:59:38 GMT  
		Size: 21.2 MB (21160663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22282ee903e4c1d6bf8a2d2a6d97abed822566f7c086113bc216da0e19f98481`  
		Last Modified: Wed, 27 Mar 2019 11:29:19 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e500ce3d68f7530cd30cab9d55a054fab93622078e8a8462c3a27c37a54a698`  
		Last Modified: Wed, 27 Mar 2019 11:29:19 GMT  
		Size: 931.2 KB (931223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c08071d71257763604ab303f761b64c80e085befe9fce6a7686287c5a0228792`  
		Last Modified: Wed, 27 Mar 2019 11:29:23 GMT  
		Size: 11.4 MB (11445937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:869fc327634f84645c936f77e060d26bbcc40ecfc718845e6ff9ac55bc50531e`  
		Last Modified: Wed, 27 Mar 2019 11:29:19 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6abbd648b20d3e9a0b2ce67bd883a649791aefc3b29ac104b1bb164d192ffa82`  
		Last Modified: Wed, 27 Mar 2019 11:29:19 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:stretch` - linux; arm variant v7

```console
$ docker pull redis@sha256:de55867d7acbd41008419d62298446538cb426e95ca533ce4c6d71e582c6ce8f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.3 MB (31339743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f2f791562c1cda7eb29471329caa81ac83f70e81f04a40a95ac15b060009601`
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
# Wed, 20 Mar 2019 12:06:11 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 20 Mar 2019 12:06:11 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 20 Mar 2019 12:06:12 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 20 Mar 2019 12:07:09 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 20 Mar 2019 12:07:11 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 12:07:11 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 12:07:11 GMT
WORKDIR /data
# Wed, 20 Mar 2019 12:07:12 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 20 Mar 2019 12:07:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 12:07:13 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 12:07:14 GMT
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
	-	`sha256:c9cefe4f315f74160d67281bf3e651633dcbed6623cc9a30bd2ec9ade858dda1`  
		Last Modified: Wed, 20 Mar 2019 12:10:23 GMT  
		Size: 11.1 MB (11139138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c6dec50134944fada3d15997b282673f570a7d6c892241753d2ae0c6aacbac9`  
		Last Modified: Wed, 20 Mar 2019 12:10:20 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f203757c40c7635cc1a3a75f65351f0bf0e0efdce6576e1e03fc098edb977b1e`  
		Last Modified: Wed, 20 Mar 2019 12:10:20 GMT  
		Size: 419.0 B  
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
$ docker pull redis@sha256:6e57e9543dbe89377b9909d28f5e015aa31318647c6f82fe0c71224e5c8d69a1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35237305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f12efbbcdc4022fdb35f0639a348a3f89e0d9e6fc3bc339ecd2a689e82b99e9d`
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
# Wed, 20 Mar 2019 11:44:40 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 20 Mar 2019 11:44:40 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 20 Mar 2019 11:44:40 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 20 Mar 2019 11:45:47 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 20 Mar 2019 11:45:48 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 11:45:48 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 11:45:49 GMT
WORKDIR /data
# Wed, 20 Mar 2019 11:45:49 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 20 Mar 2019 11:45:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 11:45:49 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 11:45:49 GMT
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
	-	`sha256:573066ab191147533112e67e028f470da80f9b3b09a6772354dbe459c5bc555d`  
		Last Modified: Wed, 20 Mar 2019 11:49:06 GMT  
		Size: 11.2 MB (11189248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14e5410e183228234f2d672e125def3e58594daeab4a79da9705adcb58f73ae2`  
		Last Modified: Wed, 20 Mar 2019 11:49:03 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2defcaa16eb55ca59ebec9e74a6c28b2c0795608ccab0a74d22473a62c642e17`  
		Last Modified: Wed, 20 Mar 2019 11:49:03 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:stretch` - linux; ppc64le

```console
$ docker pull redis@sha256:78b34d526155f60c59915d5e37242da507843e8e5196a3e364145b1c0a26fdaf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.6 MB (35637695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1b7285fef3d0eac504fcb80dd75012303f72e1e7615394c7effa50ce0e5bb25`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 10:05:16 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Mar 2019 10:05:19 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 10:06:39 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Mar 2019 10:06:41 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 27 Mar 2019 10:06:44 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 27 Mar 2019 10:06:46 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 27 Mar 2019 10:08:44 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 10:08:50 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Mar 2019 10:08:52 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 10:08:55 GMT
WORKDIR /data
# Wed, 27 Mar 2019 10:08:56 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 27 Mar 2019 10:09:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 10:09:05 GMT
EXPOSE 6379
# Wed, 27 Mar 2019 10:09:09 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:47457ee2fac27696752b903854c4e4621e3481edc7a34b727f45b4c355de7976`  
		Last Modified: Wed, 27 Mar 2019 08:32:50 GMT  
		Size: 22.8 MB (22751385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819a2a3a3ce9b3f41a4d25dea1025d16f8da4ae9f0c26fc2f7676f4d6e20bf74`  
		Last Modified: Wed, 27 Mar 2019 10:11:42 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c2e912949846d9432577f43246c2dcd56037117a714ac374e7d5778e93748ef`  
		Last Modified: Wed, 27 Mar 2019 10:11:43 GMT  
		Size: 909.8 KB (909818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a596f9258b7863e930b8bed166ac8131225480347d444b926f3ee4c4ff1e742d`  
		Last Modified: Wed, 27 Mar 2019 10:11:46 GMT  
		Size: 12.0 MB (11974197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95b245f45ebd0bc9bbe507016aa20ac3fc241417d776dff5c163aae809dd5044`  
		Last Modified: Wed, 27 Mar 2019 10:11:42 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e505d8d7410abc2c0dd126136c877ec907aa45ed746b9290f49b51fa3bd0219`  
		Last Modified: Wed, 27 Mar 2019 10:11:42 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:stretch` - linux; s390x

```console
$ docker pull redis@sha256:648cfcb034348b04058139643fa2087551d0bc11704cef29ee2b3d68825d19ba
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.5 MB (35512456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b543f23ad60b250b011388278a67bea31000d41473f3b0695be16401daab6e74`
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
# Wed, 20 Mar 2019 12:34:27 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 20 Mar 2019 12:34:28 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 20 Mar 2019 12:34:28 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 20 Mar 2019 12:36:41 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 20 Mar 2019 12:36:43 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Mar 2019 12:36:43 GMT
VOLUME [/data]
# Wed, 20 Mar 2019 12:36:44 GMT
WORKDIR /data
# Wed, 20 Mar 2019 12:36:45 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 20 Mar 2019 12:36:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 12:36:45 GMT
EXPOSE 6379
# Wed, 20 Mar 2019 12:36:46 GMT
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
	-	`sha256:20a96b1b951937cd266398bfb674a2b2e899b7e22f0c1af913fa60fd651f3322`  
		Last Modified: Wed, 20 Mar 2019 12:42:29 GMT  
		Size: 12.2 MB (12238025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9feb4386bd929c0319bc63c55b1a1c9a58d004772043de1407da08fed7dc25e`  
		Last Modified: Wed, 20 Mar 2019 12:42:24 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ea97a055b5db2e066b6bd2233524d33b3c03c98dc3964d31f34b0e4396a1eb5`  
		Last Modified: Wed, 20 Mar 2019 12:42:24 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
