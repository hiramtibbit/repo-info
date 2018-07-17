<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `redis`

-	[`redis:3`](#redis3)
-	[`redis:3.2`](#redis32)
-	[`redis:3.2.12`](#redis3212)
-	[`redis:3.2.12-32bit`](#redis3212-32bit)
-	[`redis:3.2.12-alpine`](#redis3212-alpine)
-	[`redis:3.2-32bit`](#redis32-32bit)
-	[`redis:3.2-alpine`](#redis32-alpine)
-	[`redis:32bit`](#redis32bit)
-	[`redis:3-32bit`](#redis3-32bit)
-	[`redis:3-alpine`](#redis3-alpine)
-	[`redis:4`](#redis4)
-	[`redis:4.0`](#redis40)
-	[`redis:4.0.10`](#redis4010)
-	[`redis:4.0.10-32bit`](#redis4010-32bit)
-	[`redis:4.0.10-alpine`](#redis4010-alpine)
-	[`redis:4.0-32bit`](#redis40-32bit)
-	[`redis:4.0-alpine`](#redis40-alpine)
-	[`redis:4-32bit`](#redis4-32bit)
-	[`redis:4-alpine`](#redis4-alpine)
-	[`redis:5.0-rc`](#redis50-rc)
-	[`redis:5.0-rc3`](#redis50-rc3)
-	[`redis:5.0-rc-32bit`](#redis50-rc-32bit)
-	[`redis:5.0-rc3-32bit`](#redis50-rc3-32bit)
-	[`redis:5.0-rc3-alpine`](#redis50-rc3-alpine)
-	[`redis:5.0-rc-alpine`](#redis50-rc-alpine)
-	[`redis:alpine`](#redisalpine)
-	[`redis:latest`](#redislatest)

## `redis:3`

```console
$ docker pull redis@sha256:53308a95ae3028575931d76636759274e240300c89bd94253002897cfcc89530
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
$ docker pull redis@sha256:3c0c3e7f95e48de257e3c5377dc0a3c16f8cb3b4e281a4e9f63bd29c6c31f43e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.4 MB (29390672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2e6164a20de78b53fad98207949da81eaa0d1ef75e289c531f4f3b8acbdad29`
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
# Tue, 17 Jul 2018 07:29:13 GMT
ENV REDIS_VERSION=3.2.12
# Tue, 17 Jul 2018 07:29:13 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Tue, 17 Jul 2018 07:29:13 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Tue, 17 Jul 2018 07:29:46 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jul 2018 07:29:58 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 17 Jul 2018 07:29:59 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 07:29:59 GMT
WORKDIR /data
# Tue, 17 Jul 2018 07:29:59 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 17 Jul 2018 07:29:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 07:30:00 GMT
EXPOSE 6379/tcp
# Tue, 17 Jul 2018 07:30:00 GMT
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
	-	`sha256:ae14a66a481e91419d52349fcc92e9fdafef857b680bfdae985f788376780daa`  
		Last Modified: Tue, 17 Jul 2018 07:37:02 GMT  
		Size: 6.0 MB (5961250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:424fa70ab72b735807efed5033ef55e6ac799a28aaa3167e65c8b4c1ab872f3a`  
		Last Modified: Tue, 17 Jul 2018 07:36:59 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceb36c1da065b853a85e0729c9129425c9a64604054d5b82bf62d15f7b8b7189`  
		Last Modified: Tue, 17 Jul 2018 07:37:00 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3` - linux; arm variant v5

```console
$ docker pull redis@sha256:b20d02ed14d3da25677da67e2f72f686dc9d329e13b8bab793080a16a590d5b9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.9 MB (27868293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c90e65ff55dd140afc204763ebd49a5e6b022a4b2c91127464848ef7f8898c1`
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
# Tue, 17 Jul 2018 11:36:45 GMT
ENV REDIS_VERSION=3.2.12
# Tue, 17 Jul 2018 11:36:45 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Tue, 17 Jul 2018 11:36:45 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Tue, 17 Jul 2018 11:37:16 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jul 2018 11:37:17 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 17 Jul 2018 11:37:17 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 11:37:17 GMT
WORKDIR /data
# Tue, 17 Jul 2018 11:37:18 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 17 Jul 2018 11:37:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 11:37:18 GMT
EXPOSE 6379/tcp
# Tue, 17 Jul 2018 11:37:19 GMT
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
	-	`sha256:75cced23fdd2fc9557e22915eb6c9a3dc9243d698722962634e8d93ad13dd1c2`  
		Last Modified: Tue, 17 Jul 2018 11:38:36 GMT  
		Size: 5.8 MB (5772288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91568239fd967db9515055ed6c6ff9ca3baece67704045a586b98f5502607308`  
		Last Modified: Tue, 17 Jul 2018 11:38:34 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a3a246073c552ee29ccd2e7798df6ab47ee3dfdfac868f6297ec67a85d1e460`  
		Last Modified: Tue, 17 Jul 2018 11:38:35 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3` - linux; arm variant v7

```console
$ docker pull redis@sha256:3a11ae4477cc9e69dea488a1220fab197e38c1f6677e25480374f8916890a003
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.8 MB (25821994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f1b934a5bca0736748b36cf7ddf2c99715c4e0cdceb3dbf871f6b075726e016`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Jun 2018 12:03:51 GMT
ADD file:d05cf75761bffd94ce908a55d38fc4966c194aa14492730dfdc1e52c3ddd0892 in / 
# Wed, 27 Jun 2018 12:03:54 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 14:18:29 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 14:18:29 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 14:18:48 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 14:18:48 GMT
ENV REDIS_VERSION=3.2.12
# Wed, 27 Jun 2018 14:18:49 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Wed, 27 Jun 2018 14:18:49 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Wed, 27 Jun 2018 14:19:19 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 14:19:21 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 14:19:21 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 14:19:22 GMT
WORKDIR /data
# Wed, 27 Jun 2018 14:19:23 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 27 Jun 2018 14:19:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 14:19:24 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 14:19:24 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:a779870b6875e97ad1448eaf9befb46011e0fd10ef5014f59d63f624b51de26f`  
		Last Modified: Wed, 27 Jun 2018 12:13:30 GMT  
		Size: 19.3 MB (19286273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c5c410558b6543c5785cecbccb032fd4982038a92ba3b8bb4d5ab8d17e6bed7`  
		Last Modified: Wed, 27 Jun 2018 14:20:30 GMT  
		Size: 1.7 KB (1730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48b858312be07ebaa41456fe36334924f5e53a6a705c42b89b61f26bc6ebb357`  
		Last Modified: Wed, 27 Jun 2018 14:20:30 GMT  
		Size: 915.9 KB (915893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d487159866c3d98c7c391be0e6b30106caf6e3d6ccca8dc242897fb25359b1a4`  
		Last Modified: Wed, 27 Jun 2018 14:20:32 GMT  
		Size: 5.6 MB (5617562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7056b5a1293b5b7456db67665171f79de2007ef42e86a4ad28877e2028fb0e0e`  
		Last Modified: Wed, 27 Jun 2018 14:20:30 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e78d8ea827cb0a53bf0e2c48d098dbd7cf096b9e048b1ecba63e6bd00b326f8`  
		Last Modified: Wed, 27 Jun 2018 14:20:31 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:16dca573cc3e83bc90b698d6b8798034c13473abf61b600467289a1887f79c36
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 MB (27088034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac6817f6d7ad5f21df0a7c9becf9f4f2ca72516389ae462b01ea91b5eb4506f6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:44 GMT
ADD file:b8a1907d99b0b9f75b52f8e25d5c346caf0244b325919c02090ab1e05ba1cf18 in / 
# Wed, 27 Jun 2018 08:47:45 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 13:29:17 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 13:29:18 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 13:30:37 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 13:30:39 GMT
ENV REDIS_VERSION=3.2.12
# Wed, 27 Jun 2018 13:30:40 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Wed, 27 Jun 2018 13:30:41 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Wed, 27 Jun 2018 13:32:33 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 13:32:35 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 13:32:36 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 13:32:37 GMT
WORKDIR /data
# Wed, 27 Jun 2018 13:32:38 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 27 Jun 2018 13:32:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 13:32:40 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 13:32:41 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:153362478bb06475bede3bd6da2ff08a91dd9fc6f245c70bb5a033b65f38ac14`  
		Last Modified: Wed, 27 Jun 2018 08:58:51 GMT  
		Size: 20.3 MB (20348077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3df18432afbb66c603676db6e777b9e8385de68f08a19d034af0da3a1858e1f7`  
		Last Modified: Wed, 27 Jun 2018 13:35:34 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a80a3007c2c23eea873ed4902940ef771b78a7d742c98741d71b816d77682d9`  
		Last Modified: Wed, 27 Jun 2018 13:35:35 GMT  
		Size: 908.2 KB (908185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cee6c42d10568b09b9ccba8f3ee388963c7a542a16f90900ec7f0314579940d`  
		Last Modified: Wed, 27 Jun 2018 13:35:37 GMT  
		Size: 5.8 MB (5829531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c09b3d6bcb69982bff5f36c22f15942f577adf0640c9a890f6eae5f3451c568`  
		Last Modified: Wed, 27 Jun 2018 13:35:35 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:935519387ace3d78d43ebe372ad9e594ec8b3647bd0a59adce871b802e2b485f`  
		Last Modified: Wed, 27 Jun 2018 13:35:34 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3` - linux; 386

```console
$ docker pull redis@sha256:024831bc213e833ebe3b528a42b2c3d612f047628d1c454df6ce79108949b0df
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.7 MB (29714397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd1453467c805ccbf763127a0521862072115a19f7846a3d2a08e7133ed67004`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Jun 2018 10:46:39 GMT
ADD file:e1777a98c0e3aaf9cb1f4116550001b0eed2fe669b2c6449c93b76cccc92e1a2 in / 
# Wed, 27 Jun 2018 10:46:42 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 13:03:38 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 13:03:38 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 13:04:04 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 13:04:05 GMT
ENV REDIS_VERSION=3.2.12
# Wed, 27 Jun 2018 13:04:05 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Wed, 27 Jun 2018 13:04:05 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Wed, 27 Jun 2018 13:04:40 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 13:04:41 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 13:04:41 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 13:04:41 GMT
WORKDIR /data
# Wed, 27 Jun 2018 13:04:42 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 27 Jun 2018 13:04:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 13:04:42 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 13:04:42 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:7de5eb46c52dbee10629f5dc34d9b2445893031ae37083572734bc4f6577757d`  
		Last Modified: Wed, 27 Jun 2018 11:11:02 GMT  
		Size: 23.1 MB (23140103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8df6822d7184835aefd26151cfc1ba536407dc7e8d1f959bc1360b882e7f140`  
		Last Modified: Wed, 27 Jun 2018 13:06:10 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:036521fcd75cdac216f9c6c2c0a4e7c7512653de681714198cfddbf20503ea97`  
		Last Modified: Wed, 27 Jun 2018 13:06:10 GMT  
		Size: 920.3 KB (920308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6bad75267a722ea6c6c910e1551f071d7ce2b45ff6f053eb056d2953a6e6657`  
		Last Modified: Wed, 27 Jun 2018 13:06:12 GMT  
		Size: 5.7 MB (5651753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35db50a350c81e6f351bc2337919b9cb693e6ec49f4f74c822c8da9add00ebf`  
		Last Modified: Wed, 27 Jun 2018 13:06:09 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:865d09184e259597097513a8b33277255afbcd5106a8591c5da13d475b01e949`  
		Last Modified: Wed, 27 Jun 2018 13:06:10 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3` - linux; ppc64le

```console
$ docker pull redis@sha256:04441b1fafd9dbaa89cc437a0219fd4ae880359563456fe918f443096fbe7470
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.8 MB (29753519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca8e2908a3aa754cfab006ab97730db1fc18b81af25a47736adac57dfa74f35e`
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
# Tue, 17 Jul 2018 11:15:09 GMT
ENV REDIS_VERSION=3.2.12
# Tue, 17 Jul 2018 11:15:11 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Tue, 17 Jul 2018 11:15:13 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Tue, 17 Jul 2018 11:17:37 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jul 2018 11:17:43 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 17 Jul 2018 11:17:44 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 11:17:45 GMT
WORKDIR /data
# Tue, 17 Jul 2018 11:17:47 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 17 Jul 2018 11:17:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 11:17:51 GMT
EXPOSE 6379/tcp
# Tue, 17 Jul 2018 11:17:53 GMT
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
	-	`sha256:b3df99c1ac69ec71731c6a5161211e5483c8f1b9e1961cac042ed5c14e25153d`  
		Last Modified: Tue, 17 Jul 2018 11:20:03 GMT  
		Size: 6.1 MB (6100924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f0d259a16256f7b4733124a77f32bc7f0151d4bea4c5a689951eff764a2437e`  
		Last Modified: Tue, 17 Jul 2018 11:20:00 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9e529ffdb4d532d12852b348d2daf5061da8c69da256bc2582b9ea82d5818f7`  
		Last Modified: Tue, 17 Jul 2018 11:19:59 GMT  
		Size: 405.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3` - linux; s390x

```console
$ docker pull redis@sha256:f8352b63f70b541d990517ba58879d6cbc38384ccf3b298c152843358321c40c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.5 MB (29509493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab71a81ce46ad1f6fd6caaad34f5b42ef7678e3e2b0263c3ea3bbbfd4692f9d7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Jun 2018 11:48:52 GMT
ADD file:30e8aac3f01e5ddc9493a0fac1c0978b9435ab33031d2af05afca0f9cb7eb71f in / 
# Wed, 27 Jun 2018 11:48:52 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 13:46:24 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 13:46:24 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 13:46:39 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 13:46:39 GMT
ENV REDIS_VERSION=3.2.12
# Wed, 27 Jun 2018 13:46:39 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Wed, 27 Jun 2018 13:46:39 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Wed, 27 Jun 2018 13:47:14 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 13:47:14 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 13:47:15 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 13:47:15 GMT
WORKDIR /data
# Wed, 27 Jun 2018 13:47:15 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 27 Jun 2018 13:47:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 13:47:15 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 13:47:16 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:1c23a44ac305da2d34995cf30530ba5adce0229e4a70678fd4d25384883b1281`  
		Last Modified: Wed, 27 Jun 2018 11:53:41 GMT  
		Size: 22.3 MB (22349871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f450656bdbcbfdc1614dfb82ca8dc61d74ac31bd1698136f082a3f2e49795a`  
		Last Modified: Wed, 27 Jun 2018 13:48:34 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb0e27db9314b93a9ac2f160f4fc84e2fac43e079e197b9721c03d11c645b235`  
		Last Modified: Wed, 27 Jun 2018 13:48:34 GMT  
		Size: 926.8 KB (926820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69a1c634077b9f1b92a4db026063755084ac2b5b5c7d9fcd97eeebe8e27c31af`  
		Last Modified: Wed, 27 Jun 2018 13:48:36 GMT  
		Size: 6.2 MB (6230560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcacad83f7bf2ea656bdab0dbbd848b8e2a934436e3e207493ab7cbee60c1b12`  
		Last Modified: Wed, 27 Jun 2018 13:48:34 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1d68f3fad8fe9da0ae4293ab87a7f6a1488c7d0360f104ed3fa3b4d9507a909`  
		Last Modified: Wed, 27 Jun 2018 13:48:34 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2`

```console
$ docker pull redis@sha256:53308a95ae3028575931d76636759274e240300c89bd94253002897cfcc89530
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
$ docker pull redis@sha256:3c0c3e7f95e48de257e3c5377dc0a3c16f8cb3b4e281a4e9f63bd29c6c31f43e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.4 MB (29390672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2e6164a20de78b53fad98207949da81eaa0d1ef75e289c531f4f3b8acbdad29`
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
# Tue, 17 Jul 2018 07:29:13 GMT
ENV REDIS_VERSION=3.2.12
# Tue, 17 Jul 2018 07:29:13 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Tue, 17 Jul 2018 07:29:13 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Tue, 17 Jul 2018 07:29:46 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jul 2018 07:29:58 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 17 Jul 2018 07:29:59 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 07:29:59 GMT
WORKDIR /data
# Tue, 17 Jul 2018 07:29:59 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 17 Jul 2018 07:29:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 07:30:00 GMT
EXPOSE 6379/tcp
# Tue, 17 Jul 2018 07:30:00 GMT
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
	-	`sha256:ae14a66a481e91419d52349fcc92e9fdafef857b680bfdae985f788376780daa`  
		Last Modified: Tue, 17 Jul 2018 07:37:02 GMT  
		Size: 6.0 MB (5961250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:424fa70ab72b735807efed5033ef55e6ac799a28aaa3167e65c8b4c1ab872f3a`  
		Last Modified: Tue, 17 Jul 2018 07:36:59 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceb36c1da065b853a85e0729c9129425c9a64604054d5b82bf62d15f7b8b7189`  
		Last Modified: Tue, 17 Jul 2018 07:37:00 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2` - linux; arm variant v5

```console
$ docker pull redis@sha256:b20d02ed14d3da25677da67e2f72f686dc9d329e13b8bab793080a16a590d5b9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.9 MB (27868293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c90e65ff55dd140afc204763ebd49a5e6b022a4b2c91127464848ef7f8898c1`
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
# Tue, 17 Jul 2018 11:36:45 GMT
ENV REDIS_VERSION=3.2.12
# Tue, 17 Jul 2018 11:36:45 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Tue, 17 Jul 2018 11:36:45 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Tue, 17 Jul 2018 11:37:16 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jul 2018 11:37:17 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 17 Jul 2018 11:37:17 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 11:37:17 GMT
WORKDIR /data
# Tue, 17 Jul 2018 11:37:18 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 17 Jul 2018 11:37:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 11:37:18 GMT
EXPOSE 6379/tcp
# Tue, 17 Jul 2018 11:37:19 GMT
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
	-	`sha256:75cced23fdd2fc9557e22915eb6c9a3dc9243d698722962634e8d93ad13dd1c2`  
		Last Modified: Tue, 17 Jul 2018 11:38:36 GMT  
		Size: 5.8 MB (5772288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91568239fd967db9515055ed6c6ff9ca3baece67704045a586b98f5502607308`  
		Last Modified: Tue, 17 Jul 2018 11:38:34 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a3a246073c552ee29ccd2e7798df6ab47ee3dfdfac868f6297ec67a85d1e460`  
		Last Modified: Tue, 17 Jul 2018 11:38:35 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2` - linux; arm variant v7

```console
$ docker pull redis@sha256:3a11ae4477cc9e69dea488a1220fab197e38c1f6677e25480374f8916890a003
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.8 MB (25821994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f1b934a5bca0736748b36cf7ddf2c99715c4e0cdceb3dbf871f6b075726e016`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Jun 2018 12:03:51 GMT
ADD file:d05cf75761bffd94ce908a55d38fc4966c194aa14492730dfdc1e52c3ddd0892 in / 
# Wed, 27 Jun 2018 12:03:54 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 14:18:29 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 14:18:29 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 14:18:48 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 14:18:48 GMT
ENV REDIS_VERSION=3.2.12
# Wed, 27 Jun 2018 14:18:49 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Wed, 27 Jun 2018 14:18:49 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Wed, 27 Jun 2018 14:19:19 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 14:19:21 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 14:19:21 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 14:19:22 GMT
WORKDIR /data
# Wed, 27 Jun 2018 14:19:23 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 27 Jun 2018 14:19:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 14:19:24 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 14:19:24 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:a779870b6875e97ad1448eaf9befb46011e0fd10ef5014f59d63f624b51de26f`  
		Last Modified: Wed, 27 Jun 2018 12:13:30 GMT  
		Size: 19.3 MB (19286273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c5c410558b6543c5785cecbccb032fd4982038a92ba3b8bb4d5ab8d17e6bed7`  
		Last Modified: Wed, 27 Jun 2018 14:20:30 GMT  
		Size: 1.7 KB (1730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48b858312be07ebaa41456fe36334924f5e53a6a705c42b89b61f26bc6ebb357`  
		Last Modified: Wed, 27 Jun 2018 14:20:30 GMT  
		Size: 915.9 KB (915893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d487159866c3d98c7c391be0e6b30106caf6e3d6ccca8dc242897fb25359b1a4`  
		Last Modified: Wed, 27 Jun 2018 14:20:32 GMT  
		Size: 5.6 MB (5617562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7056b5a1293b5b7456db67665171f79de2007ef42e86a4ad28877e2028fb0e0e`  
		Last Modified: Wed, 27 Jun 2018 14:20:30 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e78d8ea827cb0a53bf0e2c48d098dbd7cf096b9e048b1ecba63e6bd00b326f8`  
		Last Modified: Wed, 27 Jun 2018 14:20:31 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:16dca573cc3e83bc90b698d6b8798034c13473abf61b600467289a1887f79c36
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 MB (27088034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac6817f6d7ad5f21df0a7c9becf9f4f2ca72516389ae462b01ea91b5eb4506f6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:44 GMT
ADD file:b8a1907d99b0b9f75b52f8e25d5c346caf0244b325919c02090ab1e05ba1cf18 in / 
# Wed, 27 Jun 2018 08:47:45 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 13:29:17 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 13:29:18 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 13:30:37 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 13:30:39 GMT
ENV REDIS_VERSION=3.2.12
# Wed, 27 Jun 2018 13:30:40 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Wed, 27 Jun 2018 13:30:41 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Wed, 27 Jun 2018 13:32:33 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 13:32:35 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 13:32:36 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 13:32:37 GMT
WORKDIR /data
# Wed, 27 Jun 2018 13:32:38 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 27 Jun 2018 13:32:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 13:32:40 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 13:32:41 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:153362478bb06475bede3bd6da2ff08a91dd9fc6f245c70bb5a033b65f38ac14`  
		Last Modified: Wed, 27 Jun 2018 08:58:51 GMT  
		Size: 20.3 MB (20348077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3df18432afbb66c603676db6e777b9e8385de68f08a19d034af0da3a1858e1f7`  
		Last Modified: Wed, 27 Jun 2018 13:35:34 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a80a3007c2c23eea873ed4902940ef771b78a7d742c98741d71b816d77682d9`  
		Last Modified: Wed, 27 Jun 2018 13:35:35 GMT  
		Size: 908.2 KB (908185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cee6c42d10568b09b9ccba8f3ee388963c7a542a16f90900ec7f0314579940d`  
		Last Modified: Wed, 27 Jun 2018 13:35:37 GMT  
		Size: 5.8 MB (5829531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c09b3d6bcb69982bff5f36c22f15942f577adf0640c9a890f6eae5f3451c568`  
		Last Modified: Wed, 27 Jun 2018 13:35:35 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:935519387ace3d78d43ebe372ad9e594ec8b3647bd0a59adce871b802e2b485f`  
		Last Modified: Wed, 27 Jun 2018 13:35:34 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2` - linux; 386

```console
$ docker pull redis@sha256:024831bc213e833ebe3b528a42b2c3d612f047628d1c454df6ce79108949b0df
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.7 MB (29714397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd1453467c805ccbf763127a0521862072115a19f7846a3d2a08e7133ed67004`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Jun 2018 10:46:39 GMT
ADD file:e1777a98c0e3aaf9cb1f4116550001b0eed2fe669b2c6449c93b76cccc92e1a2 in / 
# Wed, 27 Jun 2018 10:46:42 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 13:03:38 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 13:03:38 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 13:04:04 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 13:04:05 GMT
ENV REDIS_VERSION=3.2.12
# Wed, 27 Jun 2018 13:04:05 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Wed, 27 Jun 2018 13:04:05 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Wed, 27 Jun 2018 13:04:40 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 13:04:41 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 13:04:41 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 13:04:41 GMT
WORKDIR /data
# Wed, 27 Jun 2018 13:04:42 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 27 Jun 2018 13:04:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 13:04:42 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 13:04:42 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:7de5eb46c52dbee10629f5dc34d9b2445893031ae37083572734bc4f6577757d`  
		Last Modified: Wed, 27 Jun 2018 11:11:02 GMT  
		Size: 23.1 MB (23140103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8df6822d7184835aefd26151cfc1ba536407dc7e8d1f959bc1360b882e7f140`  
		Last Modified: Wed, 27 Jun 2018 13:06:10 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:036521fcd75cdac216f9c6c2c0a4e7c7512653de681714198cfddbf20503ea97`  
		Last Modified: Wed, 27 Jun 2018 13:06:10 GMT  
		Size: 920.3 KB (920308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6bad75267a722ea6c6c910e1551f071d7ce2b45ff6f053eb056d2953a6e6657`  
		Last Modified: Wed, 27 Jun 2018 13:06:12 GMT  
		Size: 5.7 MB (5651753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35db50a350c81e6f351bc2337919b9cb693e6ec49f4f74c822c8da9add00ebf`  
		Last Modified: Wed, 27 Jun 2018 13:06:09 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:865d09184e259597097513a8b33277255afbcd5106a8591c5da13d475b01e949`  
		Last Modified: Wed, 27 Jun 2018 13:06:10 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2` - linux; ppc64le

```console
$ docker pull redis@sha256:04441b1fafd9dbaa89cc437a0219fd4ae880359563456fe918f443096fbe7470
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.8 MB (29753519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca8e2908a3aa754cfab006ab97730db1fc18b81af25a47736adac57dfa74f35e`
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
# Tue, 17 Jul 2018 11:15:09 GMT
ENV REDIS_VERSION=3.2.12
# Tue, 17 Jul 2018 11:15:11 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Tue, 17 Jul 2018 11:15:13 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Tue, 17 Jul 2018 11:17:37 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jul 2018 11:17:43 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 17 Jul 2018 11:17:44 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 11:17:45 GMT
WORKDIR /data
# Tue, 17 Jul 2018 11:17:47 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 17 Jul 2018 11:17:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 11:17:51 GMT
EXPOSE 6379/tcp
# Tue, 17 Jul 2018 11:17:53 GMT
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
	-	`sha256:b3df99c1ac69ec71731c6a5161211e5483c8f1b9e1961cac042ed5c14e25153d`  
		Last Modified: Tue, 17 Jul 2018 11:20:03 GMT  
		Size: 6.1 MB (6100924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f0d259a16256f7b4733124a77f32bc7f0151d4bea4c5a689951eff764a2437e`  
		Last Modified: Tue, 17 Jul 2018 11:20:00 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9e529ffdb4d532d12852b348d2daf5061da8c69da256bc2582b9ea82d5818f7`  
		Last Modified: Tue, 17 Jul 2018 11:19:59 GMT  
		Size: 405.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2` - linux; s390x

```console
$ docker pull redis@sha256:f8352b63f70b541d990517ba58879d6cbc38384ccf3b298c152843358321c40c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.5 MB (29509493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab71a81ce46ad1f6fd6caaad34f5b42ef7678e3e2b0263c3ea3bbbfd4692f9d7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Jun 2018 11:48:52 GMT
ADD file:30e8aac3f01e5ddc9493a0fac1c0978b9435ab33031d2af05afca0f9cb7eb71f in / 
# Wed, 27 Jun 2018 11:48:52 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 13:46:24 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 13:46:24 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 13:46:39 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 13:46:39 GMT
ENV REDIS_VERSION=3.2.12
# Wed, 27 Jun 2018 13:46:39 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Wed, 27 Jun 2018 13:46:39 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Wed, 27 Jun 2018 13:47:14 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 13:47:14 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 13:47:15 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 13:47:15 GMT
WORKDIR /data
# Wed, 27 Jun 2018 13:47:15 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 27 Jun 2018 13:47:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 13:47:15 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 13:47:16 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:1c23a44ac305da2d34995cf30530ba5adce0229e4a70678fd4d25384883b1281`  
		Last Modified: Wed, 27 Jun 2018 11:53:41 GMT  
		Size: 22.3 MB (22349871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f450656bdbcbfdc1614dfb82ca8dc61d74ac31bd1698136f082a3f2e49795a`  
		Last Modified: Wed, 27 Jun 2018 13:48:34 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb0e27db9314b93a9ac2f160f4fc84e2fac43e079e197b9721c03d11c645b235`  
		Last Modified: Wed, 27 Jun 2018 13:48:34 GMT  
		Size: 926.8 KB (926820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69a1c634077b9f1b92a4db026063755084ac2b5b5c7d9fcd97eeebe8e27c31af`  
		Last Modified: Wed, 27 Jun 2018 13:48:36 GMT  
		Size: 6.2 MB (6230560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcacad83f7bf2ea656bdab0dbbd848b8e2a934436e3e207493ab7cbee60c1b12`  
		Last Modified: Wed, 27 Jun 2018 13:48:34 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1d68f3fad8fe9da0ae4293ab87a7f6a1488c7d0360f104ed3fa3b4d9507a909`  
		Last Modified: Wed, 27 Jun 2018 13:48:34 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2.12`

```console
$ docker pull redis@sha256:53308a95ae3028575931d76636759274e240300c89bd94253002897cfcc89530
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

### `redis:3.2.12` - linux; amd64

```console
$ docker pull redis@sha256:3c0c3e7f95e48de257e3c5377dc0a3c16f8cb3b4e281a4e9f63bd29c6c31f43e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.4 MB (29390672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2e6164a20de78b53fad98207949da81eaa0d1ef75e289c531f4f3b8acbdad29`
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
# Tue, 17 Jul 2018 07:29:13 GMT
ENV REDIS_VERSION=3.2.12
# Tue, 17 Jul 2018 07:29:13 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Tue, 17 Jul 2018 07:29:13 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Tue, 17 Jul 2018 07:29:46 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jul 2018 07:29:58 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 17 Jul 2018 07:29:59 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 07:29:59 GMT
WORKDIR /data
# Tue, 17 Jul 2018 07:29:59 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 17 Jul 2018 07:29:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 07:30:00 GMT
EXPOSE 6379/tcp
# Tue, 17 Jul 2018 07:30:00 GMT
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
	-	`sha256:ae14a66a481e91419d52349fcc92e9fdafef857b680bfdae985f788376780daa`  
		Last Modified: Tue, 17 Jul 2018 07:37:02 GMT  
		Size: 6.0 MB (5961250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:424fa70ab72b735807efed5033ef55e6ac799a28aaa3167e65c8b4c1ab872f3a`  
		Last Modified: Tue, 17 Jul 2018 07:36:59 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceb36c1da065b853a85e0729c9129425c9a64604054d5b82bf62d15f7b8b7189`  
		Last Modified: Tue, 17 Jul 2018 07:37:00 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2.12` - linux; arm variant v5

```console
$ docker pull redis@sha256:b20d02ed14d3da25677da67e2f72f686dc9d329e13b8bab793080a16a590d5b9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.9 MB (27868293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c90e65ff55dd140afc204763ebd49a5e6b022a4b2c91127464848ef7f8898c1`
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
# Tue, 17 Jul 2018 11:36:45 GMT
ENV REDIS_VERSION=3.2.12
# Tue, 17 Jul 2018 11:36:45 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Tue, 17 Jul 2018 11:36:45 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Tue, 17 Jul 2018 11:37:16 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jul 2018 11:37:17 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 17 Jul 2018 11:37:17 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 11:37:17 GMT
WORKDIR /data
# Tue, 17 Jul 2018 11:37:18 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 17 Jul 2018 11:37:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 11:37:18 GMT
EXPOSE 6379/tcp
# Tue, 17 Jul 2018 11:37:19 GMT
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
	-	`sha256:75cced23fdd2fc9557e22915eb6c9a3dc9243d698722962634e8d93ad13dd1c2`  
		Last Modified: Tue, 17 Jul 2018 11:38:36 GMT  
		Size: 5.8 MB (5772288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91568239fd967db9515055ed6c6ff9ca3baece67704045a586b98f5502607308`  
		Last Modified: Tue, 17 Jul 2018 11:38:34 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a3a246073c552ee29ccd2e7798df6ab47ee3dfdfac868f6297ec67a85d1e460`  
		Last Modified: Tue, 17 Jul 2018 11:38:35 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2.12` - linux; arm variant v7

```console
$ docker pull redis@sha256:3a11ae4477cc9e69dea488a1220fab197e38c1f6677e25480374f8916890a003
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.8 MB (25821994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f1b934a5bca0736748b36cf7ddf2c99715c4e0cdceb3dbf871f6b075726e016`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Jun 2018 12:03:51 GMT
ADD file:d05cf75761bffd94ce908a55d38fc4966c194aa14492730dfdc1e52c3ddd0892 in / 
# Wed, 27 Jun 2018 12:03:54 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 14:18:29 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 14:18:29 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 14:18:48 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 14:18:48 GMT
ENV REDIS_VERSION=3.2.12
# Wed, 27 Jun 2018 14:18:49 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Wed, 27 Jun 2018 14:18:49 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Wed, 27 Jun 2018 14:19:19 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 14:19:21 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 14:19:21 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 14:19:22 GMT
WORKDIR /data
# Wed, 27 Jun 2018 14:19:23 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 27 Jun 2018 14:19:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 14:19:24 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 14:19:24 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:a779870b6875e97ad1448eaf9befb46011e0fd10ef5014f59d63f624b51de26f`  
		Last Modified: Wed, 27 Jun 2018 12:13:30 GMT  
		Size: 19.3 MB (19286273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c5c410558b6543c5785cecbccb032fd4982038a92ba3b8bb4d5ab8d17e6bed7`  
		Last Modified: Wed, 27 Jun 2018 14:20:30 GMT  
		Size: 1.7 KB (1730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48b858312be07ebaa41456fe36334924f5e53a6a705c42b89b61f26bc6ebb357`  
		Last Modified: Wed, 27 Jun 2018 14:20:30 GMT  
		Size: 915.9 KB (915893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d487159866c3d98c7c391be0e6b30106caf6e3d6ccca8dc242897fb25359b1a4`  
		Last Modified: Wed, 27 Jun 2018 14:20:32 GMT  
		Size: 5.6 MB (5617562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7056b5a1293b5b7456db67665171f79de2007ef42e86a4ad28877e2028fb0e0e`  
		Last Modified: Wed, 27 Jun 2018 14:20:30 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e78d8ea827cb0a53bf0e2c48d098dbd7cf096b9e048b1ecba63e6bd00b326f8`  
		Last Modified: Wed, 27 Jun 2018 14:20:31 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2.12` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:16dca573cc3e83bc90b698d6b8798034c13473abf61b600467289a1887f79c36
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 MB (27088034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac6817f6d7ad5f21df0a7c9becf9f4f2ca72516389ae462b01ea91b5eb4506f6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:44 GMT
ADD file:b8a1907d99b0b9f75b52f8e25d5c346caf0244b325919c02090ab1e05ba1cf18 in / 
# Wed, 27 Jun 2018 08:47:45 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 13:29:17 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 13:29:18 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 13:30:37 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 13:30:39 GMT
ENV REDIS_VERSION=3.2.12
# Wed, 27 Jun 2018 13:30:40 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Wed, 27 Jun 2018 13:30:41 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Wed, 27 Jun 2018 13:32:33 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 13:32:35 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 13:32:36 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 13:32:37 GMT
WORKDIR /data
# Wed, 27 Jun 2018 13:32:38 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 27 Jun 2018 13:32:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 13:32:40 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 13:32:41 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:153362478bb06475bede3bd6da2ff08a91dd9fc6f245c70bb5a033b65f38ac14`  
		Last Modified: Wed, 27 Jun 2018 08:58:51 GMT  
		Size: 20.3 MB (20348077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3df18432afbb66c603676db6e777b9e8385de68f08a19d034af0da3a1858e1f7`  
		Last Modified: Wed, 27 Jun 2018 13:35:34 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a80a3007c2c23eea873ed4902940ef771b78a7d742c98741d71b816d77682d9`  
		Last Modified: Wed, 27 Jun 2018 13:35:35 GMT  
		Size: 908.2 KB (908185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cee6c42d10568b09b9ccba8f3ee388963c7a542a16f90900ec7f0314579940d`  
		Last Modified: Wed, 27 Jun 2018 13:35:37 GMT  
		Size: 5.8 MB (5829531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c09b3d6bcb69982bff5f36c22f15942f577adf0640c9a890f6eae5f3451c568`  
		Last Modified: Wed, 27 Jun 2018 13:35:35 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:935519387ace3d78d43ebe372ad9e594ec8b3647bd0a59adce871b802e2b485f`  
		Last Modified: Wed, 27 Jun 2018 13:35:34 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2.12` - linux; 386

```console
$ docker pull redis@sha256:024831bc213e833ebe3b528a42b2c3d612f047628d1c454df6ce79108949b0df
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.7 MB (29714397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd1453467c805ccbf763127a0521862072115a19f7846a3d2a08e7133ed67004`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Jun 2018 10:46:39 GMT
ADD file:e1777a98c0e3aaf9cb1f4116550001b0eed2fe669b2c6449c93b76cccc92e1a2 in / 
# Wed, 27 Jun 2018 10:46:42 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 13:03:38 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 13:03:38 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 13:04:04 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 13:04:05 GMT
ENV REDIS_VERSION=3.2.12
# Wed, 27 Jun 2018 13:04:05 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Wed, 27 Jun 2018 13:04:05 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Wed, 27 Jun 2018 13:04:40 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 13:04:41 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 13:04:41 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 13:04:41 GMT
WORKDIR /data
# Wed, 27 Jun 2018 13:04:42 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 27 Jun 2018 13:04:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 13:04:42 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 13:04:42 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:7de5eb46c52dbee10629f5dc34d9b2445893031ae37083572734bc4f6577757d`  
		Last Modified: Wed, 27 Jun 2018 11:11:02 GMT  
		Size: 23.1 MB (23140103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8df6822d7184835aefd26151cfc1ba536407dc7e8d1f959bc1360b882e7f140`  
		Last Modified: Wed, 27 Jun 2018 13:06:10 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:036521fcd75cdac216f9c6c2c0a4e7c7512653de681714198cfddbf20503ea97`  
		Last Modified: Wed, 27 Jun 2018 13:06:10 GMT  
		Size: 920.3 KB (920308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6bad75267a722ea6c6c910e1551f071d7ce2b45ff6f053eb056d2953a6e6657`  
		Last Modified: Wed, 27 Jun 2018 13:06:12 GMT  
		Size: 5.7 MB (5651753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35db50a350c81e6f351bc2337919b9cb693e6ec49f4f74c822c8da9add00ebf`  
		Last Modified: Wed, 27 Jun 2018 13:06:09 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:865d09184e259597097513a8b33277255afbcd5106a8591c5da13d475b01e949`  
		Last Modified: Wed, 27 Jun 2018 13:06:10 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2.12` - linux; ppc64le

```console
$ docker pull redis@sha256:04441b1fafd9dbaa89cc437a0219fd4ae880359563456fe918f443096fbe7470
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.8 MB (29753519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca8e2908a3aa754cfab006ab97730db1fc18b81af25a47736adac57dfa74f35e`
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
# Tue, 17 Jul 2018 11:15:09 GMT
ENV REDIS_VERSION=3.2.12
# Tue, 17 Jul 2018 11:15:11 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Tue, 17 Jul 2018 11:15:13 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Tue, 17 Jul 2018 11:17:37 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jul 2018 11:17:43 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 17 Jul 2018 11:17:44 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 11:17:45 GMT
WORKDIR /data
# Tue, 17 Jul 2018 11:17:47 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 17 Jul 2018 11:17:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 11:17:51 GMT
EXPOSE 6379/tcp
# Tue, 17 Jul 2018 11:17:53 GMT
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
	-	`sha256:b3df99c1ac69ec71731c6a5161211e5483c8f1b9e1961cac042ed5c14e25153d`  
		Last Modified: Tue, 17 Jul 2018 11:20:03 GMT  
		Size: 6.1 MB (6100924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f0d259a16256f7b4733124a77f32bc7f0151d4bea4c5a689951eff764a2437e`  
		Last Modified: Tue, 17 Jul 2018 11:20:00 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9e529ffdb4d532d12852b348d2daf5061da8c69da256bc2582b9ea82d5818f7`  
		Last Modified: Tue, 17 Jul 2018 11:19:59 GMT  
		Size: 405.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2.12` - linux; s390x

```console
$ docker pull redis@sha256:f8352b63f70b541d990517ba58879d6cbc38384ccf3b298c152843358321c40c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.5 MB (29509493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab71a81ce46ad1f6fd6caaad34f5b42ef7678e3e2b0263c3ea3bbbfd4692f9d7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Jun 2018 11:48:52 GMT
ADD file:30e8aac3f01e5ddc9493a0fac1c0978b9435ab33031d2af05afca0f9cb7eb71f in / 
# Wed, 27 Jun 2018 11:48:52 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 13:46:24 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 13:46:24 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 13:46:39 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 13:46:39 GMT
ENV REDIS_VERSION=3.2.12
# Wed, 27 Jun 2018 13:46:39 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Wed, 27 Jun 2018 13:46:39 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Wed, 27 Jun 2018 13:47:14 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 13:47:14 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 13:47:15 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 13:47:15 GMT
WORKDIR /data
# Wed, 27 Jun 2018 13:47:15 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 27 Jun 2018 13:47:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 13:47:15 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 13:47:16 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:1c23a44ac305da2d34995cf30530ba5adce0229e4a70678fd4d25384883b1281`  
		Last Modified: Wed, 27 Jun 2018 11:53:41 GMT  
		Size: 22.3 MB (22349871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f450656bdbcbfdc1614dfb82ca8dc61d74ac31bd1698136f082a3f2e49795a`  
		Last Modified: Wed, 27 Jun 2018 13:48:34 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb0e27db9314b93a9ac2f160f4fc84e2fac43e079e197b9721c03d11c645b235`  
		Last Modified: Wed, 27 Jun 2018 13:48:34 GMT  
		Size: 926.8 KB (926820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69a1c634077b9f1b92a4db026063755084ac2b5b5c7d9fcd97eeebe8e27c31af`  
		Last Modified: Wed, 27 Jun 2018 13:48:36 GMT  
		Size: 6.2 MB (6230560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcacad83f7bf2ea656bdab0dbbd848b8e2a934436e3e207493ab7cbee60c1b12`  
		Last Modified: Wed, 27 Jun 2018 13:48:34 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1d68f3fad8fe9da0ae4293ab87a7f6a1488c7d0360f104ed3fa3b4d9507a909`  
		Last Modified: Wed, 27 Jun 2018 13:48:34 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2.12-32bit`

```console
$ docker pull redis@sha256:93edc9db0f556427241131b726e5036f56f38a4ecbf4d75eedc3e43faeb1bd17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:3.2.12-32bit` - linux; amd64

```console
$ docker pull redis@sha256:59232cf728999da6923494add956ff7cd1604e285208f46a6e53b9fed8c27485
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.9 MB (33934417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9246389e2135364a728c6051d43c967982b00591e3fec31a2d6601caaba606f7`
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
# Tue, 17 Jul 2018 07:29:13 GMT
ENV REDIS_VERSION=3.2.12
# Tue, 17 Jul 2018 07:29:13 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Tue, 17 Jul 2018 07:29:13 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Tue, 17 Jul 2018 07:30:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 07:31:29 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jul 2018 07:31:29 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 17 Jul 2018 07:31:30 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 07:31:30 GMT
WORKDIR /data
# Tue, 17 Jul 2018 07:31:30 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 17 Jul 2018 07:31:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 07:31:31 GMT
EXPOSE 6379/tcp
# Tue, 17 Jul 2018 07:31:43 GMT
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
	-	`sha256:7c8922156e4bc88244284bc27692e590f01c4055cb9ae143c4ed08ea3ec496c1`  
		Last Modified: Tue, 17 Jul 2018 07:38:13 GMT  
		Size: 4.8 MB (4848273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:632c0c76038cf0a19b8294ff5d8e871e6178f01e803e15aa0a3ce069d39957c4`  
		Last Modified: Tue, 17 Jul 2018 07:38:14 GMT  
		Size: 5.7 MB (5656718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb48d037430b8823632ac41f129b1dfb133b2ded3e03baf2aaef9e647f68ab9e`  
		Last Modified: Tue, 17 Jul 2018 07:38:11 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbdef8bc2d8c6addd1eed98102bb4c975ed3e02150c82f5f550383cc1890d6dc`  
		Last Modified: Tue, 17 Jul 2018 07:38:12 GMT  
		Size: 407.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2.12-alpine`

```console
$ docker pull redis@sha256:ee083083cd3d94578f8622007f95b7733e6332cc7342ba008175f536547b50c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redis:3.2.12-alpine` - linux; amd64

```console
$ docker pull redis@sha256:bb842cf7ef67a256fe05c91a875cd905370a825fd5b2d940c96286f2a890e242
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.0 MB (8996066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e34cb61ff391a7bbab89c5c1c7f2d50eab3a8e994d608fb952743c359670ffb5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 00:55:42 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 11 Jul 2018 00:55:43 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 11 Jul 2018 00:57:37 GMT
ENV REDIS_VERSION=3.2.12
# Wed, 11 Jul 2018 00:57:37 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Wed, 11 Jul 2018 00:57:37 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Wed, 11 Jul 2018 00:58:00 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 11 Jul 2018 00:58:01 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 11 Jul 2018 00:58:01 GMT
VOLUME [/data]
# Wed, 11 Jul 2018 00:58:01 GMT
WORKDIR /data
# Wed, 11 Jul 2018 00:58:02 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 11 Jul 2018 00:58:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jul 2018 00:58:02 GMT
EXPOSE 6379/tcp
# Wed, 11 Jul 2018 00:58:02 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f20bd2a5c234ffab42de6cbf83522946614b21b642a8208dca6b0fd614c31db`  
		Last Modified: Wed, 11 Jul 2018 00:58:27 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:782ff7702b5cd0a7c0109740838c74945fc27e4ce34e1028c24bf73f8249a63a`  
		Last Modified: Wed, 11 Jul 2018 00:58:27 GMT  
		Size: 9.1 KB (9071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d03f752c1710ba967ef45c342d10e93296b7f7deeaaecbc03d113471c8aad5d1`  
		Last Modified: Wed, 11 Jul 2018 01:00:19 GMT  
		Size: 6.8 MB (6778706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac33be878457d581f0ca17ae1567978c5d2abbeb905ea0cd53d2f231d9d9c278`  
		Last Modified: Wed, 11 Jul 2018 01:00:16 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43985ce9b410eb3f50e91a36e55ae036a34dde330afe76e984841ca388878d3b`  
		Last Modified: Wed, 11 Jul 2018 01:00:17 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2.12-alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:ca7cb35a67f5d11664f547c407b0038ecfe0da77defc61f546d98ff665053a1c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8666880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8bc16a92e2371ab9412de289eb6bfe79042aff1a3e92d03cbb1bb85384627cf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 06 Jul 2018 07:53:29 GMT
ADD file:122e3422d9afa971806601812374fdd9d00c8edc8e9a6df7256e2caa85fab6d1 in / 
# Fri, 06 Jul 2018 07:53:30 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 07:53:30 GMT
CMD ["/bin/sh"]
# Sat, 14 Jul 2018 11:45:22 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 14 Jul 2018 11:45:27 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 14 Jul 2018 11:53:59 GMT
ENV REDIS_VERSION=3.2.12
# Sat, 14 Jul 2018 11:53:59 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Sat, 14 Jul 2018 11:54:00 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Sat, 14 Jul 2018 11:58:56 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 14 Jul 2018 11:59:00 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 14 Jul 2018 11:59:00 GMT
VOLUME [/data]
# Sat, 14 Jul 2018 11:59:01 GMT
WORKDIR /data
# Sat, 14 Jul 2018 11:59:02 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 14 Jul 2018 11:59:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 14 Jul 2018 11:59:04 GMT
EXPOSE 6379/tcp
# Sat, 14 Jul 2018 11:59:04 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:ee7d700abbf209aa401ef5d53f86af298a25e8154b3259036e9307d08f255c5d`  
		Last Modified: Fri, 06 Jul 2018 07:53:45 GMT  
		Size: 2.1 MB (2145998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1653f4692c1ccea69cd46121d4f1371957f66e97a20141371dd4da10ebaec19`  
		Last Modified: Fri, 06 Jul 2018 07:53:45 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:227a96f1d31d3ceb90336a4a116e3e60b3a1fea72ae1f065e88a6d43417674ff`  
		Last Modified: Sat, 14 Jul 2018 11:59:20 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:407d2c8c18404f038c5326de3eadc14240dea0b342a6237b037d457e4d381d2b`  
		Last Modified: Sat, 14 Jul 2018 11:59:20 GMT  
		Size: 9.0 KB (8980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:855b100e4d366cb8e1955e94d5e66a99624f618a5f20cace6c219cfe8c52e707`  
		Last Modified: Sat, 14 Jul 2018 12:00:40 GMT  
		Size: 6.5 MB (6509912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5981dab4599291f2c419cfb7902f27591cd47ea1638092f18481de961f7d4a1`  
		Last Modified: Sat, 14 Jul 2018 12:00:32 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cf3483214a6b2ad454cddcd2c45a9efd5c00fd9f60f5d410a79fe6d5c7e1f9c`  
		Last Modified: Sat, 14 Jul 2018 12:00:34 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2.12-alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:f8d873e3f893bbd611e7238dcc4bf989352d99787003a2c9f06b6b5cfed931f8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8701634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd7d3d33ab85dec4f3bf8aa68ef5202c5d52f377766ce72a04012790ee7e3376`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 06 Jul 2018 08:41:03 GMT
ADD file:199a5a48bddabaf1f649f58f3b17c323a1aa1a50e939dfdea3542e4041e91b7b in / 
# Fri, 06 Jul 2018 08:41:03 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:41:04 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 09:37:50 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 11 Jul 2018 09:37:52 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 11 Jul 2018 09:41:15 GMT
ENV REDIS_VERSION=3.2.12
# Wed, 11 Jul 2018 09:41:16 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Wed, 11 Jul 2018 09:41:17 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Wed, 11 Jul 2018 09:41:55 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 11 Jul 2018 09:41:58 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 11 Jul 2018 09:41:59 GMT
VOLUME [/data]
# Wed, 11 Jul 2018 09:42:00 GMT
WORKDIR /data
# Wed, 11 Jul 2018 09:42:01 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 11 Jul 2018 09:42:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jul 2018 09:42:03 GMT
EXPOSE 6379/tcp
# Wed, 11 Jul 2018 09:42:04 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:47e04371c99027fae42871b720fdc6cdddcb65062bfa05f0c3bb0a594cb5bbbd`  
		Last Modified: Wed, 27 Jun 2018 19:15:35 GMT  
		Size: 2.1 MB (2099514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4103359e1ecd9a7253d8b8a041d4e81db1ff4a5e1950bc0e02305d221c9e6c2`  
		Last Modified: Fri, 06 Jul 2018 08:42:09 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9721f4fc0d2aca17304d7c1cbef676a8fa7d41c3f0c7201b22d695ff41dfc625`  
		Last Modified: Wed, 11 Jul 2018 09:42:31 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43bc6ac33e9f951cbb1f9ca722ba63c430fa5b2a12e0a46efe7f1e5e15920b16`  
		Last Modified: Wed, 11 Jul 2018 09:42:31 GMT  
		Size: 8.9 KB (8932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5679d3bd67739719ddee8974785362aa7ab79baaf548ab9e4351e40977dd8daa`  
		Last Modified: Wed, 11 Jul 2018 09:44:07 GMT  
		Size: 6.6 MB (6591264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47fc82221c422a3e266eb176391f3976b81cc1acc2641eb427b2d5bff136ae21`  
		Last Modified: Wed, 11 Jul 2018 09:44:04 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78403f2cd0ea67443113cd867d0bcd1a3b213b4d04d83a9376d6fd76397722c1`  
		Last Modified: Wed, 11 Jul 2018 09:44:04 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2.12-alpine` - linux; 386

```console
$ docker pull redis@sha256:a654da7b756b985e1d91701c7d287460499a2e28ebbc4e20bfbde046b660bc1c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8729043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e80b9bd40457622a9d66e1753fae0a9a4e43b1b3fe2f2843588394068f806c8c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 06 Jul 2018 15:02:06 GMT
ADD file:ebd40cda2f6087daf4d14e6dc1ee0b4a0fb5dc96c70129be8e07de0e5c628312 in / 
# Fri, 06 Jul 2018 15:02:07 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 15:02:07 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 10:59:08 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 11 Jul 2018 10:59:09 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 11 Jul 2018 11:01:11 GMT
ENV REDIS_VERSION=3.2.12
# Wed, 11 Jul 2018 11:01:11 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Wed, 11 Jul 2018 11:01:12 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Wed, 11 Jul 2018 11:01:34 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 11 Jul 2018 11:01:35 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 11 Jul 2018 11:01:35 GMT
VOLUME [/data]
# Wed, 11 Jul 2018 11:01:35 GMT
WORKDIR /data
# Wed, 11 Jul 2018 11:01:36 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 11 Jul 2018 11:01:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jul 2018 11:01:36 GMT
EXPOSE 6379/tcp
# Wed, 11 Jul 2018 11:01:36 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:ef15772113129a5330876ce10683bbf6509a4c4c99b3a99894dcbc7560975052`  
		Last Modified: Fri, 06 Jul 2018 15:02:46 GMT  
		Size: 2.3 MB (2270920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6df692b84cf35e6038d677f9ab7de2a3c671c57671043da1d20d99252e0d9c42`  
		Last Modified: Fri, 06 Jul 2018 15:02:43 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92b65fcd46a9888f65f4ba2dd7149e5d5433d9f8ee6d831c0178337fafcd6174`  
		Last Modified: Wed, 11 Jul 2018 11:01:57 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7c395347e9dff1709fe37c615afc2c9a112317d08e5af3e244a49c6d041528a`  
		Last Modified: Wed, 11 Jul 2018 11:01:57 GMT  
		Size: 9.1 KB (9124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f2548a683e8e5f102fdb0fe0249bde77094922e687f6cc7c06cd6e9456bc692`  
		Last Modified: Wed, 11 Jul 2018 11:03:21 GMT  
		Size: 6.4 MB (6447076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d503d58980366e7eb751d9659b20feee8e5481ef927b53dc19de3cfc637facd`  
		Last Modified: Wed, 11 Jul 2018 11:03:19 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d02c12ac8f04e6497fefe417989d83271569db213c648732f1ef0922f3fb554`  
		Last Modified: Wed, 11 Jul 2018 11:03:20 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2.12-alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:18a6ffa86bae2dded06e4508ef34d949eba13e78b1225359191ecc347944b254
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 MB (9053143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f38497d473cfdf6866ae5d18885f7fa078ae2b33018da76a15b5dde0d69d238e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 06 Jul 2018 08:18:09 GMT
ADD file:4ff20d593b16518d45b1b1d6efdab141199316dba7a53ce7459249f5de690dfd in / 
# Fri, 06 Jul 2018 08:18:10 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:18:11 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 10:29:07 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 11 Jul 2018 10:29:10 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 11 Jul 2018 10:32:19 GMT
ENV REDIS_VERSION=3.2.12
# Wed, 11 Jul 2018 10:32:20 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Wed, 11 Jul 2018 10:32:21 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Wed, 11 Jul 2018 10:32:47 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 11 Jul 2018 10:32:50 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 11 Jul 2018 10:32:53 GMT
VOLUME [/data]
# Wed, 11 Jul 2018 10:32:55 GMT
WORKDIR /data
# Wed, 11 Jul 2018 10:32:57 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 11 Jul 2018 10:33:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jul 2018 10:33:07 GMT
EXPOSE 6379/tcp
# Wed, 11 Jul 2018 10:33:16 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e642bcb5b1890a07dd2fc8be2bc35edf5e2b651d4993e71caef03b4b43ace970`  
		Last Modified: Fri, 06 Jul 2018 08:18:44 GMT  
		Size: 2.2 MB (2194861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e09410b1fce4c4630b3bc57c6ee158ee9821ec415d0acaa1607b9e0bcf76d91`  
		Last Modified: Fri, 06 Jul 2018 08:18:43 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0ff6034eb412b571271c235e27e06653a8c858164a627463f13b8ab52c74843`  
		Last Modified: Wed, 11 Jul 2018 10:34:00 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb36900be1e1e93c13e63a61812c55e9d7ac5ecdb09877b280822361acc94394`  
		Last Modified: Wed, 11 Jul 2018 10:33:59 GMT  
		Size: 9.5 KB (9509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30af3f8532c699ae1adc8f409a8e929e7c8fc8798556a39968543b11c40b15a4`  
		Last Modified: Wed, 11 Jul 2018 10:35:18 GMT  
		Size: 6.8 MB (6846781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c275977685d1ed24f29dc13ce77b515c12b6e7df32382873d5613123af1f4e7`  
		Last Modified: Wed, 11 Jul 2018 10:35:15 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:187a61a7d37b3be7c606f739e61a7ce527bcae598398e6de5559c903946dbd0b`  
		Last Modified: Wed, 11 Jul 2018 10:35:15 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2.12-alpine` - linux; s390x

```console
$ docker pull redis@sha256:71ac50548653d0b95b01809eabe69f21a6e0a13cc1e0aa4e105bac13e9598b05
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 MB (9166301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:906b5b8f694938fb06175f3e618c682d2847c6c1959ae03718a6da9ac4d49942`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 06 Jul 2018 11:41:42 GMT
ADD file:376dd7fc34ad39570d2e20f3704305e788ae613c589445b3e8fb880147c3eb59 in / 
# Fri, 06 Jul 2018 11:41:43 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 11:41:43 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 11:55:18 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 11 Jul 2018 11:55:19 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 11 Jul 2018 11:56:49 GMT
ENV REDIS_VERSION=3.2.12
# Wed, 11 Jul 2018 11:56:49 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Wed, 11 Jul 2018 11:56:50 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Wed, 11 Jul 2018 11:57:18 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 11 Jul 2018 11:57:18 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 11 Jul 2018 11:57:19 GMT
VOLUME [/data]
# Wed, 11 Jul 2018 11:57:19 GMT
WORKDIR /data
# Wed, 11 Jul 2018 11:57:19 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 11 Jul 2018 11:57:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jul 2018 11:57:19 GMT
EXPOSE 6379/tcp
# Wed, 11 Jul 2018 11:57:20 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:cdf21ace94188d512903eea53ea8559677e0e6ffd5d6a180a1d88c118abc96fc`  
		Last Modified: Fri, 06 Jul 2018 11:42:01 GMT  
		Size: 2.3 MB (2307471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea178433f2f09080fbbf77f09da1b16d588b7ced380d495a2f2ad00d28468338`  
		Last Modified: Fri, 06 Jul 2018 11:42:00 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2a9a36327b56f40ee16a7f6340b3f9e353f4d78c49c98c9b07dadba1340578a`  
		Last Modified: Wed, 11 Jul 2018 11:57:31 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ea5a4d7de8ea3dca3ad24e1379981de341f538e7f33e134951cce1e00c54030`  
		Last Modified: Wed, 11 Jul 2018 11:57:31 GMT  
		Size: 9.2 KB (9239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e9301c3f8936b44af06f6548c774019954e7f9f0618d9ba83f1073bc6a8e7bf`  
		Last Modified: Wed, 11 Jul 2018 11:58:03 GMT  
		Size: 6.8 MB (6847667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1850e270e03552e28004e6b1f372f94ef738718119cb3316f04543098c6af534`  
		Last Modified: Wed, 11 Jul 2018 11:58:02 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6beab725fb4d15a37ec22f27c8d6d3cc9c8540d858045d7ff9321ed047a02034`  
		Last Modified: Wed, 11 Jul 2018 11:58:02 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2-32bit`

```console
$ docker pull redis@sha256:93edc9db0f556427241131b726e5036f56f38a4ecbf4d75eedc3e43faeb1bd17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:3.2-32bit` - linux; amd64

```console
$ docker pull redis@sha256:59232cf728999da6923494add956ff7cd1604e285208f46a6e53b9fed8c27485
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.9 MB (33934417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9246389e2135364a728c6051d43c967982b00591e3fec31a2d6601caaba606f7`
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
# Tue, 17 Jul 2018 07:29:13 GMT
ENV REDIS_VERSION=3.2.12
# Tue, 17 Jul 2018 07:29:13 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Tue, 17 Jul 2018 07:29:13 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Tue, 17 Jul 2018 07:30:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 07:31:29 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jul 2018 07:31:29 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 17 Jul 2018 07:31:30 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 07:31:30 GMT
WORKDIR /data
# Tue, 17 Jul 2018 07:31:30 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 17 Jul 2018 07:31:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 07:31:31 GMT
EXPOSE 6379/tcp
# Tue, 17 Jul 2018 07:31:43 GMT
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
	-	`sha256:7c8922156e4bc88244284bc27692e590f01c4055cb9ae143c4ed08ea3ec496c1`  
		Last Modified: Tue, 17 Jul 2018 07:38:13 GMT  
		Size: 4.8 MB (4848273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:632c0c76038cf0a19b8294ff5d8e871e6178f01e803e15aa0a3ce069d39957c4`  
		Last Modified: Tue, 17 Jul 2018 07:38:14 GMT  
		Size: 5.7 MB (5656718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb48d037430b8823632ac41f129b1dfb133b2ded3e03baf2aaef9e647f68ab9e`  
		Last Modified: Tue, 17 Jul 2018 07:38:11 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbdef8bc2d8c6addd1eed98102bb4c975ed3e02150c82f5f550383cc1890d6dc`  
		Last Modified: Tue, 17 Jul 2018 07:38:12 GMT  
		Size: 407.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2-alpine`

```console
$ docker pull redis@sha256:ee083083cd3d94578f8622007f95b7733e6332cc7342ba008175f536547b50c6
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
$ docker pull redis@sha256:bb842cf7ef67a256fe05c91a875cd905370a825fd5b2d940c96286f2a890e242
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.0 MB (8996066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e34cb61ff391a7bbab89c5c1c7f2d50eab3a8e994d608fb952743c359670ffb5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 00:55:42 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 11 Jul 2018 00:55:43 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 11 Jul 2018 00:57:37 GMT
ENV REDIS_VERSION=3.2.12
# Wed, 11 Jul 2018 00:57:37 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Wed, 11 Jul 2018 00:57:37 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Wed, 11 Jul 2018 00:58:00 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 11 Jul 2018 00:58:01 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 11 Jul 2018 00:58:01 GMT
VOLUME [/data]
# Wed, 11 Jul 2018 00:58:01 GMT
WORKDIR /data
# Wed, 11 Jul 2018 00:58:02 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 11 Jul 2018 00:58:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jul 2018 00:58:02 GMT
EXPOSE 6379/tcp
# Wed, 11 Jul 2018 00:58:02 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f20bd2a5c234ffab42de6cbf83522946614b21b642a8208dca6b0fd614c31db`  
		Last Modified: Wed, 11 Jul 2018 00:58:27 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:782ff7702b5cd0a7c0109740838c74945fc27e4ce34e1028c24bf73f8249a63a`  
		Last Modified: Wed, 11 Jul 2018 00:58:27 GMT  
		Size: 9.1 KB (9071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d03f752c1710ba967ef45c342d10e93296b7f7deeaaecbc03d113471c8aad5d1`  
		Last Modified: Wed, 11 Jul 2018 01:00:19 GMT  
		Size: 6.8 MB (6778706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac33be878457d581f0ca17ae1567978c5d2abbeb905ea0cd53d2f231d9d9c278`  
		Last Modified: Wed, 11 Jul 2018 01:00:16 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43985ce9b410eb3f50e91a36e55ae036a34dde330afe76e984841ca388878d3b`  
		Last Modified: Wed, 11 Jul 2018 01:00:17 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2-alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:ca7cb35a67f5d11664f547c407b0038ecfe0da77defc61f546d98ff665053a1c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8666880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8bc16a92e2371ab9412de289eb6bfe79042aff1a3e92d03cbb1bb85384627cf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 06 Jul 2018 07:53:29 GMT
ADD file:122e3422d9afa971806601812374fdd9d00c8edc8e9a6df7256e2caa85fab6d1 in / 
# Fri, 06 Jul 2018 07:53:30 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 07:53:30 GMT
CMD ["/bin/sh"]
# Sat, 14 Jul 2018 11:45:22 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 14 Jul 2018 11:45:27 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 14 Jul 2018 11:53:59 GMT
ENV REDIS_VERSION=3.2.12
# Sat, 14 Jul 2018 11:53:59 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Sat, 14 Jul 2018 11:54:00 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Sat, 14 Jul 2018 11:58:56 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 14 Jul 2018 11:59:00 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 14 Jul 2018 11:59:00 GMT
VOLUME [/data]
# Sat, 14 Jul 2018 11:59:01 GMT
WORKDIR /data
# Sat, 14 Jul 2018 11:59:02 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 14 Jul 2018 11:59:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 14 Jul 2018 11:59:04 GMT
EXPOSE 6379/tcp
# Sat, 14 Jul 2018 11:59:04 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:ee7d700abbf209aa401ef5d53f86af298a25e8154b3259036e9307d08f255c5d`  
		Last Modified: Fri, 06 Jul 2018 07:53:45 GMT  
		Size: 2.1 MB (2145998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1653f4692c1ccea69cd46121d4f1371957f66e97a20141371dd4da10ebaec19`  
		Last Modified: Fri, 06 Jul 2018 07:53:45 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:227a96f1d31d3ceb90336a4a116e3e60b3a1fea72ae1f065e88a6d43417674ff`  
		Last Modified: Sat, 14 Jul 2018 11:59:20 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:407d2c8c18404f038c5326de3eadc14240dea0b342a6237b037d457e4d381d2b`  
		Last Modified: Sat, 14 Jul 2018 11:59:20 GMT  
		Size: 9.0 KB (8980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:855b100e4d366cb8e1955e94d5e66a99624f618a5f20cace6c219cfe8c52e707`  
		Last Modified: Sat, 14 Jul 2018 12:00:40 GMT  
		Size: 6.5 MB (6509912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5981dab4599291f2c419cfb7902f27591cd47ea1638092f18481de961f7d4a1`  
		Last Modified: Sat, 14 Jul 2018 12:00:32 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cf3483214a6b2ad454cddcd2c45a9efd5c00fd9f60f5d410a79fe6d5c7e1f9c`  
		Last Modified: Sat, 14 Jul 2018 12:00:34 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2-alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:f8d873e3f893bbd611e7238dcc4bf989352d99787003a2c9f06b6b5cfed931f8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8701634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd7d3d33ab85dec4f3bf8aa68ef5202c5d52f377766ce72a04012790ee7e3376`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 06 Jul 2018 08:41:03 GMT
ADD file:199a5a48bddabaf1f649f58f3b17c323a1aa1a50e939dfdea3542e4041e91b7b in / 
# Fri, 06 Jul 2018 08:41:03 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:41:04 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 09:37:50 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 11 Jul 2018 09:37:52 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 11 Jul 2018 09:41:15 GMT
ENV REDIS_VERSION=3.2.12
# Wed, 11 Jul 2018 09:41:16 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Wed, 11 Jul 2018 09:41:17 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Wed, 11 Jul 2018 09:41:55 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 11 Jul 2018 09:41:58 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 11 Jul 2018 09:41:59 GMT
VOLUME [/data]
# Wed, 11 Jul 2018 09:42:00 GMT
WORKDIR /data
# Wed, 11 Jul 2018 09:42:01 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 11 Jul 2018 09:42:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jul 2018 09:42:03 GMT
EXPOSE 6379/tcp
# Wed, 11 Jul 2018 09:42:04 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:47e04371c99027fae42871b720fdc6cdddcb65062bfa05f0c3bb0a594cb5bbbd`  
		Last Modified: Wed, 27 Jun 2018 19:15:35 GMT  
		Size: 2.1 MB (2099514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4103359e1ecd9a7253d8b8a041d4e81db1ff4a5e1950bc0e02305d221c9e6c2`  
		Last Modified: Fri, 06 Jul 2018 08:42:09 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9721f4fc0d2aca17304d7c1cbef676a8fa7d41c3f0c7201b22d695ff41dfc625`  
		Last Modified: Wed, 11 Jul 2018 09:42:31 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43bc6ac33e9f951cbb1f9ca722ba63c430fa5b2a12e0a46efe7f1e5e15920b16`  
		Last Modified: Wed, 11 Jul 2018 09:42:31 GMT  
		Size: 8.9 KB (8932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5679d3bd67739719ddee8974785362aa7ab79baaf548ab9e4351e40977dd8daa`  
		Last Modified: Wed, 11 Jul 2018 09:44:07 GMT  
		Size: 6.6 MB (6591264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47fc82221c422a3e266eb176391f3976b81cc1acc2641eb427b2d5bff136ae21`  
		Last Modified: Wed, 11 Jul 2018 09:44:04 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78403f2cd0ea67443113cd867d0bcd1a3b213b4d04d83a9376d6fd76397722c1`  
		Last Modified: Wed, 11 Jul 2018 09:44:04 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2-alpine` - linux; 386

```console
$ docker pull redis@sha256:a654da7b756b985e1d91701c7d287460499a2e28ebbc4e20bfbde046b660bc1c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8729043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e80b9bd40457622a9d66e1753fae0a9a4e43b1b3fe2f2843588394068f806c8c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 06 Jul 2018 15:02:06 GMT
ADD file:ebd40cda2f6087daf4d14e6dc1ee0b4a0fb5dc96c70129be8e07de0e5c628312 in / 
# Fri, 06 Jul 2018 15:02:07 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 15:02:07 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 10:59:08 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 11 Jul 2018 10:59:09 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 11 Jul 2018 11:01:11 GMT
ENV REDIS_VERSION=3.2.12
# Wed, 11 Jul 2018 11:01:11 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Wed, 11 Jul 2018 11:01:12 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Wed, 11 Jul 2018 11:01:34 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 11 Jul 2018 11:01:35 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 11 Jul 2018 11:01:35 GMT
VOLUME [/data]
# Wed, 11 Jul 2018 11:01:35 GMT
WORKDIR /data
# Wed, 11 Jul 2018 11:01:36 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 11 Jul 2018 11:01:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jul 2018 11:01:36 GMT
EXPOSE 6379/tcp
# Wed, 11 Jul 2018 11:01:36 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:ef15772113129a5330876ce10683bbf6509a4c4c99b3a99894dcbc7560975052`  
		Last Modified: Fri, 06 Jul 2018 15:02:46 GMT  
		Size: 2.3 MB (2270920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6df692b84cf35e6038d677f9ab7de2a3c671c57671043da1d20d99252e0d9c42`  
		Last Modified: Fri, 06 Jul 2018 15:02:43 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92b65fcd46a9888f65f4ba2dd7149e5d5433d9f8ee6d831c0178337fafcd6174`  
		Last Modified: Wed, 11 Jul 2018 11:01:57 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7c395347e9dff1709fe37c615afc2c9a112317d08e5af3e244a49c6d041528a`  
		Last Modified: Wed, 11 Jul 2018 11:01:57 GMT  
		Size: 9.1 KB (9124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f2548a683e8e5f102fdb0fe0249bde77094922e687f6cc7c06cd6e9456bc692`  
		Last Modified: Wed, 11 Jul 2018 11:03:21 GMT  
		Size: 6.4 MB (6447076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d503d58980366e7eb751d9659b20feee8e5481ef927b53dc19de3cfc637facd`  
		Last Modified: Wed, 11 Jul 2018 11:03:19 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d02c12ac8f04e6497fefe417989d83271569db213c648732f1ef0922f3fb554`  
		Last Modified: Wed, 11 Jul 2018 11:03:20 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2-alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:18a6ffa86bae2dded06e4508ef34d949eba13e78b1225359191ecc347944b254
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 MB (9053143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f38497d473cfdf6866ae5d18885f7fa078ae2b33018da76a15b5dde0d69d238e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 06 Jul 2018 08:18:09 GMT
ADD file:4ff20d593b16518d45b1b1d6efdab141199316dba7a53ce7459249f5de690dfd in / 
# Fri, 06 Jul 2018 08:18:10 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:18:11 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 10:29:07 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 11 Jul 2018 10:29:10 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 11 Jul 2018 10:32:19 GMT
ENV REDIS_VERSION=3.2.12
# Wed, 11 Jul 2018 10:32:20 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Wed, 11 Jul 2018 10:32:21 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Wed, 11 Jul 2018 10:32:47 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 11 Jul 2018 10:32:50 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 11 Jul 2018 10:32:53 GMT
VOLUME [/data]
# Wed, 11 Jul 2018 10:32:55 GMT
WORKDIR /data
# Wed, 11 Jul 2018 10:32:57 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 11 Jul 2018 10:33:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jul 2018 10:33:07 GMT
EXPOSE 6379/tcp
# Wed, 11 Jul 2018 10:33:16 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e642bcb5b1890a07dd2fc8be2bc35edf5e2b651d4993e71caef03b4b43ace970`  
		Last Modified: Fri, 06 Jul 2018 08:18:44 GMT  
		Size: 2.2 MB (2194861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e09410b1fce4c4630b3bc57c6ee158ee9821ec415d0acaa1607b9e0bcf76d91`  
		Last Modified: Fri, 06 Jul 2018 08:18:43 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0ff6034eb412b571271c235e27e06653a8c858164a627463f13b8ab52c74843`  
		Last Modified: Wed, 11 Jul 2018 10:34:00 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb36900be1e1e93c13e63a61812c55e9d7ac5ecdb09877b280822361acc94394`  
		Last Modified: Wed, 11 Jul 2018 10:33:59 GMT  
		Size: 9.5 KB (9509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30af3f8532c699ae1adc8f409a8e929e7c8fc8798556a39968543b11c40b15a4`  
		Last Modified: Wed, 11 Jul 2018 10:35:18 GMT  
		Size: 6.8 MB (6846781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c275977685d1ed24f29dc13ce77b515c12b6e7df32382873d5613123af1f4e7`  
		Last Modified: Wed, 11 Jul 2018 10:35:15 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:187a61a7d37b3be7c606f739e61a7ce527bcae598398e6de5559c903946dbd0b`  
		Last Modified: Wed, 11 Jul 2018 10:35:15 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2-alpine` - linux; s390x

```console
$ docker pull redis@sha256:71ac50548653d0b95b01809eabe69f21a6e0a13cc1e0aa4e105bac13e9598b05
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 MB (9166301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:906b5b8f694938fb06175f3e618c682d2847c6c1959ae03718a6da9ac4d49942`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 06 Jul 2018 11:41:42 GMT
ADD file:376dd7fc34ad39570d2e20f3704305e788ae613c589445b3e8fb880147c3eb59 in / 
# Fri, 06 Jul 2018 11:41:43 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 11:41:43 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 11:55:18 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 11 Jul 2018 11:55:19 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 11 Jul 2018 11:56:49 GMT
ENV REDIS_VERSION=3.2.12
# Wed, 11 Jul 2018 11:56:49 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Wed, 11 Jul 2018 11:56:50 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Wed, 11 Jul 2018 11:57:18 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 11 Jul 2018 11:57:18 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 11 Jul 2018 11:57:19 GMT
VOLUME [/data]
# Wed, 11 Jul 2018 11:57:19 GMT
WORKDIR /data
# Wed, 11 Jul 2018 11:57:19 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 11 Jul 2018 11:57:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jul 2018 11:57:19 GMT
EXPOSE 6379/tcp
# Wed, 11 Jul 2018 11:57:20 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:cdf21ace94188d512903eea53ea8559677e0e6ffd5d6a180a1d88c118abc96fc`  
		Last Modified: Fri, 06 Jul 2018 11:42:01 GMT  
		Size: 2.3 MB (2307471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea178433f2f09080fbbf77f09da1b16d588b7ced380d495a2f2ad00d28468338`  
		Last Modified: Fri, 06 Jul 2018 11:42:00 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2a9a36327b56f40ee16a7f6340b3f9e353f4d78c49c98c9b07dadba1340578a`  
		Last Modified: Wed, 11 Jul 2018 11:57:31 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ea5a4d7de8ea3dca3ad24e1379981de341f538e7f33e134951cce1e00c54030`  
		Last Modified: Wed, 11 Jul 2018 11:57:31 GMT  
		Size: 9.2 KB (9239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e9301c3f8936b44af06f6548c774019954e7f9f0618d9ba83f1073bc6a8e7bf`  
		Last Modified: Wed, 11 Jul 2018 11:58:03 GMT  
		Size: 6.8 MB (6847667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1850e270e03552e28004e6b1f372f94ef738718119cb3316f04543098c6af534`  
		Last Modified: Wed, 11 Jul 2018 11:58:02 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6beab725fb4d15a37ec22f27c8d6d3cc9c8540d858045d7ff9321ed047a02034`  
		Last Modified: Wed, 11 Jul 2018 11:58:02 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:32bit`

```console
$ docker pull redis@sha256:33a9c9646770e345e955213d734b82181e58fcdaead0cafb2d77b3c496897abc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:32bit` - linux; amd64

```console
$ docker pull redis@sha256:8a6ce7cb37cdc1bc285dca107456ce58bca4a74557b59a033a59f175c2299eea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.5 MB (36529016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f90a1c235eeb0233a7774936073d32546f79c58f643e8875b05c5604a3a1af0`
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
# Tue, 17 Jul 2018 07:26:26 GMT
ENV REDIS_VERSION=4.0.10
# Tue, 17 Jul 2018 07:26:27 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Tue, 17 Jul 2018 07:26:27 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Tue, 17 Jul 2018 07:27:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 07:28:32 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jul 2018 07:28:44 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 17 Jul 2018 07:28:44 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 07:28:45 GMT
WORKDIR /data
# Tue, 17 Jul 2018 07:28:45 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 17 Jul 2018 07:28:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 07:28:45 GMT
EXPOSE 6379/tcp
# Tue, 17 Jul 2018 07:28:46 GMT
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
	-	`sha256:9e0fd4549c4d0596d0d5e9344b2c6ffa10ee19aa426dc62851d4d3233269eb7b`  
		Last Modified: Tue, 17 Jul 2018 07:35:24 GMT  
		Size: 4.8 MB (4848259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9117524dfd4bbd0a7c3d295d24b82a57478db30d0def5e1a137280a450f4af7`  
		Last Modified: Tue, 17 Jul 2018 07:35:26 GMT  
		Size: 8.3 MB (8251329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67ab96d34d5ff84919b98ee9f3c1d992b9ba850b850f9a9004f44ea3fd06df49`  
		Last Modified: Tue, 17 Jul 2018 07:35:23 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc87c6ff97a9637489a374d852bd97e4cf87fb1dc77bdc108970da4bd34362b6`  
		Last Modified: Tue, 17 Jul 2018 07:35:23 GMT  
		Size: 409.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3-32bit`

```console
$ docker pull redis@sha256:93edc9db0f556427241131b726e5036f56f38a4ecbf4d75eedc3e43faeb1bd17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:3-32bit` - linux; amd64

```console
$ docker pull redis@sha256:59232cf728999da6923494add956ff7cd1604e285208f46a6e53b9fed8c27485
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.9 MB (33934417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9246389e2135364a728c6051d43c967982b00591e3fec31a2d6601caaba606f7`
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
# Tue, 17 Jul 2018 07:29:13 GMT
ENV REDIS_VERSION=3.2.12
# Tue, 17 Jul 2018 07:29:13 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Tue, 17 Jul 2018 07:29:13 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Tue, 17 Jul 2018 07:30:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 07:31:29 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jul 2018 07:31:29 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 17 Jul 2018 07:31:30 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 07:31:30 GMT
WORKDIR /data
# Tue, 17 Jul 2018 07:31:30 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 17 Jul 2018 07:31:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 07:31:31 GMT
EXPOSE 6379/tcp
# Tue, 17 Jul 2018 07:31:43 GMT
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
	-	`sha256:7c8922156e4bc88244284bc27692e590f01c4055cb9ae143c4ed08ea3ec496c1`  
		Last Modified: Tue, 17 Jul 2018 07:38:13 GMT  
		Size: 4.8 MB (4848273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:632c0c76038cf0a19b8294ff5d8e871e6178f01e803e15aa0a3ce069d39957c4`  
		Last Modified: Tue, 17 Jul 2018 07:38:14 GMT  
		Size: 5.7 MB (5656718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb48d037430b8823632ac41f129b1dfb133b2ded3e03baf2aaef9e647f68ab9e`  
		Last Modified: Tue, 17 Jul 2018 07:38:11 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbdef8bc2d8c6addd1eed98102bb4c975ed3e02150c82f5f550383cc1890d6dc`  
		Last Modified: Tue, 17 Jul 2018 07:38:12 GMT  
		Size: 407.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3-alpine`

```console
$ docker pull redis@sha256:ee083083cd3d94578f8622007f95b7733e6332cc7342ba008175f536547b50c6
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
$ docker pull redis@sha256:bb842cf7ef67a256fe05c91a875cd905370a825fd5b2d940c96286f2a890e242
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.0 MB (8996066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e34cb61ff391a7bbab89c5c1c7f2d50eab3a8e994d608fb952743c359670ffb5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 00:55:42 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 11 Jul 2018 00:55:43 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 11 Jul 2018 00:57:37 GMT
ENV REDIS_VERSION=3.2.12
# Wed, 11 Jul 2018 00:57:37 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Wed, 11 Jul 2018 00:57:37 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Wed, 11 Jul 2018 00:58:00 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 11 Jul 2018 00:58:01 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 11 Jul 2018 00:58:01 GMT
VOLUME [/data]
# Wed, 11 Jul 2018 00:58:01 GMT
WORKDIR /data
# Wed, 11 Jul 2018 00:58:02 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 11 Jul 2018 00:58:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jul 2018 00:58:02 GMT
EXPOSE 6379/tcp
# Wed, 11 Jul 2018 00:58:02 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f20bd2a5c234ffab42de6cbf83522946614b21b642a8208dca6b0fd614c31db`  
		Last Modified: Wed, 11 Jul 2018 00:58:27 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:782ff7702b5cd0a7c0109740838c74945fc27e4ce34e1028c24bf73f8249a63a`  
		Last Modified: Wed, 11 Jul 2018 00:58:27 GMT  
		Size: 9.1 KB (9071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d03f752c1710ba967ef45c342d10e93296b7f7deeaaecbc03d113471c8aad5d1`  
		Last Modified: Wed, 11 Jul 2018 01:00:19 GMT  
		Size: 6.8 MB (6778706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac33be878457d581f0ca17ae1567978c5d2abbeb905ea0cd53d2f231d9d9c278`  
		Last Modified: Wed, 11 Jul 2018 01:00:16 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43985ce9b410eb3f50e91a36e55ae036a34dde330afe76e984841ca388878d3b`  
		Last Modified: Wed, 11 Jul 2018 01:00:17 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3-alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:ca7cb35a67f5d11664f547c407b0038ecfe0da77defc61f546d98ff665053a1c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8666880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8bc16a92e2371ab9412de289eb6bfe79042aff1a3e92d03cbb1bb85384627cf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 06 Jul 2018 07:53:29 GMT
ADD file:122e3422d9afa971806601812374fdd9d00c8edc8e9a6df7256e2caa85fab6d1 in / 
# Fri, 06 Jul 2018 07:53:30 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 07:53:30 GMT
CMD ["/bin/sh"]
# Sat, 14 Jul 2018 11:45:22 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 14 Jul 2018 11:45:27 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 14 Jul 2018 11:53:59 GMT
ENV REDIS_VERSION=3.2.12
# Sat, 14 Jul 2018 11:53:59 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Sat, 14 Jul 2018 11:54:00 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Sat, 14 Jul 2018 11:58:56 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 14 Jul 2018 11:59:00 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 14 Jul 2018 11:59:00 GMT
VOLUME [/data]
# Sat, 14 Jul 2018 11:59:01 GMT
WORKDIR /data
# Sat, 14 Jul 2018 11:59:02 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 14 Jul 2018 11:59:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 14 Jul 2018 11:59:04 GMT
EXPOSE 6379/tcp
# Sat, 14 Jul 2018 11:59:04 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:ee7d700abbf209aa401ef5d53f86af298a25e8154b3259036e9307d08f255c5d`  
		Last Modified: Fri, 06 Jul 2018 07:53:45 GMT  
		Size: 2.1 MB (2145998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1653f4692c1ccea69cd46121d4f1371957f66e97a20141371dd4da10ebaec19`  
		Last Modified: Fri, 06 Jul 2018 07:53:45 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:227a96f1d31d3ceb90336a4a116e3e60b3a1fea72ae1f065e88a6d43417674ff`  
		Last Modified: Sat, 14 Jul 2018 11:59:20 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:407d2c8c18404f038c5326de3eadc14240dea0b342a6237b037d457e4d381d2b`  
		Last Modified: Sat, 14 Jul 2018 11:59:20 GMT  
		Size: 9.0 KB (8980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:855b100e4d366cb8e1955e94d5e66a99624f618a5f20cace6c219cfe8c52e707`  
		Last Modified: Sat, 14 Jul 2018 12:00:40 GMT  
		Size: 6.5 MB (6509912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5981dab4599291f2c419cfb7902f27591cd47ea1638092f18481de961f7d4a1`  
		Last Modified: Sat, 14 Jul 2018 12:00:32 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cf3483214a6b2ad454cddcd2c45a9efd5c00fd9f60f5d410a79fe6d5c7e1f9c`  
		Last Modified: Sat, 14 Jul 2018 12:00:34 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3-alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:f8d873e3f893bbd611e7238dcc4bf989352d99787003a2c9f06b6b5cfed931f8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8701634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd7d3d33ab85dec4f3bf8aa68ef5202c5d52f377766ce72a04012790ee7e3376`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 06 Jul 2018 08:41:03 GMT
ADD file:199a5a48bddabaf1f649f58f3b17c323a1aa1a50e939dfdea3542e4041e91b7b in / 
# Fri, 06 Jul 2018 08:41:03 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:41:04 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 09:37:50 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 11 Jul 2018 09:37:52 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 11 Jul 2018 09:41:15 GMT
ENV REDIS_VERSION=3.2.12
# Wed, 11 Jul 2018 09:41:16 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Wed, 11 Jul 2018 09:41:17 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Wed, 11 Jul 2018 09:41:55 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 11 Jul 2018 09:41:58 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 11 Jul 2018 09:41:59 GMT
VOLUME [/data]
# Wed, 11 Jul 2018 09:42:00 GMT
WORKDIR /data
# Wed, 11 Jul 2018 09:42:01 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 11 Jul 2018 09:42:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jul 2018 09:42:03 GMT
EXPOSE 6379/tcp
# Wed, 11 Jul 2018 09:42:04 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:47e04371c99027fae42871b720fdc6cdddcb65062bfa05f0c3bb0a594cb5bbbd`  
		Last Modified: Wed, 27 Jun 2018 19:15:35 GMT  
		Size: 2.1 MB (2099514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4103359e1ecd9a7253d8b8a041d4e81db1ff4a5e1950bc0e02305d221c9e6c2`  
		Last Modified: Fri, 06 Jul 2018 08:42:09 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9721f4fc0d2aca17304d7c1cbef676a8fa7d41c3f0c7201b22d695ff41dfc625`  
		Last Modified: Wed, 11 Jul 2018 09:42:31 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43bc6ac33e9f951cbb1f9ca722ba63c430fa5b2a12e0a46efe7f1e5e15920b16`  
		Last Modified: Wed, 11 Jul 2018 09:42:31 GMT  
		Size: 8.9 KB (8932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5679d3bd67739719ddee8974785362aa7ab79baaf548ab9e4351e40977dd8daa`  
		Last Modified: Wed, 11 Jul 2018 09:44:07 GMT  
		Size: 6.6 MB (6591264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47fc82221c422a3e266eb176391f3976b81cc1acc2641eb427b2d5bff136ae21`  
		Last Modified: Wed, 11 Jul 2018 09:44:04 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78403f2cd0ea67443113cd867d0bcd1a3b213b4d04d83a9376d6fd76397722c1`  
		Last Modified: Wed, 11 Jul 2018 09:44:04 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3-alpine` - linux; 386

```console
$ docker pull redis@sha256:a654da7b756b985e1d91701c7d287460499a2e28ebbc4e20bfbde046b660bc1c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8729043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e80b9bd40457622a9d66e1753fae0a9a4e43b1b3fe2f2843588394068f806c8c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 06 Jul 2018 15:02:06 GMT
ADD file:ebd40cda2f6087daf4d14e6dc1ee0b4a0fb5dc96c70129be8e07de0e5c628312 in / 
# Fri, 06 Jul 2018 15:02:07 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 15:02:07 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 10:59:08 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 11 Jul 2018 10:59:09 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 11 Jul 2018 11:01:11 GMT
ENV REDIS_VERSION=3.2.12
# Wed, 11 Jul 2018 11:01:11 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Wed, 11 Jul 2018 11:01:12 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Wed, 11 Jul 2018 11:01:34 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 11 Jul 2018 11:01:35 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 11 Jul 2018 11:01:35 GMT
VOLUME [/data]
# Wed, 11 Jul 2018 11:01:35 GMT
WORKDIR /data
# Wed, 11 Jul 2018 11:01:36 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 11 Jul 2018 11:01:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jul 2018 11:01:36 GMT
EXPOSE 6379/tcp
# Wed, 11 Jul 2018 11:01:36 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:ef15772113129a5330876ce10683bbf6509a4c4c99b3a99894dcbc7560975052`  
		Last Modified: Fri, 06 Jul 2018 15:02:46 GMT  
		Size: 2.3 MB (2270920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6df692b84cf35e6038d677f9ab7de2a3c671c57671043da1d20d99252e0d9c42`  
		Last Modified: Fri, 06 Jul 2018 15:02:43 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92b65fcd46a9888f65f4ba2dd7149e5d5433d9f8ee6d831c0178337fafcd6174`  
		Last Modified: Wed, 11 Jul 2018 11:01:57 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7c395347e9dff1709fe37c615afc2c9a112317d08e5af3e244a49c6d041528a`  
		Last Modified: Wed, 11 Jul 2018 11:01:57 GMT  
		Size: 9.1 KB (9124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f2548a683e8e5f102fdb0fe0249bde77094922e687f6cc7c06cd6e9456bc692`  
		Last Modified: Wed, 11 Jul 2018 11:03:21 GMT  
		Size: 6.4 MB (6447076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d503d58980366e7eb751d9659b20feee8e5481ef927b53dc19de3cfc637facd`  
		Last Modified: Wed, 11 Jul 2018 11:03:19 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d02c12ac8f04e6497fefe417989d83271569db213c648732f1ef0922f3fb554`  
		Last Modified: Wed, 11 Jul 2018 11:03:20 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3-alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:18a6ffa86bae2dded06e4508ef34d949eba13e78b1225359191ecc347944b254
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 MB (9053143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f38497d473cfdf6866ae5d18885f7fa078ae2b33018da76a15b5dde0d69d238e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 06 Jul 2018 08:18:09 GMT
ADD file:4ff20d593b16518d45b1b1d6efdab141199316dba7a53ce7459249f5de690dfd in / 
# Fri, 06 Jul 2018 08:18:10 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:18:11 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 10:29:07 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 11 Jul 2018 10:29:10 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 11 Jul 2018 10:32:19 GMT
ENV REDIS_VERSION=3.2.12
# Wed, 11 Jul 2018 10:32:20 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Wed, 11 Jul 2018 10:32:21 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Wed, 11 Jul 2018 10:32:47 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 11 Jul 2018 10:32:50 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 11 Jul 2018 10:32:53 GMT
VOLUME [/data]
# Wed, 11 Jul 2018 10:32:55 GMT
WORKDIR /data
# Wed, 11 Jul 2018 10:32:57 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 11 Jul 2018 10:33:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jul 2018 10:33:07 GMT
EXPOSE 6379/tcp
# Wed, 11 Jul 2018 10:33:16 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e642bcb5b1890a07dd2fc8be2bc35edf5e2b651d4993e71caef03b4b43ace970`  
		Last Modified: Fri, 06 Jul 2018 08:18:44 GMT  
		Size: 2.2 MB (2194861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e09410b1fce4c4630b3bc57c6ee158ee9821ec415d0acaa1607b9e0bcf76d91`  
		Last Modified: Fri, 06 Jul 2018 08:18:43 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0ff6034eb412b571271c235e27e06653a8c858164a627463f13b8ab52c74843`  
		Last Modified: Wed, 11 Jul 2018 10:34:00 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb36900be1e1e93c13e63a61812c55e9d7ac5ecdb09877b280822361acc94394`  
		Last Modified: Wed, 11 Jul 2018 10:33:59 GMT  
		Size: 9.5 KB (9509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30af3f8532c699ae1adc8f409a8e929e7c8fc8798556a39968543b11c40b15a4`  
		Last Modified: Wed, 11 Jul 2018 10:35:18 GMT  
		Size: 6.8 MB (6846781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c275977685d1ed24f29dc13ce77b515c12b6e7df32382873d5613123af1f4e7`  
		Last Modified: Wed, 11 Jul 2018 10:35:15 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:187a61a7d37b3be7c606f739e61a7ce527bcae598398e6de5559c903946dbd0b`  
		Last Modified: Wed, 11 Jul 2018 10:35:15 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3-alpine` - linux; s390x

```console
$ docker pull redis@sha256:71ac50548653d0b95b01809eabe69f21a6e0a13cc1e0aa4e105bac13e9598b05
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 MB (9166301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:906b5b8f694938fb06175f3e618c682d2847c6c1959ae03718a6da9ac4d49942`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 06 Jul 2018 11:41:42 GMT
ADD file:376dd7fc34ad39570d2e20f3704305e788ae613c589445b3e8fb880147c3eb59 in / 
# Fri, 06 Jul 2018 11:41:43 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 11:41:43 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 11:55:18 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 11 Jul 2018 11:55:19 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 11 Jul 2018 11:56:49 GMT
ENV REDIS_VERSION=3.2.12
# Wed, 11 Jul 2018 11:56:49 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Wed, 11 Jul 2018 11:56:50 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Wed, 11 Jul 2018 11:57:18 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 11 Jul 2018 11:57:18 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 11 Jul 2018 11:57:19 GMT
VOLUME [/data]
# Wed, 11 Jul 2018 11:57:19 GMT
WORKDIR /data
# Wed, 11 Jul 2018 11:57:19 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 11 Jul 2018 11:57:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jul 2018 11:57:19 GMT
EXPOSE 6379/tcp
# Wed, 11 Jul 2018 11:57:20 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:cdf21ace94188d512903eea53ea8559677e0e6ffd5d6a180a1d88c118abc96fc`  
		Last Modified: Fri, 06 Jul 2018 11:42:01 GMT  
		Size: 2.3 MB (2307471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea178433f2f09080fbbf77f09da1b16d588b7ced380d495a2f2ad00d28468338`  
		Last Modified: Fri, 06 Jul 2018 11:42:00 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2a9a36327b56f40ee16a7f6340b3f9e353f4d78c49c98c9b07dadba1340578a`  
		Last Modified: Wed, 11 Jul 2018 11:57:31 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ea5a4d7de8ea3dca3ad24e1379981de341f538e7f33e134951cce1e00c54030`  
		Last Modified: Wed, 11 Jul 2018 11:57:31 GMT  
		Size: 9.2 KB (9239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e9301c3f8936b44af06f6548c774019954e7f9f0618d9ba83f1073bc6a8e7bf`  
		Last Modified: Wed, 11 Jul 2018 11:58:03 GMT  
		Size: 6.8 MB (6847667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1850e270e03552e28004e6b1f372f94ef738718119cb3316f04543098c6af534`  
		Last Modified: Wed, 11 Jul 2018 11:58:02 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6beab725fb4d15a37ec22f27c8d6d3cc9c8540d858045d7ff9321ed047a02034`  
		Last Modified: Wed, 11 Jul 2018 11:58:02 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4`

```console
$ docker pull redis@sha256:54ecd5737bc0581da7d2b2b00c566d5de715488487afcb2478712668f287a50b
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
$ docker pull redis@sha256:f20ec679e1bdf0b6a83b4b4d4097dddf08edf0aa3cc6ff2ef4b9afebb0c8b5ef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32118447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f06a5773f01e1f77eb4487acb3333649716f45b3c32aad038765dc0ab0337bd4`
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
# Tue, 17 Jul 2018 07:26:26 GMT
ENV REDIS_VERSION=4.0.10
# Tue, 17 Jul 2018 07:26:27 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Tue, 17 Jul 2018 07:26:27 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Tue, 17 Jul 2018 07:27:04 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jul 2018 07:27:05 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 17 Jul 2018 07:27:05 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 07:27:05 GMT
WORKDIR /data
# Tue, 17 Jul 2018 07:27:05 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 17 Jul 2018 07:27:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 07:27:06 GMT
EXPOSE 6379/tcp
# Tue, 17 Jul 2018 07:27:06 GMT
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
	-	`sha256:ff89c30e4d8c53c3403ed2c09737963e5e1c2052f285e34c3ae3baf2d49b2017`  
		Last Modified: Tue, 17 Jul 2018 07:34:00 GMT  
		Size: 8.7 MB (8689026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59bf782a86b38d9f3b9e9c20588467b427460403d06146099026cdf1310a7285`  
		Last Modified: Tue, 17 Jul 2018 07:33:59 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce8aaa9fe90ad0dada1d2b2fed22ee9bb64bcfc1a5a4d5f7d2fe392df35050aa`  
		Last Modified: Tue, 17 Jul 2018 07:33:57 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; arm variant v5

```console
$ docker pull redis@sha256:2bb09d344926de0c7a8524766e6c0d6181ecb4d8eff5b210d396bfa8ebf819c2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30510427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f092efddc2efd2fe37064d57d9459c9ca99e7ac14be88b99682387daa6ac47dd`
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
# Tue, 17 Jul 2018 11:35:47 GMT
ENV REDIS_VERSION=4.0.10
# Tue, 17 Jul 2018 11:35:47 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Tue, 17 Jul 2018 11:35:47 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Tue, 17 Jul 2018 11:36:23 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jul 2018 11:36:24 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 17 Jul 2018 11:36:24 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 11:36:24 GMT
WORKDIR /data
# Tue, 17 Jul 2018 11:36:25 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 17 Jul 2018 11:36:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 11:36:25 GMT
EXPOSE 6379/tcp
# Tue, 17 Jul 2018 11:36:26 GMT
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
	-	`sha256:dd83d559eed25bdc4d8fed106f49cef582ccb7af3e2634f3ec7701d7f257b8c6`  
		Last Modified: Tue, 17 Jul 2018 11:38:00 GMT  
		Size: 8.4 MB (8414421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8c6f370ed68b0f35756e372dca24a7a10a1aeebd77342ec09ef7441382804d1`  
		Last Modified: Tue, 17 Jul 2018 11:37:57 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e86730a2ba741d330e4021a399b1f94fb2bcfec4cfaa284ea1dac8786932138`  
		Last Modified: Tue, 17 Jul 2018 11:37:57 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; arm variant v7

```console
$ docker pull redis@sha256:79be1240556b1926491ec2604a53f2d857064089435e5fbcad7bc36454d9ef5e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28387206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:352b5bb9108b7b52dd7d314959f600e8f60f95de85972cca6b8d7bf8e9056316`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Jun 2018 12:03:51 GMT
ADD file:d05cf75761bffd94ce908a55d38fc4966c194aa14492730dfdc1e52c3ddd0892 in / 
# Wed, 27 Jun 2018 12:03:54 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 14:18:29 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 14:18:29 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 14:18:48 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 14:19:36 GMT
ENV REDIS_VERSION=4.0.10
# Wed, 27 Jun 2018 14:19:36 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Wed, 27 Jun 2018 14:19:37 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Wed, 27 Jun 2018 14:20:08 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 14:20:09 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 14:20:09 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 14:20:10 GMT
WORKDIR /data
# Wed, 27 Jun 2018 14:20:10 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 27 Jun 2018 14:20:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 14:20:11 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 14:20:12 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:a779870b6875e97ad1448eaf9befb46011e0fd10ef5014f59d63f624b51de26f`  
		Last Modified: Wed, 27 Jun 2018 12:13:30 GMT  
		Size: 19.3 MB (19286273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c5c410558b6543c5785cecbccb032fd4982038a92ba3b8bb4d5ab8d17e6bed7`  
		Last Modified: Wed, 27 Jun 2018 14:20:30 GMT  
		Size: 1.7 KB (1730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48b858312be07ebaa41456fe36334924f5e53a6a705c42b89b61f26bc6ebb357`  
		Last Modified: Wed, 27 Jun 2018 14:20:30 GMT  
		Size: 915.9 KB (915893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ad0ec942ee79662631a351970ad43c032fcaff13d062dd6ac1db1a09e30bb36`  
		Last Modified: Wed, 27 Jun 2018 14:20:55 GMT  
		Size: 8.2 MB (8182774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7a7123e29129e6aeda6a18f84827b644f69b4c2fa35625fc7db2d71ec8e79b2`  
		Last Modified: Wed, 27 Jun 2018 14:20:52 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f333780152ff38ae2561f35dc050d80099e7bc5772967302e6b2cec435838307`  
		Last Modified: Wed, 27 Jun 2018 14:20:53 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:f5eaa99907a1313b2dbaf92b69165bb246d4cff7324ed394137d2abddeb0aa93
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.7 MB (29748623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e6566de3b84c40644e39f56d7084f886d9dcf315794dc65755a0093a91000fc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:44 GMT
ADD file:b8a1907d99b0b9f75b52f8e25d5c346caf0244b325919c02090ab1e05ba1cf18 in / 
# Wed, 27 Jun 2018 08:47:45 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 13:29:17 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 13:29:18 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 13:30:37 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 13:32:58 GMT
ENV REDIS_VERSION=4.0.10
# Wed, 27 Jun 2018 13:32:58 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Wed, 27 Jun 2018 13:32:59 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Wed, 27 Jun 2018 13:34:48 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 13:34:50 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 13:34:50 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 13:34:51 GMT
WORKDIR /data
# Wed, 27 Jun 2018 13:34:52 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 27 Jun 2018 13:34:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 13:34:55 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 13:34:56 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:153362478bb06475bede3bd6da2ff08a91dd9fc6f245c70bb5a033b65f38ac14`  
		Last Modified: Wed, 27 Jun 2018 08:58:51 GMT  
		Size: 20.3 MB (20348077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3df18432afbb66c603676db6e777b9e8385de68f08a19d034af0da3a1858e1f7`  
		Last Modified: Wed, 27 Jun 2018 13:35:34 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a80a3007c2c23eea873ed4902940ef771b78a7d742c98741d71b816d77682d9`  
		Last Modified: Wed, 27 Jun 2018 13:35:35 GMT  
		Size: 908.2 KB (908185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fdaf9673fc850e17dd5e0510013da65b4afb5cde8b68a302f7f9123ccf336f3`  
		Last Modified: Wed, 27 Jun 2018 13:36:15 GMT  
		Size: 8.5 MB (8490122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9012a9c945a3a860f7436f1be1b625e79f816b8e10c4aeec24eb53ae30fcc66`  
		Last Modified: Wed, 27 Jun 2018 13:36:11 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1419aa21e4a6179df1a4d2cb6cd6e35999b1ea30cfabc04336050ad6cf6019a1`  
		Last Modified: Wed, 27 Jun 2018 13:36:11 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; 386

```console
$ docker pull redis@sha256:af8d14e99f87911876473dfc1548cb97d59a0358c70ff2d671abbc07e4e4682f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32309664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4a9d5b1ae1992296afe04e4f6ec74523e18eb061440bbca0fd3d2388762054d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Jun 2018 10:46:39 GMT
ADD file:e1777a98c0e3aaf9cb1f4116550001b0eed2fe669b2c6449c93b76cccc92e1a2 in / 
# Wed, 27 Jun 2018 10:46:42 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 13:03:38 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 13:03:38 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 13:04:04 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 13:04:56 GMT
ENV REDIS_VERSION=4.0.10
# Wed, 27 Jun 2018 13:04:56 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Wed, 27 Jun 2018 13:04:56 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Wed, 27 Jun 2018 13:05:39 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 13:05:40 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 13:05:40 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 13:05:41 GMT
WORKDIR /data
# Wed, 27 Jun 2018 13:05:48 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 27 Jun 2018 13:05:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 13:05:49 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 13:05:49 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:7de5eb46c52dbee10629f5dc34d9b2445893031ae37083572734bc4f6577757d`  
		Last Modified: Wed, 27 Jun 2018 11:11:02 GMT  
		Size: 23.1 MB (23140103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8df6822d7184835aefd26151cfc1ba536407dc7e8d1f959bc1360b882e7f140`  
		Last Modified: Wed, 27 Jun 2018 13:06:10 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:036521fcd75cdac216f9c6c2c0a4e7c7512653de681714198cfddbf20503ea97`  
		Last Modified: Wed, 27 Jun 2018 13:06:10 GMT  
		Size: 920.3 KB (920308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4de5fa9d11a929e4178ba975855cdb5ac80022cf89332add88ca1dbacbb56f74`  
		Last Modified: Wed, 27 Jun 2018 13:06:59 GMT  
		Size: 8.2 MB (8247020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2400940e500127e1b5fcb395451e501b1735ad9aec2c038aada177eaa2ecc2f`  
		Last Modified: Wed, 27 Jun 2018 13:06:56 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:025c441b992eb77d52e8625819743cdf61a9c7dcabae59aa9e8461f973b6928a`  
		Last Modified: Wed, 27 Jun 2018 13:06:56 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; ppc64le

```console
$ docker pull redis@sha256:b98cde413fa85515af1048cc9e97cfbd5ea823225f08744d9106aa400439439b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.5 MB (32517295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04acf18736888bb0ee2310152a50ba95127feca792e707eb644f83a37c015426`
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
# Tue, 17 Jul 2018 11:11:57 GMT
ENV REDIS_VERSION=4.0.10
# Tue, 17 Jul 2018 11:12:00 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Tue, 17 Jul 2018 11:12:02 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Tue, 17 Jul 2018 11:14:17 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jul 2018 11:14:20 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 17 Jul 2018 11:14:24 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 11:14:26 GMT
WORKDIR /data
# Tue, 17 Jul 2018 11:14:29 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 17 Jul 2018 11:14:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 11:14:33 GMT
EXPOSE 6379/tcp
# Tue, 17 Jul 2018 11:14:35 GMT
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
	-	`sha256:01847c82acd4deacdfedcd2c816291ddece83e8edd8b2712bb5fc8db203f79ef`  
		Last Modified: Tue, 17 Jul 2018 11:19:24 GMT  
		Size: 8.9 MB (8864701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0438c5506554b3640ad18bf19ee31782ea32934e0a77819672b93a187216cdc`  
		Last Modified: Tue, 17 Jul 2018 11:19:19 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:724eca9f82f9147d6e493c1429475331ae0328ab7c6f74b9b153eea94ee74f94`  
		Last Modified: Tue, 17 Jul 2018 11:19:18 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; s390x

```console
$ docker pull redis@sha256:de590b0ce9e150a78bae36a164dafc0ac6682719c3c901ab5f9e93e9b1f842db
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32359648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf86e4f6dc2e7117176d765e9054839f25199f9fcca82bfe955309c088a81469`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Jun 2018 11:48:52 GMT
ADD file:30e8aac3f01e5ddc9493a0fac1c0978b9435ab33031d2af05afca0f9cb7eb71f in / 
# Wed, 27 Jun 2018 11:48:52 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 13:46:24 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 13:46:24 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 13:46:39 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 13:47:34 GMT
ENV REDIS_VERSION=4.0.10
# Wed, 27 Jun 2018 13:47:34 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Wed, 27 Jun 2018 13:47:34 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Wed, 27 Jun 2018 13:48:15 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 13:48:16 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 13:48:16 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 13:48:16 GMT
WORKDIR /data
# Wed, 27 Jun 2018 13:48:17 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 27 Jun 2018 13:48:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 13:48:17 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 13:48:17 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:1c23a44ac305da2d34995cf30530ba5adce0229e4a70678fd4d25384883b1281`  
		Last Modified: Wed, 27 Jun 2018 11:53:41 GMT  
		Size: 22.3 MB (22349871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f450656bdbcbfdc1614dfb82ca8dc61d74ac31bd1698136f082a3f2e49795a`  
		Last Modified: Wed, 27 Jun 2018 13:48:34 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb0e27db9314b93a9ac2f160f4fc84e2fac43e079e197b9721c03d11c645b235`  
		Last Modified: Wed, 27 Jun 2018 13:48:34 GMT  
		Size: 926.8 KB (926820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e193d7441fffd4f07c1a04b6c28f7de97124c5261e8ea61288d3b672ae1bbd32`  
		Last Modified: Wed, 27 Jun 2018 13:48:54 GMT  
		Size: 9.1 MB (9080718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb6e17635bf9170085f0b64dbb534d5148b750749605e393ac65f06991d6bea5`  
		Last Modified: Wed, 27 Jun 2018 13:48:51 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8916c6aa471c34f31573cefd8e04de650015f92fe03cd836f135ce306651029`  
		Last Modified: Wed, 27 Jun 2018 13:48:52 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0`

```console
$ docker pull redis@sha256:54ecd5737bc0581da7d2b2b00c566d5de715488487afcb2478712668f287a50b
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
$ docker pull redis@sha256:f20ec679e1bdf0b6a83b4b4d4097dddf08edf0aa3cc6ff2ef4b9afebb0c8b5ef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32118447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f06a5773f01e1f77eb4487acb3333649716f45b3c32aad038765dc0ab0337bd4`
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
# Tue, 17 Jul 2018 07:26:26 GMT
ENV REDIS_VERSION=4.0.10
# Tue, 17 Jul 2018 07:26:27 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Tue, 17 Jul 2018 07:26:27 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Tue, 17 Jul 2018 07:27:04 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jul 2018 07:27:05 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 17 Jul 2018 07:27:05 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 07:27:05 GMT
WORKDIR /data
# Tue, 17 Jul 2018 07:27:05 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 17 Jul 2018 07:27:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 07:27:06 GMT
EXPOSE 6379/tcp
# Tue, 17 Jul 2018 07:27:06 GMT
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
	-	`sha256:ff89c30e4d8c53c3403ed2c09737963e5e1c2052f285e34c3ae3baf2d49b2017`  
		Last Modified: Tue, 17 Jul 2018 07:34:00 GMT  
		Size: 8.7 MB (8689026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59bf782a86b38d9f3b9e9c20588467b427460403d06146099026cdf1310a7285`  
		Last Modified: Tue, 17 Jul 2018 07:33:59 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce8aaa9fe90ad0dada1d2b2fed22ee9bb64bcfc1a5a4d5f7d2fe392df35050aa`  
		Last Modified: Tue, 17 Jul 2018 07:33:57 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; arm variant v5

```console
$ docker pull redis@sha256:2bb09d344926de0c7a8524766e6c0d6181ecb4d8eff5b210d396bfa8ebf819c2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30510427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f092efddc2efd2fe37064d57d9459c9ca99e7ac14be88b99682387daa6ac47dd`
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
# Tue, 17 Jul 2018 11:35:47 GMT
ENV REDIS_VERSION=4.0.10
# Tue, 17 Jul 2018 11:35:47 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Tue, 17 Jul 2018 11:35:47 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Tue, 17 Jul 2018 11:36:23 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jul 2018 11:36:24 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 17 Jul 2018 11:36:24 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 11:36:24 GMT
WORKDIR /data
# Tue, 17 Jul 2018 11:36:25 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 17 Jul 2018 11:36:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 11:36:25 GMT
EXPOSE 6379/tcp
# Tue, 17 Jul 2018 11:36:26 GMT
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
	-	`sha256:dd83d559eed25bdc4d8fed106f49cef582ccb7af3e2634f3ec7701d7f257b8c6`  
		Last Modified: Tue, 17 Jul 2018 11:38:00 GMT  
		Size: 8.4 MB (8414421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8c6f370ed68b0f35756e372dca24a7a10a1aeebd77342ec09ef7441382804d1`  
		Last Modified: Tue, 17 Jul 2018 11:37:57 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e86730a2ba741d330e4021a399b1f94fb2bcfec4cfaa284ea1dac8786932138`  
		Last Modified: Tue, 17 Jul 2018 11:37:57 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; arm variant v7

```console
$ docker pull redis@sha256:79be1240556b1926491ec2604a53f2d857064089435e5fbcad7bc36454d9ef5e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28387206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:352b5bb9108b7b52dd7d314959f600e8f60f95de85972cca6b8d7bf8e9056316`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Jun 2018 12:03:51 GMT
ADD file:d05cf75761bffd94ce908a55d38fc4966c194aa14492730dfdc1e52c3ddd0892 in / 
# Wed, 27 Jun 2018 12:03:54 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 14:18:29 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 14:18:29 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 14:18:48 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 14:19:36 GMT
ENV REDIS_VERSION=4.0.10
# Wed, 27 Jun 2018 14:19:36 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Wed, 27 Jun 2018 14:19:37 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Wed, 27 Jun 2018 14:20:08 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 14:20:09 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 14:20:09 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 14:20:10 GMT
WORKDIR /data
# Wed, 27 Jun 2018 14:20:10 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 27 Jun 2018 14:20:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 14:20:11 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 14:20:12 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:a779870b6875e97ad1448eaf9befb46011e0fd10ef5014f59d63f624b51de26f`  
		Last Modified: Wed, 27 Jun 2018 12:13:30 GMT  
		Size: 19.3 MB (19286273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c5c410558b6543c5785cecbccb032fd4982038a92ba3b8bb4d5ab8d17e6bed7`  
		Last Modified: Wed, 27 Jun 2018 14:20:30 GMT  
		Size: 1.7 KB (1730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48b858312be07ebaa41456fe36334924f5e53a6a705c42b89b61f26bc6ebb357`  
		Last Modified: Wed, 27 Jun 2018 14:20:30 GMT  
		Size: 915.9 KB (915893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ad0ec942ee79662631a351970ad43c032fcaff13d062dd6ac1db1a09e30bb36`  
		Last Modified: Wed, 27 Jun 2018 14:20:55 GMT  
		Size: 8.2 MB (8182774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7a7123e29129e6aeda6a18f84827b644f69b4c2fa35625fc7db2d71ec8e79b2`  
		Last Modified: Wed, 27 Jun 2018 14:20:52 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f333780152ff38ae2561f35dc050d80099e7bc5772967302e6b2cec435838307`  
		Last Modified: Wed, 27 Jun 2018 14:20:53 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:f5eaa99907a1313b2dbaf92b69165bb246d4cff7324ed394137d2abddeb0aa93
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.7 MB (29748623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e6566de3b84c40644e39f56d7084f886d9dcf315794dc65755a0093a91000fc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:44 GMT
ADD file:b8a1907d99b0b9f75b52f8e25d5c346caf0244b325919c02090ab1e05ba1cf18 in / 
# Wed, 27 Jun 2018 08:47:45 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 13:29:17 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 13:29:18 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 13:30:37 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 13:32:58 GMT
ENV REDIS_VERSION=4.0.10
# Wed, 27 Jun 2018 13:32:58 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Wed, 27 Jun 2018 13:32:59 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Wed, 27 Jun 2018 13:34:48 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 13:34:50 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 13:34:50 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 13:34:51 GMT
WORKDIR /data
# Wed, 27 Jun 2018 13:34:52 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 27 Jun 2018 13:34:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 13:34:55 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 13:34:56 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:153362478bb06475bede3bd6da2ff08a91dd9fc6f245c70bb5a033b65f38ac14`  
		Last Modified: Wed, 27 Jun 2018 08:58:51 GMT  
		Size: 20.3 MB (20348077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3df18432afbb66c603676db6e777b9e8385de68f08a19d034af0da3a1858e1f7`  
		Last Modified: Wed, 27 Jun 2018 13:35:34 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a80a3007c2c23eea873ed4902940ef771b78a7d742c98741d71b816d77682d9`  
		Last Modified: Wed, 27 Jun 2018 13:35:35 GMT  
		Size: 908.2 KB (908185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fdaf9673fc850e17dd5e0510013da65b4afb5cde8b68a302f7f9123ccf336f3`  
		Last Modified: Wed, 27 Jun 2018 13:36:15 GMT  
		Size: 8.5 MB (8490122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9012a9c945a3a860f7436f1be1b625e79f816b8e10c4aeec24eb53ae30fcc66`  
		Last Modified: Wed, 27 Jun 2018 13:36:11 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1419aa21e4a6179df1a4d2cb6cd6e35999b1ea30cfabc04336050ad6cf6019a1`  
		Last Modified: Wed, 27 Jun 2018 13:36:11 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; 386

```console
$ docker pull redis@sha256:af8d14e99f87911876473dfc1548cb97d59a0358c70ff2d671abbc07e4e4682f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32309664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4a9d5b1ae1992296afe04e4f6ec74523e18eb061440bbca0fd3d2388762054d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Jun 2018 10:46:39 GMT
ADD file:e1777a98c0e3aaf9cb1f4116550001b0eed2fe669b2c6449c93b76cccc92e1a2 in / 
# Wed, 27 Jun 2018 10:46:42 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 13:03:38 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 13:03:38 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 13:04:04 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 13:04:56 GMT
ENV REDIS_VERSION=4.0.10
# Wed, 27 Jun 2018 13:04:56 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Wed, 27 Jun 2018 13:04:56 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Wed, 27 Jun 2018 13:05:39 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 13:05:40 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 13:05:40 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 13:05:41 GMT
WORKDIR /data
# Wed, 27 Jun 2018 13:05:48 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 27 Jun 2018 13:05:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 13:05:49 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 13:05:49 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:7de5eb46c52dbee10629f5dc34d9b2445893031ae37083572734bc4f6577757d`  
		Last Modified: Wed, 27 Jun 2018 11:11:02 GMT  
		Size: 23.1 MB (23140103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8df6822d7184835aefd26151cfc1ba536407dc7e8d1f959bc1360b882e7f140`  
		Last Modified: Wed, 27 Jun 2018 13:06:10 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:036521fcd75cdac216f9c6c2c0a4e7c7512653de681714198cfddbf20503ea97`  
		Last Modified: Wed, 27 Jun 2018 13:06:10 GMT  
		Size: 920.3 KB (920308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4de5fa9d11a929e4178ba975855cdb5ac80022cf89332add88ca1dbacbb56f74`  
		Last Modified: Wed, 27 Jun 2018 13:06:59 GMT  
		Size: 8.2 MB (8247020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2400940e500127e1b5fcb395451e501b1735ad9aec2c038aada177eaa2ecc2f`  
		Last Modified: Wed, 27 Jun 2018 13:06:56 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:025c441b992eb77d52e8625819743cdf61a9c7dcabae59aa9e8461f973b6928a`  
		Last Modified: Wed, 27 Jun 2018 13:06:56 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; ppc64le

```console
$ docker pull redis@sha256:b98cde413fa85515af1048cc9e97cfbd5ea823225f08744d9106aa400439439b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.5 MB (32517295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04acf18736888bb0ee2310152a50ba95127feca792e707eb644f83a37c015426`
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
# Tue, 17 Jul 2018 11:11:57 GMT
ENV REDIS_VERSION=4.0.10
# Tue, 17 Jul 2018 11:12:00 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Tue, 17 Jul 2018 11:12:02 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Tue, 17 Jul 2018 11:14:17 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jul 2018 11:14:20 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 17 Jul 2018 11:14:24 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 11:14:26 GMT
WORKDIR /data
# Tue, 17 Jul 2018 11:14:29 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 17 Jul 2018 11:14:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 11:14:33 GMT
EXPOSE 6379/tcp
# Tue, 17 Jul 2018 11:14:35 GMT
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
	-	`sha256:01847c82acd4deacdfedcd2c816291ddece83e8edd8b2712bb5fc8db203f79ef`  
		Last Modified: Tue, 17 Jul 2018 11:19:24 GMT  
		Size: 8.9 MB (8864701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0438c5506554b3640ad18bf19ee31782ea32934e0a77819672b93a187216cdc`  
		Last Modified: Tue, 17 Jul 2018 11:19:19 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:724eca9f82f9147d6e493c1429475331ae0328ab7c6f74b9b153eea94ee74f94`  
		Last Modified: Tue, 17 Jul 2018 11:19:18 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; s390x

```console
$ docker pull redis@sha256:de590b0ce9e150a78bae36a164dafc0ac6682719c3c901ab5f9e93e9b1f842db
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32359648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf86e4f6dc2e7117176d765e9054839f25199f9fcca82bfe955309c088a81469`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Jun 2018 11:48:52 GMT
ADD file:30e8aac3f01e5ddc9493a0fac1c0978b9435ab33031d2af05afca0f9cb7eb71f in / 
# Wed, 27 Jun 2018 11:48:52 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 13:46:24 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 13:46:24 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 13:46:39 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 13:47:34 GMT
ENV REDIS_VERSION=4.0.10
# Wed, 27 Jun 2018 13:47:34 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Wed, 27 Jun 2018 13:47:34 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Wed, 27 Jun 2018 13:48:15 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 13:48:16 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 13:48:16 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 13:48:16 GMT
WORKDIR /data
# Wed, 27 Jun 2018 13:48:17 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 27 Jun 2018 13:48:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 13:48:17 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 13:48:17 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:1c23a44ac305da2d34995cf30530ba5adce0229e4a70678fd4d25384883b1281`  
		Last Modified: Wed, 27 Jun 2018 11:53:41 GMT  
		Size: 22.3 MB (22349871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f450656bdbcbfdc1614dfb82ca8dc61d74ac31bd1698136f082a3f2e49795a`  
		Last Modified: Wed, 27 Jun 2018 13:48:34 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb0e27db9314b93a9ac2f160f4fc84e2fac43e079e197b9721c03d11c645b235`  
		Last Modified: Wed, 27 Jun 2018 13:48:34 GMT  
		Size: 926.8 KB (926820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e193d7441fffd4f07c1a04b6c28f7de97124c5261e8ea61288d3b672ae1bbd32`  
		Last Modified: Wed, 27 Jun 2018 13:48:54 GMT  
		Size: 9.1 MB (9080718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb6e17635bf9170085f0b64dbb534d5148b750749605e393ac65f06991d6bea5`  
		Last Modified: Wed, 27 Jun 2018 13:48:51 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8916c6aa471c34f31573cefd8e04de650015f92fe03cd836f135ce306651029`  
		Last Modified: Wed, 27 Jun 2018 13:48:52 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.10`

```console
$ docker pull redis@sha256:54ecd5737bc0581da7d2b2b00c566d5de715488487afcb2478712668f287a50b
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

### `redis:4.0.10` - linux; amd64

```console
$ docker pull redis@sha256:f20ec679e1bdf0b6a83b4b4d4097dddf08edf0aa3cc6ff2ef4b9afebb0c8b5ef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32118447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f06a5773f01e1f77eb4487acb3333649716f45b3c32aad038765dc0ab0337bd4`
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
# Tue, 17 Jul 2018 07:26:26 GMT
ENV REDIS_VERSION=4.0.10
# Tue, 17 Jul 2018 07:26:27 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Tue, 17 Jul 2018 07:26:27 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Tue, 17 Jul 2018 07:27:04 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jul 2018 07:27:05 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 17 Jul 2018 07:27:05 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 07:27:05 GMT
WORKDIR /data
# Tue, 17 Jul 2018 07:27:05 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 17 Jul 2018 07:27:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 07:27:06 GMT
EXPOSE 6379/tcp
# Tue, 17 Jul 2018 07:27:06 GMT
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
	-	`sha256:ff89c30e4d8c53c3403ed2c09737963e5e1c2052f285e34c3ae3baf2d49b2017`  
		Last Modified: Tue, 17 Jul 2018 07:34:00 GMT  
		Size: 8.7 MB (8689026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59bf782a86b38d9f3b9e9c20588467b427460403d06146099026cdf1310a7285`  
		Last Modified: Tue, 17 Jul 2018 07:33:59 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce8aaa9fe90ad0dada1d2b2fed22ee9bb64bcfc1a5a4d5f7d2fe392df35050aa`  
		Last Modified: Tue, 17 Jul 2018 07:33:57 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.10` - linux; arm variant v5

```console
$ docker pull redis@sha256:2bb09d344926de0c7a8524766e6c0d6181ecb4d8eff5b210d396bfa8ebf819c2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30510427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f092efddc2efd2fe37064d57d9459c9ca99e7ac14be88b99682387daa6ac47dd`
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
# Tue, 17 Jul 2018 11:35:47 GMT
ENV REDIS_VERSION=4.0.10
# Tue, 17 Jul 2018 11:35:47 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Tue, 17 Jul 2018 11:35:47 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Tue, 17 Jul 2018 11:36:23 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jul 2018 11:36:24 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 17 Jul 2018 11:36:24 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 11:36:24 GMT
WORKDIR /data
# Tue, 17 Jul 2018 11:36:25 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 17 Jul 2018 11:36:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 11:36:25 GMT
EXPOSE 6379/tcp
# Tue, 17 Jul 2018 11:36:26 GMT
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
	-	`sha256:dd83d559eed25bdc4d8fed106f49cef582ccb7af3e2634f3ec7701d7f257b8c6`  
		Last Modified: Tue, 17 Jul 2018 11:38:00 GMT  
		Size: 8.4 MB (8414421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8c6f370ed68b0f35756e372dca24a7a10a1aeebd77342ec09ef7441382804d1`  
		Last Modified: Tue, 17 Jul 2018 11:37:57 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e86730a2ba741d330e4021a399b1f94fb2bcfec4cfaa284ea1dac8786932138`  
		Last Modified: Tue, 17 Jul 2018 11:37:57 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.10` - linux; arm variant v7

```console
$ docker pull redis@sha256:79be1240556b1926491ec2604a53f2d857064089435e5fbcad7bc36454d9ef5e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28387206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:352b5bb9108b7b52dd7d314959f600e8f60f95de85972cca6b8d7bf8e9056316`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Jun 2018 12:03:51 GMT
ADD file:d05cf75761bffd94ce908a55d38fc4966c194aa14492730dfdc1e52c3ddd0892 in / 
# Wed, 27 Jun 2018 12:03:54 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 14:18:29 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 14:18:29 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 14:18:48 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 14:19:36 GMT
ENV REDIS_VERSION=4.0.10
# Wed, 27 Jun 2018 14:19:36 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Wed, 27 Jun 2018 14:19:37 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Wed, 27 Jun 2018 14:20:08 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 14:20:09 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 14:20:09 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 14:20:10 GMT
WORKDIR /data
# Wed, 27 Jun 2018 14:20:10 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 27 Jun 2018 14:20:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 14:20:11 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 14:20:12 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:a779870b6875e97ad1448eaf9befb46011e0fd10ef5014f59d63f624b51de26f`  
		Last Modified: Wed, 27 Jun 2018 12:13:30 GMT  
		Size: 19.3 MB (19286273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c5c410558b6543c5785cecbccb032fd4982038a92ba3b8bb4d5ab8d17e6bed7`  
		Last Modified: Wed, 27 Jun 2018 14:20:30 GMT  
		Size: 1.7 KB (1730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48b858312be07ebaa41456fe36334924f5e53a6a705c42b89b61f26bc6ebb357`  
		Last Modified: Wed, 27 Jun 2018 14:20:30 GMT  
		Size: 915.9 KB (915893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ad0ec942ee79662631a351970ad43c032fcaff13d062dd6ac1db1a09e30bb36`  
		Last Modified: Wed, 27 Jun 2018 14:20:55 GMT  
		Size: 8.2 MB (8182774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7a7123e29129e6aeda6a18f84827b644f69b4c2fa35625fc7db2d71ec8e79b2`  
		Last Modified: Wed, 27 Jun 2018 14:20:52 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f333780152ff38ae2561f35dc050d80099e7bc5772967302e6b2cec435838307`  
		Last Modified: Wed, 27 Jun 2018 14:20:53 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.10` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:f5eaa99907a1313b2dbaf92b69165bb246d4cff7324ed394137d2abddeb0aa93
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.7 MB (29748623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e6566de3b84c40644e39f56d7084f886d9dcf315794dc65755a0093a91000fc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:44 GMT
ADD file:b8a1907d99b0b9f75b52f8e25d5c346caf0244b325919c02090ab1e05ba1cf18 in / 
# Wed, 27 Jun 2018 08:47:45 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 13:29:17 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 13:29:18 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 13:30:37 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 13:32:58 GMT
ENV REDIS_VERSION=4.0.10
# Wed, 27 Jun 2018 13:32:58 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Wed, 27 Jun 2018 13:32:59 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Wed, 27 Jun 2018 13:34:48 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 13:34:50 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 13:34:50 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 13:34:51 GMT
WORKDIR /data
# Wed, 27 Jun 2018 13:34:52 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 27 Jun 2018 13:34:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 13:34:55 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 13:34:56 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:153362478bb06475bede3bd6da2ff08a91dd9fc6f245c70bb5a033b65f38ac14`  
		Last Modified: Wed, 27 Jun 2018 08:58:51 GMT  
		Size: 20.3 MB (20348077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3df18432afbb66c603676db6e777b9e8385de68f08a19d034af0da3a1858e1f7`  
		Last Modified: Wed, 27 Jun 2018 13:35:34 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a80a3007c2c23eea873ed4902940ef771b78a7d742c98741d71b816d77682d9`  
		Last Modified: Wed, 27 Jun 2018 13:35:35 GMT  
		Size: 908.2 KB (908185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fdaf9673fc850e17dd5e0510013da65b4afb5cde8b68a302f7f9123ccf336f3`  
		Last Modified: Wed, 27 Jun 2018 13:36:15 GMT  
		Size: 8.5 MB (8490122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9012a9c945a3a860f7436f1be1b625e79f816b8e10c4aeec24eb53ae30fcc66`  
		Last Modified: Wed, 27 Jun 2018 13:36:11 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1419aa21e4a6179df1a4d2cb6cd6e35999b1ea30cfabc04336050ad6cf6019a1`  
		Last Modified: Wed, 27 Jun 2018 13:36:11 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.10` - linux; 386

```console
$ docker pull redis@sha256:af8d14e99f87911876473dfc1548cb97d59a0358c70ff2d671abbc07e4e4682f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32309664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4a9d5b1ae1992296afe04e4f6ec74523e18eb061440bbca0fd3d2388762054d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Jun 2018 10:46:39 GMT
ADD file:e1777a98c0e3aaf9cb1f4116550001b0eed2fe669b2c6449c93b76cccc92e1a2 in / 
# Wed, 27 Jun 2018 10:46:42 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 13:03:38 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 13:03:38 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 13:04:04 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 13:04:56 GMT
ENV REDIS_VERSION=4.0.10
# Wed, 27 Jun 2018 13:04:56 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Wed, 27 Jun 2018 13:04:56 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Wed, 27 Jun 2018 13:05:39 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 13:05:40 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 13:05:40 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 13:05:41 GMT
WORKDIR /data
# Wed, 27 Jun 2018 13:05:48 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 27 Jun 2018 13:05:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 13:05:49 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 13:05:49 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:7de5eb46c52dbee10629f5dc34d9b2445893031ae37083572734bc4f6577757d`  
		Last Modified: Wed, 27 Jun 2018 11:11:02 GMT  
		Size: 23.1 MB (23140103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8df6822d7184835aefd26151cfc1ba536407dc7e8d1f959bc1360b882e7f140`  
		Last Modified: Wed, 27 Jun 2018 13:06:10 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:036521fcd75cdac216f9c6c2c0a4e7c7512653de681714198cfddbf20503ea97`  
		Last Modified: Wed, 27 Jun 2018 13:06:10 GMT  
		Size: 920.3 KB (920308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4de5fa9d11a929e4178ba975855cdb5ac80022cf89332add88ca1dbacbb56f74`  
		Last Modified: Wed, 27 Jun 2018 13:06:59 GMT  
		Size: 8.2 MB (8247020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2400940e500127e1b5fcb395451e501b1735ad9aec2c038aada177eaa2ecc2f`  
		Last Modified: Wed, 27 Jun 2018 13:06:56 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:025c441b992eb77d52e8625819743cdf61a9c7dcabae59aa9e8461f973b6928a`  
		Last Modified: Wed, 27 Jun 2018 13:06:56 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.10` - linux; ppc64le

```console
$ docker pull redis@sha256:b98cde413fa85515af1048cc9e97cfbd5ea823225f08744d9106aa400439439b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.5 MB (32517295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04acf18736888bb0ee2310152a50ba95127feca792e707eb644f83a37c015426`
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
# Tue, 17 Jul 2018 11:11:57 GMT
ENV REDIS_VERSION=4.0.10
# Tue, 17 Jul 2018 11:12:00 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Tue, 17 Jul 2018 11:12:02 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Tue, 17 Jul 2018 11:14:17 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jul 2018 11:14:20 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 17 Jul 2018 11:14:24 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 11:14:26 GMT
WORKDIR /data
# Tue, 17 Jul 2018 11:14:29 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 17 Jul 2018 11:14:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 11:14:33 GMT
EXPOSE 6379/tcp
# Tue, 17 Jul 2018 11:14:35 GMT
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
	-	`sha256:01847c82acd4deacdfedcd2c816291ddece83e8edd8b2712bb5fc8db203f79ef`  
		Last Modified: Tue, 17 Jul 2018 11:19:24 GMT  
		Size: 8.9 MB (8864701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0438c5506554b3640ad18bf19ee31782ea32934e0a77819672b93a187216cdc`  
		Last Modified: Tue, 17 Jul 2018 11:19:19 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:724eca9f82f9147d6e493c1429475331ae0328ab7c6f74b9b153eea94ee74f94`  
		Last Modified: Tue, 17 Jul 2018 11:19:18 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.10` - linux; s390x

```console
$ docker pull redis@sha256:de590b0ce9e150a78bae36a164dafc0ac6682719c3c901ab5f9e93e9b1f842db
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32359648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf86e4f6dc2e7117176d765e9054839f25199f9fcca82bfe955309c088a81469`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Jun 2018 11:48:52 GMT
ADD file:30e8aac3f01e5ddc9493a0fac1c0978b9435ab33031d2af05afca0f9cb7eb71f in / 
# Wed, 27 Jun 2018 11:48:52 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 13:46:24 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 13:46:24 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 13:46:39 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 13:47:34 GMT
ENV REDIS_VERSION=4.0.10
# Wed, 27 Jun 2018 13:47:34 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Wed, 27 Jun 2018 13:47:34 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Wed, 27 Jun 2018 13:48:15 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 13:48:16 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 13:48:16 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 13:48:16 GMT
WORKDIR /data
# Wed, 27 Jun 2018 13:48:17 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 27 Jun 2018 13:48:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 13:48:17 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 13:48:17 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:1c23a44ac305da2d34995cf30530ba5adce0229e4a70678fd4d25384883b1281`  
		Last Modified: Wed, 27 Jun 2018 11:53:41 GMT  
		Size: 22.3 MB (22349871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f450656bdbcbfdc1614dfb82ca8dc61d74ac31bd1698136f082a3f2e49795a`  
		Last Modified: Wed, 27 Jun 2018 13:48:34 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb0e27db9314b93a9ac2f160f4fc84e2fac43e079e197b9721c03d11c645b235`  
		Last Modified: Wed, 27 Jun 2018 13:48:34 GMT  
		Size: 926.8 KB (926820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e193d7441fffd4f07c1a04b6c28f7de97124c5261e8ea61288d3b672ae1bbd32`  
		Last Modified: Wed, 27 Jun 2018 13:48:54 GMT  
		Size: 9.1 MB (9080718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb6e17635bf9170085f0b64dbb534d5148b750749605e393ac65f06991d6bea5`  
		Last Modified: Wed, 27 Jun 2018 13:48:51 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8916c6aa471c34f31573cefd8e04de650015f92fe03cd836f135ce306651029`  
		Last Modified: Wed, 27 Jun 2018 13:48:52 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.10-32bit`

```console
$ docker pull redis@sha256:33a9c9646770e345e955213d734b82181e58fcdaead0cafb2d77b3c496897abc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4.0.10-32bit` - linux; amd64

```console
$ docker pull redis@sha256:8a6ce7cb37cdc1bc285dca107456ce58bca4a74557b59a033a59f175c2299eea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.5 MB (36529016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f90a1c235eeb0233a7774936073d32546f79c58f643e8875b05c5604a3a1af0`
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
# Tue, 17 Jul 2018 07:26:26 GMT
ENV REDIS_VERSION=4.0.10
# Tue, 17 Jul 2018 07:26:27 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Tue, 17 Jul 2018 07:26:27 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Tue, 17 Jul 2018 07:27:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 07:28:32 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jul 2018 07:28:44 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 17 Jul 2018 07:28:44 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 07:28:45 GMT
WORKDIR /data
# Tue, 17 Jul 2018 07:28:45 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 17 Jul 2018 07:28:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 07:28:45 GMT
EXPOSE 6379/tcp
# Tue, 17 Jul 2018 07:28:46 GMT
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
	-	`sha256:9e0fd4549c4d0596d0d5e9344b2c6ffa10ee19aa426dc62851d4d3233269eb7b`  
		Last Modified: Tue, 17 Jul 2018 07:35:24 GMT  
		Size: 4.8 MB (4848259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9117524dfd4bbd0a7c3d295d24b82a57478db30d0def5e1a137280a450f4af7`  
		Last Modified: Tue, 17 Jul 2018 07:35:26 GMT  
		Size: 8.3 MB (8251329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67ab96d34d5ff84919b98ee9f3c1d992b9ba850b850f9a9004f44ea3fd06df49`  
		Last Modified: Tue, 17 Jul 2018 07:35:23 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc87c6ff97a9637489a374d852bd97e4cf87fb1dc77bdc108970da4bd34362b6`  
		Last Modified: Tue, 17 Jul 2018 07:35:23 GMT  
		Size: 409.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.10-alpine`

```console
$ docker pull redis@sha256:e57274dac037e5b0c7680717fcaaa0efeffb23430e54e839c50819c9d842a38c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redis:4.0.10-alpine` - linux; amd64

```console
$ docker pull redis@sha256:d5f25b8d0f6125579cd3ac00a5a6e017ed55721d1b0850a3915da501fe7fd571
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.6 MB (11624926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80581db8c700155a91bec6fd6398dad9733135e7c58a19472aa679e8367692ab`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 00:55:42 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 11 Jul 2018 00:55:43 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 11 Jul 2018 00:56:55 GMT
ENV REDIS_VERSION=4.0.10
# Wed, 11 Jul 2018 00:56:55 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Wed, 11 Jul 2018 00:56:55 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Wed, 11 Jul 2018 00:57:19 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 11 Jul 2018 00:57:20 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 11 Jul 2018 00:57:21 GMT
VOLUME [/data]
# Wed, 11 Jul 2018 00:57:21 GMT
WORKDIR /data
# Wed, 11 Jul 2018 00:57:21 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 11 Jul 2018 00:57:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jul 2018 00:57:22 GMT
EXPOSE 6379/tcp
# Wed, 11 Jul 2018 00:57:22 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f20bd2a5c234ffab42de6cbf83522946614b21b642a8208dca6b0fd614c31db`  
		Last Modified: Wed, 11 Jul 2018 00:58:27 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:782ff7702b5cd0a7c0109740838c74945fc27e4ce34e1028c24bf73f8249a63a`  
		Last Modified: Wed, 11 Jul 2018 00:58:27 GMT  
		Size: 9.1 KB (9071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd719ead7ee305492514a8dfa2afcd0979a16e8192836b4aaed98d8d932973c0`  
		Last Modified: Wed, 11 Jul 2018 00:59:08 GMT  
		Size: 9.4 MB (9407568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01018940af9a67873ad6737c275cb134372cdf1cda565af58dd14a1e3b85ab2a`  
		Last Modified: Wed, 11 Jul 2018 00:59:05 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f1bfdda9588f5c0643b485580060b460b21b5331f4760778ef3279680e20966`  
		Last Modified: Wed, 11 Jul 2018 00:59:05 GMT  
		Size: 398.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.10-alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:b3e481a692c4fce21591fbaa4d7588bc6de5ae65161b3d7417e255dd22cabb71
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7968247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c779a2af88b86fffc4ad32a4de83d10f1530ee8cd143552f6bde13f4c009f674`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 06 Jul 2018 07:53:29 GMT
ADD file:122e3422d9afa971806601812374fdd9d00c8edc8e9a6df7256e2caa85fab6d1 in / 
# Fri, 06 Jul 2018 07:53:30 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 07:53:30 GMT
CMD ["/bin/sh"]
# Sat, 14 Jul 2018 11:45:22 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 14 Jul 2018 11:45:27 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 14 Jul 2018 11:50:01 GMT
ENV REDIS_VERSION=4.0.10
# Sat, 14 Jul 2018 11:50:01 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Sat, 14 Jul 2018 11:50:03 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Sat, 14 Jul 2018 11:53:32 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 14 Jul 2018 11:53:36 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 14 Jul 2018 11:53:37 GMT
VOLUME [/data]
# Sat, 14 Jul 2018 11:53:38 GMT
WORKDIR /data
# Sat, 14 Jul 2018 11:53:39 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 14 Jul 2018 11:53:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 14 Jul 2018 11:53:41 GMT
EXPOSE 6379/tcp
# Sat, 14 Jul 2018 11:53:41 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:ee7d700abbf209aa401ef5d53f86af298a25e8154b3259036e9307d08f255c5d`  
		Last Modified: Fri, 06 Jul 2018 07:53:45 GMT  
		Size: 2.1 MB (2145998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1653f4692c1ccea69cd46121d4f1371957f66e97a20141371dd4da10ebaec19`  
		Last Modified: Fri, 06 Jul 2018 07:53:45 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:227a96f1d31d3ceb90336a4a116e3e60b3a1fea72ae1f065e88a6d43417674ff`  
		Last Modified: Sat, 14 Jul 2018 11:59:20 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:407d2c8c18404f038c5326de3eadc14240dea0b342a6237b037d457e4d381d2b`  
		Last Modified: Sat, 14 Jul 2018 11:59:20 GMT  
		Size: 9.0 KB (8980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60992a6a1b91924e91cf90c9671fe2d99c46702895d6ad933bf051e9d3466f3a`  
		Last Modified: Sat, 14 Jul 2018 11:59:55 GMT  
		Size: 5.8 MB (5811279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7136ff1ceed2688f09cfd6d7e0169b4de7b1d36af4744df8120f1caa2caa9ded`  
		Last Modified: Sat, 14 Jul 2018 11:59:48 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c38fded17786397ed4d8613b02b7d3d7d1b87f40912be5677388f909d074fc51`  
		Last Modified: Sat, 14 Jul 2018 11:59:49 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.10-alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:8f9dc588a0f8e521923fc61b36b9f54c6c19e8d195e8bbc987515388f4b80e8e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.3 MB (11274306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71e4a3388a3fc0459a7009d80bdea4509d59e607be5768f977712648a39a762a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 06 Jul 2018 08:41:03 GMT
ADD file:199a5a48bddabaf1f649f58f3b17c323a1aa1a50e939dfdea3542e4041e91b7b in / 
# Fri, 06 Jul 2018 08:41:03 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:41:04 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 09:37:50 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 11 Jul 2018 09:37:52 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 11 Jul 2018 09:39:48 GMT
ENV REDIS_VERSION=4.0.10
# Wed, 11 Jul 2018 09:39:49 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Wed, 11 Jul 2018 09:39:49 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Wed, 11 Jul 2018 09:40:34 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 11 Jul 2018 09:40:36 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 11 Jul 2018 09:40:37 GMT
VOLUME [/data]
# Wed, 11 Jul 2018 09:40:37 GMT
WORKDIR /data
# Wed, 11 Jul 2018 09:40:38 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 11 Jul 2018 09:40:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jul 2018 09:40:40 GMT
EXPOSE 6379/tcp
# Wed, 11 Jul 2018 09:40:41 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:47e04371c99027fae42871b720fdc6cdddcb65062bfa05f0c3bb0a594cb5bbbd`  
		Last Modified: Wed, 27 Jun 2018 19:15:35 GMT  
		Size: 2.1 MB (2099514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4103359e1ecd9a7253d8b8a041d4e81db1ff4a5e1950bc0e02305d221c9e6c2`  
		Last Modified: Fri, 06 Jul 2018 08:42:09 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9721f4fc0d2aca17304d7c1cbef676a8fa7d41c3f0c7201b22d695ff41dfc625`  
		Last Modified: Wed, 11 Jul 2018 09:42:31 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43bc6ac33e9f951cbb1f9ca722ba63c430fa5b2a12e0a46efe7f1e5e15920b16`  
		Last Modified: Wed, 11 Jul 2018 09:42:31 GMT  
		Size: 8.9 KB (8932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8205b31384995cfe4381d5bc6d4c777589c84b661e6406888c6e68bb215a9ce3`  
		Last Modified: Wed, 11 Jul 2018 09:43:09 GMT  
		Size: 9.2 MB (9163938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccc6caaf591076f59f89644d505bf149dfa92f82e93369e61a76695c6763d7b8`  
		Last Modified: Wed, 11 Jul 2018 09:43:05 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a647132a51ce7a5b39ee00a9d9d84db17c6c740e79e7fadbf1bca04ccfe8e64`  
		Last Modified: Wed, 11 Jul 2018 09:43:06 GMT  
		Size: 398.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.10-alpine` - linux; 386

```console
$ docker pull redis@sha256:ae54cb5b30f30284eed9796e56ad07e02eb5429a424b3163ed7a3116acf66a33
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11228539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f01a1397dd15a40bbfd83d4c3a8f4b50011e83c258dc02aeb37d8f9f71da0872`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 06 Jul 2018 15:02:06 GMT
ADD file:ebd40cda2f6087daf4d14e6dc1ee0b4a0fb5dc96c70129be8e07de0e5c628312 in / 
# Fri, 06 Jul 2018 15:02:07 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 15:02:07 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 10:59:08 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 11 Jul 2018 10:59:09 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 11 Jul 2018 11:00:24 GMT
ENV REDIS_VERSION=4.0.10
# Wed, 11 Jul 2018 11:00:24 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Wed, 11 Jul 2018 11:00:25 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Wed, 11 Jul 2018 11:00:54 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 11 Jul 2018 11:00:55 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 11 Jul 2018 11:00:55 GMT
VOLUME [/data]
# Wed, 11 Jul 2018 11:00:55 GMT
WORKDIR /data
# Wed, 11 Jul 2018 11:00:55 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 11 Jul 2018 11:00:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jul 2018 11:00:56 GMT
EXPOSE 6379/tcp
# Wed, 11 Jul 2018 11:00:56 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:ef15772113129a5330876ce10683bbf6509a4c4c99b3a99894dcbc7560975052`  
		Last Modified: Fri, 06 Jul 2018 15:02:46 GMT  
		Size: 2.3 MB (2270920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6df692b84cf35e6038d677f9ab7de2a3c671c57671043da1d20d99252e0d9c42`  
		Last Modified: Fri, 06 Jul 2018 15:02:43 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92b65fcd46a9888f65f4ba2dd7149e5d5433d9f8ee6d831c0178337fafcd6174`  
		Last Modified: Wed, 11 Jul 2018 11:01:57 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7c395347e9dff1709fe37c615afc2c9a112317d08e5af3e244a49c6d041528a`  
		Last Modified: Wed, 11 Jul 2018 11:01:57 GMT  
		Size: 9.1 KB (9124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e5cf6056442300c04421065df305e1c5b9554cfdf7e752b38827f9f8de69949`  
		Last Modified: Wed, 11 Jul 2018 11:02:29 GMT  
		Size: 8.9 MB (8946573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85c6d4f5941facb2f46bd67dc2b8cfe59cce833bd66a099504bbb6392f88ae9d`  
		Last Modified: Wed, 11 Jul 2018 11:02:25 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2d698f3b19cb2135cdea72c94836d6d344e96cdf01d26d98155c7452f59f10f`  
		Last Modified: Wed, 11 Jul 2018 11:02:25 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.10-alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:7e3d726348b3c671c82849b930466a2c5d9a653bf8cee20b05d22d30c68a0e75
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.7 MB (11707798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ca883f49c08aa897718adcb8bad9087d8d904aa45b1ac2368db1399aae58752`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 06 Jul 2018 08:18:09 GMT
ADD file:4ff20d593b16518d45b1b1d6efdab141199316dba7a53ce7459249f5de690dfd in / 
# Fri, 06 Jul 2018 08:18:10 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:18:11 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 10:29:07 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 11 Jul 2018 10:29:10 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 11 Jul 2018 10:30:59 GMT
ENV REDIS_VERSION=4.0.10
# Wed, 11 Jul 2018 10:31:00 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Wed, 11 Jul 2018 10:31:01 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Wed, 11 Jul 2018 10:31:28 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 11 Jul 2018 10:31:32 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 11 Jul 2018 10:31:39 GMT
VOLUME [/data]
# Wed, 11 Jul 2018 10:31:40 GMT
WORKDIR /data
# Wed, 11 Jul 2018 10:31:51 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 11 Jul 2018 10:31:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jul 2018 10:31:54 GMT
EXPOSE 6379/tcp
# Wed, 11 Jul 2018 10:31:56 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e642bcb5b1890a07dd2fc8be2bc35edf5e2b651d4993e71caef03b4b43ace970`  
		Last Modified: Fri, 06 Jul 2018 08:18:44 GMT  
		Size: 2.2 MB (2194861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e09410b1fce4c4630b3bc57c6ee158ee9821ec415d0acaa1607b9e0bcf76d91`  
		Last Modified: Fri, 06 Jul 2018 08:18:43 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0ff6034eb412b571271c235e27e06653a8c858164a627463f13b8ab52c74843`  
		Last Modified: Wed, 11 Jul 2018 10:34:00 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb36900be1e1e93c13e63a61812c55e9d7ac5ecdb09877b280822361acc94394`  
		Last Modified: Wed, 11 Jul 2018 10:33:59 GMT  
		Size: 9.5 KB (9509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2c40a6326b6b59378539f2f86b3bd45afe2cb905363d05507a01427721910b6`  
		Last Modified: Wed, 11 Jul 2018 10:34:31 GMT  
		Size: 9.5 MB (9501435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89c6732ff87de8255dbe95b85e1c26c26faff46a566a1bbc683dcfac53960e9f`  
		Last Modified: Wed, 11 Jul 2018 10:34:28 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78475b3cdab4838abeae013961bca2fcf0c67e6d3d331b7025db0d9b8543c65e`  
		Last Modified: Wed, 11 Jul 2018 10:34:28 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.10-alpine` - linux; s390x

```console
$ docker pull redis@sha256:2398b7389b9ab8710e118aa8fdfc57d63077b8f153add86aaff67eacf825c597
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.9 MB (11862170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a842416668dd999e8ef3d05706b8591abd15b303812ddb9d8abcfd629fc50fd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 06 Jul 2018 11:41:42 GMT
ADD file:376dd7fc34ad39570d2e20f3704305e788ae613c589445b3e8fb880147c3eb59 in / 
# Fri, 06 Jul 2018 11:41:43 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 11:41:43 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 11:55:18 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 11 Jul 2018 11:55:19 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 11 Jul 2018 11:56:04 GMT
ENV REDIS_VERSION=4.0.10
# Wed, 11 Jul 2018 11:56:04 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Wed, 11 Jul 2018 11:56:04 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Wed, 11 Jul 2018 11:56:36 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 11 Jul 2018 11:56:36 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 11 Jul 2018 11:56:37 GMT
VOLUME [/data]
# Wed, 11 Jul 2018 11:56:37 GMT
WORKDIR /data
# Wed, 11 Jul 2018 11:56:37 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 11 Jul 2018 11:56:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jul 2018 11:56:38 GMT
EXPOSE 6379/tcp
# Wed, 11 Jul 2018 11:56:38 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:cdf21ace94188d512903eea53ea8559677e0e6ffd5d6a180a1d88c118abc96fc`  
		Last Modified: Fri, 06 Jul 2018 11:42:01 GMT  
		Size: 2.3 MB (2307471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea178433f2f09080fbbf77f09da1b16d588b7ced380d495a2f2ad00d28468338`  
		Last Modified: Fri, 06 Jul 2018 11:42:00 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2a9a36327b56f40ee16a7f6340b3f9e353f4d78c49c98c9b07dadba1340578a`  
		Last Modified: Wed, 11 Jul 2018 11:57:31 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ea5a4d7de8ea3dca3ad24e1379981de341f538e7f33e134951cce1e00c54030`  
		Last Modified: Wed, 11 Jul 2018 11:57:31 GMT  
		Size: 9.2 KB (9239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8693b132ba2e231672869727c3f27015cb59a8e8dcd4a98844ec0564d0d66ff4`  
		Last Modified: Wed, 11 Jul 2018 11:57:46 GMT  
		Size: 9.5 MB (9543539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b8818d1b01d04aa02a7ca7d2e5fb7abddec7d4532092d593c67928b17283ff1`  
		Last Modified: Wed, 11 Jul 2018 11:57:43 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c9abd12ff68d5af386798f6fd5ebbabeecfcba06ce72c6dfc676c4e736d99db`  
		Last Modified: Wed, 11 Jul 2018 11:57:43 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0-32bit`

```console
$ docker pull redis@sha256:33a9c9646770e345e955213d734b82181e58fcdaead0cafb2d77b3c496897abc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4.0-32bit` - linux; amd64

```console
$ docker pull redis@sha256:8a6ce7cb37cdc1bc285dca107456ce58bca4a74557b59a033a59f175c2299eea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.5 MB (36529016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f90a1c235eeb0233a7774936073d32546f79c58f643e8875b05c5604a3a1af0`
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
# Tue, 17 Jul 2018 07:26:26 GMT
ENV REDIS_VERSION=4.0.10
# Tue, 17 Jul 2018 07:26:27 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Tue, 17 Jul 2018 07:26:27 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Tue, 17 Jul 2018 07:27:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 07:28:32 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jul 2018 07:28:44 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 17 Jul 2018 07:28:44 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 07:28:45 GMT
WORKDIR /data
# Tue, 17 Jul 2018 07:28:45 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 17 Jul 2018 07:28:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 07:28:45 GMT
EXPOSE 6379/tcp
# Tue, 17 Jul 2018 07:28:46 GMT
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
	-	`sha256:9e0fd4549c4d0596d0d5e9344b2c6ffa10ee19aa426dc62851d4d3233269eb7b`  
		Last Modified: Tue, 17 Jul 2018 07:35:24 GMT  
		Size: 4.8 MB (4848259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9117524dfd4bbd0a7c3d295d24b82a57478db30d0def5e1a137280a450f4af7`  
		Last Modified: Tue, 17 Jul 2018 07:35:26 GMT  
		Size: 8.3 MB (8251329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67ab96d34d5ff84919b98ee9f3c1d992b9ba850b850f9a9004f44ea3fd06df49`  
		Last Modified: Tue, 17 Jul 2018 07:35:23 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc87c6ff97a9637489a374d852bd97e4cf87fb1dc77bdc108970da4bd34362b6`  
		Last Modified: Tue, 17 Jul 2018 07:35:23 GMT  
		Size: 409.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0-alpine`

```console
$ docker pull redis@sha256:e57274dac037e5b0c7680717fcaaa0efeffb23430e54e839c50819c9d842a38c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redis:4.0-alpine` - linux; amd64

```console
$ docker pull redis@sha256:d5f25b8d0f6125579cd3ac00a5a6e017ed55721d1b0850a3915da501fe7fd571
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.6 MB (11624926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80581db8c700155a91bec6fd6398dad9733135e7c58a19472aa679e8367692ab`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 00:55:42 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 11 Jul 2018 00:55:43 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 11 Jul 2018 00:56:55 GMT
ENV REDIS_VERSION=4.0.10
# Wed, 11 Jul 2018 00:56:55 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Wed, 11 Jul 2018 00:56:55 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Wed, 11 Jul 2018 00:57:19 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 11 Jul 2018 00:57:20 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 11 Jul 2018 00:57:21 GMT
VOLUME [/data]
# Wed, 11 Jul 2018 00:57:21 GMT
WORKDIR /data
# Wed, 11 Jul 2018 00:57:21 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 11 Jul 2018 00:57:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jul 2018 00:57:22 GMT
EXPOSE 6379/tcp
# Wed, 11 Jul 2018 00:57:22 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f20bd2a5c234ffab42de6cbf83522946614b21b642a8208dca6b0fd614c31db`  
		Last Modified: Wed, 11 Jul 2018 00:58:27 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:782ff7702b5cd0a7c0109740838c74945fc27e4ce34e1028c24bf73f8249a63a`  
		Last Modified: Wed, 11 Jul 2018 00:58:27 GMT  
		Size: 9.1 KB (9071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd719ead7ee305492514a8dfa2afcd0979a16e8192836b4aaed98d8d932973c0`  
		Last Modified: Wed, 11 Jul 2018 00:59:08 GMT  
		Size: 9.4 MB (9407568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01018940af9a67873ad6737c275cb134372cdf1cda565af58dd14a1e3b85ab2a`  
		Last Modified: Wed, 11 Jul 2018 00:59:05 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f1bfdda9588f5c0643b485580060b460b21b5331f4760778ef3279680e20966`  
		Last Modified: Wed, 11 Jul 2018 00:59:05 GMT  
		Size: 398.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:b3e481a692c4fce21591fbaa4d7588bc6de5ae65161b3d7417e255dd22cabb71
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7968247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c779a2af88b86fffc4ad32a4de83d10f1530ee8cd143552f6bde13f4c009f674`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 06 Jul 2018 07:53:29 GMT
ADD file:122e3422d9afa971806601812374fdd9d00c8edc8e9a6df7256e2caa85fab6d1 in / 
# Fri, 06 Jul 2018 07:53:30 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 07:53:30 GMT
CMD ["/bin/sh"]
# Sat, 14 Jul 2018 11:45:22 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 14 Jul 2018 11:45:27 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 14 Jul 2018 11:50:01 GMT
ENV REDIS_VERSION=4.0.10
# Sat, 14 Jul 2018 11:50:01 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Sat, 14 Jul 2018 11:50:03 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Sat, 14 Jul 2018 11:53:32 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 14 Jul 2018 11:53:36 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 14 Jul 2018 11:53:37 GMT
VOLUME [/data]
# Sat, 14 Jul 2018 11:53:38 GMT
WORKDIR /data
# Sat, 14 Jul 2018 11:53:39 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 14 Jul 2018 11:53:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 14 Jul 2018 11:53:41 GMT
EXPOSE 6379/tcp
# Sat, 14 Jul 2018 11:53:41 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:ee7d700abbf209aa401ef5d53f86af298a25e8154b3259036e9307d08f255c5d`  
		Last Modified: Fri, 06 Jul 2018 07:53:45 GMT  
		Size: 2.1 MB (2145998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1653f4692c1ccea69cd46121d4f1371957f66e97a20141371dd4da10ebaec19`  
		Last Modified: Fri, 06 Jul 2018 07:53:45 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:227a96f1d31d3ceb90336a4a116e3e60b3a1fea72ae1f065e88a6d43417674ff`  
		Last Modified: Sat, 14 Jul 2018 11:59:20 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:407d2c8c18404f038c5326de3eadc14240dea0b342a6237b037d457e4d381d2b`  
		Last Modified: Sat, 14 Jul 2018 11:59:20 GMT  
		Size: 9.0 KB (8980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60992a6a1b91924e91cf90c9671fe2d99c46702895d6ad933bf051e9d3466f3a`  
		Last Modified: Sat, 14 Jul 2018 11:59:55 GMT  
		Size: 5.8 MB (5811279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7136ff1ceed2688f09cfd6d7e0169b4de7b1d36af4744df8120f1caa2caa9ded`  
		Last Modified: Sat, 14 Jul 2018 11:59:48 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c38fded17786397ed4d8613b02b7d3d7d1b87f40912be5677388f909d074fc51`  
		Last Modified: Sat, 14 Jul 2018 11:59:49 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:8f9dc588a0f8e521923fc61b36b9f54c6c19e8d195e8bbc987515388f4b80e8e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.3 MB (11274306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71e4a3388a3fc0459a7009d80bdea4509d59e607be5768f977712648a39a762a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 06 Jul 2018 08:41:03 GMT
ADD file:199a5a48bddabaf1f649f58f3b17c323a1aa1a50e939dfdea3542e4041e91b7b in / 
# Fri, 06 Jul 2018 08:41:03 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:41:04 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 09:37:50 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 11 Jul 2018 09:37:52 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 11 Jul 2018 09:39:48 GMT
ENV REDIS_VERSION=4.0.10
# Wed, 11 Jul 2018 09:39:49 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Wed, 11 Jul 2018 09:39:49 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Wed, 11 Jul 2018 09:40:34 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 11 Jul 2018 09:40:36 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 11 Jul 2018 09:40:37 GMT
VOLUME [/data]
# Wed, 11 Jul 2018 09:40:37 GMT
WORKDIR /data
# Wed, 11 Jul 2018 09:40:38 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 11 Jul 2018 09:40:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jul 2018 09:40:40 GMT
EXPOSE 6379/tcp
# Wed, 11 Jul 2018 09:40:41 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:47e04371c99027fae42871b720fdc6cdddcb65062bfa05f0c3bb0a594cb5bbbd`  
		Last Modified: Wed, 27 Jun 2018 19:15:35 GMT  
		Size: 2.1 MB (2099514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4103359e1ecd9a7253d8b8a041d4e81db1ff4a5e1950bc0e02305d221c9e6c2`  
		Last Modified: Fri, 06 Jul 2018 08:42:09 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9721f4fc0d2aca17304d7c1cbef676a8fa7d41c3f0c7201b22d695ff41dfc625`  
		Last Modified: Wed, 11 Jul 2018 09:42:31 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43bc6ac33e9f951cbb1f9ca722ba63c430fa5b2a12e0a46efe7f1e5e15920b16`  
		Last Modified: Wed, 11 Jul 2018 09:42:31 GMT  
		Size: 8.9 KB (8932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8205b31384995cfe4381d5bc6d4c777589c84b661e6406888c6e68bb215a9ce3`  
		Last Modified: Wed, 11 Jul 2018 09:43:09 GMT  
		Size: 9.2 MB (9163938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccc6caaf591076f59f89644d505bf149dfa92f82e93369e61a76695c6763d7b8`  
		Last Modified: Wed, 11 Jul 2018 09:43:05 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a647132a51ce7a5b39ee00a9d9d84db17c6c740e79e7fadbf1bca04ccfe8e64`  
		Last Modified: Wed, 11 Jul 2018 09:43:06 GMT  
		Size: 398.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine` - linux; 386

```console
$ docker pull redis@sha256:ae54cb5b30f30284eed9796e56ad07e02eb5429a424b3163ed7a3116acf66a33
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11228539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f01a1397dd15a40bbfd83d4c3a8f4b50011e83c258dc02aeb37d8f9f71da0872`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 06 Jul 2018 15:02:06 GMT
ADD file:ebd40cda2f6087daf4d14e6dc1ee0b4a0fb5dc96c70129be8e07de0e5c628312 in / 
# Fri, 06 Jul 2018 15:02:07 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 15:02:07 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 10:59:08 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 11 Jul 2018 10:59:09 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 11 Jul 2018 11:00:24 GMT
ENV REDIS_VERSION=4.0.10
# Wed, 11 Jul 2018 11:00:24 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Wed, 11 Jul 2018 11:00:25 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Wed, 11 Jul 2018 11:00:54 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 11 Jul 2018 11:00:55 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 11 Jul 2018 11:00:55 GMT
VOLUME [/data]
# Wed, 11 Jul 2018 11:00:55 GMT
WORKDIR /data
# Wed, 11 Jul 2018 11:00:55 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 11 Jul 2018 11:00:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jul 2018 11:00:56 GMT
EXPOSE 6379/tcp
# Wed, 11 Jul 2018 11:00:56 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:ef15772113129a5330876ce10683bbf6509a4c4c99b3a99894dcbc7560975052`  
		Last Modified: Fri, 06 Jul 2018 15:02:46 GMT  
		Size: 2.3 MB (2270920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6df692b84cf35e6038d677f9ab7de2a3c671c57671043da1d20d99252e0d9c42`  
		Last Modified: Fri, 06 Jul 2018 15:02:43 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92b65fcd46a9888f65f4ba2dd7149e5d5433d9f8ee6d831c0178337fafcd6174`  
		Last Modified: Wed, 11 Jul 2018 11:01:57 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7c395347e9dff1709fe37c615afc2c9a112317d08e5af3e244a49c6d041528a`  
		Last Modified: Wed, 11 Jul 2018 11:01:57 GMT  
		Size: 9.1 KB (9124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e5cf6056442300c04421065df305e1c5b9554cfdf7e752b38827f9f8de69949`  
		Last Modified: Wed, 11 Jul 2018 11:02:29 GMT  
		Size: 8.9 MB (8946573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85c6d4f5941facb2f46bd67dc2b8cfe59cce833bd66a099504bbb6392f88ae9d`  
		Last Modified: Wed, 11 Jul 2018 11:02:25 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2d698f3b19cb2135cdea72c94836d6d344e96cdf01d26d98155c7452f59f10f`  
		Last Modified: Wed, 11 Jul 2018 11:02:25 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:7e3d726348b3c671c82849b930466a2c5d9a653bf8cee20b05d22d30c68a0e75
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.7 MB (11707798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ca883f49c08aa897718adcb8bad9087d8d904aa45b1ac2368db1399aae58752`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 06 Jul 2018 08:18:09 GMT
ADD file:4ff20d593b16518d45b1b1d6efdab141199316dba7a53ce7459249f5de690dfd in / 
# Fri, 06 Jul 2018 08:18:10 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:18:11 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 10:29:07 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 11 Jul 2018 10:29:10 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 11 Jul 2018 10:30:59 GMT
ENV REDIS_VERSION=4.0.10
# Wed, 11 Jul 2018 10:31:00 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Wed, 11 Jul 2018 10:31:01 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Wed, 11 Jul 2018 10:31:28 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 11 Jul 2018 10:31:32 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 11 Jul 2018 10:31:39 GMT
VOLUME [/data]
# Wed, 11 Jul 2018 10:31:40 GMT
WORKDIR /data
# Wed, 11 Jul 2018 10:31:51 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 11 Jul 2018 10:31:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jul 2018 10:31:54 GMT
EXPOSE 6379/tcp
# Wed, 11 Jul 2018 10:31:56 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e642bcb5b1890a07dd2fc8be2bc35edf5e2b651d4993e71caef03b4b43ace970`  
		Last Modified: Fri, 06 Jul 2018 08:18:44 GMT  
		Size: 2.2 MB (2194861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e09410b1fce4c4630b3bc57c6ee158ee9821ec415d0acaa1607b9e0bcf76d91`  
		Last Modified: Fri, 06 Jul 2018 08:18:43 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0ff6034eb412b571271c235e27e06653a8c858164a627463f13b8ab52c74843`  
		Last Modified: Wed, 11 Jul 2018 10:34:00 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb36900be1e1e93c13e63a61812c55e9d7ac5ecdb09877b280822361acc94394`  
		Last Modified: Wed, 11 Jul 2018 10:33:59 GMT  
		Size: 9.5 KB (9509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2c40a6326b6b59378539f2f86b3bd45afe2cb905363d05507a01427721910b6`  
		Last Modified: Wed, 11 Jul 2018 10:34:31 GMT  
		Size: 9.5 MB (9501435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89c6732ff87de8255dbe95b85e1c26c26faff46a566a1bbc683dcfac53960e9f`  
		Last Modified: Wed, 11 Jul 2018 10:34:28 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78475b3cdab4838abeae013961bca2fcf0c67e6d3d331b7025db0d9b8543c65e`  
		Last Modified: Wed, 11 Jul 2018 10:34:28 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine` - linux; s390x

```console
$ docker pull redis@sha256:2398b7389b9ab8710e118aa8fdfc57d63077b8f153add86aaff67eacf825c597
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.9 MB (11862170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a842416668dd999e8ef3d05706b8591abd15b303812ddb9d8abcfd629fc50fd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 06 Jul 2018 11:41:42 GMT
ADD file:376dd7fc34ad39570d2e20f3704305e788ae613c589445b3e8fb880147c3eb59 in / 
# Fri, 06 Jul 2018 11:41:43 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 11:41:43 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 11:55:18 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 11 Jul 2018 11:55:19 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 11 Jul 2018 11:56:04 GMT
ENV REDIS_VERSION=4.0.10
# Wed, 11 Jul 2018 11:56:04 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Wed, 11 Jul 2018 11:56:04 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Wed, 11 Jul 2018 11:56:36 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 11 Jul 2018 11:56:36 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 11 Jul 2018 11:56:37 GMT
VOLUME [/data]
# Wed, 11 Jul 2018 11:56:37 GMT
WORKDIR /data
# Wed, 11 Jul 2018 11:56:37 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 11 Jul 2018 11:56:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jul 2018 11:56:38 GMT
EXPOSE 6379/tcp
# Wed, 11 Jul 2018 11:56:38 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:cdf21ace94188d512903eea53ea8559677e0e6ffd5d6a180a1d88c118abc96fc`  
		Last Modified: Fri, 06 Jul 2018 11:42:01 GMT  
		Size: 2.3 MB (2307471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea178433f2f09080fbbf77f09da1b16d588b7ced380d495a2f2ad00d28468338`  
		Last Modified: Fri, 06 Jul 2018 11:42:00 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2a9a36327b56f40ee16a7f6340b3f9e353f4d78c49c98c9b07dadba1340578a`  
		Last Modified: Wed, 11 Jul 2018 11:57:31 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ea5a4d7de8ea3dca3ad24e1379981de341f538e7f33e134951cce1e00c54030`  
		Last Modified: Wed, 11 Jul 2018 11:57:31 GMT  
		Size: 9.2 KB (9239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8693b132ba2e231672869727c3f27015cb59a8e8dcd4a98844ec0564d0d66ff4`  
		Last Modified: Wed, 11 Jul 2018 11:57:46 GMT  
		Size: 9.5 MB (9543539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b8818d1b01d04aa02a7ca7d2e5fb7abddec7d4532092d593c67928b17283ff1`  
		Last Modified: Wed, 11 Jul 2018 11:57:43 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c9abd12ff68d5af386798f6fd5ebbabeecfcba06ce72c6dfc676c4e736d99db`  
		Last Modified: Wed, 11 Jul 2018 11:57:43 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4-32bit`

```console
$ docker pull redis@sha256:33a9c9646770e345e955213d734b82181e58fcdaead0cafb2d77b3c496897abc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4-32bit` - linux; amd64

```console
$ docker pull redis@sha256:8a6ce7cb37cdc1bc285dca107456ce58bca4a74557b59a033a59f175c2299eea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.5 MB (36529016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f90a1c235eeb0233a7774936073d32546f79c58f643e8875b05c5604a3a1af0`
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
# Tue, 17 Jul 2018 07:26:26 GMT
ENV REDIS_VERSION=4.0.10
# Tue, 17 Jul 2018 07:26:27 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Tue, 17 Jul 2018 07:26:27 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Tue, 17 Jul 2018 07:27:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 07:28:32 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jul 2018 07:28:44 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 17 Jul 2018 07:28:44 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 07:28:45 GMT
WORKDIR /data
# Tue, 17 Jul 2018 07:28:45 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 17 Jul 2018 07:28:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 07:28:45 GMT
EXPOSE 6379/tcp
# Tue, 17 Jul 2018 07:28:46 GMT
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
	-	`sha256:9e0fd4549c4d0596d0d5e9344b2c6ffa10ee19aa426dc62851d4d3233269eb7b`  
		Last Modified: Tue, 17 Jul 2018 07:35:24 GMT  
		Size: 4.8 MB (4848259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9117524dfd4bbd0a7c3d295d24b82a57478db30d0def5e1a137280a450f4af7`  
		Last Modified: Tue, 17 Jul 2018 07:35:26 GMT  
		Size: 8.3 MB (8251329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67ab96d34d5ff84919b98ee9f3c1d992b9ba850b850f9a9004f44ea3fd06df49`  
		Last Modified: Tue, 17 Jul 2018 07:35:23 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc87c6ff97a9637489a374d852bd97e4cf87fb1dc77bdc108970da4bd34362b6`  
		Last Modified: Tue, 17 Jul 2018 07:35:23 GMT  
		Size: 409.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4-alpine`

```console
$ docker pull redis@sha256:e57274dac037e5b0c7680717fcaaa0efeffb23430e54e839c50819c9d842a38c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redis:4-alpine` - linux; amd64

```console
$ docker pull redis@sha256:d5f25b8d0f6125579cd3ac00a5a6e017ed55721d1b0850a3915da501fe7fd571
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.6 MB (11624926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80581db8c700155a91bec6fd6398dad9733135e7c58a19472aa679e8367692ab`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 00:55:42 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 11 Jul 2018 00:55:43 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 11 Jul 2018 00:56:55 GMT
ENV REDIS_VERSION=4.0.10
# Wed, 11 Jul 2018 00:56:55 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Wed, 11 Jul 2018 00:56:55 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Wed, 11 Jul 2018 00:57:19 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 11 Jul 2018 00:57:20 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 11 Jul 2018 00:57:21 GMT
VOLUME [/data]
# Wed, 11 Jul 2018 00:57:21 GMT
WORKDIR /data
# Wed, 11 Jul 2018 00:57:21 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 11 Jul 2018 00:57:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jul 2018 00:57:22 GMT
EXPOSE 6379/tcp
# Wed, 11 Jul 2018 00:57:22 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f20bd2a5c234ffab42de6cbf83522946614b21b642a8208dca6b0fd614c31db`  
		Last Modified: Wed, 11 Jul 2018 00:58:27 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:782ff7702b5cd0a7c0109740838c74945fc27e4ce34e1028c24bf73f8249a63a`  
		Last Modified: Wed, 11 Jul 2018 00:58:27 GMT  
		Size: 9.1 KB (9071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd719ead7ee305492514a8dfa2afcd0979a16e8192836b4aaed98d8d932973c0`  
		Last Modified: Wed, 11 Jul 2018 00:59:08 GMT  
		Size: 9.4 MB (9407568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01018940af9a67873ad6737c275cb134372cdf1cda565af58dd14a1e3b85ab2a`  
		Last Modified: Wed, 11 Jul 2018 00:59:05 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f1bfdda9588f5c0643b485580060b460b21b5331f4760778ef3279680e20966`  
		Last Modified: Wed, 11 Jul 2018 00:59:05 GMT  
		Size: 398.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:b3e481a692c4fce21591fbaa4d7588bc6de5ae65161b3d7417e255dd22cabb71
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7968247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c779a2af88b86fffc4ad32a4de83d10f1530ee8cd143552f6bde13f4c009f674`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 06 Jul 2018 07:53:29 GMT
ADD file:122e3422d9afa971806601812374fdd9d00c8edc8e9a6df7256e2caa85fab6d1 in / 
# Fri, 06 Jul 2018 07:53:30 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 07:53:30 GMT
CMD ["/bin/sh"]
# Sat, 14 Jul 2018 11:45:22 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 14 Jul 2018 11:45:27 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 14 Jul 2018 11:50:01 GMT
ENV REDIS_VERSION=4.0.10
# Sat, 14 Jul 2018 11:50:01 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Sat, 14 Jul 2018 11:50:03 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Sat, 14 Jul 2018 11:53:32 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 14 Jul 2018 11:53:36 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 14 Jul 2018 11:53:37 GMT
VOLUME [/data]
# Sat, 14 Jul 2018 11:53:38 GMT
WORKDIR /data
# Sat, 14 Jul 2018 11:53:39 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 14 Jul 2018 11:53:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 14 Jul 2018 11:53:41 GMT
EXPOSE 6379/tcp
# Sat, 14 Jul 2018 11:53:41 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:ee7d700abbf209aa401ef5d53f86af298a25e8154b3259036e9307d08f255c5d`  
		Last Modified: Fri, 06 Jul 2018 07:53:45 GMT  
		Size: 2.1 MB (2145998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1653f4692c1ccea69cd46121d4f1371957f66e97a20141371dd4da10ebaec19`  
		Last Modified: Fri, 06 Jul 2018 07:53:45 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:227a96f1d31d3ceb90336a4a116e3e60b3a1fea72ae1f065e88a6d43417674ff`  
		Last Modified: Sat, 14 Jul 2018 11:59:20 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:407d2c8c18404f038c5326de3eadc14240dea0b342a6237b037d457e4d381d2b`  
		Last Modified: Sat, 14 Jul 2018 11:59:20 GMT  
		Size: 9.0 KB (8980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60992a6a1b91924e91cf90c9671fe2d99c46702895d6ad933bf051e9d3466f3a`  
		Last Modified: Sat, 14 Jul 2018 11:59:55 GMT  
		Size: 5.8 MB (5811279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7136ff1ceed2688f09cfd6d7e0169b4de7b1d36af4744df8120f1caa2caa9ded`  
		Last Modified: Sat, 14 Jul 2018 11:59:48 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c38fded17786397ed4d8613b02b7d3d7d1b87f40912be5677388f909d074fc51`  
		Last Modified: Sat, 14 Jul 2018 11:59:49 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:8f9dc588a0f8e521923fc61b36b9f54c6c19e8d195e8bbc987515388f4b80e8e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.3 MB (11274306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71e4a3388a3fc0459a7009d80bdea4509d59e607be5768f977712648a39a762a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 06 Jul 2018 08:41:03 GMT
ADD file:199a5a48bddabaf1f649f58f3b17c323a1aa1a50e939dfdea3542e4041e91b7b in / 
# Fri, 06 Jul 2018 08:41:03 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:41:04 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 09:37:50 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 11 Jul 2018 09:37:52 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 11 Jul 2018 09:39:48 GMT
ENV REDIS_VERSION=4.0.10
# Wed, 11 Jul 2018 09:39:49 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Wed, 11 Jul 2018 09:39:49 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Wed, 11 Jul 2018 09:40:34 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 11 Jul 2018 09:40:36 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 11 Jul 2018 09:40:37 GMT
VOLUME [/data]
# Wed, 11 Jul 2018 09:40:37 GMT
WORKDIR /data
# Wed, 11 Jul 2018 09:40:38 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 11 Jul 2018 09:40:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jul 2018 09:40:40 GMT
EXPOSE 6379/tcp
# Wed, 11 Jul 2018 09:40:41 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:47e04371c99027fae42871b720fdc6cdddcb65062bfa05f0c3bb0a594cb5bbbd`  
		Last Modified: Wed, 27 Jun 2018 19:15:35 GMT  
		Size: 2.1 MB (2099514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4103359e1ecd9a7253d8b8a041d4e81db1ff4a5e1950bc0e02305d221c9e6c2`  
		Last Modified: Fri, 06 Jul 2018 08:42:09 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9721f4fc0d2aca17304d7c1cbef676a8fa7d41c3f0c7201b22d695ff41dfc625`  
		Last Modified: Wed, 11 Jul 2018 09:42:31 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43bc6ac33e9f951cbb1f9ca722ba63c430fa5b2a12e0a46efe7f1e5e15920b16`  
		Last Modified: Wed, 11 Jul 2018 09:42:31 GMT  
		Size: 8.9 KB (8932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8205b31384995cfe4381d5bc6d4c777589c84b661e6406888c6e68bb215a9ce3`  
		Last Modified: Wed, 11 Jul 2018 09:43:09 GMT  
		Size: 9.2 MB (9163938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccc6caaf591076f59f89644d505bf149dfa92f82e93369e61a76695c6763d7b8`  
		Last Modified: Wed, 11 Jul 2018 09:43:05 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a647132a51ce7a5b39ee00a9d9d84db17c6c740e79e7fadbf1bca04ccfe8e64`  
		Last Modified: Wed, 11 Jul 2018 09:43:06 GMT  
		Size: 398.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine` - linux; 386

```console
$ docker pull redis@sha256:ae54cb5b30f30284eed9796e56ad07e02eb5429a424b3163ed7a3116acf66a33
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11228539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f01a1397dd15a40bbfd83d4c3a8f4b50011e83c258dc02aeb37d8f9f71da0872`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 06 Jul 2018 15:02:06 GMT
ADD file:ebd40cda2f6087daf4d14e6dc1ee0b4a0fb5dc96c70129be8e07de0e5c628312 in / 
# Fri, 06 Jul 2018 15:02:07 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 15:02:07 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 10:59:08 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 11 Jul 2018 10:59:09 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 11 Jul 2018 11:00:24 GMT
ENV REDIS_VERSION=4.0.10
# Wed, 11 Jul 2018 11:00:24 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Wed, 11 Jul 2018 11:00:25 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Wed, 11 Jul 2018 11:00:54 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 11 Jul 2018 11:00:55 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 11 Jul 2018 11:00:55 GMT
VOLUME [/data]
# Wed, 11 Jul 2018 11:00:55 GMT
WORKDIR /data
# Wed, 11 Jul 2018 11:00:55 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 11 Jul 2018 11:00:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jul 2018 11:00:56 GMT
EXPOSE 6379/tcp
# Wed, 11 Jul 2018 11:00:56 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:ef15772113129a5330876ce10683bbf6509a4c4c99b3a99894dcbc7560975052`  
		Last Modified: Fri, 06 Jul 2018 15:02:46 GMT  
		Size: 2.3 MB (2270920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6df692b84cf35e6038d677f9ab7de2a3c671c57671043da1d20d99252e0d9c42`  
		Last Modified: Fri, 06 Jul 2018 15:02:43 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92b65fcd46a9888f65f4ba2dd7149e5d5433d9f8ee6d831c0178337fafcd6174`  
		Last Modified: Wed, 11 Jul 2018 11:01:57 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7c395347e9dff1709fe37c615afc2c9a112317d08e5af3e244a49c6d041528a`  
		Last Modified: Wed, 11 Jul 2018 11:01:57 GMT  
		Size: 9.1 KB (9124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e5cf6056442300c04421065df305e1c5b9554cfdf7e752b38827f9f8de69949`  
		Last Modified: Wed, 11 Jul 2018 11:02:29 GMT  
		Size: 8.9 MB (8946573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85c6d4f5941facb2f46bd67dc2b8cfe59cce833bd66a099504bbb6392f88ae9d`  
		Last Modified: Wed, 11 Jul 2018 11:02:25 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2d698f3b19cb2135cdea72c94836d6d344e96cdf01d26d98155c7452f59f10f`  
		Last Modified: Wed, 11 Jul 2018 11:02:25 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:7e3d726348b3c671c82849b930466a2c5d9a653bf8cee20b05d22d30c68a0e75
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.7 MB (11707798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ca883f49c08aa897718adcb8bad9087d8d904aa45b1ac2368db1399aae58752`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 06 Jul 2018 08:18:09 GMT
ADD file:4ff20d593b16518d45b1b1d6efdab141199316dba7a53ce7459249f5de690dfd in / 
# Fri, 06 Jul 2018 08:18:10 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:18:11 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 10:29:07 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 11 Jul 2018 10:29:10 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 11 Jul 2018 10:30:59 GMT
ENV REDIS_VERSION=4.0.10
# Wed, 11 Jul 2018 10:31:00 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Wed, 11 Jul 2018 10:31:01 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Wed, 11 Jul 2018 10:31:28 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 11 Jul 2018 10:31:32 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 11 Jul 2018 10:31:39 GMT
VOLUME [/data]
# Wed, 11 Jul 2018 10:31:40 GMT
WORKDIR /data
# Wed, 11 Jul 2018 10:31:51 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 11 Jul 2018 10:31:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jul 2018 10:31:54 GMT
EXPOSE 6379/tcp
# Wed, 11 Jul 2018 10:31:56 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e642bcb5b1890a07dd2fc8be2bc35edf5e2b651d4993e71caef03b4b43ace970`  
		Last Modified: Fri, 06 Jul 2018 08:18:44 GMT  
		Size: 2.2 MB (2194861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e09410b1fce4c4630b3bc57c6ee158ee9821ec415d0acaa1607b9e0bcf76d91`  
		Last Modified: Fri, 06 Jul 2018 08:18:43 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0ff6034eb412b571271c235e27e06653a8c858164a627463f13b8ab52c74843`  
		Last Modified: Wed, 11 Jul 2018 10:34:00 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb36900be1e1e93c13e63a61812c55e9d7ac5ecdb09877b280822361acc94394`  
		Last Modified: Wed, 11 Jul 2018 10:33:59 GMT  
		Size: 9.5 KB (9509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2c40a6326b6b59378539f2f86b3bd45afe2cb905363d05507a01427721910b6`  
		Last Modified: Wed, 11 Jul 2018 10:34:31 GMT  
		Size: 9.5 MB (9501435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89c6732ff87de8255dbe95b85e1c26c26faff46a566a1bbc683dcfac53960e9f`  
		Last Modified: Wed, 11 Jul 2018 10:34:28 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78475b3cdab4838abeae013961bca2fcf0c67e6d3d331b7025db0d9b8543c65e`  
		Last Modified: Wed, 11 Jul 2018 10:34:28 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine` - linux; s390x

```console
$ docker pull redis@sha256:2398b7389b9ab8710e118aa8fdfc57d63077b8f153add86aaff67eacf825c597
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.9 MB (11862170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a842416668dd999e8ef3d05706b8591abd15b303812ddb9d8abcfd629fc50fd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 06 Jul 2018 11:41:42 GMT
ADD file:376dd7fc34ad39570d2e20f3704305e788ae613c589445b3e8fb880147c3eb59 in / 
# Fri, 06 Jul 2018 11:41:43 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 11:41:43 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 11:55:18 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 11 Jul 2018 11:55:19 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 11 Jul 2018 11:56:04 GMT
ENV REDIS_VERSION=4.0.10
# Wed, 11 Jul 2018 11:56:04 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Wed, 11 Jul 2018 11:56:04 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Wed, 11 Jul 2018 11:56:36 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 11 Jul 2018 11:56:36 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 11 Jul 2018 11:56:37 GMT
VOLUME [/data]
# Wed, 11 Jul 2018 11:56:37 GMT
WORKDIR /data
# Wed, 11 Jul 2018 11:56:37 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 11 Jul 2018 11:56:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jul 2018 11:56:38 GMT
EXPOSE 6379/tcp
# Wed, 11 Jul 2018 11:56:38 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:cdf21ace94188d512903eea53ea8559677e0e6ffd5d6a180a1d88c118abc96fc`  
		Last Modified: Fri, 06 Jul 2018 11:42:01 GMT  
		Size: 2.3 MB (2307471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea178433f2f09080fbbf77f09da1b16d588b7ced380d495a2f2ad00d28468338`  
		Last Modified: Fri, 06 Jul 2018 11:42:00 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2a9a36327b56f40ee16a7f6340b3f9e353f4d78c49c98c9b07dadba1340578a`  
		Last Modified: Wed, 11 Jul 2018 11:57:31 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ea5a4d7de8ea3dca3ad24e1379981de341f538e7f33e134951cce1e00c54030`  
		Last Modified: Wed, 11 Jul 2018 11:57:31 GMT  
		Size: 9.2 KB (9239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8693b132ba2e231672869727c3f27015cb59a8e8dcd4a98844ec0564d0d66ff4`  
		Last Modified: Wed, 11 Jul 2018 11:57:46 GMT  
		Size: 9.5 MB (9543539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b8818d1b01d04aa02a7ca7d2e5fb7abddec7d4532092d593c67928b17283ff1`  
		Last Modified: Wed, 11 Jul 2018 11:57:43 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c9abd12ff68d5af386798f6fd5ebbabeecfcba06ce72c6dfc676c4e736d99db`  
		Last Modified: Wed, 11 Jul 2018 11:57:43 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0-rc`

```console
$ docker pull redis@sha256:d1aa87282939a3cd7940c46d56ada2656916b58f47820e4f111f8d3f369604e8
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

### `redis:5.0-rc` - linux; amd64

```console
$ docker pull redis@sha256:892d84ef15592a562afd625892bebfc9645b10222afa7f80a1bc01812a472c00
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.0 MB (34959189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29376b8df2ad006b998f5c270b813deee41459e7eafb1ff01dfd78b4d1be0dac`
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
# Tue, 17 Jul 2018 07:22:36 GMT
ENV REDIS_VERSION=5.0-rc3
# Tue, 17 Jul 2018 07:22:36 GMT
ENV REDIS_DOWNLOAD_URL=https://github.com/antirez/redis/archive/5.0-rc3.tar.gz
# Tue, 17 Jul 2018 07:22:36 GMT
ENV REDIS_DOWNLOAD_SHA=4bb2eeef3695d66d8b64767825acfeeb157d64536233eac7eae71b236fd6554f
# Tue, 17 Jul 2018 07:23:38 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jul 2018 07:23:38 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 17 Jul 2018 07:23:39 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 07:23:39 GMT
WORKDIR /data
# Tue, 17 Jul 2018 07:23:39 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 17 Jul 2018 07:23:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 07:23:51 GMT
EXPOSE 6379/tcp
# Tue, 17 Jul 2018 07:23:51 GMT
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
	-	`sha256:82f48c956e4d2fa0ebb10730cab2a9f5f76191746cc4e1550f5d6346763fcff3`  
		Last Modified: Tue, 17 Jul 2018 07:32:18 GMT  
		Size: 11.5 MB (11529767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0473f21709bcce35a1ee6c2b327687b89a287dfa3eb0f4f69fa651aed73ad5bb`  
		Last Modified: Tue, 17 Jul 2018 07:32:13 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60ec6b0d85e0271939b16101520bbbd82f7bf06580501893bbdca488555f66c0`  
		Last Modified: Tue, 17 Jul 2018 07:32:13 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-rc` - linux; arm variant v5

```console
$ docker pull redis@sha256:fd0771a72c929712211906c73d6e21717bae5db46172fb73dd84556e0b584111
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.3 MB (33268070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5358f695d27eba588f16bfa5270894b11c67c574814809c36fe017312472ee6`
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
# Tue, 17 Jul 2018 11:34:28 GMT
ENV REDIS_VERSION=5.0-rc3
# Tue, 17 Jul 2018 11:34:29 GMT
ENV REDIS_DOWNLOAD_URL=https://github.com/antirez/redis/archive/5.0-rc3.tar.gz
# Tue, 17 Jul 2018 11:34:29 GMT
ENV REDIS_DOWNLOAD_SHA=4bb2eeef3695d66d8b64767825acfeeb157d64536233eac7eae71b236fd6554f
# Tue, 17 Jul 2018 11:35:23 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jul 2018 11:35:24 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 17 Jul 2018 11:35:24 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 11:35:24 GMT
WORKDIR /data
# Tue, 17 Jul 2018 11:35:25 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 17 Jul 2018 11:35:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 11:35:25 GMT
EXPOSE 6379/tcp
# Tue, 17 Jul 2018 11:35:25 GMT
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
	-	`sha256:47f4253a8748a1536f84dafe2f24a1d4da4266e533f27e9c22f56c8000592fdc`  
		Last Modified: Tue, 17 Jul 2018 11:37:39 GMT  
		Size: 11.2 MB (11172063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:051f15aedad1227af2d6e3029bf9e1fedbe1e2e1f4928d1bea31f27c87b39ef7`  
		Last Modified: Tue, 17 Jul 2018 11:37:35 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2b8c405bd2b33feb12fd22b0781b942c86481d0e4bd1f80c95ecaeebbe9a684`  
		Last Modified: Tue, 17 Jul 2018 11:37:35 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-rc` - linux; arm variant v7

```console
$ docker pull redis@sha256:00c14bdc184fd736748a7cdc56ff379e7e611438f7384936642faeb07cc27524
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.1 MB (31079722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9c7629adde1b75c7c81f9fcd5115d06c31b56386b249eebb2e4db38f9283009`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Jun 2018 12:03:51 GMT
ADD file:d05cf75761bffd94ce908a55d38fc4966c194aa14492730dfdc1e52c3ddd0892 in / 
# Wed, 27 Jun 2018 12:03:54 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 14:18:29 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 14:18:29 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 14:18:48 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 28 Jun 2018 12:19:06 GMT
ENV REDIS_VERSION=5.0-rc3
# Thu, 28 Jun 2018 12:19:07 GMT
ENV REDIS_DOWNLOAD_URL=https://github.com/antirez/redis/archive/5.0-rc3.tar.gz
# Thu, 28 Jun 2018 12:19:07 GMT
ENV REDIS_DOWNLOAD_SHA=4bb2eeef3695d66d8b64767825acfeeb157d64536233eac7eae71b236fd6554f
# Thu, 28 Jun 2018 12:19:55 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 28 Jun 2018 12:19:58 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 28 Jun 2018 12:19:58 GMT
VOLUME [/data]
# Thu, 28 Jun 2018 12:19:59 GMT
WORKDIR /data
# Thu, 28 Jun 2018 12:19:59 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Thu, 28 Jun 2018 12:20:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Jun 2018 12:20:00 GMT
EXPOSE 6379/tcp
# Thu, 28 Jun 2018 12:20:00 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:a779870b6875e97ad1448eaf9befb46011e0fd10ef5014f59d63f624b51de26f`  
		Last Modified: Wed, 27 Jun 2018 12:13:30 GMT  
		Size: 19.3 MB (19286273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c5c410558b6543c5785cecbccb032fd4982038a92ba3b8bb4d5ab8d17e6bed7`  
		Last Modified: Wed, 27 Jun 2018 14:20:30 GMT  
		Size: 1.7 KB (1730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48b858312be07ebaa41456fe36334924f5e53a6a705c42b89b61f26bc6ebb357`  
		Last Modified: Wed, 27 Jun 2018 14:20:30 GMT  
		Size: 915.9 KB (915893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe7fcef903890174675b5984be56b46df096199fe9b22be663c5514e25b0ffef`  
		Last Modified: Thu, 28 Jun 2018 12:20:28 GMT  
		Size: 10.9 MB (10875293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b02b954928e9f10fa05d633cba53d0bb5dad3f2afcde48dbeb14e5d306094b39`  
		Last Modified: Thu, 28 Jun 2018 12:20:24 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fae10b28a168ae892cbd44d713c2645893753353eec2e0f8b78abacfdf070e7`  
		Last Modified: Thu, 28 Jun 2018 12:20:24 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-rc` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:b7ae07e9f47176a4e261ad357f25047bc0de2e20be9bebb35d224c7b8f53d576
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32592130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d93499001202ec73003755aaa544abd24fdbcca7fbfbc0dba6f9948d5a14c67`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:44 GMT
ADD file:b8a1907d99b0b9f75b52f8e25d5c346caf0244b325919c02090ab1e05ba1cf18 in / 
# Wed, 27 Jun 2018 08:47:45 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 13:29:17 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 13:29:18 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 13:30:37 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 28 Jun 2018 12:45:45 GMT
ENV REDIS_VERSION=5.0-rc3
# Thu, 28 Jun 2018 12:45:45 GMT
ENV REDIS_DOWNLOAD_URL=https://github.com/antirez/redis/archive/5.0-rc3.tar.gz
# Thu, 28 Jun 2018 12:45:46 GMT
ENV REDIS_DOWNLOAD_SHA=4bb2eeef3695d66d8b64767825acfeeb157d64536233eac7eae71b236fd6554f
# Thu, 28 Jun 2018 12:47:47 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 28 Jun 2018 12:47:49 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 28 Jun 2018 12:47:50 GMT
VOLUME [/data]
# Thu, 28 Jun 2018 12:47:50 GMT
WORKDIR /data
# Thu, 28 Jun 2018 12:47:51 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Thu, 28 Jun 2018 12:47:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Jun 2018 12:47:52 GMT
EXPOSE 6379/tcp
# Thu, 28 Jun 2018 12:47:53 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:153362478bb06475bede3bd6da2ff08a91dd9fc6f245c70bb5a033b65f38ac14`  
		Last Modified: Wed, 27 Jun 2018 08:58:51 GMT  
		Size: 20.3 MB (20348077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3df18432afbb66c603676db6e777b9e8385de68f08a19d034af0da3a1858e1f7`  
		Last Modified: Wed, 27 Jun 2018 13:35:34 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a80a3007c2c23eea873ed4902940ef771b78a7d742c98741d71b816d77682d9`  
		Last Modified: Wed, 27 Jun 2018 13:35:35 GMT  
		Size: 908.2 KB (908185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bd83bb03f07fdc05a308ca790f43b07f1c07d93f68520c47d8f02a2d39d64a2`  
		Last Modified: Thu, 28 Jun 2018 12:50:16 GMT  
		Size: 11.3 MB (11333626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f17367ecfc729a907d2353e00dd71e81ef9f250e8eec55c831e7bae8bebbc7b`  
		Last Modified: Thu, 28 Jun 2018 12:50:11 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:823bc36fbd98e49580aed4f33f7008c88f2f04314cb41d22943a1f11fe5118fd`  
		Last Modified: Thu, 28 Jun 2018 12:50:12 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-rc` - linux; 386

```console
$ docker pull redis@sha256:f766994c0ee95504757711cdee7201f0d1b5cfb8fe38d53d9eca888d614e2fa1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.0 MB (35013142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0901db936ff41deb5618f220ecf5fc8b82cc15ec917673d3df353baf1babf66c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Jun 2018 10:46:39 GMT
ADD file:e1777a98c0e3aaf9cb1f4116550001b0eed2fe669b2c6449c93b76cccc92e1a2 in / 
# Wed, 27 Jun 2018 10:46:42 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 13:03:38 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 13:03:38 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 13:04:04 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 28 Jun 2018 11:19:55 GMT
ENV REDIS_VERSION=5.0-rc3
# Thu, 28 Jun 2018 11:19:55 GMT
ENV REDIS_DOWNLOAD_URL=https://github.com/antirez/redis/archive/5.0-rc3.tar.gz
# Thu, 28 Jun 2018 11:19:55 GMT
ENV REDIS_DOWNLOAD_SHA=4bb2eeef3695d66d8b64767825acfeeb157d64536233eac7eae71b236fd6554f
# Thu, 28 Jun 2018 11:21:04 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 28 Jun 2018 11:21:05 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 28 Jun 2018 11:21:05 GMT
VOLUME [/data]
# Thu, 28 Jun 2018 11:21:05 GMT
WORKDIR /data
# Thu, 28 Jun 2018 11:21:06 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Thu, 28 Jun 2018 11:21:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Jun 2018 11:21:06 GMT
EXPOSE 6379/tcp
# Thu, 28 Jun 2018 11:21:06 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:7de5eb46c52dbee10629f5dc34d9b2445893031ae37083572734bc4f6577757d`  
		Last Modified: Wed, 27 Jun 2018 11:11:02 GMT  
		Size: 23.1 MB (23140103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8df6822d7184835aefd26151cfc1ba536407dc7e8d1f959bc1360b882e7f140`  
		Last Modified: Wed, 27 Jun 2018 13:06:10 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:036521fcd75cdac216f9c6c2c0a4e7c7512653de681714198cfddbf20503ea97`  
		Last Modified: Wed, 27 Jun 2018 13:06:10 GMT  
		Size: 920.3 KB (920308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bb239d5aa86be555e8a9a631176abcc9afb1ad5b777f3d4a3d6e903c77abd7f`  
		Last Modified: Thu, 28 Jun 2018 11:22:44 GMT  
		Size: 11.0 MB (10950496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0adde44ce2a2fd629ab0553232b8b7b42285c0e47c4b4fd716ad8e07e6b503fc`  
		Last Modified: Thu, 28 Jun 2018 11:22:39 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9479954506d48979d977a99860209b47c3c0fa146fb798e3d1c25fcf89672cc`  
		Last Modified: Thu, 28 Jun 2018 11:22:40 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-rc` - linux; ppc64le

```console
$ docker pull redis@sha256:457eed7e3db7634bd94b8c3be2e0f4be5b00e31e6e614e252a0dd9f5c7e892e8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.4 MB (35366391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6466756c898c11619a085420df4535c6b5e79e0c901cefdae959f0ef53459de`
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
# Tue, 17 Jul 2018 11:07:51 GMT
ENV REDIS_VERSION=5.0-rc3
# Tue, 17 Jul 2018 11:07:53 GMT
ENV REDIS_DOWNLOAD_URL=https://github.com/antirez/redis/archive/5.0-rc3.tar.gz
# Tue, 17 Jul 2018 11:07:54 GMT
ENV REDIS_DOWNLOAD_SHA=4bb2eeef3695d66d8b64767825acfeeb157d64536233eac7eae71b236fd6554f
# Tue, 17 Jul 2018 11:10:13 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jul 2018 11:10:16 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 17 Jul 2018 11:10:18 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 11:10:20 GMT
WORKDIR /data
# Tue, 17 Jul 2018 11:10:21 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 17 Jul 2018 11:10:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 11:10:23 GMT
EXPOSE 6379/tcp
# Tue, 17 Jul 2018 11:10:26 GMT
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
	-	`sha256:88f8b73f6bffb316c4527f9952b4d37e95769fe03927d728292742f5fe7389ef`  
		Last Modified: Tue, 17 Jul 2018 11:18:29 GMT  
		Size: 11.7 MB (11713797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72ca4da07491cfde6118e94c038ad62444a30f5ae32355b84daf8756d78fc730`  
		Last Modified: Tue, 17 Jul 2018 11:18:23 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3976216d5ba98b52fe0d4bab3a3d9635ccb8f0fd9d04c95068042a5d990498e`  
		Last Modified: Tue, 17 Jul 2018 11:18:23 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-rc` - linux; s390x

```console
$ docker pull redis@sha256:943fb4e107089898d2332f683a67ad80feba177a35df2545227076ca777d8137
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.3 MB (35254933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed0be2f48461e9eea7e631b3d4f3c1722298d4939a5bbfa33e5db5e07cb75df1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Jun 2018 11:48:52 GMT
ADD file:30e8aac3f01e5ddc9493a0fac1c0978b9435ab33031d2af05afca0f9cb7eb71f in / 
# Wed, 27 Jun 2018 11:48:52 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 13:46:24 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 13:46:24 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 13:46:39 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 28 Jun 2018 12:08:26 GMT
ENV REDIS_VERSION=5.0-rc3
# Thu, 28 Jun 2018 12:08:28 GMT
ENV REDIS_DOWNLOAD_URL=https://github.com/antirez/redis/archive/5.0-rc3.tar.gz
# Thu, 28 Jun 2018 12:08:29 GMT
ENV REDIS_DOWNLOAD_SHA=4bb2eeef3695d66d8b64767825acfeeb157d64536233eac7eae71b236fd6554f
# Thu, 28 Jun 2018 12:09:09 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 28 Jun 2018 12:09:09 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 28 Jun 2018 12:09:10 GMT
VOLUME [/data]
# Thu, 28 Jun 2018 12:09:10 GMT
WORKDIR /data
# Thu, 28 Jun 2018 12:09:10 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Thu, 28 Jun 2018 12:09:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Jun 2018 12:09:10 GMT
EXPOSE 6379/tcp
# Thu, 28 Jun 2018 12:09:11 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:1c23a44ac305da2d34995cf30530ba5adce0229e4a70678fd4d25384883b1281`  
		Last Modified: Wed, 27 Jun 2018 11:53:41 GMT  
		Size: 22.3 MB (22349871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f450656bdbcbfdc1614dfb82ca8dc61d74ac31bd1698136f082a3f2e49795a`  
		Last Modified: Wed, 27 Jun 2018 13:48:34 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb0e27db9314b93a9ac2f160f4fc84e2fac43e079e197b9721c03d11c645b235`  
		Last Modified: Wed, 27 Jun 2018 13:48:34 GMT  
		Size: 926.8 KB (926820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac2a5b31199aff056738fdc86f3d970e37992ff23ecee2352abd3ffef37471c2`  
		Last Modified: Thu, 28 Jun 2018 12:10:50 GMT  
		Size: 12.0 MB (11976001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e14706981c3de81f40faee5aa51d30a1be6b545e51dbd8a4c33ab4177c2df32`  
		Last Modified: Thu, 28 Jun 2018 12:10:42 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8853366d8e314d85a804cd61b288a1d3ebd29c3577d4d9d2a774e813d6c505b`  
		Last Modified: Thu, 28 Jun 2018 12:10:41 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0-rc3`

```console
$ docker pull redis@sha256:d1aa87282939a3cd7940c46d56ada2656916b58f47820e4f111f8d3f369604e8
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

### `redis:5.0-rc3` - linux; amd64

```console
$ docker pull redis@sha256:892d84ef15592a562afd625892bebfc9645b10222afa7f80a1bc01812a472c00
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.0 MB (34959189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29376b8df2ad006b998f5c270b813deee41459e7eafb1ff01dfd78b4d1be0dac`
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
# Tue, 17 Jul 2018 07:22:36 GMT
ENV REDIS_VERSION=5.0-rc3
# Tue, 17 Jul 2018 07:22:36 GMT
ENV REDIS_DOWNLOAD_URL=https://github.com/antirez/redis/archive/5.0-rc3.tar.gz
# Tue, 17 Jul 2018 07:22:36 GMT
ENV REDIS_DOWNLOAD_SHA=4bb2eeef3695d66d8b64767825acfeeb157d64536233eac7eae71b236fd6554f
# Tue, 17 Jul 2018 07:23:38 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jul 2018 07:23:38 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 17 Jul 2018 07:23:39 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 07:23:39 GMT
WORKDIR /data
# Tue, 17 Jul 2018 07:23:39 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 17 Jul 2018 07:23:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 07:23:51 GMT
EXPOSE 6379/tcp
# Tue, 17 Jul 2018 07:23:51 GMT
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
	-	`sha256:82f48c956e4d2fa0ebb10730cab2a9f5f76191746cc4e1550f5d6346763fcff3`  
		Last Modified: Tue, 17 Jul 2018 07:32:18 GMT  
		Size: 11.5 MB (11529767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0473f21709bcce35a1ee6c2b327687b89a287dfa3eb0f4f69fa651aed73ad5bb`  
		Last Modified: Tue, 17 Jul 2018 07:32:13 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60ec6b0d85e0271939b16101520bbbd82f7bf06580501893bbdca488555f66c0`  
		Last Modified: Tue, 17 Jul 2018 07:32:13 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-rc3` - linux; arm variant v5

```console
$ docker pull redis@sha256:fd0771a72c929712211906c73d6e21717bae5db46172fb73dd84556e0b584111
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.3 MB (33268070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5358f695d27eba588f16bfa5270894b11c67c574814809c36fe017312472ee6`
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
# Tue, 17 Jul 2018 11:34:28 GMT
ENV REDIS_VERSION=5.0-rc3
# Tue, 17 Jul 2018 11:34:29 GMT
ENV REDIS_DOWNLOAD_URL=https://github.com/antirez/redis/archive/5.0-rc3.tar.gz
# Tue, 17 Jul 2018 11:34:29 GMT
ENV REDIS_DOWNLOAD_SHA=4bb2eeef3695d66d8b64767825acfeeb157d64536233eac7eae71b236fd6554f
# Tue, 17 Jul 2018 11:35:23 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jul 2018 11:35:24 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 17 Jul 2018 11:35:24 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 11:35:24 GMT
WORKDIR /data
# Tue, 17 Jul 2018 11:35:25 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 17 Jul 2018 11:35:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 11:35:25 GMT
EXPOSE 6379/tcp
# Tue, 17 Jul 2018 11:35:25 GMT
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
	-	`sha256:47f4253a8748a1536f84dafe2f24a1d4da4266e533f27e9c22f56c8000592fdc`  
		Last Modified: Tue, 17 Jul 2018 11:37:39 GMT  
		Size: 11.2 MB (11172063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:051f15aedad1227af2d6e3029bf9e1fedbe1e2e1f4928d1bea31f27c87b39ef7`  
		Last Modified: Tue, 17 Jul 2018 11:37:35 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2b8c405bd2b33feb12fd22b0781b942c86481d0e4bd1f80c95ecaeebbe9a684`  
		Last Modified: Tue, 17 Jul 2018 11:37:35 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-rc3` - linux; arm variant v7

```console
$ docker pull redis@sha256:00c14bdc184fd736748a7cdc56ff379e7e611438f7384936642faeb07cc27524
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.1 MB (31079722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9c7629adde1b75c7c81f9fcd5115d06c31b56386b249eebb2e4db38f9283009`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Jun 2018 12:03:51 GMT
ADD file:d05cf75761bffd94ce908a55d38fc4966c194aa14492730dfdc1e52c3ddd0892 in / 
# Wed, 27 Jun 2018 12:03:54 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 14:18:29 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 14:18:29 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 14:18:48 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 28 Jun 2018 12:19:06 GMT
ENV REDIS_VERSION=5.0-rc3
# Thu, 28 Jun 2018 12:19:07 GMT
ENV REDIS_DOWNLOAD_URL=https://github.com/antirez/redis/archive/5.0-rc3.tar.gz
# Thu, 28 Jun 2018 12:19:07 GMT
ENV REDIS_DOWNLOAD_SHA=4bb2eeef3695d66d8b64767825acfeeb157d64536233eac7eae71b236fd6554f
# Thu, 28 Jun 2018 12:19:55 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 28 Jun 2018 12:19:58 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 28 Jun 2018 12:19:58 GMT
VOLUME [/data]
# Thu, 28 Jun 2018 12:19:59 GMT
WORKDIR /data
# Thu, 28 Jun 2018 12:19:59 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Thu, 28 Jun 2018 12:20:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Jun 2018 12:20:00 GMT
EXPOSE 6379/tcp
# Thu, 28 Jun 2018 12:20:00 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:a779870b6875e97ad1448eaf9befb46011e0fd10ef5014f59d63f624b51de26f`  
		Last Modified: Wed, 27 Jun 2018 12:13:30 GMT  
		Size: 19.3 MB (19286273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c5c410558b6543c5785cecbccb032fd4982038a92ba3b8bb4d5ab8d17e6bed7`  
		Last Modified: Wed, 27 Jun 2018 14:20:30 GMT  
		Size: 1.7 KB (1730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48b858312be07ebaa41456fe36334924f5e53a6a705c42b89b61f26bc6ebb357`  
		Last Modified: Wed, 27 Jun 2018 14:20:30 GMT  
		Size: 915.9 KB (915893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe7fcef903890174675b5984be56b46df096199fe9b22be663c5514e25b0ffef`  
		Last Modified: Thu, 28 Jun 2018 12:20:28 GMT  
		Size: 10.9 MB (10875293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b02b954928e9f10fa05d633cba53d0bb5dad3f2afcde48dbeb14e5d306094b39`  
		Last Modified: Thu, 28 Jun 2018 12:20:24 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fae10b28a168ae892cbd44d713c2645893753353eec2e0f8b78abacfdf070e7`  
		Last Modified: Thu, 28 Jun 2018 12:20:24 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-rc3` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:b7ae07e9f47176a4e261ad357f25047bc0de2e20be9bebb35d224c7b8f53d576
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32592130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d93499001202ec73003755aaa544abd24fdbcca7fbfbc0dba6f9948d5a14c67`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:44 GMT
ADD file:b8a1907d99b0b9f75b52f8e25d5c346caf0244b325919c02090ab1e05ba1cf18 in / 
# Wed, 27 Jun 2018 08:47:45 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 13:29:17 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 13:29:18 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 13:30:37 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 28 Jun 2018 12:45:45 GMT
ENV REDIS_VERSION=5.0-rc3
# Thu, 28 Jun 2018 12:45:45 GMT
ENV REDIS_DOWNLOAD_URL=https://github.com/antirez/redis/archive/5.0-rc3.tar.gz
# Thu, 28 Jun 2018 12:45:46 GMT
ENV REDIS_DOWNLOAD_SHA=4bb2eeef3695d66d8b64767825acfeeb157d64536233eac7eae71b236fd6554f
# Thu, 28 Jun 2018 12:47:47 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 28 Jun 2018 12:47:49 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 28 Jun 2018 12:47:50 GMT
VOLUME [/data]
# Thu, 28 Jun 2018 12:47:50 GMT
WORKDIR /data
# Thu, 28 Jun 2018 12:47:51 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Thu, 28 Jun 2018 12:47:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Jun 2018 12:47:52 GMT
EXPOSE 6379/tcp
# Thu, 28 Jun 2018 12:47:53 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:153362478bb06475bede3bd6da2ff08a91dd9fc6f245c70bb5a033b65f38ac14`  
		Last Modified: Wed, 27 Jun 2018 08:58:51 GMT  
		Size: 20.3 MB (20348077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3df18432afbb66c603676db6e777b9e8385de68f08a19d034af0da3a1858e1f7`  
		Last Modified: Wed, 27 Jun 2018 13:35:34 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a80a3007c2c23eea873ed4902940ef771b78a7d742c98741d71b816d77682d9`  
		Last Modified: Wed, 27 Jun 2018 13:35:35 GMT  
		Size: 908.2 KB (908185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bd83bb03f07fdc05a308ca790f43b07f1c07d93f68520c47d8f02a2d39d64a2`  
		Last Modified: Thu, 28 Jun 2018 12:50:16 GMT  
		Size: 11.3 MB (11333626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f17367ecfc729a907d2353e00dd71e81ef9f250e8eec55c831e7bae8bebbc7b`  
		Last Modified: Thu, 28 Jun 2018 12:50:11 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:823bc36fbd98e49580aed4f33f7008c88f2f04314cb41d22943a1f11fe5118fd`  
		Last Modified: Thu, 28 Jun 2018 12:50:12 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-rc3` - linux; 386

```console
$ docker pull redis@sha256:f766994c0ee95504757711cdee7201f0d1b5cfb8fe38d53d9eca888d614e2fa1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.0 MB (35013142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0901db936ff41deb5618f220ecf5fc8b82cc15ec917673d3df353baf1babf66c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Jun 2018 10:46:39 GMT
ADD file:e1777a98c0e3aaf9cb1f4116550001b0eed2fe669b2c6449c93b76cccc92e1a2 in / 
# Wed, 27 Jun 2018 10:46:42 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 13:03:38 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 13:03:38 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 13:04:04 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 28 Jun 2018 11:19:55 GMT
ENV REDIS_VERSION=5.0-rc3
# Thu, 28 Jun 2018 11:19:55 GMT
ENV REDIS_DOWNLOAD_URL=https://github.com/antirez/redis/archive/5.0-rc3.tar.gz
# Thu, 28 Jun 2018 11:19:55 GMT
ENV REDIS_DOWNLOAD_SHA=4bb2eeef3695d66d8b64767825acfeeb157d64536233eac7eae71b236fd6554f
# Thu, 28 Jun 2018 11:21:04 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 28 Jun 2018 11:21:05 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 28 Jun 2018 11:21:05 GMT
VOLUME [/data]
# Thu, 28 Jun 2018 11:21:05 GMT
WORKDIR /data
# Thu, 28 Jun 2018 11:21:06 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Thu, 28 Jun 2018 11:21:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Jun 2018 11:21:06 GMT
EXPOSE 6379/tcp
# Thu, 28 Jun 2018 11:21:06 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:7de5eb46c52dbee10629f5dc34d9b2445893031ae37083572734bc4f6577757d`  
		Last Modified: Wed, 27 Jun 2018 11:11:02 GMT  
		Size: 23.1 MB (23140103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8df6822d7184835aefd26151cfc1ba536407dc7e8d1f959bc1360b882e7f140`  
		Last Modified: Wed, 27 Jun 2018 13:06:10 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:036521fcd75cdac216f9c6c2c0a4e7c7512653de681714198cfddbf20503ea97`  
		Last Modified: Wed, 27 Jun 2018 13:06:10 GMT  
		Size: 920.3 KB (920308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bb239d5aa86be555e8a9a631176abcc9afb1ad5b777f3d4a3d6e903c77abd7f`  
		Last Modified: Thu, 28 Jun 2018 11:22:44 GMT  
		Size: 11.0 MB (10950496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0adde44ce2a2fd629ab0553232b8b7b42285c0e47c4b4fd716ad8e07e6b503fc`  
		Last Modified: Thu, 28 Jun 2018 11:22:39 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9479954506d48979d977a99860209b47c3c0fa146fb798e3d1c25fcf89672cc`  
		Last Modified: Thu, 28 Jun 2018 11:22:40 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-rc3` - linux; ppc64le

```console
$ docker pull redis@sha256:457eed7e3db7634bd94b8c3be2e0f4be5b00e31e6e614e252a0dd9f5c7e892e8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.4 MB (35366391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6466756c898c11619a085420df4535c6b5e79e0c901cefdae959f0ef53459de`
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
# Tue, 17 Jul 2018 11:07:51 GMT
ENV REDIS_VERSION=5.0-rc3
# Tue, 17 Jul 2018 11:07:53 GMT
ENV REDIS_DOWNLOAD_URL=https://github.com/antirez/redis/archive/5.0-rc3.tar.gz
# Tue, 17 Jul 2018 11:07:54 GMT
ENV REDIS_DOWNLOAD_SHA=4bb2eeef3695d66d8b64767825acfeeb157d64536233eac7eae71b236fd6554f
# Tue, 17 Jul 2018 11:10:13 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jul 2018 11:10:16 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 17 Jul 2018 11:10:18 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 11:10:20 GMT
WORKDIR /data
# Tue, 17 Jul 2018 11:10:21 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 17 Jul 2018 11:10:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 11:10:23 GMT
EXPOSE 6379/tcp
# Tue, 17 Jul 2018 11:10:26 GMT
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
	-	`sha256:88f8b73f6bffb316c4527f9952b4d37e95769fe03927d728292742f5fe7389ef`  
		Last Modified: Tue, 17 Jul 2018 11:18:29 GMT  
		Size: 11.7 MB (11713797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72ca4da07491cfde6118e94c038ad62444a30f5ae32355b84daf8756d78fc730`  
		Last Modified: Tue, 17 Jul 2018 11:18:23 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3976216d5ba98b52fe0d4bab3a3d9635ccb8f0fd9d04c95068042a5d990498e`  
		Last Modified: Tue, 17 Jul 2018 11:18:23 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-rc3` - linux; s390x

```console
$ docker pull redis@sha256:943fb4e107089898d2332f683a67ad80feba177a35df2545227076ca777d8137
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.3 MB (35254933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed0be2f48461e9eea7e631b3d4f3c1722298d4939a5bbfa33e5db5e07cb75df1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Jun 2018 11:48:52 GMT
ADD file:30e8aac3f01e5ddc9493a0fac1c0978b9435ab33031d2af05afca0f9cb7eb71f in / 
# Wed, 27 Jun 2018 11:48:52 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 13:46:24 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 13:46:24 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 13:46:39 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 28 Jun 2018 12:08:26 GMT
ENV REDIS_VERSION=5.0-rc3
# Thu, 28 Jun 2018 12:08:28 GMT
ENV REDIS_DOWNLOAD_URL=https://github.com/antirez/redis/archive/5.0-rc3.tar.gz
# Thu, 28 Jun 2018 12:08:29 GMT
ENV REDIS_DOWNLOAD_SHA=4bb2eeef3695d66d8b64767825acfeeb157d64536233eac7eae71b236fd6554f
# Thu, 28 Jun 2018 12:09:09 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 28 Jun 2018 12:09:09 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 28 Jun 2018 12:09:10 GMT
VOLUME [/data]
# Thu, 28 Jun 2018 12:09:10 GMT
WORKDIR /data
# Thu, 28 Jun 2018 12:09:10 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Thu, 28 Jun 2018 12:09:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Jun 2018 12:09:10 GMT
EXPOSE 6379/tcp
# Thu, 28 Jun 2018 12:09:11 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:1c23a44ac305da2d34995cf30530ba5adce0229e4a70678fd4d25384883b1281`  
		Last Modified: Wed, 27 Jun 2018 11:53:41 GMT  
		Size: 22.3 MB (22349871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f450656bdbcbfdc1614dfb82ca8dc61d74ac31bd1698136f082a3f2e49795a`  
		Last Modified: Wed, 27 Jun 2018 13:48:34 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb0e27db9314b93a9ac2f160f4fc84e2fac43e079e197b9721c03d11c645b235`  
		Last Modified: Wed, 27 Jun 2018 13:48:34 GMT  
		Size: 926.8 KB (926820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac2a5b31199aff056738fdc86f3d970e37992ff23ecee2352abd3ffef37471c2`  
		Last Modified: Thu, 28 Jun 2018 12:10:50 GMT  
		Size: 12.0 MB (11976001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e14706981c3de81f40faee5aa51d30a1be6b545e51dbd8a4c33ab4177c2df32`  
		Last Modified: Thu, 28 Jun 2018 12:10:42 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8853366d8e314d85a804cd61b288a1d3ebd29c3577d4d9d2a774e813d6c505b`  
		Last Modified: Thu, 28 Jun 2018 12:10:41 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0-rc-32bit`

```console
$ docker pull redis@sha256:b08740893de1b7c4db798cf875ddb8986ce3218b44a55cd549853f7e9a661afa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5.0-rc-32bit` - linux; amd64

```console
$ docker pull redis@sha256:89e44f4ae4dffa92df680d51295c8d18ac381a5a3feef13fdf33bdff079bfb79
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.2 MB (39232373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02f1948bdea535e7b2fe158719b9b28f806ab11c3c0b8ccad5a091ad711fb41a`
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
# Tue, 17 Jul 2018 07:22:36 GMT
ENV REDIS_VERSION=5.0-rc3
# Tue, 17 Jul 2018 07:22:36 GMT
ENV REDIS_DOWNLOAD_URL=https://github.com/antirez/redis/archive/5.0-rc3.tar.gz
# Tue, 17 Jul 2018 07:22:36 GMT
ENV REDIS_DOWNLOAD_SHA=4bb2eeef3695d66d8b64767825acfeeb157d64536233eac7eae71b236fd6554f
# Tue, 17 Jul 2018 07:24:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 07:25:46 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jul 2018 07:25:47 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 17 Jul 2018 07:25:47 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 07:25:47 GMT
WORKDIR /data
# Tue, 17 Jul 2018 07:25:47 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 17 Jul 2018 07:25:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 07:25:48 GMT
EXPOSE 6379/tcp
# Tue, 17 Jul 2018 07:25:48 GMT
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
	-	`sha256:0788da799b33b1e16d086125933833e45b5fd1b505a9005cc53773efd4ed23ac`  
		Last Modified: Tue, 17 Jul 2018 07:33:06 GMT  
		Size: 4.8 MB (4848267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef021d4a3093ccb9ef9f60334bacc518548357f8e156a08ced75ce0c954373ae`  
		Last Modified: Tue, 17 Jul 2018 07:33:09 GMT  
		Size: 11.0 MB (10954681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:321d72b886890f9a8941751c1b1af5e9f37eaf4256e42098dbda4500fcdbc8c0`  
		Last Modified: Tue, 17 Jul 2018 07:33:04 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c01b21901fa5a7a4cc6b472562d0f40adfc555e6837e98a2d9852926d9766db`  
		Last Modified: Tue, 17 Jul 2018 07:33:04 GMT  
		Size: 406.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0-rc3-32bit`

```console
$ docker pull redis@sha256:b08740893de1b7c4db798cf875ddb8986ce3218b44a55cd549853f7e9a661afa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5.0-rc3-32bit` - linux; amd64

```console
$ docker pull redis@sha256:89e44f4ae4dffa92df680d51295c8d18ac381a5a3feef13fdf33bdff079bfb79
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.2 MB (39232373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02f1948bdea535e7b2fe158719b9b28f806ab11c3c0b8ccad5a091ad711fb41a`
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
# Tue, 17 Jul 2018 07:22:36 GMT
ENV REDIS_VERSION=5.0-rc3
# Tue, 17 Jul 2018 07:22:36 GMT
ENV REDIS_DOWNLOAD_URL=https://github.com/antirez/redis/archive/5.0-rc3.tar.gz
# Tue, 17 Jul 2018 07:22:36 GMT
ENV REDIS_DOWNLOAD_SHA=4bb2eeef3695d66d8b64767825acfeeb157d64536233eac7eae71b236fd6554f
# Tue, 17 Jul 2018 07:24:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 07:25:46 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jul 2018 07:25:47 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 17 Jul 2018 07:25:47 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 07:25:47 GMT
WORKDIR /data
# Tue, 17 Jul 2018 07:25:47 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 17 Jul 2018 07:25:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 07:25:48 GMT
EXPOSE 6379/tcp
# Tue, 17 Jul 2018 07:25:48 GMT
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
	-	`sha256:0788da799b33b1e16d086125933833e45b5fd1b505a9005cc53773efd4ed23ac`  
		Last Modified: Tue, 17 Jul 2018 07:33:06 GMT  
		Size: 4.8 MB (4848267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef021d4a3093ccb9ef9f60334bacc518548357f8e156a08ced75ce0c954373ae`  
		Last Modified: Tue, 17 Jul 2018 07:33:09 GMT  
		Size: 11.0 MB (10954681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:321d72b886890f9a8941751c1b1af5e9f37eaf4256e42098dbda4500fcdbc8c0`  
		Last Modified: Tue, 17 Jul 2018 07:33:04 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c01b21901fa5a7a4cc6b472562d0f40adfc555e6837e98a2d9852926d9766db`  
		Last Modified: Tue, 17 Jul 2018 07:33:04 GMT  
		Size: 406.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0-rc3-alpine`

```console
$ docker pull redis@sha256:d2e0e5b0fb06817cb9c6b95fce4eff8943402253fa5c63c1d42ea6cc60673508
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redis:5.0-rc3-alpine` - linux; amd64

```console
$ docker pull redis@sha256:84ace3b79aa38372108b72b5813feafbbdef24cb0b7e4da6b48b569b7812168d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14292188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b76771c6ba23ed575f1364bcd46e4eb7aba5bd7eeceb7b9864623a262741094f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 00:55:42 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 11 Jul 2018 00:55:43 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 11 Jul 2018 00:55:43 GMT
ENV REDIS_VERSION=5.0-rc3
# Wed, 11 Jul 2018 00:55:44 GMT
ENV REDIS_DOWNLOAD_URL=https://github.com/antirez/redis/archive/5.0-rc3.tar.gz
# Wed, 11 Jul 2018 00:55:44 GMT
ENV REDIS_DOWNLOAD_SHA=4bb2eeef3695d66d8b64767825acfeeb157d64536233eac7eae71b236fd6554f
# Mon, 16 Jul 2018 23:49:13 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Mon, 16 Jul 2018 23:49:14 GMT
RUN mkdir /data && chown redis:redis /data
# Mon, 16 Jul 2018 23:49:14 GMT
VOLUME [/data]
# Mon, 16 Jul 2018 23:49:14 GMT
WORKDIR /data
# Mon, 16 Jul 2018 23:49:15 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Mon, 16 Jul 2018 23:49:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 16 Jul 2018 23:49:15 GMT
EXPOSE 6379/tcp
# Mon, 16 Jul 2018 23:49:16 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f20bd2a5c234ffab42de6cbf83522946614b21b642a8208dca6b0fd614c31db`  
		Last Modified: Wed, 11 Jul 2018 00:58:27 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:782ff7702b5cd0a7c0109740838c74945fc27e4ce34e1028c24bf73f8249a63a`  
		Last Modified: Wed, 11 Jul 2018 00:58:27 GMT  
		Size: 9.1 KB (9071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e13cd6e230fc9a533daba4254f4f24500068b39cd39e2e936c53feffffc3c0ee`  
		Last Modified: Mon, 16 Jul 2018 23:49:58 GMT  
		Size: 12.1 MB (12074827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1f2b3cfde19730928836fc7bf20ea8a2b532740b534215badd3188b71c3464`  
		Last Modified: Mon, 16 Jul 2018 23:49:54 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:606c9710d68701cc649a49e3a453d7aef30221c83d61c3b11a840d3c36de79cb`  
		Last Modified: Mon, 16 Jul 2018 23:49:53 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-rc3-alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:f0397f99fe16f20cf8404bfb147bbe7a278725c9815d9b8c0eb2d9845b89b0be
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8294670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88ea17d637cb83fa73526614d04fa42564c4dd02ac833fe37ee47fdba82d2ba4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 06 Jul 2018 07:53:29 GMT
ADD file:122e3422d9afa971806601812374fdd9d00c8edc8e9a6df7256e2caa85fab6d1 in / 
# Fri, 06 Jul 2018 07:53:30 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 07:53:30 GMT
CMD ["/bin/sh"]
# Sat, 14 Jul 2018 11:45:22 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 14 Jul 2018 11:45:27 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 14 Jul 2018 11:45:28 GMT
ENV REDIS_VERSION=5.0-rc3
# Sat, 14 Jul 2018 11:45:28 GMT
ENV REDIS_DOWNLOAD_URL=https://github.com/antirez/redis/archive/5.0-rc3.tar.gz
# Sat, 14 Jul 2018 11:45:30 GMT
ENV REDIS_DOWNLOAD_SHA=4bb2eeef3695d66d8b64767825acfeeb157d64536233eac7eae71b236fd6554f
# Tue, 17 Jul 2018 07:53:48 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Tue, 17 Jul 2018 07:53:52 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 17 Jul 2018 07:53:52 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 07:53:53 GMT
WORKDIR /data
# Tue, 17 Jul 2018 07:53:54 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Tue, 17 Jul 2018 07:53:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 07:53:55 GMT
EXPOSE 6379/tcp
# Tue, 17 Jul 2018 07:53:56 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:ee7d700abbf209aa401ef5d53f86af298a25e8154b3259036e9307d08f255c5d`  
		Last Modified: Fri, 06 Jul 2018 07:53:45 GMT  
		Size: 2.1 MB (2145998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1653f4692c1ccea69cd46121d4f1371957f66e97a20141371dd4da10ebaec19`  
		Last Modified: Fri, 06 Jul 2018 07:53:45 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:227a96f1d31d3ceb90336a4a116e3e60b3a1fea72ae1f065e88a6d43417674ff`  
		Last Modified: Sat, 14 Jul 2018 11:59:20 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:407d2c8c18404f038c5326de3eadc14240dea0b342a6237b037d457e4d381d2b`  
		Last Modified: Sat, 14 Jul 2018 11:59:20 GMT  
		Size: 9.0 KB (8980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60b520d2dfc27786d33a7e6306e4e7540ef86f2872131894e3595cbbf4ac704e`  
		Last Modified: Tue, 17 Jul 2018 07:54:33 GMT  
		Size: 6.1 MB (6137702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f88697ec5c6f1b0fec7e148b34e9d9238dbe003efc33102c6c42320291ef5a0`  
		Last Modified: Tue, 17 Jul 2018 07:54:25 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e21b7953a1dcc8d9dc794a9a93e71d3d205e78d9502d79b2c5f5e77c38828ca`  
		Last Modified: Tue, 17 Jul 2018 07:54:26 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-rc3-alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:92d641d48f647859a75e0a26b25486f882251e28e77139f1656a56100ab47033
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 MB (13924933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b725b243696fd765ec3f4b31acc6d4b942ba5557e9ba981368893a19cccbd0a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 06 Jul 2018 08:41:03 GMT
ADD file:199a5a48bddabaf1f649f58f3b17c323a1aa1a50e939dfdea3542e4041e91b7b in / 
# Fri, 06 Jul 2018 08:41:03 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:41:04 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 09:37:50 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 11 Jul 2018 09:37:52 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 11 Jul 2018 09:37:53 GMT
ENV REDIS_VERSION=5.0-rc3
# Wed, 11 Jul 2018 09:37:54 GMT
ENV REDIS_DOWNLOAD_URL=https://github.com/antirez/redis/archive/5.0-rc3.tar.gz
# Wed, 11 Jul 2018 09:37:55 GMT
ENV REDIS_DOWNLOAD_SHA=4bb2eeef3695d66d8b64767825acfeeb157d64536233eac7eae71b236fd6554f
# Wed, 11 Jul 2018 09:39:11 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 		wget 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 11 Jul 2018 09:39:13 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 11 Jul 2018 09:39:14 GMT
VOLUME [/data]
# Wed, 11 Jul 2018 09:39:14 GMT
WORKDIR /data
# Wed, 11 Jul 2018 09:39:15 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 11 Jul 2018 09:39:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jul 2018 09:39:17 GMT
EXPOSE 6379/tcp
# Wed, 11 Jul 2018 09:39:18 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:47e04371c99027fae42871b720fdc6cdddcb65062bfa05f0c3bb0a594cb5bbbd`  
		Last Modified: Wed, 27 Jun 2018 19:15:35 GMT  
		Size: 2.1 MB (2099514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4103359e1ecd9a7253d8b8a041d4e81db1ff4a5e1950bc0e02305d221c9e6c2`  
		Last Modified: Fri, 06 Jul 2018 08:42:09 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9721f4fc0d2aca17304d7c1cbef676a8fa7d41c3f0c7201b22d695ff41dfc625`  
		Last Modified: Wed, 11 Jul 2018 09:42:31 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43bc6ac33e9f951cbb1f9ca722ba63c430fa5b2a12e0a46efe7f1e5e15920b16`  
		Last Modified: Wed, 11 Jul 2018 09:42:31 GMT  
		Size: 8.9 KB (8932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f8b9491b210ca50131120c9cedc68c2cad25600b63cbd657a23a0e11f36d5a8`  
		Last Modified: Wed, 11 Jul 2018 09:42:35 GMT  
		Size: 11.8 MB (11814563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:892055c412dac3d79cc593b2568f96bdd66121bbd82b05eb0269403099e3cc1f`  
		Last Modified: Wed, 11 Jul 2018 09:42:31 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cae8e72f0a4799e866cbfb9c6f3953c19ba81a8af62563fb974d4327f4548b86`  
		Last Modified: Wed, 11 Jul 2018 09:42:32 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-rc3-alpine` - linux; 386

```console
$ docker pull redis@sha256:88f25c5897d80544f0b488edc1c9c6205ea63c2649b5678236d89e359c0f4a78
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 MB (13750246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9655caede8cca025f8a2f634cd44ff64f8bbb1a0c22ab94e3c335cc409daa6a5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 06 Jul 2018 15:02:06 GMT
ADD file:ebd40cda2f6087daf4d14e6dc1ee0b4a0fb5dc96c70129be8e07de0e5c628312 in / 
# Fri, 06 Jul 2018 15:02:07 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 15:02:07 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 10:59:08 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 11 Jul 2018 10:59:09 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 11 Jul 2018 10:59:09 GMT
ENV REDIS_VERSION=5.0-rc3
# Wed, 11 Jul 2018 10:59:09 GMT
ENV REDIS_DOWNLOAD_URL=https://github.com/antirez/redis/archive/5.0-rc3.tar.gz
# Wed, 11 Jul 2018 10:59:10 GMT
ENV REDIS_DOWNLOAD_SHA=4bb2eeef3695d66d8b64767825acfeeb157d64536233eac7eae71b236fd6554f
# Wed, 11 Jul 2018 11:00:00 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 		wget 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 11 Jul 2018 11:00:01 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 11 Jul 2018 11:00:02 GMT
VOLUME [/data]
# Wed, 11 Jul 2018 11:00:02 GMT
WORKDIR /data
# Wed, 11 Jul 2018 11:00:02 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 11 Jul 2018 11:00:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jul 2018 11:00:02 GMT
EXPOSE 6379/tcp
# Wed, 11 Jul 2018 11:00:03 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:ef15772113129a5330876ce10683bbf6509a4c4c99b3a99894dcbc7560975052`  
		Last Modified: Fri, 06 Jul 2018 15:02:46 GMT  
		Size: 2.3 MB (2270920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6df692b84cf35e6038d677f9ab7de2a3c671c57671043da1d20d99252e0d9c42`  
		Last Modified: Fri, 06 Jul 2018 15:02:43 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92b65fcd46a9888f65f4ba2dd7149e5d5433d9f8ee6d831c0178337fafcd6174`  
		Last Modified: Wed, 11 Jul 2018 11:01:57 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7c395347e9dff1709fe37c615afc2c9a112317d08e5af3e244a49c6d041528a`  
		Last Modified: Wed, 11 Jul 2018 11:01:57 GMT  
		Size: 9.1 KB (9124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1a7c959b0c8d9e721d6129e275c26d669fea0a28c074e911a36ba9525212357`  
		Last Modified: Wed, 11 Jul 2018 11:02:01 GMT  
		Size: 11.5 MB (11468276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3484b942f141c75207bcfc79b3ba0add4f84fda79d2e288f4c53bc46271590f2`  
		Last Modified: Wed, 11 Jul 2018 11:01:57 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be9779ba4c532b2cf2f9ec3f2161c89e94aeec3056db0daf250d6752f47ff3a`  
		Last Modified: Wed, 11 Jul 2018 11:01:58 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-rc3-alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:74b4826c5964ac61f2e30c8048738756e378601b8e5db68764fb2ca88cb97b4f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14335625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c23d0f38d56bc555a1e6e9938bd97fc6be483635fbb1971c15e638aa4b95aa9b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 06 Jul 2018 08:18:09 GMT
ADD file:4ff20d593b16518d45b1b1d6efdab141199316dba7a53ce7459249f5de690dfd in / 
# Fri, 06 Jul 2018 08:18:10 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:18:11 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 10:29:07 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 11 Jul 2018 10:29:10 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 11 Jul 2018 10:29:12 GMT
ENV REDIS_VERSION=5.0-rc3
# Wed, 11 Jul 2018 10:29:15 GMT
ENV REDIS_DOWNLOAD_URL=https://github.com/antirez/redis/archive/5.0-rc3.tar.gz
# Wed, 11 Jul 2018 10:29:23 GMT
ENV REDIS_DOWNLOAD_SHA=4bb2eeef3695d66d8b64767825acfeeb157d64536233eac7eae71b236fd6554f
# Tue, 17 Jul 2018 11:11:34 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Tue, 17 Jul 2018 11:11:39 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 17 Jul 2018 11:11:41 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 11:11:44 GMT
WORKDIR /data
# Tue, 17 Jul 2018 11:11:45 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Tue, 17 Jul 2018 11:11:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 11:11:49 GMT
EXPOSE 6379/tcp
# Tue, 17 Jul 2018 11:11:51 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e642bcb5b1890a07dd2fc8be2bc35edf5e2b651d4993e71caef03b4b43ace970`  
		Last Modified: Fri, 06 Jul 2018 08:18:44 GMT  
		Size: 2.2 MB (2194861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e09410b1fce4c4630b3bc57c6ee158ee9821ec415d0acaa1607b9e0bcf76d91`  
		Last Modified: Fri, 06 Jul 2018 08:18:43 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0ff6034eb412b571271c235e27e06653a8c858164a627463f13b8ab52c74843`  
		Last Modified: Wed, 11 Jul 2018 10:34:00 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb36900be1e1e93c13e63a61812c55e9d7ac5ecdb09877b280822361acc94394`  
		Last Modified: Wed, 11 Jul 2018 10:33:59 GMT  
		Size: 9.5 KB (9509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c47408817e585b4c90350ac4da879bc2a14310ce067a172bdd713ce00923b41`  
		Last Modified: Tue, 17 Jul 2018 11:18:56 GMT  
		Size: 12.1 MB (12129264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c33f8940b684672c9f0e7b0f4c9b02bd5b5bca46bb8615281c8887580cf75bc`  
		Last Modified: Tue, 17 Jul 2018 11:18:52 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f180244ed14feffced9e8127c523ff924926d0c939ba7123c51403c63ec1d35`  
		Last Modified: Tue, 17 Jul 2018 11:18:52 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-rc3-alpine` - linux; s390x

```console
$ docker pull redis@sha256:00ae45ed560b7d26e6fc5da5d8c24077669bfef31b5f892d19297023290ebd1c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.5 MB (14472649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e98a00875265a80d58c82dd9f54021e5b5056dafae2e63fada30e4590bcad4f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 06 Jul 2018 11:41:42 GMT
ADD file:376dd7fc34ad39570d2e20f3704305e788ae613c589445b3e8fb880147c3eb59 in / 
# Fri, 06 Jul 2018 11:41:43 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 11:41:43 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 11:55:18 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 11 Jul 2018 11:55:19 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 11 Jul 2018 11:55:19 GMT
ENV REDIS_VERSION=5.0-rc3
# Wed, 11 Jul 2018 11:55:20 GMT
ENV REDIS_DOWNLOAD_URL=https://github.com/antirez/redis/archive/5.0-rc3.tar.gz
# Wed, 11 Jul 2018 11:55:20 GMT
ENV REDIS_DOWNLOAD_SHA=4bb2eeef3695d66d8b64767825acfeeb157d64536233eac7eae71b236fd6554f
# Wed, 11 Jul 2018 11:55:53 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 		wget 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 11 Jul 2018 11:55:53 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 11 Jul 2018 11:55:54 GMT
VOLUME [/data]
# Wed, 11 Jul 2018 11:55:54 GMT
WORKDIR /data
# Wed, 11 Jul 2018 11:55:54 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 11 Jul 2018 11:55:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jul 2018 11:55:54 GMT
EXPOSE 6379/tcp
# Wed, 11 Jul 2018 11:55:55 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:cdf21ace94188d512903eea53ea8559677e0e6ffd5d6a180a1d88c118abc96fc`  
		Last Modified: Fri, 06 Jul 2018 11:42:01 GMT  
		Size: 2.3 MB (2307471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea178433f2f09080fbbf77f09da1b16d588b7ced380d495a2f2ad00d28468338`  
		Last Modified: Fri, 06 Jul 2018 11:42:00 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2a9a36327b56f40ee16a7f6340b3f9e353f4d78c49c98c9b07dadba1340578a`  
		Last Modified: Wed, 11 Jul 2018 11:57:31 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ea5a4d7de8ea3dca3ad24e1379981de341f538e7f33e134951cce1e00c54030`  
		Last Modified: Wed, 11 Jul 2018 11:57:31 GMT  
		Size: 9.2 KB (9239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74975c9fe150254b262772bb323e1685397dd259a7d30c3599bb3943066110fd`  
		Last Modified: Wed, 11 Jul 2018 11:57:34 GMT  
		Size: 12.2 MB (12154016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8e6311d04e2aca9228a41966ca425044e31a83c530b3eb431b6a1f8cee8b0da`  
		Last Modified: Wed, 11 Jul 2018 11:57:31 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:458e6d56344e29e58362e5a1955f689472a85824c4be47f3fa0818455284a1d0`  
		Last Modified: Wed, 11 Jul 2018 11:57:31 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0-rc-alpine`

```console
$ docker pull redis@sha256:d2e0e5b0fb06817cb9c6b95fce4eff8943402253fa5c63c1d42ea6cc60673508
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redis:5.0-rc-alpine` - linux; amd64

```console
$ docker pull redis@sha256:84ace3b79aa38372108b72b5813feafbbdef24cb0b7e4da6b48b569b7812168d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14292188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b76771c6ba23ed575f1364bcd46e4eb7aba5bd7eeceb7b9864623a262741094f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 00:55:42 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 11 Jul 2018 00:55:43 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 11 Jul 2018 00:55:43 GMT
ENV REDIS_VERSION=5.0-rc3
# Wed, 11 Jul 2018 00:55:44 GMT
ENV REDIS_DOWNLOAD_URL=https://github.com/antirez/redis/archive/5.0-rc3.tar.gz
# Wed, 11 Jul 2018 00:55:44 GMT
ENV REDIS_DOWNLOAD_SHA=4bb2eeef3695d66d8b64767825acfeeb157d64536233eac7eae71b236fd6554f
# Mon, 16 Jul 2018 23:49:13 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Mon, 16 Jul 2018 23:49:14 GMT
RUN mkdir /data && chown redis:redis /data
# Mon, 16 Jul 2018 23:49:14 GMT
VOLUME [/data]
# Mon, 16 Jul 2018 23:49:14 GMT
WORKDIR /data
# Mon, 16 Jul 2018 23:49:15 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Mon, 16 Jul 2018 23:49:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 16 Jul 2018 23:49:15 GMT
EXPOSE 6379/tcp
# Mon, 16 Jul 2018 23:49:16 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f20bd2a5c234ffab42de6cbf83522946614b21b642a8208dca6b0fd614c31db`  
		Last Modified: Wed, 11 Jul 2018 00:58:27 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:782ff7702b5cd0a7c0109740838c74945fc27e4ce34e1028c24bf73f8249a63a`  
		Last Modified: Wed, 11 Jul 2018 00:58:27 GMT  
		Size: 9.1 KB (9071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e13cd6e230fc9a533daba4254f4f24500068b39cd39e2e936c53feffffc3c0ee`  
		Last Modified: Mon, 16 Jul 2018 23:49:58 GMT  
		Size: 12.1 MB (12074827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1f2b3cfde19730928836fc7bf20ea8a2b532740b534215badd3188b71c3464`  
		Last Modified: Mon, 16 Jul 2018 23:49:54 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:606c9710d68701cc649a49e3a453d7aef30221c83d61c3b11a840d3c36de79cb`  
		Last Modified: Mon, 16 Jul 2018 23:49:53 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-rc-alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:f0397f99fe16f20cf8404bfb147bbe7a278725c9815d9b8c0eb2d9845b89b0be
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8294670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88ea17d637cb83fa73526614d04fa42564c4dd02ac833fe37ee47fdba82d2ba4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 06 Jul 2018 07:53:29 GMT
ADD file:122e3422d9afa971806601812374fdd9d00c8edc8e9a6df7256e2caa85fab6d1 in / 
# Fri, 06 Jul 2018 07:53:30 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 07:53:30 GMT
CMD ["/bin/sh"]
# Sat, 14 Jul 2018 11:45:22 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 14 Jul 2018 11:45:27 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 14 Jul 2018 11:45:28 GMT
ENV REDIS_VERSION=5.0-rc3
# Sat, 14 Jul 2018 11:45:28 GMT
ENV REDIS_DOWNLOAD_URL=https://github.com/antirez/redis/archive/5.0-rc3.tar.gz
# Sat, 14 Jul 2018 11:45:30 GMT
ENV REDIS_DOWNLOAD_SHA=4bb2eeef3695d66d8b64767825acfeeb157d64536233eac7eae71b236fd6554f
# Tue, 17 Jul 2018 07:53:48 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Tue, 17 Jul 2018 07:53:52 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 17 Jul 2018 07:53:52 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 07:53:53 GMT
WORKDIR /data
# Tue, 17 Jul 2018 07:53:54 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Tue, 17 Jul 2018 07:53:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 07:53:55 GMT
EXPOSE 6379/tcp
# Tue, 17 Jul 2018 07:53:56 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:ee7d700abbf209aa401ef5d53f86af298a25e8154b3259036e9307d08f255c5d`  
		Last Modified: Fri, 06 Jul 2018 07:53:45 GMT  
		Size: 2.1 MB (2145998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1653f4692c1ccea69cd46121d4f1371957f66e97a20141371dd4da10ebaec19`  
		Last Modified: Fri, 06 Jul 2018 07:53:45 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:227a96f1d31d3ceb90336a4a116e3e60b3a1fea72ae1f065e88a6d43417674ff`  
		Last Modified: Sat, 14 Jul 2018 11:59:20 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:407d2c8c18404f038c5326de3eadc14240dea0b342a6237b037d457e4d381d2b`  
		Last Modified: Sat, 14 Jul 2018 11:59:20 GMT  
		Size: 9.0 KB (8980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60b520d2dfc27786d33a7e6306e4e7540ef86f2872131894e3595cbbf4ac704e`  
		Last Modified: Tue, 17 Jul 2018 07:54:33 GMT  
		Size: 6.1 MB (6137702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f88697ec5c6f1b0fec7e148b34e9d9238dbe003efc33102c6c42320291ef5a0`  
		Last Modified: Tue, 17 Jul 2018 07:54:25 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e21b7953a1dcc8d9dc794a9a93e71d3d205e78d9502d79b2c5f5e77c38828ca`  
		Last Modified: Tue, 17 Jul 2018 07:54:26 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-rc-alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:92d641d48f647859a75e0a26b25486f882251e28e77139f1656a56100ab47033
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 MB (13924933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b725b243696fd765ec3f4b31acc6d4b942ba5557e9ba981368893a19cccbd0a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 06 Jul 2018 08:41:03 GMT
ADD file:199a5a48bddabaf1f649f58f3b17c323a1aa1a50e939dfdea3542e4041e91b7b in / 
# Fri, 06 Jul 2018 08:41:03 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:41:04 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 09:37:50 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 11 Jul 2018 09:37:52 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 11 Jul 2018 09:37:53 GMT
ENV REDIS_VERSION=5.0-rc3
# Wed, 11 Jul 2018 09:37:54 GMT
ENV REDIS_DOWNLOAD_URL=https://github.com/antirez/redis/archive/5.0-rc3.tar.gz
# Wed, 11 Jul 2018 09:37:55 GMT
ENV REDIS_DOWNLOAD_SHA=4bb2eeef3695d66d8b64767825acfeeb157d64536233eac7eae71b236fd6554f
# Wed, 11 Jul 2018 09:39:11 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 		wget 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 11 Jul 2018 09:39:13 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 11 Jul 2018 09:39:14 GMT
VOLUME [/data]
# Wed, 11 Jul 2018 09:39:14 GMT
WORKDIR /data
# Wed, 11 Jul 2018 09:39:15 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 11 Jul 2018 09:39:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jul 2018 09:39:17 GMT
EXPOSE 6379/tcp
# Wed, 11 Jul 2018 09:39:18 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:47e04371c99027fae42871b720fdc6cdddcb65062bfa05f0c3bb0a594cb5bbbd`  
		Last Modified: Wed, 27 Jun 2018 19:15:35 GMT  
		Size: 2.1 MB (2099514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4103359e1ecd9a7253d8b8a041d4e81db1ff4a5e1950bc0e02305d221c9e6c2`  
		Last Modified: Fri, 06 Jul 2018 08:42:09 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9721f4fc0d2aca17304d7c1cbef676a8fa7d41c3f0c7201b22d695ff41dfc625`  
		Last Modified: Wed, 11 Jul 2018 09:42:31 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43bc6ac33e9f951cbb1f9ca722ba63c430fa5b2a12e0a46efe7f1e5e15920b16`  
		Last Modified: Wed, 11 Jul 2018 09:42:31 GMT  
		Size: 8.9 KB (8932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f8b9491b210ca50131120c9cedc68c2cad25600b63cbd657a23a0e11f36d5a8`  
		Last Modified: Wed, 11 Jul 2018 09:42:35 GMT  
		Size: 11.8 MB (11814563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:892055c412dac3d79cc593b2568f96bdd66121bbd82b05eb0269403099e3cc1f`  
		Last Modified: Wed, 11 Jul 2018 09:42:31 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cae8e72f0a4799e866cbfb9c6f3953c19ba81a8af62563fb974d4327f4548b86`  
		Last Modified: Wed, 11 Jul 2018 09:42:32 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-rc-alpine` - linux; 386

```console
$ docker pull redis@sha256:88f25c5897d80544f0b488edc1c9c6205ea63c2649b5678236d89e359c0f4a78
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 MB (13750246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9655caede8cca025f8a2f634cd44ff64f8bbb1a0c22ab94e3c335cc409daa6a5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 06 Jul 2018 15:02:06 GMT
ADD file:ebd40cda2f6087daf4d14e6dc1ee0b4a0fb5dc96c70129be8e07de0e5c628312 in / 
# Fri, 06 Jul 2018 15:02:07 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 15:02:07 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 10:59:08 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 11 Jul 2018 10:59:09 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 11 Jul 2018 10:59:09 GMT
ENV REDIS_VERSION=5.0-rc3
# Wed, 11 Jul 2018 10:59:09 GMT
ENV REDIS_DOWNLOAD_URL=https://github.com/antirez/redis/archive/5.0-rc3.tar.gz
# Wed, 11 Jul 2018 10:59:10 GMT
ENV REDIS_DOWNLOAD_SHA=4bb2eeef3695d66d8b64767825acfeeb157d64536233eac7eae71b236fd6554f
# Wed, 11 Jul 2018 11:00:00 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 		wget 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 11 Jul 2018 11:00:01 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 11 Jul 2018 11:00:02 GMT
VOLUME [/data]
# Wed, 11 Jul 2018 11:00:02 GMT
WORKDIR /data
# Wed, 11 Jul 2018 11:00:02 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 11 Jul 2018 11:00:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jul 2018 11:00:02 GMT
EXPOSE 6379/tcp
# Wed, 11 Jul 2018 11:00:03 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:ef15772113129a5330876ce10683bbf6509a4c4c99b3a99894dcbc7560975052`  
		Last Modified: Fri, 06 Jul 2018 15:02:46 GMT  
		Size: 2.3 MB (2270920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6df692b84cf35e6038d677f9ab7de2a3c671c57671043da1d20d99252e0d9c42`  
		Last Modified: Fri, 06 Jul 2018 15:02:43 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92b65fcd46a9888f65f4ba2dd7149e5d5433d9f8ee6d831c0178337fafcd6174`  
		Last Modified: Wed, 11 Jul 2018 11:01:57 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7c395347e9dff1709fe37c615afc2c9a112317d08e5af3e244a49c6d041528a`  
		Last Modified: Wed, 11 Jul 2018 11:01:57 GMT  
		Size: 9.1 KB (9124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1a7c959b0c8d9e721d6129e275c26d669fea0a28c074e911a36ba9525212357`  
		Last Modified: Wed, 11 Jul 2018 11:02:01 GMT  
		Size: 11.5 MB (11468276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3484b942f141c75207bcfc79b3ba0add4f84fda79d2e288f4c53bc46271590f2`  
		Last Modified: Wed, 11 Jul 2018 11:01:57 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be9779ba4c532b2cf2f9ec3f2161c89e94aeec3056db0daf250d6752f47ff3a`  
		Last Modified: Wed, 11 Jul 2018 11:01:58 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-rc-alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:74b4826c5964ac61f2e30c8048738756e378601b8e5db68764fb2ca88cb97b4f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14335625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c23d0f38d56bc555a1e6e9938bd97fc6be483635fbb1971c15e638aa4b95aa9b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 06 Jul 2018 08:18:09 GMT
ADD file:4ff20d593b16518d45b1b1d6efdab141199316dba7a53ce7459249f5de690dfd in / 
# Fri, 06 Jul 2018 08:18:10 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:18:11 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 10:29:07 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 11 Jul 2018 10:29:10 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 11 Jul 2018 10:29:12 GMT
ENV REDIS_VERSION=5.0-rc3
# Wed, 11 Jul 2018 10:29:15 GMT
ENV REDIS_DOWNLOAD_URL=https://github.com/antirez/redis/archive/5.0-rc3.tar.gz
# Wed, 11 Jul 2018 10:29:23 GMT
ENV REDIS_DOWNLOAD_SHA=4bb2eeef3695d66d8b64767825acfeeb157d64536233eac7eae71b236fd6554f
# Tue, 17 Jul 2018 11:11:34 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Tue, 17 Jul 2018 11:11:39 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 17 Jul 2018 11:11:41 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 11:11:44 GMT
WORKDIR /data
# Tue, 17 Jul 2018 11:11:45 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Tue, 17 Jul 2018 11:11:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 11:11:49 GMT
EXPOSE 6379/tcp
# Tue, 17 Jul 2018 11:11:51 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e642bcb5b1890a07dd2fc8be2bc35edf5e2b651d4993e71caef03b4b43ace970`  
		Last Modified: Fri, 06 Jul 2018 08:18:44 GMT  
		Size: 2.2 MB (2194861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e09410b1fce4c4630b3bc57c6ee158ee9821ec415d0acaa1607b9e0bcf76d91`  
		Last Modified: Fri, 06 Jul 2018 08:18:43 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0ff6034eb412b571271c235e27e06653a8c858164a627463f13b8ab52c74843`  
		Last Modified: Wed, 11 Jul 2018 10:34:00 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb36900be1e1e93c13e63a61812c55e9d7ac5ecdb09877b280822361acc94394`  
		Last Modified: Wed, 11 Jul 2018 10:33:59 GMT  
		Size: 9.5 KB (9509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c47408817e585b4c90350ac4da879bc2a14310ce067a172bdd713ce00923b41`  
		Last Modified: Tue, 17 Jul 2018 11:18:56 GMT  
		Size: 12.1 MB (12129264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c33f8940b684672c9f0e7b0f4c9b02bd5b5bca46bb8615281c8887580cf75bc`  
		Last Modified: Tue, 17 Jul 2018 11:18:52 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f180244ed14feffced9e8127c523ff924926d0c939ba7123c51403c63ec1d35`  
		Last Modified: Tue, 17 Jul 2018 11:18:52 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-rc-alpine` - linux; s390x

```console
$ docker pull redis@sha256:00ae45ed560b7d26e6fc5da5d8c24077669bfef31b5f892d19297023290ebd1c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.5 MB (14472649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e98a00875265a80d58c82dd9f54021e5b5056dafae2e63fada30e4590bcad4f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 06 Jul 2018 11:41:42 GMT
ADD file:376dd7fc34ad39570d2e20f3704305e788ae613c589445b3e8fb880147c3eb59 in / 
# Fri, 06 Jul 2018 11:41:43 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 11:41:43 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 11:55:18 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 11 Jul 2018 11:55:19 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 11 Jul 2018 11:55:19 GMT
ENV REDIS_VERSION=5.0-rc3
# Wed, 11 Jul 2018 11:55:20 GMT
ENV REDIS_DOWNLOAD_URL=https://github.com/antirez/redis/archive/5.0-rc3.tar.gz
# Wed, 11 Jul 2018 11:55:20 GMT
ENV REDIS_DOWNLOAD_SHA=4bb2eeef3695d66d8b64767825acfeeb157d64536233eac7eae71b236fd6554f
# Wed, 11 Jul 2018 11:55:53 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 		wget 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 11 Jul 2018 11:55:53 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 11 Jul 2018 11:55:54 GMT
VOLUME [/data]
# Wed, 11 Jul 2018 11:55:54 GMT
WORKDIR /data
# Wed, 11 Jul 2018 11:55:54 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 11 Jul 2018 11:55:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jul 2018 11:55:54 GMT
EXPOSE 6379/tcp
# Wed, 11 Jul 2018 11:55:55 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:cdf21ace94188d512903eea53ea8559677e0e6ffd5d6a180a1d88c118abc96fc`  
		Last Modified: Fri, 06 Jul 2018 11:42:01 GMT  
		Size: 2.3 MB (2307471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea178433f2f09080fbbf77f09da1b16d588b7ced380d495a2f2ad00d28468338`  
		Last Modified: Fri, 06 Jul 2018 11:42:00 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2a9a36327b56f40ee16a7f6340b3f9e353f4d78c49c98c9b07dadba1340578a`  
		Last Modified: Wed, 11 Jul 2018 11:57:31 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ea5a4d7de8ea3dca3ad24e1379981de341f538e7f33e134951cce1e00c54030`  
		Last Modified: Wed, 11 Jul 2018 11:57:31 GMT  
		Size: 9.2 KB (9239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74975c9fe150254b262772bb323e1685397dd259a7d30c3599bb3943066110fd`  
		Last Modified: Wed, 11 Jul 2018 11:57:34 GMT  
		Size: 12.2 MB (12154016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8e6311d04e2aca9228a41966ca425044e31a83c530b3eb431b6a1f8cee8b0da`  
		Last Modified: Wed, 11 Jul 2018 11:57:31 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:458e6d56344e29e58362e5a1955f689472a85824c4be47f3fa0818455284a1d0`  
		Last Modified: Wed, 11 Jul 2018 11:57:31 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:alpine`

```console
$ docker pull redis@sha256:e57274dac037e5b0c7680717fcaaa0efeffb23430e54e839c50819c9d842a38c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redis:alpine` - linux; amd64

```console
$ docker pull redis@sha256:d5f25b8d0f6125579cd3ac00a5a6e017ed55721d1b0850a3915da501fe7fd571
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.6 MB (11624926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80581db8c700155a91bec6fd6398dad9733135e7c58a19472aa679e8367692ab`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 00:55:42 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 11 Jul 2018 00:55:43 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 11 Jul 2018 00:56:55 GMT
ENV REDIS_VERSION=4.0.10
# Wed, 11 Jul 2018 00:56:55 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Wed, 11 Jul 2018 00:56:55 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Wed, 11 Jul 2018 00:57:19 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 11 Jul 2018 00:57:20 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 11 Jul 2018 00:57:21 GMT
VOLUME [/data]
# Wed, 11 Jul 2018 00:57:21 GMT
WORKDIR /data
# Wed, 11 Jul 2018 00:57:21 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 11 Jul 2018 00:57:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jul 2018 00:57:22 GMT
EXPOSE 6379/tcp
# Wed, 11 Jul 2018 00:57:22 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f20bd2a5c234ffab42de6cbf83522946614b21b642a8208dca6b0fd614c31db`  
		Last Modified: Wed, 11 Jul 2018 00:58:27 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:782ff7702b5cd0a7c0109740838c74945fc27e4ce34e1028c24bf73f8249a63a`  
		Last Modified: Wed, 11 Jul 2018 00:58:27 GMT  
		Size: 9.1 KB (9071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd719ead7ee305492514a8dfa2afcd0979a16e8192836b4aaed98d8d932973c0`  
		Last Modified: Wed, 11 Jul 2018 00:59:08 GMT  
		Size: 9.4 MB (9407568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01018940af9a67873ad6737c275cb134372cdf1cda565af58dd14a1e3b85ab2a`  
		Last Modified: Wed, 11 Jul 2018 00:59:05 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f1bfdda9588f5c0643b485580060b460b21b5331f4760778ef3279680e20966`  
		Last Modified: Wed, 11 Jul 2018 00:59:05 GMT  
		Size: 398.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:b3e481a692c4fce21591fbaa4d7588bc6de5ae65161b3d7417e255dd22cabb71
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7968247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c779a2af88b86fffc4ad32a4de83d10f1530ee8cd143552f6bde13f4c009f674`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 06 Jul 2018 07:53:29 GMT
ADD file:122e3422d9afa971806601812374fdd9d00c8edc8e9a6df7256e2caa85fab6d1 in / 
# Fri, 06 Jul 2018 07:53:30 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 07:53:30 GMT
CMD ["/bin/sh"]
# Sat, 14 Jul 2018 11:45:22 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 14 Jul 2018 11:45:27 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 14 Jul 2018 11:50:01 GMT
ENV REDIS_VERSION=4.0.10
# Sat, 14 Jul 2018 11:50:01 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Sat, 14 Jul 2018 11:50:03 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Sat, 14 Jul 2018 11:53:32 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 14 Jul 2018 11:53:36 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 14 Jul 2018 11:53:37 GMT
VOLUME [/data]
# Sat, 14 Jul 2018 11:53:38 GMT
WORKDIR /data
# Sat, 14 Jul 2018 11:53:39 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 14 Jul 2018 11:53:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 14 Jul 2018 11:53:41 GMT
EXPOSE 6379/tcp
# Sat, 14 Jul 2018 11:53:41 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:ee7d700abbf209aa401ef5d53f86af298a25e8154b3259036e9307d08f255c5d`  
		Last Modified: Fri, 06 Jul 2018 07:53:45 GMT  
		Size: 2.1 MB (2145998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1653f4692c1ccea69cd46121d4f1371957f66e97a20141371dd4da10ebaec19`  
		Last Modified: Fri, 06 Jul 2018 07:53:45 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:227a96f1d31d3ceb90336a4a116e3e60b3a1fea72ae1f065e88a6d43417674ff`  
		Last Modified: Sat, 14 Jul 2018 11:59:20 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:407d2c8c18404f038c5326de3eadc14240dea0b342a6237b037d457e4d381d2b`  
		Last Modified: Sat, 14 Jul 2018 11:59:20 GMT  
		Size: 9.0 KB (8980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60992a6a1b91924e91cf90c9671fe2d99c46702895d6ad933bf051e9d3466f3a`  
		Last Modified: Sat, 14 Jul 2018 11:59:55 GMT  
		Size: 5.8 MB (5811279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7136ff1ceed2688f09cfd6d7e0169b4de7b1d36af4744df8120f1caa2caa9ded`  
		Last Modified: Sat, 14 Jul 2018 11:59:48 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c38fded17786397ed4d8613b02b7d3d7d1b87f40912be5677388f909d074fc51`  
		Last Modified: Sat, 14 Jul 2018 11:59:49 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:8f9dc588a0f8e521923fc61b36b9f54c6c19e8d195e8bbc987515388f4b80e8e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.3 MB (11274306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71e4a3388a3fc0459a7009d80bdea4509d59e607be5768f977712648a39a762a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 06 Jul 2018 08:41:03 GMT
ADD file:199a5a48bddabaf1f649f58f3b17c323a1aa1a50e939dfdea3542e4041e91b7b in / 
# Fri, 06 Jul 2018 08:41:03 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:41:04 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 09:37:50 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 11 Jul 2018 09:37:52 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 11 Jul 2018 09:39:48 GMT
ENV REDIS_VERSION=4.0.10
# Wed, 11 Jul 2018 09:39:49 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Wed, 11 Jul 2018 09:39:49 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Wed, 11 Jul 2018 09:40:34 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 11 Jul 2018 09:40:36 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 11 Jul 2018 09:40:37 GMT
VOLUME [/data]
# Wed, 11 Jul 2018 09:40:37 GMT
WORKDIR /data
# Wed, 11 Jul 2018 09:40:38 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 11 Jul 2018 09:40:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jul 2018 09:40:40 GMT
EXPOSE 6379/tcp
# Wed, 11 Jul 2018 09:40:41 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:47e04371c99027fae42871b720fdc6cdddcb65062bfa05f0c3bb0a594cb5bbbd`  
		Last Modified: Wed, 27 Jun 2018 19:15:35 GMT  
		Size: 2.1 MB (2099514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4103359e1ecd9a7253d8b8a041d4e81db1ff4a5e1950bc0e02305d221c9e6c2`  
		Last Modified: Fri, 06 Jul 2018 08:42:09 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9721f4fc0d2aca17304d7c1cbef676a8fa7d41c3f0c7201b22d695ff41dfc625`  
		Last Modified: Wed, 11 Jul 2018 09:42:31 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43bc6ac33e9f951cbb1f9ca722ba63c430fa5b2a12e0a46efe7f1e5e15920b16`  
		Last Modified: Wed, 11 Jul 2018 09:42:31 GMT  
		Size: 8.9 KB (8932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8205b31384995cfe4381d5bc6d4c777589c84b661e6406888c6e68bb215a9ce3`  
		Last Modified: Wed, 11 Jul 2018 09:43:09 GMT  
		Size: 9.2 MB (9163938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccc6caaf591076f59f89644d505bf149dfa92f82e93369e61a76695c6763d7b8`  
		Last Modified: Wed, 11 Jul 2018 09:43:05 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a647132a51ce7a5b39ee00a9d9d84db17c6c740e79e7fadbf1bca04ccfe8e64`  
		Last Modified: Wed, 11 Jul 2018 09:43:06 GMT  
		Size: 398.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine` - linux; 386

```console
$ docker pull redis@sha256:ae54cb5b30f30284eed9796e56ad07e02eb5429a424b3163ed7a3116acf66a33
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11228539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f01a1397dd15a40bbfd83d4c3a8f4b50011e83c258dc02aeb37d8f9f71da0872`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 06 Jul 2018 15:02:06 GMT
ADD file:ebd40cda2f6087daf4d14e6dc1ee0b4a0fb5dc96c70129be8e07de0e5c628312 in / 
# Fri, 06 Jul 2018 15:02:07 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 15:02:07 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 10:59:08 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 11 Jul 2018 10:59:09 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 11 Jul 2018 11:00:24 GMT
ENV REDIS_VERSION=4.0.10
# Wed, 11 Jul 2018 11:00:24 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Wed, 11 Jul 2018 11:00:25 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Wed, 11 Jul 2018 11:00:54 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 11 Jul 2018 11:00:55 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 11 Jul 2018 11:00:55 GMT
VOLUME [/data]
# Wed, 11 Jul 2018 11:00:55 GMT
WORKDIR /data
# Wed, 11 Jul 2018 11:00:55 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 11 Jul 2018 11:00:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jul 2018 11:00:56 GMT
EXPOSE 6379/tcp
# Wed, 11 Jul 2018 11:00:56 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:ef15772113129a5330876ce10683bbf6509a4c4c99b3a99894dcbc7560975052`  
		Last Modified: Fri, 06 Jul 2018 15:02:46 GMT  
		Size: 2.3 MB (2270920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6df692b84cf35e6038d677f9ab7de2a3c671c57671043da1d20d99252e0d9c42`  
		Last Modified: Fri, 06 Jul 2018 15:02:43 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92b65fcd46a9888f65f4ba2dd7149e5d5433d9f8ee6d831c0178337fafcd6174`  
		Last Modified: Wed, 11 Jul 2018 11:01:57 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7c395347e9dff1709fe37c615afc2c9a112317d08e5af3e244a49c6d041528a`  
		Last Modified: Wed, 11 Jul 2018 11:01:57 GMT  
		Size: 9.1 KB (9124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e5cf6056442300c04421065df305e1c5b9554cfdf7e752b38827f9f8de69949`  
		Last Modified: Wed, 11 Jul 2018 11:02:29 GMT  
		Size: 8.9 MB (8946573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85c6d4f5941facb2f46bd67dc2b8cfe59cce833bd66a099504bbb6392f88ae9d`  
		Last Modified: Wed, 11 Jul 2018 11:02:25 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2d698f3b19cb2135cdea72c94836d6d344e96cdf01d26d98155c7452f59f10f`  
		Last Modified: Wed, 11 Jul 2018 11:02:25 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:7e3d726348b3c671c82849b930466a2c5d9a653bf8cee20b05d22d30c68a0e75
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.7 MB (11707798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ca883f49c08aa897718adcb8bad9087d8d904aa45b1ac2368db1399aae58752`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 06 Jul 2018 08:18:09 GMT
ADD file:4ff20d593b16518d45b1b1d6efdab141199316dba7a53ce7459249f5de690dfd in / 
# Fri, 06 Jul 2018 08:18:10 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:18:11 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 10:29:07 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 11 Jul 2018 10:29:10 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 11 Jul 2018 10:30:59 GMT
ENV REDIS_VERSION=4.0.10
# Wed, 11 Jul 2018 10:31:00 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Wed, 11 Jul 2018 10:31:01 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Wed, 11 Jul 2018 10:31:28 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 11 Jul 2018 10:31:32 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 11 Jul 2018 10:31:39 GMT
VOLUME [/data]
# Wed, 11 Jul 2018 10:31:40 GMT
WORKDIR /data
# Wed, 11 Jul 2018 10:31:51 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 11 Jul 2018 10:31:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jul 2018 10:31:54 GMT
EXPOSE 6379/tcp
# Wed, 11 Jul 2018 10:31:56 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e642bcb5b1890a07dd2fc8be2bc35edf5e2b651d4993e71caef03b4b43ace970`  
		Last Modified: Fri, 06 Jul 2018 08:18:44 GMT  
		Size: 2.2 MB (2194861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e09410b1fce4c4630b3bc57c6ee158ee9821ec415d0acaa1607b9e0bcf76d91`  
		Last Modified: Fri, 06 Jul 2018 08:18:43 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0ff6034eb412b571271c235e27e06653a8c858164a627463f13b8ab52c74843`  
		Last Modified: Wed, 11 Jul 2018 10:34:00 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb36900be1e1e93c13e63a61812c55e9d7ac5ecdb09877b280822361acc94394`  
		Last Modified: Wed, 11 Jul 2018 10:33:59 GMT  
		Size: 9.5 KB (9509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2c40a6326b6b59378539f2f86b3bd45afe2cb905363d05507a01427721910b6`  
		Last Modified: Wed, 11 Jul 2018 10:34:31 GMT  
		Size: 9.5 MB (9501435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89c6732ff87de8255dbe95b85e1c26c26faff46a566a1bbc683dcfac53960e9f`  
		Last Modified: Wed, 11 Jul 2018 10:34:28 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78475b3cdab4838abeae013961bca2fcf0c67e6d3d331b7025db0d9b8543c65e`  
		Last Modified: Wed, 11 Jul 2018 10:34:28 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine` - linux; s390x

```console
$ docker pull redis@sha256:2398b7389b9ab8710e118aa8fdfc57d63077b8f153add86aaff67eacf825c597
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.9 MB (11862170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a842416668dd999e8ef3d05706b8591abd15b303812ddb9d8abcfd629fc50fd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 06 Jul 2018 11:41:42 GMT
ADD file:376dd7fc34ad39570d2e20f3704305e788ae613c589445b3e8fb880147c3eb59 in / 
# Fri, 06 Jul 2018 11:41:43 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 11:41:43 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 11:55:18 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 11 Jul 2018 11:55:19 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 11 Jul 2018 11:56:04 GMT
ENV REDIS_VERSION=4.0.10
# Wed, 11 Jul 2018 11:56:04 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Wed, 11 Jul 2018 11:56:04 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Wed, 11 Jul 2018 11:56:36 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 11 Jul 2018 11:56:36 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 11 Jul 2018 11:56:37 GMT
VOLUME [/data]
# Wed, 11 Jul 2018 11:56:37 GMT
WORKDIR /data
# Wed, 11 Jul 2018 11:56:37 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 11 Jul 2018 11:56:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jul 2018 11:56:38 GMT
EXPOSE 6379/tcp
# Wed, 11 Jul 2018 11:56:38 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:cdf21ace94188d512903eea53ea8559677e0e6ffd5d6a180a1d88c118abc96fc`  
		Last Modified: Fri, 06 Jul 2018 11:42:01 GMT  
		Size: 2.3 MB (2307471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea178433f2f09080fbbf77f09da1b16d588b7ced380d495a2f2ad00d28468338`  
		Last Modified: Fri, 06 Jul 2018 11:42:00 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2a9a36327b56f40ee16a7f6340b3f9e353f4d78c49c98c9b07dadba1340578a`  
		Last Modified: Wed, 11 Jul 2018 11:57:31 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ea5a4d7de8ea3dca3ad24e1379981de341f538e7f33e134951cce1e00c54030`  
		Last Modified: Wed, 11 Jul 2018 11:57:31 GMT  
		Size: 9.2 KB (9239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8693b132ba2e231672869727c3f27015cb59a8e8dcd4a98844ec0564d0d66ff4`  
		Last Modified: Wed, 11 Jul 2018 11:57:46 GMT  
		Size: 9.5 MB (9543539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b8818d1b01d04aa02a7ca7d2e5fb7abddec7d4532092d593c67928b17283ff1`  
		Last Modified: Wed, 11 Jul 2018 11:57:43 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c9abd12ff68d5af386798f6fd5ebbabeecfcba06ce72c6dfc676c4e736d99db`  
		Last Modified: Wed, 11 Jul 2018 11:57:43 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:latest`

```console
$ docker pull redis@sha256:54ecd5737bc0581da7d2b2b00c566d5de715488487afcb2478712668f287a50b
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
$ docker pull redis@sha256:f20ec679e1bdf0b6a83b4b4d4097dddf08edf0aa3cc6ff2ef4b9afebb0c8b5ef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32118447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f06a5773f01e1f77eb4487acb3333649716f45b3c32aad038765dc0ab0337bd4`
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
# Tue, 17 Jul 2018 07:26:26 GMT
ENV REDIS_VERSION=4.0.10
# Tue, 17 Jul 2018 07:26:27 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Tue, 17 Jul 2018 07:26:27 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Tue, 17 Jul 2018 07:27:04 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jul 2018 07:27:05 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 17 Jul 2018 07:27:05 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 07:27:05 GMT
WORKDIR /data
# Tue, 17 Jul 2018 07:27:05 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 17 Jul 2018 07:27:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 07:27:06 GMT
EXPOSE 6379/tcp
# Tue, 17 Jul 2018 07:27:06 GMT
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
	-	`sha256:ff89c30e4d8c53c3403ed2c09737963e5e1c2052f285e34c3ae3baf2d49b2017`  
		Last Modified: Tue, 17 Jul 2018 07:34:00 GMT  
		Size: 8.7 MB (8689026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59bf782a86b38d9f3b9e9c20588467b427460403d06146099026cdf1310a7285`  
		Last Modified: Tue, 17 Jul 2018 07:33:59 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce8aaa9fe90ad0dada1d2b2fed22ee9bb64bcfc1a5a4d5f7d2fe392df35050aa`  
		Last Modified: Tue, 17 Jul 2018 07:33:57 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; arm variant v5

```console
$ docker pull redis@sha256:2bb09d344926de0c7a8524766e6c0d6181ecb4d8eff5b210d396bfa8ebf819c2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30510427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f092efddc2efd2fe37064d57d9459c9ca99e7ac14be88b99682387daa6ac47dd`
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
# Tue, 17 Jul 2018 11:35:47 GMT
ENV REDIS_VERSION=4.0.10
# Tue, 17 Jul 2018 11:35:47 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Tue, 17 Jul 2018 11:35:47 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Tue, 17 Jul 2018 11:36:23 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jul 2018 11:36:24 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 17 Jul 2018 11:36:24 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 11:36:24 GMT
WORKDIR /data
# Tue, 17 Jul 2018 11:36:25 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 17 Jul 2018 11:36:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 11:36:25 GMT
EXPOSE 6379/tcp
# Tue, 17 Jul 2018 11:36:26 GMT
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
	-	`sha256:dd83d559eed25bdc4d8fed106f49cef582ccb7af3e2634f3ec7701d7f257b8c6`  
		Last Modified: Tue, 17 Jul 2018 11:38:00 GMT  
		Size: 8.4 MB (8414421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8c6f370ed68b0f35756e372dca24a7a10a1aeebd77342ec09ef7441382804d1`  
		Last Modified: Tue, 17 Jul 2018 11:37:57 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e86730a2ba741d330e4021a399b1f94fb2bcfec4cfaa284ea1dac8786932138`  
		Last Modified: Tue, 17 Jul 2018 11:37:57 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; arm variant v7

```console
$ docker pull redis@sha256:79be1240556b1926491ec2604a53f2d857064089435e5fbcad7bc36454d9ef5e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28387206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:352b5bb9108b7b52dd7d314959f600e8f60f95de85972cca6b8d7bf8e9056316`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Jun 2018 12:03:51 GMT
ADD file:d05cf75761bffd94ce908a55d38fc4966c194aa14492730dfdc1e52c3ddd0892 in / 
# Wed, 27 Jun 2018 12:03:54 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 14:18:29 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 14:18:29 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 14:18:48 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 14:19:36 GMT
ENV REDIS_VERSION=4.0.10
# Wed, 27 Jun 2018 14:19:36 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Wed, 27 Jun 2018 14:19:37 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Wed, 27 Jun 2018 14:20:08 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 14:20:09 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 14:20:09 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 14:20:10 GMT
WORKDIR /data
# Wed, 27 Jun 2018 14:20:10 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 27 Jun 2018 14:20:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 14:20:11 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 14:20:12 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:a779870b6875e97ad1448eaf9befb46011e0fd10ef5014f59d63f624b51de26f`  
		Last Modified: Wed, 27 Jun 2018 12:13:30 GMT  
		Size: 19.3 MB (19286273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c5c410558b6543c5785cecbccb032fd4982038a92ba3b8bb4d5ab8d17e6bed7`  
		Last Modified: Wed, 27 Jun 2018 14:20:30 GMT  
		Size: 1.7 KB (1730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48b858312be07ebaa41456fe36334924f5e53a6a705c42b89b61f26bc6ebb357`  
		Last Modified: Wed, 27 Jun 2018 14:20:30 GMT  
		Size: 915.9 KB (915893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ad0ec942ee79662631a351970ad43c032fcaff13d062dd6ac1db1a09e30bb36`  
		Last Modified: Wed, 27 Jun 2018 14:20:55 GMT  
		Size: 8.2 MB (8182774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7a7123e29129e6aeda6a18f84827b644f69b4c2fa35625fc7db2d71ec8e79b2`  
		Last Modified: Wed, 27 Jun 2018 14:20:52 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f333780152ff38ae2561f35dc050d80099e7bc5772967302e6b2cec435838307`  
		Last Modified: Wed, 27 Jun 2018 14:20:53 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:f5eaa99907a1313b2dbaf92b69165bb246d4cff7324ed394137d2abddeb0aa93
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.7 MB (29748623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e6566de3b84c40644e39f56d7084f886d9dcf315794dc65755a0093a91000fc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:44 GMT
ADD file:b8a1907d99b0b9f75b52f8e25d5c346caf0244b325919c02090ab1e05ba1cf18 in / 
# Wed, 27 Jun 2018 08:47:45 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 13:29:17 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 13:29:18 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 13:30:37 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 13:32:58 GMT
ENV REDIS_VERSION=4.0.10
# Wed, 27 Jun 2018 13:32:58 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Wed, 27 Jun 2018 13:32:59 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Wed, 27 Jun 2018 13:34:48 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 13:34:50 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 13:34:50 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 13:34:51 GMT
WORKDIR /data
# Wed, 27 Jun 2018 13:34:52 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 27 Jun 2018 13:34:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 13:34:55 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 13:34:56 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:153362478bb06475bede3bd6da2ff08a91dd9fc6f245c70bb5a033b65f38ac14`  
		Last Modified: Wed, 27 Jun 2018 08:58:51 GMT  
		Size: 20.3 MB (20348077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3df18432afbb66c603676db6e777b9e8385de68f08a19d034af0da3a1858e1f7`  
		Last Modified: Wed, 27 Jun 2018 13:35:34 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a80a3007c2c23eea873ed4902940ef771b78a7d742c98741d71b816d77682d9`  
		Last Modified: Wed, 27 Jun 2018 13:35:35 GMT  
		Size: 908.2 KB (908185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fdaf9673fc850e17dd5e0510013da65b4afb5cde8b68a302f7f9123ccf336f3`  
		Last Modified: Wed, 27 Jun 2018 13:36:15 GMT  
		Size: 8.5 MB (8490122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9012a9c945a3a860f7436f1be1b625e79f816b8e10c4aeec24eb53ae30fcc66`  
		Last Modified: Wed, 27 Jun 2018 13:36:11 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1419aa21e4a6179df1a4d2cb6cd6e35999b1ea30cfabc04336050ad6cf6019a1`  
		Last Modified: Wed, 27 Jun 2018 13:36:11 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; 386

```console
$ docker pull redis@sha256:af8d14e99f87911876473dfc1548cb97d59a0358c70ff2d671abbc07e4e4682f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32309664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4a9d5b1ae1992296afe04e4f6ec74523e18eb061440bbca0fd3d2388762054d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Jun 2018 10:46:39 GMT
ADD file:e1777a98c0e3aaf9cb1f4116550001b0eed2fe669b2c6449c93b76cccc92e1a2 in / 
# Wed, 27 Jun 2018 10:46:42 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 13:03:38 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 13:03:38 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 13:04:04 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 13:04:56 GMT
ENV REDIS_VERSION=4.0.10
# Wed, 27 Jun 2018 13:04:56 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Wed, 27 Jun 2018 13:04:56 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Wed, 27 Jun 2018 13:05:39 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 13:05:40 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 13:05:40 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 13:05:41 GMT
WORKDIR /data
# Wed, 27 Jun 2018 13:05:48 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 27 Jun 2018 13:05:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 13:05:49 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 13:05:49 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:7de5eb46c52dbee10629f5dc34d9b2445893031ae37083572734bc4f6577757d`  
		Last Modified: Wed, 27 Jun 2018 11:11:02 GMT  
		Size: 23.1 MB (23140103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8df6822d7184835aefd26151cfc1ba536407dc7e8d1f959bc1360b882e7f140`  
		Last Modified: Wed, 27 Jun 2018 13:06:10 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:036521fcd75cdac216f9c6c2c0a4e7c7512653de681714198cfddbf20503ea97`  
		Last Modified: Wed, 27 Jun 2018 13:06:10 GMT  
		Size: 920.3 KB (920308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4de5fa9d11a929e4178ba975855cdb5ac80022cf89332add88ca1dbacbb56f74`  
		Last Modified: Wed, 27 Jun 2018 13:06:59 GMT  
		Size: 8.2 MB (8247020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2400940e500127e1b5fcb395451e501b1735ad9aec2c038aada177eaa2ecc2f`  
		Last Modified: Wed, 27 Jun 2018 13:06:56 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:025c441b992eb77d52e8625819743cdf61a9c7dcabae59aa9e8461f973b6928a`  
		Last Modified: Wed, 27 Jun 2018 13:06:56 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; ppc64le

```console
$ docker pull redis@sha256:b98cde413fa85515af1048cc9e97cfbd5ea823225f08744d9106aa400439439b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.5 MB (32517295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04acf18736888bb0ee2310152a50ba95127feca792e707eb644f83a37c015426`
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
# Tue, 17 Jul 2018 11:11:57 GMT
ENV REDIS_VERSION=4.0.10
# Tue, 17 Jul 2018 11:12:00 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Tue, 17 Jul 2018 11:12:02 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Tue, 17 Jul 2018 11:14:17 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jul 2018 11:14:20 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 17 Jul 2018 11:14:24 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 11:14:26 GMT
WORKDIR /data
# Tue, 17 Jul 2018 11:14:29 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 17 Jul 2018 11:14:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 11:14:33 GMT
EXPOSE 6379/tcp
# Tue, 17 Jul 2018 11:14:35 GMT
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
	-	`sha256:01847c82acd4deacdfedcd2c816291ddece83e8edd8b2712bb5fc8db203f79ef`  
		Last Modified: Tue, 17 Jul 2018 11:19:24 GMT  
		Size: 8.9 MB (8864701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0438c5506554b3640ad18bf19ee31782ea32934e0a77819672b93a187216cdc`  
		Last Modified: Tue, 17 Jul 2018 11:19:19 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:724eca9f82f9147d6e493c1429475331ae0328ab7c6f74b9b153eea94ee74f94`  
		Last Modified: Tue, 17 Jul 2018 11:19:18 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; s390x

```console
$ docker pull redis@sha256:de590b0ce9e150a78bae36a164dafc0ac6682719c3c901ab5f9e93e9b1f842db
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32359648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf86e4f6dc2e7117176d765e9054839f25199f9fcca82bfe955309c088a81469`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 27 Jun 2018 11:48:52 GMT
ADD file:30e8aac3f01e5ddc9493a0fac1c0978b9435ab33031d2af05afca0f9cb7eb71f in / 
# Wed, 27 Jun 2018 11:48:52 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 13:46:24 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 13:46:24 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 13:46:39 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 13:47:34 GMT
ENV REDIS_VERSION=4.0.10
# Wed, 27 Jun 2018 13:47:34 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Wed, 27 Jun 2018 13:47:34 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Wed, 27 Jun 2018 13:48:15 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 13:48:16 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 13:48:16 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 13:48:16 GMT
WORKDIR /data
# Wed, 27 Jun 2018 13:48:17 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 27 Jun 2018 13:48:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 13:48:17 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 13:48:17 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:1c23a44ac305da2d34995cf30530ba5adce0229e4a70678fd4d25384883b1281`  
		Last Modified: Wed, 27 Jun 2018 11:53:41 GMT  
		Size: 22.3 MB (22349871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f450656bdbcbfdc1614dfb82ca8dc61d74ac31bd1698136f082a3f2e49795a`  
		Last Modified: Wed, 27 Jun 2018 13:48:34 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb0e27db9314b93a9ac2f160f4fc84e2fac43e079e197b9721c03d11c645b235`  
		Last Modified: Wed, 27 Jun 2018 13:48:34 GMT  
		Size: 926.8 KB (926820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e193d7441fffd4f07c1a04b6c28f7de97124c5261e8ea61288d3b672ae1bbd32`  
		Last Modified: Wed, 27 Jun 2018 13:48:54 GMT  
		Size: 9.1 MB (9080718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb6e17635bf9170085f0b64dbb534d5148b750749605e393ac65f06991d6bea5`  
		Last Modified: Wed, 27 Jun 2018 13:48:51 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8916c6aa471c34f31573cefd8e04de650015f92fe03cd836f135ce306651029`  
		Last Modified: Wed, 27 Jun 2018 13:48:52 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
