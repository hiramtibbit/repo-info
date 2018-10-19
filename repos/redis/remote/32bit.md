## `redis:32bit`

```console
$ docker pull redis@sha256:fcd708a85270504a3b594f51d838bc3ed99e62a8ddd1ed9e8ddbc86bd13547ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:32bit` - linux; amd64

```console
$ docker pull redis@sha256:adb60803470429bdc61247986c46867c7b6d9d6f591188b7312c1009bd8d0369
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.4 MB (39446143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fff7108df51c4c089cea96d8e59aa13ea8181bf20ead2a94bc9380ba4d6b8115`
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
# Thu, 18 Oct 2018 23:47:47 GMT
ENV REDIS_VERSION=5.0.0
# Thu, 18 Oct 2018 23:47:47 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.0.tar.gz
# Thu, 18 Oct 2018 23:47:48 GMT
ENV REDIS_DOWNLOAD_SHA=70c98b2d0640b2b73c9d8adb4df63bcb62bad34b788fe46d1634b6cf87dc99a4
# Thu, 18 Oct 2018 23:49:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Thu, 18 Oct 2018 23:50:51 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 18 Oct 2018 23:50:52 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 18 Oct 2018 23:50:52 GMT
VOLUME [/data]
# Thu, 18 Oct 2018 23:50:52 GMT
WORKDIR /data
# Thu, 18 Oct 2018 23:50:53 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Thu, 18 Oct 2018 23:50:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 18 Oct 2018 23:50:53 GMT
EXPOSE 6379/tcp
# Thu, 18 Oct 2018 23:50:53 GMT
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
	-	`sha256:1b80a1c5f67a4ee346945c812599568e517ee70f53f70b460ca189c8ba292a7a`  
		Last Modified: Thu, 18 Oct 2018 23:54:39 GMT  
		Size: 4.8 MB (4848295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb49f26ef285da2a6cf2774d9c3acab4f6236085b4212fde8e78ab2cfce4acf`  
		Last Modified: Thu, 18 Oct 2018 23:54:40 GMT  
		Size: 11.2 MB (11168260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0ef129f83dbf19489e12657a5d3871793e1664319ad23670339bb84216ecf4a`  
		Last Modified: Thu, 18 Oct 2018 23:54:38 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d7a77fb676825049ecb0d88c3a3890b8ccc4e1b0ca03ea003af88deeeb12715`  
		Last Modified: Thu, 18 Oct 2018 23:54:38 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
