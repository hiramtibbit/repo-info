## `redis:alpine3.8`

```console
$ docker pull redis@sha256:a2b26190f2462cbb26ba58d6bf313f3ff3a6aada463c0a1e757e54f81a86f5a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redis:alpine3.8` - linux; amd64

```console
$ docker pull redis@sha256:cf1025beee35c0518613497e4c818a0bdf084c635fe3855fd9deceeaa65f372e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.0 MB (12047280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:162794862d372445a79fec5bd748fa8de0aedd66e480169279bdcd906777148c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Wed, 05 Sep 2018 08:26:34 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 07 Sep 2018 19:44:29 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 07 Sep 2018 19:45:30 GMT
ENV REDIS_VERSION=4.0.11
# Fri, 07 Sep 2018 19:45:30 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Fri, 07 Sep 2018 19:45:30 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Fri, 07 Sep 2018 19:46:01 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 07 Sep 2018 19:46:02 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 07 Sep 2018 19:46:02 GMT
VOLUME [/data]
# Fri, 07 Sep 2018 19:46:02 GMT
WORKDIR /data
# Fri, 07 Sep 2018 19:46:02 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Fri, 07 Sep 2018 19:46:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 07 Sep 2018 19:46:03 GMT
EXPOSE 6379/tcp
# Fri, 07 Sep 2018 19:46:03 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baf0a0bb402fd29da7da78b24bc105730a3ed354c0b47ff4f12eabfdd2ebfc9a`  
		Last Modified: Wed, 05 Sep 2018 08:34:50 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b0b05ea68b5b3df085cc64ee3bc884c79a99b2ae91f344392d6b1d7ac0878f6`  
		Last Modified: Fri, 07 Sep 2018 19:47:14 GMT  
		Size: 402.1 KB (402131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba5ab541f6bf8eb7959e371dbbad4165d62f12f6fbaca1e2d14687b68a0c83fe`  
		Last Modified: Fri, 07 Sep 2018 19:47:55 GMT  
		Size: 9.4 MB (9436862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cddd527d7b955f997cec2393a7a23454553f453835cda9c03121d3fc18f4547e`  
		Last Modified: Fri, 07 Sep 2018 19:47:52 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ee1c014ab3307dc69d331a3e91a338d92a002ec86e671c57a70220b62423bc2`  
		Last Modified: Fri, 07 Sep 2018 19:47:52 GMT  
		Size: 397.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine3.8` - linux; arm variant v6

```console
$ docker pull redis@sha256:2b71978ec751c025f0fd7e9c8020039277b2a44ed7c692a8ee8ad58d1754644c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.4 MB (8394313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bedac90c10c05401837ae150e9f19a2ac0d802e27e2bf82bddf1ce94ced6627`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 06 Jul 2018 07:53:29 GMT
ADD file:122e3422d9afa971806601812374fdd9d00c8edc8e9a6df7256e2caa85fab6d1 in / 
# Fri, 06 Jul 2018 07:53:30 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 07:53:30 GMT
CMD ["/bin/sh"]
# Sat, 14 Jul 2018 11:45:22 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 08 Sep 2018 07:49:48 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Sat, 08 Sep 2018 07:54:24 GMT
ENV REDIS_VERSION=4.0.11
# Sat, 08 Sep 2018 07:54:24 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Sat, 08 Sep 2018 07:54:25 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Sat, 08 Sep 2018 07:57:54 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 08 Sep 2018 07:57:58 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 08 Sep 2018 07:57:58 GMT
VOLUME [/data]
# Sat, 08 Sep 2018 07:57:59 GMT
WORKDIR /data
# Sat, 08 Sep 2018 07:58:00 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 08 Sep 2018 07:58:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 08 Sep 2018 07:58:02 GMT
EXPOSE 6379/tcp
# Sat, 08 Sep 2018 07:58:03 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:ee7d700abbf209aa401ef5d53f86af298a25e8154b3259036e9307d08f255c5d`  
		Last Modified: Fri, 06 Jul 2018 07:53:45 GMT  
		Size: 2.1 MB (2145998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1653f4692c1ccea69cd46121d4f1371957f66e97a20141371dd4da10ebaec19`  
		Last Modified: Fri, 06 Jul 2018 07:53:45 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:227a96f1d31d3ceb90336a4a116e3e60b3a1fea72ae1f065e88a6d43417674ff`  
		Last Modified: Sat, 14 Jul 2018 11:59:20 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7413e035c266481459891d8f373731d4f4f047a6ddcd95dd22561a7c430e7e9`  
		Last Modified: Sat, 08 Sep 2018 08:03:53 GMT  
		Size: 404.6 KB (404650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f677cffe48ba83ff473f0dda39fed560711cdbfc854737b308420eb39af7e2dc`  
		Last Modified: Sat, 08 Sep 2018 08:04:51 GMT  
		Size: 5.8 MB (5841680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0e9f37665bc2c54ad97b2fc1b911671d52aa3de4fd1630b38455c9de7953cf2`  
		Last Modified: Sat, 08 Sep 2018 08:04:43 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0249d4a34ce8e760cae8ce5b792ba7b70cfc49d33cdb8b765a68fbc0d0bec93f`  
		Last Modified: Sat, 08 Sep 2018 08:04:43 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine3.8` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:d27aeefe87dadfbd147e20dfa3d7ea680e7871f2dca7f8feea24d943b94878a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.3 MB (11277180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:004ef068b0926dfcb86804ccab767ea542be9d8138fb65bc825ce20c8d48c5fa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 06 Jul 2018 08:41:03 GMT
ADD file:199a5a48bddabaf1f649f58f3b17c323a1aa1a50e939dfdea3542e4041e91b7b in / 
# Fri, 06 Jul 2018 08:41:03 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:41:04 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 09:37:50 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 11 Jul 2018 09:37:52 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 04 Aug 2018 09:41:20 GMT
ENV REDIS_VERSION=4.0.11
# Sat, 04 Aug 2018 09:41:21 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Sat, 04 Aug 2018 09:41:22 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Sat, 04 Aug 2018 09:42:13 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 04 Aug 2018 09:42:15 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Aug 2018 09:42:15 GMT
VOLUME [/data]
# Sat, 04 Aug 2018 09:42:16 GMT
WORKDIR /data
# Sat, 04 Aug 2018 09:42:17 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 04 Aug 2018 09:42:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Aug 2018 09:42:18 GMT
EXPOSE 6379/tcp
# Sat, 04 Aug 2018 09:42:19 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:47e04371c99027fae42871b720fdc6cdddcb65062bfa05f0c3bb0a594cb5bbbd`  
		Last Modified: Wed, 27 Jun 2018 19:15:35 GMT  
		Size: 2.1 MB (2099514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4103359e1ecd9a7253d8b8a041d4e81db1ff4a5e1950bc0e02305d221c9e6c2`  
		Last Modified: Fri, 06 Jul 2018 08:42:09 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9721f4fc0d2aca17304d7c1cbef676a8fa7d41c3f0c7201b22d695ff41dfc625`  
		Last Modified: Wed, 11 Jul 2018 09:42:31 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43bc6ac33e9f951cbb1f9ca722ba63c430fa5b2a12e0a46efe7f1e5e15920b16`  
		Last Modified: Wed, 11 Jul 2018 09:42:31 GMT  
		Size: 8.9 KB (8932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61a9a72010399fae677f01696224a8fd4ac31c9f6b4fad188937398a52bb9ea6`  
		Last Modified: Sat, 04 Aug 2018 09:48:32 GMT  
		Size: 9.2 MB (9166807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5755e826592c4aa946bbe4045dfc9f6c448a41ad0db8d56880bb5e648b3ecc1`  
		Last Modified: Sat, 04 Aug 2018 09:48:28 GMT  
		Size: 101.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67dca8f49af17fc3ae9957a843ebba37d7bacd1ce9cd37443671ddada05eac7a`  
		Last Modified: Sat, 04 Aug 2018 09:48:28 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine3.8` - linux; 386

```console
$ docker pull redis@sha256:8d985c92074a40f8aa7f44f17cf1b03d115d5eadb941b0feda18c2e331dc9e3f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11237555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:777297beb34986e05ecd2e0cbdfbeb0c0a2f9607769bf1d364a2fa0686cfbbcd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 06 Jul 2018 15:02:06 GMT
ADD file:ebd40cda2f6087daf4d14e6dc1ee0b4a0fb5dc96c70129be8e07de0e5c628312 in / 
# Fri, 06 Jul 2018 15:02:07 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 15:02:07 GMT
CMD ["/bin/sh"]
# Fri, 07 Sep 2018 00:30:49 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 07 Sep 2018 00:30:50 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 07 Sep 2018 00:32:39 GMT
ENV REDIS_VERSION=4.0.11
# Fri, 07 Sep 2018 00:32:39 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Fri, 07 Sep 2018 00:32:39 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Fri, 07 Sep 2018 00:33:11 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 07 Sep 2018 00:33:12 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 07 Sep 2018 00:33:12 GMT
VOLUME [/data]
# Fri, 07 Sep 2018 00:33:13 GMT
WORKDIR /data
# Fri, 07 Sep 2018 00:33:13 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Fri, 07 Sep 2018 00:33:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 07 Sep 2018 00:33:13 GMT
EXPOSE 6379/tcp
# Fri, 07 Sep 2018 00:33:13 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:ef15772113129a5330876ce10683bbf6509a4c4c99b3a99894dcbc7560975052`  
		Last Modified: Fri, 06 Jul 2018 15:02:46 GMT  
		Size: 2.3 MB (2270920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6df692b84cf35e6038d677f9ab7de2a3c671c57671043da1d20d99252e0d9c42`  
		Last Modified: Fri, 06 Jul 2018 15:02:43 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:205fb77c3c7231faff70b59770f1c878a88bdfaad02839fb26af2ffdc229ebe0`  
		Last Modified: Fri, 07 Sep 2018 00:35:02 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3153a8e3f32bd2875cf0446b4025f7155ff571c8a3d31aa55c5b70ef5cf6435`  
		Last Modified: Fri, 07 Sep 2018 00:35:02 GMT  
		Size: 9.1 KB (9127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1f7a4fa48bfd234bcf4b0362d8bf1956a764548ef73236b024ccf1416881c04`  
		Last Modified: Fri, 07 Sep 2018 00:35:35 GMT  
		Size: 9.0 MB (8955583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:923924f2bc7515b8828d6813a5a5df863e6f5c90d4ff397b463ad6046568be60`  
		Last Modified: Fri, 07 Sep 2018 00:35:34 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44f5be3688dc00dfaafa9eca0d120dd8190c4e8c604f02d2b36998888c4d110b`  
		Last Modified: Fri, 07 Sep 2018 00:35:34 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine3.8` - linux; ppc64le

```console
$ docker pull redis@sha256:5d2e898d0710a6898d5875c3182cbe7b647d56a72d1d160830c7b12e245eb6e3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.7 MB (11712915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3dd98787bbc5e424a6def227a26d68fcfdeac188bcea614dc4c76bd6712aada`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 06 Jul 2018 08:18:09 GMT
ADD file:4ff20d593b16518d45b1b1d6efdab141199316dba7a53ce7459249f5de690dfd in / 
# Fri, 06 Jul 2018 08:18:10 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:18:11 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 10:29:07 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 11 Jul 2018 10:29:10 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 04 Aug 2018 10:05:12 GMT
ENV REDIS_VERSION=4.0.11
# Sat, 04 Aug 2018 10:05:16 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Sat, 04 Aug 2018 10:05:21 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Sat, 04 Aug 2018 10:07:27 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 04 Aug 2018 10:07:46 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Aug 2018 10:07:50 GMT
VOLUME [/data]
# Sat, 04 Aug 2018 10:07:56 GMT
WORKDIR /data
# Sat, 04 Aug 2018 10:08:09 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 04 Aug 2018 10:08:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Aug 2018 10:08:17 GMT
EXPOSE 6379/tcp
# Sat, 04 Aug 2018 10:08:20 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e642bcb5b1890a07dd2fc8be2bc35edf5e2b651d4993e71caef03b4b43ace970`  
		Last Modified: Fri, 06 Jul 2018 08:18:44 GMT  
		Size: 2.2 MB (2194861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e09410b1fce4c4630b3bc57c6ee158ee9821ec415d0acaa1607b9e0bcf76d91`  
		Last Modified: Fri, 06 Jul 2018 08:18:43 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0ff6034eb412b571271c235e27e06653a8c858164a627463f13b8ab52c74843`  
		Last Modified: Wed, 11 Jul 2018 10:34:00 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb36900be1e1e93c13e63a61812c55e9d7ac5ecdb09877b280822361acc94394`  
		Last Modified: Wed, 11 Jul 2018 10:33:59 GMT  
		Size: 9.5 KB (9509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e889eda23cca0db1f644eedd71a2a76059fc40f2a4710052514c5da4bf744e5`  
		Last Modified: Sat, 04 Aug 2018 10:12:38 GMT  
		Size: 9.5 MB (9506552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f9c67d1962fb265d02880f3da50dab1918b2ef4219f2dc7d6bb99c6323994c5`  
		Last Modified: Sat, 04 Aug 2018 10:12:31 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99523df5b1e4729edb21c35de387a4c3040f541e7c24dfcbef0de62f6a8f7c7e`  
		Last Modified: Sat, 04 Aug 2018 10:12:32 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine3.8` - linux; s390x

```console
$ docker pull redis@sha256:3a783376afd8f9e6f12175780029d8385c4f1d303923ed8c8f6cf1dbc4521dbf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.9 MB (11865156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53ae90e4755b9b037cbb08afd6d1953520e547d5671ae13c98b1565afa084add`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 06 Jul 2018 11:41:42 GMT
ADD file:376dd7fc34ad39570d2e20f3704305e788ae613c589445b3e8fb880147c3eb59 in / 
# Fri, 06 Jul 2018 11:41:43 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 11:41:43 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 11:55:18 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 11 Jul 2018 11:55:19 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 04 Aug 2018 12:12:53 GMT
ENV REDIS_VERSION=4.0.11
# Sat, 04 Aug 2018 12:12:53 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Sat, 04 Aug 2018 12:12:53 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Sat, 04 Aug 2018 12:13:15 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 04 Aug 2018 12:13:16 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Aug 2018 12:13:16 GMT
VOLUME [/data]
# Sat, 04 Aug 2018 12:13:16 GMT
WORKDIR /data
# Sat, 04 Aug 2018 12:13:16 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 04 Aug 2018 12:13:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Aug 2018 12:13:17 GMT
EXPOSE 6379/tcp
# Sat, 04 Aug 2018 12:13:17 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:cdf21ace94188d512903eea53ea8559677e0e6ffd5d6a180a1d88c118abc96fc`  
		Last Modified: Fri, 06 Jul 2018 11:42:01 GMT  
		Size: 2.3 MB (2307471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea178433f2f09080fbbf77f09da1b16d588b7ced380d495a2f2ad00d28468338`  
		Last Modified: Fri, 06 Jul 2018 11:42:00 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2a9a36327b56f40ee16a7f6340b3f9e353f4d78c49c98c9b07dadba1340578a`  
		Last Modified: Wed, 11 Jul 2018 11:57:31 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ea5a4d7de8ea3dca3ad24e1379981de341f538e7f33e134951cce1e00c54030`  
		Last Modified: Wed, 11 Jul 2018 11:57:31 GMT  
		Size: 9.2 KB (9239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8abf89eb1a0f42a5520f8930335fd03350715e4c262a14fe2d075ae1b761c277`  
		Last Modified: Sat, 04 Aug 2018 12:15:41 GMT  
		Size: 9.5 MB (9546525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65d1ceb59bb7e8a72fdc2dd09e7864fb645d39405ccbe7d30c1159e486e04400`  
		Last Modified: Sat, 04 Aug 2018 12:15:39 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2587bb84fc2ed926d1639f5913cf72233c7339b820496dadfc5c374375a7492`  
		Last Modified: Sat, 04 Aug 2018 12:15:40 GMT  
		Size: 397.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
