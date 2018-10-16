## `redis:32bit-stretch`

```console
$ docker pull redis@sha256:de889eb101ab1d3ce14aba608bd21ad5880cd5b2a2562413364be8b2f952afd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:32bit-stretch` - linux; amd64

```console
$ docker pull redis@sha256:4f521031ebce8ec935eea221e1fd9b202cd321bb7a8e7ff9fd1d2cc46e74abef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.5 MB (36532833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5bcabe20ed59b5d17bee64d059ddf7b30035a6b86aeeff296eec844cc900d21`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 04:31:42 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 16 Oct 2018 04:31:42 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 04:31:55 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 16 Oct 2018 04:34:40 GMT
ENV REDIS_VERSION=4.0.11
# Tue, 16 Oct 2018 04:34:42 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Tue, 16 Oct 2018 04:34:44 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Tue, 16 Oct 2018 04:35:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 04:36:33 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 16 Oct 2018 04:36:38 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 16 Oct 2018 04:36:38 GMT
VOLUME [/data]
# Tue, 16 Oct 2018 04:36:38 GMT
WORKDIR /data
# Tue, 16 Oct 2018 04:36:39 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Tue, 16 Oct 2018 04:36:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 04:36:39 GMT
EXPOSE 6379/tcp
# Tue, 16 Oct 2018 04:36:39 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3247409875798b846053cdc995cd766fedae8f94e2d78dc1b5276abc8546673`  
		Last Modified: Tue, 16 Oct 2018 04:38:56 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8980cabe8bc2f8337a120768556d2068f45dec94847c8ae007fac56d54384e09`  
		Last Modified: Tue, 16 Oct 2018 04:38:57 GMT  
		Size: 941.3 KB (941284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:613dea1a51d047da5233c71dd3ed807045f2ff487c39f6457d2d0a13f33ae964`  
		Last Modified: Tue, 16 Oct 2018 04:41:58 GMT  
		Size: 4.8 MB (4848269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e35f7ab4c9fc728e6cc5f678875e147188c8eb89648f5ff36524716c192a61`  
		Last Modified: Tue, 16 Oct 2018 04:41:58 GMT  
		Size: 8.3 MB (8254977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eee205fb7a487e6afa74a6f1b3182d5d45fc908a2749b8bd90805c0e33a0fee`  
		Last Modified: Tue, 16 Oct 2018 04:41:57 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74c7063e3993087ca55deb77b84b5c1701bb5e03e10dccfd38e34b6599cb3e8f`  
		Last Modified: Tue, 16 Oct 2018 04:41:57 GMT  
		Size: 424.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
