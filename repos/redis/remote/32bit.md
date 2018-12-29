## `redis:32bit`

```console
$ docker pull redis@sha256:93bac88db5f058ff6d5a7ee91ce8f9fd9b33d2b958d28f9a709786d2ee4bf49b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:32bit` - linux; amd64

```console
$ docker pull redis@sha256:f1af1b9f829fc8af6baeda79bf655a50a950ef050f38704d91b06a55778824e3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.5 MB (39468140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ac0b94951768326004f445e070f216f8e60f5d730af6f3a9adeb08fc0109ec4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 28 Dec 2018 23:30:06 GMT
ADD file:6d6f6f123e45697d3e73ea24621e4fd8da0ed5cf7504767f6b3120671fe6e7d1 in / 
# Fri, 28 Dec 2018 23:30:06 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 01:28:34 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 29 Dec 2018 01:28:34 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 01:28:49 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 29 Dec 2018 01:28:50 GMT
ENV REDIS_VERSION=5.0.3
# Sat, 29 Dec 2018 01:28:50 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Sat, 29 Dec 2018 01:28:50 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Sat, 29 Dec 2018 01:30:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:31:23 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 29 Dec 2018 01:31:23 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 29 Dec 2018 01:31:24 GMT
VOLUME [/data]
# Sat, 29 Dec 2018 01:31:24 GMT
WORKDIR /data
# Sat, 29 Dec 2018 01:31:24 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Sat, 29 Dec 2018 01:31:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 01:31:24 GMT
EXPOSE 6379
# Sat, 29 Dec 2018 01:31:24 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:177e7ef0df6987e0c5738a1fb5aba98b6b6e7a5fef992e481977dbb5ba3f91be`  
		Last Modified: Fri, 28 Dec 2018 23:36:01 GMT  
		Size: 22.5 MB (22492916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66ec699db42d9b4aae753415d73a33bd100616bfabd2fd87bfa7fc9a1cfdf90d`  
		Last Modified: Sat, 29 Dec 2018 01:33:49 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9af6d87fd3472af92787f5e8cbb778f2f4ba7666d08473b60fb63a6518657ed1`  
		Last Modified: Sat, 29 Dec 2018 01:33:48 GMT  
		Size: 941.3 KB (941279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec43f1fda583d09da9b1b4b11fd10d07f46464ae924087568abceb25041d0b8`  
		Last Modified: Sat, 29 Dec 2018 01:34:01 GMT  
		Size: 4.8 MB (4848283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd759fc267cc47136b00d3c1fa7be86fb6cdf49972dbbb9b1f746a88ab35107`  
		Last Modified: Sat, 29 Dec 2018 01:34:02 GMT  
		Size: 11.2 MB (11183400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a8246f2ffe492bfc12e4125b39a980544ced0f11346fc7e3cc1fee724175d41`  
		Last Modified: Sat, 29 Dec 2018 01:33:59 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d05818ba594002930bb5594d2c408041c419fbbaf3e7e005620b0d782f342efb`  
		Last Modified: Sat, 29 Dec 2018 01:34:00 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
