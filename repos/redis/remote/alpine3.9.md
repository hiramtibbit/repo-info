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
