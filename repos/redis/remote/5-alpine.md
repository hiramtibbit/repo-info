## `redis:5-alpine`

```console
$ docker pull redis@sha256:4d0d7aed642680e018cc40b6b19b0d8a70f9596c41822fb8b61e67338b9c789c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redis:5-alpine` - linux; amd64

```console
$ docker pull redis@sha256:49c68b2ddb87cb21336d5e14a5b0874e539c6a5c1d5f51fb4b025513acc3316d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.7 MB (17722069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5cff96d7b8f5d3332b43922e424d448172f68b118e0e32cb26270227faec083`
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
# Tue, 05 Feb 2019 21:24:06 GMT
ENV REDIS_VERSION=5.0.3
# Tue, 05 Feb 2019 21:24:07 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Tue, 05 Feb 2019 21:24:07 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Tue, 05 Feb 2019 21:25:47 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Tue, 05 Feb 2019 21:25:48 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 05 Feb 2019 21:25:48 GMT
VOLUME [/data]
# Tue, 05 Feb 2019 21:25:48 GMT
WORKDIR /data
# Tue, 05 Feb 2019 21:25:49 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Tue, 05 Feb 2019 21:25:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Feb 2019 21:25:49 GMT
EXPOSE 6379
# Tue, 05 Feb 2019 21:25:49 GMT
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
	-	`sha256:c2ad7a3b6c3fb2ef4fe32aa1535eb063abd70e0f5aec29c248d8b0d3d08a6f47`  
		Last Modified: Tue, 05 Feb 2019 21:27:10 GMT  
		Size: 14.6 MB (14562585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:327e62bcfef7879ca648717d3b9377978a7ff2b5ac7cca277ba284f16ea85883`  
		Last Modified: Tue, 05 Feb 2019 21:27:07 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be5997a801f56098c177a275af36d5d7522b93a2ceadee22d389e4ce688ac8da`  
		Last Modified: Tue, 05 Feb 2019 21:27:07 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:4a8cceff87821658eb72eda851ecf3160862cd525d2467ffb024052227ef608d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14410911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27f0b43ee61cbd94908c71808fe407f6714a64001e989fb670649f0d93927338`
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
# Thu, 31 Jan 2019 09:20:27 GMT
ENV REDIS_VERSION=5.0.3
# Thu, 31 Jan 2019 09:20:27 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Thu, 31 Jan 2019 09:20:28 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Thu, 31 Jan 2019 09:21:08 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 31 Jan 2019 09:21:09 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 31 Jan 2019 09:21:10 GMT
VOLUME [/data]
# Thu, 31 Jan 2019 09:21:10 GMT
WORKDIR /data
# Thu, 31 Jan 2019 09:21:10 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Thu, 31 Jan 2019 09:21:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 31 Jan 2019 09:21:11 GMT
EXPOSE 6379
# Thu, 31 Jan 2019 09:21:12 GMT
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
	-	`sha256:83b11ec1f5d016feef776fdfdc0bead46e3846f9b52c981b09ca93f5a5b44380`  
		Last Modified: Thu, 31 Jan 2019 09:22:07 GMT  
		Size: 11.9 MB (11857940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa89be15ad241e70aedfdde10501eebb5813af38dbf705ca1c7229a2741d65fb`  
		Last Modified: Thu, 31 Jan 2019 09:22:03 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02f158534113595b8720c48303354c88614909c9f367ad7939f87d82e60a1033`  
		Last Modified: Thu, 31 Jan 2019 09:22:03 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:3c4664968d743aa1eb3a620fbefc4ec5437b1b546949d5f5748ea81b28aa0111
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.6 MB (17581823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee32ec92d0ca472c91bdd4b964aebdcd5d83086e5d6a7d90a2fe55dad20c01d8`
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
# Wed, 06 Feb 2019 18:17:51 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 18:17:52 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 18:17:53 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 18:19:22 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 06 Feb 2019 18:19:25 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 18:19:26 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 18:19:28 GMT
WORKDIR /data
# Wed, 06 Feb 2019 18:19:29 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 06 Feb 2019 18:19:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 18:19:33 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 18:19:34 GMT
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
	-	`sha256:d2d8f1330b4e18a61eaa48b69a64e9571ddc410f64627100685e8aef86d57d5f`  
		Last Modified: Wed, 06 Feb 2019 18:24:18 GMT  
		Size: 14.5 MB (14486787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:547c26f78fe1552993da874bd5862d2cee112f2d28102d70d4d96f1fc1efe352`  
		Last Modified: Wed, 06 Feb 2019 18:24:12 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14cd7ebfe3a7d3f1050ff7ffb38057cd6c946cd0f7dccde7309472ba488c9811`  
		Last Modified: Wed, 06 Feb 2019 18:24:12 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-alpine` - linux; 386

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

### `redis:5-alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:be299124e656892bb56afcc09506f6957d411a4bbc39c1209b0d3e75cec36008
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18590646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b5b76bf4aca8426d505ef86bec287919f0b92c4f7c239e0044a008148213690`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 31 Jan 2019 09:21:00 GMT
ADD file:22eef5b6e842546e68660322c07723d9794ca0eb45ac3acf95381e2591f455c6 in / 
# Thu, 31 Jan 2019 09:21:01 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:21:02 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 14:26:00 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 06 Feb 2019 14:26:06 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 06 Feb 2019 14:26:07 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 14:26:10 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 14:26:12 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 14:27:13 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 06 Feb 2019 14:27:17 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 14:27:18 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 14:27:19 GMT
WORKDIR /data
# Wed, 06 Feb 2019 14:27:20 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 06 Feb 2019 14:27:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 14:27:22 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 14:27:24 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:3261f066f954b13c338d7bebabcc22a2a4037bfe4c6989b60595b13ac629445f`  
		Last Modified: Thu, 31 Jan 2019 09:21:21 GMT  
		Size: 2.8 MB (2778665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff5f92c7db4d11f3356e3243a8a330a8eb64fcde5310599933270ad96a2e3dc`  
		Last Modified: Thu, 31 Jan 2019 09:21:22 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38611b6a52af54e6a88187c1f138f076668eafe25d524d4c76b6670716073e7f`  
		Last Modified: Wed, 06 Feb 2019 14:31:07 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06a40fe5968cb8f23b3ca4cef68f3083205d535be4fa7925583252b92e164774`  
		Last Modified: Wed, 06 Feb 2019 14:31:05 GMT  
		Size: 410.3 KB (410323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:532b3ba7430c305b332c4beb288b906b6ab44eabbad08ec949a906248cb15bdf`  
		Last Modified: Wed, 06 Feb 2019 14:31:09 GMT  
		Size: 15.4 MB (15399656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:255abeb131a5a1901cc5bda852358ee7bb91a54177469d6e6aa2de0c44117a97`  
		Last Modified: Wed, 06 Feb 2019 14:31:04 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d58a4dfb4949de81c39a4c06cdf49dc55704f1bd518599c25e8337a1b77b0b0`  
		Last Modified: Wed, 06 Feb 2019 14:31:04 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-alpine` - linux; s390x

```console
$ docker pull redis@sha256:87269f077c094415c1734693d39421c25af6a7648a3044cfe858cec34cb9fa72
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17815155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01dbed52b1fe89a4f506f5dc344c396298ad1795f126677db04bac43b78f8a5b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 31 Jan 2019 12:41:43 GMT
ADD file:fdc9dcc7d932bb46a3992371288a0f80814bfb29ae8c8f1d860b6aabf0e9f893 in / 
# Thu, 31 Jan 2019 12:41:44 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 12:41:44 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 14:47:30 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 06 Feb 2019 14:47:32 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 06 Feb 2019 14:47:32 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 14:47:32 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 14:47:32 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 14:48:05 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 06 Feb 2019 14:48:05 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 14:48:06 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 14:48:06 GMT
WORKDIR /data
# Wed, 06 Feb 2019 14:48:06 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 06 Feb 2019 14:48:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 14:48:06 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 14:48:06 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:11396e2e564eba3ffa05ba6ea52a711025650a7cfe1387d6a59fdd9a90f2e024`  
		Last Modified: Thu, 31 Jan 2019 12:42:01 GMT  
		Size: 2.5 MB (2541348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e33c309129e1ab066f8f8e65929ab8246c5ae9ec293c9522c706fa70dfa0a4c6`  
		Last Modified: Thu, 31 Jan 2019 12:42:01 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c035dc3a25ffacd002e6a9e9f5599a475e589432aa2380567d2fc6d0a8eb7be5`  
		Last Modified: Wed, 06 Feb 2019 14:49:34 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:432cab9de09143d51b3e4494c80bc9d4f25df2a6cac8bdd71f821ba40630dedf`  
		Last Modified: Wed, 06 Feb 2019 14:49:34 GMT  
		Size: 407.8 KB (407822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffd6c926611b41ffb7f13e05ea818d9a88034f80e8953f3fab26622e7c471639`  
		Last Modified: Wed, 06 Feb 2019 14:49:37 GMT  
		Size: 14.9 MB (14864051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8324d4829065d40fd5cca78a8bdcb0150584d066e67c93219a63288b31f8a263`  
		Last Modified: Wed, 06 Feb 2019 14:49:34 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:546bd4d8cb455d013e9b7082c064074acda38e28440df02d448d44a0ae29e902`  
		Last Modified: Wed, 06 Feb 2019 14:49:34 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
