## `redis:5-stretch`

```console
$ docker pull redis@sha256:ca2d9251c2818df48c6598e01a5bdeab46040dc7ab236abe075d7c7343465177
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

### `redis:5-stretch` - linux; amd64

```console
$ docker pull redis@sha256:adcf62f378efe1187d2f72c6f0ecdf86ab2173a9e1c3c9f4fe4bb89060f5362f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35224796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c41ce05add98e89ff5ef31ec8cf2f5866e2b82fbe1eae057201f7c6f884f23d`
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
# Tue, 11 Jun 2019 06:42:50 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 11 Jun 2019 06:42:51 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 11 Jun 2019 06:42:51 GMT
VOLUME [/data]
# Tue, 11 Jun 2019 06:42:52 GMT
WORKDIR /data
# Tue, 11 Jun 2019 06:42:52 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 11 Jun 2019 06:42:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Jun 2019 06:42:52 GMT
EXPOSE 6379
# Tue, 11 Jun 2019 06:42:53 GMT
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
	-	`sha256:9f7206d08b9de74b8abe0ae88f4778ab919f0973e086067566ecac408f76fcd9`  
		Last Modified: Tue, 11 Jun 2019 06:51:04 GMT  
		Size: 11.8 MB (11791846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8354ef8cccb863a34302b8644eb93e43e86a35de4de8020901a3b7a7b009b04`  
		Last Modified: Tue, 11 Jun 2019 06:51:00 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53afb10d81c21264cf950354258f770d32c2a27342d9e9675e4006ce4052c799`  
		Last Modified: Tue, 11 Jun 2019 06:50:59 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-stretch` - linux; arm variant v5

