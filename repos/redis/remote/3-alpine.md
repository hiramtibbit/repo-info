## `redis:3-alpine`

```console
$ docker pull redis@sha256:5a99403b6ee14f6dce858c7e7ccba42674cc055e6db165fc63c340a09de66d90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redis:3-alpine` - linux; amd64

```console
$ docker pull redis@sha256:bb842cf7ef67a256fe05c91a875cd905370a825fd5b2d940c96286f2a890e242
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.0 MB (8996066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e34cb61ff391a7bbab89c5c1c7f2d50eab3a8e994d608fb952743c359670ffb5`
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
# Wed, 11 Jul 2018 00:57:37 GMT
ENV REDIS_VERSION=3.2.12
# Wed, 11 Jul 2018 00:57:37 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Wed, 11 Jul 2018 00:57:37 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Wed, 11 Jul 2018 00:58:00 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 11 Jul 2018 00:58:01 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 11 Jul 2018 00:58:01 GMT
VOLUME [/data]
# Wed, 11 Jul 2018 00:58:01 GMT
WORKDIR /data
# Wed, 11 Jul 2018 00:58:02 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 11 Jul 2018 00:58:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jul 2018 00:58:02 GMT
EXPOSE 6379/tcp
# Wed, 11 Jul 2018 00:58:02 GMT
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
	-	`sha256:d03f752c1710ba967ef45c342d10e93296b7f7deeaaecbc03d113471c8aad5d1`  
		Last Modified: Wed, 11 Jul 2018 01:00:19 GMT  
		Size: 6.8 MB (6778706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac33be878457d581f0ca17ae1567978c5d2abbeb905ea0cd53d2f231d9d9c278`  
		Last Modified: Wed, 11 Jul 2018 01:00:16 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43985ce9b410eb3f50e91a36e55ae036a34dde330afe76e984841ca388878d3b`  
		Last Modified: Wed, 11 Jul 2018 01:00:17 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3-alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:481800c2f93163c801e957224c0810ce05c86bfc486eb8300dc81a5d262abb17
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7701090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:386ca70c8fb35a195d1bdf360ac8025d4bc9ca180841b48e593fb5a42d404aa2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:45 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Fri, 01 Dec 2017 18:41:45 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:46 GMT
CMD ["/bin/sh"]
# Wed, 16 May 2018 19:39:01 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 16 May 2018 19:39:06 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 16 Jun 2018 07:49:26 GMT
ENV REDIS_VERSION=3.2.12
# Sat, 16 Jun 2018 07:49:26 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Sat, 16 Jun 2018 07:49:27 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Sat, 16 Jun 2018 07:54:16 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 16 Jun 2018 07:54:21 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 16 Jun 2018 07:54:22 GMT
VOLUME [/data]
# Sat, 16 Jun 2018 07:54:23 GMT
WORKDIR /data
# Sat, 16 Jun 2018 07:54:24 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 16 Jun 2018 07:54:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 16 Jun 2018 07:54:26 GMT
EXPOSE 6379/tcp
# Sat, 16 Jun 2018 07:54:27 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bf7d76c39215a547858ef9260990b9b80c0e679bb2f6ceef942d7b6d0eeec3`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29b2b09993d378af670de0b63030a6a3e611e97529dfdbbc5aa5228af010f6c4`  
		Last Modified: Fri, 18 May 2018 07:58:12 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66f37a02127b76c7deae98d4551daa47405376826362bb20a76575f6710ccb2b`  
		Last Modified: Fri, 18 May 2018 07:58:12 GMT  
		Size: 8.7 KB (8716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b988ab6eeca49d5264e3ae7647913cf1958060b9078d0366376458a38df4425d`  
		Last Modified: Sat, 16 Jun 2018 07:58:50 GMT  
		Size: 5.7 MB (5652082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b81744a173ad845664cb5a345c68e94c5011e719f81f2e3dfc7daa93bdce99`  
		Last Modified: Sat, 16 Jun 2018 07:58:43 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e61842d356237dfe3e12b4ed5837f06da455a10dff18d7da304cea873bc6b96`  
		Last Modified: Sat, 16 Jun 2018 07:58:42 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3-alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:f8d873e3f893bbd611e7238dcc4bf989352d99787003a2c9f06b6b5cfed931f8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8701634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd7d3d33ab85dec4f3bf8aa68ef5202c5d52f377766ce72a04012790ee7e3376`
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
# Wed, 11 Jul 2018 09:41:15 GMT
ENV REDIS_VERSION=3.2.12
# Wed, 11 Jul 2018 09:41:16 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Wed, 11 Jul 2018 09:41:17 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Wed, 11 Jul 2018 09:41:55 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 11 Jul 2018 09:41:58 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 11 Jul 2018 09:41:59 GMT
VOLUME [/data]
# Wed, 11 Jul 2018 09:42:00 GMT
WORKDIR /data
# Wed, 11 Jul 2018 09:42:01 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 11 Jul 2018 09:42:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jul 2018 09:42:03 GMT
EXPOSE 6379/tcp
# Wed, 11 Jul 2018 09:42:04 GMT
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
	-	`sha256:5679d3bd67739719ddee8974785362aa7ab79baaf548ab9e4351e40977dd8daa`  
		Last Modified: Wed, 11 Jul 2018 09:44:07 GMT  
		Size: 6.6 MB (6591264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47fc82221c422a3e266eb176391f3976b81cc1acc2641eb427b2d5bff136ae21`  
		Last Modified: Wed, 11 Jul 2018 09:44:04 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78403f2cd0ea67443113cd867d0bcd1a3b213b4d04d83a9376d6fd76397722c1`  
		Last Modified: Wed, 11 Jul 2018 09:44:04 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3-alpine` - linux; 386

```console
$ docker pull redis@sha256:12959d69c2a1554e95b2c6c4487ff66a18f957740fe4b70a124dd019a6071fa8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7715001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25aa1f3ac283ec89da172da3a79fa1a895f9b405bd61bed57ba871359944a74d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 01 Jun 2018 06:57:26 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Jun 2018 06:57:26 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Jun 2018 06:57:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Jun 2018 15:57:41 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 01 Jun 2018 15:57:42 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 16 Jun 2018 10:40:41 GMT
ENV REDIS_VERSION=3.2.12
# Sat, 16 Jun 2018 10:40:41 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Sat, 16 Jun 2018 10:40:41 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Sat, 16 Jun 2018 10:41:12 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 16 Jun 2018 10:41:13 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 16 Jun 2018 10:41:13 GMT
VOLUME [/data]
# Sat, 16 Jun 2018 10:41:13 GMT
WORKDIR /data
# Sat, 16 Jun 2018 10:41:18 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 16 Jun 2018 10:41:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 16 Jun 2018 10:41:19 GMT
EXPOSE 6379/tcp
# Sat, 16 Jun 2018 10:41:19 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:061a9db3c9e4f3bc32618a5f1a7e2b8aefb20fcc48f8be709bc7f7eabe61d003`  
		Last Modified: Fri, 01 Jun 2018 06:57:51 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32c5c681510e095d5b56ec0b42770c915f177d63e694ce6b59a6081187bb4e38`  
		Last Modified: Fri, 01 Jun 2018 16:02:37 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c69d5dac586a34e49b9e78377c5b5ccf2dab95a9383f555ee0bf7e10be877000`  
		Last Modified: Fri, 01 Jun 2018 16:02:37 GMT  
		Size: 8.7 KB (8653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eff4cf92275ce1cb1f8131bfb7143f1bc399cf0bdb4026850cde8226916cc497`  
		Last Modified: Sat, 16 Jun 2018 10:45:06 GMT  
		Size: 5.6 MB (5578203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99a05d48b745cb70bddc990aed31a209c3fc0c93dcd8ea87375ac8bb3f9520e5`  
		Last Modified: Sat, 16 Jun 2018 10:45:04 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:656bf6726d46b902fce2bfc2417f67d423ac1ff3a42223f4f98da7ec44967e7f`  
		Last Modified: Sat, 16 Jun 2018 10:45:03 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3-alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:951b980304c5e457fc89f02ac5a21de4f3396033384683f6ddf970007346b96a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.1 MB (8095514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:372b071a58ae55444d84ecf1e6522791955e12cbb9a881b681e1f16e098cb9c6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Wed, 24 Jan 2018 06:35:28 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 24 Jan 2018 06:35:34 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 16 Jun 2018 08:19:57 GMT
ENV REDIS_VERSION=3.2.12
# Sat, 16 Jun 2018 08:19:57 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Sat, 16 Jun 2018 08:19:58 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Sat, 16 Jun 2018 08:20:24 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 16 Jun 2018 08:20:29 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 16 Jun 2018 08:20:32 GMT
VOLUME [/data]
# Sat, 16 Jun 2018 08:20:33 GMT
WORKDIR /data
# Sat, 16 Jun 2018 08:20:34 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 16 Jun 2018 08:20:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 16 Jun 2018 08:20:39 GMT
EXPOSE 6379/tcp
# Sat, 16 Jun 2018 08:20:40 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:802132ccdaaf1e42c991c0ad2b274ee46d7d02210e23a3bc630c772fbdd533c2`  
		Last Modified: Wed, 24 Jan 2018 06:37:26 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3edb35368beebf064881c4a2efa343effc2775c4bb6e9121e8426990bc75df12`  
		Last Modified: Wed, 24 Jan 2018 06:37:26 GMT  
		Size: 9.3 KB (9269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f7ca6aeb76b548827b2df318b4e7b32ecbe398e2bc1e0cd8b454d17bf82d2ac`  
		Last Modified: Sat, 16 Jun 2018 08:24:39 GMT  
		Size: 6.0 MB (6002782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94aa9ccffc747d08750fe0cda963eaf4f928a5d7914b61a5c260cf5a9d5bfd81`  
		Last Modified: Sat, 16 Jun 2018 08:24:37 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2357958d6cd10f2bd60489d885499bd5070dd58c79ac3162446321cc7a3a8c01`  
		Last Modified: Sat, 16 Jun 2018 08:24:37 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3-alpine` - linux; s390x

```console
$ docker pull redis@sha256:2b27a0a878ae07a5a698a6dbe3041afa3908e2df98e879dcf399f53c12f61732
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.2 MB (8244704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:feddc7428cb655ea447036e864c00ac471342a0d2b1ff5c54a5ff01c4e9ffe25`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Wed, 24 Jan 2018 06:24:30 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 24 Jan 2018 06:24:33 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 16 Jun 2018 11:45:26 GMT
ENV REDIS_VERSION=3.2.12
# Sat, 16 Jun 2018 11:45:26 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Sat, 16 Jun 2018 11:45:26 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Sat, 16 Jun 2018 11:45:46 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 16 Jun 2018 11:45:47 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 16 Jun 2018 11:45:47 GMT
VOLUME [/data]
# Sat, 16 Jun 2018 11:45:47 GMT
WORKDIR /data
# Sat, 16 Jun 2018 11:45:47 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 16 Jun 2018 11:45:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 16 Jun 2018 11:45:48 GMT
EXPOSE 6379/tcp
# Sat, 16 Jun 2018 11:45:48 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:11e7bc85614a236b32043d147930fd2bc9055af8642fe30e5e56142590572b0e`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 2.2 MB (2185231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f825cbb729285f1fe2a0cd1d4d36897e3fe2191c5ee044ce11a5d301dc64a34`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:167640baaae6b19b666d28c35de1dde729eaca22986531c0f3b3dd6af5bbc469`  
		Last Modified: Wed, 24 Jan 2018 06:25:46 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dab4f89cc8856e8d43a9cc8e3ba6670d31906a9a3409fdf2f59ad893cda37c8`  
		Last Modified: Wed, 24 Jan 2018 06:25:46 GMT  
		Size: 8.9 KB (8944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee20fb223e03f8387aefad2c97541b4152445acc52125010b85618c815dd771c`  
		Last Modified: Sat, 16 Jun 2018 11:47:23 GMT  
		Size: 6.0 MB (6048600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bde0554da80f0de0662d48647b71ecd473669b8d61b5314956f569cbf832be5d`  
		Last Modified: Sat, 16 Jun 2018 11:47:22 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:924e13a4743effe4208999eb5cf1872017454497b7833ec1d61078324266300d`  
		Last Modified: Sat, 16 Jun 2018 11:47:22 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
