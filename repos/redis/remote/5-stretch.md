## `redis:5-stretch`

```console
$ docker pull redis@sha256:bf65ecee69c43e52d0e065d094fbdfe4df6e408d47a96e56c7a29caaf31d3c35
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
$ docker pull redis@sha256:315bb485f56a486b6fa22b246e3a47eeb112b056175740df6be8259ddc6ba009
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35198647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce25c7293564bac1a996496c75f49c58b840075ac6e8cb08d347fce5be90e212`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 09:02:21 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 16 Nov 2018 09:02:22 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 09:02:51 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 13 Dec 2018 17:20:51 GMT
ENV REDIS_VERSION=5.0.3
# Thu, 13 Dec 2018 17:20:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Thu, 13 Dec 2018 17:20:51 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Thu, 13 Dec 2018 17:22:04 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 13 Dec 2018 17:22:05 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 17:22:05 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 17:22:06 GMT
WORKDIR /data
# Thu, 13 Dec 2018 17:22:06 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Thu, 13 Dec 2018 17:22:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 17:22:06 GMT
EXPOSE 6379/tcp
# Thu, 13 Dec 2018 17:22:07 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d0f7688756ea23ac9146ec3d78976f479aab9c724a659c3b63cff619e65a95`  
		Last Modified: Fri, 16 Nov 2018 09:12:11 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53e16f6135a590ee3e34841fbde3c4dbe5b7c29907b3d0e070b6496d05308429`  
		Last Modified: Fri, 16 Nov 2018 09:12:11 GMT  
		Size: 941.3 KB (941290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52b0cc4e76a5c42c5f208f7cc45aa74221ce85cbc6a2bb28e112dcf89301c64`  
		Last Modified: Thu, 13 Dec 2018 17:25:45 GMT  
		Size: 11.8 MB (11768822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e841feee049e36c5cc444ef21e5c96e32a94b7faa6365491b68c610045cc8061`  
		Last Modified: Thu, 13 Dec 2018 17:25:44 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf45e5191d0aa52429676a4c09b75a932be0289cbd140dc4ba3a569a015178f`  
		Last Modified: Thu, 13 Dec 2018 17:25:43 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-stretch` - linux; arm variant v5

```console
$ docker pull redis@sha256:2c2c5a5adee210e7bf611e52deb3c57916db784080a82a32f1f32d136208570e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.5 MB (33534554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc24f945fbeaa4a94b0e21a2fddb57efaea8eef7b84e43cf94e8511d06c61237`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 16 Nov 2018 09:58:31 GMT
ADD file:571b664b51137693f1c3889a3ace44345b13edf68179c54841bcf69428925fb3 in / 
# Fri, 16 Nov 2018 09:58:32 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 16:22:27 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 16 Nov 2018 16:22:28 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 16:22:54 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 14 Dec 2018 09:48:38 GMT
ENV REDIS_VERSION=5.0.3
# Fri, 14 Dec 2018 09:48:38 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Fri, 14 Dec 2018 09:48:39 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Fri, 14 Dec 2018 09:49:47 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 14 Dec 2018 09:49:48 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 14 Dec 2018 09:49:48 GMT
VOLUME [/data]
# Fri, 14 Dec 2018 09:49:49 GMT
WORKDIR /data
# Fri, 14 Dec 2018 09:49:49 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Fri, 14 Dec 2018 09:49:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Dec 2018 09:49:50 GMT
EXPOSE 6379/tcp
# Fri, 14 Dec 2018 09:49:51 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:409ea78f2caa9a970b3fae4f7a23caf60fe64dd022e2b3841944e6d82da81c03`  
		Last Modified: Fri, 16 Nov 2018 10:13:25 GMT  
		Size: 21.2 MB (21163007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cdf922272e491614fbf43a202c8e5874d54801ca5d750d160381aeeac02e9bc`  
		Last Modified: Fri, 16 Nov 2018 16:25:29 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:465a419c6c3730862c73a0d4d6a342aada4ca5166e563783aca7d1634ff7da4c`  
		Last Modified: Fri, 16 Nov 2018 16:25:29 GMT  
		Size: 931.1 KB (931113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeea738e7d8da835e02c25eb54ce236fe9edcb114922af676c074a7ad4e84945`  
		Last Modified: Fri, 14 Dec 2018 09:50:13 GMT  
		Size: 11.4 MB (11438150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d202cc3b4a1d2051abb43cf2098666bc3bb83eccb67a36d8e91d49400183c67`  
		Last Modified: Fri, 14 Dec 2018 09:50:09 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0f87d4bd0ce6f6c2661f4419d3648eaa777bc2b6580db62c819da2b151fc233`  
		Last Modified: Fri, 14 Dec 2018 09:50:09 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-stretch` - linux; arm variant v7

```console
$ docker pull redis@sha256:592681d71039900513cd7626f1df74ec609d291f6fae1dd5c15ce0c10f871be3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.3 MB (31315361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ea52e2ff82747c9e0ed289bfb2e8822ed340b53a1a14c1f662ecbf452b89ff9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 16 Nov 2018 13:09:32 GMT
ADD file:dbddf6cec329cf26640d0898aecbeff1c7a67bc245092317a47bfd07c1a49a2d in / 
# Fri, 16 Nov 2018 13:09:33 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 17:06:35 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 16 Nov 2018 17:06:36 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 17:07:09 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 14 Dec 2018 13:01:39 GMT
ENV REDIS_VERSION=5.0.3
# Fri, 14 Dec 2018 13:01:39 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Fri, 14 Dec 2018 13:01:40 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Fri, 14 Dec 2018 13:02:54 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 14 Dec 2018 13:03:02 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 14 Dec 2018 13:03:02 GMT
VOLUME [/data]
# Fri, 14 Dec 2018 13:03:02 GMT
WORKDIR /data
# Fri, 14 Dec 2018 13:03:03 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Fri, 14 Dec 2018 13:03:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Dec 2018 13:03:04 GMT
EXPOSE 6379/tcp
# Fri, 14 Dec 2018 13:03:04 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:88950d48cb7db5e5f329d377a3f7f1260b31f4e0f2d7202fbfc08f7685b41580`  
		Last Modified: Fri, 16 Nov 2018 13:22:02 GMT  
		Size: 19.3 MB (19270059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c2d80930f583a9833248b9df64411ea5dcf76871a290dff6b5b8e6c9c7e3e4f`  
		Last Modified: Fri, 16 Nov 2018 17:09:36 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1e9757baaea6fea7641dff63b08ee174d270a36123beb43c8bcc1eb14f030dd`  
		Last Modified: Fri, 16 Nov 2018 17:09:37 GMT  
		Size: 915.8 KB (915788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a919ece2b51d2b240169096c43ad613716614bd5c4e2130199e533dfd1f5b2c`  
		Last Modified: Fri, 14 Dec 2018 13:03:28 GMT  
		Size: 11.1 MB (11127227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec02a1fb24d14e9e5e9af92077f41d8b8c69217d7ec00316f23c4c3b216ff662`  
		Last Modified: Fri, 14 Dec 2018 13:03:25 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16b3aa85d012b8290c75e4da0389a6bc2eb5f0c242d501d899b36074c3b459c0`  
		Last Modified: Fri, 14 Dec 2018 13:03:25 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-stretch` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:c39fc743a1cbb34585106feaf6fe631b1cec7542328ce8b2ccd0027f60480bc0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32824005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:151d14353505be9a93b2ac094b9686a102f0cd145f4969ebdf96b6c9bafc70ba`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 16 Nov 2018 10:14:24 GMT
ADD file:f12d39e66b336ca9d9a73319a35399c91c68f9023de2c1385f873a4aa804228b in / 
# Fri, 16 Nov 2018 10:14:25 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 23:18:18 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 16 Nov 2018 23:18:33 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 23:19:30 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 18 Dec 2018 10:40:24 GMT
ENV REDIS_VERSION=5.0.3
# Tue, 18 Dec 2018 10:40:25 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Tue, 18 Dec 2018 10:40:26 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Tue, 18 Dec 2018 10:43:13 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 18 Dec 2018 10:43:16 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 18 Dec 2018 10:43:17 GMT
VOLUME [/data]
# Tue, 18 Dec 2018 10:43:19 GMT
WORKDIR /data
# Tue, 18 Dec 2018 10:43:20 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 18 Dec 2018 10:43:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Dec 2018 10:43:24 GMT
EXPOSE 6379
# Tue, 18 Dec 2018 10:43:25 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:2216f9d9ff00a3bca028dc4e59b0b7dfcebea1fa5910cc432b3d2f2f4eb2016b`  
		Last Modified: Thu, 15 Nov 2018 01:53:09 GMT  
		Size: 20.3 MB (20331309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f30486ebbbf15de4bae2ee331725f016847747a4b99f2a35d7e5499d3e6fa9ea`  
		Last Modified: Fri, 16 Nov 2018 23:27:15 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c396b63e865772d0a63c58fea87fe76a8daba403801b6b65a6bd1a3504e19f3`  
		Last Modified: Fri, 16 Nov 2018 23:27:15 GMT  
		Size: 908.0 KB (907972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4eb7bdf85508057c858bad30d602b5130a292d012b46f94b562d4d3f70d2073`  
		Last Modified: Tue, 18 Dec 2018 10:46:13 GMT  
		Size: 11.6 MB (11582461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20586bd361b2ac29523b5bfb04ed5113f9c326025e497713233db3024c2083f5`  
		Last Modified: Tue, 18 Dec 2018 10:46:08 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30e0a571d1beac995356960efce9dbe6a32fe99110c86d11f6a0373f887f5d0a`  
		Last Modified: Tue, 18 Dec 2018 10:46:08 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-stretch` - linux; 386

```console
$ docker pull redis@sha256:c4b0da2bab3507cf25987e91079038ba998879f353ab37124bf6425dc6d4b4fd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35227311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4091cd0695d751c595599f6d7dcfed5d2022c3ceb2a1819230b0d0ce1c9d57e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 16 Nov 2018 12:37:07 GMT
ADD file:e79bc0c504d8730048ef2ccae209fa270a0e3785a4029777112a397261336279 in / 
# Fri, 16 Nov 2018 12:37:08 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 06:09:40 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 17 Nov 2018 06:09:40 GMT
ENV GOSU_VERSION=1.10
# Sat, 17 Nov 2018 06:10:01 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 14 Dec 2018 12:32:20 GMT
ENV REDIS_VERSION=5.0.3
# Fri, 14 Dec 2018 12:32:20 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Fri, 14 Dec 2018 12:32:21 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Fri, 14 Dec 2018 12:33:28 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 14 Dec 2018 12:33:28 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 14 Dec 2018 12:33:28 GMT
VOLUME [/data]
# Fri, 14 Dec 2018 12:33:29 GMT
WORKDIR /data
# Fri, 14 Dec 2018 12:33:29 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Fri, 14 Dec 2018 12:33:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Dec 2018 12:33:30 GMT
EXPOSE 6379/tcp
# Fri, 14 Dec 2018 12:33:30 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:137021d63f76f1d8c7a7bcdd4c59e1a909b9d440414a2623b215f830920128e4`  
		Last Modified: Thu, 15 Nov 2018 01:55:24 GMT  
		Size: 23.1 MB (23126776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36f12aaafb04623ca047b7fd06a3ee6c44815b18f2fd10d1c508e1416e5b4210`  
		Last Modified: Sat, 17 Nov 2018 06:14:19 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7798210102e9030bcff25d93adeb1c361988cacaff78a553c4e566544739d114`  
		Last Modified: Sat, 17 Nov 2018 06:14:20 GMT  
		Size: 920.1 KB (920077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cc46e0f81a2c3ff738a63bd3f8f547983ab6b0ca73704fe50460fd037d89d9e`  
		Last Modified: Fri, 14 Dec 2018 12:35:23 GMT  
		Size: 11.2 MB (11178209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989033bcface561af25c7984dccd7e851c319d18b02016a3c84a0b335c7a7cfc`  
		Last Modified: Fri, 14 Dec 2018 12:35:21 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:377fa076dbd7df755710198c982d5d08da32a68d7895bd7d5d42d97d247fd1be`  
		Last Modified: Fri, 14 Dec 2018 12:35:21 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-stretch` - linux; ppc64le

```console
$ docker pull redis@sha256:f0759cfea10978fe1dcb91c441c99c2d70fd5d57d6405ed9c6ae1d7f5872f94a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.6 MB (35609362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd8a70731dca51cdb53365b9254bbc8a80e94ba989738ac0f262c40e790e994c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 16 Nov 2018 09:32:15 GMT
ADD file:204503423ebb04acd333e18949cb54bcaed457b7cc62e0b3ea379a6e8f2954d3 in / 
# Fri, 16 Nov 2018 09:32:22 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 16:52:18 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 16 Nov 2018 16:52:19 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 16:53:54 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 14 Dec 2018 10:24:54 GMT
ENV REDIS_VERSION=5.0.3
# Fri, 14 Dec 2018 10:24:56 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Fri, 14 Dec 2018 10:24:58 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Fri, 14 Dec 2018 10:28:02 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 14 Dec 2018 10:29:41 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 14 Dec 2018 10:29:44 GMT
VOLUME [/data]
# Fri, 14 Dec 2018 10:29:47 GMT
WORKDIR /data
# Fri, 14 Dec 2018 10:29:51 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Fri, 14 Dec 2018 10:29:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Dec 2018 10:29:57 GMT
EXPOSE 6379/tcp
# Fri, 14 Dec 2018 10:30:00 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5f1fd7593ff8841061926e767f73d9fd35ddfcbbe3858208ebf5ff0a20a961d0`  
		Last Modified: Fri, 16 Nov 2018 09:42:42 GMT  
		Size: 22.7 MB (22740714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0c5eb162bdb0306fe8f40fca03869ae40b121ab0599a7a5f26b2a47c064a16`  
		Last Modified: Fri, 16 Nov 2018 17:00:08 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdf93e18136797b688758dafe1a4525b9d82cbf85c31cd036ddb244da71950c2`  
		Last Modified: Fri, 16 Nov 2018 17:00:08 GMT  
		Size: 909.7 KB (909734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2808d6225456347a5934740556258d0771a9537d3c3ded7f9c6ac6508fd3b405`  
		Last Modified: Fri, 14 Dec 2018 10:34:44 GMT  
		Size: 12.0 MB (11956620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:509841126cfc5c24c4f6957ea354fba768dec0d2cd98da62186a2ea0ad989b63`  
		Last Modified: Fri, 14 Dec 2018 10:34:37 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81c697902383f051b94e04adc312180b8b622d83896cd55b6bb0525a44e6f3a2`  
		Last Modified: Fri, 14 Dec 2018 10:34:38 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-stretch` - linux; s390x

```console
$ docker pull redis@sha256:9a4e7cf1a05b64ac9e5d40731bbf76e69dfff0b40088c7ace3549e6444e5462b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.5 MB (35489023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82ec4084699a64e813abb3e1a3d6403a96047740c101562317c02b28626d07ca`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 16 Nov 2018 12:44:25 GMT
ADD file:9efa49fd8473756c5464573f90c63a692161d897b042f07c4ef674e90de81064 in / 
# Fri, 16 Nov 2018 12:44:27 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 19:03:01 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 16 Nov 2018 19:03:01 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 19:03:25 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 14 Dec 2018 13:38:48 GMT
ENV REDIS_VERSION=5.0.3
# Fri, 14 Dec 2018 13:38:48 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Fri, 14 Dec 2018 13:38:49 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Fri, 14 Dec 2018 13:40:08 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 14 Dec 2018 13:40:09 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 14 Dec 2018 13:40:10 GMT
VOLUME [/data]
# Fri, 14 Dec 2018 13:40:10 GMT
WORKDIR /data
# Fri, 14 Dec 2018 13:40:10 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Fri, 14 Dec 2018 13:40:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Dec 2018 13:40:11 GMT
EXPOSE 6379/tcp
# Fri, 14 Dec 2018 13:40:11 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:db7aa0264595016e37963ab9cf4e6fbfa7b19d99cb39b16bbb561a02b7b459d2`  
		Last Modified: Thu, 15 Nov 2018 02:03:05 GMT  
		Size: 22.3 MB (22334714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1df1ec8504f31b83153c15e397b2b1bd84be3411dc4c29a44c46fb33346c47`  
		Last Modified: Fri, 16 Nov 2018 19:06:06 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff16e78a01a74d4790f4731e304c3db33582d2979c3ada740370ce986ef9bb4e`  
		Last Modified: Fri, 16 Nov 2018 19:06:09 GMT  
		Size: 926.8 KB (926750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eae9b51667ce39abb1430e9a8a8f5522d9212c9262d1951820888ee60afc9e1`  
		Last Modified: Fri, 14 Dec 2018 13:41:55 GMT  
		Size: 12.2 MB (12225296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987a2dd749edbfc0f7f15b47b0e80307dd7f5daa1ab79151d7bcd7e7315b56a2`  
		Last Modified: Fri, 14 Dec 2018 13:41:53 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b91aae7e3d1b5f4727c8493321cbea25883782a9c7dc38b66663bd6dc7ceb0`  
		Last Modified: Fri, 14 Dec 2018 13:41:52 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
