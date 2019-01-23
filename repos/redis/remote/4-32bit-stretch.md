## `redis:4-32bit-stretch`

```console
$ docker pull redis@sha256:9822a6adfa163e83624f5fb929acd0b8abd98c4eff2873106bca013023c76e04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4-32bit-stretch` - linux; amd64

```console
$ docker pull redis@sha256:bace71ad3c00f9787ffbb006b45d64e3e7b4c66d945dcd45686aa9760beedf5c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36554644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:525e7c259a22d777fcf7ca4694856576741b6059c9ecc679653cd754d3200615`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:32 GMT
ADD file:a65337a57a064a79ad8a3f42e8282b3e01710cb4684ccd880463cc8d2e051fa5 in / 
# Tue, 22 Jan 2019 19:30:32 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 04:44:04 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 23 Jan 2019 04:44:04 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 04:44:20 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 04:47:02 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 23 Jan 2019 04:47:03 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 23 Jan 2019 04:47:03 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 23 Jan 2019 04:48:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 04:49:04 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 04:49:05 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 23 Jan 2019 04:49:05 GMT
VOLUME [/data]
# Wed, 23 Jan 2019 04:49:05 GMT
WORKDIR /data
# Wed, 23 Jan 2019 04:49:05 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 23 Jan 2019 04:49:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 04:49:06 GMT
EXPOSE 6379
# Wed, 23 Jan 2019 04:49:06 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5e6ec7f28fb77f84f64b8c29fcb0a746260563f5858315e3e9fcc4aee2844840`  
		Last Modified: Tue, 22 Jan 2019 19:37:02 GMT  
		Size: 22.5 MB (22500707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fdf7fb3ec49bc03a9c83441f87b47bbb90b18d79916575989900db623d154b0`  
		Last Modified: Wed, 23 Jan 2019 04:49:32 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bd5dbe7bfa7bc2917af2b6a213af3b67c1d53790446ee7518e5d927370ab92f`  
		Last Modified: Wed, 23 Jan 2019 04:49:32 GMT  
		Size: 941.3 KB (941349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1fda03599f11eed1f1757158f6e655d72b126d527a293284595908309ef69bb`  
		Last Modified: Wed, 23 Jan 2019 04:50:03 GMT  
		Size: 4.8 MB (4848332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f69ce71ace228bab0b594b31d4339b3d0d97f3c09917385910992fdaeac63e33`  
		Last Modified: Wed, 23 Jan 2019 04:50:03 GMT  
		Size: 8.3 MB (8261995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c859eebc55887c3cd262aa3ae388db127827463582078fb532edd7cf8f379daf`  
		Last Modified: Wed, 23 Jan 2019 04:50:02 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ae4219aec4c0aa017d74553fd442186b7059508e5571cbd9568870f2cd96cfd`  
		Last Modified: Wed, 23 Jan 2019 04:50:02 GMT  
		Size: 424.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
