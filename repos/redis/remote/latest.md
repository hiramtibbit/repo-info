## `redis:latest`

```console
$ docker pull redis@sha256:360f42694557b61f5129ae4b5b141dba711ed027b3eb273a189d875f14619638
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
$ docker pull redis@sha256:56b5fead587e8e01ed488c98a0cc76693f78b47151915f8d717c645b0be78162
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32128851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55cb7014c24f31ee565af451db2eeb5393dec24375061c034e4b92f30b234ff9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 28 Apr 2018 07:09:59 GMT
ADD file:ec5be7eec56a749752ca284359ece04f5eb0b981eac08b8855454c6b16e3893c in / 
# Sat, 28 Apr 2018 07:09:59 GMT
CMD ["bash"]
# Wed, 20 Jun 2018 21:22:30 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 20 Jun 2018 21:22:30 GMT
ENV GOSU_VERSION=1.10
# Wed, 20 Jun 2018 21:23:00 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 20 Jun 2018 21:25:02 GMT
ENV REDIS_VERSION=4.0.10
# Wed, 20 Jun 2018 21:25:02 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Wed, 20 Jun 2018 21:25:03 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Wed, 20 Jun 2018 21:25:40 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 20 Jun 2018 21:25:41 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 20 Jun 2018 21:25:42 GMT
VOLUME [/data]
# Wed, 20 Jun 2018 21:25:42 GMT
WORKDIR /data
# Wed, 20 Jun 2018 21:25:42 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 20 Jun 2018 21:25:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Jun 2018 21:25:42 GMT
EXPOSE 6379/tcp
# Wed, 20 Jun 2018 21:25:43 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f2aa67a397c49232112953088506d02074a1fe577f65dc2052f158a3e5da52e8`  
		Last Modified: Sat, 28 Apr 2018 09:31:20 GMT  
		Size: 22.5 MB (22496029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:298c0b953ff5a27bfba2e1103c7270851e1e4763cefcdbb9abb595ac21102be7`  
		Last Modified: Wed, 20 Jun 2018 21:27:09 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54481933a13d25902ded350fecd86e018990b0ec8e38617c79da922f880352eb`  
		Last Modified: Wed, 20 Jun 2018 21:27:09 GMT  
		Size: 941.5 KB (941505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e236faec6ff6580bc15dbc572aeabc9fcbda66944e1487824e9769de11b7d76c`  
		Last Modified: Wed, 20 Jun 2018 21:28:16 GMT  
		Size: 8.7 MB (8689072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93540029cb592ca3a9098606cf7697ae76696e9c5ad12a1b72fde5c2d96a7027`  
		Last Modified: Wed, 20 Jun 2018 21:28:13 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c88aa70d0e29ba94b86d311c4b7ea607cfd553f92f32562765a34a87647ce92`  
		Last Modified: Wed, 20 Jun 2018 21:28:13 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; arm variant v5

```console
$ docker pull redis@sha256:1dff86c76fd1999393d1804f9e3941a60405b4bb155bb76ea82e2b816ee22506
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30523458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bdc0423d3b79c2a0624dcff46781c3f6f5330ef069f3d66964a56d10eedda38`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 28 Apr 2018 08:53:29 GMT
ADD file:ca564f3cd7bd0fee7f6e56d1a55f5f92da6d4bf55ce3bf20ca398e9e95cdf8df in / 
# Sat, 28 Apr 2018 08:53:30 GMT
CMD ["bash"]
# Thu, 21 Jun 2018 08:48:32 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Thu, 21 Jun 2018 08:48:32 GMT
ENV GOSU_VERSION=1.10
# Thu, 21 Jun 2018 08:48:57 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 21 Jun 2018 08:49:38 GMT
ENV REDIS_VERSION=4.0.10
# Thu, 21 Jun 2018 08:49:38 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Thu, 21 Jun 2018 08:49:38 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Thu, 21 Jun 2018 08:50:13 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 21 Jun 2018 08:50:14 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 21 Jun 2018 08:50:14 GMT
VOLUME [/data]
# Thu, 21 Jun 2018 08:50:15 GMT
WORKDIR /data
# Thu, 21 Jun 2018 08:50:15 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Thu, 21 Jun 2018 08:50:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Jun 2018 08:50:16 GMT
EXPOSE 6379/tcp
# Thu, 21 Jun 2018 08:50:16 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:b2a4458ef3b9777a47503028af324e4890546ca8e24a86697b3219a6e3069450`  
		Last Modified: Sat, 28 Apr 2018 09:02:15 GMT  
		Size: 21.2 MB (21175666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be1da2b11b91ad84bee0534b2e68279a501fea14b1ad4f5cc45049d4c1c2df68`  
		Last Modified: Thu, 21 Jun 2018 08:50:31 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d8cebdc2fbb56035f796f2072a3c216fc86a6631cfa6ec80ba19e55bbea6eda`  
		Last Modified: Thu, 21 Jun 2018 08:50:31 GMT  
		Size: 931.2 KB (931209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:256751bfb67c7280760cd7a1b263082fbe7a9ebf001cf1c32828112383bc4f85`  
		Last Modified: Thu, 21 Jun 2018 08:50:51 GMT  
		Size: 8.4 MB (8414312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a385aa0aa85d7609d33e740bb4ceca57ea04ca6e267739a7b7a50ea727345d82`  
		Last Modified: Thu, 21 Jun 2018 08:50:49 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dbb7a36c93c4df14c873be3f068322b23385b3259c670a49d326db209805169`  
		Last Modified: Thu, 21 Jun 2018 08:50:49 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; arm variant v7

```console
$ docker pull redis@sha256:fa272843af34b6ece1a06ce00b9f71e5d7217993059e33c51b2e3388b7e3e02a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28387729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64cc4943b69e96232f50e5cced6599e5540a8a62f5f62432f4e89c5144ddd800`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:59 GMT
ADD file:f8bb9e9954bfe2f550e8a786c4be1dd5fca4a373b82b372b80c163e5640bd5a4 in / 
# Sat, 28 Apr 2018 12:05:00 GMT
CMD ["bash"]
# Thu, 21 Jun 2018 12:02:49 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Thu, 21 Jun 2018 12:02:49 GMT
ENV GOSU_VERSION=1.10
# Thu, 21 Jun 2018 12:03:06 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 21 Jun 2018 12:03:46 GMT
ENV REDIS_VERSION=4.0.10
# Thu, 21 Jun 2018 12:03:46 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Thu, 21 Jun 2018 12:03:46 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Thu, 21 Jun 2018 12:04:19 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 21 Jun 2018 12:04:20 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 21 Jun 2018 12:04:20 GMT
VOLUME [/data]
# Thu, 21 Jun 2018 12:04:20 GMT
WORKDIR /data
# Thu, 21 Jun 2018 12:04:21 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Thu, 21 Jun 2018 12:04:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Jun 2018 12:04:22 GMT
EXPOSE 6379/tcp
# Thu, 21 Jun 2018 12:04:22 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6c8a025e90b325dd5af06b0297cc1608120a47d4ab0e1cedb26c8cda811091d6`  
		Last Modified: Sat, 28 Apr 2018 12:16:08 GMT  
		Size: 19.3 MB (19286790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ec2db5210983fe959ea07f262e9b48c525f6fd71aec1dfa1db9418f7b17791a`  
		Last Modified: Thu, 21 Jun 2018 12:04:40 GMT  
		Size: 1.7 KB (1738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b0461d50edecd4031213a9ea022411b400d4b144121a5a4f09bf639b4d6adeb`  
		Last Modified: Thu, 21 Jun 2018 12:04:40 GMT  
		Size: 915.9 KB (915883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f0aad3310bfa9ea3f10e842dcec56d0a6ecc7a5c7783ffc7bb1a561953c446`  
		Last Modified: Thu, 21 Jun 2018 12:05:01 GMT  
		Size: 8.2 MB (8182781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2176c59721d2e5efb066271fa502d2294ef6f98dbace4325e4c67f11ad7a1769`  
		Last Modified: Thu, 21 Jun 2018 12:04:58 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa4bb14d08412157c82e6be027f8c2fa5489e5b0519b2d3eab90f9a3fc4f8f98`  
		Last Modified: Thu, 21 Jun 2018 12:05:00 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:90490f1cff305f43e9790baf5c985339dee428174567f9c9df99633041af8c37
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36901572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bba66b37ec09ba1676ac964a7f447d4d391a1b8d318de09aaf4e87cd7b35389`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 30 Apr 2018 23:23:15 GMT
ADD file:d88886292edb80d3898ba50f464cceb9c33709b3bb124f81e910bc9c6b0e7acc in / 
# Mon, 30 Apr 2018 23:23:18 GMT
CMD ["bash"]
# Tue, 01 May 2018 12:49:16 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 01 May 2018 12:49:17 GMT
ENV GOSU_VERSION=1.10
# Tue, 01 May 2018 12:50:14 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 16 Jun 2018 09:56:33 GMT
ENV REDIS_VERSION=4.0.10
# Sat, 16 Jun 2018 09:56:34 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Sat, 16 Jun 2018 09:56:35 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Sat, 16 Jun 2018 09:58:15 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 16 Jun 2018 09:58:17 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 16 Jun 2018 09:58:18 GMT
VOLUME [/data]
# Sat, 16 Jun 2018 09:58:18 GMT
WORKDIR /data
# Sat, 16 Jun 2018 09:58:20 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 16 Jun 2018 09:58:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 16 Jun 2018 09:58:22 GMT
EXPOSE 6379/tcp
# Sat, 16 Jun 2018 09:58:23 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6d46b8f3eebfe36e412a394de4bf8a598e22d1fe11cd6b35f34e770473c170ea`  
		Last Modified: Mon, 30 Apr 2018 23:43:19 GMT  
		Size: 27.5 MB (27494590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e947973b9135939ae7471d5a2f457581d0c986c642c193dae222b2b1662f568e`  
		Last Modified: Tue, 01 May 2018 12:57:28 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8ffa7941a4a8dcb55ce1499ef0c6cb7afc69f15dd3d9cd110f26680e94d8793`  
		Last Modified: Tue, 01 May 2018 12:57:29 GMT  
		Size: 948.7 KB (948652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db1ae22082a5287ef7149361a7030371abc1370126c971f6b3b3694738230086`  
		Last Modified: Sat, 16 Jun 2018 10:00:42 GMT  
		Size: 8.5 MB (8455734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a316f11d6e6269555e21b9b2b05bc700faefeb1c6a17692b65ac30e8aa3c6871`  
		Last Modified: Sat, 16 Jun 2018 10:00:38 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aee4da2a58a82233ba4982b06dc19b7ad2da49f603d65c1067a32e45e46cb0e`  
		Last Modified: Sat, 16 Jun 2018 10:00:39 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; 386

```console
$ docker pull redis@sha256:c70f5785509a1c335a60c5b0dcac21dfabd8939de2339eeda5e870297bb2bfbc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32308142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d65d7a26e91296c8f954c6fd026a0b41631fff7ccf0e6f329da78df30ab1e9c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:49 GMT
ADD file:9e45c98885c63b1f77e50324055758088ca38203260e2305cca24b13fbeb23cf in / 
# Sat, 28 Apr 2018 10:41:49 GMT
CMD ["bash"]
# Thu, 21 Jun 2018 10:54:55 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Thu, 21 Jun 2018 10:54:55 GMT
ENV GOSU_VERSION=1.10
# Thu, 21 Jun 2018 10:55:21 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 21 Jun 2018 10:56:22 GMT
ENV REDIS_VERSION=4.0.10
# Thu, 21 Jun 2018 10:56:22 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Thu, 21 Jun 2018 10:56:22 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Thu, 21 Jun 2018 10:56:59 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 21 Jun 2018 10:57:00 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 21 Jun 2018 10:57:00 GMT
VOLUME [/data]
# Thu, 21 Jun 2018 10:57:01 GMT
WORKDIR /data
# Thu, 21 Jun 2018 10:57:01 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Thu, 21 Jun 2018 10:57:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Jun 2018 10:57:02 GMT
EXPOSE 6379/tcp
# Thu, 21 Jun 2018 10:57:02 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:23510c5166fc980d20c6b002b2a7bbdde547dfc6195bbfcb7e0f2a39c590a210`  
		Last Modified: Sat, 28 Apr 2018 10:49:34 GMT  
		Size: 23.1 MB (23138515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d050d76929c194e62d959407ebcd61f1c1bfa3fad8930850e7aa2f243a7470b6`  
		Last Modified: Thu, 21 Jun 2018 10:57:24 GMT  
		Size: 1.7 KB (1735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:558742138abe0a0f37aad8692fc0d9874fb42b5e53e68ccce536d191fcfdee19`  
		Last Modified: Thu, 21 Jun 2018 10:57:24 GMT  
		Size: 920.3 KB (920342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d8975886de779f0cf3989c838c1503cf5e77e49ed8b1dce19fcf442abc0ef25`  
		Last Modified: Thu, 21 Jun 2018 10:58:05 GMT  
		Size: 8.2 MB (8247048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f96db77bfd107784b115afd6fcc4f072c896b4cc80f81bc89ea9bf2eeb3214f`  
		Last Modified: Thu, 21 Jun 2018 10:58:01 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:389f03671bb22d87590ba2fa095ed5aa1ab150ce743ac5b657e0ecc5dcc798f5`  
		Last Modified: Thu, 21 Jun 2018 10:58:01 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; ppc64le

```console
$ docker pull redis@sha256:a32add49b12fbe9f4adf3dd8b8a0fcb149563d725bca44c2cb9f108b165ca64f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.5 MB (32529533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18cd857dbe27a2adf08174fcea7d8a079e7b58e41cb158f80d3bb0f7e762bf84`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 28 Apr 2018 08:20:54 GMT
ADD file:c561a92d41ab01d60c88efa7b21fd9b48e6c0c96fb8d2552f4cebbed3df42bca in / 
# Sat, 28 Apr 2018 08:20:55 GMT
CMD ["bash"]
# Thu, 21 Jun 2018 08:51:31 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Thu, 21 Jun 2018 08:51:32 GMT
ENV GOSU_VERSION=1.10
# Thu, 21 Jun 2018 08:52:44 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 21 Jun 2018 08:54:16 GMT
ENV REDIS_VERSION=4.0.10
# Thu, 21 Jun 2018 08:54:17 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Thu, 21 Jun 2018 08:54:18 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Thu, 21 Jun 2018 08:55:51 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 21 Jun 2018 08:55:54 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 21 Jun 2018 08:55:55 GMT
VOLUME [/data]
# Thu, 21 Jun 2018 08:55:56 GMT
WORKDIR /data
# Thu, 21 Jun 2018 08:55:58 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Thu, 21 Jun 2018 08:55:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Jun 2018 08:56:01 GMT
EXPOSE 6379/tcp
# Thu, 21 Jun 2018 08:56:02 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:39214b2a7dd7dd2d1069dd155ce8ab2206bb1fda22be8136b88451c8be20e82f`  
		Last Modified: Sat, 28 Apr 2018 08:30:28 GMT  
		Size: 22.8 MB (22753096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5a84e8dc58efdd0144541cec9d79ec80fe64a2fcc0f7d9261068760940c0c5c`  
		Last Modified: Thu, 21 Jun 2018 08:56:23 GMT  
		Size: 1.7 KB (1748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dff2b1f4e22153880aa63a1e966d9069e100e6dd311165b9365b36dc7350280b`  
		Last Modified: Thu, 21 Jun 2018 08:56:23 GMT  
		Size: 909.8 KB (909794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f30073d55a28104d1399fc3cf76d0c4d89714d8354d2d163d28b087063379fc6`  
		Last Modified: Thu, 21 Jun 2018 08:56:53 GMT  
		Size: 8.9 MB (8864357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c31a4665fc91e2a465076f780c6699382a9e6cdf4dde4ec0a7899d8940be7845`  
		Last Modified: Thu, 21 Jun 2018 08:56:51 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5574f917b8f5940f400f305ceeacad8dad3eb801ab7c10ff5eb61fafadcfb601`  
		Last Modified: Thu, 21 Jun 2018 08:56:50 GMT  
		Size: 405.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; s390x

```console
$ docker pull redis@sha256:335a743495eeae03888604a7277ca050550c23519a38083bec248e5dbdc37ada
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32359737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3474d979f3b22ce950975cc6d52c3eda90d1201ead79c93a3484ecf5d0e9c7a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 28 Apr 2018 11:45:29 GMT
ADD file:89223bc6886b09479a52e6d05479980ad8e46c8c707ac40cd81b664fe9827428 in / 
# Sat, 28 Apr 2018 11:45:29 GMT
CMD ["bash"]
# Thu, 21 Jun 2018 13:37:12 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Thu, 21 Jun 2018 13:37:13 GMT
ENV GOSU_VERSION=1.10
# Thu, 21 Jun 2018 13:37:29 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 21 Jun 2018 13:38:10 GMT
ENV REDIS_VERSION=4.0.10
# Thu, 21 Jun 2018 13:38:11 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Thu, 21 Jun 2018 13:38:11 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Thu, 21 Jun 2018 13:38:39 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 21 Jun 2018 13:38:39 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 21 Jun 2018 13:38:40 GMT
VOLUME [/data]
# Thu, 21 Jun 2018 13:38:40 GMT
WORKDIR /data
# Thu, 21 Jun 2018 13:38:40 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Thu, 21 Jun 2018 13:38:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Jun 2018 13:38:41 GMT
EXPOSE 6379/tcp
# Thu, 21 Jun 2018 13:38:41 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:39cbaa616b05fb96ca4be9aac8b4d99ba8bf573e07a754a8c43dbec7ff518bbb`  
		Last Modified: Sat, 28 Apr 2018 11:51:43 GMT  
		Size: 22.3 MB (22349898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:493eb11862002387d35ca5a504b2f617c1d70a8dded3c48209e98f5b3203a26c`  
		Last Modified: Thu, 21 Jun 2018 13:38:55 GMT  
		Size: 1.7 KB (1748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ff948cbd8f238d3eda9e86602c4462ca6977ab29b878f1a286fd5c22b0aa728`  
		Last Modified: Thu, 21 Jun 2018 13:38:56 GMT  
		Size: 926.8 KB (926835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bba2aec84d7cd29113a80c754a70460e8f26e5ca81fc0c6e1606bf63002b1b1`  
		Last Modified: Thu, 21 Jun 2018 13:39:12 GMT  
		Size: 9.1 MB (9080755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc73c789397335d984b35bdf6da437d7d674931ffba350cd8f60fc93a42631b3`  
		Last Modified: Thu, 21 Jun 2018 13:39:10 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1d32ba88ba9712555244e34957019e0accda5c510760819bfe64344f2dc5550`  
		Last Modified: Thu, 21 Jun 2018 13:39:10 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
