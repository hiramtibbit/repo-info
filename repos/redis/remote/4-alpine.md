## `redis:4-alpine`

```console
$ docker pull redis@sha256:caa17533deeb5a99f09ddd32456ca78f330a3db18e51dc15a5fcfd55cc0dc62a
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
$ docker pull redis@sha256:c4f8e6db18cd9e8b84e7d7cd0522402f1e2edb87cf064f8dcb01fa5f490fedc3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 MB (13748627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:631e4b879052971d6c50aca8ff185947ffca022d17510a04709220e0e30839ef`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 19 Jun 2019 20:39:47 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Wed, 19 Jun 2019 20:39:47 GMT
CMD ["/bin/sh"]
# Wed, 19 Jun 2019 23:14:59 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 19 Jun 2019 23:15:04 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 19 Jun 2019 23:16:16 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 19 Jun 2019 23:16:17 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 19 Jun 2019 23:16:18 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 19 Jun 2019 23:16:50 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 19 Jun 2019 23:16:52 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 19 Jun 2019 23:16:53 GMT
VOLUME [/data]
# Wed, 19 Jun 2019 23:16:53 GMT
WORKDIR /data
# Wed, 19 Jun 2019 23:16:54 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 19 Jun 2019 23:16:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 19 Jun 2019 23:16:56 GMT
EXPOSE 6379
# Wed, 19 Jun 2019 23:16:56 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12361e39501b2dd4ef9b12897c5d1dbfaadd7ac910f605ccc45d6ffb583bd977`  
		Last Modified: Wed, 19 Jun 2019 23:17:19 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee61101e78adba2c8915ecf8876f5cc8154127580f1de485acae4e29227962ff`  
		Last Modified: Wed, 19 Jun 2019 23:17:19 GMT  
		Size: 406.0 KB (406039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aee75b10060e2c22724858619b95cb9952de2d4e44622974837bdd41c939b893`  
		Last Modified: Wed, 19 Jun 2019 23:17:47 GMT  
		Size: 10.7 MB (10651977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51f867e8f903eb51aa8a023e50c817bc7eaf2167d7d09f4024251176753ff28c`  
		Last Modified: Wed, 19 Jun 2019 23:17:44 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:961bc2ece5a39baa1978119bff1a8807250b68ceab737516e6f7738a9e0ccec2`  
		Last Modified: Wed, 19 Jun 2019 23:17:44 GMT  
		Size: 415.0 B  
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
$ docker pull redis@sha256:6e4f2ba560a269646f570661af4387571783f94b810f0e2d1a7258c080a722a7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14406333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23d5577d109a949059a7fe193d1ced19c8fcbe8ecbb9d3e4bb90d6e520618e0d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 19 Jun 2019 21:20:35 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Wed, 19 Jun 2019 21:20:36 GMT
CMD ["/bin/sh"]
# Wed, 19 Jun 2019 22:37:51 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 19 Jun 2019 22:37:55 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 19 Jun 2019 22:39:34 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 19 Jun 2019 22:39:36 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 19 Jun 2019 22:39:37 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 19 Jun 2019 22:40:08 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 19 Jun 2019 22:40:13 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 19 Jun 2019 22:40:15 GMT
VOLUME [/data]
# Wed, 19 Jun 2019 22:40:19 GMT
WORKDIR /data
# Wed, 19 Jun 2019 22:40:21 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 19 Jun 2019 22:40:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 19 Jun 2019 22:40:25 GMT
EXPOSE 6379
# Wed, 19 Jun 2019 22:40:27 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69ff7abf622e5fcf3a59563b8215da8e71750f4e2fc418aa2fa90c03494080be`  
		Last Modified: Wed, 19 Jun 2019 22:41:00 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:036af93df777ea7fd0803dfe03ddc3e48064498f5d956679ad1c5abc169e2287`  
		Last Modified: Wed, 19 Jun 2019 22:41:00 GMT  
		Size: 411.3 KB (411290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7364f69f72019867fa840bc159bd8070a76820cad42236faf0bff44150f76d`  
		Last Modified: Wed, 19 Jun 2019 22:41:38 GMT  
		Size: 11.2 MB (11212189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1df33ebea99423491f49ae3bc231f0f1568bfc903e505cc035d4093b19bf9e72`  
		Last Modified: Wed, 19 Jun 2019 22:41:35 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aca05d9198ce7f53e631b99e2004f3fafaf6162ae88b0be1e24431df3d8e4131`  
		Last Modified: Wed, 19 Jun 2019 22:41:35 GMT  
		Size: 416.0 B  
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
