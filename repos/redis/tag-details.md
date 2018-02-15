<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `redis`

-	[`redis:3`](#redis3)
-	[`redis:3.2`](#redis32)
-	[`redis:3.2.11`](#redis3211)
-	[`redis:3.2.11-32bit`](#redis3211-32bit)
-	[`redis:3.2.11-alpine`](#redis3211-alpine)
-	[`redis:3.2-32bit`](#redis32-32bit)
-	[`redis:3.2-alpine`](#redis32-alpine)
-	[`redis:32bit`](#redis32bit)
-	[`redis:3-32bit`](#redis3-32bit)
-	[`redis:3-alpine`](#redis3-alpine)
-	[`redis:4`](#redis4)
-	[`redis:4.0`](#redis40)
-	[`redis:4.0-32bit`](#redis40-32bit)
-	[`redis:4.0.8`](#redis408)
-	[`redis:4.0.8-32bit`](#redis408-32bit)
-	[`redis:4.0.8-alpine`](#redis408-alpine)
-	[`redis:4.0-alpine`](#redis40-alpine)
-	[`redis:4-32bit`](#redis4-32bit)
-	[`redis:4-alpine`](#redis4-alpine)
-	[`redis:alpine`](#redisalpine)
-	[`redis:latest`](#redislatest)

## `redis:3`

```console
$ docker pull redis@sha256:670f3377c1ab7438aa4838c0506cf2ebd4b1101b2c775ef28f2745d1e1d4ed75
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

### `redis:3` - linux; amd64

```console
$ docker pull redis@sha256:eb842ee0532985ab92f8e18b5fd981ba6f7214b656fd90110d98ab2fc8bb6f9f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36853652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3859b0a6622aef3cb3c28dbdf563d10db479622fb093d929d6239b81ed848166`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 15 Feb 2018 01:46:20 GMT
ADD file:a0f72eb6710fe45aff98d40665ed5c106a992b2b0d1d57a1fb6ca98c4aa0f0a6 in / 
# Thu, 15 Feb 2018 01:46:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:50:37 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Thu, 15 Feb 2018 07:50:37 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 07:50:59 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 07:50:59 GMT
ENV REDIS_VERSION=3.2.11
# Thu, 15 Feb 2018 07:51:00 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Thu, 15 Feb 2018 07:51:00 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Thu, 15 Feb 2018 07:51:40 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 07:51:50 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 15 Feb 2018 07:51:50 GMT
VOLUME [/data]
# Thu, 15 Feb 2018 07:51:50 GMT
WORKDIR /data
# Thu, 15 Feb 2018 07:51:51 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Thu, 15 Feb 2018 07:51:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 07:51:51 GMT
EXPOSE 6379/tcp
# Thu, 15 Feb 2018 07:51:51 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d2ca7eff5948133e4316d463c56948af87b4d4d09848ee0f8b698d3549a7a7dd`  
		Last Modified: Thu, 15 Feb 2018 02:18:31 GMT  
		Size: 30.1 MB (30122379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d1a2245aaa6e74708fd6c58cf1ac19f9db2d2031107c25d20b0ac06d11f2b7c`  
		Last Modified: Thu, 15 Feb 2018 08:17:00 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a483dd2a28bbd7835cda9c014266c0dfcee502ef67e5d9a4e090c807b3a1717`  
		Last Modified: Thu, 15 Feb 2018 08:17:01 GMT  
		Size: 981.7 KB (981722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a393fdb1ed0b5800468de4536c418dd6a02e9f664c55ade84ef72bec7a7939df`  
		Last Modified: Thu, 15 Feb 2018 08:17:02 GMT  
		Size: 5.7 MB (5746962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88c7e4d61bf3713a47f15588154bfcb57007b8421a2dc30ccf56c36657b0c7a5`  
		Last Modified: Thu, 15 Feb 2018 08:17:00 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73875ef81fb384ae97041d0b4df8f27859489811306ce1dc5fe37f0028419537`  
		Last Modified: Thu, 15 Feb 2018 08:17:00 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3` - linux; arm variant v5

```console
$ docker pull redis@sha256:37603968046fb27197285c6668fa155714be6807c927488cee2646013fb9b5fb
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.0 MB (35038089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:778b75e5bc2481d515a93e763463a0a0063007c67f65ad6fab23d2e2065e2c21`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 12 Dec 2017 20:57:33 GMT
ADD file:29d0e44ebcc6f8dc2cfbc86c5034380677d263e9eec27a22ba045e0810836f81 in / 
# Tue, 12 Dec 2017 20:57:34 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 23:14:35 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 12 Dec 2017 23:14:35 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 23:15:21 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Dec 2017 23:15:21 GMT
ENV REDIS_VERSION=3.2.11
# Tue, 12 Dec 2017 23:15:21 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Tue, 12 Dec 2017 23:15:21 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Tue, 12 Dec 2017 23:16:20 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Dec 2017 23:16:21 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 12 Dec 2017 23:16:21 GMT
VOLUME [/data]
# Tue, 12 Dec 2017 23:16:21 GMT
WORKDIR /data
# Tue, 12 Dec 2017 23:16:22 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 12 Dec 2017 23:16:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 23:16:22 GMT
EXPOSE 6379/tcp
# Tue, 12 Dec 2017 23:16:23 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:51e696f556166d0e25b3b27c824c4aafbddd5adcfd3f5186c09707f7baa3b312`  
		Last Modified: Tue, 12 Dec 2017 21:07:41 GMT  
		Size: 28.4 MB (28423526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0206b9cb3a70c21180f01a2532fe2c5a436a48e5fc5d8b939ba69b7d61c80a3a`  
		Last Modified: Tue, 12 Dec 2017 23:18:09 GMT  
		Size: 2.1 KB (2075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f18f2f5d7b2619f7683612c23f23c54c1f09a9ac9f5714f36e1ff47dffac347`  
		Last Modified: Tue, 12 Dec 2017 23:18:13 GMT  
		Size: 971.2 KB (971228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f72ffb738c3d9596dcf069b20f5280bf2686880d01941181401d0d9eabac5a84`  
		Last Modified: Tue, 12 Dec 2017 23:18:11 GMT  
		Size: 5.6 MB (5640722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a0b1a1b03d4edaff8f2c997c21c0a6fd49e6c92e7d94dacc7398de2a700f91b`  
		Last Modified: Tue, 12 Dec 2017 23:18:09 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc62eb021289c9e73533af5af7ae5fa505c846bd52845aaa1908a0e384fd8241`  
		Last Modified: Tue, 12 Dec 2017 23:18:10 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3` - linux; arm variant v7

```console
$ docker pull redis@sha256:03413f3e7e5c06a061fa5bf655fc565ceaa0e0893232ea7cd8a3ab6e4a313908
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.7 MB (32716875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ac388dc185f90da31cc2fec213c66361606649014b348f07b80c7a8ae17ab5b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 12 Dec 2017 13:27:47 GMT
ADD file:1f5de474caa19da14d698a3f9c3d161abfa1e19e258a596d64f3dfc9e2f17686 in / 
# Tue, 12 Dec 2017 13:27:47 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 16:40:56 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 12 Dec 2017 16:40:56 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 16:41:50 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Dec 2017 16:41:58 GMT
ENV REDIS_VERSION=3.2.11
# Tue, 12 Dec 2017 16:41:59 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Tue, 12 Dec 2017 16:41:59 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Tue, 12 Dec 2017 16:42:59 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Dec 2017 16:43:00 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 12 Dec 2017 16:43:00 GMT
VOLUME [/data]
# Tue, 12 Dec 2017 16:43:01 GMT
WORKDIR /data
# Tue, 12 Dec 2017 16:43:01 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 12 Dec 2017 16:43:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 16:43:02 GMT
EXPOSE 6379/tcp
# Tue, 12 Dec 2017 16:43:02 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:4b9c0f1a415433a98643bdda391dcf4fe5d9653fc3ed3845c7ac1be99eb43399`  
		Last Modified: Tue, 12 Dec 2017 13:39:52 GMT  
		Size: 26.3 MB (26282714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d6835fe576543df3c87405f33db99aa1f040e3f241c5e5d72ffb416953902b8`  
		Last Modified: Tue, 12 Dec 2017 16:44:59 GMT  
		Size: 2.1 KB (2076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a11c10ad12017478481b1755839ece7c69945ee8c04b97bb10909db85e4ed338`  
		Last Modified: Tue, 12 Dec 2017 16:44:59 GMT  
		Size: 956.1 KB (956126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c923304459ee49e05d92267e1c7b79a67b9356b267a7c9d56d1e14744b6f0be`  
		Last Modified: Tue, 12 Dec 2017 16:45:01 GMT  
		Size: 5.5 MB (5475423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:811c5207f774170cc6c7c5d91c059692b6a57544880e062747daf2223ca6e0d1`  
		Last Modified: Tue, 12 Dec 2017 16:44:59 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a03df6c327d30bd1c768e0c668a5cab45ca50c012d7f7ad5e5f7657977b31bb3`  
		Last Modified: Tue, 12 Dec 2017 16:45:00 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:9bc7e1a59f621544d2ca683fa6de22e638108eb093a1a431354b7b343f4a3de0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34280616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f24f05972898e03959b8e43213ceb92b9e023871ff6e4d988b8c978d9dc8985`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 12 Dec 2017 18:26:03 GMT
ADD file:da6be268a98d89a43438155746ca6d08f474e9aa85c64699f50445352b46c348 in / 
# Tue, 12 Dec 2017 18:26:04 GMT
CMD ["bash"]
# Wed, 20 Dec 2017 13:25:39 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 20 Dec 2017 13:25:40 GMT
ENV GOSU_VERSION=1.10
# Wed, 20 Dec 2017 13:26:36 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 20 Dec 2017 13:26:37 GMT
ENV REDIS_VERSION=3.2.11
# Wed, 20 Dec 2017 13:26:38 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Wed, 20 Dec 2017 13:26:38 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Wed, 20 Dec 2017 13:28:12 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 20 Dec 2017 13:28:14 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Dec 2017 13:28:14 GMT
VOLUME [/data]
# Wed, 20 Dec 2017 13:28:15 GMT
WORKDIR /data
# Wed, 20 Dec 2017 13:28:16 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 20 Dec 2017 13:28:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Dec 2017 13:28:17 GMT
EXPOSE 6379/tcp
# Wed, 20 Dec 2017 13:28:18 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:8e9df51286bbe86a4cb3ffe54327681ab34b9b6d62c3f4e187ffc677125e4780`  
		Last Modified: Tue, 12 Dec 2017 18:41:37 GMT  
		Size: 27.5 MB (27480582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:075c247daad6bb45a002c0a24377355e91aef8e96dbc920ef85b5f95dba5d597`  
		Last Modified: Wed, 20 Dec 2017 13:31:04 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:671b4ef947e36f312884f8d49f560e5191e57a0e583820b56b530e7ff03d771f`  
		Last Modified: Wed, 20 Dec 2017 13:31:04 GMT  
		Size: 948.7 KB (948652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:247873c71d9824af8101e2d1a196e62f8cd2411a1c0fd4313fc0bcf928165c03`  
		Last Modified: Wed, 20 Dec 2017 13:31:06 GMT  
		Size: 5.8 MB (5848781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad73d336373dacee161522c0b2a44b9f27dbc93edeb0852b3aa4d779ae99792`  
		Last Modified: Wed, 20 Dec 2017 13:31:04 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:914abc7dec1c8280f3995bd87bd291e37a233d14d3cffe9dd0e0fcaf0c5a0414`  
		Last Modified: Wed, 20 Dec 2017 13:31:04 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3` - linux; 386

```console
$ docker pull redis@sha256:7c83145573d05cb77c6e72ac8c14456e1729fe9ff48b409a788ac33eaa16f15d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.5 MB (36455053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:190c3c26f480cf9fbeacdc38a8cc46b9f8789fa3965763760e723ef5375b9dae`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 12 Dec 2017 14:21:05 GMT
ADD file:d31765999b40e32b628f3ec72b762f007f4918b08c507484e425adc990c87c26 in / 
# Tue, 12 Dec 2017 14:21:05 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:03:38 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 12 Dec 2017 21:03:38 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 21:04:16 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Dec 2017 21:04:16 GMT
ENV REDIS_VERSION=3.2.11
# Tue, 12 Dec 2017 21:04:16 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Tue, 12 Dec 2017 21:04:16 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Tue, 12 Dec 2017 21:05:33 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Dec 2017 21:05:34 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 12 Dec 2017 21:05:35 GMT
VOLUME [/data]
# Tue, 12 Dec 2017 21:05:35 GMT
WORKDIR /data
# Tue, 12 Dec 2017 21:05:36 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 12 Dec 2017 21:05:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 21:05:36 GMT
EXPOSE 6379/tcp
# Tue, 12 Dec 2017 21:05:37 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6b323e7c684c46ec9e577d3acb692c7e1c0c26ffbea6a4530dbe784a7eedf0f7`  
		Last Modified: Tue, 12 Dec 2017 14:49:35 GMT  
		Size: 30.3 MB (30266257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00b36a22b0f548b632d8bc28aa752a7c776351e3fa3c167b13901a9a648dff0f`  
		Last Modified: Tue, 12 Dec 2017 21:11:34 GMT  
		Size: 2.1 KB (2074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:625bd220ae9238fdcd1a3e9db810236dc47502995b93d54b4a7bc5f474508112`  
		Last Modified: Tue, 12 Dec 2017 21:11:34 GMT  
		Size: 960.8 KB (960808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62f091c640c28a1f85ac09116d9268ce7199c2e3c29cf90f6cdd678df40b317a`  
		Last Modified: Tue, 12 Dec 2017 21:11:35 GMT  
		Size: 5.2 MB (5225413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f221a91123e3d61c631121d8acb3e9808ee75a4f472dfae0986239da6b4fb2de`  
		Last Modified: Tue, 12 Dec 2017 21:11:33 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c405b1692002fda0a8a78e6a408a3241583605523ee350d33e15880a379d85b`  
		Last Modified: Tue, 12 Dec 2017 21:11:33 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3` - linux; ppc64le

```console
$ docker pull redis@sha256:3f8ee59ac0c9acddb544d4e12b4b451e71576db4a8605b62302abe38a4310ae5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.3 MB (36255618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34ebec9c6e94829b7bca23df13b67a9db3dd13087b19c6ec9b4adaf36f638cd3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 15 Feb 2018 01:34:17 GMT
ADD file:f3263f57a7d4fe956087a3f9803a0f8fe9224b2704ac54c141da2d6a166c737b in / 
# Thu, 15 Feb 2018 01:34:20 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 05:24:53 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Thu, 15 Feb 2018 05:25:04 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 05:27:44 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 05:27:46 GMT
ENV REDIS_VERSION=3.2.11
# Thu, 15 Feb 2018 05:27:47 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Thu, 15 Feb 2018 05:27:48 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Thu, 15 Feb 2018 05:31:01 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 05:31:04 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 15 Feb 2018 05:31:05 GMT
VOLUME [/data]
# Thu, 15 Feb 2018 05:31:07 GMT
WORKDIR /data
# Thu, 15 Feb 2018 05:31:08 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Thu, 15 Feb 2018 05:31:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 05:31:12 GMT
EXPOSE 6379/tcp
# Thu, 15 Feb 2018 05:31:14 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:55e44e991a765aac112a6c9b4f8933a727d8c3fdfd7d5138173ff62b0624fb0c`  
		Last Modified: Thu, 15 Feb 2018 01:42:40 GMT  
		Size: 29.3 MB (29311830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df81c6e0db50d64e980a81b82127c9ce7a3f8e6de8ceda534a434125c95a25b1`  
		Last Modified: Thu, 15 Feb 2018 05:35:40 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:876fab0967ab2fac268ea466c4ade4f669005f7171aba968b8e0e2edcf38e3d4`  
		Last Modified: Thu, 15 Feb 2018 05:35:41 GMT  
		Size: 950.7 KB (950706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f2a8426421a1f1f476b277e581e3a17bbc3b79e8c8c07eafd0ff65b35c76336`  
		Last Modified: Thu, 15 Feb 2018 05:35:42 GMT  
		Size: 6.0 MB (5990446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:109457f5d09c32ab53bfe8ebaff7187bb243a499b2a83791adc6e4cb06652657`  
		Last Modified: Thu, 15 Feb 2018 05:35:40 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d7b0508333232e0da46a89b1f334ed562e683fe1adb0541863826e9b6d8ad9f`  
		Last Modified: Thu, 15 Feb 2018 05:35:40 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3` - linux; s390x

```console
$ docker pull redis@sha256:9b3d1951b6cbc96faa9fe52c0e3d2876e45cc6a9e727712cdb452083bcfc74c3
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.4 MB (37438193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f64ceb86766569de9cfb8e4e21615a3ef31d26e0eb1f7c99690a9189397c22f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 12 Dec 2017 06:23:05 GMT
ADD file:68877912183dff16971679b6264399a76d678986d7cf02bbba2e006d91077cf3 in / 
# Tue, 12 Dec 2017 06:23:06 GMT
CMD ["bash"]
# Sun, 07 Jan 2018 09:26:06 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sun, 07 Jan 2018 09:26:06 GMT
ENV GOSU_VERSION=1.10
# Sun, 07 Jan 2018 09:26:33 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sun, 07 Jan 2018 09:26:34 GMT
ENV REDIS_VERSION=3.2.11
# Sun, 07 Jan 2018 09:26:34 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Sun, 07 Jan 2018 09:26:34 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Sun, 07 Jan 2018 09:27:18 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sun, 07 Jan 2018 09:27:19 GMT
RUN mkdir /data && chown redis:redis /data
# Sun, 07 Jan 2018 09:27:19 GMT
VOLUME [/data]
# Sun, 07 Jan 2018 09:27:19 GMT
WORKDIR /data
# Sun, 07 Jan 2018 09:27:20 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sun, 07 Jan 2018 09:27:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 07 Jan 2018 09:27:20 GMT
EXPOSE 6379/tcp
# Sun, 07 Jan 2018 09:27:20 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:7ef9b5c13de473137c3ae16d379a5f152b59921d4e96887c06f9e1291af84691`  
		Last Modified: Thu, 14 Dec 2017 00:53:34 GMT  
		Size: 30.3 MB (30293639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608e779e09f2eff9338668b6f32d30ad6db5824db6e05a40163baa53af8a4732`  
		Last Modified: Sun, 07 Jan 2018 09:28:52 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca3bc2bf99d2d3b8b7af50eabf05bcd385693d216437119560e8b76a250123d1`  
		Last Modified: Sun, 07 Jan 2018 09:28:52 GMT  
		Size: 966.9 KB (966920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b260990b3cf7df1f5163c322ff8a9382237c8d8adf8e7e8d0c2b1f3950261a5c`  
		Last Modified: Sun, 07 Jan 2018 09:28:54 GMT  
		Size: 6.2 MB (6175037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52e0e50debc8588fe01746766889ac48c765f1ce6897997b4d34a0feaa4bad3f`  
		Last Modified: Sun, 07 Jan 2018 09:28:52 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5d0ad78867e44df3ef424b46d3a0d6a0ac64cbaeda7bdb7f93960f38d6fcb21`  
		Last Modified: Sun, 07 Jan 2018 09:28:52 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2`

```console
$ docker pull redis@sha256:670f3377c1ab7438aa4838c0506cf2ebd4b1101b2c775ef28f2745d1e1d4ed75
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

### `redis:3.2` - linux; amd64

```console
$ docker pull redis@sha256:eb842ee0532985ab92f8e18b5fd981ba6f7214b656fd90110d98ab2fc8bb6f9f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36853652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3859b0a6622aef3cb3c28dbdf563d10db479622fb093d929d6239b81ed848166`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 15 Feb 2018 01:46:20 GMT
ADD file:a0f72eb6710fe45aff98d40665ed5c106a992b2b0d1d57a1fb6ca98c4aa0f0a6 in / 
# Thu, 15 Feb 2018 01:46:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:50:37 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Thu, 15 Feb 2018 07:50:37 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 07:50:59 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 07:50:59 GMT
ENV REDIS_VERSION=3.2.11
# Thu, 15 Feb 2018 07:51:00 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Thu, 15 Feb 2018 07:51:00 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Thu, 15 Feb 2018 07:51:40 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 07:51:50 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 15 Feb 2018 07:51:50 GMT
VOLUME [/data]
# Thu, 15 Feb 2018 07:51:50 GMT
WORKDIR /data
# Thu, 15 Feb 2018 07:51:51 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Thu, 15 Feb 2018 07:51:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 07:51:51 GMT
EXPOSE 6379/tcp
# Thu, 15 Feb 2018 07:51:51 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d2ca7eff5948133e4316d463c56948af87b4d4d09848ee0f8b698d3549a7a7dd`  
		Last Modified: Thu, 15 Feb 2018 02:18:31 GMT  
		Size: 30.1 MB (30122379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d1a2245aaa6e74708fd6c58cf1ac19f9db2d2031107c25d20b0ac06d11f2b7c`  
		Last Modified: Thu, 15 Feb 2018 08:17:00 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a483dd2a28bbd7835cda9c014266c0dfcee502ef67e5d9a4e090c807b3a1717`  
		Last Modified: Thu, 15 Feb 2018 08:17:01 GMT  
		Size: 981.7 KB (981722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a393fdb1ed0b5800468de4536c418dd6a02e9f664c55ade84ef72bec7a7939df`  
		Last Modified: Thu, 15 Feb 2018 08:17:02 GMT  
		Size: 5.7 MB (5746962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88c7e4d61bf3713a47f15588154bfcb57007b8421a2dc30ccf56c36657b0c7a5`  
		Last Modified: Thu, 15 Feb 2018 08:17:00 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73875ef81fb384ae97041d0b4df8f27859489811306ce1dc5fe37f0028419537`  
		Last Modified: Thu, 15 Feb 2018 08:17:00 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2` - linux; arm variant v5

```console
$ docker pull redis@sha256:37603968046fb27197285c6668fa155714be6807c927488cee2646013fb9b5fb
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.0 MB (35038089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:778b75e5bc2481d515a93e763463a0a0063007c67f65ad6fab23d2e2065e2c21`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 12 Dec 2017 20:57:33 GMT
ADD file:29d0e44ebcc6f8dc2cfbc86c5034380677d263e9eec27a22ba045e0810836f81 in / 
# Tue, 12 Dec 2017 20:57:34 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 23:14:35 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 12 Dec 2017 23:14:35 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 23:15:21 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Dec 2017 23:15:21 GMT
ENV REDIS_VERSION=3.2.11
# Tue, 12 Dec 2017 23:15:21 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Tue, 12 Dec 2017 23:15:21 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Tue, 12 Dec 2017 23:16:20 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Dec 2017 23:16:21 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 12 Dec 2017 23:16:21 GMT
VOLUME [/data]
# Tue, 12 Dec 2017 23:16:21 GMT
WORKDIR /data
# Tue, 12 Dec 2017 23:16:22 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 12 Dec 2017 23:16:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 23:16:22 GMT
EXPOSE 6379/tcp
# Tue, 12 Dec 2017 23:16:23 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:51e696f556166d0e25b3b27c824c4aafbddd5adcfd3f5186c09707f7baa3b312`  
		Last Modified: Tue, 12 Dec 2017 21:07:41 GMT  
		Size: 28.4 MB (28423526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0206b9cb3a70c21180f01a2532fe2c5a436a48e5fc5d8b939ba69b7d61c80a3a`  
		Last Modified: Tue, 12 Dec 2017 23:18:09 GMT  
		Size: 2.1 KB (2075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f18f2f5d7b2619f7683612c23f23c54c1f09a9ac9f5714f36e1ff47dffac347`  
		Last Modified: Tue, 12 Dec 2017 23:18:13 GMT  
		Size: 971.2 KB (971228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f72ffb738c3d9596dcf069b20f5280bf2686880d01941181401d0d9eabac5a84`  
		Last Modified: Tue, 12 Dec 2017 23:18:11 GMT  
		Size: 5.6 MB (5640722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a0b1a1b03d4edaff8f2c997c21c0a6fd49e6c92e7d94dacc7398de2a700f91b`  
		Last Modified: Tue, 12 Dec 2017 23:18:09 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc62eb021289c9e73533af5af7ae5fa505c846bd52845aaa1908a0e384fd8241`  
		Last Modified: Tue, 12 Dec 2017 23:18:10 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2` - linux; arm variant v7

```console
$ docker pull redis@sha256:03413f3e7e5c06a061fa5bf655fc565ceaa0e0893232ea7cd8a3ab6e4a313908
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.7 MB (32716875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ac388dc185f90da31cc2fec213c66361606649014b348f07b80c7a8ae17ab5b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 12 Dec 2017 13:27:47 GMT
ADD file:1f5de474caa19da14d698a3f9c3d161abfa1e19e258a596d64f3dfc9e2f17686 in / 
# Tue, 12 Dec 2017 13:27:47 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 16:40:56 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 12 Dec 2017 16:40:56 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 16:41:50 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Dec 2017 16:41:58 GMT
ENV REDIS_VERSION=3.2.11
# Tue, 12 Dec 2017 16:41:59 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Tue, 12 Dec 2017 16:41:59 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Tue, 12 Dec 2017 16:42:59 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Dec 2017 16:43:00 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 12 Dec 2017 16:43:00 GMT
VOLUME [/data]
# Tue, 12 Dec 2017 16:43:01 GMT
WORKDIR /data
# Tue, 12 Dec 2017 16:43:01 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 12 Dec 2017 16:43:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 16:43:02 GMT
EXPOSE 6379/tcp
# Tue, 12 Dec 2017 16:43:02 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:4b9c0f1a415433a98643bdda391dcf4fe5d9653fc3ed3845c7ac1be99eb43399`  
		Last Modified: Tue, 12 Dec 2017 13:39:52 GMT  
		Size: 26.3 MB (26282714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d6835fe576543df3c87405f33db99aa1f040e3f241c5e5d72ffb416953902b8`  
		Last Modified: Tue, 12 Dec 2017 16:44:59 GMT  
		Size: 2.1 KB (2076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a11c10ad12017478481b1755839ece7c69945ee8c04b97bb10909db85e4ed338`  
		Last Modified: Tue, 12 Dec 2017 16:44:59 GMT  
		Size: 956.1 KB (956126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c923304459ee49e05d92267e1c7b79a67b9356b267a7c9d56d1e14744b6f0be`  
		Last Modified: Tue, 12 Dec 2017 16:45:01 GMT  
		Size: 5.5 MB (5475423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:811c5207f774170cc6c7c5d91c059692b6a57544880e062747daf2223ca6e0d1`  
		Last Modified: Tue, 12 Dec 2017 16:44:59 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a03df6c327d30bd1c768e0c668a5cab45ca50c012d7f7ad5e5f7657977b31bb3`  
		Last Modified: Tue, 12 Dec 2017 16:45:00 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:9bc7e1a59f621544d2ca683fa6de22e638108eb093a1a431354b7b343f4a3de0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34280616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f24f05972898e03959b8e43213ceb92b9e023871ff6e4d988b8c978d9dc8985`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 12 Dec 2017 18:26:03 GMT
ADD file:da6be268a98d89a43438155746ca6d08f474e9aa85c64699f50445352b46c348 in / 
# Tue, 12 Dec 2017 18:26:04 GMT
CMD ["bash"]
# Wed, 20 Dec 2017 13:25:39 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 20 Dec 2017 13:25:40 GMT
ENV GOSU_VERSION=1.10
# Wed, 20 Dec 2017 13:26:36 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 20 Dec 2017 13:26:37 GMT
ENV REDIS_VERSION=3.2.11
# Wed, 20 Dec 2017 13:26:38 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Wed, 20 Dec 2017 13:26:38 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Wed, 20 Dec 2017 13:28:12 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 20 Dec 2017 13:28:14 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Dec 2017 13:28:14 GMT
VOLUME [/data]
# Wed, 20 Dec 2017 13:28:15 GMT
WORKDIR /data
# Wed, 20 Dec 2017 13:28:16 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 20 Dec 2017 13:28:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Dec 2017 13:28:17 GMT
EXPOSE 6379/tcp
# Wed, 20 Dec 2017 13:28:18 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:8e9df51286bbe86a4cb3ffe54327681ab34b9b6d62c3f4e187ffc677125e4780`  
		Last Modified: Tue, 12 Dec 2017 18:41:37 GMT  
		Size: 27.5 MB (27480582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:075c247daad6bb45a002c0a24377355e91aef8e96dbc920ef85b5f95dba5d597`  
		Last Modified: Wed, 20 Dec 2017 13:31:04 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:671b4ef947e36f312884f8d49f560e5191e57a0e583820b56b530e7ff03d771f`  
		Last Modified: Wed, 20 Dec 2017 13:31:04 GMT  
		Size: 948.7 KB (948652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:247873c71d9824af8101e2d1a196e62f8cd2411a1c0fd4313fc0bcf928165c03`  
		Last Modified: Wed, 20 Dec 2017 13:31:06 GMT  
		Size: 5.8 MB (5848781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad73d336373dacee161522c0b2a44b9f27dbc93edeb0852b3aa4d779ae99792`  
		Last Modified: Wed, 20 Dec 2017 13:31:04 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:914abc7dec1c8280f3995bd87bd291e37a233d14d3cffe9dd0e0fcaf0c5a0414`  
		Last Modified: Wed, 20 Dec 2017 13:31:04 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2` - linux; 386

```console
$ docker pull redis@sha256:7c83145573d05cb77c6e72ac8c14456e1729fe9ff48b409a788ac33eaa16f15d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.5 MB (36455053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:190c3c26f480cf9fbeacdc38a8cc46b9f8789fa3965763760e723ef5375b9dae`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 12 Dec 2017 14:21:05 GMT
ADD file:d31765999b40e32b628f3ec72b762f007f4918b08c507484e425adc990c87c26 in / 
# Tue, 12 Dec 2017 14:21:05 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:03:38 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 12 Dec 2017 21:03:38 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 21:04:16 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Dec 2017 21:04:16 GMT
ENV REDIS_VERSION=3.2.11
# Tue, 12 Dec 2017 21:04:16 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Tue, 12 Dec 2017 21:04:16 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Tue, 12 Dec 2017 21:05:33 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Dec 2017 21:05:34 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 12 Dec 2017 21:05:35 GMT
VOLUME [/data]
# Tue, 12 Dec 2017 21:05:35 GMT
WORKDIR /data
# Tue, 12 Dec 2017 21:05:36 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 12 Dec 2017 21:05:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 21:05:36 GMT
EXPOSE 6379/tcp
# Tue, 12 Dec 2017 21:05:37 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6b323e7c684c46ec9e577d3acb692c7e1c0c26ffbea6a4530dbe784a7eedf0f7`  
		Last Modified: Tue, 12 Dec 2017 14:49:35 GMT  
		Size: 30.3 MB (30266257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00b36a22b0f548b632d8bc28aa752a7c776351e3fa3c167b13901a9a648dff0f`  
		Last Modified: Tue, 12 Dec 2017 21:11:34 GMT  
		Size: 2.1 KB (2074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:625bd220ae9238fdcd1a3e9db810236dc47502995b93d54b4a7bc5f474508112`  
		Last Modified: Tue, 12 Dec 2017 21:11:34 GMT  
		Size: 960.8 KB (960808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62f091c640c28a1f85ac09116d9268ce7199c2e3c29cf90f6cdd678df40b317a`  
		Last Modified: Tue, 12 Dec 2017 21:11:35 GMT  
		Size: 5.2 MB (5225413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f221a91123e3d61c631121d8acb3e9808ee75a4f472dfae0986239da6b4fb2de`  
		Last Modified: Tue, 12 Dec 2017 21:11:33 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c405b1692002fda0a8a78e6a408a3241583605523ee350d33e15880a379d85b`  
		Last Modified: Tue, 12 Dec 2017 21:11:33 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2` - linux; ppc64le

```console
$ docker pull redis@sha256:3f8ee59ac0c9acddb544d4e12b4b451e71576db4a8605b62302abe38a4310ae5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.3 MB (36255618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34ebec9c6e94829b7bca23df13b67a9db3dd13087b19c6ec9b4adaf36f638cd3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 15 Feb 2018 01:34:17 GMT
ADD file:f3263f57a7d4fe956087a3f9803a0f8fe9224b2704ac54c141da2d6a166c737b in / 
# Thu, 15 Feb 2018 01:34:20 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 05:24:53 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Thu, 15 Feb 2018 05:25:04 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 05:27:44 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 05:27:46 GMT
ENV REDIS_VERSION=3.2.11
# Thu, 15 Feb 2018 05:27:47 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Thu, 15 Feb 2018 05:27:48 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Thu, 15 Feb 2018 05:31:01 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 05:31:04 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 15 Feb 2018 05:31:05 GMT
VOLUME [/data]
# Thu, 15 Feb 2018 05:31:07 GMT
WORKDIR /data
# Thu, 15 Feb 2018 05:31:08 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Thu, 15 Feb 2018 05:31:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 05:31:12 GMT
EXPOSE 6379/tcp
# Thu, 15 Feb 2018 05:31:14 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:55e44e991a765aac112a6c9b4f8933a727d8c3fdfd7d5138173ff62b0624fb0c`  
		Last Modified: Thu, 15 Feb 2018 01:42:40 GMT  
		Size: 29.3 MB (29311830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df81c6e0db50d64e980a81b82127c9ce7a3f8e6de8ceda534a434125c95a25b1`  
		Last Modified: Thu, 15 Feb 2018 05:35:40 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:876fab0967ab2fac268ea466c4ade4f669005f7171aba968b8e0e2edcf38e3d4`  
		Last Modified: Thu, 15 Feb 2018 05:35:41 GMT  
		Size: 950.7 KB (950706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f2a8426421a1f1f476b277e581e3a17bbc3b79e8c8c07eafd0ff65b35c76336`  
		Last Modified: Thu, 15 Feb 2018 05:35:42 GMT  
		Size: 6.0 MB (5990446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:109457f5d09c32ab53bfe8ebaff7187bb243a499b2a83791adc6e4cb06652657`  
		Last Modified: Thu, 15 Feb 2018 05:35:40 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d7b0508333232e0da46a89b1f334ed562e683fe1adb0541863826e9b6d8ad9f`  
		Last Modified: Thu, 15 Feb 2018 05:35:40 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2` - linux; s390x

```console
$ docker pull redis@sha256:9b3d1951b6cbc96faa9fe52c0e3d2876e45cc6a9e727712cdb452083bcfc74c3
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.4 MB (37438193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f64ceb86766569de9cfb8e4e21615a3ef31d26e0eb1f7c99690a9189397c22f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 12 Dec 2017 06:23:05 GMT
ADD file:68877912183dff16971679b6264399a76d678986d7cf02bbba2e006d91077cf3 in / 
# Tue, 12 Dec 2017 06:23:06 GMT
CMD ["bash"]
# Sun, 07 Jan 2018 09:26:06 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sun, 07 Jan 2018 09:26:06 GMT
ENV GOSU_VERSION=1.10
# Sun, 07 Jan 2018 09:26:33 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sun, 07 Jan 2018 09:26:34 GMT
ENV REDIS_VERSION=3.2.11
# Sun, 07 Jan 2018 09:26:34 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Sun, 07 Jan 2018 09:26:34 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Sun, 07 Jan 2018 09:27:18 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sun, 07 Jan 2018 09:27:19 GMT
RUN mkdir /data && chown redis:redis /data
# Sun, 07 Jan 2018 09:27:19 GMT
VOLUME [/data]
# Sun, 07 Jan 2018 09:27:19 GMT
WORKDIR /data
# Sun, 07 Jan 2018 09:27:20 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sun, 07 Jan 2018 09:27:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 07 Jan 2018 09:27:20 GMT
EXPOSE 6379/tcp
# Sun, 07 Jan 2018 09:27:20 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:7ef9b5c13de473137c3ae16d379a5f152b59921d4e96887c06f9e1291af84691`  
		Last Modified: Thu, 14 Dec 2017 00:53:34 GMT  
		Size: 30.3 MB (30293639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608e779e09f2eff9338668b6f32d30ad6db5824db6e05a40163baa53af8a4732`  
		Last Modified: Sun, 07 Jan 2018 09:28:52 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca3bc2bf99d2d3b8b7af50eabf05bcd385693d216437119560e8b76a250123d1`  
		Last Modified: Sun, 07 Jan 2018 09:28:52 GMT  
		Size: 966.9 KB (966920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b260990b3cf7df1f5163c322ff8a9382237c8d8adf8e7e8d0c2b1f3950261a5c`  
		Last Modified: Sun, 07 Jan 2018 09:28:54 GMT  
		Size: 6.2 MB (6175037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52e0e50debc8588fe01746766889ac48c765f1ce6897997b4d34a0feaa4bad3f`  
		Last Modified: Sun, 07 Jan 2018 09:28:52 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5d0ad78867e44df3ef424b46d3a0d6a0ac64cbaeda7bdb7f93960f38d6fcb21`  
		Last Modified: Sun, 07 Jan 2018 09:28:52 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2.11`

```console
$ docker pull redis@sha256:670f3377c1ab7438aa4838c0506cf2ebd4b1101b2c775ef28f2745d1e1d4ed75
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

### `redis:3.2.11` - linux; amd64

```console
$ docker pull redis@sha256:eb842ee0532985ab92f8e18b5fd981ba6f7214b656fd90110d98ab2fc8bb6f9f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36853652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3859b0a6622aef3cb3c28dbdf563d10db479622fb093d929d6239b81ed848166`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 15 Feb 2018 01:46:20 GMT
ADD file:a0f72eb6710fe45aff98d40665ed5c106a992b2b0d1d57a1fb6ca98c4aa0f0a6 in / 
# Thu, 15 Feb 2018 01:46:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:50:37 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Thu, 15 Feb 2018 07:50:37 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 07:50:59 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 07:50:59 GMT
ENV REDIS_VERSION=3.2.11
# Thu, 15 Feb 2018 07:51:00 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Thu, 15 Feb 2018 07:51:00 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Thu, 15 Feb 2018 07:51:40 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 07:51:50 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 15 Feb 2018 07:51:50 GMT
VOLUME [/data]
# Thu, 15 Feb 2018 07:51:50 GMT
WORKDIR /data
# Thu, 15 Feb 2018 07:51:51 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Thu, 15 Feb 2018 07:51:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 07:51:51 GMT
EXPOSE 6379/tcp
# Thu, 15 Feb 2018 07:51:51 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d2ca7eff5948133e4316d463c56948af87b4d4d09848ee0f8b698d3549a7a7dd`  
		Last Modified: Thu, 15 Feb 2018 02:18:31 GMT  
		Size: 30.1 MB (30122379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d1a2245aaa6e74708fd6c58cf1ac19f9db2d2031107c25d20b0ac06d11f2b7c`  
		Last Modified: Thu, 15 Feb 2018 08:17:00 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a483dd2a28bbd7835cda9c014266c0dfcee502ef67e5d9a4e090c807b3a1717`  
		Last Modified: Thu, 15 Feb 2018 08:17:01 GMT  
		Size: 981.7 KB (981722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a393fdb1ed0b5800468de4536c418dd6a02e9f664c55ade84ef72bec7a7939df`  
		Last Modified: Thu, 15 Feb 2018 08:17:02 GMT  
		Size: 5.7 MB (5746962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88c7e4d61bf3713a47f15588154bfcb57007b8421a2dc30ccf56c36657b0c7a5`  
		Last Modified: Thu, 15 Feb 2018 08:17:00 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73875ef81fb384ae97041d0b4df8f27859489811306ce1dc5fe37f0028419537`  
		Last Modified: Thu, 15 Feb 2018 08:17:00 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2.11` - linux; arm variant v5

```console
$ docker pull redis@sha256:37603968046fb27197285c6668fa155714be6807c927488cee2646013fb9b5fb
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.0 MB (35038089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:778b75e5bc2481d515a93e763463a0a0063007c67f65ad6fab23d2e2065e2c21`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 12 Dec 2017 20:57:33 GMT
ADD file:29d0e44ebcc6f8dc2cfbc86c5034380677d263e9eec27a22ba045e0810836f81 in / 
# Tue, 12 Dec 2017 20:57:34 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 23:14:35 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 12 Dec 2017 23:14:35 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 23:15:21 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Dec 2017 23:15:21 GMT
ENV REDIS_VERSION=3.2.11
# Tue, 12 Dec 2017 23:15:21 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Tue, 12 Dec 2017 23:15:21 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Tue, 12 Dec 2017 23:16:20 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Dec 2017 23:16:21 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 12 Dec 2017 23:16:21 GMT
VOLUME [/data]
# Tue, 12 Dec 2017 23:16:21 GMT
WORKDIR /data
# Tue, 12 Dec 2017 23:16:22 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 12 Dec 2017 23:16:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 23:16:22 GMT
EXPOSE 6379/tcp
# Tue, 12 Dec 2017 23:16:23 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:51e696f556166d0e25b3b27c824c4aafbddd5adcfd3f5186c09707f7baa3b312`  
		Last Modified: Tue, 12 Dec 2017 21:07:41 GMT  
		Size: 28.4 MB (28423526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0206b9cb3a70c21180f01a2532fe2c5a436a48e5fc5d8b939ba69b7d61c80a3a`  
		Last Modified: Tue, 12 Dec 2017 23:18:09 GMT  
		Size: 2.1 KB (2075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f18f2f5d7b2619f7683612c23f23c54c1f09a9ac9f5714f36e1ff47dffac347`  
		Last Modified: Tue, 12 Dec 2017 23:18:13 GMT  
		Size: 971.2 KB (971228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f72ffb738c3d9596dcf069b20f5280bf2686880d01941181401d0d9eabac5a84`  
		Last Modified: Tue, 12 Dec 2017 23:18:11 GMT  
		Size: 5.6 MB (5640722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a0b1a1b03d4edaff8f2c997c21c0a6fd49e6c92e7d94dacc7398de2a700f91b`  
		Last Modified: Tue, 12 Dec 2017 23:18:09 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc62eb021289c9e73533af5af7ae5fa505c846bd52845aaa1908a0e384fd8241`  
		Last Modified: Tue, 12 Dec 2017 23:18:10 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2.11` - linux; arm variant v7

```console
$ docker pull redis@sha256:03413f3e7e5c06a061fa5bf655fc565ceaa0e0893232ea7cd8a3ab6e4a313908
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.7 MB (32716875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ac388dc185f90da31cc2fec213c66361606649014b348f07b80c7a8ae17ab5b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 12 Dec 2017 13:27:47 GMT
ADD file:1f5de474caa19da14d698a3f9c3d161abfa1e19e258a596d64f3dfc9e2f17686 in / 
# Tue, 12 Dec 2017 13:27:47 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 16:40:56 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 12 Dec 2017 16:40:56 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 16:41:50 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Dec 2017 16:41:58 GMT
ENV REDIS_VERSION=3.2.11
# Tue, 12 Dec 2017 16:41:59 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Tue, 12 Dec 2017 16:41:59 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Tue, 12 Dec 2017 16:42:59 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Dec 2017 16:43:00 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 12 Dec 2017 16:43:00 GMT
VOLUME [/data]
# Tue, 12 Dec 2017 16:43:01 GMT
WORKDIR /data
# Tue, 12 Dec 2017 16:43:01 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 12 Dec 2017 16:43:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 16:43:02 GMT
EXPOSE 6379/tcp
# Tue, 12 Dec 2017 16:43:02 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:4b9c0f1a415433a98643bdda391dcf4fe5d9653fc3ed3845c7ac1be99eb43399`  
		Last Modified: Tue, 12 Dec 2017 13:39:52 GMT  
		Size: 26.3 MB (26282714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d6835fe576543df3c87405f33db99aa1f040e3f241c5e5d72ffb416953902b8`  
		Last Modified: Tue, 12 Dec 2017 16:44:59 GMT  
		Size: 2.1 KB (2076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a11c10ad12017478481b1755839ece7c69945ee8c04b97bb10909db85e4ed338`  
		Last Modified: Tue, 12 Dec 2017 16:44:59 GMT  
		Size: 956.1 KB (956126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c923304459ee49e05d92267e1c7b79a67b9356b267a7c9d56d1e14744b6f0be`  
		Last Modified: Tue, 12 Dec 2017 16:45:01 GMT  
		Size: 5.5 MB (5475423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:811c5207f774170cc6c7c5d91c059692b6a57544880e062747daf2223ca6e0d1`  
		Last Modified: Tue, 12 Dec 2017 16:44:59 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a03df6c327d30bd1c768e0c668a5cab45ca50c012d7f7ad5e5f7657977b31bb3`  
		Last Modified: Tue, 12 Dec 2017 16:45:00 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2.11` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:9bc7e1a59f621544d2ca683fa6de22e638108eb093a1a431354b7b343f4a3de0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34280616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f24f05972898e03959b8e43213ceb92b9e023871ff6e4d988b8c978d9dc8985`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 12 Dec 2017 18:26:03 GMT
ADD file:da6be268a98d89a43438155746ca6d08f474e9aa85c64699f50445352b46c348 in / 
# Tue, 12 Dec 2017 18:26:04 GMT
CMD ["bash"]
# Wed, 20 Dec 2017 13:25:39 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 20 Dec 2017 13:25:40 GMT
ENV GOSU_VERSION=1.10
# Wed, 20 Dec 2017 13:26:36 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 20 Dec 2017 13:26:37 GMT
ENV REDIS_VERSION=3.2.11
# Wed, 20 Dec 2017 13:26:38 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Wed, 20 Dec 2017 13:26:38 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Wed, 20 Dec 2017 13:28:12 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 20 Dec 2017 13:28:14 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Dec 2017 13:28:14 GMT
VOLUME [/data]
# Wed, 20 Dec 2017 13:28:15 GMT
WORKDIR /data
# Wed, 20 Dec 2017 13:28:16 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 20 Dec 2017 13:28:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Dec 2017 13:28:17 GMT
EXPOSE 6379/tcp
# Wed, 20 Dec 2017 13:28:18 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:8e9df51286bbe86a4cb3ffe54327681ab34b9b6d62c3f4e187ffc677125e4780`  
		Last Modified: Tue, 12 Dec 2017 18:41:37 GMT  
		Size: 27.5 MB (27480582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:075c247daad6bb45a002c0a24377355e91aef8e96dbc920ef85b5f95dba5d597`  
		Last Modified: Wed, 20 Dec 2017 13:31:04 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:671b4ef947e36f312884f8d49f560e5191e57a0e583820b56b530e7ff03d771f`  
		Last Modified: Wed, 20 Dec 2017 13:31:04 GMT  
		Size: 948.7 KB (948652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:247873c71d9824af8101e2d1a196e62f8cd2411a1c0fd4313fc0bcf928165c03`  
		Last Modified: Wed, 20 Dec 2017 13:31:06 GMT  
		Size: 5.8 MB (5848781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad73d336373dacee161522c0b2a44b9f27dbc93edeb0852b3aa4d779ae99792`  
		Last Modified: Wed, 20 Dec 2017 13:31:04 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:914abc7dec1c8280f3995bd87bd291e37a233d14d3cffe9dd0e0fcaf0c5a0414`  
		Last Modified: Wed, 20 Dec 2017 13:31:04 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2.11` - linux; 386

```console
$ docker pull redis@sha256:7c83145573d05cb77c6e72ac8c14456e1729fe9ff48b409a788ac33eaa16f15d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.5 MB (36455053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:190c3c26f480cf9fbeacdc38a8cc46b9f8789fa3965763760e723ef5375b9dae`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 12 Dec 2017 14:21:05 GMT
ADD file:d31765999b40e32b628f3ec72b762f007f4918b08c507484e425adc990c87c26 in / 
# Tue, 12 Dec 2017 14:21:05 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:03:38 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 12 Dec 2017 21:03:38 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 21:04:16 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Dec 2017 21:04:16 GMT
ENV REDIS_VERSION=3.2.11
# Tue, 12 Dec 2017 21:04:16 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Tue, 12 Dec 2017 21:04:16 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Tue, 12 Dec 2017 21:05:33 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Dec 2017 21:05:34 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 12 Dec 2017 21:05:35 GMT
VOLUME [/data]
# Tue, 12 Dec 2017 21:05:35 GMT
WORKDIR /data
# Tue, 12 Dec 2017 21:05:36 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 12 Dec 2017 21:05:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 21:05:36 GMT
EXPOSE 6379/tcp
# Tue, 12 Dec 2017 21:05:37 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6b323e7c684c46ec9e577d3acb692c7e1c0c26ffbea6a4530dbe784a7eedf0f7`  
		Last Modified: Tue, 12 Dec 2017 14:49:35 GMT  
		Size: 30.3 MB (30266257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00b36a22b0f548b632d8bc28aa752a7c776351e3fa3c167b13901a9a648dff0f`  
		Last Modified: Tue, 12 Dec 2017 21:11:34 GMT  
		Size: 2.1 KB (2074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:625bd220ae9238fdcd1a3e9db810236dc47502995b93d54b4a7bc5f474508112`  
		Last Modified: Tue, 12 Dec 2017 21:11:34 GMT  
		Size: 960.8 KB (960808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62f091c640c28a1f85ac09116d9268ce7199c2e3c29cf90f6cdd678df40b317a`  
		Last Modified: Tue, 12 Dec 2017 21:11:35 GMT  
		Size: 5.2 MB (5225413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f221a91123e3d61c631121d8acb3e9808ee75a4f472dfae0986239da6b4fb2de`  
		Last Modified: Tue, 12 Dec 2017 21:11:33 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c405b1692002fda0a8a78e6a408a3241583605523ee350d33e15880a379d85b`  
		Last Modified: Tue, 12 Dec 2017 21:11:33 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2.11` - linux; ppc64le

```console
$ docker pull redis@sha256:3f8ee59ac0c9acddb544d4e12b4b451e71576db4a8605b62302abe38a4310ae5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.3 MB (36255618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34ebec9c6e94829b7bca23df13b67a9db3dd13087b19c6ec9b4adaf36f638cd3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 15 Feb 2018 01:34:17 GMT
ADD file:f3263f57a7d4fe956087a3f9803a0f8fe9224b2704ac54c141da2d6a166c737b in / 
# Thu, 15 Feb 2018 01:34:20 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 05:24:53 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Thu, 15 Feb 2018 05:25:04 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 05:27:44 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 05:27:46 GMT
ENV REDIS_VERSION=3.2.11
# Thu, 15 Feb 2018 05:27:47 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Thu, 15 Feb 2018 05:27:48 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Thu, 15 Feb 2018 05:31:01 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 05:31:04 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 15 Feb 2018 05:31:05 GMT
VOLUME [/data]
# Thu, 15 Feb 2018 05:31:07 GMT
WORKDIR /data
# Thu, 15 Feb 2018 05:31:08 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Thu, 15 Feb 2018 05:31:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 05:31:12 GMT
EXPOSE 6379/tcp
# Thu, 15 Feb 2018 05:31:14 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:55e44e991a765aac112a6c9b4f8933a727d8c3fdfd7d5138173ff62b0624fb0c`  
		Last Modified: Thu, 15 Feb 2018 01:42:40 GMT  
		Size: 29.3 MB (29311830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df81c6e0db50d64e980a81b82127c9ce7a3f8e6de8ceda534a434125c95a25b1`  
		Last Modified: Thu, 15 Feb 2018 05:35:40 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:876fab0967ab2fac268ea466c4ade4f669005f7171aba968b8e0e2edcf38e3d4`  
		Last Modified: Thu, 15 Feb 2018 05:35:41 GMT  
		Size: 950.7 KB (950706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f2a8426421a1f1f476b277e581e3a17bbc3b79e8c8c07eafd0ff65b35c76336`  
		Last Modified: Thu, 15 Feb 2018 05:35:42 GMT  
		Size: 6.0 MB (5990446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:109457f5d09c32ab53bfe8ebaff7187bb243a499b2a83791adc6e4cb06652657`  
		Last Modified: Thu, 15 Feb 2018 05:35:40 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d7b0508333232e0da46a89b1f334ed562e683fe1adb0541863826e9b6d8ad9f`  
		Last Modified: Thu, 15 Feb 2018 05:35:40 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2.11` - linux; s390x

```console
$ docker pull redis@sha256:9b3d1951b6cbc96faa9fe52c0e3d2876e45cc6a9e727712cdb452083bcfc74c3
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.4 MB (37438193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f64ceb86766569de9cfb8e4e21615a3ef31d26e0eb1f7c99690a9189397c22f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 12 Dec 2017 06:23:05 GMT
ADD file:68877912183dff16971679b6264399a76d678986d7cf02bbba2e006d91077cf3 in / 
# Tue, 12 Dec 2017 06:23:06 GMT
CMD ["bash"]
# Sun, 07 Jan 2018 09:26:06 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sun, 07 Jan 2018 09:26:06 GMT
ENV GOSU_VERSION=1.10
# Sun, 07 Jan 2018 09:26:33 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sun, 07 Jan 2018 09:26:34 GMT
ENV REDIS_VERSION=3.2.11
# Sun, 07 Jan 2018 09:26:34 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Sun, 07 Jan 2018 09:26:34 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Sun, 07 Jan 2018 09:27:18 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sun, 07 Jan 2018 09:27:19 GMT
RUN mkdir /data && chown redis:redis /data
# Sun, 07 Jan 2018 09:27:19 GMT
VOLUME [/data]
# Sun, 07 Jan 2018 09:27:19 GMT
WORKDIR /data
# Sun, 07 Jan 2018 09:27:20 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sun, 07 Jan 2018 09:27:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 07 Jan 2018 09:27:20 GMT
EXPOSE 6379/tcp
# Sun, 07 Jan 2018 09:27:20 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:7ef9b5c13de473137c3ae16d379a5f152b59921d4e96887c06f9e1291af84691`  
		Last Modified: Thu, 14 Dec 2017 00:53:34 GMT  
		Size: 30.3 MB (30293639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608e779e09f2eff9338668b6f32d30ad6db5824db6e05a40163baa53af8a4732`  
		Last Modified: Sun, 07 Jan 2018 09:28:52 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca3bc2bf99d2d3b8b7af50eabf05bcd385693d216437119560e8b76a250123d1`  
		Last Modified: Sun, 07 Jan 2018 09:28:52 GMT  
		Size: 966.9 KB (966920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b260990b3cf7df1f5163c322ff8a9382237c8d8adf8e7e8d0c2b1f3950261a5c`  
		Last Modified: Sun, 07 Jan 2018 09:28:54 GMT  
		Size: 6.2 MB (6175037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52e0e50debc8588fe01746766889ac48c765f1ce6897997b4d34a0feaa4bad3f`  
		Last Modified: Sun, 07 Jan 2018 09:28:52 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5d0ad78867e44df3ef424b46d3a0d6a0ac64cbaeda7bdb7f93960f38d6fcb21`  
		Last Modified: Sun, 07 Jan 2018 09:28:52 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2.11-32bit`

```console
$ docker pull redis@sha256:6e5d4bd455dbeb01f81580fe00e9b272c6142a11fca6e9ecc0e54521b84fa7c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:3.2.11-32bit` - linux; amd64

```console
$ docker pull redis@sha256:2bc22f32b3c664544ba326a34c551365429bd7cc71b7ddf576b1c983c14d9aa0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.7 MB (40715738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf403d57f2445eac182720308de110503477c889ad901e8e5917caf888e9ed7b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 15 Feb 2018 01:46:20 GMT
ADD file:a0f72eb6710fe45aff98d40665ed5c106a992b2b0d1d57a1fb6ca98c4aa0f0a6 in / 
# Thu, 15 Feb 2018 01:46:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:50:37 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Thu, 15 Feb 2018 07:50:37 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 07:50:59 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 07:50:59 GMT
ENV REDIS_VERSION=3.2.11
# Thu, 15 Feb 2018 07:51:00 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Thu, 15 Feb 2018 07:51:00 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Thu, 15 Feb 2018 07:52:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:53:41 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 07:53:45 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 15 Feb 2018 07:53:45 GMT
VOLUME [/data]
# Thu, 15 Feb 2018 07:53:45 GMT
WORKDIR /data
# Thu, 15 Feb 2018 07:53:57 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Thu, 15 Feb 2018 07:53:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 07:53:58 GMT
EXPOSE 6379/tcp
# Thu, 15 Feb 2018 07:53:58 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d2ca7eff5948133e4316d463c56948af87b4d4d09848ee0f8b698d3549a7a7dd`  
		Last Modified: Thu, 15 Feb 2018 02:18:31 GMT  
		Size: 30.1 MB (30122379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d1a2245aaa6e74708fd6c58cf1ac19f9db2d2031107c25d20b0ac06d11f2b7c`  
		Last Modified: Thu, 15 Feb 2018 08:17:00 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a483dd2a28bbd7835cda9c014266c0dfcee502ef67e5d9a4e090c807b3a1717`  
		Last Modified: Thu, 15 Feb 2018 08:17:01 GMT  
		Size: 981.7 KB (981722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54f43e9ec42cfd31cb8e68dcb42d598d064bebc429b2c16745ba6a4c800a2e14`  
		Last Modified: Thu, 15 Feb 2018 08:17:56 GMT  
		Size: 4.4 MB (4378563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88b9c9eeae2f3d022a9784165ed114dc178c3d8c61aeab503b07ec4584b9a6ec`  
		Last Modified: Thu, 15 Feb 2018 08:17:56 GMT  
		Size: 5.2 MB (5230478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:550ebe2b19d25b3a16bf3c784a197dd1feecadfd0e734aa59287381e4859fd2f`  
		Last Modified: Thu, 15 Feb 2018 08:17:54 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c891f0ce6cc861f59f8c3c6f4b64d520ca66f9c3cbf6e91299dc952fe48e4200`  
		Last Modified: Thu, 15 Feb 2018 08:17:54 GMT  
		Size: 409.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2.11-alpine`

```console
$ docker pull redis@sha256:17f6a9cd8ad188bdc19d07c127e51ca21a77a1a6bff653bc4a4d9f777d648c84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redis:3.2.11-alpine` - linux; amd64

```console
$ docker pull redis@sha256:2f48b500c466881bc8e943610af3526262ec7e8c81a5a22ddcb33cee0681026f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7572157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f248939460200f8c70427d56f042621a45dcccd68bb2bcba9cb3c8a75527e389`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 24 Jan 2018 00:17:37 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 24 Jan 2018 00:17:41 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 24 Jan 2018 00:17:41 GMT
ENV REDIS_VERSION=3.2.11
# Wed, 24 Jan 2018 00:17:42 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Wed, 24 Jan 2018 00:17:42 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Wed, 24 Jan 2018 00:18:10 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Wed, 24 Jan 2018 00:18:11 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 24 Jan 2018 00:18:11 GMT
VOLUME [/data]
# Wed, 24 Jan 2018 00:18:12 GMT
WORKDIR /data
# Wed, 24 Jan 2018 00:18:12 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 24 Jan 2018 00:18:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 24 Jan 2018 00:18:13 GMT
EXPOSE 6379/tcp
# Wed, 24 Jan 2018 00:18:13 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aae70a2e60279ffae89150a59b81fe10d1d81f341ef6f31b9714ea6cc3418577`  
		Last Modified: Wed, 24 Jan 2018 00:19:46 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87c655da471c9a7d8f946ec7b04a6a72a98ae8c1734bddf4b950861b5638fe20`  
		Last Modified: Wed, 24 Jan 2018 00:19:45 GMT  
		Size: 8.6 KB (8554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9b1b91509120408ad5c35c34bdf65bc4e3468ba63c313809c057f350e35f536`  
		Last Modified: Wed, 24 Jan 2018 00:19:47 GMT  
		Size: 5.5 MB (5496316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de2b963af2e3bdde9c9e8ef36c33c6f3f9e4dc0f446b0977d6bc7b16e0d69e2a`  
		Last Modified: Wed, 24 Jan 2018 00:19:45 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68009ce48d272691340ee82d45aac3e73afd0de7bcf29eae04b04e517e41590c`  
		Last Modified: Wed, 24 Jan 2018 00:19:45 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2.11-alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:a5da84b8f7a80e380d243bee2fea779b51be2c5c3175a1d52b88666812f852ea
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7629126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:526d5e0986598a85bef833b3c7eb339c3386273e8269dc770d46dfa71a68a256`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:35 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Wed, 25 Oct 2017 23:28:36 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:36 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:24:18 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Thu, 26 Oct 2017 05:24:21 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 05:24:21 GMT
ENV REDIS_VERSION=3.2.11
# Thu, 26 Oct 2017 05:24:22 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Thu, 26 Oct 2017 05:24:22 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Thu, 26 Oct 2017 05:24:42 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Thu, 26 Oct 2017 05:24:44 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 26 Oct 2017 05:24:44 GMT
VOLUME [/data]
# Thu, 26 Oct 2017 05:24:45 GMT
WORKDIR /data
# Thu, 26 Oct 2017 05:24:45 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Thu, 26 Oct 2017 05:24:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 05:24:45 GMT
EXPOSE 6379/tcp
# Thu, 26 Oct 2017 05:24:46 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cda69762aee1588fa82aeabf1af6d6ad24f737cce1451fab2e0199849b1e12e`  
		Last Modified: Wed, 25 Oct 2017 23:28:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ed5ccc911def388320cc35fabf3f26d6dbe3865f29cbc8ea4d6969afba892b6`  
		Last Modified: Thu, 26 Oct 2017 05:25:25 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fb557aa00e602a24029e21b21fd124cee2b11be03a5d7c2c7a5bdd35d837a2c`  
		Last Modified: Thu, 26 Oct 2017 05:25:26 GMT  
		Size: 8.4 KB (8372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:333282354ac5d74938fb750a3adea3f33c0b5f077d53d661ac19988e2bdc4e7c`  
		Last Modified: Thu, 26 Oct 2017 05:25:27 GMT  
		Size: 5.7 MB (5652784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a28f0879b62dc750332363fea24bd9b8c13184c92b4078b6fb1a432b9ecc07a`  
		Last Modified: Thu, 26 Oct 2017 05:25:25 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bff9dc7cb3112c0957cf58882450aa33bae9c950c51b846be7b4844eee33eaa2`  
		Last Modified: Thu, 26 Oct 2017 05:25:25 GMT  
		Size: 398.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2.11-alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:49a83f09cb9ba8ebdfa86998998f390429365ae750afc17fea1c0220bb77a00a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7343669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2de13a11ff532fbb704dbb7f8e7fd3c45b760973b396e10566f655f52d7c8e31`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Wed, 24 Jan 2018 13:25:46 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 24 Jan 2018 13:25:50 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 24 Jan 2018 13:25:51 GMT
ENV REDIS_VERSION=3.2.11
# Wed, 24 Jan 2018 13:25:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Wed, 24 Jan 2018 13:25:52 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Wed, 24 Jan 2018 13:26:30 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Wed, 24 Jan 2018 13:26:32 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 24 Jan 2018 13:26:32 GMT
VOLUME [/data]
# Wed, 24 Jan 2018 13:26:33 GMT
WORKDIR /data
# Wed, 24 Jan 2018 13:26:34 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 24 Jan 2018 13:26:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 24 Jan 2018 13:26:35 GMT
EXPOSE 6379/tcp
# Wed, 24 Jan 2018 13:26:36 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec42e4d70bd6b5d14ceb60d165f35c9d1348c35d3a566bb230cec599a0ffd64`  
		Last Modified: Wed, 24 Jan 2018 13:28:23 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:555bf2ac2a80a9414fecc99d0e2e659cf9cc43ddcf785a45cf07b2fbcbf0f7b4`  
		Last Modified: Wed, 24 Jan 2018 13:28:23 GMT  
		Size: 8.7 KB (8656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59eab2490dbd5d09edf331e441a432cc776c527c92df5c61937891df96677e7b`  
		Last Modified: Wed, 24 Jan 2018 13:28:25 GMT  
		Size: 5.3 MB (5344231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef6829e0f2cf73f62904b4f489bdac197239823de22a0caed048b4ab42ee48a3`  
		Last Modified: Wed, 24 Jan 2018 13:28:24 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929037c51cad0c412c1d715052b30f59a49106f2680caee5ae4bd8778214953a`  
		Last Modified: Wed, 24 Jan 2018 13:28:23 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2.11-alpine` - linux; 386

```console
$ docker pull redis@sha256:40fc55739f3babda4cc87f7c596762c18d6fb5a4e1d5b7e3a70abe93f2244fef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7323311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edfb2674317dba9883722dca103f8dff6f95b4d47720ccd4110c199b09048c38`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Wed, 24 Jan 2018 13:18:38 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 24 Jan 2018 13:18:41 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 24 Jan 2018 13:18:51 GMT
ENV REDIS_VERSION=3.2.11
# Wed, 24 Jan 2018 13:18:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Wed, 24 Jan 2018 13:18:51 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Wed, 24 Jan 2018 13:19:30 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Wed, 24 Jan 2018 13:21:08 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 24 Jan 2018 13:21:08 GMT
VOLUME [/data]
# Wed, 24 Jan 2018 13:21:09 GMT
WORKDIR /data
# Wed, 24 Jan 2018 13:21:09 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 24 Jan 2018 13:21:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 24 Jan 2018 13:21:10 GMT
EXPOSE 6379/tcp
# Wed, 24 Jan 2018 13:21:10 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29cce73050e1b58c218a1c94cd8c9f719d38530500ab97333eac5fdaf385dbc`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca9ea366359b5aae5b03a9cf35751eebba1582c08e0a84ddadd88bfee7305ea7`  
		Last Modified: Wed, 24 Jan 2018 13:30:02 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8443df14b3c9f580474f3c6e748be548a63bd8344a0fd8e5d63aec2d36f7504`  
		Last Modified: Wed, 24 Jan 2018 13:30:02 GMT  
		Size: 8.7 KB (8653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84285e2a37e96c0acac1d372cfb97e9e260f045e38d204f6df0a7a8670d75d30`  
		Last Modified: Wed, 24 Jan 2018 13:30:03 GMT  
		Size: 5.2 MB (5186514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:550fd0a4330b3334476a9df008d9dca1509a8fea3817e6ad435b240ad56726f8`  
		Last Modified: Wed, 24 Jan 2018 13:30:02 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:894ce225283a2f6621417271dcbc60d3c0be4ea03702195321b54a53ea5faad9`  
		Last Modified: Wed, 24 Jan 2018 13:30:02 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2.11-alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:c1f93bcdfb21023bf7a0832cb5665efd38f663794727287afb5dc0c992a3944c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7687655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68523fd910e3e0d083b862e42ea69848de573e65f7ae4a642eddb8895d64fd85`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Wed, 24 Jan 2018 06:35:28 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 24 Jan 2018 06:35:34 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 24 Jan 2018 06:35:35 GMT
ENV REDIS_VERSION=3.2.11
# Wed, 24 Jan 2018 06:35:37 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Wed, 24 Jan 2018 06:35:38 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Wed, 24 Jan 2018 06:36:02 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Wed, 24 Jan 2018 06:36:05 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 24 Jan 2018 06:36:07 GMT
VOLUME [/data]
# Wed, 24 Jan 2018 06:36:08 GMT
WORKDIR /data
# Wed, 24 Jan 2018 06:36:10 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 24 Jan 2018 06:36:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 24 Jan 2018 06:36:14 GMT
EXPOSE 6379/tcp
# Wed, 24 Jan 2018 06:36:16 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:802132ccdaaf1e42c991c0ad2b274ee46d7d02210e23a3bc630c772fbdd533c2`  
		Last Modified: Wed, 24 Jan 2018 06:37:26 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3edb35368beebf064881c4a2efa343effc2775c4bb6e9121e8426990bc75df12`  
		Last Modified: Wed, 24 Jan 2018 06:37:26 GMT  
		Size: 9.3 KB (9269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4488d8d2fe8ec75f71e91f0582124691fb61e0b814ce014ce02be2ce96c85e53`  
		Last Modified: Wed, 24 Jan 2018 06:37:28 GMT  
		Size: 5.6 MB (5594924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cf90c45f2d46dfbf7fbe73f31abbfdf99a330021ce55d6b4f937cbb7d97fc7d`  
		Last Modified: Wed, 24 Jan 2018 06:37:27 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb0c711decff526bd165395d79ee409ed9008c388b690a17709b19e9381b2472`  
		Last Modified: Wed, 24 Jan 2018 06:37:29 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2.11-alpine` - linux; s390x

```console
$ docker pull redis@sha256:7ebff388d27d3505f14019c592dddb0ddec17e5219c0a5bddec659d42c65614c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7829671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6194f1e1036eec4a550d73d9211042163c2775b4f06ee2aa14609468b49ea97c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Wed, 24 Jan 2018 06:24:30 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 24 Jan 2018 06:24:33 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 24 Jan 2018 06:24:33 GMT
ENV REDIS_VERSION=3.2.11
# Wed, 24 Jan 2018 06:24:33 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Wed, 24 Jan 2018 06:24:33 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Wed, 24 Jan 2018 06:24:54 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Wed, 24 Jan 2018 06:24:55 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 24 Jan 2018 06:24:55 GMT
VOLUME [/data]
# Wed, 24 Jan 2018 06:24:55 GMT
WORKDIR /data
# Wed, 24 Jan 2018 06:24:55 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 24 Jan 2018 06:24:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 24 Jan 2018 06:24:56 GMT
EXPOSE 6379/tcp
# Wed, 24 Jan 2018 06:24:56 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:11e7bc85614a236b32043d147930fd2bc9055af8642fe30e5e56142590572b0e`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 2.2 MB (2185231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f825cbb729285f1fe2a0cd1d4d36897e3fe2191c5ee044ce11a5d301dc64a34`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:167640baaae6b19b666d28c35de1dde729eaca22986531c0f3b3dd6af5bbc469`  
		Last Modified: Wed, 24 Jan 2018 06:25:46 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dab4f89cc8856e8d43a9cc8e3ba6670d31906a9a3409fdf2f59ad893cda37c8`  
		Last Modified: Wed, 24 Jan 2018 06:25:46 GMT  
		Size: 8.9 KB (8944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b678161f16bddddb9edbbd88104d816ba6ac30305738588aab303ba041e0602`  
		Last Modified: Wed, 24 Jan 2018 06:25:47 GMT  
		Size: 5.6 MB (5633570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:944f84c24af49b04fe3e9bea90d7ef4c7c1911c76ffd7c6c1363ba5267bd91ca`  
		Last Modified: Wed, 24 Jan 2018 06:25:46 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16383c8709d68b006c3644a882b0bf3448c005d3476d781438a4bfc6d915ddf2`  
		Last Modified: Wed, 24 Jan 2018 06:25:46 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2-32bit`

```console
$ docker pull redis@sha256:6e5d4bd455dbeb01f81580fe00e9b272c6142a11fca6e9ecc0e54521b84fa7c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:3.2-32bit` - linux; amd64

```console
$ docker pull redis@sha256:2bc22f32b3c664544ba326a34c551365429bd7cc71b7ddf576b1c983c14d9aa0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.7 MB (40715738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf403d57f2445eac182720308de110503477c889ad901e8e5917caf888e9ed7b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 15 Feb 2018 01:46:20 GMT
ADD file:a0f72eb6710fe45aff98d40665ed5c106a992b2b0d1d57a1fb6ca98c4aa0f0a6 in / 
# Thu, 15 Feb 2018 01:46:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:50:37 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Thu, 15 Feb 2018 07:50:37 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 07:50:59 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 07:50:59 GMT
ENV REDIS_VERSION=3.2.11
# Thu, 15 Feb 2018 07:51:00 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Thu, 15 Feb 2018 07:51:00 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Thu, 15 Feb 2018 07:52:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:53:41 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 07:53:45 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 15 Feb 2018 07:53:45 GMT
VOLUME [/data]
# Thu, 15 Feb 2018 07:53:45 GMT
WORKDIR /data
# Thu, 15 Feb 2018 07:53:57 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Thu, 15 Feb 2018 07:53:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 07:53:58 GMT
EXPOSE 6379/tcp
# Thu, 15 Feb 2018 07:53:58 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d2ca7eff5948133e4316d463c56948af87b4d4d09848ee0f8b698d3549a7a7dd`  
		Last Modified: Thu, 15 Feb 2018 02:18:31 GMT  
		Size: 30.1 MB (30122379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d1a2245aaa6e74708fd6c58cf1ac19f9db2d2031107c25d20b0ac06d11f2b7c`  
		Last Modified: Thu, 15 Feb 2018 08:17:00 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a483dd2a28bbd7835cda9c014266c0dfcee502ef67e5d9a4e090c807b3a1717`  
		Last Modified: Thu, 15 Feb 2018 08:17:01 GMT  
		Size: 981.7 KB (981722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54f43e9ec42cfd31cb8e68dcb42d598d064bebc429b2c16745ba6a4c800a2e14`  
		Last Modified: Thu, 15 Feb 2018 08:17:56 GMT  
		Size: 4.4 MB (4378563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88b9c9eeae2f3d022a9784165ed114dc178c3d8c61aeab503b07ec4584b9a6ec`  
		Last Modified: Thu, 15 Feb 2018 08:17:56 GMT  
		Size: 5.2 MB (5230478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:550ebe2b19d25b3a16bf3c784a197dd1feecadfd0e734aa59287381e4859fd2f`  
		Last Modified: Thu, 15 Feb 2018 08:17:54 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c891f0ce6cc861f59f8c3c6f4b64d520ca66f9c3cbf6e91299dc952fe48e4200`  
		Last Modified: Thu, 15 Feb 2018 08:17:54 GMT  
		Size: 409.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2-alpine`

```console
$ docker pull redis@sha256:17f6a9cd8ad188bdc19d07c127e51ca21a77a1a6bff653bc4a4d9f777d648c84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redis:3.2-alpine` - linux; amd64

```console
$ docker pull redis@sha256:2f48b500c466881bc8e943610af3526262ec7e8c81a5a22ddcb33cee0681026f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7572157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f248939460200f8c70427d56f042621a45dcccd68bb2bcba9cb3c8a75527e389`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 24 Jan 2018 00:17:37 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 24 Jan 2018 00:17:41 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 24 Jan 2018 00:17:41 GMT
ENV REDIS_VERSION=3.2.11
# Wed, 24 Jan 2018 00:17:42 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Wed, 24 Jan 2018 00:17:42 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Wed, 24 Jan 2018 00:18:10 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Wed, 24 Jan 2018 00:18:11 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 24 Jan 2018 00:18:11 GMT
VOLUME [/data]
# Wed, 24 Jan 2018 00:18:12 GMT
WORKDIR /data
# Wed, 24 Jan 2018 00:18:12 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 24 Jan 2018 00:18:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 24 Jan 2018 00:18:13 GMT
EXPOSE 6379/tcp
# Wed, 24 Jan 2018 00:18:13 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aae70a2e60279ffae89150a59b81fe10d1d81f341ef6f31b9714ea6cc3418577`  
		Last Modified: Wed, 24 Jan 2018 00:19:46 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87c655da471c9a7d8f946ec7b04a6a72a98ae8c1734bddf4b950861b5638fe20`  
		Last Modified: Wed, 24 Jan 2018 00:19:45 GMT  
		Size: 8.6 KB (8554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9b1b91509120408ad5c35c34bdf65bc4e3468ba63c313809c057f350e35f536`  
		Last Modified: Wed, 24 Jan 2018 00:19:47 GMT  
		Size: 5.5 MB (5496316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de2b963af2e3bdde9c9e8ef36c33c6f3f9e4dc0f446b0977d6bc7b16e0d69e2a`  
		Last Modified: Wed, 24 Jan 2018 00:19:45 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68009ce48d272691340ee82d45aac3e73afd0de7bcf29eae04b04e517e41590c`  
		Last Modified: Wed, 24 Jan 2018 00:19:45 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2-alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:a5da84b8f7a80e380d243bee2fea779b51be2c5c3175a1d52b88666812f852ea
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7629126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:526d5e0986598a85bef833b3c7eb339c3386273e8269dc770d46dfa71a68a256`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:35 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Wed, 25 Oct 2017 23:28:36 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:36 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:24:18 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Thu, 26 Oct 2017 05:24:21 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 05:24:21 GMT
ENV REDIS_VERSION=3.2.11
# Thu, 26 Oct 2017 05:24:22 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Thu, 26 Oct 2017 05:24:22 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Thu, 26 Oct 2017 05:24:42 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Thu, 26 Oct 2017 05:24:44 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 26 Oct 2017 05:24:44 GMT
VOLUME [/data]
# Thu, 26 Oct 2017 05:24:45 GMT
WORKDIR /data
# Thu, 26 Oct 2017 05:24:45 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Thu, 26 Oct 2017 05:24:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 05:24:45 GMT
EXPOSE 6379/tcp
# Thu, 26 Oct 2017 05:24:46 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cda69762aee1588fa82aeabf1af6d6ad24f737cce1451fab2e0199849b1e12e`  
		Last Modified: Wed, 25 Oct 2017 23:28:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ed5ccc911def388320cc35fabf3f26d6dbe3865f29cbc8ea4d6969afba892b6`  
		Last Modified: Thu, 26 Oct 2017 05:25:25 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fb557aa00e602a24029e21b21fd124cee2b11be03a5d7c2c7a5bdd35d837a2c`  
		Last Modified: Thu, 26 Oct 2017 05:25:26 GMT  
		Size: 8.4 KB (8372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:333282354ac5d74938fb750a3adea3f33c0b5f077d53d661ac19988e2bdc4e7c`  
		Last Modified: Thu, 26 Oct 2017 05:25:27 GMT  
		Size: 5.7 MB (5652784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a28f0879b62dc750332363fea24bd9b8c13184c92b4078b6fb1a432b9ecc07a`  
		Last Modified: Thu, 26 Oct 2017 05:25:25 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bff9dc7cb3112c0957cf58882450aa33bae9c950c51b846be7b4844eee33eaa2`  
		Last Modified: Thu, 26 Oct 2017 05:25:25 GMT  
		Size: 398.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2-alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:49a83f09cb9ba8ebdfa86998998f390429365ae750afc17fea1c0220bb77a00a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7343669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2de13a11ff532fbb704dbb7f8e7fd3c45b760973b396e10566f655f52d7c8e31`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Wed, 24 Jan 2018 13:25:46 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 24 Jan 2018 13:25:50 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 24 Jan 2018 13:25:51 GMT
ENV REDIS_VERSION=3.2.11
# Wed, 24 Jan 2018 13:25:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Wed, 24 Jan 2018 13:25:52 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Wed, 24 Jan 2018 13:26:30 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Wed, 24 Jan 2018 13:26:32 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 24 Jan 2018 13:26:32 GMT
VOLUME [/data]
# Wed, 24 Jan 2018 13:26:33 GMT
WORKDIR /data
# Wed, 24 Jan 2018 13:26:34 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 24 Jan 2018 13:26:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 24 Jan 2018 13:26:35 GMT
EXPOSE 6379/tcp
# Wed, 24 Jan 2018 13:26:36 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec42e4d70bd6b5d14ceb60d165f35c9d1348c35d3a566bb230cec599a0ffd64`  
		Last Modified: Wed, 24 Jan 2018 13:28:23 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:555bf2ac2a80a9414fecc99d0e2e659cf9cc43ddcf785a45cf07b2fbcbf0f7b4`  
		Last Modified: Wed, 24 Jan 2018 13:28:23 GMT  
		Size: 8.7 KB (8656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59eab2490dbd5d09edf331e441a432cc776c527c92df5c61937891df96677e7b`  
		Last Modified: Wed, 24 Jan 2018 13:28:25 GMT  
		Size: 5.3 MB (5344231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef6829e0f2cf73f62904b4f489bdac197239823de22a0caed048b4ab42ee48a3`  
		Last Modified: Wed, 24 Jan 2018 13:28:24 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929037c51cad0c412c1d715052b30f59a49106f2680caee5ae4bd8778214953a`  
		Last Modified: Wed, 24 Jan 2018 13:28:23 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2-alpine` - linux; 386

```console
$ docker pull redis@sha256:40fc55739f3babda4cc87f7c596762c18d6fb5a4e1d5b7e3a70abe93f2244fef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7323311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edfb2674317dba9883722dca103f8dff6f95b4d47720ccd4110c199b09048c38`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Wed, 24 Jan 2018 13:18:38 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 24 Jan 2018 13:18:41 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 24 Jan 2018 13:18:51 GMT
ENV REDIS_VERSION=3.2.11
# Wed, 24 Jan 2018 13:18:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Wed, 24 Jan 2018 13:18:51 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Wed, 24 Jan 2018 13:19:30 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Wed, 24 Jan 2018 13:21:08 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 24 Jan 2018 13:21:08 GMT
VOLUME [/data]
# Wed, 24 Jan 2018 13:21:09 GMT
WORKDIR /data
# Wed, 24 Jan 2018 13:21:09 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 24 Jan 2018 13:21:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 24 Jan 2018 13:21:10 GMT
EXPOSE 6379/tcp
# Wed, 24 Jan 2018 13:21:10 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29cce73050e1b58c218a1c94cd8c9f719d38530500ab97333eac5fdaf385dbc`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca9ea366359b5aae5b03a9cf35751eebba1582c08e0a84ddadd88bfee7305ea7`  
		Last Modified: Wed, 24 Jan 2018 13:30:02 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8443df14b3c9f580474f3c6e748be548a63bd8344a0fd8e5d63aec2d36f7504`  
		Last Modified: Wed, 24 Jan 2018 13:30:02 GMT  
		Size: 8.7 KB (8653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84285e2a37e96c0acac1d372cfb97e9e260f045e38d204f6df0a7a8670d75d30`  
		Last Modified: Wed, 24 Jan 2018 13:30:03 GMT  
		Size: 5.2 MB (5186514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:550fd0a4330b3334476a9df008d9dca1509a8fea3817e6ad435b240ad56726f8`  
		Last Modified: Wed, 24 Jan 2018 13:30:02 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:894ce225283a2f6621417271dcbc60d3c0be4ea03702195321b54a53ea5faad9`  
		Last Modified: Wed, 24 Jan 2018 13:30:02 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2-alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:c1f93bcdfb21023bf7a0832cb5665efd38f663794727287afb5dc0c992a3944c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7687655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68523fd910e3e0d083b862e42ea69848de573e65f7ae4a642eddb8895d64fd85`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Wed, 24 Jan 2018 06:35:28 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 24 Jan 2018 06:35:34 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 24 Jan 2018 06:35:35 GMT
ENV REDIS_VERSION=3.2.11
# Wed, 24 Jan 2018 06:35:37 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Wed, 24 Jan 2018 06:35:38 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Wed, 24 Jan 2018 06:36:02 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Wed, 24 Jan 2018 06:36:05 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 24 Jan 2018 06:36:07 GMT
VOLUME [/data]
# Wed, 24 Jan 2018 06:36:08 GMT
WORKDIR /data
# Wed, 24 Jan 2018 06:36:10 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 24 Jan 2018 06:36:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 24 Jan 2018 06:36:14 GMT
EXPOSE 6379/tcp
# Wed, 24 Jan 2018 06:36:16 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:802132ccdaaf1e42c991c0ad2b274ee46d7d02210e23a3bc630c772fbdd533c2`  
		Last Modified: Wed, 24 Jan 2018 06:37:26 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3edb35368beebf064881c4a2efa343effc2775c4bb6e9121e8426990bc75df12`  
		Last Modified: Wed, 24 Jan 2018 06:37:26 GMT  
		Size: 9.3 KB (9269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4488d8d2fe8ec75f71e91f0582124691fb61e0b814ce014ce02be2ce96c85e53`  
		Last Modified: Wed, 24 Jan 2018 06:37:28 GMT  
		Size: 5.6 MB (5594924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cf90c45f2d46dfbf7fbe73f31abbfdf99a330021ce55d6b4f937cbb7d97fc7d`  
		Last Modified: Wed, 24 Jan 2018 06:37:27 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb0c711decff526bd165395d79ee409ed9008c388b690a17709b19e9381b2472`  
		Last Modified: Wed, 24 Jan 2018 06:37:29 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2-alpine` - linux; s390x

```console
$ docker pull redis@sha256:7ebff388d27d3505f14019c592dddb0ddec17e5219c0a5bddec659d42c65614c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7829671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6194f1e1036eec4a550d73d9211042163c2775b4f06ee2aa14609468b49ea97c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Wed, 24 Jan 2018 06:24:30 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 24 Jan 2018 06:24:33 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 24 Jan 2018 06:24:33 GMT
ENV REDIS_VERSION=3.2.11
# Wed, 24 Jan 2018 06:24:33 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Wed, 24 Jan 2018 06:24:33 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Wed, 24 Jan 2018 06:24:54 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Wed, 24 Jan 2018 06:24:55 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 24 Jan 2018 06:24:55 GMT
VOLUME [/data]
# Wed, 24 Jan 2018 06:24:55 GMT
WORKDIR /data
# Wed, 24 Jan 2018 06:24:55 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 24 Jan 2018 06:24:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 24 Jan 2018 06:24:56 GMT
EXPOSE 6379/tcp
# Wed, 24 Jan 2018 06:24:56 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:11e7bc85614a236b32043d147930fd2bc9055af8642fe30e5e56142590572b0e`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 2.2 MB (2185231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f825cbb729285f1fe2a0cd1d4d36897e3fe2191c5ee044ce11a5d301dc64a34`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:167640baaae6b19b666d28c35de1dde729eaca22986531c0f3b3dd6af5bbc469`  
		Last Modified: Wed, 24 Jan 2018 06:25:46 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dab4f89cc8856e8d43a9cc8e3ba6670d31906a9a3409fdf2f59ad893cda37c8`  
		Last Modified: Wed, 24 Jan 2018 06:25:46 GMT  
		Size: 8.9 KB (8944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b678161f16bddddb9edbbd88104d816ba6ac30305738588aab303ba041e0602`  
		Last Modified: Wed, 24 Jan 2018 06:25:47 GMT  
		Size: 5.6 MB (5633570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:944f84c24af49b04fe3e9bea90d7ef4c7c1911c76ffd7c6c1363ba5267bd91ca`  
		Last Modified: Wed, 24 Jan 2018 06:25:46 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16383c8709d68b006c3644a882b0bf3448c005d3476d781438a4bfc6d915ddf2`  
		Last Modified: Wed, 24 Jan 2018 06:25:46 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:32bit`

```console
$ docker pull redis@sha256:b7effebd7bccb0f5c822754330eacc2a95de3e788d08e58d9542ca3e4865b896
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:32bit` - linux; amd64

```console
$ docker pull redis@sha256:a9d58e15ab1e99975a55051b85f80b8b0a16491e58be4a5f5ee4c32d1d29ba59
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.0 MB (43002329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed9ee2d4834b2f1d9cb2621fe747370541254199c39b9d3c3e86e65a50fa10db`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 15 Feb 2018 01:46:20 GMT
ADD file:a0f72eb6710fe45aff98d40665ed5c106a992b2b0d1d57a1fb6ca98c4aa0f0a6 in / 
# Thu, 15 Feb 2018 01:46:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:50:37 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Thu, 15 Feb 2018 07:50:37 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 07:50:59 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 07:54:45 GMT
ENV REDIS_VERSION=4.0.8
# Thu, 15 Feb 2018 07:54:45 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.8.tar.gz
# Thu, 15 Feb 2018 07:54:45 GMT
ENV REDIS_DOWNLOAD_SHA=ff0c38b8c156319249fec61e5018cf5b5fe63a65b61690bec798f4c998c232ad
# Thu, 15 Feb 2018 08:04:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 08:05:16 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 08:05:16 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 15 Feb 2018 08:05:17 GMT
VOLUME [/data]
# Thu, 15 Feb 2018 08:05:17 GMT
WORKDIR /data
# Thu, 15 Feb 2018 08:05:17 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Thu, 15 Feb 2018 08:05:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 08:05:18 GMT
EXPOSE 6379/tcp
# Thu, 15 Feb 2018 08:05:18 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d2ca7eff5948133e4316d463c56948af87b4d4d09848ee0f8b698d3549a7a7dd`  
		Last Modified: Thu, 15 Feb 2018 02:18:31 GMT  
		Size: 30.1 MB (30122379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d1a2245aaa6e74708fd6c58cf1ac19f9db2d2031107c25d20b0ac06d11f2b7c`  
		Last Modified: Thu, 15 Feb 2018 08:17:00 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a483dd2a28bbd7835cda9c014266c0dfcee502ef67e5d9a4e090c807b3a1717`  
		Last Modified: Thu, 15 Feb 2018 08:17:01 GMT  
		Size: 981.7 KB (981722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bce8af5849ba0d561b8eed23e6deb63674cd52a1eda8e4343556ee6bf3dea69`  
		Last Modified: Thu, 15 Feb 2018 08:21:00 GMT  
		Size: 4.4 MB (4378570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a86c627d6879c786d06b4a0e37c9bf01c379cc5b7f93551ab6228f7180740b5f`  
		Last Modified: Thu, 15 Feb 2018 08:21:00 GMT  
		Size: 7.5 MB (7517063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15945e40da683998122b6c443c8f53841f3461ad36db97438e3e93e6b36ce3c6`  
		Last Modified: Thu, 15 Feb 2018 08:20:58 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba0f3aa6300e5e98149d125b41b3dd868f71c9b0d256262b2209f9a222ff7cf8`  
		Last Modified: Thu, 15 Feb 2018 08:20:58 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3-32bit`

```console
$ docker pull redis@sha256:6e5d4bd455dbeb01f81580fe00e9b272c6142a11fca6e9ecc0e54521b84fa7c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:3-32bit` - linux; amd64

```console
$ docker pull redis@sha256:2bc22f32b3c664544ba326a34c551365429bd7cc71b7ddf576b1c983c14d9aa0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.7 MB (40715738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf403d57f2445eac182720308de110503477c889ad901e8e5917caf888e9ed7b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 15 Feb 2018 01:46:20 GMT
ADD file:a0f72eb6710fe45aff98d40665ed5c106a992b2b0d1d57a1fb6ca98c4aa0f0a6 in / 
# Thu, 15 Feb 2018 01:46:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:50:37 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Thu, 15 Feb 2018 07:50:37 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 07:50:59 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 07:50:59 GMT
ENV REDIS_VERSION=3.2.11
# Thu, 15 Feb 2018 07:51:00 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Thu, 15 Feb 2018 07:51:00 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Thu, 15 Feb 2018 07:52:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:53:41 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 07:53:45 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 15 Feb 2018 07:53:45 GMT
VOLUME [/data]
# Thu, 15 Feb 2018 07:53:45 GMT
WORKDIR /data
# Thu, 15 Feb 2018 07:53:57 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Thu, 15 Feb 2018 07:53:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 07:53:58 GMT
EXPOSE 6379/tcp
# Thu, 15 Feb 2018 07:53:58 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d2ca7eff5948133e4316d463c56948af87b4d4d09848ee0f8b698d3549a7a7dd`  
		Last Modified: Thu, 15 Feb 2018 02:18:31 GMT  
		Size: 30.1 MB (30122379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d1a2245aaa6e74708fd6c58cf1ac19f9db2d2031107c25d20b0ac06d11f2b7c`  
		Last Modified: Thu, 15 Feb 2018 08:17:00 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a483dd2a28bbd7835cda9c014266c0dfcee502ef67e5d9a4e090c807b3a1717`  
		Last Modified: Thu, 15 Feb 2018 08:17:01 GMT  
		Size: 981.7 KB (981722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54f43e9ec42cfd31cb8e68dcb42d598d064bebc429b2c16745ba6a4c800a2e14`  
		Last Modified: Thu, 15 Feb 2018 08:17:56 GMT  
		Size: 4.4 MB (4378563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88b9c9eeae2f3d022a9784165ed114dc178c3d8c61aeab503b07ec4584b9a6ec`  
		Last Modified: Thu, 15 Feb 2018 08:17:56 GMT  
		Size: 5.2 MB (5230478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:550ebe2b19d25b3a16bf3c784a197dd1feecadfd0e734aa59287381e4859fd2f`  
		Last Modified: Thu, 15 Feb 2018 08:17:54 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c891f0ce6cc861f59f8c3c6f4b64d520ca66f9c3cbf6e91299dc952fe48e4200`  
		Last Modified: Thu, 15 Feb 2018 08:17:54 GMT  
		Size: 409.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3-alpine`

```console
$ docker pull redis@sha256:17f6a9cd8ad188bdc19d07c127e51ca21a77a1a6bff653bc4a4d9f777d648c84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redis:3-alpine` - linux; amd64

```console
$ docker pull redis@sha256:2f48b500c466881bc8e943610af3526262ec7e8c81a5a22ddcb33cee0681026f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7572157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f248939460200f8c70427d56f042621a45dcccd68bb2bcba9cb3c8a75527e389`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 24 Jan 2018 00:17:37 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 24 Jan 2018 00:17:41 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 24 Jan 2018 00:17:41 GMT
ENV REDIS_VERSION=3.2.11
# Wed, 24 Jan 2018 00:17:42 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Wed, 24 Jan 2018 00:17:42 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Wed, 24 Jan 2018 00:18:10 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Wed, 24 Jan 2018 00:18:11 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 24 Jan 2018 00:18:11 GMT
VOLUME [/data]
# Wed, 24 Jan 2018 00:18:12 GMT
WORKDIR /data
# Wed, 24 Jan 2018 00:18:12 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 24 Jan 2018 00:18:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 24 Jan 2018 00:18:13 GMT
EXPOSE 6379/tcp
# Wed, 24 Jan 2018 00:18:13 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aae70a2e60279ffae89150a59b81fe10d1d81f341ef6f31b9714ea6cc3418577`  
		Last Modified: Wed, 24 Jan 2018 00:19:46 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87c655da471c9a7d8f946ec7b04a6a72a98ae8c1734bddf4b950861b5638fe20`  
		Last Modified: Wed, 24 Jan 2018 00:19:45 GMT  
		Size: 8.6 KB (8554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9b1b91509120408ad5c35c34bdf65bc4e3468ba63c313809c057f350e35f536`  
		Last Modified: Wed, 24 Jan 2018 00:19:47 GMT  
		Size: 5.5 MB (5496316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de2b963af2e3bdde9c9e8ef36c33c6f3f9e4dc0f446b0977d6bc7b16e0d69e2a`  
		Last Modified: Wed, 24 Jan 2018 00:19:45 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68009ce48d272691340ee82d45aac3e73afd0de7bcf29eae04b04e517e41590c`  
		Last Modified: Wed, 24 Jan 2018 00:19:45 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3-alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:a5da84b8f7a80e380d243bee2fea779b51be2c5c3175a1d52b88666812f852ea
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7629126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:526d5e0986598a85bef833b3c7eb339c3386273e8269dc770d46dfa71a68a256`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:35 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Wed, 25 Oct 2017 23:28:36 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:36 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:24:18 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Thu, 26 Oct 2017 05:24:21 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 05:24:21 GMT
ENV REDIS_VERSION=3.2.11
# Thu, 26 Oct 2017 05:24:22 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Thu, 26 Oct 2017 05:24:22 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Thu, 26 Oct 2017 05:24:42 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Thu, 26 Oct 2017 05:24:44 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 26 Oct 2017 05:24:44 GMT
VOLUME [/data]
# Thu, 26 Oct 2017 05:24:45 GMT
WORKDIR /data
# Thu, 26 Oct 2017 05:24:45 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Thu, 26 Oct 2017 05:24:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 05:24:45 GMT
EXPOSE 6379/tcp
# Thu, 26 Oct 2017 05:24:46 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cda69762aee1588fa82aeabf1af6d6ad24f737cce1451fab2e0199849b1e12e`  
		Last Modified: Wed, 25 Oct 2017 23:28:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ed5ccc911def388320cc35fabf3f26d6dbe3865f29cbc8ea4d6969afba892b6`  
		Last Modified: Thu, 26 Oct 2017 05:25:25 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fb557aa00e602a24029e21b21fd124cee2b11be03a5d7c2c7a5bdd35d837a2c`  
		Last Modified: Thu, 26 Oct 2017 05:25:26 GMT  
		Size: 8.4 KB (8372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:333282354ac5d74938fb750a3adea3f33c0b5f077d53d661ac19988e2bdc4e7c`  
		Last Modified: Thu, 26 Oct 2017 05:25:27 GMT  
		Size: 5.7 MB (5652784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a28f0879b62dc750332363fea24bd9b8c13184c92b4078b6fb1a432b9ecc07a`  
		Last Modified: Thu, 26 Oct 2017 05:25:25 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bff9dc7cb3112c0957cf58882450aa33bae9c950c51b846be7b4844eee33eaa2`  
		Last Modified: Thu, 26 Oct 2017 05:25:25 GMT  
		Size: 398.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3-alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:49a83f09cb9ba8ebdfa86998998f390429365ae750afc17fea1c0220bb77a00a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7343669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2de13a11ff532fbb704dbb7f8e7fd3c45b760973b396e10566f655f52d7c8e31`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Wed, 24 Jan 2018 13:25:46 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 24 Jan 2018 13:25:50 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 24 Jan 2018 13:25:51 GMT
ENV REDIS_VERSION=3.2.11
# Wed, 24 Jan 2018 13:25:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Wed, 24 Jan 2018 13:25:52 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Wed, 24 Jan 2018 13:26:30 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Wed, 24 Jan 2018 13:26:32 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 24 Jan 2018 13:26:32 GMT
VOLUME [/data]
# Wed, 24 Jan 2018 13:26:33 GMT
WORKDIR /data
# Wed, 24 Jan 2018 13:26:34 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 24 Jan 2018 13:26:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 24 Jan 2018 13:26:35 GMT
EXPOSE 6379/tcp
# Wed, 24 Jan 2018 13:26:36 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec42e4d70bd6b5d14ceb60d165f35c9d1348c35d3a566bb230cec599a0ffd64`  
		Last Modified: Wed, 24 Jan 2018 13:28:23 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:555bf2ac2a80a9414fecc99d0e2e659cf9cc43ddcf785a45cf07b2fbcbf0f7b4`  
		Last Modified: Wed, 24 Jan 2018 13:28:23 GMT  
		Size: 8.7 KB (8656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59eab2490dbd5d09edf331e441a432cc776c527c92df5c61937891df96677e7b`  
		Last Modified: Wed, 24 Jan 2018 13:28:25 GMT  
		Size: 5.3 MB (5344231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef6829e0f2cf73f62904b4f489bdac197239823de22a0caed048b4ab42ee48a3`  
		Last Modified: Wed, 24 Jan 2018 13:28:24 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929037c51cad0c412c1d715052b30f59a49106f2680caee5ae4bd8778214953a`  
		Last Modified: Wed, 24 Jan 2018 13:28:23 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3-alpine` - linux; 386

```console
$ docker pull redis@sha256:40fc55739f3babda4cc87f7c596762c18d6fb5a4e1d5b7e3a70abe93f2244fef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7323311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edfb2674317dba9883722dca103f8dff6f95b4d47720ccd4110c199b09048c38`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Wed, 24 Jan 2018 13:18:38 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 24 Jan 2018 13:18:41 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 24 Jan 2018 13:18:51 GMT
ENV REDIS_VERSION=3.2.11
# Wed, 24 Jan 2018 13:18:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Wed, 24 Jan 2018 13:18:51 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Wed, 24 Jan 2018 13:19:30 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Wed, 24 Jan 2018 13:21:08 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 24 Jan 2018 13:21:08 GMT
VOLUME [/data]
# Wed, 24 Jan 2018 13:21:09 GMT
WORKDIR /data
# Wed, 24 Jan 2018 13:21:09 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 24 Jan 2018 13:21:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 24 Jan 2018 13:21:10 GMT
EXPOSE 6379/tcp
# Wed, 24 Jan 2018 13:21:10 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29cce73050e1b58c218a1c94cd8c9f719d38530500ab97333eac5fdaf385dbc`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca9ea366359b5aae5b03a9cf35751eebba1582c08e0a84ddadd88bfee7305ea7`  
		Last Modified: Wed, 24 Jan 2018 13:30:02 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8443df14b3c9f580474f3c6e748be548a63bd8344a0fd8e5d63aec2d36f7504`  
		Last Modified: Wed, 24 Jan 2018 13:30:02 GMT  
		Size: 8.7 KB (8653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84285e2a37e96c0acac1d372cfb97e9e260f045e38d204f6df0a7a8670d75d30`  
		Last Modified: Wed, 24 Jan 2018 13:30:03 GMT  
		Size: 5.2 MB (5186514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:550fd0a4330b3334476a9df008d9dca1509a8fea3817e6ad435b240ad56726f8`  
		Last Modified: Wed, 24 Jan 2018 13:30:02 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:894ce225283a2f6621417271dcbc60d3c0be4ea03702195321b54a53ea5faad9`  
		Last Modified: Wed, 24 Jan 2018 13:30:02 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3-alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:c1f93bcdfb21023bf7a0832cb5665efd38f663794727287afb5dc0c992a3944c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7687655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68523fd910e3e0d083b862e42ea69848de573e65f7ae4a642eddb8895d64fd85`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Wed, 24 Jan 2018 06:35:28 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 24 Jan 2018 06:35:34 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 24 Jan 2018 06:35:35 GMT
ENV REDIS_VERSION=3.2.11
# Wed, 24 Jan 2018 06:35:37 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Wed, 24 Jan 2018 06:35:38 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Wed, 24 Jan 2018 06:36:02 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Wed, 24 Jan 2018 06:36:05 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 24 Jan 2018 06:36:07 GMT
VOLUME [/data]
# Wed, 24 Jan 2018 06:36:08 GMT
WORKDIR /data
# Wed, 24 Jan 2018 06:36:10 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 24 Jan 2018 06:36:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 24 Jan 2018 06:36:14 GMT
EXPOSE 6379/tcp
# Wed, 24 Jan 2018 06:36:16 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:802132ccdaaf1e42c991c0ad2b274ee46d7d02210e23a3bc630c772fbdd533c2`  
		Last Modified: Wed, 24 Jan 2018 06:37:26 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3edb35368beebf064881c4a2efa343effc2775c4bb6e9121e8426990bc75df12`  
		Last Modified: Wed, 24 Jan 2018 06:37:26 GMT  
		Size: 9.3 KB (9269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4488d8d2fe8ec75f71e91f0582124691fb61e0b814ce014ce02be2ce96c85e53`  
		Last Modified: Wed, 24 Jan 2018 06:37:28 GMT  
		Size: 5.6 MB (5594924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cf90c45f2d46dfbf7fbe73f31abbfdf99a330021ce55d6b4f937cbb7d97fc7d`  
		Last Modified: Wed, 24 Jan 2018 06:37:27 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb0c711decff526bd165395d79ee409ed9008c388b690a17709b19e9381b2472`  
		Last Modified: Wed, 24 Jan 2018 06:37:29 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3-alpine` - linux; s390x

```console
$ docker pull redis@sha256:7ebff388d27d3505f14019c592dddb0ddec17e5219c0a5bddec659d42c65614c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7829671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6194f1e1036eec4a550d73d9211042163c2775b4f06ee2aa14609468b49ea97c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Wed, 24 Jan 2018 06:24:30 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 24 Jan 2018 06:24:33 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 24 Jan 2018 06:24:33 GMT
ENV REDIS_VERSION=3.2.11
# Wed, 24 Jan 2018 06:24:33 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Wed, 24 Jan 2018 06:24:33 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Wed, 24 Jan 2018 06:24:54 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Wed, 24 Jan 2018 06:24:55 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 24 Jan 2018 06:24:55 GMT
VOLUME [/data]
# Wed, 24 Jan 2018 06:24:55 GMT
WORKDIR /data
# Wed, 24 Jan 2018 06:24:55 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 24 Jan 2018 06:24:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 24 Jan 2018 06:24:56 GMT
EXPOSE 6379/tcp
# Wed, 24 Jan 2018 06:24:56 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:11e7bc85614a236b32043d147930fd2bc9055af8642fe30e5e56142590572b0e`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 2.2 MB (2185231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f825cbb729285f1fe2a0cd1d4d36897e3fe2191c5ee044ce11a5d301dc64a34`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:167640baaae6b19b666d28c35de1dde729eaca22986531c0f3b3dd6af5bbc469`  
		Last Modified: Wed, 24 Jan 2018 06:25:46 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dab4f89cc8856e8d43a9cc8e3ba6670d31906a9a3409fdf2f59ad893cda37c8`  
		Last Modified: Wed, 24 Jan 2018 06:25:46 GMT  
		Size: 8.9 KB (8944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b678161f16bddddb9edbbd88104d816ba6ac30305738588aab303ba041e0602`  
		Last Modified: Wed, 24 Jan 2018 06:25:47 GMT  
		Size: 5.6 MB (5633570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:944f84c24af49b04fe3e9bea90d7ef4c7c1911c76ffd7c6c1363ba5267bd91ca`  
		Last Modified: Wed, 24 Jan 2018 06:25:46 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16383c8709d68b006c3644a882b0bf3448c005d3476d781438a4bfc6d915ddf2`  
		Last Modified: Wed, 24 Jan 2018 06:25:46 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4`

```console
$ docker pull redis@sha256:24cc4429415d64c616b94ea3b9e2d62602afc99135472c459d787cab0aa0855e
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

### `redis:4` - linux; amd64

```console
$ docker pull redis@sha256:79b58bb19c22e034e68c606bd63837e8c1b5ab45ba4077ed6e1ce558f02740e6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.4 MB (39403588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33c26d72bd74fb697defa17d7eb2a4eefc77bc7363ae4ce461d147c6532ec05c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 15 Feb 2018 01:46:20 GMT
ADD file:a0f72eb6710fe45aff98d40665ed5c106a992b2b0d1d57a1fb6ca98c4aa0f0a6 in / 
# Thu, 15 Feb 2018 01:46:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:50:37 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Thu, 15 Feb 2018 07:50:37 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 07:50:59 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 07:54:45 GMT
ENV REDIS_VERSION=4.0.8
# Thu, 15 Feb 2018 07:54:45 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.8.tar.gz
# Thu, 15 Feb 2018 07:54:45 GMT
ENV REDIS_DOWNLOAD_SHA=ff0c38b8c156319249fec61e5018cf5b5fe63a65b61690bec798f4c998c232ad
# Thu, 15 Feb 2018 07:55:30 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 07:55:31 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 15 Feb 2018 07:55:31 GMT
VOLUME [/data]
# Thu, 15 Feb 2018 07:55:31 GMT
WORKDIR /data
# Thu, 15 Feb 2018 07:55:32 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Thu, 15 Feb 2018 07:55:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 07:55:32 GMT
EXPOSE 6379/tcp
# Thu, 15 Feb 2018 07:55:33 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d2ca7eff5948133e4316d463c56948af87b4d4d09848ee0f8b698d3549a7a7dd`  
		Last Modified: Thu, 15 Feb 2018 02:18:31 GMT  
		Size: 30.1 MB (30122379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d1a2245aaa6e74708fd6c58cf1ac19f9db2d2031107c25d20b0ac06d11f2b7c`  
		Last Modified: Thu, 15 Feb 2018 08:17:00 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a483dd2a28bbd7835cda9c014266c0dfcee502ef67e5d9a4e090c807b3a1717`  
		Last Modified: Thu, 15 Feb 2018 08:17:01 GMT  
		Size: 981.7 KB (981722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b78ebdc44f06df0412fcdba5b9965a7794b2b82a230ba648df22a013ce372b3`  
		Last Modified: Thu, 15 Feb 2018 08:19:54 GMT  
		Size: 8.3 MB (8296895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79b76500ef2684aad5af9071ca8b4d3efea5355d47a8d6269ba1f96b7b0a4f92`  
		Last Modified: Thu, 15 Feb 2018 08:19:52 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2991d9a56244dea23a40a42549d860eb12c102022a5d6ddde4f301a495d40c4`  
		Last Modified: Thu, 15 Feb 2018 08:19:52 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; arm variant v5

```console
$ docker pull redis@sha256:82ccd6f80a6460d3dbbab4e23192e861c106be6d3383446065e1428a29192610
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 MB (37592143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fffcf1e3c1222899750cda51b72e156d3e1420f30dd27351d3a6261ebe1b033`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 12 Dec 2017 20:57:33 GMT
ADD file:29d0e44ebcc6f8dc2cfbc86c5034380677d263e9eec27a22ba045e0810836f81 in / 
# Tue, 12 Dec 2017 20:57:34 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 23:14:35 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 12 Dec 2017 23:14:35 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 23:15:21 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 06 Feb 2018 15:09:32 GMT
ENV REDIS_VERSION=4.0.8
# Tue, 06 Feb 2018 15:09:32 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.8.tar.gz
# Tue, 06 Feb 2018 15:09:32 GMT
ENV REDIS_DOWNLOAD_SHA=ff0c38b8c156319249fec61e5018cf5b5fe63a65b61690bec798f4c998c232ad
# Tue, 06 Feb 2018 15:10:42 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 06 Feb 2018 15:10:43 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 06 Feb 2018 15:10:43 GMT
VOLUME [/data]
# Tue, 06 Feb 2018 15:10:43 GMT
WORKDIR /data
# Tue, 06 Feb 2018 15:10:44 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 06 Feb 2018 15:10:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Feb 2018 15:10:44 GMT
EXPOSE 6379/tcp
# Tue, 06 Feb 2018 15:10:44 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:51e696f556166d0e25b3b27c824c4aafbddd5adcfd3f5186c09707f7baa3b312`  
		Last Modified: Tue, 12 Dec 2017 21:07:41 GMT  
		Size: 28.4 MB (28423526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0206b9cb3a70c21180f01a2532fe2c5a436a48e5fc5d8b939ba69b7d61c80a3a`  
		Last Modified: Tue, 12 Dec 2017 23:18:09 GMT  
		Size: 2.1 KB (2075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f18f2f5d7b2619f7683612c23f23c54c1f09a9ac9f5714f36e1ff47dffac347`  
		Last Modified: Tue, 12 Dec 2017 23:18:13 GMT  
		Size: 971.2 KB (971228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25635b92d7102aff70fa10be6f4e984bd2b437df2d4a2fc270cf15d4ad85416c`  
		Last Modified: Tue, 06 Feb 2018 15:10:58 GMT  
		Size: 8.2 MB (8194778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4475ae5eef34cfa997fe92213ec620c1cc3446db2ca4bde030e655929f6d85e`  
		Last Modified: Tue, 06 Feb 2018 15:10:55 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e798f17357153eb4b9535b974c0ebb56743a4774dbfb294d9fd95dfe103cc6f6`  
		Last Modified: Tue, 06 Feb 2018 15:10:55 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; arm variant v7

```console
$ docker pull redis@sha256:7cf526a2f8056e04b50140020ebedaa73539fae967d5f04004fa34c1d4a9a859
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35177313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7ce38f3ed4df984db03edd68c19324debfffed00f120af3086e455b0e923c11`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 12 Dec 2017 13:27:47 GMT
ADD file:1f5de474caa19da14d698a3f9c3d161abfa1e19e258a596d64f3dfc9e2f17686 in / 
# Tue, 12 Dec 2017 13:27:47 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 16:40:56 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 12 Dec 2017 16:40:56 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 16:41:50 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 06 Feb 2018 01:27:32 GMT
ENV REDIS_VERSION=4.0.8
# Tue, 06 Feb 2018 01:27:32 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.8.tar.gz
# Tue, 06 Feb 2018 01:27:32 GMT
ENV REDIS_DOWNLOAD_SHA=ff0c38b8c156319249fec61e5018cf5b5fe63a65b61690bec798f4c998c232ad
# Tue, 06 Feb 2018 01:28:31 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 06 Feb 2018 01:28:32 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 06 Feb 2018 01:28:32 GMT
VOLUME [/data]
# Tue, 06 Feb 2018 01:28:32 GMT
WORKDIR /data
# Tue, 06 Feb 2018 01:28:32 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 06 Feb 2018 01:28:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Feb 2018 01:28:33 GMT
EXPOSE 6379/tcp
# Tue, 06 Feb 2018 01:28:33 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:4b9c0f1a415433a98643bdda391dcf4fe5d9653fc3ed3845c7ac1be99eb43399`  
		Last Modified: Tue, 12 Dec 2017 13:39:52 GMT  
		Size: 26.3 MB (26282714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d6835fe576543df3c87405f33db99aa1f040e3f241c5e5d72ffb416953902b8`  
		Last Modified: Tue, 12 Dec 2017 16:44:59 GMT  
		Size: 2.1 KB (2076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a11c10ad12017478481b1755839ece7c69945ee8c04b97bb10909db85e4ed338`  
		Last Modified: Tue, 12 Dec 2017 16:44:59 GMT  
		Size: 956.1 KB (956126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69000625f437a6cf3ee8d6b60151e3b39452ece0ef361e2f590893944afeef55`  
		Last Modified: Tue, 06 Feb 2018 01:29:04 GMT  
		Size: 7.9 MB (7935860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12aed7147e11e132c5248e25289535495e5d0ad14d81289ee91a77f27e1863e2`  
		Last Modified: Tue, 06 Feb 2018 01:29:02 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:718285eeeaaf6b3766acae3b4b75420baeffe68ad824cb8c6c27be64c95a6deb`  
		Last Modified: Tue, 06 Feb 2018 01:29:02 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:c176f707c0b8377acdeee4f8bb2dea83e47c28e195a0d2f51bf5dd1c2172aa8f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36876433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79ccb057108af0b1b266f0e3d3ef157f65e26939129295e26f3a7c9ab698a29f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 12 Dec 2017 18:26:03 GMT
ADD file:da6be268a98d89a43438155746ca6d08f474e9aa85c64699f50445352b46c348 in / 
# Tue, 12 Dec 2017 18:26:04 GMT
CMD ["bash"]
# Wed, 20 Dec 2017 13:25:39 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 20 Dec 2017 13:25:40 GMT
ENV GOSU_VERSION=1.10
# Wed, 20 Dec 2017 13:26:36 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 06 Feb 2018 13:25:53 GMT
ENV REDIS_VERSION=4.0.8
# Tue, 06 Feb 2018 13:25:53 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.8.tar.gz
# Tue, 06 Feb 2018 13:25:54 GMT
ENV REDIS_DOWNLOAD_SHA=ff0c38b8c156319249fec61e5018cf5b5fe63a65b61690bec798f4c998c232ad
# Tue, 06 Feb 2018 13:27:45 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 06 Feb 2018 13:27:47 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 06 Feb 2018 13:27:47 GMT
VOLUME [/data]
# Tue, 06 Feb 2018 13:27:48 GMT
WORKDIR /data
# Tue, 06 Feb 2018 13:27:48 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 06 Feb 2018 13:27:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Feb 2018 13:27:50 GMT
EXPOSE 6379/tcp
# Tue, 06 Feb 2018 13:27:50 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:8e9df51286bbe86a4cb3ffe54327681ab34b9b6d62c3f4e187ffc677125e4780`  
		Last Modified: Tue, 12 Dec 2017 18:41:37 GMT  
		Size: 27.5 MB (27480582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:075c247daad6bb45a002c0a24377355e91aef8e96dbc920ef85b5f95dba5d597`  
		Last Modified: Wed, 20 Dec 2017 13:31:04 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:671b4ef947e36f312884f8d49f560e5191e57a0e583820b56b530e7ff03d771f`  
		Last Modified: Wed, 20 Dec 2017 13:31:04 GMT  
		Size: 948.7 KB (948652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f10bccc98703ca88b1bd0e49f4f2d9c4b3365d0711c52394bd478877eedd7491`  
		Last Modified: Tue, 06 Feb 2018 13:30:05 GMT  
		Size: 8.4 MB (8444596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cafc779b99f3b7579b6e089be946244cbca353682df6522f8019af603b2c8fb4`  
		Last Modified: Tue, 06 Feb 2018 13:30:01 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:217dcb97c97acfe1d28bd854c74b53c1a8be2612d4aacd3926c89640d73cf38b`  
		Last Modified: Tue, 06 Feb 2018 13:30:02 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; 386

```console
$ docker pull redis@sha256:c1d2bd3e2ffb3b38672d74ed078157ea4e0925d2739b7bba99381aa70dae86f6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.7 MB (38741291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cdfeace81c84e393250a1ebc04a88d2acdee83d1e2938dd69a77e95b2adb4df`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 12 Dec 2017 14:21:05 GMT
ADD file:d31765999b40e32b628f3ec72b762f007f4918b08c507484e425adc990c87c26 in / 
# Tue, 12 Dec 2017 14:21:05 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:03:38 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 12 Dec 2017 21:03:38 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 21:04:16 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 06 Feb 2018 14:09:59 GMT
ENV REDIS_VERSION=4.0.8
# Tue, 06 Feb 2018 14:09:59 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.8.tar.gz
# Tue, 06 Feb 2018 14:10:00 GMT
ENV REDIS_DOWNLOAD_SHA=ff0c38b8c156319249fec61e5018cf5b5fe63a65b61690bec798f4c998c232ad
# Tue, 06 Feb 2018 14:11:14 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 06 Feb 2018 14:12:12 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 06 Feb 2018 14:12:12 GMT
VOLUME [/data]
# Tue, 06 Feb 2018 14:12:12 GMT
WORKDIR /data
# Tue, 06 Feb 2018 14:12:13 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 06 Feb 2018 14:12:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Feb 2018 14:12:13 GMT
EXPOSE 6379/tcp
# Tue, 06 Feb 2018 14:12:14 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6b323e7c684c46ec9e577d3acb692c7e1c0c26ffbea6a4530dbe784a7eedf0f7`  
		Last Modified: Tue, 12 Dec 2017 14:49:35 GMT  
		Size: 30.3 MB (30266257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00b36a22b0f548b632d8bc28aa752a7c776351e3fa3c167b13901a9a648dff0f`  
		Last Modified: Tue, 12 Dec 2017 21:11:34 GMT  
		Size: 2.1 KB (2074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:625bd220ae9238fdcd1a3e9db810236dc47502995b93d54b4a7bc5f474508112`  
		Last Modified: Tue, 12 Dec 2017 21:11:34 GMT  
		Size: 960.8 KB (960808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2a842fb5bf7992b4c96576cbe97492ee102a7ece4241dc58189b27f2972a325`  
		Last Modified: Tue, 06 Feb 2018 14:22:18 GMT  
		Size: 7.5 MB (7511649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5df78bbcf8a6821271ca85c542a0de04934d0d8f358d3f3fa0d118d9b668276`  
		Last Modified: Tue, 06 Feb 2018 14:22:15 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:906e82ad113af8575aa1425cd184b14bbd3715f17ef9ce993cdc39782e22c8ba`  
		Last Modified: Tue, 06 Feb 2018 14:22:17 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; ppc64le

```console
$ docker pull redis@sha256:7547c93d4c0a619cde6c2c4f3d9f950f3eeb75b8a0082ab9390ddee98a5f9549
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.9 MB (38923332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f10f7acddc1c09e086e6624390b33ad4898490e35e5ba58e9e0248600dbc3911`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 15 Feb 2018 01:34:17 GMT
ADD file:f3263f57a7d4fe956087a3f9803a0f8fe9224b2704ac54c141da2d6a166c737b in / 
# Thu, 15 Feb 2018 01:34:20 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 05:24:53 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Thu, 15 Feb 2018 05:25:04 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 05:27:44 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 05:31:34 GMT
ENV REDIS_VERSION=4.0.8
# Thu, 15 Feb 2018 05:31:35 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.8.tar.gz
# Thu, 15 Feb 2018 05:31:37 GMT
ENV REDIS_DOWNLOAD_SHA=ff0c38b8c156319249fec61e5018cf5b5fe63a65b61690bec798f4c998c232ad
# Thu, 15 Feb 2018 05:34:55 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 05:34:59 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 15 Feb 2018 05:35:01 GMT
VOLUME [/data]
# Thu, 15 Feb 2018 05:35:03 GMT
WORKDIR /data
# Thu, 15 Feb 2018 05:35:05 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Thu, 15 Feb 2018 05:35:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 05:35:08 GMT
EXPOSE 6379/tcp
# Thu, 15 Feb 2018 05:35:10 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:55e44e991a765aac112a6c9b4f8933a727d8c3fdfd7d5138173ff62b0624fb0c`  
		Last Modified: Thu, 15 Feb 2018 01:42:40 GMT  
		Size: 29.3 MB (29311830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df81c6e0db50d64e980a81b82127c9ce7a3f8e6de8ceda534a434125c95a25b1`  
		Last Modified: Thu, 15 Feb 2018 05:35:40 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:876fab0967ab2fac268ea466c4ade4f669005f7171aba968b8e0e2edcf38e3d4`  
		Last Modified: Thu, 15 Feb 2018 05:35:41 GMT  
		Size: 950.7 KB (950706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6eb475636a2b094967d65c076780a0b9ce43fa4ebb5953ddadd97bfcb46e2b7`  
		Last Modified: Thu, 15 Feb 2018 05:36:09 GMT  
		Size: 8.7 MB (8658159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a27d02b6df71330ced3c6b6ac1d8a23bfe55083c3c618850cbb96d9955c751e6`  
		Last Modified: Thu, 15 Feb 2018 05:36:05 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51e87859adf9d6036bbe3ef87886b859a0886fc7d4877922f6bd2b11952f543f`  
		Last Modified: Thu, 15 Feb 2018 05:36:05 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; s390x

```console
$ docker pull redis@sha256:238e9fb365b47d4caee288075684a904a3fc5d91bff4541a6c372f003549272f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.2 MB (40197448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b41868a13131a6e8199602f307a85d93db5973ceb41ff046fd86cea900681105`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 12 Dec 2017 06:23:05 GMT
ADD file:68877912183dff16971679b6264399a76d678986d7cf02bbba2e006d91077cf3 in / 
# Tue, 12 Dec 2017 06:23:06 GMT
CMD ["bash"]
# Sun, 07 Jan 2018 09:26:06 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sun, 07 Jan 2018 09:26:06 GMT
ENV GOSU_VERSION=1.10
# Sun, 07 Jan 2018 09:26:33 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 06 Feb 2018 06:24:31 GMT
ENV REDIS_VERSION=4.0.8
# Tue, 06 Feb 2018 06:24:31 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.8.tar.gz
# Tue, 06 Feb 2018 06:24:32 GMT
ENV REDIS_DOWNLOAD_SHA=ff0c38b8c156319249fec61e5018cf5b5fe63a65b61690bec798f4c998c232ad
# Tue, 06 Feb 2018 06:25:11 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 06 Feb 2018 06:25:12 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 06 Feb 2018 06:25:12 GMT
VOLUME [/data]
# Tue, 06 Feb 2018 06:25:12 GMT
WORKDIR /data
# Tue, 06 Feb 2018 06:25:12 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 06 Feb 2018 06:25:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Feb 2018 06:25:12 GMT
EXPOSE 6379/tcp
# Tue, 06 Feb 2018 06:25:12 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:7ef9b5c13de473137c3ae16d379a5f152b59921d4e96887c06f9e1291af84691`  
		Last Modified: Thu, 14 Dec 2017 00:53:34 GMT  
		Size: 30.3 MB (30293639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608e779e09f2eff9338668b6f32d30ad6db5824db6e05a40163baa53af8a4732`  
		Last Modified: Sun, 07 Jan 2018 09:28:52 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca3bc2bf99d2d3b8b7af50eabf05bcd385693d216437119560e8b76a250123d1`  
		Last Modified: Sun, 07 Jan 2018 09:28:52 GMT  
		Size: 966.9 KB (966920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3b8cfc49318affd19b1bf038f24056cf6e9d29af52b4bfae8a87a937a867191`  
		Last Modified: Tue, 06 Feb 2018 06:26:12 GMT  
		Size: 8.9 MB (8934295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c1e2a9f2143561d02f9cf91b0e1349c12689ad33f621bb6c3667e7bd93a138`  
		Last Modified: Tue, 06 Feb 2018 06:26:09 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b436c81dc8868e47fbe319c57134765522c95c0aa21df408b5b306f6b4efed0`  
		Last Modified: Tue, 06 Feb 2018 06:26:10 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0`

```console
$ docker pull redis@sha256:24cc4429415d64c616b94ea3b9e2d62602afc99135472c459d787cab0aa0855e
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

### `redis:4.0` - linux; amd64

```console
$ docker pull redis@sha256:79b58bb19c22e034e68c606bd63837e8c1b5ab45ba4077ed6e1ce558f02740e6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.4 MB (39403588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33c26d72bd74fb697defa17d7eb2a4eefc77bc7363ae4ce461d147c6532ec05c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 15 Feb 2018 01:46:20 GMT
ADD file:a0f72eb6710fe45aff98d40665ed5c106a992b2b0d1d57a1fb6ca98c4aa0f0a6 in / 
# Thu, 15 Feb 2018 01:46:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:50:37 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Thu, 15 Feb 2018 07:50:37 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 07:50:59 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 07:54:45 GMT
ENV REDIS_VERSION=4.0.8
# Thu, 15 Feb 2018 07:54:45 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.8.tar.gz
# Thu, 15 Feb 2018 07:54:45 GMT
ENV REDIS_DOWNLOAD_SHA=ff0c38b8c156319249fec61e5018cf5b5fe63a65b61690bec798f4c998c232ad
# Thu, 15 Feb 2018 07:55:30 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 07:55:31 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 15 Feb 2018 07:55:31 GMT
VOLUME [/data]
# Thu, 15 Feb 2018 07:55:31 GMT
WORKDIR /data
# Thu, 15 Feb 2018 07:55:32 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Thu, 15 Feb 2018 07:55:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 07:55:32 GMT
EXPOSE 6379/tcp
# Thu, 15 Feb 2018 07:55:33 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d2ca7eff5948133e4316d463c56948af87b4d4d09848ee0f8b698d3549a7a7dd`  
		Last Modified: Thu, 15 Feb 2018 02:18:31 GMT  
		Size: 30.1 MB (30122379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d1a2245aaa6e74708fd6c58cf1ac19f9db2d2031107c25d20b0ac06d11f2b7c`  
		Last Modified: Thu, 15 Feb 2018 08:17:00 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a483dd2a28bbd7835cda9c014266c0dfcee502ef67e5d9a4e090c807b3a1717`  
		Last Modified: Thu, 15 Feb 2018 08:17:01 GMT  
		Size: 981.7 KB (981722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b78ebdc44f06df0412fcdba5b9965a7794b2b82a230ba648df22a013ce372b3`  
		Last Modified: Thu, 15 Feb 2018 08:19:54 GMT  
		Size: 8.3 MB (8296895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79b76500ef2684aad5af9071ca8b4d3efea5355d47a8d6269ba1f96b7b0a4f92`  
		Last Modified: Thu, 15 Feb 2018 08:19:52 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2991d9a56244dea23a40a42549d860eb12c102022a5d6ddde4f301a495d40c4`  
		Last Modified: Thu, 15 Feb 2018 08:19:52 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; arm variant v5

```console
$ docker pull redis@sha256:82ccd6f80a6460d3dbbab4e23192e861c106be6d3383446065e1428a29192610
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 MB (37592143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fffcf1e3c1222899750cda51b72e156d3e1420f30dd27351d3a6261ebe1b033`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 12 Dec 2017 20:57:33 GMT
ADD file:29d0e44ebcc6f8dc2cfbc86c5034380677d263e9eec27a22ba045e0810836f81 in / 
# Tue, 12 Dec 2017 20:57:34 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 23:14:35 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 12 Dec 2017 23:14:35 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 23:15:21 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 06 Feb 2018 15:09:32 GMT
ENV REDIS_VERSION=4.0.8
# Tue, 06 Feb 2018 15:09:32 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.8.tar.gz
# Tue, 06 Feb 2018 15:09:32 GMT
ENV REDIS_DOWNLOAD_SHA=ff0c38b8c156319249fec61e5018cf5b5fe63a65b61690bec798f4c998c232ad
# Tue, 06 Feb 2018 15:10:42 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 06 Feb 2018 15:10:43 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 06 Feb 2018 15:10:43 GMT
VOLUME [/data]
# Tue, 06 Feb 2018 15:10:43 GMT
WORKDIR /data
# Tue, 06 Feb 2018 15:10:44 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 06 Feb 2018 15:10:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Feb 2018 15:10:44 GMT
EXPOSE 6379/tcp
# Tue, 06 Feb 2018 15:10:44 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:51e696f556166d0e25b3b27c824c4aafbddd5adcfd3f5186c09707f7baa3b312`  
		Last Modified: Tue, 12 Dec 2017 21:07:41 GMT  
		Size: 28.4 MB (28423526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0206b9cb3a70c21180f01a2532fe2c5a436a48e5fc5d8b939ba69b7d61c80a3a`  
		Last Modified: Tue, 12 Dec 2017 23:18:09 GMT  
		Size: 2.1 KB (2075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f18f2f5d7b2619f7683612c23f23c54c1f09a9ac9f5714f36e1ff47dffac347`  
		Last Modified: Tue, 12 Dec 2017 23:18:13 GMT  
		Size: 971.2 KB (971228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25635b92d7102aff70fa10be6f4e984bd2b437df2d4a2fc270cf15d4ad85416c`  
		Last Modified: Tue, 06 Feb 2018 15:10:58 GMT  
		Size: 8.2 MB (8194778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4475ae5eef34cfa997fe92213ec620c1cc3446db2ca4bde030e655929f6d85e`  
		Last Modified: Tue, 06 Feb 2018 15:10:55 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e798f17357153eb4b9535b974c0ebb56743a4774dbfb294d9fd95dfe103cc6f6`  
		Last Modified: Tue, 06 Feb 2018 15:10:55 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; arm variant v7

```console
$ docker pull redis@sha256:7cf526a2f8056e04b50140020ebedaa73539fae967d5f04004fa34c1d4a9a859
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35177313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7ce38f3ed4df984db03edd68c19324debfffed00f120af3086e455b0e923c11`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 12 Dec 2017 13:27:47 GMT
ADD file:1f5de474caa19da14d698a3f9c3d161abfa1e19e258a596d64f3dfc9e2f17686 in / 
# Tue, 12 Dec 2017 13:27:47 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 16:40:56 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 12 Dec 2017 16:40:56 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 16:41:50 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 06 Feb 2018 01:27:32 GMT
ENV REDIS_VERSION=4.0.8
# Tue, 06 Feb 2018 01:27:32 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.8.tar.gz
# Tue, 06 Feb 2018 01:27:32 GMT
ENV REDIS_DOWNLOAD_SHA=ff0c38b8c156319249fec61e5018cf5b5fe63a65b61690bec798f4c998c232ad
# Tue, 06 Feb 2018 01:28:31 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 06 Feb 2018 01:28:32 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 06 Feb 2018 01:28:32 GMT
VOLUME [/data]
# Tue, 06 Feb 2018 01:28:32 GMT
WORKDIR /data
# Tue, 06 Feb 2018 01:28:32 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 06 Feb 2018 01:28:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Feb 2018 01:28:33 GMT
EXPOSE 6379/tcp
# Tue, 06 Feb 2018 01:28:33 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:4b9c0f1a415433a98643bdda391dcf4fe5d9653fc3ed3845c7ac1be99eb43399`  
		Last Modified: Tue, 12 Dec 2017 13:39:52 GMT  
		Size: 26.3 MB (26282714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d6835fe576543df3c87405f33db99aa1f040e3f241c5e5d72ffb416953902b8`  
		Last Modified: Tue, 12 Dec 2017 16:44:59 GMT  
		Size: 2.1 KB (2076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a11c10ad12017478481b1755839ece7c69945ee8c04b97bb10909db85e4ed338`  
		Last Modified: Tue, 12 Dec 2017 16:44:59 GMT  
		Size: 956.1 KB (956126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69000625f437a6cf3ee8d6b60151e3b39452ece0ef361e2f590893944afeef55`  
		Last Modified: Tue, 06 Feb 2018 01:29:04 GMT  
		Size: 7.9 MB (7935860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12aed7147e11e132c5248e25289535495e5d0ad14d81289ee91a77f27e1863e2`  
		Last Modified: Tue, 06 Feb 2018 01:29:02 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:718285eeeaaf6b3766acae3b4b75420baeffe68ad824cb8c6c27be64c95a6deb`  
		Last Modified: Tue, 06 Feb 2018 01:29:02 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:c176f707c0b8377acdeee4f8bb2dea83e47c28e195a0d2f51bf5dd1c2172aa8f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36876433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79ccb057108af0b1b266f0e3d3ef157f65e26939129295e26f3a7c9ab698a29f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 12 Dec 2017 18:26:03 GMT
ADD file:da6be268a98d89a43438155746ca6d08f474e9aa85c64699f50445352b46c348 in / 
# Tue, 12 Dec 2017 18:26:04 GMT
CMD ["bash"]
# Wed, 20 Dec 2017 13:25:39 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 20 Dec 2017 13:25:40 GMT
ENV GOSU_VERSION=1.10
# Wed, 20 Dec 2017 13:26:36 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 06 Feb 2018 13:25:53 GMT
ENV REDIS_VERSION=4.0.8
# Tue, 06 Feb 2018 13:25:53 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.8.tar.gz
# Tue, 06 Feb 2018 13:25:54 GMT
ENV REDIS_DOWNLOAD_SHA=ff0c38b8c156319249fec61e5018cf5b5fe63a65b61690bec798f4c998c232ad
# Tue, 06 Feb 2018 13:27:45 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 06 Feb 2018 13:27:47 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 06 Feb 2018 13:27:47 GMT
VOLUME [/data]
# Tue, 06 Feb 2018 13:27:48 GMT
WORKDIR /data
# Tue, 06 Feb 2018 13:27:48 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 06 Feb 2018 13:27:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Feb 2018 13:27:50 GMT
EXPOSE 6379/tcp
# Tue, 06 Feb 2018 13:27:50 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:8e9df51286bbe86a4cb3ffe54327681ab34b9b6d62c3f4e187ffc677125e4780`  
		Last Modified: Tue, 12 Dec 2017 18:41:37 GMT  
		Size: 27.5 MB (27480582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:075c247daad6bb45a002c0a24377355e91aef8e96dbc920ef85b5f95dba5d597`  
		Last Modified: Wed, 20 Dec 2017 13:31:04 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:671b4ef947e36f312884f8d49f560e5191e57a0e583820b56b530e7ff03d771f`  
		Last Modified: Wed, 20 Dec 2017 13:31:04 GMT  
		Size: 948.7 KB (948652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f10bccc98703ca88b1bd0e49f4f2d9c4b3365d0711c52394bd478877eedd7491`  
		Last Modified: Tue, 06 Feb 2018 13:30:05 GMT  
		Size: 8.4 MB (8444596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cafc779b99f3b7579b6e089be946244cbca353682df6522f8019af603b2c8fb4`  
		Last Modified: Tue, 06 Feb 2018 13:30:01 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:217dcb97c97acfe1d28bd854c74b53c1a8be2612d4aacd3926c89640d73cf38b`  
		Last Modified: Tue, 06 Feb 2018 13:30:02 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; 386

```console
$ docker pull redis@sha256:c1d2bd3e2ffb3b38672d74ed078157ea4e0925d2739b7bba99381aa70dae86f6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.7 MB (38741291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cdfeace81c84e393250a1ebc04a88d2acdee83d1e2938dd69a77e95b2adb4df`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 12 Dec 2017 14:21:05 GMT
ADD file:d31765999b40e32b628f3ec72b762f007f4918b08c507484e425adc990c87c26 in / 
# Tue, 12 Dec 2017 14:21:05 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:03:38 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 12 Dec 2017 21:03:38 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 21:04:16 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 06 Feb 2018 14:09:59 GMT
ENV REDIS_VERSION=4.0.8
# Tue, 06 Feb 2018 14:09:59 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.8.tar.gz
# Tue, 06 Feb 2018 14:10:00 GMT
ENV REDIS_DOWNLOAD_SHA=ff0c38b8c156319249fec61e5018cf5b5fe63a65b61690bec798f4c998c232ad
# Tue, 06 Feb 2018 14:11:14 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 06 Feb 2018 14:12:12 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 06 Feb 2018 14:12:12 GMT
VOLUME [/data]
# Tue, 06 Feb 2018 14:12:12 GMT
WORKDIR /data
# Tue, 06 Feb 2018 14:12:13 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 06 Feb 2018 14:12:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Feb 2018 14:12:13 GMT
EXPOSE 6379/tcp
# Tue, 06 Feb 2018 14:12:14 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6b323e7c684c46ec9e577d3acb692c7e1c0c26ffbea6a4530dbe784a7eedf0f7`  
		Last Modified: Tue, 12 Dec 2017 14:49:35 GMT  
		Size: 30.3 MB (30266257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00b36a22b0f548b632d8bc28aa752a7c776351e3fa3c167b13901a9a648dff0f`  
		Last Modified: Tue, 12 Dec 2017 21:11:34 GMT  
		Size: 2.1 KB (2074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:625bd220ae9238fdcd1a3e9db810236dc47502995b93d54b4a7bc5f474508112`  
		Last Modified: Tue, 12 Dec 2017 21:11:34 GMT  
		Size: 960.8 KB (960808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2a842fb5bf7992b4c96576cbe97492ee102a7ece4241dc58189b27f2972a325`  
		Last Modified: Tue, 06 Feb 2018 14:22:18 GMT  
		Size: 7.5 MB (7511649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5df78bbcf8a6821271ca85c542a0de04934d0d8f358d3f3fa0d118d9b668276`  
		Last Modified: Tue, 06 Feb 2018 14:22:15 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:906e82ad113af8575aa1425cd184b14bbd3715f17ef9ce993cdc39782e22c8ba`  
		Last Modified: Tue, 06 Feb 2018 14:22:17 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; ppc64le

```console
$ docker pull redis@sha256:7547c93d4c0a619cde6c2c4f3d9f950f3eeb75b8a0082ab9390ddee98a5f9549
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.9 MB (38923332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f10f7acddc1c09e086e6624390b33ad4898490e35e5ba58e9e0248600dbc3911`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 15 Feb 2018 01:34:17 GMT
ADD file:f3263f57a7d4fe956087a3f9803a0f8fe9224b2704ac54c141da2d6a166c737b in / 
# Thu, 15 Feb 2018 01:34:20 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 05:24:53 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Thu, 15 Feb 2018 05:25:04 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 05:27:44 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 05:31:34 GMT
ENV REDIS_VERSION=4.0.8
# Thu, 15 Feb 2018 05:31:35 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.8.tar.gz
# Thu, 15 Feb 2018 05:31:37 GMT
ENV REDIS_DOWNLOAD_SHA=ff0c38b8c156319249fec61e5018cf5b5fe63a65b61690bec798f4c998c232ad
# Thu, 15 Feb 2018 05:34:55 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 05:34:59 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 15 Feb 2018 05:35:01 GMT
VOLUME [/data]
# Thu, 15 Feb 2018 05:35:03 GMT
WORKDIR /data
# Thu, 15 Feb 2018 05:35:05 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Thu, 15 Feb 2018 05:35:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 05:35:08 GMT
EXPOSE 6379/tcp
# Thu, 15 Feb 2018 05:35:10 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:55e44e991a765aac112a6c9b4f8933a727d8c3fdfd7d5138173ff62b0624fb0c`  
		Last Modified: Thu, 15 Feb 2018 01:42:40 GMT  
		Size: 29.3 MB (29311830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df81c6e0db50d64e980a81b82127c9ce7a3f8e6de8ceda534a434125c95a25b1`  
		Last Modified: Thu, 15 Feb 2018 05:35:40 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:876fab0967ab2fac268ea466c4ade4f669005f7171aba968b8e0e2edcf38e3d4`  
		Last Modified: Thu, 15 Feb 2018 05:35:41 GMT  
		Size: 950.7 KB (950706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6eb475636a2b094967d65c076780a0b9ce43fa4ebb5953ddadd97bfcb46e2b7`  
		Last Modified: Thu, 15 Feb 2018 05:36:09 GMT  
		Size: 8.7 MB (8658159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a27d02b6df71330ced3c6b6ac1d8a23bfe55083c3c618850cbb96d9955c751e6`  
		Last Modified: Thu, 15 Feb 2018 05:36:05 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51e87859adf9d6036bbe3ef87886b859a0886fc7d4877922f6bd2b11952f543f`  
		Last Modified: Thu, 15 Feb 2018 05:36:05 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; s390x

```console
$ docker pull redis@sha256:238e9fb365b47d4caee288075684a904a3fc5d91bff4541a6c372f003549272f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.2 MB (40197448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b41868a13131a6e8199602f307a85d93db5973ceb41ff046fd86cea900681105`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 12 Dec 2017 06:23:05 GMT
ADD file:68877912183dff16971679b6264399a76d678986d7cf02bbba2e006d91077cf3 in / 
# Tue, 12 Dec 2017 06:23:06 GMT
CMD ["bash"]
# Sun, 07 Jan 2018 09:26:06 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sun, 07 Jan 2018 09:26:06 GMT
ENV GOSU_VERSION=1.10
# Sun, 07 Jan 2018 09:26:33 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 06 Feb 2018 06:24:31 GMT
ENV REDIS_VERSION=4.0.8
# Tue, 06 Feb 2018 06:24:31 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.8.tar.gz
# Tue, 06 Feb 2018 06:24:32 GMT
ENV REDIS_DOWNLOAD_SHA=ff0c38b8c156319249fec61e5018cf5b5fe63a65b61690bec798f4c998c232ad
# Tue, 06 Feb 2018 06:25:11 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 06 Feb 2018 06:25:12 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 06 Feb 2018 06:25:12 GMT
VOLUME [/data]
# Tue, 06 Feb 2018 06:25:12 GMT
WORKDIR /data
# Tue, 06 Feb 2018 06:25:12 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 06 Feb 2018 06:25:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Feb 2018 06:25:12 GMT
EXPOSE 6379/tcp
# Tue, 06 Feb 2018 06:25:12 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:7ef9b5c13de473137c3ae16d379a5f152b59921d4e96887c06f9e1291af84691`  
		Last Modified: Thu, 14 Dec 2017 00:53:34 GMT  
		Size: 30.3 MB (30293639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608e779e09f2eff9338668b6f32d30ad6db5824db6e05a40163baa53af8a4732`  
		Last Modified: Sun, 07 Jan 2018 09:28:52 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca3bc2bf99d2d3b8b7af50eabf05bcd385693d216437119560e8b76a250123d1`  
		Last Modified: Sun, 07 Jan 2018 09:28:52 GMT  
		Size: 966.9 KB (966920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3b8cfc49318affd19b1bf038f24056cf6e9d29af52b4bfae8a87a937a867191`  
		Last Modified: Tue, 06 Feb 2018 06:26:12 GMT  
		Size: 8.9 MB (8934295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c1e2a9f2143561d02f9cf91b0e1349c12689ad33f621bb6c3667e7bd93a138`  
		Last Modified: Tue, 06 Feb 2018 06:26:09 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b436c81dc8868e47fbe319c57134765522c95c0aa21df408b5b306f6b4efed0`  
		Last Modified: Tue, 06 Feb 2018 06:26:10 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0-32bit`

```console
$ docker pull redis@sha256:b7effebd7bccb0f5c822754330eacc2a95de3e788d08e58d9542ca3e4865b896
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4.0-32bit` - linux; amd64

```console
$ docker pull redis@sha256:a9d58e15ab1e99975a55051b85f80b8b0a16491e58be4a5f5ee4c32d1d29ba59
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.0 MB (43002329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed9ee2d4834b2f1d9cb2621fe747370541254199c39b9d3c3e86e65a50fa10db`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 15 Feb 2018 01:46:20 GMT
ADD file:a0f72eb6710fe45aff98d40665ed5c106a992b2b0d1d57a1fb6ca98c4aa0f0a6 in / 
# Thu, 15 Feb 2018 01:46:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:50:37 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Thu, 15 Feb 2018 07:50:37 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 07:50:59 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 07:54:45 GMT
ENV REDIS_VERSION=4.0.8
# Thu, 15 Feb 2018 07:54:45 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.8.tar.gz
# Thu, 15 Feb 2018 07:54:45 GMT
ENV REDIS_DOWNLOAD_SHA=ff0c38b8c156319249fec61e5018cf5b5fe63a65b61690bec798f4c998c232ad
# Thu, 15 Feb 2018 08:04:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 08:05:16 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 08:05:16 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 15 Feb 2018 08:05:17 GMT
VOLUME [/data]
# Thu, 15 Feb 2018 08:05:17 GMT
WORKDIR /data
# Thu, 15 Feb 2018 08:05:17 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Thu, 15 Feb 2018 08:05:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 08:05:18 GMT
EXPOSE 6379/tcp
# Thu, 15 Feb 2018 08:05:18 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d2ca7eff5948133e4316d463c56948af87b4d4d09848ee0f8b698d3549a7a7dd`  
		Last Modified: Thu, 15 Feb 2018 02:18:31 GMT  
		Size: 30.1 MB (30122379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d1a2245aaa6e74708fd6c58cf1ac19f9db2d2031107c25d20b0ac06d11f2b7c`  
		Last Modified: Thu, 15 Feb 2018 08:17:00 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a483dd2a28bbd7835cda9c014266c0dfcee502ef67e5d9a4e090c807b3a1717`  
		Last Modified: Thu, 15 Feb 2018 08:17:01 GMT  
		Size: 981.7 KB (981722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bce8af5849ba0d561b8eed23e6deb63674cd52a1eda8e4343556ee6bf3dea69`  
		Last Modified: Thu, 15 Feb 2018 08:21:00 GMT  
		Size: 4.4 MB (4378570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a86c627d6879c786d06b4a0e37c9bf01c379cc5b7f93551ab6228f7180740b5f`  
		Last Modified: Thu, 15 Feb 2018 08:21:00 GMT  
		Size: 7.5 MB (7517063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15945e40da683998122b6c443c8f53841f3461ad36db97438e3e93e6b36ce3c6`  
		Last Modified: Thu, 15 Feb 2018 08:20:58 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba0f3aa6300e5e98149d125b41b3dd868f71c9b0d256262b2209f9a222ff7cf8`  
		Last Modified: Thu, 15 Feb 2018 08:20:58 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.8`

```console
$ docker pull redis@sha256:24cc4429415d64c616b94ea3b9e2d62602afc99135472c459d787cab0aa0855e
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

### `redis:4.0.8` - linux; amd64

```console
$ docker pull redis@sha256:79b58bb19c22e034e68c606bd63837e8c1b5ab45ba4077ed6e1ce558f02740e6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.4 MB (39403588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33c26d72bd74fb697defa17d7eb2a4eefc77bc7363ae4ce461d147c6532ec05c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 15 Feb 2018 01:46:20 GMT
ADD file:a0f72eb6710fe45aff98d40665ed5c106a992b2b0d1d57a1fb6ca98c4aa0f0a6 in / 
# Thu, 15 Feb 2018 01:46:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:50:37 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Thu, 15 Feb 2018 07:50:37 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 07:50:59 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 07:54:45 GMT
ENV REDIS_VERSION=4.0.8
# Thu, 15 Feb 2018 07:54:45 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.8.tar.gz
# Thu, 15 Feb 2018 07:54:45 GMT
ENV REDIS_DOWNLOAD_SHA=ff0c38b8c156319249fec61e5018cf5b5fe63a65b61690bec798f4c998c232ad
# Thu, 15 Feb 2018 07:55:30 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 07:55:31 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 15 Feb 2018 07:55:31 GMT
VOLUME [/data]
# Thu, 15 Feb 2018 07:55:31 GMT
WORKDIR /data
# Thu, 15 Feb 2018 07:55:32 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Thu, 15 Feb 2018 07:55:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 07:55:32 GMT
EXPOSE 6379/tcp
# Thu, 15 Feb 2018 07:55:33 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d2ca7eff5948133e4316d463c56948af87b4d4d09848ee0f8b698d3549a7a7dd`  
		Last Modified: Thu, 15 Feb 2018 02:18:31 GMT  
		Size: 30.1 MB (30122379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d1a2245aaa6e74708fd6c58cf1ac19f9db2d2031107c25d20b0ac06d11f2b7c`  
		Last Modified: Thu, 15 Feb 2018 08:17:00 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a483dd2a28bbd7835cda9c014266c0dfcee502ef67e5d9a4e090c807b3a1717`  
		Last Modified: Thu, 15 Feb 2018 08:17:01 GMT  
		Size: 981.7 KB (981722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b78ebdc44f06df0412fcdba5b9965a7794b2b82a230ba648df22a013ce372b3`  
		Last Modified: Thu, 15 Feb 2018 08:19:54 GMT  
		Size: 8.3 MB (8296895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79b76500ef2684aad5af9071ca8b4d3efea5355d47a8d6269ba1f96b7b0a4f92`  
		Last Modified: Thu, 15 Feb 2018 08:19:52 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2991d9a56244dea23a40a42549d860eb12c102022a5d6ddde4f301a495d40c4`  
		Last Modified: Thu, 15 Feb 2018 08:19:52 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.8` - linux; arm variant v5

```console
$ docker pull redis@sha256:82ccd6f80a6460d3dbbab4e23192e861c106be6d3383446065e1428a29192610
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 MB (37592143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fffcf1e3c1222899750cda51b72e156d3e1420f30dd27351d3a6261ebe1b033`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 12 Dec 2017 20:57:33 GMT
ADD file:29d0e44ebcc6f8dc2cfbc86c5034380677d263e9eec27a22ba045e0810836f81 in / 
# Tue, 12 Dec 2017 20:57:34 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 23:14:35 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 12 Dec 2017 23:14:35 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 23:15:21 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 06 Feb 2018 15:09:32 GMT
ENV REDIS_VERSION=4.0.8
# Tue, 06 Feb 2018 15:09:32 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.8.tar.gz
# Tue, 06 Feb 2018 15:09:32 GMT
ENV REDIS_DOWNLOAD_SHA=ff0c38b8c156319249fec61e5018cf5b5fe63a65b61690bec798f4c998c232ad
# Tue, 06 Feb 2018 15:10:42 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 06 Feb 2018 15:10:43 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 06 Feb 2018 15:10:43 GMT
VOLUME [/data]
# Tue, 06 Feb 2018 15:10:43 GMT
WORKDIR /data
# Tue, 06 Feb 2018 15:10:44 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 06 Feb 2018 15:10:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Feb 2018 15:10:44 GMT
EXPOSE 6379/tcp
# Tue, 06 Feb 2018 15:10:44 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:51e696f556166d0e25b3b27c824c4aafbddd5adcfd3f5186c09707f7baa3b312`  
		Last Modified: Tue, 12 Dec 2017 21:07:41 GMT  
		Size: 28.4 MB (28423526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0206b9cb3a70c21180f01a2532fe2c5a436a48e5fc5d8b939ba69b7d61c80a3a`  
		Last Modified: Tue, 12 Dec 2017 23:18:09 GMT  
		Size: 2.1 KB (2075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f18f2f5d7b2619f7683612c23f23c54c1f09a9ac9f5714f36e1ff47dffac347`  
		Last Modified: Tue, 12 Dec 2017 23:18:13 GMT  
		Size: 971.2 KB (971228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25635b92d7102aff70fa10be6f4e984bd2b437df2d4a2fc270cf15d4ad85416c`  
		Last Modified: Tue, 06 Feb 2018 15:10:58 GMT  
		Size: 8.2 MB (8194778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4475ae5eef34cfa997fe92213ec620c1cc3446db2ca4bde030e655929f6d85e`  
		Last Modified: Tue, 06 Feb 2018 15:10:55 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e798f17357153eb4b9535b974c0ebb56743a4774dbfb294d9fd95dfe103cc6f6`  
		Last Modified: Tue, 06 Feb 2018 15:10:55 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.8` - linux; arm variant v7

```console
$ docker pull redis@sha256:7cf526a2f8056e04b50140020ebedaa73539fae967d5f04004fa34c1d4a9a859
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35177313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7ce38f3ed4df984db03edd68c19324debfffed00f120af3086e455b0e923c11`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 12 Dec 2017 13:27:47 GMT
ADD file:1f5de474caa19da14d698a3f9c3d161abfa1e19e258a596d64f3dfc9e2f17686 in / 
# Tue, 12 Dec 2017 13:27:47 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 16:40:56 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 12 Dec 2017 16:40:56 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 16:41:50 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 06 Feb 2018 01:27:32 GMT
ENV REDIS_VERSION=4.0.8
# Tue, 06 Feb 2018 01:27:32 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.8.tar.gz
# Tue, 06 Feb 2018 01:27:32 GMT
ENV REDIS_DOWNLOAD_SHA=ff0c38b8c156319249fec61e5018cf5b5fe63a65b61690bec798f4c998c232ad
# Tue, 06 Feb 2018 01:28:31 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 06 Feb 2018 01:28:32 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 06 Feb 2018 01:28:32 GMT
VOLUME [/data]
# Tue, 06 Feb 2018 01:28:32 GMT
WORKDIR /data
# Tue, 06 Feb 2018 01:28:32 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 06 Feb 2018 01:28:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Feb 2018 01:28:33 GMT
EXPOSE 6379/tcp
# Tue, 06 Feb 2018 01:28:33 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:4b9c0f1a415433a98643bdda391dcf4fe5d9653fc3ed3845c7ac1be99eb43399`  
		Last Modified: Tue, 12 Dec 2017 13:39:52 GMT  
		Size: 26.3 MB (26282714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d6835fe576543df3c87405f33db99aa1f040e3f241c5e5d72ffb416953902b8`  
		Last Modified: Tue, 12 Dec 2017 16:44:59 GMT  
		Size: 2.1 KB (2076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a11c10ad12017478481b1755839ece7c69945ee8c04b97bb10909db85e4ed338`  
		Last Modified: Tue, 12 Dec 2017 16:44:59 GMT  
		Size: 956.1 KB (956126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69000625f437a6cf3ee8d6b60151e3b39452ece0ef361e2f590893944afeef55`  
		Last Modified: Tue, 06 Feb 2018 01:29:04 GMT  
		Size: 7.9 MB (7935860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12aed7147e11e132c5248e25289535495e5d0ad14d81289ee91a77f27e1863e2`  
		Last Modified: Tue, 06 Feb 2018 01:29:02 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:718285eeeaaf6b3766acae3b4b75420baeffe68ad824cb8c6c27be64c95a6deb`  
		Last Modified: Tue, 06 Feb 2018 01:29:02 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.8` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:c176f707c0b8377acdeee4f8bb2dea83e47c28e195a0d2f51bf5dd1c2172aa8f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36876433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79ccb057108af0b1b266f0e3d3ef157f65e26939129295e26f3a7c9ab698a29f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 12 Dec 2017 18:26:03 GMT
ADD file:da6be268a98d89a43438155746ca6d08f474e9aa85c64699f50445352b46c348 in / 
# Tue, 12 Dec 2017 18:26:04 GMT
CMD ["bash"]
# Wed, 20 Dec 2017 13:25:39 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 20 Dec 2017 13:25:40 GMT
ENV GOSU_VERSION=1.10
# Wed, 20 Dec 2017 13:26:36 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 06 Feb 2018 13:25:53 GMT
ENV REDIS_VERSION=4.0.8
# Tue, 06 Feb 2018 13:25:53 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.8.tar.gz
# Tue, 06 Feb 2018 13:25:54 GMT
ENV REDIS_DOWNLOAD_SHA=ff0c38b8c156319249fec61e5018cf5b5fe63a65b61690bec798f4c998c232ad
# Tue, 06 Feb 2018 13:27:45 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 06 Feb 2018 13:27:47 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 06 Feb 2018 13:27:47 GMT
VOLUME [/data]
# Tue, 06 Feb 2018 13:27:48 GMT
WORKDIR /data
# Tue, 06 Feb 2018 13:27:48 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 06 Feb 2018 13:27:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Feb 2018 13:27:50 GMT
EXPOSE 6379/tcp
# Tue, 06 Feb 2018 13:27:50 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:8e9df51286bbe86a4cb3ffe54327681ab34b9b6d62c3f4e187ffc677125e4780`  
		Last Modified: Tue, 12 Dec 2017 18:41:37 GMT  
		Size: 27.5 MB (27480582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:075c247daad6bb45a002c0a24377355e91aef8e96dbc920ef85b5f95dba5d597`  
		Last Modified: Wed, 20 Dec 2017 13:31:04 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:671b4ef947e36f312884f8d49f560e5191e57a0e583820b56b530e7ff03d771f`  
		Last Modified: Wed, 20 Dec 2017 13:31:04 GMT  
		Size: 948.7 KB (948652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f10bccc98703ca88b1bd0e49f4f2d9c4b3365d0711c52394bd478877eedd7491`  
		Last Modified: Tue, 06 Feb 2018 13:30:05 GMT  
		Size: 8.4 MB (8444596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cafc779b99f3b7579b6e089be946244cbca353682df6522f8019af603b2c8fb4`  
		Last Modified: Tue, 06 Feb 2018 13:30:01 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:217dcb97c97acfe1d28bd854c74b53c1a8be2612d4aacd3926c89640d73cf38b`  
		Last Modified: Tue, 06 Feb 2018 13:30:02 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.8` - linux; 386

```console
$ docker pull redis@sha256:c1d2bd3e2ffb3b38672d74ed078157ea4e0925d2739b7bba99381aa70dae86f6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.7 MB (38741291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cdfeace81c84e393250a1ebc04a88d2acdee83d1e2938dd69a77e95b2adb4df`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 12 Dec 2017 14:21:05 GMT
ADD file:d31765999b40e32b628f3ec72b762f007f4918b08c507484e425adc990c87c26 in / 
# Tue, 12 Dec 2017 14:21:05 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:03:38 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 12 Dec 2017 21:03:38 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 21:04:16 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 06 Feb 2018 14:09:59 GMT
ENV REDIS_VERSION=4.0.8
# Tue, 06 Feb 2018 14:09:59 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.8.tar.gz
# Tue, 06 Feb 2018 14:10:00 GMT
ENV REDIS_DOWNLOAD_SHA=ff0c38b8c156319249fec61e5018cf5b5fe63a65b61690bec798f4c998c232ad
# Tue, 06 Feb 2018 14:11:14 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 06 Feb 2018 14:12:12 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 06 Feb 2018 14:12:12 GMT
VOLUME [/data]
# Tue, 06 Feb 2018 14:12:12 GMT
WORKDIR /data
# Tue, 06 Feb 2018 14:12:13 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 06 Feb 2018 14:12:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Feb 2018 14:12:13 GMT
EXPOSE 6379/tcp
# Tue, 06 Feb 2018 14:12:14 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6b323e7c684c46ec9e577d3acb692c7e1c0c26ffbea6a4530dbe784a7eedf0f7`  
		Last Modified: Tue, 12 Dec 2017 14:49:35 GMT  
		Size: 30.3 MB (30266257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00b36a22b0f548b632d8bc28aa752a7c776351e3fa3c167b13901a9a648dff0f`  
		Last Modified: Tue, 12 Dec 2017 21:11:34 GMT  
		Size: 2.1 KB (2074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:625bd220ae9238fdcd1a3e9db810236dc47502995b93d54b4a7bc5f474508112`  
		Last Modified: Tue, 12 Dec 2017 21:11:34 GMT  
		Size: 960.8 KB (960808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2a842fb5bf7992b4c96576cbe97492ee102a7ece4241dc58189b27f2972a325`  
		Last Modified: Tue, 06 Feb 2018 14:22:18 GMT  
		Size: 7.5 MB (7511649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5df78bbcf8a6821271ca85c542a0de04934d0d8f358d3f3fa0d118d9b668276`  
		Last Modified: Tue, 06 Feb 2018 14:22:15 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:906e82ad113af8575aa1425cd184b14bbd3715f17ef9ce993cdc39782e22c8ba`  
		Last Modified: Tue, 06 Feb 2018 14:22:17 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.8` - linux; ppc64le

```console
$ docker pull redis@sha256:7547c93d4c0a619cde6c2c4f3d9f950f3eeb75b8a0082ab9390ddee98a5f9549
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.9 MB (38923332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f10f7acddc1c09e086e6624390b33ad4898490e35e5ba58e9e0248600dbc3911`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 15 Feb 2018 01:34:17 GMT
ADD file:f3263f57a7d4fe956087a3f9803a0f8fe9224b2704ac54c141da2d6a166c737b in / 
# Thu, 15 Feb 2018 01:34:20 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 05:24:53 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Thu, 15 Feb 2018 05:25:04 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 05:27:44 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 05:31:34 GMT
ENV REDIS_VERSION=4.0.8
# Thu, 15 Feb 2018 05:31:35 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.8.tar.gz
# Thu, 15 Feb 2018 05:31:37 GMT
ENV REDIS_DOWNLOAD_SHA=ff0c38b8c156319249fec61e5018cf5b5fe63a65b61690bec798f4c998c232ad
# Thu, 15 Feb 2018 05:34:55 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 05:34:59 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 15 Feb 2018 05:35:01 GMT
VOLUME [/data]
# Thu, 15 Feb 2018 05:35:03 GMT
WORKDIR /data
# Thu, 15 Feb 2018 05:35:05 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Thu, 15 Feb 2018 05:35:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 05:35:08 GMT
EXPOSE 6379/tcp
# Thu, 15 Feb 2018 05:35:10 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:55e44e991a765aac112a6c9b4f8933a727d8c3fdfd7d5138173ff62b0624fb0c`  
		Last Modified: Thu, 15 Feb 2018 01:42:40 GMT  
		Size: 29.3 MB (29311830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df81c6e0db50d64e980a81b82127c9ce7a3f8e6de8ceda534a434125c95a25b1`  
		Last Modified: Thu, 15 Feb 2018 05:35:40 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:876fab0967ab2fac268ea466c4ade4f669005f7171aba968b8e0e2edcf38e3d4`  
		Last Modified: Thu, 15 Feb 2018 05:35:41 GMT  
		Size: 950.7 KB (950706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6eb475636a2b094967d65c076780a0b9ce43fa4ebb5953ddadd97bfcb46e2b7`  
		Last Modified: Thu, 15 Feb 2018 05:36:09 GMT  
		Size: 8.7 MB (8658159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a27d02b6df71330ced3c6b6ac1d8a23bfe55083c3c618850cbb96d9955c751e6`  
		Last Modified: Thu, 15 Feb 2018 05:36:05 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51e87859adf9d6036bbe3ef87886b859a0886fc7d4877922f6bd2b11952f543f`  
		Last Modified: Thu, 15 Feb 2018 05:36:05 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.8` - linux; s390x

```console
$ docker pull redis@sha256:238e9fb365b47d4caee288075684a904a3fc5d91bff4541a6c372f003549272f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.2 MB (40197448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b41868a13131a6e8199602f307a85d93db5973ceb41ff046fd86cea900681105`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 12 Dec 2017 06:23:05 GMT
ADD file:68877912183dff16971679b6264399a76d678986d7cf02bbba2e006d91077cf3 in / 
# Tue, 12 Dec 2017 06:23:06 GMT
CMD ["bash"]
# Sun, 07 Jan 2018 09:26:06 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sun, 07 Jan 2018 09:26:06 GMT
ENV GOSU_VERSION=1.10
# Sun, 07 Jan 2018 09:26:33 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 06 Feb 2018 06:24:31 GMT
ENV REDIS_VERSION=4.0.8
# Tue, 06 Feb 2018 06:24:31 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.8.tar.gz
# Tue, 06 Feb 2018 06:24:32 GMT
ENV REDIS_DOWNLOAD_SHA=ff0c38b8c156319249fec61e5018cf5b5fe63a65b61690bec798f4c998c232ad
# Tue, 06 Feb 2018 06:25:11 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 06 Feb 2018 06:25:12 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 06 Feb 2018 06:25:12 GMT
VOLUME [/data]
# Tue, 06 Feb 2018 06:25:12 GMT
WORKDIR /data
# Tue, 06 Feb 2018 06:25:12 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 06 Feb 2018 06:25:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Feb 2018 06:25:12 GMT
EXPOSE 6379/tcp
# Tue, 06 Feb 2018 06:25:12 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:7ef9b5c13de473137c3ae16d379a5f152b59921d4e96887c06f9e1291af84691`  
		Last Modified: Thu, 14 Dec 2017 00:53:34 GMT  
		Size: 30.3 MB (30293639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608e779e09f2eff9338668b6f32d30ad6db5824db6e05a40163baa53af8a4732`  
		Last Modified: Sun, 07 Jan 2018 09:28:52 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca3bc2bf99d2d3b8b7af50eabf05bcd385693d216437119560e8b76a250123d1`  
		Last Modified: Sun, 07 Jan 2018 09:28:52 GMT  
		Size: 966.9 KB (966920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3b8cfc49318affd19b1bf038f24056cf6e9d29af52b4bfae8a87a937a867191`  
		Last Modified: Tue, 06 Feb 2018 06:26:12 GMT  
		Size: 8.9 MB (8934295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c1e2a9f2143561d02f9cf91b0e1349c12689ad33f621bb6c3667e7bd93a138`  
		Last Modified: Tue, 06 Feb 2018 06:26:09 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b436c81dc8868e47fbe319c57134765522c95c0aa21df408b5b306f6b4efed0`  
		Last Modified: Tue, 06 Feb 2018 06:26:10 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.8-32bit`

```console
$ docker pull redis@sha256:b7effebd7bccb0f5c822754330eacc2a95de3e788d08e58d9542ca3e4865b896
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4.0.8-32bit` - linux; amd64

```console
$ docker pull redis@sha256:a9d58e15ab1e99975a55051b85f80b8b0a16491e58be4a5f5ee4c32d1d29ba59
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.0 MB (43002329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed9ee2d4834b2f1d9cb2621fe747370541254199c39b9d3c3e86e65a50fa10db`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 15 Feb 2018 01:46:20 GMT
ADD file:a0f72eb6710fe45aff98d40665ed5c106a992b2b0d1d57a1fb6ca98c4aa0f0a6 in / 
# Thu, 15 Feb 2018 01:46:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:50:37 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Thu, 15 Feb 2018 07:50:37 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 07:50:59 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 07:54:45 GMT
ENV REDIS_VERSION=4.0.8
# Thu, 15 Feb 2018 07:54:45 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.8.tar.gz
# Thu, 15 Feb 2018 07:54:45 GMT
ENV REDIS_DOWNLOAD_SHA=ff0c38b8c156319249fec61e5018cf5b5fe63a65b61690bec798f4c998c232ad
# Thu, 15 Feb 2018 08:04:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 08:05:16 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 08:05:16 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 15 Feb 2018 08:05:17 GMT
VOLUME [/data]
# Thu, 15 Feb 2018 08:05:17 GMT
WORKDIR /data
# Thu, 15 Feb 2018 08:05:17 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Thu, 15 Feb 2018 08:05:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 08:05:18 GMT
EXPOSE 6379/tcp
# Thu, 15 Feb 2018 08:05:18 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d2ca7eff5948133e4316d463c56948af87b4d4d09848ee0f8b698d3549a7a7dd`  
		Last Modified: Thu, 15 Feb 2018 02:18:31 GMT  
		Size: 30.1 MB (30122379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d1a2245aaa6e74708fd6c58cf1ac19f9db2d2031107c25d20b0ac06d11f2b7c`  
		Last Modified: Thu, 15 Feb 2018 08:17:00 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a483dd2a28bbd7835cda9c014266c0dfcee502ef67e5d9a4e090c807b3a1717`  
		Last Modified: Thu, 15 Feb 2018 08:17:01 GMT  
		Size: 981.7 KB (981722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bce8af5849ba0d561b8eed23e6deb63674cd52a1eda8e4343556ee6bf3dea69`  
		Last Modified: Thu, 15 Feb 2018 08:21:00 GMT  
		Size: 4.4 MB (4378570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a86c627d6879c786d06b4a0e37c9bf01c379cc5b7f93551ab6228f7180740b5f`  
		Last Modified: Thu, 15 Feb 2018 08:21:00 GMT  
		Size: 7.5 MB (7517063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15945e40da683998122b6c443c8f53841f3461ad36db97438e3e93e6b36ce3c6`  
		Last Modified: Thu, 15 Feb 2018 08:20:58 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba0f3aa6300e5e98149d125b41b3dd868f71c9b0d256262b2209f9a222ff7cf8`  
		Last Modified: Thu, 15 Feb 2018 08:20:58 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.8-alpine`

```console
$ docker pull redis@sha256:95a7b91d1e96fa2e4579f439137e5642d3c58d5f8d063d6cea09426d56a22ec0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redis:4.0.8-alpine` - linux; amd64

```console
$ docker pull redis@sha256:9c95cd7cf7951448a6287b2ab43c100a57f52329b46a702840747c1cdfa7db74
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.2 MB (10179340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3117424aaee14ab2b0edb68d3e3dcc1785b2e243b06bd6322f299284c640465`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 24 Jan 2018 00:17:37 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 24 Jan 2018 00:17:41 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 06 Feb 2018 01:02:00 GMT
ENV REDIS_VERSION=4.0.8
# Tue, 06 Feb 2018 01:02:01 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.8.tar.gz
# Tue, 06 Feb 2018 01:02:01 GMT
ENV REDIS_DOWNLOAD_SHA=ff0c38b8c156319249fec61e5018cf5b5fe63a65b61690bec798f4c998c232ad
# Tue, 06 Feb 2018 01:02:34 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Tue, 06 Feb 2018 01:02:34 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 06 Feb 2018 01:02:35 GMT
VOLUME [/data]
# Tue, 06 Feb 2018 01:02:35 GMT
WORKDIR /data
# Tue, 06 Feb 2018 01:02:35 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Tue, 06 Feb 2018 01:02:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Feb 2018 01:02:36 GMT
EXPOSE 6379/tcp
# Tue, 06 Feb 2018 01:02:36 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aae70a2e60279ffae89150a59b81fe10d1d81f341ef6f31b9714ea6cc3418577`  
		Last Modified: Wed, 24 Jan 2018 00:19:46 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87c655da471c9a7d8f946ec7b04a6a72a98ae8c1734bddf4b950861b5638fe20`  
		Last Modified: Wed, 24 Jan 2018 00:19:45 GMT  
		Size: 8.6 KB (8554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0bd51ac7350a7048a0bd85a83d87181a0b851952e94f70e18c1ddb6ff96e66e`  
		Last Modified: Tue, 06 Feb 2018 01:05:51 GMT  
		Size: 8.1 MB (8103501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:755565c3ea2b1335705a21024b1bdb607f85492b284e8dec37eb759c0d601f57`  
		Last Modified: Tue, 06 Feb 2018 01:05:49 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf100ea488d16d4401a9af72879db0c1ab56045b42670ebf64fe1f8d90568fc`  
		Last Modified: Tue, 06 Feb 2018 01:05:49 GMT  
		Size: 397.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.8-alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:fceaf9891edc0e329a58bc1fc62e4d05fbf6baad2c7128216f5c7ab273a2426e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.9 MB (9899600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c436a40263ff219494927fd25198a6d8842c2147ba3a381f11aaf709dc71d35c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Wed, 24 Jan 2018 13:25:46 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 24 Jan 2018 13:25:50 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 06 Feb 2018 13:28:16 GMT
ENV REDIS_VERSION=4.0.8
# Tue, 06 Feb 2018 13:28:16 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.8.tar.gz
# Tue, 06 Feb 2018 13:28:17 GMT
ENV REDIS_DOWNLOAD_SHA=ff0c38b8c156319249fec61e5018cf5b5fe63a65b61690bec798f4c998c232ad
# Tue, 06 Feb 2018 13:28:59 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Tue, 06 Feb 2018 13:29:00 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 06 Feb 2018 13:29:01 GMT
VOLUME [/data]
# Tue, 06 Feb 2018 13:29:03 GMT
WORKDIR /data
# Tue, 06 Feb 2018 13:29:04 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Tue, 06 Feb 2018 13:29:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Feb 2018 13:29:05 GMT
EXPOSE 6379/tcp
# Tue, 06 Feb 2018 13:29:05 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec42e4d70bd6b5d14ceb60d165f35c9d1348c35d3a566bb230cec599a0ffd64`  
		Last Modified: Wed, 24 Jan 2018 13:28:23 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:555bf2ac2a80a9414fecc99d0e2e659cf9cc43ddcf785a45cf07b2fbcbf0f7b4`  
		Last Modified: Wed, 24 Jan 2018 13:28:23 GMT  
		Size: 8.7 KB (8656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e54bbdcaac6918134d7e11e00f2b1e75b516da5192bcc6ccee32b0cde4cfb813`  
		Last Modified: Tue, 06 Feb 2018 13:30:59 GMT  
		Size: 7.9 MB (7900161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cbecf93b2b7ab4e717b40ec8d7bc7431e2311bf4cd3138a5fc081458592412d`  
		Last Modified: Tue, 06 Feb 2018 13:30:55 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f066d192d9c2dc0a500acaa606764e32814f27b77cca7802069958f33e8419e9`  
		Last Modified: Tue, 06 Feb 2018 13:30:56 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.8-alpine` - linux; 386

```console
$ docker pull redis@sha256:d5c010c44c40d0886f75e29b093077d91730d38d71374519acf644a79af3fe03
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.8 MB (9806285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:daa623a745bf3ae1ca4c26a8b972f3ef9c9578b534bba2e8ba36c9903423acbd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Wed, 24 Jan 2018 13:18:38 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 24 Jan 2018 13:18:41 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 06 Feb 2018 14:20:08 GMT
ENV REDIS_VERSION=4.0.8
# Tue, 06 Feb 2018 14:20:08 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.8.tar.gz
# Tue, 06 Feb 2018 14:20:09 GMT
ENV REDIS_DOWNLOAD_SHA=ff0c38b8c156319249fec61e5018cf5b5fe63a65b61690bec798f4c998c232ad
# Tue, 06 Feb 2018 14:20:47 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Tue, 06 Feb 2018 14:20:48 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 06 Feb 2018 14:20:48 GMT
VOLUME [/data]
# Tue, 06 Feb 2018 14:20:48 GMT
WORKDIR /data
# Tue, 06 Feb 2018 14:20:49 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Tue, 06 Feb 2018 14:20:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Feb 2018 14:20:49 GMT
EXPOSE 6379/tcp
# Tue, 06 Feb 2018 14:20:50 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29cce73050e1b58c218a1c94cd8c9f719d38530500ab97333eac5fdaf385dbc`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca9ea366359b5aae5b03a9cf35751eebba1582c08e0a84ddadd88bfee7305ea7`  
		Last Modified: Wed, 24 Jan 2018 13:30:02 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8443df14b3c9f580474f3c6e748be548a63bd8344a0fd8e5d63aec2d36f7504`  
		Last Modified: Wed, 24 Jan 2018 13:30:02 GMT  
		Size: 8.7 KB (8653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8a7fc91c29f9a0c60e096c828036251f053e8f56d77cb0bb86021ae73fd63c9`  
		Last Modified: Tue, 06 Feb 2018 14:33:58 GMT  
		Size: 7.7 MB (7669495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25bd2ed91fc1bd9f366a7a134568a3ee26ed689bfa30d787ccfe5717986cf667`  
		Last Modified: Tue, 06 Feb 2018 14:33:56 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dff81bfd8c00375763c50ff166016b41fa90a806c9509fe4f223fa48f3ca1a8`  
		Last Modified: Tue, 06 Feb 2018 14:33:56 GMT  
		Size: 397.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.8-alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:5e6d309fdb059ee0e63007d193a4d881b998741ae7853641df6020c6095c5bec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10325758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60120b2881e76e0b0a5ba44099febd33927b74b36a1b3d7a4845fe63db5f8203`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Wed, 24 Jan 2018 06:35:28 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 24 Jan 2018 06:35:34 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 06 Feb 2018 06:38:12 GMT
ENV REDIS_VERSION=4.0.8
# Tue, 06 Feb 2018 06:38:14 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.8.tar.gz
# Tue, 06 Feb 2018 06:38:15 GMT
ENV REDIS_DOWNLOAD_SHA=ff0c38b8c156319249fec61e5018cf5b5fe63a65b61690bec798f4c998c232ad
# Tue, 06 Feb 2018 06:38:57 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Tue, 06 Feb 2018 06:39:00 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 06 Feb 2018 06:39:01 GMT
VOLUME [/data]
# Tue, 06 Feb 2018 06:39:02 GMT
WORKDIR /data
# Tue, 06 Feb 2018 06:39:03 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Tue, 06 Feb 2018 06:39:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Feb 2018 06:39:06 GMT
EXPOSE 6379/tcp
# Tue, 06 Feb 2018 06:39:08 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:802132ccdaaf1e42c991c0ad2b274ee46d7d02210e23a3bc630c772fbdd533c2`  
		Last Modified: Wed, 24 Jan 2018 06:37:26 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3edb35368beebf064881c4a2efa343effc2775c4bb6e9121e8426990bc75df12`  
		Last Modified: Wed, 24 Jan 2018 06:37:26 GMT  
		Size: 9.3 KB (9269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c151d6221ea70464275108b0d0f0cc08514f8c6f84a869d33094b5971eb4384`  
		Last Modified: Tue, 06 Feb 2018 06:39:48 GMT  
		Size: 8.2 MB (8233027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2d28b6a9f98485377ac2c9e77217501c63f2997b6f9cdd238284ddab0979fa8`  
		Last Modified: Tue, 06 Feb 2018 06:39:45 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e7b6a65e27a2ba9ff0c9623b7a5f78fec7cd66a15d40da1f78d7c6a986bb2f`  
		Last Modified: Tue, 06 Feb 2018 06:39:45 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.8-alpine` - linux; s390x

```console
$ docker pull redis@sha256:70b3ac71834e42d1e2a0428176be89b0e3f5a490cc1d694629f5dbcb98c17a4b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10510520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86f34eaab61219aee3adc3d84d745d93116ce30387ae91b90dbb73a312ad9856`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Wed, 24 Jan 2018 06:24:30 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 24 Jan 2018 06:24:33 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 06 Feb 2018 06:25:19 GMT
ENV REDIS_VERSION=4.0.8
# Tue, 06 Feb 2018 06:25:19 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.8.tar.gz
# Tue, 06 Feb 2018 06:25:19 GMT
ENV REDIS_DOWNLOAD_SHA=ff0c38b8c156319249fec61e5018cf5b5fe63a65b61690bec798f4c998c232ad
# Tue, 06 Feb 2018 06:25:49 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Tue, 06 Feb 2018 06:25:49 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 06 Feb 2018 06:25:50 GMT
VOLUME [/data]
# Tue, 06 Feb 2018 06:25:50 GMT
WORKDIR /data
# Tue, 06 Feb 2018 06:25:50 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Tue, 06 Feb 2018 06:25:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Feb 2018 06:25:50 GMT
EXPOSE 6379/tcp
# Tue, 06 Feb 2018 06:25:50 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:11e7bc85614a236b32043d147930fd2bc9055af8642fe30e5e56142590572b0e`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 2.2 MB (2185231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f825cbb729285f1fe2a0cd1d4d36897e3fe2191c5ee044ce11a5d301dc64a34`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:167640baaae6b19b666d28c35de1dde729eaca22986531c0f3b3dd6af5bbc469`  
		Last Modified: Wed, 24 Jan 2018 06:25:46 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dab4f89cc8856e8d43a9cc8e3ba6670d31906a9a3409fdf2f59ad893cda37c8`  
		Last Modified: Wed, 24 Jan 2018 06:25:46 GMT  
		Size: 8.9 KB (8944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67e3bc96df2fd5695f3b674c176efac4b9395e498e7772620c654a846b59c303`  
		Last Modified: Tue, 06 Feb 2018 06:26:27 GMT  
		Size: 8.3 MB (8314420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9d837881546b6ff3cbe783ba365db70ff544c9da2eecce6773e9b2802084545`  
		Last Modified: Tue, 06 Feb 2018 06:26:24 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d92ded4540939fdf1e2a0a3b767833a2dcf8faf6c6d06e6d0b1688bd8f4141`  
		Last Modified: Tue, 06 Feb 2018 06:26:25 GMT  
		Size: 398.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0-alpine`

```console
$ docker pull redis@sha256:95a7b91d1e96fa2e4579f439137e5642d3c58d5f8d063d6cea09426d56a22ec0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redis:4.0-alpine` - linux; amd64

```console
$ docker pull redis@sha256:9c95cd7cf7951448a6287b2ab43c100a57f52329b46a702840747c1cdfa7db74
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.2 MB (10179340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3117424aaee14ab2b0edb68d3e3dcc1785b2e243b06bd6322f299284c640465`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 24 Jan 2018 00:17:37 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 24 Jan 2018 00:17:41 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 06 Feb 2018 01:02:00 GMT
ENV REDIS_VERSION=4.0.8
# Tue, 06 Feb 2018 01:02:01 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.8.tar.gz
# Tue, 06 Feb 2018 01:02:01 GMT
ENV REDIS_DOWNLOAD_SHA=ff0c38b8c156319249fec61e5018cf5b5fe63a65b61690bec798f4c998c232ad
# Tue, 06 Feb 2018 01:02:34 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Tue, 06 Feb 2018 01:02:34 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 06 Feb 2018 01:02:35 GMT
VOLUME [/data]
# Tue, 06 Feb 2018 01:02:35 GMT
WORKDIR /data
# Tue, 06 Feb 2018 01:02:35 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Tue, 06 Feb 2018 01:02:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Feb 2018 01:02:36 GMT
EXPOSE 6379/tcp
# Tue, 06 Feb 2018 01:02:36 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aae70a2e60279ffae89150a59b81fe10d1d81f341ef6f31b9714ea6cc3418577`  
		Last Modified: Wed, 24 Jan 2018 00:19:46 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87c655da471c9a7d8f946ec7b04a6a72a98ae8c1734bddf4b950861b5638fe20`  
		Last Modified: Wed, 24 Jan 2018 00:19:45 GMT  
		Size: 8.6 KB (8554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0bd51ac7350a7048a0bd85a83d87181a0b851952e94f70e18c1ddb6ff96e66e`  
		Last Modified: Tue, 06 Feb 2018 01:05:51 GMT  
		Size: 8.1 MB (8103501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:755565c3ea2b1335705a21024b1bdb607f85492b284e8dec37eb759c0d601f57`  
		Last Modified: Tue, 06 Feb 2018 01:05:49 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf100ea488d16d4401a9af72879db0c1ab56045b42670ebf64fe1f8d90568fc`  
		Last Modified: Tue, 06 Feb 2018 01:05:49 GMT  
		Size: 397.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:fceaf9891edc0e329a58bc1fc62e4d05fbf6baad2c7128216f5c7ab273a2426e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.9 MB (9899600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c436a40263ff219494927fd25198a6d8842c2147ba3a381f11aaf709dc71d35c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Wed, 24 Jan 2018 13:25:46 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 24 Jan 2018 13:25:50 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 06 Feb 2018 13:28:16 GMT
ENV REDIS_VERSION=4.0.8
# Tue, 06 Feb 2018 13:28:16 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.8.tar.gz
# Tue, 06 Feb 2018 13:28:17 GMT
ENV REDIS_DOWNLOAD_SHA=ff0c38b8c156319249fec61e5018cf5b5fe63a65b61690bec798f4c998c232ad
# Tue, 06 Feb 2018 13:28:59 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Tue, 06 Feb 2018 13:29:00 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 06 Feb 2018 13:29:01 GMT
VOLUME [/data]
# Tue, 06 Feb 2018 13:29:03 GMT
WORKDIR /data
# Tue, 06 Feb 2018 13:29:04 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Tue, 06 Feb 2018 13:29:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Feb 2018 13:29:05 GMT
EXPOSE 6379/tcp
# Tue, 06 Feb 2018 13:29:05 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec42e4d70bd6b5d14ceb60d165f35c9d1348c35d3a566bb230cec599a0ffd64`  
		Last Modified: Wed, 24 Jan 2018 13:28:23 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:555bf2ac2a80a9414fecc99d0e2e659cf9cc43ddcf785a45cf07b2fbcbf0f7b4`  
		Last Modified: Wed, 24 Jan 2018 13:28:23 GMT  
		Size: 8.7 KB (8656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e54bbdcaac6918134d7e11e00f2b1e75b516da5192bcc6ccee32b0cde4cfb813`  
		Last Modified: Tue, 06 Feb 2018 13:30:59 GMT  
		Size: 7.9 MB (7900161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cbecf93b2b7ab4e717b40ec8d7bc7431e2311bf4cd3138a5fc081458592412d`  
		Last Modified: Tue, 06 Feb 2018 13:30:55 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f066d192d9c2dc0a500acaa606764e32814f27b77cca7802069958f33e8419e9`  
		Last Modified: Tue, 06 Feb 2018 13:30:56 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine` - linux; 386

```console
$ docker pull redis@sha256:d5c010c44c40d0886f75e29b093077d91730d38d71374519acf644a79af3fe03
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.8 MB (9806285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:daa623a745bf3ae1ca4c26a8b972f3ef9c9578b534bba2e8ba36c9903423acbd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Wed, 24 Jan 2018 13:18:38 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 24 Jan 2018 13:18:41 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 06 Feb 2018 14:20:08 GMT
ENV REDIS_VERSION=4.0.8
# Tue, 06 Feb 2018 14:20:08 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.8.tar.gz
# Tue, 06 Feb 2018 14:20:09 GMT
ENV REDIS_DOWNLOAD_SHA=ff0c38b8c156319249fec61e5018cf5b5fe63a65b61690bec798f4c998c232ad
# Tue, 06 Feb 2018 14:20:47 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Tue, 06 Feb 2018 14:20:48 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 06 Feb 2018 14:20:48 GMT
VOLUME [/data]
# Tue, 06 Feb 2018 14:20:48 GMT
WORKDIR /data
# Tue, 06 Feb 2018 14:20:49 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Tue, 06 Feb 2018 14:20:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Feb 2018 14:20:49 GMT
EXPOSE 6379/tcp
# Tue, 06 Feb 2018 14:20:50 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29cce73050e1b58c218a1c94cd8c9f719d38530500ab97333eac5fdaf385dbc`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca9ea366359b5aae5b03a9cf35751eebba1582c08e0a84ddadd88bfee7305ea7`  
		Last Modified: Wed, 24 Jan 2018 13:30:02 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8443df14b3c9f580474f3c6e748be548a63bd8344a0fd8e5d63aec2d36f7504`  
		Last Modified: Wed, 24 Jan 2018 13:30:02 GMT  
		Size: 8.7 KB (8653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8a7fc91c29f9a0c60e096c828036251f053e8f56d77cb0bb86021ae73fd63c9`  
		Last Modified: Tue, 06 Feb 2018 14:33:58 GMT  
		Size: 7.7 MB (7669495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25bd2ed91fc1bd9f366a7a134568a3ee26ed689bfa30d787ccfe5717986cf667`  
		Last Modified: Tue, 06 Feb 2018 14:33:56 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dff81bfd8c00375763c50ff166016b41fa90a806c9509fe4f223fa48f3ca1a8`  
		Last Modified: Tue, 06 Feb 2018 14:33:56 GMT  
		Size: 397.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:5e6d309fdb059ee0e63007d193a4d881b998741ae7853641df6020c6095c5bec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10325758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60120b2881e76e0b0a5ba44099febd33927b74b36a1b3d7a4845fe63db5f8203`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Wed, 24 Jan 2018 06:35:28 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 24 Jan 2018 06:35:34 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 06 Feb 2018 06:38:12 GMT
ENV REDIS_VERSION=4.0.8
# Tue, 06 Feb 2018 06:38:14 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.8.tar.gz
# Tue, 06 Feb 2018 06:38:15 GMT
ENV REDIS_DOWNLOAD_SHA=ff0c38b8c156319249fec61e5018cf5b5fe63a65b61690bec798f4c998c232ad
# Tue, 06 Feb 2018 06:38:57 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Tue, 06 Feb 2018 06:39:00 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 06 Feb 2018 06:39:01 GMT
VOLUME [/data]
# Tue, 06 Feb 2018 06:39:02 GMT
WORKDIR /data
# Tue, 06 Feb 2018 06:39:03 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Tue, 06 Feb 2018 06:39:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Feb 2018 06:39:06 GMT
EXPOSE 6379/tcp
# Tue, 06 Feb 2018 06:39:08 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:802132ccdaaf1e42c991c0ad2b274ee46d7d02210e23a3bc630c772fbdd533c2`  
		Last Modified: Wed, 24 Jan 2018 06:37:26 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3edb35368beebf064881c4a2efa343effc2775c4bb6e9121e8426990bc75df12`  
		Last Modified: Wed, 24 Jan 2018 06:37:26 GMT  
		Size: 9.3 KB (9269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c151d6221ea70464275108b0d0f0cc08514f8c6f84a869d33094b5971eb4384`  
		Last Modified: Tue, 06 Feb 2018 06:39:48 GMT  
		Size: 8.2 MB (8233027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2d28b6a9f98485377ac2c9e77217501c63f2997b6f9cdd238284ddab0979fa8`  
		Last Modified: Tue, 06 Feb 2018 06:39:45 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e7b6a65e27a2ba9ff0c9623b7a5f78fec7cd66a15d40da1f78d7c6a986bb2f`  
		Last Modified: Tue, 06 Feb 2018 06:39:45 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine` - linux; s390x

```console
$ docker pull redis@sha256:70b3ac71834e42d1e2a0428176be89b0e3f5a490cc1d694629f5dbcb98c17a4b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10510520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86f34eaab61219aee3adc3d84d745d93116ce30387ae91b90dbb73a312ad9856`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Wed, 24 Jan 2018 06:24:30 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 24 Jan 2018 06:24:33 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 06 Feb 2018 06:25:19 GMT
ENV REDIS_VERSION=4.0.8
# Tue, 06 Feb 2018 06:25:19 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.8.tar.gz
# Tue, 06 Feb 2018 06:25:19 GMT
ENV REDIS_DOWNLOAD_SHA=ff0c38b8c156319249fec61e5018cf5b5fe63a65b61690bec798f4c998c232ad
# Tue, 06 Feb 2018 06:25:49 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Tue, 06 Feb 2018 06:25:49 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 06 Feb 2018 06:25:50 GMT
VOLUME [/data]
# Tue, 06 Feb 2018 06:25:50 GMT
WORKDIR /data
# Tue, 06 Feb 2018 06:25:50 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Tue, 06 Feb 2018 06:25:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Feb 2018 06:25:50 GMT
EXPOSE 6379/tcp
# Tue, 06 Feb 2018 06:25:50 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:11e7bc85614a236b32043d147930fd2bc9055af8642fe30e5e56142590572b0e`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 2.2 MB (2185231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f825cbb729285f1fe2a0cd1d4d36897e3fe2191c5ee044ce11a5d301dc64a34`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:167640baaae6b19b666d28c35de1dde729eaca22986531c0f3b3dd6af5bbc469`  
		Last Modified: Wed, 24 Jan 2018 06:25:46 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dab4f89cc8856e8d43a9cc8e3ba6670d31906a9a3409fdf2f59ad893cda37c8`  
		Last Modified: Wed, 24 Jan 2018 06:25:46 GMT  
		Size: 8.9 KB (8944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67e3bc96df2fd5695f3b674c176efac4b9395e498e7772620c654a846b59c303`  
		Last Modified: Tue, 06 Feb 2018 06:26:27 GMT  
		Size: 8.3 MB (8314420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9d837881546b6ff3cbe783ba365db70ff544c9da2eecce6773e9b2802084545`  
		Last Modified: Tue, 06 Feb 2018 06:26:24 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d92ded4540939fdf1e2a0a3b767833a2dcf8faf6c6d06e6d0b1688bd8f4141`  
		Last Modified: Tue, 06 Feb 2018 06:26:25 GMT  
		Size: 398.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4-32bit`

```console
$ docker pull redis@sha256:b7effebd7bccb0f5c822754330eacc2a95de3e788d08e58d9542ca3e4865b896
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4-32bit` - linux; amd64

```console
$ docker pull redis@sha256:a9d58e15ab1e99975a55051b85f80b8b0a16491e58be4a5f5ee4c32d1d29ba59
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.0 MB (43002329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed9ee2d4834b2f1d9cb2621fe747370541254199c39b9d3c3e86e65a50fa10db`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 15 Feb 2018 01:46:20 GMT
ADD file:a0f72eb6710fe45aff98d40665ed5c106a992b2b0d1d57a1fb6ca98c4aa0f0a6 in / 
# Thu, 15 Feb 2018 01:46:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:50:37 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Thu, 15 Feb 2018 07:50:37 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 07:50:59 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 07:54:45 GMT
ENV REDIS_VERSION=4.0.8
# Thu, 15 Feb 2018 07:54:45 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.8.tar.gz
# Thu, 15 Feb 2018 07:54:45 GMT
ENV REDIS_DOWNLOAD_SHA=ff0c38b8c156319249fec61e5018cf5b5fe63a65b61690bec798f4c998c232ad
# Thu, 15 Feb 2018 08:04:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 08:05:16 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 08:05:16 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 15 Feb 2018 08:05:17 GMT
VOLUME [/data]
# Thu, 15 Feb 2018 08:05:17 GMT
WORKDIR /data
# Thu, 15 Feb 2018 08:05:17 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Thu, 15 Feb 2018 08:05:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 08:05:18 GMT
EXPOSE 6379/tcp
# Thu, 15 Feb 2018 08:05:18 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d2ca7eff5948133e4316d463c56948af87b4d4d09848ee0f8b698d3549a7a7dd`  
		Last Modified: Thu, 15 Feb 2018 02:18:31 GMT  
		Size: 30.1 MB (30122379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d1a2245aaa6e74708fd6c58cf1ac19f9db2d2031107c25d20b0ac06d11f2b7c`  
		Last Modified: Thu, 15 Feb 2018 08:17:00 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a483dd2a28bbd7835cda9c014266c0dfcee502ef67e5d9a4e090c807b3a1717`  
		Last Modified: Thu, 15 Feb 2018 08:17:01 GMT  
		Size: 981.7 KB (981722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bce8af5849ba0d561b8eed23e6deb63674cd52a1eda8e4343556ee6bf3dea69`  
		Last Modified: Thu, 15 Feb 2018 08:21:00 GMT  
		Size: 4.4 MB (4378570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a86c627d6879c786d06b4a0e37c9bf01c379cc5b7f93551ab6228f7180740b5f`  
		Last Modified: Thu, 15 Feb 2018 08:21:00 GMT  
		Size: 7.5 MB (7517063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15945e40da683998122b6c443c8f53841f3461ad36db97438e3e93e6b36ce3c6`  
		Last Modified: Thu, 15 Feb 2018 08:20:58 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba0f3aa6300e5e98149d125b41b3dd868f71c9b0d256262b2209f9a222ff7cf8`  
		Last Modified: Thu, 15 Feb 2018 08:20:58 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4-alpine`

```console
$ docker pull redis@sha256:95a7b91d1e96fa2e4579f439137e5642d3c58d5f8d063d6cea09426d56a22ec0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redis:4-alpine` - linux; amd64

```console
$ docker pull redis@sha256:9c95cd7cf7951448a6287b2ab43c100a57f52329b46a702840747c1cdfa7db74
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.2 MB (10179340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3117424aaee14ab2b0edb68d3e3dcc1785b2e243b06bd6322f299284c640465`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 24 Jan 2018 00:17:37 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 24 Jan 2018 00:17:41 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 06 Feb 2018 01:02:00 GMT
ENV REDIS_VERSION=4.0.8
# Tue, 06 Feb 2018 01:02:01 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.8.tar.gz
# Tue, 06 Feb 2018 01:02:01 GMT
ENV REDIS_DOWNLOAD_SHA=ff0c38b8c156319249fec61e5018cf5b5fe63a65b61690bec798f4c998c232ad
# Tue, 06 Feb 2018 01:02:34 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Tue, 06 Feb 2018 01:02:34 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 06 Feb 2018 01:02:35 GMT
VOLUME [/data]
# Tue, 06 Feb 2018 01:02:35 GMT
WORKDIR /data
# Tue, 06 Feb 2018 01:02:35 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Tue, 06 Feb 2018 01:02:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Feb 2018 01:02:36 GMT
EXPOSE 6379/tcp
# Tue, 06 Feb 2018 01:02:36 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aae70a2e60279ffae89150a59b81fe10d1d81f341ef6f31b9714ea6cc3418577`  
		Last Modified: Wed, 24 Jan 2018 00:19:46 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87c655da471c9a7d8f946ec7b04a6a72a98ae8c1734bddf4b950861b5638fe20`  
		Last Modified: Wed, 24 Jan 2018 00:19:45 GMT  
		Size: 8.6 KB (8554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0bd51ac7350a7048a0bd85a83d87181a0b851952e94f70e18c1ddb6ff96e66e`  
		Last Modified: Tue, 06 Feb 2018 01:05:51 GMT  
		Size: 8.1 MB (8103501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:755565c3ea2b1335705a21024b1bdb607f85492b284e8dec37eb759c0d601f57`  
		Last Modified: Tue, 06 Feb 2018 01:05:49 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf100ea488d16d4401a9af72879db0c1ab56045b42670ebf64fe1f8d90568fc`  
		Last Modified: Tue, 06 Feb 2018 01:05:49 GMT  
		Size: 397.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:fceaf9891edc0e329a58bc1fc62e4d05fbf6baad2c7128216f5c7ab273a2426e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.9 MB (9899600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c436a40263ff219494927fd25198a6d8842c2147ba3a381f11aaf709dc71d35c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Wed, 24 Jan 2018 13:25:46 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 24 Jan 2018 13:25:50 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 06 Feb 2018 13:28:16 GMT
ENV REDIS_VERSION=4.0.8
# Tue, 06 Feb 2018 13:28:16 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.8.tar.gz
# Tue, 06 Feb 2018 13:28:17 GMT
ENV REDIS_DOWNLOAD_SHA=ff0c38b8c156319249fec61e5018cf5b5fe63a65b61690bec798f4c998c232ad
# Tue, 06 Feb 2018 13:28:59 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Tue, 06 Feb 2018 13:29:00 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 06 Feb 2018 13:29:01 GMT
VOLUME [/data]
# Tue, 06 Feb 2018 13:29:03 GMT
WORKDIR /data
# Tue, 06 Feb 2018 13:29:04 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Tue, 06 Feb 2018 13:29:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Feb 2018 13:29:05 GMT
EXPOSE 6379/tcp
# Tue, 06 Feb 2018 13:29:05 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec42e4d70bd6b5d14ceb60d165f35c9d1348c35d3a566bb230cec599a0ffd64`  
		Last Modified: Wed, 24 Jan 2018 13:28:23 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:555bf2ac2a80a9414fecc99d0e2e659cf9cc43ddcf785a45cf07b2fbcbf0f7b4`  
		Last Modified: Wed, 24 Jan 2018 13:28:23 GMT  
		Size: 8.7 KB (8656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e54bbdcaac6918134d7e11e00f2b1e75b516da5192bcc6ccee32b0cde4cfb813`  
		Last Modified: Tue, 06 Feb 2018 13:30:59 GMT  
		Size: 7.9 MB (7900161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cbecf93b2b7ab4e717b40ec8d7bc7431e2311bf4cd3138a5fc081458592412d`  
		Last Modified: Tue, 06 Feb 2018 13:30:55 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f066d192d9c2dc0a500acaa606764e32814f27b77cca7802069958f33e8419e9`  
		Last Modified: Tue, 06 Feb 2018 13:30:56 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine` - linux; 386

```console
$ docker pull redis@sha256:d5c010c44c40d0886f75e29b093077d91730d38d71374519acf644a79af3fe03
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.8 MB (9806285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:daa623a745bf3ae1ca4c26a8b972f3ef9c9578b534bba2e8ba36c9903423acbd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Wed, 24 Jan 2018 13:18:38 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 24 Jan 2018 13:18:41 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 06 Feb 2018 14:20:08 GMT
ENV REDIS_VERSION=4.0.8
# Tue, 06 Feb 2018 14:20:08 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.8.tar.gz
# Tue, 06 Feb 2018 14:20:09 GMT
ENV REDIS_DOWNLOAD_SHA=ff0c38b8c156319249fec61e5018cf5b5fe63a65b61690bec798f4c998c232ad
# Tue, 06 Feb 2018 14:20:47 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Tue, 06 Feb 2018 14:20:48 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 06 Feb 2018 14:20:48 GMT
VOLUME [/data]
# Tue, 06 Feb 2018 14:20:48 GMT
WORKDIR /data
# Tue, 06 Feb 2018 14:20:49 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Tue, 06 Feb 2018 14:20:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Feb 2018 14:20:49 GMT
EXPOSE 6379/tcp
# Tue, 06 Feb 2018 14:20:50 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29cce73050e1b58c218a1c94cd8c9f719d38530500ab97333eac5fdaf385dbc`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca9ea366359b5aae5b03a9cf35751eebba1582c08e0a84ddadd88bfee7305ea7`  
		Last Modified: Wed, 24 Jan 2018 13:30:02 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8443df14b3c9f580474f3c6e748be548a63bd8344a0fd8e5d63aec2d36f7504`  
		Last Modified: Wed, 24 Jan 2018 13:30:02 GMT  
		Size: 8.7 KB (8653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8a7fc91c29f9a0c60e096c828036251f053e8f56d77cb0bb86021ae73fd63c9`  
		Last Modified: Tue, 06 Feb 2018 14:33:58 GMT  
		Size: 7.7 MB (7669495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25bd2ed91fc1bd9f366a7a134568a3ee26ed689bfa30d787ccfe5717986cf667`  
		Last Modified: Tue, 06 Feb 2018 14:33:56 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dff81bfd8c00375763c50ff166016b41fa90a806c9509fe4f223fa48f3ca1a8`  
		Last Modified: Tue, 06 Feb 2018 14:33:56 GMT  
		Size: 397.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:5e6d309fdb059ee0e63007d193a4d881b998741ae7853641df6020c6095c5bec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10325758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60120b2881e76e0b0a5ba44099febd33927b74b36a1b3d7a4845fe63db5f8203`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Wed, 24 Jan 2018 06:35:28 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 24 Jan 2018 06:35:34 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 06 Feb 2018 06:38:12 GMT
ENV REDIS_VERSION=4.0.8
# Tue, 06 Feb 2018 06:38:14 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.8.tar.gz
# Tue, 06 Feb 2018 06:38:15 GMT
ENV REDIS_DOWNLOAD_SHA=ff0c38b8c156319249fec61e5018cf5b5fe63a65b61690bec798f4c998c232ad
# Tue, 06 Feb 2018 06:38:57 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Tue, 06 Feb 2018 06:39:00 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 06 Feb 2018 06:39:01 GMT
VOLUME [/data]
# Tue, 06 Feb 2018 06:39:02 GMT
WORKDIR /data
# Tue, 06 Feb 2018 06:39:03 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Tue, 06 Feb 2018 06:39:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Feb 2018 06:39:06 GMT
EXPOSE 6379/tcp
# Tue, 06 Feb 2018 06:39:08 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:802132ccdaaf1e42c991c0ad2b274ee46d7d02210e23a3bc630c772fbdd533c2`  
		Last Modified: Wed, 24 Jan 2018 06:37:26 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3edb35368beebf064881c4a2efa343effc2775c4bb6e9121e8426990bc75df12`  
		Last Modified: Wed, 24 Jan 2018 06:37:26 GMT  
		Size: 9.3 KB (9269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c151d6221ea70464275108b0d0f0cc08514f8c6f84a869d33094b5971eb4384`  
		Last Modified: Tue, 06 Feb 2018 06:39:48 GMT  
		Size: 8.2 MB (8233027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2d28b6a9f98485377ac2c9e77217501c63f2997b6f9cdd238284ddab0979fa8`  
		Last Modified: Tue, 06 Feb 2018 06:39:45 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e7b6a65e27a2ba9ff0c9623b7a5f78fec7cd66a15d40da1f78d7c6a986bb2f`  
		Last Modified: Tue, 06 Feb 2018 06:39:45 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine` - linux; s390x

```console
$ docker pull redis@sha256:70b3ac71834e42d1e2a0428176be89b0e3f5a490cc1d694629f5dbcb98c17a4b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10510520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86f34eaab61219aee3adc3d84d745d93116ce30387ae91b90dbb73a312ad9856`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Wed, 24 Jan 2018 06:24:30 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 24 Jan 2018 06:24:33 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 06 Feb 2018 06:25:19 GMT
ENV REDIS_VERSION=4.0.8
# Tue, 06 Feb 2018 06:25:19 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.8.tar.gz
# Tue, 06 Feb 2018 06:25:19 GMT
ENV REDIS_DOWNLOAD_SHA=ff0c38b8c156319249fec61e5018cf5b5fe63a65b61690bec798f4c998c232ad
# Tue, 06 Feb 2018 06:25:49 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Tue, 06 Feb 2018 06:25:49 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 06 Feb 2018 06:25:50 GMT
VOLUME [/data]
# Tue, 06 Feb 2018 06:25:50 GMT
WORKDIR /data
# Tue, 06 Feb 2018 06:25:50 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Tue, 06 Feb 2018 06:25:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Feb 2018 06:25:50 GMT
EXPOSE 6379/tcp
# Tue, 06 Feb 2018 06:25:50 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:11e7bc85614a236b32043d147930fd2bc9055af8642fe30e5e56142590572b0e`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 2.2 MB (2185231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f825cbb729285f1fe2a0cd1d4d36897e3fe2191c5ee044ce11a5d301dc64a34`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:167640baaae6b19b666d28c35de1dde729eaca22986531c0f3b3dd6af5bbc469`  
		Last Modified: Wed, 24 Jan 2018 06:25:46 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dab4f89cc8856e8d43a9cc8e3ba6670d31906a9a3409fdf2f59ad893cda37c8`  
		Last Modified: Wed, 24 Jan 2018 06:25:46 GMT  
		Size: 8.9 KB (8944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67e3bc96df2fd5695f3b674c176efac4b9395e498e7772620c654a846b59c303`  
		Last Modified: Tue, 06 Feb 2018 06:26:27 GMT  
		Size: 8.3 MB (8314420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9d837881546b6ff3cbe783ba365db70ff544c9da2eecce6773e9b2802084545`  
		Last Modified: Tue, 06 Feb 2018 06:26:24 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d92ded4540939fdf1e2a0a3b767833a2dcf8faf6c6d06e6d0b1688bd8f4141`  
		Last Modified: Tue, 06 Feb 2018 06:26:25 GMT  
		Size: 398.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:alpine`

```console
$ docker pull redis@sha256:95a7b91d1e96fa2e4579f439137e5642d3c58d5f8d063d6cea09426d56a22ec0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redis:alpine` - linux; amd64

```console
$ docker pull redis@sha256:9c95cd7cf7951448a6287b2ab43c100a57f52329b46a702840747c1cdfa7db74
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.2 MB (10179340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3117424aaee14ab2b0edb68d3e3dcc1785b2e243b06bd6322f299284c640465`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 24 Jan 2018 00:17:37 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 24 Jan 2018 00:17:41 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 06 Feb 2018 01:02:00 GMT
ENV REDIS_VERSION=4.0.8
# Tue, 06 Feb 2018 01:02:01 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.8.tar.gz
# Tue, 06 Feb 2018 01:02:01 GMT
ENV REDIS_DOWNLOAD_SHA=ff0c38b8c156319249fec61e5018cf5b5fe63a65b61690bec798f4c998c232ad
# Tue, 06 Feb 2018 01:02:34 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Tue, 06 Feb 2018 01:02:34 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 06 Feb 2018 01:02:35 GMT
VOLUME [/data]
# Tue, 06 Feb 2018 01:02:35 GMT
WORKDIR /data
# Tue, 06 Feb 2018 01:02:35 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Tue, 06 Feb 2018 01:02:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Feb 2018 01:02:36 GMT
EXPOSE 6379/tcp
# Tue, 06 Feb 2018 01:02:36 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aae70a2e60279ffae89150a59b81fe10d1d81f341ef6f31b9714ea6cc3418577`  
		Last Modified: Wed, 24 Jan 2018 00:19:46 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87c655da471c9a7d8f946ec7b04a6a72a98ae8c1734bddf4b950861b5638fe20`  
		Last Modified: Wed, 24 Jan 2018 00:19:45 GMT  
		Size: 8.6 KB (8554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0bd51ac7350a7048a0bd85a83d87181a0b851952e94f70e18c1ddb6ff96e66e`  
		Last Modified: Tue, 06 Feb 2018 01:05:51 GMT  
		Size: 8.1 MB (8103501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:755565c3ea2b1335705a21024b1bdb607f85492b284e8dec37eb759c0d601f57`  
		Last Modified: Tue, 06 Feb 2018 01:05:49 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf100ea488d16d4401a9af72879db0c1ab56045b42670ebf64fe1f8d90568fc`  
		Last Modified: Tue, 06 Feb 2018 01:05:49 GMT  
		Size: 397.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:fceaf9891edc0e329a58bc1fc62e4d05fbf6baad2c7128216f5c7ab273a2426e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.9 MB (9899600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c436a40263ff219494927fd25198a6d8842c2147ba3a381f11aaf709dc71d35c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Wed, 24 Jan 2018 13:25:46 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 24 Jan 2018 13:25:50 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 06 Feb 2018 13:28:16 GMT
ENV REDIS_VERSION=4.0.8
# Tue, 06 Feb 2018 13:28:16 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.8.tar.gz
# Tue, 06 Feb 2018 13:28:17 GMT
ENV REDIS_DOWNLOAD_SHA=ff0c38b8c156319249fec61e5018cf5b5fe63a65b61690bec798f4c998c232ad
# Tue, 06 Feb 2018 13:28:59 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Tue, 06 Feb 2018 13:29:00 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 06 Feb 2018 13:29:01 GMT
VOLUME [/data]
# Tue, 06 Feb 2018 13:29:03 GMT
WORKDIR /data
# Tue, 06 Feb 2018 13:29:04 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Tue, 06 Feb 2018 13:29:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Feb 2018 13:29:05 GMT
EXPOSE 6379/tcp
# Tue, 06 Feb 2018 13:29:05 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec42e4d70bd6b5d14ceb60d165f35c9d1348c35d3a566bb230cec599a0ffd64`  
		Last Modified: Wed, 24 Jan 2018 13:28:23 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:555bf2ac2a80a9414fecc99d0e2e659cf9cc43ddcf785a45cf07b2fbcbf0f7b4`  
		Last Modified: Wed, 24 Jan 2018 13:28:23 GMT  
		Size: 8.7 KB (8656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e54bbdcaac6918134d7e11e00f2b1e75b516da5192bcc6ccee32b0cde4cfb813`  
		Last Modified: Tue, 06 Feb 2018 13:30:59 GMT  
		Size: 7.9 MB (7900161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cbecf93b2b7ab4e717b40ec8d7bc7431e2311bf4cd3138a5fc081458592412d`  
		Last Modified: Tue, 06 Feb 2018 13:30:55 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f066d192d9c2dc0a500acaa606764e32814f27b77cca7802069958f33e8419e9`  
		Last Modified: Tue, 06 Feb 2018 13:30:56 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine` - linux; 386

```console
$ docker pull redis@sha256:d5c010c44c40d0886f75e29b093077d91730d38d71374519acf644a79af3fe03
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.8 MB (9806285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:daa623a745bf3ae1ca4c26a8b972f3ef9c9578b534bba2e8ba36c9903423acbd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Wed, 24 Jan 2018 13:18:38 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 24 Jan 2018 13:18:41 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 06 Feb 2018 14:20:08 GMT
ENV REDIS_VERSION=4.0.8
# Tue, 06 Feb 2018 14:20:08 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.8.tar.gz
# Tue, 06 Feb 2018 14:20:09 GMT
ENV REDIS_DOWNLOAD_SHA=ff0c38b8c156319249fec61e5018cf5b5fe63a65b61690bec798f4c998c232ad
# Tue, 06 Feb 2018 14:20:47 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Tue, 06 Feb 2018 14:20:48 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 06 Feb 2018 14:20:48 GMT
VOLUME [/data]
# Tue, 06 Feb 2018 14:20:48 GMT
WORKDIR /data
# Tue, 06 Feb 2018 14:20:49 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Tue, 06 Feb 2018 14:20:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Feb 2018 14:20:49 GMT
EXPOSE 6379/tcp
# Tue, 06 Feb 2018 14:20:50 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29cce73050e1b58c218a1c94cd8c9f719d38530500ab97333eac5fdaf385dbc`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca9ea366359b5aae5b03a9cf35751eebba1582c08e0a84ddadd88bfee7305ea7`  
		Last Modified: Wed, 24 Jan 2018 13:30:02 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8443df14b3c9f580474f3c6e748be548a63bd8344a0fd8e5d63aec2d36f7504`  
		Last Modified: Wed, 24 Jan 2018 13:30:02 GMT  
		Size: 8.7 KB (8653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8a7fc91c29f9a0c60e096c828036251f053e8f56d77cb0bb86021ae73fd63c9`  
		Last Modified: Tue, 06 Feb 2018 14:33:58 GMT  
		Size: 7.7 MB (7669495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25bd2ed91fc1bd9f366a7a134568a3ee26ed689bfa30d787ccfe5717986cf667`  
		Last Modified: Tue, 06 Feb 2018 14:33:56 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dff81bfd8c00375763c50ff166016b41fa90a806c9509fe4f223fa48f3ca1a8`  
		Last Modified: Tue, 06 Feb 2018 14:33:56 GMT  
		Size: 397.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:5e6d309fdb059ee0e63007d193a4d881b998741ae7853641df6020c6095c5bec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10325758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60120b2881e76e0b0a5ba44099febd33927b74b36a1b3d7a4845fe63db5f8203`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Wed, 24 Jan 2018 06:35:28 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 24 Jan 2018 06:35:34 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 06 Feb 2018 06:38:12 GMT
ENV REDIS_VERSION=4.0.8
# Tue, 06 Feb 2018 06:38:14 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.8.tar.gz
# Tue, 06 Feb 2018 06:38:15 GMT
ENV REDIS_DOWNLOAD_SHA=ff0c38b8c156319249fec61e5018cf5b5fe63a65b61690bec798f4c998c232ad
# Tue, 06 Feb 2018 06:38:57 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Tue, 06 Feb 2018 06:39:00 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 06 Feb 2018 06:39:01 GMT
VOLUME [/data]
# Tue, 06 Feb 2018 06:39:02 GMT
WORKDIR /data
# Tue, 06 Feb 2018 06:39:03 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Tue, 06 Feb 2018 06:39:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Feb 2018 06:39:06 GMT
EXPOSE 6379/tcp
# Tue, 06 Feb 2018 06:39:08 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:802132ccdaaf1e42c991c0ad2b274ee46d7d02210e23a3bc630c772fbdd533c2`  
		Last Modified: Wed, 24 Jan 2018 06:37:26 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3edb35368beebf064881c4a2efa343effc2775c4bb6e9121e8426990bc75df12`  
		Last Modified: Wed, 24 Jan 2018 06:37:26 GMT  
		Size: 9.3 KB (9269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c151d6221ea70464275108b0d0f0cc08514f8c6f84a869d33094b5971eb4384`  
		Last Modified: Tue, 06 Feb 2018 06:39:48 GMT  
		Size: 8.2 MB (8233027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2d28b6a9f98485377ac2c9e77217501c63f2997b6f9cdd238284ddab0979fa8`  
		Last Modified: Tue, 06 Feb 2018 06:39:45 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e7b6a65e27a2ba9ff0c9623b7a5f78fec7cd66a15d40da1f78d7c6a986bb2f`  
		Last Modified: Tue, 06 Feb 2018 06:39:45 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine` - linux; s390x

```console
$ docker pull redis@sha256:70b3ac71834e42d1e2a0428176be89b0e3f5a490cc1d694629f5dbcb98c17a4b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10510520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86f34eaab61219aee3adc3d84d745d93116ce30387ae91b90dbb73a312ad9856`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Wed, 24 Jan 2018 06:24:30 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 24 Jan 2018 06:24:33 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 06 Feb 2018 06:25:19 GMT
ENV REDIS_VERSION=4.0.8
# Tue, 06 Feb 2018 06:25:19 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.8.tar.gz
# Tue, 06 Feb 2018 06:25:19 GMT
ENV REDIS_DOWNLOAD_SHA=ff0c38b8c156319249fec61e5018cf5b5fe63a65b61690bec798f4c998c232ad
# Tue, 06 Feb 2018 06:25:49 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Tue, 06 Feb 2018 06:25:49 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 06 Feb 2018 06:25:50 GMT
VOLUME [/data]
# Tue, 06 Feb 2018 06:25:50 GMT
WORKDIR /data
# Tue, 06 Feb 2018 06:25:50 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Tue, 06 Feb 2018 06:25:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Feb 2018 06:25:50 GMT
EXPOSE 6379/tcp
# Tue, 06 Feb 2018 06:25:50 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:11e7bc85614a236b32043d147930fd2bc9055af8642fe30e5e56142590572b0e`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 2.2 MB (2185231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f825cbb729285f1fe2a0cd1d4d36897e3fe2191c5ee044ce11a5d301dc64a34`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:167640baaae6b19b666d28c35de1dde729eaca22986531c0f3b3dd6af5bbc469`  
		Last Modified: Wed, 24 Jan 2018 06:25:46 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dab4f89cc8856e8d43a9cc8e3ba6670d31906a9a3409fdf2f59ad893cda37c8`  
		Last Modified: Wed, 24 Jan 2018 06:25:46 GMT  
		Size: 8.9 KB (8944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67e3bc96df2fd5695f3b674c176efac4b9395e498e7772620c654a846b59c303`  
		Last Modified: Tue, 06 Feb 2018 06:26:27 GMT  
		Size: 8.3 MB (8314420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9d837881546b6ff3cbe783ba365db70ff544c9da2eecce6773e9b2802084545`  
		Last Modified: Tue, 06 Feb 2018 06:26:24 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d92ded4540939fdf1e2a0a3b767833a2dcf8faf6c6d06e6d0b1688bd8f4141`  
		Last Modified: Tue, 06 Feb 2018 06:26:25 GMT  
		Size: 398.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:latest`

```console
$ docker pull redis@sha256:24cc4429415d64c616b94ea3b9e2d62602afc99135472c459d787cab0aa0855e
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
$ docker pull redis@sha256:79b58bb19c22e034e68c606bd63837e8c1b5ab45ba4077ed6e1ce558f02740e6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.4 MB (39403588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33c26d72bd74fb697defa17d7eb2a4eefc77bc7363ae4ce461d147c6532ec05c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 15 Feb 2018 01:46:20 GMT
ADD file:a0f72eb6710fe45aff98d40665ed5c106a992b2b0d1d57a1fb6ca98c4aa0f0a6 in / 
# Thu, 15 Feb 2018 01:46:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:50:37 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Thu, 15 Feb 2018 07:50:37 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 07:50:59 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 07:54:45 GMT
ENV REDIS_VERSION=4.0.8
# Thu, 15 Feb 2018 07:54:45 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.8.tar.gz
# Thu, 15 Feb 2018 07:54:45 GMT
ENV REDIS_DOWNLOAD_SHA=ff0c38b8c156319249fec61e5018cf5b5fe63a65b61690bec798f4c998c232ad
# Thu, 15 Feb 2018 07:55:30 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 07:55:31 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 15 Feb 2018 07:55:31 GMT
VOLUME [/data]
# Thu, 15 Feb 2018 07:55:31 GMT
WORKDIR /data
# Thu, 15 Feb 2018 07:55:32 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Thu, 15 Feb 2018 07:55:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 07:55:32 GMT
EXPOSE 6379/tcp
# Thu, 15 Feb 2018 07:55:33 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d2ca7eff5948133e4316d463c56948af87b4d4d09848ee0f8b698d3549a7a7dd`  
		Last Modified: Thu, 15 Feb 2018 02:18:31 GMT  
		Size: 30.1 MB (30122379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d1a2245aaa6e74708fd6c58cf1ac19f9db2d2031107c25d20b0ac06d11f2b7c`  
		Last Modified: Thu, 15 Feb 2018 08:17:00 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a483dd2a28bbd7835cda9c014266c0dfcee502ef67e5d9a4e090c807b3a1717`  
		Last Modified: Thu, 15 Feb 2018 08:17:01 GMT  
		Size: 981.7 KB (981722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b78ebdc44f06df0412fcdba5b9965a7794b2b82a230ba648df22a013ce372b3`  
		Last Modified: Thu, 15 Feb 2018 08:19:54 GMT  
		Size: 8.3 MB (8296895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79b76500ef2684aad5af9071ca8b4d3efea5355d47a8d6269ba1f96b7b0a4f92`  
		Last Modified: Thu, 15 Feb 2018 08:19:52 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2991d9a56244dea23a40a42549d860eb12c102022a5d6ddde4f301a495d40c4`  
		Last Modified: Thu, 15 Feb 2018 08:19:52 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; arm variant v5

```console
$ docker pull redis@sha256:82ccd6f80a6460d3dbbab4e23192e861c106be6d3383446065e1428a29192610
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 MB (37592143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fffcf1e3c1222899750cda51b72e156d3e1420f30dd27351d3a6261ebe1b033`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 12 Dec 2017 20:57:33 GMT
ADD file:29d0e44ebcc6f8dc2cfbc86c5034380677d263e9eec27a22ba045e0810836f81 in / 
# Tue, 12 Dec 2017 20:57:34 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 23:14:35 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 12 Dec 2017 23:14:35 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 23:15:21 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 06 Feb 2018 15:09:32 GMT
ENV REDIS_VERSION=4.0.8
# Tue, 06 Feb 2018 15:09:32 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.8.tar.gz
# Tue, 06 Feb 2018 15:09:32 GMT
ENV REDIS_DOWNLOAD_SHA=ff0c38b8c156319249fec61e5018cf5b5fe63a65b61690bec798f4c998c232ad
# Tue, 06 Feb 2018 15:10:42 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 06 Feb 2018 15:10:43 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 06 Feb 2018 15:10:43 GMT
VOLUME [/data]
# Tue, 06 Feb 2018 15:10:43 GMT
WORKDIR /data
# Tue, 06 Feb 2018 15:10:44 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 06 Feb 2018 15:10:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Feb 2018 15:10:44 GMT
EXPOSE 6379/tcp
# Tue, 06 Feb 2018 15:10:44 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:51e696f556166d0e25b3b27c824c4aafbddd5adcfd3f5186c09707f7baa3b312`  
		Last Modified: Tue, 12 Dec 2017 21:07:41 GMT  
		Size: 28.4 MB (28423526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0206b9cb3a70c21180f01a2532fe2c5a436a48e5fc5d8b939ba69b7d61c80a3a`  
		Last Modified: Tue, 12 Dec 2017 23:18:09 GMT  
		Size: 2.1 KB (2075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f18f2f5d7b2619f7683612c23f23c54c1f09a9ac9f5714f36e1ff47dffac347`  
		Last Modified: Tue, 12 Dec 2017 23:18:13 GMT  
		Size: 971.2 KB (971228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25635b92d7102aff70fa10be6f4e984bd2b437df2d4a2fc270cf15d4ad85416c`  
		Last Modified: Tue, 06 Feb 2018 15:10:58 GMT  
		Size: 8.2 MB (8194778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4475ae5eef34cfa997fe92213ec620c1cc3446db2ca4bde030e655929f6d85e`  
		Last Modified: Tue, 06 Feb 2018 15:10:55 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e798f17357153eb4b9535b974c0ebb56743a4774dbfb294d9fd95dfe103cc6f6`  
		Last Modified: Tue, 06 Feb 2018 15:10:55 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; arm variant v7

```console
$ docker pull redis@sha256:7cf526a2f8056e04b50140020ebedaa73539fae967d5f04004fa34c1d4a9a859
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35177313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7ce38f3ed4df984db03edd68c19324debfffed00f120af3086e455b0e923c11`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 12 Dec 2017 13:27:47 GMT
ADD file:1f5de474caa19da14d698a3f9c3d161abfa1e19e258a596d64f3dfc9e2f17686 in / 
# Tue, 12 Dec 2017 13:27:47 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 16:40:56 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 12 Dec 2017 16:40:56 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 16:41:50 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 06 Feb 2018 01:27:32 GMT
ENV REDIS_VERSION=4.0.8
# Tue, 06 Feb 2018 01:27:32 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.8.tar.gz
# Tue, 06 Feb 2018 01:27:32 GMT
ENV REDIS_DOWNLOAD_SHA=ff0c38b8c156319249fec61e5018cf5b5fe63a65b61690bec798f4c998c232ad
# Tue, 06 Feb 2018 01:28:31 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 06 Feb 2018 01:28:32 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 06 Feb 2018 01:28:32 GMT
VOLUME [/data]
# Tue, 06 Feb 2018 01:28:32 GMT
WORKDIR /data
# Tue, 06 Feb 2018 01:28:32 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 06 Feb 2018 01:28:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Feb 2018 01:28:33 GMT
EXPOSE 6379/tcp
# Tue, 06 Feb 2018 01:28:33 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:4b9c0f1a415433a98643bdda391dcf4fe5d9653fc3ed3845c7ac1be99eb43399`  
		Last Modified: Tue, 12 Dec 2017 13:39:52 GMT  
		Size: 26.3 MB (26282714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d6835fe576543df3c87405f33db99aa1f040e3f241c5e5d72ffb416953902b8`  
		Last Modified: Tue, 12 Dec 2017 16:44:59 GMT  
		Size: 2.1 KB (2076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a11c10ad12017478481b1755839ece7c69945ee8c04b97bb10909db85e4ed338`  
		Last Modified: Tue, 12 Dec 2017 16:44:59 GMT  
		Size: 956.1 KB (956126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69000625f437a6cf3ee8d6b60151e3b39452ece0ef361e2f590893944afeef55`  
		Last Modified: Tue, 06 Feb 2018 01:29:04 GMT  
		Size: 7.9 MB (7935860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12aed7147e11e132c5248e25289535495e5d0ad14d81289ee91a77f27e1863e2`  
		Last Modified: Tue, 06 Feb 2018 01:29:02 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:718285eeeaaf6b3766acae3b4b75420baeffe68ad824cb8c6c27be64c95a6deb`  
		Last Modified: Tue, 06 Feb 2018 01:29:02 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:c176f707c0b8377acdeee4f8bb2dea83e47c28e195a0d2f51bf5dd1c2172aa8f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36876433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79ccb057108af0b1b266f0e3d3ef157f65e26939129295e26f3a7c9ab698a29f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 12 Dec 2017 18:26:03 GMT
ADD file:da6be268a98d89a43438155746ca6d08f474e9aa85c64699f50445352b46c348 in / 
# Tue, 12 Dec 2017 18:26:04 GMT
CMD ["bash"]
# Wed, 20 Dec 2017 13:25:39 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 20 Dec 2017 13:25:40 GMT
ENV GOSU_VERSION=1.10
# Wed, 20 Dec 2017 13:26:36 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 06 Feb 2018 13:25:53 GMT
ENV REDIS_VERSION=4.0.8
# Tue, 06 Feb 2018 13:25:53 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.8.tar.gz
# Tue, 06 Feb 2018 13:25:54 GMT
ENV REDIS_DOWNLOAD_SHA=ff0c38b8c156319249fec61e5018cf5b5fe63a65b61690bec798f4c998c232ad
# Tue, 06 Feb 2018 13:27:45 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 06 Feb 2018 13:27:47 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 06 Feb 2018 13:27:47 GMT
VOLUME [/data]
# Tue, 06 Feb 2018 13:27:48 GMT
WORKDIR /data
# Tue, 06 Feb 2018 13:27:48 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 06 Feb 2018 13:27:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Feb 2018 13:27:50 GMT
EXPOSE 6379/tcp
# Tue, 06 Feb 2018 13:27:50 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:8e9df51286bbe86a4cb3ffe54327681ab34b9b6d62c3f4e187ffc677125e4780`  
		Last Modified: Tue, 12 Dec 2017 18:41:37 GMT  
		Size: 27.5 MB (27480582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:075c247daad6bb45a002c0a24377355e91aef8e96dbc920ef85b5f95dba5d597`  
		Last Modified: Wed, 20 Dec 2017 13:31:04 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:671b4ef947e36f312884f8d49f560e5191e57a0e583820b56b530e7ff03d771f`  
		Last Modified: Wed, 20 Dec 2017 13:31:04 GMT  
		Size: 948.7 KB (948652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f10bccc98703ca88b1bd0e49f4f2d9c4b3365d0711c52394bd478877eedd7491`  
		Last Modified: Tue, 06 Feb 2018 13:30:05 GMT  
		Size: 8.4 MB (8444596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cafc779b99f3b7579b6e089be946244cbca353682df6522f8019af603b2c8fb4`  
		Last Modified: Tue, 06 Feb 2018 13:30:01 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:217dcb97c97acfe1d28bd854c74b53c1a8be2612d4aacd3926c89640d73cf38b`  
		Last Modified: Tue, 06 Feb 2018 13:30:02 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; 386

```console
$ docker pull redis@sha256:c1d2bd3e2ffb3b38672d74ed078157ea4e0925d2739b7bba99381aa70dae86f6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.7 MB (38741291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cdfeace81c84e393250a1ebc04a88d2acdee83d1e2938dd69a77e95b2adb4df`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 12 Dec 2017 14:21:05 GMT
ADD file:d31765999b40e32b628f3ec72b762f007f4918b08c507484e425adc990c87c26 in / 
# Tue, 12 Dec 2017 14:21:05 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:03:38 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 12 Dec 2017 21:03:38 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 21:04:16 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 06 Feb 2018 14:09:59 GMT
ENV REDIS_VERSION=4.0.8
# Tue, 06 Feb 2018 14:09:59 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.8.tar.gz
# Tue, 06 Feb 2018 14:10:00 GMT
ENV REDIS_DOWNLOAD_SHA=ff0c38b8c156319249fec61e5018cf5b5fe63a65b61690bec798f4c998c232ad
# Tue, 06 Feb 2018 14:11:14 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 06 Feb 2018 14:12:12 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 06 Feb 2018 14:12:12 GMT
VOLUME [/data]
# Tue, 06 Feb 2018 14:12:12 GMT
WORKDIR /data
# Tue, 06 Feb 2018 14:12:13 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 06 Feb 2018 14:12:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Feb 2018 14:12:13 GMT
EXPOSE 6379/tcp
# Tue, 06 Feb 2018 14:12:14 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6b323e7c684c46ec9e577d3acb692c7e1c0c26ffbea6a4530dbe784a7eedf0f7`  
		Last Modified: Tue, 12 Dec 2017 14:49:35 GMT  
		Size: 30.3 MB (30266257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00b36a22b0f548b632d8bc28aa752a7c776351e3fa3c167b13901a9a648dff0f`  
		Last Modified: Tue, 12 Dec 2017 21:11:34 GMT  
		Size: 2.1 KB (2074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:625bd220ae9238fdcd1a3e9db810236dc47502995b93d54b4a7bc5f474508112`  
		Last Modified: Tue, 12 Dec 2017 21:11:34 GMT  
		Size: 960.8 KB (960808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2a842fb5bf7992b4c96576cbe97492ee102a7ece4241dc58189b27f2972a325`  
		Last Modified: Tue, 06 Feb 2018 14:22:18 GMT  
		Size: 7.5 MB (7511649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5df78bbcf8a6821271ca85c542a0de04934d0d8f358d3f3fa0d118d9b668276`  
		Last Modified: Tue, 06 Feb 2018 14:22:15 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:906e82ad113af8575aa1425cd184b14bbd3715f17ef9ce993cdc39782e22c8ba`  
		Last Modified: Tue, 06 Feb 2018 14:22:17 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; ppc64le

```console
$ docker pull redis@sha256:7547c93d4c0a619cde6c2c4f3d9f950f3eeb75b8a0082ab9390ddee98a5f9549
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.9 MB (38923332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f10f7acddc1c09e086e6624390b33ad4898490e35e5ba58e9e0248600dbc3911`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 15 Feb 2018 01:34:17 GMT
ADD file:f3263f57a7d4fe956087a3f9803a0f8fe9224b2704ac54c141da2d6a166c737b in / 
# Thu, 15 Feb 2018 01:34:20 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 05:24:53 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Thu, 15 Feb 2018 05:25:04 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 05:27:44 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 05:31:34 GMT
ENV REDIS_VERSION=4.0.8
# Thu, 15 Feb 2018 05:31:35 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.8.tar.gz
# Thu, 15 Feb 2018 05:31:37 GMT
ENV REDIS_DOWNLOAD_SHA=ff0c38b8c156319249fec61e5018cf5b5fe63a65b61690bec798f4c998c232ad
# Thu, 15 Feb 2018 05:34:55 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 05:34:59 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 15 Feb 2018 05:35:01 GMT
VOLUME [/data]
# Thu, 15 Feb 2018 05:35:03 GMT
WORKDIR /data
# Thu, 15 Feb 2018 05:35:05 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Thu, 15 Feb 2018 05:35:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 05:35:08 GMT
EXPOSE 6379/tcp
# Thu, 15 Feb 2018 05:35:10 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:55e44e991a765aac112a6c9b4f8933a727d8c3fdfd7d5138173ff62b0624fb0c`  
		Last Modified: Thu, 15 Feb 2018 01:42:40 GMT  
		Size: 29.3 MB (29311830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df81c6e0db50d64e980a81b82127c9ce7a3f8e6de8ceda534a434125c95a25b1`  
		Last Modified: Thu, 15 Feb 2018 05:35:40 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:876fab0967ab2fac268ea466c4ade4f669005f7171aba968b8e0e2edcf38e3d4`  
		Last Modified: Thu, 15 Feb 2018 05:35:41 GMT  
		Size: 950.7 KB (950706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6eb475636a2b094967d65c076780a0b9ce43fa4ebb5953ddadd97bfcb46e2b7`  
		Last Modified: Thu, 15 Feb 2018 05:36:09 GMT  
		Size: 8.7 MB (8658159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a27d02b6df71330ced3c6b6ac1d8a23bfe55083c3c618850cbb96d9955c751e6`  
		Last Modified: Thu, 15 Feb 2018 05:36:05 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51e87859adf9d6036bbe3ef87886b859a0886fc7d4877922f6bd2b11952f543f`  
		Last Modified: Thu, 15 Feb 2018 05:36:05 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; s390x

```console
$ docker pull redis@sha256:238e9fb365b47d4caee288075684a904a3fc5d91bff4541a6c372f003549272f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.2 MB (40197448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b41868a13131a6e8199602f307a85d93db5973ceb41ff046fd86cea900681105`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 12 Dec 2017 06:23:05 GMT
ADD file:68877912183dff16971679b6264399a76d678986d7cf02bbba2e006d91077cf3 in / 
# Tue, 12 Dec 2017 06:23:06 GMT
CMD ["bash"]
# Sun, 07 Jan 2018 09:26:06 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sun, 07 Jan 2018 09:26:06 GMT
ENV GOSU_VERSION=1.10
# Sun, 07 Jan 2018 09:26:33 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 06 Feb 2018 06:24:31 GMT
ENV REDIS_VERSION=4.0.8
# Tue, 06 Feb 2018 06:24:31 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.8.tar.gz
# Tue, 06 Feb 2018 06:24:32 GMT
ENV REDIS_DOWNLOAD_SHA=ff0c38b8c156319249fec61e5018cf5b5fe63a65b61690bec798f4c998c232ad
# Tue, 06 Feb 2018 06:25:11 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 06 Feb 2018 06:25:12 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 06 Feb 2018 06:25:12 GMT
VOLUME [/data]
# Tue, 06 Feb 2018 06:25:12 GMT
WORKDIR /data
# Tue, 06 Feb 2018 06:25:12 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 06 Feb 2018 06:25:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Feb 2018 06:25:12 GMT
EXPOSE 6379/tcp
# Tue, 06 Feb 2018 06:25:12 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:7ef9b5c13de473137c3ae16d379a5f152b59921d4e96887c06f9e1291af84691`  
		Last Modified: Thu, 14 Dec 2017 00:53:34 GMT  
		Size: 30.3 MB (30293639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608e779e09f2eff9338668b6f32d30ad6db5824db6e05a40163baa53af8a4732`  
		Last Modified: Sun, 07 Jan 2018 09:28:52 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca3bc2bf99d2d3b8b7af50eabf05bcd385693d216437119560e8b76a250123d1`  
		Last Modified: Sun, 07 Jan 2018 09:28:52 GMT  
		Size: 966.9 KB (966920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3b8cfc49318affd19b1bf038f24056cf6e9d29af52b4bfae8a87a937a867191`  
		Last Modified: Tue, 06 Feb 2018 06:26:12 GMT  
		Size: 8.9 MB (8934295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c1e2a9f2143561d02f9cf91b0e1349c12689ad33f621bb6c3667e7bd93a138`  
		Last Modified: Tue, 06 Feb 2018 06:26:09 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b436c81dc8868e47fbe319c57134765522c95c0aa21df408b5b306f6b4efed0`  
		Last Modified: Tue, 06 Feb 2018 06:26:10 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
