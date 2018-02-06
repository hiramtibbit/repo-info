## `redis:latest`

```console
$ docker pull redis@sha256:7bb3838c725b4c9ef79376ab23d57e8f7d38d2a4811702c4fb984f0fcab026bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `redis:latest` - linux; amd64

```console
$ docker pull redis@sha256:e992a63e634b8ef3084ba6cacf25acd4bd19f2ac0b6d80f129764a9015daf595
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.4 MB (39395693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de560ba5403e09ed7e6807a78f10895180bf3172052b60d0c72f1197afe66b60`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:34 GMT
ADD file:e7ac45803c3ab9b7023933b75f5a88eda1f3edca97c7e462401860777cf312f7 in / 
# Tue, 12 Dec 2017 01:41:35 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:11:57 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 12 Dec 2017 07:11:57 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 07:12:20 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 06 Feb 2018 00:46:49 GMT
ENV REDIS_VERSION=4.0.8
# Tue, 06 Feb 2018 00:46:49 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.8.tar.gz
# Tue, 06 Feb 2018 00:46:50 GMT
ENV REDIS_DOWNLOAD_SHA=ff0c38b8c156319249fec61e5018cf5b5fe63a65b61690bec798f4c998c232ad
# Tue, 06 Feb 2018 00:47:41 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 06 Feb 2018 00:47:43 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 06 Feb 2018 00:47:43 GMT
VOLUME [/data]
# Tue, 06 Feb 2018 00:47:43 GMT
WORKDIR /data
# Tue, 06 Feb 2018 00:47:44 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 06 Feb 2018 00:47:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Feb 2018 00:47:44 GMT
EXPOSE 6379/tcp
# Tue, 06 Feb 2018 00:47:44 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:c4bb02b17bb4b034c95a948c99c762cf0486a45f45441a052208d7750f1b413b`  
		Last Modified: Tue, 12 Dec 2017 01:48:52 GMT  
		Size: 30.1 MB (30114519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58638acf67c5d1d65732b562d5a7f5525b9788155cc10d4cd96c3d5380fadf04`  
		Last Modified: Tue, 12 Dec 2017 07:17:40 GMT  
		Size: 2.1 KB (2086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98d108cc38bde856021760374435ab87fa2ef7c4317cd18fd7b7ded7af506a3`  
		Last Modified: Tue, 12 Dec 2017 07:17:40 GMT  
		Size: 981.7 KB (981699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6ce5793a20719af0b00fef297867501a2657d8fb07061c202b32149c2f78612`  
		Last Modified: Tue, 06 Feb 2018 01:03:00 GMT  
		Size: 8.3 MB (8296886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fc67899101b7563cadb4b31e59692fa17ed62a9a86a79d893c30701ab075336`  
		Last Modified: Tue, 06 Feb 2018 01:02:58 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b55db4b27fa54de5d368e5ec1b53b38918e53c51bc751e45ea06a68e7cc38cfb`  
		Last Modified: Tue, 06 Feb 2018 01:02:59 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; arm variant v7

```console
$ docker pull redis@sha256:7cf526a2f8056e04b50140020ebedaa73539fae967d5f04004fa34c1d4a9a859
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35177313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7ce38f3ed4df984db03edd68c19324debfffed00f120af3086e455b0e923c11`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 12 Dec 2017 13:27:47 GMT
ADD file:1f5de474caa19da14d698a3f9c3d161abfa1e19e258a596d64f3dfc9e2f17686 in / 
# Tue, 12 Dec 2017 13:27:47 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 16:40:56 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 12 Dec 2017 16:40:56 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 16:41:50 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 06 Feb 2018 01:27:32 GMT
ENV REDIS_VERSION=4.0.8
# Tue, 06 Feb 2018 01:27:32 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.8.tar.gz
# Tue, 06 Feb 2018 01:27:32 GMT
ENV REDIS_DOWNLOAD_SHA=ff0c38b8c156319249fec61e5018cf5b5fe63a65b61690bec798f4c998c232ad
# Tue, 06 Feb 2018 01:28:31 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 06 Feb 2018 01:28:32 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 06 Feb 2018 01:28:32 GMT
VOLUME [/data]
# Tue, 06 Feb 2018 01:28:32 GMT
WORKDIR /data
# Tue, 06 Feb 2018 01:28:32 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 06 Feb 2018 01:28:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Feb 2018 01:28:33 GMT
EXPOSE 6379/tcp
# Tue, 06 Feb 2018 01:28:33 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:4b9c0f1a415433a98643bdda391dcf4fe5d9653fc3ed3845c7ac1be99eb43399`  
		Last Modified: Tue, 12 Dec 2017 13:39:52 GMT  
		Size: 26.3 MB (26282714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d6835fe576543df3c87405f33db99aa1f040e3f241c5e5d72ffb416953902b8`  
		Last Modified: Tue, 12 Dec 2017 16:44:59 GMT  
		Size: 2.1 KB (2076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a11c10ad12017478481b1755839ece7c69945ee8c04b97bb10909db85e4ed338`  
		Last Modified: Tue, 12 Dec 2017 16:44:59 GMT  
		Size: 956.1 KB (956126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69000625f437a6cf3ee8d6b60151e3b39452ece0ef361e2f590893944afeef55`  
		Last Modified: Tue, 06 Feb 2018 01:29:04 GMT  
		Size: 7.9 MB (7935860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12aed7147e11e132c5248e25289535495e5d0ad14d81289ee91a77f27e1863e2`  
		Last Modified: Tue, 06 Feb 2018 01:29:02 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:718285eeeaaf6b3766acae3b4b75420baeffe68ad824cb8c6c27be64c95a6deb`  
		Last Modified: Tue, 06 Feb 2018 01:29:02 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
