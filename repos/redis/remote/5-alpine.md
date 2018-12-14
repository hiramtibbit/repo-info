## `redis:5-alpine`

```console
$ docker pull redis@sha256:7b39b882655a3c4336ce200622aac2b73ef553634de42f130ca2234dc46fd7ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `redis:5-alpine` - linux; amd64

```console
$ docker pull redis@sha256:18922401ac594c680366e4d25f9c9c0dc2bb2ad04be184b70ff554abd4082181
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.9 MB (14945773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85cb68adadacf2c6fc732c8466b200d802e324f5ef617083b14c3d0aebcf6fd3`
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
# Thu, 13 Dec 2018 17:24:15 GMT
ENV REDIS_VERSION=5.0.3
# Thu, 13 Dec 2018 17:24:16 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Thu, 13 Dec 2018 17:24:16 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Thu, 13 Dec 2018 17:25:02 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 13 Dec 2018 17:25:03 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 17:25:03 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 17:25:03 GMT
WORKDIR /data
# Thu, 13 Dec 2018 17:25:03 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Thu, 13 Dec 2018 17:25:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 17:25:04 GMT
EXPOSE 6379/tcp
# Thu, 13 Dec 2018 17:25:04 GMT
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
	-	`sha256:8dd99d530347c52e17339ae6e77f9bf8c33998167e309737279e65adc75b9511`  
		Last Modified: Thu, 13 Dec 2018 17:30:31 GMT  
		Size: 12.3 MB (12334951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7137334fa8f033af889f00642719074bb51935cf1b87858ba15664df5b820218`  
		Last Modified: Thu, 13 Dec 2018 17:30:29 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30610ca6448732cd757d7aecd79bcdc085f04645b0489560bc2d84ce8c9dc4e5`  
		Last Modified: Thu, 13 Dec 2018 17:30:29 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:dc010cdec9212f450e85f96a6423ac7ebd0f65901685762f153b25e8e09d3af7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.9 MB (8893220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4075efe1d7b2fe42775827dbf1b891fcc0f6f574be303a6bca986f63fd5c0fca`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 13:48:17 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 12 Sep 2018 13:48:26 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 14 Dec 2018 10:21:51 GMT
ENV REDIS_VERSION=5.0.3
# Fri, 14 Dec 2018 10:21:53 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Fri, 14 Dec 2018 10:21:54 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Fri, 14 Dec 2018 10:26:37 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 14 Dec 2018 10:26:47 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 14 Dec 2018 10:26:49 GMT
VOLUME [/data]
# Fri, 14 Dec 2018 10:26:51 GMT
WORKDIR /data
# Fri, 14 Dec 2018 10:26:53 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 14 Dec 2018 10:26:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Dec 2018 10:26:56 GMT
EXPOSE 6379
# Fri, 14 Dec 2018 10:26:58 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:905674ea9d9448b14f15ae82e3c34138680bac1ef4fc29088aae8c9639b502fe`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 2.1 MB (2146453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91fe322e1690c8fb3f2b684fd85335d36a45e509b1568683232aede6d8a5e2b`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0282f47fed57cf0edb74497b0117f3bda5406a7b722499f98cfd1cfe84071abd`  
		Last Modified: Wed, 12 Sep 2018 14:02:59 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f05f53c51b59f1cf2512bc366489d8279414dcfdf4d3a44d2b36b407f0d1179`  
		Last Modified: Wed, 12 Sep 2018 14:03:02 GMT  
		Size: 404.7 KB (404670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d64788ba0a67553b429e5058f508f14fb2e8dd6800b04cab3fa84448ebb083c6`  
		Last Modified: Fri, 14 Dec 2018 10:27:31 GMT  
		Size: 6.3 MB (6340095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f10b481a0e78801c46807c6c2ec5af425681d759559fcfa9fb93071017e08ea3`  
		Last Modified: Fri, 14 Dec 2018 10:27:26 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c6c98c2f1195091393dec956203ffb878273b2c12e144f2d20d39190e132a27`  
		Last Modified: Fri, 14 Dec 2018 10:27:26 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:ce9dd25598cbbb664669a77dfd3956caf092514844ce39af70bfcd1ca347cd80
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.0 MB (14994761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ad0aba912c86ea1242abf68f65d496d8f331b8f87edb1e1e74a95883b28125b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 12:46:51 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 12 Sep 2018 12:46:56 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 14 Dec 2018 10:31:01 GMT
ENV REDIS_VERSION=5.0.3
# Fri, 14 Dec 2018 10:31:04 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Fri, 14 Dec 2018 10:31:10 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Fri, 14 Dec 2018 10:31:59 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 14 Dec 2018 10:32:04 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 14 Dec 2018 10:32:08 GMT
VOLUME [/data]
# Fri, 14 Dec 2018 10:32:11 GMT
WORKDIR /data
# Fri, 14 Dec 2018 10:32:15 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Fri, 14 Dec 2018 10:32:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Dec 2018 10:32:28 GMT
EXPOSE 6379/tcp
# Fri, 14 Dec 2018 10:32:37 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d6201b52ea9b908d4d6e950e2a79ded27be48979d6f0f63bd3a57b16b621f188`  
		Last Modified: Wed, 12 Sep 2018 08:19:46 GMT  
		Size: 2.2 MB (2195226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5cedde51de1c8ffccd5521fd02fc1efc1cc44ece2d5dccb1e550a65366cd80`  
		Last Modified: Wed, 12 Sep 2018 08:19:44 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecf7586f18b2066373cb5094be8898e1e33840c1f4cddee3e8f8b873075fb5ab`  
		Last Modified: Wed, 12 Sep 2018 12:50:56 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92415845fc066af3f720f0e6b9e348e4769da935329f65effd80736be62d1f91`  
		Last Modified: Wed, 12 Sep 2018 12:50:56 GMT  
		Size: 406.8 KB (406845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef4b8320f8e493431903e256e857631f5b3ab5abc9e1f36add7ad97906cdb1e5`  
		Last Modified: Fri, 14 Dec 2018 10:41:15 GMT  
		Size: 12.4 MB (12390685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34bfcf6038e3052f268ce11c2a46553e4780485dd7821d6a3643456364e877fc`  
		Last Modified: Fri, 14 Dec 2018 10:41:10 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9948c7a5b0c60960d8d1befc441d1b55e9867f615914dae459b1c1977d8e14ab`  
		Last Modified: Fri, 14 Dec 2018 10:41:10 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
