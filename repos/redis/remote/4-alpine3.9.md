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
