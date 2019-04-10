## `redis:5-alpine3.9`

```console
$ docker pull redis@sha256:457e5794dc9a18d4df3551afb7cc9a94a3f7403511797dafc469f89bfd6f5cb0
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
