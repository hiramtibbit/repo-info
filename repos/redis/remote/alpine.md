## `redis:alpine`

```console
$ docker pull redis@sha256:3846be04166bc0b6298f844609ce8b0a20bfe60b4e7e8edf7647d0445fcb7ab2
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
