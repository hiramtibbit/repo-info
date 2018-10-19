## `redis:latest`

```console
$ docker pull redis@sha256:481678b4b5ea1cb4e8d38ed6677b2da9b9e057cf7e1b6c988ba96651c6f6eff3
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
$ docker pull redis@sha256:4da5768becdde8b439a4af1a4f45624d4bc635edfbcbe60b25402f0cb71a5e61
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35180038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1babb1dde7e1fc7520ce56ce6d39843a074151bb192522b1988c65a067b15e96`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 04:31:42 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 16 Oct 2018 04:31:42 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 04:31:55 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 18 Oct 2018 23:47:47 GMT
ENV REDIS_VERSION=5.0.0
# Thu, 18 Oct 2018 23:47:47 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.0.tar.gz
# Thu, 18 Oct 2018 23:47:48 GMT
ENV REDIS_DOWNLOAD_SHA=70c98b2d0640b2b73c9d8adb4df63bcb62bad34b788fe46d1634b6cf87dc99a4
# Thu, 18 Oct 2018 23:48:50 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 18 Oct 2018 23:48:51 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 18 Oct 2018 23:48:51 GMT
VOLUME [/data]
# Thu, 18 Oct 2018 23:48:52 GMT
WORKDIR /data
# Thu, 18 Oct 2018 23:48:52 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Thu, 18 Oct 2018 23:48:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 18 Oct 2018 23:48:52 GMT
EXPOSE 6379/tcp
# Thu, 18 Oct 2018 23:48:53 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3247409875798b846053cdc995cd766fedae8f94e2d78dc1b5276abc8546673`  
		Last Modified: Tue, 16 Oct 2018 04:38:56 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8980cabe8bc2f8337a120768556d2068f45dec94847c8ae007fac56d54384e09`  
		Last Modified: Tue, 16 Oct 2018 04:38:57 GMT  
		Size: 941.3 KB (941284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2719bdbf9516505371d4df94f682d903fa0be9150b86eaa46d263dacdbdc5b48`  
		Last Modified: Thu, 18 Oct 2018 23:53:08 GMT  
		Size: 11.8 MB (11750456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f306130d78e32095bd8ce43f23dd580cda3ac76f4f6c756f8d30ad9fc9f2a4b3`  
		Last Modified: Thu, 18 Oct 2018 23:53:05 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e09204f8155f75a867e5de4789a621609a363d4a728806bea7a66576a0b7c68`  
		Last Modified: Thu, 18 Oct 2018 23:53:05 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; arm variant v5

```console
$ docker pull redis@sha256:f2c6356753e37ffc63e0511a7fb1d1c7d1bda7c00fdcad2d1f80dfec1c8ebdcb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.5 MB (33491671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84981611b8dfa8cc60bce23db59fdd8b69453462517c6795d99448e7cdfa57f7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 16 Oct 2018 08:55:22 GMT
ADD file:8f2148adabc29587e17b50138f305f39e94e0e2bd9211a9f913fef56013ac35a in / 
# Tue, 16 Oct 2018 08:55:23 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 11:51:25 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 16 Oct 2018 11:51:25 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 11:51:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 19 Oct 2018 09:15:03 GMT
ENV REDIS_VERSION=5.0.0
# Fri, 19 Oct 2018 09:15:03 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.0.tar.gz
# Fri, 19 Oct 2018 09:15:04 GMT
ENV REDIS_DOWNLOAD_SHA=70c98b2d0640b2b73c9d8adb4df63bcb62bad34b788fe46d1634b6cf87dc99a4
# Fri, 19 Oct 2018 09:16:07 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 19 Oct 2018 09:16:08 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 19 Oct 2018 09:16:08 GMT
VOLUME [/data]
# Fri, 19 Oct 2018 09:16:08 GMT
WORKDIR /data
# Fri, 19 Oct 2018 09:16:09 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Fri, 19 Oct 2018 09:16:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Oct 2018 09:16:10 GMT
EXPOSE 6379/tcp
# Fri, 19 Oct 2018 09:16:10 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:4b7ffdf9817f718c84be550e8edf757070396d69165fa729c6ddd4e775428eb2`  
		Last Modified: Tue, 16 Oct 2018 09:04:44 GMT  
		Size: 21.2 MB (21162965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4733a90629314d385813dadaf06358b96313c3b8d8ff3a05c365c3046438093b`  
		Last Modified: Tue, 16 Oct 2018 11:54:47 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bab615d6d3a0515d15f239426aae170d2faf94a8be9857af117040f2bccc5390`  
		Last Modified: Tue, 16 Oct 2018 11:54:48 GMT  
		Size: 931.1 KB (931116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a3cf244bb882a387642dd2bc7aa21aea50b0d652af831844afc028d1758e94d`  
		Last Modified: Fri, 19 Oct 2018 09:16:29 GMT  
		Size: 11.4 MB (11395303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e31c3afb157c3a9d0539adcecc6c6cb9c119441a0023aa1dfcdb8c4620a9e62`  
		Last Modified: Fri, 19 Oct 2018 09:16:26 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30a481b8ac2b0a475784fcffcbfc6e016672fb80b61d193149ce77da85fcafd3`  
		Last Modified: Fri, 19 Oct 2018 09:16:26 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; arm variant v7

```console
$ docker pull redis@sha256:2ee4c3577d21dc60d9aa26aef6f7a1e374903df89a408bb91320bf7b7fa8d04b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.3 MB (31271913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ac2bc345460eb892f497604e1e388f96164a2e72b2e1a77285d0461d968a0ae`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 05 Sep 2018 12:04:38 GMT
ADD file:d20313e46e6d5f092327691d5bc0e83ad6b16d7b44a8dc82fa973c25a13257e7 in / 
# Wed, 05 Sep 2018 12:04:38 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 15:41:12 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 05 Sep 2018 15:41:13 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 15:41:32 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 19 Oct 2018 12:22:21 GMT
ENV REDIS_VERSION=5.0.0
# Fri, 19 Oct 2018 12:22:21 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.0.tar.gz
# Fri, 19 Oct 2018 12:22:21 GMT
ENV REDIS_DOWNLOAD_SHA=70c98b2d0640b2b73c9d8adb4df63bcb62bad34b788fe46d1634b6cf87dc99a4
# Fri, 19 Oct 2018 12:23:17 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 19 Oct 2018 12:23:18 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 19 Oct 2018 12:23:22 GMT
VOLUME [/data]
# Fri, 19 Oct 2018 12:23:22 GMT
WORKDIR /data
# Fri, 19 Oct 2018 12:23:23 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Fri, 19 Oct 2018 12:23:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Oct 2018 12:23:28 GMT
EXPOSE 6379/tcp
# Fri, 19 Oct 2018 12:23:28 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:2e5bbd238113a2057012dfb78ac9665531c276c48962d208492c8802fb0503c0`  
		Last Modified: Wed, 05 Sep 2018 12:13:41 GMT  
		Size: 19.3 MB (19270166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c851488a5d9b243d717f7029e95bb014395a4bac2c39e59eb1961a611d02866`  
		Last Modified: Wed, 05 Sep 2018 15:44:25 GMT  
		Size: 1.7 KB (1729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cea588168542d6e1519c8713af803138383f54efd83fa5735993be6b0408875`  
		Last Modified: Wed, 05 Sep 2018 15:44:26 GMT  
		Size: 915.7 KB (915715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e2a866ccfb189ac1c9a49aeb00e298174a895ab0f481dae6e5c2c168292f8a4`  
		Last Modified: Fri, 19 Oct 2018 12:23:53 GMT  
		Size: 11.1 MB (11083750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23f425dad18d3678d34d482da14fc7c8d39b644ebc78a6b4fd47d80e989bb493`  
		Last Modified: Fri, 19 Oct 2018 12:23:50 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:827b8a1320dffbe6d8a92bb98dc3ac82585612de57718fbe22bd9a1f0028ef58`  
		Last Modified: Fri, 19 Oct 2018 12:23:49 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:d58b90724f13a90fc600f12e599215272f6c8a05a04fa0d5daa3a3d41a276556
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32807233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03fdf2452a0b6cf052d8b87e8065aec6d882041d7e1b6275fc494a65f5b4f5ba`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:45 GMT
ADD file:e83c09a5cfc1cecaeba6b736737d551fe0f5d3f204ec3fc984fe768003774f81 in / 
# Tue, 16 Oct 2018 08:43:46 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 18:57:56 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 16 Oct 2018 18:57:56 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 18:58:55 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 19 Oct 2018 11:11:01 GMT
ENV REDIS_VERSION=5.0.0
# Fri, 19 Oct 2018 11:11:02 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.0.tar.gz
# Fri, 19 Oct 2018 11:11:02 GMT
ENV REDIS_DOWNLOAD_SHA=70c98b2d0640b2b73c9d8adb4df63bcb62bad34b788fe46d1634b6cf87dc99a4
# Fri, 19 Oct 2018 11:13:13 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 19 Oct 2018 11:13:14 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 19 Oct 2018 11:13:15 GMT
VOLUME [/data]
# Fri, 19 Oct 2018 11:13:16 GMT
WORKDIR /data
# Fri, 19 Oct 2018 11:13:17 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Fri, 19 Oct 2018 11:13:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Oct 2018 11:13:18 GMT
EXPOSE 6379/tcp
# Fri, 19 Oct 2018 11:13:19 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:141796bfcf0d5a5edb072138e517bf85deef4f47f40afb51ba8705bec3b921dd`  
		Last Modified: Tue, 16 Oct 2018 08:50:53 GMT  
		Size: 20.3 MB (20331585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e04371d693c006bd0812a3cfbf90922a03d72f21611c8d8ca79adf350eeab5f9`  
		Last Modified: Tue, 16 Oct 2018 19:09:55 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9a750879aa6a2633e1bd33beb42a61de8c1708af030957eb556836a4e4dbe15`  
		Last Modified: Tue, 16 Oct 2018 19:09:56 GMT  
		Size: 908.0 KB (907952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64b620c437ce35bdea155f489a10bdd6e673074807f2a07a86be9a5ada780970`  
		Last Modified: Fri, 19 Oct 2018 11:16:05 GMT  
		Size: 11.6 MB (11565431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60f4043506dc701fc81f8017d6548e6a5179d7444a567cd95849e89fdb2c3a56`  
		Last Modified: Fri, 19 Oct 2018 11:16:00 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f081eb818c7bea3669c204a38de992136208acf7d4f328631e917d813119a773`  
		Last Modified: Fri, 19 Oct 2018 11:16:00 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; 386

```console
$ docker pull redis@sha256:3afb5d73a06a2e0eb54e9980d259e69267e114f68da2c88fcb0794043222c005
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35212354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:794974869eba48cae4385f7cc6e1aaa971657574c7d49735bd2f71120b8f3fb4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 16 Oct 2018 10:49:05 GMT
ADD file:a71ef0e9adb528ae2dc5ca3395654522c23762d8936a4902378c6749bb357582 in / 
# Tue, 16 Oct 2018 10:49:05 GMT
CMD ["bash"]
# Wed, 17 Oct 2018 00:40:51 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 17 Oct 2018 00:40:51 GMT
ENV GOSU_VERSION=1.10
# Wed, 17 Oct 2018 00:41:05 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 19 Oct 2018 11:29:45 GMT
ENV REDIS_VERSION=5.0.0
# Fri, 19 Oct 2018 11:29:45 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.0.tar.gz
# Fri, 19 Oct 2018 11:29:45 GMT
ENV REDIS_DOWNLOAD_SHA=70c98b2d0640b2b73c9d8adb4df63bcb62bad34b788fe46d1634b6cf87dc99a4
# Fri, 19 Oct 2018 11:30:56 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 19 Oct 2018 11:30:57 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 19 Oct 2018 11:30:57 GMT
VOLUME [/data]
# Fri, 19 Oct 2018 11:30:57 GMT
WORKDIR /data
# Fri, 19 Oct 2018 11:30:57 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Fri, 19 Oct 2018 11:30:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Oct 2018 11:30:58 GMT
EXPOSE 6379/tcp
# Fri, 19 Oct 2018 11:30:58 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:2b7bcb618c4033f37486fd700e6d0debf2260935f888a192119c41eaddd29978`  
		Last Modified: Tue, 16 Oct 2018 11:06:15 GMT  
		Size: 23.1 MB (23126605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e13b6cbc0304f13dc32184df00d9ccbfcddbac740ffb0b5e629e76c46d927ce2`  
		Last Modified: Wed, 17 Oct 2018 00:44:14 GMT  
		Size: 1.7 KB (1734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b119e96a7281de6b65ba40dd9eaf271a6bf3a4529813b9d4c0979b7d12467a7f`  
		Last Modified: Wed, 17 Oct 2018 00:44:10 GMT  
		Size: 920.0 KB (920050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40942c6cdc0f7810dd9ba131ca2d0c8a6963fbad2a1ff4e1d9cbf3c6d7e82d82`  
		Last Modified: Fri, 19 Oct 2018 11:32:33 GMT  
		Size: 11.2 MB (11163447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795a499b079979082e3b0ead47252347a36c733c0a69ba7f77a401f6b65371dc`  
		Last Modified: Fri, 19 Oct 2018 11:32:31 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee8c10d22a7d89090fffa19f450a18cc3d544c79e0c8076b911927fd506d9590`  
		Last Modified: Fri, 19 Oct 2018 11:32:31 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; ppc64le

```console
$ docker pull redis@sha256:5c75aa18fe4da9ecee849cc529f1fab98904c01acbdda6875b4092b9e90fc592
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.6 MB (35589945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2eb26ed50a5a6b453a795e295353220998aa7c421a0b216385b55c72ca3b6da8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 16 Oct 2018 08:22:25 GMT
ADD file:b1fa1d0ffa2b206311dfd95642d74c3312565a1ec2e6e3a2197bfd2a4b3de6c6 in / 
# Tue, 16 Oct 2018 08:22:30 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 13:37:18 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 16 Oct 2018 13:37:20 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 13:38:58 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 19 Oct 2018 09:05:55 GMT
ENV REDIS_VERSION=5.0.0
# Fri, 19 Oct 2018 09:05:56 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.0.tar.gz
# Fri, 19 Oct 2018 09:05:57 GMT
ENV REDIS_DOWNLOAD_SHA=70c98b2d0640b2b73c9d8adb4df63bcb62bad34b788fe46d1634b6cf87dc99a4
# Fri, 19 Oct 2018 09:08:06 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 19 Oct 2018 09:08:11 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 19 Oct 2018 09:08:13 GMT
VOLUME [/data]
# Fri, 19 Oct 2018 09:08:14 GMT
WORKDIR /data
# Fri, 19 Oct 2018 09:08:16 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Fri, 19 Oct 2018 09:08:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Oct 2018 09:08:18 GMT
EXPOSE 6379/tcp
# Fri, 19 Oct 2018 09:08:20 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:202f659db3e53c01ac947538d8b37251e9fa16c4a6a699dc6c2a8910afcdfed4`  
		Last Modified: Tue, 16 Oct 2018 08:30:59 GMT  
		Size: 22.7 MB (22740583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28132c90b79bace619811b7809e3955cca7109e85cf1003829e52dbcb023be80`  
		Last Modified: Tue, 16 Oct 2018 13:46:13 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17a54e6c5f6d05c9e443db90d940598952d64830a759c25c3cd45cd62c6177fb`  
		Last Modified: Tue, 16 Oct 2018 13:46:14 GMT  
		Size: 909.8 KB (909783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01e0169b02a0fe5d3fa6627ef5ea4451d84d07dfb6537f10706f4144f8a6157f`  
		Last Modified: Fri, 19 Oct 2018 09:10:31 GMT  
		Size: 11.9 MB (11937281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:996a01d6acd39630c7860e38c05eff3c7d72665c79a731a778b9e1e56359923c`  
		Last Modified: Fri, 19 Oct 2018 09:10:27 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94c83289e6618d7c3385767052a316f3f19a64119649b7f3bf23190b837a2c0f`  
		Last Modified: Fri, 19 Oct 2018 09:10:27 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; s390x

```console
$ docker pull redis@sha256:d9bbdd28dbae3b84286307304844194f40df1162b7773324d6f0f0ad99328c7b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.5 MB (35470462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a70892bc75b014e58688939f3ea0a9148ecbfd15d11ea06e603e77f351e0d7ca`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 16 Oct 2018 11:42:52 GMT
ADD file:a7cc9e5280b465a6e72c8b1331e009ddd18bff12c000c9e49ababac631179edc in / 
# Tue, 16 Oct 2018 11:42:52 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 13:50:06 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 16 Oct 2018 13:50:06 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 13:50:21 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 19 Oct 2018 12:22:27 GMT
ENV REDIS_VERSION=5.0.0
# Fri, 19 Oct 2018 12:22:27 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.0.tar.gz
# Fri, 19 Oct 2018 12:22:27 GMT
ENV REDIS_DOWNLOAD_SHA=70c98b2d0640b2b73c9d8adb4df63bcb62bad34b788fe46d1634b6cf87dc99a4
# Fri, 19 Oct 2018 12:23:15 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 19 Oct 2018 12:23:16 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 19 Oct 2018 12:23:16 GMT
VOLUME [/data]
# Fri, 19 Oct 2018 12:23:16 GMT
WORKDIR /data
# Fri, 19 Oct 2018 12:23:17 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Fri, 19 Oct 2018 12:23:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Oct 2018 12:23:17 GMT
EXPOSE 6379/tcp
# Fri, 19 Oct 2018 12:23:17 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:b16a7816eac3ca0893b75f07b37e5e276ba331e1a35619343718d1c33f877877`  
		Last Modified: Tue, 16 Oct 2018 11:46:03 GMT  
		Size: 22.3 MB (22334662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c3d0c40cae4c3fa639160e8215ea00b8ae8701a33b0f8603c9c2ac33f795ec`  
		Last Modified: Tue, 16 Oct 2018 13:53:06 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1330deccd36202d5a6a39bf5cfd82166d773239a108ba08375f7a3d208db6bb5`  
		Last Modified: Tue, 16 Oct 2018 13:53:06 GMT  
		Size: 926.7 KB (926709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35460101e5377768e45c964072fa1e380a39b78e9a70bbdd298b8768a7eefe93`  
		Last Modified: Fri, 19 Oct 2018 12:24:28 GMT  
		Size: 12.2 MB (12206828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7d369508f055292f4bd078140c67493d6bd2af3089b6cfa6a7f65f0152dd81e`  
		Last Modified: Fri, 19 Oct 2018 12:24:24 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1efb18846effc5b5e387418646ed3d93cf7e193d0183230e9ec9f89064c14da4`  
		Last Modified: Fri, 19 Oct 2018 12:24:24 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
