## `redis:stretch`

```console
$ docker pull redis@sha256:dd04a0f82c6a838fa06b9a3b66827c7ac2ed54b8b2ced0db93df0af9d191d4c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:stretch` - linux; amd64

```console
$ docker pull redis@sha256:9f5d4b58b24fa063e445f33572172950d51b10520322f47b072dced39604b887
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35222053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4161e91dcc290f291aa7ad17d20212e99704db82b24e7ee3acaa09bd739fc8e9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 03:59:08 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 05 Mar 2019 03:59:08 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 03:59:22 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 19 Mar 2019 21:32:40 GMT
ENV REDIS_VERSION=5.0.4
# Tue, 19 Mar 2019 21:32:40 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Tue, 19 Mar 2019 21:32:41 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Tue, 19 Mar 2019 21:33:44 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 19 Mar 2019 21:33:45 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 19 Mar 2019 21:33:45 GMT
VOLUME [/data]
# Tue, 19 Mar 2019 21:33:45 GMT
WORKDIR /data
# Tue, 19 Mar 2019 21:33:46 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 19 Mar 2019 21:33:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Mar 2019 21:33:46 GMT
EXPOSE 6379
# Tue, 19 Mar 2019 21:33:46 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421427137c28f41acfcc3dfe20a5cf4fbcd69aec56df545a2be71e0dd9da428a`  
		Last Modified: Tue, 05 Mar 2019 04:04:52 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4af7ef63ef0fb172f652981ba6b70cbd9bbcac98a38fd878e084c0229729d1b5`  
		Last Modified: Tue, 05 Mar 2019 04:04:53 GMT  
		Size: 941.4 KB (941372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4d05f269476b5ce9a684dbc4b9ff2f5b2ae615ebf08274f11156a8d1a176654`  
		Last Modified: Tue, 19 Mar 2019 21:38:49 GMT  
		Size: 11.8 MB (11782386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e747b51b85f180eec36b3c641574e97cd4035a3d515e32d67edf497d390975d`  
		Last Modified: Tue, 19 Mar 2019 21:38:47 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c41406f9197834b5f39263344fcbb039b405eb69010c330f5a208c133315404f`  
		Last Modified: Tue, 19 Mar 2019 21:38:47 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
