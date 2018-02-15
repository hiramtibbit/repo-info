## `redis:32bit`

```console
$ docker pull redis@sha256:b7effebd7bccb0f5c822754330eacc2a95de3e788d08e58d9542ca3e4865b896
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:32bit` - linux; amd64

```console
$ docker pull redis@sha256:a9d58e15ab1e99975a55051b85f80b8b0a16491e58be4a5f5ee4c32d1d29ba59
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.0 MB (43002329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed9ee2d4834b2f1d9cb2621fe747370541254199c39b9d3c3e86e65a50fa10db`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 15 Feb 2018 01:46:20 GMT
ADD file:a0f72eb6710fe45aff98d40665ed5c106a992b2b0d1d57a1fb6ca98c4aa0f0a6 in / 
# Thu, 15 Feb 2018 01:46:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:50:37 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Thu, 15 Feb 2018 07:50:37 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 07:50:59 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 07:54:45 GMT
ENV REDIS_VERSION=4.0.8
# Thu, 15 Feb 2018 07:54:45 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.8.tar.gz
# Thu, 15 Feb 2018 07:54:45 GMT
ENV REDIS_DOWNLOAD_SHA=ff0c38b8c156319249fec61e5018cf5b5fe63a65b61690bec798f4c998c232ad
# Thu, 15 Feb 2018 08:04:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 08:05:16 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 08:05:16 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 15 Feb 2018 08:05:17 GMT
VOLUME [/data]
# Thu, 15 Feb 2018 08:05:17 GMT
WORKDIR /data
# Thu, 15 Feb 2018 08:05:17 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Thu, 15 Feb 2018 08:05:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 08:05:18 GMT
EXPOSE 6379/tcp
# Thu, 15 Feb 2018 08:05:18 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d2ca7eff5948133e4316d463c56948af87b4d4d09848ee0f8b698d3549a7a7dd`  
		Last Modified: Thu, 15 Feb 2018 02:18:31 GMT  
		Size: 30.1 MB (30122379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d1a2245aaa6e74708fd6c58cf1ac19f9db2d2031107c25d20b0ac06d11f2b7c`  
		Last Modified: Thu, 15 Feb 2018 08:17:00 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a483dd2a28bbd7835cda9c014266c0dfcee502ef67e5d9a4e090c807b3a1717`  
		Last Modified: Thu, 15 Feb 2018 08:17:01 GMT  
		Size: 981.7 KB (981722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bce8af5849ba0d561b8eed23e6deb63674cd52a1eda8e4343556ee6bf3dea69`  
		Last Modified: Thu, 15 Feb 2018 08:21:00 GMT  
		Size: 4.4 MB (4378570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a86c627d6879c786d06b4a0e37c9bf01c379cc5b7f93551ab6228f7180740b5f`  
		Last Modified: Thu, 15 Feb 2018 08:21:00 GMT  
		Size: 7.5 MB (7517063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15945e40da683998122b6c443c8f53841f3461ad36db97438e3e93e6b36ce3c6`  
		Last Modified: Thu, 15 Feb 2018 08:20:58 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba0f3aa6300e5e98149d125b41b3dd868f71c9b0d256262b2209f9a222ff7cf8`  
		Last Modified: Thu, 15 Feb 2018 08:20:58 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
