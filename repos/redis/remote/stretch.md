## `redis:stretch`

```console
$ docker pull redis@sha256:481970a8481060753c7b1859be284cc2b1a498049e27671b214dc4b9517acbd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `redis:stretch` - linux; amd64

```console
$ docker pull redis@sha256:37c86b707e3be44c578359922f8bdce71c2215b2f28631b5d604cb535892af3c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32123470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e8db158f18dc71307f95260e532df39a9b604b51d4e697468e82845c50cfe28`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 17 Jul 2018 00:28:04 GMT
ADD file:919939fa022472751b717443eea9f1d7ab5c0723f1f3a6b776d3b83d22bde818 in / 
# Tue, 17 Jul 2018 00:28:04 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 07:22:05 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 17 Jul 2018 07:22:05 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 07:22:32 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 04 Aug 2018 02:39:42 GMT
ENV REDIS_VERSION=4.0.11
# Sat, 04 Aug 2018 02:39:42 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Sat, 04 Aug 2018 02:39:42 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Sat, 04 Aug 2018 02:40:19 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Aug 2018 02:40:20 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Aug 2018 02:40:20 GMT
VOLUME [/data]
# Sat, 04 Aug 2018 02:40:21 GMT
WORKDIR /data
# Sat, 04 Aug 2018 02:40:21 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 04 Aug 2018 02:40:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Aug 2018 02:40:22 GMT
EXPOSE 6379/tcp
# Sat, 04 Aug 2018 02:40:22 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:be8881be8156e4068e611fe956aba2b9593ebd953be14fb7feea6d0659aa3abe`  
		Last Modified: Tue, 17 Jul 2018 00:44:17 GMT  
		Size: 22.5 MB (22485906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f5ea773ca39a0094e300aec4c30478b616d1631382c6eba21fdc2fa20c0385`  
		Last Modified: Tue, 17 Jul 2018 07:32:13 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:735cc65c0db489710ba88840b2075d6d4195f0d0c5dfc5e59fdfc6243aca0daf`  
		Last Modified: Tue, 17 Jul 2018 07:32:14 GMT  
		Size: 941.3 KB (941278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:787dddf999465c65a36871907b03edc4e037efbad2ca6f10b4cb364f1f5083cd`  
		Last Modified: Sat, 04 Aug 2018 02:47:36 GMT  
		Size: 8.7 MB (8694048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0733799a7c0af0d24b95702e52997fd6c9c27216e3c582402e0bbcae6642264c`  
		Last Modified: Sat, 04 Aug 2018 02:47:33 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d250f04811a7e345b056ef26c951ae7d02c1d2f531d1cd6d74a5a026479b915`  
		Last Modified: Sat, 04 Aug 2018 02:47:32 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:stretch` - linux; arm variant v5

```console
$ docker pull redis@sha256:129615bff27d71663d66c0972d9919cee3eff88813056f436d8a9afded2678d4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30514502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7191674fdaf6e54588e12b86defa7007134917ba1420f7b16feb7a03ab5f8934`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 17 Jul 2018 08:56:27 GMT
ADD file:60830ba735048c6cbecbc75b83364ad442e1e5ee691ef74dad4eb07f720f8919 in / 
# Tue, 17 Jul 2018 08:56:29 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 11:34:03 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 17 Jul 2018 11:34:03 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 11:34:26 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 04 Aug 2018 09:07:42 GMT
ENV REDIS_VERSION=4.0.11
# Sat, 04 Aug 2018 09:07:43 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Sat, 04 Aug 2018 09:07:43 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Sat, 04 Aug 2018 09:08:18 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Aug 2018 09:08:19 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Aug 2018 09:08:19 GMT
VOLUME [/data]
# Sat, 04 Aug 2018 09:08:19 GMT
WORKDIR /data
# Sat, 04 Aug 2018 09:08:20 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 04 Aug 2018 09:08:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Aug 2018 09:08:20 GMT
EXPOSE 6379/tcp
# Sat, 04 Aug 2018 09:08:20 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:235e2c34c6b727f2b00aae7eed907f84338b4002c487e0caaa123a50334c0810`  
		Last Modified: Tue, 17 Jul 2018 09:09:00 GMT  
		Size: 21.2 MB (21162647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a20615f2ff8674386d38dae4bd4b7df9f40e721996476cd357b2b3d51b8f18d3`  
		Last Modified: Tue, 17 Jul 2018 11:37:35 GMT  
		Size: 1.7 KB (1731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15f2a504016fbbec6ec6c1871d0624ac5ad51eb067d93ef7766666044ae13aa1`  
		Last Modified: Tue, 17 Jul 2018 11:37:35 GMT  
		Size: 931.1 KB (931092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8750f9bba1aa613ca47ae6f92adc044178364ffde48091390b207777db680784`  
		Last Modified: Sat, 04 Aug 2018 09:09:06 GMT  
		Size: 8.4 MB (8418496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd0f286302c49b291ceee7836a91b1d295f0e6a38621f8ef8ac540c5f47673af`  
		Last Modified: Sat, 04 Aug 2018 09:09:02 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2be8c01815b83013dcf72474b27e702d509c28a119b013723986ee2c90e53890`  
		Last Modified: Sat, 04 Aug 2018 09:09:02 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:stretch` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:3111dae317ac33f7d1734e9ff566fda678d5e9067d0a0ade2779a8a30768cca9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.7 MB (29733793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25aaf0dc199ba11ee99d407ade0441dd4e783d3a2b5dd19c3a9f47f91a8cf32f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 17 Jul 2018 08:48:06 GMT
ADD file:b6ea996ffd5aa4dade8cb1d721c2716614c03110d98683aca206c7ab52fcb9e5 in / 
# Tue, 17 Jul 2018 08:48:07 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 13:59:20 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 17 Jul 2018 13:59:20 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 14:00:25 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 04 Aug 2018 09:39:15 GMT
ENV REDIS_VERSION=4.0.11
# Sat, 04 Aug 2018 09:39:16 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Sat, 04 Aug 2018 09:39:17 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Sat, 04 Aug 2018 09:40:45 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Aug 2018 09:40:47 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Aug 2018 09:40:47 GMT
VOLUME [/data]
# Sat, 04 Aug 2018 09:40:48 GMT
WORKDIR /data
# Sat, 04 Aug 2018 09:40:49 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 04 Aug 2018 09:40:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Aug 2018 09:40:51 GMT
EXPOSE 6379/tcp
# Sat, 04 Aug 2018 09:40:52 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:74a932489409d8d15db14c8a4a811fb46c7386bb06ea678ff27084d5657eeaaf`  
		Last Modified: Tue, 17 Jul 2018 08:57:35 GMT  
		Size: 20.3 MB (20331647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f776bb208961610af93817bff103c1150697e74c29ade6ef8cdd274b2dde956d`  
		Last Modified: Tue, 17 Jul 2018 14:10:53 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f83d3d3d08cd68a204a826e715020f79dce9ce29f1a320ef596ab3e167d775d4`  
		Last Modified: Tue, 17 Jul 2018 14:10:53 GMT  
		Size: 907.9 KB (907937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0ab2ab68509413c0f5ed1920be589aa287091f33f2ebb283d13153588975d6e`  
		Last Modified: Sat, 04 Aug 2018 09:45:45 GMT  
		Size: 8.5 MB (8491964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab880a65f9993864d781dbc3f3429607ade7bbe42789d10470b0ddea075d59e4`  
		Last Modified: Sat, 04 Aug 2018 09:45:42 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d11657f27df31490004e4d8cea25279a78ae29ec7f46296f6fbceda1458be69`  
		Last Modified: Sat, 04 Aug 2018 09:45:42 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:stretch` - linux; ppc64le

```console
$ docker pull redis@sha256:6e294feef061548741c22070853be0dd9707410b7762c93167b48b42e93b92e9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.5 MB (32521595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:383f8f90c62973cf81c5c6a170f6b7c30a83f7eb50fd7e0dc1966e55bd08c4e0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 17 Jul 2018 08:20:29 GMT
ADD file:d8fd3ee34d99a5bb7abafecc4f8991a3de0ad779e8fd8f3ebb33a4811ecfd5a5 in / 
# Tue, 17 Jul 2018 08:20:30 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 11:04:58 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 17 Jul 2018 11:05:06 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 11:07:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 04 Aug 2018 09:55:12 GMT
ENV REDIS_VERSION=4.0.11
# Sat, 04 Aug 2018 09:55:17 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Sat, 04 Aug 2018 09:55:23 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Sat, 04 Aug 2018 10:03:47 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Aug 2018 10:04:04 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Aug 2018 10:04:08 GMT
VOLUME [/data]
# Sat, 04 Aug 2018 10:04:16 GMT
WORKDIR /data
# Sat, 04 Aug 2018 10:04:24 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 04 Aug 2018 10:04:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Aug 2018 10:04:38 GMT
EXPOSE 6379/tcp
# Sat, 04 Aug 2018 10:04:43 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6dc0c10e32a730b4a6b92aaa59148a751864a834dc8ac1b0032717f378efc701`  
		Last Modified: Tue, 17 Jul 2018 08:26:26 GMT  
		Size: 22.7 MB (22740445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6086b6b27f5c2b017da37bcef902a61c1e06414aba816f1175bd92c9c4fed4a`  
		Last Modified: Tue, 17 Jul 2018 11:18:23 GMT  
		Size: 1.8 KB (1751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00984efb15ba373f3b659fd9629d3d7682f1f61a1e0b2231a54ca30b8e9bb3b5`  
		Last Modified: Tue, 17 Jul 2018 11:18:23 GMT  
		Size: 909.9 KB (909862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64560cb3bc631f06bb56c38dfd0f6c94a6bf7ae6cb234e852d21a3108ca2d952`  
		Last Modified: Sat, 04 Aug 2018 10:11:09 GMT  
		Size: 8.9 MB (8869001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ea620d2207e6cff67417fab8fc639ba4dab1b7d0ec35c9fac395f59b9c4f409`  
		Last Modified: Sat, 04 Aug 2018 10:11:06 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:003cbc680c56a8aa737e7bb98ca191d2e45967ab600cba9a3c99b16d9ba2541b`  
		Last Modified: Sat, 04 Aug 2018 10:11:06 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
