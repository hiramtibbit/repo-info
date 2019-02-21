## `redis:4-32bit-stretch`

```console
$ docker pull redis@sha256:3af5d3f9f702a694115564e52cee3b986bdc425bfc1509487d4ce4e7e4686cd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4-32bit-stretch` - linux; amd64

```console
$ docker pull redis@sha256:c2f1708b2da46d9c517cebb90de6a14c28a0f5c204699a77e68a031cab567da0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.4 MB (41440987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78c9c9c4013162aa2f30f44d5e1b95d1e782c7a536a0f30572602d8af71555ec`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 09:00:39 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 06 Feb 2019 09:00:39 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 09:00:57 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 21 Feb 2019 22:56:27 GMT
ENV REDIS_VERSION=4.0.13
# Thu, 21 Feb 2019 22:56:27 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Thu, 21 Feb 2019 22:56:27 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Thu, 21 Feb 2019 22:58:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Thu, 21 Feb 2019 22:59:18 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 21 Feb 2019 22:59:18 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 21 Feb 2019 22:59:19 GMT
VOLUME [/data]
# Thu, 21 Feb 2019 22:59:19 GMT
WORKDIR /data
# Thu, 21 Feb 2019 22:59:19 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 21 Feb 2019 22:59:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Feb 2019 22:59:20 GMT
EXPOSE 6379
# Thu, 21 Feb 2019 22:59:20 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3717477b42d8a4e3320e5adbe2fcfbc6724ef9a355c56d2c0b74f80a320c86f`  
		Last Modified: Wed, 06 Feb 2019 09:08:28 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e70bf6cc2e66bd1a0020aa7a62eb20f1af1c4e2d0a2b527a26e1b584950653c`  
		Last Modified: Wed, 06 Feb 2019 09:08:29 GMT  
		Size: 941.4 KB (941367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e267580546f060f51a2fe225b8a0b963e4d91561fdf3dcfa88e3ecb352b69a4`  
		Last Modified: Thu, 21 Feb 2019 23:01:22 GMT  
		Size: 9.7 MB (9733734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e85a1ff907f6d04a1157dd7b92d4d7944b0f810d2dca9c059b89e0e6cc82b7c6`  
		Last Modified: Thu, 21 Feb 2019 23:01:22 GMT  
		Size: 8.3 MB (8263335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d8130fe5c5f794945402aac278637ed853959ddb2bdb904aba11e56a7155cc7`  
		Last Modified: Thu, 21 Feb 2019 23:01:20 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54f452cd908457f4b3f27a57f0201fd27e14deb21af84c63356cae3279b8fb1b`  
		Last Modified: Thu, 21 Feb 2019 23:01:20 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
