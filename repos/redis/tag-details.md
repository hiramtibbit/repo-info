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
$ docker pull redis@sha256:6ff2a3a2ddb62378e778180ead0acaf5b44f6e719e42a1ae8c261dd969a16f2a
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
$ docker pull redis@sha256:b7876fe0c77fc0fd1c04b462aa9494a049f306d3e362d770b844b221130f2c72
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36858682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e97b1f10d81a1da230e6327f5d7a13b1e5b3716bb979cdd583c608ecae88adef`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Wed, 02 May 2018 04:56:53 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 02 May 2018 04:56:53 GMT
ENV GOSU_VERSION=1.10
# Wed, 02 May 2018 04:57:26 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 02 May 2018 04:57:26 GMT
ENV REDIS_VERSION=3.2.11
# Wed, 02 May 2018 04:57:26 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Wed, 02 May 2018 04:57:27 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Wed, 02 May 2018 04:58:12 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 02 May 2018 04:58:13 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 02 May 2018 04:58:13 GMT
VOLUME [/data]
# Wed, 02 May 2018 04:58:14 GMT
WORKDIR /data
# Wed, 02 May 2018 04:58:14 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 02 May 2018 04:58:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 02 May 2018 04:58:15 GMT
EXPOSE 6379/tcp
# Wed, 02 May 2018 04:58:15 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfbf30a55ec9b919b906d4b24e5dbdec2f1e6fca20c2ecde3a656b70d733e7ab`  
		Last Modified: Wed, 02 May 2018 05:58:43 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82648e31640df7995132b7ec83b625138b560c783d72bcafadbfa8d8c2b1f6a5`  
		Last Modified: Wed, 02 May 2018 05:58:43 GMT  
		Size: 981.8 KB (981755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d925e96c510b1d2934d3afe0dba12e127dcde4684a6667d835ddd457c9b9ced`  
		Last Modified: Wed, 02 May 2018 05:58:44 GMT  
		Size: 5.7 MB (5747038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86679c1efcc415a423729b11abe43b09e51ccbecf000086234ca5db8a5539f09`  
		Last Modified: Wed, 02 May 2018 05:58:43 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a287785a075f52433adbf2e0929dc5c9fc663a90e2425e42057c2f900a20b10`  
		Last Modified: Wed, 02 May 2018 05:58:44 GMT  
		Size: 404.0 B  
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
$ docker pull redis@sha256:393f3d5afdaa37e20f954b171cc1fdf154deec0ec477bfb363d547b9057573f9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.7 MB (32731628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1d267f18b9e8fbcbddf1f9b27e195d89cf1a07cad6cb40b72da8f95fce997af`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 28 Apr 2018 11:59:37 GMT
ADD file:f8c645337024c026fbe602f5480bff6efe08526fe5ae5523df7dc29d240d16d2 in / 
# Sat, 28 Apr 2018 11:59:37 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 15:33:20 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 28 Apr 2018 15:33:20 GMT
ENV GOSU_VERSION=1.10
# Sat, 28 Apr 2018 15:34:04 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 28 Apr 2018 15:34:04 GMT
ENV REDIS_VERSION=3.2.11
# Sat, 28 Apr 2018 15:34:04 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Sat, 28 Apr 2018 15:34:05 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Sat, 28 Apr 2018 15:35:04 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 15:35:06 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 28 Apr 2018 15:35:06 GMT
VOLUME [/data]
# Sat, 28 Apr 2018 15:35:07 GMT
WORKDIR /data
# Sat, 28 Apr 2018 15:35:07 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 28 Apr 2018 15:35:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 28 Apr 2018 15:35:08 GMT
EXPOSE 6379/tcp
# Sat, 28 Apr 2018 15:35:09 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:2d5e3d857ad4821de542179b9b489e90fd471e4cd9f25c4aa2a09561c37a7806`  
		Last Modified: Sat, 28 Apr 2018 12:11:15 GMT  
		Size: 26.3 MB (26297400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c869525b4fbabc5be1b242a484ca9e2c6195952ffc5ef2f28fe09440315cd537`  
		Last Modified: Sat, 28 Apr 2018 15:37:08 GMT  
		Size: 2.1 KB (2077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f6696f4bc012488a7792f48a3a7efaaa67118894bec5b33c58d187e0e264039`  
		Last Modified: Sat, 28 Apr 2018 15:37:09 GMT  
		Size: 956.1 KB (956132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bc8fd6ee10dc68f9bcc84c651dfd2eff8913c530fba3817f8f2f97421178502`  
		Last Modified: Sat, 28 Apr 2018 15:37:10 GMT  
		Size: 5.5 MB (5475483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb0c937229e0d606391bf9ca984bb886ba664a3f9b3ce53ba83f276556adcb94`  
		Last Modified: Sat, 28 Apr 2018 15:37:09 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8467f1941372aa4303d3093ace914f00d36b9618f09823f4267274125bba15f`  
		Last Modified: Sat, 28 Apr 2018 15:37:09 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:035627785ac451a21f673ef7c8ea9cc06ba51a416628e8b560b7c95ebe74f389
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34294939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:807484fde33065a6ffc853be3e8a8ba96d3b06c021274882087d10c3513b960c`
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
# Tue, 01 May 2018 12:50:15 GMT
ENV REDIS_VERSION=3.2.11
# Tue, 01 May 2018 12:50:16 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Tue, 01 May 2018 12:50:16 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Tue, 01 May 2018 12:53:29 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 01 May 2018 12:53:34 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 01 May 2018 12:53:38 GMT
VOLUME [/data]
# Tue, 01 May 2018 12:53:42 GMT
WORKDIR /data
# Tue, 01 May 2018 12:53:44 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 01 May 2018 12:53:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 01 May 2018 12:53:49 GMT
EXPOSE 6379/tcp
# Tue, 01 May 2018 12:53:51 GMT
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
	-	`sha256:3f4cb431cf72a0f3ee7a7c5572ab4b625ad63f546334d38dbeb0aa4a01db9dd2`  
		Last Modified: Tue, 01 May 2018 12:57:30 GMT  
		Size: 5.8 MB (5849101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e63db996cc4cb446c49e613db6b47afd79f09a3f1d67a4a3e02e6fe621694ba`  
		Last Modified: Tue, 01 May 2018 12:57:28 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ce39fdb2e4acbe8e53d38926191e64bf8e9932aa173afd5ff317a053c9756ae`  
		Last Modified: Tue, 01 May 2018 12:57:28 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3` - linux; 386

```console
$ docker pull redis@sha256:237b7184e32626108afd43b1e7ade75e7da5db990b4022548f27ac6b0e455876
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.5 MB (36467412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5c90c03179b22de9c9609a6cd8cfd1b866aed869fa1f840b44ab604663a381b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:45 GMT
ADD file:335ca08e6c562d8b16f2a4e788c5e977ba9815526d92d6d48cc3b8093824da2d in / 
# Sat, 28 Apr 2018 10:39:45 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 15:35:32 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 28 Apr 2018 15:35:32 GMT
ENV GOSU_VERSION=1.10
# Sat, 28 Apr 2018 15:36:13 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 28 Apr 2018 15:36:13 GMT
ENV REDIS_VERSION=3.2.11
# Sat, 28 Apr 2018 15:36:13 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Sat, 28 Apr 2018 15:36:13 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Sat, 28 Apr 2018 15:37:19 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 15:37:20 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 28 Apr 2018 15:37:20 GMT
VOLUME [/data]
# Sat, 28 Apr 2018 15:37:20 GMT
WORKDIR /data
# Sat, 28 Apr 2018 15:37:21 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 28 Apr 2018 15:37:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 28 Apr 2018 15:37:21 GMT
EXPOSE 6379/tcp
# Sat, 28 Apr 2018 15:37:21 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:175c17a0040b2274213f9504ec9e834814804aa24e25f9537af71fccc81a017f`  
		Last Modified: Sat, 28 Apr 2018 10:45:06 GMT  
		Size: 30.3 MB (30278658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf084d6e4734f36c90f6efb18393d3684a0f55559285a02decc03bfa5171801`  
		Last Modified: Sat, 28 Apr 2018 15:39:58 GMT  
		Size: 2.1 KB (2077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07603f325d3f5ae6731f7c58fd6c686b26f6a96721027173550da9e4f009a4be`  
		Last Modified: Sat, 28 Apr 2018 15:39:58 GMT  
		Size: 960.8 KB (960782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6a295baabcfb816bdd6ad34a6709c78f050493179bb530bb62132f1f7b432f3`  
		Last Modified: Sat, 28 Apr 2018 15:40:02 GMT  
		Size: 5.2 MB (5225394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d76b463dd88eeab7c501eb58dcf1bd31b49d3d1c261b184f42d41bd6a8af5e`  
		Last Modified: Sat, 28 Apr 2018 15:39:58 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4043cf3854e95dc0df54a77539e41975bc4d6a9a584ab25866962cd38a4f6cb`  
		Last Modified: Sat, 28 Apr 2018 15:40:00 GMT  
		Size: 403.0 B  
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
$ docker pull redis@sha256:df99962af0f86b901d4176fd55d413d97920a37ef145fd804f60fdcd7cf56d12
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.5 MB (37452936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92aeb32bfcf193376e7205c3670e2cef7f0f371bba8dfe499becf807fcaa6ab6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 28 Apr 2018 11:42:53 GMT
ADD file:7c773d50957d6184975f5b22ef61757cd979893af5c77cdfef46dd28d8fc0296 in / 
# Sat, 28 Apr 2018 11:42:55 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 15:22:08 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 28 Apr 2018 15:22:08 GMT
ENV GOSU_VERSION=1.10
# Sat, 28 Apr 2018 15:22:27 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 28 Apr 2018 15:22:27 GMT
ENV REDIS_VERSION=3.2.11
# Sat, 28 Apr 2018 15:22:28 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Sat, 28 Apr 2018 15:22:28 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Sat, 28 Apr 2018 15:23:04 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 15:23:04 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 28 Apr 2018 15:23:04 GMT
VOLUME [/data]
# Sat, 28 Apr 2018 15:23:04 GMT
WORKDIR /data
# Sat, 28 Apr 2018 15:23:05 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 28 Apr 2018 15:23:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 28 Apr 2018 15:23:05 GMT
EXPOSE 6379/tcp
# Sat, 28 Apr 2018 15:23:05 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f4d03f2765a5584a0dc02af25ffd7c98d6e129d072a1fc30380b106603442102`  
		Last Modified: Sat, 28 Apr 2018 11:48:28 GMT  
		Size: 30.3 MB (30308304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eba1d9acfff4b699dd35d631aa6e773ae2fac66f9c37074283cf88f8a1f59abf`  
		Last Modified: Sat, 28 Apr 2018 15:24:20 GMT  
		Size: 2.1 KB (2091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e643404dd509543d9ae2eca1558ce6c975ce0ec2d69cbb500e7e5bb6a87da640`  
		Last Modified: Sat, 28 Apr 2018 15:24:20 GMT  
		Size: 966.9 KB (966949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e60a65885f5ba7325f3e317f4038a6e5f9a43d5254960c78b0ef8c837edc6209`  
		Last Modified: Sat, 28 Apr 2018 15:24:21 GMT  
		Size: 6.2 MB (6175090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3ff007bce5488b4e7043507f7f87493d7aa0372a09815f9bc19a3bdbd1e5871`  
		Last Modified: Sat, 28 Apr 2018 15:24:20 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1d85253fec27420108e4c25f864d427ae589ad03b505a9055f77042483b9f4f`  
		Last Modified: Sat, 28 Apr 2018 15:24:20 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2`

```console
$ docker pull redis@sha256:6ff2a3a2ddb62378e778180ead0acaf5b44f6e719e42a1ae8c261dd969a16f2a
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
$ docker pull redis@sha256:b7876fe0c77fc0fd1c04b462aa9494a049f306d3e362d770b844b221130f2c72
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36858682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e97b1f10d81a1da230e6327f5d7a13b1e5b3716bb979cdd583c608ecae88adef`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Wed, 02 May 2018 04:56:53 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 02 May 2018 04:56:53 GMT
ENV GOSU_VERSION=1.10
# Wed, 02 May 2018 04:57:26 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 02 May 2018 04:57:26 GMT
ENV REDIS_VERSION=3.2.11
# Wed, 02 May 2018 04:57:26 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Wed, 02 May 2018 04:57:27 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Wed, 02 May 2018 04:58:12 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 02 May 2018 04:58:13 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 02 May 2018 04:58:13 GMT
VOLUME [/data]
# Wed, 02 May 2018 04:58:14 GMT
WORKDIR /data
# Wed, 02 May 2018 04:58:14 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 02 May 2018 04:58:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 02 May 2018 04:58:15 GMT
EXPOSE 6379/tcp
# Wed, 02 May 2018 04:58:15 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfbf30a55ec9b919b906d4b24e5dbdec2f1e6fca20c2ecde3a656b70d733e7ab`  
		Last Modified: Wed, 02 May 2018 05:58:43 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82648e31640df7995132b7ec83b625138b560c783d72bcafadbfa8d8c2b1f6a5`  
		Last Modified: Wed, 02 May 2018 05:58:43 GMT  
		Size: 981.8 KB (981755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d925e96c510b1d2934d3afe0dba12e127dcde4684a6667d835ddd457c9b9ced`  
		Last Modified: Wed, 02 May 2018 05:58:44 GMT  
		Size: 5.7 MB (5747038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86679c1efcc415a423729b11abe43b09e51ccbecf000086234ca5db8a5539f09`  
		Last Modified: Wed, 02 May 2018 05:58:43 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a287785a075f52433adbf2e0929dc5c9fc663a90e2425e42057c2f900a20b10`  
		Last Modified: Wed, 02 May 2018 05:58:44 GMT  
		Size: 404.0 B  
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
$ docker pull redis@sha256:393f3d5afdaa37e20f954b171cc1fdf154deec0ec477bfb363d547b9057573f9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.7 MB (32731628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1d267f18b9e8fbcbddf1f9b27e195d89cf1a07cad6cb40b72da8f95fce997af`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 28 Apr 2018 11:59:37 GMT
ADD file:f8c645337024c026fbe602f5480bff6efe08526fe5ae5523df7dc29d240d16d2 in / 
# Sat, 28 Apr 2018 11:59:37 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 15:33:20 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 28 Apr 2018 15:33:20 GMT
ENV GOSU_VERSION=1.10
# Sat, 28 Apr 2018 15:34:04 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 28 Apr 2018 15:34:04 GMT
ENV REDIS_VERSION=3.2.11
# Sat, 28 Apr 2018 15:34:04 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Sat, 28 Apr 2018 15:34:05 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Sat, 28 Apr 2018 15:35:04 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 15:35:06 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 28 Apr 2018 15:35:06 GMT
VOLUME [/data]
# Sat, 28 Apr 2018 15:35:07 GMT
WORKDIR /data
# Sat, 28 Apr 2018 15:35:07 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 28 Apr 2018 15:35:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 28 Apr 2018 15:35:08 GMT
EXPOSE 6379/tcp
# Sat, 28 Apr 2018 15:35:09 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:2d5e3d857ad4821de542179b9b489e90fd471e4cd9f25c4aa2a09561c37a7806`  
		Last Modified: Sat, 28 Apr 2018 12:11:15 GMT  
		Size: 26.3 MB (26297400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c869525b4fbabc5be1b242a484ca9e2c6195952ffc5ef2f28fe09440315cd537`  
		Last Modified: Sat, 28 Apr 2018 15:37:08 GMT  
		Size: 2.1 KB (2077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f6696f4bc012488a7792f48a3a7efaaa67118894bec5b33c58d187e0e264039`  
		Last Modified: Sat, 28 Apr 2018 15:37:09 GMT  
		Size: 956.1 KB (956132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bc8fd6ee10dc68f9bcc84c651dfd2eff8913c530fba3817f8f2f97421178502`  
		Last Modified: Sat, 28 Apr 2018 15:37:10 GMT  
		Size: 5.5 MB (5475483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb0c937229e0d606391bf9ca984bb886ba664a3f9b3ce53ba83f276556adcb94`  
		Last Modified: Sat, 28 Apr 2018 15:37:09 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8467f1941372aa4303d3093ace914f00d36b9618f09823f4267274125bba15f`  
		Last Modified: Sat, 28 Apr 2018 15:37:09 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:035627785ac451a21f673ef7c8ea9cc06ba51a416628e8b560b7c95ebe74f389
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34294939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:807484fde33065a6ffc853be3e8a8ba96d3b06c021274882087d10c3513b960c`
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
# Tue, 01 May 2018 12:50:15 GMT
ENV REDIS_VERSION=3.2.11
# Tue, 01 May 2018 12:50:16 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Tue, 01 May 2018 12:50:16 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Tue, 01 May 2018 12:53:29 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 01 May 2018 12:53:34 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 01 May 2018 12:53:38 GMT
VOLUME [/data]
# Tue, 01 May 2018 12:53:42 GMT
WORKDIR /data
# Tue, 01 May 2018 12:53:44 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 01 May 2018 12:53:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 01 May 2018 12:53:49 GMT
EXPOSE 6379/tcp
# Tue, 01 May 2018 12:53:51 GMT
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
	-	`sha256:3f4cb431cf72a0f3ee7a7c5572ab4b625ad63f546334d38dbeb0aa4a01db9dd2`  
		Last Modified: Tue, 01 May 2018 12:57:30 GMT  
		Size: 5.8 MB (5849101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e63db996cc4cb446c49e613db6b47afd79f09a3f1d67a4a3e02e6fe621694ba`  
		Last Modified: Tue, 01 May 2018 12:57:28 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ce39fdb2e4acbe8e53d38926191e64bf8e9932aa173afd5ff317a053c9756ae`  
		Last Modified: Tue, 01 May 2018 12:57:28 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2` - linux; 386

```console
$ docker pull redis@sha256:237b7184e32626108afd43b1e7ade75e7da5db990b4022548f27ac6b0e455876
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.5 MB (36467412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5c90c03179b22de9c9609a6cd8cfd1b866aed869fa1f840b44ab604663a381b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:45 GMT
ADD file:335ca08e6c562d8b16f2a4e788c5e977ba9815526d92d6d48cc3b8093824da2d in / 
# Sat, 28 Apr 2018 10:39:45 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 15:35:32 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 28 Apr 2018 15:35:32 GMT
ENV GOSU_VERSION=1.10
# Sat, 28 Apr 2018 15:36:13 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 28 Apr 2018 15:36:13 GMT
ENV REDIS_VERSION=3.2.11
# Sat, 28 Apr 2018 15:36:13 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Sat, 28 Apr 2018 15:36:13 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Sat, 28 Apr 2018 15:37:19 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 15:37:20 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 28 Apr 2018 15:37:20 GMT
VOLUME [/data]
# Sat, 28 Apr 2018 15:37:20 GMT
WORKDIR /data
# Sat, 28 Apr 2018 15:37:21 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 28 Apr 2018 15:37:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 28 Apr 2018 15:37:21 GMT
EXPOSE 6379/tcp
# Sat, 28 Apr 2018 15:37:21 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:175c17a0040b2274213f9504ec9e834814804aa24e25f9537af71fccc81a017f`  
		Last Modified: Sat, 28 Apr 2018 10:45:06 GMT  
		Size: 30.3 MB (30278658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf084d6e4734f36c90f6efb18393d3684a0f55559285a02decc03bfa5171801`  
		Last Modified: Sat, 28 Apr 2018 15:39:58 GMT  
		Size: 2.1 KB (2077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07603f325d3f5ae6731f7c58fd6c686b26f6a96721027173550da9e4f009a4be`  
		Last Modified: Sat, 28 Apr 2018 15:39:58 GMT  
		Size: 960.8 KB (960782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6a295baabcfb816bdd6ad34a6709c78f050493179bb530bb62132f1f7b432f3`  
		Last Modified: Sat, 28 Apr 2018 15:40:02 GMT  
		Size: 5.2 MB (5225394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d76b463dd88eeab7c501eb58dcf1bd31b49d3d1c261b184f42d41bd6a8af5e`  
		Last Modified: Sat, 28 Apr 2018 15:39:58 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4043cf3854e95dc0df54a77539e41975bc4d6a9a584ab25866962cd38a4f6cb`  
		Last Modified: Sat, 28 Apr 2018 15:40:00 GMT  
		Size: 403.0 B  
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
$ docker pull redis@sha256:df99962af0f86b901d4176fd55d413d97920a37ef145fd804f60fdcd7cf56d12
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.5 MB (37452936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92aeb32bfcf193376e7205c3670e2cef7f0f371bba8dfe499becf807fcaa6ab6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 28 Apr 2018 11:42:53 GMT
ADD file:7c773d50957d6184975f5b22ef61757cd979893af5c77cdfef46dd28d8fc0296 in / 
# Sat, 28 Apr 2018 11:42:55 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 15:22:08 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 28 Apr 2018 15:22:08 GMT
ENV GOSU_VERSION=1.10
# Sat, 28 Apr 2018 15:22:27 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 28 Apr 2018 15:22:27 GMT
ENV REDIS_VERSION=3.2.11
# Sat, 28 Apr 2018 15:22:28 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Sat, 28 Apr 2018 15:22:28 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Sat, 28 Apr 2018 15:23:04 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 15:23:04 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 28 Apr 2018 15:23:04 GMT
VOLUME [/data]
# Sat, 28 Apr 2018 15:23:04 GMT
WORKDIR /data
# Sat, 28 Apr 2018 15:23:05 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 28 Apr 2018 15:23:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 28 Apr 2018 15:23:05 GMT
EXPOSE 6379/tcp
# Sat, 28 Apr 2018 15:23:05 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f4d03f2765a5584a0dc02af25ffd7c98d6e129d072a1fc30380b106603442102`  
		Last Modified: Sat, 28 Apr 2018 11:48:28 GMT  
		Size: 30.3 MB (30308304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eba1d9acfff4b699dd35d631aa6e773ae2fac66f9c37074283cf88f8a1f59abf`  
		Last Modified: Sat, 28 Apr 2018 15:24:20 GMT  
		Size: 2.1 KB (2091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e643404dd509543d9ae2eca1558ce6c975ce0ec2d69cbb500e7e5bb6a87da640`  
		Last Modified: Sat, 28 Apr 2018 15:24:20 GMT  
		Size: 966.9 KB (966949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e60a65885f5ba7325f3e317f4038a6e5f9a43d5254960c78b0ef8c837edc6209`  
		Last Modified: Sat, 28 Apr 2018 15:24:21 GMT  
		Size: 6.2 MB (6175090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3ff007bce5488b4e7043507f7f87493d7aa0372a09815f9bc19a3bdbd1e5871`  
		Last Modified: Sat, 28 Apr 2018 15:24:20 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1d85253fec27420108e4c25f864d427ae589ad03b505a9055f77042483b9f4f`  
		Last Modified: Sat, 28 Apr 2018 15:24:20 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2.11`

```console
$ docker pull redis@sha256:6ff2a3a2ddb62378e778180ead0acaf5b44f6e719e42a1ae8c261dd969a16f2a
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
$ docker pull redis@sha256:b7876fe0c77fc0fd1c04b462aa9494a049f306d3e362d770b844b221130f2c72
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36858682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e97b1f10d81a1da230e6327f5d7a13b1e5b3716bb979cdd583c608ecae88adef`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Wed, 02 May 2018 04:56:53 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 02 May 2018 04:56:53 GMT
ENV GOSU_VERSION=1.10
# Wed, 02 May 2018 04:57:26 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 02 May 2018 04:57:26 GMT
ENV REDIS_VERSION=3.2.11
# Wed, 02 May 2018 04:57:26 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Wed, 02 May 2018 04:57:27 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Wed, 02 May 2018 04:58:12 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 02 May 2018 04:58:13 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 02 May 2018 04:58:13 GMT
VOLUME [/data]
# Wed, 02 May 2018 04:58:14 GMT
WORKDIR /data
# Wed, 02 May 2018 04:58:14 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 02 May 2018 04:58:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 02 May 2018 04:58:15 GMT
EXPOSE 6379/tcp
# Wed, 02 May 2018 04:58:15 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfbf30a55ec9b919b906d4b24e5dbdec2f1e6fca20c2ecde3a656b70d733e7ab`  
		Last Modified: Wed, 02 May 2018 05:58:43 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82648e31640df7995132b7ec83b625138b560c783d72bcafadbfa8d8c2b1f6a5`  
		Last Modified: Wed, 02 May 2018 05:58:43 GMT  
		Size: 981.8 KB (981755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d925e96c510b1d2934d3afe0dba12e127dcde4684a6667d835ddd457c9b9ced`  
		Last Modified: Wed, 02 May 2018 05:58:44 GMT  
		Size: 5.7 MB (5747038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86679c1efcc415a423729b11abe43b09e51ccbecf000086234ca5db8a5539f09`  
		Last Modified: Wed, 02 May 2018 05:58:43 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a287785a075f52433adbf2e0929dc5c9fc663a90e2425e42057c2f900a20b10`  
		Last Modified: Wed, 02 May 2018 05:58:44 GMT  
		Size: 404.0 B  
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
$ docker pull redis@sha256:393f3d5afdaa37e20f954b171cc1fdf154deec0ec477bfb363d547b9057573f9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.7 MB (32731628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1d267f18b9e8fbcbddf1f9b27e195d89cf1a07cad6cb40b72da8f95fce997af`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 28 Apr 2018 11:59:37 GMT
ADD file:f8c645337024c026fbe602f5480bff6efe08526fe5ae5523df7dc29d240d16d2 in / 
# Sat, 28 Apr 2018 11:59:37 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 15:33:20 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 28 Apr 2018 15:33:20 GMT
ENV GOSU_VERSION=1.10
# Sat, 28 Apr 2018 15:34:04 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 28 Apr 2018 15:34:04 GMT
ENV REDIS_VERSION=3.2.11
# Sat, 28 Apr 2018 15:34:04 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Sat, 28 Apr 2018 15:34:05 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Sat, 28 Apr 2018 15:35:04 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 15:35:06 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 28 Apr 2018 15:35:06 GMT
VOLUME [/data]
# Sat, 28 Apr 2018 15:35:07 GMT
WORKDIR /data
# Sat, 28 Apr 2018 15:35:07 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 28 Apr 2018 15:35:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 28 Apr 2018 15:35:08 GMT
EXPOSE 6379/tcp
# Sat, 28 Apr 2018 15:35:09 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:2d5e3d857ad4821de542179b9b489e90fd471e4cd9f25c4aa2a09561c37a7806`  
		Last Modified: Sat, 28 Apr 2018 12:11:15 GMT  
		Size: 26.3 MB (26297400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c869525b4fbabc5be1b242a484ca9e2c6195952ffc5ef2f28fe09440315cd537`  
		Last Modified: Sat, 28 Apr 2018 15:37:08 GMT  
		Size: 2.1 KB (2077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f6696f4bc012488a7792f48a3a7efaaa67118894bec5b33c58d187e0e264039`  
		Last Modified: Sat, 28 Apr 2018 15:37:09 GMT  
		Size: 956.1 KB (956132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bc8fd6ee10dc68f9bcc84c651dfd2eff8913c530fba3817f8f2f97421178502`  
		Last Modified: Sat, 28 Apr 2018 15:37:10 GMT  
		Size: 5.5 MB (5475483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb0c937229e0d606391bf9ca984bb886ba664a3f9b3ce53ba83f276556adcb94`  
		Last Modified: Sat, 28 Apr 2018 15:37:09 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8467f1941372aa4303d3093ace914f00d36b9618f09823f4267274125bba15f`  
		Last Modified: Sat, 28 Apr 2018 15:37:09 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2.11` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:035627785ac451a21f673ef7c8ea9cc06ba51a416628e8b560b7c95ebe74f389
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34294939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:807484fde33065a6ffc853be3e8a8ba96d3b06c021274882087d10c3513b960c`
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
# Tue, 01 May 2018 12:50:15 GMT
ENV REDIS_VERSION=3.2.11
# Tue, 01 May 2018 12:50:16 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Tue, 01 May 2018 12:50:16 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Tue, 01 May 2018 12:53:29 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 01 May 2018 12:53:34 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 01 May 2018 12:53:38 GMT
VOLUME [/data]
# Tue, 01 May 2018 12:53:42 GMT
WORKDIR /data
# Tue, 01 May 2018 12:53:44 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 01 May 2018 12:53:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 01 May 2018 12:53:49 GMT
EXPOSE 6379/tcp
# Tue, 01 May 2018 12:53:51 GMT
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
	-	`sha256:3f4cb431cf72a0f3ee7a7c5572ab4b625ad63f546334d38dbeb0aa4a01db9dd2`  
		Last Modified: Tue, 01 May 2018 12:57:30 GMT  
		Size: 5.8 MB (5849101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e63db996cc4cb446c49e613db6b47afd79f09a3f1d67a4a3e02e6fe621694ba`  
		Last Modified: Tue, 01 May 2018 12:57:28 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ce39fdb2e4acbe8e53d38926191e64bf8e9932aa173afd5ff317a053c9756ae`  
		Last Modified: Tue, 01 May 2018 12:57:28 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2.11` - linux; 386

```console
$ docker pull redis@sha256:237b7184e32626108afd43b1e7ade75e7da5db990b4022548f27ac6b0e455876
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.5 MB (36467412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5c90c03179b22de9c9609a6cd8cfd1b866aed869fa1f840b44ab604663a381b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:45 GMT
ADD file:335ca08e6c562d8b16f2a4e788c5e977ba9815526d92d6d48cc3b8093824da2d in / 
# Sat, 28 Apr 2018 10:39:45 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 15:35:32 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 28 Apr 2018 15:35:32 GMT
ENV GOSU_VERSION=1.10
# Sat, 28 Apr 2018 15:36:13 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 28 Apr 2018 15:36:13 GMT
ENV REDIS_VERSION=3.2.11
# Sat, 28 Apr 2018 15:36:13 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Sat, 28 Apr 2018 15:36:13 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Sat, 28 Apr 2018 15:37:19 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 15:37:20 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 28 Apr 2018 15:37:20 GMT
VOLUME [/data]
# Sat, 28 Apr 2018 15:37:20 GMT
WORKDIR /data
# Sat, 28 Apr 2018 15:37:21 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 28 Apr 2018 15:37:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 28 Apr 2018 15:37:21 GMT
EXPOSE 6379/tcp
# Sat, 28 Apr 2018 15:37:21 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:175c17a0040b2274213f9504ec9e834814804aa24e25f9537af71fccc81a017f`  
		Last Modified: Sat, 28 Apr 2018 10:45:06 GMT  
		Size: 30.3 MB (30278658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf084d6e4734f36c90f6efb18393d3684a0f55559285a02decc03bfa5171801`  
		Last Modified: Sat, 28 Apr 2018 15:39:58 GMT  
		Size: 2.1 KB (2077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07603f325d3f5ae6731f7c58fd6c686b26f6a96721027173550da9e4f009a4be`  
		Last Modified: Sat, 28 Apr 2018 15:39:58 GMT  
		Size: 960.8 KB (960782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6a295baabcfb816bdd6ad34a6709c78f050493179bb530bb62132f1f7b432f3`  
		Last Modified: Sat, 28 Apr 2018 15:40:02 GMT  
		Size: 5.2 MB (5225394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d76b463dd88eeab7c501eb58dcf1bd31b49d3d1c261b184f42d41bd6a8af5e`  
		Last Modified: Sat, 28 Apr 2018 15:39:58 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4043cf3854e95dc0df54a77539e41975bc4d6a9a584ab25866962cd38a4f6cb`  
		Last Modified: Sat, 28 Apr 2018 15:40:00 GMT  
		Size: 403.0 B  
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
$ docker pull redis@sha256:df99962af0f86b901d4176fd55d413d97920a37ef145fd804f60fdcd7cf56d12
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.5 MB (37452936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92aeb32bfcf193376e7205c3670e2cef7f0f371bba8dfe499becf807fcaa6ab6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 28 Apr 2018 11:42:53 GMT
ADD file:7c773d50957d6184975f5b22ef61757cd979893af5c77cdfef46dd28d8fc0296 in / 
# Sat, 28 Apr 2018 11:42:55 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 15:22:08 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 28 Apr 2018 15:22:08 GMT
ENV GOSU_VERSION=1.10
# Sat, 28 Apr 2018 15:22:27 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 28 Apr 2018 15:22:27 GMT
ENV REDIS_VERSION=3.2.11
# Sat, 28 Apr 2018 15:22:28 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Sat, 28 Apr 2018 15:22:28 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Sat, 28 Apr 2018 15:23:04 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 15:23:04 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 28 Apr 2018 15:23:04 GMT
VOLUME [/data]
# Sat, 28 Apr 2018 15:23:04 GMT
WORKDIR /data
# Sat, 28 Apr 2018 15:23:05 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 28 Apr 2018 15:23:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 28 Apr 2018 15:23:05 GMT
EXPOSE 6379/tcp
# Sat, 28 Apr 2018 15:23:05 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f4d03f2765a5584a0dc02af25ffd7c98d6e129d072a1fc30380b106603442102`  
		Last Modified: Sat, 28 Apr 2018 11:48:28 GMT  
		Size: 30.3 MB (30308304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eba1d9acfff4b699dd35d631aa6e773ae2fac66f9c37074283cf88f8a1f59abf`  
		Last Modified: Sat, 28 Apr 2018 15:24:20 GMT  
		Size: 2.1 KB (2091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e643404dd509543d9ae2eca1558ce6c975ce0ec2d69cbb500e7e5bb6a87da640`  
		Last Modified: Sat, 28 Apr 2018 15:24:20 GMT  
		Size: 966.9 KB (966949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e60a65885f5ba7325f3e317f4038a6e5f9a43d5254960c78b0ef8c837edc6209`  
		Last Modified: Sat, 28 Apr 2018 15:24:21 GMT  
		Size: 6.2 MB (6175090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3ff007bce5488b4e7043507f7f87493d7aa0372a09815f9bc19a3bdbd1e5871`  
		Last Modified: Sat, 28 Apr 2018 15:24:20 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1d85253fec27420108e4c25f864d427ae589ad03b505a9055f77042483b9f4f`  
		Last Modified: Sat, 28 Apr 2018 15:24:20 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2.11-32bit`

```console
$ docker pull redis@sha256:ed2acfd28f1c56ed23e987b67da8d9b69d6de1b6a5c565e190e2409f519e0bdf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:3.2.11-32bit` - linux; amd64

```console
$ docker pull redis@sha256:7de5b6486e762778c50919cedeba3a9e1d243a3b1ccc4cb5de9e3f5e7336b92b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.7 MB (40720862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:904b6224aa1136a09d43fcf811140e617e375148fe63490dca5bebc8de1738fa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Wed, 02 May 2018 04:56:53 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 02 May 2018 04:56:53 GMT
ENV GOSU_VERSION=1.10
# Wed, 02 May 2018 04:57:26 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 02 May 2018 04:57:26 GMT
ENV REDIS_VERSION=3.2.11
# Wed, 02 May 2018 04:57:26 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Wed, 02 May 2018 04:57:27 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Wed, 02 May 2018 05:23:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Wed, 02 May 2018 05:23:51 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 02 May 2018 05:23:52 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 02 May 2018 05:23:52 GMT
VOLUME [/data]
# Wed, 02 May 2018 05:23:53 GMT
WORKDIR /data
# Wed, 02 May 2018 05:23:53 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 02 May 2018 05:23:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 02 May 2018 05:23:54 GMT
EXPOSE 6379/tcp
# Wed, 02 May 2018 05:23:54 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfbf30a55ec9b919b906d4b24e5dbdec2f1e6fca20c2ecde3a656b70d733e7ab`  
		Last Modified: Wed, 02 May 2018 05:58:43 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82648e31640df7995132b7ec83b625138b560c783d72bcafadbfa8d8c2b1f6a5`  
		Last Modified: Wed, 02 May 2018 05:58:43 GMT  
		Size: 981.8 KB (981755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02e3e9e6e8d98def90659a805f5b5804612db5a692be4870bb74c87ed7590307`  
		Last Modified: Wed, 02 May 2018 06:06:57 GMT  
		Size: 4.4 MB (4378589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c77dbc491497722831bad20f342aa462cddefd24e272fe9c978cbb473a1a02b`  
		Last Modified: Wed, 02 May 2018 06:06:57 GMT  
		Size: 5.2 MB (5230627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f8dd6c346c3f74b083ef03e91dfe7113066e5cbe0541b2c9c4607c7e14f460f`  
		Last Modified: Wed, 02 May 2018 06:06:56 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a69ccf35a21e4de08757d3b4b850a37bd8a2f6cb38902b433232ae0fc90a1d4`  
		Last Modified: Wed, 02 May 2018 06:06:56 GMT  
		Size: 406.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2.11-alpine`

```console
$ docker pull redis@sha256:2ceb7ddf7cba73ebbaca849f9c4646869145d1f9aed1eb127856f66ecf5aad9a
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
$ docker pull redis@sha256:cbafff491c6e43699103becec2b090dbe161b693943a7c5c23157c794b4087e3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7706075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fc35634ab8037f8e7965fc4ce61a6b671f88de55cb3d2d8550a4981a7d897d9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Sat, 28 Apr 2018 15:37:26 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 28 Apr 2018 15:37:29 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 28 Apr 2018 15:37:30 GMT
ENV REDIS_VERSION=3.2.11
# Sat, 28 Apr 2018 15:37:30 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Sat, 28 Apr 2018 15:37:30 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Sat, 28 Apr 2018 15:37:58 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 28 Apr 2018 15:37:59 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 28 Apr 2018 15:37:59 GMT
VOLUME [/data]
# Sat, 28 Apr 2018 15:37:59 GMT
WORKDIR /data
# Sat, 28 Apr 2018 15:37:59 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 28 Apr 2018 15:38:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 28 Apr 2018 15:38:00 GMT
EXPOSE 6379/tcp
# Sat, 28 Apr 2018 15:38:00 GMT
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
	-	`sha256:0c230d0a9c7653e61602502e842c0cfa79cb885e5a22dab4bfa9cf424b0dfaea`  
		Last Modified: Sat, 28 Apr 2018 15:40:23 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a0bb9b4f3ee2c528d5d40ad10834a6b75b640b7fce2651a75e547191639b4b5`  
		Last Modified: Sat, 28 Apr 2018 15:40:23 GMT  
		Size: 8.7 KB (8652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4453ff2c6126c3d8b19c2b2127f2b0ec7282c520df2b53885d0718499cca6350`  
		Last Modified: Sat, 28 Apr 2018 15:40:25 GMT  
		Size: 5.6 MB (5569280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f104cb6e2cb449e0a9ccdefefe9289d99b13f7f28cb98718518fea0374d59a`  
		Last Modified: Sat, 28 Apr 2018 15:40:23 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16dd885a0e9552dca781f7022a9d81824d0f7117e8e1a3b4b4e123cc3b779712`  
		Last Modified: Sat, 28 Apr 2018 15:40:23 GMT  
		Size: 400.0 B  
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
$ docker pull redis@sha256:ed2acfd28f1c56ed23e987b67da8d9b69d6de1b6a5c565e190e2409f519e0bdf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:3.2-32bit` - linux; amd64

```console
$ docker pull redis@sha256:7de5b6486e762778c50919cedeba3a9e1d243a3b1ccc4cb5de9e3f5e7336b92b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.7 MB (40720862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:904b6224aa1136a09d43fcf811140e617e375148fe63490dca5bebc8de1738fa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Wed, 02 May 2018 04:56:53 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 02 May 2018 04:56:53 GMT
ENV GOSU_VERSION=1.10
# Wed, 02 May 2018 04:57:26 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 02 May 2018 04:57:26 GMT
ENV REDIS_VERSION=3.2.11
# Wed, 02 May 2018 04:57:26 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Wed, 02 May 2018 04:57:27 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Wed, 02 May 2018 05:23:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Wed, 02 May 2018 05:23:51 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 02 May 2018 05:23:52 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 02 May 2018 05:23:52 GMT
VOLUME [/data]
# Wed, 02 May 2018 05:23:53 GMT
WORKDIR /data
# Wed, 02 May 2018 05:23:53 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 02 May 2018 05:23:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 02 May 2018 05:23:54 GMT
EXPOSE 6379/tcp
# Wed, 02 May 2018 05:23:54 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfbf30a55ec9b919b906d4b24e5dbdec2f1e6fca20c2ecde3a656b70d733e7ab`  
		Last Modified: Wed, 02 May 2018 05:58:43 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82648e31640df7995132b7ec83b625138b560c783d72bcafadbfa8d8c2b1f6a5`  
		Last Modified: Wed, 02 May 2018 05:58:43 GMT  
		Size: 981.8 KB (981755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02e3e9e6e8d98def90659a805f5b5804612db5a692be4870bb74c87ed7590307`  
		Last Modified: Wed, 02 May 2018 06:06:57 GMT  
		Size: 4.4 MB (4378589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c77dbc491497722831bad20f342aa462cddefd24e272fe9c978cbb473a1a02b`  
		Last Modified: Wed, 02 May 2018 06:06:57 GMT  
		Size: 5.2 MB (5230627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f8dd6c346c3f74b083ef03e91dfe7113066e5cbe0541b2c9c4607c7e14f460f`  
		Last Modified: Wed, 02 May 2018 06:06:56 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a69ccf35a21e4de08757d3b4b850a37bd8a2f6cb38902b433232ae0fc90a1d4`  
		Last Modified: Wed, 02 May 2018 06:06:56 GMT  
		Size: 406.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2-alpine`

```console
$ docker pull redis@sha256:2ceb7ddf7cba73ebbaca849f9c4646869145d1f9aed1eb127856f66ecf5aad9a
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
$ docker pull redis@sha256:cbafff491c6e43699103becec2b090dbe161b693943a7c5c23157c794b4087e3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7706075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fc35634ab8037f8e7965fc4ce61a6b671f88de55cb3d2d8550a4981a7d897d9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Sat, 28 Apr 2018 15:37:26 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 28 Apr 2018 15:37:29 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 28 Apr 2018 15:37:30 GMT
ENV REDIS_VERSION=3.2.11
# Sat, 28 Apr 2018 15:37:30 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Sat, 28 Apr 2018 15:37:30 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Sat, 28 Apr 2018 15:37:58 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 28 Apr 2018 15:37:59 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 28 Apr 2018 15:37:59 GMT
VOLUME [/data]
# Sat, 28 Apr 2018 15:37:59 GMT
WORKDIR /data
# Sat, 28 Apr 2018 15:37:59 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 28 Apr 2018 15:38:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 28 Apr 2018 15:38:00 GMT
EXPOSE 6379/tcp
# Sat, 28 Apr 2018 15:38:00 GMT
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
	-	`sha256:0c230d0a9c7653e61602502e842c0cfa79cb885e5a22dab4bfa9cf424b0dfaea`  
		Last Modified: Sat, 28 Apr 2018 15:40:23 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a0bb9b4f3ee2c528d5d40ad10834a6b75b640b7fce2651a75e547191639b4b5`  
		Last Modified: Sat, 28 Apr 2018 15:40:23 GMT  
		Size: 8.7 KB (8652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4453ff2c6126c3d8b19c2b2127f2b0ec7282c520df2b53885d0718499cca6350`  
		Last Modified: Sat, 28 Apr 2018 15:40:25 GMT  
		Size: 5.6 MB (5569280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f104cb6e2cb449e0a9ccdefefe9289d99b13f7f28cb98718518fea0374d59a`  
		Last Modified: Sat, 28 Apr 2018 15:40:23 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16dd885a0e9552dca781f7022a9d81824d0f7117e8e1a3b4b4e123cc3b779712`  
		Last Modified: Sat, 28 Apr 2018 15:40:23 GMT  
		Size: 400.0 B  
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
$ docker pull redis@sha256:0e4c2049536e5dcf9732c343df3f8e9432b0773b836e1cfa96b36aa624e95725
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:32bit` - linux; amd64

```console
$ docker pull redis@sha256:977f31c8d9d80d739a35a54cf0bd4b72241d41c2f2fbbb3acc18cca4bf13afef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.0 MB (43014477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f25193471b306d29169241565976fd99c281e181a4795ffa50d75eda1754b9f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Wed, 02 May 2018 04:56:53 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 02 May 2018 04:56:53 GMT
ENV GOSU_VERSION=1.10
# Wed, 02 May 2018 04:57:26 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 02 May 2018 05:28:19 GMT
ENV REDIS_VERSION=4.0.9
# Wed, 02 May 2018 05:28:19 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.9.tar.gz
# Wed, 02 May 2018 05:28:19 GMT
ENV REDIS_DOWNLOAD_SHA=df4f73bc318e2f9ffb2d169a922dec57ec7c73dd07bccf875695dbeecd5ec510
# Wed, 02 May 2018 05:52:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Wed, 02 May 2018 05:53:29 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 02 May 2018 05:53:29 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 02 May 2018 05:53:30 GMT
VOLUME [/data]
# Wed, 02 May 2018 05:53:30 GMT
WORKDIR /data
# Wed, 02 May 2018 05:53:30 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 02 May 2018 05:53:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 02 May 2018 05:53:31 GMT
EXPOSE 6379/tcp
# Wed, 02 May 2018 05:53:31 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfbf30a55ec9b919b906d4b24e5dbdec2f1e6fca20c2ecde3a656b70d733e7ab`  
		Last Modified: Wed, 02 May 2018 05:58:43 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82648e31640df7995132b7ec83b625138b560c783d72bcafadbfa8d8c2b1f6a5`  
		Last Modified: Wed, 02 May 2018 05:58:43 GMT  
		Size: 981.8 KB (981755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a46139fc0e36cf97148be1661855bf7204fdae9dab73da97c82d58c2766b1aae`  
		Last Modified: Wed, 02 May 2018 06:45:06 GMT  
		Size: 4.4 MB (4378615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f5a53c5c366e5cb4dd0703841d0d2be857d8d46b189cf5ae15829332550ccf`  
		Last Modified: Wed, 02 May 2018 06:45:06 GMT  
		Size: 7.5 MB (7524214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e959ef149ae9de8aab6999fb4c88e6d075fbd91c315c6e0c404bee3cb4989ac2`  
		Last Modified: Wed, 02 May 2018 06:45:04 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c0bb4e333aee4e2c92ca0328c132b09c5fc1ca5417225354c23c1d1d3454c3f`  
		Last Modified: Wed, 02 May 2018 06:45:04 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3-32bit`

```console
$ docker pull redis@sha256:ed2acfd28f1c56ed23e987b67da8d9b69d6de1b6a5c565e190e2409f519e0bdf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:3-32bit` - linux; amd64

```console
$ docker pull redis@sha256:7de5b6486e762778c50919cedeba3a9e1d243a3b1ccc4cb5de9e3f5e7336b92b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.7 MB (40720862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:904b6224aa1136a09d43fcf811140e617e375148fe63490dca5bebc8de1738fa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Wed, 02 May 2018 04:56:53 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 02 May 2018 04:56:53 GMT
ENV GOSU_VERSION=1.10
# Wed, 02 May 2018 04:57:26 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 02 May 2018 04:57:26 GMT
ENV REDIS_VERSION=3.2.11
# Wed, 02 May 2018 04:57:26 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Wed, 02 May 2018 04:57:27 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Wed, 02 May 2018 05:23:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Wed, 02 May 2018 05:23:51 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 02 May 2018 05:23:52 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 02 May 2018 05:23:52 GMT
VOLUME [/data]
# Wed, 02 May 2018 05:23:53 GMT
WORKDIR /data
# Wed, 02 May 2018 05:23:53 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 02 May 2018 05:23:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 02 May 2018 05:23:54 GMT
EXPOSE 6379/tcp
# Wed, 02 May 2018 05:23:54 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfbf30a55ec9b919b906d4b24e5dbdec2f1e6fca20c2ecde3a656b70d733e7ab`  
		Last Modified: Wed, 02 May 2018 05:58:43 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82648e31640df7995132b7ec83b625138b560c783d72bcafadbfa8d8c2b1f6a5`  
		Last Modified: Wed, 02 May 2018 05:58:43 GMT  
		Size: 981.8 KB (981755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02e3e9e6e8d98def90659a805f5b5804612db5a692be4870bb74c87ed7590307`  
		Last Modified: Wed, 02 May 2018 06:06:57 GMT  
		Size: 4.4 MB (4378589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c77dbc491497722831bad20f342aa462cddefd24e272fe9c978cbb473a1a02b`  
		Last Modified: Wed, 02 May 2018 06:06:57 GMT  
		Size: 5.2 MB (5230627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f8dd6c346c3f74b083ef03e91dfe7113066e5cbe0541b2c9c4607c7e14f460f`  
		Last Modified: Wed, 02 May 2018 06:06:56 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a69ccf35a21e4de08757d3b4b850a37bd8a2f6cb38902b433232ae0fc90a1d4`  
		Last Modified: Wed, 02 May 2018 06:06:56 GMT  
		Size: 406.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3-alpine`

```console
$ docker pull redis@sha256:2ceb7ddf7cba73ebbaca849f9c4646869145d1f9aed1eb127856f66ecf5aad9a
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
$ docker pull redis@sha256:cbafff491c6e43699103becec2b090dbe161b693943a7c5c23157c794b4087e3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7706075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fc35634ab8037f8e7965fc4ce61a6b671f88de55cb3d2d8550a4981a7d897d9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Sat, 28 Apr 2018 15:37:26 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 28 Apr 2018 15:37:29 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 28 Apr 2018 15:37:30 GMT
ENV REDIS_VERSION=3.2.11
# Sat, 28 Apr 2018 15:37:30 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Sat, 28 Apr 2018 15:37:30 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Sat, 28 Apr 2018 15:37:58 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 28 Apr 2018 15:37:59 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 28 Apr 2018 15:37:59 GMT
VOLUME [/data]
# Sat, 28 Apr 2018 15:37:59 GMT
WORKDIR /data
# Sat, 28 Apr 2018 15:37:59 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 28 Apr 2018 15:38:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 28 Apr 2018 15:38:00 GMT
EXPOSE 6379/tcp
# Sat, 28 Apr 2018 15:38:00 GMT
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
	-	`sha256:0c230d0a9c7653e61602502e842c0cfa79cb885e5a22dab4bfa9cf424b0dfaea`  
		Last Modified: Sat, 28 Apr 2018 15:40:23 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a0bb9b4f3ee2c528d5d40ad10834a6b75b640b7fce2651a75e547191639b4b5`  
		Last Modified: Sat, 28 Apr 2018 15:40:23 GMT  
		Size: 8.7 KB (8652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4453ff2c6126c3d8b19c2b2127f2b0ec7282c520df2b53885d0718499cca6350`  
		Last Modified: Sat, 28 Apr 2018 15:40:25 GMT  
		Size: 5.6 MB (5569280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f104cb6e2cb449e0a9ccdefefe9289d99b13f7f28cb98718518fea0374d59a`  
		Last Modified: Sat, 28 Apr 2018 15:40:23 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16dd885a0e9552dca781f7022a9d81824d0f7117e8e1a3b4b4e123cc3b779712`  
		Last Modified: Sat, 28 Apr 2018 15:40:23 GMT  
		Size: 400.0 B  
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
$ docker pull redis@sha256:4aed8ea5a5fc4cf05c8d5341b4ae4a4f7c0f9301082a74f6f9a5f321140e0cd3
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
$ docker pull redis@sha256:fc13b47aca9b5b53f625efe91bcd5cc44c637e80a81e5b223d5a98a6eac7ceb2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.4 MB (39424183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfcb1f6df2db8a62694aaa732a3133799db59c6fec58bfeda84e34299e7270a8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Wed, 02 May 2018 04:56:53 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 02 May 2018 04:56:53 GMT
ENV GOSU_VERSION=1.10
# Wed, 02 May 2018 04:57:26 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 02 May 2018 05:28:19 GMT
ENV REDIS_VERSION=4.0.9
# Wed, 02 May 2018 05:28:19 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.9.tar.gz
# Wed, 02 May 2018 05:28:19 GMT
ENV REDIS_DOWNLOAD_SHA=df4f73bc318e2f9ffb2d169a922dec57ec7c73dd07bccf875695dbeecd5ec510
# Wed, 02 May 2018 05:29:09 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 02 May 2018 05:29:10 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 02 May 2018 05:29:10 GMT
VOLUME [/data]
# Wed, 02 May 2018 05:29:10 GMT
WORKDIR /data
# Wed, 02 May 2018 05:29:11 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 02 May 2018 05:29:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 02 May 2018 05:29:12 GMT
EXPOSE 6379/tcp
# Wed, 02 May 2018 05:29:12 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfbf30a55ec9b919b906d4b24e5dbdec2f1e6fca20c2ecde3a656b70d733e7ab`  
		Last Modified: Wed, 02 May 2018 05:58:43 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82648e31640df7995132b7ec83b625138b560c783d72bcafadbfa8d8c2b1f6a5`  
		Last Modified: Wed, 02 May 2018 05:58:43 GMT  
		Size: 981.8 KB (981755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb7ace35d550c3adf304617db0db076d8a51bf90e78493e95f869155490ab794`  
		Last Modified: Wed, 02 May 2018 06:36:22 GMT  
		Size: 8.3 MB (8312539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:497bf119bebf730cc0bda3908ca245fb7ff3a75ff40ac21d3bc2e9dd37a202da`  
		Last Modified: Wed, 02 May 2018 06:36:20 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89340f6074da87a4ffb6343e8232bd9653ddeee242506636868f663f836f571c`  
		Last Modified: Wed, 02 May 2018 06:36:21 GMT  
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
$ docker pull redis@sha256:e7a8a691a2269625589f31ee386326afbf466c0bb5f77f2f05065192fc360f56
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35207516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7400f1112cceac5427d5debbc0ee7bcf9ac234a463660f0367ceb3b041d9894`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 28 Apr 2018 11:59:37 GMT
ADD file:f8c645337024c026fbe602f5480bff6efe08526fe5ae5523df7dc29d240d16d2 in / 
# Sat, 28 Apr 2018 11:59:37 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 15:33:20 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 28 Apr 2018 15:33:20 GMT
ENV GOSU_VERSION=1.10
# Sat, 28 Apr 2018 15:34:04 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 28 Apr 2018 15:35:26 GMT
ENV REDIS_VERSION=4.0.9
# Sat, 28 Apr 2018 15:35:27 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.9.tar.gz
# Sat, 28 Apr 2018 15:35:27 GMT
ENV REDIS_DOWNLOAD_SHA=df4f73bc318e2f9ffb2d169a922dec57ec7c73dd07bccf875695dbeecd5ec510
# Sat, 28 Apr 2018 15:36:37 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 15:36:38 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 28 Apr 2018 15:36:38 GMT
VOLUME [/data]
# Sat, 28 Apr 2018 15:36:39 GMT
WORKDIR /data
# Sat, 28 Apr 2018 15:36:45 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 28 Apr 2018 15:36:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 28 Apr 2018 15:36:46 GMT
EXPOSE 6379/tcp
# Sat, 28 Apr 2018 15:36:46 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:2d5e3d857ad4821de542179b9b489e90fd471e4cd9f25c4aa2a09561c37a7806`  
		Last Modified: Sat, 28 Apr 2018 12:11:15 GMT  
		Size: 26.3 MB (26297400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c869525b4fbabc5be1b242a484ca9e2c6195952ffc5ef2f28fe09440315cd537`  
		Last Modified: Sat, 28 Apr 2018 15:37:08 GMT  
		Size: 2.1 KB (2077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f6696f4bc012488a7792f48a3a7efaaa67118894bec5b33c58d187e0e264039`  
		Last Modified: Sat, 28 Apr 2018 15:37:09 GMT  
		Size: 956.1 KB (956132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d53b5a51127b523fa60f8da2e923a2531e7ce8cac0fea0ef27c386bc186b52`  
		Last Modified: Sat, 28 Apr 2018 15:37:50 GMT  
		Size: 8.0 MB (7951373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87628d6f8b04957408e44bcfc91c88a1305a2637383f73eb336b99414685eec7`  
		Last Modified: Sat, 28 Apr 2018 15:37:48 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54f2204d17d353ae3881880155579013a801bccf76aade5943e01e7b1011a235`  
		Last Modified: Sat, 28 Apr 2018 15:37:47 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:aaec23b0054388186680ec9d02522767cc152fbf4333a98abfbdbd74a94cac6a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36899195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f0d7a5aa2a675d00049b60b14661a7d94d0b53a46c2dd4245cabbdd94782177`
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
# Tue, 01 May 2018 12:54:17 GMT
ENV REDIS_VERSION=4.0.9
# Tue, 01 May 2018 12:54:18 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.9.tar.gz
# Tue, 01 May 2018 12:54:19 GMT
ENV REDIS_DOWNLOAD_SHA=df4f73bc318e2f9ffb2d169a922dec57ec7c73dd07bccf875695dbeecd5ec510
# Tue, 01 May 2018 12:56:39 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 01 May 2018 12:56:43 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 01 May 2018 12:56:46 GMT
VOLUME [/data]
# Tue, 01 May 2018 12:56:48 GMT
WORKDIR /data
# Tue, 01 May 2018 12:56:50 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 01 May 2018 12:56:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 01 May 2018 12:56:57 GMT
EXPOSE 6379/tcp
# Tue, 01 May 2018 12:56:58 GMT
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
	-	`sha256:8c2802a92d325fe6e37acd423b3ec863226320365adb2265a3cb174de171227e`  
		Last Modified: Tue, 01 May 2018 12:57:57 GMT  
		Size: 8.5 MB (8453356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb56dff0016b78e5307101c0fdfad3c59a09358a601b84835e1da891447776ea`  
		Last Modified: Tue, 01 May 2018 12:57:53 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f493e433219b5fff07510d749e8fe0002c706fa7be5bb7a7c4f03d149fc06766`  
		Last Modified: Tue, 01 May 2018 12:57:53 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; 386

```console
$ docker pull redis@sha256:58065d39c759ec39b619af71aea4e82bb6419b4d63f773a8a9c5b4535c746ef9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.8 MB (38761471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80a60d3e46b8e4154f069cff14ad2b4454d77c6ec115c72f62d36dda4718aaff`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:45 GMT
ADD file:335ca08e6c562d8b16f2a4e788c5e977ba9815526d92d6d48cc3b8093824da2d in / 
# Sat, 28 Apr 2018 10:39:45 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 15:35:32 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 28 Apr 2018 15:35:32 GMT
ENV GOSU_VERSION=1.10
# Sat, 28 Apr 2018 15:36:13 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 28 Apr 2018 15:38:06 GMT
ENV REDIS_VERSION=4.0.9
# Sat, 28 Apr 2018 15:38:06 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.9.tar.gz
# Sat, 28 Apr 2018 15:38:07 GMT
ENV REDIS_DOWNLOAD_SHA=df4f73bc318e2f9ffb2d169a922dec57ec7c73dd07bccf875695dbeecd5ec510
# Sat, 28 Apr 2018 15:39:09 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 15:39:10 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 28 Apr 2018 15:39:10 GMT
VOLUME [/data]
# Sat, 28 Apr 2018 15:39:10 GMT
WORKDIR /data
# Sat, 28 Apr 2018 15:39:10 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 28 Apr 2018 15:39:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 28 Apr 2018 15:39:11 GMT
EXPOSE 6379/tcp
# Sat, 28 Apr 2018 15:39:11 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:175c17a0040b2274213f9504ec9e834814804aa24e25f9537af71fccc81a017f`  
		Last Modified: Sat, 28 Apr 2018 10:45:06 GMT  
		Size: 30.3 MB (30278658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf084d6e4734f36c90f6efb18393d3684a0f55559285a02decc03bfa5171801`  
		Last Modified: Sat, 28 Apr 2018 15:39:58 GMT  
		Size: 2.1 KB (2077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07603f325d3f5ae6731f7c58fd6c686b26f6a96721027173550da9e4f009a4be`  
		Last Modified: Sat, 28 Apr 2018 15:39:58 GMT  
		Size: 960.8 KB (960782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:559dbe38e11297bdb442c342b3bd60c566414b13928f1eaa3e7860dd2480c894`  
		Last Modified: Sat, 28 Apr 2018 15:40:43 GMT  
		Size: 7.5 MB (7519455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4beff7f3f68d5f2199bfa86d912d8140d2cfd7968865150c00a5e73aadf9afb3`  
		Last Modified: Sat, 28 Apr 2018 15:40:42 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d57169e9a23d16a714bcb6a942ff0a5a0496bb889617920f541e96e8932a5fbb`  
		Last Modified: Sat, 28 Apr 2018 15:40:42 GMT  
		Size: 401.0 B  
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
$ docker pull redis@sha256:284d3358b9cdc8b89eb632829c2c496116b30165876371c083213a0c19689855
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.2 MB (40224596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06da10e55ecce0ecd9d8692f0f7a66b8a23a4b74e0cca92360830694dc8d326b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 28 Apr 2018 11:42:53 GMT
ADD file:7c773d50957d6184975f5b22ef61757cd979893af5c77cdfef46dd28d8fc0296 in / 
# Sat, 28 Apr 2018 11:42:55 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 15:22:08 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 28 Apr 2018 15:22:08 GMT
ENV GOSU_VERSION=1.10
# Sat, 28 Apr 2018 15:22:27 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 28 Apr 2018 15:23:20 GMT
ENV REDIS_VERSION=4.0.9
# Sat, 28 Apr 2018 15:23:20 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.9.tar.gz
# Sat, 28 Apr 2018 15:23:21 GMT
ENV REDIS_DOWNLOAD_SHA=df4f73bc318e2f9ffb2d169a922dec57ec7c73dd07bccf875695dbeecd5ec510
# Sat, 28 Apr 2018 15:24:00 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 15:24:01 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 28 Apr 2018 15:24:01 GMT
VOLUME [/data]
# Sat, 28 Apr 2018 15:24:01 GMT
WORKDIR /data
# Sat, 28 Apr 2018 15:24:01 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 28 Apr 2018 15:24:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 28 Apr 2018 15:24:02 GMT
EXPOSE 6379/tcp
# Sat, 28 Apr 2018 15:24:02 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f4d03f2765a5584a0dc02af25ffd7c98d6e129d072a1fc30380b106603442102`  
		Last Modified: Sat, 28 Apr 2018 11:48:28 GMT  
		Size: 30.3 MB (30308304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eba1d9acfff4b699dd35d631aa6e773ae2fac66f9c37074283cf88f8a1f59abf`  
		Last Modified: Sat, 28 Apr 2018 15:24:20 GMT  
		Size: 2.1 KB (2091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e643404dd509543d9ae2eca1558ce6c975ce0ec2d69cbb500e7e5bb6a87da640`  
		Last Modified: Sat, 28 Apr 2018 15:24:20 GMT  
		Size: 966.9 KB (966949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2085575ab85cc13c565bd7c4b06289a96bec2c423ae8c060359e0b96898614ac`  
		Last Modified: Sat, 28 Apr 2018 15:24:42 GMT  
		Size: 8.9 MB (8946751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b116c392abf58bfef578b26b7ad40e84ae21002899000c9e1257ec44257ab52e`  
		Last Modified: Sat, 28 Apr 2018 15:24:40 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fe5603300d3c5938b82cd6c1565a64a756c063baedccd110cfdef058c46b6e1`  
		Last Modified: Sat, 28 Apr 2018 15:24:40 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0`

```console
$ docker pull redis@sha256:4aed8ea5a5fc4cf05c8d5341b4ae4a4f7c0f9301082a74f6f9a5f321140e0cd3
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
$ docker pull redis@sha256:fc13b47aca9b5b53f625efe91bcd5cc44c637e80a81e5b223d5a98a6eac7ceb2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.4 MB (39424183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfcb1f6df2db8a62694aaa732a3133799db59c6fec58bfeda84e34299e7270a8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Wed, 02 May 2018 04:56:53 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 02 May 2018 04:56:53 GMT
ENV GOSU_VERSION=1.10
# Wed, 02 May 2018 04:57:26 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 02 May 2018 05:28:19 GMT
ENV REDIS_VERSION=4.0.9
# Wed, 02 May 2018 05:28:19 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.9.tar.gz
# Wed, 02 May 2018 05:28:19 GMT
ENV REDIS_DOWNLOAD_SHA=df4f73bc318e2f9ffb2d169a922dec57ec7c73dd07bccf875695dbeecd5ec510
# Wed, 02 May 2018 05:29:09 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 02 May 2018 05:29:10 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 02 May 2018 05:29:10 GMT
VOLUME [/data]
# Wed, 02 May 2018 05:29:10 GMT
WORKDIR /data
# Wed, 02 May 2018 05:29:11 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 02 May 2018 05:29:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 02 May 2018 05:29:12 GMT
EXPOSE 6379/tcp
# Wed, 02 May 2018 05:29:12 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfbf30a55ec9b919b906d4b24e5dbdec2f1e6fca20c2ecde3a656b70d733e7ab`  
		Last Modified: Wed, 02 May 2018 05:58:43 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82648e31640df7995132b7ec83b625138b560c783d72bcafadbfa8d8c2b1f6a5`  
		Last Modified: Wed, 02 May 2018 05:58:43 GMT  
		Size: 981.8 KB (981755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb7ace35d550c3adf304617db0db076d8a51bf90e78493e95f869155490ab794`  
		Last Modified: Wed, 02 May 2018 06:36:22 GMT  
		Size: 8.3 MB (8312539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:497bf119bebf730cc0bda3908ca245fb7ff3a75ff40ac21d3bc2e9dd37a202da`  
		Last Modified: Wed, 02 May 2018 06:36:20 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89340f6074da87a4ffb6343e8232bd9653ddeee242506636868f663f836f571c`  
		Last Modified: Wed, 02 May 2018 06:36:21 GMT  
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
$ docker pull redis@sha256:e7a8a691a2269625589f31ee386326afbf466c0bb5f77f2f05065192fc360f56
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35207516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7400f1112cceac5427d5debbc0ee7bcf9ac234a463660f0367ceb3b041d9894`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 28 Apr 2018 11:59:37 GMT
ADD file:f8c645337024c026fbe602f5480bff6efe08526fe5ae5523df7dc29d240d16d2 in / 
# Sat, 28 Apr 2018 11:59:37 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 15:33:20 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 28 Apr 2018 15:33:20 GMT
ENV GOSU_VERSION=1.10
# Sat, 28 Apr 2018 15:34:04 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 28 Apr 2018 15:35:26 GMT
ENV REDIS_VERSION=4.0.9
# Sat, 28 Apr 2018 15:35:27 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.9.tar.gz
# Sat, 28 Apr 2018 15:35:27 GMT
ENV REDIS_DOWNLOAD_SHA=df4f73bc318e2f9ffb2d169a922dec57ec7c73dd07bccf875695dbeecd5ec510
# Sat, 28 Apr 2018 15:36:37 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 15:36:38 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 28 Apr 2018 15:36:38 GMT
VOLUME [/data]
# Sat, 28 Apr 2018 15:36:39 GMT
WORKDIR /data
# Sat, 28 Apr 2018 15:36:45 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 28 Apr 2018 15:36:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 28 Apr 2018 15:36:46 GMT
EXPOSE 6379/tcp
# Sat, 28 Apr 2018 15:36:46 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:2d5e3d857ad4821de542179b9b489e90fd471e4cd9f25c4aa2a09561c37a7806`  
		Last Modified: Sat, 28 Apr 2018 12:11:15 GMT  
		Size: 26.3 MB (26297400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c869525b4fbabc5be1b242a484ca9e2c6195952ffc5ef2f28fe09440315cd537`  
		Last Modified: Sat, 28 Apr 2018 15:37:08 GMT  
		Size: 2.1 KB (2077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f6696f4bc012488a7792f48a3a7efaaa67118894bec5b33c58d187e0e264039`  
		Last Modified: Sat, 28 Apr 2018 15:37:09 GMT  
		Size: 956.1 KB (956132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d53b5a51127b523fa60f8da2e923a2531e7ce8cac0fea0ef27c386bc186b52`  
		Last Modified: Sat, 28 Apr 2018 15:37:50 GMT  
		Size: 8.0 MB (7951373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87628d6f8b04957408e44bcfc91c88a1305a2637383f73eb336b99414685eec7`  
		Last Modified: Sat, 28 Apr 2018 15:37:48 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54f2204d17d353ae3881880155579013a801bccf76aade5943e01e7b1011a235`  
		Last Modified: Sat, 28 Apr 2018 15:37:47 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:aaec23b0054388186680ec9d02522767cc152fbf4333a98abfbdbd74a94cac6a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36899195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f0d7a5aa2a675d00049b60b14661a7d94d0b53a46c2dd4245cabbdd94782177`
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
# Tue, 01 May 2018 12:54:17 GMT
ENV REDIS_VERSION=4.0.9
# Tue, 01 May 2018 12:54:18 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.9.tar.gz
# Tue, 01 May 2018 12:54:19 GMT
ENV REDIS_DOWNLOAD_SHA=df4f73bc318e2f9ffb2d169a922dec57ec7c73dd07bccf875695dbeecd5ec510
# Tue, 01 May 2018 12:56:39 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 01 May 2018 12:56:43 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 01 May 2018 12:56:46 GMT
VOLUME [/data]
# Tue, 01 May 2018 12:56:48 GMT
WORKDIR /data
# Tue, 01 May 2018 12:56:50 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 01 May 2018 12:56:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 01 May 2018 12:56:57 GMT
EXPOSE 6379/tcp
# Tue, 01 May 2018 12:56:58 GMT
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
	-	`sha256:8c2802a92d325fe6e37acd423b3ec863226320365adb2265a3cb174de171227e`  
		Last Modified: Tue, 01 May 2018 12:57:57 GMT  
		Size: 8.5 MB (8453356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb56dff0016b78e5307101c0fdfad3c59a09358a601b84835e1da891447776ea`  
		Last Modified: Tue, 01 May 2018 12:57:53 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f493e433219b5fff07510d749e8fe0002c706fa7be5bb7a7c4f03d149fc06766`  
		Last Modified: Tue, 01 May 2018 12:57:53 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; 386

```console
$ docker pull redis@sha256:58065d39c759ec39b619af71aea4e82bb6419b4d63f773a8a9c5b4535c746ef9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.8 MB (38761471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80a60d3e46b8e4154f069cff14ad2b4454d77c6ec115c72f62d36dda4718aaff`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:45 GMT
ADD file:335ca08e6c562d8b16f2a4e788c5e977ba9815526d92d6d48cc3b8093824da2d in / 
# Sat, 28 Apr 2018 10:39:45 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 15:35:32 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 28 Apr 2018 15:35:32 GMT
ENV GOSU_VERSION=1.10
# Sat, 28 Apr 2018 15:36:13 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 28 Apr 2018 15:38:06 GMT
ENV REDIS_VERSION=4.0.9
# Sat, 28 Apr 2018 15:38:06 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.9.tar.gz
# Sat, 28 Apr 2018 15:38:07 GMT
ENV REDIS_DOWNLOAD_SHA=df4f73bc318e2f9ffb2d169a922dec57ec7c73dd07bccf875695dbeecd5ec510
# Sat, 28 Apr 2018 15:39:09 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 15:39:10 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 28 Apr 2018 15:39:10 GMT
VOLUME [/data]
# Sat, 28 Apr 2018 15:39:10 GMT
WORKDIR /data
# Sat, 28 Apr 2018 15:39:10 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 28 Apr 2018 15:39:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 28 Apr 2018 15:39:11 GMT
EXPOSE 6379/tcp
# Sat, 28 Apr 2018 15:39:11 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:175c17a0040b2274213f9504ec9e834814804aa24e25f9537af71fccc81a017f`  
		Last Modified: Sat, 28 Apr 2018 10:45:06 GMT  
		Size: 30.3 MB (30278658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf084d6e4734f36c90f6efb18393d3684a0f55559285a02decc03bfa5171801`  
		Last Modified: Sat, 28 Apr 2018 15:39:58 GMT  
		Size: 2.1 KB (2077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07603f325d3f5ae6731f7c58fd6c686b26f6a96721027173550da9e4f009a4be`  
		Last Modified: Sat, 28 Apr 2018 15:39:58 GMT  
		Size: 960.8 KB (960782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:559dbe38e11297bdb442c342b3bd60c566414b13928f1eaa3e7860dd2480c894`  
		Last Modified: Sat, 28 Apr 2018 15:40:43 GMT  
		Size: 7.5 MB (7519455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4beff7f3f68d5f2199bfa86d912d8140d2cfd7968865150c00a5e73aadf9afb3`  
		Last Modified: Sat, 28 Apr 2018 15:40:42 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d57169e9a23d16a714bcb6a942ff0a5a0496bb889617920f541e96e8932a5fbb`  
		Last Modified: Sat, 28 Apr 2018 15:40:42 GMT  
		Size: 401.0 B  
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
$ docker pull redis@sha256:284d3358b9cdc8b89eb632829c2c496116b30165876371c083213a0c19689855
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.2 MB (40224596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06da10e55ecce0ecd9d8692f0f7a66b8a23a4b74e0cca92360830694dc8d326b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 28 Apr 2018 11:42:53 GMT
ADD file:7c773d50957d6184975f5b22ef61757cd979893af5c77cdfef46dd28d8fc0296 in / 
# Sat, 28 Apr 2018 11:42:55 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 15:22:08 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 28 Apr 2018 15:22:08 GMT
ENV GOSU_VERSION=1.10
# Sat, 28 Apr 2018 15:22:27 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 28 Apr 2018 15:23:20 GMT
ENV REDIS_VERSION=4.0.9
# Sat, 28 Apr 2018 15:23:20 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.9.tar.gz
# Sat, 28 Apr 2018 15:23:21 GMT
ENV REDIS_DOWNLOAD_SHA=df4f73bc318e2f9ffb2d169a922dec57ec7c73dd07bccf875695dbeecd5ec510
# Sat, 28 Apr 2018 15:24:00 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 15:24:01 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 28 Apr 2018 15:24:01 GMT
VOLUME [/data]
# Sat, 28 Apr 2018 15:24:01 GMT
WORKDIR /data
# Sat, 28 Apr 2018 15:24:01 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 28 Apr 2018 15:24:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 28 Apr 2018 15:24:02 GMT
EXPOSE 6379/tcp
# Sat, 28 Apr 2018 15:24:02 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f4d03f2765a5584a0dc02af25ffd7c98d6e129d072a1fc30380b106603442102`  
		Last Modified: Sat, 28 Apr 2018 11:48:28 GMT  
		Size: 30.3 MB (30308304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eba1d9acfff4b699dd35d631aa6e773ae2fac66f9c37074283cf88f8a1f59abf`  
		Last Modified: Sat, 28 Apr 2018 15:24:20 GMT  
		Size: 2.1 KB (2091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e643404dd509543d9ae2eca1558ce6c975ce0ec2d69cbb500e7e5bb6a87da640`  
		Last Modified: Sat, 28 Apr 2018 15:24:20 GMT  
		Size: 966.9 KB (966949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2085575ab85cc13c565bd7c4b06289a96bec2c423ae8c060359e0b96898614ac`  
		Last Modified: Sat, 28 Apr 2018 15:24:42 GMT  
		Size: 8.9 MB (8946751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b116c392abf58bfef578b26b7ad40e84ae21002899000c9e1257ec44257ab52e`  
		Last Modified: Sat, 28 Apr 2018 15:24:40 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fe5603300d3c5938b82cd6c1565a64a756c063baedccd110cfdef058c46b6e1`  
		Last Modified: Sat, 28 Apr 2018 15:24:40 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0-32bit`

```console
$ docker pull redis@sha256:0e4c2049536e5dcf9732c343df3f8e9432b0773b836e1cfa96b36aa624e95725
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4.0-32bit` - linux; amd64

```console
$ docker pull redis@sha256:977f31c8d9d80d739a35a54cf0bd4b72241d41c2f2fbbb3acc18cca4bf13afef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.0 MB (43014477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f25193471b306d29169241565976fd99c281e181a4795ffa50d75eda1754b9f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Wed, 02 May 2018 04:56:53 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 02 May 2018 04:56:53 GMT
ENV GOSU_VERSION=1.10
# Wed, 02 May 2018 04:57:26 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 02 May 2018 05:28:19 GMT
ENV REDIS_VERSION=4.0.9
# Wed, 02 May 2018 05:28:19 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.9.tar.gz
# Wed, 02 May 2018 05:28:19 GMT
ENV REDIS_DOWNLOAD_SHA=df4f73bc318e2f9ffb2d169a922dec57ec7c73dd07bccf875695dbeecd5ec510
# Wed, 02 May 2018 05:52:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Wed, 02 May 2018 05:53:29 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 02 May 2018 05:53:29 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 02 May 2018 05:53:30 GMT
VOLUME [/data]
# Wed, 02 May 2018 05:53:30 GMT
WORKDIR /data
# Wed, 02 May 2018 05:53:30 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 02 May 2018 05:53:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 02 May 2018 05:53:31 GMT
EXPOSE 6379/tcp
# Wed, 02 May 2018 05:53:31 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfbf30a55ec9b919b906d4b24e5dbdec2f1e6fca20c2ecde3a656b70d733e7ab`  
		Last Modified: Wed, 02 May 2018 05:58:43 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82648e31640df7995132b7ec83b625138b560c783d72bcafadbfa8d8c2b1f6a5`  
		Last Modified: Wed, 02 May 2018 05:58:43 GMT  
		Size: 981.8 KB (981755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a46139fc0e36cf97148be1661855bf7204fdae9dab73da97c82d58c2766b1aae`  
		Last Modified: Wed, 02 May 2018 06:45:06 GMT  
		Size: 4.4 MB (4378615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f5a53c5c366e5cb4dd0703841d0d2be857d8d46b189cf5ae15829332550ccf`  
		Last Modified: Wed, 02 May 2018 06:45:06 GMT  
		Size: 7.5 MB (7524214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e959ef149ae9de8aab6999fb4c88e6d075fbd91c315c6e0c404bee3cb4989ac2`  
		Last Modified: Wed, 02 May 2018 06:45:04 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c0bb4e333aee4e2c92ca0328c132b09c5fc1ca5417225354c23c1d1d3454c3f`  
		Last Modified: Wed, 02 May 2018 06:45:04 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.9`

```console
$ docker pull redis@sha256:4aed8ea5a5fc4cf05c8d5341b4ae4a4f7c0f9301082a74f6f9a5f321140e0cd3
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
$ docker pull redis@sha256:fc13b47aca9b5b53f625efe91bcd5cc44c637e80a81e5b223d5a98a6eac7ceb2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.4 MB (39424183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfcb1f6df2db8a62694aaa732a3133799db59c6fec58bfeda84e34299e7270a8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Wed, 02 May 2018 04:56:53 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 02 May 2018 04:56:53 GMT
ENV GOSU_VERSION=1.10
# Wed, 02 May 2018 04:57:26 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 02 May 2018 05:28:19 GMT
ENV REDIS_VERSION=4.0.9
# Wed, 02 May 2018 05:28:19 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.9.tar.gz
# Wed, 02 May 2018 05:28:19 GMT
ENV REDIS_DOWNLOAD_SHA=df4f73bc318e2f9ffb2d169a922dec57ec7c73dd07bccf875695dbeecd5ec510
# Wed, 02 May 2018 05:29:09 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 02 May 2018 05:29:10 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 02 May 2018 05:29:10 GMT
VOLUME [/data]
# Wed, 02 May 2018 05:29:10 GMT
WORKDIR /data
# Wed, 02 May 2018 05:29:11 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 02 May 2018 05:29:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 02 May 2018 05:29:12 GMT
EXPOSE 6379/tcp
# Wed, 02 May 2018 05:29:12 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfbf30a55ec9b919b906d4b24e5dbdec2f1e6fca20c2ecde3a656b70d733e7ab`  
		Last Modified: Wed, 02 May 2018 05:58:43 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82648e31640df7995132b7ec83b625138b560c783d72bcafadbfa8d8c2b1f6a5`  
		Last Modified: Wed, 02 May 2018 05:58:43 GMT  
		Size: 981.8 KB (981755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb7ace35d550c3adf304617db0db076d8a51bf90e78493e95f869155490ab794`  
		Last Modified: Wed, 02 May 2018 06:36:22 GMT  
		Size: 8.3 MB (8312539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:497bf119bebf730cc0bda3908ca245fb7ff3a75ff40ac21d3bc2e9dd37a202da`  
		Last Modified: Wed, 02 May 2018 06:36:20 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89340f6074da87a4ffb6343e8232bd9653ddeee242506636868f663f836f571c`  
		Last Modified: Wed, 02 May 2018 06:36:21 GMT  
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
$ docker pull redis@sha256:e7a8a691a2269625589f31ee386326afbf466c0bb5f77f2f05065192fc360f56
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35207516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7400f1112cceac5427d5debbc0ee7bcf9ac234a463660f0367ceb3b041d9894`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 28 Apr 2018 11:59:37 GMT
ADD file:f8c645337024c026fbe602f5480bff6efe08526fe5ae5523df7dc29d240d16d2 in / 
# Sat, 28 Apr 2018 11:59:37 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 15:33:20 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 28 Apr 2018 15:33:20 GMT
ENV GOSU_VERSION=1.10
# Sat, 28 Apr 2018 15:34:04 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 28 Apr 2018 15:35:26 GMT
ENV REDIS_VERSION=4.0.9
# Sat, 28 Apr 2018 15:35:27 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.9.tar.gz
# Sat, 28 Apr 2018 15:35:27 GMT
ENV REDIS_DOWNLOAD_SHA=df4f73bc318e2f9ffb2d169a922dec57ec7c73dd07bccf875695dbeecd5ec510
# Sat, 28 Apr 2018 15:36:37 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 15:36:38 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 28 Apr 2018 15:36:38 GMT
VOLUME [/data]
# Sat, 28 Apr 2018 15:36:39 GMT
WORKDIR /data
# Sat, 28 Apr 2018 15:36:45 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 28 Apr 2018 15:36:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 28 Apr 2018 15:36:46 GMT
EXPOSE 6379/tcp
# Sat, 28 Apr 2018 15:36:46 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:2d5e3d857ad4821de542179b9b489e90fd471e4cd9f25c4aa2a09561c37a7806`  
		Last Modified: Sat, 28 Apr 2018 12:11:15 GMT  
		Size: 26.3 MB (26297400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c869525b4fbabc5be1b242a484ca9e2c6195952ffc5ef2f28fe09440315cd537`  
		Last Modified: Sat, 28 Apr 2018 15:37:08 GMT  
		Size: 2.1 KB (2077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f6696f4bc012488a7792f48a3a7efaaa67118894bec5b33c58d187e0e264039`  
		Last Modified: Sat, 28 Apr 2018 15:37:09 GMT  
		Size: 956.1 KB (956132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d53b5a51127b523fa60f8da2e923a2531e7ce8cac0fea0ef27c386bc186b52`  
		Last Modified: Sat, 28 Apr 2018 15:37:50 GMT  
		Size: 8.0 MB (7951373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87628d6f8b04957408e44bcfc91c88a1305a2637383f73eb336b99414685eec7`  
		Last Modified: Sat, 28 Apr 2018 15:37:48 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54f2204d17d353ae3881880155579013a801bccf76aade5943e01e7b1011a235`  
		Last Modified: Sat, 28 Apr 2018 15:37:47 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.9` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:aaec23b0054388186680ec9d02522767cc152fbf4333a98abfbdbd74a94cac6a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36899195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f0d7a5aa2a675d00049b60b14661a7d94d0b53a46c2dd4245cabbdd94782177`
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
# Tue, 01 May 2018 12:54:17 GMT
ENV REDIS_VERSION=4.0.9
# Tue, 01 May 2018 12:54:18 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.9.tar.gz
# Tue, 01 May 2018 12:54:19 GMT
ENV REDIS_DOWNLOAD_SHA=df4f73bc318e2f9ffb2d169a922dec57ec7c73dd07bccf875695dbeecd5ec510
# Tue, 01 May 2018 12:56:39 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 01 May 2018 12:56:43 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 01 May 2018 12:56:46 GMT
VOLUME [/data]
# Tue, 01 May 2018 12:56:48 GMT
WORKDIR /data
# Tue, 01 May 2018 12:56:50 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 01 May 2018 12:56:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 01 May 2018 12:56:57 GMT
EXPOSE 6379/tcp
# Tue, 01 May 2018 12:56:58 GMT
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
	-	`sha256:8c2802a92d325fe6e37acd423b3ec863226320365adb2265a3cb174de171227e`  
		Last Modified: Tue, 01 May 2018 12:57:57 GMT  
		Size: 8.5 MB (8453356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb56dff0016b78e5307101c0fdfad3c59a09358a601b84835e1da891447776ea`  
		Last Modified: Tue, 01 May 2018 12:57:53 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f493e433219b5fff07510d749e8fe0002c706fa7be5bb7a7c4f03d149fc06766`  
		Last Modified: Tue, 01 May 2018 12:57:53 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.9` - linux; 386

```console
$ docker pull redis@sha256:58065d39c759ec39b619af71aea4e82bb6419b4d63f773a8a9c5b4535c746ef9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.8 MB (38761471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80a60d3e46b8e4154f069cff14ad2b4454d77c6ec115c72f62d36dda4718aaff`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:45 GMT
ADD file:335ca08e6c562d8b16f2a4e788c5e977ba9815526d92d6d48cc3b8093824da2d in / 
# Sat, 28 Apr 2018 10:39:45 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 15:35:32 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 28 Apr 2018 15:35:32 GMT
ENV GOSU_VERSION=1.10
# Sat, 28 Apr 2018 15:36:13 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 28 Apr 2018 15:38:06 GMT
ENV REDIS_VERSION=4.0.9
# Sat, 28 Apr 2018 15:38:06 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.9.tar.gz
# Sat, 28 Apr 2018 15:38:07 GMT
ENV REDIS_DOWNLOAD_SHA=df4f73bc318e2f9ffb2d169a922dec57ec7c73dd07bccf875695dbeecd5ec510
# Sat, 28 Apr 2018 15:39:09 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 15:39:10 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 28 Apr 2018 15:39:10 GMT
VOLUME [/data]
# Sat, 28 Apr 2018 15:39:10 GMT
WORKDIR /data
# Sat, 28 Apr 2018 15:39:10 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 28 Apr 2018 15:39:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 28 Apr 2018 15:39:11 GMT
EXPOSE 6379/tcp
# Sat, 28 Apr 2018 15:39:11 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:175c17a0040b2274213f9504ec9e834814804aa24e25f9537af71fccc81a017f`  
		Last Modified: Sat, 28 Apr 2018 10:45:06 GMT  
		Size: 30.3 MB (30278658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf084d6e4734f36c90f6efb18393d3684a0f55559285a02decc03bfa5171801`  
		Last Modified: Sat, 28 Apr 2018 15:39:58 GMT  
		Size: 2.1 KB (2077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07603f325d3f5ae6731f7c58fd6c686b26f6a96721027173550da9e4f009a4be`  
		Last Modified: Sat, 28 Apr 2018 15:39:58 GMT  
		Size: 960.8 KB (960782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:559dbe38e11297bdb442c342b3bd60c566414b13928f1eaa3e7860dd2480c894`  
		Last Modified: Sat, 28 Apr 2018 15:40:43 GMT  
		Size: 7.5 MB (7519455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4beff7f3f68d5f2199bfa86d912d8140d2cfd7968865150c00a5e73aadf9afb3`  
		Last Modified: Sat, 28 Apr 2018 15:40:42 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d57169e9a23d16a714bcb6a942ff0a5a0496bb889617920f541e96e8932a5fbb`  
		Last Modified: Sat, 28 Apr 2018 15:40:42 GMT  
		Size: 401.0 B  
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
$ docker pull redis@sha256:284d3358b9cdc8b89eb632829c2c496116b30165876371c083213a0c19689855
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.2 MB (40224596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06da10e55ecce0ecd9d8692f0f7a66b8a23a4b74e0cca92360830694dc8d326b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 28 Apr 2018 11:42:53 GMT
ADD file:7c773d50957d6184975f5b22ef61757cd979893af5c77cdfef46dd28d8fc0296 in / 
# Sat, 28 Apr 2018 11:42:55 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 15:22:08 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 28 Apr 2018 15:22:08 GMT
ENV GOSU_VERSION=1.10
# Sat, 28 Apr 2018 15:22:27 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 28 Apr 2018 15:23:20 GMT
ENV REDIS_VERSION=4.0.9
# Sat, 28 Apr 2018 15:23:20 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.9.tar.gz
# Sat, 28 Apr 2018 15:23:21 GMT
ENV REDIS_DOWNLOAD_SHA=df4f73bc318e2f9ffb2d169a922dec57ec7c73dd07bccf875695dbeecd5ec510
# Sat, 28 Apr 2018 15:24:00 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 15:24:01 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 28 Apr 2018 15:24:01 GMT
VOLUME [/data]
# Sat, 28 Apr 2018 15:24:01 GMT
WORKDIR /data
# Sat, 28 Apr 2018 15:24:01 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 28 Apr 2018 15:24:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 28 Apr 2018 15:24:02 GMT
EXPOSE 6379/tcp
# Sat, 28 Apr 2018 15:24:02 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f4d03f2765a5584a0dc02af25ffd7c98d6e129d072a1fc30380b106603442102`  
		Last Modified: Sat, 28 Apr 2018 11:48:28 GMT  
		Size: 30.3 MB (30308304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eba1d9acfff4b699dd35d631aa6e773ae2fac66f9c37074283cf88f8a1f59abf`  
		Last Modified: Sat, 28 Apr 2018 15:24:20 GMT  
		Size: 2.1 KB (2091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e643404dd509543d9ae2eca1558ce6c975ce0ec2d69cbb500e7e5bb6a87da640`  
		Last Modified: Sat, 28 Apr 2018 15:24:20 GMT  
		Size: 966.9 KB (966949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2085575ab85cc13c565bd7c4b06289a96bec2c423ae8c060359e0b96898614ac`  
		Last Modified: Sat, 28 Apr 2018 15:24:42 GMT  
		Size: 8.9 MB (8946751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b116c392abf58bfef578b26b7ad40e84ae21002899000c9e1257ec44257ab52e`  
		Last Modified: Sat, 28 Apr 2018 15:24:40 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fe5603300d3c5938b82cd6c1565a64a756c063baedccd110cfdef058c46b6e1`  
		Last Modified: Sat, 28 Apr 2018 15:24:40 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.9-32bit`

```console
$ docker pull redis@sha256:0e4c2049536e5dcf9732c343df3f8e9432b0773b836e1cfa96b36aa624e95725
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4.0.9-32bit` - linux; amd64

```console
$ docker pull redis@sha256:977f31c8d9d80d739a35a54cf0bd4b72241d41c2f2fbbb3acc18cca4bf13afef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.0 MB (43014477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f25193471b306d29169241565976fd99c281e181a4795ffa50d75eda1754b9f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Wed, 02 May 2018 04:56:53 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 02 May 2018 04:56:53 GMT
ENV GOSU_VERSION=1.10
# Wed, 02 May 2018 04:57:26 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 02 May 2018 05:28:19 GMT
ENV REDIS_VERSION=4.0.9
# Wed, 02 May 2018 05:28:19 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.9.tar.gz
# Wed, 02 May 2018 05:28:19 GMT
ENV REDIS_DOWNLOAD_SHA=df4f73bc318e2f9ffb2d169a922dec57ec7c73dd07bccf875695dbeecd5ec510
# Wed, 02 May 2018 05:52:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Wed, 02 May 2018 05:53:29 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 02 May 2018 05:53:29 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 02 May 2018 05:53:30 GMT
VOLUME [/data]
# Wed, 02 May 2018 05:53:30 GMT
WORKDIR /data
# Wed, 02 May 2018 05:53:30 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 02 May 2018 05:53:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 02 May 2018 05:53:31 GMT
EXPOSE 6379/tcp
# Wed, 02 May 2018 05:53:31 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfbf30a55ec9b919b906d4b24e5dbdec2f1e6fca20c2ecde3a656b70d733e7ab`  
		Last Modified: Wed, 02 May 2018 05:58:43 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82648e31640df7995132b7ec83b625138b560c783d72bcafadbfa8d8c2b1f6a5`  
		Last Modified: Wed, 02 May 2018 05:58:43 GMT  
		Size: 981.8 KB (981755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a46139fc0e36cf97148be1661855bf7204fdae9dab73da97c82d58c2766b1aae`  
		Last Modified: Wed, 02 May 2018 06:45:06 GMT  
		Size: 4.4 MB (4378615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f5a53c5c366e5cb4dd0703841d0d2be857d8d46b189cf5ae15829332550ccf`  
		Last Modified: Wed, 02 May 2018 06:45:06 GMT  
		Size: 7.5 MB (7524214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e959ef149ae9de8aab6999fb4c88e6d075fbd91c315c6e0c404bee3cb4989ac2`  
		Last Modified: Wed, 02 May 2018 06:45:04 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c0bb4e333aee4e2c92ca0328c132b09c5fc1ca5417225354c23c1d1d3454c3f`  
		Last Modified: Wed, 02 May 2018 06:45:04 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.9-alpine`

```console
$ docker pull redis@sha256:8782054ba81c3b8b969dae4822263a97fc241a06f8f1fe1acacd7c077ec60831
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
$ docker pull redis@sha256:479dee5507733b1dd900d71b5db6f7ce8377afec81c97c391918916c8222f2ae
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.2 MB (10204976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c13d44095a4dedb2edb29db271f1b49e5390becd7b1eca2dfe628bb92bae5660`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Sat, 28 Apr 2018 15:37:26 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 28 Apr 2018 15:37:29 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 28 Apr 2018 15:39:17 GMT
ENV REDIS_VERSION=4.0.9
# Sat, 28 Apr 2018 15:39:17 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.9.tar.gz
# Sat, 28 Apr 2018 15:39:17 GMT
ENV REDIS_DOWNLOAD_SHA=df4f73bc318e2f9ffb2d169a922dec57ec7c73dd07bccf875695dbeecd5ec510
# Sat, 28 Apr 2018 15:39:46 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 28 Apr 2018 15:39:46 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 28 Apr 2018 15:39:46 GMT
VOLUME [/data]
# Sat, 28 Apr 2018 15:39:47 GMT
WORKDIR /data
# Sat, 28 Apr 2018 15:39:47 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 28 Apr 2018 15:39:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 28 Apr 2018 15:39:47 GMT
EXPOSE 6379/tcp
# Sat, 28 Apr 2018 15:39:48 GMT
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
	-	`sha256:0c230d0a9c7653e61602502e842c0cfa79cb885e5a22dab4bfa9cf424b0dfaea`  
		Last Modified: Sat, 28 Apr 2018 15:40:23 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a0bb9b4f3ee2c528d5d40ad10834a6b75b640b7fce2651a75e547191639b4b5`  
		Last Modified: Sat, 28 Apr 2018 15:40:23 GMT  
		Size: 8.7 KB (8652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abfa009ea986c303af30ec16675f9ac249dd69353d5db9441e2726c5901cff8b`  
		Last Modified: Sat, 28 Apr 2018 15:41:05 GMT  
		Size: 8.1 MB (8068180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5288f60387c2604cc6c192db3b28e0c7fed9abb88716e45dae6a2fe116f7c5c`  
		Last Modified: Sat, 28 Apr 2018 15:41:03 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720b9087894340029aa31bcd20381d134a5af2f872ea204ac9e269970afc51d2`  
		Last Modified: Sat, 28 Apr 2018 15:41:03 GMT  
		Size: 402.0 B  
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
$ docker pull redis@sha256:8782054ba81c3b8b969dae4822263a97fc241a06f8f1fe1acacd7c077ec60831
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
$ docker pull redis@sha256:479dee5507733b1dd900d71b5db6f7ce8377afec81c97c391918916c8222f2ae
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.2 MB (10204976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c13d44095a4dedb2edb29db271f1b49e5390becd7b1eca2dfe628bb92bae5660`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Sat, 28 Apr 2018 15:37:26 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 28 Apr 2018 15:37:29 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 28 Apr 2018 15:39:17 GMT
ENV REDIS_VERSION=4.0.9
# Sat, 28 Apr 2018 15:39:17 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.9.tar.gz
# Sat, 28 Apr 2018 15:39:17 GMT
ENV REDIS_DOWNLOAD_SHA=df4f73bc318e2f9ffb2d169a922dec57ec7c73dd07bccf875695dbeecd5ec510
# Sat, 28 Apr 2018 15:39:46 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 28 Apr 2018 15:39:46 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 28 Apr 2018 15:39:46 GMT
VOLUME [/data]
# Sat, 28 Apr 2018 15:39:47 GMT
WORKDIR /data
# Sat, 28 Apr 2018 15:39:47 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 28 Apr 2018 15:39:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 28 Apr 2018 15:39:47 GMT
EXPOSE 6379/tcp
# Sat, 28 Apr 2018 15:39:48 GMT
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
	-	`sha256:0c230d0a9c7653e61602502e842c0cfa79cb885e5a22dab4bfa9cf424b0dfaea`  
		Last Modified: Sat, 28 Apr 2018 15:40:23 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a0bb9b4f3ee2c528d5d40ad10834a6b75b640b7fce2651a75e547191639b4b5`  
		Last Modified: Sat, 28 Apr 2018 15:40:23 GMT  
		Size: 8.7 KB (8652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abfa009ea986c303af30ec16675f9ac249dd69353d5db9441e2726c5901cff8b`  
		Last Modified: Sat, 28 Apr 2018 15:41:05 GMT  
		Size: 8.1 MB (8068180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5288f60387c2604cc6c192db3b28e0c7fed9abb88716e45dae6a2fe116f7c5c`  
		Last Modified: Sat, 28 Apr 2018 15:41:03 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720b9087894340029aa31bcd20381d134a5af2f872ea204ac9e269970afc51d2`  
		Last Modified: Sat, 28 Apr 2018 15:41:03 GMT  
		Size: 402.0 B  
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
$ docker pull redis@sha256:0e4c2049536e5dcf9732c343df3f8e9432b0773b836e1cfa96b36aa624e95725
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4-32bit` - linux; amd64

```console
$ docker pull redis@sha256:977f31c8d9d80d739a35a54cf0bd4b72241d41c2f2fbbb3acc18cca4bf13afef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.0 MB (43014477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f25193471b306d29169241565976fd99c281e181a4795ffa50d75eda1754b9f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Wed, 02 May 2018 04:56:53 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 02 May 2018 04:56:53 GMT
ENV GOSU_VERSION=1.10
# Wed, 02 May 2018 04:57:26 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 02 May 2018 05:28:19 GMT
ENV REDIS_VERSION=4.0.9
# Wed, 02 May 2018 05:28:19 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.9.tar.gz
# Wed, 02 May 2018 05:28:19 GMT
ENV REDIS_DOWNLOAD_SHA=df4f73bc318e2f9ffb2d169a922dec57ec7c73dd07bccf875695dbeecd5ec510
# Wed, 02 May 2018 05:52:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Wed, 02 May 2018 05:53:29 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 02 May 2018 05:53:29 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 02 May 2018 05:53:30 GMT
VOLUME [/data]
# Wed, 02 May 2018 05:53:30 GMT
WORKDIR /data
# Wed, 02 May 2018 05:53:30 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 02 May 2018 05:53:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 02 May 2018 05:53:31 GMT
EXPOSE 6379/tcp
# Wed, 02 May 2018 05:53:31 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfbf30a55ec9b919b906d4b24e5dbdec2f1e6fca20c2ecde3a656b70d733e7ab`  
		Last Modified: Wed, 02 May 2018 05:58:43 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82648e31640df7995132b7ec83b625138b560c783d72bcafadbfa8d8c2b1f6a5`  
		Last Modified: Wed, 02 May 2018 05:58:43 GMT  
		Size: 981.8 KB (981755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a46139fc0e36cf97148be1661855bf7204fdae9dab73da97c82d58c2766b1aae`  
		Last Modified: Wed, 02 May 2018 06:45:06 GMT  
		Size: 4.4 MB (4378615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f5a53c5c366e5cb4dd0703841d0d2be857d8d46b189cf5ae15829332550ccf`  
		Last Modified: Wed, 02 May 2018 06:45:06 GMT  
		Size: 7.5 MB (7524214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e959ef149ae9de8aab6999fb4c88e6d075fbd91c315c6e0c404bee3cb4989ac2`  
		Last Modified: Wed, 02 May 2018 06:45:04 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c0bb4e333aee4e2c92ca0328c132b09c5fc1ca5417225354c23c1d1d3454c3f`  
		Last Modified: Wed, 02 May 2018 06:45:04 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4-alpine`

```console
$ docker pull redis@sha256:8782054ba81c3b8b969dae4822263a97fc241a06f8f1fe1acacd7c077ec60831
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
$ docker pull redis@sha256:479dee5507733b1dd900d71b5db6f7ce8377afec81c97c391918916c8222f2ae
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.2 MB (10204976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c13d44095a4dedb2edb29db271f1b49e5390becd7b1eca2dfe628bb92bae5660`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Sat, 28 Apr 2018 15:37:26 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 28 Apr 2018 15:37:29 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 28 Apr 2018 15:39:17 GMT
ENV REDIS_VERSION=4.0.9
# Sat, 28 Apr 2018 15:39:17 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.9.tar.gz
# Sat, 28 Apr 2018 15:39:17 GMT
ENV REDIS_DOWNLOAD_SHA=df4f73bc318e2f9ffb2d169a922dec57ec7c73dd07bccf875695dbeecd5ec510
# Sat, 28 Apr 2018 15:39:46 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 28 Apr 2018 15:39:46 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 28 Apr 2018 15:39:46 GMT
VOLUME [/data]
# Sat, 28 Apr 2018 15:39:47 GMT
WORKDIR /data
# Sat, 28 Apr 2018 15:39:47 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 28 Apr 2018 15:39:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 28 Apr 2018 15:39:47 GMT
EXPOSE 6379/tcp
# Sat, 28 Apr 2018 15:39:48 GMT
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
	-	`sha256:0c230d0a9c7653e61602502e842c0cfa79cb885e5a22dab4bfa9cf424b0dfaea`  
		Last Modified: Sat, 28 Apr 2018 15:40:23 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a0bb9b4f3ee2c528d5d40ad10834a6b75b640b7fce2651a75e547191639b4b5`  
		Last Modified: Sat, 28 Apr 2018 15:40:23 GMT  
		Size: 8.7 KB (8652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abfa009ea986c303af30ec16675f9ac249dd69353d5db9441e2726c5901cff8b`  
		Last Modified: Sat, 28 Apr 2018 15:41:05 GMT  
		Size: 8.1 MB (8068180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5288f60387c2604cc6c192db3b28e0c7fed9abb88716e45dae6a2fe116f7c5c`  
		Last Modified: Sat, 28 Apr 2018 15:41:03 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720b9087894340029aa31bcd20381d134a5af2f872ea204ac9e269970afc51d2`  
		Last Modified: Sat, 28 Apr 2018 15:41:03 GMT  
		Size: 402.0 B  
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
$ docker pull redis@sha256:8782054ba81c3b8b969dae4822263a97fc241a06f8f1fe1acacd7c077ec60831
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
$ docker pull redis@sha256:479dee5507733b1dd900d71b5db6f7ce8377afec81c97c391918916c8222f2ae
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.2 MB (10204976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c13d44095a4dedb2edb29db271f1b49e5390becd7b1eca2dfe628bb92bae5660`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Sat, 28 Apr 2018 15:37:26 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 28 Apr 2018 15:37:29 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 28 Apr 2018 15:39:17 GMT
ENV REDIS_VERSION=4.0.9
# Sat, 28 Apr 2018 15:39:17 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.9.tar.gz
# Sat, 28 Apr 2018 15:39:17 GMT
ENV REDIS_DOWNLOAD_SHA=df4f73bc318e2f9ffb2d169a922dec57ec7c73dd07bccf875695dbeecd5ec510
# Sat, 28 Apr 2018 15:39:46 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 28 Apr 2018 15:39:46 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 28 Apr 2018 15:39:46 GMT
VOLUME [/data]
# Sat, 28 Apr 2018 15:39:47 GMT
WORKDIR /data
# Sat, 28 Apr 2018 15:39:47 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 28 Apr 2018 15:39:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 28 Apr 2018 15:39:47 GMT
EXPOSE 6379/tcp
# Sat, 28 Apr 2018 15:39:48 GMT
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
	-	`sha256:0c230d0a9c7653e61602502e842c0cfa79cb885e5a22dab4bfa9cf424b0dfaea`  
		Last Modified: Sat, 28 Apr 2018 15:40:23 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a0bb9b4f3ee2c528d5d40ad10834a6b75b640b7fce2651a75e547191639b4b5`  
		Last Modified: Sat, 28 Apr 2018 15:40:23 GMT  
		Size: 8.7 KB (8652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abfa009ea986c303af30ec16675f9ac249dd69353d5db9441e2726c5901cff8b`  
		Last Modified: Sat, 28 Apr 2018 15:41:05 GMT  
		Size: 8.1 MB (8068180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5288f60387c2604cc6c192db3b28e0c7fed9abb88716e45dae6a2fe116f7c5c`  
		Last Modified: Sat, 28 Apr 2018 15:41:03 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720b9087894340029aa31bcd20381d134a5af2f872ea204ac9e269970afc51d2`  
		Last Modified: Sat, 28 Apr 2018 15:41:03 GMT  
		Size: 402.0 B  
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
$ docker pull redis@sha256:4aed8ea5a5fc4cf05c8d5341b4ae4a4f7c0f9301082a74f6f9a5f321140e0cd3
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
$ docker pull redis@sha256:fc13b47aca9b5b53f625efe91bcd5cc44c637e80a81e5b223d5a98a6eac7ceb2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.4 MB (39424183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfcb1f6df2db8a62694aaa732a3133799db59c6fec58bfeda84e34299e7270a8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Wed, 02 May 2018 04:56:53 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 02 May 2018 04:56:53 GMT
ENV GOSU_VERSION=1.10
# Wed, 02 May 2018 04:57:26 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 02 May 2018 05:28:19 GMT
ENV REDIS_VERSION=4.0.9
# Wed, 02 May 2018 05:28:19 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.9.tar.gz
# Wed, 02 May 2018 05:28:19 GMT
ENV REDIS_DOWNLOAD_SHA=df4f73bc318e2f9ffb2d169a922dec57ec7c73dd07bccf875695dbeecd5ec510
# Wed, 02 May 2018 05:29:09 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 02 May 2018 05:29:10 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 02 May 2018 05:29:10 GMT
VOLUME [/data]
# Wed, 02 May 2018 05:29:10 GMT
WORKDIR /data
# Wed, 02 May 2018 05:29:11 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 02 May 2018 05:29:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 02 May 2018 05:29:12 GMT
EXPOSE 6379/tcp
# Wed, 02 May 2018 05:29:12 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfbf30a55ec9b919b906d4b24e5dbdec2f1e6fca20c2ecde3a656b70d733e7ab`  
		Last Modified: Wed, 02 May 2018 05:58:43 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82648e31640df7995132b7ec83b625138b560c783d72bcafadbfa8d8c2b1f6a5`  
		Last Modified: Wed, 02 May 2018 05:58:43 GMT  
		Size: 981.8 KB (981755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb7ace35d550c3adf304617db0db076d8a51bf90e78493e95f869155490ab794`  
		Last Modified: Wed, 02 May 2018 06:36:22 GMT  
		Size: 8.3 MB (8312539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:497bf119bebf730cc0bda3908ca245fb7ff3a75ff40ac21d3bc2e9dd37a202da`  
		Last Modified: Wed, 02 May 2018 06:36:20 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89340f6074da87a4ffb6343e8232bd9653ddeee242506636868f663f836f571c`  
		Last Modified: Wed, 02 May 2018 06:36:21 GMT  
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
$ docker pull redis@sha256:e7a8a691a2269625589f31ee386326afbf466c0bb5f77f2f05065192fc360f56
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35207516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7400f1112cceac5427d5debbc0ee7bcf9ac234a463660f0367ceb3b041d9894`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 28 Apr 2018 11:59:37 GMT
ADD file:f8c645337024c026fbe602f5480bff6efe08526fe5ae5523df7dc29d240d16d2 in / 
# Sat, 28 Apr 2018 11:59:37 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 15:33:20 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 28 Apr 2018 15:33:20 GMT
ENV GOSU_VERSION=1.10
# Sat, 28 Apr 2018 15:34:04 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 28 Apr 2018 15:35:26 GMT
ENV REDIS_VERSION=4.0.9
# Sat, 28 Apr 2018 15:35:27 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.9.tar.gz
# Sat, 28 Apr 2018 15:35:27 GMT
ENV REDIS_DOWNLOAD_SHA=df4f73bc318e2f9ffb2d169a922dec57ec7c73dd07bccf875695dbeecd5ec510
# Sat, 28 Apr 2018 15:36:37 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 15:36:38 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 28 Apr 2018 15:36:38 GMT
VOLUME [/data]
# Sat, 28 Apr 2018 15:36:39 GMT
WORKDIR /data
# Sat, 28 Apr 2018 15:36:45 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 28 Apr 2018 15:36:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 28 Apr 2018 15:36:46 GMT
EXPOSE 6379/tcp
# Sat, 28 Apr 2018 15:36:46 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:2d5e3d857ad4821de542179b9b489e90fd471e4cd9f25c4aa2a09561c37a7806`  
		Last Modified: Sat, 28 Apr 2018 12:11:15 GMT  
		Size: 26.3 MB (26297400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c869525b4fbabc5be1b242a484ca9e2c6195952ffc5ef2f28fe09440315cd537`  
		Last Modified: Sat, 28 Apr 2018 15:37:08 GMT  
		Size: 2.1 KB (2077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f6696f4bc012488a7792f48a3a7efaaa67118894bec5b33c58d187e0e264039`  
		Last Modified: Sat, 28 Apr 2018 15:37:09 GMT  
		Size: 956.1 KB (956132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d53b5a51127b523fa60f8da2e923a2531e7ce8cac0fea0ef27c386bc186b52`  
		Last Modified: Sat, 28 Apr 2018 15:37:50 GMT  
		Size: 8.0 MB (7951373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87628d6f8b04957408e44bcfc91c88a1305a2637383f73eb336b99414685eec7`  
		Last Modified: Sat, 28 Apr 2018 15:37:48 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54f2204d17d353ae3881880155579013a801bccf76aade5943e01e7b1011a235`  
		Last Modified: Sat, 28 Apr 2018 15:37:47 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:aaec23b0054388186680ec9d02522767cc152fbf4333a98abfbdbd74a94cac6a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36899195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f0d7a5aa2a675d00049b60b14661a7d94d0b53a46c2dd4245cabbdd94782177`
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
# Tue, 01 May 2018 12:54:17 GMT
ENV REDIS_VERSION=4.0.9
# Tue, 01 May 2018 12:54:18 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.9.tar.gz
# Tue, 01 May 2018 12:54:19 GMT
ENV REDIS_DOWNLOAD_SHA=df4f73bc318e2f9ffb2d169a922dec57ec7c73dd07bccf875695dbeecd5ec510
# Tue, 01 May 2018 12:56:39 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 01 May 2018 12:56:43 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 01 May 2018 12:56:46 GMT
VOLUME [/data]
# Tue, 01 May 2018 12:56:48 GMT
WORKDIR /data
# Tue, 01 May 2018 12:56:50 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 01 May 2018 12:56:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 01 May 2018 12:56:57 GMT
EXPOSE 6379/tcp
# Tue, 01 May 2018 12:56:58 GMT
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
	-	`sha256:8c2802a92d325fe6e37acd423b3ec863226320365adb2265a3cb174de171227e`  
		Last Modified: Tue, 01 May 2018 12:57:57 GMT  
		Size: 8.5 MB (8453356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb56dff0016b78e5307101c0fdfad3c59a09358a601b84835e1da891447776ea`  
		Last Modified: Tue, 01 May 2018 12:57:53 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f493e433219b5fff07510d749e8fe0002c706fa7be5bb7a7c4f03d149fc06766`  
		Last Modified: Tue, 01 May 2018 12:57:53 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; 386

```console
$ docker pull redis@sha256:58065d39c759ec39b619af71aea4e82bb6419b4d63f773a8a9c5b4535c746ef9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.8 MB (38761471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80a60d3e46b8e4154f069cff14ad2b4454d77c6ec115c72f62d36dda4718aaff`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:45 GMT
ADD file:335ca08e6c562d8b16f2a4e788c5e977ba9815526d92d6d48cc3b8093824da2d in / 
# Sat, 28 Apr 2018 10:39:45 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 15:35:32 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 28 Apr 2018 15:35:32 GMT
ENV GOSU_VERSION=1.10
# Sat, 28 Apr 2018 15:36:13 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 28 Apr 2018 15:38:06 GMT
ENV REDIS_VERSION=4.0.9
# Sat, 28 Apr 2018 15:38:06 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.9.tar.gz
# Sat, 28 Apr 2018 15:38:07 GMT
ENV REDIS_DOWNLOAD_SHA=df4f73bc318e2f9ffb2d169a922dec57ec7c73dd07bccf875695dbeecd5ec510
# Sat, 28 Apr 2018 15:39:09 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 15:39:10 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 28 Apr 2018 15:39:10 GMT
VOLUME [/data]
# Sat, 28 Apr 2018 15:39:10 GMT
WORKDIR /data
# Sat, 28 Apr 2018 15:39:10 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 28 Apr 2018 15:39:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 28 Apr 2018 15:39:11 GMT
EXPOSE 6379/tcp
# Sat, 28 Apr 2018 15:39:11 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:175c17a0040b2274213f9504ec9e834814804aa24e25f9537af71fccc81a017f`  
		Last Modified: Sat, 28 Apr 2018 10:45:06 GMT  
		Size: 30.3 MB (30278658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf084d6e4734f36c90f6efb18393d3684a0f55559285a02decc03bfa5171801`  
		Last Modified: Sat, 28 Apr 2018 15:39:58 GMT  
		Size: 2.1 KB (2077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07603f325d3f5ae6731f7c58fd6c686b26f6a96721027173550da9e4f009a4be`  
		Last Modified: Sat, 28 Apr 2018 15:39:58 GMT  
		Size: 960.8 KB (960782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:559dbe38e11297bdb442c342b3bd60c566414b13928f1eaa3e7860dd2480c894`  
		Last Modified: Sat, 28 Apr 2018 15:40:43 GMT  
		Size: 7.5 MB (7519455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4beff7f3f68d5f2199bfa86d912d8140d2cfd7968865150c00a5e73aadf9afb3`  
		Last Modified: Sat, 28 Apr 2018 15:40:42 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d57169e9a23d16a714bcb6a942ff0a5a0496bb889617920f541e96e8932a5fbb`  
		Last Modified: Sat, 28 Apr 2018 15:40:42 GMT  
		Size: 401.0 B  
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
$ docker pull redis@sha256:284d3358b9cdc8b89eb632829c2c496116b30165876371c083213a0c19689855
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.2 MB (40224596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06da10e55ecce0ecd9d8692f0f7a66b8a23a4b74e0cca92360830694dc8d326b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 28 Apr 2018 11:42:53 GMT
ADD file:7c773d50957d6184975f5b22ef61757cd979893af5c77cdfef46dd28d8fc0296 in / 
# Sat, 28 Apr 2018 11:42:55 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 15:22:08 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 28 Apr 2018 15:22:08 GMT
ENV GOSU_VERSION=1.10
# Sat, 28 Apr 2018 15:22:27 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 28 Apr 2018 15:23:20 GMT
ENV REDIS_VERSION=4.0.9
# Sat, 28 Apr 2018 15:23:20 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.9.tar.gz
# Sat, 28 Apr 2018 15:23:21 GMT
ENV REDIS_DOWNLOAD_SHA=df4f73bc318e2f9ffb2d169a922dec57ec7c73dd07bccf875695dbeecd5ec510
# Sat, 28 Apr 2018 15:24:00 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 15:24:01 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 28 Apr 2018 15:24:01 GMT
VOLUME [/data]
# Sat, 28 Apr 2018 15:24:01 GMT
WORKDIR /data
# Sat, 28 Apr 2018 15:24:01 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 28 Apr 2018 15:24:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 28 Apr 2018 15:24:02 GMT
EXPOSE 6379/tcp
# Sat, 28 Apr 2018 15:24:02 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f4d03f2765a5584a0dc02af25ffd7c98d6e129d072a1fc30380b106603442102`  
		Last Modified: Sat, 28 Apr 2018 11:48:28 GMT  
		Size: 30.3 MB (30308304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eba1d9acfff4b699dd35d631aa6e773ae2fac66f9c37074283cf88f8a1f59abf`  
		Last Modified: Sat, 28 Apr 2018 15:24:20 GMT  
		Size: 2.1 KB (2091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e643404dd509543d9ae2eca1558ce6c975ce0ec2d69cbb500e7e5bb6a87da640`  
		Last Modified: Sat, 28 Apr 2018 15:24:20 GMT  
		Size: 966.9 KB (966949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2085575ab85cc13c565bd7c4b06289a96bec2c423ae8c060359e0b96898614ac`  
		Last Modified: Sat, 28 Apr 2018 15:24:42 GMT  
		Size: 8.9 MB (8946751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b116c392abf58bfef578b26b7ad40e84ae21002899000c9e1257ec44257ab52e`  
		Last Modified: Sat, 28 Apr 2018 15:24:40 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fe5603300d3c5938b82cd6c1565a64a756c063baedccd110cfdef058c46b6e1`  
		Last Modified: Sat, 28 Apr 2018 15:24:40 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
