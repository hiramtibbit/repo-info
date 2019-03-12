## `redis:alpine`

```console
$ docker pull redis@sha256:f8c22abc77f3f9cc1c2516062e4a2a71375859d7922da3faf9e4160e6ba4c3c2
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
$ docker pull redis@sha256:9470e8715d17afa5e80ef6df3f71327b6a94d893f3cd65e40a2c63230eb64e3f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.7 MB (17722275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d2a373f46ae28f3376c356d27210759aa9348fd94c517cf77e9df2a2c41c37f`
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
# Fri, 08 Mar 2019 02:52:31 GMT
ENV REDIS_VERSION=5.0.3
# Fri, 08 Mar 2019 02:52:32 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Fri, 08 Mar 2019 02:52:32 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Fri, 08 Mar 2019 02:54:09 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 08 Mar 2019 02:54:11 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Mar 2019 02:54:11 GMT
VOLUME [/data]
# Fri, 08 Mar 2019 02:54:11 GMT
WORKDIR /data
# Fri, 08 Mar 2019 02:54:11 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 08 Mar 2019 02:54:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 02:54:12 GMT
EXPOSE 6379
# Fri, 08 Mar 2019 02:54:12 GMT
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
	-	`sha256:4db6e55a035b9e04666197903eaea1165e45840cca90b03253a02ec0f90bdeb1`  
		Last Modified: Fri, 08 Mar 2019 02:56:10 GMT  
		Size: 14.6 MB (14562788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec250a8373f412c85b643a1ef7166350aa0ce7b74d0e0f771d6e1f9fdc8907d8`  
		Last Modified: Fri, 08 Mar 2019 02:56:07 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22c03918a60af65b1cfb755b230111f3fb778fa68f3d46b2de495014c00befef`  
		Last Modified: Fri, 08 Mar 2019 02:56:07 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:d3c5e39feeba9304f7096c78153f6190866859f125d06264b41899934e3bc444
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17108881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:766dece240d92fa49b3fa3a0e8915d976ed9954624fb48e526895c66502e929d`
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
# Fri, 08 Mar 2019 05:38:44 GMT
ENV REDIS_VERSION=5.0.3
# Fri, 08 Mar 2019 05:38:45 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Fri, 08 Mar 2019 05:38:45 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Fri, 08 Mar 2019 05:39:27 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 08 Mar 2019 05:39:29 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Mar 2019 05:39:29 GMT
VOLUME [/data]
# Fri, 08 Mar 2019 05:39:30 GMT
WORKDIR /data
# Fri, 08 Mar 2019 05:39:30 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 08 Mar 2019 05:39:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 05:39:31 GMT
EXPOSE 6379
# Fri, 08 Mar 2019 05:39:31 GMT
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
	-	`sha256:1a6f611f98f72b65dc6900980e0d4c7d4fcec43653ffddc3941865c867f733c0`  
		Last Modified: Fri, 08 Mar 2019 05:40:36 GMT  
		Size: 14.2 MB (14161096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c178c0c46bec2f2399ca62d54ac1d556ce369780808f3fcd9302e3a231049558`  
		Last Modified: Fri, 08 Mar 2019 05:40:31 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a3aaff2c1a9d4814dfbd081b5b1dc3feafab94051d9fda57faa150ce1957d89`  
		Last Modified: Fri, 08 Mar 2019 05:40:31 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine` - linux; arm variant v7

```console
$ docker pull redis@sha256:55126eb8780c44b6443720435353e7d40798bf362cc9ba9d2c0adefc24893a8d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16671379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:485660acbd7fb515439989807b526cb070e583f3fcaa004c4b9fe9bbdcc6e39c`
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
# Tue, 12 Mar 2019 12:38:38 GMT
ENV REDIS_VERSION=5.0.3
# Tue, 12 Mar 2019 12:38:39 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Tue, 12 Mar 2019 12:38:39 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Tue, 12 Mar 2019 12:39:22 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Tue, 12 Mar 2019 12:39:23 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 12 Mar 2019 12:39:24 GMT
VOLUME [/data]
# Tue, 12 Mar 2019 12:39:24 GMT
WORKDIR /data
# Tue, 12 Mar 2019 12:39:24 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Tue, 12 Mar 2019 12:39:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Mar 2019 12:39:25 GMT
EXPOSE 6379
# Tue, 12 Mar 2019 12:39:26 GMT
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
	-	`sha256:91a10fcb5d3d369925b1cb45fdd3be599dfa5d5bb3de52f2a59b5ef9e4b0e823`  
		Last Modified: Tue, 12 Mar 2019 12:40:42 GMT  
		Size: 13.9 MB (13922393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df75bf956365872f643191e7c0f5aede912ada01120f0d68bf0d2a7372987978`  
		Last Modified: Tue, 12 Mar 2019 12:40:38 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdf2eb401ad54799db747abf685742fdcd1dfce29d36ee6381399a58704d2132`  
		Last Modified: Tue, 12 Mar 2019 12:40:38 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:5135100311d63782ba32a92f8d46ae62bae1c6e85870cf833cf2d9c6294a3ffe
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.6 MB (17583542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef6dfd9f945a2b90bc7decf8723fa49a2b0f0be38e5c104b51bf22185b3cdf8e`
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
# Fri, 08 Mar 2019 11:43:58 GMT
ENV REDIS_VERSION=5.0.3
# Fri, 08 Mar 2019 11:43:58 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Fri, 08 Mar 2019 11:43:59 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Fri, 08 Mar 2019 11:46:21 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 08 Mar 2019 11:46:25 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Mar 2019 11:46:26 GMT
VOLUME [/data]
# Fri, 08 Mar 2019 11:46:27 GMT
WORKDIR /data
# Fri, 08 Mar 2019 11:46:29 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 08 Mar 2019 11:46:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 11:46:31 GMT
EXPOSE 6379
# Fri, 08 Mar 2019 11:46:33 GMT
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
	-	`sha256:aa930d6c6ae8c5457b55e58e192975933e3e9ad90547a58815a17696a3a65a3a`  
		Last Modified: Fri, 08 Mar 2019 11:49:00 GMT  
		Size: 14.5 MB (14488609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:903f3d4c59ad6ba33196bd5ba110f68c7e4ff17c29668c6d9c8d0ea7293941d7`  
		Last Modified: Fri, 08 Mar 2019 11:48:54 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:257aa0fc624a3f2af4d285c7bae5b93c80de3c5c356b228609fa610373ec32e8`  
		Last Modified: Fri, 08 Mar 2019 11:48:54 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine` - linux; 386

```console
$ docker pull redis@sha256:c99c1d979dc106c0adb1fd7af9b3ba80410dec1f6c58ac281869f8895d353596
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17099588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:280e5f9e610458b58e75a4ef40023d0d3aabe0d2aa5c58651a37aa466f50e761`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 31 Jan 2019 11:38:57 GMT
ADD file:738a04760a9f9a1cd919954db42a0da78c644e7024240160c54723bf1dd479e9 in / 
# Thu, 31 Jan 2019 11:38:57 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 11:38:57 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 23:41:06 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 06 Feb 2019 23:41:07 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 06 Feb 2019 23:41:07 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 23:41:07 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 23:41:08 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 23:42:10 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 06 Feb 2019 23:42:11 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 23:42:11 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 23:42:11 GMT
WORKDIR /data
# Wed, 06 Feb 2019 23:42:12 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 06 Feb 2019 23:42:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 23:42:12 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 23:42:12 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:bcb4f889a459d231e71d88c93174eec5edef928ab1e2481f8b0074076ee934a6`  
		Last Modified: Thu, 31 Jan 2019 11:39:11 GMT  
		Size: 2.7 MB (2749336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4099db9edcf638f20df22a899890483f7c152af59ca7a2de9c3b24c53c509e7`  
		Last Modified: Thu, 31 Jan 2019 11:39:11 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:674a296497ebd416b2ea4f25685d393136e7c050aa9f40131a989dd1adef0df7`  
		Last Modified: Wed, 06 Feb 2019 23:44:07 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2485495ab2e5b3bb49d4ee34a89cdbf4845c38bd6b6e91a2d786e4b5f9d07a59`  
		Last Modified: Wed, 06 Feb 2019 23:44:07 GMT  
		Size: 408.0 KB (407996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc669db85fd94db885a05969024c2fe98dd5c24fcec3ec6d862e00ad74a3ab11`  
		Last Modified: Wed, 06 Feb 2019 23:44:11 GMT  
		Size: 13.9 MB (13940319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f10f03309433ece380a8d54b8aff90742c444ba831ddd17aabf1eb935920aff2`  
		Last Modified: Wed, 06 Feb 2019 23:44:07 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c502ff5c4e1dec67d99924f64e85c80106d273fc3a9baa08e6792e6a387506e3`  
		Last Modified: Wed, 06 Feb 2019 23:44:07 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:8cec178a0bea3303c4c7b3d5681b2c1e3b6ae61f8acaa670411aeff51708b36f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18591914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57eaa83ea14b56cc6d63dcb6dec2931a628f1a2ef6a241f4e24a067fe5e68fc4`
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
# Fri, 08 Mar 2019 06:22:10 GMT
ENV REDIS_VERSION=5.0.3
# Fri, 08 Mar 2019 06:22:12 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Fri, 08 Mar 2019 06:22:14 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Fri, 08 Mar 2019 06:23:27 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 08 Mar 2019 06:23:45 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Mar 2019 06:23:49 GMT
VOLUME [/data]
# Fri, 08 Mar 2019 06:24:00 GMT
WORKDIR /data
# Fri, 08 Mar 2019 06:24:04 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 08 Mar 2019 06:24:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 06:24:11 GMT
EXPOSE 6379
# Fri, 08 Mar 2019 06:24:17 GMT
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
	-	`sha256:ad1cf51440511033fa9bdb096fce3e388ec6f35e8645c658c578500775427621`  
		Last Modified: Fri, 08 Mar 2019 06:27:14 GMT  
		Size: 15.4 MB (15401106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77fea05b9f74e69f981c71672f6ba89bb049c821bc68f6b488fd67ba32650878`  
		Last Modified: Fri, 08 Mar 2019 06:27:10 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5c089a1d19ff8a7e10da455f6107b337f3922203340afbe5c551f0a91ba6129`  
		Last Modified: Fri, 08 Mar 2019 06:27:10 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine` - linux; s390x

```console
$ docker pull redis@sha256:882204235cbe933a053875c1443457ebd91316ceca5ebd042801449038f5fcd6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17817006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cac3e0ee906fb18ec02596b5d00f1cf8185603b15670280b52b9175b5f94011`
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
# Fri, 08 Mar 2019 05:35:50 GMT
ENV REDIS_VERSION=5.0.3
# Fri, 08 Mar 2019 05:35:50 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Fri, 08 Mar 2019 05:35:50 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Fri, 08 Mar 2019 05:36:32 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 08 Mar 2019 05:36:33 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Mar 2019 05:36:33 GMT
VOLUME [/data]
# Fri, 08 Mar 2019 05:36:33 GMT
WORKDIR /data
# Fri, 08 Mar 2019 05:36:33 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 08 Mar 2019 05:36:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 05:36:34 GMT
EXPOSE 6379
# Fri, 08 Mar 2019 05:36:34 GMT
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
	-	`sha256:07fbd283297462513463363df4a4a3766809dc0eec117be2a10c1747fd0fea69`  
		Last Modified: Fri, 08 Mar 2019 05:37:33 GMT  
		Size: 14.9 MB (14866084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cc7b45b4850310346e3275012d38284c97b2ddbac570d21ce353e165112c1fa`  
		Last Modified: Fri, 08 Mar 2019 05:37:28 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0dabb8834dc79beb93f7bfb59cc12fb4917b07fcdc9711410543c57b2415ff`  
		Last Modified: Fri, 08 Mar 2019 05:37:28 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
