## `redis:alpine3.9`

```console
$ docker pull redis@sha256:dca057ffa2337682333a3aba69cc0e7809819b3cd7fc78f3741d9de8c2a4f08b
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
$ docker pull redis@sha256:c9ceb889735c7f679286e7c0f4f2c6c2498d71681391f604c697c3fe0370bc61
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17785903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72e76053ebb73c258af5020c9ef27ba9302a6ee182f2c9c51b43c1689f1983c9`
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
# Thu, 16 May 2019 00:50:55 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 00:50:55 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 00:50:55 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 00:52:10 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 16 May 2019 00:52:11 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 00:52:11 GMT
VOLUME [/data]
# Thu, 16 May 2019 00:52:12 GMT
WORKDIR /data
# Thu, 16 May 2019 00:52:12 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Thu, 16 May 2019 00:52:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:52:12 GMT
EXPOSE 6379
# Thu, 16 May 2019 00:52:13 GMT
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
	-	`sha256:979331f0d18ba64a84740fb84bac957330246e83c0869f7ba9cf9eff3b074dd7`  
		Last Modified: Thu, 16 May 2019 00:53:17 GMT  
		Size: 14.6 MB (14623266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3d24058052e73e86d3b6e2b7cbbbabfe0d754dd7e6b13d2850412efcdd666bc`  
		Last Modified: Thu, 16 May 2019 00:53:14 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b65b87029df34535a9c84886663d1fb8d6fc76979f3d795eaf8c1cee4e1e5d86`  
		Last Modified: Thu, 16 May 2019 00:53:14 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine3.9` - linux; arm variant v6

```console
$ docker pull redis@sha256:fffabb3f3beee0ba08f5a8b42c2e90fa3c8ab19847e7126799a878a3f74352a3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17161056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09ff1d5dfa48b15e001277c1ba0c143a51f94fe74e0904ec465fa3945220f263`
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
# Thu, 16 May 2019 00:49:30 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 00:49:31 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 00:49:31 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 00:50:26 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 16 May 2019 00:50:28 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 00:50:28 GMT
VOLUME [/data]
# Thu, 16 May 2019 00:50:29 GMT
WORKDIR /data
# Thu, 16 May 2019 00:50:29 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Thu, 16 May 2019 00:50:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:50:30 GMT
EXPOSE 6379
# Thu, 16 May 2019 00:50:31 GMT
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
	-	`sha256:87951bfe4172b07b3854b0333fb68e6aeba559bbae037af3ad3e319f8b7a853e`  
		Last Modified: Thu, 16 May 2019 00:51:04 GMT  
		Size: 14.2 MB (14209570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6476f1115771a404904d680e03104bfe67379c3beced075741c567260dde783`  
		Last Modified: Thu, 16 May 2019 00:51:01 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abab16fb38f5768497c81de63998358233528219b11729326d3ce0935bbf827c`  
		Last Modified: Thu, 16 May 2019 00:51:01 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine3.9` - linux; arm variant v7

```console
$ docker pull redis@sha256:c5c90f835d3c03b7d0360ef29069447fcb65772c3500c29a7bfff63e3627f671
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16713641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7364b13b17c27437ace7f254a9fcf7a81fe162dcbead2336a673e2a58475a0fc`
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
# Thu, 16 May 2019 00:02:48 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 00:02:48 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 00:02:49 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 00:03:36 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 16 May 2019 00:03:39 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 00:03:39 GMT
VOLUME [/data]
# Thu, 16 May 2019 00:03:40 GMT
WORKDIR /data
# Thu, 16 May 2019 00:03:41 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Thu, 16 May 2019 00:03:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:03:42 GMT
EXPOSE 6379
# Thu, 16 May 2019 00:03:43 GMT
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
	-	`sha256:8f7bed1e6321d469756d876f17cd2f4feabf31db8e65491d8407fb98955c4f25`  
		Last Modified: Thu, 16 May 2019 00:04:47 GMT  
		Size: 14.0 MB (13961048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6eb9fd464e2ea064a3cbe134aab49aee7dc14f4b52ef6c35c661564b372ffb`  
		Last Modified: Thu, 16 May 2019 00:04:42 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a99bd1c3191e2cd9521e6cdd88c7c7f5057e00868ebdc4b29653e3563c03d075`  
		Last Modified: Thu, 16 May 2019 00:04:42 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine3.9` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:5851685ca827d445a07fff9837ada3b2bf31d81ce5964c0ef2210e75d64870fd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.6 MB (17625983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:653967747e687e53c64f5fa09be271aec99e3e6d6d12c2ec1b96f465abb4541a`
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
# Wed, 19 Jun 2019 23:15:05 GMT
ENV REDIS_VERSION=5.0.5
# Wed, 19 Jun 2019 23:15:07 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Wed, 19 Jun 2019 23:15:07 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Wed, 19 Jun 2019 23:15:58 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 19 Jun 2019 23:16:00 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 19 Jun 2019 23:16:01 GMT
VOLUME [/data]
# Wed, 19 Jun 2019 23:16:01 GMT
WORKDIR /data
# Wed, 19 Jun 2019 23:16:02 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 19 Jun 2019 23:16:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 19 Jun 2019 23:16:03 GMT
EXPOSE 6379
# Wed, 19 Jun 2019 23:16:04 GMT
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
	-	`sha256:7dd4ba2517397abf4bf5a6c83fbb296b375fba9547ff9e5f227dcd299fd3d15f`  
		Last Modified: Wed, 19 Jun 2019 23:17:24 GMT  
		Size: 14.5 MB (14529331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0c0d39babdd02b7d7ba5a1d7fadadae548bf902089e331d4cff4ca4bea03881`  
		Last Modified: Wed, 19 Jun 2019 23:17:19 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c325def712ee85d842095c58a6bebe63d5c045d467aed26fb600779041a433f`  
		Last Modified: Wed, 19 Jun 2019 23:17:19 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine3.9` - linux; 386

```console
$ docker pull redis@sha256:8374fa70aac1f1444ef39bcb31b7abaa8126fa16f0a6916822402dcc650a139d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17142280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e75465648de3bbfe96ed37784ee7f131ea4407d4c4ce55645498d47a3ca99777`
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
# Thu, 16 May 2019 02:10:46 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 02:10:46 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 02:10:47 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 02:11:49 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 16 May 2019 02:11:50 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 02:11:50 GMT
VOLUME [/data]
# Thu, 16 May 2019 02:11:50 GMT
WORKDIR /data
# Thu, 16 May 2019 02:11:51 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Thu, 16 May 2019 02:11:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 02:11:51 GMT
EXPOSE 6379
# Thu, 16 May 2019 02:11:51 GMT
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
	-	`sha256:5fda595ca26205f758955ea6d4d8d038f3941149bed6e217e05f349e0e9ab360`  
		Last Modified: Thu, 16 May 2019 02:12:30 GMT  
		Size: 14.0 MB (13979451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c0ff33de2a7d2516f63d51c9fe50b7aee125a99bc658a421805506881367a66`  
		Last Modified: Thu, 16 May 2019 02:12:26 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be4bcb23ca0fc8f8d621a6a30ca835064a756904822eb41b591b09e4b47e5795`  
		Last Modified: Thu, 16 May 2019 02:12:26 GMT  
		Size: 410.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine3.9` - linux; ppc64le

```console
$ docker pull redis@sha256:038323abbda9b91a2ffe3b327239d716a2ab598f437071bf3a74e7efb4474923
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18640291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2d489a5912ba6d1e67583087b5b603ef7fb5490937230b7f3be5b44cb3de4b3`
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
# Wed, 19 Jun 2019 22:37:57 GMT
ENV REDIS_VERSION=5.0.5
# Wed, 19 Jun 2019 22:37:59 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Wed, 19 Jun 2019 22:38:01 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Wed, 19 Jun 2019 22:38:54 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 19 Jun 2019 22:39:00 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 19 Jun 2019 22:39:03 GMT
VOLUME [/data]
# Wed, 19 Jun 2019 22:39:05 GMT
WORKDIR /data
# Wed, 19 Jun 2019 22:39:06 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 19 Jun 2019 22:39:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 19 Jun 2019 22:39:11 GMT
EXPOSE 6379
# Wed, 19 Jun 2019 22:39:13 GMT
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
	-	`sha256:72f8609ad8d17fa933151b957b3751a7a3b304a741276eb32f1762ced7545a29`  
		Last Modified: Wed, 19 Jun 2019 22:41:05 GMT  
		Size: 15.4 MB (15446145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c78c46051af0d4ee7a553e5caae890b955572d6e187db019c450d47acb9fc11`  
		Last Modified: Wed, 19 Jun 2019 22:41:00 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68968b29156c69722ccb37b12b4dadeddf5f1c51aa51e544dedf9c97bfb6d6a2`  
		Last Modified: Wed, 19 Jun 2019 22:40:59 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine3.9` - linux; s390x

```console
$ docker pull redis@sha256:a41fe208c0e2b25d3dffe86d8f53e59e7bf85bed25e4bcd63896d0b24df96cc1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17842941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc33072c421fb526ca5eaf31ea98d347838b2f33b5c3642c8f2c79c5bca42e5d`
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
# Thu, 16 May 2019 01:01:14 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 01:01:15 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 01:01:16 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 01:03:11 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 16 May 2019 01:03:16 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 01:03:17 GMT
VOLUME [/data]
# Thu, 16 May 2019 01:03:18 GMT
WORKDIR /data
# Thu, 16 May 2019 01:03:18 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Thu, 16 May 2019 01:03:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 01:03:20 GMT
EXPOSE 6379
# Thu, 16 May 2019 01:03:21 GMT
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
	-	`sha256:30adf6bcc13dd1cfb98b2042d134cf6ad2aaed83e83ff11c1a84809a3a3bc299`  
		Last Modified: Thu, 16 May 2019 01:05:19 GMT  
		Size: 14.9 MB (14889091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4f39b50b05a66a15007217836deefb54b5a010ccb672f523333175aaac71060`  
		Last Modified: Thu, 16 May 2019 01:05:11 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf3cb093b0aa27904752372821c5637de3428ee0d84ab02c8d0e8d7c555cce77`  
		Last Modified: Thu, 16 May 2019 01:05:11 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
