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
-	[`redis:5.0-rc`](#redis50-rc)
-	[`redis:5.0-rc3`](#redis50-rc3)
-	[`redis:5.0-rc-32bit`](#redis50-rc-32bit)
-	[`redis:5.0-rc3-32bit`](#redis50-rc3-32bit)
-	[`redis:5.0-rc3-alpine`](#redis50-rc3-alpine)
-	[`redis:5.0-rc-alpine`](#redis50-rc-alpine)
-	[`redis:alpine`](#redisalpine)
-	[`redis:latest`](#redislatest)

## `redis:3`

```console
$ docker pull redis@sha256:e0e59216ba5e67a78d1d20c4b17b98dd14cc49bfc964d8eadb2976590daf25b2
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

### `redis:3` - linux; amd64

```console
$ docker pull redis@sha256:7d5d76e35b23a6907cf5877fd348ffea7212bb8bce56b2510e58d216462b98e2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.4 MB (29401980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c11c63ea578a9290f78dc2d06d667de875bf4ff69a4d8e76f78858c848adebb6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 26 Jun 2018 21:25:25 GMT
ADD file:28fbc9fd012eef72780d1c75fc2b0969d13f0138f735035335ab4b76793da2da in / 
# Tue, 26 Jun 2018 21:25:25 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 01:15:28 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 01:15:28 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 01:15:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 01:15:50 GMT
ENV REDIS_VERSION=3.2.12
# Wed, 27 Jun 2018 01:15:50 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Wed, 27 Jun 2018 01:15:50 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Wed, 27 Jun 2018 01:16:27 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 01:16:28 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 01:16:28 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 01:16:29 GMT
WORKDIR /data
# Wed, 27 Jun 2018 01:16:29 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 27 Jun 2018 01:16:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 01:16:29 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 01:16:30 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:683abbb4ea60e108164f1d351e7bcf13daf45941137d800086447874df05f48e`  
		Last Modified: Tue, 26 Jun 2018 21:37:45 GMT  
		Size: 22.5 MB (22496975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:259238e792d86e23dab13fbcfcadf090333328ad9f80894544316437461f0d1b`  
		Last Modified: Wed, 27 Jun 2018 01:19:50 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78399601c709f0e252523e534db03152a1b3f017c9f7c756d68791ef07bc5d0b`  
		Last Modified: Wed, 27 Jun 2018 01:19:50 GMT  
		Size: 941.5 KB (941493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad87fc881000af83798fcd225eaa759431ab9ecaab8d24518b4b086d8995ac67`  
		Last Modified: Wed, 27 Jun 2018 01:19:52 GMT  
		Size: 6.0 MB (5961272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcc4c27dc39d5b2359145c2c0fb278f8cba9f01ea9956ad61e6dc20b0a0e0686`  
		Last Modified: Wed, 27 Jun 2018 01:19:49 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4034d155bb9959cfd07e07e1641fd9f420bb1cac29bced110a74dbe32221f83e`  
		Last Modified: Wed, 27 Jun 2018 01:19:49 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3` - linux; arm variant v5

```console
$ docker pull redis@sha256:c5cea95258c982239b266f073474c73ea8ac0913c3cefcab7e3b1d6387968d50
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.9 MB (27883033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ef00df24fe364ddcb4fd8ad20d9f30f4de44be93631c7ff2ddf99a6fb591b75`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Jun 2018 08:54:01 GMT
ADD file:f1e0d5c56a23a29918cb3b7691cee8f22620b4c54ee70a0dbb4b8151b2be3355 in / 
# Wed, 27 Jun 2018 08:54:02 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 11:10:45 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 11:10:46 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 11:11:07 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 11:11:07 GMT
ENV REDIS_VERSION=3.2.12
# Wed, 27 Jun 2018 11:11:07 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Wed, 27 Jun 2018 11:11:08 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Wed, 27 Jun 2018 11:11:44 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 11:11:45 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 11:11:45 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 11:11:45 GMT
WORKDIR /data
# Wed, 27 Jun 2018 11:11:46 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 27 Jun 2018 11:11:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 11:11:46 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 11:11:47 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:151bc45ca30d5401779cd71c1dd194a7e6f64f1214de3f4f025bc53daf823199`  
		Last Modified: Wed, 27 Jun 2018 09:03:17 GMT  
		Size: 21.2 MB (21177290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cad78a8c45448598f4df7ef055754e60f47534ed63db112af0065ac060c1a769`  
		Last Modified: Wed, 27 Jun 2018 11:12:56 GMT  
		Size: 1.7 KB (1730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a2318299a11dbd69da76cb547cf2a4343d94776bad7f52b516c31def158a9d`  
		Last Modified: Wed, 27 Jun 2018 11:12:57 GMT  
		Size: 931.3 KB (931255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d4668cb2d02be55e5f060652620a6013f6eff98f2d8094a176ede562001d156`  
		Last Modified: Wed, 27 Jun 2018 11:12:58 GMT  
		Size: 5.8 MB (5772222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0c58ff7a3f7df468971287b9e602738c39856e21107d147f05676d3ac46a774`  
		Last Modified: Wed, 27 Jun 2018 11:12:56 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac4a8886beab8802721d7636e8f6b3c1e93df87f8adeb8388885c15fd0a70e19`  
		Last Modified: Wed, 27 Jun 2018 11:12:56 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3` - linux; arm variant v7

```console
$ docker pull redis@sha256:3a11ae4477cc9e69dea488a1220fab197e38c1f6677e25480374f8916890a003
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.8 MB (25821994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f1b934a5bca0736748b36cf7ddf2c99715c4e0cdceb3dbf871f6b075726e016`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Jun 2018 12:03:51 GMT
ADD file:d05cf75761bffd94ce908a55d38fc4966c194aa14492730dfdc1e52c3ddd0892 in / 
# Wed, 27 Jun 2018 12:03:54 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 14:18:29 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 14:18:29 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 14:18:48 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 14:18:48 GMT
ENV REDIS_VERSION=3.2.12
# Wed, 27 Jun 2018 14:18:49 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Wed, 27 Jun 2018 14:18:49 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Wed, 27 Jun 2018 14:19:19 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 14:19:21 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 14:19:21 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 14:19:22 GMT
WORKDIR /data
# Wed, 27 Jun 2018 14:19:23 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 27 Jun 2018 14:19:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 14:19:24 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 14:19:24 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:a779870b6875e97ad1448eaf9befb46011e0fd10ef5014f59d63f624b51de26f`  
		Last Modified: Wed, 27 Jun 2018 12:13:30 GMT  
		Size: 19.3 MB (19286273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c5c410558b6543c5785cecbccb032fd4982038a92ba3b8bb4d5ab8d17e6bed7`  
		Last Modified: Wed, 27 Jun 2018 14:20:30 GMT  
		Size: 1.7 KB (1730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48b858312be07ebaa41456fe36334924f5e53a6a705c42b89b61f26bc6ebb357`  
		Last Modified: Wed, 27 Jun 2018 14:20:30 GMT  
		Size: 915.9 KB (915893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d487159866c3d98c7c391be0e6b30106caf6e3d6ccca8dc242897fb25359b1a4`  
		Last Modified: Wed, 27 Jun 2018 14:20:32 GMT  
		Size: 5.6 MB (5617562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7056b5a1293b5b7456db67665171f79de2007ef42e86a4ad28877e2028fb0e0e`  
		Last Modified: Wed, 27 Jun 2018 14:20:30 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e78d8ea827cb0a53bf0e2c48d098dbd7cf096b9e048b1ecba63e6bd00b326f8`  
		Last Modified: Wed, 27 Jun 2018 14:20:31 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:16dca573cc3e83bc90b698d6b8798034c13473abf61b600467289a1887f79c36
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 MB (27088034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac6817f6d7ad5f21df0a7c9becf9f4f2ca72516389ae462b01ea91b5eb4506f6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:44 GMT
ADD file:b8a1907d99b0b9f75b52f8e25d5c346caf0244b325919c02090ab1e05ba1cf18 in / 
# Wed, 27 Jun 2018 08:47:45 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 13:29:17 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 13:29:18 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 13:30:37 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 13:30:39 GMT
ENV REDIS_VERSION=3.2.12
# Wed, 27 Jun 2018 13:30:40 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Wed, 27 Jun 2018 13:30:41 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Wed, 27 Jun 2018 13:32:33 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 13:32:35 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 13:32:36 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 13:32:37 GMT
WORKDIR /data
# Wed, 27 Jun 2018 13:32:38 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 27 Jun 2018 13:32:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 13:32:40 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 13:32:41 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:153362478bb06475bede3bd6da2ff08a91dd9fc6f245c70bb5a033b65f38ac14`  
		Last Modified: Wed, 27 Jun 2018 08:58:51 GMT  
		Size: 20.3 MB (20348077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3df18432afbb66c603676db6e777b9e8385de68f08a19d034af0da3a1858e1f7`  
		Last Modified: Wed, 27 Jun 2018 13:35:34 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a80a3007c2c23eea873ed4902940ef771b78a7d742c98741d71b816d77682d9`  
		Last Modified: Wed, 27 Jun 2018 13:35:35 GMT  
		Size: 908.2 KB (908185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cee6c42d10568b09b9ccba8f3ee388963c7a542a16f90900ec7f0314579940d`  
		Last Modified: Wed, 27 Jun 2018 13:35:37 GMT  
		Size: 5.8 MB (5829531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c09b3d6bcb69982bff5f36c22f15942f577adf0640c9a890f6eae5f3451c568`  
		Last Modified: Wed, 27 Jun 2018 13:35:35 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:935519387ace3d78d43ebe372ad9e594ec8b3647bd0a59adce871b802e2b485f`  
		Last Modified: Wed, 27 Jun 2018 13:35:34 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3` - linux; 386

```console
$ docker pull redis@sha256:024831bc213e833ebe3b528a42b2c3d612f047628d1c454df6ce79108949b0df
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.7 MB (29714397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd1453467c805ccbf763127a0521862072115a19f7846a3d2a08e7133ed67004`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Jun 2018 10:46:39 GMT
ADD file:e1777a98c0e3aaf9cb1f4116550001b0eed2fe669b2c6449c93b76cccc92e1a2 in / 
# Wed, 27 Jun 2018 10:46:42 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 13:03:38 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 13:03:38 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 13:04:04 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 13:04:05 GMT
ENV REDIS_VERSION=3.2.12
# Wed, 27 Jun 2018 13:04:05 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Wed, 27 Jun 2018 13:04:05 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Wed, 27 Jun 2018 13:04:40 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 13:04:41 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 13:04:41 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 13:04:41 GMT
WORKDIR /data
# Wed, 27 Jun 2018 13:04:42 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 27 Jun 2018 13:04:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 13:04:42 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 13:04:42 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:7de5eb46c52dbee10629f5dc34d9b2445893031ae37083572734bc4f6577757d`  
		Last Modified: Wed, 27 Jun 2018 11:11:02 GMT  
		Size: 23.1 MB (23140103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8df6822d7184835aefd26151cfc1ba536407dc7e8d1f959bc1360b882e7f140`  
		Last Modified: Wed, 27 Jun 2018 13:06:10 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:036521fcd75cdac216f9c6c2c0a4e7c7512653de681714198cfddbf20503ea97`  
		Last Modified: Wed, 27 Jun 2018 13:06:10 GMT  
		Size: 920.3 KB (920308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6bad75267a722ea6c6c910e1551f071d7ce2b45ff6f053eb056d2953a6e6657`  
		Last Modified: Wed, 27 Jun 2018 13:06:12 GMT  
		Size: 5.7 MB (5651753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35db50a350c81e6f351bc2337919b9cb693e6ec49f4f74c822c8da9add00ebf`  
		Last Modified: Wed, 27 Jun 2018 13:06:09 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:865d09184e259597097513a8b33277255afbcd5106a8591c5da13d475b01e949`  
		Last Modified: Wed, 27 Jun 2018 13:06:10 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3` - linux; ppc64le

```console
$ docker pull redis@sha256:97bd847f061c9771545c6b92ca6a8644c26e4a17ef5f8ec4f22c0f765bb9eff8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.8 MB (29765744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4dd8d0780f7714f306dfdb950d9d42d9ba0449e99359c3e28c831b7eb3bb51e2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Jun 2018 08:21:34 GMT
ADD file:7bd6d5557557a294db488600b483d452db358e399f7c8b1acf2a89c25b3d2006 in / 
# Wed, 27 Jun 2018 08:21:35 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:46:46 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 12:46:47 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 12:47:55 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 12:47:56 GMT
ENV REDIS_VERSION=3.2.12
# Wed, 27 Jun 2018 12:47:57 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Wed, 27 Jun 2018 12:48:03 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Wed, 27 Jun 2018 12:49:17 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 12:49:21 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 12:49:23 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 12:49:29 GMT
WORKDIR /data
# Wed, 27 Jun 2018 12:49:31 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 27 Jun 2018 12:49:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 12:49:38 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 12:49:44 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:591f394d671c26b8ef397269eb6b0bd86b78d5619523f5d1632fca943faff2de`  
		Last Modified: Wed, 27 Jun 2018 08:31:55 GMT  
		Size: 22.8 MB (22753035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e42cf827ac3794a3349910c6809505ae137eff4dcb479d1c1c39344d80a07a2f`  
		Last Modified: Wed, 27 Jun 2018 12:52:30 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:521c301279f105f9fe7b19f9ad9df2891c82201d2c27ecb1cec4fbaccad91291`  
		Last Modified: Wed, 27 Jun 2018 12:52:32 GMT  
		Size: 909.9 KB (909852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75997f15217b931d837bfdea6becb4465d1185dbf7d7a157ea9ec4709247dfe5`  
		Last Modified: Wed, 27 Jun 2018 12:52:32 GMT  
		Size: 6.1 MB (6100581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1174f7d382a2473c9019f0da1d0a94e6cae1fa8ccb96c4ffb108694c74a7dccf`  
		Last Modified: Wed, 27 Jun 2018 12:52:30 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc716a966f31be4e951b3df3cf83b2500a2ab4ff076f8b4c84698f70ae169567`  
		Last Modified: Wed, 27 Jun 2018 12:52:30 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3` - linux; s390x

```console
$ docker pull redis@sha256:f8352b63f70b541d990517ba58879d6cbc38384ccf3b298c152843358321c40c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.5 MB (29509493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab71a81ce46ad1f6fd6caaad34f5b42ef7678e3e2b0263c3ea3bbbfd4692f9d7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Jun 2018 11:48:52 GMT
ADD file:30e8aac3f01e5ddc9493a0fac1c0978b9435ab33031d2af05afca0f9cb7eb71f in / 
# Wed, 27 Jun 2018 11:48:52 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 13:46:24 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 13:46:24 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 13:46:39 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 13:46:39 GMT
ENV REDIS_VERSION=3.2.12
# Wed, 27 Jun 2018 13:46:39 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Wed, 27 Jun 2018 13:46:39 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Wed, 27 Jun 2018 13:47:14 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 13:47:14 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 13:47:15 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 13:47:15 GMT
WORKDIR /data
# Wed, 27 Jun 2018 13:47:15 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 27 Jun 2018 13:47:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 13:47:15 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 13:47:16 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:1c23a44ac305da2d34995cf30530ba5adce0229e4a70678fd4d25384883b1281`  
		Last Modified: Wed, 27 Jun 2018 11:53:41 GMT  
		Size: 22.3 MB (22349871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f450656bdbcbfdc1614dfb82ca8dc61d74ac31bd1698136f082a3f2e49795a`  
		Last Modified: Wed, 27 Jun 2018 13:48:34 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb0e27db9314b93a9ac2f160f4fc84e2fac43e079e197b9721c03d11c645b235`  
		Last Modified: Wed, 27 Jun 2018 13:48:34 GMT  
		Size: 926.8 KB (926820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69a1c634077b9f1b92a4db026063755084ac2b5b5c7d9fcd97eeebe8e27c31af`  
		Last Modified: Wed, 27 Jun 2018 13:48:36 GMT  
		Size: 6.2 MB (6230560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcacad83f7bf2ea656bdab0dbbd848b8e2a934436e3e207493ab7cbee60c1b12`  
		Last Modified: Wed, 27 Jun 2018 13:48:34 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1d68f3fad8fe9da0ae4293ab87a7f6a1488c7d0360f104ed3fa3b4d9507a909`  
		Last Modified: Wed, 27 Jun 2018 13:48:34 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2`

```console
$ docker pull redis@sha256:e0e59216ba5e67a78d1d20c4b17b98dd14cc49bfc964d8eadb2976590daf25b2
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

### `redis:3.2` - linux; amd64

```console
$ docker pull redis@sha256:7d5d76e35b23a6907cf5877fd348ffea7212bb8bce56b2510e58d216462b98e2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.4 MB (29401980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c11c63ea578a9290f78dc2d06d667de875bf4ff69a4d8e76f78858c848adebb6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 26 Jun 2018 21:25:25 GMT
ADD file:28fbc9fd012eef72780d1c75fc2b0969d13f0138f735035335ab4b76793da2da in / 
# Tue, 26 Jun 2018 21:25:25 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 01:15:28 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 01:15:28 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 01:15:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 01:15:50 GMT
ENV REDIS_VERSION=3.2.12
# Wed, 27 Jun 2018 01:15:50 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Wed, 27 Jun 2018 01:15:50 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Wed, 27 Jun 2018 01:16:27 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 01:16:28 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 01:16:28 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 01:16:29 GMT
WORKDIR /data
# Wed, 27 Jun 2018 01:16:29 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 27 Jun 2018 01:16:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 01:16:29 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 01:16:30 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:683abbb4ea60e108164f1d351e7bcf13daf45941137d800086447874df05f48e`  
		Last Modified: Tue, 26 Jun 2018 21:37:45 GMT  
		Size: 22.5 MB (22496975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:259238e792d86e23dab13fbcfcadf090333328ad9f80894544316437461f0d1b`  
		Last Modified: Wed, 27 Jun 2018 01:19:50 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78399601c709f0e252523e534db03152a1b3f017c9f7c756d68791ef07bc5d0b`  
		Last Modified: Wed, 27 Jun 2018 01:19:50 GMT  
		Size: 941.5 KB (941493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad87fc881000af83798fcd225eaa759431ab9ecaab8d24518b4b086d8995ac67`  
		Last Modified: Wed, 27 Jun 2018 01:19:52 GMT  
		Size: 6.0 MB (5961272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcc4c27dc39d5b2359145c2c0fb278f8cba9f01ea9956ad61e6dc20b0a0e0686`  
		Last Modified: Wed, 27 Jun 2018 01:19:49 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4034d155bb9959cfd07e07e1641fd9f420bb1cac29bced110a74dbe32221f83e`  
		Last Modified: Wed, 27 Jun 2018 01:19:49 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2` - linux; arm variant v5

```console
$ docker pull redis@sha256:c5cea95258c982239b266f073474c73ea8ac0913c3cefcab7e3b1d6387968d50
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.9 MB (27883033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ef00df24fe364ddcb4fd8ad20d9f30f4de44be93631c7ff2ddf99a6fb591b75`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Jun 2018 08:54:01 GMT
ADD file:f1e0d5c56a23a29918cb3b7691cee8f22620b4c54ee70a0dbb4b8151b2be3355 in / 
# Wed, 27 Jun 2018 08:54:02 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 11:10:45 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 11:10:46 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 11:11:07 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 11:11:07 GMT
ENV REDIS_VERSION=3.2.12
# Wed, 27 Jun 2018 11:11:07 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Wed, 27 Jun 2018 11:11:08 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Wed, 27 Jun 2018 11:11:44 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 11:11:45 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 11:11:45 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 11:11:45 GMT
WORKDIR /data
# Wed, 27 Jun 2018 11:11:46 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 27 Jun 2018 11:11:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 11:11:46 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 11:11:47 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:151bc45ca30d5401779cd71c1dd194a7e6f64f1214de3f4f025bc53daf823199`  
		Last Modified: Wed, 27 Jun 2018 09:03:17 GMT  
		Size: 21.2 MB (21177290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cad78a8c45448598f4df7ef055754e60f47534ed63db112af0065ac060c1a769`  
		Last Modified: Wed, 27 Jun 2018 11:12:56 GMT  
		Size: 1.7 KB (1730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a2318299a11dbd69da76cb547cf2a4343d94776bad7f52b516c31def158a9d`  
		Last Modified: Wed, 27 Jun 2018 11:12:57 GMT  
		Size: 931.3 KB (931255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d4668cb2d02be55e5f060652620a6013f6eff98f2d8094a176ede562001d156`  
		Last Modified: Wed, 27 Jun 2018 11:12:58 GMT  
		Size: 5.8 MB (5772222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0c58ff7a3f7df468971287b9e602738c39856e21107d147f05676d3ac46a774`  
		Last Modified: Wed, 27 Jun 2018 11:12:56 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac4a8886beab8802721d7636e8f6b3c1e93df87f8adeb8388885c15fd0a70e19`  
		Last Modified: Wed, 27 Jun 2018 11:12:56 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2` - linux; arm variant v7

```console
$ docker pull redis@sha256:3a11ae4477cc9e69dea488a1220fab197e38c1f6677e25480374f8916890a003
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.8 MB (25821994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f1b934a5bca0736748b36cf7ddf2c99715c4e0cdceb3dbf871f6b075726e016`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Jun 2018 12:03:51 GMT
ADD file:d05cf75761bffd94ce908a55d38fc4966c194aa14492730dfdc1e52c3ddd0892 in / 
# Wed, 27 Jun 2018 12:03:54 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 14:18:29 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 14:18:29 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 14:18:48 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 14:18:48 GMT
ENV REDIS_VERSION=3.2.12
# Wed, 27 Jun 2018 14:18:49 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Wed, 27 Jun 2018 14:18:49 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Wed, 27 Jun 2018 14:19:19 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 14:19:21 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 14:19:21 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 14:19:22 GMT
WORKDIR /data
# Wed, 27 Jun 2018 14:19:23 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 27 Jun 2018 14:19:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 14:19:24 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 14:19:24 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:a779870b6875e97ad1448eaf9befb46011e0fd10ef5014f59d63f624b51de26f`  
		Last Modified: Wed, 27 Jun 2018 12:13:30 GMT  
		Size: 19.3 MB (19286273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c5c410558b6543c5785cecbccb032fd4982038a92ba3b8bb4d5ab8d17e6bed7`  
		Last Modified: Wed, 27 Jun 2018 14:20:30 GMT  
		Size: 1.7 KB (1730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48b858312be07ebaa41456fe36334924f5e53a6a705c42b89b61f26bc6ebb357`  
		Last Modified: Wed, 27 Jun 2018 14:20:30 GMT  
		Size: 915.9 KB (915893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d487159866c3d98c7c391be0e6b30106caf6e3d6ccca8dc242897fb25359b1a4`  
		Last Modified: Wed, 27 Jun 2018 14:20:32 GMT  
		Size: 5.6 MB (5617562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7056b5a1293b5b7456db67665171f79de2007ef42e86a4ad28877e2028fb0e0e`  
		Last Modified: Wed, 27 Jun 2018 14:20:30 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e78d8ea827cb0a53bf0e2c48d098dbd7cf096b9e048b1ecba63e6bd00b326f8`  
		Last Modified: Wed, 27 Jun 2018 14:20:31 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:16dca573cc3e83bc90b698d6b8798034c13473abf61b600467289a1887f79c36
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 MB (27088034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac6817f6d7ad5f21df0a7c9becf9f4f2ca72516389ae462b01ea91b5eb4506f6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:44 GMT
ADD file:b8a1907d99b0b9f75b52f8e25d5c346caf0244b325919c02090ab1e05ba1cf18 in / 
# Wed, 27 Jun 2018 08:47:45 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 13:29:17 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 13:29:18 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 13:30:37 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 13:30:39 GMT
ENV REDIS_VERSION=3.2.12
# Wed, 27 Jun 2018 13:30:40 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Wed, 27 Jun 2018 13:30:41 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Wed, 27 Jun 2018 13:32:33 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 13:32:35 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 13:32:36 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 13:32:37 GMT
WORKDIR /data
# Wed, 27 Jun 2018 13:32:38 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 27 Jun 2018 13:32:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 13:32:40 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 13:32:41 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:153362478bb06475bede3bd6da2ff08a91dd9fc6f245c70bb5a033b65f38ac14`  
		Last Modified: Wed, 27 Jun 2018 08:58:51 GMT  
		Size: 20.3 MB (20348077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3df18432afbb66c603676db6e777b9e8385de68f08a19d034af0da3a1858e1f7`  
		Last Modified: Wed, 27 Jun 2018 13:35:34 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a80a3007c2c23eea873ed4902940ef771b78a7d742c98741d71b816d77682d9`  
		Last Modified: Wed, 27 Jun 2018 13:35:35 GMT  
		Size: 908.2 KB (908185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cee6c42d10568b09b9ccba8f3ee388963c7a542a16f90900ec7f0314579940d`  
		Last Modified: Wed, 27 Jun 2018 13:35:37 GMT  
		Size: 5.8 MB (5829531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c09b3d6bcb69982bff5f36c22f15942f577adf0640c9a890f6eae5f3451c568`  
		Last Modified: Wed, 27 Jun 2018 13:35:35 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:935519387ace3d78d43ebe372ad9e594ec8b3647bd0a59adce871b802e2b485f`  
		Last Modified: Wed, 27 Jun 2018 13:35:34 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2` - linux; 386

```console
$ docker pull redis@sha256:024831bc213e833ebe3b528a42b2c3d612f047628d1c454df6ce79108949b0df
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.7 MB (29714397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd1453467c805ccbf763127a0521862072115a19f7846a3d2a08e7133ed67004`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Jun 2018 10:46:39 GMT
ADD file:e1777a98c0e3aaf9cb1f4116550001b0eed2fe669b2c6449c93b76cccc92e1a2 in / 
# Wed, 27 Jun 2018 10:46:42 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 13:03:38 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 13:03:38 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 13:04:04 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 13:04:05 GMT
ENV REDIS_VERSION=3.2.12
# Wed, 27 Jun 2018 13:04:05 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Wed, 27 Jun 2018 13:04:05 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Wed, 27 Jun 2018 13:04:40 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 13:04:41 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 13:04:41 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 13:04:41 GMT
WORKDIR /data
# Wed, 27 Jun 2018 13:04:42 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 27 Jun 2018 13:04:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 13:04:42 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 13:04:42 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:7de5eb46c52dbee10629f5dc34d9b2445893031ae37083572734bc4f6577757d`  
		Last Modified: Wed, 27 Jun 2018 11:11:02 GMT  
		Size: 23.1 MB (23140103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8df6822d7184835aefd26151cfc1ba536407dc7e8d1f959bc1360b882e7f140`  
		Last Modified: Wed, 27 Jun 2018 13:06:10 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:036521fcd75cdac216f9c6c2c0a4e7c7512653de681714198cfddbf20503ea97`  
		Last Modified: Wed, 27 Jun 2018 13:06:10 GMT  
		Size: 920.3 KB (920308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6bad75267a722ea6c6c910e1551f071d7ce2b45ff6f053eb056d2953a6e6657`  
		Last Modified: Wed, 27 Jun 2018 13:06:12 GMT  
		Size: 5.7 MB (5651753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35db50a350c81e6f351bc2337919b9cb693e6ec49f4f74c822c8da9add00ebf`  
		Last Modified: Wed, 27 Jun 2018 13:06:09 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:865d09184e259597097513a8b33277255afbcd5106a8591c5da13d475b01e949`  
		Last Modified: Wed, 27 Jun 2018 13:06:10 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2` - linux; ppc64le

```console
$ docker pull redis@sha256:97bd847f061c9771545c6b92ca6a8644c26e4a17ef5f8ec4f22c0f765bb9eff8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.8 MB (29765744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4dd8d0780f7714f306dfdb950d9d42d9ba0449e99359c3e28c831b7eb3bb51e2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Jun 2018 08:21:34 GMT
ADD file:7bd6d5557557a294db488600b483d452db358e399f7c8b1acf2a89c25b3d2006 in / 
# Wed, 27 Jun 2018 08:21:35 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:46:46 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 12:46:47 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 12:47:55 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 12:47:56 GMT
ENV REDIS_VERSION=3.2.12
# Wed, 27 Jun 2018 12:47:57 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Wed, 27 Jun 2018 12:48:03 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Wed, 27 Jun 2018 12:49:17 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 12:49:21 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 12:49:23 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 12:49:29 GMT
WORKDIR /data
# Wed, 27 Jun 2018 12:49:31 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 27 Jun 2018 12:49:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 12:49:38 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 12:49:44 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:591f394d671c26b8ef397269eb6b0bd86b78d5619523f5d1632fca943faff2de`  
		Last Modified: Wed, 27 Jun 2018 08:31:55 GMT  
		Size: 22.8 MB (22753035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e42cf827ac3794a3349910c6809505ae137eff4dcb479d1c1c39344d80a07a2f`  
		Last Modified: Wed, 27 Jun 2018 12:52:30 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:521c301279f105f9fe7b19f9ad9df2891c82201d2c27ecb1cec4fbaccad91291`  
		Last Modified: Wed, 27 Jun 2018 12:52:32 GMT  
		Size: 909.9 KB (909852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75997f15217b931d837bfdea6becb4465d1185dbf7d7a157ea9ec4709247dfe5`  
		Last Modified: Wed, 27 Jun 2018 12:52:32 GMT  
		Size: 6.1 MB (6100581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1174f7d382a2473c9019f0da1d0a94e6cae1fa8ccb96c4ffb108694c74a7dccf`  
		Last Modified: Wed, 27 Jun 2018 12:52:30 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc716a966f31be4e951b3df3cf83b2500a2ab4ff076f8b4c84698f70ae169567`  
		Last Modified: Wed, 27 Jun 2018 12:52:30 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2` - linux; s390x

```console
$ docker pull redis@sha256:f8352b63f70b541d990517ba58879d6cbc38384ccf3b298c152843358321c40c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.5 MB (29509493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab71a81ce46ad1f6fd6caaad34f5b42ef7678e3e2b0263c3ea3bbbfd4692f9d7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Jun 2018 11:48:52 GMT
ADD file:30e8aac3f01e5ddc9493a0fac1c0978b9435ab33031d2af05afca0f9cb7eb71f in / 
# Wed, 27 Jun 2018 11:48:52 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 13:46:24 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 13:46:24 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 13:46:39 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 13:46:39 GMT
ENV REDIS_VERSION=3.2.12
# Wed, 27 Jun 2018 13:46:39 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Wed, 27 Jun 2018 13:46:39 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Wed, 27 Jun 2018 13:47:14 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 13:47:14 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 13:47:15 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 13:47:15 GMT
WORKDIR /data
# Wed, 27 Jun 2018 13:47:15 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 27 Jun 2018 13:47:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 13:47:15 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 13:47:16 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:1c23a44ac305da2d34995cf30530ba5adce0229e4a70678fd4d25384883b1281`  
		Last Modified: Wed, 27 Jun 2018 11:53:41 GMT  
		Size: 22.3 MB (22349871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f450656bdbcbfdc1614dfb82ca8dc61d74ac31bd1698136f082a3f2e49795a`  
		Last Modified: Wed, 27 Jun 2018 13:48:34 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb0e27db9314b93a9ac2f160f4fc84e2fac43e079e197b9721c03d11c645b235`  
		Last Modified: Wed, 27 Jun 2018 13:48:34 GMT  
		Size: 926.8 KB (926820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69a1c634077b9f1b92a4db026063755084ac2b5b5c7d9fcd97eeebe8e27c31af`  
		Last Modified: Wed, 27 Jun 2018 13:48:36 GMT  
		Size: 6.2 MB (6230560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcacad83f7bf2ea656bdab0dbbd848b8e2a934436e3e207493ab7cbee60c1b12`  
		Last Modified: Wed, 27 Jun 2018 13:48:34 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1d68f3fad8fe9da0ae4293ab87a7f6a1488c7d0360f104ed3fa3b4d9507a909`  
		Last Modified: Wed, 27 Jun 2018 13:48:34 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2.12`

```console
$ docker pull redis@sha256:e0e59216ba5e67a78d1d20c4b17b98dd14cc49bfc964d8eadb2976590daf25b2
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

### `redis:3.2.12` - linux; amd64

```console
$ docker pull redis@sha256:7d5d76e35b23a6907cf5877fd348ffea7212bb8bce56b2510e58d216462b98e2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.4 MB (29401980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c11c63ea578a9290f78dc2d06d667de875bf4ff69a4d8e76f78858c848adebb6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 26 Jun 2018 21:25:25 GMT
ADD file:28fbc9fd012eef72780d1c75fc2b0969d13f0138f735035335ab4b76793da2da in / 
# Tue, 26 Jun 2018 21:25:25 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 01:15:28 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 01:15:28 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 01:15:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 01:15:50 GMT
ENV REDIS_VERSION=3.2.12
# Wed, 27 Jun 2018 01:15:50 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Wed, 27 Jun 2018 01:15:50 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Wed, 27 Jun 2018 01:16:27 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 01:16:28 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 01:16:28 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 01:16:29 GMT
WORKDIR /data
# Wed, 27 Jun 2018 01:16:29 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 27 Jun 2018 01:16:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 01:16:29 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 01:16:30 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:683abbb4ea60e108164f1d351e7bcf13daf45941137d800086447874df05f48e`  
		Last Modified: Tue, 26 Jun 2018 21:37:45 GMT  
		Size: 22.5 MB (22496975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:259238e792d86e23dab13fbcfcadf090333328ad9f80894544316437461f0d1b`  
		Last Modified: Wed, 27 Jun 2018 01:19:50 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78399601c709f0e252523e534db03152a1b3f017c9f7c756d68791ef07bc5d0b`  
		Last Modified: Wed, 27 Jun 2018 01:19:50 GMT  
		Size: 941.5 KB (941493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad87fc881000af83798fcd225eaa759431ab9ecaab8d24518b4b086d8995ac67`  
		Last Modified: Wed, 27 Jun 2018 01:19:52 GMT  
		Size: 6.0 MB (5961272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcc4c27dc39d5b2359145c2c0fb278f8cba9f01ea9956ad61e6dc20b0a0e0686`  
		Last Modified: Wed, 27 Jun 2018 01:19:49 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4034d155bb9959cfd07e07e1641fd9f420bb1cac29bced110a74dbe32221f83e`  
		Last Modified: Wed, 27 Jun 2018 01:19:49 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2.12` - linux; arm variant v5

```console
$ docker pull redis@sha256:c5cea95258c982239b266f073474c73ea8ac0913c3cefcab7e3b1d6387968d50
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.9 MB (27883033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ef00df24fe364ddcb4fd8ad20d9f30f4de44be93631c7ff2ddf99a6fb591b75`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Jun 2018 08:54:01 GMT
ADD file:f1e0d5c56a23a29918cb3b7691cee8f22620b4c54ee70a0dbb4b8151b2be3355 in / 
# Wed, 27 Jun 2018 08:54:02 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 11:10:45 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 11:10:46 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 11:11:07 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 11:11:07 GMT
ENV REDIS_VERSION=3.2.12
# Wed, 27 Jun 2018 11:11:07 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Wed, 27 Jun 2018 11:11:08 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Wed, 27 Jun 2018 11:11:44 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 11:11:45 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 11:11:45 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 11:11:45 GMT
WORKDIR /data
# Wed, 27 Jun 2018 11:11:46 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 27 Jun 2018 11:11:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 11:11:46 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 11:11:47 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:151bc45ca30d5401779cd71c1dd194a7e6f64f1214de3f4f025bc53daf823199`  
		Last Modified: Wed, 27 Jun 2018 09:03:17 GMT  
		Size: 21.2 MB (21177290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cad78a8c45448598f4df7ef055754e60f47534ed63db112af0065ac060c1a769`  
		Last Modified: Wed, 27 Jun 2018 11:12:56 GMT  
		Size: 1.7 KB (1730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a2318299a11dbd69da76cb547cf2a4343d94776bad7f52b516c31def158a9d`  
		Last Modified: Wed, 27 Jun 2018 11:12:57 GMT  
		Size: 931.3 KB (931255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d4668cb2d02be55e5f060652620a6013f6eff98f2d8094a176ede562001d156`  
		Last Modified: Wed, 27 Jun 2018 11:12:58 GMT  
		Size: 5.8 MB (5772222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0c58ff7a3f7df468971287b9e602738c39856e21107d147f05676d3ac46a774`  
		Last Modified: Wed, 27 Jun 2018 11:12:56 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac4a8886beab8802721d7636e8f6b3c1e93df87f8adeb8388885c15fd0a70e19`  
		Last Modified: Wed, 27 Jun 2018 11:12:56 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2.12` - linux; arm variant v7

```console
$ docker pull redis@sha256:3a11ae4477cc9e69dea488a1220fab197e38c1f6677e25480374f8916890a003
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.8 MB (25821994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f1b934a5bca0736748b36cf7ddf2c99715c4e0cdceb3dbf871f6b075726e016`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Jun 2018 12:03:51 GMT
ADD file:d05cf75761bffd94ce908a55d38fc4966c194aa14492730dfdc1e52c3ddd0892 in / 
# Wed, 27 Jun 2018 12:03:54 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 14:18:29 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 14:18:29 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 14:18:48 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 14:18:48 GMT
ENV REDIS_VERSION=3.2.12
# Wed, 27 Jun 2018 14:18:49 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Wed, 27 Jun 2018 14:18:49 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Wed, 27 Jun 2018 14:19:19 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 14:19:21 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 14:19:21 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 14:19:22 GMT
WORKDIR /data
# Wed, 27 Jun 2018 14:19:23 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 27 Jun 2018 14:19:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 14:19:24 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 14:19:24 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:a779870b6875e97ad1448eaf9befb46011e0fd10ef5014f59d63f624b51de26f`  
		Last Modified: Wed, 27 Jun 2018 12:13:30 GMT  
		Size: 19.3 MB (19286273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c5c410558b6543c5785cecbccb032fd4982038a92ba3b8bb4d5ab8d17e6bed7`  
		Last Modified: Wed, 27 Jun 2018 14:20:30 GMT  
		Size: 1.7 KB (1730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48b858312be07ebaa41456fe36334924f5e53a6a705c42b89b61f26bc6ebb357`  
		Last Modified: Wed, 27 Jun 2018 14:20:30 GMT  
		Size: 915.9 KB (915893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d487159866c3d98c7c391be0e6b30106caf6e3d6ccca8dc242897fb25359b1a4`  
		Last Modified: Wed, 27 Jun 2018 14:20:32 GMT  
		Size: 5.6 MB (5617562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7056b5a1293b5b7456db67665171f79de2007ef42e86a4ad28877e2028fb0e0e`  
		Last Modified: Wed, 27 Jun 2018 14:20:30 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e78d8ea827cb0a53bf0e2c48d098dbd7cf096b9e048b1ecba63e6bd00b326f8`  
		Last Modified: Wed, 27 Jun 2018 14:20:31 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2.12` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:16dca573cc3e83bc90b698d6b8798034c13473abf61b600467289a1887f79c36
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 MB (27088034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac6817f6d7ad5f21df0a7c9becf9f4f2ca72516389ae462b01ea91b5eb4506f6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:44 GMT
ADD file:b8a1907d99b0b9f75b52f8e25d5c346caf0244b325919c02090ab1e05ba1cf18 in / 
# Wed, 27 Jun 2018 08:47:45 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 13:29:17 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 13:29:18 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 13:30:37 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 13:30:39 GMT
ENV REDIS_VERSION=3.2.12
# Wed, 27 Jun 2018 13:30:40 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Wed, 27 Jun 2018 13:30:41 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Wed, 27 Jun 2018 13:32:33 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 13:32:35 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 13:32:36 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 13:32:37 GMT
WORKDIR /data
# Wed, 27 Jun 2018 13:32:38 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 27 Jun 2018 13:32:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 13:32:40 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 13:32:41 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:153362478bb06475bede3bd6da2ff08a91dd9fc6f245c70bb5a033b65f38ac14`  
		Last Modified: Wed, 27 Jun 2018 08:58:51 GMT  
		Size: 20.3 MB (20348077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3df18432afbb66c603676db6e777b9e8385de68f08a19d034af0da3a1858e1f7`  
		Last Modified: Wed, 27 Jun 2018 13:35:34 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a80a3007c2c23eea873ed4902940ef771b78a7d742c98741d71b816d77682d9`  
		Last Modified: Wed, 27 Jun 2018 13:35:35 GMT  
		Size: 908.2 KB (908185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cee6c42d10568b09b9ccba8f3ee388963c7a542a16f90900ec7f0314579940d`  
		Last Modified: Wed, 27 Jun 2018 13:35:37 GMT  
		Size: 5.8 MB (5829531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c09b3d6bcb69982bff5f36c22f15942f577adf0640c9a890f6eae5f3451c568`  
		Last Modified: Wed, 27 Jun 2018 13:35:35 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:935519387ace3d78d43ebe372ad9e594ec8b3647bd0a59adce871b802e2b485f`  
		Last Modified: Wed, 27 Jun 2018 13:35:34 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2.12` - linux; 386

```console
$ docker pull redis@sha256:024831bc213e833ebe3b528a42b2c3d612f047628d1c454df6ce79108949b0df
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.7 MB (29714397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd1453467c805ccbf763127a0521862072115a19f7846a3d2a08e7133ed67004`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Jun 2018 10:46:39 GMT
ADD file:e1777a98c0e3aaf9cb1f4116550001b0eed2fe669b2c6449c93b76cccc92e1a2 in / 
# Wed, 27 Jun 2018 10:46:42 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 13:03:38 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 13:03:38 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 13:04:04 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 13:04:05 GMT
ENV REDIS_VERSION=3.2.12
# Wed, 27 Jun 2018 13:04:05 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Wed, 27 Jun 2018 13:04:05 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Wed, 27 Jun 2018 13:04:40 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 13:04:41 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 13:04:41 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 13:04:41 GMT
WORKDIR /data
# Wed, 27 Jun 2018 13:04:42 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 27 Jun 2018 13:04:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 13:04:42 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 13:04:42 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:7de5eb46c52dbee10629f5dc34d9b2445893031ae37083572734bc4f6577757d`  
		Last Modified: Wed, 27 Jun 2018 11:11:02 GMT  
		Size: 23.1 MB (23140103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8df6822d7184835aefd26151cfc1ba536407dc7e8d1f959bc1360b882e7f140`  
		Last Modified: Wed, 27 Jun 2018 13:06:10 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:036521fcd75cdac216f9c6c2c0a4e7c7512653de681714198cfddbf20503ea97`  
		Last Modified: Wed, 27 Jun 2018 13:06:10 GMT  
		Size: 920.3 KB (920308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6bad75267a722ea6c6c910e1551f071d7ce2b45ff6f053eb056d2953a6e6657`  
		Last Modified: Wed, 27 Jun 2018 13:06:12 GMT  
		Size: 5.7 MB (5651753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35db50a350c81e6f351bc2337919b9cb693e6ec49f4f74c822c8da9add00ebf`  
		Last Modified: Wed, 27 Jun 2018 13:06:09 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:865d09184e259597097513a8b33277255afbcd5106a8591c5da13d475b01e949`  
		Last Modified: Wed, 27 Jun 2018 13:06:10 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2.12` - linux; ppc64le

```console
$ docker pull redis@sha256:97bd847f061c9771545c6b92ca6a8644c26e4a17ef5f8ec4f22c0f765bb9eff8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.8 MB (29765744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4dd8d0780f7714f306dfdb950d9d42d9ba0449e99359c3e28c831b7eb3bb51e2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Jun 2018 08:21:34 GMT
ADD file:7bd6d5557557a294db488600b483d452db358e399f7c8b1acf2a89c25b3d2006 in / 
# Wed, 27 Jun 2018 08:21:35 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:46:46 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 12:46:47 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 12:47:55 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 12:47:56 GMT
ENV REDIS_VERSION=3.2.12
# Wed, 27 Jun 2018 12:47:57 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Wed, 27 Jun 2018 12:48:03 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Wed, 27 Jun 2018 12:49:17 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 12:49:21 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 12:49:23 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 12:49:29 GMT
WORKDIR /data
# Wed, 27 Jun 2018 12:49:31 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 27 Jun 2018 12:49:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 12:49:38 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 12:49:44 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:591f394d671c26b8ef397269eb6b0bd86b78d5619523f5d1632fca943faff2de`  
		Last Modified: Wed, 27 Jun 2018 08:31:55 GMT  
		Size: 22.8 MB (22753035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e42cf827ac3794a3349910c6809505ae137eff4dcb479d1c1c39344d80a07a2f`  
		Last Modified: Wed, 27 Jun 2018 12:52:30 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:521c301279f105f9fe7b19f9ad9df2891c82201d2c27ecb1cec4fbaccad91291`  
		Last Modified: Wed, 27 Jun 2018 12:52:32 GMT  
		Size: 909.9 KB (909852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75997f15217b931d837bfdea6becb4465d1185dbf7d7a157ea9ec4709247dfe5`  
		Last Modified: Wed, 27 Jun 2018 12:52:32 GMT  
		Size: 6.1 MB (6100581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1174f7d382a2473c9019f0da1d0a94e6cae1fa8ccb96c4ffb108694c74a7dccf`  
		Last Modified: Wed, 27 Jun 2018 12:52:30 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc716a966f31be4e951b3df3cf83b2500a2ab4ff076f8b4c84698f70ae169567`  
		Last Modified: Wed, 27 Jun 2018 12:52:30 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2.12` - linux; s390x

```console
$ docker pull redis@sha256:f8352b63f70b541d990517ba58879d6cbc38384ccf3b298c152843358321c40c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.5 MB (29509493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab71a81ce46ad1f6fd6caaad34f5b42ef7678e3e2b0263c3ea3bbbfd4692f9d7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Jun 2018 11:48:52 GMT
ADD file:30e8aac3f01e5ddc9493a0fac1c0978b9435ab33031d2af05afca0f9cb7eb71f in / 
# Wed, 27 Jun 2018 11:48:52 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 13:46:24 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 13:46:24 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 13:46:39 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 13:46:39 GMT
ENV REDIS_VERSION=3.2.12
# Wed, 27 Jun 2018 13:46:39 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Wed, 27 Jun 2018 13:46:39 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Wed, 27 Jun 2018 13:47:14 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 13:47:14 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 13:47:15 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 13:47:15 GMT
WORKDIR /data
# Wed, 27 Jun 2018 13:47:15 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 27 Jun 2018 13:47:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 13:47:15 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 13:47:16 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:1c23a44ac305da2d34995cf30530ba5adce0229e4a70678fd4d25384883b1281`  
		Last Modified: Wed, 27 Jun 2018 11:53:41 GMT  
		Size: 22.3 MB (22349871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f450656bdbcbfdc1614dfb82ca8dc61d74ac31bd1698136f082a3f2e49795a`  
		Last Modified: Wed, 27 Jun 2018 13:48:34 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb0e27db9314b93a9ac2f160f4fc84e2fac43e079e197b9721c03d11c645b235`  
		Last Modified: Wed, 27 Jun 2018 13:48:34 GMT  
		Size: 926.8 KB (926820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69a1c634077b9f1b92a4db026063755084ac2b5b5c7d9fcd97eeebe8e27c31af`  
		Last Modified: Wed, 27 Jun 2018 13:48:36 GMT  
		Size: 6.2 MB (6230560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcacad83f7bf2ea656bdab0dbbd848b8e2a934436e3e207493ab7cbee60c1b12`  
		Last Modified: Wed, 27 Jun 2018 13:48:34 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1d68f3fad8fe9da0ae4293ab87a7f6a1488c7d0360f104ed3fa3b4d9507a909`  
		Last Modified: Wed, 27 Jun 2018 13:48:34 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2.12-32bit`

```console
$ docker pull redis@sha256:45222a40db8c568c6e8c7138a896586d14ddc554d09841a3a43027242593fa4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:3.2.12-32bit` - linux; amd64

```console
$ docker pull redis@sha256:df44bdb995b07647d0b4223803cf166219026bbf0b052cc89782dd3fc25eb312
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.9 MB (33945720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e950f3fdb7e3bca92520b2793e66d8c7dde627f17002895d774f9122a0841f64`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 26 Jun 2018 21:25:25 GMT
ADD file:28fbc9fd012eef72780d1c75fc2b0969d13f0138f735035335ab4b76793da2da in / 
# Tue, 26 Jun 2018 21:25:25 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 01:15:28 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 01:15:28 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 01:15:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 01:15:50 GMT
ENV REDIS_VERSION=3.2.12
# Wed, 27 Jun 2018 01:15:50 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Wed, 27 Jun 2018 01:15:50 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Wed, 27 Jun 2018 01:16:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 01:17:36 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 01:17:37 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 01:17:37 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 01:17:37 GMT
WORKDIR /data
# Wed, 27 Jun 2018 01:17:37 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 27 Jun 2018 01:17:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 01:17:38 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 01:17:38 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:683abbb4ea60e108164f1d351e7bcf13daf45941137d800086447874df05f48e`  
		Last Modified: Tue, 26 Jun 2018 21:37:45 GMT  
		Size: 22.5 MB (22496975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:259238e792d86e23dab13fbcfcadf090333328ad9f80894544316437461f0d1b`  
		Last Modified: Wed, 27 Jun 2018 01:19:50 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78399601c709f0e252523e534db03152a1b3f017c9f7c756d68791ef07bc5d0b`  
		Last Modified: Wed, 27 Jun 2018 01:19:50 GMT  
		Size: 941.5 KB (941493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df8d7605be035a7938860f48bcaa2c99b907d8e460a6bfcc325920ef157209fe`  
		Last Modified: Wed, 27 Jun 2018 01:20:28 GMT  
		Size: 4.8 MB (4848288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e626e6a2fcd5fd68549304b9ad7a801048152a1ab8e094e1dc3e983343aa3169`  
		Last Modified: Wed, 27 Jun 2018 01:20:28 GMT  
		Size: 5.7 MB (5656718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29647052de19b35b433096895540d2976876830c276418c588eb89c5626431f2`  
		Last Modified: Wed, 27 Jun 2018 01:20:26 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:466eab12f8ebb5702e766960ec6aa9ec306926b63178253f8177d13dbfcbbd9a`  
		Last Modified: Wed, 27 Jun 2018 01:20:26 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2.12-alpine`

```console
$ docker pull redis@sha256:04b13d5961e705438300dee5a71a41ab0c2bf36947a56e8bf8679d6a16036812
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

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

### `redis:3.2.12-alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:481800c2f93163c801e957224c0810ce05c86bfc486eb8300dc81a5d262abb17
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7701090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:386ca70c8fb35a195d1bdf360ac8025d4bc9ca180841b48e593fb5a42d404aa2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:45 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Fri, 01 Dec 2017 18:41:45 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:46 GMT
CMD ["/bin/sh"]
# Wed, 16 May 2018 19:39:01 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 16 May 2018 19:39:06 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 16 Jun 2018 07:49:26 GMT
ENV REDIS_VERSION=3.2.12
# Sat, 16 Jun 2018 07:49:26 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Sat, 16 Jun 2018 07:49:27 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Sat, 16 Jun 2018 07:54:16 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 16 Jun 2018 07:54:21 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 16 Jun 2018 07:54:22 GMT
VOLUME [/data]
# Sat, 16 Jun 2018 07:54:23 GMT
WORKDIR /data
# Sat, 16 Jun 2018 07:54:24 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 16 Jun 2018 07:54:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 16 Jun 2018 07:54:26 GMT
EXPOSE 6379/tcp
# Sat, 16 Jun 2018 07:54:27 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bf7d76c39215a547858ef9260990b9b80c0e679bb2f6ceef942d7b6d0eeec3`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29b2b09993d378af670de0b63030a6a3e611e97529dfdbbc5aa5228af010f6c4`  
		Last Modified: Fri, 18 May 2018 07:58:12 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66f37a02127b76c7deae98d4551daa47405376826362bb20a76575f6710ccb2b`  
		Last Modified: Fri, 18 May 2018 07:58:12 GMT  
		Size: 8.7 KB (8716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b988ab6eeca49d5264e3ae7647913cf1958060b9078d0366376458a38df4425d`  
		Last Modified: Sat, 16 Jun 2018 07:58:50 GMT  
		Size: 5.7 MB (5652082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b81744a173ad845664cb5a345c68e94c5011e719f81f2e3dfc7daa93bdce99`  
		Last Modified: Sat, 16 Jun 2018 07:58:43 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e61842d356237dfe3e12b4ed5837f06da455a10dff18d7da304cea873bc6b96`  
		Last Modified: Sat, 16 Jun 2018 07:58:42 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2.12-alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:266e15f97068deae731ceafc97c8bded58b75e0b458c1f0aa6f9820f65d4d3fe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7757963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f08796bc5e55b549edabf395c145f6e3d3966243d92803e92d98b853dc3ecc2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Wed, 24 Jan 2018 13:25:46 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 24 Jan 2018 13:25:50 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 16 Jun 2018 09:55:43 GMT
ENV REDIS_VERSION=3.2.12
# Sat, 16 Jun 2018 09:55:43 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Sat, 16 Jun 2018 09:55:44 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Sat, 16 Jun 2018 09:56:17 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 16 Jun 2018 09:56:19 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 16 Jun 2018 09:56:20 GMT
VOLUME [/data]
# Sat, 16 Jun 2018 09:56:21 GMT
WORKDIR /data
# Sat, 16 Jun 2018 09:56:22 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 16 Jun 2018 09:56:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 16 Jun 2018 09:56:24 GMT
EXPOSE 6379/tcp
# Sat, 16 Jun 2018 09:56:24 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec42e4d70bd6b5d14ceb60d165f35c9d1348c35d3a566bb230cec599a0ffd64`  
		Last Modified: Wed, 24 Jan 2018 13:28:23 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:555bf2ac2a80a9414fecc99d0e2e659cf9cc43ddcf785a45cf07b2fbcbf0f7b4`  
		Last Modified: Wed, 24 Jan 2018 13:28:23 GMT  
		Size: 8.7 KB (8656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b470de0c790a969f35adbecceab104288ecbcf3cf43bbd04ed75acf8508e2e7`  
		Last Modified: Sat, 16 Jun 2018 10:00:15 GMT  
		Size: 5.8 MB (5758526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:337ac5ffaebf2e97c1b1427a6f64b279775f836387477dd12ae2d07d7198f5b9`  
		Last Modified: Sat, 16 Jun 2018 10:00:13 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f393e0aaf9f28f0cd1b619e8bc60439602334bbc691d022ddd05edfa1210986a`  
		Last Modified: Sat, 16 Jun 2018 10:00:13 GMT  
		Size: 398.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2.12-alpine` - linux; 386

```console
$ docker pull redis@sha256:12959d69c2a1554e95b2c6c4487ff66a18f957740fe4b70a124dd019a6071fa8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7715001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25aa1f3ac283ec89da172da3a79fa1a895f9b405bd61bed57ba871359944a74d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 01 Jun 2018 06:57:26 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Jun 2018 06:57:26 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Jun 2018 06:57:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Jun 2018 15:57:41 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 01 Jun 2018 15:57:42 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 16 Jun 2018 10:40:41 GMT
ENV REDIS_VERSION=3.2.12
# Sat, 16 Jun 2018 10:40:41 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Sat, 16 Jun 2018 10:40:41 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Sat, 16 Jun 2018 10:41:12 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 16 Jun 2018 10:41:13 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 16 Jun 2018 10:41:13 GMT
VOLUME [/data]
# Sat, 16 Jun 2018 10:41:13 GMT
WORKDIR /data
# Sat, 16 Jun 2018 10:41:18 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 16 Jun 2018 10:41:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 16 Jun 2018 10:41:19 GMT
EXPOSE 6379/tcp
# Sat, 16 Jun 2018 10:41:19 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:061a9db3c9e4f3bc32618a5f1a7e2b8aefb20fcc48f8be709bc7f7eabe61d003`  
		Last Modified: Fri, 01 Jun 2018 06:57:51 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32c5c681510e095d5b56ec0b42770c915f177d63e694ce6b59a6081187bb4e38`  
		Last Modified: Fri, 01 Jun 2018 16:02:37 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c69d5dac586a34e49b9e78377c5b5ccf2dab95a9383f555ee0bf7e10be877000`  
		Last Modified: Fri, 01 Jun 2018 16:02:37 GMT  
		Size: 8.7 KB (8653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eff4cf92275ce1cb1f8131bfb7143f1bc399cf0bdb4026850cde8226916cc497`  
		Last Modified: Sat, 16 Jun 2018 10:45:06 GMT  
		Size: 5.6 MB (5578203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99a05d48b745cb70bddc990aed31a209c3fc0c93dcd8ea87375ac8bb3f9520e5`  
		Last Modified: Sat, 16 Jun 2018 10:45:04 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:656bf6726d46b902fce2bfc2417f67d423ac1ff3a42223f4f98da7ec44967e7f`  
		Last Modified: Sat, 16 Jun 2018 10:45:03 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2.12-alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:951b980304c5e457fc89f02ac5a21de4f3396033384683f6ddf970007346b96a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.1 MB (8095514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:372b071a58ae55444d84ecf1e6522791955e12cbb9a881b681e1f16e098cb9c6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Wed, 24 Jan 2018 06:35:28 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 24 Jan 2018 06:35:34 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 16 Jun 2018 08:19:57 GMT
ENV REDIS_VERSION=3.2.12
# Sat, 16 Jun 2018 08:19:57 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Sat, 16 Jun 2018 08:19:58 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Sat, 16 Jun 2018 08:20:24 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 16 Jun 2018 08:20:29 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 16 Jun 2018 08:20:32 GMT
VOLUME [/data]
# Sat, 16 Jun 2018 08:20:33 GMT
WORKDIR /data
# Sat, 16 Jun 2018 08:20:34 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 16 Jun 2018 08:20:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 16 Jun 2018 08:20:39 GMT
EXPOSE 6379/tcp
# Sat, 16 Jun 2018 08:20:40 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:802132ccdaaf1e42c991c0ad2b274ee46d7d02210e23a3bc630c772fbdd533c2`  
		Last Modified: Wed, 24 Jan 2018 06:37:26 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3edb35368beebf064881c4a2efa343effc2775c4bb6e9121e8426990bc75df12`  
		Last Modified: Wed, 24 Jan 2018 06:37:26 GMT  
		Size: 9.3 KB (9269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f7ca6aeb76b548827b2df318b4e7b32ecbe398e2bc1e0cd8b454d17bf82d2ac`  
		Last Modified: Sat, 16 Jun 2018 08:24:39 GMT  
		Size: 6.0 MB (6002782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94aa9ccffc747d08750fe0cda963eaf4f928a5d7914b61a5c260cf5a9d5bfd81`  
		Last Modified: Sat, 16 Jun 2018 08:24:37 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2357958d6cd10f2bd60489d885499bd5070dd58c79ac3162446321cc7a3a8c01`  
		Last Modified: Sat, 16 Jun 2018 08:24:37 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2.12-alpine` - linux; s390x

```console
$ docker pull redis@sha256:2b27a0a878ae07a5a698a6dbe3041afa3908e2df98e879dcf399f53c12f61732
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.2 MB (8244704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:feddc7428cb655ea447036e864c00ac471342a0d2b1ff5c54a5ff01c4e9ffe25`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Wed, 24 Jan 2018 06:24:30 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 24 Jan 2018 06:24:33 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 16 Jun 2018 11:45:26 GMT
ENV REDIS_VERSION=3.2.12
# Sat, 16 Jun 2018 11:45:26 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Sat, 16 Jun 2018 11:45:26 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Sat, 16 Jun 2018 11:45:46 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 16 Jun 2018 11:45:47 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 16 Jun 2018 11:45:47 GMT
VOLUME [/data]
# Sat, 16 Jun 2018 11:45:47 GMT
WORKDIR /data
# Sat, 16 Jun 2018 11:45:47 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 16 Jun 2018 11:45:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 16 Jun 2018 11:45:48 GMT
EXPOSE 6379/tcp
# Sat, 16 Jun 2018 11:45:48 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:11e7bc85614a236b32043d147930fd2bc9055af8642fe30e5e56142590572b0e`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 2.2 MB (2185231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f825cbb729285f1fe2a0cd1d4d36897e3fe2191c5ee044ce11a5d301dc64a34`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:167640baaae6b19b666d28c35de1dde729eaca22986531c0f3b3dd6af5bbc469`  
		Last Modified: Wed, 24 Jan 2018 06:25:46 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dab4f89cc8856e8d43a9cc8e3ba6670d31906a9a3409fdf2f59ad893cda37c8`  
		Last Modified: Wed, 24 Jan 2018 06:25:46 GMT  
		Size: 8.9 KB (8944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee20fb223e03f8387aefad2c97541b4152445acc52125010b85618c815dd771c`  
		Last Modified: Sat, 16 Jun 2018 11:47:23 GMT  
		Size: 6.0 MB (6048600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bde0554da80f0de0662d48647b71ecd473669b8d61b5314956f569cbf832be5d`  
		Last Modified: Sat, 16 Jun 2018 11:47:22 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:924e13a4743effe4208999eb5cf1872017454497b7833ec1d61078324266300d`  
		Last Modified: Sat, 16 Jun 2018 11:47:22 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2-32bit`

```console
$ docker pull redis@sha256:45222a40db8c568c6e8c7138a896586d14ddc554d09841a3a43027242593fa4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:3.2-32bit` - linux; amd64

```console
$ docker pull redis@sha256:df44bdb995b07647d0b4223803cf166219026bbf0b052cc89782dd3fc25eb312
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.9 MB (33945720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e950f3fdb7e3bca92520b2793e66d8c7dde627f17002895d774f9122a0841f64`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 26 Jun 2018 21:25:25 GMT
ADD file:28fbc9fd012eef72780d1c75fc2b0969d13f0138f735035335ab4b76793da2da in / 
# Tue, 26 Jun 2018 21:25:25 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 01:15:28 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 01:15:28 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 01:15:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 01:15:50 GMT
ENV REDIS_VERSION=3.2.12
# Wed, 27 Jun 2018 01:15:50 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Wed, 27 Jun 2018 01:15:50 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Wed, 27 Jun 2018 01:16:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 01:17:36 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 01:17:37 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 01:17:37 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 01:17:37 GMT
WORKDIR /data
# Wed, 27 Jun 2018 01:17:37 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 27 Jun 2018 01:17:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 01:17:38 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 01:17:38 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:683abbb4ea60e108164f1d351e7bcf13daf45941137d800086447874df05f48e`  
		Last Modified: Tue, 26 Jun 2018 21:37:45 GMT  
		Size: 22.5 MB (22496975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:259238e792d86e23dab13fbcfcadf090333328ad9f80894544316437461f0d1b`  
		Last Modified: Wed, 27 Jun 2018 01:19:50 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78399601c709f0e252523e534db03152a1b3f017c9f7c756d68791ef07bc5d0b`  
		Last Modified: Wed, 27 Jun 2018 01:19:50 GMT  
		Size: 941.5 KB (941493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df8d7605be035a7938860f48bcaa2c99b907d8e460a6bfcc325920ef157209fe`  
		Last Modified: Wed, 27 Jun 2018 01:20:28 GMT  
		Size: 4.8 MB (4848288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e626e6a2fcd5fd68549304b9ad7a801048152a1ab8e094e1dc3e983343aa3169`  
		Last Modified: Wed, 27 Jun 2018 01:20:28 GMT  
		Size: 5.7 MB (5656718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29647052de19b35b433096895540d2976876830c276418c588eb89c5626431f2`  
		Last Modified: Wed, 27 Jun 2018 01:20:26 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:466eab12f8ebb5702e766960ec6aa9ec306926b63178253f8177d13dbfcbbd9a`  
		Last Modified: Wed, 27 Jun 2018 01:20:26 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2-alpine`

```console
$ docker pull redis@sha256:04b13d5961e705438300dee5a71a41ab0c2bf36947a56e8bf8679d6a16036812
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

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

### `redis:3.2-alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:481800c2f93163c801e957224c0810ce05c86bfc486eb8300dc81a5d262abb17
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7701090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:386ca70c8fb35a195d1bdf360ac8025d4bc9ca180841b48e593fb5a42d404aa2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:45 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Fri, 01 Dec 2017 18:41:45 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:46 GMT
CMD ["/bin/sh"]
# Wed, 16 May 2018 19:39:01 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 16 May 2018 19:39:06 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 16 Jun 2018 07:49:26 GMT
ENV REDIS_VERSION=3.2.12
# Sat, 16 Jun 2018 07:49:26 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Sat, 16 Jun 2018 07:49:27 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Sat, 16 Jun 2018 07:54:16 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 16 Jun 2018 07:54:21 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 16 Jun 2018 07:54:22 GMT
VOLUME [/data]
# Sat, 16 Jun 2018 07:54:23 GMT
WORKDIR /data
# Sat, 16 Jun 2018 07:54:24 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 16 Jun 2018 07:54:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 16 Jun 2018 07:54:26 GMT
EXPOSE 6379/tcp
# Sat, 16 Jun 2018 07:54:27 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bf7d76c39215a547858ef9260990b9b80c0e679bb2f6ceef942d7b6d0eeec3`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29b2b09993d378af670de0b63030a6a3e611e97529dfdbbc5aa5228af010f6c4`  
		Last Modified: Fri, 18 May 2018 07:58:12 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66f37a02127b76c7deae98d4551daa47405376826362bb20a76575f6710ccb2b`  
		Last Modified: Fri, 18 May 2018 07:58:12 GMT  
		Size: 8.7 KB (8716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b988ab6eeca49d5264e3ae7647913cf1958060b9078d0366376458a38df4425d`  
		Last Modified: Sat, 16 Jun 2018 07:58:50 GMT  
		Size: 5.7 MB (5652082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b81744a173ad845664cb5a345c68e94c5011e719f81f2e3dfc7daa93bdce99`  
		Last Modified: Sat, 16 Jun 2018 07:58:43 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e61842d356237dfe3e12b4ed5837f06da455a10dff18d7da304cea873bc6b96`  
		Last Modified: Sat, 16 Jun 2018 07:58:42 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2-alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:266e15f97068deae731ceafc97c8bded58b75e0b458c1f0aa6f9820f65d4d3fe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7757963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f08796bc5e55b549edabf395c145f6e3d3966243d92803e92d98b853dc3ecc2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Wed, 24 Jan 2018 13:25:46 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 24 Jan 2018 13:25:50 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 16 Jun 2018 09:55:43 GMT
ENV REDIS_VERSION=3.2.12
# Sat, 16 Jun 2018 09:55:43 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Sat, 16 Jun 2018 09:55:44 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Sat, 16 Jun 2018 09:56:17 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 16 Jun 2018 09:56:19 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 16 Jun 2018 09:56:20 GMT
VOLUME [/data]
# Sat, 16 Jun 2018 09:56:21 GMT
WORKDIR /data
# Sat, 16 Jun 2018 09:56:22 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 16 Jun 2018 09:56:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 16 Jun 2018 09:56:24 GMT
EXPOSE 6379/tcp
# Sat, 16 Jun 2018 09:56:24 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec42e4d70bd6b5d14ceb60d165f35c9d1348c35d3a566bb230cec599a0ffd64`  
		Last Modified: Wed, 24 Jan 2018 13:28:23 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:555bf2ac2a80a9414fecc99d0e2e659cf9cc43ddcf785a45cf07b2fbcbf0f7b4`  
		Last Modified: Wed, 24 Jan 2018 13:28:23 GMT  
		Size: 8.7 KB (8656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b470de0c790a969f35adbecceab104288ecbcf3cf43bbd04ed75acf8508e2e7`  
		Last Modified: Sat, 16 Jun 2018 10:00:15 GMT  
		Size: 5.8 MB (5758526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:337ac5ffaebf2e97c1b1427a6f64b279775f836387477dd12ae2d07d7198f5b9`  
		Last Modified: Sat, 16 Jun 2018 10:00:13 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f393e0aaf9f28f0cd1b619e8bc60439602334bbc691d022ddd05edfa1210986a`  
		Last Modified: Sat, 16 Jun 2018 10:00:13 GMT  
		Size: 398.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2-alpine` - linux; 386

```console
$ docker pull redis@sha256:12959d69c2a1554e95b2c6c4487ff66a18f957740fe4b70a124dd019a6071fa8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7715001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25aa1f3ac283ec89da172da3a79fa1a895f9b405bd61bed57ba871359944a74d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 01 Jun 2018 06:57:26 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Jun 2018 06:57:26 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Jun 2018 06:57:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Jun 2018 15:57:41 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 01 Jun 2018 15:57:42 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 16 Jun 2018 10:40:41 GMT
ENV REDIS_VERSION=3.2.12
# Sat, 16 Jun 2018 10:40:41 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Sat, 16 Jun 2018 10:40:41 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Sat, 16 Jun 2018 10:41:12 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 16 Jun 2018 10:41:13 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 16 Jun 2018 10:41:13 GMT
VOLUME [/data]
# Sat, 16 Jun 2018 10:41:13 GMT
WORKDIR /data
# Sat, 16 Jun 2018 10:41:18 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 16 Jun 2018 10:41:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 16 Jun 2018 10:41:19 GMT
EXPOSE 6379/tcp
# Sat, 16 Jun 2018 10:41:19 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:061a9db3c9e4f3bc32618a5f1a7e2b8aefb20fcc48f8be709bc7f7eabe61d003`  
		Last Modified: Fri, 01 Jun 2018 06:57:51 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32c5c681510e095d5b56ec0b42770c915f177d63e694ce6b59a6081187bb4e38`  
		Last Modified: Fri, 01 Jun 2018 16:02:37 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c69d5dac586a34e49b9e78377c5b5ccf2dab95a9383f555ee0bf7e10be877000`  
		Last Modified: Fri, 01 Jun 2018 16:02:37 GMT  
		Size: 8.7 KB (8653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eff4cf92275ce1cb1f8131bfb7143f1bc399cf0bdb4026850cde8226916cc497`  
		Last Modified: Sat, 16 Jun 2018 10:45:06 GMT  
		Size: 5.6 MB (5578203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99a05d48b745cb70bddc990aed31a209c3fc0c93dcd8ea87375ac8bb3f9520e5`  
		Last Modified: Sat, 16 Jun 2018 10:45:04 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:656bf6726d46b902fce2bfc2417f67d423ac1ff3a42223f4f98da7ec44967e7f`  
		Last Modified: Sat, 16 Jun 2018 10:45:03 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2-alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:951b980304c5e457fc89f02ac5a21de4f3396033384683f6ddf970007346b96a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.1 MB (8095514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:372b071a58ae55444d84ecf1e6522791955e12cbb9a881b681e1f16e098cb9c6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Wed, 24 Jan 2018 06:35:28 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 24 Jan 2018 06:35:34 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 16 Jun 2018 08:19:57 GMT
ENV REDIS_VERSION=3.2.12
# Sat, 16 Jun 2018 08:19:57 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Sat, 16 Jun 2018 08:19:58 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Sat, 16 Jun 2018 08:20:24 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 16 Jun 2018 08:20:29 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 16 Jun 2018 08:20:32 GMT
VOLUME [/data]
# Sat, 16 Jun 2018 08:20:33 GMT
WORKDIR /data
# Sat, 16 Jun 2018 08:20:34 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 16 Jun 2018 08:20:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 16 Jun 2018 08:20:39 GMT
EXPOSE 6379/tcp
# Sat, 16 Jun 2018 08:20:40 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:802132ccdaaf1e42c991c0ad2b274ee46d7d02210e23a3bc630c772fbdd533c2`  
		Last Modified: Wed, 24 Jan 2018 06:37:26 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3edb35368beebf064881c4a2efa343effc2775c4bb6e9121e8426990bc75df12`  
		Last Modified: Wed, 24 Jan 2018 06:37:26 GMT  
		Size: 9.3 KB (9269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f7ca6aeb76b548827b2df318b4e7b32ecbe398e2bc1e0cd8b454d17bf82d2ac`  
		Last Modified: Sat, 16 Jun 2018 08:24:39 GMT  
		Size: 6.0 MB (6002782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94aa9ccffc747d08750fe0cda963eaf4f928a5d7914b61a5c260cf5a9d5bfd81`  
		Last Modified: Sat, 16 Jun 2018 08:24:37 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2357958d6cd10f2bd60489d885499bd5070dd58c79ac3162446321cc7a3a8c01`  
		Last Modified: Sat, 16 Jun 2018 08:24:37 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2-alpine` - linux; s390x

```console
$ docker pull redis@sha256:2b27a0a878ae07a5a698a6dbe3041afa3908e2df98e879dcf399f53c12f61732
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.2 MB (8244704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:feddc7428cb655ea447036e864c00ac471342a0d2b1ff5c54a5ff01c4e9ffe25`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Wed, 24 Jan 2018 06:24:30 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 24 Jan 2018 06:24:33 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 16 Jun 2018 11:45:26 GMT
ENV REDIS_VERSION=3.2.12
# Sat, 16 Jun 2018 11:45:26 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Sat, 16 Jun 2018 11:45:26 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Sat, 16 Jun 2018 11:45:46 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 16 Jun 2018 11:45:47 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 16 Jun 2018 11:45:47 GMT
VOLUME [/data]
# Sat, 16 Jun 2018 11:45:47 GMT
WORKDIR /data
# Sat, 16 Jun 2018 11:45:47 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 16 Jun 2018 11:45:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 16 Jun 2018 11:45:48 GMT
EXPOSE 6379/tcp
# Sat, 16 Jun 2018 11:45:48 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:11e7bc85614a236b32043d147930fd2bc9055af8642fe30e5e56142590572b0e`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 2.2 MB (2185231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f825cbb729285f1fe2a0cd1d4d36897e3fe2191c5ee044ce11a5d301dc64a34`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:167640baaae6b19b666d28c35de1dde729eaca22986531c0f3b3dd6af5bbc469`  
		Last Modified: Wed, 24 Jan 2018 06:25:46 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dab4f89cc8856e8d43a9cc8e3ba6670d31906a9a3409fdf2f59ad893cda37c8`  
		Last Modified: Wed, 24 Jan 2018 06:25:46 GMT  
		Size: 8.9 KB (8944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee20fb223e03f8387aefad2c97541b4152445acc52125010b85618c815dd771c`  
		Last Modified: Sat, 16 Jun 2018 11:47:23 GMT  
		Size: 6.0 MB (6048600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bde0554da80f0de0662d48647b71ecd473669b8d61b5314956f569cbf832be5d`  
		Last Modified: Sat, 16 Jun 2018 11:47:22 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:924e13a4743effe4208999eb5cf1872017454497b7833ec1d61078324266300d`  
		Last Modified: Sat, 16 Jun 2018 11:47:22 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:32bit`

```console
$ docker pull redis@sha256:4eb0d482ceab8ec980192c89adfa2e3d1480454e93edb393ac16518b197b33d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:32bit` - linux; amd64

```console
$ docker pull redis@sha256:d9c0c157796eddf77aa2e549a80dda1d529ef50067d19836c147086d5daee87d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.5 MB (36540346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f1e64722b4767a7ea45e151d0837935a91951ff9399773aa2bee90f9b4eaab4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 26 Jun 2018 21:25:25 GMT
ADD file:28fbc9fd012eef72780d1c75fc2b0969d13f0138f735035335ab4b76793da2da in / 
# Tue, 26 Jun 2018 21:25:25 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 01:15:28 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 01:15:28 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 01:15:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 01:17:51 GMT
ENV REDIS_VERSION=4.0.10
# Wed, 27 Jun 2018 01:17:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Wed, 27 Jun 2018 01:17:51 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Wed, 27 Jun 2018 01:18:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 01:19:21 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 01:19:22 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 01:19:23 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 01:19:23 GMT
WORKDIR /data
# Wed, 27 Jun 2018 01:19:23 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 27 Jun 2018 01:19:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 01:19:24 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 01:19:24 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:683abbb4ea60e108164f1d351e7bcf13daf45941137d800086447874df05f48e`  
		Last Modified: Tue, 26 Jun 2018 21:37:45 GMT  
		Size: 22.5 MB (22496975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:259238e792d86e23dab13fbcfcadf090333328ad9f80894544316437461f0d1b`  
		Last Modified: Wed, 27 Jun 2018 01:19:50 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78399601c709f0e252523e534db03152a1b3f017c9f7c756d68791ef07bc5d0b`  
		Last Modified: Wed, 27 Jun 2018 01:19:50 GMT  
		Size: 941.5 KB (941493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70936999cfd008308909792dea4e16280e691dabcce0d6e0b3aefc99878e0db4`  
		Last Modified: Wed, 27 Jun 2018 01:21:48 GMT  
		Size: 4.8 MB (4848269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4bb8b6edf0ed18495d476d17e5020e68d919ddafe18f4438df4bcc5515f5031`  
		Last Modified: Wed, 27 Jun 2018 01:21:49 GMT  
		Size: 8.3 MB (8251365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07090b435cd512f6e613f392efeb880d03c4df7ea10e7c9054cca67ceab973c3`  
		Last Modified: Wed, 27 Jun 2018 01:21:47 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4a4e18b25e6f5fafcd310251773b647dca71b6a2d21b9bd572d4f9118accd6e`  
		Last Modified: Wed, 27 Jun 2018 01:21:47 GMT  
		Size: 407.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3-32bit`

```console
$ docker pull redis@sha256:45222a40db8c568c6e8c7138a896586d14ddc554d09841a3a43027242593fa4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:3-32bit` - linux; amd64

```console
$ docker pull redis@sha256:df44bdb995b07647d0b4223803cf166219026bbf0b052cc89782dd3fc25eb312
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.9 MB (33945720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e950f3fdb7e3bca92520b2793e66d8c7dde627f17002895d774f9122a0841f64`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 26 Jun 2018 21:25:25 GMT
ADD file:28fbc9fd012eef72780d1c75fc2b0969d13f0138f735035335ab4b76793da2da in / 
# Tue, 26 Jun 2018 21:25:25 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 01:15:28 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 01:15:28 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 01:15:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 01:15:50 GMT
ENV REDIS_VERSION=3.2.12
# Wed, 27 Jun 2018 01:15:50 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Wed, 27 Jun 2018 01:15:50 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Wed, 27 Jun 2018 01:16:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 01:17:36 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 01:17:37 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 01:17:37 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 01:17:37 GMT
WORKDIR /data
# Wed, 27 Jun 2018 01:17:37 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 27 Jun 2018 01:17:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 01:17:38 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 01:17:38 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:683abbb4ea60e108164f1d351e7bcf13daf45941137d800086447874df05f48e`  
		Last Modified: Tue, 26 Jun 2018 21:37:45 GMT  
		Size: 22.5 MB (22496975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:259238e792d86e23dab13fbcfcadf090333328ad9f80894544316437461f0d1b`  
		Last Modified: Wed, 27 Jun 2018 01:19:50 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78399601c709f0e252523e534db03152a1b3f017c9f7c756d68791ef07bc5d0b`  
		Last Modified: Wed, 27 Jun 2018 01:19:50 GMT  
		Size: 941.5 KB (941493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df8d7605be035a7938860f48bcaa2c99b907d8e460a6bfcc325920ef157209fe`  
		Last Modified: Wed, 27 Jun 2018 01:20:28 GMT  
		Size: 4.8 MB (4848288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e626e6a2fcd5fd68549304b9ad7a801048152a1ab8e094e1dc3e983343aa3169`  
		Last Modified: Wed, 27 Jun 2018 01:20:28 GMT  
		Size: 5.7 MB (5656718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29647052de19b35b433096895540d2976876830c276418c588eb89c5626431f2`  
		Last Modified: Wed, 27 Jun 2018 01:20:26 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:466eab12f8ebb5702e766960ec6aa9ec306926b63178253f8177d13dbfcbbd9a`  
		Last Modified: Wed, 27 Jun 2018 01:20:26 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3-alpine`

```console
$ docker pull redis@sha256:04b13d5961e705438300dee5a71a41ab0c2bf36947a56e8bf8679d6a16036812
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

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

### `redis:3-alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:481800c2f93163c801e957224c0810ce05c86bfc486eb8300dc81a5d262abb17
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7701090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:386ca70c8fb35a195d1bdf360ac8025d4bc9ca180841b48e593fb5a42d404aa2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:45 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Fri, 01 Dec 2017 18:41:45 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:46 GMT
CMD ["/bin/sh"]
# Wed, 16 May 2018 19:39:01 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 16 May 2018 19:39:06 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 16 Jun 2018 07:49:26 GMT
ENV REDIS_VERSION=3.2.12
# Sat, 16 Jun 2018 07:49:26 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Sat, 16 Jun 2018 07:49:27 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Sat, 16 Jun 2018 07:54:16 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 16 Jun 2018 07:54:21 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 16 Jun 2018 07:54:22 GMT
VOLUME [/data]
# Sat, 16 Jun 2018 07:54:23 GMT
WORKDIR /data
# Sat, 16 Jun 2018 07:54:24 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 16 Jun 2018 07:54:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 16 Jun 2018 07:54:26 GMT
EXPOSE 6379/tcp
# Sat, 16 Jun 2018 07:54:27 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bf7d76c39215a547858ef9260990b9b80c0e679bb2f6ceef942d7b6d0eeec3`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29b2b09993d378af670de0b63030a6a3e611e97529dfdbbc5aa5228af010f6c4`  
		Last Modified: Fri, 18 May 2018 07:58:12 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66f37a02127b76c7deae98d4551daa47405376826362bb20a76575f6710ccb2b`  
		Last Modified: Fri, 18 May 2018 07:58:12 GMT  
		Size: 8.7 KB (8716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b988ab6eeca49d5264e3ae7647913cf1958060b9078d0366376458a38df4425d`  
		Last Modified: Sat, 16 Jun 2018 07:58:50 GMT  
		Size: 5.7 MB (5652082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b81744a173ad845664cb5a345c68e94c5011e719f81f2e3dfc7daa93bdce99`  
		Last Modified: Sat, 16 Jun 2018 07:58:43 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e61842d356237dfe3e12b4ed5837f06da455a10dff18d7da304cea873bc6b96`  
		Last Modified: Sat, 16 Jun 2018 07:58:42 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3-alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:266e15f97068deae731ceafc97c8bded58b75e0b458c1f0aa6f9820f65d4d3fe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7757963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f08796bc5e55b549edabf395c145f6e3d3966243d92803e92d98b853dc3ecc2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Wed, 24 Jan 2018 13:25:46 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 24 Jan 2018 13:25:50 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 16 Jun 2018 09:55:43 GMT
ENV REDIS_VERSION=3.2.12
# Sat, 16 Jun 2018 09:55:43 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Sat, 16 Jun 2018 09:55:44 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Sat, 16 Jun 2018 09:56:17 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 16 Jun 2018 09:56:19 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 16 Jun 2018 09:56:20 GMT
VOLUME [/data]
# Sat, 16 Jun 2018 09:56:21 GMT
WORKDIR /data
# Sat, 16 Jun 2018 09:56:22 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 16 Jun 2018 09:56:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 16 Jun 2018 09:56:24 GMT
EXPOSE 6379/tcp
# Sat, 16 Jun 2018 09:56:24 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec42e4d70bd6b5d14ceb60d165f35c9d1348c35d3a566bb230cec599a0ffd64`  
		Last Modified: Wed, 24 Jan 2018 13:28:23 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:555bf2ac2a80a9414fecc99d0e2e659cf9cc43ddcf785a45cf07b2fbcbf0f7b4`  
		Last Modified: Wed, 24 Jan 2018 13:28:23 GMT  
		Size: 8.7 KB (8656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b470de0c790a969f35adbecceab104288ecbcf3cf43bbd04ed75acf8508e2e7`  
		Last Modified: Sat, 16 Jun 2018 10:00:15 GMT  
		Size: 5.8 MB (5758526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:337ac5ffaebf2e97c1b1427a6f64b279775f836387477dd12ae2d07d7198f5b9`  
		Last Modified: Sat, 16 Jun 2018 10:00:13 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f393e0aaf9f28f0cd1b619e8bc60439602334bbc691d022ddd05edfa1210986a`  
		Last Modified: Sat, 16 Jun 2018 10:00:13 GMT  
		Size: 398.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3-alpine` - linux; 386

```console
$ docker pull redis@sha256:12959d69c2a1554e95b2c6c4487ff66a18f957740fe4b70a124dd019a6071fa8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7715001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25aa1f3ac283ec89da172da3a79fa1a895f9b405bd61bed57ba871359944a74d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 01 Jun 2018 06:57:26 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Jun 2018 06:57:26 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Jun 2018 06:57:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Jun 2018 15:57:41 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 01 Jun 2018 15:57:42 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 16 Jun 2018 10:40:41 GMT
ENV REDIS_VERSION=3.2.12
# Sat, 16 Jun 2018 10:40:41 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Sat, 16 Jun 2018 10:40:41 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Sat, 16 Jun 2018 10:41:12 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 16 Jun 2018 10:41:13 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 16 Jun 2018 10:41:13 GMT
VOLUME [/data]
# Sat, 16 Jun 2018 10:41:13 GMT
WORKDIR /data
# Sat, 16 Jun 2018 10:41:18 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 16 Jun 2018 10:41:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 16 Jun 2018 10:41:19 GMT
EXPOSE 6379/tcp
# Sat, 16 Jun 2018 10:41:19 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:061a9db3c9e4f3bc32618a5f1a7e2b8aefb20fcc48f8be709bc7f7eabe61d003`  
		Last Modified: Fri, 01 Jun 2018 06:57:51 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32c5c681510e095d5b56ec0b42770c915f177d63e694ce6b59a6081187bb4e38`  
		Last Modified: Fri, 01 Jun 2018 16:02:37 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c69d5dac586a34e49b9e78377c5b5ccf2dab95a9383f555ee0bf7e10be877000`  
		Last Modified: Fri, 01 Jun 2018 16:02:37 GMT  
		Size: 8.7 KB (8653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eff4cf92275ce1cb1f8131bfb7143f1bc399cf0bdb4026850cde8226916cc497`  
		Last Modified: Sat, 16 Jun 2018 10:45:06 GMT  
		Size: 5.6 MB (5578203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99a05d48b745cb70bddc990aed31a209c3fc0c93dcd8ea87375ac8bb3f9520e5`  
		Last Modified: Sat, 16 Jun 2018 10:45:04 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:656bf6726d46b902fce2bfc2417f67d423ac1ff3a42223f4f98da7ec44967e7f`  
		Last Modified: Sat, 16 Jun 2018 10:45:03 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3-alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:951b980304c5e457fc89f02ac5a21de4f3396033384683f6ddf970007346b96a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.1 MB (8095514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:372b071a58ae55444d84ecf1e6522791955e12cbb9a881b681e1f16e098cb9c6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Wed, 24 Jan 2018 06:35:28 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 24 Jan 2018 06:35:34 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 16 Jun 2018 08:19:57 GMT
ENV REDIS_VERSION=3.2.12
# Sat, 16 Jun 2018 08:19:57 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Sat, 16 Jun 2018 08:19:58 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Sat, 16 Jun 2018 08:20:24 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 16 Jun 2018 08:20:29 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 16 Jun 2018 08:20:32 GMT
VOLUME [/data]
# Sat, 16 Jun 2018 08:20:33 GMT
WORKDIR /data
# Sat, 16 Jun 2018 08:20:34 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 16 Jun 2018 08:20:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 16 Jun 2018 08:20:39 GMT
EXPOSE 6379/tcp
# Sat, 16 Jun 2018 08:20:40 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:802132ccdaaf1e42c991c0ad2b274ee46d7d02210e23a3bc630c772fbdd533c2`  
		Last Modified: Wed, 24 Jan 2018 06:37:26 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3edb35368beebf064881c4a2efa343effc2775c4bb6e9121e8426990bc75df12`  
		Last Modified: Wed, 24 Jan 2018 06:37:26 GMT  
		Size: 9.3 KB (9269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f7ca6aeb76b548827b2df318b4e7b32ecbe398e2bc1e0cd8b454d17bf82d2ac`  
		Last Modified: Sat, 16 Jun 2018 08:24:39 GMT  
		Size: 6.0 MB (6002782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94aa9ccffc747d08750fe0cda963eaf4f928a5d7914b61a5c260cf5a9d5bfd81`  
		Last Modified: Sat, 16 Jun 2018 08:24:37 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2357958d6cd10f2bd60489d885499bd5070dd58c79ac3162446321cc7a3a8c01`  
		Last Modified: Sat, 16 Jun 2018 08:24:37 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3-alpine` - linux; s390x

```console
$ docker pull redis@sha256:2b27a0a878ae07a5a698a6dbe3041afa3908e2df98e879dcf399f53c12f61732
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.2 MB (8244704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:feddc7428cb655ea447036e864c00ac471342a0d2b1ff5c54a5ff01c4e9ffe25`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Wed, 24 Jan 2018 06:24:30 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 24 Jan 2018 06:24:33 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 16 Jun 2018 11:45:26 GMT
ENV REDIS_VERSION=3.2.12
# Sat, 16 Jun 2018 11:45:26 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Sat, 16 Jun 2018 11:45:26 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Sat, 16 Jun 2018 11:45:46 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 16 Jun 2018 11:45:47 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 16 Jun 2018 11:45:47 GMT
VOLUME [/data]
# Sat, 16 Jun 2018 11:45:47 GMT
WORKDIR /data
# Sat, 16 Jun 2018 11:45:47 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 16 Jun 2018 11:45:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 16 Jun 2018 11:45:48 GMT
EXPOSE 6379/tcp
# Sat, 16 Jun 2018 11:45:48 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:11e7bc85614a236b32043d147930fd2bc9055af8642fe30e5e56142590572b0e`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 2.2 MB (2185231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f825cbb729285f1fe2a0cd1d4d36897e3fe2191c5ee044ce11a5d301dc64a34`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:167640baaae6b19b666d28c35de1dde729eaca22986531c0f3b3dd6af5bbc469`  
		Last Modified: Wed, 24 Jan 2018 06:25:46 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dab4f89cc8856e8d43a9cc8e3ba6670d31906a9a3409fdf2f59ad893cda37c8`  
		Last Modified: Wed, 24 Jan 2018 06:25:46 GMT  
		Size: 8.9 KB (8944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee20fb223e03f8387aefad2c97541b4152445acc52125010b85618c815dd771c`  
		Last Modified: Sat, 16 Jun 2018 11:47:23 GMT  
		Size: 6.0 MB (6048600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bde0554da80f0de0662d48647b71ecd473669b8d61b5314956f569cbf832be5d`  
		Last Modified: Sat, 16 Jun 2018 11:47:22 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:924e13a4743effe4208999eb5cf1872017454497b7833ec1d61078324266300d`  
		Last Modified: Sat, 16 Jun 2018 11:47:22 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4`

```console
$ docker pull redis@sha256:5534b92530acc653f0721ebfa14f31bc718f68bf9070cbba25bb00bc7aacfabb
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
$ docker pull redis@sha256:6213e498c76eb159d959687c2beb9a77d2ce7b080a38dbd19130a3ad24a6a5c3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32129762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71a81cb279e350589fa3b7e5df7c9d1e296f7d84f54ff2989d77ab9904e2d413`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 26 Jun 2018 21:25:25 GMT
ADD file:28fbc9fd012eef72780d1c75fc2b0969d13f0138f735035335ab4b76793da2da in / 
# Tue, 26 Jun 2018 21:25:25 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 01:15:28 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 01:15:28 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 01:15:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 01:17:51 GMT
ENV REDIS_VERSION=4.0.10
# Wed, 27 Jun 2018 01:17:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Wed, 27 Jun 2018 01:17:51 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Wed, 27 Jun 2018 01:18:24 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 01:18:25 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 01:18:25 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 01:18:25 GMT
WORKDIR /data
# Wed, 27 Jun 2018 01:18:26 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 27 Jun 2018 01:18:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 01:18:26 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 01:18:26 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:683abbb4ea60e108164f1d351e7bcf13daf45941137d800086447874df05f48e`  
		Last Modified: Tue, 26 Jun 2018 21:37:45 GMT  
		Size: 22.5 MB (22496975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:259238e792d86e23dab13fbcfcadf090333328ad9f80894544316437461f0d1b`  
		Last Modified: Wed, 27 Jun 2018 01:19:50 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78399601c709f0e252523e534db03152a1b3f017c9f7c756d68791ef07bc5d0b`  
		Last Modified: Wed, 27 Jun 2018 01:19:50 GMT  
		Size: 941.5 KB (941493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f397da4746012e36f5550d3eb830d81a522a1910417d6b3e1bd1ba046dfb8133`  
		Last Modified: Wed, 27 Jun 2018 01:21:05 GMT  
		Size: 8.7 MB (8689056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c57de4edc390ed763d75e015294194b9147207a5ad77b6a3d01cd7ee22b0b010`  
		Last Modified: Wed, 27 Jun 2018 01:21:00 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2ea05c9d9a1b925610552e146549112aa893634e6a25ad18fd0cc295aec1cac`  
		Last Modified: Wed, 27 Jun 2018 01:21:01 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; arm variant v5

```console
$ docker pull redis@sha256:ae2e050041dd65ab9b2d865075a19a2f180b56ead7deb06bf3ad355b4d54e20a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30525182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a89f66ecf3802d9814b508bb67aabe8047f5eeafaa59622075d2dbcb77082467`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Jun 2018 08:54:01 GMT
ADD file:f1e0d5c56a23a29918cb3b7691cee8f22620b4c54ee70a0dbb4b8151b2be3355 in / 
# Wed, 27 Jun 2018 08:54:02 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 11:10:45 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 11:10:46 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 11:11:07 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 11:12:04 GMT
ENV REDIS_VERSION=4.0.10
# Wed, 27 Jun 2018 11:12:04 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Wed, 27 Jun 2018 11:12:04 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Wed, 27 Jun 2018 11:12:40 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 11:12:41 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 11:12:42 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 11:12:42 GMT
WORKDIR /data
# Wed, 27 Jun 2018 11:12:43 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 27 Jun 2018 11:12:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 11:12:43 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 11:12:43 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:151bc45ca30d5401779cd71c1dd194a7e6f64f1214de3f4f025bc53daf823199`  
		Last Modified: Wed, 27 Jun 2018 09:03:17 GMT  
		Size: 21.2 MB (21177290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cad78a8c45448598f4df7ef055754e60f47534ed63db112af0065ac060c1a769`  
		Last Modified: Wed, 27 Jun 2018 11:12:56 GMT  
		Size: 1.7 KB (1730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a2318299a11dbd69da76cb547cf2a4343d94776bad7f52b516c31def158a9d`  
		Last Modified: Wed, 27 Jun 2018 11:12:57 GMT  
		Size: 931.3 KB (931255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b8cdc4f1fb5c128e89e3c263a97396fb5695e75bb81635634be845012f49379`  
		Last Modified: Wed, 27 Jun 2018 11:13:20 GMT  
		Size: 8.4 MB (8414371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:428e8e3e15293b2532db9fc879d8491bf27c64e9a2af90047efc7cda91d9f985`  
		Last Modified: Wed, 27 Jun 2018 11:13:15 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e55e4006aa334f1b66456ca51b44cdd9236f72a60ecd07d4367c1384e006f5ae`  
		Last Modified: Wed, 27 Jun 2018 11:13:15 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; arm variant v7

```console
$ docker pull redis@sha256:79be1240556b1926491ec2604a53f2d857064089435e5fbcad7bc36454d9ef5e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28387206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:352b5bb9108b7b52dd7d314959f600e8f60f95de85972cca6b8d7bf8e9056316`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Jun 2018 12:03:51 GMT
ADD file:d05cf75761bffd94ce908a55d38fc4966c194aa14492730dfdc1e52c3ddd0892 in / 
# Wed, 27 Jun 2018 12:03:54 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 14:18:29 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 14:18:29 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 14:18:48 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 14:19:36 GMT
ENV REDIS_VERSION=4.0.10
# Wed, 27 Jun 2018 14:19:36 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Wed, 27 Jun 2018 14:19:37 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Wed, 27 Jun 2018 14:20:08 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 14:20:09 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 14:20:09 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 14:20:10 GMT
WORKDIR /data
# Wed, 27 Jun 2018 14:20:10 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 27 Jun 2018 14:20:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 14:20:11 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 14:20:12 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:a779870b6875e97ad1448eaf9befb46011e0fd10ef5014f59d63f624b51de26f`  
		Last Modified: Wed, 27 Jun 2018 12:13:30 GMT  
		Size: 19.3 MB (19286273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c5c410558b6543c5785cecbccb032fd4982038a92ba3b8bb4d5ab8d17e6bed7`  
		Last Modified: Wed, 27 Jun 2018 14:20:30 GMT  
		Size: 1.7 KB (1730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48b858312be07ebaa41456fe36334924f5e53a6a705c42b89b61f26bc6ebb357`  
		Last Modified: Wed, 27 Jun 2018 14:20:30 GMT  
		Size: 915.9 KB (915893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ad0ec942ee79662631a351970ad43c032fcaff13d062dd6ac1db1a09e30bb36`  
		Last Modified: Wed, 27 Jun 2018 14:20:55 GMT  
		Size: 8.2 MB (8182774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7a7123e29129e6aeda6a18f84827b644f69b4c2fa35625fc7db2d71ec8e79b2`  
		Last Modified: Wed, 27 Jun 2018 14:20:52 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f333780152ff38ae2561f35dc050d80099e7bc5772967302e6b2cec435838307`  
		Last Modified: Wed, 27 Jun 2018 14:20:53 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:f5eaa99907a1313b2dbaf92b69165bb246d4cff7324ed394137d2abddeb0aa93
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.7 MB (29748623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e6566de3b84c40644e39f56d7084f886d9dcf315794dc65755a0093a91000fc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:44 GMT
ADD file:b8a1907d99b0b9f75b52f8e25d5c346caf0244b325919c02090ab1e05ba1cf18 in / 
# Wed, 27 Jun 2018 08:47:45 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 13:29:17 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 13:29:18 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 13:30:37 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 13:32:58 GMT
ENV REDIS_VERSION=4.0.10
# Wed, 27 Jun 2018 13:32:58 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Wed, 27 Jun 2018 13:32:59 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Wed, 27 Jun 2018 13:34:48 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 13:34:50 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 13:34:50 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 13:34:51 GMT
WORKDIR /data
# Wed, 27 Jun 2018 13:34:52 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 27 Jun 2018 13:34:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 13:34:55 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 13:34:56 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:153362478bb06475bede3bd6da2ff08a91dd9fc6f245c70bb5a033b65f38ac14`  
		Last Modified: Wed, 27 Jun 2018 08:58:51 GMT  
		Size: 20.3 MB (20348077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3df18432afbb66c603676db6e777b9e8385de68f08a19d034af0da3a1858e1f7`  
		Last Modified: Wed, 27 Jun 2018 13:35:34 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a80a3007c2c23eea873ed4902940ef771b78a7d742c98741d71b816d77682d9`  
		Last Modified: Wed, 27 Jun 2018 13:35:35 GMT  
		Size: 908.2 KB (908185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fdaf9673fc850e17dd5e0510013da65b4afb5cde8b68a302f7f9123ccf336f3`  
		Last Modified: Wed, 27 Jun 2018 13:36:15 GMT  
		Size: 8.5 MB (8490122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9012a9c945a3a860f7436f1be1b625e79f816b8e10c4aeec24eb53ae30fcc66`  
		Last Modified: Wed, 27 Jun 2018 13:36:11 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1419aa21e4a6179df1a4d2cb6cd6e35999b1ea30cfabc04336050ad6cf6019a1`  
		Last Modified: Wed, 27 Jun 2018 13:36:11 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; 386

```console
$ docker pull redis@sha256:af8d14e99f87911876473dfc1548cb97d59a0358c70ff2d671abbc07e4e4682f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32309664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4a9d5b1ae1992296afe04e4f6ec74523e18eb061440bbca0fd3d2388762054d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Jun 2018 10:46:39 GMT
ADD file:e1777a98c0e3aaf9cb1f4116550001b0eed2fe669b2c6449c93b76cccc92e1a2 in / 
# Wed, 27 Jun 2018 10:46:42 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 13:03:38 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 13:03:38 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 13:04:04 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 13:04:56 GMT
ENV REDIS_VERSION=4.0.10
# Wed, 27 Jun 2018 13:04:56 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Wed, 27 Jun 2018 13:04:56 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Wed, 27 Jun 2018 13:05:39 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 13:05:40 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 13:05:40 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 13:05:41 GMT
WORKDIR /data
# Wed, 27 Jun 2018 13:05:48 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 27 Jun 2018 13:05:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 13:05:49 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 13:05:49 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:7de5eb46c52dbee10629f5dc34d9b2445893031ae37083572734bc4f6577757d`  
		Last Modified: Wed, 27 Jun 2018 11:11:02 GMT  
		Size: 23.1 MB (23140103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8df6822d7184835aefd26151cfc1ba536407dc7e8d1f959bc1360b882e7f140`  
		Last Modified: Wed, 27 Jun 2018 13:06:10 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:036521fcd75cdac216f9c6c2c0a4e7c7512653de681714198cfddbf20503ea97`  
		Last Modified: Wed, 27 Jun 2018 13:06:10 GMT  
		Size: 920.3 KB (920308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4de5fa9d11a929e4178ba975855cdb5ac80022cf89332add88ca1dbacbb56f74`  
		Last Modified: Wed, 27 Jun 2018 13:06:59 GMT  
		Size: 8.2 MB (8247020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2400940e500127e1b5fcb395451e501b1735ad9aec2c038aada177eaa2ecc2f`  
		Last Modified: Wed, 27 Jun 2018 13:06:56 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:025c441b992eb77d52e8625819743cdf61a9c7dcabae59aa9e8461f973b6928a`  
		Last Modified: Wed, 27 Jun 2018 13:06:56 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; ppc64le

```console
$ docker pull redis@sha256:ef2316efd8187d005952cd93953d5fe33ae9d132d6e32e6de23a2e5819ceebde
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.5 MB (32529556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09864eb0aa44c8951673e8b8293b1c3173cea9687e010fc30302947b03a966f4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Jun 2018 08:21:34 GMT
ADD file:7bd6d5557557a294db488600b483d452db358e399f7c8b1acf2a89c25b3d2006 in / 
# Wed, 27 Jun 2018 08:21:35 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:46:46 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 12:46:47 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 12:47:55 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 12:50:01 GMT
ENV REDIS_VERSION=4.0.10
# Wed, 27 Jun 2018 12:50:03 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Wed, 27 Jun 2018 12:50:04 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Wed, 27 Jun 2018 12:51:29 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 12:51:33 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 12:51:39 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 12:51:40 GMT
WORKDIR /data
# Wed, 27 Jun 2018 12:51:46 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 27 Jun 2018 12:51:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 12:51:55 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 12:51:56 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:591f394d671c26b8ef397269eb6b0bd86b78d5619523f5d1632fca943faff2de`  
		Last Modified: Wed, 27 Jun 2018 08:31:55 GMT  
		Size: 22.8 MB (22753035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e42cf827ac3794a3349910c6809505ae137eff4dcb479d1c1c39344d80a07a2f`  
		Last Modified: Wed, 27 Jun 2018 12:52:30 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:521c301279f105f9fe7b19f9ad9df2891c82201d2c27ecb1cec4fbaccad91291`  
		Last Modified: Wed, 27 Jun 2018 12:52:32 GMT  
		Size: 909.9 KB (909852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ac977261ecd582f0fd868c29028380e681f498cad393e4c361095e427a407d2`  
		Last Modified: Wed, 27 Jun 2018 12:53:07 GMT  
		Size: 8.9 MB (8864388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f56a7aa4a813cca4e96b52b20684e78e5fd2b32c4d769b3b9678a59386222b1c`  
		Last Modified: Wed, 27 Jun 2018 12:53:04 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f33d28f74c189ca4f9fd983b054e5f6b3f3046ac0d2ff26faa33dbacf6b2b240`  
		Last Modified: Wed, 27 Jun 2018 12:53:04 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; s390x

```console
$ docker pull redis@sha256:de590b0ce9e150a78bae36a164dafc0ac6682719c3c901ab5f9e93e9b1f842db
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32359648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf86e4f6dc2e7117176d765e9054839f25199f9fcca82bfe955309c088a81469`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Jun 2018 11:48:52 GMT
ADD file:30e8aac3f01e5ddc9493a0fac1c0978b9435ab33031d2af05afca0f9cb7eb71f in / 
# Wed, 27 Jun 2018 11:48:52 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 13:46:24 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 13:46:24 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 13:46:39 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 13:47:34 GMT
ENV REDIS_VERSION=4.0.10
# Wed, 27 Jun 2018 13:47:34 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Wed, 27 Jun 2018 13:47:34 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Wed, 27 Jun 2018 13:48:15 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 13:48:16 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 13:48:16 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 13:48:16 GMT
WORKDIR /data
# Wed, 27 Jun 2018 13:48:17 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 27 Jun 2018 13:48:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 13:48:17 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 13:48:17 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:1c23a44ac305da2d34995cf30530ba5adce0229e4a70678fd4d25384883b1281`  
		Last Modified: Wed, 27 Jun 2018 11:53:41 GMT  
		Size: 22.3 MB (22349871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f450656bdbcbfdc1614dfb82ca8dc61d74ac31bd1698136f082a3f2e49795a`  
		Last Modified: Wed, 27 Jun 2018 13:48:34 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb0e27db9314b93a9ac2f160f4fc84e2fac43e079e197b9721c03d11c645b235`  
		Last Modified: Wed, 27 Jun 2018 13:48:34 GMT  
		Size: 926.8 KB (926820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e193d7441fffd4f07c1a04b6c28f7de97124c5261e8ea61288d3b672ae1bbd32`  
		Last Modified: Wed, 27 Jun 2018 13:48:54 GMT  
		Size: 9.1 MB (9080718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb6e17635bf9170085f0b64dbb534d5148b750749605e393ac65f06991d6bea5`  
		Last Modified: Wed, 27 Jun 2018 13:48:51 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8916c6aa471c34f31573cefd8e04de650015f92fe03cd836f135ce306651029`  
		Last Modified: Wed, 27 Jun 2018 13:48:52 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0`

```console
$ docker pull redis@sha256:5534b92530acc653f0721ebfa14f31bc718f68bf9070cbba25bb00bc7aacfabb
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
$ docker pull redis@sha256:6213e498c76eb159d959687c2beb9a77d2ce7b080a38dbd19130a3ad24a6a5c3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32129762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71a81cb279e350589fa3b7e5df7c9d1e296f7d84f54ff2989d77ab9904e2d413`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 26 Jun 2018 21:25:25 GMT
ADD file:28fbc9fd012eef72780d1c75fc2b0969d13f0138f735035335ab4b76793da2da in / 
# Tue, 26 Jun 2018 21:25:25 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 01:15:28 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 01:15:28 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 01:15:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 01:17:51 GMT
ENV REDIS_VERSION=4.0.10
# Wed, 27 Jun 2018 01:17:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Wed, 27 Jun 2018 01:17:51 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Wed, 27 Jun 2018 01:18:24 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 01:18:25 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 01:18:25 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 01:18:25 GMT
WORKDIR /data
# Wed, 27 Jun 2018 01:18:26 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 27 Jun 2018 01:18:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 01:18:26 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 01:18:26 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:683abbb4ea60e108164f1d351e7bcf13daf45941137d800086447874df05f48e`  
		Last Modified: Tue, 26 Jun 2018 21:37:45 GMT  
		Size: 22.5 MB (22496975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:259238e792d86e23dab13fbcfcadf090333328ad9f80894544316437461f0d1b`  
		Last Modified: Wed, 27 Jun 2018 01:19:50 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78399601c709f0e252523e534db03152a1b3f017c9f7c756d68791ef07bc5d0b`  
		Last Modified: Wed, 27 Jun 2018 01:19:50 GMT  
		Size: 941.5 KB (941493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f397da4746012e36f5550d3eb830d81a522a1910417d6b3e1bd1ba046dfb8133`  
		Last Modified: Wed, 27 Jun 2018 01:21:05 GMT  
		Size: 8.7 MB (8689056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c57de4edc390ed763d75e015294194b9147207a5ad77b6a3d01cd7ee22b0b010`  
		Last Modified: Wed, 27 Jun 2018 01:21:00 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2ea05c9d9a1b925610552e146549112aa893634e6a25ad18fd0cc295aec1cac`  
		Last Modified: Wed, 27 Jun 2018 01:21:01 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; arm variant v5

```console
$ docker pull redis@sha256:ae2e050041dd65ab9b2d865075a19a2f180b56ead7deb06bf3ad355b4d54e20a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30525182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a89f66ecf3802d9814b508bb67aabe8047f5eeafaa59622075d2dbcb77082467`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Jun 2018 08:54:01 GMT
ADD file:f1e0d5c56a23a29918cb3b7691cee8f22620b4c54ee70a0dbb4b8151b2be3355 in / 
# Wed, 27 Jun 2018 08:54:02 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 11:10:45 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 11:10:46 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 11:11:07 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 11:12:04 GMT
ENV REDIS_VERSION=4.0.10
# Wed, 27 Jun 2018 11:12:04 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Wed, 27 Jun 2018 11:12:04 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Wed, 27 Jun 2018 11:12:40 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 11:12:41 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 11:12:42 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 11:12:42 GMT
WORKDIR /data
# Wed, 27 Jun 2018 11:12:43 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 27 Jun 2018 11:12:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 11:12:43 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 11:12:43 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:151bc45ca30d5401779cd71c1dd194a7e6f64f1214de3f4f025bc53daf823199`  
		Last Modified: Wed, 27 Jun 2018 09:03:17 GMT  
		Size: 21.2 MB (21177290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cad78a8c45448598f4df7ef055754e60f47534ed63db112af0065ac060c1a769`  
		Last Modified: Wed, 27 Jun 2018 11:12:56 GMT  
		Size: 1.7 KB (1730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a2318299a11dbd69da76cb547cf2a4343d94776bad7f52b516c31def158a9d`  
		Last Modified: Wed, 27 Jun 2018 11:12:57 GMT  
		Size: 931.3 KB (931255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b8cdc4f1fb5c128e89e3c263a97396fb5695e75bb81635634be845012f49379`  
		Last Modified: Wed, 27 Jun 2018 11:13:20 GMT  
		Size: 8.4 MB (8414371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:428e8e3e15293b2532db9fc879d8491bf27c64e9a2af90047efc7cda91d9f985`  
		Last Modified: Wed, 27 Jun 2018 11:13:15 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e55e4006aa334f1b66456ca51b44cdd9236f72a60ecd07d4367c1384e006f5ae`  
		Last Modified: Wed, 27 Jun 2018 11:13:15 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; arm variant v7

```console
$ docker pull redis@sha256:79be1240556b1926491ec2604a53f2d857064089435e5fbcad7bc36454d9ef5e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28387206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:352b5bb9108b7b52dd7d314959f600e8f60f95de85972cca6b8d7bf8e9056316`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Jun 2018 12:03:51 GMT
ADD file:d05cf75761bffd94ce908a55d38fc4966c194aa14492730dfdc1e52c3ddd0892 in / 
# Wed, 27 Jun 2018 12:03:54 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 14:18:29 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 14:18:29 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 14:18:48 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 14:19:36 GMT
ENV REDIS_VERSION=4.0.10
# Wed, 27 Jun 2018 14:19:36 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Wed, 27 Jun 2018 14:19:37 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Wed, 27 Jun 2018 14:20:08 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 14:20:09 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 14:20:09 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 14:20:10 GMT
WORKDIR /data
# Wed, 27 Jun 2018 14:20:10 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 27 Jun 2018 14:20:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 14:20:11 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 14:20:12 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:a779870b6875e97ad1448eaf9befb46011e0fd10ef5014f59d63f624b51de26f`  
		Last Modified: Wed, 27 Jun 2018 12:13:30 GMT  
		Size: 19.3 MB (19286273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c5c410558b6543c5785cecbccb032fd4982038a92ba3b8bb4d5ab8d17e6bed7`  
		Last Modified: Wed, 27 Jun 2018 14:20:30 GMT  
		Size: 1.7 KB (1730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48b858312be07ebaa41456fe36334924f5e53a6a705c42b89b61f26bc6ebb357`  
		Last Modified: Wed, 27 Jun 2018 14:20:30 GMT  
		Size: 915.9 KB (915893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ad0ec942ee79662631a351970ad43c032fcaff13d062dd6ac1db1a09e30bb36`  
		Last Modified: Wed, 27 Jun 2018 14:20:55 GMT  
		Size: 8.2 MB (8182774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7a7123e29129e6aeda6a18f84827b644f69b4c2fa35625fc7db2d71ec8e79b2`  
		Last Modified: Wed, 27 Jun 2018 14:20:52 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f333780152ff38ae2561f35dc050d80099e7bc5772967302e6b2cec435838307`  
		Last Modified: Wed, 27 Jun 2018 14:20:53 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:f5eaa99907a1313b2dbaf92b69165bb246d4cff7324ed394137d2abddeb0aa93
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.7 MB (29748623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e6566de3b84c40644e39f56d7084f886d9dcf315794dc65755a0093a91000fc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:44 GMT
ADD file:b8a1907d99b0b9f75b52f8e25d5c346caf0244b325919c02090ab1e05ba1cf18 in / 
# Wed, 27 Jun 2018 08:47:45 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 13:29:17 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 13:29:18 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 13:30:37 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 13:32:58 GMT
ENV REDIS_VERSION=4.0.10
# Wed, 27 Jun 2018 13:32:58 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Wed, 27 Jun 2018 13:32:59 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Wed, 27 Jun 2018 13:34:48 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 13:34:50 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 13:34:50 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 13:34:51 GMT
WORKDIR /data
# Wed, 27 Jun 2018 13:34:52 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 27 Jun 2018 13:34:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 13:34:55 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 13:34:56 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:153362478bb06475bede3bd6da2ff08a91dd9fc6f245c70bb5a033b65f38ac14`  
		Last Modified: Wed, 27 Jun 2018 08:58:51 GMT  
		Size: 20.3 MB (20348077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3df18432afbb66c603676db6e777b9e8385de68f08a19d034af0da3a1858e1f7`  
		Last Modified: Wed, 27 Jun 2018 13:35:34 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a80a3007c2c23eea873ed4902940ef771b78a7d742c98741d71b816d77682d9`  
		Last Modified: Wed, 27 Jun 2018 13:35:35 GMT  
		Size: 908.2 KB (908185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fdaf9673fc850e17dd5e0510013da65b4afb5cde8b68a302f7f9123ccf336f3`  
		Last Modified: Wed, 27 Jun 2018 13:36:15 GMT  
		Size: 8.5 MB (8490122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9012a9c945a3a860f7436f1be1b625e79f816b8e10c4aeec24eb53ae30fcc66`  
		Last Modified: Wed, 27 Jun 2018 13:36:11 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1419aa21e4a6179df1a4d2cb6cd6e35999b1ea30cfabc04336050ad6cf6019a1`  
		Last Modified: Wed, 27 Jun 2018 13:36:11 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; 386

```console
$ docker pull redis@sha256:af8d14e99f87911876473dfc1548cb97d59a0358c70ff2d671abbc07e4e4682f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32309664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4a9d5b1ae1992296afe04e4f6ec74523e18eb061440bbca0fd3d2388762054d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Jun 2018 10:46:39 GMT
ADD file:e1777a98c0e3aaf9cb1f4116550001b0eed2fe669b2c6449c93b76cccc92e1a2 in / 
# Wed, 27 Jun 2018 10:46:42 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 13:03:38 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 13:03:38 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 13:04:04 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 13:04:56 GMT
ENV REDIS_VERSION=4.0.10
# Wed, 27 Jun 2018 13:04:56 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Wed, 27 Jun 2018 13:04:56 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Wed, 27 Jun 2018 13:05:39 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 13:05:40 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 13:05:40 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 13:05:41 GMT
WORKDIR /data
# Wed, 27 Jun 2018 13:05:48 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 27 Jun 2018 13:05:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 13:05:49 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 13:05:49 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:7de5eb46c52dbee10629f5dc34d9b2445893031ae37083572734bc4f6577757d`  
		Last Modified: Wed, 27 Jun 2018 11:11:02 GMT  
		Size: 23.1 MB (23140103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8df6822d7184835aefd26151cfc1ba536407dc7e8d1f959bc1360b882e7f140`  
		Last Modified: Wed, 27 Jun 2018 13:06:10 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:036521fcd75cdac216f9c6c2c0a4e7c7512653de681714198cfddbf20503ea97`  
		Last Modified: Wed, 27 Jun 2018 13:06:10 GMT  
		Size: 920.3 KB (920308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4de5fa9d11a929e4178ba975855cdb5ac80022cf89332add88ca1dbacbb56f74`  
		Last Modified: Wed, 27 Jun 2018 13:06:59 GMT  
		Size: 8.2 MB (8247020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2400940e500127e1b5fcb395451e501b1735ad9aec2c038aada177eaa2ecc2f`  
		Last Modified: Wed, 27 Jun 2018 13:06:56 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:025c441b992eb77d52e8625819743cdf61a9c7dcabae59aa9e8461f973b6928a`  
		Last Modified: Wed, 27 Jun 2018 13:06:56 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; ppc64le

```console
$ docker pull redis@sha256:ef2316efd8187d005952cd93953d5fe33ae9d132d6e32e6de23a2e5819ceebde
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.5 MB (32529556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09864eb0aa44c8951673e8b8293b1c3173cea9687e010fc30302947b03a966f4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Jun 2018 08:21:34 GMT
ADD file:7bd6d5557557a294db488600b483d452db358e399f7c8b1acf2a89c25b3d2006 in / 
# Wed, 27 Jun 2018 08:21:35 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:46:46 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 12:46:47 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 12:47:55 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 12:50:01 GMT
ENV REDIS_VERSION=4.0.10
# Wed, 27 Jun 2018 12:50:03 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Wed, 27 Jun 2018 12:50:04 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Wed, 27 Jun 2018 12:51:29 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 12:51:33 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 12:51:39 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 12:51:40 GMT
WORKDIR /data
# Wed, 27 Jun 2018 12:51:46 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 27 Jun 2018 12:51:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 12:51:55 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 12:51:56 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:591f394d671c26b8ef397269eb6b0bd86b78d5619523f5d1632fca943faff2de`  
		Last Modified: Wed, 27 Jun 2018 08:31:55 GMT  
		Size: 22.8 MB (22753035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e42cf827ac3794a3349910c6809505ae137eff4dcb479d1c1c39344d80a07a2f`  
		Last Modified: Wed, 27 Jun 2018 12:52:30 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:521c301279f105f9fe7b19f9ad9df2891c82201d2c27ecb1cec4fbaccad91291`  
		Last Modified: Wed, 27 Jun 2018 12:52:32 GMT  
		Size: 909.9 KB (909852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ac977261ecd582f0fd868c29028380e681f498cad393e4c361095e427a407d2`  
		Last Modified: Wed, 27 Jun 2018 12:53:07 GMT  
		Size: 8.9 MB (8864388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f56a7aa4a813cca4e96b52b20684e78e5fd2b32c4d769b3b9678a59386222b1c`  
		Last Modified: Wed, 27 Jun 2018 12:53:04 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f33d28f74c189ca4f9fd983b054e5f6b3f3046ac0d2ff26faa33dbacf6b2b240`  
		Last Modified: Wed, 27 Jun 2018 12:53:04 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; s390x

```console
$ docker pull redis@sha256:de590b0ce9e150a78bae36a164dafc0ac6682719c3c901ab5f9e93e9b1f842db
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32359648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf86e4f6dc2e7117176d765e9054839f25199f9fcca82bfe955309c088a81469`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Jun 2018 11:48:52 GMT
ADD file:30e8aac3f01e5ddc9493a0fac1c0978b9435ab33031d2af05afca0f9cb7eb71f in / 
# Wed, 27 Jun 2018 11:48:52 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 13:46:24 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 13:46:24 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 13:46:39 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 13:47:34 GMT
ENV REDIS_VERSION=4.0.10
# Wed, 27 Jun 2018 13:47:34 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Wed, 27 Jun 2018 13:47:34 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Wed, 27 Jun 2018 13:48:15 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 13:48:16 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 13:48:16 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 13:48:16 GMT
WORKDIR /data
# Wed, 27 Jun 2018 13:48:17 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 27 Jun 2018 13:48:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 13:48:17 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 13:48:17 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:1c23a44ac305da2d34995cf30530ba5adce0229e4a70678fd4d25384883b1281`  
		Last Modified: Wed, 27 Jun 2018 11:53:41 GMT  
		Size: 22.3 MB (22349871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f450656bdbcbfdc1614dfb82ca8dc61d74ac31bd1698136f082a3f2e49795a`  
		Last Modified: Wed, 27 Jun 2018 13:48:34 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb0e27db9314b93a9ac2f160f4fc84e2fac43e079e197b9721c03d11c645b235`  
		Last Modified: Wed, 27 Jun 2018 13:48:34 GMT  
		Size: 926.8 KB (926820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e193d7441fffd4f07c1a04b6c28f7de97124c5261e8ea61288d3b672ae1bbd32`  
		Last Modified: Wed, 27 Jun 2018 13:48:54 GMT  
		Size: 9.1 MB (9080718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb6e17635bf9170085f0b64dbb534d5148b750749605e393ac65f06991d6bea5`  
		Last Modified: Wed, 27 Jun 2018 13:48:51 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8916c6aa471c34f31573cefd8e04de650015f92fe03cd836f135ce306651029`  
		Last Modified: Wed, 27 Jun 2018 13:48:52 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.10`

```console
$ docker pull redis@sha256:5534b92530acc653f0721ebfa14f31bc718f68bf9070cbba25bb00bc7aacfabb
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

### `redis:4.0.10` - linux; amd64

```console
$ docker pull redis@sha256:6213e498c76eb159d959687c2beb9a77d2ce7b080a38dbd19130a3ad24a6a5c3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32129762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71a81cb279e350589fa3b7e5df7c9d1e296f7d84f54ff2989d77ab9904e2d413`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 26 Jun 2018 21:25:25 GMT
ADD file:28fbc9fd012eef72780d1c75fc2b0969d13f0138f735035335ab4b76793da2da in / 
# Tue, 26 Jun 2018 21:25:25 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 01:15:28 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 01:15:28 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 01:15:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 01:17:51 GMT
ENV REDIS_VERSION=4.0.10
# Wed, 27 Jun 2018 01:17:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Wed, 27 Jun 2018 01:17:51 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Wed, 27 Jun 2018 01:18:24 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 01:18:25 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 01:18:25 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 01:18:25 GMT
WORKDIR /data
# Wed, 27 Jun 2018 01:18:26 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 27 Jun 2018 01:18:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 01:18:26 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 01:18:26 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:683abbb4ea60e108164f1d351e7bcf13daf45941137d800086447874df05f48e`  
		Last Modified: Tue, 26 Jun 2018 21:37:45 GMT  
		Size: 22.5 MB (22496975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:259238e792d86e23dab13fbcfcadf090333328ad9f80894544316437461f0d1b`  
		Last Modified: Wed, 27 Jun 2018 01:19:50 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78399601c709f0e252523e534db03152a1b3f017c9f7c756d68791ef07bc5d0b`  
		Last Modified: Wed, 27 Jun 2018 01:19:50 GMT  
		Size: 941.5 KB (941493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f397da4746012e36f5550d3eb830d81a522a1910417d6b3e1bd1ba046dfb8133`  
		Last Modified: Wed, 27 Jun 2018 01:21:05 GMT  
		Size: 8.7 MB (8689056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c57de4edc390ed763d75e015294194b9147207a5ad77b6a3d01cd7ee22b0b010`  
		Last Modified: Wed, 27 Jun 2018 01:21:00 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2ea05c9d9a1b925610552e146549112aa893634e6a25ad18fd0cc295aec1cac`  
		Last Modified: Wed, 27 Jun 2018 01:21:01 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.10` - linux; arm variant v5

```console
$ docker pull redis@sha256:ae2e050041dd65ab9b2d865075a19a2f180b56ead7deb06bf3ad355b4d54e20a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30525182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a89f66ecf3802d9814b508bb67aabe8047f5eeafaa59622075d2dbcb77082467`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Jun 2018 08:54:01 GMT
ADD file:f1e0d5c56a23a29918cb3b7691cee8f22620b4c54ee70a0dbb4b8151b2be3355 in / 
# Wed, 27 Jun 2018 08:54:02 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 11:10:45 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 11:10:46 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 11:11:07 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 11:12:04 GMT
ENV REDIS_VERSION=4.0.10
# Wed, 27 Jun 2018 11:12:04 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Wed, 27 Jun 2018 11:12:04 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Wed, 27 Jun 2018 11:12:40 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 11:12:41 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 11:12:42 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 11:12:42 GMT
WORKDIR /data
# Wed, 27 Jun 2018 11:12:43 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 27 Jun 2018 11:12:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 11:12:43 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 11:12:43 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:151bc45ca30d5401779cd71c1dd194a7e6f64f1214de3f4f025bc53daf823199`  
		Last Modified: Wed, 27 Jun 2018 09:03:17 GMT  
		Size: 21.2 MB (21177290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cad78a8c45448598f4df7ef055754e60f47534ed63db112af0065ac060c1a769`  
		Last Modified: Wed, 27 Jun 2018 11:12:56 GMT  
		Size: 1.7 KB (1730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a2318299a11dbd69da76cb547cf2a4343d94776bad7f52b516c31def158a9d`  
		Last Modified: Wed, 27 Jun 2018 11:12:57 GMT  
		Size: 931.3 KB (931255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b8cdc4f1fb5c128e89e3c263a97396fb5695e75bb81635634be845012f49379`  
		Last Modified: Wed, 27 Jun 2018 11:13:20 GMT  
		Size: 8.4 MB (8414371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:428e8e3e15293b2532db9fc879d8491bf27c64e9a2af90047efc7cda91d9f985`  
		Last Modified: Wed, 27 Jun 2018 11:13:15 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e55e4006aa334f1b66456ca51b44cdd9236f72a60ecd07d4367c1384e006f5ae`  
		Last Modified: Wed, 27 Jun 2018 11:13:15 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.10` - linux; arm variant v7

```console
$ docker pull redis@sha256:79be1240556b1926491ec2604a53f2d857064089435e5fbcad7bc36454d9ef5e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28387206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:352b5bb9108b7b52dd7d314959f600e8f60f95de85972cca6b8d7bf8e9056316`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Jun 2018 12:03:51 GMT
ADD file:d05cf75761bffd94ce908a55d38fc4966c194aa14492730dfdc1e52c3ddd0892 in / 
# Wed, 27 Jun 2018 12:03:54 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 14:18:29 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 14:18:29 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 14:18:48 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 14:19:36 GMT
ENV REDIS_VERSION=4.0.10
# Wed, 27 Jun 2018 14:19:36 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Wed, 27 Jun 2018 14:19:37 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Wed, 27 Jun 2018 14:20:08 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 14:20:09 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 14:20:09 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 14:20:10 GMT
WORKDIR /data
# Wed, 27 Jun 2018 14:20:10 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 27 Jun 2018 14:20:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 14:20:11 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 14:20:12 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:a779870b6875e97ad1448eaf9befb46011e0fd10ef5014f59d63f624b51de26f`  
		Last Modified: Wed, 27 Jun 2018 12:13:30 GMT  
		Size: 19.3 MB (19286273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c5c410558b6543c5785cecbccb032fd4982038a92ba3b8bb4d5ab8d17e6bed7`  
		Last Modified: Wed, 27 Jun 2018 14:20:30 GMT  
		Size: 1.7 KB (1730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48b858312be07ebaa41456fe36334924f5e53a6a705c42b89b61f26bc6ebb357`  
		Last Modified: Wed, 27 Jun 2018 14:20:30 GMT  
		Size: 915.9 KB (915893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ad0ec942ee79662631a351970ad43c032fcaff13d062dd6ac1db1a09e30bb36`  
		Last Modified: Wed, 27 Jun 2018 14:20:55 GMT  
		Size: 8.2 MB (8182774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7a7123e29129e6aeda6a18f84827b644f69b4c2fa35625fc7db2d71ec8e79b2`  
		Last Modified: Wed, 27 Jun 2018 14:20:52 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f333780152ff38ae2561f35dc050d80099e7bc5772967302e6b2cec435838307`  
		Last Modified: Wed, 27 Jun 2018 14:20:53 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.10` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:f5eaa99907a1313b2dbaf92b69165bb246d4cff7324ed394137d2abddeb0aa93
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.7 MB (29748623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e6566de3b84c40644e39f56d7084f886d9dcf315794dc65755a0093a91000fc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:44 GMT
ADD file:b8a1907d99b0b9f75b52f8e25d5c346caf0244b325919c02090ab1e05ba1cf18 in / 
# Wed, 27 Jun 2018 08:47:45 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 13:29:17 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 13:29:18 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 13:30:37 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 13:32:58 GMT
ENV REDIS_VERSION=4.0.10
# Wed, 27 Jun 2018 13:32:58 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Wed, 27 Jun 2018 13:32:59 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Wed, 27 Jun 2018 13:34:48 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 13:34:50 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 13:34:50 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 13:34:51 GMT
WORKDIR /data
# Wed, 27 Jun 2018 13:34:52 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 27 Jun 2018 13:34:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 13:34:55 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 13:34:56 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:153362478bb06475bede3bd6da2ff08a91dd9fc6f245c70bb5a033b65f38ac14`  
		Last Modified: Wed, 27 Jun 2018 08:58:51 GMT  
		Size: 20.3 MB (20348077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3df18432afbb66c603676db6e777b9e8385de68f08a19d034af0da3a1858e1f7`  
		Last Modified: Wed, 27 Jun 2018 13:35:34 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a80a3007c2c23eea873ed4902940ef771b78a7d742c98741d71b816d77682d9`  
		Last Modified: Wed, 27 Jun 2018 13:35:35 GMT  
		Size: 908.2 KB (908185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fdaf9673fc850e17dd5e0510013da65b4afb5cde8b68a302f7f9123ccf336f3`  
		Last Modified: Wed, 27 Jun 2018 13:36:15 GMT  
		Size: 8.5 MB (8490122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9012a9c945a3a860f7436f1be1b625e79f816b8e10c4aeec24eb53ae30fcc66`  
		Last Modified: Wed, 27 Jun 2018 13:36:11 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1419aa21e4a6179df1a4d2cb6cd6e35999b1ea30cfabc04336050ad6cf6019a1`  
		Last Modified: Wed, 27 Jun 2018 13:36:11 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.10` - linux; 386

```console
$ docker pull redis@sha256:af8d14e99f87911876473dfc1548cb97d59a0358c70ff2d671abbc07e4e4682f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32309664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4a9d5b1ae1992296afe04e4f6ec74523e18eb061440bbca0fd3d2388762054d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Jun 2018 10:46:39 GMT
ADD file:e1777a98c0e3aaf9cb1f4116550001b0eed2fe669b2c6449c93b76cccc92e1a2 in / 
# Wed, 27 Jun 2018 10:46:42 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 13:03:38 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 13:03:38 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 13:04:04 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 13:04:56 GMT
ENV REDIS_VERSION=4.0.10
# Wed, 27 Jun 2018 13:04:56 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Wed, 27 Jun 2018 13:04:56 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Wed, 27 Jun 2018 13:05:39 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 13:05:40 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 13:05:40 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 13:05:41 GMT
WORKDIR /data
# Wed, 27 Jun 2018 13:05:48 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 27 Jun 2018 13:05:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 13:05:49 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 13:05:49 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:7de5eb46c52dbee10629f5dc34d9b2445893031ae37083572734bc4f6577757d`  
		Last Modified: Wed, 27 Jun 2018 11:11:02 GMT  
		Size: 23.1 MB (23140103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8df6822d7184835aefd26151cfc1ba536407dc7e8d1f959bc1360b882e7f140`  
		Last Modified: Wed, 27 Jun 2018 13:06:10 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:036521fcd75cdac216f9c6c2c0a4e7c7512653de681714198cfddbf20503ea97`  
		Last Modified: Wed, 27 Jun 2018 13:06:10 GMT  
		Size: 920.3 KB (920308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4de5fa9d11a929e4178ba975855cdb5ac80022cf89332add88ca1dbacbb56f74`  
		Last Modified: Wed, 27 Jun 2018 13:06:59 GMT  
		Size: 8.2 MB (8247020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2400940e500127e1b5fcb395451e501b1735ad9aec2c038aada177eaa2ecc2f`  
		Last Modified: Wed, 27 Jun 2018 13:06:56 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:025c441b992eb77d52e8625819743cdf61a9c7dcabae59aa9e8461f973b6928a`  
		Last Modified: Wed, 27 Jun 2018 13:06:56 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.10` - linux; ppc64le

```console
$ docker pull redis@sha256:ef2316efd8187d005952cd93953d5fe33ae9d132d6e32e6de23a2e5819ceebde
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.5 MB (32529556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09864eb0aa44c8951673e8b8293b1c3173cea9687e010fc30302947b03a966f4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Jun 2018 08:21:34 GMT
ADD file:7bd6d5557557a294db488600b483d452db358e399f7c8b1acf2a89c25b3d2006 in / 
# Wed, 27 Jun 2018 08:21:35 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:46:46 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 12:46:47 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 12:47:55 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 12:50:01 GMT
ENV REDIS_VERSION=4.0.10
# Wed, 27 Jun 2018 12:50:03 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Wed, 27 Jun 2018 12:50:04 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Wed, 27 Jun 2018 12:51:29 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 12:51:33 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 12:51:39 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 12:51:40 GMT
WORKDIR /data
# Wed, 27 Jun 2018 12:51:46 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 27 Jun 2018 12:51:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 12:51:55 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 12:51:56 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:591f394d671c26b8ef397269eb6b0bd86b78d5619523f5d1632fca943faff2de`  
		Last Modified: Wed, 27 Jun 2018 08:31:55 GMT  
		Size: 22.8 MB (22753035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e42cf827ac3794a3349910c6809505ae137eff4dcb479d1c1c39344d80a07a2f`  
		Last Modified: Wed, 27 Jun 2018 12:52:30 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:521c301279f105f9fe7b19f9ad9df2891c82201d2c27ecb1cec4fbaccad91291`  
		Last Modified: Wed, 27 Jun 2018 12:52:32 GMT  
		Size: 909.9 KB (909852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ac977261ecd582f0fd868c29028380e681f498cad393e4c361095e427a407d2`  
		Last Modified: Wed, 27 Jun 2018 12:53:07 GMT  
		Size: 8.9 MB (8864388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f56a7aa4a813cca4e96b52b20684e78e5fd2b32c4d769b3b9678a59386222b1c`  
		Last Modified: Wed, 27 Jun 2018 12:53:04 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f33d28f74c189ca4f9fd983b054e5f6b3f3046ac0d2ff26faa33dbacf6b2b240`  
		Last Modified: Wed, 27 Jun 2018 12:53:04 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.10` - linux; s390x

```console
$ docker pull redis@sha256:de590b0ce9e150a78bae36a164dafc0ac6682719c3c901ab5f9e93e9b1f842db
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32359648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf86e4f6dc2e7117176d765e9054839f25199f9fcca82bfe955309c088a81469`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Jun 2018 11:48:52 GMT
ADD file:30e8aac3f01e5ddc9493a0fac1c0978b9435ab33031d2af05afca0f9cb7eb71f in / 
# Wed, 27 Jun 2018 11:48:52 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 13:46:24 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 13:46:24 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 13:46:39 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 13:47:34 GMT
ENV REDIS_VERSION=4.0.10
# Wed, 27 Jun 2018 13:47:34 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Wed, 27 Jun 2018 13:47:34 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Wed, 27 Jun 2018 13:48:15 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 13:48:16 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 13:48:16 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 13:48:16 GMT
WORKDIR /data
# Wed, 27 Jun 2018 13:48:17 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 27 Jun 2018 13:48:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 13:48:17 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 13:48:17 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:1c23a44ac305da2d34995cf30530ba5adce0229e4a70678fd4d25384883b1281`  
		Last Modified: Wed, 27 Jun 2018 11:53:41 GMT  
		Size: 22.3 MB (22349871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f450656bdbcbfdc1614dfb82ca8dc61d74ac31bd1698136f082a3f2e49795a`  
		Last Modified: Wed, 27 Jun 2018 13:48:34 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb0e27db9314b93a9ac2f160f4fc84e2fac43e079e197b9721c03d11c645b235`  
		Last Modified: Wed, 27 Jun 2018 13:48:34 GMT  
		Size: 926.8 KB (926820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e193d7441fffd4f07c1a04b6c28f7de97124c5261e8ea61288d3b672ae1bbd32`  
		Last Modified: Wed, 27 Jun 2018 13:48:54 GMT  
		Size: 9.1 MB (9080718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb6e17635bf9170085f0b64dbb534d5148b750749605e393ac65f06991d6bea5`  
		Last Modified: Wed, 27 Jun 2018 13:48:51 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8916c6aa471c34f31573cefd8e04de650015f92fe03cd836f135ce306651029`  
		Last Modified: Wed, 27 Jun 2018 13:48:52 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.10-32bit`

```console
$ docker pull redis@sha256:4eb0d482ceab8ec980192c89adfa2e3d1480454e93edb393ac16518b197b33d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4.0.10-32bit` - linux; amd64

```console
$ docker pull redis@sha256:d9c0c157796eddf77aa2e549a80dda1d529ef50067d19836c147086d5daee87d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.5 MB (36540346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f1e64722b4767a7ea45e151d0837935a91951ff9399773aa2bee90f9b4eaab4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 26 Jun 2018 21:25:25 GMT
ADD file:28fbc9fd012eef72780d1c75fc2b0969d13f0138f735035335ab4b76793da2da in / 
# Tue, 26 Jun 2018 21:25:25 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 01:15:28 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 01:15:28 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 01:15:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 01:17:51 GMT
ENV REDIS_VERSION=4.0.10
# Wed, 27 Jun 2018 01:17:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Wed, 27 Jun 2018 01:17:51 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Wed, 27 Jun 2018 01:18:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 01:19:21 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 01:19:22 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 01:19:23 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 01:19:23 GMT
WORKDIR /data
# Wed, 27 Jun 2018 01:19:23 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 27 Jun 2018 01:19:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 01:19:24 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 01:19:24 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:683abbb4ea60e108164f1d351e7bcf13daf45941137d800086447874df05f48e`  
		Last Modified: Tue, 26 Jun 2018 21:37:45 GMT  
		Size: 22.5 MB (22496975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:259238e792d86e23dab13fbcfcadf090333328ad9f80894544316437461f0d1b`  
		Last Modified: Wed, 27 Jun 2018 01:19:50 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78399601c709f0e252523e534db03152a1b3f017c9f7c756d68791ef07bc5d0b`  
		Last Modified: Wed, 27 Jun 2018 01:19:50 GMT  
		Size: 941.5 KB (941493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70936999cfd008308909792dea4e16280e691dabcce0d6e0b3aefc99878e0db4`  
		Last Modified: Wed, 27 Jun 2018 01:21:48 GMT  
		Size: 4.8 MB (4848269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4bb8b6edf0ed18495d476d17e5020e68d919ddafe18f4438df4bcc5515f5031`  
		Last Modified: Wed, 27 Jun 2018 01:21:49 GMT  
		Size: 8.3 MB (8251365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07090b435cd512f6e613f392efeb880d03c4df7ea10e7c9054cca67ceab973c3`  
		Last Modified: Wed, 27 Jun 2018 01:21:47 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4a4e18b25e6f5fafcd310251773b647dca71b6a2d21b9bd572d4f9118accd6e`  
		Last Modified: Wed, 27 Jun 2018 01:21:47 GMT  
		Size: 407.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.10-alpine`

```console
$ docker pull redis@sha256:686ab026fae07b3b99a8e74210c361714a80311ecc55f23b349ae930ed2f5a95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

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

### `redis:4.0.10-alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:7cb42bcffd252a9ae3937c0f0e3041262e575e2491d9399fbd60a73bbd9375bf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7007858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b5da297397ecb885327f997039ef8ded6b34ac9ad68daedd59ef1a46fcd9e1e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:45 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Fri, 01 Dec 2017 18:41:45 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:46 GMT
CMD ["/bin/sh"]
# Wed, 16 May 2018 19:39:01 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 16 May 2018 19:39:06 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 16 Jun 2018 07:54:39 GMT
ENV REDIS_VERSION=4.0.10
# Sat, 16 Jun 2018 07:54:40 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Sat, 16 Jun 2018 07:54:41 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Sat, 16 Jun 2018 07:58:10 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 16 Jun 2018 07:58:14 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 16 Jun 2018 07:58:15 GMT
VOLUME [/data]
# Sat, 16 Jun 2018 07:58:16 GMT
WORKDIR /data
# Sat, 16 Jun 2018 07:58:18 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 16 Jun 2018 07:58:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 16 Jun 2018 07:58:19 GMT
EXPOSE 6379/tcp
# Sat, 16 Jun 2018 07:58:20 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bf7d76c39215a547858ef9260990b9b80c0e679bb2f6ceef942d7b6d0eeec3`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29b2b09993d378af670de0b63030a6a3e611e97529dfdbbc5aa5228af010f6c4`  
		Last Modified: Fri, 18 May 2018 07:58:12 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66f37a02127b76c7deae98d4551daa47405376826362bb20a76575f6710ccb2b`  
		Last Modified: Fri, 18 May 2018 07:58:12 GMT  
		Size: 8.7 KB (8716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef2c31755478c8398dac24d0ee0162f90b1cb47e3ff824b7c5c4acd8c2748c02`  
		Last Modified: Sat, 16 Jun 2018 07:59:23 GMT  
		Size: 5.0 MB (4958853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e09973e2d5b4223a1138a26e89fe5d86126a8e56943a8eb4ea12d8aedb7169b9`  
		Last Modified: Sat, 16 Jun 2018 07:59:16 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b66bca9eacbae3473f05833395362b54eca3fcf5a138f2594b87bcb2b2cd4160`  
		Last Modified: Sat, 16 Jun 2018 07:59:16 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.10-alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:94b233ddbda17ed48ef9c1363ebe0793564c8b99424198e56e71d2f954fc7d66
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10320964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b874f29b004fc602eff10fdcca861e0868cca9139402743e319b49aba27004f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Wed, 24 Jan 2018 13:25:46 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 24 Jan 2018 13:25:50 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 16 Jun 2018 09:58:39 GMT
ENV REDIS_VERSION=4.0.10
# Sat, 16 Jun 2018 09:58:40 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Sat, 16 Jun 2018 09:58:41 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Sat, 16 Jun 2018 09:59:21 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 16 Jun 2018 09:59:22 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 16 Jun 2018 09:59:23 GMT
VOLUME [/data]
# Sat, 16 Jun 2018 09:59:24 GMT
WORKDIR /data
# Sat, 16 Jun 2018 09:59:25 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 16 Jun 2018 09:59:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 16 Jun 2018 09:59:27 GMT
EXPOSE 6379/tcp
# Sat, 16 Jun 2018 09:59:28 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec42e4d70bd6b5d14ceb60d165f35c9d1348c35d3a566bb230cec599a0ffd64`  
		Last Modified: Wed, 24 Jan 2018 13:28:23 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:555bf2ac2a80a9414fecc99d0e2e659cf9cc43ddcf785a45cf07b2fbcbf0f7b4`  
		Last Modified: Wed, 24 Jan 2018 13:28:23 GMT  
		Size: 8.7 KB (8656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c8c0e92a87891c3eb3b52600dbea5a33a9502b831b4fc925c31332ba2ddb83e`  
		Last Modified: Sat, 16 Jun 2018 10:01:17 GMT  
		Size: 8.3 MB (8321526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b84fe24fa936a7141bacf30b6d92d25ee2960d56d1309585a659d00f8e1331`  
		Last Modified: Sat, 16 Jun 2018 10:01:14 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8abb6c43bde7d475f963f75d5fb5f8a723dbbb17d0a0fe07b282b511e9ec281b`  
		Last Modified: Sat, 16 Jun 2018 10:01:13 GMT  
		Size: 398.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.10-alpine` - linux; 386

```console
$ docker pull redis@sha256:8815bfa40fb9e12f532a35ec4ae979b1f6b54dd0f0ac4d39d9fcc80d3c7b4a23
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.2 MB (10212379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21eb871992a23a4cec93c65de75aa973373bfe89d474ec174459448a8a961702`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 01 Jun 2018 06:57:26 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Jun 2018 06:57:26 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Jun 2018 06:57:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Jun 2018 15:57:41 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 01 Jun 2018 15:57:42 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 16 Jun 2018 10:43:46 GMT
ENV REDIS_VERSION=4.0.10
# Sat, 16 Jun 2018 10:43:46 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Sat, 16 Jun 2018 10:43:46 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Sat, 16 Jun 2018 10:44:16 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 16 Jun 2018 10:44:16 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 16 Jun 2018 10:44:16 GMT
VOLUME [/data]
# Sat, 16 Jun 2018 10:44:17 GMT
WORKDIR /data
# Sat, 16 Jun 2018 10:44:17 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 16 Jun 2018 10:44:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 16 Jun 2018 10:44:17 GMT
EXPOSE 6379/tcp
# Sat, 16 Jun 2018 10:44:17 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:061a9db3c9e4f3bc32618a5f1a7e2b8aefb20fcc48f8be709bc7f7eabe61d003`  
		Last Modified: Fri, 01 Jun 2018 06:57:51 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32c5c681510e095d5b56ec0b42770c915f177d63e694ce6b59a6081187bb4e38`  
		Last Modified: Fri, 01 Jun 2018 16:02:37 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c69d5dac586a34e49b9e78377c5b5ccf2dab95a9383f555ee0bf7e10be877000`  
		Last Modified: Fri, 01 Jun 2018 16:02:37 GMT  
		Size: 8.7 KB (8653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dde4f4bf0970e393c94fb45d474c75d7d3ae28f7c5ef23ce092dffccf7785cca`  
		Last Modified: Sat, 16 Jun 2018 10:46:16 GMT  
		Size: 8.1 MB (8075583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e2b5d2d19946ba0e7a3118e45636a8116518af6bf494ca7cad0d3fa41329da0`  
		Last Modified: Sat, 16 Jun 2018 10:46:12 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31e8656094cb926219927af5df610c90078d7bd50d5fc19bb666abb191b660fe`  
		Last Modified: Sat, 16 Jun 2018 10:46:12 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.10-alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:c39a3f92a82c9c25f8cf11cf235fef6d5e092a7adc6c7cdc9c46ad8c924e041a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10746694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:742d1594ae2148d6198abf982829c636b48eb6924e697ea39cfa06db9086735d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Wed, 24 Jan 2018 06:35:28 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 24 Jan 2018 06:35:34 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 16 Jun 2018 08:23:23 GMT
ENV REDIS_VERSION=4.0.10
# Sat, 16 Jun 2018 08:23:24 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Sat, 16 Jun 2018 08:23:25 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Sat, 16 Jun 2018 08:23:49 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 16 Jun 2018 08:23:52 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 16 Jun 2018 08:23:53 GMT
VOLUME [/data]
# Sat, 16 Jun 2018 08:23:54 GMT
WORKDIR /data
# Sat, 16 Jun 2018 08:23:56 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 16 Jun 2018 08:23:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 16 Jun 2018 08:23:57 GMT
EXPOSE 6379/tcp
# Sat, 16 Jun 2018 08:23:58 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:802132ccdaaf1e42c991c0ad2b274ee46d7d02210e23a3bc630c772fbdd533c2`  
		Last Modified: Wed, 24 Jan 2018 06:37:26 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3edb35368beebf064881c4a2efa343effc2775c4bb6e9121e8426990bc75df12`  
		Last Modified: Wed, 24 Jan 2018 06:37:26 GMT  
		Size: 9.3 KB (9269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa36952805f7607221db573d9a44e14effade54b662cab05bc0e17cfa7fd5dd4`  
		Last Modified: Sat, 16 Jun 2018 08:25:31 GMT  
		Size: 8.7 MB (8653962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ab9fd264b67f2375fe2753c4f247110cd1db1a0091cbd4fba8c6652db53162`  
		Last Modified: Sat, 16 Jun 2018 08:25:29 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdd02adcddfc5d1eba6cae28eb78b5c9e5501bd0e4bf6bca22367117a37e8f8b`  
		Last Modified: Sat, 16 Jun 2018 08:25:29 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.10-alpine` - linux; s390x

```console
$ docker pull redis@sha256:bc3c859de555582f56df03904deb6ba5295b45c030e8eaf7d41a4bd5efbd5418
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10940605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a00effc5c867e9fea95676b5ea97807df71fbecfbf44d5803cacd3fa7807177`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Wed, 24 Jan 2018 06:24:30 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 24 Jan 2018 06:24:33 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 16 Jun 2018 11:46:34 GMT
ENV REDIS_VERSION=4.0.10
# Sat, 16 Jun 2018 11:46:34 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Sat, 16 Jun 2018 11:46:34 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Sat, 16 Jun 2018 11:46:56 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 16 Jun 2018 11:46:57 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 16 Jun 2018 11:46:57 GMT
VOLUME [/data]
# Sat, 16 Jun 2018 11:46:58 GMT
WORKDIR /data
# Sat, 16 Jun 2018 11:46:58 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 16 Jun 2018 11:46:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 16 Jun 2018 11:46:58 GMT
EXPOSE 6379/tcp
# Sat, 16 Jun 2018 11:46:58 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:11e7bc85614a236b32043d147930fd2bc9055af8642fe30e5e56142590572b0e`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 2.2 MB (2185231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f825cbb729285f1fe2a0cd1d4d36897e3fe2191c5ee044ce11a5d301dc64a34`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:167640baaae6b19b666d28c35de1dde729eaca22986531c0f3b3dd6af5bbc469`  
		Last Modified: Wed, 24 Jan 2018 06:25:46 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dab4f89cc8856e8d43a9cc8e3ba6670d31906a9a3409fdf2f59ad893cda37c8`  
		Last Modified: Wed, 24 Jan 2018 06:25:46 GMT  
		Size: 8.9 KB (8944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18bb5bbb266a48e419264c33d5b1e5115726f841f8e0a258cc957d8f19f21d57`  
		Last Modified: Sat, 16 Jun 2018 11:47:49 GMT  
		Size: 8.7 MB (8744503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:825c4308d3530e67fe8f5bc525f4f7b70f43a491d6651df9c771f367d5ebdfe5`  
		Last Modified: Sat, 16 Jun 2018 11:47:47 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7499a5f65aee6751160f6470805d67c4c9fc9e7862f801ee783c339bc15636a9`  
		Last Modified: Sat, 16 Jun 2018 11:47:47 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0-32bit`

```console
$ docker pull redis@sha256:4eb0d482ceab8ec980192c89adfa2e3d1480454e93edb393ac16518b197b33d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4.0-32bit` - linux; amd64

```console
$ docker pull redis@sha256:d9c0c157796eddf77aa2e549a80dda1d529ef50067d19836c147086d5daee87d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.5 MB (36540346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f1e64722b4767a7ea45e151d0837935a91951ff9399773aa2bee90f9b4eaab4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 26 Jun 2018 21:25:25 GMT
ADD file:28fbc9fd012eef72780d1c75fc2b0969d13f0138f735035335ab4b76793da2da in / 
# Tue, 26 Jun 2018 21:25:25 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 01:15:28 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 01:15:28 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 01:15:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 01:17:51 GMT
ENV REDIS_VERSION=4.0.10
# Wed, 27 Jun 2018 01:17:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Wed, 27 Jun 2018 01:17:51 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Wed, 27 Jun 2018 01:18:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 01:19:21 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 01:19:22 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 01:19:23 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 01:19:23 GMT
WORKDIR /data
# Wed, 27 Jun 2018 01:19:23 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 27 Jun 2018 01:19:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 01:19:24 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 01:19:24 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:683abbb4ea60e108164f1d351e7bcf13daf45941137d800086447874df05f48e`  
		Last Modified: Tue, 26 Jun 2018 21:37:45 GMT  
		Size: 22.5 MB (22496975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:259238e792d86e23dab13fbcfcadf090333328ad9f80894544316437461f0d1b`  
		Last Modified: Wed, 27 Jun 2018 01:19:50 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78399601c709f0e252523e534db03152a1b3f017c9f7c756d68791ef07bc5d0b`  
		Last Modified: Wed, 27 Jun 2018 01:19:50 GMT  
		Size: 941.5 KB (941493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70936999cfd008308909792dea4e16280e691dabcce0d6e0b3aefc99878e0db4`  
		Last Modified: Wed, 27 Jun 2018 01:21:48 GMT  
		Size: 4.8 MB (4848269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4bb8b6edf0ed18495d476d17e5020e68d919ddafe18f4438df4bcc5515f5031`  
		Last Modified: Wed, 27 Jun 2018 01:21:49 GMT  
		Size: 8.3 MB (8251365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07090b435cd512f6e613f392efeb880d03c4df7ea10e7c9054cca67ceab973c3`  
		Last Modified: Wed, 27 Jun 2018 01:21:47 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4a4e18b25e6f5fafcd310251773b647dca71b6a2d21b9bd572d4f9118accd6e`  
		Last Modified: Wed, 27 Jun 2018 01:21:47 GMT  
		Size: 407.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0-alpine`

```console
$ docker pull redis@sha256:686ab026fae07b3b99a8e74210c361714a80311ecc55f23b349ae930ed2f5a95
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

### `redis:4.0-alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:7cb42bcffd252a9ae3937c0f0e3041262e575e2491d9399fbd60a73bbd9375bf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7007858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b5da297397ecb885327f997039ef8ded6b34ac9ad68daedd59ef1a46fcd9e1e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:45 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Fri, 01 Dec 2017 18:41:45 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:46 GMT
CMD ["/bin/sh"]
# Wed, 16 May 2018 19:39:01 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 16 May 2018 19:39:06 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 16 Jun 2018 07:54:39 GMT
ENV REDIS_VERSION=4.0.10
# Sat, 16 Jun 2018 07:54:40 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Sat, 16 Jun 2018 07:54:41 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Sat, 16 Jun 2018 07:58:10 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 16 Jun 2018 07:58:14 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 16 Jun 2018 07:58:15 GMT
VOLUME [/data]
# Sat, 16 Jun 2018 07:58:16 GMT
WORKDIR /data
# Sat, 16 Jun 2018 07:58:18 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 16 Jun 2018 07:58:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 16 Jun 2018 07:58:19 GMT
EXPOSE 6379/tcp
# Sat, 16 Jun 2018 07:58:20 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bf7d76c39215a547858ef9260990b9b80c0e679bb2f6ceef942d7b6d0eeec3`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29b2b09993d378af670de0b63030a6a3e611e97529dfdbbc5aa5228af010f6c4`  
		Last Modified: Fri, 18 May 2018 07:58:12 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66f37a02127b76c7deae98d4551daa47405376826362bb20a76575f6710ccb2b`  
		Last Modified: Fri, 18 May 2018 07:58:12 GMT  
		Size: 8.7 KB (8716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef2c31755478c8398dac24d0ee0162f90b1cb47e3ff824b7c5c4acd8c2748c02`  
		Last Modified: Sat, 16 Jun 2018 07:59:23 GMT  
		Size: 5.0 MB (4958853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e09973e2d5b4223a1138a26e89fe5d86126a8e56943a8eb4ea12d8aedb7169b9`  
		Last Modified: Sat, 16 Jun 2018 07:59:16 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b66bca9eacbae3473f05833395362b54eca3fcf5a138f2594b87bcb2b2cd4160`  
		Last Modified: Sat, 16 Jun 2018 07:59:16 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:94b233ddbda17ed48ef9c1363ebe0793564c8b99424198e56e71d2f954fc7d66
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10320964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b874f29b004fc602eff10fdcca861e0868cca9139402743e319b49aba27004f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Wed, 24 Jan 2018 13:25:46 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 24 Jan 2018 13:25:50 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 16 Jun 2018 09:58:39 GMT
ENV REDIS_VERSION=4.0.10
# Sat, 16 Jun 2018 09:58:40 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Sat, 16 Jun 2018 09:58:41 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Sat, 16 Jun 2018 09:59:21 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 16 Jun 2018 09:59:22 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 16 Jun 2018 09:59:23 GMT
VOLUME [/data]
# Sat, 16 Jun 2018 09:59:24 GMT
WORKDIR /data
# Sat, 16 Jun 2018 09:59:25 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 16 Jun 2018 09:59:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 16 Jun 2018 09:59:27 GMT
EXPOSE 6379/tcp
# Sat, 16 Jun 2018 09:59:28 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec42e4d70bd6b5d14ceb60d165f35c9d1348c35d3a566bb230cec599a0ffd64`  
		Last Modified: Wed, 24 Jan 2018 13:28:23 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:555bf2ac2a80a9414fecc99d0e2e659cf9cc43ddcf785a45cf07b2fbcbf0f7b4`  
		Last Modified: Wed, 24 Jan 2018 13:28:23 GMT  
		Size: 8.7 KB (8656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c8c0e92a87891c3eb3b52600dbea5a33a9502b831b4fc925c31332ba2ddb83e`  
		Last Modified: Sat, 16 Jun 2018 10:01:17 GMT  
		Size: 8.3 MB (8321526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b84fe24fa936a7141bacf30b6d92d25ee2960d56d1309585a659d00f8e1331`  
		Last Modified: Sat, 16 Jun 2018 10:01:14 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8abb6c43bde7d475f963f75d5fb5f8a723dbbb17d0a0fe07b282b511e9ec281b`  
		Last Modified: Sat, 16 Jun 2018 10:01:13 GMT  
		Size: 398.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine` - linux; 386

```console
$ docker pull redis@sha256:8815bfa40fb9e12f532a35ec4ae979b1f6b54dd0f0ac4d39d9fcc80d3c7b4a23
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.2 MB (10212379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21eb871992a23a4cec93c65de75aa973373bfe89d474ec174459448a8a961702`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 01 Jun 2018 06:57:26 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Jun 2018 06:57:26 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Jun 2018 06:57:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Jun 2018 15:57:41 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 01 Jun 2018 15:57:42 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 16 Jun 2018 10:43:46 GMT
ENV REDIS_VERSION=4.0.10
# Sat, 16 Jun 2018 10:43:46 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Sat, 16 Jun 2018 10:43:46 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Sat, 16 Jun 2018 10:44:16 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 16 Jun 2018 10:44:16 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 16 Jun 2018 10:44:16 GMT
VOLUME [/data]
# Sat, 16 Jun 2018 10:44:17 GMT
WORKDIR /data
# Sat, 16 Jun 2018 10:44:17 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 16 Jun 2018 10:44:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 16 Jun 2018 10:44:17 GMT
EXPOSE 6379/tcp
# Sat, 16 Jun 2018 10:44:17 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:061a9db3c9e4f3bc32618a5f1a7e2b8aefb20fcc48f8be709bc7f7eabe61d003`  
		Last Modified: Fri, 01 Jun 2018 06:57:51 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32c5c681510e095d5b56ec0b42770c915f177d63e694ce6b59a6081187bb4e38`  
		Last Modified: Fri, 01 Jun 2018 16:02:37 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c69d5dac586a34e49b9e78377c5b5ccf2dab95a9383f555ee0bf7e10be877000`  
		Last Modified: Fri, 01 Jun 2018 16:02:37 GMT  
		Size: 8.7 KB (8653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dde4f4bf0970e393c94fb45d474c75d7d3ae28f7c5ef23ce092dffccf7785cca`  
		Last Modified: Sat, 16 Jun 2018 10:46:16 GMT  
		Size: 8.1 MB (8075583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e2b5d2d19946ba0e7a3118e45636a8116518af6bf494ca7cad0d3fa41329da0`  
		Last Modified: Sat, 16 Jun 2018 10:46:12 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31e8656094cb926219927af5df610c90078d7bd50d5fc19bb666abb191b660fe`  
		Last Modified: Sat, 16 Jun 2018 10:46:12 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:c39a3f92a82c9c25f8cf11cf235fef6d5e092a7adc6c7cdc9c46ad8c924e041a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10746694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:742d1594ae2148d6198abf982829c636b48eb6924e697ea39cfa06db9086735d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Wed, 24 Jan 2018 06:35:28 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 24 Jan 2018 06:35:34 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 16 Jun 2018 08:23:23 GMT
ENV REDIS_VERSION=4.0.10
# Sat, 16 Jun 2018 08:23:24 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Sat, 16 Jun 2018 08:23:25 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Sat, 16 Jun 2018 08:23:49 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 16 Jun 2018 08:23:52 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 16 Jun 2018 08:23:53 GMT
VOLUME [/data]
# Sat, 16 Jun 2018 08:23:54 GMT
WORKDIR /data
# Sat, 16 Jun 2018 08:23:56 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 16 Jun 2018 08:23:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 16 Jun 2018 08:23:57 GMT
EXPOSE 6379/tcp
# Sat, 16 Jun 2018 08:23:58 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:802132ccdaaf1e42c991c0ad2b274ee46d7d02210e23a3bc630c772fbdd533c2`  
		Last Modified: Wed, 24 Jan 2018 06:37:26 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3edb35368beebf064881c4a2efa343effc2775c4bb6e9121e8426990bc75df12`  
		Last Modified: Wed, 24 Jan 2018 06:37:26 GMT  
		Size: 9.3 KB (9269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa36952805f7607221db573d9a44e14effade54b662cab05bc0e17cfa7fd5dd4`  
		Last Modified: Sat, 16 Jun 2018 08:25:31 GMT  
		Size: 8.7 MB (8653962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ab9fd264b67f2375fe2753c4f247110cd1db1a0091cbd4fba8c6652db53162`  
		Last Modified: Sat, 16 Jun 2018 08:25:29 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdd02adcddfc5d1eba6cae28eb78b5c9e5501bd0e4bf6bca22367117a37e8f8b`  
		Last Modified: Sat, 16 Jun 2018 08:25:29 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine` - linux; s390x

```console
$ docker pull redis@sha256:bc3c859de555582f56df03904deb6ba5295b45c030e8eaf7d41a4bd5efbd5418
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10940605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a00effc5c867e9fea95676b5ea97807df71fbecfbf44d5803cacd3fa7807177`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Wed, 24 Jan 2018 06:24:30 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 24 Jan 2018 06:24:33 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 16 Jun 2018 11:46:34 GMT
ENV REDIS_VERSION=4.0.10
# Sat, 16 Jun 2018 11:46:34 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Sat, 16 Jun 2018 11:46:34 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Sat, 16 Jun 2018 11:46:56 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 16 Jun 2018 11:46:57 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 16 Jun 2018 11:46:57 GMT
VOLUME [/data]
# Sat, 16 Jun 2018 11:46:58 GMT
WORKDIR /data
# Sat, 16 Jun 2018 11:46:58 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 16 Jun 2018 11:46:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 16 Jun 2018 11:46:58 GMT
EXPOSE 6379/tcp
# Sat, 16 Jun 2018 11:46:58 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:11e7bc85614a236b32043d147930fd2bc9055af8642fe30e5e56142590572b0e`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 2.2 MB (2185231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f825cbb729285f1fe2a0cd1d4d36897e3fe2191c5ee044ce11a5d301dc64a34`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:167640baaae6b19b666d28c35de1dde729eaca22986531c0f3b3dd6af5bbc469`  
		Last Modified: Wed, 24 Jan 2018 06:25:46 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dab4f89cc8856e8d43a9cc8e3ba6670d31906a9a3409fdf2f59ad893cda37c8`  
		Last Modified: Wed, 24 Jan 2018 06:25:46 GMT  
		Size: 8.9 KB (8944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18bb5bbb266a48e419264c33d5b1e5115726f841f8e0a258cc957d8f19f21d57`  
		Last Modified: Sat, 16 Jun 2018 11:47:49 GMT  
		Size: 8.7 MB (8744503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:825c4308d3530e67fe8f5bc525f4f7b70f43a491d6651df9c771f367d5ebdfe5`  
		Last Modified: Sat, 16 Jun 2018 11:47:47 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7499a5f65aee6751160f6470805d67c4c9fc9e7862f801ee783c339bc15636a9`  
		Last Modified: Sat, 16 Jun 2018 11:47:47 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4-32bit`

```console
$ docker pull redis@sha256:4eb0d482ceab8ec980192c89adfa2e3d1480454e93edb393ac16518b197b33d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4-32bit` - linux; amd64

```console
$ docker pull redis@sha256:d9c0c157796eddf77aa2e549a80dda1d529ef50067d19836c147086d5daee87d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.5 MB (36540346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f1e64722b4767a7ea45e151d0837935a91951ff9399773aa2bee90f9b4eaab4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 26 Jun 2018 21:25:25 GMT
ADD file:28fbc9fd012eef72780d1c75fc2b0969d13f0138f735035335ab4b76793da2da in / 
# Tue, 26 Jun 2018 21:25:25 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 01:15:28 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 01:15:28 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 01:15:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 01:17:51 GMT
ENV REDIS_VERSION=4.0.10
# Wed, 27 Jun 2018 01:17:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Wed, 27 Jun 2018 01:17:51 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Wed, 27 Jun 2018 01:18:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 01:19:21 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 01:19:22 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 01:19:23 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 01:19:23 GMT
WORKDIR /data
# Wed, 27 Jun 2018 01:19:23 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 27 Jun 2018 01:19:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 01:19:24 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 01:19:24 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:683abbb4ea60e108164f1d351e7bcf13daf45941137d800086447874df05f48e`  
		Last Modified: Tue, 26 Jun 2018 21:37:45 GMT  
		Size: 22.5 MB (22496975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:259238e792d86e23dab13fbcfcadf090333328ad9f80894544316437461f0d1b`  
		Last Modified: Wed, 27 Jun 2018 01:19:50 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78399601c709f0e252523e534db03152a1b3f017c9f7c756d68791ef07bc5d0b`  
		Last Modified: Wed, 27 Jun 2018 01:19:50 GMT  
		Size: 941.5 KB (941493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70936999cfd008308909792dea4e16280e691dabcce0d6e0b3aefc99878e0db4`  
		Last Modified: Wed, 27 Jun 2018 01:21:48 GMT  
		Size: 4.8 MB (4848269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4bb8b6edf0ed18495d476d17e5020e68d919ddafe18f4438df4bcc5515f5031`  
		Last Modified: Wed, 27 Jun 2018 01:21:49 GMT  
		Size: 8.3 MB (8251365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07090b435cd512f6e613f392efeb880d03c4df7ea10e7c9054cca67ceab973c3`  
		Last Modified: Wed, 27 Jun 2018 01:21:47 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4a4e18b25e6f5fafcd310251773b647dca71b6a2d21b9bd572d4f9118accd6e`  
		Last Modified: Wed, 27 Jun 2018 01:21:47 GMT  
		Size: 407.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4-alpine`

```console
$ docker pull redis@sha256:686ab026fae07b3b99a8e74210c361714a80311ecc55f23b349ae930ed2f5a95
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

### `redis:4-alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:7cb42bcffd252a9ae3937c0f0e3041262e575e2491d9399fbd60a73bbd9375bf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7007858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b5da297397ecb885327f997039ef8ded6b34ac9ad68daedd59ef1a46fcd9e1e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:45 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Fri, 01 Dec 2017 18:41:45 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:46 GMT
CMD ["/bin/sh"]
# Wed, 16 May 2018 19:39:01 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 16 May 2018 19:39:06 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 16 Jun 2018 07:54:39 GMT
ENV REDIS_VERSION=4.0.10
# Sat, 16 Jun 2018 07:54:40 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Sat, 16 Jun 2018 07:54:41 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Sat, 16 Jun 2018 07:58:10 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 16 Jun 2018 07:58:14 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 16 Jun 2018 07:58:15 GMT
VOLUME [/data]
# Sat, 16 Jun 2018 07:58:16 GMT
WORKDIR /data
# Sat, 16 Jun 2018 07:58:18 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 16 Jun 2018 07:58:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 16 Jun 2018 07:58:19 GMT
EXPOSE 6379/tcp
# Sat, 16 Jun 2018 07:58:20 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bf7d76c39215a547858ef9260990b9b80c0e679bb2f6ceef942d7b6d0eeec3`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29b2b09993d378af670de0b63030a6a3e611e97529dfdbbc5aa5228af010f6c4`  
		Last Modified: Fri, 18 May 2018 07:58:12 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66f37a02127b76c7deae98d4551daa47405376826362bb20a76575f6710ccb2b`  
		Last Modified: Fri, 18 May 2018 07:58:12 GMT  
		Size: 8.7 KB (8716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef2c31755478c8398dac24d0ee0162f90b1cb47e3ff824b7c5c4acd8c2748c02`  
		Last Modified: Sat, 16 Jun 2018 07:59:23 GMT  
		Size: 5.0 MB (4958853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e09973e2d5b4223a1138a26e89fe5d86126a8e56943a8eb4ea12d8aedb7169b9`  
		Last Modified: Sat, 16 Jun 2018 07:59:16 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b66bca9eacbae3473f05833395362b54eca3fcf5a138f2594b87bcb2b2cd4160`  
		Last Modified: Sat, 16 Jun 2018 07:59:16 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:94b233ddbda17ed48ef9c1363ebe0793564c8b99424198e56e71d2f954fc7d66
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10320964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b874f29b004fc602eff10fdcca861e0868cca9139402743e319b49aba27004f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Wed, 24 Jan 2018 13:25:46 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 24 Jan 2018 13:25:50 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 16 Jun 2018 09:58:39 GMT
ENV REDIS_VERSION=4.0.10
# Sat, 16 Jun 2018 09:58:40 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Sat, 16 Jun 2018 09:58:41 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Sat, 16 Jun 2018 09:59:21 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 16 Jun 2018 09:59:22 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 16 Jun 2018 09:59:23 GMT
VOLUME [/data]
# Sat, 16 Jun 2018 09:59:24 GMT
WORKDIR /data
# Sat, 16 Jun 2018 09:59:25 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 16 Jun 2018 09:59:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 16 Jun 2018 09:59:27 GMT
EXPOSE 6379/tcp
# Sat, 16 Jun 2018 09:59:28 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec42e4d70bd6b5d14ceb60d165f35c9d1348c35d3a566bb230cec599a0ffd64`  
		Last Modified: Wed, 24 Jan 2018 13:28:23 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:555bf2ac2a80a9414fecc99d0e2e659cf9cc43ddcf785a45cf07b2fbcbf0f7b4`  
		Last Modified: Wed, 24 Jan 2018 13:28:23 GMT  
		Size: 8.7 KB (8656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c8c0e92a87891c3eb3b52600dbea5a33a9502b831b4fc925c31332ba2ddb83e`  
		Last Modified: Sat, 16 Jun 2018 10:01:17 GMT  
		Size: 8.3 MB (8321526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b84fe24fa936a7141bacf30b6d92d25ee2960d56d1309585a659d00f8e1331`  
		Last Modified: Sat, 16 Jun 2018 10:01:14 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8abb6c43bde7d475f963f75d5fb5f8a723dbbb17d0a0fe07b282b511e9ec281b`  
		Last Modified: Sat, 16 Jun 2018 10:01:13 GMT  
		Size: 398.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine` - linux; 386

```console
$ docker pull redis@sha256:8815bfa40fb9e12f532a35ec4ae979b1f6b54dd0f0ac4d39d9fcc80d3c7b4a23
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.2 MB (10212379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21eb871992a23a4cec93c65de75aa973373bfe89d474ec174459448a8a961702`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 01 Jun 2018 06:57:26 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Jun 2018 06:57:26 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Jun 2018 06:57:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Jun 2018 15:57:41 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 01 Jun 2018 15:57:42 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 16 Jun 2018 10:43:46 GMT
ENV REDIS_VERSION=4.0.10
# Sat, 16 Jun 2018 10:43:46 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Sat, 16 Jun 2018 10:43:46 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Sat, 16 Jun 2018 10:44:16 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 16 Jun 2018 10:44:16 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 16 Jun 2018 10:44:16 GMT
VOLUME [/data]
# Sat, 16 Jun 2018 10:44:17 GMT
WORKDIR /data
# Sat, 16 Jun 2018 10:44:17 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 16 Jun 2018 10:44:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 16 Jun 2018 10:44:17 GMT
EXPOSE 6379/tcp
# Sat, 16 Jun 2018 10:44:17 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:061a9db3c9e4f3bc32618a5f1a7e2b8aefb20fcc48f8be709bc7f7eabe61d003`  
		Last Modified: Fri, 01 Jun 2018 06:57:51 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32c5c681510e095d5b56ec0b42770c915f177d63e694ce6b59a6081187bb4e38`  
		Last Modified: Fri, 01 Jun 2018 16:02:37 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c69d5dac586a34e49b9e78377c5b5ccf2dab95a9383f555ee0bf7e10be877000`  
		Last Modified: Fri, 01 Jun 2018 16:02:37 GMT  
		Size: 8.7 KB (8653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dde4f4bf0970e393c94fb45d474c75d7d3ae28f7c5ef23ce092dffccf7785cca`  
		Last Modified: Sat, 16 Jun 2018 10:46:16 GMT  
		Size: 8.1 MB (8075583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e2b5d2d19946ba0e7a3118e45636a8116518af6bf494ca7cad0d3fa41329da0`  
		Last Modified: Sat, 16 Jun 2018 10:46:12 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31e8656094cb926219927af5df610c90078d7bd50d5fc19bb666abb191b660fe`  
		Last Modified: Sat, 16 Jun 2018 10:46:12 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:c39a3f92a82c9c25f8cf11cf235fef6d5e092a7adc6c7cdc9c46ad8c924e041a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10746694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:742d1594ae2148d6198abf982829c636b48eb6924e697ea39cfa06db9086735d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Wed, 24 Jan 2018 06:35:28 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 24 Jan 2018 06:35:34 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 16 Jun 2018 08:23:23 GMT
ENV REDIS_VERSION=4.0.10
# Sat, 16 Jun 2018 08:23:24 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Sat, 16 Jun 2018 08:23:25 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Sat, 16 Jun 2018 08:23:49 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 16 Jun 2018 08:23:52 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 16 Jun 2018 08:23:53 GMT
VOLUME [/data]
# Sat, 16 Jun 2018 08:23:54 GMT
WORKDIR /data
# Sat, 16 Jun 2018 08:23:56 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 16 Jun 2018 08:23:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 16 Jun 2018 08:23:57 GMT
EXPOSE 6379/tcp
# Sat, 16 Jun 2018 08:23:58 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:802132ccdaaf1e42c991c0ad2b274ee46d7d02210e23a3bc630c772fbdd533c2`  
		Last Modified: Wed, 24 Jan 2018 06:37:26 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3edb35368beebf064881c4a2efa343effc2775c4bb6e9121e8426990bc75df12`  
		Last Modified: Wed, 24 Jan 2018 06:37:26 GMT  
		Size: 9.3 KB (9269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa36952805f7607221db573d9a44e14effade54b662cab05bc0e17cfa7fd5dd4`  
		Last Modified: Sat, 16 Jun 2018 08:25:31 GMT  
		Size: 8.7 MB (8653962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ab9fd264b67f2375fe2753c4f247110cd1db1a0091cbd4fba8c6652db53162`  
		Last Modified: Sat, 16 Jun 2018 08:25:29 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdd02adcddfc5d1eba6cae28eb78b5c9e5501bd0e4bf6bca22367117a37e8f8b`  
		Last Modified: Sat, 16 Jun 2018 08:25:29 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine` - linux; s390x

```console
$ docker pull redis@sha256:bc3c859de555582f56df03904deb6ba5295b45c030e8eaf7d41a4bd5efbd5418
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10940605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a00effc5c867e9fea95676b5ea97807df71fbecfbf44d5803cacd3fa7807177`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Wed, 24 Jan 2018 06:24:30 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 24 Jan 2018 06:24:33 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 16 Jun 2018 11:46:34 GMT
ENV REDIS_VERSION=4.0.10
# Sat, 16 Jun 2018 11:46:34 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Sat, 16 Jun 2018 11:46:34 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Sat, 16 Jun 2018 11:46:56 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 16 Jun 2018 11:46:57 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 16 Jun 2018 11:46:57 GMT
VOLUME [/data]
# Sat, 16 Jun 2018 11:46:58 GMT
WORKDIR /data
# Sat, 16 Jun 2018 11:46:58 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 16 Jun 2018 11:46:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 16 Jun 2018 11:46:58 GMT
EXPOSE 6379/tcp
# Sat, 16 Jun 2018 11:46:58 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:11e7bc85614a236b32043d147930fd2bc9055af8642fe30e5e56142590572b0e`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 2.2 MB (2185231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f825cbb729285f1fe2a0cd1d4d36897e3fe2191c5ee044ce11a5d301dc64a34`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:167640baaae6b19b666d28c35de1dde729eaca22986531c0f3b3dd6af5bbc469`  
		Last Modified: Wed, 24 Jan 2018 06:25:46 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dab4f89cc8856e8d43a9cc8e3ba6670d31906a9a3409fdf2f59ad893cda37c8`  
		Last Modified: Wed, 24 Jan 2018 06:25:46 GMT  
		Size: 8.9 KB (8944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18bb5bbb266a48e419264c33d5b1e5115726f841f8e0a258cc957d8f19f21d57`  
		Last Modified: Sat, 16 Jun 2018 11:47:49 GMT  
		Size: 8.7 MB (8744503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:825c4308d3530e67fe8f5bc525f4f7b70f43a491d6651df9c771f367d5ebdfe5`  
		Last Modified: Sat, 16 Jun 2018 11:47:47 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7499a5f65aee6751160f6470805d67c4c9fc9e7862f801ee783c339bc15636a9`  
		Last Modified: Sat, 16 Jun 2018 11:47:47 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0-rc`

```console
$ docker pull redis@sha256:5e04b7f66df5acc7e85e1a31b4dc183fc84b974d2cce51d36f374d74f9e22aa6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5.0-rc` - linux; amd64

```console
$ docker pull redis@sha256:5c2dce1b7befef1c562591f96365ad4a200fb2ec335330133ee01adc2298c8a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.0 MB (34970631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63d0ddaede1c99bb6bc3854c500259473d916fcab59f2ced3b899e9a2f14ff5a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 26 Jun 2018 21:25:25 GMT
ADD file:28fbc9fd012eef72780d1c75fc2b0969d13f0138f735035335ab4b76793da2da in / 
# Tue, 26 Jun 2018 21:25:25 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 01:15:28 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 01:15:28 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 01:15:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 22:40:13 GMT
ENV REDIS_VERSION=5.0-rc3
# Wed, 27 Jun 2018 22:40:13 GMT
ENV REDIS_DOWNLOAD_URL=https://github.com/antirez/redis/archive/5.0-rc3.tar.gz
# Wed, 27 Jun 2018 22:40:13 GMT
ENV REDIS_DOWNLOAD_SHA=4bb2eeef3695d66d8b64767825acfeeb157d64536233eac7eae71b236fd6554f
# Wed, 27 Jun 2018 22:41:10 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 22:41:11 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 22:41:11 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 22:41:12 GMT
WORKDIR /data
# Wed, 27 Jun 2018 22:41:12 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 27 Jun 2018 22:41:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 22:41:13 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 22:41:13 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:683abbb4ea60e108164f1d351e7bcf13daf45941137d800086447874df05f48e`  
		Last Modified: Tue, 26 Jun 2018 21:37:45 GMT  
		Size: 22.5 MB (22496975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:259238e792d86e23dab13fbcfcadf090333328ad9f80894544316437461f0d1b`  
		Last Modified: Wed, 27 Jun 2018 01:19:50 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78399601c709f0e252523e534db03152a1b3f017c9f7c756d68791ef07bc5d0b`  
		Last Modified: Wed, 27 Jun 2018 01:19:50 GMT  
		Size: 941.5 KB (941493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ffb11ec305f200daab7bb1b7e3e012471e92785407ccb46df8ef0b13b7fccda`  
		Last Modified: Wed, 27 Jun 2018 22:44:33 GMT  
		Size: 11.5 MB (11529923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1bc292b2833cc757a4099e5bd31cde3b954575bbe1c914b8ffd33b0d8944414`  
		Last Modified: Wed, 27 Jun 2018 22:44:29 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf5e42e243cc52aa19f3ceb805b1f28217e5a807918e16ba60f6ee0368ac8e7f`  
		Last Modified: Wed, 27 Jun 2018 22:44:28 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0-rc3`

```console
$ docker pull redis@sha256:5e04b7f66df5acc7e85e1a31b4dc183fc84b974d2cce51d36f374d74f9e22aa6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5.0-rc3` - linux; amd64

```console
$ docker pull redis@sha256:5c2dce1b7befef1c562591f96365ad4a200fb2ec335330133ee01adc2298c8a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.0 MB (34970631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63d0ddaede1c99bb6bc3854c500259473d916fcab59f2ced3b899e9a2f14ff5a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 26 Jun 2018 21:25:25 GMT
ADD file:28fbc9fd012eef72780d1c75fc2b0969d13f0138f735035335ab4b76793da2da in / 
# Tue, 26 Jun 2018 21:25:25 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 01:15:28 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 01:15:28 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 01:15:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 22:40:13 GMT
ENV REDIS_VERSION=5.0-rc3
# Wed, 27 Jun 2018 22:40:13 GMT
ENV REDIS_DOWNLOAD_URL=https://github.com/antirez/redis/archive/5.0-rc3.tar.gz
# Wed, 27 Jun 2018 22:40:13 GMT
ENV REDIS_DOWNLOAD_SHA=4bb2eeef3695d66d8b64767825acfeeb157d64536233eac7eae71b236fd6554f
# Wed, 27 Jun 2018 22:41:10 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 22:41:11 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 22:41:11 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 22:41:12 GMT
WORKDIR /data
# Wed, 27 Jun 2018 22:41:12 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 27 Jun 2018 22:41:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 22:41:13 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 22:41:13 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:683abbb4ea60e108164f1d351e7bcf13daf45941137d800086447874df05f48e`  
		Last Modified: Tue, 26 Jun 2018 21:37:45 GMT  
		Size: 22.5 MB (22496975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:259238e792d86e23dab13fbcfcadf090333328ad9f80894544316437461f0d1b`  
		Last Modified: Wed, 27 Jun 2018 01:19:50 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78399601c709f0e252523e534db03152a1b3f017c9f7c756d68791ef07bc5d0b`  
		Last Modified: Wed, 27 Jun 2018 01:19:50 GMT  
		Size: 941.5 KB (941493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ffb11ec305f200daab7bb1b7e3e012471e92785407ccb46df8ef0b13b7fccda`  
		Last Modified: Wed, 27 Jun 2018 22:44:33 GMT  
		Size: 11.5 MB (11529923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1bc292b2833cc757a4099e5bd31cde3b954575bbe1c914b8ffd33b0d8944414`  
		Last Modified: Wed, 27 Jun 2018 22:44:29 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf5e42e243cc52aa19f3ceb805b1f28217e5a807918e16ba60f6ee0368ac8e7f`  
		Last Modified: Wed, 27 Jun 2018 22:44:28 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0-rc-32bit`

```console
$ docker pull redis@sha256:2e2311274ccd8f3b3190675f3aee4af49520d1df8e343cc9be9a8b5a52173bec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5.0-rc-32bit` - linux; amd64

```console
$ docker pull redis@sha256:dc3989c9cef99c7dbdb18bd80f9d1edec7211096e50c7803976b338dd330786f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.2 MB (39243922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce256ced5932a3e7f70c71381959b6403b8889808ef0bce4356c21370f8f459f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 26 Jun 2018 21:25:25 GMT
ADD file:28fbc9fd012eef72780d1c75fc2b0969d13f0138f735035335ab4b76793da2da in / 
# Tue, 26 Jun 2018 21:25:25 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 01:15:28 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 01:15:28 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 01:15:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 22:40:13 GMT
ENV REDIS_VERSION=5.0-rc3
# Wed, 27 Jun 2018 22:40:13 GMT
ENV REDIS_DOWNLOAD_URL=https://github.com/antirez/redis/archive/5.0-rc3.tar.gz
# Wed, 27 Jun 2018 22:40:13 GMT
ENV REDIS_DOWNLOAD_SHA=4bb2eeef3695d66d8b64767825acfeeb157d64536233eac7eae71b236fd6554f
# Wed, 27 Jun 2018 22:41:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 22:42:55 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 22:42:56 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 22:42:56 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 22:42:57 GMT
WORKDIR /data
# Wed, 27 Jun 2018 22:42:57 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 27 Jun 2018 22:42:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 22:42:57 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 22:42:58 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:683abbb4ea60e108164f1d351e7bcf13daf45941137d800086447874df05f48e`  
		Last Modified: Tue, 26 Jun 2018 21:37:45 GMT  
		Size: 22.5 MB (22496975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:259238e792d86e23dab13fbcfcadf090333328ad9f80894544316437461f0d1b`  
		Last Modified: Wed, 27 Jun 2018 01:19:50 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78399601c709f0e252523e534db03152a1b3f017c9f7c756d68791ef07bc5d0b`  
		Last Modified: Wed, 27 Jun 2018 01:19:50 GMT  
		Size: 941.5 KB (941493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa500c7b10141361cbfac6980c769ee047c24db44fa59d766acb2ed2e57f0ed8`  
		Last Modified: Wed, 27 Jun 2018 22:45:00 GMT  
		Size: 4.8 MB (4848308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0edf57846a6cf75df91ec220dc0064f7233ab7ccaddc9ede58fe68168c808731`  
		Last Modified: Wed, 27 Jun 2018 22:45:01 GMT  
		Size: 11.0 MB (10954901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c35f7e0ee5851346068461b0cb7e0a3f87b6fc6e4bf04525160261ceffe0181f`  
		Last Modified: Wed, 27 Jun 2018 22:44:59 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00c66def105e91dfc1caeaf6215ed15f0c38d94b8f2a5dff6a8893a4a2355cf5`  
		Last Modified: Wed, 27 Jun 2018 22:44:59 GMT  
		Size: 409.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0-rc3-32bit`

```console
$ docker pull redis@sha256:2e2311274ccd8f3b3190675f3aee4af49520d1df8e343cc9be9a8b5a52173bec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5.0-rc3-32bit` - linux; amd64

```console
$ docker pull redis@sha256:dc3989c9cef99c7dbdb18bd80f9d1edec7211096e50c7803976b338dd330786f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.2 MB (39243922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce256ced5932a3e7f70c71381959b6403b8889808ef0bce4356c21370f8f459f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 26 Jun 2018 21:25:25 GMT
ADD file:28fbc9fd012eef72780d1c75fc2b0969d13f0138f735035335ab4b76793da2da in / 
# Tue, 26 Jun 2018 21:25:25 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 01:15:28 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 01:15:28 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 01:15:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 22:40:13 GMT
ENV REDIS_VERSION=5.0-rc3
# Wed, 27 Jun 2018 22:40:13 GMT
ENV REDIS_DOWNLOAD_URL=https://github.com/antirez/redis/archive/5.0-rc3.tar.gz
# Wed, 27 Jun 2018 22:40:13 GMT
ENV REDIS_DOWNLOAD_SHA=4bb2eeef3695d66d8b64767825acfeeb157d64536233eac7eae71b236fd6554f
# Wed, 27 Jun 2018 22:41:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 22:42:55 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 22:42:56 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 22:42:56 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 22:42:57 GMT
WORKDIR /data
# Wed, 27 Jun 2018 22:42:57 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 27 Jun 2018 22:42:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 22:42:57 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 22:42:58 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:683abbb4ea60e108164f1d351e7bcf13daf45941137d800086447874df05f48e`  
		Last Modified: Tue, 26 Jun 2018 21:37:45 GMT  
		Size: 22.5 MB (22496975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:259238e792d86e23dab13fbcfcadf090333328ad9f80894544316437461f0d1b`  
		Last Modified: Wed, 27 Jun 2018 01:19:50 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78399601c709f0e252523e534db03152a1b3f017c9f7c756d68791ef07bc5d0b`  
		Last Modified: Wed, 27 Jun 2018 01:19:50 GMT  
		Size: 941.5 KB (941493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa500c7b10141361cbfac6980c769ee047c24db44fa59d766acb2ed2e57f0ed8`  
		Last Modified: Wed, 27 Jun 2018 22:45:00 GMT  
		Size: 4.8 MB (4848308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0edf57846a6cf75df91ec220dc0064f7233ab7ccaddc9ede58fe68168c808731`  
		Last Modified: Wed, 27 Jun 2018 22:45:01 GMT  
		Size: 11.0 MB (10954901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c35f7e0ee5851346068461b0cb7e0a3f87b6fc6e4bf04525160261ceffe0181f`  
		Last Modified: Wed, 27 Jun 2018 22:44:59 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00c66def105e91dfc1caeaf6215ed15f0c38d94b8f2a5dff6a8893a4a2355cf5`  
		Last Modified: Wed, 27 Jun 2018 22:44:59 GMT  
		Size: 409.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0-rc3-alpine`

```console
$ docker pull redis@sha256:0d1bdfdcec9a4ce7a03796ba77c364d7086e30bff77e9050c2f5e56e23750b09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `redis:5.0-rc3-alpine` - linux; amd64

```console
$ docker pull redis@sha256:b5bffcec72f9b6b4b4e04c59dfd5fefc9b86f136e8a1ec81a87e365a439cb245
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.3 MB (13262630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a2a9ab8df3e0f2db61aa9d0bdb3e4f713c19e41fbba602c3c14dd5ef760514f`
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
# Wed, 27 Jun 2018 22:43:14 GMT
ENV REDIS_VERSION=5.0-rc3
# Wed, 27 Jun 2018 22:43:14 GMT
ENV REDIS_DOWNLOAD_URL=https://github.com/antirez/redis/archive/5.0-rc3.tar.gz
# Wed, 27 Jun 2018 22:43:15 GMT
ENV REDIS_DOWNLOAD_SHA=4bb2eeef3695d66d8b64767825acfeeb157d64536233eac7eae71b236fd6554f
# Wed, 27 Jun 2018 22:43:53 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 		wget 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 27 Jun 2018 22:43:54 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 22:43:54 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 22:43:54 GMT
WORKDIR /data
# Wed, 27 Jun 2018 22:43:55 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 27 Jun 2018 22:43:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 22:43:55 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 22:43:55 GMT
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
	-	`sha256:43e22f7081586f010df2b1fb980f1315fcaa3582ce5854ba0df196afc1014f6d`  
		Last Modified: Wed, 27 Jun 2018 22:45:29 GMT  
		Size: 11.2 MB (11186789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46897efff3adeeb8899bd342fe1ef09427708d72afc630cc640cd59f44a98648`  
		Last Modified: Wed, 27 Jun 2018 22:45:24 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3402f1d3637c4e98427df625fb37dff476914ed80c573bf7b86956b86952f6ef`  
		Last Modified: Wed, 27 Jun 2018 22:45:24 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-rc3-alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:eeb20691f7b2a2e5c0f0c19e4eec2f140b974245e82cac324ea29848317e3366
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7334546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20c99b0b85aeddaa018976d3f44440c90512ce863e1ce4e5d968f91f668cd86f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:45 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Fri, 01 Dec 2017 18:41:45 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:46 GMT
CMD ["/bin/sh"]
# Wed, 16 May 2018 19:39:01 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 16 May 2018 19:39:06 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 28 Jun 2018 08:14:32 GMT
ENV REDIS_VERSION=5.0-rc3
# Thu, 28 Jun 2018 08:14:32 GMT
ENV REDIS_DOWNLOAD_URL=https://github.com/antirez/redis/archive/5.0-rc3.tar.gz
# Thu, 28 Jun 2018 08:14:33 GMT
ENV REDIS_DOWNLOAD_SHA=4bb2eeef3695d66d8b64767825acfeeb157d64536233eac7eae71b236fd6554f
# Thu, 28 Jun 2018 08:18:29 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 		wget 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 28 Jun 2018 08:18:35 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 28 Jun 2018 08:18:36 GMT
VOLUME [/data]
# Thu, 28 Jun 2018 08:18:36 GMT
WORKDIR /data
# Thu, 28 Jun 2018 08:18:38 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Thu, 28 Jun 2018 08:18:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Jun 2018 08:18:39 GMT
EXPOSE 6379/tcp
# Thu, 28 Jun 2018 08:18:40 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bf7d76c39215a547858ef9260990b9b80c0e679bb2f6ceef942d7b6d0eeec3`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29b2b09993d378af670de0b63030a6a3e611e97529dfdbbc5aa5228af010f6c4`  
		Last Modified: Fri, 18 May 2018 07:58:12 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66f37a02127b76c7deae98d4551daa47405376826362bb20a76575f6710ccb2b`  
		Last Modified: Fri, 18 May 2018 07:58:12 GMT  
		Size: 8.7 KB (8716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bd1e7a2dcf09eb7862b54afd38511fa216af14d9b5861c700c67e2c7cd3857b`  
		Last Modified: Thu, 28 Jun 2018 08:19:01 GMT  
		Size: 5.3 MB (5285538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa16c94712f7b13603bff18c4909f69a6faf8e4534dc744c2e56779ed38f5652`  
		Last Modified: Thu, 28 Jun 2018 08:18:54 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aa1384d255224462e9beb4a3a324b1f53fc59880a93f7e348988cb230caf5c0`  
		Last Modified: Thu, 28 Jun 2018 08:18:54 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0-rc-alpine`

```console
$ docker pull redis@sha256:0d1bdfdcec9a4ce7a03796ba77c364d7086e30bff77e9050c2f5e56e23750b09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `redis:5.0-rc-alpine` - linux; amd64

```console
$ docker pull redis@sha256:b5bffcec72f9b6b4b4e04c59dfd5fefc9b86f136e8a1ec81a87e365a439cb245
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.3 MB (13262630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a2a9ab8df3e0f2db61aa9d0bdb3e4f713c19e41fbba602c3c14dd5ef760514f`
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
# Wed, 27 Jun 2018 22:43:14 GMT
ENV REDIS_VERSION=5.0-rc3
# Wed, 27 Jun 2018 22:43:14 GMT
ENV REDIS_DOWNLOAD_URL=https://github.com/antirez/redis/archive/5.0-rc3.tar.gz
# Wed, 27 Jun 2018 22:43:15 GMT
ENV REDIS_DOWNLOAD_SHA=4bb2eeef3695d66d8b64767825acfeeb157d64536233eac7eae71b236fd6554f
# Wed, 27 Jun 2018 22:43:53 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 		wget 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 27 Jun 2018 22:43:54 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 22:43:54 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 22:43:54 GMT
WORKDIR /data
# Wed, 27 Jun 2018 22:43:55 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 27 Jun 2018 22:43:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 22:43:55 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 22:43:55 GMT
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
	-	`sha256:43e22f7081586f010df2b1fb980f1315fcaa3582ce5854ba0df196afc1014f6d`  
		Last Modified: Wed, 27 Jun 2018 22:45:29 GMT  
		Size: 11.2 MB (11186789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46897efff3adeeb8899bd342fe1ef09427708d72afc630cc640cd59f44a98648`  
		Last Modified: Wed, 27 Jun 2018 22:45:24 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3402f1d3637c4e98427df625fb37dff476914ed80c573bf7b86956b86952f6ef`  
		Last Modified: Wed, 27 Jun 2018 22:45:24 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-rc-alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:eeb20691f7b2a2e5c0f0c19e4eec2f140b974245e82cac324ea29848317e3366
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7334546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20c99b0b85aeddaa018976d3f44440c90512ce863e1ce4e5d968f91f668cd86f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:45 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Fri, 01 Dec 2017 18:41:45 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:46 GMT
CMD ["/bin/sh"]
# Wed, 16 May 2018 19:39:01 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 16 May 2018 19:39:06 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 28 Jun 2018 08:14:32 GMT
ENV REDIS_VERSION=5.0-rc3
# Thu, 28 Jun 2018 08:14:32 GMT
ENV REDIS_DOWNLOAD_URL=https://github.com/antirez/redis/archive/5.0-rc3.tar.gz
# Thu, 28 Jun 2018 08:14:33 GMT
ENV REDIS_DOWNLOAD_SHA=4bb2eeef3695d66d8b64767825acfeeb157d64536233eac7eae71b236fd6554f
# Thu, 28 Jun 2018 08:18:29 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 		wget 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 28 Jun 2018 08:18:35 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 28 Jun 2018 08:18:36 GMT
VOLUME [/data]
# Thu, 28 Jun 2018 08:18:36 GMT
WORKDIR /data
# Thu, 28 Jun 2018 08:18:38 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Thu, 28 Jun 2018 08:18:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Jun 2018 08:18:39 GMT
EXPOSE 6379/tcp
# Thu, 28 Jun 2018 08:18:40 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bf7d76c39215a547858ef9260990b9b80c0e679bb2f6ceef942d7b6d0eeec3`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29b2b09993d378af670de0b63030a6a3e611e97529dfdbbc5aa5228af010f6c4`  
		Last Modified: Fri, 18 May 2018 07:58:12 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66f37a02127b76c7deae98d4551daa47405376826362bb20a76575f6710ccb2b`  
		Last Modified: Fri, 18 May 2018 07:58:12 GMT  
		Size: 8.7 KB (8716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bd1e7a2dcf09eb7862b54afd38511fa216af14d9b5861c700c67e2c7cd3857b`  
		Last Modified: Thu, 28 Jun 2018 08:19:01 GMT  
		Size: 5.3 MB (5285538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa16c94712f7b13603bff18c4909f69a6faf8e4534dc744c2e56779ed38f5652`  
		Last Modified: Thu, 28 Jun 2018 08:18:54 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aa1384d255224462e9beb4a3a324b1f53fc59880a93f7e348988cb230caf5c0`  
		Last Modified: Thu, 28 Jun 2018 08:18:54 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:alpine`

```console
$ docker pull redis@sha256:686ab026fae07b3b99a8e74210c361714a80311ecc55f23b349ae930ed2f5a95
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

### `redis:alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:7cb42bcffd252a9ae3937c0f0e3041262e575e2491d9399fbd60a73bbd9375bf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7007858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b5da297397ecb885327f997039ef8ded6b34ac9ad68daedd59ef1a46fcd9e1e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:45 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Fri, 01 Dec 2017 18:41:45 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:46 GMT
CMD ["/bin/sh"]
# Wed, 16 May 2018 19:39:01 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 16 May 2018 19:39:06 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 16 Jun 2018 07:54:39 GMT
ENV REDIS_VERSION=4.0.10
# Sat, 16 Jun 2018 07:54:40 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Sat, 16 Jun 2018 07:54:41 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Sat, 16 Jun 2018 07:58:10 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 16 Jun 2018 07:58:14 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 16 Jun 2018 07:58:15 GMT
VOLUME [/data]
# Sat, 16 Jun 2018 07:58:16 GMT
WORKDIR /data
# Sat, 16 Jun 2018 07:58:18 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 16 Jun 2018 07:58:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 16 Jun 2018 07:58:19 GMT
EXPOSE 6379/tcp
# Sat, 16 Jun 2018 07:58:20 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bf7d76c39215a547858ef9260990b9b80c0e679bb2f6ceef942d7b6d0eeec3`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29b2b09993d378af670de0b63030a6a3e611e97529dfdbbc5aa5228af010f6c4`  
		Last Modified: Fri, 18 May 2018 07:58:12 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66f37a02127b76c7deae98d4551daa47405376826362bb20a76575f6710ccb2b`  
		Last Modified: Fri, 18 May 2018 07:58:12 GMT  
		Size: 8.7 KB (8716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef2c31755478c8398dac24d0ee0162f90b1cb47e3ff824b7c5c4acd8c2748c02`  
		Last Modified: Sat, 16 Jun 2018 07:59:23 GMT  
		Size: 5.0 MB (4958853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e09973e2d5b4223a1138a26e89fe5d86126a8e56943a8eb4ea12d8aedb7169b9`  
		Last Modified: Sat, 16 Jun 2018 07:59:16 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b66bca9eacbae3473f05833395362b54eca3fcf5a138f2594b87bcb2b2cd4160`  
		Last Modified: Sat, 16 Jun 2018 07:59:16 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:94b233ddbda17ed48ef9c1363ebe0793564c8b99424198e56e71d2f954fc7d66
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10320964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b874f29b004fc602eff10fdcca861e0868cca9139402743e319b49aba27004f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Wed, 24 Jan 2018 13:25:46 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 24 Jan 2018 13:25:50 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 16 Jun 2018 09:58:39 GMT
ENV REDIS_VERSION=4.0.10
# Sat, 16 Jun 2018 09:58:40 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Sat, 16 Jun 2018 09:58:41 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Sat, 16 Jun 2018 09:59:21 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 16 Jun 2018 09:59:22 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 16 Jun 2018 09:59:23 GMT
VOLUME [/data]
# Sat, 16 Jun 2018 09:59:24 GMT
WORKDIR /data
# Sat, 16 Jun 2018 09:59:25 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 16 Jun 2018 09:59:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 16 Jun 2018 09:59:27 GMT
EXPOSE 6379/tcp
# Sat, 16 Jun 2018 09:59:28 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec42e4d70bd6b5d14ceb60d165f35c9d1348c35d3a566bb230cec599a0ffd64`  
		Last Modified: Wed, 24 Jan 2018 13:28:23 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:555bf2ac2a80a9414fecc99d0e2e659cf9cc43ddcf785a45cf07b2fbcbf0f7b4`  
		Last Modified: Wed, 24 Jan 2018 13:28:23 GMT  
		Size: 8.7 KB (8656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c8c0e92a87891c3eb3b52600dbea5a33a9502b831b4fc925c31332ba2ddb83e`  
		Last Modified: Sat, 16 Jun 2018 10:01:17 GMT  
		Size: 8.3 MB (8321526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b84fe24fa936a7141bacf30b6d92d25ee2960d56d1309585a659d00f8e1331`  
		Last Modified: Sat, 16 Jun 2018 10:01:14 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8abb6c43bde7d475f963f75d5fb5f8a723dbbb17d0a0fe07b282b511e9ec281b`  
		Last Modified: Sat, 16 Jun 2018 10:01:13 GMT  
		Size: 398.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine` - linux; 386

```console
$ docker pull redis@sha256:8815bfa40fb9e12f532a35ec4ae979b1f6b54dd0f0ac4d39d9fcc80d3c7b4a23
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.2 MB (10212379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21eb871992a23a4cec93c65de75aa973373bfe89d474ec174459448a8a961702`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 01 Jun 2018 06:57:26 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Jun 2018 06:57:26 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Jun 2018 06:57:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Jun 2018 15:57:41 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 01 Jun 2018 15:57:42 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 16 Jun 2018 10:43:46 GMT
ENV REDIS_VERSION=4.0.10
# Sat, 16 Jun 2018 10:43:46 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Sat, 16 Jun 2018 10:43:46 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Sat, 16 Jun 2018 10:44:16 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 16 Jun 2018 10:44:16 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 16 Jun 2018 10:44:16 GMT
VOLUME [/data]
# Sat, 16 Jun 2018 10:44:17 GMT
WORKDIR /data
# Sat, 16 Jun 2018 10:44:17 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 16 Jun 2018 10:44:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 16 Jun 2018 10:44:17 GMT
EXPOSE 6379/tcp
# Sat, 16 Jun 2018 10:44:17 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:061a9db3c9e4f3bc32618a5f1a7e2b8aefb20fcc48f8be709bc7f7eabe61d003`  
		Last Modified: Fri, 01 Jun 2018 06:57:51 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32c5c681510e095d5b56ec0b42770c915f177d63e694ce6b59a6081187bb4e38`  
		Last Modified: Fri, 01 Jun 2018 16:02:37 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c69d5dac586a34e49b9e78377c5b5ccf2dab95a9383f555ee0bf7e10be877000`  
		Last Modified: Fri, 01 Jun 2018 16:02:37 GMT  
		Size: 8.7 KB (8653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dde4f4bf0970e393c94fb45d474c75d7d3ae28f7c5ef23ce092dffccf7785cca`  
		Last Modified: Sat, 16 Jun 2018 10:46:16 GMT  
		Size: 8.1 MB (8075583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e2b5d2d19946ba0e7a3118e45636a8116518af6bf494ca7cad0d3fa41329da0`  
		Last Modified: Sat, 16 Jun 2018 10:46:12 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31e8656094cb926219927af5df610c90078d7bd50d5fc19bb666abb191b660fe`  
		Last Modified: Sat, 16 Jun 2018 10:46:12 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:c39a3f92a82c9c25f8cf11cf235fef6d5e092a7adc6c7cdc9c46ad8c924e041a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10746694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:742d1594ae2148d6198abf982829c636b48eb6924e697ea39cfa06db9086735d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Wed, 24 Jan 2018 06:35:28 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 24 Jan 2018 06:35:34 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 16 Jun 2018 08:23:23 GMT
ENV REDIS_VERSION=4.0.10
# Sat, 16 Jun 2018 08:23:24 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Sat, 16 Jun 2018 08:23:25 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Sat, 16 Jun 2018 08:23:49 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 16 Jun 2018 08:23:52 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 16 Jun 2018 08:23:53 GMT
VOLUME [/data]
# Sat, 16 Jun 2018 08:23:54 GMT
WORKDIR /data
# Sat, 16 Jun 2018 08:23:56 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 16 Jun 2018 08:23:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 16 Jun 2018 08:23:57 GMT
EXPOSE 6379/tcp
# Sat, 16 Jun 2018 08:23:58 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:802132ccdaaf1e42c991c0ad2b274ee46d7d02210e23a3bc630c772fbdd533c2`  
		Last Modified: Wed, 24 Jan 2018 06:37:26 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3edb35368beebf064881c4a2efa343effc2775c4bb6e9121e8426990bc75df12`  
		Last Modified: Wed, 24 Jan 2018 06:37:26 GMT  
		Size: 9.3 KB (9269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa36952805f7607221db573d9a44e14effade54b662cab05bc0e17cfa7fd5dd4`  
		Last Modified: Sat, 16 Jun 2018 08:25:31 GMT  
		Size: 8.7 MB (8653962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ab9fd264b67f2375fe2753c4f247110cd1db1a0091cbd4fba8c6652db53162`  
		Last Modified: Sat, 16 Jun 2018 08:25:29 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdd02adcddfc5d1eba6cae28eb78b5c9e5501bd0e4bf6bca22367117a37e8f8b`  
		Last Modified: Sat, 16 Jun 2018 08:25:29 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine` - linux; s390x

```console
$ docker pull redis@sha256:bc3c859de555582f56df03904deb6ba5295b45c030e8eaf7d41a4bd5efbd5418
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10940605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a00effc5c867e9fea95676b5ea97807df71fbecfbf44d5803cacd3fa7807177`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Wed, 24 Jan 2018 06:24:30 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 24 Jan 2018 06:24:33 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 16 Jun 2018 11:46:34 GMT
ENV REDIS_VERSION=4.0.10
# Sat, 16 Jun 2018 11:46:34 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Sat, 16 Jun 2018 11:46:34 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Sat, 16 Jun 2018 11:46:56 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 16 Jun 2018 11:46:57 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 16 Jun 2018 11:46:57 GMT
VOLUME [/data]
# Sat, 16 Jun 2018 11:46:58 GMT
WORKDIR /data
# Sat, 16 Jun 2018 11:46:58 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 16 Jun 2018 11:46:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 16 Jun 2018 11:46:58 GMT
EXPOSE 6379/tcp
# Sat, 16 Jun 2018 11:46:58 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:11e7bc85614a236b32043d147930fd2bc9055af8642fe30e5e56142590572b0e`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 2.2 MB (2185231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f825cbb729285f1fe2a0cd1d4d36897e3fe2191c5ee044ce11a5d301dc64a34`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:167640baaae6b19b666d28c35de1dde729eaca22986531c0f3b3dd6af5bbc469`  
		Last Modified: Wed, 24 Jan 2018 06:25:46 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dab4f89cc8856e8d43a9cc8e3ba6670d31906a9a3409fdf2f59ad893cda37c8`  
		Last Modified: Wed, 24 Jan 2018 06:25:46 GMT  
		Size: 8.9 KB (8944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18bb5bbb266a48e419264c33d5b1e5115726f841f8e0a258cc957d8f19f21d57`  
		Last Modified: Sat, 16 Jun 2018 11:47:49 GMT  
		Size: 8.7 MB (8744503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:825c4308d3530e67fe8f5bc525f4f7b70f43a491d6651df9c771f367d5ebdfe5`  
		Last Modified: Sat, 16 Jun 2018 11:47:47 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7499a5f65aee6751160f6470805d67c4c9fc9e7862f801ee783c339bc15636a9`  
		Last Modified: Sat, 16 Jun 2018 11:47:47 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:latest`

```console
$ docker pull redis@sha256:5534b92530acc653f0721ebfa14f31bc718f68bf9070cbba25bb00bc7aacfabb
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
$ docker pull redis@sha256:6213e498c76eb159d959687c2beb9a77d2ce7b080a38dbd19130a3ad24a6a5c3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32129762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71a81cb279e350589fa3b7e5df7c9d1e296f7d84f54ff2989d77ab9904e2d413`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 26 Jun 2018 21:25:25 GMT
ADD file:28fbc9fd012eef72780d1c75fc2b0969d13f0138f735035335ab4b76793da2da in / 
# Tue, 26 Jun 2018 21:25:25 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 01:15:28 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 01:15:28 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 01:15:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 01:17:51 GMT
ENV REDIS_VERSION=4.0.10
# Wed, 27 Jun 2018 01:17:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Wed, 27 Jun 2018 01:17:51 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Wed, 27 Jun 2018 01:18:24 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 01:18:25 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 01:18:25 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 01:18:25 GMT
WORKDIR /data
# Wed, 27 Jun 2018 01:18:26 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 27 Jun 2018 01:18:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 01:18:26 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 01:18:26 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:683abbb4ea60e108164f1d351e7bcf13daf45941137d800086447874df05f48e`  
		Last Modified: Tue, 26 Jun 2018 21:37:45 GMT  
		Size: 22.5 MB (22496975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:259238e792d86e23dab13fbcfcadf090333328ad9f80894544316437461f0d1b`  
		Last Modified: Wed, 27 Jun 2018 01:19:50 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78399601c709f0e252523e534db03152a1b3f017c9f7c756d68791ef07bc5d0b`  
		Last Modified: Wed, 27 Jun 2018 01:19:50 GMT  
		Size: 941.5 KB (941493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f397da4746012e36f5550d3eb830d81a522a1910417d6b3e1bd1ba046dfb8133`  
		Last Modified: Wed, 27 Jun 2018 01:21:05 GMT  
		Size: 8.7 MB (8689056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c57de4edc390ed763d75e015294194b9147207a5ad77b6a3d01cd7ee22b0b010`  
		Last Modified: Wed, 27 Jun 2018 01:21:00 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2ea05c9d9a1b925610552e146549112aa893634e6a25ad18fd0cc295aec1cac`  
		Last Modified: Wed, 27 Jun 2018 01:21:01 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; arm variant v5

```console
$ docker pull redis@sha256:ae2e050041dd65ab9b2d865075a19a2f180b56ead7deb06bf3ad355b4d54e20a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30525182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a89f66ecf3802d9814b508bb67aabe8047f5eeafaa59622075d2dbcb77082467`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Jun 2018 08:54:01 GMT
ADD file:f1e0d5c56a23a29918cb3b7691cee8f22620b4c54ee70a0dbb4b8151b2be3355 in / 
# Wed, 27 Jun 2018 08:54:02 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 11:10:45 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 11:10:46 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 11:11:07 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 11:12:04 GMT
ENV REDIS_VERSION=4.0.10
# Wed, 27 Jun 2018 11:12:04 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Wed, 27 Jun 2018 11:12:04 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Wed, 27 Jun 2018 11:12:40 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 11:12:41 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 11:12:42 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 11:12:42 GMT
WORKDIR /data
# Wed, 27 Jun 2018 11:12:43 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 27 Jun 2018 11:12:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 11:12:43 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 11:12:43 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:151bc45ca30d5401779cd71c1dd194a7e6f64f1214de3f4f025bc53daf823199`  
		Last Modified: Wed, 27 Jun 2018 09:03:17 GMT  
		Size: 21.2 MB (21177290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cad78a8c45448598f4df7ef055754e60f47534ed63db112af0065ac060c1a769`  
		Last Modified: Wed, 27 Jun 2018 11:12:56 GMT  
		Size: 1.7 KB (1730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a2318299a11dbd69da76cb547cf2a4343d94776bad7f52b516c31def158a9d`  
		Last Modified: Wed, 27 Jun 2018 11:12:57 GMT  
		Size: 931.3 KB (931255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b8cdc4f1fb5c128e89e3c263a97396fb5695e75bb81635634be845012f49379`  
		Last Modified: Wed, 27 Jun 2018 11:13:20 GMT  
		Size: 8.4 MB (8414371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:428e8e3e15293b2532db9fc879d8491bf27c64e9a2af90047efc7cda91d9f985`  
		Last Modified: Wed, 27 Jun 2018 11:13:15 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e55e4006aa334f1b66456ca51b44cdd9236f72a60ecd07d4367c1384e006f5ae`  
		Last Modified: Wed, 27 Jun 2018 11:13:15 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; arm variant v7

```console
$ docker pull redis@sha256:79be1240556b1926491ec2604a53f2d857064089435e5fbcad7bc36454d9ef5e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28387206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:352b5bb9108b7b52dd7d314959f600e8f60f95de85972cca6b8d7bf8e9056316`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Jun 2018 12:03:51 GMT
ADD file:d05cf75761bffd94ce908a55d38fc4966c194aa14492730dfdc1e52c3ddd0892 in / 
# Wed, 27 Jun 2018 12:03:54 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 14:18:29 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 14:18:29 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 14:18:48 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 14:19:36 GMT
ENV REDIS_VERSION=4.0.10
# Wed, 27 Jun 2018 14:19:36 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Wed, 27 Jun 2018 14:19:37 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Wed, 27 Jun 2018 14:20:08 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 14:20:09 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 14:20:09 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 14:20:10 GMT
WORKDIR /data
# Wed, 27 Jun 2018 14:20:10 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 27 Jun 2018 14:20:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 14:20:11 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 14:20:12 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:a779870b6875e97ad1448eaf9befb46011e0fd10ef5014f59d63f624b51de26f`  
		Last Modified: Wed, 27 Jun 2018 12:13:30 GMT  
		Size: 19.3 MB (19286273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c5c410558b6543c5785cecbccb032fd4982038a92ba3b8bb4d5ab8d17e6bed7`  
		Last Modified: Wed, 27 Jun 2018 14:20:30 GMT  
		Size: 1.7 KB (1730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48b858312be07ebaa41456fe36334924f5e53a6a705c42b89b61f26bc6ebb357`  
		Last Modified: Wed, 27 Jun 2018 14:20:30 GMT  
		Size: 915.9 KB (915893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ad0ec942ee79662631a351970ad43c032fcaff13d062dd6ac1db1a09e30bb36`  
		Last Modified: Wed, 27 Jun 2018 14:20:55 GMT  
		Size: 8.2 MB (8182774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7a7123e29129e6aeda6a18f84827b644f69b4c2fa35625fc7db2d71ec8e79b2`  
		Last Modified: Wed, 27 Jun 2018 14:20:52 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f333780152ff38ae2561f35dc050d80099e7bc5772967302e6b2cec435838307`  
		Last Modified: Wed, 27 Jun 2018 14:20:53 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:f5eaa99907a1313b2dbaf92b69165bb246d4cff7324ed394137d2abddeb0aa93
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.7 MB (29748623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e6566de3b84c40644e39f56d7084f886d9dcf315794dc65755a0093a91000fc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:44 GMT
ADD file:b8a1907d99b0b9f75b52f8e25d5c346caf0244b325919c02090ab1e05ba1cf18 in / 
# Wed, 27 Jun 2018 08:47:45 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 13:29:17 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 13:29:18 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 13:30:37 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 13:32:58 GMT
ENV REDIS_VERSION=4.0.10
# Wed, 27 Jun 2018 13:32:58 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Wed, 27 Jun 2018 13:32:59 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Wed, 27 Jun 2018 13:34:48 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 13:34:50 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 13:34:50 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 13:34:51 GMT
WORKDIR /data
# Wed, 27 Jun 2018 13:34:52 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 27 Jun 2018 13:34:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 13:34:55 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 13:34:56 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:153362478bb06475bede3bd6da2ff08a91dd9fc6f245c70bb5a033b65f38ac14`  
		Last Modified: Wed, 27 Jun 2018 08:58:51 GMT  
		Size: 20.3 MB (20348077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3df18432afbb66c603676db6e777b9e8385de68f08a19d034af0da3a1858e1f7`  
		Last Modified: Wed, 27 Jun 2018 13:35:34 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a80a3007c2c23eea873ed4902940ef771b78a7d742c98741d71b816d77682d9`  
		Last Modified: Wed, 27 Jun 2018 13:35:35 GMT  
		Size: 908.2 KB (908185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fdaf9673fc850e17dd5e0510013da65b4afb5cde8b68a302f7f9123ccf336f3`  
		Last Modified: Wed, 27 Jun 2018 13:36:15 GMT  
		Size: 8.5 MB (8490122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9012a9c945a3a860f7436f1be1b625e79f816b8e10c4aeec24eb53ae30fcc66`  
		Last Modified: Wed, 27 Jun 2018 13:36:11 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1419aa21e4a6179df1a4d2cb6cd6e35999b1ea30cfabc04336050ad6cf6019a1`  
		Last Modified: Wed, 27 Jun 2018 13:36:11 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; 386

```console
$ docker pull redis@sha256:af8d14e99f87911876473dfc1548cb97d59a0358c70ff2d671abbc07e4e4682f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32309664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4a9d5b1ae1992296afe04e4f6ec74523e18eb061440bbca0fd3d2388762054d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Jun 2018 10:46:39 GMT
ADD file:e1777a98c0e3aaf9cb1f4116550001b0eed2fe669b2c6449c93b76cccc92e1a2 in / 
# Wed, 27 Jun 2018 10:46:42 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 13:03:38 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 13:03:38 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 13:04:04 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 13:04:56 GMT
ENV REDIS_VERSION=4.0.10
# Wed, 27 Jun 2018 13:04:56 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Wed, 27 Jun 2018 13:04:56 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Wed, 27 Jun 2018 13:05:39 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 13:05:40 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 13:05:40 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 13:05:41 GMT
WORKDIR /data
# Wed, 27 Jun 2018 13:05:48 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 27 Jun 2018 13:05:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 13:05:49 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 13:05:49 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:7de5eb46c52dbee10629f5dc34d9b2445893031ae37083572734bc4f6577757d`  
		Last Modified: Wed, 27 Jun 2018 11:11:02 GMT  
		Size: 23.1 MB (23140103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8df6822d7184835aefd26151cfc1ba536407dc7e8d1f959bc1360b882e7f140`  
		Last Modified: Wed, 27 Jun 2018 13:06:10 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:036521fcd75cdac216f9c6c2c0a4e7c7512653de681714198cfddbf20503ea97`  
		Last Modified: Wed, 27 Jun 2018 13:06:10 GMT  
		Size: 920.3 KB (920308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4de5fa9d11a929e4178ba975855cdb5ac80022cf89332add88ca1dbacbb56f74`  
		Last Modified: Wed, 27 Jun 2018 13:06:59 GMT  
		Size: 8.2 MB (8247020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2400940e500127e1b5fcb395451e501b1735ad9aec2c038aada177eaa2ecc2f`  
		Last Modified: Wed, 27 Jun 2018 13:06:56 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:025c441b992eb77d52e8625819743cdf61a9c7dcabae59aa9e8461f973b6928a`  
		Last Modified: Wed, 27 Jun 2018 13:06:56 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; ppc64le

```console
$ docker pull redis@sha256:ef2316efd8187d005952cd93953d5fe33ae9d132d6e32e6de23a2e5819ceebde
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.5 MB (32529556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09864eb0aa44c8951673e8b8293b1c3173cea9687e010fc30302947b03a966f4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Jun 2018 08:21:34 GMT
ADD file:7bd6d5557557a294db488600b483d452db358e399f7c8b1acf2a89c25b3d2006 in / 
# Wed, 27 Jun 2018 08:21:35 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:46:46 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 12:46:47 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 12:47:55 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 12:50:01 GMT
ENV REDIS_VERSION=4.0.10
# Wed, 27 Jun 2018 12:50:03 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Wed, 27 Jun 2018 12:50:04 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Wed, 27 Jun 2018 12:51:29 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 12:51:33 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 12:51:39 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 12:51:40 GMT
WORKDIR /data
# Wed, 27 Jun 2018 12:51:46 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 27 Jun 2018 12:51:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 12:51:55 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 12:51:56 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:591f394d671c26b8ef397269eb6b0bd86b78d5619523f5d1632fca943faff2de`  
		Last Modified: Wed, 27 Jun 2018 08:31:55 GMT  
		Size: 22.8 MB (22753035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e42cf827ac3794a3349910c6809505ae137eff4dcb479d1c1c39344d80a07a2f`  
		Last Modified: Wed, 27 Jun 2018 12:52:30 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:521c301279f105f9fe7b19f9ad9df2891c82201d2c27ecb1cec4fbaccad91291`  
		Last Modified: Wed, 27 Jun 2018 12:52:32 GMT  
		Size: 909.9 KB (909852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ac977261ecd582f0fd868c29028380e681f498cad393e4c361095e427a407d2`  
		Last Modified: Wed, 27 Jun 2018 12:53:07 GMT  
		Size: 8.9 MB (8864388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f56a7aa4a813cca4e96b52b20684e78e5fd2b32c4d769b3b9678a59386222b1c`  
		Last Modified: Wed, 27 Jun 2018 12:53:04 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f33d28f74c189ca4f9fd983b054e5f6b3f3046ac0d2ff26faa33dbacf6b2b240`  
		Last Modified: Wed, 27 Jun 2018 12:53:04 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; s390x

```console
$ docker pull redis@sha256:de590b0ce9e150a78bae36a164dafc0ac6682719c3c901ab5f9e93e9b1f842db
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32359648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf86e4f6dc2e7117176d765e9054839f25199f9fcca82bfe955309c088a81469`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Jun 2018 11:48:52 GMT
ADD file:30e8aac3f01e5ddc9493a0fac1c0978b9435ab33031d2af05afca0f9cb7eb71f in / 
# Wed, 27 Jun 2018 11:48:52 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 13:46:24 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 13:46:24 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 13:46:39 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 13:47:34 GMT
ENV REDIS_VERSION=4.0.10
# Wed, 27 Jun 2018 13:47:34 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Wed, 27 Jun 2018 13:47:34 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Wed, 27 Jun 2018 13:48:15 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 13:48:16 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 13:48:16 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 13:48:16 GMT
WORKDIR /data
# Wed, 27 Jun 2018 13:48:17 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 27 Jun 2018 13:48:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 13:48:17 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 13:48:17 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:1c23a44ac305da2d34995cf30530ba5adce0229e4a70678fd4d25384883b1281`  
		Last Modified: Wed, 27 Jun 2018 11:53:41 GMT  
		Size: 22.3 MB (22349871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f450656bdbcbfdc1614dfb82ca8dc61d74ac31bd1698136f082a3f2e49795a`  
		Last Modified: Wed, 27 Jun 2018 13:48:34 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb0e27db9314b93a9ac2f160f4fc84e2fac43e079e197b9721c03d11c645b235`  
		Last Modified: Wed, 27 Jun 2018 13:48:34 GMT  
		Size: 926.8 KB (926820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e193d7441fffd4f07c1a04b6c28f7de97124c5261e8ea61288d3b672ae1bbd32`  
		Last Modified: Wed, 27 Jun 2018 13:48:54 GMT  
		Size: 9.1 MB (9080718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb6e17635bf9170085f0b64dbb534d5148b750749605e393ac65f06991d6bea5`  
		Last Modified: Wed, 27 Jun 2018 13:48:51 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8916c6aa471c34f31573cefd8e04de650015f92fe03cd836f135ce306651029`  
		Last Modified: Wed, 27 Jun 2018 13:48:52 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
