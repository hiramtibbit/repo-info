## `redis:latest`

```console
$ docker pull redis@sha256:e549a30b3c31e6305b973e0d9113a3d38d60566708137af9ed7cbdce5650c5cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redis:latest` - linux; amd64

```console
$ docker pull redis@sha256:2720a72fb05febf7994e422b7cd327a031dcca2863a808e2825bf3cbb8d4c804
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35224772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3e3588af5178bae2c8ffdbfa227c7d0305518d3821a71615c14ffb8643d7eb3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 04:49:35 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 04:49:35 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 04:49:51 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 00:47:29 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 00:47:29 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 00:47:29 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 00:48:39 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 16 May 2019 00:48:40 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 00:48:41 GMT
VOLUME [/data]
# Thu, 16 May 2019 00:48:41 GMT
WORKDIR /data
# Thu, 16 May 2019 00:48:41 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 16 May 2019 00:48:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:48:41 GMT
EXPOSE 6379
# Thu, 16 May 2019 00:48:42 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:171658c5966df12c2adc35727b4261d6c4a6e69d386d1cf4f9114fca9b74b5a6`  
		Last Modified: Wed, 08 May 2019 04:55:45 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbef10bd7a65862f2b28ebbf91c566752931d823483d4c6854c11a1fac6b12e7`  
		Last Modified: Wed, 08 May 2019 04:55:45 GMT  
		Size: 941.4 KB (941364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b0b11956c7210838cbb4ab1a9f5083a646b313f6a8f4f89b5414d3008014c8c`  
		Last Modified: Thu, 16 May 2019 00:52:57 GMT  
		Size: 11.8 MB (11791799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09dbd716637eb4357876adc2398d0e1fe2b98afb7003b3099e5362c10eff9628`  
		Last Modified: Thu, 16 May 2019 00:52:54 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09046fd44816fc8bcb817fd60b854d18f5c89b6e06cfff7d08670376b1c9074`  
		Last Modified: Thu, 16 May 2019 00:52:54 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; arm variant v5

```console
$ docker pull redis@sha256:05f98dbb3ef8eb53566a46a6adf5514394fa29120b0033cc9e30d1aea41fb8a6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.6 MB (33550061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d613ca9335d852802284ef79af77a56478678ea2709eb67a8284fb95b17c8482`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 08:53:38 GMT
ADD file:d9cc007a953434e1439cc534f397967f4f0f1bf149f1288a52f6209eca436852 in / 
# Wed, 08 May 2019 08:53:39 GMT
CMD ["bash"]
# Wed, 08 May 2019 09:44:59 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 09:44:59 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 09:45:28 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 00:48:30 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 00:48:31 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 00:48:31 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 00:49:39 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 16 May 2019 00:49:42 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 00:49:42 GMT
VOLUME [/data]
# Thu, 16 May 2019 00:49:43 GMT
WORKDIR /data
# Thu, 16 May 2019 00:49:43 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 16 May 2019 00:49:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:49:44 GMT
EXPOSE 6379
# Thu, 16 May 2019 00:49:45 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f23f9ce99dc288927adafc8d503252a16b6ea2b40c9cb0dca688223c56bd0235`  
		Last Modified: Wed, 08 May 2019 08:59:29 GMT  
		Size: 21.2 MB (21155863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ac9042d288dd3256571141d375b77cd76ad30099bb2dc13f80e91fbf472e6b1`  
		Last Modified: Wed, 08 May 2019 09:47:45 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e2a42a5237467b8424f4e6421ff0a721a0f135a647799991c350c08aca04400`  
		Last Modified: Wed, 08 May 2019 09:47:45 GMT  
		Size: 931.2 KB (931193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b35e4cd73fac730f62773e04644c7ea42c04a1dbd7f0b3588baa46e37e426cd4`  
		Last Modified: Thu, 16 May 2019 00:50:17 GMT  
		Size: 11.5 MB (11460720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d68ab7a056a41635f692347b21a08c379e94abed92b3b387efd12419bf671b0d`  
		Last Modified: Thu, 16 May 2019 00:50:14 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c18de47fb4cd88147ad8c55593e13f29a439acc06cec69c3e8abf45f140575a`  
		Last Modified: Thu, 16 May 2019 00:50:14 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; arm variant v7

```console
$ docker pull redis@sha256:45027d4f22fca31c1a341b1d168f71d36615df5bb4d3840117e4cc7a80194c0e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.3 MB (31347653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61c27474610c8b324d42968497d1a8f07b158821cfcb28d9de54b8c8eb94d2cd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 12:03:54 GMT
ADD file:7813549b5e7862c4d5ecec9e7d8da27b520dd2cc1433e66637c57bb695d4f55a in / 
# Wed, 08 May 2019 12:03:54 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:54:08 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 14:54:08 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 14:54:32 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 00:01:33 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 00:01:33 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 00:01:34 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 00:02:35 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 16 May 2019 00:02:37 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 00:02:37 GMT
VOLUME [/data]
# Thu, 16 May 2019 00:02:38 GMT
WORKDIR /data
# Thu, 16 May 2019 00:02:38 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 16 May 2019 00:02:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:02:39 GMT
EXPOSE 6379
# Thu, 16 May 2019 00:02:40 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:b0727b1ec48ef8920082aec023c050c83b563ae08080d9951d68fba55934bbd6`  
		Last Modified: Wed, 08 May 2019 12:10:01 GMT  
		Size: 19.3 MB (19276216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d04ed9d6e5c55be71a7578af699db21acfa7d9dd81dc0feefea5ab6c7fc9d3`  
		Last Modified: Wed, 08 May 2019 14:57:14 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73d7b0643ad1873b502f90a920e652822474851a731a233a0be7dafee3fb1bcc`  
		Last Modified: Wed, 08 May 2019 14:57:14 GMT  
		Size: 915.8 KB (915827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88e16cba97d24e33a673f3b3b6c2333783f2a309a8cdee47555e2b79ab44b630`  
		Last Modified: Thu, 16 May 2019 00:04:23 GMT  
		Size: 11.2 MB (11153327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9c225bcdc75e993c3c97cc0336d03eead391af26eeade2f1ba733eb40bdf6cf`  
		Last Modified: Thu, 16 May 2019 00:04:20 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54475dfedeaadc109235cff1214f522ae9ee8ca9f563e7bf4bd2d23e46fa2619`  
		Last Modified: Thu, 16 May 2019 00:04:20 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:77859ef1211d65e314a95782c90dfaa4bd43cf36dfdac9c6ecddcaf4c55dd01c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.9 MB (32850031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78a4e737c0a3806823fa6d9ba1d930462f362feeb7a8dfbf3087f250fe29e9e7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Thu, 16 May 2019 01:04:52 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Thu, 16 May 2019 01:04:52 GMT
ENV GOSU_VERSION=1.10
# Thu, 16 May 2019 01:05:35 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 01:05:35 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 01:05:36 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 01:05:37 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 01:07:17 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 16 May 2019 01:07:22 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 01:07:22 GMT
VOLUME [/data]
# Thu, 16 May 2019 01:07:23 GMT
WORKDIR /data
# Thu, 16 May 2019 01:07:25 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 16 May 2019 01:07:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 01:07:26 GMT
EXPOSE 6379
# Thu, 16 May 2019 01:07:27 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b47765258d397f39f0ca0d0b06dbc96995d2b8e7ed2c6961982cbea83cbbf52`  
		Last Modified: Thu, 16 May 2019 01:12:19 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6ef2ae43b989ae901049515810f82bcb828d20239bc7bad82eca8de79328be3`  
		Last Modified: Thu, 16 May 2019 01:12:20 GMT  
		Size: 908.0 KB (907958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c0c86fd51dc6871a6a999b3e3ca91bd5788f4bda24ef5bdd4c1b0e1d2eeb30`  
		Last Modified: Thu, 16 May 2019 01:12:23 GMT  
		Size: 11.6 MB (11605963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3458ae93cdfc79a80922a5cdb500acd76a5291e1b0cb0a0ce4db3dc3bc3e2e65`  
		Last Modified: Thu, 16 May 2019 01:12:19 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b95cf35341c8570b208e5bdbac3ce0b9d882815aa12eea27deeb805f34eb4ee`  
		Last Modified: Thu, 16 May 2019 01:12:19 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; 386

```console
$ docker pull redis@sha256:eac0c7120e689fc18c90c8c607740c28a504b4220190064e9857be99c291fd49
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35244514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f1a80a6e6be91424438906acd0a53d336b4023f09bdd093e6cee02cb055daf6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:27:13 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 19:27:14 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 19:27:29 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 02:09:32 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 02:09:33 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 02:09:33 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 02:10:37 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 16 May 2019 02:10:38 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 02:10:38 GMT
VOLUME [/data]
# Thu, 16 May 2019 02:10:38 GMT
WORKDIR /data
# Thu, 16 May 2019 02:10:38 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 16 May 2019 02:10:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 02:10:39 GMT
EXPOSE 6379
# Thu, 16 May 2019 02:10:39 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a33b9d5023cb64a3e2105aa585763e0f894f9c8bad0cd7255f4270ca658cb230`  
		Last Modified: Wed, 08 May 2019 19:29:41 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd525c34aa87726465ac825c4e2672a834143ab46dcc2281b78c8cee8040c6d2`  
		Last Modified: Wed, 08 May 2019 19:29:41 GMT  
		Size: 920.2 KB (920170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:308c994448375c571c22b1be21a1484f72560830c9ff2b5a646c02cb9f82874c`  
		Last Modified: Thu, 16 May 2019 02:12:18 GMT  
		Size: 11.2 MB (11201252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be9098a426ff04cb90c2e856152adb7fa4de027f72972d90434a0b09f92046b9`  
		Last Modified: Thu, 16 May 2019 02:12:16 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0781da06b9d68188b8be7568feed3fbad46a0b7f34a53ca3bd1b2574edaec102`  
		Last Modified: Thu, 16 May 2019 02:12:16 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; ppc64le

```console
$ docker pull redis@sha256:a966f78de2cfc0de4f0c6fe6203c40ca9a79e0e0620d13b9ce10e885f64cbe92
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.6 MB (35639680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1279708270c90148f33777b051c1556aadd5a3e138f258469ddde2c80e3ec5dc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 09:05:46 GMT
ADD file:fa23694e2ef3b1ff3ac824d7d18d6951725f7f1ebfd5350392edd91f6b90d89e in / 
# Wed, 08 May 2019 09:05:50 GMT
CMD ["bash"]
# Wed, 08 May 2019 13:53:45 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 13:53:49 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 13:57:13 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 00:46:09 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 00:46:11 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 00:46:12 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 00:48:12 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 16 May 2019 00:48:19 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 00:48:22 GMT
VOLUME [/data]
# Thu, 16 May 2019 00:48:24 GMT
WORKDIR /data
# Thu, 16 May 2019 00:48:25 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 16 May 2019 00:48:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:48:29 GMT
EXPOSE 6379
# Thu, 16 May 2019 00:48:31 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:64bfe8794b280a764f2e07634dce2977621d140ae17fb34a03635710e84c3dfb`  
		Last Modified: Wed, 08 May 2019 09:26:17 GMT  
		Size: 22.7 MB (22744914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff669625b2edb1e0931d0870b1809e38cff4dcef53234334cd3cf4de1c49c7ce`  
		Last Modified: Wed, 08 May 2019 14:09:36 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e169e96a284a165ec6a0775d6b3aeeb4d6a67a0f098f207acbb7ce857a3fd50d`  
		Last Modified: Wed, 08 May 2019 14:09:37 GMT  
		Size: 910.1 KB (910104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:515eff492ce00a96d2692bdc05dfa2b16c6578a8b63c7a62710df32ca5d5b0dc`  
		Last Modified: Thu, 16 May 2019 00:50:57 GMT  
		Size: 12.0 MB (11982367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a335ec7cf18608aae558a248b285b9341758ca61106b87ac3f47cd149c0b0e23`  
		Last Modified: Thu, 16 May 2019 00:50:54 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c075c08ab286e874675271621ad72476e811de183eddc51b0f91d0c4589876a`  
		Last Modified: Thu, 16 May 2019 00:50:54 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; s390x

```console
$ docker pull redis@sha256:0b03c9cf4a1a67b252539785c0474b3a90ab181ec5efbafce23d038a83b37e97
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.5 MB (35523010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5eb89ced0c47db902fb8d1c2adea1a14abbae504a1740e023873ff84ea7cb954`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 11:47:01 GMT
ADD file:94f3707604bb7173eb9661df1719a395e39e97c32d08f5fc146b79dcee237fd8 in / 
# Wed, 08 May 2019 11:47:01 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:38:45 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 14:38:45 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 14:39:38 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 00:59:10 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 00:59:10 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 00:59:11 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 01:00:56 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 16 May 2019 01:00:58 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 01:00:58 GMT
VOLUME [/data]
# Thu, 16 May 2019 01:00:59 GMT
WORKDIR /data
# Thu, 16 May 2019 01:00:59 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 16 May 2019 01:01:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 01:01:00 GMT
EXPOSE 6379
# Thu, 16 May 2019 01:01:01 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e9681d6b3f0fb55b5da73b567906eaac580ed39b3428e95f839a34da054b5e37`  
		Last Modified: Wed, 08 May 2019 11:52:38 GMT  
		Size: 22.3 MB (22338869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d667d9ec29251877608296ac4170b4d495aa961dd3297c6f8379f4df1f68aa98`  
		Last Modified: Wed, 08 May 2019 14:46:52 GMT  
		Size: 1.8 KB (1756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa3467c4b72354e2f6a442998daf9a3501b37844ed98edc512e0cfc147185c4b`  
		Last Modified: Wed, 08 May 2019 14:46:53 GMT  
		Size: 927.0 KB (926960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f45affb2cff9ff50d2e40e5547c22524a2bf0264b11f01fe9370d69899e1d212`  
		Last Modified: Thu, 16 May 2019 01:04:45 GMT  
		Size: 12.3 MB (12254908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0d4090e99bae7a3a0e9030cf7d3764bbca2be43820f45567e2d2a8e11f41c8c`  
		Last Modified: Thu, 16 May 2019 01:04:39 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59b291a062e3d7c8d2e45c55bfd6e9faee581df29059ee8d5da4039b42b1f572`  
		Last Modified: Thu, 16 May 2019 01:04:39 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
