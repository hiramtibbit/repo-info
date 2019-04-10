## `redis:alpine3.9`

```console
$ docker pull redis@sha256:8de61637b5d2ad19875e79d233642d3b245bb66f53b34e7ea8f59f667628b1a1
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
