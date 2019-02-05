## `redis:4-alpine3.9`

```console
$ docker pull redis@sha256:949965d46575cf325c093d09b67e88a6428671863d7ba4d0f5f6cdf915ca2bee
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
$ docker pull redis@sha256:ae017f8d136099e528be49e05f9a55d69cac8c00c5a740c15b53c1cfbf11200f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 MB (13917355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23d561d12e920d0ce347df8d75476b7a8aebad14150e18daf8940bde5856ca4f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Tue, 05 Feb 2019 21:24:04 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Tue, 05 Feb 2019 21:24:06 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Tue, 05 Feb 2019 21:26:07 GMT
ENV REDIS_VERSION=4.0.12
# Tue, 05 Feb 2019 21:26:07 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Tue, 05 Feb 2019 21:26:07 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Tue, 05 Feb 2019 21:26:42 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Tue, 05 Feb 2019 21:26:43 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 05 Feb 2019 21:26:43 GMT
VOLUME [/data]
# Tue, 05 Feb 2019 21:26:44 GMT
WORKDIR /data
# Tue, 05 Feb 2019 21:26:44 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Tue, 05 Feb 2019 21:26:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Feb 2019 21:26:44 GMT
EXPOSE 6379
# Tue, 05 Feb 2019 21:26:44 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e42672a2ca6a1cc999c70a5b2db9eb57ba0345688799ad310cac5d9b77a5c236`  
		Last Modified: Tue, 05 Feb 2019 21:27:07 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:823e4275fef65b480f1c028b2623db710d7e826ef20de02e98c593c5bf5262cb`  
		Last Modified: Tue, 05 Feb 2019 21:27:07 GMT  
		Size: 403.0 KB (402995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c49a8a142d313433f3004838847ed161fa8cac7ca238afae5cd918dab15e319`  
		Last Modified: Tue, 05 Feb 2019 21:27:22 GMT  
		Size: 10.8 MB (10757869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62c3ab7a67afe62c3e1774d5609d679949ef949210454284fc79cc7f100e7c07`  
		Last Modified: Tue, 05 Feb 2019 21:27:20 GMT  
		Size: 101.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8e4fee2dbc26384fa3929eb8fc8e058a82f0db19e53249a8cb2c164b5d3c02d`  
		Last Modified: Tue, 05 Feb 2019 21:27:20 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine3.9` - linux; arm variant v6

```console
$ docker pull redis@sha256:5a28c0afc62c1ab4301c0ba199804cb0596002a2fdf6fbe1c06cd79d96aa67e6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.7 MB (11666877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b63ace65b635b0b9d4d9c69d7807a1515033ac0d26315098d0c5c52dcd8f06e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 09:20:24 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Thu, 31 Jan 2019 09:20:27 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Thu, 31 Jan 2019 09:21:17 GMT
ENV REDIS_VERSION=4.0.12
# Thu, 31 Jan 2019 09:21:17 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Thu, 31 Jan 2019 09:21:18 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Thu, 31 Jan 2019 09:21:42 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 31 Jan 2019 09:21:43 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 31 Jan 2019 09:21:44 GMT
VOLUME [/data]
# Thu, 31 Jan 2019 09:21:44 GMT
WORKDIR /data
# Thu, 31 Jan 2019 09:21:45 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Thu, 31 Jan 2019 09:21:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 31 Jan 2019 09:21:45 GMT
EXPOSE 6379
# Thu, 31 Jan 2019 09:21:46 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ebd28418fd718508b5fea4fb3b8a8df1880c032415bdf7fa05f6597553a9ce2`  
		Last Modified: Thu, 31 Jan 2019 09:22:03 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e60c2b63aeba0034740dec220f6276e15be443cc503640a0aa178c7292e423b`  
		Last Modified: Thu, 31 Jan 2019 09:22:03 GMT  
		Size: 405.2 KB (405186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74cfac8bb5926aa50854499ca9dee842e021f0181c372953917952c441255f30`  
		Last Modified: Thu, 31 Jan 2019 09:22:29 GMT  
		Size: 9.1 MB (9113907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a449c277606777203b203957ca6b7a6ffd58833df8d9c4a20d1f035349087a28`  
		Last Modified: Thu, 31 Jan 2019 09:22:26 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42e69e28fd920b22e9b09c7e557bd376a2832fb71cc605bf10eb63feac94567f`  
		Last Modified: Thu, 31 Jan 2019 09:22:26 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine3.9` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:c1b4ad18cf69638cc1cd6dda6f139143bf487a99538672e5b3b53786c682ea1a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.7 MB (11703234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d32cfb1cab15fa3554a05430a60cf8c8439e0ec55b50f1c94469037cd153c895`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 15:04:30 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 21 Dec 2018 15:04:35 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 21 Dec 2018 15:07:34 GMT
ENV REDIS_VERSION=4.0.12
# Fri, 21 Dec 2018 15:07:35 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Fri, 21 Dec 2018 15:07:36 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Fri, 21 Dec 2018 15:09:01 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 21 Dec 2018 15:09:05 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 21 Dec 2018 15:09:06 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 15:09:07 GMT
WORKDIR /data
# Fri, 21 Dec 2018 15:09:08 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 21 Dec 2018 15:09:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 15:09:10 GMT
EXPOSE 6379
# Fri, 21 Dec 2018 15:09:11 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9afcea4bbe8c0cd1974219056baef82c09ae5626ed95f109330edec6abfb5d65`  
		Last Modified: Fri, 21 Dec 2018 15:10:14 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d30fc10da3c728b6192f95ca65d9fce0e3cfc9f40c7d0b6b2a47cf76a36daf75`  
		Last Modified: Fri, 21 Dec 2018 15:10:15 GMT  
		Size: 401.1 KB (401129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ffe48ad83d32a0e672208f9382dec5f0ea4def9379dc07d3279fd51c744e319`  
		Last Modified: Fri, 21 Dec 2018 15:11:02 GMT  
		Size: 9.2 MB (9200328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bafdd5308967aa0c543e9cd515f9069acae1c5060822ad0ed58d5b018144e7a2`  
		Last Modified: Fri, 21 Dec 2018 15:10:55 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7456129ce64a7862c4588266a6ec4ed543e9c2744cde6388418cd5b0cf4603c`  
		Last Modified: Fri, 21 Dec 2018 15:10:55 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine3.9` - linux; 386

```console
$ docker pull redis@sha256:29f97fd9f2f44e90f8d0cfa9c3260dbbc4ca3b91c23235cf13a2de1203149ebf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.7 MB (11661692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dee41d31c27c245ef286a542e33ea083d1d7d661dfd695dc27ffe3348d9f0c8a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 21 Dec 2018 11:40:13 GMT
ADD file:38576b24298c124265c8fffb7bc8fdb0c144d99dcce4e9942bdcceb936830ba6 in / 
# Fri, 21 Dec 2018 11:40:14 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 11:40:14 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 12:23:12 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 21 Dec 2018 12:23:13 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 21 Dec 2018 12:24:28 GMT
ENV REDIS_VERSION=4.0.12
# Fri, 21 Dec 2018 12:24:28 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Fri, 21 Dec 2018 12:24:28 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Fri, 21 Dec 2018 12:24:59 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 21 Dec 2018 12:25:00 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 21 Dec 2018 12:25:00 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 12:25:00 GMT
WORKDIR /data
# Fri, 21 Dec 2018 12:25:01 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 21 Dec 2018 12:25:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 12:25:01 GMT
EXPOSE 6379
# Fri, 21 Dec 2018 12:25:01 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:25bcd1068fdd02354e6b3fb4ebbad1a9c1df7f5ec2d61aa88a337345415dc102`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 2.3 MB (2271567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795c3ef9c057ef60e7a4a088655adecaccd21d68099ad1f654bccd015ab319da`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e05dcaf7e3a5f71f671a74e623bb9abe78af5ef495965ba44fa2467cb6428516`  
		Last Modified: Fri, 21 Dec 2018 12:25:17 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9314a25830c13371be7bb35c347e70d7a8b44c928b5d2fc0e1712c30f80da31`  
		Last Modified: Fri, 21 Dec 2018 12:25:17 GMT  
		Size: 407.1 KB (407101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a386fc03bcfacef0df01928e437a193a603fd79989f5c460eba602fa84c668f8`  
		Last Modified: Fri, 21 Dec 2018 12:25:33 GMT  
		Size: 9.0 MB (8981088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae382ba88f31a1396c9f7ee7a4e6277aa694eb5ca8f269f58df75e1a3465642a`  
		Last Modified: Fri, 21 Dec 2018 12:25:28 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5d391f6605612f0ba0b50ffc9fca6d12806681b2bec9050f7a611861e66984e`  
		Last Modified: Fri, 21 Dec 2018 12:25:28 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine3.9` - linux; ppc64le

```console
$ docker pull redis@sha256:868d75b49d9bd413a0c51d0d4a99c4777cb24b46ea1fc4f14153778f7a5d7072
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.1 MB (12138776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83656b3083d35b57456d9a85564b1f3c2026c6273132a5f04ba3b6c0c39a59b8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 21 Dec 2018 09:44:05 GMT
ADD file:81f8badc2215d9ccd8f5406b89b63bf0b407b3e877f6232bd11153780c551392 in / 
# Fri, 21 Dec 2018 09:44:06 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:44:10 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 11:58:18 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 21 Dec 2018 11:58:22 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 21 Dec 2018 11:59:42 GMT
ENV REDIS_VERSION=4.0.12
# Fri, 21 Dec 2018 11:59:44 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Fri, 21 Dec 2018 11:59:46 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Fri, 21 Dec 2018 12:00:11 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 21 Dec 2018 12:00:16 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 21 Dec 2018 12:00:17 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 12:00:21 GMT
WORKDIR /data
# Fri, 21 Dec 2018 12:00:22 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 21 Dec 2018 12:00:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 12:00:30 GMT
EXPOSE 6379
# Fri, 21 Dec 2018 12:00:35 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5fac6f91a5114ca7e803950377d1db527386361cdf48b205eed63d8ab99820c3`  
		Last Modified: Fri, 21 Dec 2018 09:45:58 GMT  
		Size: 2.2 MB (2194772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c21fc409a1bc2fd1e54e11e2bd2beb4251b1c6d49aee187e7d28df20b2004b1`  
		Last Modified: Fri, 21 Dec 2018 09:45:56 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3116134e43eed56e1265aaa08873f9f6b9929bffa74beb3586f3138e9cc46e2c`  
		Last Modified: Fri, 21 Dec 2018 12:01:14 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e10b6fb16b59afc5f795b7a9695cf5a0a5baea6eb32445bb8df64afce0e0dd53`  
		Last Modified: Fri, 21 Dec 2018 12:01:15 GMT  
		Size: 407.4 KB (407413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0de3e4a1beb3a667e90ea88885eee98c5a4a814dae371a755f0f977d62892469`  
		Last Modified: Fri, 21 Dec 2018 12:01:52 GMT  
		Size: 9.5 MB (9534587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:554bcd3a172a1f355518e25e1713ae3f297de25a29f34279566ecde0b634c610`  
		Last Modified: Fri, 21 Dec 2018 12:01:50 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6384680f4cf572cf84484d637a4154b0c0eb832e0367e59fa846be261df84abe`  
		Last Modified: Fri, 21 Dec 2018 12:01:50 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine3.9` - linux; s390x

```console
$ docker pull redis@sha256:2b1aa038b2c19de4a17330ec3463ccfc76da2361b7b0a20e126b39579df72356
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.3 MB (12300342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e48f7a2c15f2dd37a5e21e6492d46c2666e55c04c0456e794ecfe5b63b40b5cc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 21 Dec 2018 12:42:37 GMT
ADD file:1a22c7b9e0997dd22f616aaab8281f257d34f6f684cf60e256faed91dd22b7a5 in / 
# Fri, 21 Dec 2018 12:42:37 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 12:42:38 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 14:28:57 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 21 Dec 2018 14:28:58 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 21 Dec 2018 14:29:58 GMT
ENV REDIS_VERSION=4.0.12
# Fri, 21 Dec 2018 14:29:58 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Fri, 21 Dec 2018 14:29:59 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Fri, 21 Dec 2018 14:30:20 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 21 Dec 2018 14:30:21 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 21 Dec 2018 14:30:21 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 14:30:21 GMT
WORKDIR /data
# Fri, 21 Dec 2018 14:30:21 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 21 Dec 2018 14:30:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 14:30:22 GMT
EXPOSE 6379
# Fri, 21 Dec 2018 14:30:22 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:15104e3bedebb091b5b7a84edf7fdd60a8c1564c514db2cd2280365c6545b489`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 2.3 MB (2307849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b6c2e18bbe3b8455119e6724bd63ad7bf07637d1ea3be59615766903e0bfb9a`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2d242836af801e2953145aca64bf779f602b785fc5760250737b2d1e274839`  
		Last Modified: Fri, 21 Dec 2018 14:30:46 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5483a7d98377a6e29cb7987e8578e34d51d1b201cd7d6c3840a7f34a29070acb`  
		Last Modified: Fri, 21 Dec 2018 14:30:46 GMT  
		Size: 408.4 KB (408405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0237ef8c5f7c5fe28db705b00535b71181d24904d481f807630054eba3f48df`  
		Last Modified: Fri, 21 Dec 2018 14:31:04 GMT  
		Size: 9.6 MB (9582152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55d65e3555bcb587995e4ab08cf3ddce9f7931471347c9fde80e68e06550b8b2`  
		Last Modified: Fri, 21 Dec 2018 14:31:02 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf9654594db45a0e7007f1e204ea33631ffb63c2c422e674d503b489923706fa`  
		Last Modified: Fri, 21 Dec 2018 14:31:02 GMT  
		Size: 410.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
