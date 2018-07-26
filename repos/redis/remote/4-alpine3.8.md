## `redis:4-alpine3.8`

```console
$ docker pull redis@sha256:e57274dac037e5b0c7680717fcaaa0efeffb23430e54e839c50819c9d842a38c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redis:4-alpine3.8` - linux; amd64

```console
$ docker pull redis@sha256:d5f25b8d0f6125579cd3ac00a5a6e017ed55721d1b0850a3915da501fe7fd571
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.6 MB (11624926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80581db8c700155a91bec6fd6398dad9733135e7c58a19472aa679e8367692ab`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 00:55:42 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 11 Jul 2018 00:55:43 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 11 Jul 2018 00:56:55 GMT
ENV REDIS_VERSION=4.0.10
# Wed, 11 Jul 2018 00:56:55 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Wed, 11 Jul 2018 00:56:55 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Wed, 11 Jul 2018 00:57:19 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 11 Jul 2018 00:57:20 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 11 Jul 2018 00:57:21 GMT
VOLUME [/data]
# Wed, 11 Jul 2018 00:57:21 GMT
WORKDIR /data
# Wed, 11 Jul 2018 00:57:21 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 11 Jul 2018 00:57:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jul 2018 00:57:22 GMT
EXPOSE 6379/tcp
# Wed, 11 Jul 2018 00:57:22 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f20bd2a5c234ffab42de6cbf83522946614b21b642a8208dca6b0fd614c31db`  
		Last Modified: Wed, 11 Jul 2018 00:58:27 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:782ff7702b5cd0a7c0109740838c74945fc27e4ce34e1028c24bf73f8249a63a`  
		Last Modified: Wed, 11 Jul 2018 00:58:27 GMT  
		Size: 9.1 KB (9071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd719ead7ee305492514a8dfa2afcd0979a16e8192836b4aaed98d8d932973c0`  
		Last Modified: Wed, 11 Jul 2018 00:59:08 GMT  
		Size: 9.4 MB (9407568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01018940af9a67873ad6737c275cb134372cdf1cda565af58dd14a1e3b85ab2a`  
		Last Modified: Wed, 11 Jul 2018 00:59:05 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f1bfdda9588f5c0643b485580060b460b21b5331f4760778ef3279680e20966`  
		Last Modified: Wed, 11 Jul 2018 00:59:05 GMT  
		Size: 398.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine3.8` - linux; arm variant v6

```console
$ docker pull redis@sha256:b3e481a692c4fce21591fbaa4d7588bc6de5ae65161b3d7417e255dd22cabb71
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7968247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c779a2af88b86fffc4ad32a4de83d10f1530ee8cd143552f6bde13f4c009f674`
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
# Sat, 14 Jul 2018 11:45:27 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 14 Jul 2018 11:50:01 GMT
ENV REDIS_VERSION=4.0.10
# Sat, 14 Jul 2018 11:50:01 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Sat, 14 Jul 2018 11:50:03 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Sat, 14 Jul 2018 11:53:32 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 14 Jul 2018 11:53:36 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 14 Jul 2018 11:53:37 GMT
VOLUME [/data]
# Sat, 14 Jul 2018 11:53:38 GMT
WORKDIR /data
# Sat, 14 Jul 2018 11:53:39 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 14 Jul 2018 11:53:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 14 Jul 2018 11:53:41 GMT
EXPOSE 6379/tcp
# Sat, 14 Jul 2018 11:53:41 GMT
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
	-	`sha256:407d2c8c18404f038c5326de3eadc14240dea0b342a6237b037d457e4d381d2b`  
		Last Modified: Sat, 14 Jul 2018 11:59:20 GMT  
		Size: 9.0 KB (8980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60992a6a1b91924e91cf90c9671fe2d99c46702895d6ad933bf051e9d3466f3a`  
		Last Modified: Sat, 14 Jul 2018 11:59:55 GMT  
		Size: 5.8 MB (5811279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7136ff1ceed2688f09cfd6d7e0169b4de7b1d36af4744df8120f1caa2caa9ded`  
		Last Modified: Sat, 14 Jul 2018 11:59:48 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c38fded17786397ed4d8613b02b7d3d7d1b87f40912be5677388f909d074fc51`  
		Last Modified: Sat, 14 Jul 2018 11:59:49 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine3.8` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:8f9dc588a0f8e521923fc61b36b9f54c6c19e8d195e8bbc987515388f4b80e8e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.3 MB (11274306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71e4a3388a3fc0459a7009d80bdea4509d59e607be5768f977712648a39a762a`
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
# Wed, 11 Jul 2018 09:39:48 GMT
ENV REDIS_VERSION=4.0.10
# Wed, 11 Jul 2018 09:39:49 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Wed, 11 Jul 2018 09:39:49 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Wed, 11 Jul 2018 09:40:34 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 11 Jul 2018 09:40:36 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 11 Jul 2018 09:40:37 GMT
VOLUME [/data]
# Wed, 11 Jul 2018 09:40:37 GMT
WORKDIR /data
# Wed, 11 Jul 2018 09:40:38 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 11 Jul 2018 09:40:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jul 2018 09:40:40 GMT
EXPOSE 6379/tcp
# Wed, 11 Jul 2018 09:40:41 GMT
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
	-	`sha256:8205b31384995cfe4381d5bc6d4c777589c84b661e6406888c6e68bb215a9ce3`  
		Last Modified: Wed, 11 Jul 2018 09:43:09 GMT  
		Size: 9.2 MB (9163938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccc6caaf591076f59f89644d505bf149dfa92f82e93369e61a76695c6763d7b8`  
		Last Modified: Wed, 11 Jul 2018 09:43:05 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a647132a51ce7a5b39ee00a9d9d84db17c6c740e79e7fadbf1bca04ccfe8e64`  
		Last Modified: Wed, 11 Jul 2018 09:43:06 GMT  
		Size: 398.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine3.8` - linux; 386

```console
$ docker pull redis@sha256:ae54cb5b30f30284eed9796e56ad07e02eb5429a424b3163ed7a3116acf66a33
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11228539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f01a1397dd15a40bbfd83d4c3a8f4b50011e83c258dc02aeb37d8f9f71da0872`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 06 Jul 2018 15:02:06 GMT
ADD file:ebd40cda2f6087daf4d14e6dc1ee0b4a0fb5dc96c70129be8e07de0e5c628312 in / 
# Fri, 06 Jul 2018 15:02:07 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 15:02:07 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 10:59:08 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 11 Jul 2018 10:59:09 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 11 Jul 2018 11:00:24 GMT
ENV REDIS_VERSION=4.0.10
# Wed, 11 Jul 2018 11:00:24 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Wed, 11 Jul 2018 11:00:25 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Wed, 11 Jul 2018 11:00:54 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 11 Jul 2018 11:00:55 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 11 Jul 2018 11:00:55 GMT
VOLUME [/data]
# Wed, 11 Jul 2018 11:00:55 GMT
WORKDIR /data
# Wed, 11 Jul 2018 11:00:55 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 11 Jul 2018 11:00:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jul 2018 11:00:56 GMT
EXPOSE 6379/tcp
# Wed, 11 Jul 2018 11:00:56 GMT
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
	-	`sha256:92b65fcd46a9888f65f4ba2dd7149e5d5433d9f8ee6d831c0178337fafcd6174`  
		Last Modified: Wed, 11 Jul 2018 11:01:57 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7c395347e9dff1709fe37c615afc2c9a112317d08e5af3e244a49c6d041528a`  
		Last Modified: Wed, 11 Jul 2018 11:01:57 GMT  
		Size: 9.1 KB (9124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e5cf6056442300c04421065df305e1c5b9554cfdf7e752b38827f9f8de69949`  
		Last Modified: Wed, 11 Jul 2018 11:02:29 GMT  
		Size: 8.9 MB (8946573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85c6d4f5941facb2f46bd67dc2b8cfe59cce833bd66a099504bbb6392f88ae9d`  
		Last Modified: Wed, 11 Jul 2018 11:02:25 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2d698f3b19cb2135cdea72c94836d6d344e96cdf01d26d98155c7452f59f10f`  
		Last Modified: Wed, 11 Jul 2018 11:02:25 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine3.8` - linux; ppc64le

```console
$ docker pull redis@sha256:7e3d726348b3c671c82849b930466a2c5d9a653bf8cee20b05d22d30c68a0e75
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.7 MB (11707798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ca883f49c08aa897718adcb8bad9087d8d904aa45b1ac2368db1399aae58752`
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
# Wed, 11 Jul 2018 10:30:59 GMT
ENV REDIS_VERSION=4.0.10
# Wed, 11 Jul 2018 10:31:00 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Wed, 11 Jul 2018 10:31:01 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Wed, 11 Jul 2018 10:31:28 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 11 Jul 2018 10:31:32 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 11 Jul 2018 10:31:39 GMT
VOLUME [/data]
# Wed, 11 Jul 2018 10:31:40 GMT
WORKDIR /data
# Wed, 11 Jul 2018 10:31:51 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 11 Jul 2018 10:31:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jul 2018 10:31:54 GMT
EXPOSE 6379/tcp
# Wed, 11 Jul 2018 10:31:56 GMT
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
	-	`sha256:c2c40a6326b6b59378539f2f86b3bd45afe2cb905363d05507a01427721910b6`  
		Last Modified: Wed, 11 Jul 2018 10:34:31 GMT  
		Size: 9.5 MB (9501435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89c6732ff87de8255dbe95b85e1c26c26faff46a566a1bbc683dcfac53960e9f`  
		Last Modified: Wed, 11 Jul 2018 10:34:28 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78475b3cdab4838abeae013961bca2fcf0c67e6d3d331b7025db0d9b8543c65e`  
		Last Modified: Wed, 11 Jul 2018 10:34:28 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine3.8` - linux; s390x

```console
$ docker pull redis@sha256:2398b7389b9ab8710e118aa8fdfc57d63077b8f153add86aaff67eacf825c597
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.9 MB (11862170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a842416668dd999e8ef3d05706b8591abd15b303812ddb9d8abcfd629fc50fd`
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
# Wed, 11 Jul 2018 11:56:04 GMT
ENV REDIS_VERSION=4.0.10
# Wed, 11 Jul 2018 11:56:04 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Wed, 11 Jul 2018 11:56:04 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Wed, 11 Jul 2018 11:56:36 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 11 Jul 2018 11:56:36 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 11 Jul 2018 11:56:37 GMT
VOLUME [/data]
# Wed, 11 Jul 2018 11:56:37 GMT
WORKDIR /data
# Wed, 11 Jul 2018 11:56:37 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 11 Jul 2018 11:56:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jul 2018 11:56:38 GMT
EXPOSE 6379/tcp
# Wed, 11 Jul 2018 11:56:38 GMT
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
	-	`sha256:8693b132ba2e231672869727c3f27015cb59a8e8dcd4a98844ec0564d0d66ff4`  
		Last Modified: Wed, 11 Jul 2018 11:57:46 GMT  
		Size: 9.5 MB (9543539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b8818d1b01d04aa02a7ca7d2e5fb7abddec7d4532092d593c67928b17283ff1`  
		Last Modified: Wed, 11 Jul 2018 11:57:43 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c9abd12ff68d5af386798f6fd5ebbabeecfcba06ce72c6dfc676c4e736d99db`  
		Last Modified: Wed, 11 Jul 2018 11:57:43 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
