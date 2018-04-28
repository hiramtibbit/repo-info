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
-	[`redis:4.0.9`](#redis409)
-	[`redis:4.0.9-32bit`](#redis409-32bit)
-	[`redis:4.0.9-alpine`](#redis409-alpine)
-	[`redis:4.0-alpine`](#redis40-alpine)
-	[`redis:4-32bit`](#redis4-32bit)
-	[`redis:4-alpine`](#redis4-alpine)
-	[`redis:alpine`](#redisalpine)
-	[`redis:latest`](#redislatest)

## `redis:3`

```console
$ docker pull redis@sha256:8b421bce8abcf29200fcc0131fd2600d95ce1a9ad45497005a4fe87a10d7ead5
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
$ docker pull redis@sha256:19d845a57a43f6331b6b488f5eccbc4532eae5a032756c4159c0c0f92eef8339
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36853711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b05c3d76c8b3ef3af8974edda3941a4a028d244681cc420e5304a3829519f1b6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 13 Mar 2018 21:58:13 GMT
ADD file:080bac9a2cdcc70ad61e50045a26172f0e1acfd3a26360cb86b6e26a3307b2e1 in / 
# Tue, 13 Mar 2018 21:58:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 19:07:45 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 14 Mar 2018 19:07:45 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 19:08:17 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 14 Mar 2018 19:08:17 GMT
ENV REDIS_VERSION=3.2.11
# Wed, 14 Mar 2018 19:08:18 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Wed, 14 Mar 2018 19:08:18 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Wed, 14 Mar 2018 19:09:02 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 19:09:03 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 14 Mar 2018 19:09:03 GMT
VOLUME [/data]
# Wed, 14 Mar 2018 19:09:04 GMT
WORKDIR /data
# Wed, 14 Mar 2018 19:09:04 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 14 Mar 2018 19:09:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 19:09:04 GMT
EXPOSE 6379/tcp
# Wed, 14 Mar 2018 19:09:05 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:b0568b191983bc2844b2fdb48aeefa72452931bfead0a87e0515bfc602ea3b0c`  
		Last Modified: Tue, 13 Mar 2018 22:45:19 GMT  
		Size: 30.1 MB (30122402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6637dc5b29fee45c6536e100b59259a74639fbf8cc42bf9149dc807e36740af5`  
		Last Modified: Wed, 14 Mar 2018 19:13:55 GMT  
		Size: 2.1 KB (2086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b4314315f15b1cb666256edf2ac07b2a902a6d0622a0bd1120bdab9799d26c3`  
		Last Modified: Wed, 14 Mar 2018 19:13:55 GMT  
		Size: 981.7 KB (981728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bc30a4dd0c227b585318acce5ff6cb60a008428eb46409987e6965305000c40`  
		Last Modified: Wed, 14 Mar 2018 19:13:57 GMT  
		Size: 5.7 MB (5746994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9446fed1509b79945fa9418d12838a051aa999c6b6fc0d26c734e674bd8de660`  
		Last Modified: Wed, 14 Mar 2018 19:13:55 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:939e50b6dd029161e9a4a35ca90bd4aaadae7d90ccccb4f4cca1b9e35dca2043`  
		Last Modified: Wed, 14 Mar 2018 19:13:55 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3` - linux; arm variant v5

```console
$ docker pull redis@sha256:4b3eacb4ff9b53d25858fd47bef8b9029e9ba08f6f6417959dbe3bf3c5385a12
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.1 MB (35050454 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1be9aede6af009e259134610cad5f63b23f6da5e03c38945f0dbfd6a31a9735b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 28 Apr 2018 08:49:49 GMT
ADD file:e9274d48b6cf2508214a554b4dbe651b4dfa95bb52dba47a96fe8842bf606a87 in / 
# Sat, 28 Apr 2018 08:49:49 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:26:08 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 28 Apr 2018 12:26:08 GMT
ENV GOSU_VERSION=1.10
# Sat, 28 Apr 2018 12:26:50 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 28 Apr 2018 12:26:51 GMT
ENV REDIS_VERSION=3.2.11
# Sat, 28 Apr 2018 12:26:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Sat, 28 Apr 2018 12:26:51 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Sat, 28 Apr 2018 12:27:46 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 12:27:48 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 28 Apr 2018 12:27:53 GMT
VOLUME [/data]
# Sat, 28 Apr 2018 12:27:53 GMT
WORKDIR /data
# Sat, 28 Apr 2018 12:27:54 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 28 Apr 2018 12:27:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 28 Apr 2018 12:27:54 GMT
EXPOSE 6379/tcp
# Sat, 28 Apr 2018 12:27:59 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:94b675ca74d2386dbd57e10d92f282f24ca3519fd21339c04af3f8f7e523617c`  
		Last Modified: Sat, 28 Apr 2018 08:57:53 GMT  
		Size: 28.4 MB (28435716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:588361ed476f4576bf29e632cdfe986f25ff90bfdf2fc2325c3325d6c18fc0de`  
		Last Modified: Sat, 28 Apr 2018 12:29:45 GMT  
		Size: 2.1 KB (2077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70bdf9c4f2fd118accb020c350f2d38df83baf6746eff2096eaf518b65c39a97`  
		Last Modified: Sat, 28 Apr 2018 12:29:45 GMT  
		Size: 971.3 KB (971295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b19d56de314a740f800241e18037f8194918d277fab3871dc2e6712830c2d358`  
		Last Modified: Sat, 28 Apr 2018 12:29:47 GMT  
		Size: 5.6 MB (5640828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbffbb627e2cabc9d34814a7ba2469fbf8c74500ac3f4a28d9f2a29640e19760`  
		Last Modified: Sat, 28 Apr 2018 12:29:45 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:762f49530401a87b8a0270a917fd405952270173025d87971423e5a09236ed85`  
		Last Modified: Sat, 28 Apr 2018 12:29:45 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3` - linux; arm variant v7

```console
$ docker pull redis@sha256:b014a30ca03abc3ed2e8c7f27a6273a07dc9a7b90cb30fc5ed07705642aaa8ef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.7 MB (32724469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5387b35eeda18a22440e8d7723cbefd97414b1bb4dea452f277f9b170d99c452`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 14 Mar 2018 12:27:28 GMT
ADD file:901c5a711f269a7dd8f11eff27131cd2f6d2aee98d68f1e19b4ed954798e5d3f in / 
# Wed, 14 Mar 2018 12:27:29 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 15:44:10 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 14 Mar 2018 15:44:19 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 15:45:20 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 14 Mar 2018 15:45:21 GMT
ENV REDIS_VERSION=3.2.11
# Wed, 14 Mar 2018 15:45:21 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Wed, 14 Mar 2018 15:45:22 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Wed, 14 Mar 2018 15:46:20 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 15:46:21 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 14 Mar 2018 15:46:21 GMT
VOLUME [/data]
# Wed, 14 Mar 2018 15:46:21 GMT
WORKDIR /data
# Wed, 14 Mar 2018 15:46:22 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 14 Mar 2018 15:46:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 15:46:33 GMT
EXPOSE 6379/tcp
# Wed, 14 Mar 2018 15:46:33 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:b8c016a755ce56e2fbb5a9f179c7bde3f0742c21b2727356a1658fc7d973f46a`  
		Last Modified: Wed, 14 Mar 2018 12:39:21 GMT  
		Size: 26.3 MB (26290283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b2daa0616e76420cd00e153994139c08a33c1d399f3debb98ea27f15ecb8c84`  
		Last Modified: Wed, 14 Mar 2018 15:48:31 GMT  
		Size: 2.1 KB (2075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c943f731432d73833cfa4d22e135075012e0ff4680d54710ace42c3876f9f1e0`  
		Last Modified: Wed, 14 Mar 2018 15:48:31 GMT  
		Size: 956.1 KB (956111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e42316792dc7ffcef7428054de5b6b8cdf49fcedb21e451c92dd87a9720b4486`  
		Last Modified: Wed, 14 Mar 2018 15:48:32 GMT  
		Size: 5.5 MB (5475464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e8ef83c8518b5e62c500d2b47fe4ebcf3350042c086af3ccf18fa98ce0b0fdd`  
		Last Modified: Wed, 14 Mar 2018 15:48:30 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21c0e30ef9abe30502fb07fae118d6bdbd331a7a2e5ededf15bd14eb3880bf84`  
		Last Modified: Wed, 14 Mar 2018 15:48:30 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:fc27ce2299df63b1c2ba62f4f90682985a5b5f531fef6eceac31ec8eb493bf6f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34288357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9159f084d78ec7739cda10a22e9827f749146eb72cd3d46b574dd88ff040cc23`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 14 Mar 2018 17:25:26 GMT
ADD file:0012468f66c7e5b0efd7217a1f29f5044d4dce5a19dcd39786aa7573bc927763 in / 
# Wed, 14 Mar 2018 17:25:26 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 01:00:37 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Thu, 15 Mar 2018 01:00:37 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Mar 2018 01:01:35 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Mar 2018 01:01:36 GMT
ENV REDIS_VERSION=3.2.11
# Thu, 15 Mar 2018 01:01:37 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Thu, 15 Mar 2018 01:01:38 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Thu, 15 Mar 2018 01:03:36 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Mar 2018 01:03:38 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 15 Mar 2018 01:03:39 GMT
VOLUME [/data]
# Thu, 15 Mar 2018 01:03:40 GMT
WORKDIR /data
# Thu, 15 Mar 2018 01:03:41 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Thu, 15 Mar 2018 01:03:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Mar 2018 01:03:43 GMT
EXPOSE 6379/tcp
# Thu, 15 Mar 2018 01:03:44 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:784b6f32f75d9222c618727f66027b44ffa35120fc128790dfce4d1070befc90`  
		Last Modified: Wed, 14 Mar 2018 17:39:37 GMT  
		Size: 27.5 MB (27488177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d3475bc4704a0cf864207d5cc8c81043c7bf5fb4a138fbad39c3ec3ebbc1fa`  
		Last Modified: Thu, 15 Mar 2018 01:11:02 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aee833ba6520662ec17502d34841bade40071486c5fdf7c4098a666a0dfddcb`  
		Last Modified: Thu, 15 Mar 2018 01:11:00 GMT  
		Size: 948.7 KB (948651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b87a0db969b47020a64edef75023a6d76f9908d0074c713ff1cf05b8d00b4556`  
		Last Modified: Thu, 15 Mar 2018 01:11:02 GMT  
		Size: 5.8 MB (5848923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b322f1ed1804055509c4f5aa6b5018f8dc573e25ee4563cdb068d9335b2248f`  
		Last Modified: Thu, 15 Mar 2018 01:11:00 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b723dae6d12a8aecfe3ee3c0f847d41ca27b684519d372d9c443b2fba88dce`  
		Last Modified: Thu, 15 Mar 2018 01:11:00 GMT  
		Size: 405.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3` - linux; 386

```console
$ docker pull redis@sha256:64847fa7dc62a47a3a716d70ef0016296bb5fecd0f7c3403a62b5f0a35a346b9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.5 MB (36462010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4e2f3a02031b841b11b548d22f30c7567b04a0ab0192c71664bcfa3e8e20a20`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 27 Mar 2018 14:24:52 GMT
ADD file:4e79b8dd98596d0354ef30e136278a257e021a36d6d6271ec4c1dafaf07889ae in / 
# Tue, 27 Mar 2018 14:24:53 GMT
CMD ["bash"]
# Sun, 01 Apr 2018 01:29:01 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sun, 01 Apr 2018 01:29:02 GMT
ENV GOSU_VERSION=1.10
# Sun, 01 Apr 2018 01:29:52 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sun, 01 Apr 2018 01:29:53 GMT
ENV REDIS_VERSION=3.2.11
# Sun, 01 Apr 2018 01:29:53 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Sun, 01 Apr 2018 01:29:53 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Sun, 01 Apr 2018 01:30:59 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sun, 01 Apr 2018 01:30:59 GMT
RUN mkdir /data && chown redis:redis /data
# Sun, 01 Apr 2018 01:31:00 GMT
VOLUME [/data]
# Sun, 01 Apr 2018 01:31:00 GMT
WORKDIR /data
# Sun, 01 Apr 2018 01:31:00 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sun, 01 Apr 2018 01:31:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 01 Apr 2018 01:31:01 GMT
EXPOSE 6379/tcp
# Sun, 01 Apr 2018 01:31:01 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:ec7b1998b022b3eb218010907097139cebc6fb8b1aaab342d847d1f283ef3967`  
		Last Modified: Thu, 15 Mar 2018 01:00:27 GMT  
		Size: 30.3 MB (30273196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:489503ea3d98ea7b22c3eff6103a6905ec74d9153e63ef67a7eef37f18843efa`  
		Last Modified: Sun, 01 Apr 2018 01:45:14 GMT  
		Size: 2.1 KB (2082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa698c1a7ceed1d9a98ec7d86e6d2a338e7bb9a6cb46391e7c967a3bad733b0`  
		Last Modified: Sun, 01 Apr 2018 01:45:15 GMT  
		Size: 960.8 KB (960816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7bd28d46cee393340fb145adf8c316675f66dbf2d631f8a453544b4b16a780f`  
		Last Modified: Sun, 01 Apr 2018 01:45:16 GMT  
		Size: 5.2 MB (5225417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e39f3579633ccebd1bd17cd414b94f5dbab6715517f723396d196d2133d14c0`  
		Last Modified: Sun, 01 Apr 2018 01:45:14 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1221f4d5d43c8bc7f81dd27bb970f166cd8b156f1f4d2d0309718196d72acb97`  
		Last Modified: Sun, 01 Apr 2018 01:45:14 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3` - linux; ppc64le

```console
$ docker pull redis@sha256:4070d779c276e3b892d602b19828da29c07682e31c21899843f9428358da7329
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.3 MB (36260643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79b7943d9d088be33784ba655a3400551922162155d7ae97e0fa45e28e077ea4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 28 Apr 2018 08:18:08 GMT
ADD file:cc51ef60d7cb3b70c82127b8721de1b99378a9d4fc246dffa2ef5ffa2d9ab805 in / 
# Sat, 28 Apr 2018 08:18:09 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 13:00:58 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 28 Apr 2018 13:00:58 GMT
ENV GOSU_VERSION=1.10
# Sat, 28 Apr 2018 13:02:44 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 28 Apr 2018 13:02:44 GMT
ENV REDIS_VERSION=3.2.11
# Sat, 28 Apr 2018 13:02:45 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Sat, 28 Apr 2018 13:02:46 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Sat, 28 Apr 2018 13:05:14 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 13:05:16 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 28 Apr 2018 13:05:17 GMT
VOLUME [/data]
# Sat, 28 Apr 2018 13:05:18 GMT
WORKDIR /data
# Sat, 28 Apr 2018 13:05:18 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 28 Apr 2018 13:05:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 28 Apr 2018 13:05:20 GMT
EXPOSE 6379/tcp
# Sat, 28 Apr 2018 13:05:21 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:7745ff03a317ccaa10ff03129a2330b1c154aecaf51a892b7d99d5e1dbeb86cc`  
		Last Modified: Sat, 28 Apr 2018 08:25:29 GMT  
		Size: 29.3 MB (29317351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:095fbb0f7ef3b4b93e7cc9189e36c52b64f5608e9c028b7c4fa7a1467af366f7`  
		Last Modified: Sat, 28 Apr 2018 13:08:29 GMT  
		Size: 2.1 KB (2096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5ac27b943636e1baf2b28f6b7beff6f100a6372eb61bfb1a3c924eba0553011`  
		Last Modified: Sat, 28 Apr 2018 13:08:30 GMT  
		Size: 950.5 KB (950544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d48dca65e9ce4aee8b4d14c8bd0d72ec195020c55104afef433c738e8475273`  
		Last Modified: Sat, 28 Apr 2018 13:08:32 GMT  
		Size: 6.0 MB (5990115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb0cd1ae8e98840dc0e7358e7b0391de926f48d1ef2ef916d7f930034910dca5`  
		Last Modified: Sat, 28 Apr 2018 13:08:29 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dda9ae15b2922d613604d888508091cbf0800a302ba9ab2e9b8062b3cb111c0`  
		Last Modified: Sat, 28 Apr 2018 13:08:29 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3` - linux; s390x

```console
$ docker pull redis@sha256:afbf790910b776db29802c5560a34b68c8eb6b5265538dbe1e29335bddc94ce4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.4 MB (37446474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1607db3ca9d5d2917decc6ec92706c439223662bebf2e0133c3e300e80ee977f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 14 Mar 2018 05:22:12 GMT
ADD file:5cd4239ce601f059eb8656abcae1c4827d7d75823a0e5e1a60bb2704635bde19 in / 
# Wed, 14 Mar 2018 05:22:12 GMT
CMD ["bash"]
# Fri, 16 Mar 2018 05:24:30 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 16 Mar 2018 05:24:30 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Mar 2018 05:24:49 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Mar 2018 05:24:49 GMT
ENV REDIS_VERSION=3.2.11
# Fri, 16 Mar 2018 05:24:49 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Fri, 16 Mar 2018 05:24:49 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Fri, 16 Mar 2018 05:25:17 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Mar 2018 05:25:18 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 16 Mar 2018 05:25:18 GMT
VOLUME [/data]
# Fri, 16 Mar 2018 05:25:18 GMT
WORKDIR /data
# Fri, 16 Mar 2018 05:25:18 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 16 Mar 2018 05:25:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Mar 2018 05:25:18 GMT
EXPOSE 6379/tcp
# Fri, 16 Mar 2018 05:25:19 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:73a91a9f561cad48038a81f8d9c37a90e39c3d0c806aaedb15f2f77092870ce4`  
		Last Modified: Wed, 14 Mar 2018 05:26:42 GMT  
		Size: 30.3 MB (30301960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8c4a0627308986c079aac5fcd4443370e25d46e7d2121a8ec46f5e93f70893e`  
		Last Modified: Fri, 16 Mar 2018 05:26:21 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2379099d7972abdfc0ee1b53049fd97e8fd9dd0132e05f544d08a18026289c9d`  
		Last Modified: Fri, 16 Mar 2018 05:26:22 GMT  
		Size: 966.9 KB (966876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36fd49f375b115a7b1f4a2a4741a6467d65ca6ed5a3d8b026ea894d3431eab78`  
		Last Modified: Fri, 16 Mar 2018 05:26:22 GMT  
		Size: 6.2 MB (6175049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73c45be681bb0d6a0bc61ef8313da257262ffa86e00abd5dcb0986a5d8a11290`  
		Last Modified: Fri, 16 Mar 2018 05:26:21 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7963953154adc62fa9451ca63445b856b8364c94a0fbdfe97e4ac5ea88314324`  
		Last Modified: Fri, 16 Mar 2018 05:26:20 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2`

```console
$ docker pull redis@sha256:8b421bce8abcf29200fcc0131fd2600d95ce1a9ad45497005a4fe87a10d7ead5
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
$ docker pull redis@sha256:19d845a57a43f6331b6b488f5eccbc4532eae5a032756c4159c0c0f92eef8339
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36853711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b05c3d76c8b3ef3af8974edda3941a4a028d244681cc420e5304a3829519f1b6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 13 Mar 2018 21:58:13 GMT
ADD file:080bac9a2cdcc70ad61e50045a26172f0e1acfd3a26360cb86b6e26a3307b2e1 in / 
# Tue, 13 Mar 2018 21:58:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 19:07:45 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 14 Mar 2018 19:07:45 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 19:08:17 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 14 Mar 2018 19:08:17 GMT
ENV REDIS_VERSION=3.2.11
# Wed, 14 Mar 2018 19:08:18 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Wed, 14 Mar 2018 19:08:18 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Wed, 14 Mar 2018 19:09:02 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 19:09:03 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 14 Mar 2018 19:09:03 GMT
VOLUME [/data]
# Wed, 14 Mar 2018 19:09:04 GMT
WORKDIR /data
# Wed, 14 Mar 2018 19:09:04 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 14 Mar 2018 19:09:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 19:09:04 GMT
EXPOSE 6379/tcp
# Wed, 14 Mar 2018 19:09:05 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:b0568b191983bc2844b2fdb48aeefa72452931bfead0a87e0515bfc602ea3b0c`  
		Last Modified: Tue, 13 Mar 2018 22:45:19 GMT  
		Size: 30.1 MB (30122402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6637dc5b29fee45c6536e100b59259a74639fbf8cc42bf9149dc807e36740af5`  
		Last Modified: Wed, 14 Mar 2018 19:13:55 GMT  
		Size: 2.1 KB (2086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b4314315f15b1cb666256edf2ac07b2a902a6d0622a0bd1120bdab9799d26c3`  
		Last Modified: Wed, 14 Mar 2018 19:13:55 GMT  
		Size: 981.7 KB (981728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bc30a4dd0c227b585318acce5ff6cb60a008428eb46409987e6965305000c40`  
		Last Modified: Wed, 14 Mar 2018 19:13:57 GMT  
		Size: 5.7 MB (5746994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9446fed1509b79945fa9418d12838a051aa999c6b6fc0d26c734e674bd8de660`  
		Last Modified: Wed, 14 Mar 2018 19:13:55 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:939e50b6dd029161e9a4a35ca90bd4aaadae7d90ccccb4f4cca1b9e35dca2043`  
		Last Modified: Wed, 14 Mar 2018 19:13:55 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2` - linux; arm variant v5

```console
$ docker pull redis@sha256:4b3eacb4ff9b53d25858fd47bef8b9029e9ba08f6f6417959dbe3bf3c5385a12
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.1 MB (35050454 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1be9aede6af009e259134610cad5f63b23f6da5e03c38945f0dbfd6a31a9735b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 28 Apr 2018 08:49:49 GMT
ADD file:e9274d48b6cf2508214a554b4dbe651b4dfa95bb52dba47a96fe8842bf606a87 in / 
# Sat, 28 Apr 2018 08:49:49 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:26:08 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 28 Apr 2018 12:26:08 GMT
ENV GOSU_VERSION=1.10
# Sat, 28 Apr 2018 12:26:50 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 28 Apr 2018 12:26:51 GMT
ENV REDIS_VERSION=3.2.11
# Sat, 28 Apr 2018 12:26:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Sat, 28 Apr 2018 12:26:51 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Sat, 28 Apr 2018 12:27:46 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 12:27:48 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 28 Apr 2018 12:27:53 GMT
VOLUME [/data]
# Sat, 28 Apr 2018 12:27:53 GMT
WORKDIR /data
# Sat, 28 Apr 2018 12:27:54 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 28 Apr 2018 12:27:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 28 Apr 2018 12:27:54 GMT
EXPOSE 6379/tcp
# Sat, 28 Apr 2018 12:27:59 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:94b675ca74d2386dbd57e10d92f282f24ca3519fd21339c04af3f8f7e523617c`  
		Last Modified: Sat, 28 Apr 2018 08:57:53 GMT  
		Size: 28.4 MB (28435716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:588361ed476f4576bf29e632cdfe986f25ff90bfdf2fc2325c3325d6c18fc0de`  
		Last Modified: Sat, 28 Apr 2018 12:29:45 GMT  
		Size: 2.1 KB (2077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70bdf9c4f2fd118accb020c350f2d38df83baf6746eff2096eaf518b65c39a97`  
		Last Modified: Sat, 28 Apr 2018 12:29:45 GMT  
		Size: 971.3 KB (971295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b19d56de314a740f800241e18037f8194918d277fab3871dc2e6712830c2d358`  
		Last Modified: Sat, 28 Apr 2018 12:29:47 GMT  
		Size: 5.6 MB (5640828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbffbb627e2cabc9d34814a7ba2469fbf8c74500ac3f4a28d9f2a29640e19760`  
		Last Modified: Sat, 28 Apr 2018 12:29:45 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:762f49530401a87b8a0270a917fd405952270173025d87971423e5a09236ed85`  
		Last Modified: Sat, 28 Apr 2018 12:29:45 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2` - linux; arm variant v7

```console
$ docker pull redis@sha256:b014a30ca03abc3ed2e8c7f27a6273a07dc9a7b90cb30fc5ed07705642aaa8ef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.7 MB (32724469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5387b35eeda18a22440e8d7723cbefd97414b1bb4dea452f277f9b170d99c452`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 14 Mar 2018 12:27:28 GMT
ADD file:901c5a711f269a7dd8f11eff27131cd2f6d2aee98d68f1e19b4ed954798e5d3f in / 
# Wed, 14 Mar 2018 12:27:29 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 15:44:10 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 14 Mar 2018 15:44:19 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 15:45:20 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 14 Mar 2018 15:45:21 GMT
ENV REDIS_VERSION=3.2.11
# Wed, 14 Mar 2018 15:45:21 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Wed, 14 Mar 2018 15:45:22 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Wed, 14 Mar 2018 15:46:20 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 15:46:21 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 14 Mar 2018 15:46:21 GMT
VOLUME [/data]
# Wed, 14 Mar 2018 15:46:21 GMT
WORKDIR /data
# Wed, 14 Mar 2018 15:46:22 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 14 Mar 2018 15:46:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 15:46:33 GMT
EXPOSE 6379/tcp
# Wed, 14 Mar 2018 15:46:33 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:b8c016a755ce56e2fbb5a9f179c7bde3f0742c21b2727356a1658fc7d973f46a`  
		Last Modified: Wed, 14 Mar 2018 12:39:21 GMT  
		Size: 26.3 MB (26290283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b2daa0616e76420cd00e153994139c08a33c1d399f3debb98ea27f15ecb8c84`  
		Last Modified: Wed, 14 Mar 2018 15:48:31 GMT  
		Size: 2.1 KB (2075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c943f731432d73833cfa4d22e135075012e0ff4680d54710ace42c3876f9f1e0`  
		Last Modified: Wed, 14 Mar 2018 15:48:31 GMT  
		Size: 956.1 KB (956111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e42316792dc7ffcef7428054de5b6b8cdf49fcedb21e451c92dd87a9720b4486`  
		Last Modified: Wed, 14 Mar 2018 15:48:32 GMT  
		Size: 5.5 MB (5475464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e8ef83c8518b5e62c500d2b47fe4ebcf3350042c086af3ccf18fa98ce0b0fdd`  
		Last Modified: Wed, 14 Mar 2018 15:48:30 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21c0e30ef9abe30502fb07fae118d6bdbd331a7a2e5ededf15bd14eb3880bf84`  
		Last Modified: Wed, 14 Mar 2018 15:48:30 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:fc27ce2299df63b1c2ba62f4f90682985a5b5f531fef6eceac31ec8eb493bf6f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34288357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9159f084d78ec7739cda10a22e9827f749146eb72cd3d46b574dd88ff040cc23`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 14 Mar 2018 17:25:26 GMT
ADD file:0012468f66c7e5b0efd7217a1f29f5044d4dce5a19dcd39786aa7573bc927763 in / 
# Wed, 14 Mar 2018 17:25:26 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 01:00:37 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Thu, 15 Mar 2018 01:00:37 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Mar 2018 01:01:35 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Mar 2018 01:01:36 GMT
ENV REDIS_VERSION=3.2.11
# Thu, 15 Mar 2018 01:01:37 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Thu, 15 Mar 2018 01:01:38 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Thu, 15 Mar 2018 01:03:36 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Mar 2018 01:03:38 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 15 Mar 2018 01:03:39 GMT
VOLUME [/data]
# Thu, 15 Mar 2018 01:03:40 GMT
WORKDIR /data
# Thu, 15 Mar 2018 01:03:41 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Thu, 15 Mar 2018 01:03:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Mar 2018 01:03:43 GMT
EXPOSE 6379/tcp
# Thu, 15 Mar 2018 01:03:44 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:784b6f32f75d9222c618727f66027b44ffa35120fc128790dfce4d1070befc90`  
		Last Modified: Wed, 14 Mar 2018 17:39:37 GMT  
		Size: 27.5 MB (27488177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d3475bc4704a0cf864207d5cc8c81043c7bf5fb4a138fbad39c3ec3ebbc1fa`  
		Last Modified: Thu, 15 Mar 2018 01:11:02 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aee833ba6520662ec17502d34841bade40071486c5fdf7c4098a666a0dfddcb`  
		Last Modified: Thu, 15 Mar 2018 01:11:00 GMT  
		Size: 948.7 KB (948651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b87a0db969b47020a64edef75023a6d76f9908d0074c713ff1cf05b8d00b4556`  
		Last Modified: Thu, 15 Mar 2018 01:11:02 GMT  
		Size: 5.8 MB (5848923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b322f1ed1804055509c4f5aa6b5018f8dc573e25ee4563cdb068d9335b2248f`  
		Last Modified: Thu, 15 Mar 2018 01:11:00 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b723dae6d12a8aecfe3ee3c0f847d41ca27b684519d372d9c443b2fba88dce`  
		Last Modified: Thu, 15 Mar 2018 01:11:00 GMT  
		Size: 405.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2` - linux; 386

```console
$ docker pull redis@sha256:64847fa7dc62a47a3a716d70ef0016296bb5fecd0f7c3403a62b5f0a35a346b9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.5 MB (36462010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4e2f3a02031b841b11b548d22f30c7567b04a0ab0192c71664bcfa3e8e20a20`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 27 Mar 2018 14:24:52 GMT
ADD file:4e79b8dd98596d0354ef30e136278a257e021a36d6d6271ec4c1dafaf07889ae in / 
# Tue, 27 Mar 2018 14:24:53 GMT
CMD ["bash"]
# Sun, 01 Apr 2018 01:29:01 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sun, 01 Apr 2018 01:29:02 GMT
ENV GOSU_VERSION=1.10
# Sun, 01 Apr 2018 01:29:52 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sun, 01 Apr 2018 01:29:53 GMT
ENV REDIS_VERSION=3.2.11
# Sun, 01 Apr 2018 01:29:53 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Sun, 01 Apr 2018 01:29:53 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Sun, 01 Apr 2018 01:30:59 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sun, 01 Apr 2018 01:30:59 GMT
RUN mkdir /data && chown redis:redis /data
# Sun, 01 Apr 2018 01:31:00 GMT
VOLUME [/data]
# Sun, 01 Apr 2018 01:31:00 GMT
WORKDIR /data
# Sun, 01 Apr 2018 01:31:00 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sun, 01 Apr 2018 01:31:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 01 Apr 2018 01:31:01 GMT
EXPOSE 6379/tcp
# Sun, 01 Apr 2018 01:31:01 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:ec7b1998b022b3eb218010907097139cebc6fb8b1aaab342d847d1f283ef3967`  
		Last Modified: Thu, 15 Mar 2018 01:00:27 GMT  
		Size: 30.3 MB (30273196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:489503ea3d98ea7b22c3eff6103a6905ec74d9153e63ef67a7eef37f18843efa`  
		Last Modified: Sun, 01 Apr 2018 01:45:14 GMT  
		Size: 2.1 KB (2082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa698c1a7ceed1d9a98ec7d86e6d2a338e7bb9a6cb46391e7c967a3bad733b0`  
		Last Modified: Sun, 01 Apr 2018 01:45:15 GMT  
		Size: 960.8 KB (960816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7bd28d46cee393340fb145adf8c316675f66dbf2d631f8a453544b4b16a780f`  
		Last Modified: Sun, 01 Apr 2018 01:45:16 GMT  
		Size: 5.2 MB (5225417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e39f3579633ccebd1bd17cd414b94f5dbab6715517f723396d196d2133d14c0`  
		Last Modified: Sun, 01 Apr 2018 01:45:14 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1221f4d5d43c8bc7f81dd27bb970f166cd8b156f1f4d2d0309718196d72acb97`  
		Last Modified: Sun, 01 Apr 2018 01:45:14 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2` - linux; ppc64le

```console
$ docker pull redis@sha256:4070d779c276e3b892d602b19828da29c07682e31c21899843f9428358da7329
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.3 MB (36260643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79b7943d9d088be33784ba655a3400551922162155d7ae97e0fa45e28e077ea4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 28 Apr 2018 08:18:08 GMT
ADD file:cc51ef60d7cb3b70c82127b8721de1b99378a9d4fc246dffa2ef5ffa2d9ab805 in / 
# Sat, 28 Apr 2018 08:18:09 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 13:00:58 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 28 Apr 2018 13:00:58 GMT
ENV GOSU_VERSION=1.10
# Sat, 28 Apr 2018 13:02:44 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 28 Apr 2018 13:02:44 GMT
ENV REDIS_VERSION=3.2.11
# Sat, 28 Apr 2018 13:02:45 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Sat, 28 Apr 2018 13:02:46 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Sat, 28 Apr 2018 13:05:14 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 13:05:16 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 28 Apr 2018 13:05:17 GMT
VOLUME [/data]
# Sat, 28 Apr 2018 13:05:18 GMT
WORKDIR /data
# Sat, 28 Apr 2018 13:05:18 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 28 Apr 2018 13:05:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 28 Apr 2018 13:05:20 GMT
EXPOSE 6379/tcp
# Sat, 28 Apr 2018 13:05:21 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:7745ff03a317ccaa10ff03129a2330b1c154aecaf51a892b7d99d5e1dbeb86cc`  
		Last Modified: Sat, 28 Apr 2018 08:25:29 GMT  
		Size: 29.3 MB (29317351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:095fbb0f7ef3b4b93e7cc9189e36c52b64f5608e9c028b7c4fa7a1467af366f7`  
		Last Modified: Sat, 28 Apr 2018 13:08:29 GMT  
		Size: 2.1 KB (2096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5ac27b943636e1baf2b28f6b7beff6f100a6372eb61bfb1a3c924eba0553011`  
		Last Modified: Sat, 28 Apr 2018 13:08:30 GMT  
		Size: 950.5 KB (950544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d48dca65e9ce4aee8b4d14c8bd0d72ec195020c55104afef433c738e8475273`  
		Last Modified: Sat, 28 Apr 2018 13:08:32 GMT  
		Size: 6.0 MB (5990115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb0cd1ae8e98840dc0e7358e7b0391de926f48d1ef2ef916d7f930034910dca5`  
		Last Modified: Sat, 28 Apr 2018 13:08:29 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dda9ae15b2922d613604d888508091cbf0800a302ba9ab2e9b8062b3cb111c0`  
		Last Modified: Sat, 28 Apr 2018 13:08:29 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2` - linux; s390x

```console
$ docker pull redis@sha256:afbf790910b776db29802c5560a34b68c8eb6b5265538dbe1e29335bddc94ce4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.4 MB (37446474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1607db3ca9d5d2917decc6ec92706c439223662bebf2e0133c3e300e80ee977f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 14 Mar 2018 05:22:12 GMT
ADD file:5cd4239ce601f059eb8656abcae1c4827d7d75823a0e5e1a60bb2704635bde19 in / 
# Wed, 14 Mar 2018 05:22:12 GMT
CMD ["bash"]
# Fri, 16 Mar 2018 05:24:30 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 16 Mar 2018 05:24:30 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Mar 2018 05:24:49 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Mar 2018 05:24:49 GMT
ENV REDIS_VERSION=3.2.11
# Fri, 16 Mar 2018 05:24:49 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Fri, 16 Mar 2018 05:24:49 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Fri, 16 Mar 2018 05:25:17 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Mar 2018 05:25:18 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 16 Mar 2018 05:25:18 GMT
VOLUME [/data]
# Fri, 16 Mar 2018 05:25:18 GMT
WORKDIR /data
# Fri, 16 Mar 2018 05:25:18 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 16 Mar 2018 05:25:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Mar 2018 05:25:18 GMT
EXPOSE 6379/tcp
# Fri, 16 Mar 2018 05:25:19 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:73a91a9f561cad48038a81f8d9c37a90e39c3d0c806aaedb15f2f77092870ce4`  
		Last Modified: Wed, 14 Mar 2018 05:26:42 GMT  
		Size: 30.3 MB (30301960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8c4a0627308986c079aac5fcd4443370e25d46e7d2121a8ec46f5e93f70893e`  
		Last Modified: Fri, 16 Mar 2018 05:26:21 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2379099d7972abdfc0ee1b53049fd97e8fd9dd0132e05f544d08a18026289c9d`  
		Last Modified: Fri, 16 Mar 2018 05:26:22 GMT  
		Size: 966.9 KB (966876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36fd49f375b115a7b1f4a2a4741a6467d65ca6ed5a3d8b026ea894d3431eab78`  
		Last Modified: Fri, 16 Mar 2018 05:26:22 GMT  
		Size: 6.2 MB (6175049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73c45be681bb0d6a0bc61ef8313da257262ffa86e00abd5dcb0986a5d8a11290`  
		Last Modified: Fri, 16 Mar 2018 05:26:21 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7963953154adc62fa9451ca63445b856b8364c94a0fbdfe97e4ac5ea88314324`  
		Last Modified: Fri, 16 Mar 2018 05:26:20 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2.11`

```console
$ docker pull redis@sha256:8b421bce8abcf29200fcc0131fd2600d95ce1a9ad45497005a4fe87a10d7ead5
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
$ docker pull redis@sha256:19d845a57a43f6331b6b488f5eccbc4532eae5a032756c4159c0c0f92eef8339
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36853711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b05c3d76c8b3ef3af8974edda3941a4a028d244681cc420e5304a3829519f1b6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 13 Mar 2018 21:58:13 GMT
ADD file:080bac9a2cdcc70ad61e50045a26172f0e1acfd3a26360cb86b6e26a3307b2e1 in / 
# Tue, 13 Mar 2018 21:58:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 19:07:45 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 14 Mar 2018 19:07:45 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 19:08:17 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 14 Mar 2018 19:08:17 GMT
ENV REDIS_VERSION=3.2.11
# Wed, 14 Mar 2018 19:08:18 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Wed, 14 Mar 2018 19:08:18 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Wed, 14 Mar 2018 19:09:02 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 19:09:03 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 14 Mar 2018 19:09:03 GMT
VOLUME [/data]
# Wed, 14 Mar 2018 19:09:04 GMT
WORKDIR /data
# Wed, 14 Mar 2018 19:09:04 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 14 Mar 2018 19:09:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 19:09:04 GMT
EXPOSE 6379/tcp
# Wed, 14 Mar 2018 19:09:05 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:b0568b191983bc2844b2fdb48aeefa72452931bfead0a87e0515bfc602ea3b0c`  
		Last Modified: Tue, 13 Mar 2018 22:45:19 GMT  
		Size: 30.1 MB (30122402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6637dc5b29fee45c6536e100b59259a74639fbf8cc42bf9149dc807e36740af5`  
		Last Modified: Wed, 14 Mar 2018 19:13:55 GMT  
		Size: 2.1 KB (2086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b4314315f15b1cb666256edf2ac07b2a902a6d0622a0bd1120bdab9799d26c3`  
		Last Modified: Wed, 14 Mar 2018 19:13:55 GMT  
		Size: 981.7 KB (981728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bc30a4dd0c227b585318acce5ff6cb60a008428eb46409987e6965305000c40`  
		Last Modified: Wed, 14 Mar 2018 19:13:57 GMT  
		Size: 5.7 MB (5746994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9446fed1509b79945fa9418d12838a051aa999c6b6fc0d26c734e674bd8de660`  
		Last Modified: Wed, 14 Mar 2018 19:13:55 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:939e50b6dd029161e9a4a35ca90bd4aaadae7d90ccccb4f4cca1b9e35dca2043`  
		Last Modified: Wed, 14 Mar 2018 19:13:55 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2.11` - linux; arm variant v5

```console
$ docker pull redis@sha256:4b3eacb4ff9b53d25858fd47bef8b9029e9ba08f6f6417959dbe3bf3c5385a12
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.1 MB (35050454 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1be9aede6af009e259134610cad5f63b23f6da5e03c38945f0dbfd6a31a9735b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 28 Apr 2018 08:49:49 GMT
ADD file:e9274d48b6cf2508214a554b4dbe651b4dfa95bb52dba47a96fe8842bf606a87 in / 
# Sat, 28 Apr 2018 08:49:49 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:26:08 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 28 Apr 2018 12:26:08 GMT
ENV GOSU_VERSION=1.10
# Sat, 28 Apr 2018 12:26:50 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 28 Apr 2018 12:26:51 GMT
ENV REDIS_VERSION=3.2.11
# Sat, 28 Apr 2018 12:26:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Sat, 28 Apr 2018 12:26:51 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Sat, 28 Apr 2018 12:27:46 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 12:27:48 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 28 Apr 2018 12:27:53 GMT
VOLUME [/data]
# Sat, 28 Apr 2018 12:27:53 GMT
WORKDIR /data
# Sat, 28 Apr 2018 12:27:54 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 28 Apr 2018 12:27:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 28 Apr 2018 12:27:54 GMT
EXPOSE 6379/tcp
# Sat, 28 Apr 2018 12:27:59 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:94b675ca74d2386dbd57e10d92f282f24ca3519fd21339c04af3f8f7e523617c`  
		Last Modified: Sat, 28 Apr 2018 08:57:53 GMT  
		Size: 28.4 MB (28435716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:588361ed476f4576bf29e632cdfe986f25ff90bfdf2fc2325c3325d6c18fc0de`  
		Last Modified: Sat, 28 Apr 2018 12:29:45 GMT  
		Size: 2.1 KB (2077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70bdf9c4f2fd118accb020c350f2d38df83baf6746eff2096eaf518b65c39a97`  
		Last Modified: Sat, 28 Apr 2018 12:29:45 GMT  
		Size: 971.3 KB (971295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b19d56de314a740f800241e18037f8194918d277fab3871dc2e6712830c2d358`  
		Last Modified: Sat, 28 Apr 2018 12:29:47 GMT  
		Size: 5.6 MB (5640828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbffbb627e2cabc9d34814a7ba2469fbf8c74500ac3f4a28d9f2a29640e19760`  
		Last Modified: Sat, 28 Apr 2018 12:29:45 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:762f49530401a87b8a0270a917fd405952270173025d87971423e5a09236ed85`  
		Last Modified: Sat, 28 Apr 2018 12:29:45 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2.11` - linux; arm variant v7

```console
$ docker pull redis@sha256:b014a30ca03abc3ed2e8c7f27a6273a07dc9a7b90cb30fc5ed07705642aaa8ef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.7 MB (32724469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5387b35eeda18a22440e8d7723cbefd97414b1bb4dea452f277f9b170d99c452`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 14 Mar 2018 12:27:28 GMT
ADD file:901c5a711f269a7dd8f11eff27131cd2f6d2aee98d68f1e19b4ed954798e5d3f in / 
# Wed, 14 Mar 2018 12:27:29 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 15:44:10 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 14 Mar 2018 15:44:19 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 15:45:20 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 14 Mar 2018 15:45:21 GMT
ENV REDIS_VERSION=3.2.11
# Wed, 14 Mar 2018 15:45:21 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Wed, 14 Mar 2018 15:45:22 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Wed, 14 Mar 2018 15:46:20 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 15:46:21 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 14 Mar 2018 15:46:21 GMT
VOLUME [/data]
# Wed, 14 Mar 2018 15:46:21 GMT
WORKDIR /data
# Wed, 14 Mar 2018 15:46:22 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 14 Mar 2018 15:46:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 15:46:33 GMT
EXPOSE 6379/tcp
# Wed, 14 Mar 2018 15:46:33 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:b8c016a755ce56e2fbb5a9f179c7bde3f0742c21b2727356a1658fc7d973f46a`  
		Last Modified: Wed, 14 Mar 2018 12:39:21 GMT  
		Size: 26.3 MB (26290283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b2daa0616e76420cd00e153994139c08a33c1d399f3debb98ea27f15ecb8c84`  
		Last Modified: Wed, 14 Mar 2018 15:48:31 GMT  
		Size: 2.1 KB (2075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c943f731432d73833cfa4d22e135075012e0ff4680d54710ace42c3876f9f1e0`  
		Last Modified: Wed, 14 Mar 2018 15:48:31 GMT  
		Size: 956.1 KB (956111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e42316792dc7ffcef7428054de5b6b8cdf49fcedb21e451c92dd87a9720b4486`  
		Last Modified: Wed, 14 Mar 2018 15:48:32 GMT  
		Size: 5.5 MB (5475464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e8ef83c8518b5e62c500d2b47fe4ebcf3350042c086af3ccf18fa98ce0b0fdd`  
		Last Modified: Wed, 14 Mar 2018 15:48:30 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21c0e30ef9abe30502fb07fae118d6bdbd331a7a2e5ededf15bd14eb3880bf84`  
		Last Modified: Wed, 14 Mar 2018 15:48:30 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2.11` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:fc27ce2299df63b1c2ba62f4f90682985a5b5f531fef6eceac31ec8eb493bf6f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34288357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9159f084d78ec7739cda10a22e9827f749146eb72cd3d46b574dd88ff040cc23`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 14 Mar 2018 17:25:26 GMT
ADD file:0012468f66c7e5b0efd7217a1f29f5044d4dce5a19dcd39786aa7573bc927763 in / 
# Wed, 14 Mar 2018 17:25:26 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 01:00:37 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Thu, 15 Mar 2018 01:00:37 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Mar 2018 01:01:35 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Mar 2018 01:01:36 GMT
ENV REDIS_VERSION=3.2.11
# Thu, 15 Mar 2018 01:01:37 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Thu, 15 Mar 2018 01:01:38 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Thu, 15 Mar 2018 01:03:36 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Mar 2018 01:03:38 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 15 Mar 2018 01:03:39 GMT
VOLUME [/data]
# Thu, 15 Mar 2018 01:03:40 GMT
WORKDIR /data
# Thu, 15 Mar 2018 01:03:41 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Thu, 15 Mar 2018 01:03:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Mar 2018 01:03:43 GMT
EXPOSE 6379/tcp
# Thu, 15 Mar 2018 01:03:44 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:784b6f32f75d9222c618727f66027b44ffa35120fc128790dfce4d1070befc90`  
		Last Modified: Wed, 14 Mar 2018 17:39:37 GMT  
		Size: 27.5 MB (27488177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d3475bc4704a0cf864207d5cc8c81043c7bf5fb4a138fbad39c3ec3ebbc1fa`  
		Last Modified: Thu, 15 Mar 2018 01:11:02 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aee833ba6520662ec17502d34841bade40071486c5fdf7c4098a666a0dfddcb`  
		Last Modified: Thu, 15 Mar 2018 01:11:00 GMT  
		Size: 948.7 KB (948651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b87a0db969b47020a64edef75023a6d76f9908d0074c713ff1cf05b8d00b4556`  
		Last Modified: Thu, 15 Mar 2018 01:11:02 GMT  
		Size: 5.8 MB (5848923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b322f1ed1804055509c4f5aa6b5018f8dc573e25ee4563cdb068d9335b2248f`  
		Last Modified: Thu, 15 Mar 2018 01:11:00 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b723dae6d12a8aecfe3ee3c0f847d41ca27b684519d372d9c443b2fba88dce`  
		Last Modified: Thu, 15 Mar 2018 01:11:00 GMT  
		Size: 405.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2.11` - linux; 386

```console
$ docker pull redis@sha256:64847fa7dc62a47a3a716d70ef0016296bb5fecd0f7c3403a62b5f0a35a346b9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.5 MB (36462010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4e2f3a02031b841b11b548d22f30c7567b04a0ab0192c71664bcfa3e8e20a20`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 27 Mar 2018 14:24:52 GMT
ADD file:4e79b8dd98596d0354ef30e136278a257e021a36d6d6271ec4c1dafaf07889ae in / 
# Tue, 27 Mar 2018 14:24:53 GMT
CMD ["bash"]
# Sun, 01 Apr 2018 01:29:01 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sun, 01 Apr 2018 01:29:02 GMT
ENV GOSU_VERSION=1.10
# Sun, 01 Apr 2018 01:29:52 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sun, 01 Apr 2018 01:29:53 GMT
ENV REDIS_VERSION=3.2.11
# Sun, 01 Apr 2018 01:29:53 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Sun, 01 Apr 2018 01:29:53 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Sun, 01 Apr 2018 01:30:59 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sun, 01 Apr 2018 01:30:59 GMT
RUN mkdir /data && chown redis:redis /data
# Sun, 01 Apr 2018 01:31:00 GMT
VOLUME [/data]
# Sun, 01 Apr 2018 01:31:00 GMT
WORKDIR /data
# Sun, 01 Apr 2018 01:31:00 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sun, 01 Apr 2018 01:31:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 01 Apr 2018 01:31:01 GMT
EXPOSE 6379/tcp
# Sun, 01 Apr 2018 01:31:01 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:ec7b1998b022b3eb218010907097139cebc6fb8b1aaab342d847d1f283ef3967`  
		Last Modified: Thu, 15 Mar 2018 01:00:27 GMT  
		Size: 30.3 MB (30273196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:489503ea3d98ea7b22c3eff6103a6905ec74d9153e63ef67a7eef37f18843efa`  
		Last Modified: Sun, 01 Apr 2018 01:45:14 GMT  
		Size: 2.1 KB (2082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa698c1a7ceed1d9a98ec7d86e6d2a338e7bb9a6cb46391e7c967a3bad733b0`  
		Last Modified: Sun, 01 Apr 2018 01:45:15 GMT  
		Size: 960.8 KB (960816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7bd28d46cee393340fb145adf8c316675f66dbf2d631f8a453544b4b16a780f`  
		Last Modified: Sun, 01 Apr 2018 01:45:16 GMT  
		Size: 5.2 MB (5225417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e39f3579633ccebd1bd17cd414b94f5dbab6715517f723396d196d2133d14c0`  
		Last Modified: Sun, 01 Apr 2018 01:45:14 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1221f4d5d43c8bc7f81dd27bb970f166cd8b156f1f4d2d0309718196d72acb97`  
		Last Modified: Sun, 01 Apr 2018 01:45:14 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2.11` - linux; ppc64le

```console
$ docker pull redis@sha256:4070d779c276e3b892d602b19828da29c07682e31c21899843f9428358da7329
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.3 MB (36260643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79b7943d9d088be33784ba655a3400551922162155d7ae97e0fa45e28e077ea4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 28 Apr 2018 08:18:08 GMT
ADD file:cc51ef60d7cb3b70c82127b8721de1b99378a9d4fc246dffa2ef5ffa2d9ab805 in / 
# Sat, 28 Apr 2018 08:18:09 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 13:00:58 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 28 Apr 2018 13:00:58 GMT
ENV GOSU_VERSION=1.10
# Sat, 28 Apr 2018 13:02:44 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 28 Apr 2018 13:02:44 GMT
ENV REDIS_VERSION=3.2.11
# Sat, 28 Apr 2018 13:02:45 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Sat, 28 Apr 2018 13:02:46 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Sat, 28 Apr 2018 13:05:14 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 13:05:16 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 28 Apr 2018 13:05:17 GMT
VOLUME [/data]
# Sat, 28 Apr 2018 13:05:18 GMT
WORKDIR /data
# Sat, 28 Apr 2018 13:05:18 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 28 Apr 2018 13:05:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 28 Apr 2018 13:05:20 GMT
EXPOSE 6379/tcp
# Sat, 28 Apr 2018 13:05:21 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:7745ff03a317ccaa10ff03129a2330b1c154aecaf51a892b7d99d5e1dbeb86cc`  
		Last Modified: Sat, 28 Apr 2018 08:25:29 GMT  
		Size: 29.3 MB (29317351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:095fbb0f7ef3b4b93e7cc9189e36c52b64f5608e9c028b7c4fa7a1467af366f7`  
		Last Modified: Sat, 28 Apr 2018 13:08:29 GMT  
		Size: 2.1 KB (2096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5ac27b943636e1baf2b28f6b7beff6f100a6372eb61bfb1a3c924eba0553011`  
		Last Modified: Sat, 28 Apr 2018 13:08:30 GMT  
		Size: 950.5 KB (950544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d48dca65e9ce4aee8b4d14c8bd0d72ec195020c55104afef433c738e8475273`  
		Last Modified: Sat, 28 Apr 2018 13:08:32 GMT  
		Size: 6.0 MB (5990115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb0cd1ae8e98840dc0e7358e7b0391de926f48d1ef2ef916d7f930034910dca5`  
		Last Modified: Sat, 28 Apr 2018 13:08:29 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dda9ae15b2922d613604d888508091cbf0800a302ba9ab2e9b8062b3cb111c0`  
		Last Modified: Sat, 28 Apr 2018 13:08:29 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2.11` - linux; s390x

```console
$ docker pull redis@sha256:afbf790910b776db29802c5560a34b68c8eb6b5265538dbe1e29335bddc94ce4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.4 MB (37446474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1607db3ca9d5d2917decc6ec92706c439223662bebf2e0133c3e300e80ee977f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 14 Mar 2018 05:22:12 GMT
ADD file:5cd4239ce601f059eb8656abcae1c4827d7d75823a0e5e1a60bb2704635bde19 in / 
# Wed, 14 Mar 2018 05:22:12 GMT
CMD ["bash"]
# Fri, 16 Mar 2018 05:24:30 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 16 Mar 2018 05:24:30 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Mar 2018 05:24:49 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Mar 2018 05:24:49 GMT
ENV REDIS_VERSION=3.2.11
# Fri, 16 Mar 2018 05:24:49 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Fri, 16 Mar 2018 05:24:49 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Fri, 16 Mar 2018 05:25:17 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Mar 2018 05:25:18 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 16 Mar 2018 05:25:18 GMT
VOLUME [/data]
# Fri, 16 Mar 2018 05:25:18 GMT
WORKDIR /data
# Fri, 16 Mar 2018 05:25:18 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 16 Mar 2018 05:25:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Mar 2018 05:25:18 GMT
EXPOSE 6379/tcp
# Fri, 16 Mar 2018 05:25:19 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:73a91a9f561cad48038a81f8d9c37a90e39c3d0c806aaedb15f2f77092870ce4`  
		Last Modified: Wed, 14 Mar 2018 05:26:42 GMT  
		Size: 30.3 MB (30301960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8c4a0627308986c079aac5fcd4443370e25d46e7d2121a8ec46f5e93f70893e`  
		Last Modified: Fri, 16 Mar 2018 05:26:21 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2379099d7972abdfc0ee1b53049fd97e8fd9dd0132e05f544d08a18026289c9d`  
		Last Modified: Fri, 16 Mar 2018 05:26:22 GMT  
		Size: 966.9 KB (966876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36fd49f375b115a7b1f4a2a4741a6467d65ca6ed5a3d8b026ea894d3431eab78`  
		Last Modified: Fri, 16 Mar 2018 05:26:22 GMT  
		Size: 6.2 MB (6175049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73c45be681bb0d6a0bc61ef8313da257262ffa86e00abd5dcb0986a5d8a11290`  
		Last Modified: Fri, 16 Mar 2018 05:26:21 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7963953154adc62fa9451ca63445b856b8364c94a0fbdfe97e4ac5ea88314324`  
		Last Modified: Fri, 16 Mar 2018 05:26:20 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2.11-32bit`

```console
$ docker pull redis@sha256:0edb304793969314a2c3a3c3b16cf71eb718d0cc6ebe9de6a35cbdacbd09cadc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:3.2.11-32bit` - linux; amd64

```console
$ docker pull redis@sha256:c1385e769db8185805dd5021e5591353ddb201ed1c4246a40502333d2dcd02dd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.7 MB (40715920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aba1cf69b680039672f3f849b6e62a68984eb13af25a57b28a0756e41c9180e7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 13 Mar 2018 21:58:13 GMT
ADD file:080bac9a2cdcc70ad61e50045a26172f0e1acfd3a26360cb86b6e26a3307b2e1 in / 
# Tue, 13 Mar 2018 21:58:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 19:07:45 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 14 Mar 2018 19:07:45 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 19:08:17 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 14 Mar 2018 19:08:17 GMT
ENV REDIS_VERSION=3.2.11
# Wed, 14 Mar 2018 19:08:18 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Wed, 14 Mar 2018 19:08:18 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Wed, 14 Mar 2018 19:09:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 19:10:40 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 19:10:41 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 14 Mar 2018 19:10:41 GMT
VOLUME [/data]
# Wed, 14 Mar 2018 19:10:41 GMT
WORKDIR /data
# Wed, 14 Mar 2018 19:10:42 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 14 Mar 2018 19:10:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 19:10:42 GMT
EXPOSE 6379/tcp
# Wed, 14 Mar 2018 19:10:43 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:b0568b191983bc2844b2fdb48aeefa72452931bfead0a87e0515bfc602ea3b0c`  
		Last Modified: Tue, 13 Mar 2018 22:45:19 GMT  
		Size: 30.1 MB (30122402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6637dc5b29fee45c6536e100b59259a74639fbf8cc42bf9149dc807e36740af5`  
		Last Modified: Wed, 14 Mar 2018 19:13:55 GMT  
		Size: 2.1 KB (2086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b4314315f15b1cb666256edf2ac07b2a902a6d0622a0bd1120bdab9799d26c3`  
		Last Modified: Wed, 14 Mar 2018 19:13:55 GMT  
		Size: 981.7 KB (981728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e1c5b2a7c6e7efe15425928229593bcfcc918ae7fc94d179e54a93eedaec94e`  
		Last Modified: Wed, 14 Mar 2018 19:14:54 GMT  
		Size: 4.4 MB (4378565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e70aece9586b394c27a9bbf00759c60c77eb73ed86589fa992fbbf415c790d01`  
		Last Modified: Wed, 14 Mar 2018 19:14:55 GMT  
		Size: 5.2 MB (5230633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14b5cb6c2274bddfdb6b36ba99e68dcd4ad56d86774161cf965963242737f17d`  
		Last Modified: Wed, 14 Mar 2018 19:14:54 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f82a24125a6ed808df268644774e89f581b2ff2caf0e52cbceb7742b1f050381`  
		Last Modified: Wed, 14 Mar 2018 19:14:53 GMT  
		Size: 407.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2.11-alpine`

```console
$ docker pull redis@sha256:67a778e7598563b6ff073255ee83028fe3589de2479aac092fce4950e1640981
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
$ docker pull redis@sha256:7ed194f4ac5a2876de4568c46f3c417ea8acc399bb5c960db5b6644647922912
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7963653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a060fc01d85fb8ba3deafe98d8dcd8499e95a488cdd091c05a257e5b9ae0a89`
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
# Tue, 13 Mar 2018 21:17:30 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Tue, 13 Mar 2018 21:17:31 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 13 Mar 2018 21:17:32 GMT
VOLUME [/data]
# Tue, 13 Mar 2018 21:17:32 GMT
WORKDIR /data
# Tue, 13 Mar 2018 21:17:32 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Tue, 13 Mar 2018 21:17:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 13 Mar 2018 21:17:33 GMT
EXPOSE 6379/tcp
# Tue, 13 Mar 2018 21:17:33 GMT
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
	-	`sha256:081086fe67711a2db5bed06a6b00e4e9c3a64270332b42ed08d7acc808251b3f`  
		Last Modified: Tue, 13 Mar 2018 21:23:44 GMT  
		Size: 5.9 MB (5887809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca4b2197fa021597b735c9bf8be56d4a1666fcb6f90ae424bcd4b3bc84cf83ff`  
		Last Modified: Tue, 13 Mar 2018 21:23:43 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79892d7b86a0c02644e85168eb017e661cbaf8ac91a3bda459e98ece869c3287`  
		Last Modified: Tue, 13 Mar 2018 21:23:43 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2.11-alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:7d9e17beadfa3c63de3810e5132c1abcfaa809149180ef79d3d13f13e1a390e7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7700876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21f223255d6be19de22af1fb9b2b91eb42bf72be8d501b6bbdf83615792e7c92`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 26 Feb 2018 23:48:41 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Mon, 26 Feb 2018 23:48:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Mon, 26 Feb 2018 23:48:42 GMT
CMD ["/bin/sh"]
# Tue, 27 Feb 2018 00:05:23 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Tue, 27 Feb 2018 00:05:30 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 27 Feb 2018 00:05:30 GMT
ENV REDIS_VERSION=3.2.11
# Tue, 27 Feb 2018 00:05:31 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Tue, 27 Feb 2018 00:05:31 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Tue, 27 Feb 2018 00:10:58 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Tue, 27 Feb 2018 00:11:02 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 27 Feb 2018 00:11:03 GMT
VOLUME [/data]
# Tue, 27 Feb 2018 00:11:04 GMT
WORKDIR /data
# Tue, 27 Feb 2018 00:11:05 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Tue, 27 Feb 2018 00:11:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Feb 2018 00:11:07 GMT
EXPOSE 6379/tcp
# Tue, 27 Feb 2018 00:11:07 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5993b3593c77413be85d318297ad8313b945069768a7e454d487fd47fa4b4343`  
		Last Modified: Mon, 26 Feb 2018 23:49:26 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2695246aa98cdefda3534828d3a709453b6ca59e38dc1080d438f1edcaf19e46`  
		Last Modified: Tue, 27 Feb 2018 00:15:28 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d633c92691be0aa43ed500d4c46d1099d3002f62bff38a7f45ae126e7421f756`  
		Last Modified: Tue, 27 Feb 2018 00:15:28 GMT  
		Size: 8.7 KB (8716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c507a51f1224dedc0e7a4d6424f302bc9c550c5b52826c4dd35eb121d30d7ac3`  
		Last Modified: Tue, 27 Feb 2018 00:15:36 GMT  
		Size: 5.7 MB (5651877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60bfcbd3788ac4df13810424982737bab34cce2e8285fe1ff696780d84ac7a38`  
		Last Modified: Tue, 27 Feb 2018 00:15:28 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:370e5958ff9dbddc71464de2dcac27a10fa507a510243174834c7ff3be4ab6e7`  
		Last Modified: Tue, 27 Feb 2018 00:15:28 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2.11-alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:344c95ec30efddef306ae680ea69828f2f3a3a6153af25791ce393ab89ac7fa1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7756791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bca52fb4a533db39ea10b59d1002d8757fa3add494f852e604501bdf64d28ec5`
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
# Wed, 14 Mar 2018 12:26:51 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 14 Mar 2018 12:26:53 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 14 Mar 2018 12:26:54 GMT
VOLUME [/data]
# Wed, 14 Mar 2018 12:26:54 GMT
WORKDIR /data
# Wed, 14 Mar 2018 12:26:55 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 14 Mar 2018 12:26:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 12:26:56 GMT
EXPOSE 6379/tcp
# Wed, 14 Mar 2018 12:26:57 GMT
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
	-	`sha256:933be9e8b3353d7dffbaea5c21bf6361dd37817efa93b6e3d2833e31fa8a9f3a`  
		Last Modified: Wed, 14 Mar 2018 12:28:45 GMT  
		Size: 5.8 MB (5757351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68f7c6b4b9cd4838b0b013f8b2d83b73d4fda10a7a5da7a116a7d72a90983cf4`  
		Last Modified: Wed, 14 Mar 2018 12:28:43 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d910952fbc3f5e8a0d264a68f57e4bdda6c25641ced10663078c61bc7338f43`  
		Last Modified: Wed, 14 Mar 2018 12:28:42 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2.11-alpine` - linux; 386

```console
$ docker pull redis@sha256:c19bc73ce12995acf00db71b17627d70f42ff27e737681c2176dbe274d411ce0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7706060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd16128c586bc125bd01ecff0491e2f96aa92810640d19ce09e866b176a6738b`
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
# Tue, 27 Mar 2018 13:11:59 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Tue, 27 Mar 2018 13:12:00 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 27 Mar 2018 13:12:00 GMT
VOLUME [/data]
# Tue, 27 Mar 2018 13:12:00 GMT
WORKDIR /data
# Tue, 27 Mar 2018 13:12:01 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Tue, 27 Mar 2018 13:12:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Mar 2018 13:12:01 GMT
EXPOSE 6379/tcp
# Tue, 27 Mar 2018 13:12:02 GMT
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
	-	`sha256:ce03dab4da296e495ec26554a78545c4a9f797a015329a20feac4527fd8ebcca`  
		Last Modified: Tue, 27 Mar 2018 13:21:28 GMT  
		Size: 5.6 MB (5569267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:791e67af5ec9dd786d419b713968cd6e738994a3be4e613c8b2eca229a77eaa2`  
		Last Modified: Tue, 27 Mar 2018 13:21:27 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9310099a97db38de476eb03d72e6b849150258f4dedafbd7e7ad4277e36bafc`  
		Last Modified: Tue, 27 Mar 2018 13:21:27 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2.11-alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:2440d8214d0f088b7a453e03558cf12de0da7428b17a74b46e31faa9a8203500
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.1 MB (8094441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:712ea7950437b2e2b064ff9d771311efa101eec0354411c87c3e927c06164065`
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
# Wed, 14 Mar 2018 05:42:43 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 14 Mar 2018 05:42:46 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 14 Mar 2018 05:42:48 GMT
VOLUME [/data]
# Wed, 14 Mar 2018 05:42:50 GMT
WORKDIR /data
# Wed, 14 Mar 2018 05:42:52 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 14 Mar 2018 05:42:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 05:42:55 GMT
EXPOSE 6379/tcp
# Wed, 14 Mar 2018 05:42:57 GMT
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
	-	`sha256:7ee278cf10e2f1c4cfc5f4d13db12279ee728297b6c1d08782d445f0d7bb2960`  
		Last Modified: Wed, 14 Mar 2018 05:48:25 GMT  
		Size: 6.0 MB (6001709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:090db9da1e89809803e1285d4aed6976f831c3c18284ea8d298118591401c29e`  
		Last Modified: Wed, 14 Mar 2018 05:48:23 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a132078d06e2d3a388124f1adb2ee2f680a248cf75015f57ec42e8f4c53217ed`  
		Last Modified: Wed, 14 Mar 2018 05:48:23 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2.11-alpine` - linux; s390x

```console
$ docker pull redis@sha256:0311a0f75a3f3e513f3188e2271bc2495d57ea85b78240bef8dce4dcbd051c64
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7829714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7aa7d2d423b1ff96b7b8a12001274fcfd15d016f804ca4a025cc537c6524292a`
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
# Wed, 14 Mar 2018 05:24:56 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 14 Mar 2018 05:24:57 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 14 Mar 2018 05:24:57 GMT
VOLUME [/data]
# Wed, 14 Mar 2018 05:24:57 GMT
WORKDIR /data
# Wed, 14 Mar 2018 05:24:57 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 14 Mar 2018 05:24:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 05:24:58 GMT
EXPOSE 6379/tcp
# Wed, 14 Mar 2018 05:24:58 GMT
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
	-	`sha256:a5b7363bbf7de86f781ad4df9f7504b06b913d9cda2a81d4cc9fd94fb016f847`  
		Last Modified: Wed, 14 Mar 2018 05:25:52 GMT  
		Size: 5.6 MB (5633612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1463f97c9143d47dd9375520228183b07e6910e90079678dd69c11153b01c111`  
		Last Modified: Wed, 14 Mar 2018 05:25:51 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4d068b4b16f95e3ca4a761210a3f313054e465182811403fc21ee9794f07b7a`  
		Last Modified: Wed, 14 Mar 2018 05:25:51 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2-32bit`

```console
$ docker pull redis@sha256:0edb304793969314a2c3a3c3b16cf71eb718d0cc6ebe9de6a35cbdacbd09cadc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:3.2-32bit` - linux; amd64

```console
$ docker pull redis@sha256:c1385e769db8185805dd5021e5591353ddb201ed1c4246a40502333d2dcd02dd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.7 MB (40715920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aba1cf69b680039672f3f849b6e62a68984eb13af25a57b28a0756e41c9180e7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 13 Mar 2018 21:58:13 GMT
ADD file:080bac9a2cdcc70ad61e50045a26172f0e1acfd3a26360cb86b6e26a3307b2e1 in / 
# Tue, 13 Mar 2018 21:58:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 19:07:45 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 14 Mar 2018 19:07:45 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 19:08:17 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 14 Mar 2018 19:08:17 GMT
ENV REDIS_VERSION=3.2.11
# Wed, 14 Mar 2018 19:08:18 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Wed, 14 Mar 2018 19:08:18 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Wed, 14 Mar 2018 19:09:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 19:10:40 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 19:10:41 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 14 Mar 2018 19:10:41 GMT
VOLUME [/data]
# Wed, 14 Mar 2018 19:10:41 GMT
WORKDIR /data
# Wed, 14 Mar 2018 19:10:42 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 14 Mar 2018 19:10:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 19:10:42 GMT
EXPOSE 6379/tcp
# Wed, 14 Mar 2018 19:10:43 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:b0568b191983bc2844b2fdb48aeefa72452931bfead0a87e0515bfc602ea3b0c`  
		Last Modified: Tue, 13 Mar 2018 22:45:19 GMT  
		Size: 30.1 MB (30122402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6637dc5b29fee45c6536e100b59259a74639fbf8cc42bf9149dc807e36740af5`  
		Last Modified: Wed, 14 Mar 2018 19:13:55 GMT  
		Size: 2.1 KB (2086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b4314315f15b1cb666256edf2ac07b2a902a6d0622a0bd1120bdab9799d26c3`  
		Last Modified: Wed, 14 Mar 2018 19:13:55 GMT  
		Size: 981.7 KB (981728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e1c5b2a7c6e7efe15425928229593bcfcc918ae7fc94d179e54a93eedaec94e`  
		Last Modified: Wed, 14 Mar 2018 19:14:54 GMT  
		Size: 4.4 MB (4378565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e70aece9586b394c27a9bbf00759c60c77eb73ed86589fa992fbbf415c790d01`  
		Last Modified: Wed, 14 Mar 2018 19:14:55 GMT  
		Size: 5.2 MB (5230633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14b5cb6c2274bddfdb6b36ba99e68dcd4ad56d86774161cf965963242737f17d`  
		Last Modified: Wed, 14 Mar 2018 19:14:54 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f82a24125a6ed808df268644774e89f581b2ff2caf0e52cbceb7742b1f050381`  
		Last Modified: Wed, 14 Mar 2018 19:14:53 GMT  
		Size: 407.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2-alpine`

```console
$ docker pull redis@sha256:67a778e7598563b6ff073255ee83028fe3589de2479aac092fce4950e1640981
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
$ docker pull redis@sha256:7ed194f4ac5a2876de4568c46f3c417ea8acc399bb5c960db5b6644647922912
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7963653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a060fc01d85fb8ba3deafe98d8dcd8499e95a488cdd091c05a257e5b9ae0a89`
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
# Tue, 13 Mar 2018 21:17:30 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Tue, 13 Mar 2018 21:17:31 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 13 Mar 2018 21:17:32 GMT
VOLUME [/data]
# Tue, 13 Mar 2018 21:17:32 GMT
WORKDIR /data
# Tue, 13 Mar 2018 21:17:32 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Tue, 13 Mar 2018 21:17:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 13 Mar 2018 21:17:33 GMT
EXPOSE 6379/tcp
# Tue, 13 Mar 2018 21:17:33 GMT
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
	-	`sha256:081086fe67711a2db5bed06a6b00e4e9c3a64270332b42ed08d7acc808251b3f`  
		Last Modified: Tue, 13 Mar 2018 21:23:44 GMT  
		Size: 5.9 MB (5887809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca4b2197fa021597b735c9bf8be56d4a1666fcb6f90ae424bcd4b3bc84cf83ff`  
		Last Modified: Tue, 13 Mar 2018 21:23:43 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79892d7b86a0c02644e85168eb017e661cbaf8ac91a3bda459e98ece869c3287`  
		Last Modified: Tue, 13 Mar 2018 21:23:43 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2-alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:7d9e17beadfa3c63de3810e5132c1abcfaa809149180ef79d3d13f13e1a390e7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7700876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21f223255d6be19de22af1fb9b2b91eb42bf72be8d501b6bbdf83615792e7c92`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 26 Feb 2018 23:48:41 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Mon, 26 Feb 2018 23:48:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Mon, 26 Feb 2018 23:48:42 GMT
CMD ["/bin/sh"]
# Tue, 27 Feb 2018 00:05:23 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Tue, 27 Feb 2018 00:05:30 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 27 Feb 2018 00:05:30 GMT
ENV REDIS_VERSION=3.2.11
# Tue, 27 Feb 2018 00:05:31 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Tue, 27 Feb 2018 00:05:31 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Tue, 27 Feb 2018 00:10:58 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Tue, 27 Feb 2018 00:11:02 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 27 Feb 2018 00:11:03 GMT
VOLUME [/data]
# Tue, 27 Feb 2018 00:11:04 GMT
WORKDIR /data
# Tue, 27 Feb 2018 00:11:05 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Tue, 27 Feb 2018 00:11:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Feb 2018 00:11:07 GMT
EXPOSE 6379/tcp
# Tue, 27 Feb 2018 00:11:07 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5993b3593c77413be85d318297ad8313b945069768a7e454d487fd47fa4b4343`  
		Last Modified: Mon, 26 Feb 2018 23:49:26 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2695246aa98cdefda3534828d3a709453b6ca59e38dc1080d438f1edcaf19e46`  
		Last Modified: Tue, 27 Feb 2018 00:15:28 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d633c92691be0aa43ed500d4c46d1099d3002f62bff38a7f45ae126e7421f756`  
		Last Modified: Tue, 27 Feb 2018 00:15:28 GMT  
		Size: 8.7 KB (8716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c507a51f1224dedc0e7a4d6424f302bc9c550c5b52826c4dd35eb121d30d7ac3`  
		Last Modified: Tue, 27 Feb 2018 00:15:36 GMT  
		Size: 5.7 MB (5651877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60bfcbd3788ac4df13810424982737bab34cce2e8285fe1ff696780d84ac7a38`  
		Last Modified: Tue, 27 Feb 2018 00:15:28 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:370e5958ff9dbddc71464de2dcac27a10fa507a510243174834c7ff3be4ab6e7`  
		Last Modified: Tue, 27 Feb 2018 00:15:28 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2-alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:344c95ec30efddef306ae680ea69828f2f3a3a6153af25791ce393ab89ac7fa1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7756791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bca52fb4a533db39ea10b59d1002d8757fa3add494f852e604501bdf64d28ec5`
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
# Wed, 14 Mar 2018 12:26:51 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 14 Mar 2018 12:26:53 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 14 Mar 2018 12:26:54 GMT
VOLUME [/data]
# Wed, 14 Mar 2018 12:26:54 GMT
WORKDIR /data
# Wed, 14 Mar 2018 12:26:55 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 14 Mar 2018 12:26:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 12:26:56 GMT
EXPOSE 6379/tcp
# Wed, 14 Mar 2018 12:26:57 GMT
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
	-	`sha256:933be9e8b3353d7dffbaea5c21bf6361dd37817efa93b6e3d2833e31fa8a9f3a`  
		Last Modified: Wed, 14 Mar 2018 12:28:45 GMT  
		Size: 5.8 MB (5757351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68f7c6b4b9cd4838b0b013f8b2d83b73d4fda10a7a5da7a116a7d72a90983cf4`  
		Last Modified: Wed, 14 Mar 2018 12:28:43 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d910952fbc3f5e8a0d264a68f57e4bdda6c25641ced10663078c61bc7338f43`  
		Last Modified: Wed, 14 Mar 2018 12:28:42 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2-alpine` - linux; 386

```console
$ docker pull redis@sha256:c19bc73ce12995acf00db71b17627d70f42ff27e737681c2176dbe274d411ce0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7706060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd16128c586bc125bd01ecff0491e2f96aa92810640d19ce09e866b176a6738b`
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
# Tue, 27 Mar 2018 13:11:59 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Tue, 27 Mar 2018 13:12:00 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 27 Mar 2018 13:12:00 GMT
VOLUME [/data]
# Tue, 27 Mar 2018 13:12:00 GMT
WORKDIR /data
# Tue, 27 Mar 2018 13:12:01 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Tue, 27 Mar 2018 13:12:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Mar 2018 13:12:01 GMT
EXPOSE 6379/tcp
# Tue, 27 Mar 2018 13:12:02 GMT
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
	-	`sha256:ce03dab4da296e495ec26554a78545c4a9f797a015329a20feac4527fd8ebcca`  
		Last Modified: Tue, 27 Mar 2018 13:21:28 GMT  
		Size: 5.6 MB (5569267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:791e67af5ec9dd786d419b713968cd6e738994a3be4e613c8b2eca229a77eaa2`  
		Last Modified: Tue, 27 Mar 2018 13:21:27 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9310099a97db38de476eb03d72e6b849150258f4dedafbd7e7ad4277e36bafc`  
		Last Modified: Tue, 27 Mar 2018 13:21:27 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2-alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:2440d8214d0f088b7a453e03558cf12de0da7428b17a74b46e31faa9a8203500
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.1 MB (8094441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:712ea7950437b2e2b064ff9d771311efa101eec0354411c87c3e927c06164065`
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
# Wed, 14 Mar 2018 05:42:43 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 14 Mar 2018 05:42:46 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 14 Mar 2018 05:42:48 GMT
VOLUME [/data]
# Wed, 14 Mar 2018 05:42:50 GMT
WORKDIR /data
# Wed, 14 Mar 2018 05:42:52 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 14 Mar 2018 05:42:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 05:42:55 GMT
EXPOSE 6379/tcp
# Wed, 14 Mar 2018 05:42:57 GMT
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
	-	`sha256:7ee278cf10e2f1c4cfc5f4d13db12279ee728297b6c1d08782d445f0d7bb2960`  
		Last Modified: Wed, 14 Mar 2018 05:48:25 GMT  
		Size: 6.0 MB (6001709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:090db9da1e89809803e1285d4aed6976f831c3c18284ea8d298118591401c29e`  
		Last Modified: Wed, 14 Mar 2018 05:48:23 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a132078d06e2d3a388124f1adb2ee2f680a248cf75015f57ec42e8f4c53217ed`  
		Last Modified: Wed, 14 Mar 2018 05:48:23 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2-alpine` - linux; s390x

```console
$ docker pull redis@sha256:0311a0f75a3f3e513f3188e2271bc2495d57ea85b78240bef8dce4dcbd051c64
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7829714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7aa7d2d423b1ff96b7b8a12001274fcfd15d016f804ca4a025cc537c6524292a`
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
# Wed, 14 Mar 2018 05:24:56 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 14 Mar 2018 05:24:57 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 14 Mar 2018 05:24:57 GMT
VOLUME [/data]
# Wed, 14 Mar 2018 05:24:57 GMT
WORKDIR /data
# Wed, 14 Mar 2018 05:24:57 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 14 Mar 2018 05:24:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 05:24:58 GMT
EXPOSE 6379/tcp
# Wed, 14 Mar 2018 05:24:58 GMT
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
	-	`sha256:a5b7363bbf7de86f781ad4df9f7504b06b913d9cda2a81d4cc9fd94fb016f847`  
		Last Modified: Wed, 14 Mar 2018 05:25:52 GMT  
		Size: 5.6 MB (5633612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1463f97c9143d47dd9375520228183b07e6910e90079678dd69c11153b01c111`  
		Last Modified: Wed, 14 Mar 2018 05:25:51 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4d068b4b16f95e3ca4a761210a3f313054e465182811403fc21ee9794f07b7a`  
		Last Modified: Wed, 14 Mar 2018 05:25:51 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:32bit`

```console
$ docker pull redis@sha256:7eb0d1e19dcb85b4415144a172ceda48dd94a9b8d67e385502b7237430a66884
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:32bit` - linux; amd64

```console
$ docker pull redis@sha256:853272707ca976c3137bc4853f8645c1ddf047372bba58d42a20b5016ad9cbe4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.0 MB (43009577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91ed5b7b101cd0c661b5be17443b90ae399bdfe5e07a03ffa33df1df116893e3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 13 Mar 2018 21:58:13 GMT
ADD file:080bac9a2cdcc70ad61e50045a26172f0e1acfd3a26360cb86b6e26a3307b2e1 in / 
# Tue, 13 Mar 2018 21:58:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 19:07:45 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 14 Mar 2018 19:07:45 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 19:08:17 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 27 Mar 2018 18:40:44 GMT
ENV REDIS_VERSION=4.0.9
# Tue, 27 Mar 2018 18:40:44 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.9.tar.gz
# Tue, 27 Mar 2018 18:40:45 GMT
ENV REDIS_DOWNLOAD_SHA=df4f73bc318e2f9ffb2d169a922dec57ec7c73dd07bccf875695dbeecd5ec510
# Tue, 27 Mar 2018 18:48:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Tue, 27 Mar 2018 18:49:18 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 27 Mar 2018 18:49:19 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 27 Mar 2018 18:49:19 GMT
VOLUME [/data]
# Tue, 27 Mar 2018 18:49:20 GMT
WORKDIR /data
# Tue, 27 Mar 2018 18:49:20 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 27 Mar 2018 18:49:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Mar 2018 18:49:21 GMT
EXPOSE 6379/tcp
# Tue, 27 Mar 2018 18:49:21 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:b0568b191983bc2844b2fdb48aeefa72452931bfead0a87e0515bfc602ea3b0c`  
		Last Modified: Tue, 13 Mar 2018 22:45:19 GMT  
		Size: 30.1 MB (30122402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6637dc5b29fee45c6536e100b59259a74639fbf8cc42bf9149dc807e36740af5`  
		Last Modified: Wed, 14 Mar 2018 19:13:55 GMT  
		Size: 2.1 KB (2086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b4314315f15b1cb666256edf2ac07b2a902a6d0622a0bd1120bdab9799d26c3`  
		Last Modified: Wed, 14 Mar 2018 19:13:55 GMT  
		Size: 981.7 KB (981728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e07f7fe45e5c78249f431a2b174b5c944106e6a9de1460e51345b6a606854654`  
		Last Modified: Tue, 27 Mar 2018 19:14:30 GMT  
		Size: 4.4 MB (4378596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b190e99fedf2c2e6ade49e27f1698a5e45a915969ca4c994e9d6d15f8d5293b4`  
		Last Modified: Tue, 27 Mar 2018 19:14:29 GMT  
		Size: 7.5 MB (7524259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d7ae7f4d56f4c777b52ddb73c8570411fce14514f30d44cd583d117ef873b5c`  
		Last Modified: Tue, 27 Mar 2018 19:14:27 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdf36d6f48539c51e75c3308be1fff8b63e09fa1ec8fc3714a0c78ef555aadab`  
		Last Modified: Tue, 27 Mar 2018 19:14:27 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3-32bit`

```console
$ docker pull redis@sha256:0edb304793969314a2c3a3c3b16cf71eb718d0cc6ebe9de6a35cbdacbd09cadc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:3-32bit` - linux; amd64

```console
$ docker pull redis@sha256:c1385e769db8185805dd5021e5591353ddb201ed1c4246a40502333d2dcd02dd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.7 MB (40715920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aba1cf69b680039672f3f849b6e62a68984eb13af25a57b28a0756e41c9180e7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 13 Mar 2018 21:58:13 GMT
ADD file:080bac9a2cdcc70ad61e50045a26172f0e1acfd3a26360cb86b6e26a3307b2e1 in / 
# Tue, 13 Mar 2018 21:58:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 19:07:45 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 14 Mar 2018 19:07:45 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 19:08:17 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 14 Mar 2018 19:08:17 GMT
ENV REDIS_VERSION=3.2.11
# Wed, 14 Mar 2018 19:08:18 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Wed, 14 Mar 2018 19:08:18 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Wed, 14 Mar 2018 19:09:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 19:10:40 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 19:10:41 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 14 Mar 2018 19:10:41 GMT
VOLUME [/data]
# Wed, 14 Mar 2018 19:10:41 GMT
WORKDIR /data
# Wed, 14 Mar 2018 19:10:42 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 14 Mar 2018 19:10:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 19:10:42 GMT
EXPOSE 6379/tcp
# Wed, 14 Mar 2018 19:10:43 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:b0568b191983bc2844b2fdb48aeefa72452931bfead0a87e0515bfc602ea3b0c`  
		Last Modified: Tue, 13 Mar 2018 22:45:19 GMT  
		Size: 30.1 MB (30122402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6637dc5b29fee45c6536e100b59259a74639fbf8cc42bf9149dc807e36740af5`  
		Last Modified: Wed, 14 Mar 2018 19:13:55 GMT  
		Size: 2.1 KB (2086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b4314315f15b1cb666256edf2ac07b2a902a6d0622a0bd1120bdab9799d26c3`  
		Last Modified: Wed, 14 Mar 2018 19:13:55 GMT  
		Size: 981.7 KB (981728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e1c5b2a7c6e7efe15425928229593bcfcc918ae7fc94d179e54a93eedaec94e`  
		Last Modified: Wed, 14 Mar 2018 19:14:54 GMT  
		Size: 4.4 MB (4378565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e70aece9586b394c27a9bbf00759c60c77eb73ed86589fa992fbbf415c790d01`  
		Last Modified: Wed, 14 Mar 2018 19:14:55 GMT  
		Size: 5.2 MB (5230633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14b5cb6c2274bddfdb6b36ba99e68dcd4ad56d86774161cf965963242737f17d`  
		Last Modified: Wed, 14 Mar 2018 19:14:54 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f82a24125a6ed808df268644774e89f581b2ff2caf0e52cbceb7742b1f050381`  
		Last Modified: Wed, 14 Mar 2018 19:14:53 GMT  
		Size: 407.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3-alpine`

```console
$ docker pull redis@sha256:67a778e7598563b6ff073255ee83028fe3589de2479aac092fce4950e1640981
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
$ docker pull redis@sha256:7ed194f4ac5a2876de4568c46f3c417ea8acc399bb5c960db5b6644647922912
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7963653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a060fc01d85fb8ba3deafe98d8dcd8499e95a488cdd091c05a257e5b9ae0a89`
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
# Tue, 13 Mar 2018 21:17:30 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Tue, 13 Mar 2018 21:17:31 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 13 Mar 2018 21:17:32 GMT
VOLUME [/data]
# Tue, 13 Mar 2018 21:17:32 GMT
WORKDIR /data
# Tue, 13 Mar 2018 21:17:32 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Tue, 13 Mar 2018 21:17:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 13 Mar 2018 21:17:33 GMT
EXPOSE 6379/tcp
# Tue, 13 Mar 2018 21:17:33 GMT
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
	-	`sha256:081086fe67711a2db5bed06a6b00e4e9c3a64270332b42ed08d7acc808251b3f`  
		Last Modified: Tue, 13 Mar 2018 21:23:44 GMT  
		Size: 5.9 MB (5887809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca4b2197fa021597b735c9bf8be56d4a1666fcb6f90ae424bcd4b3bc84cf83ff`  
		Last Modified: Tue, 13 Mar 2018 21:23:43 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79892d7b86a0c02644e85168eb017e661cbaf8ac91a3bda459e98ece869c3287`  
		Last Modified: Tue, 13 Mar 2018 21:23:43 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3-alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:7d9e17beadfa3c63de3810e5132c1abcfaa809149180ef79d3d13f13e1a390e7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7700876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21f223255d6be19de22af1fb9b2b91eb42bf72be8d501b6bbdf83615792e7c92`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 26 Feb 2018 23:48:41 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Mon, 26 Feb 2018 23:48:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Mon, 26 Feb 2018 23:48:42 GMT
CMD ["/bin/sh"]
# Tue, 27 Feb 2018 00:05:23 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Tue, 27 Feb 2018 00:05:30 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 27 Feb 2018 00:05:30 GMT
ENV REDIS_VERSION=3.2.11
# Tue, 27 Feb 2018 00:05:31 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Tue, 27 Feb 2018 00:05:31 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Tue, 27 Feb 2018 00:10:58 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Tue, 27 Feb 2018 00:11:02 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 27 Feb 2018 00:11:03 GMT
VOLUME [/data]
# Tue, 27 Feb 2018 00:11:04 GMT
WORKDIR /data
# Tue, 27 Feb 2018 00:11:05 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Tue, 27 Feb 2018 00:11:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Feb 2018 00:11:07 GMT
EXPOSE 6379/tcp
# Tue, 27 Feb 2018 00:11:07 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5993b3593c77413be85d318297ad8313b945069768a7e454d487fd47fa4b4343`  
		Last Modified: Mon, 26 Feb 2018 23:49:26 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2695246aa98cdefda3534828d3a709453b6ca59e38dc1080d438f1edcaf19e46`  
		Last Modified: Tue, 27 Feb 2018 00:15:28 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d633c92691be0aa43ed500d4c46d1099d3002f62bff38a7f45ae126e7421f756`  
		Last Modified: Tue, 27 Feb 2018 00:15:28 GMT  
		Size: 8.7 KB (8716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c507a51f1224dedc0e7a4d6424f302bc9c550c5b52826c4dd35eb121d30d7ac3`  
		Last Modified: Tue, 27 Feb 2018 00:15:36 GMT  
		Size: 5.7 MB (5651877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60bfcbd3788ac4df13810424982737bab34cce2e8285fe1ff696780d84ac7a38`  
		Last Modified: Tue, 27 Feb 2018 00:15:28 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:370e5958ff9dbddc71464de2dcac27a10fa507a510243174834c7ff3be4ab6e7`  
		Last Modified: Tue, 27 Feb 2018 00:15:28 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3-alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:344c95ec30efddef306ae680ea69828f2f3a3a6153af25791ce393ab89ac7fa1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7756791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bca52fb4a533db39ea10b59d1002d8757fa3add494f852e604501bdf64d28ec5`
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
# Wed, 14 Mar 2018 12:26:51 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 14 Mar 2018 12:26:53 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 14 Mar 2018 12:26:54 GMT
VOLUME [/data]
# Wed, 14 Mar 2018 12:26:54 GMT
WORKDIR /data
# Wed, 14 Mar 2018 12:26:55 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 14 Mar 2018 12:26:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 12:26:56 GMT
EXPOSE 6379/tcp
# Wed, 14 Mar 2018 12:26:57 GMT
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
	-	`sha256:933be9e8b3353d7dffbaea5c21bf6361dd37817efa93b6e3d2833e31fa8a9f3a`  
		Last Modified: Wed, 14 Mar 2018 12:28:45 GMT  
		Size: 5.8 MB (5757351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68f7c6b4b9cd4838b0b013f8b2d83b73d4fda10a7a5da7a116a7d72a90983cf4`  
		Last Modified: Wed, 14 Mar 2018 12:28:43 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d910952fbc3f5e8a0d264a68f57e4bdda6c25641ced10663078c61bc7338f43`  
		Last Modified: Wed, 14 Mar 2018 12:28:42 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3-alpine` - linux; 386

```console
$ docker pull redis@sha256:c19bc73ce12995acf00db71b17627d70f42ff27e737681c2176dbe274d411ce0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7706060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd16128c586bc125bd01ecff0491e2f96aa92810640d19ce09e866b176a6738b`
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
# Tue, 27 Mar 2018 13:11:59 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Tue, 27 Mar 2018 13:12:00 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 27 Mar 2018 13:12:00 GMT
VOLUME [/data]
# Tue, 27 Mar 2018 13:12:00 GMT
WORKDIR /data
# Tue, 27 Mar 2018 13:12:01 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Tue, 27 Mar 2018 13:12:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Mar 2018 13:12:01 GMT
EXPOSE 6379/tcp
# Tue, 27 Mar 2018 13:12:02 GMT
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
	-	`sha256:ce03dab4da296e495ec26554a78545c4a9f797a015329a20feac4527fd8ebcca`  
		Last Modified: Tue, 27 Mar 2018 13:21:28 GMT  
		Size: 5.6 MB (5569267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:791e67af5ec9dd786d419b713968cd6e738994a3be4e613c8b2eca229a77eaa2`  
		Last Modified: Tue, 27 Mar 2018 13:21:27 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9310099a97db38de476eb03d72e6b849150258f4dedafbd7e7ad4277e36bafc`  
		Last Modified: Tue, 27 Mar 2018 13:21:27 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3-alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:2440d8214d0f088b7a453e03558cf12de0da7428b17a74b46e31faa9a8203500
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.1 MB (8094441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:712ea7950437b2e2b064ff9d771311efa101eec0354411c87c3e927c06164065`
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
# Wed, 14 Mar 2018 05:42:43 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 14 Mar 2018 05:42:46 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 14 Mar 2018 05:42:48 GMT
VOLUME [/data]
# Wed, 14 Mar 2018 05:42:50 GMT
WORKDIR /data
# Wed, 14 Mar 2018 05:42:52 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 14 Mar 2018 05:42:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 05:42:55 GMT
EXPOSE 6379/tcp
# Wed, 14 Mar 2018 05:42:57 GMT
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
	-	`sha256:7ee278cf10e2f1c4cfc5f4d13db12279ee728297b6c1d08782d445f0d7bb2960`  
		Last Modified: Wed, 14 Mar 2018 05:48:25 GMT  
		Size: 6.0 MB (6001709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:090db9da1e89809803e1285d4aed6976f831c3c18284ea8d298118591401c29e`  
		Last Modified: Wed, 14 Mar 2018 05:48:23 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a132078d06e2d3a388124f1adb2ee2f680a248cf75015f57ec42e8f4c53217ed`  
		Last Modified: Wed, 14 Mar 2018 05:48:23 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3-alpine` - linux; s390x

```console
$ docker pull redis@sha256:0311a0f75a3f3e513f3188e2271bc2495d57ea85b78240bef8dce4dcbd051c64
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7829714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7aa7d2d423b1ff96b7b8a12001274fcfd15d016f804ca4a025cc537c6524292a`
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
# Wed, 14 Mar 2018 05:24:56 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 14 Mar 2018 05:24:57 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 14 Mar 2018 05:24:57 GMT
VOLUME [/data]
# Wed, 14 Mar 2018 05:24:57 GMT
WORKDIR /data
# Wed, 14 Mar 2018 05:24:57 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 14 Mar 2018 05:24:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 05:24:58 GMT
EXPOSE 6379/tcp
# Wed, 14 Mar 2018 05:24:58 GMT
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
	-	`sha256:a5b7363bbf7de86f781ad4df9f7504b06b913d9cda2a81d4cc9fd94fb016f847`  
		Last Modified: Wed, 14 Mar 2018 05:25:52 GMT  
		Size: 5.6 MB (5633612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1463f97c9143d47dd9375520228183b07e6910e90079678dd69c11153b01c111`  
		Last Modified: Wed, 14 Mar 2018 05:25:51 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4d068b4b16f95e3ca4a761210a3f313054e465182811403fc21ee9794f07b7a`  
		Last Modified: Wed, 14 Mar 2018 05:25:51 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4`

```console
$ docker pull redis@sha256:85463bd883298d4cad4a031c89b221a3b87110a75dd3170519f1c9b37ac4301b
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
$ docker pull redis@sha256:1415c3ce635e1bb7e9d672c476f70fa9ddbe720f01d419babcdd2235103f7a85
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.4 MB (39419219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5355f8853e4174a55144edfec23ac37f5bb2200ed838dab53c13c7cc835ab15`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 13 Mar 2018 21:58:13 GMT
ADD file:080bac9a2cdcc70ad61e50045a26172f0e1acfd3a26360cb86b6e26a3307b2e1 in / 
# Tue, 13 Mar 2018 21:58:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 19:07:45 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 14 Mar 2018 19:07:45 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 19:08:17 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 27 Mar 2018 18:40:44 GMT
ENV REDIS_VERSION=4.0.9
# Tue, 27 Mar 2018 18:40:44 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.9.tar.gz
# Tue, 27 Mar 2018 18:40:45 GMT
ENV REDIS_DOWNLOAD_SHA=df4f73bc318e2f9ffb2d169a922dec57ec7c73dd07bccf875695dbeecd5ec510
# Tue, 27 Mar 2018 18:41:35 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 27 Mar 2018 18:41:36 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 27 Mar 2018 18:41:36 GMT
VOLUME [/data]
# Tue, 27 Mar 2018 18:41:36 GMT
WORKDIR /data
# Tue, 27 Mar 2018 18:41:37 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 27 Mar 2018 18:41:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Mar 2018 18:41:37 GMT
EXPOSE 6379/tcp
# Tue, 27 Mar 2018 18:41:37 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:b0568b191983bc2844b2fdb48aeefa72452931bfead0a87e0515bfc602ea3b0c`  
		Last Modified: Tue, 13 Mar 2018 22:45:19 GMT  
		Size: 30.1 MB (30122402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6637dc5b29fee45c6536e100b59259a74639fbf8cc42bf9149dc807e36740af5`  
		Last Modified: Wed, 14 Mar 2018 19:13:55 GMT  
		Size: 2.1 KB (2086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b4314315f15b1cb666256edf2ac07b2a902a6d0622a0bd1120bdab9799d26c3`  
		Last Modified: Wed, 14 Mar 2018 19:13:55 GMT  
		Size: 981.7 KB (981728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fd86759b5ff7c1cee6d2f198bc345132869a90002f5285f4acbff7156ea3662`  
		Last Modified: Tue, 27 Mar 2018 19:10:34 GMT  
		Size: 8.3 MB (8312503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f04862b5a3b765a6021fae4c5265c94a5d62ad0d2008dcf4b066958b15d5895`  
		Last Modified: Tue, 27 Mar 2018 19:10:33 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2db0056aa977f6f592876d52cfca9a0127dcf5f48241b97aafd23991e52834f0`  
		Last Modified: Tue, 27 Mar 2018 19:10:33 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; arm variant v5

```console
$ docker pull redis@sha256:208668e417860d18f3c84073b763470a16ca2344c01e03b66a7be6258206f15e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 MB (37619325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db10f007738ede9a3c9e93fc4e7b4164efc1a0208af0c7316bfb2db919a2ff78`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 28 Apr 2018 08:49:49 GMT
ADD file:e9274d48b6cf2508214a554b4dbe651b4dfa95bb52dba47a96fe8842bf606a87 in / 
# Sat, 28 Apr 2018 08:49:49 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:26:08 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 28 Apr 2018 12:26:08 GMT
ENV GOSU_VERSION=1.10
# Sat, 28 Apr 2018 12:26:50 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 28 Apr 2018 12:28:10 GMT
ENV REDIS_VERSION=4.0.9
# Sat, 28 Apr 2018 12:28:11 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.9.tar.gz
# Sat, 28 Apr 2018 12:28:11 GMT
ENV REDIS_DOWNLOAD_SHA=df4f73bc318e2f9ffb2d169a922dec57ec7c73dd07bccf875695dbeecd5ec510
# Sat, 28 Apr 2018 12:29:10 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 12:29:11 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 28 Apr 2018 12:29:16 GMT
VOLUME [/data]
# Sat, 28 Apr 2018 12:29:16 GMT
WORKDIR /data
# Sat, 28 Apr 2018 12:29:16 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 28 Apr 2018 12:29:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 28 Apr 2018 12:29:22 GMT
EXPOSE 6379/tcp
# Sat, 28 Apr 2018 12:29:22 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:94b675ca74d2386dbd57e10d92f282f24ca3519fd21339c04af3f8f7e523617c`  
		Last Modified: Sat, 28 Apr 2018 08:57:53 GMT  
		Size: 28.4 MB (28435716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:588361ed476f4576bf29e632cdfe986f25ff90bfdf2fc2325c3325d6c18fc0de`  
		Last Modified: Sat, 28 Apr 2018 12:29:45 GMT  
		Size: 2.1 KB (2077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70bdf9c4f2fd118accb020c350f2d38df83baf6746eff2096eaf518b65c39a97`  
		Last Modified: Sat, 28 Apr 2018 12:29:45 GMT  
		Size: 971.3 KB (971295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d53153798cffce2e36170f0e44431cf632a1cc18a92273c8b285eaa002c68320`  
		Last Modified: Sat, 28 Apr 2018 12:30:16 GMT  
		Size: 8.2 MB (8209699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0265992a6ecba857213ef58c97c2a0fc720040717ac7015d8f52565247a948f`  
		Last Modified: Sat, 28 Apr 2018 12:30:13 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07fe63bd0d16d5d3ec35f38905841dea247d9a7562de81f6d80bfbff70c058ed`  
		Last Modified: Sat, 28 Apr 2018 12:30:13 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; arm variant v7

```console
$ docker pull redis@sha256:d91ae1b915685d44eabefb90327bdb002ef91ce55e9008709ef75f83ba843cf2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35200428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e5b47201aabb190ee78ddf61725a26a0e417ec4f90fa9a856a12209ffe9c287`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 14 Mar 2018 12:27:28 GMT
ADD file:901c5a711f269a7dd8f11eff27131cd2f6d2aee98d68f1e19b4ed954798e5d3f in / 
# Wed, 14 Mar 2018 12:27:29 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 15:44:10 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 14 Mar 2018 15:44:19 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 15:45:20 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 28 Mar 2018 00:27:29 GMT
ENV REDIS_VERSION=4.0.9
# Wed, 28 Mar 2018 00:27:30 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.9.tar.gz
# Wed, 28 Mar 2018 00:27:30 GMT
ENV REDIS_DOWNLOAD_SHA=df4f73bc318e2f9ffb2d169a922dec57ec7c73dd07bccf875695dbeecd5ec510
# Wed, 28 Mar 2018 00:28:27 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 28 Mar 2018 00:28:28 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 28 Mar 2018 00:28:28 GMT
VOLUME [/data]
# Wed, 28 Mar 2018 00:28:28 GMT
WORKDIR /data
# Wed, 28 Mar 2018 00:28:29 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 28 Mar 2018 00:28:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Mar 2018 00:28:29 GMT
EXPOSE 6379/tcp
# Wed, 28 Mar 2018 00:28:30 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:b8c016a755ce56e2fbb5a9f179c7bde3f0742c21b2727356a1658fc7d973f46a`  
		Last Modified: Wed, 14 Mar 2018 12:39:21 GMT  
		Size: 26.3 MB (26290283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b2daa0616e76420cd00e153994139c08a33c1d399f3debb98ea27f15ecb8c84`  
		Last Modified: Wed, 14 Mar 2018 15:48:31 GMT  
		Size: 2.1 KB (2075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c943f731432d73833cfa4d22e135075012e0ff4680d54710ace42c3876f9f1e0`  
		Last Modified: Wed, 14 Mar 2018 15:48:31 GMT  
		Size: 956.1 KB (956111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb2d539a93451b2bfb6c80aaf0f16cdcc83e2513029c214b770d73aac71fd6ce`  
		Last Modified: Wed, 28 Mar 2018 00:28:42 GMT  
		Size: 8.0 MB (7951423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef15f5000b3a34bd0a7e5f82ac0365545420563e8f4fdc966d8867dd11a0b8c6`  
		Last Modified: Wed, 28 Mar 2018 00:28:40 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f26db2f11d1a84e8a6bd21d5bb61fd67f8c1c61ff624f2ba905dd16246bbdbc`  
		Last Modified: Wed, 28 Mar 2018 00:28:40 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:25ef578af17004328fd06e8c2f8887c5174646b6e63a0af958d4bbc87b000569
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36893023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:606baba5eea8de5564a9dc060d81a4039573cc986532ac7edf7e8b22fe1e1ac6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 14 Mar 2018 17:25:26 GMT
ADD file:0012468f66c7e5b0efd7217a1f29f5044d4dce5a19dcd39786aa7573bc927763 in / 
# Wed, 14 Mar 2018 17:25:26 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 01:00:37 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Thu, 15 Mar 2018 01:00:37 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Mar 2018 01:01:35 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 29 Mar 2018 06:03:27 GMT
ENV REDIS_VERSION=4.0.9
# Thu, 29 Mar 2018 06:03:28 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.9.tar.gz
# Thu, 29 Mar 2018 06:03:29 GMT
ENV REDIS_DOWNLOAD_SHA=df4f73bc318e2f9ffb2d169a922dec57ec7c73dd07bccf875695dbeecd5ec510
# Thu, 29 Mar 2018 06:07:10 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 29 Mar 2018 06:07:18 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 29 Mar 2018 06:07:22 GMT
VOLUME [/data]
# Thu, 29 Mar 2018 06:07:25 GMT
WORKDIR /data
# Thu, 29 Mar 2018 06:07:29 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Thu, 29 Mar 2018 06:07:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Mar 2018 06:07:35 GMT
EXPOSE 6379/tcp
# Thu, 29 Mar 2018 06:07:39 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:784b6f32f75d9222c618727f66027b44ffa35120fc128790dfce4d1070befc90`  
		Last Modified: Wed, 14 Mar 2018 17:39:37 GMT  
		Size: 27.5 MB (27488177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d3475bc4704a0cf864207d5cc8c81043c7bf5fb4a138fbad39c3ec3ebbc1fa`  
		Last Modified: Thu, 15 Mar 2018 01:11:02 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aee833ba6520662ec17502d34841bade40071486c5fdf7c4098a666a0dfddcb`  
		Last Modified: Thu, 15 Mar 2018 01:11:00 GMT  
		Size: 948.7 KB (948651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:774577c341429cbad182395a756f5688cff71e9154578d50f431ab7e4a6d4de2`  
		Last Modified: Thu, 29 Mar 2018 06:10:11 GMT  
		Size: 8.5 MB (8453591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85f5354f99a66783e552b485d9a90696270ce68db97feb6d8af18fd3a4a1498b`  
		Last Modified: Thu, 29 Mar 2018 06:10:07 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80cb35e73c899a554bec6a4cda99656a522e541a9116affd2d974eab813e9df6`  
		Last Modified: Thu, 29 Mar 2018 06:10:08 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; 386

```console
$ docker pull redis@sha256:81f9125fa9f19ce23fa5f857577070d6c5c5a5f3ec6d2810946224d2a78691fe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.8 MB (38756115 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a189b31052360ee49eeffe1bf1e61ae112e53ac307639bfeaba0bf9831633657`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 27 Mar 2018 14:24:52 GMT
ADD file:4e79b8dd98596d0354ef30e136278a257e021a36d6d6271ec4c1dafaf07889ae in / 
# Tue, 27 Mar 2018 14:24:53 GMT
CMD ["bash"]
# Sun, 01 Apr 2018 01:29:01 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sun, 01 Apr 2018 01:29:02 GMT
ENV GOSU_VERSION=1.10
# Sun, 01 Apr 2018 01:29:52 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sun, 01 Apr 2018 01:37:58 GMT
ENV REDIS_VERSION=4.0.9
# Sun, 01 Apr 2018 01:37:59 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.9.tar.gz
# Sun, 01 Apr 2018 01:37:59 GMT
ENV REDIS_DOWNLOAD_SHA=df4f73bc318e2f9ffb2d169a922dec57ec7c73dd07bccf875695dbeecd5ec510
# Sun, 01 Apr 2018 01:39:06 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sun, 01 Apr 2018 01:39:07 GMT
RUN mkdir /data && chown redis:redis /data
# Sun, 01 Apr 2018 01:39:07 GMT
VOLUME [/data]
# Sun, 01 Apr 2018 01:39:08 GMT
WORKDIR /data
# Sun, 01 Apr 2018 01:39:08 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sun, 01 Apr 2018 01:39:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 01 Apr 2018 01:39:09 GMT
EXPOSE 6379/tcp
# Sun, 01 Apr 2018 01:39:09 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:ec7b1998b022b3eb218010907097139cebc6fb8b1aaab342d847d1f283ef3967`  
		Last Modified: Thu, 15 Mar 2018 01:00:27 GMT  
		Size: 30.3 MB (30273196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:489503ea3d98ea7b22c3eff6103a6905ec74d9153e63ef67a7eef37f18843efa`  
		Last Modified: Sun, 01 Apr 2018 01:45:14 GMT  
		Size: 2.1 KB (2082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa698c1a7ceed1d9a98ec7d86e6d2a338e7bb9a6cb46391e7c967a3bad733b0`  
		Last Modified: Sun, 01 Apr 2018 01:45:15 GMT  
		Size: 960.8 KB (960816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c005407f48291fd782655241abb30bdf3e877fa0affb8f3a26e1a6a1486881a5`  
		Last Modified: Sun, 01 Apr 2018 01:58:26 GMT  
		Size: 7.5 MB (7519519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e51820c4e5928a0f96ab4ca0a5aabe329b3c5455505d76aafc80c08d31504643`  
		Last Modified: Sun, 01 Apr 2018 01:58:24 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b036a253883bea411e504914449a0d392726eb34d3c7b5a642089112587372c8`  
		Last Modified: Sun, 01 Apr 2018 01:58:24 GMT  
		Size: 405.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; ppc64le

```console
$ docker pull redis@sha256:5b5d3f7fdc651e8d57a1ac7be9ca86ccd3c6bb0f68a71df9d805291dba210dc0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.9 MB (38947601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bffdb0ddcb220612ba706f43deac8771c3da87700ff52c61d152a66fd6aeb88`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 28 Apr 2018 08:18:08 GMT
ADD file:cc51ef60d7cb3b70c82127b8721de1b99378a9d4fc246dffa2ef5ffa2d9ab805 in / 
# Sat, 28 Apr 2018 08:18:09 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 13:00:58 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 28 Apr 2018 13:00:58 GMT
ENV GOSU_VERSION=1.10
# Sat, 28 Apr 2018 13:02:44 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 28 Apr 2018 13:05:47 GMT
ENV REDIS_VERSION=4.0.9
# Sat, 28 Apr 2018 13:05:49 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.9.tar.gz
# Sat, 28 Apr 2018 13:05:50 GMT
ENV REDIS_DOWNLOAD_SHA=df4f73bc318e2f9ffb2d169a922dec57ec7c73dd07bccf875695dbeecd5ec510
# Sat, 28 Apr 2018 13:07:57 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 13:08:00 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 28 Apr 2018 13:08:01 GMT
VOLUME [/data]
# Sat, 28 Apr 2018 13:08:02 GMT
WORKDIR /data
# Sat, 28 Apr 2018 13:08:03 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 28 Apr 2018 13:08:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 28 Apr 2018 13:08:05 GMT
EXPOSE 6379/tcp
# Sat, 28 Apr 2018 13:08:06 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:7745ff03a317ccaa10ff03129a2330b1c154aecaf51a892b7d99d5e1dbeb86cc`  
		Last Modified: Sat, 28 Apr 2018 08:25:29 GMT  
		Size: 29.3 MB (29317351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:095fbb0f7ef3b4b93e7cc9189e36c52b64f5608e9c028b7c4fa7a1467af366f7`  
		Last Modified: Sat, 28 Apr 2018 13:08:29 GMT  
		Size: 2.1 KB (2096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5ac27b943636e1baf2b28f6b7beff6f100a6372eb61bfb1a3c924eba0553011`  
		Last Modified: Sat, 28 Apr 2018 13:08:30 GMT  
		Size: 950.5 KB (950544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddd77ce6be6cd194392d852a06c83af66fa945213697cf29110e79ceb5a7a316`  
		Last Modified: Sat, 28 Apr 2018 13:08:57 GMT  
		Size: 8.7 MB (8677073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b873f5c723d17cbf7f14de9afdc46ffecf7613792db367fb5ce792dfe0d3c1ec`  
		Last Modified: Sat, 28 Apr 2018 13:08:54 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:260025116bbe75dd095ab543c60faa01b6eabb41506db76bd87f53e5078bb006`  
		Last Modified: Sat, 28 Apr 2018 13:08:54 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; s390x

```console
$ docker pull redis@sha256:f6fcbdd72d53914adcb61ea5949d12b134506baf275751a21d57d964cc12666d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.2 MB (40218188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74c77245766a88c91fd9711ff2b1f61c40a2ec132c6e06863a7f8cdc4594eafe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 14 Mar 2018 05:22:12 GMT
ADD file:5cd4239ce601f059eb8656abcae1c4827d7d75823a0e5e1a60bb2704635bde19 in / 
# Wed, 14 Mar 2018 05:22:12 GMT
CMD ["bash"]
# Fri, 16 Mar 2018 05:24:30 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 16 Mar 2018 05:24:30 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Mar 2018 05:24:49 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 27 Mar 2018 19:19:11 GMT
ENV REDIS_VERSION=4.0.9
# Tue, 27 Mar 2018 19:19:11 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.9.tar.gz
# Tue, 27 Mar 2018 19:19:11 GMT
ENV REDIS_DOWNLOAD_SHA=df4f73bc318e2f9ffb2d169a922dec57ec7c73dd07bccf875695dbeecd5ec510
# Wed, 28 Mar 2018 05:25:07 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 28 Mar 2018 05:25:08 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 28 Mar 2018 05:25:08 GMT
VOLUME [/data]
# Wed, 28 Mar 2018 05:25:08 GMT
WORKDIR /data
# Wed, 28 Mar 2018 05:25:08 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 28 Mar 2018 05:25:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Mar 2018 05:25:09 GMT
EXPOSE 6379/tcp
# Wed, 28 Mar 2018 05:25:09 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:73a91a9f561cad48038a81f8d9c37a90e39c3d0c806aaedb15f2f77092870ce4`  
		Last Modified: Wed, 14 Mar 2018 05:26:42 GMT  
		Size: 30.3 MB (30301960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8c4a0627308986c079aac5fcd4443370e25d46e7d2121a8ec46f5e93f70893e`  
		Last Modified: Fri, 16 Mar 2018 05:26:21 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2379099d7972abdfc0ee1b53049fd97e8fd9dd0132e05f544d08a18026289c9d`  
		Last Modified: Fri, 16 Mar 2018 05:26:22 GMT  
		Size: 966.9 KB (966876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42656d0fcb2214662b68c4f3979ae4c3b8e0f585c410900802972890d76d777e`  
		Last Modified: Wed, 28 Mar 2018 05:26:14 GMT  
		Size: 8.9 MB (8946762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37f190ac7ef10ec628b67b937ed7cf85b7f1f564576e13484f622817935a7639`  
		Last Modified: Wed, 28 Mar 2018 05:26:12 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53c47b89dd58aaddb2a3b9f481af17fb3cd8010a7a52baf7590889d9c5f0fb1b`  
		Last Modified: Wed, 28 Mar 2018 05:26:12 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0`

```console
$ docker pull redis@sha256:85463bd883298d4cad4a031c89b221a3b87110a75dd3170519f1c9b37ac4301b
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
$ docker pull redis@sha256:1415c3ce635e1bb7e9d672c476f70fa9ddbe720f01d419babcdd2235103f7a85
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.4 MB (39419219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5355f8853e4174a55144edfec23ac37f5bb2200ed838dab53c13c7cc835ab15`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 13 Mar 2018 21:58:13 GMT
ADD file:080bac9a2cdcc70ad61e50045a26172f0e1acfd3a26360cb86b6e26a3307b2e1 in / 
# Tue, 13 Mar 2018 21:58:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 19:07:45 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 14 Mar 2018 19:07:45 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 19:08:17 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 27 Mar 2018 18:40:44 GMT
ENV REDIS_VERSION=4.0.9
# Tue, 27 Mar 2018 18:40:44 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.9.tar.gz
# Tue, 27 Mar 2018 18:40:45 GMT
ENV REDIS_DOWNLOAD_SHA=df4f73bc318e2f9ffb2d169a922dec57ec7c73dd07bccf875695dbeecd5ec510
# Tue, 27 Mar 2018 18:41:35 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 27 Mar 2018 18:41:36 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 27 Mar 2018 18:41:36 GMT
VOLUME [/data]
# Tue, 27 Mar 2018 18:41:36 GMT
WORKDIR /data
# Tue, 27 Mar 2018 18:41:37 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 27 Mar 2018 18:41:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Mar 2018 18:41:37 GMT
EXPOSE 6379/tcp
# Tue, 27 Mar 2018 18:41:37 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:b0568b191983bc2844b2fdb48aeefa72452931bfead0a87e0515bfc602ea3b0c`  
		Last Modified: Tue, 13 Mar 2018 22:45:19 GMT  
		Size: 30.1 MB (30122402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6637dc5b29fee45c6536e100b59259a74639fbf8cc42bf9149dc807e36740af5`  
		Last Modified: Wed, 14 Mar 2018 19:13:55 GMT  
		Size: 2.1 KB (2086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b4314315f15b1cb666256edf2ac07b2a902a6d0622a0bd1120bdab9799d26c3`  
		Last Modified: Wed, 14 Mar 2018 19:13:55 GMT  
		Size: 981.7 KB (981728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fd86759b5ff7c1cee6d2f198bc345132869a90002f5285f4acbff7156ea3662`  
		Last Modified: Tue, 27 Mar 2018 19:10:34 GMT  
		Size: 8.3 MB (8312503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f04862b5a3b765a6021fae4c5265c94a5d62ad0d2008dcf4b066958b15d5895`  
		Last Modified: Tue, 27 Mar 2018 19:10:33 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2db0056aa977f6f592876d52cfca9a0127dcf5f48241b97aafd23991e52834f0`  
		Last Modified: Tue, 27 Mar 2018 19:10:33 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; arm variant v5

```console
$ docker pull redis@sha256:208668e417860d18f3c84073b763470a16ca2344c01e03b66a7be6258206f15e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 MB (37619325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db10f007738ede9a3c9e93fc4e7b4164efc1a0208af0c7316bfb2db919a2ff78`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 28 Apr 2018 08:49:49 GMT
ADD file:e9274d48b6cf2508214a554b4dbe651b4dfa95bb52dba47a96fe8842bf606a87 in / 
# Sat, 28 Apr 2018 08:49:49 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:26:08 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 28 Apr 2018 12:26:08 GMT
ENV GOSU_VERSION=1.10
# Sat, 28 Apr 2018 12:26:50 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 28 Apr 2018 12:28:10 GMT
ENV REDIS_VERSION=4.0.9
# Sat, 28 Apr 2018 12:28:11 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.9.tar.gz
# Sat, 28 Apr 2018 12:28:11 GMT
ENV REDIS_DOWNLOAD_SHA=df4f73bc318e2f9ffb2d169a922dec57ec7c73dd07bccf875695dbeecd5ec510
# Sat, 28 Apr 2018 12:29:10 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 12:29:11 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 28 Apr 2018 12:29:16 GMT
VOLUME [/data]
# Sat, 28 Apr 2018 12:29:16 GMT
WORKDIR /data
# Sat, 28 Apr 2018 12:29:16 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 28 Apr 2018 12:29:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 28 Apr 2018 12:29:22 GMT
EXPOSE 6379/tcp
# Sat, 28 Apr 2018 12:29:22 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:94b675ca74d2386dbd57e10d92f282f24ca3519fd21339c04af3f8f7e523617c`  
		Last Modified: Sat, 28 Apr 2018 08:57:53 GMT  
		Size: 28.4 MB (28435716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:588361ed476f4576bf29e632cdfe986f25ff90bfdf2fc2325c3325d6c18fc0de`  
		Last Modified: Sat, 28 Apr 2018 12:29:45 GMT  
		Size: 2.1 KB (2077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70bdf9c4f2fd118accb020c350f2d38df83baf6746eff2096eaf518b65c39a97`  
		Last Modified: Sat, 28 Apr 2018 12:29:45 GMT  
		Size: 971.3 KB (971295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d53153798cffce2e36170f0e44431cf632a1cc18a92273c8b285eaa002c68320`  
		Last Modified: Sat, 28 Apr 2018 12:30:16 GMT  
		Size: 8.2 MB (8209699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0265992a6ecba857213ef58c97c2a0fc720040717ac7015d8f52565247a948f`  
		Last Modified: Sat, 28 Apr 2018 12:30:13 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07fe63bd0d16d5d3ec35f38905841dea247d9a7562de81f6d80bfbff70c058ed`  
		Last Modified: Sat, 28 Apr 2018 12:30:13 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; arm variant v7

```console
$ docker pull redis@sha256:d91ae1b915685d44eabefb90327bdb002ef91ce55e9008709ef75f83ba843cf2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35200428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e5b47201aabb190ee78ddf61725a26a0e417ec4f90fa9a856a12209ffe9c287`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 14 Mar 2018 12:27:28 GMT
ADD file:901c5a711f269a7dd8f11eff27131cd2f6d2aee98d68f1e19b4ed954798e5d3f in / 
# Wed, 14 Mar 2018 12:27:29 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 15:44:10 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 14 Mar 2018 15:44:19 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 15:45:20 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 28 Mar 2018 00:27:29 GMT
ENV REDIS_VERSION=4.0.9
# Wed, 28 Mar 2018 00:27:30 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.9.tar.gz
# Wed, 28 Mar 2018 00:27:30 GMT
ENV REDIS_DOWNLOAD_SHA=df4f73bc318e2f9ffb2d169a922dec57ec7c73dd07bccf875695dbeecd5ec510
# Wed, 28 Mar 2018 00:28:27 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 28 Mar 2018 00:28:28 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 28 Mar 2018 00:28:28 GMT
VOLUME [/data]
# Wed, 28 Mar 2018 00:28:28 GMT
WORKDIR /data
# Wed, 28 Mar 2018 00:28:29 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 28 Mar 2018 00:28:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Mar 2018 00:28:29 GMT
EXPOSE 6379/tcp
# Wed, 28 Mar 2018 00:28:30 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:b8c016a755ce56e2fbb5a9f179c7bde3f0742c21b2727356a1658fc7d973f46a`  
		Last Modified: Wed, 14 Mar 2018 12:39:21 GMT  
		Size: 26.3 MB (26290283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b2daa0616e76420cd00e153994139c08a33c1d399f3debb98ea27f15ecb8c84`  
		Last Modified: Wed, 14 Mar 2018 15:48:31 GMT  
		Size: 2.1 KB (2075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c943f731432d73833cfa4d22e135075012e0ff4680d54710ace42c3876f9f1e0`  
		Last Modified: Wed, 14 Mar 2018 15:48:31 GMT  
		Size: 956.1 KB (956111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb2d539a93451b2bfb6c80aaf0f16cdcc83e2513029c214b770d73aac71fd6ce`  
		Last Modified: Wed, 28 Mar 2018 00:28:42 GMT  
		Size: 8.0 MB (7951423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef15f5000b3a34bd0a7e5f82ac0365545420563e8f4fdc966d8867dd11a0b8c6`  
		Last Modified: Wed, 28 Mar 2018 00:28:40 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f26db2f11d1a84e8a6bd21d5bb61fd67f8c1c61ff624f2ba905dd16246bbdbc`  
		Last Modified: Wed, 28 Mar 2018 00:28:40 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:25ef578af17004328fd06e8c2f8887c5174646b6e63a0af958d4bbc87b000569
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36893023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:606baba5eea8de5564a9dc060d81a4039573cc986532ac7edf7e8b22fe1e1ac6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 14 Mar 2018 17:25:26 GMT
ADD file:0012468f66c7e5b0efd7217a1f29f5044d4dce5a19dcd39786aa7573bc927763 in / 
# Wed, 14 Mar 2018 17:25:26 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 01:00:37 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Thu, 15 Mar 2018 01:00:37 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Mar 2018 01:01:35 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 29 Mar 2018 06:03:27 GMT
ENV REDIS_VERSION=4.0.9
# Thu, 29 Mar 2018 06:03:28 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.9.tar.gz
# Thu, 29 Mar 2018 06:03:29 GMT
ENV REDIS_DOWNLOAD_SHA=df4f73bc318e2f9ffb2d169a922dec57ec7c73dd07bccf875695dbeecd5ec510
# Thu, 29 Mar 2018 06:07:10 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 29 Mar 2018 06:07:18 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 29 Mar 2018 06:07:22 GMT
VOLUME [/data]
# Thu, 29 Mar 2018 06:07:25 GMT
WORKDIR /data
# Thu, 29 Mar 2018 06:07:29 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Thu, 29 Mar 2018 06:07:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Mar 2018 06:07:35 GMT
EXPOSE 6379/tcp
# Thu, 29 Mar 2018 06:07:39 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:784b6f32f75d9222c618727f66027b44ffa35120fc128790dfce4d1070befc90`  
		Last Modified: Wed, 14 Mar 2018 17:39:37 GMT  
		Size: 27.5 MB (27488177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d3475bc4704a0cf864207d5cc8c81043c7bf5fb4a138fbad39c3ec3ebbc1fa`  
		Last Modified: Thu, 15 Mar 2018 01:11:02 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aee833ba6520662ec17502d34841bade40071486c5fdf7c4098a666a0dfddcb`  
		Last Modified: Thu, 15 Mar 2018 01:11:00 GMT  
		Size: 948.7 KB (948651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:774577c341429cbad182395a756f5688cff71e9154578d50f431ab7e4a6d4de2`  
		Last Modified: Thu, 29 Mar 2018 06:10:11 GMT  
		Size: 8.5 MB (8453591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85f5354f99a66783e552b485d9a90696270ce68db97feb6d8af18fd3a4a1498b`  
		Last Modified: Thu, 29 Mar 2018 06:10:07 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80cb35e73c899a554bec6a4cda99656a522e541a9116affd2d974eab813e9df6`  
		Last Modified: Thu, 29 Mar 2018 06:10:08 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; 386

```console
$ docker pull redis@sha256:81f9125fa9f19ce23fa5f857577070d6c5c5a5f3ec6d2810946224d2a78691fe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.8 MB (38756115 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a189b31052360ee49eeffe1bf1e61ae112e53ac307639bfeaba0bf9831633657`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 27 Mar 2018 14:24:52 GMT
ADD file:4e79b8dd98596d0354ef30e136278a257e021a36d6d6271ec4c1dafaf07889ae in / 
# Tue, 27 Mar 2018 14:24:53 GMT
CMD ["bash"]
# Sun, 01 Apr 2018 01:29:01 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sun, 01 Apr 2018 01:29:02 GMT
ENV GOSU_VERSION=1.10
# Sun, 01 Apr 2018 01:29:52 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sun, 01 Apr 2018 01:37:58 GMT
ENV REDIS_VERSION=4.0.9
# Sun, 01 Apr 2018 01:37:59 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.9.tar.gz
# Sun, 01 Apr 2018 01:37:59 GMT
ENV REDIS_DOWNLOAD_SHA=df4f73bc318e2f9ffb2d169a922dec57ec7c73dd07bccf875695dbeecd5ec510
# Sun, 01 Apr 2018 01:39:06 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sun, 01 Apr 2018 01:39:07 GMT
RUN mkdir /data && chown redis:redis /data
# Sun, 01 Apr 2018 01:39:07 GMT
VOLUME [/data]
# Sun, 01 Apr 2018 01:39:08 GMT
WORKDIR /data
# Sun, 01 Apr 2018 01:39:08 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sun, 01 Apr 2018 01:39:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 01 Apr 2018 01:39:09 GMT
EXPOSE 6379/tcp
# Sun, 01 Apr 2018 01:39:09 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:ec7b1998b022b3eb218010907097139cebc6fb8b1aaab342d847d1f283ef3967`  
		Last Modified: Thu, 15 Mar 2018 01:00:27 GMT  
		Size: 30.3 MB (30273196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:489503ea3d98ea7b22c3eff6103a6905ec74d9153e63ef67a7eef37f18843efa`  
		Last Modified: Sun, 01 Apr 2018 01:45:14 GMT  
		Size: 2.1 KB (2082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa698c1a7ceed1d9a98ec7d86e6d2a338e7bb9a6cb46391e7c967a3bad733b0`  
		Last Modified: Sun, 01 Apr 2018 01:45:15 GMT  
		Size: 960.8 KB (960816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c005407f48291fd782655241abb30bdf3e877fa0affb8f3a26e1a6a1486881a5`  
		Last Modified: Sun, 01 Apr 2018 01:58:26 GMT  
		Size: 7.5 MB (7519519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e51820c4e5928a0f96ab4ca0a5aabe329b3c5455505d76aafc80c08d31504643`  
		Last Modified: Sun, 01 Apr 2018 01:58:24 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b036a253883bea411e504914449a0d392726eb34d3c7b5a642089112587372c8`  
		Last Modified: Sun, 01 Apr 2018 01:58:24 GMT  
		Size: 405.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; ppc64le

```console
$ docker pull redis@sha256:5b5d3f7fdc651e8d57a1ac7be9ca86ccd3c6bb0f68a71df9d805291dba210dc0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.9 MB (38947601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bffdb0ddcb220612ba706f43deac8771c3da87700ff52c61d152a66fd6aeb88`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 28 Apr 2018 08:18:08 GMT
ADD file:cc51ef60d7cb3b70c82127b8721de1b99378a9d4fc246dffa2ef5ffa2d9ab805 in / 
# Sat, 28 Apr 2018 08:18:09 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 13:00:58 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 28 Apr 2018 13:00:58 GMT
ENV GOSU_VERSION=1.10
# Sat, 28 Apr 2018 13:02:44 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 28 Apr 2018 13:05:47 GMT
ENV REDIS_VERSION=4.0.9
# Sat, 28 Apr 2018 13:05:49 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.9.tar.gz
# Sat, 28 Apr 2018 13:05:50 GMT
ENV REDIS_DOWNLOAD_SHA=df4f73bc318e2f9ffb2d169a922dec57ec7c73dd07bccf875695dbeecd5ec510
# Sat, 28 Apr 2018 13:07:57 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 13:08:00 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 28 Apr 2018 13:08:01 GMT
VOLUME [/data]
# Sat, 28 Apr 2018 13:08:02 GMT
WORKDIR /data
# Sat, 28 Apr 2018 13:08:03 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 28 Apr 2018 13:08:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 28 Apr 2018 13:08:05 GMT
EXPOSE 6379/tcp
# Sat, 28 Apr 2018 13:08:06 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:7745ff03a317ccaa10ff03129a2330b1c154aecaf51a892b7d99d5e1dbeb86cc`  
		Last Modified: Sat, 28 Apr 2018 08:25:29 GMT  
		Size: 29.3 MB (29317351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:095fbb0f7ef3b4b93e7cc9189e36c52b64f5608e9c028b7c4fa7a1467af366f7`  
		Last Modified: Sat, 28 Apr 2018 13:08:29 GMT  
		Size: 2.1 KB (2096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5ac27b943636e1baf2b28f6b7beff6f100a6372eb61bfb1a3c924eba0553011`  
		Last Modified: Sat, 28 Apr 2018 13:08:30 GMT  
		Size: 950.5 KB (950544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddd77ce6be6cd194392d852a06c83af66fa945213697cf29110e79ceb5a7a316`  
		Last Modified: Sat, 28 Apr 2018 13:08:57 GMT  
		Size: 8.7 MB (8677073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b873f5c723d17cbf7f14de9afdc46ffecf7613792db367fb5ce792dfe0d3c1ec`  
		Last Modified: Sat, 28 Apr 2018 13:08:54 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:260025116bbe75dd095ab543c60faa01b6eabb41506db76bd87f53e5078bb006`  
		Last Modified: Sat, 28 Apr 2018 13:08:54 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; s390x

```console
$ docker pull redis@sha256:f6fcbdd72d53914adcb61ea5949d12b134506baf275751a21d57d964cc12666d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.2 MB (40218188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74c77245766a88c91fd9711ff2b1f61c40a2ec132c6e06863a7f8cdc4594eafe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 14 Mar 2018 05:22:12 GMT
ADD file:5cd4239ce601f059eb8656abcae1c4827d7d75823a0e5e1a60bb2704635bde19 in / 
# Wed, 14 Mar 2018 05:22:12 GMT
CMD ["bash"]
# Fri, 16 Mar 2018 05:24:30 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 16 Mar 2018 05:24:30 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Mar 2018 05:24:49 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 27 Mar 2018 19:19:11 GMT
ENV REDIS_VERSION=4.0.9
# Tue, 27 Mar 2018 19:19:11 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.9.tar.gz
# Tue, 27 Mar 2018 19:19:11 GMT
ENV REDIS_DOWNLOAD_SHA=df4f73bc318e2f9ffb2d169a922dec57ec7c73dd07bccf875695dbeecd5ec510
# Wed, 28 Mar 2018 05:25:07 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 28 Mar 2018 05:25:08 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 28 Mar 2018 05:25:08 GMT
VOLUME [/data]
# Wed, 28 Mar 2018 05:25:08 GMT
WORKDIR /data
# Wed, 28 Mar 2018 05:25:08 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 28 Mar 2018 05:25:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Mar 2018 05:25:09 GMT
EXPOSE 6379/tcp
# Wed, 28 Mar 2018 05:25:09 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:73a91a9f561cad48038a81f8d9c37a90e39c3d0c806aaedb15f2f77092870ce4`  
		Last Modified: Wed, 14 Mar 2018 05:26:42 GMT  
		Size: 30.3 MB (30301960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8c4a0627308986c079aac5fcd4443370e25d46e7d2121a8ec46f5e93f70893e`  
		Last Modified: Fri, 16 Mar 2018 05:26:21 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2379099d7972abdfc0ee1b53049fd97e8fd9dd0132e05f544d08a18026289c9d`  
		Last Modified: Fri, 16 Mar 2018 05:26:22 GMT  
		Size: 966.9 KB (966876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42656d0fcb2214662b68c4f3979ae4c3b8e0f585c410900802972890d76d777e`  
		Last Modified: Wed, 28 Mar 2018 05:26:14 GMT  
		Size: 8.9 MB (8946762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37f190ac7ef10ec628b67b937ed7cf85b7f1f564576e13484f622817935a7639`  
		Last Modified: Wed, 28 Mar 2018 05:26:12 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53c47b89dd58aaddb2a3b9f481af17fb3cd8010a7a52baf7590889d9c5f0fb1b`  
		Last Modified: Wed, 28 Mar 2018 05:26:12 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0-32bit`

```console
$ docker pull redis@sha256:7eb0d1e19dcb85b4415144a172ceda48dd94a9b8d67e385502b7237430a66884
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4.0-32bit` - linux; amd64

```console
$ docker pull redis@sha256:853272707ca976c3137bc4853f8645c1ddf047372bba58d42a20b5016ad9cbe4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.0 MB (43009577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91ed5b7b101cd0c661b5be17443b90ae399bdfe5e07a03ffa33df1df116893e3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 13 Mar 2018 21:58:13 GMT
ADD file:080bac9a2cdcc70ad61e50045a26172f0e1acfd3a26360cb86b6e26a3307b2e1 in / 
# Tue, 13 Mar 2018 21:58:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 19:07:45 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 14 Mar 2018 19:07:45 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 19:08:17 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 27 Mar 2018 18:40:44 GMT
ENV REDIS_VERSION=4.0.9
# Tue, 27 Mar 2018 18:40:44 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.9.tar.gz
# Tue, 27 Mar 2018 18:40:45 GMT
ENV REDIS_DOWNLOAD_SHA=df4f73bc318e2f9ffb2d169a922dec57ec7c73dd07bccf875695dbeecd5ec510
# Tue, 27 Mar 2018 18:48:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Tue, 27 Mar 2018 18:49:18 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 27 Mar 2018 18:49:19 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 27 Mar 2018 18:49:19 GMT
VOLUME [/data]
# Tue, 27 Mar 2018 18:49:20 GMT
WORKDIR /data
# Tue, 27 Mar 2018 18:49:20 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 27 Mar 2018 18:49:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Mar 2018 18:49:21 GMT
EXPOSE 6379/tcp
# Tue, 27 Mar 2018 18:49:21 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:b0568b191983bc2844b2fdb48aeefa72452931bfead0a87e0515bfc602ea3b0c`  
		Last Modified: Tue, 13 Mar 2018 22:45:19 GMT  
		Size: 30.1 MB (30122402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6637dc5b29fee45c6536e100b59259a74639fbf8cc42bf9149dc807e36740af5`  
		Last Modified: Wed, 14 Mar 2018 19:13:55 GMT  
		Size: 2.1 KB (2086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b4314315f15b1cb666256edf2ac07b2a902a6d0622a0bd1120bdab9799d26c3`  
		Last Modified: Wed, 14 Mar 2018 19:13:55 GMT  
		Size: 981.7 KB (981728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e07f7fe45e5c78249f431a2b174b5c944106e6a9de1460e51345b6a606854654`  
		Last Modified: Tue, 27 Mar 2018 19:14:30 GMT  
		Size: 4.4 MB (4378596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b190e99fedf2c2e6ade49e27f1698a5e45a915969ca4c994e9d6d15f8d5293b4`  
		Last Modified: Tue, 27 Mar 2018 19:14:29 GMT  
		Size: 7.5 MB (7524259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d7ae7f4d56f4c777b52ddb73c8570411fce14514f30d44cd583d117ef873b5c`  
		Last Modified: Tue, 27 Mar 2018 19:14:27 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdf36d6f48539c51e75c3308be1fff8b63e09fa1ec8fc3714a0c78ef555aadab`  
		Last Modified: Tue, 27 Mar 2018 19:14:27 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.9`

```console
$ docker pull redis@sha256:85463bd883298d4cad4a031c89b221a3b87110a75dd3170519f1c9b37ac4301b
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

### `redis:4.0.9` - linux; amd64

```console
$ docker pull redis@sha256:1415c3ce635e1bb7e9d672c476f70fa9ddbe720f01d419babcdd2235103f7a85
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.4 MB (39419219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5355f8853e4174a55144edfec23ac37f5bb2200ed838dab53c13c7cc835ab15`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 13 Mar 2018 21:58:13 GMT
ADD file:080bac9a2cdcc70ad61e50045a26172f0e1acfd3a26360cb86b6e26a3307b2e1 in / 
# Tue, 13 Mar 2018 21:58:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 19:07:45 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 14 Mar 2018 19:07:45 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 19:08:17 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 27 Mar 2018 18:40:44 GMT
ENV REDIS_VERSION=4.0.9
# Tue, 27 Mar 2018 18:40:44 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.9.tar.gz
# Tue, 27 Mar 2018 18:40:45 GMT
ENV REDIS_DOWNLOAD_SHA=df4f73bc318e2f9ffb2d169a922dec57ec7c73dd07bccf875695dbeecd5ec510
# Tue, 27 Mar 2018 18:41:35 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 27 Mar 2018 18:41:36 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 27 Mar 2018 18:41:36 GMT
VOLUME [/data]
# Tue, 27 Mar 2018 18:41:36 GMT
WORKDIR /data
# Tue, 27 Mar 2018 18:41:37 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 27 Mar 2018 18:41:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Mar 2018 18:41:37 GMT
EXPOSE 6379/tcp
# Tue, 27 Mar 2018 18:41:37 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:b0568b191983bc2844b2fdb48aeefa72452931bfead0a87e0515bfc602ea3b0c`  
		Last Modified: Tue, 13 Mar 2018 22:45:19 GMT  
		Size: 30.1 MB (30122402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6637dc5b29fee45c6536e100b59259a74639fbf8cc42bf9149dc807e36740af5`  
		Last Modified: Wed, 14 Mar 2018 19:13:55 GMT  
		Size: 2.1 KB (2086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b4314315f15b1cb666256edf2ac07b2a902a6d0622a0bd1120bdab9799d26c3`  
		Last Modified: Wed, 14 Mar 2018 19:13:55 GMT  
		Size: 981.7 KB (981728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fd86759b5ff7c1cee6d2f198bc345132869a90002f5285f4acbff7156ea3662`  
		Last Modified: Tue, 27 Mar 2018 19:10:34 GMT  
		Size: 8.3 MB (8312503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f04862b5a3b765a6021fae4c5265c94a5d62ad0d2008dcf4b066958b15d5895`  
		Last Modified: Tue, 27 Mar 2018 19:10:33 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2db0056aa977f6f592876d52cfca9a0127dcf5f48241b97aafd23991e52834f0`  
		Last Modified: Tue, 27 Mar 2018 19:10:33 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.9` - linux; arm variant v5

```console
$ docker pull redis@sha256:208668e417860d18f3c84073b763470a16ca2344c01e03b66a7be6258206f15e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 MB (37619325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db10f007738ede9a3c9e93fc4e7b4164efc1a0208af0c7316bfb2db919a2ff78`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 28 Apr 2018 08:49:49 GMT
ADD file:e9274d48b6cf2508214a554b4dbe651b4dfa95bb52dba47a96fe8842bf606a87 in / 
# Sat, 28 Apr 2018 08:49:49 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:26:08 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 28 Apr 2018 12:26:08 GMT
ENV GOSU_VERSION=1.10
# Sat, 28 Apr 2018 12:26:50 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 28 Apr 2018 12:28:10 GMT
ENV REDIS_VERSION=4.0.9
# Sat, 28 Apr 2018 12:28:11 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.9.tar.gz
# Sat, 28 Apr 2018 12:28:11 GMT
ENV REDIS_DOWNLOAD_SHA=df4f73bc318e2f9ffb2d169a922dec57ec7c73dd07bccf875695dbeecd5ec510
# Sat, 28 Apr 2018 12:29:10 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 12:29:11 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 28 Apr 2018 12:29:16 GMT
VOLUME [/data]
# Sat, 28 Apr 2018 12:29:16 GMT
WORKDIR /data
# Sat, 28 Apr 2018 12:29:16 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 28 Apr 2018 12:29:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 28 Apr 2018 12:29:22 GMT
EXPOSE 6379/tcp
# Sat, 28 Apr 2018 12:29:22 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:94b675ca74d2386dbd57e10d92f282f24ca3519fd21339c04af3f8f7e523617c`  
		Last Modified: Sat, 28 Apr 2018 08:57:53 GMT  
		Size: 28.4 MB (28435716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:588361ed476f4576bf29e632cdfe986f25ff90bfdf2fc2325c3325d6c18fc0de`  
		Last Modified: Sat, 28 Apr 2018 12:29:45 GMT  
		Size: 2.1 KB (2077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70bdf9c4f2fd118accb020c350f2d38df83baf6746eff2096eaf518b65c39a97`  
		Last Modified: Sat, 28 Apr 2018 12:29:45 GMT  
		Size: 971.3 KB (971295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d53153798cffce2e36170f0e44431cf632a1cc18a92273c8b285eaa002c68320`  
		Last Modified: Sat, 28 Apr 2018 12:30:16 GMT  
		Size: 8.2 MB (8209699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0265992a6ecba857213ef58c97c2a0fc720040717ac7015d8f52565247a948f`  
		Last Modified: Sat, 28 Apr 2018 12:30:13 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07fe63bd0d16d5d3ec35f38905841dea247d9a7562de81f6d80bfbff70c058ed`  
		Last Modified: Sat, 28 Apr 2018 12:30:13 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.9` - linux; arm variant v7

```console
$ docker pull redis@sha256:d91ae1b915685d44eabefb90327bdb002ef91ce55e9008709ef75f83ba843cf2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35200428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e5b47201aabb190ee78ddf61725a26a0e417ec4f90fa9a856a12209ffe9c287`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 14 Mar 2018 12:27:28 GMT
ADD file:901c5a711f269a7dd8f11eff27131cd2f6d2aee98d68f1e19b4ed954798e5d3f in / 
# Wed, 14 Mar 2018 12:27:29 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 15:44:10 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 14 Mar 2018 15:44:19 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 15:45:20 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 28 Mar 2018 00:27:29 GMT
ENV REDIS_VERSION=4.0.9
# Wed, 28 Mar 2018 00:27:30 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.9.tar.gz
# Wed, 28 Mar 2018 00:27:30 GMT
ENV REDIS_DOWNLOAD_SHA=df4f73bc318e2f9ffb2d169a922dec57ec7c73dd07bccf875695dbeecd5ec510
# Wed, 28 Mar 2018 00:28:27 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 28 Mar 2018 00:28:28 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 28 Mar 2018 00:28:28 GMT
VOLUME [/data]
# Wed, 28 Mar 2018 00:28:28 GMT
WORKDIR /data
# Wed, 28 Mar 2018 00:28:29 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 28 Mar 2018 00:28:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Mar 2018 00:28:29 GMT
EXPOSE 6379/tcp
# Wed, 28 Mar 2018 00:28:30 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:b8c016a755ce56e2fbb5a9f179c7bde3f0742c21b2727356a1658fc7d973f46a`  
		Last Modified: Wed, 14 Mar 2018 12:39:21 GMT  
		Size: 26.3 MB (26290283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b2daa0616e76420cd00e153994139c08a33c1d399f3debb98ea27f15ecb8c84`  
		Last Modified: Wed, 14 Mar 2018 15:48:31 GMT  
		Size: 2.1 KB (2075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c943f731432d73833cfa4d22e135075012e0ff4680d54710ace42c3876f9f1e0`  
		Last Modified: Wed, 14 Mar 2018 15:48:31 GMT  
		Size: 956.1 KB (956111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb2d539a93451b2bfb6c80aaf0f16cdcc83e2513029c214b770d73aac71fd6ce`  
		Last Modified: Wed, 28 Mar 2018 00:28:42 GMT  
		Size: 8.0 MB (7951423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef15f5000b3a34bd0a7e5f82ac0365545420563e8f4fdc966d8867dd11a0b8c6`  
		Last Modified: Wed, 28 Mar 2018 00:28:40 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f26db2f11d1a84e8a6bd21d5bb61fd67f8c1c61ff624f2ba905dd16246bbdbc`  
		Last Modified: Wed, 28 Mar 2018 00:28:40 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.9` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:25ef578af17004328fd06e8c2f8887c5174646b6e63a0af958d4bbc87b000569
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36893023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:606baba5eea8de5564a9dc060d81a4039573cc986532ac7edf7e8b22fe1e1ac6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 14 Mar 2018 17:25:26 GMT
ADD file:0012468f66c7e5b0efd7217a1f29f5044d4dce5a19dcd39786aa7573bc927763 in / 
# Wed, 14 Mar 2018 17:25:26 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 01:00:37 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Thu, 15 Mar 2018 01:00:37 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Mar 2018 01:01:35 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 29 Mar 2018 06:03:27 GMT
ENV REDIS_VERSION=4.0.9
# Thu, 29 Mar 2018 06:03:28 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.9.tar.gz
# Thu, 29 Mar 2018 06:03:29 GMT
ENV REDIS_DOWNLOAD_SHA=df4f73bc318e2f9ffb2d169a922dec57ec7c73dd07bccf875695dbeecd5ec510
# Thu, 29 Mar 2018 06:07:10 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 29 Mar 2018 06:07:18 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 29 Mar 2018 06:07:22 GMT
VOLUME [/data]
# Thu, 29 Mar 2018 06:07:25 GMT
WORKDIR /data
# Thu, 29 Mar 2018 06:07:29 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Thu, 29 Mar 2018 06:07:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Mar 2018 06:07:35 GMT
EXPOSE 6379/tcp
# Thu, 29 Mar 2018 06:07:39 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:784b6f32f75d9222c618727f66027b44ffa35120fc128790dfce4d1070befc90`  
		Last Modified: Wed, 14 Mar 2018 17:39:37 GMT  
		Size: 27.5 MB (27488177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d3475bc4704a0cf864207d5cc8c81043c7bf5fb4a138fbad39c3ec3ebbc1fa`  
		Last Modified: Thu, 15 Mar 2018 01:11:02 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aee833ba6520662ec17502d34841bade40071486c5fdf7c4098a666a0dfddcb`  
		Last Modified: Thu, 15 Mar 2018 01:11:00 GMT  
		Size: 948.7 KB (948651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:774577c341429cbad182395a756f5688cff71e9154578d50f431ab7e4a6d4de2`  
		Last Modified: Thu, 29 Mar 2018 06:10:11 GMT  
		Size: 8.5 MB (8453591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85f5354f99a66783e552b485d9a90696270ce68db97feb6d8af18fd3a4a1498b`  
		Last Modified: Thu, 29 Mar 2018 06:10:07 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80cb35e73c899a554bec6a4cda99656a522e541a9116affd2d974eab813e9df6`  
		Last Modified: Thu, 29 Mar 2018 06:10:08 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.9` - linux; 386

```console
$ docker pull redis@sha256:81f9125fa9f19ce23fa5f857577070d6c5c5a5f3ec6d2810946224d2a78691fe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.8 MB (38756115 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a189b31052360ee49eeffe1bf1e61ae112e53ac307639bfeaba0bf9831633657`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 27 Mar 2018 14:24:52 GMT
ADD file:4e79b8dd98596d0354ef30e136278a257e021a36d6d6271ec4c1dafaf07889ae in / 
# Tue, 27 Mar 2018 14:24:53 GMT
CMD ["bash"]
# Sun, 01 Apr 2018 01:29:01 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sun, 01 Apr 2018 01:29:02 GMT
ENV GOSU_VERSION=1.10
# Sun, 01 Apr 2018 01:29:52 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sun, 01 Apr 2018 01:37:58 GMT
ENV REDIS_VERSION=4.0.9
# Sun, 01 Apr 2018 01:37:59 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.9.tar.gz
# Sun, 01 Apr 2018 01:37:59 GMT
ENV REDIS_DOWNLOAD_SHA=df4f73bc318e2f9ffb2d169a922dec57ec7c73dd07bccf875695dbeecd5ec510
# Sun, 01 Apr 2018 01:39:06 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sun, 01 Apr 2018 01:39:07 GMT
RUN mkdir /data && chown redis:redis /data
# Sun, 01 Apr 2018 01:39:07 GMT
VOLUME [/data]
# Sun, 01 Apr 2018 01:39:08 GMT
WORKDIR /data
# Sun, 01 Apr 2018 01:39:08 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sun, 01 Apr 2018 01:39:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 01 Apr 2018 01:39:09 GMT
EXPOSE 6379/tcp
# Sun, 01 Apr 2018 01:39:09 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:ec7b1998b022b3eb218010907097139cebc6fb8b1aaab342d847d1f283ef3967`  
		Last Modified: Thu, 15 Mar 2018 01:00:27 GMT  
		Size: 30.3 MB (30273196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:489503ea3d98ea7b22c3eff6103a6905ec74d9153e63ef67a7eef37f18843efa`  
		Last Modified: Sun, 01 Apr 2018 01:45:14 GMT  
		Size: 2.1 KB (2082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa698c1a7ceed1d9a98ec7d86e6d2a338e7bb9a6cb46391e7c967a3bad733b0`  
		Last Modified: Sun, 01 Apr 2018 01:45:15 GMT  
		Size: 960.8 KB (960816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c005407f48291fd782655241abb30bdf3e877fa0affb8f3a26e1a6a1486881a5`  
		Last Modified: Sun, 01 Apr 2018 01:58:26 GMT  
		Size: 7.5 MB (7519519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e51820c4e5928a0f96ab4ca0a5aabe329b3c5455505d76aafc80c08d31504643`  
		Last Modified: Sun, 01 Apr 2018 01:58:24 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b036a253883bea411e504914449a0d392726eb34d3c7b5a642089112587372c8`  
		Last Modified: Sun, 01 Apr 2018 01:58:24 GMT  
		Size: 405.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.9` - linux; ppc64le

```console
$ docker pull redis@sha256:5b5d3f7fdc651e8d57a1ac7be9ca86ccd3c6bb0f68a71df9d805291dba210dc0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.9 MB (38947601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bffdb0ddcb220612ba706f43deac8771c3da87700ff52c61d152a66fd6aeb88`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 28 Apr 2018 08:18:08 GMT
ADD file:cc51ef60d7cb3b70c82127b8721de1b99378a9d4fc246dffa2ef5ffa2d9ab805 in / 
# Sat, 28 Apr 2018 08:18:09 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 13:00:58 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 28 Apr 2018 13:00:58 GMT
ENV GOSU_VERSION=1.10
# Sat, 28 Apr 2018 13:02:44 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 28 Apr 2018 13:05:47 GMT
ENV REDIS_VERSION=4.0.9
# Sat, 28 Apr 2018 13:05:49 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.9.tar.gz
# Sat, 28 Apr 2018 13:05:50 GMT
ENV REDIS_DOWNLOAD_SHA=df4f73bc318e2f9ffb2d169a922dec57ec7c73dd07bccf875695dbeecd5ec510
# Sat, 28 Apr 2018 13:07:57 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 13:08:00 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 28 Apr 2018 13:08:01 GMT
VOLUME [/data]
# Sat, 28 Apr 2018 13:08:02 GMT
WORKDIR /data
# Sat, 28 Apr 2018 13:08:03 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 28 Apr 2018 13:08:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 28 Apr 2018 13:08:05 GMT
EXPOSE 6379/tcp
# Sat, 28 Apr 2018 13:08:06 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:7745ff03a317ccaa10ff03129a2330b1c154aecaf51a892b7d99d5e1dbeb86cc`  
		Last Modified: Sat, 28 Apr 2018 08:25:29 GMT  
		Size: 29.3 MB (29317351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:095fbb0f7ef3b4b93e7cc9189e36c52b64f5608e9c028b7c4fa7a1467af366f7`  
		Last Modified: Sat, 28 Apr 2018 13:08:29 GMT  
		Size: 2.1 KB (2096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5ac27b943636e1baf2b28f6b7beff6f100a6372eb61bfb1a3c924eba0553011`  
		Last Modified: Sat, 28 Apr 2018 13:08:30 GMT  
		Size: 950.5 KB (950544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddd77ce6be6cd194392d852a06c83af66fa945213697cf29110e79ceb5a7a316`  
		Last Modified: Sat, 28 Apr 2018 13:08:57 GMT  
		Size: 8.7 MB (8677073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b873f5c723d17cbf7f14de9afdc46ffecf7613792db367fb5ce792dfe0d3c1ec`  
		Last Modified: Sat, 28 Apr 2018 13:08:54 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:260025116bbe75dd095ab543c60faa01b6eabb41506db76bd87f53e5078bb006`  
		Last Modified: Sat, 28 Apr 2018 13:08:54 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.9` - linux; s390x

```console
$ docker pull redis@sha256:f6fcbdd72d53914adcb61ea5949d12b134506baf275751a21d57d964cc12666d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.2 MB (40218188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74c77245766a88c91fd9711ff2b1f61c40a2ec132c6e06863a7f8cdc4594eafe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 14 Mar 2018 05:22:12 GMT
ADD file:5cd4239ce601f059eb8656abcae1c4827d7d75823a0e5e1a60bb2704635bde19 in / 
# Wed, 14 Mar 2018 05:22:12 GMT
CMD ["bash"]
# Fri, 16 Mar 2018 05:24:30 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 16 Mar 2018 05:24:30 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Mar 2018 05:24:49 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 27 Mar 2018 19:19:11 GMT
ENV REDIS_VERSION=4.0.9
# Tue, 27 Mar 2018 19:19:11 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.9.tar.gz
# Tue, 27 Mar 2018 19:19:11 GMT
ENV REDIS_DOWNLOAD_SHA=df4f73bc318e2f9ffb2d169a922dec57ec7c73dd07bccf875695dbeecd5ec510
# Wed, 28 Mar 2018 05:25:07 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 28 Mar 2018 05:25:08 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 28 Mar 2018 05:25:08 GMT
VOLUME [/data]
# Wed, 28 Mar 2018 05:25:08 GMT
WORKDIR /data
# Wed, 28 Mar 2018 05:25:08 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 28 Mar 2018 05:25:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Mar 2018 05:25:09 GMT
EXPOSE 6379/tcp
# Wed, 28 Mar 2018 05:25:09 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:73a91a9f561cad48038a81f8d9c37a90e39c3d0c806aaedb15f2f77092870ce4`  
		Last Modified: Wed, 14 Mar 2018 05:26:42 GMT  
		Size: 30.3 MB (30301960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8c4a0627308986c079aac5fcd4443370e25d46e7d2121a8ec46f5e93f70893e`  
		Last Modified: Fri, 16 Mar 2018 05:26:21 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2379099d7972abdfc0ee1b53049fd97e8fd9dd0132e05f544d08a18026289c9d`  
		Last Modified: Fri, 16 Mar 2018 05:26:22 GMT  
		Size: 966.9 KB (966876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42656d0fcb2214662b68c4f3979ae4c3b8e0f585c410900802972890d76d777e`  
		Last Modified: Wed, 28 Mar 2018 05:26:14 GMT  
		Size: 8.9 MB (8946762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37f190ac7ef10ec628b67b937ed7cf85b7f1f564576e13484f622817935a7639`  
		Last Modified: Wed, 28 Mar 2018 05:26:12 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53c47b89dd58aaddb2a3b9f481af17fb3cd8010a7a52baf7590889d9c5f0fb1b`  
		Last Modified: Wed, 28 Mar 2018 05:26:12 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.9-32bit`

```console
$ docker pull redis@sha256:7eb0d1e19dcb85b4415144a172ceda48dd94a9b8d67e385502b7237430a66884
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4.0.9-32bit` - linux; amd64

```console
$ docker pull redis@sha256:853272707ca976c3137bc4853f8645c1ddf047372bba58d42a20b5016ad9cbe4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.0 MB (43009577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91ed5b7b101cd0c661b5be17443b90ae399bdfe5e07a03ffa33df1df116893e3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 13 Mar 2018 21:58:13 GMT
ADD file:080bac9a2cdcc70ad61e50045a26172f0e1acfd3a26360cb86b6e26a3307b2e1 in / 
# Tue, 13 Mar 2018 21:58:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 19:07:45 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 14 Mar 2018 19:07:45 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 19:08:17 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 27 Mar 2018 18:40:44 GMT
ENV REDIS_VERSION=4.0.9
# Tue, 27 Mar 2018 18:40:44 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.9.tar.gz
# Tue, 27 Mar 2018 18:40:45 GMT
ENV REDIS_DOWNLOAD_SHA=df4f73bc318e2f9ffb2d169a922dec57ec7c73dd07bccf875695dbeecd5ec510
# Tue, 27 Mar 2018 18:48:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Tue, 27 Mar 2018 18:49:18 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 27 Mar 2018 18:49:19 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 27 Mar 2018 18:49:19 GMT
VOLUME [/data]
# Tue, 27 Mar 2018 18:49:20 GMT
WORKDIR /data
# Tue, 27 Mar 2018 18:49:20 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 27 Mar 2018 18:49:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Mar 2018 18:49:21 GMT
EXPOSE 6379/tcp
# Tue, 27 Mar 2018 18:49:21 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:b0568b191983bc2844b2fdb48aeefa72452931bfead0a87e0515bfc602ea3b0c`  
		Last Modified: Tue, 13 Mar 2018 22:45:19 GMT  
		Size: 30.1 MB (30122402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6637dc5b29fee45c6536e100b59259a74639fbf8cc42bf9149dc807e36740af5`  
		Last Modified: Wed, 14 Mar 2018 19:13:55 GMT  
		Size: 2.1 KB (2086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b4314315f15b1cb666256edf2ac07b2a902a6d0622a0bd1120bdab9799d26c3`  
		Last Modified: Wed, 14 Mar 2018 19:13:55 GMT  
		Size: 981.7 KB (981728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e07f7fe45e5c78249f431a2b174b5c944106e6a9de1460e51345b6a606854654`  
		Last Modified: Tue, 27 Mar 2018 19:14:30 GMT  
		Size: 4.4 MB (4378596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b190e99fedf2c2e6ade49e27f1698a5e45a915969ca4c994e9d6d15f8d5293b4`  
		Last Modified: Tue, 27 Mar 2018 19:14:29 GMT  
		Size: 7.5 MB (7524259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d7ae7f4d56f4c777b52ddb73c8570411fce14514f30d44cd583d117ef873b5c`  
		Last Modified: Tue, 27 Mar 2018 19:14:27 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdf36d6f48539c51e75c3308be1fff8b63e09fa1ec8fc3714a0c78ef555aadab`  
		Last Modified: Tue, 27 Mar 2018 19:14:27 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.9-alpine`

```console
$ docker pull redis@sha256:e6e3a62b67b4e5c956b8814ac64ce3fe531c1093606f2a4fe5492921f6592388
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redis:4.0.9-alpine` - linux; amd64

```console
$ docker pull redis@sha256:aab35d6ec4c49ef5c1674f0582eeb2f6e90ee0fd3010d8a806d8833f36cc0525
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10588033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98bd7cfc43b8ef0ff130465e3d5427c0771002c2f35a6a9b62cb2d04602bed0a`
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
# Tue, 27 Mar 2018 18:49:45 GMT
ENV REDIS_VERSION=4.0.9
# Tue, 27 Mar 2018 18:49:45 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.9.tar.gz
# Tue, 27 Mar 2018 18:49:46 GMT
ENV REDIS_DOWNLOAD_SHA=df4f73bc318e2f9ffb2d169a922dec57ec7c73dd07bccf875695dbeecd5ec510
# Tue, 27 Mar 2018 18:50:12 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Tue, 27 Mar 2018 18:50:13 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 27 Mar 2018 18:50:13 GMT
VOLUME [/data]
# Tue, 27 Mar 2018 18:50:13 GMT
WORKDIR /data
# Tue, 27 Mar 2018 18:50:14 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Tue, 27 Mar 2018 18:50:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Mar 2018 18:50:14 GMT
EXPOSE 6379/tcp
# Tue, 27 Mar 2018 18:50:14 GMT
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
	-	`sha256:7f8fb829cc486bf533b5923c875ecf46834fd07265c785d6c7b9367405331283`  
		Last Modified: Tue, 27 Mar 2018 19:15:50 GMT  
		Size: 8.5 MB (8512191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c72e0cff027d9cf1386d8c931e1a14e9e7d5bd7eb61ea0b4e24f021395ea5329`  
		Last Modified: Tue, 27 Mar 2018 19:15:48 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:276d6b52cd5b0a1ec792aff4b4feb6969e60985969775a009b277104b9532396`  
		Last Modified: Tue, 27 Mar 2018 19:15:49 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.9-alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:59eaf4dcd54b94f1ea2fd5ced79496dd78eff315521bb2143e9be6bc0864720f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10322380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6f50c03111ef9f08bc1b3cd055e398e8196e071ad6a5f9a2541343199c1bbac`
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
# Thu, 29 Mar 2018 06:08:08 GMT
ENV REDIS_VERSION=4.0.9
# Thu, 29 Mar 2018 06:08:09 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.9.tar.gz
# Thu, 29 Mar 2018 06:08:10 GMT
ENV REDIS_DOWNLOAD_SHA=df4f73bc318e2f9ffb2d169a922dec57ec7c73dd07bccf875695dbeecd5ec510
# Thu, 29 Mar 2018 06:09:03 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 29 Mar 2018 06:09:09 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 29 Mar 2018 06:09:12 GMT
VOLUME [/data]
# Thu, 29 Mar 2018 06:09:15 GMT
WORKDIR /data
# Thu, 29 Mar 2018 06:09:20 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Thu, 29 Mar 2018 06:09:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Mar 2018 06:09:28 GMT
EXPOSE 6379/tcp
# Thu, 29 Mar 2018 06:09:31 GMT
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
	-	`sha256:dcf88862710e5c78e8886fe533065cf4fba961ea54176d422e48e40cc7d946aa`  
		Last Modified: Thu, 29 Mar 2018 06:11:38 GMT  
		Size: 8.3 MB (8322940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c529efd63fbb7f9b6c65f75dc7daa3ffc102724ba5a76cf47302267132ada9ff`  
		Last Modified: Thu, 29 Mar 2018 06:11:35 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:001bce0541f2df372672318f3f61ffe6a98cc0de90d6202e5771922f30a5ea32`  
		Last Modified: Thu, 29 Mar 2018 06:11:35 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.9-alpine` - linux; 386

```console
$ docker pull redis@sha256:4aff3aa2ed33d7c9b315ecba042daf7bee79980f8c52a37f289ca44b8b6dafc1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.2 MB (10204981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0327ebd40768e59fedd9f861c52a3934c66415eb6445a083303a1b4a8925fab`
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
# Sun, 01 Apr 2018 01:41:08 GMT
ENV REDIS_VERSION=4.0.9
# Sun, 01 Apr 2018 01:41:09 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.9.tar.gz
# Sun, 01 Apr 2018 01:41:09 GMT
ENV REDIS_DOWNLOAD_SHA=df4f73bc318e2f9ffb2d169a922dec57ec7c73dd07bccf875695dbeecd5ec510
# Sun, 01 Apr 2018 01:41:40 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sun, 01 Apr 2018 01:41:40 GMT
RUN mkdir /data && chown redis:redis /data
# Sun, 01 Apr 2018 01:41:41 GMT
VOLUME [/data]
# Sun, 01 Apr 2018 01:41:41 GMT
WORKDIR /data
# Sun, 01 Apr 2018 01:41:41 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sun, 01 Apr 2018 01:41:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 01 Apr 2018 01:41:42 GMT
EXPOSE 6379/tcp
# Sun, 01 Apr 2018 01:41:42 GMT
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
	-	`sha256:1529dd3ec4ded883ac5b2007da30421291133a12410afa145caa0e0c1568d68b`  
		Last Modified: Sun, 01 Apr 2018 02:17:11 GMT  
		Size: 8.1 MB (8068183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fb3834a2961b65da09a4cf7ce95f0ebe4c3384a8ae054d60b6b4203793ffb9a`  
		Last Modified: Sun, 01 Apr 2018 02:17:08 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:961dbcdeb5e08df88b827a1f5ad6641499ece941c7c713d1e40bebc6ebc4f070`  
		Last Modified: Sun, 01 Apr 2018 02:17:09 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.9-alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:85dd21e7469b1281659b7d90fdcce12c787e9fe9a1afca2bef827bbd6e53daae
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10745585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a8214bec47cb6bc3d32c65f421207b76007a536f18313cf6df04e8d0b6db23d`
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
# Wed, 28 Mar 2018 05:38:56 GMT
ENV REDIS_VERSION=4.0.9
# Wed, 28 Mar 2018 05:38:57 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.9.tar.gz
# Wed, 28 Mar 2018 05:38:58 GMT
ENV REDIS_DOWNLOAD_SHA=df4f73bc318e2f9ffb2d169a922dec57ec7c73dd07bccf875695dbeecd5ec510
# Wed, 28 Mar 2018 05:39:37 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 28 Mar 2018 05:39:41 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 28 Mar 2018 05:39:42 GMT
VOLUME [/data]
# Wed, 28 Mar 2018 05:39:44 GMT
WORKDIR /data
# Wed, 28 Mar 2018 05:39:45 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 28 Mar 2018 05:39:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Mar 2018 05:39:48 GMT
EXPOSE 6379/tcp
# Wed, 28 Mar 2018 05:39:49 GMT
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
	-	`sha256:ab493fcbef7514018d93349485aa7e9e955be681888598aef5969ebc7fde6a55`  
		Last Modified: Wed, 28 Mar 2018 05:40:48 GMT  
		Size: 8.7 MB (8652856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c00df95c6d6ae6f0f80d387389c1c257bf98fd6963d868a89be5eebd589dc3a`  
		Last Modified: Wed, 28 Mar 2018 05:40:45 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cb83b66a6fbd7ea196ad371998671e2a807dcfd2721419597d643f3ef6a13fd`  
		Last Modified: Wed, 28 Mar 2018 05:40:47 GMT  
		Size: 398.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.9-alpine` - linux; s390x

```console
$ docker pull redis@sha256:f13a2bc64940a13c3dc3667f8a809eda21a7bcaf21af932e2d5c062d932d42f2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10526572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22646242f8c44f91bddaa1c9aa674b3082d9c213f1b71ba2cad8d9b49ecee74c`
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
# Wed, 28 Mar 2018 05:25:16 GMT
ENV REDIS_VERSION=4.0.9
# Wed, 28 Mar 2018 05:25:16 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.9.tar.gz
# Wed, 28 Mar 2018 05:25:16 GMT
ENV REDIS_DOWNLOAD_SHA=df4f73bc318e2f9ffb2d169a922dec57ec7c73dd07bccf875695dbeecd5ec510
# Wed, 28 Mar 2018 05:25:39 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 28 Mar 2018 05:25:39 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 28 Mar 2018 05:25:39 GMT
VOLUME [/data]
# Wed, 28 Mar 2018 05:25:40 GMT
WORKDIR /data
# Wed, 28 Mar 2018 05:25:40 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 28 Mar 2018 05:25:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Mar 2018 05:25:40 GMT
EXPOSE 6379/tcp
# Wed, 28 Mar 2018 05:25:41 GMT
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
	-	`sha256:e208aa5b950770d2b8e3821c98c6dd619856ff6af2f26e25631c5133295125fe`  
		Last Modified: Wed, 28 Mar 2018 05:26:39 GMT  
		Size: 8.3 MB (8330469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ae24862912e064fe726c0a8e3b6a9a07595aa26a8560e82a9775fb5dc5bb208`  
		Last Modified: Wed, 28 Mar 2018 05:26:37 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de9529f0a031c1d5303bf6ce160e1f2c36dcca93385c3ecfd4f020a765fdcd85`  
		Last Modified: Wed, 28 Mar 2018 05:26:37 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0-alpine`

```console
$ docker pull redis@sha256:e6e3a62b67b4e5c956b8814ac64ce3fe531c1093606f2a4fe5492921f6592388
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
$ docker pull redis@sha256:aab35d6ec4c49ef5c1674f0582eeb2f6e90ee0fd3010d8a806d8833f36cc0525
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10588033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98bd7cfc43b8ef0ff130465e3d5427c0771002c2f35a6a9b62cb2d04602bed0a`
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
# Tue, 27 Mar 2018 18:49:45 GMT
ENV REDIS_VERSION=4.0.9
# Tue, 27 Mar 2018 18:49:45 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.9.tar.gz
# Tue, 27 Mar 2018 18:49:46 GMT
ENV REDIS_DOWNLOAD_SHA=df4f73bc318e2f9ffb2d169a922dec57ec7c73dd07bccf875695dbeecd5ec510
# Tue, 27 Mar 2018 18:50:12 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Tue, 27 Mar 2018 18:50:13 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 27 Mar 2018 18:50:13 GMT
VOLUME [/data]
# Tue, 27 Mar 2018 18:50:13 GMT
WORKDIR /data
# Tue, 27 Mar 2018 18:50:14 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Tue, 27 Mar 2018 18:50:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Mar 2018 18:50:14 GMT
EXPOSE 6379/tcp
# Tue, 27 Mar 2018 18:50:14 GMT
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
	-	`sha256:7f8fb829cc486bf533b5923c875ecf46834fd07265c785d6c7b9367405331283`  
		Last Modified: Tue, 27 Mar 2018 19:15:50 GMT  
		Size: 8.5 MB (8512191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c72e0cff027d9cf1386d8c931e1a14e9e7d5bd7eb61ea0b4e24f021395ea5329`  
		Last Modified: Tue, 27 Mar 2018 19:15:48 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:276d6b52cd5b0a1ec792aff4b4feb6969e60985969775a009b277104b9532396`  
		Last Modified: Tue, 27 Mar 2018 19:15:49 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:59eaf4dcd54b94f1ea2fd5ced79496dd78eff315521bb2143e9be6bc0864720f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10322380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6f50c03111ef9f08bc1b3cd055e398e8196e071ad6a5f9a2541343199c1bbac`
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
# Thu, 29 Mar 2018 06:08:08 GMT
ENV REDIS_VERSION=4.0.9
# Thu, 29 Mar 2018 06:08:09 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.9.tar.gz
# Thu, 29 Mar 2018 06:08:10 GMT
ENV REDIS_DOWNLOAD_SHA=df4f73bc318e2f9ffb2d169a922dec57ec7c73dd07bccf875695dbeecd5ec510
# Thu, 29 Mar 2018 06:09:03 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 29 Mar 2018 06:09:09 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 29 Mar 2018 06:09:12 GMT
VOLUME [/data]
# Thu, 29 Mar 2018 06:09:15 GMT
WORKDIR /data
# Thu, 29 Mar 2018 06:09:20 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Thu, 29 Mar 2018 06:09:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Mar 2018 06:09:28 GMT
EXPOSE 6379/tcp
# Thu, 29 Mar 2018 06:09:31 GMT
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
	-	`sha256:dcf88862710e5c78e8886fe533065cf4fba961ea54176d422e48e40cc7d946aa`  
		Last Modified: Thu, 29 Mar 2018 06:11:38 GMT  
		Size: 8.3 MB (8322940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c529efd63fbb7f9b6c65f75dc7daa3ffc102724ba5a76cf47302267132ada9ff`  
		Last Modified: Thu, 29 Mar 2018 06:11:35 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:001bce0541f2df372672318f3f61ffe6a98cc0de90d6202e5771922f30a5ea32`  
		Last Modified: Thu, 29 Mar 2018 06:11:35 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine` - linux; 386

```console
$ docker pull redis@sha256:4aff3aa2ed33d7c9b315ecba042daf7bee79980f8c52a37f289ca44b8b6dafc1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.2 MB (10204981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0327ebd40768e59fedd9f861c52a3934c66415eb6445a083303a1b4a8925fab`
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
# Sun, 01 Apr 2018 01:41:08 GMT
ENV REDIS_VERSION=4.0.9
# Sun, 01 Apr 2018 01:41:09 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.9.tar.gz
# Sun, 01 Apr 2018 01:41:09 GMT
ENV REDIS_DOWNLOAD_SHA=df4f73bc318e2f9ffb2d169a922dec57ec7c73dd07bccf875695dbeecd5ec510
# Sun, 01 Apr 2018 01:41:40 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sun, 01 Apr 2018 01:41:40 GMT
RUN mkdir /data && chown redis:redis /data
# Sun, 01 Apr 2018 01:41:41 GMT
VOLUME [/data]
# Sun, 01 Apr 2018 01:41:41 GMT
WORKDIR /data
# Sun, 01 Apr 2018 01:41:41 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sun, 01 Apr 2018 01:41:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 01 Apr 2018 01:41:42 GMT
EXPOSE 6379/tcp
# Sun, 01 Apr 2018 01:41:42 GMT
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
	-	`sha256:1529dd3ec4ded883ac5b2007da30421291133a12410afa145caa0e0c1568d68b`  
		Last Modified: Sun, 01 Apr 2018 02:17:11 GMT  
		Size: 8.1 MB (8068183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fb3834a2961b65da09a4cf7ce95f0ebe4c3384a8ae054d60b6b4203793ffb9a`  
		Last Modified: Sun, 01 Apr 2018 02:17:08 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:961dbcdeb5e08df88b827a1f5ad6641499ece941c7c713d1e40bebc6ebc4f070`  
		Last Modified: Sun, 01 Apr 2018 02:17:09 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:85dd21e7469b1281659b7d90fdcce12c787e9fe9a1afca2bef827bbd6e53daae
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10745585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a8214bec47cb6bc3d32c65f421207b76007a536f18313cf6df04e8d0b6db23d`
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
# Wed, 28 Mar 2018 05:38:56 GMT
ENV REDIS_VERSION=4.0.9
# Wed, 28 Mar 2018 05:38:57 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.9.tar.gz
# Wed, 28 Mar 2018 05:38:58 GMT
ENV REDIS_DOWNLOAD_SHA=df4f73bc318e2f9ffb2d169a922dec57ec7c73dd07bccf875695dbeecd5ec510
# Wed, 28 Mar 2018 05:39:37 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 28 Mar 2018 05:39:41 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 28 Mar 2018 05:39:42 GMT
VOLUME [/data]
# Wed, 28 Mar 2018 05:39:44 GMT
WORKDIR /data
# Wed, 28 Mar 2018 05:39:45 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 28 Mar 2018 05:39:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Mar 2018 05:39:48 GMT
EXPOSE 6379/tcp
# Wed, 28 Mar 2018 05:39:49 GMT
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
	-	`sha256:ab493fcbef7514018d93349485aa7e9e955be681888598aef5969ebc7fde6a55`  
		Last Modified: Wed, 28 Mar 2018 05:40:48 GMT  
		Size: 8.7 MB (8652856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c00df95c6d6ae6f0f80d387389c1c257bf98fd6963d868a89be5eebd589dc3a`  
		Last Modified: Wed, 28 Mar 2018 05:40:45 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cb83b66a6fbd7ea196ad371998671e2a807dcfd2721419597d643f3ef6a13fd`  
		Last Modified: Wed, 28 Mar 2018 05:40:47 GMT  
		Size: 398.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine` - linux; s390x

```console
$ docker pull redis@sha256:f13a2bc64940a13c3dc3667f8a809eda21a7bcaf21af932e2d5c062d932d42f2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10526572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22646242f8c44f91bddaa1c9aa674b3082d9c213f1b71ba2cad8d9b49ecee74c`
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
# Wed, 28 Mar 2018 05:25:16 GMT
ENV REDIS_VERSION=4.0.9
# Wed, 28 Mar 2018 05:25:16 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.9.tar.gz
# Wed, 28 Mar 2018 05:25:16 GMT
ENV REDIS_DOWNLOAD_SHA=df4f73bc318e2f9ffb2d169a922dec57ec7c73dd07bccf875695dbeecd5ec510
# Wed, 28 Mar 2018 05:25:39 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 28 Mar 2018 05:25:39 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 28 Mar 2018 05:25:39 GMT
VOLUME [/data]
# Wed, 28 Mar 2018 05:25:40 GMT
WORKDIR /data
# Wed, 28 Mar 2018 05:25:40 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 28 Mar 2018 05:25:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Mar 2018 05:25:40 GMT
EXPOSE 6379/tcp
# Wed, 28 Mar 2018 05:25:41 GMT
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
	-	`sha256:e208aa5b950770d2b8e3821c98c6dd619856ff6af2f26e25631c5133295125fe`  
		Last Modified: Wed, 28 Mar 2018 05:26:39 GMT  
		Size: 8.3 MB (8330469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ae24862912e064fe726c0a8e3b6a9a07595aa26a8560e82a9775fb5dc5bb208`  
		Last Modified: Wed, 28 Mar 2018 05:26:37 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de9529f0a031c1d5303bf6ce160e1f2c36dcca93385c3ecfd4f020a765fdcd85`  
		Last Modified: Wed, 28 Mar 2018 05:26:37 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4-32bit`

```console
$ docker pull redis@sha256:7eb0d1e19dcb85b4415144a172ceda48dd94a9b8d67e385502b7237430a66884
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4-32bit` - linux; amd64

```console
$ docker pull redis@sha256:853272707ca976c3137bc4853f8645c1ddf047372bba58d42a20b5016ad9cbe4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.0 MB (43009577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91ed5b7b101cd0c661b5be17443b90ae399bdfe5e07a03ffa33df1df116893e3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 13 Mar 2018 21:58:13 GMT
ADD file:080bac9a2cdcc70ad61e50045a26172f0e1acfd3a26360cb86b6e26a3307b2e1 in / 
# Tue, 13 Mar 2018 21:58:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 19:07:45 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 14 Mar 2018 19:07:45 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 19:08:17 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 27 Mar 2018 18:40:44 GMT
ENV REDIS_VERSION=4.0.9
# Tue, 27 Mar 2018 18:40:44 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.9.tar.gz
# Tue, 27 Mar 2018 18:40:45 GMT
ENV REDIS_DOWNLOAD_SHA=df4f73bc318e2f9ffb2d169a922dec57ec7c73dd07bccf875695dbeecd5ec510
# Tue, 27 Mar 2018 18:48:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Tue, 27 Mar 2018 18:49:18 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 27 Mar 2018 18:49:19 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 27 Mar 2018 18:49:19 GMT
VOLUME [/data]
# Tue, 27 Mar 2018 18:49:20 GMT
WORKDIR /data
# Tue, 27 Mar 2018 18:49:20 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 27 Mar 2018 18:49:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Mar 2018 18:49:21 GMT
EXPOSE 6379/tcp
# Tue, 27 Mar 2018 18:49:21 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:b0568b191983bc2844b2fdb48aeefa72452931bfead0a87e0515bfc602ea3b0c`  
		Last Modified: Tue, 13 Mar 2018 22:45:19 GMT  
		Size: 30.1 MB (30122402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6637dc5b29fee45c6536e100b59259a74639fbf8cc42bf9149dc807e36740af5`  
		Last Modified: Wed, 14 Mar 2018 19:13:55 GMT  
		Size: 2.1 KB (2086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b4314315f15b1cb666256edf2ac07b2a902a6d0622a0bd1120bdab9799d26c3`  
		Last Modified: Wed, 14 Mar 2018 19:13:55 GMT  
		Size: 981.7 KB (981728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e07f7fe45e5c78249f431a2b174b5c944106e6a9de1460e51345b6a606854654`  
		Last Modified: Tue, 27 Mar 2018 19:14:30 GMT  
		Size: 4.4 MB (4378596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b190e99fedf2c2e6ade49e27f1698a5e45a915969ca4c994e9d6d15f8d5293b4`  
		Last Modified: Tue, 27 Mar 2018 19:14:29 GMT  
		Size: 7.5 MB (7524259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d7ae7f4d56f4c777b52ddb73c8570411fce14514f30d44cd583d117ef873b5c`  
		Last Modified: Tue, 27 Mar 2018 19:14:27 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdf36d6f48539c51e75c3308be1fff8b63e09fa1ec8fc3714a0c78ef555aadab`  
		Last Modified: Tue, 27 Mar 2018 19:14:27 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4-alpine`

```console
$ docker pull redis@sha256:e6e3a62b67b4e5c956b8814ac64ce3fe531c1093606f2a4fe5492921f6592388
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
$ docker pull redis@sha256:aab35d6ec4c49ef5c1674f0582eeb2f6e90ee0fd3010d8a806d8833f36cc0525
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10588033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98bd7cfc43b8ef0ff130465e3d5427c0771002c2f35a6a9b62cb2d04602bed0a`
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
# Tue, 27 Mar 2018 18:49:45 GMT
ENV REDIS_VERSION=4.0.9
# Tue, 27 Mar 2018 18:49:45 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.9.tar.gz
# Tue, 27 Mar 2018 18:49:46 GMT
ENV REDIS_DOWNLOAD_SHA=df4f73bc318e2f9ffb2d169a922dec57ec7c73dd07bccf875695dbeecd5ec510
# Tue, 27 Mar 2018 18:50:12 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Tue, 27 Mar 2018 18:50:13 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 27 Mar 2018 18:50:13 GMT
VOLUME [/data]
# Tue, 27 Mar 2018 18:50:13 GMT
WORKDIR /data
# Tue, 27 Mar 2018 18:50:14 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Tue, 27 Mar 2018 18:50:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Mar 2018 18:50:14 GMT
EXPOSE 6379/tcp
# Tue, 27 Mar 2018 18:50:14 GMT
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
	-	`sha256:7f8fb829cc486bf533b5923c875ecf46834fd07265c785d6c7b9367405331283`  
		Last Modified: Tue, 27 Mar 2018 19:15:50 GMT  
		Size: 8.5 MB (8512191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c72e0cff027d9cf1386d8c931e1a14e9e7d5bd7eb61ea0b4e24f021395ea5329`  
		Last Modified: Tue, 27 Mar 2018 19:15:48 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:276d6b52cd5b0a1ec792aff4b4feb6969e60985969775a009b277104b9532396`  
		Last Modified: Tue, 27 Mar 2018 19:15:49 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:59eaf4dcd54b94f1ea2fd5ced79496dd78eff315521bb2143e9be6bc0864720f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10322380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6f50c03111ef9f08bc1b3cd055e398e8196e071ad6a5f9a2541343199c1bbac`
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
# Thu, 29 Mar 2018 06:08:08 GMT
ENV REDIS_VERSION=4.0.9
# Thu, 29 Mar 2018 06:08:09 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.9.tar.gz
# Thu, 29 Mar 2018 06:08:10 GMT
ENV REDIS_DOWNLOAD_SHA=df4f73bc318e2f9ffb2d169a922dec57ec7c73dd07bccf875695dbeecd5ec510
# Thu, 29 Mar 2018 06:09:03 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 29 Mar 2018 06:09:09 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 29 Mar 2018 06:09:12 GMT
VOLUME [/data]
# Thu, 29 Mar 2018 06:09:15 GMT
WORKDIR /data
# Thu, 29 Mar 2018 06:09:20 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Thu, 29 Mar 2018 06:09:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Mar 2018 06:09:28 GMT
EXPOSE 6379/tcp
# Thu, 29 Mar 2018 06:09:31 GMT
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
	-	`sha256:dcf88862710e5c78e8886fe533065cf4fba961ea54176d422e48e40cc7d946aa`  
		Last Modified: Thu, 29 Mar 2018 06:11:38 GMT  
		Size: 8.3 MB (8322940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c529efd63fbb7f9b6c65f75dc7daa3ffc102724ba5a76cf47302267132ada9ff`  
		Last Modified: Thu, 29 Mar 2018 06:11:35 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:001bce0541f2df372672318f3f61ffe6a98cc0de90d6202e5771922f30a5ea32`  
		Last Modified: Thu, 29 Mar 2018 06:11:35 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine` - linux; 386

```console
$ docker pull redis@sha256:4aff3aa2ed33d7c9b315ecba042daf7bee79980f8c52a37f289ca44b8b6dafc1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.2 MB (10204981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0327ebd40768e59fedd9f861c52a3934c66415eb6445a083303a1b4a8925fab`
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
# Sun, 01 Apr 2018 01:41:08 GMT
ENV REDIS_VERSION=4.0.9
# Sun, 01 Apr 2018 01:41:09 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.9.tar.gz
# Sun, 01 Apr 2018 01:41:09 GMT
ENV REDIS_DOWNLOAD_SHA=df4f73bc318e2f9ffb2d169a922dec57ec7c73dd07bccf875695dbeecd5ec510
# Sun, 01 Apr 2018 01:41:40 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sun, 01 Apr 2018 01:41:40 GMT
RUN mkdir /data && chown redis:redis /data
# Sun, 01 Apr 2018 01:41:41 GMT
VOLUME [/data]
# Sun, 01 Apr 2018 01:41:41 GMT
WORKDIR /data
# Sun, 01 Apr 2018 01:41:41 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sun, 01 Apr 2018 01:41:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 01 Apr 2018 01:41:42 GMT
EXPOSE 6379/tcp
# Sun, 01 Apr 2018 01:41:42 GMT
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
	-	`sha256:1529dd3ec4ded883ac5b2007da30421291133a12410afa145caa0e0c1568d68b`  
		Last Modified: Sun, 01 Apr 2018 02:17:11 GMT  
		Size: 8.1 MB (8068183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fb3834a2961b65da09a4cf7ce95f0ebe4c3384a8ae054d60b6b4203793ffb9a`  
		Last Modified: Sun, 01 Apr 2018 02:17:08 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:961dbcdeb5e08df88b827a1f5ad6641499ece941c7c713d1e40bebc6ebc4f070`  
		Last Modified: Sun, 01 Apr 2018 02:17:09 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:85dd21e7469b1281659b7d90fdcce12c787e9fe9a1afca2bef827bbd6e53daae
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10745585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a8214bec47cb6bc3d32c65f421207b76007a536f18313cf6df04e8d0b6db23d`
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
# Wed, 28 Mar 2018 05:38:56 GMT
ENV REDIS_VERSION=4.0.9
# Wed, 28 Mar 2018 05:38:57 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.9.tar.gz
# Wed, 28 Mar 2018 05:38:58 GMT
ENV REDIS_DOWNLOAD_SHA=df4f73bc318e2f9ffb2d169a922dec57ec7c73dd07bccf875695dbeecd5ec510
# Wed, 28 Mar 2018 05:39:37 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 28 Mar 2018 05:39:41 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 28 Mar 2018 05:39:42 GMT
VOLUME [/data]
# Wed, 28 Mar 2018 05:39:44 GMT
WORKDIR /data
# Wed, 28 Mar 2018 05:39:45 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 28 Mar 2018 05:39:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Mar 2018 05:39:48 GMT
EXPOSE 6379/tcp
# Wed, 28 Mar 2018 05:39:49 GMT
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
	-	`sha256:ab493fcbef7514018d93349485aa7e9e955be681888598aef5969ebc7fde6a55`  
		Last Modified: Wed, 28 Mar 2018 05:40:48 GMT  
		Size: 8.7 MB (8652856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c00df95c6d6ae6f0f80d387389c1c257bf98fd6963d868a89be5eebd589dc3a`  
		Last Modified: Wed, 28 Mar 2018 05:40:45 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cb83b66a6fbd7ea196ad371998671e2a807dcfd2721419597d643f3ef6a13fd`  
		Last Modified: Wed, 28 Mar 2018 05:40:47 GMT  
		Size: 398.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine` - linux; s390x

```console
$ docker pull redis@sha256:f13a2bc64940a13c3dc3667f8a809eda21a7bcaf21af932e2d5c062d932d42f2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10526572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22646242f8c44f91bddaa1c9aa674b3082d9c213f1b71ba2cad8d9b49ecee74c`
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
# Wed, 28 Mar 2018 05:25:16 GMT
ENV REDIS_VERSION=4.0.9
# Wed, 28 Mar 2018 05:25:16 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.9.tar.gz
# Wed, 28 Mar 2018 05:25:16 GMT
ENV REDIS_DOWNLOAD_SHA=df4f73bc318e2f9ffb2d169a922dec57ec7c73dd07bccf875695dbeecd5ec510
# Wed, 28 Mar 2018 05:25:39 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 28 Mar 2018 05:25:39 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 28 Mar 2018 05:25:39 GMT
VOLUME [/data]
# Wed, 28 Mar 2018 05:25:40 GMT
WORKDIR /data
# Wed, 28 Mar 2018 05:25:40 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 28 Mar 2018 05:25:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Mar 2018 05:25:40 GMT
EXPOSE 6379/tcp
# Wed, 28 Mar 2018 05:25:41 GMT
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
	-	`sha256:e208aa5b950770d2b8e3821c98c6dd619856ff6af2f26e25631c5133295125fe`  
		Last Modified: Wed, 28 Mar 2018 05:26:39 GMT  
		Size: 8.3 MB (8330469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ae24862912e064fe726c0a8e3b6a9a07595aa26a8560e82a9775fb5dc5bb208`  
		Last Modified: Wed, 28 Mar 2018 05:26:37 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de9529f0a031c1d5303bf6ce160e1f2c36dcca93385c3ecfd4f020a765fdcd85`  
		Last Modified: Wed, 28 Mar 2018 05:26:37 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:alpine`

```console
$ docker pull redis@sha256:e6e3a62b67b4e5c956b8814ac64ce3fe531c1093606f2a4fe5492921f6592388
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
$ docker pull redis@sha256:aab35d6ec4c49ef5c1674f0582eeb2f6e90ee0fd3010d8a806d8833f36cc0525
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10588033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98bd7cfc43b8ef0ff130465e3d5427c0771002c2f35a6a9b62cb2d04602bed0a`
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
# Tue, 27 Mar 2018 18:49:45 GMT
ENV REDIS_VERSION=4.0.9
# Tue, 27 Mar 2018 18:49:45 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.9.tar.gz
# Tue, 27 Mar 2018 18:49:46 GMT
ENV REDIS_DOWNLOAD_SHA=df4f73bc318e2f9ffb2d169a922dec57ec7c73dd07bccf875695dbeecd5ec510
# Tue, 27 Mar 2018 18:50:12 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Tue, 27 Mar 2018 18:50:13 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 27 Mar 2018 18:50:13 GMT
VOLUME [/data]
# Tue, 27 Mar 2018 18:50:13 GMT
WORKDIR /data
# Tue, 27 Mar 2018 18:50:14 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Tue, 27 Mar 2018 18:50:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Mar 2018 18:50:14 GMT
EXPOSE 6379/tcp
# Tue, 27 Mar 2018 18:50:14 GMT
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
	-	`sha256:7f8fb829cc486bf533b5923c875ecf46834fd07265c785d6c7b9367405331283`  
		Last Modified: Tue, 27 Mar 2018 19:15:50 GMT  
		Size: 8.5 MB (8512191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c72e0cff027d9cf1386d8c931e1a14e9e7d5bd7eb61ea0b4e24f021395ea5329`  
		Last Modified: Tue, 27 Mar 2018 19:15:48 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:276d6b52cd5b0a1ec792aff4b4feb6969e60985969775a009b277104b9532396`  
		Last Modified: Tue, 27 Mar 2018 19:15:49 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:59eaf4dcd54b94f1ea2fd5ced79496dd78eff315521bb2143e9be6bc0864720f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10322380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6f50c03111ef9f08bc1b3cd055e398e8196e071ad6a5f9a2541343199c1bbac`
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
# Thu, 29 Mar 2018 06:08:08 GMT
ENV REDIS_VERSION=4.0.9
# Thu, 29 Mar 2018 06:08:09 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.9.tar.gz
# Thu, 29 Mar 2018 06:08:10 GMT
ENV REDIS_DOWNLOAD_SHA=df4f73bc318e2f9ffb2d169a922dec57ec7c73dd07bccf875695dbeecd5ec510
# Thu, 29 Mar 2018 06:09:03 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 29 Mar 2018 06:09:09 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 29 Mar 2018 06:09:12 GMT
VOLUME [/data]
# Thu, 29 Mar 2018 06:09:15 GMT
WORKDIR /data
# Thu, 29 Mar 2018 06:09:20 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Thu, 29 Mar 2018 06:09:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Mar 2018 06:09:28 GMT
EXPOSE 6379/tcp
# Thu, 29 Mar 2018 06:09:31 GMT
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
	-	`sha256:dcf88862710e5c78e8886fe533065cf4fba961ea54176d422e48e40cc7d946aa`  
		Last Modified: Thu, 29 Mar 2018 06:11:38 GMT  
		Size: 8.3 MB (8322940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c529efd63fbb7f9b6c65f75dc7daa3ffc102724ba5a76cf47302267132ada9ff`  
		Last Modified: Thu, 29 Mar 2018 06:11:35 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:001bce0541f2df372672318f3f61ffe6a98cc0de90d6202e5771922f30a5ea32`  
		Last Modified: Thu, 29 Mar 2018 06:11:35 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine` - linux; 386

```console
$ docker pull redis@sha256:4aff3aa2ed33d7c9b315ecba042daf7bee79980f8c52a37f289ca44b8b6dafc1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.2 MB (10204981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0327ebd40768e59fedd9f861c52a3934c66415eb6445a083303a1b4a8925fab`
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
# Sun, 01 Apr 2018 01:41:08 GMT
ENV REDIS_VERSION=4.0.9
# Sun, 01 Apr 2018 01:41:09 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.9.tar.gz
# Sun, 01 Apr 2018 01:41:09 GMT
ENV REDIS_DOWNLOAD_SHA=df4f73bc318e2f9ffb2d169a922dec57ec7c73dd07bccf875695dbeecd5ec510
# Sun, 01 Apr 2018 01:41:40 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sun, 01 Apr 2018 01:41:40 GMT
RUN mkdir /data && chown redis:redis /data
# Sun, 01 Apr 2018 01:41:41 GMT
VOLUME [/data]
# Sun, 01 Apr 2018 01:41:41 GMT
WORKDIR /data
# Sun, 01 Apr 2018 01:41:41 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sun, 01 Apr 2018 01:41:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 01 Apr 2018 01:41:42 GMT
EXPOSE 6379/tcp
# Sun, 01 Apr 2018 01:41:42 GMT
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
	-	`sha256:1529dd3ec4ded883ac5b2007da30421291133a12410afa145caa0e0c1568d68b`  
		Last Modified: Sun, 01 Apr 2018 02:17:11 GMT  
		Size: 8.1 MB (8068183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fb3834a2961b65da09a4cf7ce95f0ebe4c3384a8ae054d60b6b4203793ffb9a`  
		Last Modified: Sun, 01 Apr 2018 02:17:08 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:961dbcdeb5e08df88b827a1f5ad6641499ece941c7c713d1e40bebc6ebc4f070`  
		Last Modified: Sun, 01 Apr 2018 02:17:09 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:85dd21e7469b1281659b7d90fdcce12c787e9fe9a1afca2bef827bbd6e53daae
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10745585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a8214bec47cb6bc3d32c65f421207b76007a536f18313cf6df04e8d0b6db23d`
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
# Wed, 28 Mar 2018 05:38:56 GMT
ENV REDIS_VERSION=4.0.9
# Wed, 28 Mar 2018 05:38:57 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.9.tar.gz
# Wed, 28 Mar 2018 05:38:58 GMT
ENV REDIS_DOWNLOAD_SHA=df4f73bc318e2f9ffb2d169a922dec57ec7c73dd07bccf875695dbeecd5ec510
# Wed, 28 Mar 2018 05:39:37 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 28 Mar 2018 05:39:41 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 28 Mar 2018 05:39:42 GMT
VOLUME [/data]
# Wed, 28 Mar 2018 05:39:44 GMT
WORKDIR /data
# Wed, 28 Mar 2018 05:39:45 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 28 Mar 2018 05:39:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Mar 2018 05:39:48 GMT
EXPOSE 6379/tcp
# Wed, 28 Mar 2018 05:39:49 GMT
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
	-	`sha256:ab493fcbef7514018d93349485aa7e9e955be681888598aef5969ebc7fde6a55`  
		Last Modified: Wed, 28 Mar 2018 05:40:48 GMT  
		Size: 8.7 MB (8652856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c00df95c6d6ae6f0f80d387389c1c257bf98fd6963d868a89be5eebd589dc3a`  
		Last Modified: Wed, 28 Mar 2018 05:40:45 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cb83b66a6fbd7ea196ad371998671e2a807dcfd2721419597d643f3ef6a13fd`  
		Last Modified: Wed, 28 Mar 2018 05:40:47 GMT  
		Size: 398.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine` - linux; s390x

```console
$ docker pull redis@sha256:f13a2bc64940a13c3dc3667f8a809eda21a7bcaf21af932e2d5c062d932d42f2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10526572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22646242f8c44f91bddaa1c9aa674b3082d9c213f1b71ba2cad8d9b49ecee74c`
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
# Wed, 28 Mar 2018 05:25:16 GMT
ENV REDIS_VERSION=4.0.9
# Wed, 28 Mar 2018 05:25:16 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.9.tar.gz
# Wed, 28 Mar 2018 05:25:16 GMT
ENV REDIS_DOWNLOAD_SHA=df4f73bc318e2f9ffb2d169a922dec57ec7c73dd07bccf875695dbeecd5ec510
# Wed, 28 Mar 2018 05:25:39 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 28 Mar 2018 05:25:39 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 28 Mar 2018 05:25:39 GMT
VOLUME [/data]
# Wed, 28 Mar 2018 05:25:40 GMT
WORKDIR /data
# Wed, 28 Mar 2018 05:25:40 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 28 Mar 2018 05:25:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Mar 2018 05:25:40 GMT
EXPOSE 6379/tcp
# Wed, 28 Mar 2018 05:25:41 GMT
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
	-	`sha256:e208aa5b950770d2b8e3821c98c6dd619856ff6af2f26e25631c5133295125fe`  
		Last Modified: Wed, 28 Mar 2018 05:26:39 GMT  
		Size: 8.3 MB (8330469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ae24862912e064fe726c0a8e3b6a9a07595aa26a8560e82a9775fb5dc5bb208`  
		Last Modified: Wed, 28 Mar 2018 05:26:37 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de9529f0a031c1d5303bf6ce160e1f2c36dcca93385c3ecfd4f020a765fdcd85`  
		Last Modified: Wed, 28 Mar 2018 05:26:37 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:latest`

```console
$ docker pull redis@sha256:85463bd883298d4cad4a031c89b221a3b87110a75dd3170519f1c9b37ac4301b
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
$ docker pull redis@sha256:1415c3ce635e1bb7e9d672c476f70fa9ddbe720f01d419babcdd2235103f7a85
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.4 MB (39419219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5355f8853e4174a55144edfec23ac37f5bb2200ed838dab53c13c7cc835ab15`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 13 Mar 2018 21:58:13 GMT
ADD file:080bac9a2cdcc70ad61e50045a26172f0e1acfd3a26360cb86b6e26a3307b2e1 in / 
# Tue, 13 Mar 2018 21:58:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 19:07:45 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 14 Mar 2018 19:07:45 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 19:08:17 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 27 Mar 2018 18:40:44 GMT
ENV REDIS_VERSION=4.0.9
# Tue, 27 Mar 2018 18:40:44 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.9.tar.gz
# Tue, 27 Mar 2018 18:40:45 GMT
ENV REDIS_DOWNLOAD_SHA=df4f73bc318e2f9ffb2d169a922dec57ec7c73dd07bccf875695dbeecd5ec510
# Tue, 27 Mar 2018 18:41:35 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 27 Mar 2018 18:41:36 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 27 Mar 2018 18:41:36 GMT
VOLUME [/data]
# Tue, 27 Mar 2018 18:41:36 GMT
WORKDIR /data
# Tue, 27 Mar 2018 18:41:37 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 27 Mar 2018 18:41:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Mar 2018 18:41:37 GMT
EXPOSE 6379/tcp
# Tue, 27 Mar 2018 18:41:37 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:b0568b191983bc2844b2fdb48aeefa72452931bfead0a87e0515bfc602ea3b0c`  
		Last Modified: Tue, 13 Mar 2018 22:45:19 GMT  
		Size: 30.1 MB (30122402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6637dc5b29fee45c6536e100b59259a74639fbf8cc42bf9149dc807e36740af5`  
		Last Modified: Wed, 14 Mar 2018 19:13:55 GMT  
		Size: 2.1 KB (2086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b4314315f15b1cb666256edf2ac07b2a902a6d0622a0bd1120bdab9799d26c3`  
		Last Modified: Wed, 14 Mar 2018 19:13:55 GMT  
		Size: 981.7 KB (981728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fd86759b5ff7c1cee6d2f198bc345132869a90002f5285f4acbff7156ea3662`  
		Last Modified: Tue, 27 Mar 2018 19:10:34 GMT  
		Size: 8.3 MB (8312503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f04862b5a3b765a6021fae4c5265c94a5d62ad0d2008dcf4b066958b15d5895`  
		Last Modified: Tue, 27 Mar 2018 19:10:33 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2db0056aa977f6f592876d52cfca9a0127dcf5f48241b97aafd23991e52834f0`  
		Last Modified: Tue, 27 Mar 2018 19:10:33 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; arm variant v5

```console
$ docker pull redis@sha256:208668e417860d18f3c84073b763470a16ca2344c01e03b66a7be6258206f15e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 MB (37619325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db10f007738ede9a3c9e93fc4e7b4164efc1a0208af0c7316bfb2db919a2ff78`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 28 Apr 2018 08:49:49 GMT
ADD file:e9274d48b6cf2508214a554b4dbe651b4dfa95bb52dba47a96fe8842bf606a87 in / 
# Sat, 28 Apr 2018 08:49:49 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:26:08 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 28 Apr 2018 12:26:08 GMT
ENV GOSU_VERSION=1.10
# Sat, 28 Apr 2018 12:26:50 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 28 Apr 2018 12:28:10 GMT
ENV REDIS_VERSION=4.0.9
# Sat, 28 Apr 2018 12:28:11 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.9.tar.gz
# Sat, 28 Apr 2018 12:28:11 GMT
ENV REDIS_DOWNLOAD_SHA=df4f73bc318e2f9ffb2d169a922dec57ec7c73dd07bccf875695dbeecd5ec510
# Sat, 28 Apr 2018 12:29:10 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 12:29:11 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 28 Apr 2018 12:29:16 GMT
VOLUME [/data]
# Sat, 28 Apr 2018 12:29:16 GMT
WORKDIR /data
# Sat, 28 Apr 2018 12:29:16 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 28 Apr 2018 12:29:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 28 Apr 2018 12:29:22 GMT
EXPOSE 6379/tcp
# Sat, 28 Apr 2018 12:29:22 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:94b675ca74d2386dbd57e10d92f282f24ca3519fd21339c04af3f8f7e523617c`  
		Last Modified: Sat, 28 Apr 2018 08:57:53 GMT  
		Size: 28.4 MB (28435716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:588361ed476f4576bf29e632cdfe986f25ff90bfdf2fc2325c3325d6c18fc0de`  
		Last Modified: Sat, 28 Apr 2018 12:29:45 GMT  
		Size: 2.1 KB (2077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70bdf9c4f2fd118accb020c350f2d38df83baf6746eff2096eaf518b65c39a97`  
		Last Modified: Sat, 28 Apr 2018 12:29:45 GMT  
		Size: 971.3 KB (971295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d53153798cffce2e36170f0e44431cf632a1cc18a92273c8b285eaa002c68320`  
		Last Modified: Sat, 28 Apr 2018 12:30:16 GMT  
		Size: 8.2 MB (8209699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0265992a6ecba857213ef58c97c2a0fc720040717ac7015d8f52565247a948f`  
		Last Modified: Sat, 28 Apr 2018 12:30:13 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07fe63bd0d16d5d3ec35f38905841dea247d9a7562de81f6d80bfbff70c058ed`  
		Last Modified: Sat, 28 Apr 2018 12:30:13 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; arm variant v7

```console
$ docker pull redis@sha256:d91ae1b915685d44eabefb90327bdb002ef91ce55e9008709ef75f83ba843cf2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35200428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e5b47201aabb190ee78ddf61725a26a0e417ec4f90fa9a856a12209ffe9c287`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 14 Mar 2018 12:27:28 GMT
ADD file:901c5a711f269a7dd8f11eff27131cd2f6d2aee98d68f1e19b4ed954798e5d3f in / 
# Wed, 14 Mar 2018 12:27:29 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 15:44:10 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 14 Mar 2018 15:44:19 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 15:45:20 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 28 Mar 2018 00:27:29 GMT
ENV REDIS_VERSION=4.0.9
# Wed, 28 Mar 2018 00:27:30 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.9.tar.gz
# Wed, 28 Mar 2018 00:27:30 GMT
ENV REDIS_DOWNLOAD_SHA=df4f73bc318e2f9ffb2d169a922dec57ec7c73dd07bccf875695dbeecd5ec510
# Wed, 28 Mar 2018 00:28:27 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 28 Mar 2018 00:28:28 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 28 Mar 2018 00:28:28 GMT
VOLUME [/data]
# Wed, 28 Mar 2018 00:28:28 GMT
WORKDIR /data
# Wed, 28 Mar 2018 00:28:29 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 28 Mar 2018 00:28:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Mar 2018 00:28:29 GMT
EXPOSE 6379/tcp
# Wed, 28 Mar 2018 00:28:30 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:b8c016a755ce56e2fbb5a9f179c7bde3f0742c21b2727356a1658fc7d973f46a`  
		Last Modified: Wed, 14 Mar 2018 12:39:21 GMT  
		Size: 26.3 MB (26290283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b2daa0616e76420cd00e153994139c08a33c1d399f3debb98ea27f15ecb8c84`  
		Last Modified: Wed, 14 Mar 2018 15:48:31 GMT  
		Size: 2.1 KB (2075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c943f731432d73833cfa4d22e135075012e0ff4680d54710ace42c3876f9f1e0`  
		Last Modified: Wed, 14 Mar 2018 15:48:31 GMT  
		Size: 956.1 KB (956111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb2d539a93451b2bfb6c80aaf0f16cdcc83e2513029c214b770d73aac71fd6ce`  
		Last Modified: Wed, 28 Mar 2018 00:28:42 GMT  
		Size: 8.0 MB (7951423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef15f5000b3a34bd0a7e5f82ac0365545420563e8f4fdc966d8867dd11a0b8c6`  
		Last Modified: Wed, 28 Mar 2018 00:28:40 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f26db2f11d1a84e8a6bd21d5bb61fd67f8c1c61ff624f2ba905dd16246bbdbc`  
		Last Modified: Wed, 28 Mar 2018 00:28:40 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:25ef578af17004328fd06e8c2f8887c5174646b6e63a0af958d4bbc87b000569
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36893023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:606baba5eea8de5564a9dc060d81a4039573cc986532ac7edf7e8b22fe1e1ac6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 14 Mar 2018 17:25:26 GMT
ADD file:0012468f66c7e5b0efd7217a1f29f5044d4dce5a19dcd39786aa7573bc927763 in / 
# Wed, 14 Mar 2018 17:25:26 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 01:00:37 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Thu, 15 Mar 2018 01:00:37 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Mar 2018 01:01:35 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 29 Mar 2018 06:03:27 GMT
ENV REDIS_VERSION=4.0.9
# Thu, 29 Mar 2018 06:03:28 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.9.tar.gz
# Thu, 29 Mar 2018 06:03:29 GMT
ENV REDIS_DOWNLOAD_SHA=df4f73bc318e2f9ffb2d169a922dec57ec7c73dd07bccf875695dbeecd5ec510
# Thu, 29 Mar 2018 06:07:10 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 29 Mar 2018 06:07:18 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 29 Mar 2018 06:07:22 GMT
VOLUME [/data]
# Thu, 29 Mar 2018 06:07:25 GMT
WORKDIR /data
# Thu, 29 Mar 2018 06:07:29 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Thu, 29 Mar 2018 06:07:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Mar 2018 06:07:35 GMT
EXPOSE 6379/tcp
# Thu, 29 Mar 2018 06:07:39 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:784b6f32f75d9222c618727f66027b44ffa35120fc128790dfce4d1070befc90`  
		Last Modified: Wed, 14 Mar 2018 17:39:37 GMT  
		Size: 27.5 MB (27488177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d3475bc4704a0cf864207d5cc8c81043c7bf5fb4a138fbad39c3ec3ebbc1fa`  
		Last Modified: Thu, 15 Mar 2018 01:11:02 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aee833ba6520662ec17502d34841bade40071486c5fdf7c4098a666a0dfddcb`  
		Last Modified: Thu, 15 Mar 2018 01:11:00 GMT  
		Size: 948.7 KB (948651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:774577c341429cbad182395a756f5688cff71e9154578d50f431ab7e4a6d4de2`  
		Last Modified: Thu, 29 Mar 2018 06:10:11 GMT  
		Size: 8.5 MB (8453591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85f5354f99a66783e552b485d9a90696270ce68db97feb6d8af18fd3a4a1498b`  
		Last Modified: Thu, 29 Mar 2018 06:10:07 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80cb35e73c899a554bec6a4cda99656a522e541a9116affd2d974eab813e9df6`  
		Last Modified: Thu, 29 Mar 2018 06:10:08 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; 386

```console
$ docker pull redis@sha256:81f9125fa9f19ce23fa5f857577070d6c5c5a5f3ec6d2810946224d2a78691fe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.8 MB (38756115 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a189b31052360ee49eeffe1bf1e61ae112e53ac307639bfeaba0bf9831633657`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 27 Mar 2018 14:24:52 GMT
ADD file:4e79b8dd98596d0354ef30e136278a257e021a36d6d6271ec4c1dafaf07889ae in / 
# Tue, 27 Mar 2018 14:24:53 GMT
CMD ["bash"]
# Sun, 01 Apr 2018 01:29:01 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sun, 01 Apr 2018 01:29:02 GMT
ENV GOSU_VERSION=1.10
# Sun, 01 Apr 2018 01:29:52 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sun, 01 Apr 2018 01:37:58 GMT
ENV REDIS_VERSION=4.0.9
# Sun, 01 Apr 2018 01:37:59 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.9.tar.gz
# Sun, 01 Apr 2018 01:37:59 GMT
ENV REDIS_DOWNLOAD_SHA=df4f73bc318e2f9ffb2d169a922dec57ec7c73dd07bccf875695dbeecd5ec510
# Sun, 01 Apr 2018 01:39:06 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sun, 01 Apr 2018 01:39:07 GMT
RUN mkdir /data && chown redis:redis /data
# Sun, 01 Apr 2018 01:39:07 GMT
VOLUME [/data]
# Sun, 01 Apr 2018 01:39:08 GMT
WORKDIR /data
# Sun, 01 Apr 2018 01:39:08 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sun, 01 Apr 2018 01:39:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 01 Apr 2018 01:39:09 GMT
EXPOSE 6379/tcp
# Sun, 01 Apr 2018 01:39:09 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:ec7b1998b022b3eb218010907097139cebc6fb8b1aaab342d847d1f283ef3967`  
		Last Modified: Thu, 15 Mar 2018 01:00:27 GMT  
		Size: 30.3 MB (30273196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:489503ea3d98ea7b22c3eff6103a6905ec74d9153e63ef67a7eef37f18843efa`  
		Last Modified: Sun, 01 Apr 2018 01:45:14 GMT  
		Size: 2.1 KB (2082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa698c1a7ceed1d9a98ec7d86e6d2a338e7bb9a6cb46391e7c967a3bad733b0`  
		Last Modified: Sun, 01 Apr 2018 01:45:15 GMT  
		Size: 960.8 KB (960816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c005407f48291fd782655241abb30bdf3e877fa0affb8f3a26e1a6a1486881a5`  
		Last Modified: Sun, 01 Apr 2018 01:58:26 GMT  
		Size: 7.5 MB (7519519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e51820c4e5928a0f96ab4ca0a5aabe329b3c5455505d76aafc80c08d31504643`  
		Last Modified: Sun, 01 Apr 2018 01:58:24 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b036a253883bea411e504914449a0d392726eb34d3c7b5a642089112587372c8`  
		Last Modified: Sun, 01 Apr 2018 01:58:24 GMT  
		Size: 405.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; ppc64le

```console
$ docker pull redis@sha256:5b5d3f7fdc651e8d57a1ac7be9ca86ccd3c6bb0f68a71df9d805291dba210dc0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.9 MB (38947601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bffdb0ddcb220612ba706f43deac8771c3da87700ff52c61d152a66fd6aeb88`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 28 Apr 2018 08:18:08 GMT
ADD file:cc51ef60d7cb3b70c82127b8721de1b99378a9d4fc246dffa2ef5ffa2d9ab805 in / 
# Sat, 28 Apr 2018 08:18:09 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 13:00:58 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 28 Apr 2018 13:00:58 GMT
ENV GOSU_VERSION=1.10
# Sat, 28 Apr 2018 13:02:44 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 28 Apr 2018 13:05:47 GMT
ENV REDIS_VERSION=4.0.9
# Sat, 28 Apr 2018 13:05:49 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.9.tar.gz
# Sat, 28 Apr 2018 13:05:50 GMT
ENV REDIS_DOWNLOAD_SHA=df4f73bc318e2f9ffb2d169a922dec57ec7c73dd07bccf875695dbeecd5ec510
# Sat, 28 Apr 2018 13:07:57 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 13:08:00 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 28 Apr 2018 13:08:01 GMT
VOLUME [/data]
# Sat, 28 Apr 2018 13:08:02 GMT
WORKDIR /data
# Sat, 28 Apr 2018 13:08:03 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 28 Apr 2018 13:08:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 28 Apr 2018 13:08:05 GMT
EXPOSE 6379/tcp
# Sat, 28 Apr 2018 13:08:06 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:7745ff03a317ccaa10ff03129a2330b1c154aecaf51a892b7d99d5e1dbeb86cc`  
		Last Modified: Sat, 28 Apr 2018 08:25:29 GMT  
		Size: 29.3 MB (29317351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:095fbb0f7ef3b4b93e7cc9189e36c52b64f5608e9c028b7c4fa7a1467af366f7`  
		Last Modified: Sat, 28 Apr 2018 13:08:29 GMT  
		Size: 2.1 KB (2096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5ac27b943636e1baf2b28f6b7beff6f100a6372eb61bfb1a3c924eba0553011`  
		Last Modified: Sat, 28 Apr 2018 13:08:30 GMT  
		Size: 950.5 KB (950544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddd77ce6be6cd194392d852a06c83af66fa945213697cf29110e79ceb5a7a316`  
		Last Modified: Sat, 28 Apr 2018 13:08:57 GMT  
		Size: 8.7 MB (8677073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b873f5c723d17cbf7f14de9afdc46ffecf7613792db367fb5ce792dfe0d3c1ec`  
		Last Modified: Sat, 28 Apr 2018 13:08:54 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:260025116bbe75dd095ab543c60faa01b6eabb41506db76bd87f53e5078bb006`  
		Last Modified: Sat, 28 Apr 2018 13:08:54 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; s390x

```console
$ docker pull redis@sha256:f6fcbdd72d53914adcb61ea5949d12b134506baf275751a21d57d964cc12666d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.2 MB (40218188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74c77245766a88c91fd9711ff2b1f61c40a2ec132c6e06863a7f8cdc4594eafe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 14 Mar 2018 05:22:12 GMT
ADD file:5cd4239ce601f059eb8656abcae1c4827d7d75823a0e5e1a60bb2704635bde19 in / 
# Wed, 14 Mar 2018 05:22:12 GMT
CMD ["bash"]
# Fri, 16 Mar 2018 05:24:30 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 16 Mar 2018 05:24:30 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Mar 2018 05:24:49 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 27 Mar 2018 19:19:11 GMT
ENV REDIS_VERSION=4.0.9
# Tue, 27 Mar 2018 19:19:11 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.9.tar.gz
# Tue, 27 Mar 2018 19:19:11 GMT
ENV REDIS_DOWNLOAD_SHA=df4f73bc318e2f9ffb2d169a922dec57ec7c73dd07bccf875695dbeecd5ec510
# Wed, 28 Mar 2018 05:25:07 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 28 Mar 2018 05:25:08 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 28 Mar 2018 05:25:08 GMT
VOLUME [/data]
# Wed, 28 Mar 2018 05:25:08 GMT
WORKDIR /data
# Wed, 28 Mar 2018 05:25:08 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 28 Mar 2018 05:25:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Mar 2018 05:25:09 GMT
EXPOSE 6379/tcp
# Wed, 28 Mar 2018 05:25:09 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:73a91a9f561cad48038a81f8d9c37a90e39c3d0c806aaedb15f2f77092870ce4`  
		Last Modified: Wed, 14 Mar 2018 05:26:42 GMT  
		Size: 30.3 MB (30301960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8c4a0627308986c079aac5fcd4443370e25d46e7d2121a8ec46f5e93f70893e`  
		Last Modified: Fri, 16 Mar 2018 05:26:21 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2379099d7972abdfc0ee1b53049fd97e8fd9dd0132e05f544d08a18026289c9d`  
		Last Modified: Fri, 16 Mar 2018 05:26:22 GMT  
		Size: 966.9 KB (966876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42656d0fcb2214662b68c4f3979ae4c3b8e0f585c410900802972890d76d777e`  
		Last Modified: Wed, 28 Mar 2018 05:26:14 GMT  
		Size: 8.9 MB (8946762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37f190ac7ef10ec628b67b937ed7cf85b7f1f564576e13484f622817935a7639`  
		Last Modified: Wed, 28 Mar 2018 05:26:12 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53c47b89dd58aaddb2a3b9f481af17fb3cd8010a7a52baf7590889d9c5f0fb1b`  
		Last Modified: Wed, 28 Mar 2018 05:26:12 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
