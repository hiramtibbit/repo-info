## `redis:32bit`

```console
$ docker pull redis@sha256:984479a7cb8140e88789a89f3bbbbbd54723e835be428e63dd4fbca739416491
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:32bit` - linux; amd64

```console
$ docker pull redis@sha256:307643605f7a80ddc9d521285ee77b51f1dda1ebaa0f3f2d063223c00ba58da5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.5 MB (39488620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aac41b3d545a5b59f5871d9798542265b19e6118f4b55d50652292b2abb2ec1b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:23 GMT
ADD file:5ffb798d64089418ef4d3a261df5ad7cfa038eb2ef778db2b92604ac87228d99 in / 
# Mon, 10 Jun 2019 23:24:23 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 06:40:16 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 11 Jun 2019 06:40:17 GMT
ENV GOSU_VERSION=1.10
# Tue, 11 Jun 2019 06:40:35 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 11 Jun 2019 06:40:35 GMT
ENV REDIS_VERSION=5.0.5
# Tue, 11 Jun 2019 06:40:35 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Tue, 11 Jun 2019 06:40:36 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Tue, 11 Jun 2019 06:43:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 06:46:30 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 11 Jun 2019 06:46:31 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 11 Jun 2019 06:46:31 GMT
VOLUME [/data]
# Tue, 11 Jun 2019 06:46:32 GMT
WORKDIR /data
# Tue, 11 Jun 2019 06:46:32 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 11 Jun 2019 06:46:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Jun 2019 06:46:33 GMT
EXPOSE 6379
# Tue, 11 Jun 2019 06:46:33 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:fc7181108d403205fda45b28dbddfa1cf07e772fa41244e44f53a341b8b1893d`  
		Last Modified: Mon, 10 Jun 2019 23:28:08 GMT  
		Size: 22.5 MB (22489302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e0ac67cad82d7361235e6c7b32868733671abeb588e49080167cc0e9ad8e7a3`  
		Last Modified: Tue, 11 Jun 2019 06:50:59 GMT  
		Size: 1.7 KB (1735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ee495cb72359e80d06eb4b204cf9dfbfcc238c2ea95a07e34908d987f5a5b2c`  
		Last Modified: Tue, 11 Jun 2019 06:51:00 GMT  
		Size: 941.4 KB (941397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67767e19b73aee9b12f63cb2d797ca63db6878c8163ffa63c33e4d8c8df60f64`  
		Last Modified: Tue, 11 Jun 2019 06:51:17 GMT  
		Size: 4.8 MB (4849444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7df135eaba4b824f4761258f422c58c1bc2db40da6a392836994562efe968221`  
		Last Modified: Tue, 11 Jun 2019 06:51:20 GMT  
		Size: 11.2 MB (11206225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84a3fa1a5b240059a9bc17e6a5ec23d70a0e71b7323551f4c0b02abff3d0a0c9`  
		Last Modified: Tue, 11 Jun 2019 06:51:16 GMT  
		Size: 96.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047fbe905bf7d2ffb8d2e8337c6ae94420c0414bbd0cc66ae5d660fdf5c48e67`  
		Last Modified: Tue, 11 Jun 2019 06:51:16 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
