## `redis:stretch`

```console
$ docker pull redis@sha256:476ef1951594f96eb103121ddde2c08ff14bb377a331a08a9f88fbff4f44b323
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:stretch` - linux; amd64

```console
$ docker pull redis@sha256:71ccc69750a33614be276c832a1d6ed0b2e21bd97df64a80032dd24de1ef8b8e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35184280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5958914cc55880091b005658a79645a90fd44ac6a33abef25d6be87658eb9599`
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
# Wed, 28 Nov 2018 23:28:26 GMT
ENV REDIS_VERSION=5.0.2
# Wed, 28 Nov 2018 23:28:26 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.2.tar.gz
# Wed, 28 Nov 2018 23:28:26 GMT
ENV REDIS_DOWNLOAD_SHA=937dde6164001c083e87316aa20dad2f8542af089dfcb1cbb64f9c8300cd00ed
# Wed, 28 Nov 2018 23:29:58 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 28 Nov 2018 23:29:58 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 28 Nov 2018 23:29:59 GMT
VOLUME [/data]
# Wed, 28 Nov 2018 23:29:59 GMT
WORKDIR /data
# Wed, 28 Nov 2018 23:30:00 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Wed, 28 Nov 2018 23:30:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Nov 2018 23:30:00 GMT
EXPOSE 6379/tcp
# Wed, 28 Nov 2018 23:30:01 GMT
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
	-	`sha256:b761e99e9c9c3b95247ccff39a76b35acb16d6bab634b7ba70a2113e7fbd5d2f`  
		Last Modified: Wed, 28 Nov 2018 23:34:12 GMT  
		Size: 11.8 MB (11754455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13686b3f2e29a4fcae8eaee0735353d7700929cf3df770c02c7a804bb8770746`  
		Last Modified: Wed, 28 Nov 2018 23:34:09 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:667e8fd02be2b37f8f7268dfc95a1b6567086eadad1e4d7a6c174396d098843b`  
		Last Modified: Wed, 28 Nov 2018 23:34:09 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
