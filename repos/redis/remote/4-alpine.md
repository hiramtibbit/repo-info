## `redis:4-alpine`

```console
$ docker pull redis@sha256:2f5f3a0a549e8f596fa09fa3de623249ce1044b70d0dc048d79810e798bd0f9a
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
$ docker pull redis@sha256:1176ac0f68632170228b43f87caf6def191480b6e031c78f31326ff1cc6d6d80
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.0 MB (12047777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db23f46600bc3e39970442fbadd384ee00b2777f36fe880b82f5af244130f248`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 03:26:27 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 12 Sep 2018 03:26:29 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 12 Sep 2018 03:28:24 GMT
ENV REDIS_VERSION=4.0.11
# Wed, 12 Sep 2018 03:28:25 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Wed, 12 Sep 2018 03:28:25 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Wed, 12 Sep 2018 03:29:30 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 12 Sep 2018 03:29:30 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 12 Sep 2018 03:29:31 GMT
VOLUME [/data]
# Wed, 12 Sep 2018 03:29:31 GMT
WORKDIR /data
# Wed, 12 Sep 2018 03:29:31 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 12 Sep 2018 03:29:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 03:29:32 GMT
EXPOSE 6379/tcp
# Wed, 12 Sep 2018 03:29:32 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb758dc2e0380088f86e84055736737a7147cc918d44dd7b9d6b3d10b8846478`  
		Last Modified: Wed, 12 Sep 2018 03:31:03 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989f7b0c858b7747b3a6dd43de74fe166d16abf090b2df6a51687fdf9ae27b2d`  
		Last Modified: Wed, 12 Sep 2018 03:31:02 GMT  
		Size: 402.1 KB (402130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5318f13abaaa6894a9b5a66b3850e7b3b2075ee79d6fb62c1cadf419677d07f`  
		Last Modified: Wed, 12 Sep 2018 03:31:31 GMT  
		Size: 9.4 MB (9436966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3521559474dd09f731b973aa0953dd77df4e52b37bea4af934d99896d5423335`  
		Last Modified: Wed, 12 Sep 2018 03:31:28 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af5d048338efa2ac3f7c7e3a83eab3c791de2ad43cb707e2b14fd17be318eef5`  
		Last Modified: Wed, 12 Sep 2018 03:31:29 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:2b71978ec751c025f0fd7e9c8020039277b2a44ed7c692a8ee8ad58d1754644c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.4 MB (8394313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bedac90c10c05401837ae150e9f19a2ac0d802e27e2bf82bddf1ce94ced6627`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 06 Jul 2018 07:53:29 GMT
ADD file:122e3422d9afa971806601812374fdd9d00c8edc8e9a6df7256e2caa85fab6d1 in / 
# Fri, 06 Jul 2018 07:53:30 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 07:53:30 GMT
CMD ["/bin/sh"]
# Sat, 14 Jul 2018 11:45:22 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 08 Sep 2018 07:49:48 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Sat, 08 Sep 2018 07:54:24 GMT
ENV REDIS_VERSION=4.0.11
# Sat, 08 Sep 2018 07:54:24 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Sat, 08 Sep 2018 07:54:25 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Sat, 08 Sep 2018 07:57:54 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 08 Sep 2018 07:57:58 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 08 Sep 2018 07:57:58 GMT
VOLUME [/data]
# Sat, 08 Sep 2018 07:57:59 GMT
WORKDIR /data
# Sat, 08 Sep 2018 07:58:00 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 08 Sep 2018 07:58:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 08 Sep 2018 07:58:02 GMT
EXPOSE 6379/tcp
# Sat, 08 Sep 2018 07:58:03 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:ee7d700abbf209aa401ef5d53f86af298a25e8154b3259036e9307d08f255c5d`  
		Last Modified: Fri, 06 Jul 2018 07:53:45 GMT  
		Size: 2.1 MB (2145998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1653f4692c1ccea69cd46121d4f1371957f66e97a20141371dd4da10ebaec19`  
		Last Modified: Fri, 06 Jul 2018 07:53:45 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:227a96f1d31d3ceb90336a4a116e3e60b3a1fea72ae1f065e88a6d43417674ff`  
		Last Modified: Sat, 14 Jul 2018 11:59:20 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7413e035c266481459891d8f373731d4f4f047a6ddcd95dd22561a7c430e7e9`  
		Last Modified: Sat, 08 Sep 2018 08:03:53 GMT  
		Size: 404.6 KB (404650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f677cffe48ba83ff473f0dda39fed560711cdbfc854737b308420eb39af7e2dc`  
		Last Modified: Sat, 08 Sep 2018 08:04:51 GMT  
		Size: 5.8 MB (5841680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0e9f37665bc2c54ad97b2fc1b911671d52aa3de4fd1630b38455c9de7953cf2`  
		Last Modified: Sat, 08 Sep 2018 08:04:43 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0249d4a34ce8e760cae8ce5b792ba7b70cfc49d33cdb8b765a68fbc0d0bec93f`  
		Last Modified: Sat, 08 Sep 2018 08:04:43 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:604ab8aa2fdb23c8a681f6fafee3de301a12dd6160f9de6738ac504da6d08df0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.7 MB (11697347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9424ab2e2bf2b01145b2ce4f97566e53562fd64393425acc36fe51ddbef42a8b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 06 Jul 2018 08:41:03 GMT
ADD file:199a5a48bddabaf1f649f58f3b17c323a1aa1a50e939dfdea3542e4041e91b7b in / 
# Fri, 06 Jul 2018 08:41:03 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:41:04 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 09:37:50 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 08 Sep 2018 10:31:34 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Sat, 08 Sep 2018 10:35:03 GMT
ENV REDIS_VERSION=4.0.11
# Sat, 08 Sep 2018 10:35:04 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Sat, 08 Sep 2018 10:35:05 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Sat, 08 Sep 2018 10:36:28 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 08 Sep 2018 10:36:30 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 08 Sep 2018 10:36:30 GMT
VOLUME [/data]
# Sat, 08 Sep 2018 10:36:31 GMT
WORKDIR /data
# Sat, 08 Sep 2018 10:36:32 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 08 Sep 2018 10:36:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 08 Sep 2018 10:36:34 GMT
EXPOSE 6379/tcp
# Sat, 08 Sep 2018 10:36:35 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:47e04371c99027fae42871b720fdc6cdddcb65062bfa05f0c3bb0a594cb5bbbd`  
		Last Modified: Wed, 27 Jun 2018 19:15:35 GMT  
		Size: 2.1 MB (2099514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4103359e1ecd9a7253d8b8a041d4e81db1ff4a5e1950bc0e02305d221c9e6c2`  
		Last Modified: Fri, 06 Jul 2018 08:42:09 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9721f4fc0d2aca17304d7c1cbef676a8fa7d41c3f0c7201b22d695ff41dfc625`  
		Last Modified: Wed, 11 Jul 2018 09:42:31 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee0dc7f1988976738715e3c90fe99bbef05c6248b7480acea939f644e2bf89ee`  
		Last Modified: Sat, 08 Sep 2018 10:38:52 GMT  
		Size: 400.5 KB (400510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f1eea7700b9a67c9bd50d09d6b93eb5914e96028663258614ed84215dab0015`  
		Last Modified: Sat, 08 Sep 2018 10:41:06 GMT  
		Size: 9.2 MB (9195397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5381a338df2056191655c6d3083af53363c7e8209a4ad97e536bb7130e7bfd10`  
		Last Modified: Sat, 08 Sep 2018 10:41:02 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8aff30be3f0307764ea71b636bea03a34839e5456d03085ef5bf1cdfa27e7bb`  
		Last Modified: Sat, 08 Sep 2018 10:41:02 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine` - linux; 386

```console
$ docker pull redis@sha256:e40080e48777aab9be2ccb23cb5a01b851ba309cde94d6ade131b2088c062eb3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.7 MB (11657492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fa23ff3eda659ef69a00c16d524395c9d5b6bf64ed7ba60a2804c17e9886130`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 06 Jul 2018 15:02:06 GMT
ADD file:ebd40cda2f6087daf4d14e6dc1ee0b4a0fb5dc96c70129be8e07de0e5c628312 in / 
# Fri, 06 Jul 2018 15:02:07 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 15:02:07 GMT
CMD ["/bin/sh"]
# Fri, 07 Sep 2018 00:30:49 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 08 Sep 2018 18:31:42 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Sat, 08 Sep 2018 18:32:49 GMT
ENV REDIS_VERSION=4.0.11
# Sat, 08 Sep 2018 18:32:49 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Sat, 08 Sep 2018 18:32:49 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Sat, 08 Sep 2018 18:33:22 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 08 Sep 2018 18:33:22 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 08 Sep 2018 18:33:22 GMT
VOLUME [/data]
# Sat, 08 Sep 2018 18:33:23 GMT
WORKDIR /data
# Sat, 08 Sep 2018 18:33:23 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 08 Sep 2018 18:33:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 08 Sep 2018 18:33:23 GMT
EXPOSE 6379/tcp
# Sat, 08 Sep 2018 18:33:23 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:ef15772113129a5330876ce10683bbf6509a4c4c99b3a99894dcbc7560975052`  
		Last Modified: Fri, 06 Jul 2018 15:02:46 GMT  
		Size: 2.3 MB (2270920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6df692b84cf35e6038d677f9ab7de2a3c671c57671043da1d20d99252e0d9c42`  
		Last Modified: Fri, 06 Jul 2018 15:02:43 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:205fb77c3c7231faff70b59770f1c878a88bdfaad02839fb26af2ffdc229ebe0`  
		Last Modified: Fri, 07 Sep 2018 00:35:02 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:566461d273b23a2424b7c4a4a8b2ae1e1f8eee138620ecb10ba4eec506580a89`  
		Last Modified: Sat, 08 Sep 2018 18:34:21 GMT  
		Size: 406.5 KB (406544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfa0ca3d0c91596ee0e07f6212522e27b0ab7328998f68068741a55cb62e3d2c`  
		Last Modified: Sat, 08 Sep 2018 18:34:40 GMT  
		Size: 9.0 MB (8978106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cac943ebbb960341921caeb72f6de137ba5e3a1cd46c2d03bd378671aa61445`  
		Last Modified: Sat, 08 Sep 2018 18:34:38 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cae6a7104405ee49e0cef00244ac4b0ad0cd0f43627bb9e49fbb668fc8b38c31`  
		Last Modified: Sat, 08 Sep 2018 18:34:39 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:fd8f282325a65c5cdb77d025856b29347d6e903140b49e3eb2e20fcc7b952ac4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.1 MB (12134009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60b0f4c4b5274a3585bbb60a618ea06caf312876f5c147c56c89f78d4701ec15`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 06 Jul 2018 08:18:09 GMT
ADD file:4ff20d593b16518d45b1b1d6efdab141199316dba7a53ce7459249f5de690dfd in / 
# Fri, 06 Jul 2018 08:18:10 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:18:11 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 10:29:07 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 08 Sep 2018 09:50:36 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Sat, 08 Sep 2018 09:52:36 GMT
ENV REDIS_VERSION=4.0.11
# Sat, 08 Sep 2018 09:52:38 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Sat, 08 Sep 2018 09:52:40 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Sat, 08 Sep 2018 09:53:30 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 08 Sep 2018 09:53:35 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 08 Sep 2018 09:53:37 GMT
VOLUME [/data]
# Sat, 08 Sep 2018 09:53:40 GMT
WORKDIR /data
# Sat, 08 Sep 2018 09:53:47 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 08 Sep 2018 09:53:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 08 Sep 2018 09:53:52 GMT
EXPOSE 6379/tcp
# Sat, 08 Sep 2018 09:53:53 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e642bcb5b1890a07dd2fc8be2bc35edf5e2b651d4993e71caef03b4b43ace970`  
		Last Modified: Fri, 06 Jul 2018 08:18:44 GMT  
		Size: 2.2 MB (2194861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e09410b1fce4c4630b3bc57c6ee158ee9821ec415d0acaa1607b9e0bcf76d91`  
		Last Modified: Fri, 06 Jul 2018 08:18:43 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0ff6034eb412b571271c235e27e06653a8c858164a627463f13b8ab52c74843`  
		Last Modified: Wed, 11 Jul 2018 10:34:00 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b462379633dcb69551ad3e11c327dd4311e2a43731977a42c708c42e7e24b0c`  
		Last Modified: Sat, 08 Sep 2018 09:57:12 GMT  
		Size: 406.8 KB (406847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51e705e0b1fca2e285bb4888d322f22e18ecfe96824b8909076a0fce4c60125a`  
		Last Modified: Sat, 08 Sep 2018 09:58:29 GMT  
		Size: 9.5 MB (9530308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66a9514cf6575579f475974ee4152b70c378aeaafe0eb64b357b2c856400af0d`  
		Last Modified: Sat, 08 Sep 2018 09:58:25 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e28359a109b3f366c8bda4cf625aa60b027c49815f05c8f28abe6d49394e4b74`  
		Last Modified: Sat, 08 Sep 2018 09:58:25 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine` - linux; s390x

```console
$ docker pull redis@sha256:b1769711ea67eb3d34b9a1095fabd28ff29d4f36c28824114ff14030d5650f16
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.3 MB (12295604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f23c7a44fd46eb37de13dadbb3d484a5c3e6c2cb3c9b4b83d3832f75ec417533`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 06 Jul 2018 11:41:42 GMT
ADD file:376dd7fc34ad39570d2e20f3704305e788ae613c589445b3e8fb880147c3eb59 in / 
# Fri, 06 Jul 2018 11:41:43 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 11:41:43 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 11:55:18 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 08 Sep 2018 12:19:14 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Sat, 08 Sep 2018 12:20:28 GMT
ENV REDIS_VERSION=4.0.11
# Sat, 08 Sep 2018 12:20:28 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Sat, 08 Sep 2018 12:20:29 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Sat, 08 Sep 2018 12:21:14 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 08 Sep 2018 12:21:15 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 08 Sep 2018 12:21:16 GMT
VOLUME [/data]
# Sat, 08 Sep 2018 12:21:16 GMT
WORKDIR /data
# Sat, 08 Sep 2018 12:21:16 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 08 Sep 2018 12:21:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 08 Sep 2018 12:21:16 GMT
EXPOSE 6379/tcp
# Sat, 08 Sep 2018 12:21:17 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:cdf21ace94188d512903eea53ea8559677e0e6ffd5d6a180a1d88c118abc96fc`  
		Last Modified: Fri, 06 Jul 2018 11:42:01 GMT  
		Size: 2.3 MB (2307471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea178433f2f09080fbbf77f09da1b16d588b7ced380d495a2f2ad00d28468338`  
		Last Modified: Fri, 06 Jul 2018 11:42:00 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2a9a36327b56f40ee16a7f6340b3f9e353f4d78c49c98c9b07dadba1340578a`  
		Last Modified: Wed, 11 Jul 2018 11:57:31 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3be4940b85b0b8aaa1e007b6f4cb5d70d8bff762cc06c980929cb3d859e2edd`  
		Last Modified: Sat, 08 Sep 2018 12:22:38 GMT  
		Size: 407.8 KB (407822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e60acc99dd12c1d8c51b4a5ad94b8b65ff41cb59b32d6f5f4d356ea0c4624a43`  
		Last Modified: Sat, 08 Sep 2018 12:23:17 GMT  
		Size: 9.6 MB (9578392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e96b90dd04238d97dd60d5e57d9cd01d2646586c0eaeda0a880c17aa4dedabb6`  
		Last Modified: Sat, 08 Sep 2018 12:23:14 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0554b2b838e8cdb949b452e485cdf55f1ff0462d9644984a1bd995bb4031d50`  
		Last Modified: Sat, 08 Sep 2018 12:23:14 GMT  
		Size: 395.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
