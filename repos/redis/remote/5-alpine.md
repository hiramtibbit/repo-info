## `redis:5-alpine`

```console
$ docker pull redis@sha256:8fd83c5986f444f1a5521e3eda7395f0f21ff16d33cc3b89d19ca7c58293c5dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

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
