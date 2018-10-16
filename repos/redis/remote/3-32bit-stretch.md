## `redis:3-32bit-stretch`

```console
$ docker pull redis@sha256:bb00f0d73b1c301189200215bf52a4c3c4e25892833aebed718e3465adc2a1f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:3-32bit-stretch` - linux; amd64

```console
$ docker pull redis@sha256:c9d64b149703d138ea61333de45f85adf1a1c5ee4ba216ee3ef6bdccde8560dc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.9 MB (33934602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70aec57a61f8e40e3c458486b20bc88d631858dcd8c1cec1226de6a9c4b50f2d`
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
# Tue, 16 Oct 2018 04:36:53 GMT
ENV REDIS_VERSION=3.2.12
# Tue, 16 Oct 2018 04:36:54 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Tue, 16 Oct 2018 04:36:54 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Tue, 16 Oct 2018 04:37:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 04:38:31 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 16 Oct 2018 04:38:31 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 16 Oct 2018 04:38:32 GMT
VOLUME [/data]
# Tue, 16 Oct 2018 04:38:32 GMT
WORKDIR /data
# Tue, 16 Oct 2018 04:38:32 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Tue, 16 Oct 2018 04:38:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 04:38:33 GMT
EXPOSE 6379/tcp
# Tue, 16 Oct 2018 04:38:33 GMT
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
	-	`sha256:42ad1c719122574448276c0c919cb4e5956906d014dea03c7076e4b1935fa362`  
		Last Modified: Tue, 16 Oct 2018 04:44:39 GMT  
		Size: 4.8 MB (4848290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22f997b27daf0aba3b32c175f922fcf6074fe0fcba0dd2beb74cc5bd08de0a95`  
		Last Modified: Tue, 16 Oct 2018 04:44:39 GMT  
		Size: 5.7 MB (5656727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c73c545a1b4e551cc51daae0e1bc0cfb518fd765078c67b9d02e03581fb99ede`  
		Last Modified: Tue, 16 Oct 2018 04:44:38 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4addecf77cfd11d436bb8b3d3df44dd0899a4003c4ec81826f0a17c4111e6283`  
		Last Modified: Tue, 16 Oct 2018 04:44:38 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