```console
$ docker pull redis@sha256:22403ebbd8494c191edee51c029e194e1d92dd2370ea57efe28402b07bf4354c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.6 MB (33550099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df6a50fbd70f805c889b19796777bb4f9487df9093cdedc615b60dd1c5905bbe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 10 Jun 2019 23:53:36 GMT
ADD file:b563bf03e125515b4f74af859aa40e35d24c633add8a20f007b0da89ef4692d9 in / 
# Mon, 10 Jun 2019 23:53:36 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 03:25:08 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 11 Jun 2019 03:25:09 GMT
ENV GOSU_VERSION=1.10
# Tue, 11 Jun 2019 03:25:39 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 11 Jun 2019 03:25:40 GMT
ENV REDIS_VERSION=5.0.5
# Tue, 11 Jun 2019 03:25:40 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Tue, 11 Jun 2019 03:25:41 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Tue, 11 Jun 2019 03:26:50 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 11 Jun 2019 03:26:52 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 11 Jun 2019 03:26:52 GMT
VOLUME [/data]
# Tue, 11 Jun 2019 03:26:53 GMT
WORKDIR /data
# Tue, 11 Jun 2019 03:26:53 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 11 Jun 2019 03:26:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Jun 2019 03:26:54 GMT
EXPOSE 6379
# Tue, 11 Jun 2019 03:26:55 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:081b7d581c1dae49d30a4b9d0fead63d3653fe9ed91f43a20287f8ddbad3797b`  
		Last Modified: Mon, 10 Jun 2019 23:59:41 GMT  
		Size: 21.2 MB (21155842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b1764d252bb419ceb1fed7a51b0ae75172c2b3adf76f782b85a92a543a58fbd`  
		Last Modified: Tue, 11 Jun 2019 03:28:11 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa2ac2c06c1c9e9e0707d4331db9076ade9d49efe26cc14498df931623992f6a`  
		Last Modified: Tue, 11 Jun 2019 03:28:11 GMT  
		Size: 931.3 KB (931254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92e9bf4d6b02b696966738118c6398ff34b96f4f8e7b8a436fdff08bec13dfe1`  
		Last Modified: Tue, 11 Jun 2019 03:28:14 GMT  
		Size: 11.5 MB (11460721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b98b84c21df379bee74181b7d8826182673f04781c6dcacd655f2ad8ce4bd9df`  
		Last Modified: Tue, 11 Jun 2019 03:28:10 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dfc146aa57374a4d100b0b7fc01fc58c9f6f88aafdb1d1e68719f62ca2c02dc`  
		Last Modified: Tue, 11 Jun 2019 03:28:11 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-stretch` - linux; arm variant v7

```console
$ docker pull redis@sha256:706c2fad3c65620f8b61536c140605855be10e67e812e0a49ebe69cca92660e6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.3 MB (31347684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e06b46cc8b480cf0f62a58ea978218fc9e5e27b127eddf7697b3a4fd6fa74304`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 11 Jun 2019 00:03:03 GMT
ADD file:4102df5a1a0de014e0753e42aec7c4f521a1adb132934625dc3a60945e20b048 in / 
# Tue, 11 Jun 2019 00:03:04 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 02:58:40 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 11 Jun 2019 02:58:41 GMT
ENV GOSU_VERSION=1.10
# Tue, 11 Jun 2019 02:59:12 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 11 Jun 2019 02:59:13 GMT
ENV REDIS_VERSION=5.0.5
# Tue, 11 Jun 2019 02:59:13 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Tue, 11 Jun 2019 02:59:14 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Tue, 11 Jun 2019 03:00:18 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 11 Jun 2019 03:00:21 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 11 Jun 2019 03:00:22 GMT
VOLUME [/data]
# Tue, 11 Jun 2019 03:00:23 GMT
WORKDIR /data
# Tue, 11 Jun 2019 03:00:24 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 11 Jun 2019 03:00:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Jun 2019 03:00:26 GMT
EXPOSE 6379
# Tue, 11 Jun 2019 03:00:26 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5155b41fe73a7b2fc8284ed1160e8ad046f2bfd1606e73e4bbe3f54b05890fc9`  
		Last Modified: Tue, 11 Jun 2019 00:09:27 GMT  
		Size: 19.3 MB (19276185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13ed204b5d17ab67effb1f1918aaa9aa6f351e38fa38c8809051adba00367053`  
		Last Modified: Tue, 11 Jun 2019 03:02:09 GMT  
		Size: 1.7 KB (1731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eeeb85863bdef62af0e3c3a3a51163d3ddee301af45ab2300b78ac1e4fe01d1`  
		Last Modified: Tue, 11 Jun 2019 03:02:10 GMT  
		Size: 915.9 KB (915867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:097c4a7c5d80560a872313cb9288252449f95cae4bbeff8503f6243a25f3ea4d`  
		Last Modified: Tue, 11 Jun 2019 03:02:12 GMT  
		Size: 11.2 MB (11153349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6ccec42467cbdd970ac43a5042e252d7f555f37f2c713bfa9be420a85c5474d`  
		Last Modified: Tue, 11 Jun 2019 03:02:10 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86abde00c9a7633d2fb07377e154e07d3abac3a297c8bc97caf04bb5a4218916`  
		Last Modified: Tue, 11 Jun 2019 03:02:10 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-stretch` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:80c9f41829bfcc4e96a2c7b436798366981a6cc40ab18ce31ed29c35c99fe14c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.9 MB (32850082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5891dd37c2b26e80c8ec839552ad2420b4b9b4fd3c8c8155da6ecbec9883833a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 10 Jun 2019 23:41:42 GMT
ADD file:cd613dd4ee4b2224b6debd778ceb35ef342fc7ea13102853ee42a5abb6f30d76 in / 
# Mon, 10 Jun 2019 23:41:43 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:46:55 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 11 Jun 2019 00:46:56 GMT
ENV GOSU_VERSION=1.10
# Tue, 11 Jun 2019 00:47:28 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 11 Jun 2019 00:47:29 GMT
ENV REDIS_VERSION=5.0.5
# Tue, 11 Jun 2019 00:47:29 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Tue, 11 Jun 2019 00:47:30 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Tue, 11 Jun 2019 00:48:36 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 11 Jun 2019 00:48:39 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 11 Jun 2019 00:48:40 GMT
VOLUME [/data]
# Tue, 11 Jun 2019 00:48:41 GMT
WORKDIR /data
# Tue, 11 Jun 2019 00:48:41 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 11 Jun 2019 00:48:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Jun 2019 00:48:43 GMT
EXPOSE 6379
# Tue, 11 Jun 2019 00:48:44 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:86ef8b977e9b28fc775a14aa2d4243a07dd2d142d19435649d2f478fbbee796b`  
		Last Modified: Mon, 10 Jun 2019 23:45:15 GMT  
		Size: 20.3 MB (20333790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42b7ffd289f562e7c16cb1afb6e6835604b01bba4233d65060e65a8d41411fd7`  
		Last Modified: Tue, 11 Jun 2019 00:50:10 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2ad401ee4f23d923fec6a26434e2edf8ba1e97525fc49c9c7fceea455217bf3`  
		Last Modified: Tue, 11 Jun 2019 00:50:10 GMT  
		Size: 908.0 KB (908007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eefb576a5b609c2350507a4ea23e4a359b9e6ee2c0cc64550274af3ff3ddf956`  
		Last Modified: Tue, 11 Jun 2019 00:50:13 GMT  
		Size: 11.6 MB (11605993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c5e37fd0d90fba894725cbf07c568ff36f3e074d08a11d1c608fb0fda5a1cbb`  
		Last Modified: Tue, 11 Jun 2019 00:50:10 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40632a6d1d031f271060fb3ec290c3bccfc92ff54275c493479fb8eb151e6d3a`  
		Last Modified: Tue, 11 Jun 2019 00:50:10 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-stretch` - linux; 386

```console
$ docker pull redis@sha256:c3861768d0fb5046724dccfaf0786349c89364ed706084e545bdde0d8b9431b2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35244554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8bbb601519644e50d963792225aae9678e59442658136b26d837e0ff21c5c79`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 10 Jun 2019 23:41:36 GMT
ADD file:a8a0ffd3515eaf371f5ca47de93cd4bfc383ce28f32b9547739ad7403b1bc033 in / 
# Mon, 10 Jun 2019 23:41:36 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 13:20:58 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 11 Jun 2019 13:20:59 GMT
ENV GOSU_VERSION=1.10
# Tue, 11 Jun 2019 13:21:21 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 11 Jun 2019 13:21:22 GMT
ENV REDIS_VERSION=5.0.5
# Tue, 11 Jun 2019 13:21:22 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Tue, 11 Jun 2019 13:21:22 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Tue, 11 Jun 2019 13:23:23 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 11 Jun 2019 13:23:24 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 11 Jun 2019 13:23:24 GMT
VOLUME [/data]
# Tue, 11 Jun 2019 13:23:24 GMT
WORKDIR /data
# Tue, 11 Jun 2019 13:23:25 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 11 Jun 2019 13:23:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Jun 2019 13:23:25 GMT
EXPOSE 6379
# Tue, 11 Jun 2019 13:23:26 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:7e73483a9fb86ce6ccc0a956b2be574fc156ade2d6b1a61a18c9427de2b19f82`  
		Last Modified: Mon, 10 Jun 2019 23:45:55 GMT  
		Size: 23.1 MB (23120865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e73f47381f1efd5d45f5ee413fd3aa89da07dd3f580f2c1515872158f2416cb`  
		Last Modified: Tue, 11 Jun 2019 13:25:48 GMT  
		Size: 1.7 KB (1730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec852a3b00687a9312d121fe18a614179e47ecc437264a1086878ed110cfbc8e`  
		Last Modified: Tue, 11 Jun 2019 13:25:48 GMT  
		Size: 920.2 KB (920192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14960dfdac8b2964e351ffc74f5fe6e037db333e90774ef4451c0bef160ff99f`  
		Last Modified: Tue, 11 Jun 2019 13:25:53 GMT  
		Size: 11.2 MB (11201252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f762a217dfbaf18a0988d4f54af8ed42884cd65f4f95929bf7463420f65158ba`  
		Last Modified: Tue, 11 Jun 2019 13:25:47 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f1b54e44aad0f6cc8e4e4226fc2e1ce90c59d6ad5851f7c9b6972fe1ee375da`  
		Last Modified: Tue, 11 Jun 2019 13:25:48 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-stretch` - linux; ppc64le

```console
$ docker pull redis@sha256:081edbccf3332aa944339cef9c969b7ec0e93f22da69d04af086ae9f24f37ec8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.6 MB (35638892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c02f14da11c4b748db288b0a824b0292fea6db2a6554a1d7ac4a7eac90eb0ba`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 10 Jun 2019 23:18:56 GMT
ADD file:cbe9750f9a223a6cdc02ae93dd729d2261ce439e1c7be255cd3a688eebfe62ba in / 
# Mon, 10 Jun 2019 23:18:59 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 05:11:50 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 11 Jun 2019 05:11:53 GMT
ENV GOSU_VERSION=1.10
# Tue, 11 Jun 2019 05:12:58 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 11 Jun 2019 05:13:01 GMT
ENV REDIS_VERSION=5.0.5
# Tue, 11 Jun 2019 05:13:02 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Tue, 11 Jun 2019 05:13:05 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Tue, 11 Jun 2019 05:15:18 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 11 Jun 2019 05:15:24 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 11 Jun 2019 05:15:27 GMT
VOLUME [/data]
# Tue, 11 Jun 2019 05:15:31 GMT
WORKDIR /data
# Tue, 11 Jun 2019 05:15:32 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 11 Jun 2019 05:15:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Jun 2019 05:15:36 GMT
EXPOSE 6379
# Tue, 11 Jun 2019 05:15:39 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d41f2b4ffc1e666af1af85c808fc5e2c1f81602da89d9e81911a402a3e1e69b5`  
		Last Modified: Mon, 10 Jun 2019 23:24:17 GMT  
		Size: 22.7 MB (22744910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:495704f03d5dca6edc9710d0162300f54ab3dceced8f94ce534f8b6e67e580f8`  
		Last Modified: Tue, 11 Jun 2019 05:22:22 GMT  
		Size: 1.7 KB (1736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82f9a2a13aa57890b3ee1e7dd94a0117b47c2f6be8ea99c37f8e2d126dee94b8`  
		Last Modified: Tue, 11 Jun 2019 05:22:22 GMT  
		Size: 909.7 KB (909689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97555d72f1aab20b74f7e7cb3559f4b767402010cabe0a5e1b8f1386c69b14b3`  
		Last Modified: Tue, 11 Jun 2019 05:22:27 GMT  
		Size: 12.0 MB (11982006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf5b6ed5cf5a8ea9d96d552082d6a79d99f2be1efe226cc852f6c3b71a5248ca`  
		Last Modified: Tue, 11 Jun 2019 05:22:23 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1edc0dc322f1c52777fdee2ce37bd80b60cbfea1540be593ce234d907344bcd`  
		Last Modified: Tue, 11 Jun 2019 05:22:23 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-stretch` - linux; s390x

```console
$ docker pull redis@sha256:e40c1684f1edb765a39db89baed221b50e00c26ae36f2a7a15bf7505cd706f86
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.5 MB (35522585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd55ac876ca926f032f219f8a7e2d94c088eeb60c8d7aadf8f61946f07008b0b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 10 Jun 2019 23:43:54 GMT
ADD file:e253b6e8cd43e8026b8cd0ba0bbe34460e255b131bdb2f50d5b8a2cfd5c9495b in / 
# Mon, 10 Jun 2019 23:43:55 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 02:24:58 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 11 Jun 2019 02:24:58 GMT
ENV GOSU_VERSION=1.10
# Tue, 11 Jun 2019 02:25:15 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 11 Jun 2019 02:25:15 GMT
ENV REDIS_VERSION=5.0.5
# Tue, 11 Jun 2019 02:25:15 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Tue, 11 Jun 2019 02:25:16 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Tue, 11 Jun 2019 02:26:04 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 11 Jun 2019 02:26:05 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 11 Jun 2019 02:26:05 GMT
VOLUME [/data]
# Tue, 11 Jun 2019 02:26:05 GMT
WORKDIR /data
# Tue, 11 Jun 2019 02:26:05 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 11 Jun 2019 02:26:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Jun 2019 02:26:06 GMT
EXPOSE 6379
# Tue, 11 Jun 2019 02:26:06 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:7ffdabbd82ddae873be4d1eeb64de2e4b43db4450b465d53b47f3b46eb55bd53`  
		Last Modified: Mon, 10 Jun 2019 23:46:41 GMT  
		Size: 22.3 MB (22338852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a70b3d1a704e07763fb647e2c6ada580647b6e1cf9dc0ae80f62cee100019461`  
		Last Modified: Tue, 11 Jun 2019 02:27:25 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77eee3add03c38badd289c5130bf65b6e9252fdfb6a3ad6a8e5c28f3ff1c7555`  
		Last Modified: Tue, 11 Jun 2019 02:27:25 GMT  
		Size: 926.8 KB (926792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74ede5fae25991360bfc8cfbd2f2be25c9f7b4feb47d9a897cfce8676d3d25a7`  
		Last Modified: Tue, 11 Jun 2019 02:27:28 GMT  
		Size: 12.3 MB (12254687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a4cbccde2bf33b7743c1be937785584c0ad8cc03dcaa32649883654d086bfc5`  
		Last Modified: Tue, 11 Jun 2019 02:27:25 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7ac8355afdd5ce020dcdb8f0e08c89292f115c1f43202b69431324dcea02a3d`  
		Last Modified: Tue, 11 Jun 2019 02:27:25 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
