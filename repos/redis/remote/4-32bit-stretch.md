## `redis:4-32bit-stretch`

```console
$ docker pull redis@sha256:8d3b560ca732d2677b08e7669bcd3aff714ad5e90e2af7b48960fc2f928fe95b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4-32bit-stretch` - linux; amd64

```console
$ docker pull redis@sha256:d7f89878d8fe15162a62206af14c1623418c2952c4b788c432e3be4e4b5ba5da
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.5 MB (36533099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64a43e1d3fb2a7c9b0e3c462b704c51de59b96ef409ffb2bef3623f1b44bfce1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 09:02:21 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 16 Nov 2018 09:02:22 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 09:02:51 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Nov 2018 09:08:12 GMT
ENV REDIS_VERSION=4.0.11
# Fri, 16 Nov 2018 09:08:12 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Fri, 16 Nov 2018 09:08:12 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Fri, 16 Nov 2018 09:09:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 09:10:48 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Nov 2018 09:11:01 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 16 Nov 2018 09:11:01 GMT
VOLUME [/data]
# Fri, 16 Nov 2018 09:11:13 GMT
WORKDIR /data
# Fri, 16 Nov 2018 09:11:14 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Fri, 16 Nov 2018 09:11:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 09:11:26 GMT
EXPOSE 6379/tcp
# Fri, 16 Nov 2018 09:11:26 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d0f7688756ea23ac9146ec3d78976f479aab9c724a659c3b63cff619e65a95`  
		Last Modified: Fri, 16 Nov 2018 09:12:11 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53e16f6135a590ee3e34841fbde3c4dbe5b7c29907b3d0e070b6496d05308429`  
		Last Modified: Fri, 16 Nov 2018 09:12:11 GMT  
		Size: 941.3 KB (941290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4993e4cbbeced58ca7c78bc9ff310215f93cdc21ccd6c178ca5d4ff6341861a3`  
		Last Modified: Fri, 16 Nov 2018 09:21:15 GMT  
		Size: 4.8 MB (4848322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6ac039ebb83dbf8934adedbc707ae83d830141a24cfbf815eb7066ab83e9cda`  
		Last Modified: Fri, 16 Nov 2018 09:21:16 GMT  
		Size: 8.3 MB (8254949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a147b32d5b267ffd191ba7caddeeb5954eadf775f49d684179539e9f2f4dc43`  
		Last Modified: Fri, 16 Nov 2018 09:21:14 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1791a0d4516140db0907d79bed2c5ac8a46bb9915e06ae3f36582f475313d44`  
		Last Modified: Fri, 16 Nov 2018 09:21:15 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
