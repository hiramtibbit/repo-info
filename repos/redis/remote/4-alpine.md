## `redis:4-alpine`

```console
$ docker pull redis@sha256:ab9290ef2fb97e9c0fd5ef440f1658d6e7dc2526485e2d7794f660b1721d8bef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4-alpine` - linux; amd64

```console
$ docker pull redis@sha256:29c1f0ff8267ad6e9bdf8f1b1228932ce43cae82ac0f8d8d8df2b995f69c9851
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10600720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:caaeda72bf8fe795b75382088b6de0db742b512921061e838450127579ce3e1e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Sat, 16 Jun 2018 07:25:04 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 16 Jun 2018 07:25:05 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 16 Jun 2018 07:29:38 GMT
ENV REDIS_VERSION=4.0.10
# Sat, 16 Jun 2018 07:29:38 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Sat, 16 Jun 2018 07:29:38 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Sat, 16 Jun 2018 07:30:07 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 16 Jun 2018 07:30:08 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 16 Jun 2018 07:30:08 GMT
VOLUME [/data]
# Sat, 16 Jun 2018 07:30:08 GMT
WORKDIR /data
# Sat, 16 Jun 2018 07:30:09 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 16 Jun 2018 07:30:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 16 Jun 2018 07:30:09 GMT
EXPOSE 6379/tcp
# Sat, 16 Jun 2018 07:30:09 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fbab8756652387a272f5e2e46785253e2afee892c728e273675d424fadf6023`  
		Last Modified: Sat, 16 Jun 2018 07:31:31 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff7d4663b06ccada1152f453a2a04004015c4b398e460359966e60c9e6c44559`  
		Last Modified: Sat, 16 Jun 2018 07:31:31 GMT  
		Size: 8.6 KB (8551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5cf71258c213db177b5b1c6fadf9da9a234e069e35ec10b3ce68608372883e`  
		Last Modified: Sat, 16 Jun 2018 07:33:34 GMT  
		Size: 8.5 MB (8524878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54bbb9bad8ba2d0566fa45f93e41dfb796491837865ab8016d03f1d9be36d5b2`  
		Last Modified: Sat, 16 Jun 2018 07:33:29 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe9a341d124e0e35600559e774299f6714aa7df187c332fafd5ccb77cd98fe8`  
		Last Modified: Sat, 16 Jun 2018 07:33:29 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
