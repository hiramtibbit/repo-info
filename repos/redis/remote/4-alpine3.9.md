## `redis:4-alpine3.9`

```console
$ docker pull redis@sha256:19e628b8b161877f253a6cfee7eade2b62fbed5be460a11d12a78700930f5fbe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redis:4-alpine3.9` - linux; amd64

```console
$ docker pull redis@sha256:7ba44c86c4129a0718d71f5d0ff453a8fe8875b9faf361d7d00e2cc56697421b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 MB (13919774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e985c88d45b4cd0af2c724ed39ab6034b923e267494200bce5214846acab722`
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
# Fri, 08 Mar 2019 02:54:38 GMT
ENV REDIS_VERSION=4.0.13
# Fri, 08 Mar 2019 02:54:39 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Fri, 08 Mar 2019 02:54:39 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Fri, 08 Mar 2019 02:55:34 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 08 Mar 2019 02:55:35 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Mar 2019 02:55:35 GMT
VOLUME [/data]
# Fri, 08 Mar 2019 02:55:35 GMT
WORKDIR /data
# Fri, 08 Mar 2019 02:55:35 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 08 Mar 2019 02:55:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 02:55:36 GMT
EXPOSE 6379
# Fri, 08 Mar 2019 02:55:36 GMT
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
	-	`sha256:7ef17a2d5dfca94f697a84b394ec2ee9582a72c8a99aef3081aa177c37d3275c`  
		Last Modified: Fri, 08 Mar 2019 02:56:20 GMT  
		Size: 10.8 MB (10760288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f0cfc6485c5b0342a730fea0f14f069f60963bb31f254f6d82ca0cb17e9ea5a`  
		Last Modified: Fri, 08 Mar 2019 02:56:18 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bdc934cfc8d67b395f84b230d3920217602429515ce25ee8a66bfed7b7e949b`  
		Last Modified: Fri, 08 Mar 2019 02:56:18 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine3.9` - linux; arm variant v6

```console
$ docker pull redis@sha256:1b14aeb2e479f6eb41c59778d5f2258693e5d45d8ecd6098338c7738caf76204
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v1+json`
-	Total Size: **13.3 MB (13297697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `03b8c192e26ff55e1767c44d2ae18934408cc61aeec8c7e86976292c80d9b69e`
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
# Fri, 08 Mar 2019 05:39:43 GMT
ENV REDIS_VERSION=4.0.13
# Fri, 08 Mar 2019 05:39:44 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Fri, 08 Mar 2019 05:39:44 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Fri, 08 Mar 2019 05:40:13 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 08 Mar 2019 05:40:15 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Mar 2019 05:40:15 GMT
VOLUME [/data]
# Fri, 08 Mar 2019 05:40:15 GMT
WORKDIR /data
# Fri, 08 Mar 2019 05:40:16 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 08 Mar 2019 05:40:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 05:40:17 GMT
EXPOSE 6379
# Fri, 08 Mar 2019 05:40:17 GMT
RUN ["\/bin\/sh","-c","#(nop) ","CMD [\"redis-server\"]"]
```

-	Layers:
	-	`sha256:a3ed95caeb02ffe68cdd9fd84406680ae93d633cb16422d00e8a7c22955b46d4`  
		Last Modified: Sat, 14 Nov 2015 09:09:44 GMT  
		Size: 32.0 B  
		MIME: application/octet-stream
	-	`sha256:67996b16993c51f78353cbdd1055a1c3498fc632669bc92366acab8e1a556b6d`  
		Last Modified: Fri, 08 Mar 2019 05:40:52 GMT  
		Size: 414.0 B  
		MIME: application/octet-stream
	-	`sha256:337653b5a46b0e4ced55ea2aa65a0c97ed995573120db33e3573d3f5e3eb5864`  
		Last Modified: Fri, 08 Mar 2019 05:40:52 GMT  
		Size: 134.0 B  
		MIME: application/octet-stream
	-	`sha256:6e444a5f55dab6199bfeef843174991b00ea712ae56d1e3ed6e02b2c18499336`  
		Last Modified: Fri, 08 Mar 2019 05:40:55 GMT  
		Size: 10.3 MB (10349880 bytes)  
		MIME: application/octet-stream
	-	`sha256:72b8b2a00ff26d6561bdd7a5a984e982700a4875d6c405669665f4a1690ca6eb`  
		Last Modified: Fri, 08 Mar 2019 05:40:32 GMT  
		Size: 405.3 KB (405282 bytes)  
		MIME: application/octet-stream
	-	`sha256:1ba0c1f7e5a3f3ed61244f636c2d0a994092d082d619f402abd66e2d9a112e6c`  
		Last Modified: Fri, 08 Mar 2019 05:40:31 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/octet-stream
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/octet-stream

### `redis:4-alpine3.9` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:f334dc4a89d9a7643430be14a7692e2a284dd698d5be45f98f11c6daa8fb7b10
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 MB (13721015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b4abb70d7fb5499abbf0fe6afbbf04d428180141c3f4af4337b0349aa721cc1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 31 Jan 2019 09:40:55 GMT
ADD file:3c5f57c6644886bbb8164b9aa4cd60e233be7da48b7194a04963a8e7de058e28 in / 
# Thu, 31 Jan 2019 09:40:56 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:40:57 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 18:17:43 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 06 Feb 2019 18:17:49 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 22 Feb 2019 12:56:26 GMT
ENV REDIS_VERSION=4.0.13
# Fri, 22 Feb 2019 12:56:27 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Fri, 22 Feb 2019 12:56:29 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Fri, 22 Feb 2019 12:58:05 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 22 Feb 2019 12:58:08 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 22 Feb 2019 12:58:09 GMT
VOLUME [/data]
# Fri, 22 Feb 2019 12:58:11 GMT
WORKDIR /data
# Fri, 22 Feb 2019 12:58:12 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 22 Feb 2019 12:58:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 12:58:14 GMT
EXPOSE 6379
# Fri, 22 Feb 2019 12:58:15 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:ee02fa18913c824d1d1c9b680f1a43dad343b9d6c086a6bc62e3361c3d3a2d63`  
		Last Modified: Thu, 31 Jan 2019 09:41:23 GMT  
		Size: 2.7 MB (2687895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afafa41235ea57b01b00eba47de1574777073a79c1d592c5709dfcbb3bd51f2a`  
		Last Modified: Thu, 31 Jan 2019 09:41:21 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d6d89e1a92041f845dc3bb220bfd64284cf421059b704b46609ec6152d66eae`  
		Last Modified: Wed, 06 Feb 2019 18:24:12 GMT  
		Size: 1.2 KB (1245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cc7ef0e4aad3218485fe01595abc6569264662cb193886d07c3e9c9b68cfdb9`  
		Last Modified: Wed, 06 Feb 2019 18:24:13 GMT  
		Size: 405.2 KB (405205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0478665633bac264e81a1e306dd9b0cf5dd4c5ac7c427440954b364bf9ef98f`  
		Last Modified: Fri, 22 Feb 2019 12:59:52 GMT  
		Size: 10.6 MB (10625980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d0fa17b4ac5f0542712d276555709ca9e820d0e25ae14fd7a8ba3748497803d`  
		Last Modified: Fri, 22 Feb 2019 12:59:46 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c6d43eeade9fa27c0c8dce61b61e65a05a8b9343980c330da8697e38fcf5e2d`  
		Last Modified: Fri, 22 Feb 2019 12:59:46 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine3.9` - linux; 386

```console
$ docker pull redis@sha256:9857c2aedb51cd095ba49a64f5932a2d2d762eca6a39bd6ba63b6f075b4527e1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 MB (13415922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e0d401e7cb0d426fa2c4e5eb8419e1bf3a08946ca25c3b04938862e04c07996`
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
# Fri, 08 Mar 2019 10:15:22 GMT
ENV REDIS_VERSION=4.0.13
# Fri, 08 Mar 2019 10:15:22 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Fri, 08 Mar 2019 10:15:22 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Fri, 08 Mar 2019 10:15:56 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 08 Mar 2019 10:15:56 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Mar 2019 10:15:57 GMT
VOLUME [/data]
# Fri, 08 Mar 2019 10:15:57 GMT
WORKDIR /data
# Fri, 08 Mar 2019 10:15:57 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 08 Mar 2019 10:15:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 10:15:57 GMT
EXPOSE 6379
# Fri, 08 Mar 2019 10:15:57 GMT
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
	-	`sha256:c894a6476836ef41fc87176575193e8fe4b1571ca8c242d6d3c1b22229824fd0`  
		Last Modified: Tue, 12 Mar 2019 11:07:48 GMT  
		Size: 10.3 MB (10256792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5103498b120b0729f21510b02ff9021ef130affac79db2592d61cb1cc7353bee`  
		Last Modified: Tue, 12 Mar 2019 11:07:46 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61aa0f09332920cca67642e87dcd00ffc7d8c6436189c297477a87dc0f54103f`  
		Last Modified: Tue, 12 Mar 2019 11:07:46 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine3.9` - linux; ppc64le

```console
$ docker pull redis@sha256:45389e503bd5bef9ec4519c8a6f8d1f8a4bda2265ad291aa0ca835b3314793a3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14382184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5283f55671c5f1b2250f527c81b546b3e11753f6c72a7d328418d8210d71d50`
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
# Fri, 08 Mar 2019 06:24:35 GMT
ENV REDIS_VERSION=4.0.13
# Fri, 08 Mar 2019 06:24:36 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Fri, 08 Mar 2019 06:24:38 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Fri, 08 Mar 2019 06:25:22 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 08 Mar 2019 06:25:47 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Mar 2019 06:25:54 GMT
VOLUME [/data]
# Fri, 08 Mar 2019 06:26:02 GMT
WORKDIR /data
# Fri, 08 Mar 2019 06:26:06 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 08 Mar 2019 06:26:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 06:26:22 GMT
EXPOSE 6379
# Fri, 08 Mar 2019 06:26:24 GMT
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
	-	`sha256:f495d7be63ed2d741e47f54b0bd37ad38cd0996bb821fb2d9d557941f3c54d30`  
		Last Modified: Fri, 08 Mar 2019 06:27:46 GMT  
		Size: 11.2 MB (11191375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8051e4920a288358654e3c839b6a652ecf840d48169a5304fd713c4bf217b5d3`  
		Last Modified: Fri, 08 Mar 2019 06:27:43 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1ca381d8ab1e2b9c03bda2978790cf7ecec0d3c796eee4c413dcb2a711f881`  
		Last Modified: Fri, 08 Mar 2019 06:27:43 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine3.9` - linux; s390x

```console
$ docker pull redis@sha256:c00c0fd4eadf9b557918706556b7d4dab5d7fc822ac09f380fd6aadb5b3ab4f9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 MB (13787289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a645dc699e168ecbc112290740f5ab21fd69ee4fb7b498cd63b143f5502bf978`
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
# Fri, 08 Mar 2019 05:36:46 GMT
ENV REDIS_VERSION=4.0.13
# Fri, 08 Mar 2019 05:36:47 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Fri, 08 Mar 2019 05:36:47 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Fri, 08 Mar 2019 05:37:08 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 08 Mar 2019 05:37:09 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Mar 2019 05:37:09 GMT
VOLUME [/data]
# Fri, 08 Mar 2019 05:37:09 GMT
WORKDIR /data
# Fri, 08 Mar 2019 05:37:10 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 08 Mar 2019 05:37:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 05:37:10 GMT
EXPOSE 6379
# Fri, 08 Mar 2019 05:37:10 GMT
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
	-	`sha256:4014cfcf355c2775f4c3d1511ffaf39ca3e22c55e3fe98ac57bb1fca71266080`  
		Last Modified: Fri, 08 Mar 2019 05:38:04 GMT  
		Size: 10.8 MB (10836367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54218dd209b4a59025fc89f909f41a5ae3afe5dbddc706d4ededbda864ac4c03`  
		Last Modified: Fri, 08 Mar 2019 05:38:02 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8c8907cfda6c44c908a0fdb885fdf93e6b1c1657da394cc18415cfae546a9d0`  
		Last Modified: Fri, 08 Mar 2019 05:38:02 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
