## `redis:3-alpine3.8`

```console
$ docker pull redis@sha256:d947663c979eac4e531ed075eb897e6edc169b8d548900a94369890e65ad13a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redis:3-alpine3.8` - linux; amd64

```console
$ docker pull redis@sha256:f942e926cf4ef23eb6b68f16fff2e7b0cded8fd7cd459db036ce4d273d3e5e12
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 MB (9417423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a82855b3751c8c6d04264061fe89344c98f2d7e7f7160a6e81bd164277857127`
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
# Fri, 07 Sep 2018 19:46:18 GMT
ENV REDIS_VERSION=3.2.12
# Fri, 07 Sep 2018 19:46:18 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Fri, 07 Sep 2018 19:46:18 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Fri, 07 Sep 2018 19:46:48 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 07 Sep 2018 19:46:48 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 07 Sep 2018 19:46:48 GMT
VOLUME [/data]
# Fri, 07 Sep 2018 19:46:49 GMT
WORKDIR /data
# Fri, 07 Sep 2018 19:46:49 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Fri, 07 Sep 2018 19:46:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 07 Sep 2018 19:46:49 GMT
EXPOSE 6379/tcp
# Fri, 07 Sep 2018 19:46:49 GMT
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
	-	`sha256:b79471a5e5a1b16d169ea6eaa8e2314c9147d248b34599ac95a0d4d42767bc48`  
		Last Modified: Fri, 07 Sep 2018 19:48:54 GMT  
		Size: 6.8 MB (6807003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a952de6055c577120bbd3b15a67b7938b67b69b036ba7bf7657f3c8974fb8fe5`  
		Last Modified: Fri, 07 Sep 2018 19:48:52 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba86bd995f6ff4c61cb684be78fd506d08369060a16faf45165acc06929b1f7d`  
		Last Modified: Fri, 07 Sep 2018 19:48:52 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3-alpine3.8` - linux; arm variant v6

```console
$ docker pull redis@sha256:552167ca3e875f2262b0f2306c9279b4c27dbc01e5777dc643ad8a000ac05801
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 MB (9086201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:913fbfde4d5a15fb709c9f9dd7863628227f6930f7d9020d50c0a7f8b93af32b`
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
# Sat, 08 Sep 2018 07:58:24 GMT
ENV REDIS_VERSION=3.2.12
# Sat, 08 Sep 2018 07:58:25 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Sat, 08 Sep 2018 07:58:25 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Sat, 08 Sep 2018 08:03:16 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 08 Sep 2018 08:03:19 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 08 Sep 2018 08:03:20 GMT
VOLUME [/data]
# Sat, 08 Sep 2018 08:03:21 GMT
WORKDIR /data
# Sat, 08 Sep 2018 08:03:22 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 08 Sep 2018 08:03:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 08 Sep 2018 08:03:24 GMT
EXPOSE 6379/tcp
# Sat, 08 Sep 2018 08:03:24 GMT
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
	-	`sha256:dc6822600b743c186b44a9b85e14d5de6f1f540e44b2450b867419b2024ad15b`  
		Last Modified: Sat, 08 Sep 2018 08:06:25 GMT  
		Size: 6.5 MB (6533566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:206a7aec8e0f56be22cb21869e788fe8e792b01ee8928c93a5f7f03a4ddc7326`  
		Last Modified: Sat, 08 Sep 2018 08:06:18 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c01674c2453c58eeede935de720ae1b1e82c736ddc7a14982e14ea2ea58a7f2e`  
		Last Modified: Sat, 08 Sep 2018 08:06:17 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3-alpine3.8` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:ed3cfd1157491e36c590471644a40250ecb18fea3d3fe20b7dd3767734a3851c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 MB (9131124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cc29a649a975016a8b719edcd251a324d0d339ce9b3298303a0ffcfee086374`
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
# Sat, 08 Sep 2018 10:31:34 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Sat, 08 Sep 2018 10:37:16 GMT
ENV REDIS_VERSION=3.2.12
# Sat, 08 Sep 2018 10:37:16 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Sat, 08 Sep 2018 10:37:17 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Sat, 08 Sep 2018 10:37:55 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 08 Sep 2018 10:37:57 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 08 Sep 2018 10:37:58 GMT
VOLUME [/data]
# Sat, 08 Sep 2018 10:37:59 GMT
WORKDIR /data
# Sat, 08 Sep 2018 10:37:59 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 08 Sep 2018 10:38:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 08 Sep 2018 10:38:01 GMT
EXPOSE 6379/tcp
# Sat, 08 Sep 2018 10:38:01 GMT
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
	-	`sha256:ee0dc7f1988976738715e3c90fe99bbef05c6248b7480acea939f644e2bf89ee`  
		Last Modified: Sat, 08 Sep 2018 10:38:52 GMT  
		Size: 400.5 KB (400510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2f1f258c585e086ecfa3fd3fc9528e8d476bbd6b2a1b634ae3d3bdbc8cd89fa`  
		Last Modified: Sat, 08 Sep 2018 10:46:13 GMT  
		Size: 6.6 MB (6629177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20888efe99a98089b64beb986dd699c82d59b538132cf918d432e1a26c566b63`  
		Last Modified: Sat, 08 Sep 2018 10:46:11 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90ceffd4351f3dcbdb60f2de4646b8187ad5ec57379a77ea12fb1631c3382e46`  
		Last Modified: Sat, 08 Sep 2018 10:46:11 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3-alpine3.8` - linux; 386

```console
$ docker pull redis@sha256:899608561879f63f9312faaab502d303732c9535f65e23dbb5a9a3d3860cff90
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8730914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bdb2cecc0a3415f2f3a7673ca53b96fbf6104c0e1e2c5b4092f7945abecf259`
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
# Fri, 07 Sep 2018 00:34:03 GMT
ENV REDIS_VERSION=3.2.12
# Fri, 07 Sep 2018 00:34:03 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Fri, 07 Sep 2018 00:34:03 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Fri, 07 Sep 2018 00:34:31 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 07 Sep 2018 00:34:32 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 07 Sep 2018 00:34:32 GMT
VOLUME [/data]
# Fri, 07 Sep 2018 00:34:32 GMT
WORKDIR /data
# Fri, 07 Sep 2018 00:34:33 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Fri, 07 Sep 2018 00:34:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 07 Sep 2018 00:34:33 GMT
EXPOSE 6379/tcp
# Fri, 07 Sep 2018 00:34:33 GMT
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
	-	`sha256:b565c9314d4095a23a472322d18fd391409530b1a2f6a6c0f1182df16f11752c`  
		Last Modified: Fri, 07 Sep 2018 00:36:09 GMT  
		Size: 6.4 MB (6448943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d6617f008434fc19c6b8c85e4db85d4e82a1cdf43da0111c46918c9b6c5c478`  
		Last Modified: Fri, 07 Sep 2018 00:36:08 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e130141483aa1eb68c423604f19bd70ef783d61564370416e94cbe75afd086f`  
		Last Modified: Fri, 07 Sep 2018 00:36:08 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3-alpine3.8` - linux; ppc64le

```console
$ docker pull redis@sha256:bfe869f9d6effa91a919305c2cf5e184fb0fab77214dc2f1f9ec7390eccd0418
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 MB (9477354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e29fba6a3b01470d8e58fa41e3384996dc88981f5314922650683a3212697ecc`
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
# Sat, 08 Sep 2018 09:50:36 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Sat, 08 Sep 2018 09:54:13 GMT
ENV REDIS_VERSION=3.2.12
# Sat, 08 Sep 2018 09:54:15 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Sat, 08 Sep 2018 09:54:16 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Sat, 08 Sep 2018 09:55:28 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 08 Sep 2018 09:55:40 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 08 Sep 2018 09:55:44 GMT
VOLUME [/data]
# Sat, 08 Sep 2018 09:55:51 GMT
WORKDIR /data
# Sat, 08 Sep 2018 09:55:56 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 08 Sep 2018 09:56:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 08 Sep 2018 09:56:06 GMT
EXPOSE 6379/tcp
# Sat, 08 Sep 2018 09:56:12 GMT
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
	-	`sha256:7b462379633dcb69551ad3e11c327dd4311e2a43731977a42c708c42e7e24b0c`  
		Last Modified: Sat, 08 Sep 2018 09:57:12 GMT  
		Size: 406.8 KB (406847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffcdda41fa505487de3c7466cd02f89c9831e1968d01e0a582a1d06b8e507058`  
		Last Modified: Sat, 08 Sep 2018 10:00:03 GMT  
		Size: 6.9 MB (6873653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c737d417544d0854ade6c71ca8dca7b1d960c7816489db500e7f163ed828be37`  
		Last Modified: Sat, 08 Sep 2018 10:00:01 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:512aa4fd9e28455dc4b798d03655ce9ada64f05d6513298e4abb04e3faf1e53f`  
		Last Modified: Sat, 08 Sep 2018 10:00:00 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3-alpine3.8` - linux; s390x

```console
$ docker pull redis@sha256:100b24497e2904d2994721e6a511c7f51980d95fcbbab47ffb6559b8cb225646
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 MB (9592496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9f28b4657e4145519bf7f6e93d277c297166297aa7b01cf4a61cc86d4711476`
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
# Sat, 08 Sep 2018 12:19:14 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Sat, 08 Sep 2018 12:21:34 GMT
ENV REDIS_VERSION=3.2.12
# Sat, 08 Sep 2018 12:21:34 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Sat, 08 Sep 2018 12:21:34 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Sat, 08 Sep 2018 12:22:08 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 08 Sep 2018 12:22:09 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 08 Sep 2018 12:22:09 GMT
VOLUME [/data]
# Sat, 08 Sep 2018 12:22:09 GMT
WORKDIR /data
# Sat, 08 Sep 2018 12:22:10 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 08 Sep 2018 12:22:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 08 Sep 2018 12:22:10 GMT
EXPOSE 6379/tcp
# Sat, 08 Sep 2018 12:22:10 GMT
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
	-	`sha256:a3be4940b85b0b8aaa1e007b6f4cb5d70d8bff762cc06c980929cb3d859e2edd`  
		Last Modified: Sat, 08 Sep 2018 12:22:38 GMT  
		Size: 407.8 KB (407822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8519fb6039c99cd5d6ca533fd72db65b469a77e410db5bb16832c16468f62e5d`  
		Last Modified: Sat, 08 Sep 2018 12:24:16 GMT  
		Size: 6.9 MB (6875280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b62a1bd1ae7a11bc0474d43b13fdd3ce0d30c9e8625398d8d5c5b182072af72e`  
		Last Modified: Sat, 08 Sep 2018 12:24:14 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9eed23d6841c60bcf46c4f0eca53abd7002578da0536a4161b0a8ce9cb29ccb`  
		Last Modified: Sat, 08 Sep 2018 12:24:14 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
