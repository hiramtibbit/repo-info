<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `redis`

-	[`redis:3`](#redis3)
-	[`redis:3.2`](#redis32)
-	[`redis:3.2.12`](#redis3212)
-	[`redis:3.2.12-32bit`](#redis3212-32bit)
-	[`redis:3.2.12-32bit-stretch`](#redis3212-32bit-stretch)
-	[`redis:3.2.12-alpine`](#redis3212-alpine)
-	[`redis:3.2.12-alpine3.8`](#redis3212-alpine38)
-	[`redis:3.2.12-stretch`](#redis3212-stretch)
-	[`redis:3.2-32bit`](#redis32-32bit)
-	[`redis:3.2-32bit-stretch`](#redis32-32bit-stretch)
-	[`redis:3.2-alpine`](#redis32-alpine)
-	[`redis:3.2-alpine3.8`](#redis32-alpine38)
-	[`redis:32bit`](#redis32bit)
-	[`redis:32bit-stretch`](#redis32bit-stretch)
-	[`redis:3.2-stretch`](#redis32-stretch)
-	[`redis:3-32bit`](#redis3-32bit)
-	[`redis:3-32bit-stretch`](#redis3-32bit-stretch)
-	[`redis:3-alpine`](#redis3-alpine)
-	[`redis:3-alpine3.8`](#redis3-alpine38)
-	[`redis:3-stretch`](#redis3-stretch)
-	[`redis:4`](#redis4)
-	[`redis:4.0`](#redis40)
-	[`redis:4.0.11`](#redis4011)
-	[`redis:4.0.11-32bit`](#redis4011-32bit)
-	[`redis:4.0.11-32bit-stretch`](#redis4011-32bit-stretch)
-	[`redis:4.0.11-alpine`](#redis4011-alpine)
-	[`redis:4.0.11-alpine3.8`](#redis4011-alpine38)
-	[`redis:4.0.11-stretch`](#redis4011-stretch)
-	[`redis:4.0-32bit`](#redis40-32bit)
-	[`redis:4.0-32bit-stretch`](#redis40-32bit-stretch)
-	[`redis:4.0-alpine`](#redis40-alpine)
-	[`redis:4.0-alpine3.8`](#redis40-alpine38)
-	[`redis:4.0-stretch`](#redis40-stretch)
-	[`redis:4-32bit`](#redis4-32bit)
-	[`redis:4-32bit-stretch`](#redis4-32bit-stretch)
-	[`redis:4-alpine`](#redis4-alpine)
-	[`redis:4-alpine3.8`](#redis4-alpine38)
-	[`redis:4-stretch`](#redis4-stretch)
-	[`redis:5.0-rc`](#redis50-rc)
-	[`redis:5.0-rc-32bit`](#redis50-rc-32bit)
-	[`redis:5.0-rc-32bit-stretch`](#redis50-rc-32bit-stretch)
-	[`redis:5.0-rc4`](#redis50-rc4)
-	[`redis:5.0-rc4-32bit`](#redis50-rc4-32bit)
-	[`redis:5.0-rc4-32bit-stretch`](#redis50-rc4-32bit-stretch)
-	[`redis:5.0-rc4-alpine`](#redis50-rc4-alpine)
-	[`redis:5.0-rc4-alpine3.8`](#redis50-rc4-alpine38)
-	[`redis:5.0-rc4-stretch`](#redis50-rc4-stretch)
-	[`redis:5.0-rc-alpine`](#redis50-rc-alpine)
-	[`redis:5.0-rc-alpine3.8`](#redis50-rc-alpine38)
-	[`redis:5.0-rc-stretch`](#redis50-rc-stretch)
-	[`redis:alpine`](#redisalpine)
-	[`redis:alpine3.8`](#redisalpine38)
-	[`redis:latest`](#redislatest)
-	[`redis:stretch`](#redisstretch)

## `redis:3`

```console
$ docker pull redis@sha256:b0e0e30549716e5a53d455c7cde800578358ed7cfd9686113433597cea56d899
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
$ docker pull redis@sha256:42970e9271e369d76ed66d5f2032ad28841947f8ca5feb31cf09414a96110e9c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.8 MB (25805696 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f348c4aa1c74bddab7ed9895e8c0785a4ef0d976a7c3c2f6220504d48368da59`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 17 Jul 2018 12:06:02 GMT
ADD file:00cfe29a37b88b6eacba9ac7c46483798b55e0aaaa9a4a3cbbd097606fd23268 in / 
# Tue, 17 Jul 2018 12:06:03 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 13:16:17 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 17 Jul 2018 13:16:18 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 13:16:34 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jul 2018 13:18:39 GMT
ENV REDIS_VERSION=3.2.12
# Tue, 17 Jul 2018 13:18:40 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Tue, 17 Jul 2018 13:18:40 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Tue, 17 Jul 2018 13:19:08 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jul 2018 13:19:09 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 17 Jul 2018 13:19:10 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 13:19:10 GMT
WORKDIR /data
# Tue, 17 Jul 2018 13:19:10 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 17 Jul 2018 13:19:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 13:19:11 GMT
EXPOSE 6379/tcp
# Tue, 17 Jul 2018 13:19:11 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e07de503944f9c1ea958f38d01af058a6e01c94d6df8bf8af06ed73fcf57793e`  
		Last Modified: Tue, 17 Jul 2018 12:18:34 GMT  
		Size: 19.3 MB (19270183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:943cd0bc67fee15476151a53979fa86b3dcd0a6468f3f6af7bfac7d6eb096122`  
		Last Modified: Tue, 17 Jul 2018 13:19:30 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaacdc73b299b2337948d1ae031ade24faf28e5c53f6a7174ae79d505652d351`  
		Last Modified: Tue, 17 Jul 2018 13:19:30 GMT  
		Size: 915.7 KB (915690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10c276b8abb8b1e77a76b5ca8fad4ccd1308f63b27c0d8660948519266882b8a`  
		Last Modified: Tue, 17 Jul 2018 13:20:35 GMT  
		Size: 5.6 MB (5617554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6c69ec5f4ed70d393380fc4cc7e7126ad702096a222750f4ce8a4371b13b379`  
		Last Modified: Tue, 17 Jul 2018 13:20:33 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa8c4c194a0398a735c2ba935e507cb2a94197140df1880a0ab65b688f6dcfd5`  
		Last Modified: Tue, 17 Jul 2018 13:20:33 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:dd22ef0f9647ee0601c7ecb6f794aa761ba1af610011c0766b5c7e680952a241
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 MB (27071318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e80ea82bdf937538285fb1222467e62337ae19c465a447a4179c110a152ed34e`
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
# Tue, 17 Jul 2018 14:08:39 GMT
ENV REDIS_VERSION=3.2.12
# Tue, 17 Jul 2018 14:08:40 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Tue, 17 Jul 2018 14:08:40 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Tue, 17 Jul 2018 14:10:03 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jul 2018 14:10:05 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 17 Jul 2018 14:10:06 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 14:10:07 GMT
WORKDIR /data
# Tue, 17 Jul 2018 14:10:08 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 17 Jul 2018 14:10:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 14:10:09 GMT
EXPOSE 6379/tcp
# Tue, 17 Jul 2018 14:10:10 GMT
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
	-	`sha256:ba17c70998aa898d0f2b7126470dc0e79f7fbc0ea60698ef246fc2beb807fcfa`  
		Last Modified: Tue, 17 Jul 2018 14:13:43 GMT  
		Size: 5.8 MB (5829490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d79bfe4357c78d40e63f1b2bf36e33bd2086219024ac9f6947f36d0f40e9814`  
		Last Modified: Tue, 17 Jul 2018 14:13:41 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:312985a26e37a829e4873d74e361780eaf8784e0080be5e41bd0cf01e7338d63`  
		Last Modified: Tue, 17 Jul 2018 14:13:41 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3` - linux; 386

```console
$ docker pull redis@sha256:7c5f4bdedb2b66d8ec4a42ea99f9e713360d7da91002137d8416608c94e8588f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.7 MB (29700516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9eca774712cfd09135d7ee6ab18e28871188ea7ba18c46111167c1c0192d356`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 17 Jul 2018 10:50:00 GMT
ADD file:14cbcb91de201f648f46b04170dcae29163968a641f94d6ad7c3d77fc707a890 in / 
# Tue, 17 Jul 2018 10:50:03 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 12:23:10 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 17 Jul 2018 12:23:11 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 12:23:41 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jul 2018 12:27:46 GMT
ENV REDIS_VERSION=3.2.12
# Tue, 17 Jul 2018 12:27:47 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Tue, 17 Jul 2018 12:27:47 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Tue, 17 Jul 2018 12:28:31 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jul 2018 12:28:32 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 17 Jul 2018 12:28:32 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 12:28:33 GMT
WORKDIR /data
# Tue, 17 Jul 2018 12:28:33 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 17 Jul 2018 12:28:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 12:28:34 GMT
EXPOSE 6379/tcp
# Tue, 17 Jul 2018 12:28:34 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:9f3675ed6653666b64ffa6c3dc93755d10c6f906a1cab9f061cdbe09c65323f4`  
		Last Modified: Tue, 17 Jul 2018 11:09:22 GMT  
		Size: 23.1 MB (23126377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84887e8dec1b29f9d086fd256da3d494d17a64d340798f1fcb21dedc71ebaff7`  
		Last Modified: Tue, 17 Jul 2018 12:29:02 GMT  
		Size: 1.7 KB (1731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8afd4d9d4d44b1f988d3e8928bbc15179dcd7c1d81df16cb561b6869b06fc183`  
		Last Modified: Tue, 17 Jul 2018 12:29:02 GMT  
		Size: 920.1 KB (920124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d5303f8deb03142199f2b80a9fca24aea6527f570f6a1480c6c4116fe669a9`  
		Last Modified: Tue, 17 Jul 2018 12:30:51 GMT  
		Size: 5.7 MB (5651784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f38e988d1db3b0d531046ce5ff6346e6eec42ab34a1ff047c5c554a300383e3e`  
		Last Modified: Tue, 17 Jul 2018 12:30:48 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9de6e493d970fdbd5ec4a096e1610a19eb649d86f881b92aad9bb1075bed2d86`  
		Last Modified: Tue, 17 Jul 2018 12:30:49 GMT  
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
$ docker pull redis@sha256:903709a04ccf5b50a486377fb80fb7815645eb64fc793ee04eb5509bb8766f56
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.5 MB (29493987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b54f6c03017ed4f216cc9ee0b8f18f70fba0fd23d73880a72fd3eca5bb41fab`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 17 Jul 2018 11:43:35 GMT
ADD file:32e6375c708c1a29a33eef651992d744ae278ef980cfb74086bc899cb8fffdfb in / 
# Tue, 17 Jul 2018 11:43:36 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 13:02:24 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 17 Jul 2018 13:02:24 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 13:02:41 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jul 2018 13:05:11 GMT
ENV REDIS_VERSION=3.2.12
# Tue, 17 Jul 2018 13:05:11 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Tue, 17 Jul 2018 13:05:11 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Tue, 17 Jul 2018 13:05:33 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jul 2018 13:05:34 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 17 Jul 2018 13:05:34 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 13:05:37 GMT
WORKDIR /data
# Tue, 17 Jul 2018 13:05:37 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 17 Jul 2018 13:05:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 13:05:37 GMT
EXPOSE 6379/tcp
# Tue, 17 Jul 2018 13:05:38 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f27811d943553766d4449683ea06b6eac1147fe5de5663e94d39150eb2180735`  
		Last Modified: Tue, 17 Jul 2018 11:47:07 GMT  
		Size: 22.3 MB (22334517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:973f138c78c9416df57bf1a5e695585c6189b3dc9cc2e09e10075426f0942961`  
		Last Modified: Tue, 17 Jul 2018 13:05:54 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f13aaebc2ca3f797f8dbec8143098029172766937f4c422fbf1ab3bcde468035`  
		Last Modified: Tue, 17 Jul 2018 13:05:54 GMT  
		Size: 926.6 KB (926643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc6dc8dc945f777b4ac045d03ac27ac01131ef24f0ae5c4ace949ad99a8fcdec`  
		Last Modified: Tue, 17 Jul 2018 13:06:44 GMT  
		Size: 6.2 MB (6230586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d95eab0121a4ddef0d6175e85c5213211d376c1fa16194ee33166103a5612aed`  
		Last Modified: Tue, 17 Jul 2018 13:06:44 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a9c33ee62a1993fa160b6388bc804dfe3bb7fa08033c389fa23ca65447ca4e8`  
		Last Modified: Tue, 17 Jul 2018 13:06:43 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2`

```console
$ docker pull redis@sha256:b0e0e30549716e5a53d455c7cde800578358ed7cfd9686113433597cea56d899
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
$ docker pull redis@sha256:42970e9271e369d76ed66d5f2032ad28841947f8ca5feb31cf09414a96110e9c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.8 MB (25805696 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f348c4aa1c74bddab7ed9895e8c0785a4ef0d976a7c3c2f6220504d48368da59`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 17 Jul 2018 12:06:02 GMT
ADD file:00cfe29a37b88b6eacba9ac7c46483798b55e0aaaa9a4a3cbbd097606fd23268 in / 
# Tue, 17 Jul 2018 12:06:03 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 13:16:17 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 17 Jul 2018 13:16:18 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 13:16:34 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jul 2018 13:18:39 GMT
ENV REDIS_VERSION=3.2.12
# Tue, 17 Jul 2018 13:18:40 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Tue, 17 Jul 2018 13:18:40 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Tue, 17 Jul 2018 13:19:08 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jul 2018 13:19:09 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 17 Jul 2018 13:19:10 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 13:19:10 GMT
WORKDIR /data
# Tue, 17 Jul 2018 13:19:10 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 17 Jul 2018 13:19:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 13:19:11 GMT
EXPOSE 6379/tcp
# Tue, 17 Jul 2018 13:19:11 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e07de503944f9c1ea958f38d01af058a6e01c94d6df8bf8af06ed73fcf57793e`  
		Last Modified: Tue, 17 Jul 2018 12:18:34 GMT  
		Size: 19.3 MB (19270183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:943cd0bc67fee15476151a53979fa86b3dcd0a6468f3f6af7bfac7d6eb096122`  
		Last Modified: Tue, 17 Jul 2018 13:19:30 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaacdc73b299b2337948d1ae031ade24faf28e5c53f6a7174ae79d505652d351`  
		Last Modified: Tue, 17 Jul 2018 13:19:30 GMT  
		Size: 915.7 KB (915690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10c276b8abb8b1e77a76b5ca8fad4ccd1308f63b27c0d8660948519266882b8a`  
		Last Modified: Tue, 17 Jul 2018 13:20:35 GMT  
		Size: 5.6 MB (5617554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6c69ec5f4ed70d393380fc4cc7e7126ad702096a222750f4ce8a4371b13b379`  
		Last Modified: Tue, 17 Jul 2018 13:20:33 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa8c4c194a0398a735c2ba935e507cb2a94197140df1880a0ab65b688f6dcfd5`  
		Last Modified: Tue, 17 Jul 2018 13:20:33 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:dd22ef0f9647ee0601c7ecb6f794aa761ba1af610011c0766b5c7e680952a241
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 MB (27071318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e80ea82bdf937538285fb1222467e62337ae19c465a447a4179c110a152ed34e`
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
# Tue, 17 Jul 2018 14:08:39 GMT
ENV REDIS_VERSION=3.2.12
# Tue, 17 Jul 2018 14:08:40 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Tue, 17 Jul 2018 14:08:40 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Tue, 17 Jul 2018 14:10:03 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jul 2018 14:10:05 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 17 Jul 2018 14:10:06 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 14:10:07 GMT
WORKDIR /data
# Tue, 17 Jul 2018 14:10:08 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 17 Jul 2018 14:10:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 14:10:09 GMT
EXPOSE 6379/tcp
# Tue, 17 Jul 2018 14:10:10 GMT
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
	-	`sha256:ba17c70998aa898d0f2b7126470dc0e79f7fbc0ea60698ef246fc2beb807fcfa`  
		Last Modified: Tue, 17 Jul 2018 14:13:43 GMT  
		Size: 5.8 MB (5829490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d79bfe4357c78d40e63f1b2bf36e33bd2086219024ac9f6947f36d0f40e9814`  
		Last Modified: Tue, 17 Jul 2018 14:13:41 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:312985a26e37a829e4873d74e361780eaf8784e0080be5e41bd0cf01e7338d63`  
		Last Modified: Tue, 17 Jul 2018 14:13:41 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2` - linux; 386

```console
$ docker pull redis@sha256:7c5f4bdedb2b66d8ec4a42ea99f9e713360d7da91002137d8416608c94e8588f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.7 MB (29700516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9eca774712cfd09135d7ee6ab18e28871188ea7ba18c46111167c1c0192d356`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 17 Jul 2018 10:50:00 GMT
ADD file:14cbcb91de201f648f46b04170dcae29163968a641f94d6ad7c3d77fc707a890 in / 
# Tue, 17 Jul 2018 10:50:03 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 12:23:10 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 17 Jul 2018 12:23:11 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 12:23:41 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jul 2018 12:27:46 GMT
ENV REDIS_VERSION=3.2.12
# Tue, 17 Jul 2018 12:27:47 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Tue, 17 Jul 2018 12:27:47 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Tue, 17 Jul 2018 12:28:31 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jul 2018 12:28:32 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 17 Jul 2018 12:28:32 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 12:28:33 GMT
WORKDIR /data
# Tue, 17 Jul 2018 12:28:33 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 17 Jul 2018 12:28:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 12:28:34 GMT
EXPOSE 6379/tcp
# Tue, 17 Jul 2018 12:28:34 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:9f3675ed6653666b64ffa6c3dc93755d10c6f906a1cab9f061cdbe09c65323f4`  
		Last Modified: Tue, 17 Jul 2018 11:09:22 GMT  
		Size: 23.1 MB (23126377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84887e8dec1b29f9d086fd256da3d494d17a64d340798f1fcb21dedc71ebaff7`  
		Last Modified: Tue, 17 Jul 2018 12:29:02 GMT  
		Size: 1.7 KB (1731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8afd4d9d4d44b1f988d3e8928bbc15179dcd7c1d81df16cb561b6869b06fc183`  
		Last Modified: Tue, 17 Jul 2018 12:29:02 GMT  
		Size: 920.1 KB (920124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d5303f8deb03142199f2b80a9fca24aea6527f570f6a1480c6c4116fe669a9`  
		Last Modified: Tue, 17 Jul 2018 12:30:51 GMT  
		Size: 5.7 MB (5651784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f38e988d1db3b0d531046ce5ff6346e6eec42ab34a1ff047c5c554a300383e3e`  
		Last Modified: Tue, 17 Jul 2018 12:30:48 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9de6e493d970fdbd5ec4a096e1610a19eb649d86f881b92aad9bb1075bed2d86`  
		Last Modified: Tue, 17 Jul 2018 12:30:49 GMT  
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
$ docker pull redis@sha256:903709a04ccf5b50a486377fb80fb7815645eb64fc793ee04eb5509bb8766f56
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.5 MB (29493987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b54f6c03017ed4f216cc9ee0b8f18f70fba0fd23d73880a72fd3eca5bb41fab`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 17 Jul 2018 11:43:35 GMT
ADD file:32e6375c708c1a29a33eef651992d744ae278ef980cfb74086bc899cb8fffdfb in / 
# Tue, 17 Jul 2018 11:43:36 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 13:02:24 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 17 Jul 2018 13:02:24 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 13:02:41 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jul 2018 13:05:11 GMT
ENV REDIS_VERSION=3.2.12
# Tue, 17 Jul 2018 13:05:11 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Tue, 17 Jul 2018 13:05:11 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Tue, 17 Jul 2018 13:05:33 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jul 2018 13:05:34 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 17 Jul 2018 13:05:34 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 13:05:37 GMT
WORKDIR /data
# Tue, 17 Jul 2018 13:05:37 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 17 Jul 2018 13:05:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 13:05:37 GMT
EXPOSE 6379/tcp
# Tue, 17 Jul 2018 13:05:38 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f27811d943553766d4449683ea06b6eac1147fe5de5663e94d39150eb2180735`  
		Last Modified: Tue, 17 Jul 2018 11:47:07 GMT  
		Size: 22.3 MB (22334517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:973f138c78c9416df57bf1a5e695585c6189b3dc9cc2e09e10075426f0942961`  
		Last Modified: Tue, 17 Jul 2018 13:05:54 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f13aaebc2ca3f797f8dbec8143098029172766937f4c422fbf1ab3bcde468035`  
		Last Modified: Tue, 17 Jul 2018 13:05:54 GMT  
		Size: 926.6 KB (926643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc6dc8dc945f777b4ac045d03ac27ac01131ef24f0ae5c4ace949ad99a8fcdec`  
		Last Modified: Tue, 17 Jul 2018 13:06:44 GMT  
		Size: 6.2 MB (6230586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d95eab0121a4ddef0d6175e85c5213211d376c1fa16194ee33166103a5612aed`  
		Last Modified: Tue, 17 Jul 2018 13:06:44 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a9c33ee62a1993fa160b6388bc804dfe3bb7fa08033c389fa23ca65447ca4e8`  
		Last Modified: Tue, 17 Jul 2018 13:06:43 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2.12`

```console
$ docker pull redis@sha256:b0e0e30549716e5a53d455c7cde800578358ed7cfd9686113433597cea56d899
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
$ docker pull redis@sha256:42970e9271e369d76ed66d5f2032ad28841947f8ca5feb31cf09414a96110e9c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.8 MB (25805696 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f348c4aa1c74bddab7ed9895e8c0785a4ef0d976a7c3c2f6220504d48368da59`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 17 Jul 2018 12:06:02 GMT
ADD file:00cfe29a37b88b6eacba9ac7c46483798b55e0aaaa9a4a3cbbd097606fd23268 in / 
# Tue, 17 Jul 2018 12:06:03 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 13:16:17 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 17 Jul 2018 13:16:18 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 13:16:34 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jul 2018 13:18:39 GMT
ENV REDIS_VERSION=3.2.12
# Tue, 17 Jul 2018 13:18:40 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Tue, 17 Jul 2018 13:18:40 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Tue, 17 Jul 2018 13:19:08 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jul 2018 13:19:09 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 17 Jul 2018 13:19:10 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 13:19:10 GMT
WORKDIR /data
# Tue, 17 Jul 2018 13:19:10 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 17 Jul 2018 13:19:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 13:19:11 GMT
EXPOSE 6379/tcp
# Tue, 17 Jul 2018 13:19:11 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e07de503944f9c1ea958f38d01af058a6e01c94d6df8bf8af06ed73fcf57793e`  
		Last Modified: Tue, 17 Jul 2018 12:18:34 GMT  
		Size: 19.3 MB (19270183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:943cd0bc67fee15476151a53979fa86b3dcd0a6468f3f6af7bfac7d6eb096122`  
		Last Modified: Tue, 17 Jul 2018 13:19:30 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaacdc73b299b2337948d1ae031ade24faf28e5c53f6a7174ae79d505652d351`  
		Last Modified: Tue, 17 Jul 2018 13:19:30 GMT  
		Size: 915.7 KB (915690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10c276b8abb8b1e77a76b5ca8fad4ccd1308f63b27c0d8660948519266882b8a`  
		Last Modified: Tue, 17 Jul 2018 13:20:35 GMT  
		Size: 5.6 MB (5617554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6c69ec5f4ed70d393380fc4cc7e7126ad702096a222750f4ce8a4371b13b379`  
		Last Modified: Tue, 17 Jul 2018 13:20:33 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa8c4c194a0398a735c2ba935e507cb2a94197140df1880a0ab65b688f6dcfd5`  
		Last Modified: Tue, 17 Jul 2018 13:20:33 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2.12` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:dd22ef0f9647ee0601c7ecb6f794aa761ba1af610011c0766b5c7e680952a241
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 MB (27071318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e80ea82bdf937538285fb1222467e62337ae19c465a447a4179c110a152ed34e`
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
# Tue, 17 Jul 2018 14:08:39 GMT
ENV REDIS_VERSION=3.2.12
# Tue, 17 Jul 2018 14:08:40 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Tue, 17 Jul 2018 14:08:40 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Tue, 17 Jul 2018 14:10:03 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jul 2018 14:10:05 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 17 Jul 2018 14:10:06 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 14:10:07 GMT
WORKDIR /data
# Tue, 17 Jul 2018 14:10:08 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 17 Jul 2018 14:10:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 14:10:09 GMT
EXPOSE 6379/tcp
# Tue, 17 Jul 2018 14:10:10 GMT
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
	-	`sha256:ba17c70998aa898d0f2b7126470dc0e79f7fbc0ea60698ef246fc2beb807fcfa`  
		Last Modified: Tue, 17 Jul 2018 14:13:43 GMT  
		Size: 5.8 MB (5829490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d79bfe4357c78d40e63f1b2bf36e33bd2086219024ac9f6947f36d0f40e9814`  
		Last Modified: Tue, 17 Jul 2018 14:13:41 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:312985a26e37a829e4873d74e361780eaf8784e0080be5e41bd0cf01e7338d63`  
		Last Modified: Tue, 17 Jul 2018 14:13:41 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2.12` - linux; 386

```console
$ docker pull redis@sha256:7c5f4bdedb2b66d8ec4a42ea99f9e713360d7da91002137d8416608c94e8588f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.7 MB (29700516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9eca774712cfd09135d7ee6ab18e28871188ea7ba18c46111167c1c0192d356`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 17 Jul 2018 10:50:00 GMT
ADD file:14cbcb91de201f648f46b04170dcae29163968a641f94d6ad7c3d77fc707a890 in / 
# Tue, 17 Jul 2018 10:50:03 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 12:23:10 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 17 Jul 2018 12:23:11 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 12:23:41 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jul 2018 12:27:46 GMT
ENV REDIS_VERSION=3.2.12
# Tue, 17 Jul 2018 12:27:47 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Tue, 17 Jul 2018 12:27:47 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Tue, 17 Jul 2018 12:28:31 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jul 2018 12:28:32 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 17 Jul 2018 12:28:32 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 12:28:33 GMT
WORKDIR /data
# Tue, 17 Jul 2018 12:28:33 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 17 Jul 2018 12:28:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 12:28:34 GMT
EXPOSE 6379/tcp
# Tue, 17 Jul 2018 12:28:34 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:9f3675ed6653666b64ffa6c3dc93755d10c6f906a1cab9f061cdbe09c65323f4`  
		Last Modified: Tue, 17 Jul 2018 11:09:22 GMT  
		Size: 23.1 MB (23126377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84887e8dec1b29f9d086fd256da3d494d17a64d340798f1fcb21dedc71ebaff7`  
		Last Modified: Tue, 17 Jul 2018 12:29:02 GMT  
		Size: 1.7 KB (1731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8afd4d9d4d44b1f988d3e8928bbc15179dcd7c1d81df16cb561b6869b06fc183`  
		Last Modified: Tue, 17 Jul 2018 12:29:02 GMT  
		Size: 920.1 KB (920124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d5303f8deb03142199f2b80a9fca24aea6527f570f6a1480c6c4116fe669a9`  
		Last Modified: Tue, 17 Jul 2018 12:30:51 GMT  
		Size: 5.7 MB (5651784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f38e988d1db3b0d531046ce5ff6346e6eec42ab34a1ff047c5c554a300383e3e`  
		Last Modified: Tue, 17 Jul 2018 12:30:48 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9de6e493d970fdbd5ec4a096e1610a19eb649d86f881b92aad9bb1075bed2d86`  
		Last Modified: Tue, 17 Jul 2018 12:30:49 GMT  
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
$ docker pull redis@sha256:903709a04ccf5b50a486377fb80fb7815645eb64fc793ee04eb5509bb8766f56
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.5 MB (29493987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b54f6c03017ed4f216cc9ee0b8f18f70fba0fd23d73880a72fd3eca5bb41fab`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 17 Jul 2018 11:43:35 GMT
ADD file:32e6375c708c1a29a33eef651992d744ae278ef980cfb74086bc899cb8fffdfb in / 
# Tue, 17 Jul 2018 11:43:36 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 13:02:24 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 17 Jul 2018 13:02:24 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 13:02:41 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jul 2018 13:05:11 GMT
ENV REDIS_VERSION=3.2.12
# Tue, 17 Jul 2018 13:05:11 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Tue, 17 Jul 2018 13:05:11 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Tue, 17 Jul 2018 13:05:33 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jul 2018 13:05:34 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 17 Jul 2018 13:05:34 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 13:05:37 GMT
WORKDIR /data
# Tue, 17 Jul 2018 13:05:37 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 17 Jul 2018 13:05:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 13:05:37 GMT
EXPOSE 6379/tcp
# Tue, 17 Jul 2018 13:05:38 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f27811d943553766d4449683ea06b6eac1147fe5de5663e94d39150eb2180735`  
		Last Modified: Tue, 17 Jul 2018 11:47:07 GMT  
		Size: 22.3 MB (22334517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:973f138c78c9416df57bf1a5e695585c6189b3dc9cc2e09e10075426f0942961`  
		Last Modified: Tue, 17 Jul 2018 13:05:54 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f13aaebc2ca3f797f8dbec8143098029172766937f4c422fbf1ab3bcde468035`  
		Last Modified: Tue, 17 Jul 2018 13:05:54 GMT  
		Size: 926.6 KB (926643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc6dc8dc945f777b4ac045d03ac27ac01131ef24f0ae5c4ace949ad99a8fcdec`  
		Last Modified: Tue, 17 Jul 2018 13:06:44 GMT  
		Size: 6.2 MB (6230586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d95eab0121a4ddef0d6175e85c5213211d376c1fa16194ee33166103a5612aed`  
		Last Modified: Tue, 17 Jul 2018 13:06:44 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a9c33ee62a1993fa160b6388bc804dfe3bb7fa08033c389fa23ca65447ca4e8`  
		Last Modified: Tue, 17 Jul 2018 13:06:43 GMT  
		Size: 401.0 B  
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

## `redis:3.2.12-32bit-stretch`

```console
$ docker pull redis@sha256:93edc9db0f556427241131b726e5036f56f38a4ecbf4d75eedc3e43faeb1bd17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:3.2.12-32bit-stretch` - linux; amd64

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

## `redis:3.2.12-alpine3.8`

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

### `redis:3.2.12-alpine3.8` - linux; amd64

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

### `redis:3.2.12-alpine3.8` - linux; arm variant v6

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

### `redis:3.2.12-alpine3.8` - linux; arm64 variant v8

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

### `redis:3.2.12-alpine3.8` - linux; 386

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

### `redis:3.2.12-alpine3.8` - linux; ppc64le

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

### `redis:3.2.12-alpine3.8` - linux; s390x

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

## `redis:3.2.12-stretch`

```console
$ docker pull redis@sha256:b0e0e30549716e5a53d455c7cde800578358ed7cfd9686113433597cea56d899
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

### `redis:3.2.12-stretch` - linux; amd64

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

### `redis:3.2.12-stretch` - linux; arm variant v5

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

### `redis:3.2.12-stretch` - linux; arm variant v7

```console
$ docker pull redis@sha256:42970e9271e369d76ed66d5f2032ad28841947f8ca5feb31cf09414a96110e9c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.8 MB (25805696 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f348c4aa1c74bddab7ed9895e8c0785a4ef0d976a7c3c2f6220504d48368da59`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 17 Jul 2018 12:06:02 GMT
ADD file:00cfe29a37b88b6eacba9ac7c46483798b55e0aaaa9a4a3cbbd097606fd23268 in / 
# Tue, 17 Jul 2018 12:06:03 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 13:16:17 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 17 Jul 2018 13:16:18 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 13:16:34 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jul 2018 13:18:39 GMT
ENV REDIS_VERSION=3.2.12
# Tue, 17 Jul 2018 13:18:40 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Tue, 17 Jul 2018 13:18:40 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Tue, 17 Jul 2018 13:19:08 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jul 2018 13:19:09 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 17 Jul 2018 13:19:10 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 13:19:10 GMT
WORKDIR /data
# Tue, 17 Jul 2018 13:19:10 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 17 Jul 2018 13:19:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 13:19:11 GMT
EXPOSE 6379/tcp
# Tue, 17 Jul 2018 13:19:11 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e07de503944f9c1ea958f38d01af058a6e01c94d6df8bf8af06ed73fcf57793e`  
		Last Modified: Tue, 17 Jul 2018 12:18:34 GMT  
		Size: 19.3 MB (19270183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:943cd0bc67fee15476151a53979fa86b3dcd0a6468f3f6af7bfac7d6eb096122`  
		Last Modified: Tue, 17 Jul 2018 13:19:30 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaacdc73b299b2337948d1ae031ade24faf28e5c53f6a7174ae79d505652d351`  
		Last Modified: Tue, 17 Jul 2018 13:19:30 GMT  
		Size: 915.7 KB (915690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10c276b8abb8b1e77a76b5ca8fad4ccd1308f63b27c0d8660948519266882b8a`  
		Last Modified: Tue, 17 Jul 2018 13:20:35 GMT  
		Size: 5.6 MB (5617554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6c69ec5f4ed70d393380fc4cc7e7126ad702096a222750f4ce8a4371b13b379`  
		Last Modified: Tue, 17 Jul 2018 13:20:33 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa8c4c194a0398a735c2ba935e507cb2a94197140df1880a0ab65b688f6dcfd5`  
		Last Modified: Tue, 17 Jul 2018 13:20:33 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2.12-stretch` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:dd22ef0f9647ee0601c7ecb6f794aa761ba1af610011c0766b5c7e680952a241
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 MB (27071318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e80ea82bdf937538285fb1222467e62337ae19c465a447a4179c110a152ed34e`
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
# Tue, 17 Jul 2018 14:08:39 GMT
ENV REDIS_VERSION=3.2.12
# Tue, 17 Jul 2018 14:08:40 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Tue, 17 Jul 2018 14:08:40 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Tue, 17 Jul 2018 14:10:03 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jul 2018 14:10:05 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 17 Jul 2018 14:10:06 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 14:10:07 GMT
WORKDIR /data
# Tue, 17 Jul 2018 14:10:08 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 17 Jul 2018 14:10:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 14:10:09 GMT
EXPOSE 6379/tcp
# Tue, 17 Jul 2018 14:10:10 GMT
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
	-	`sha256:ba17c70998aa898d0f2b7126470dc0e79f7fbc0ea60698ef246fc2beb807fcfa`  
		Last Modified: Tue, 17 Jul 2018 14:13:43 GMT  
		Size: 5.8 MB (5829490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d79bfe4357c78d40e63f1b2bf36e33bd2086219024ac9f6947f36d0f40e9814`  
		Last Modified: Tue, 17 Jul 2018 14:13:41 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:312985a26e37a829e4873d74e361780eaf8784e0080be5e41bd0cf01e7338d63`  
		Last Modified: Tue, 17 Jul 2018 14:13:41 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2.12-stretch` - linux; 386

```console
$ docker pull redis@sha256:7c5f4bdedb2b66d8ec4a42ea99f9e713360d7da91002137d8416608c94e8588f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.7 MB (29700516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9eca774712cfd09135d7ee6ab18e28871188ea7ba18c46111167c1c0192d356`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 17 Jul 2018 10:50:00 GMT
ADD file:14cbcb91de201f648f46b04170dcae29163968a641f94d6ad7c3d77fc707a890 in / 
# Tue, 17 Jul 2018 10:50:03 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 12:23:10 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 17 Jul 2018 12:23:11 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 12:23:41 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jul 2018 12:27:46 GMT
ENV REDIS_VERSION=3.2.12
# Tue, 17 Jul 2018 12:27:47 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Tue, 17 Jul 2018 12:27:47 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Tue, 17 Jul 2018 12:28:31 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jul 2018 12:28:32 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 17 Jul 2018 12:28:32 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 12:28:33 GMT
WORKDIR /data
# Tue, 17 Jul 2018 12:28:33 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 17 Jul 2018 12:28:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 12:28:34 GMT
EXPOSE 6379/tcp
# Tue, 17 Jul 2018 12:28:34 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:9f3675ed6653666b64ffa6c3dc93755d10c6f906a1cab9f061cdbe09c65323f4`  
		Last Modified: Tue, 17 Jul 2018 11:09:22 GMT  
		Size: 23.1 MB (23126377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84887e8dec1b29f9d086fd256da3d494d17a64d340798f1fcb21dedc71ebaff7`  
		Last Modified: Tue, 17 Jul 2018 12:29:02 GMT  
		Size: 1.7 KB (1731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8afd4d9d4d44b1f988d3e8928bbc15179dcd7c1d81df16cb561b6869b06fc183`  
		Last Modified: Tue, 17 Jul 2018 12:29:02 GMT  
		Size: 920.1 KB (920124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d5303f8deb03142199f2b80a9fca24aea6527f570f6a1480c6c4116fe669a9`  
		Last Modified: Tue, 17 Jul 2018 12:30:51 GMT  
		Size: 5.7 MB (5651784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f38e988d1db3b0d531046ce5ff6346e6eec42ab34a1ff047c5c554a300383e3e`  
		Last Modified: Tue, 17 Jul 2018 12:30:48 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9de6e493d970fdbd5ec4a096e1610a19eb649d86f881b92aad9bb1075bed2d86`  
		Last Modified: Tue, 17 Jul 2018 12:30:49 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2.12-stretch` - linux; ppc64le

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

### `redis:3.2.12-stretch` - linux; s390x

```console
$ docker pull redis@sha256:903709a04ccf5b50a486377fb80fb7815645eb64fc793ee04eb5509bb8766f56
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.5 MB (29493987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b54f6c03017ed4f216cc9ee0b8f18f70fba0fd23d73880a72fd3eca5bb41fab`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 17 Jul 2018 11:43:35 GMT
ADD file:32e6375c708c1a29a33eef651992d744ae278ef980cfb74086bc899cb8fffdfb in / 
# Tue, 17 Jul 2018 11:43:36 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 13:02:24 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 17 Jul 2018 13:02:24 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 13:02:41 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jul 2018 13:05:11 GMT
ENV REDIS_VERSION=3.2.12
# Tue, 17 Jul 2018 13:05:11 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Tue, 17 Jul 2018 13:05:11 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Tue, 17 Jul 2018 13:05:33 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jul 2018 13:05:34 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 17 Jul 2018 13:05:34 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 13:05:37 GMT
WORKDIR /data
# Tue, 17 Jul 2018 13:05:37 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 17 Jul 2018 13:05:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 13:05:37 GMT
EXPOSE 6379/tcp
# Tue, 17 Jul 2018 13:05:38 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f27811d943553766d4449683ea06b6eac1147fe5de5663e94d39150eb2180735`  
		Last Modified: Tue, 17 Jul 2018 11:47:07 GMT  
		Size: 22.3 MB (22334517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:973f138c78c9416df57bf1a5e695585c6189b3dc9cc2e09e10075426f0942961`  
		Last Modified: Tue, 17 Jul 2018 13:05:54 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f13aaebc2ca3f797f8dbec8143098029172766937f4c422fbf1ab3bcde468035`  
		Last Modified: Tue, 17 Jul 2018 13:05:54 GMT  
		Size: 926.6 KB (926643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc6dc8dc945f777b4ac045d03ac27ac01131ef24f0ae5c4ace949ad99a8fcdec`  
		Last Modified: Tue, 17 Jul 2018 13:06:44 GMT  
		Size: 6.2 MB (6230586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d95eab0121a4ddef0d6175e85c5213211d376c1fa16194ee33166103a5612aed`  
		Last Modified: Tue, 17 Jul 2018 13:06:44 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a9c33ee62a1993fa160b6388bc804dfe3bb7fa08033c389fa23ca65447ca4e8`  
		Last Modified: Tue, 17 Jul 2018 13:06:43 GMT  
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

## `redis:3.2-32bit-stretch`

```console
$ docker pull redis@sha256:93edc9db0f556427241131b726e5036f56f38a4ecbf4d75eedc3e43faeb1bd17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:3.2-32bit-stretch` - linux; amd64

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

## `redis:3.2-alpine3.8`

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

### `redis:3.2-alpine3.8` - linux; amd64

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

### `redis:3.2-alpine3.8` - linux; arm variant v6

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

### `redis:3.2-alpine3.8` - linux; arm64 variant v8

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

### `redis:3.2-alpine3.8` - linux; 386

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

### `redis:3.2-alpine3.8` - linux; ppc64le

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

### `redis:3.2-alpine3.8` - linux; s390x

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
$ docker pull redis@sha256:da6952852b0788f14ba04d433622deb59622a1f173d7dd2877814a9d2a2867e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:32bit` - linux; amd64

```console
$ docker pull redis@sha256:fe84d0a4e4cef75dfa311ea926d1258913010972926d0be5c196cb5bf8482b14
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.5 MB (36532693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f9a25abd0e76b9c11b47d5c5907bf30f00b97b0aac0c8bf0d56a59643b4b4c1`
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
# Sat, 04 Aug 2018 02:41:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Aug 2018 02:41:46 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Aug 2018 02:41:47 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Aug 2018 02:41:47 GMT
VOLUME [/data]
# Sat, 04 Aug 2018 02:41:48 GMT
WORKDIR /data
# Sat, 04 Aug 2018 02:41:48 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 04 Aug 2018 02:41:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Aug 2018 02:41:49 GMT
EXPOSE 6379/tcp
# Sat, 04 Aug 2018 02:41:49 GMT
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
	-	`sha256:e154306198fa8896064940cd815661f12e804afc6552bc2a0e4ba26659400680`  
		Last Modified: Sat, 04 Aug 2018 02:50:20 GMT  
		Size: 4.8 MB (4848285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3caf2954b9fd20dcb0aec5f163cc8b39d5e1968f6076bf396c00a427b08902a5`  
		Last Modified: Sat, 04 Aug 2018 02:50:20 GMT  
		Size: 8.3 MB (8254982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88f4fa3511d1990a38614d3a07fcf69323b3f407b04d25d4681a39865f61c52a`  
		Last Modified: Sat, 04 Aug 2018 02:50:17 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95d2829fc554b4f8baf7ddad999db7a0e0449f8f9d72fbf4b2054f9d68741f0a`  
		Last Modified: Sat, 04 Aug 2018 02:50:17 GMT  
		Size: 407.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:32bit-stretch`

```console
$ docker pull redis@sha256:da6952852b0788f14ba04d433622deb59622a1f173d7dd2877814a9d2a2867e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:32bit-stretch` - linux; amd64

```console
$ docker pull redis@sha256:fe84d0a4e4cef75dfa311ea926d1258913010972926d0be5c196cb5bf8482b14
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.5 MB (36532693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f9a25abd0e76b9c11b47d5c5907bf30f00b97b0aac0c8bf0d56a59643b4b4c1`
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
# Sat, 04 Aug 2018 02:41:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Aug 2018 02:41:46 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Aug 2018 02:41:47 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Aug 2018 02:41:47 GMT
VOLUME [/data]
# Sat, 04 Aug 2018 02:41:48 GMT
WORKDIR /data
# Sat, 04 Aug 2018 02:41:48 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 04 Aug 2018 02:41:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Aug 2018 02:41:49 GMT
EXPOSE 6379/tcp
# Sat, 04 Aug 2018 02:41:49 GMT
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
	-	`sha256:e154306198fa8896064940cd815661f12e804afc6552bc2a0e4ba26659400680`  
		Last Modified: Sat, 04 Aug 2018 02:50:20 GMT  
		Size: 4.8 MB (4848285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3caf2954b9fd20dcb0aec5f163cc8b39d5e1968f6076bf396c00a427b08902a5`  
		Last Modified: Sat, 04 Aug 2018 02:50:20 GMT  
		Size: 8.3 MB (8254982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88f4fa3511d1990a38614d3a07fcf69323b3f407b04d25d4681a39865f61c52a`  
		Last Modified: Sat, 04 Aug 2018 02:50:17 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95d2829fc554b4f8baf7ddad999db7a0e0449f8f9d72fbf4b2054f9d68741f0a`  
		Last Modified: Sat, 04 Aug 2018 02:50:17 GMT  
		Size: 407.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2-stretch`

```console
$ docker pull redis@sha256:b0e0e30549716e5a53d455c7cde800578358ed7cfd9686113433597cea56d899
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

### `redis:3.2-stretch` - linux; amd64

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

### `redis:3.2-stretch` - linux; arm variant v5

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

### `redis:3.2-stretch` - linux; arm variant v7

```console
$ docker pull redis@sha256:42970e9271e369d76ed66d5f2032ad28841947f8ca5feb31cf09414a96110e9c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.8 MB (25805696 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f348c4aa1c74bddab7ed9895e8c0785a4ef0d976a7c3c2f6220504d48368da59`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 17 Jul 2018 12:06:02 GMT
ADD file:00cfe29a37b88b6eacba9ac7c46483798b55e0aaaa9a4a3cbbd097606fd23268 in / 
# Tue, 17 Jul 2018 12:06:03 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 13:16:17 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 17 Jul 2018 13:16:18 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 13:16:34 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jul 2018 13:18:39 GMT
ENV REDIS_VERSION=3.2.12
# Tue, 17 Jul 2018 13:18:40 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Tue, 17 Jul 2018 13:18:40 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Tue, 17 Jul 2018 13:19:08 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jul 2018 13:19:09 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 17 Jul 2018 13:19:10 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 13:19:10 GMT
WORKDIR /data
# Tue, 17 Jul 2018 13:19:10 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 17 Jul 2018 13:19:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 13:19:11 GMT
EXPOSE 6379/tcp
# Tue, 17 Jul 2018 13:19:11 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e07de503944f9c1ea958f38d01af058a6e01c94d6df8bf8af06ed73fcf57793e`  
		Last Modified: Tue, 17 Jul 2018 12:18:34 GMT  
		Size: 19.3 MB (19270183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:943cd0bc67fee15476151a53979fa86b3dcd0a6468f3f6af7bfac7d6eb096122`  
		Last Modified: Tue, 17 Jul 2018 13:19:30 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaacdc73b299b2337948d1ae031ade24faf28e5c53f6a7174ae79d505652d351`  
		Last Modified: Tue, 17 Jul 2018 13:19:30 GMT  
		Size: 915.7 KB (915690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10c276b8abb8b1e77a76b5ca8fad4ccd1308f63b27c0d8660948519266882b8a`  
		Last Modified: Tue, 17 Jul 2018 13:20:35 GMT  
		Size: 5.6 MB (5617554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6c69ec5f4ed70d393380fc4cc7e7126ad702096a222750f4ce8a4371b13b379`  
		Last Modified: Tue, 17 Jul 2018 13:20:33 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa8c4c194a0398a735c2ba935e507cb2a94197140df1880a0ab65b688f6dcfd5`  
		Last Modified: Tue, 17 Jul 2018 13:20:33 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2-stretch` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:dd22ef0f9647ee0601c7ecb6f794aa761ba1af610011c0766b5c7e680952a241
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 MB (27071318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e80ea82bdf937538285fb1222467e62337ae19c465a447a4179c110a152ed34e`
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
# Tue, 17 Jul 2018 14:08:39 GMT
ENV REDIS_VERSION=3.2.12
# Tue, 17 Jul 2018 14:08:40 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Tue, 17 Jul 2018 14:08:40 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Tue, 17 Jul 2018 14:10:03 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jul 2018 14:10:05 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 17 Jul 2018 14:10:06 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 14:10:07 GMT
WORKDIR /data
# Tue, 17 Jul 2018 14:10:08 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 17 Jul 2018 14:10:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 14:10:09 GMT
EXPOSE 6379/tcp
# Tue, 17 Jul 2018 14:10:10 GMT
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
	-	`sha256:ba17c70998aa898d0f2b7126470dc0e79f7fbc0ea60698ef246fc2beb807fcfa`  
		Last Modified: Tue, 17 Jul 2018 14:13:43 GMT  
		Size: 5.8 MB (5829490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d79bfe4357c78d40e63f1b2bf36e33bd2086219024ac9f6947f36d0f40e9814`  
		Last Modified: Tue, 17 Jul 2018 14:13:41 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:312985a26e37a829e4873d74e361780eaf8784e0080be5e41bd0cf01e7338d63`  
		Last Modified: Tue, 17 Jul 2018 14:13:41 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2-stretch` - linux; 386

```console
$ docker pull redis@sha256:7c5f4bdedb2b66d8ec4a42ea99f9e713360d7da91002137d8416608c94e8588f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.7 MB (29700516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9eca774712cfd09135d7ee6ab18e28871188ea7ba18c46111167c1c0192d356`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 17 Jul 2018 10:50:00 GMT
ADD file:14cbcb91de201f648f46b04170dcae29163968a641f94d6ad7c3d77fc707a890 in / 
# Tue, 17 Jul 2018 10:50:03 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 12:23:10 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 17 Jul 2018 12:23:11 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 12:23:41 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jul 2018 12:27:46 GMT
ENV REDIS_VERSION=3.2.12
# Tue, 17 Jul 2018 12:27:47 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Tue, 17 Jul 2018 12:27:47 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Tue, 17 Jul 2018 12:28:31 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jul 2018 12:28:32 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 17 Jul 2018 12:28:32 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 12:28:33 GMT
WORKDIR /data
# Tue, 17 Jul 2018 12:28:33 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 17 Jul 2018 12:28:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 12:28:34 GMT
EXPOSE 6379/tcp
# Tue, 17 Jul 2018 12:28:34 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:9f3675ed6653666b64ffa6c3dc93755d10c6f906a1cab9f061cdbe09c65323f4`  
		Last Modified: Tue, 17 Jul 2018 11:09:22 GMT  
		Size: 23.1 MB (23126377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84887e8dec1b29f9d086fd256da3d494d17a64d340798f1fcb21dedc71ebaff7`  
		Last Modified: Tue, 17 Jul 2018 12:29:02 GMT  
		Size: 1.7 KB (1731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8afd4d9d4d44b1f988d3e8928bbc15179dcd7c1d81df16cb561b6869b06fc183`  
		Last Modified: Tue, 17 Jul 2018 12:29:02 GMT  
		Size: 920.1 KB (920124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d5303f8deb03142199f2b80a9fca24aea6527f570f6a1480c6c4116fe669a9`  
		Last Modified: Tue, 17 Jul 2018 12:30:51 GMT  
		Size: 5.7 MB (5651784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f38e988d1db3b0d531046ce5ff6346e6eec42ab34a1ff047c5c554a300383e3e`  
		Last Modified: Tue, 17 Jul 2018 12:30:48 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9de6e493d970fdbd5ec4a096e1610a19eb649d86f881b92aad9bb1075bed2d86`  
		Last Modified: Tue, 17 Jul 2018 12:30:49 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2-stretch` - linux; ppc64le

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

### `redis:3.2-stretch` - linux; s390x

```console
$ docker pull redis@sha256:903709a04ccf5b50a486377fb80fb7815645eb64fc793ee04eb5509bb8766f56
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.5 MB (29493987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b54f6c03017ed4f216cc9ee0b8f18f70fba0fd23d73880a72fd3eca5bb41fab`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 17 Jul 2018 11:43:35 GMT
ADD file:32e6375c708c1a29a33eef651992d744ae278ef980cfb74086bc899cb8fffdfb in / 
# Tue, 17 Jul 2018 11:43:36 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 13:02:24 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 17 Jul 2018 13:02:24 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 13:02:41 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jul 2018 13:05:11 GMT
ENV REDIS_VERSION=3.2.12
# Tue, 17 Jul 2018 13:05:11 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Tue, 17 Jul 2018 13:05:11 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Tue, 17 Jul 2018 13:05:33 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jul 2018 13:05:34 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 17 Jul 2018 13:05:34 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 13:05:37 GMT
WORKDIR /data
# Tue, 17 Jul 2018 13:05:37 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 17 Jul 2018 13:05:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 13:05:37 GMT
EXPOSE 6379/tcp
# Tue, 17 Jul 2018 13:05:38 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f27811d943553766d4449683ea06b6eac1147fe5de5663e94d39150eb2180735`  
		Last Modified: Tue, 17 Jul 2018 11:47:07 GMT  
		Size: 22.3 MB (22334517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:973f138c78c9416df57bf1a5e695585c6189b3dc9cc2e09e10075426f0942961`  
		Last Modified: Tue, 17 Jul 2018 13:05:54 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f13aaebc2ca3f797f8dbec8143098029172766937f4c422fbf1ab3bcde468035`  
		Last Modified: Tue, 17 Jul 2018 13:05:54 GMT  
		Size: 926.6 KB (926643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc6dc8dc945f777b4ac045d03ac27ac01131ef24f0ae5c4ace949ad99a8fcdec`  
		Last Modified: Tue, 17 Jul 2018 13:06:44 GMT  
		Size: 6.2 MB (6230586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d95eab0121a4ddef0d6175e85c5213211d376c1fa16194ee33166103a5612aed`  
		Last Modified: Tue, 17 Jul 2018 13:06:44 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a9c33ee62a1993fa160b6388bc804dfe3bb7fa08033c389fa23ca65447ca4e8`  
		Last Modified: Tue, 17 Jul 2018 13:06:43 GMT  
		Size: 401.0 B  
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

## `redis:3-32bit-stretch`

```console
$ docker pull redis@sha256:93edc9db0f556427241131b726e5036f56f38a4ecbf4d75eedc3e43faeb1bd17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:3-32bit-stretch` - linux; amd64

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

## `redis:3-alpine3.8`

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

### `redis:3-alpine3.8` - linux; amd64

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

### `redis:3-alpine3.8` - linux; arm variant v6

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

### `redis:3-alpine3.8` - linux; arm64 variant v8

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

### `redis:3-alpine3.8` - linux; 386

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

### `redis:3-alpine3.8` - linux; ppc64le

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

### `redis:3-alpine3.8` - linux; s390x

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

## `redis:3-stretch`

```console
$ docker pull redis@sha256:b0e0e30549716e5a53d455c7cde800578358ed7cfd9686113433597cea56d899
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

### `redis:3-stretch` - linux; amd64

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

### `redis:3-stretch` - linux; arm variant v5

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

### `redis:3-stretch` - linux; arm variant v7

```console
$ docker pull redis@sha256:42970e9271e369d76ed66d5f2032ad28841947f8ca5feb31cf09414a96110e9c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.8 MB (25805696 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f348c4aa1c74bddab7ed9895e8c0785a4ef0d976a7c3c2f6220504d48368da59`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 17 Jul 2018 12:06:02 GMT
ADD file:00cfe29a37b88b6eacba9ac7c46483798b55e0aaaa9a4a3cbbd097606fd23268 in / 
# Tue, 17 Jul 2018 12:06:03 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 13:16:17 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 17 Jul 2018 13:16:18 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 13:16:34 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jul 2018 13:18:39 GMT
ENV REDIS_VERSION=3.2.12
# Tue, 17 Jul 2018 13:18:40 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Tue, 17 Jul 2018 13:18:40 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Tue, 17 Jul 2018 13:19:08 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jul 2018 13:19:09 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 17 Jul 2018 13:19:10 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 13:19:10 GMT
WORKDIR /data
# Tue, 17 Jul 2018 13:19:10 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 17 Jul 2018 13:19:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 13:19:11 GMT
EXPOSE 6379/tcp
# Tue, 17 Jul 2018 13:19:11 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e07de503944f9c1ea958f38d01af058a6e01c94d6df8bf8af06ed73fcf57793e`  
		Last Modified: Tue, 17 Jul 2018 12:18:34 GMT  
		Size: 19.3 MB (19270183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:943cd0bc67fee15476151a53979fa86b3dcd0a6468f3f6af7bfac7d6eb096122`  
		Last Modified: Tue, 17 Jul 2018 13:19:30 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaacdc73b299b2337948d1ae031ade24faf28e5c53f6a7174ae79d505652d351`  
		Last Modified: Tue, 17 Jul 2018 13:19:30 GMT  
		Size: 915.7 KB (915690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10c276b8abb8b1e77a76b5ca8fad4ccd1308f63b27c0d8660948519266882b8a`  
		Last Modified: Tue, 17 Jul 2018 13:20:35 GMT  
		Size: 5.6 MB (5617554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6c69ec5f4ed70d393380fc4cc7e7126ad702096a222750f4ce8a4371b13b379`  
		Last Modified: Tue, 17 Jul 2018 13:20:33 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa8c4c194a0398a735c2ba935e507cb2a94197140df1880a0ab65b688f6dcfd5`  
		Last Modified: Tue, 17 Jul 2018 13:20:33 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3-stretch` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:dd22ef0f9647ee0601c7ecb6f794aa761ba1af610011c0766b5c7e680952a241
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 MB (27071318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e80ea82bdf937538285fb1222467e62337ae19c465a447a4179c110a152ed34e`
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
# Tue, 17 Jul 2018 14:08:39 GMT
ENV REDIS_VERSION=3.2.12
# Tue, 17 Jul 2018 14:08:40 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Tue, 17 Jul 2018 14:08:40 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Tue, 17 Jul 2018 14:10:03 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jul 2018 14:10:05 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 17 Jul 2018 14:10:06 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 14:10:07 GMT
WORKDIR /data
# Tue, 17 Jul 2018 14:10:08 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 17 Jul 2018 14:10:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 14:10:09 GMT
EXPOSE 6379/tcp
# Tue, 17 Jul 2018 14:10:10 GMT
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
	-	`sha256:ba17c70998aa898d0f2b7126470dc0e79f7fbc0ea60698ef246fc2beb807fcfa`  
		Last Modified: Tue, 17 Jul 2018 14:13:43 GMT  
		Size: 5.8 MB (5829490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d79bfe4357c78d40e63f1b2bf36e33bd2086219024ac9f6947f36d0f40e9814`  
		Last Modified: Tue, 17 Jul 2018 14:13:41 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:312985a26e37a829e4873d74e361780eaf8784e0080be5e41bd0cf01e7338d63`  
		Last Modified: Tue, 17 Jul 2018 14:13:41 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3-stretch` - linux; 386

```console
$ docker pull redis@sha256:7c5f4bdedb2b66d8ec4a42ea99f9e713360d7da91002137d8416608c94e8588f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.7 MB (29700516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9eca774712cfd09135d7ee6ab18e28871188ea7ba18c46111167c1c0192d356`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 17 Jul 2018 10:50:00 GMT
ADD file:14cbcb91de201f648f46b04170dcae29163968a641f94d6ad7c3d77fc707a890 in / 
# Tue, 17 Jul 2018 10:50:03 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 12:23:10 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 17 Jul 2018 12:23:11 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 12:23:41 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jul 2018 12:27:46 GMT
ENV REDIS_VERSION=3.2.12
# Tue, 17 Jul 2018 12:27:47 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Tue, 17 Jul 2018 12:27:47 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Tue, 17 Jul 2018 12:28:31 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jul 2018 12:28:32 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 17 Jul 2018 12:28:32 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 12:28:33 GMT
WORKDIR /data
# Tue, 17 Jul 2018 12:28:33 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 17 Jul 2018 12:28:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 12:28:34 GMT
EXPOSE 6379/tcp
# Tue, 17 Jul 2018 12:28:34 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:9f3675ed6653666b64ffa6c3dc93755d10c6f906a1cab9f061cdbe09c65323f4`  
		Last Modified: Tue, 17 Jul 2018 11:09:22 GMT  
		Size: 23.1 MB (23126377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84887e8dec1b29f9d086fd256da3d494d17a64d340798f1fcb21dedc71ebaff7`  
		Last Modified: Tue, 17 Jul 2018 12:29:02 GMT  
		Size: 1.7 KB (1731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8afd4d9d4d44b1f988d3e8928bbc15179dcd7c1d81df16cb561b6869b06fc183`  
		Last Modified: Tue, 17 Jul 2018 12:29:02 GMT  
		Size: 920.1 KB (920124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d5303f8deb03142199f2b80a9fca24aea6527f570f6a1480c6c4116fe669a9`  
		Last Modified: Tue, 17 Jul 2018 12:30:51 GMT  
		Size: 5.7 MB (5651784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f38e988d1db3b0d531046ce5ff6346e6eec42ab34a1ff047c5c554a300383e3e`  
		Last Modified: Tue, 17 Jul 2018 12:30:48 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9de6e493d970fdbd5ec4a096e1610a19eb649d86f881b92aad9bb1075bed2d86`  
		Last Modified: Tue, 17 Jul 2018 12:30:49 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3-stretch` - linux; ppc64le

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

### `redis:3-stretch` - linux; s390x

```console
$ docker pull redis@sha256:903709a04ccf5b50a486377fb80fb7815645eb64fc793ee04eb5509bb8766f56
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.5 MB (29493987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b54f6c03017ed4f216cc9ee0b8f18f70fba0fd23d73880a72fd3eca5bb41fab`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 17 Jul 2018 11:43:35 GMT
ADD file:32e6375c708c1a29a33eef651992d744ae278ef980cfb74086bc899cb8fffdfb in / 
# Tue, 17 Jul 2018 11:43:36 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 13:02:24 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 17 Jul 2018 13:02:24 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 13:02:41 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jul 2018 13:05:11 GMT
ENV REDIS_VERSION=3.2.12
# Tue, 17 Jul 2018 13:05:11 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Tue, 17 Jul 2018 13:05:11 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Tue, 17 Jul 2018 13:05:33 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jul 2018 13:05:34 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 17 Jul 2018 13:05:34 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 13:05:37 GMT
WORKDIR /data
# Tue, 17 Jul 2018 13:05:37 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 17 Jul 2018 13:05:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 13:05:37 GMT
EXPOSE 6379/tcp
# Tue, 17 Jul 2018 13:05:38 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f27811d943553766d4449683ea06b6eac1147fe5de5663e94d39150eb2180735`  
		Last Modified: Tue, 17 Jul 2018 11:47:07 GMT  
		Size: 22.3 MB (22334517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:973f138c78c9416df57bf1a5e695585c6189b3dc9cc2e09e10075426f0942961`  
		Last Modified: Tue, 17 Jul 2018 13:05:54 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f13aaebc2ca3f797f8dbec8143098029172766937f4c422fbf1ab3bcde468035`  
		Last Modified: Tue, 17 Jul 2018 13:05:54 GMT  
		Size: 926.6 KB (926643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc6dc8dc945f777b4ac045d03ac27ac01131ef24f0ae5c4ace949ad99a8fcdec`  
		Last Modified: Tue, 17 Jul 2018 13:06:44 GMT  
		Size: 6.2 MB (6230586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d95eab0121a4ddef0d6175e85c5213211d376c1fa16194ee33166103a5612aed`  
		Last Modified: Tue, 17 Jul 2018 13:06:44 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a9c33ee62a1993fa160b6388bc804dfe3bb7fa08033c389fa23ca65447ca4e8`  
		Last Modified: Tue, 17 Jul 2018 13:06:43 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4`

```console
$ docker pull redis@sha256:481970a8481060753c7b1859be284cc2b1a498049e27671b214dc4b9517acbd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `redis:4` - linux; amd64

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

### `redis:4` - linux; arm variant v5

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

### `redis:4` - linux; arm64 variant v8

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

### `redis:4` - linux; ppc64le

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

## `redis:4.0`

```console
$ docker pull redis@sha256:481970a8481060753c7b1859be284cc2b1a498049e27671b214dc4b9517acbd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `redis:4.0` - linux; amd64

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

### `redis:4.0` - linux; arm variant v5

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

### `redis:4.0` - linux; arm64 variant v8

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

### `redis:4.0` - linux; ppc64le

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

## `redis:4.0.11`

```console
$ docker pull redis@sha256:481970a8481060753c7b1859be284cc2b1a498049e27671b214dc4b9517acbd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `redis:4.0.11` - linux; amd64

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

### `redis:4.0.11` - linux; arm variant v5

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

### `redis:4.0.11` - linux; arm64 variant v8

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

### `redis:4.0.11` - linux; ppc64le

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

## `redis:4.0.11-32bit`

```console
$ docker pull redis@sha256:da6952852b0788f14ba04d433622deb59622a1f173d7dd2877814a9d2a2867e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4.0.11-32bit` - linux; amd64

```console
$ docker pull redis@sha256:fe84d0a4e4cef75dfa311ea926d1258913010972926d0be5c196cb5bf8482b14
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.5 MB (36532693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f9a25abd0e76b9c11b47d5c5907bf30f00b97b0aac0c8bf0d56a59643b4b4c1`
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
# Sat, 04 Aug 2018 02:41:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Aug 2018 02:41:46 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Aug 2018 02:41:47 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Aug 2018 02:41:47 GMT
VOLUME [/data]
# Sat, 04 Aug 2018 02:41:48 GMT
WORKDIR /data
# Sat, 04 Aug 2018 02:41:48 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 04 Aug 2018 02:41:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Aug 2018 02:41:49 GMT
EXPOSE 6379/tcp
# Sat, 04 Aug 2018 02:41:49 GMT
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
	-	`sha256:e154306198fa8896064940cd815661f12e804afc6552bc2a0e4ba26659400680`  
		Last Modified: Sat, 04 Aug 2018 02:50:20 GMT  
		Size: 4.8 MB (4848285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3caf2954b9fd20dcb0aec5f163cc8b39d5e1968f6076bf396c00a427b08902a5`  
		Last Modified: Sat, 04 Aug 2018 02:50:20 GMT  
		Size: 8.3 MB (8254982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88f4fa3511d1990a38614d3a07fcf69323b3f407b04d25d4681a39865f61c52a`  
		Last Modified: Sat, 04 Aug 2018 02:50:17 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95d2829fc554b4f8baf7ddad999db7a0e0449f8f9d72fbf4b2054f9d68741f0a`  
		Last Modified: Sat, 04 Aug 2018 02:50:17 GMT  
		Size: 407.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.11-32bit-stretch`

```console
$ docker pull redis@sha256:da6952852b0788f14ba04d433622deb59622a1f173d7dd2877814a9d2a2867e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4.0.11-32bit-stretch` - linux; amd64

```console
$ docker pull redis@sha256:fe84d0a4e4cef75dfa311ea926d1258913010972926d0be5c196cb5bf8482b14
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.5 MB (36532693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f9a25abd0e76b9c11b47d5c5907bf30f00b97b0aac0c8bf0d56a59643b4b4c1`
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
# Sat, 04 Aug 2018 02:41:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Aug 2018 02:41:46 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Aug 2018 02:41:47 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Aug 2018 02:41:47 GMT
VOLUME [/data]
# Sat, 04 Aug 2018 02:41:48 GMT
WORKDIR /data
# Sat, 04 Aug 2018 02:41:48 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 04 Aug 2018 02:41:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Aug 2018 02:41:49 GMT
EXPOSE 6379/tcp
# Sat, 04 Aug 2018 02:41:49 GMT
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
	-	`sha256:e154306198fa8896064940cd815661f12e804afc6552bc2a0e4ba26659400680`  
		Last Modified: Sat, 04 Aug 2018 02:50:20 GMT  
		Size: 4.8 MB (4848285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3caf2954b9fd20dcb0aec5f163cc8b39d5e1968f6076bf396c00a427b08902a5`  
		Last Modified: Sat, 04 Aug 2018 02:50:20 GMT  
		Size: 8.3 MB (8254982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88f4fa3511d1990a38614d3a07fcf69323b3f407b04d25d4681a39865f61c52a`  
		Last Modified: Sat, 04 Aug 2018 02:50:17 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95d2829fc554b4f8baf7ddad999db7a0e0449f8f9d72fbf4b2054f9d68741f0a`  
		Last Modified: Sat, 04 Aug 2018 02:50:17 GMT  
		Size: 407.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.11-alpine`

```console
$ docker pull redis@sha256:1a851771a44668c15876c1c9a8102b65d4acceb145e3b553918084f58db495b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `redis:4.0.11-alpine` - linux; amd64

```console
$ docker pull redis@sha256:a4b72529acce4055542ea684d2f11484da9fb3b70318a23d6f2eb8a71318bc20
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.6 MB (11629671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08bef618c30adc2eebe5c590150c7f16f20a0dcec1152171e78a3a028df92545`
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
# Sat, 04 Aug 2018 02:42:11 GMT
ENV REDIS_VERSION=4.0.11
# Sat, 04 Aug 2018 02:42:12 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Sat, 04 Aug 2018 02:42:12 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Sat, 04 Aug 2018 02:42:36 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 04 Aug 2018 02:42:37 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Aug 2018 02:42:37 GMT
VOLUME [/data]
# Sat, 04 Aug 2018 02:42:37 GMT
WORKDIR /data
# Sat, 04 Aug 2018 02:42:38 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 04 Aug 2018 02:42:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Aug 2018 02:42:38 GMT
EXPOSE 6379/tcp
# Sat, 04 Aug 2018 02:42:39 GMT
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
	-	`sha256:82d1d664c6a7b8305e96d7833492a206c6cbacc86ce5b870114251eebe9da4b5`  
		Last Modified: Sat, 04 Aug 2018 02:54:41 GMT  
		Size: 9.4 MB (9412310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69f8979cc3105273cbe7e6d13f52c014b1f8061e457d132ae928f8f09701df2e`  
		Last Modified: Sat, 04 Aug 2018 02:54:38 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ff30b3bc14850c8bc7d0770ee90622b5f7e95fae87b6b342b2dfb407f1887b8`  
		Last Modified: Sat, 04 Aug 2018 02:54:38 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.11-alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:733ca3b0d5337d215262616f8903a959b6ec27c562252a22a5f57b4da9e97bda
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7970324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:722b119bf4f2912e8d23a8dbac279f9eaa488daedec4fa4b1fe0f646599ef3b3`
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
# Sat, 04 Aug 2018 08:45:47 GMT
ENV REDIS_VERSION=4.0.11
# Sat, 04 Aug 2018 08:45:47 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Sat, 04 Aug 2018 08:45:48 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Sat, 04 Aug 2018 08:49:18 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 04 Aug 2018 08:49:23 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Aug 2018 08:49:24 GMT
VOLUME [/data]
# Sat, 04 Aug 2018 08:49:24 GMT
WORKDIR /data
# Sat, 04 Aug 2018 08:49:26 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 04 Aug 2018 08:49:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Aug 2018 08:49:27 GMT
EXPOSE 6379/tcp
# Sat, 04 Aug 2018 08:49:28 GMT
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
	-	`sha256:b7fe99598159a741061edca2a5c5a8276824c754c5c7f2ab2434c9b9fd1fa4e8`  
		Last Modified: Sat, 04 Aug 2018 08:50:49 GMT  
		Size: 5.8 MB (5813355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eace38cc9ab933614ca814e89fd94a8c94ae25800e8e9de251cb64fe2b74ccca`  
		Last Modified: Sat, 04 Aug 2018 08:50:43 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f71fc77ce1b50c499cba660780a14fbf8e1cbe61eaa51969083080ae9245bc4b`  
		Last Modified: Sat, 04 Aug 2018 08:50:43 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.11-alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:d27aeefe87dadfbd147e20dfa3d7ea680e7871f2dca7f8feea24d943b94878a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.3 MB (11277180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:004ef068b0926dfcb86804ccab767ea542be9d8138fb65bc825ce20c8d48c5fa`
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
# Sat, 04 Aug 2018 09:41:20 GMT
ENV REDIS_VERSION=4.0.11
# Sat, 04 Aug 2018 09:41:21 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Sat, 04 Aug 2018 09:41:22 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Sat, 04 Aug 2018 09:42:13 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 04 Aug 2018 09:42:15 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Aug 2018 09:42:15 GMT
VOLUME [/data]
# Sat, 04 Aug 2018 09:42:16 GMT
WORKDIR /data
# Sat, 04 Aug 2018 09:42:17 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 04 Aug 2018 09:42:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Aug 2018 09:42:18 GMT
EXPOSE 6379/tcp
# Sat, 04 Aug 2018 09:42:19 GMT
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
	-	`sha256:61a9a72010399fae677f01696224a8fd4ac31c9f6b4fad188937398a52bb9ea6`  
		Last Modified: Sat, 04 Aug 2018 09:48:32 GMT  
		Size: 9.2 MB (9166807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5755e826592c4aa946bbe4045dfc9f6c448a41ad0db8d56880bb5e648b3ecc1`  
		Last Modified: Sat, 04 Aug 2018 09:48:28 GMT  
		Size: 101.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67dca8f49af17fc3ae9957a843ebba37d7bacd1ce9cd37443671ddada05eac7a`  
		Last Modified: Sat, 04 Aug 2018 09:48:28 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.11-alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:5d2e898d0710a6898d5875c3182cbe7b647d56a72d1d160830c7b12e245eb6e3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.7 MB (11712915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3dd98787bbc5e424a6def227a26d68fcfdeac188bcea614dc4c76bd6712aada`
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
# Sat, 04 Aug 2018 10:05:12 GMT
ENV REDIS_VERSION=4.0.11
# Sat, 04 Aug 2018 10:05:16 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Sat, 04 Aug 2018 10:05:21 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Sat, 04 Aug 2018 10:07:27 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 04 Aug 2018 10:07:46 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Aug 2018 10:07:50 GMT
VOLUME [/data]
# Sat, 04 Aug 2018 10:07:56 GMT
WORKDIR /data
# Sat, 04 Aug 2018 10:08:09 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 04 Aug 2018 10:08:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Aug 2018 10:08:17 GMT
EXPOSE 6379/tcp
# Sat, 04 Aug 2018 10:08:20 GMT
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
	-	`sha256:6e889eda23cca0db1f644eedd71a2a76059fc40f2a4710052514c5da4bf744e5`  
		Last Modified: Sat, 04 Aug 2018 10:12:38 GMT  
		Size: 9.5 MB (9506552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f9c67d1962fb265d02880f3da50dab1918b2ef4219f2dc7d6bb99c6323994c5`  
		Last Modified: Sat, 04 Aug 2018 10:12:31 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99523df5b1e4729edb21c35de387a4c3040f541e7c24dfcbef0de62f6a8f7c7e`  
		Last Modified: Sat, 04 Aug 2018 10:12:32 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.11-alpine3.8`

```console
$ docker pull redis@sha256:1a851771a44668c15876c1c9a8102b65d4acceb145e3b553918084f58db495b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `redis:4.0.11-alpine3.8` - linux; amd64

```console
$ docker pull redis@sha256:a4b72529acce4055542ea684d2f11484da9fb3b70318a23d6f2eb8a71318bc20
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.6 MB (11629671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08bef618c30adc2eebe5c590150c7f16f20a0dcec1152171e78a3a028df92545`
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
# Sat, 04 Aug 2018 02:42:11 GMT
ENV REDIS_VERSION=4.0.11
# Sat, 04 Aug 2018 02:42:12 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Sat, 04 Aug 2018 02:42:12 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Sat, 04 Aug 2018 02:42:36 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 04 Aug 2018 02:42:37 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Aug 2018 02:42:37 GMT
VOLUME [/data]
# Sat, 04 Aug 2018 02:42:37 GMT
WORKDIR /data
# Sat, 04 Aug 2018 02:42:38 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 04 Aug 2018 02:42:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Aug 2018 02:42:38 GMT
EXPOSE 6379/tcp
# Sat, 04 Aug 2018 02:42:39 GMT
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
	-	`sha256:82d1d664c6a7b8305e96d7833492a206c6cbacc86ce5b870114251eebe9da4b5`  
		Last Modified: Sat, 04 Aug 2018 02:54:41 GMT  
		Size: 9.4 MB (9412310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69f8979cc3105273cbe7e6d13f52c014b1f8061e457d132ae928f8f09701df2e`  
		Last Modified: Sat, 04 Aug 2018 02:54:38 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ff30b3bc14850c8bc7d0770ee90622b5f7e95fae87b6b342b2dfb407f1887b8`  
		Last Modified: Sat, 04 Aug 2018 02:54:38 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.11-alpine3.8` - linux; arm variant v6

```console
$ docker pull redis@sha256:733ca3b0d5337d215262616f8903a959b6ec27c562252a22a5f57b4da9e97bda
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7970324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:722b119bf4f2912e8d23a8dbac279f9eaa488daedec4fa4b1fe0f646599ef3b3`
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
# Sat, 04 Aug 2018 08:45:47 GMT
ENV REDIS_VERSION=4.0.11
# Sat, 04 Aug 2018 08:45:47 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Sat, 04 Aug 2018 08:45:48 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Sat, 04 Aug 2018 08:49:18 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 04 Aug 2018 08:49:23 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Aug 2018 08:49:24 GMT
VOLUME [/data]
# Sat, 04 Aug 2018 08:49:24 GMT
WORKDIR /data
# Sat, 04 Aug 2018 08:49:26 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 04 Aug 2018 08:49:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Aug 2018 08:49:27 GMT
EXPOSE 6379/tcp
# Sat, 04 Aug 2018 08:49:28 GMT
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
	-	`sha256:b7fe99598159a741061edca2a5c5a8276824c754c5c7f2ab2434c9b9fd1fa4e8`  
		Last Modified: Sat, 04 Aug 2018 08:50:49 GMT  
		Size: 5.8 MB (5813355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eace38cc9ab933614ca814e89fd94a8c94ae25800e8e9de251cb64fe2b74ccca`  
		Last Modified: Sat, 04 Aug 2018 08:50:43 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f71fc77ce1b50c499cba660780a14fbf8e1cbe61eaa51969083080ae9245bc4b`  
		Last Modified: Sat, 04 Aug 2018 08:50:43 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.11-alpine3.8` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:d27aeefe87dadfbd147e20dfa3d7ea680e7871f2dca7f8feea24d943b94878a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.3 MB (11277180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:004ef068b0926dfcb86804ccab767ea542be9d8138fb65bc825ce20c8d48c5fa`
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
# Sat, 04 Aug 2018 09:41:20 GMT
ENV REDIS_VERSION=4.0.11
# Sat, 04 Aug 2018 09:41:21 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Sat, 04 Aug 2018 09:41:22 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Sat, 04 Aug 2018 09:42:13 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 04 Aug 2018 09:42:15 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Aug 2018 09:42:15 GMT
VOLUME [/data]
# Sat, 04 Aug 2018 09:42:16 GMT
WORKDIR /data
# Sat, 04 Aug 2018 09:42:17 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 04 Aug 2018 09:42:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Aug 2018 09:42:18 GMT
EXPOSE 6379/tcp
# Sat, 04 Aug 2018 09:42:19 GMT
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
	-	`sha256:61a9a72010399fae677f01696224a8fd4ac31c9f6b4fad188937398a52bb9ea6`  
		Last Modified: Sat, 04 Aug 2018 09:48:32 GMT  
		Size: 9.2 MB (9166807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5755e826592c4aa946bbe4045dfc9f6c448a41ad0db8d56880bb5e648b3ecc1`  
		Last Modified: Sat, 04 Aug 2018 09:48:28 GMT  
		Size: 101.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67dca8f49af17fc3ae9957a843ebba37d7bacd1ce9cd37443671ddada05eac7a`  
		Last Modified: Sat, 04 Aug 2018 09:48:28 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.11-alpine3.8` - linux; ppc64le

```console
$ docker pull redis@sha256:5d2e898d0710a6898d5875c3182cbe7b647d56a72d1d160830c7b12e245eb6e3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.7 MB (11712915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3dd98787bbc5e424a6def227a26d68fcfdeac188bcea614dc4c76bd6712aada`
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
# Sat, 04 Aug 2018 10:05:12 GMT
ENV REDIS_VERSION=4.0.11
# Sat, 04 Aug 2018 10:05:16 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Sat, 04 Aug 2018 10:05:21 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Sat, 04 Aug 2018 10:07:27 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 04 Aug 2018 10:07:46 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Aug 2018 10:07:50 GMT
VOLUME [/data]
# Sat, 04 Aug 2018 10:07:56 GMT
WORKDIR /data
# Sat, 04 Aug 2018 10:08:09 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 04 Aug 2018 10:08:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Aug 2018 10:08:17 GMT
EXPOSE 6379/tcp
# Sat, 04 Aug 2018 10:08:20 GMT
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
	-	`sha256:6e889eda23cca0db1f644eedd71a2a76059fc40f2a4710052514c5da4bf744e5`  
		Last Modified: Sat, 04 Aug 2018 10:12:38 GMT  
		Size: 9.5 MB (9506552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f9c67d1962fb265d02880f3da50dab1918b2ef4219f2dc7d6bb99c6323994c5`  
		Last Modified: Sat, 04 Aug 2018 10:12:31 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99523df5b1e4729edb21c35de387a4c3040f541e7c24dfcbef0de62f6a8f7c7e`  
		Last Modified: Sat, 04 Aug 2018 10:12:32 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.11-stretch`

```console
$ docker pull redis@sha256:481970a8481060753c7b1859be284cc2b1a498049e27671b214dc4b9517acbd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `redis:4.0.11-stretch` - linux; amd64

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

### `redis:4.0.11-stretch` - linux; arm variant v5

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

### `redis:4.0.11-stretch` - linux; arm64 variant v8

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

### `redis:4.0.11-stretch` - linux; ppc64le

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

## `redis:4.0-32bit`

```console
$ docker pull redis@sha256:da6952852b0788f14ba04d433622deb59622a1f173d7dd2877814a9d2a2867e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4.0-32bit` - linux; amd64

```console
$ docker pull redis@sha256:fe84d0a4e4cef75dfa311ea926d1258913010972926d0be5c196cb5bf8482b14
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.5 MB (36532693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f9a25abd0e76b9c11b47d5c5907bf30f00b97b0aac0c8bf0d56a59643b4b4c1`
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
# Sat, 04 Aug 2018 02:41:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Aug 2018 02:41:46 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Aug 2018 02:41:47 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Aug 2018 02:41:47 GMT
VOLUME [/data]
# Sat, 04 Aug 2018 02:41:48 GMT
WORKDIR /data
# Sat, 04 Aug 2018 02:41:48 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 04 Aug 2018 02:41:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Aug 2018 02:41:49 GMT
EXPOSE 6379/tcp
# Sat, 04 Aug 2018 02:41:49 GMT
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
	-	`sha256:e154306198fa8896064940cd815661f12e804afc6552bc2a0e4ba26659400680`  
		Last Modified: Sat, 04 Aug 2018 02:50:20 GMT  
		Size: 4.8 MB (4848285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3caf2954b9fd20dcb0aec5f163cc8b39d5e1968f6076bf396c00a427b08902a5`  
		Last Modified: Sat, 04 Aug 2018 02:50:20 GMT  
		Size: 8.3 MB (8254982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88f4fa3511d1990a38614d3a07fcf69323b3f407b04d25d4681a39865f61c52a`  
		Last Modified: Sat, 04 Aug 2018 02:50:17 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95d2829fc554b4f8baf7ddad999db7a0e0449f8f9d72fbf4b2054f9d68741f0a`  
		Last Modified: Sat, 04 Aug 2018 02:50:17 GMT  
		Size: 407.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0-32bit-stretch`

```console
$ docker pull redis@sha256:da6952852b0788f14ba04d433622deb59622a1f173d7dd2877814a9d2a2867e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4.0-32bit-stretch` - linux; amd64

```console
$ docker pull redis@sha256:fe84d0a4e4cef75dfa311ea926d1258913010972926d0be5c196cb5bf8482b14
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.5 MB (36532693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f9a25abd0e76b9c11b47d5c5907bf30f00b97b0aac0c8bf0d56a59643b4b4c1`
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
# Sat, 04 Aug 2018 02:41:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Aug 2018 02:41:46 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Aug 2018 02:41:47 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Aug 2018 02:41:47 GMT
VOLUME [/data]
# Sat, 04 Aug 2018 02:41:48 GMT
WORKDIR /data
# Sat, 04 Aug 2018 02:41:48 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 04 Aug 2018 02:41:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Aug 2018 02:41:49 GMT
EXPOSE 6379/tcp
# Sat, 04 Aug 2018 02:41:49 GMT
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
	-	`sha256:e154306198fa8896064940cd815661f12e804afc6552bc2a0e4ba26659400680`  
		Last Modified: Sat, 04 Aug 2018 02:50:20 GMT  
		Size: 4.8 MB (4848285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3caf2954b9fd20dcb0aec5f163cc8b39d5e1968f6076bf396c00a427b08902a5`  
		Last Modified: Sat, 04 Aug 2018 02:50:20 GMT  
		Size: 8.3 MB (8254982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88f4fa3511d1990a38614d3a07fcf69323b3f407b04d25d4681a39865f61c52a`  
		Last Modified: Sat, 04 Aug 2018 02:50:17 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95d2829fc554b4f8baf7ddad999db7a0e0449f8f9d72fbf4b2054f9d68741f0a`  
		Last Modified: Sat, 04 Aug 2018 02:50:17 GMT  
		Size: 407.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0-alpine`

```console
$ docker pull redis@sha256:1a851771a44668c15876c1c9a8102b65d4acceb145e3b553918084f58db495b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `redis:4.0-alpine` - linux; amd64

```console
$ docker pull redis@sha256:a4b72529acce4055542ea684d2f11484da9fb3b70318a23d6f2eb8a71318bc20
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.6 MB (11629671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08bef618c30adc2eebe5c590150c7f16f20a0dcec1152171e78a3a028df92545`
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
# Sat, 04 Aug 2018 02:42:11 GMT
ENV REDIS_VERSION=4.0.11
# Sat, 04 Aug 2018 02:42:12 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Sat, 04 Aug 2018 02:42:12 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Sat, 04 Aug 2018 02:42:36 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 04 Aug 2018 02:42:37 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Aug 2018 02:42:37 GMT
VOLUME [/data]
# Sat, 04 Aug 2018 02:42:37 GMT
WORKDIR /data
# Sat, 04 Aug 2018 02:42:38 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 04 Aug 2018 02:42:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Aug 2018 02:42:38 GMT
EXPOSE 6379/tcp
# Sat, 04 Aug 2018 02:42:39 GMT
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
	-	`sha256:82d1d664c6a7b8305e96d7833492a206c6cbacc86ce5b870114251eebe9da4b5`  
		Last Modified: Sat, 04 Aug 2018 02:54:41 GMT  
		Size: 9.4 MB (9412310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69f8979cc3105273cbe7e6d13f52c014b1f8061e457d132ae928f8f09701df2e`  
		Last Modified: Sat, 04 Aug 2018 02:54:38 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ff30b3bc14850c8bc7d0770ee90622b5f7e95fae87b6b342b2dfb407f1887b8`  
		Last Modified: Sat, 04 Aug 2018 02:54:38 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:733ca3b0d5337d215262616f8903a959b6ec27c562252a22a5f57b4da9e97bda
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7970324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:722b119bf4f2912e8d23a8dbac279f9eaa488daedec4fa4b1fe0f646599ef3b3`
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
# Sat, 04 Aug 2018 08:45:47 GMT
ENV REDIS_VERSION=4.0.11
# Sat, 04 Aug 2018 08:45:47 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Sat, 04 Aug 2018 08:45:48 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Sat, 04 Aug 2018 08:49:18 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 04 Aug 2018 08:49:23 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Aug 2018 08:49:24 GMT
VOLUME [/data]
# Sat, 04 Aug 2018 08:49:24 GMT
WORKDIR /data
# Sat, 04 Aug 2018 08:49:26 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 04 Aug 2018 08:49:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Aug 2018 08:49:27 GMT
EXPOSE 6379/tcp
# Sat, 04 Aug 2018 08:49:28 GMT
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
	-	`sha256:b7fe99598159a741061edca2a5c5a8276824c754c5c7f2ab2434c9b9fd1fa4e8`  
		Last Modified: Sat, 04 Aug 2018 08:50:49 GMT  
		Size: 5.8 MB (5813355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eace38cc9ab933614ca814e89fd94a8c94ae25800e8e9de251cb64fe2b74ccca`  
		Last Modified: Sat, 04 Aug 2018 08:50:43 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f71fc77ce1b50c499cba660780a14fbf8e1cbe61eaa51969083080ae9245bc4b`  
		Last Modified: Sat, 04 Aug 2018 08:50:43 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:d27aeefe87dadfbd147e20dfa3d7ea680e7871f2dca7f8feea24d943b94878a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.3 MB (11277180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:004ef068b0926dfcb86804ccab767ea542be9d8138fb65bc825ce20c8d48c5fa`
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
# Sat, 04 Aug 2018 09:41:20 GMT
ENV REDIS_VERSION=4.0.11
# Sat, 04 Aug 2018 09:41:21 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Sat, 04 Aug 2018 09:41:22 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Sat, 04 Aug 2018 09:42:13 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 04 Aug 2018 09:42:15 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Aug 2018 09:42:15 GMT
VOLUME [/data]
# Sat, 04 Aug 2018 09:42:16 GMT
WORKDIR /data
# Sat, 04 Aug 2018 09:42:17 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 04 Aug 2018 09:42:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Aug 2018 09:42:18 GMT
EXPOSE 6379/tcp
# Sat, 04 Aug 2018 09:42:19 GMT
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
	-	`sha256:61a9a72010399fae677f01696224a8fd4ac31c9f6b4fad188937398a52bb9ea6`  
		Last Modified: Sat, 04 Aug 2018 09:48:32 GMT  
		Size: 9.2 MB (9166807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5755e826592c4aa946bbe4045dfc9f6c448a41ad0db8d56880bb5e648b3ecc1`  
		Last Modified: Sat, 04 Aug 2018 09:48:28 GMT  
		Size: 101.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67dca8f49af17fc3ae9957a843ebba37d7bacd1ce9cd37443671ddada05eac7a`  
		Last Modified: Sat, 04 Aug 2018 09:48:28 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:5d2e898d0710a6898d5875c3182cbe7b647d56a72d1d160830c7b12e245eb6e3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.7 MB (11712915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3dd98787bbc5e424a6def227a26d68fcfdeac188bcea614dc4c76bd6712aada`
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
# Sat, 04 Aug 2018 10:05:12 GMT
ENV REDIS_VERSION=4.0.11
# Sat, 04 Aug 2018 10:05:16 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Sat, 04 Aug 2018 10:05:21 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Sat, 04 Aug 2018 10:07:27 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 04 Aug 2018 10:07:46 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Aug 2018 10:07:50 GMT
VOLUME [/data]
# Sat, 04 Aug 2018 10:07:56 GMT
WORKDIR /data
# Sat, 04 Aug 2018 10:08:09 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 04 Aug 2018 10:08:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Aug 2018 10:08:17 GMT
EXPOSE 6379/tcp
# Sat, 04 Aug 2018 10:08:20 GMT
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
	-	`sha256:6e889eda23cca0db1f644eedd71a2a76059fc40f2a4710052514c5da4bf744e5`  
		Last Modified: Sat, 04 Aug 2018 10:12:38 GMT  
		Size: 9.5 MB (9506552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f9c67d1962fb265d02880f3da50dab1918b2ef4219f2dc7d6bb99c6323994c5`  
		Last Modified: Sat, 04 Aug 2018 10:12:31 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99523df5b1e4729edb21c35de387a4c3040f541e7c24dfcbef0de62f6a8f7c7e`  
		Last Modified: Sat, 04 Aug 2018 10:12:32 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0-alpine3.8`

```console
$ docker pull redis@sha256:1a851771a44668c15876c1c9a8102b65d4acceb145e3b553918084f58db495b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `redis:4.0-alpine3.8` - linux; amd64

```console
$ docker pull redis@sha256:a4b72529acce4055542ea684d2f11484da9fb3b70318a23d6f2eb8a71318bc20
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.6 MB (11629671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08bef618c30adc2eebe5c590150c7f16f20a0dcec1152171e78a3a028df92545`
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
# Sat, 04 Aug 2018 02:42:11 GMT
ENV REDIS_VERSION=4.0.11
# Sat, 04 Aug 2018 02:42:12 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Sat, 04 Aug 2018 02:42:12 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Sat, 04 Aug 2018 02:42:36 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 04 Aug 2018 02:42:37 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Aug 2018 02:42:37 GMT
VOLUME [/data]
# Sat, 04 Aug 2018 02:42:37 GMT
WORKDIR /data
# Sat, 04 Aug 2018 02:42:38 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 04 Aug 2018 02:42:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Aug 2018 02:42:38 GMT
EXPOSE 6379/tcp
# Sat, 04 Aug 2018 02:42:39 GMT
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
	-	`sha256:82d1d664c6a7b8305e96d7833492a206c6cbacc86ce5b870114251eebe9da4b5`  
		Last Modified: Sat, 04 Aug 2018 02:54:41 GMT  
		Size: 9.4 MB (9412310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69f8979cc3105273cbe7e6d13f52c014b1f8061e457d132ae928f8f09701df2e`  
		Last Modified: Sat, 04 Aug 2018 02:54:38 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ff30b3bc14850c8bc7d0770ee90622b5f7e95fae87b6b342b2dfb407f1887b8`  
		Last Modified: Sat, 04 Aug 2018 02:54:38 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine3.8` - linux; arm variant v6

```console
$ docker pull redis@sha256:733ca3b0d5337d215262616f8903a959b6ec27c562252a22a5f57b4da9e97bda
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7970324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:722b119bf4f2912e8d23a8dbac279f9eaa488daedec4fa4b1fe0f646599ef3b3`
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
# Sat, 04 Aug 2018 08:45:47 GMT
ENV REDIS_VERSION=4.0.11
# Sat, 04 Aug 2018 08:45:47 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Sat, 04 Aug 2018 08:45:48 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Sat, 04 Aug 2018 08:49:18 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 04 Aug 2018 08:49:23 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Aug 2018 08:49:24 GMT
VOLUME [/data]
# Sat, 04 Aug 2018 08:49:24 GMT
WORKDIR /data
# Sat, 04 Aug 2018 08:49:26 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 04 Aug 2018 08:49:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Aug 2018 08:49:27 GMT
EXPOSE 6379/tcp
# Sat, 04 Aug 2018 08:49:28 GMT
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
	-	`sha256:b7fe99598159a741061edca2a5c5a8276824c754c5c7f2ab2434c9b9fd1fa4e8`  
		Last Modified: Sat, 04 Aug 2018 08:50:49 GMT  
		Size: 5.8 MB (5813355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eace38cc9ab933614ca814e89fd94a8c94ae25800e8e9de251cb64fe2b74ccca`  
		Last Modified: Sat, 04 Aug 2018 08:50:43 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f71fc77ce1b50c499cba660780a14fbf8e1cbe61eaa51969083080ae9245bc4b`  
		Last Modified: Sat, 04 Aug 2018 08:50:43 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine3.8` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:d27aeefe87dadfbd147e20dfa3d7ea680e7871f2dca7f8feea24d943b94878a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.3 MB (11277180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:004ef068b0926dfcb86804ccab767ea542be9d8138fb65bc825ce20c8d48c5fa`
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
# Sat, 04 Aug 2018 09:41:20 GMT
ENV REDIS_VERSION=4.0.11
# Sat, 04 Aug 2018 09:41:21 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Sat, 04 Aug 2018 09:41:22 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Sat, 04 Aug 2018 09:42:13 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 04 Aug 2018 09:42:15 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Aug 2018 09:42:15 GMT
VOLUME [/data]
# Sat, 04 Aug 2018 09:42:16 GMT
WORKDIR /data
# Sat, 04 Aug 2018 09:42:17 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 04 Aug 2018 09:42:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Aug 2018 09:42:18 GMT
EXPOSE 6379/tcp
# Sat, 04 Aug 2018 09:42:19 GMT
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
	-	`sha256:61a9a72010399fae677f01696224a8fd4ac31c9f6b4fad188937398a52bb9ea6`  
		Last Modified: Sat, 04 Aug 2018 09:48:32 GMT  
		Size: 9.2 MB (9166807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5755e826592c4aa946bbe4045dfc9f6c448a41ad0db8d56880bb5e648b3ecc1`  
		Last Modified: Sat, 04 Aug 2018 09:48:28 GMT  
		Size: 101.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67dca8f49af17fc3ae9957a843ebba37d7bacd1ce9cd37443671ddada05eac7a`  
		Last Modified: Sat, 04 Aug 2018 09:48:28 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine3.8` - linux; ppc64le

```console
$ docker pull redis@sha256:5d2e898d0710a6898d5875c3182cbe7b647d56a72d1d160830c7b12e245eb6e3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.7 MB (11712915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3dd98787bbc5e424a6def227a26d68fcfdeac188bcea614dc4c76bd6712aada`
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
# Sat, 04 Aug 2018 10:05:12 GMT
ENV REDIS_VERSION=4.0.11
# Sat, 04 Aug 2018 10:05:16 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Sat, 04 Aug 2018 10:05:21 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Sat, 04 Aug 2018 10:07:27 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 04 Aug 2018 10:07:46 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Aug 2018 10:07:50 GMT
VOLUME [/data]
# Sat, 04 Aug 2018 10:07:56 GMT
WORKDIR /data
# Sat, 04 Aug 2018 10:08:09 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 04 Aug 2018 10:08:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Aug 2018 10:08:17 GMT
EXPOSE 6379/tcp
# Sat, 04 Aug 2018 10:08:20 GMT
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
	-	`sha256:6e889eda23cca0db1f644eedd71a2a76059fc40f2a4710052514c5da4bf744e5`  
		Last Modified: Sat, 04 Aug 2018 10:12:38 GMT  
		Size: 9.5 MB (9506552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f9c67d1962fb265d02880f3da50dab1918b2ef4219f2dc7d6bb99c6323994c5`  
		Last Modified: Sat, 04 Aug 2018 10:12:31 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99523df5b1e4729edb21c35de387a4c3040f541e7c24dfcbef0de62f6a8f7c7e`  
		Last Modified: Sat, 04 Aug 2018 10:12:32 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0-stretch`

```console
$ docker pull redis@sha256:481970a8481060753c7b1859be284cc2b1a498049e27671b214dc4b9517acbd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `redis:4.0-stretch` - linux; amd64

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

### `redis:4.0-stretch` - linux; arm variant v5

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

### `redis:4.0-stretch` - linux; arm64 variant v8

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

### `redis:4.0-stretch` - linux; ppc64le

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

## `redis:4-32bit`

```console
$ docker pull redis@sha256:da6952852b0788f14ba04d433622deb59622a1f173d7dd2877814a9d2a2867e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4-32bit` - linux; amd64

```console
$ docker pull redis@sha256:fe84d0a4e4cef75dfa311ea926d1258913010972926d0be5c196cb5bf8482b14
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.5 MB (36532693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f9a25abd0e76b9c11b47d5c5907bf30f00b97b0aac0c8bf0d56a59643b4b4c1`
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
# Sat, 04 Aug 2018 02:41:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Aug 2018 02:41:46 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Aug 2018 02:41:47 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Aug 2018 02:41:47 GMT
VOLUME [/data]
# Sat, 04 Aug 2018 02:41:48 GMT
WORKDIR /data
# Sat, 04 Aug 2018 02:41:48 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 04 Aug 2018 02:41:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Aug 2018 02:41:49 GMT
EXPOSE 6379/tcp
# Sat, 04 Aug 2018 02:41:49 GMT
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
	-	`sha256:e154306198fa8896064940cd815661f12e804afc6552bc2a0e4ba26659400680`  
		Last Modified: Sat, 04 Aug 2018 02:50:20 GMT  
		Size: 4.8 MB (4848285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3caf2954b9fd20dcb0aec5f163cc8b39d5e1968f6076bf396c00a427b08902a5`  
		Last Modified: Sat, 04 Aug 2018 02:50:20 GMT  
		Size: 8.3 MB (8254982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88f4fa3511d1990a38614d3a07fcf69323b3f407b04d25d4681a39865f61c52a`  
		Last Modified: Sat, 04 Aug 2018 02:50:17 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95d2829fc554b4f8baf7ddad999db7a0e0449f8f9d72fbf4b2054f9d68741f0a`  
		Last Modified: Sat, 04 Aug 2018 02:50:17 GMT  
		Size: 407.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4-32bit-stretch`

```console
$ docker pull redis@sha256:da6952852b0788f14ba04d433622deb59622a1f173d7dd2877814a9d2a2867e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4-32bit-stretch` - linux; amd64

```console
$ docker pull redis@sha256:fe84d0a4e4cef75dfa311ea926d1258913010972926d0be5c196cb5bf8482b14
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.5 MB (36532693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f9a25abd0e76b9c11b47d5c5907bf30f00b97b0aac0c8bf0d56a59643b4b4c1`
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
# Sat, 04 Aug 2018 02:41:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Aug 2018 02:41:46 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Aug 2018 02:41:47 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Aug 2018 02:41:47 GMT
VOLUME [/data]
# Sat, 04 Aug 2018 02:41:48 GMT
WORKDIR /data
# Sat, 04 Aug 2018 02:41:48 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 04 Aug 2018 02:41:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Aug 2018 02:41:49 GMT
EXPOSE 6379/tcp
# Sat, 04 Aug 2018 02:41:49 GMT
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
	-	`sha256:e154306198fa8896064940cd815661f12e804afc6552bc2a0e4ba26659400680`  
		Last Modified: Sat, 04 Aug 2018 02:50:20 GMT  
		Size: 4.8 MB (4848285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3caf2954b9fd20dcb0aec5f163cc8b39d5e1968f6076bf396c00a427b08902a5`  
		Last Modified: Sat, 04 Aug 2018 02:50:20 GMT  
		Size: 8.3 MB (8254982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88f4fa3511d1990a38614d3a07fcf69323b3f407b04d25d4681a39865f61c52a`  
		Last Modified: Sat, 04 Aug 2018 02:50:17 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95d2829fc554b4f8baf7ddad999db7a0e0449f8f9d72fbf4b2054f9d68741f0a`  
		Last Modified: Sat, 04 Aug 2018 02:50:17 GMT  
		Size: 407.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4-alpine`

```console
$ docker pull redis@sha256:1a851771a44668c15876c1c9a8102b65d4acceb145e3b553918084f58db495b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `redis:4-alpine` - linux; amd64

```console
$ docker pull redis@sha256:a4b72529acce4055542ea684d2f11484da9fb3b70318a23d6f2eb8a71318bc20
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.6 MB (11629671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08bef618c30adc2eebe5c590150c7f16f20a0dcec1152171e78a3a028df92545`
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
# Sat, 04 Aug 2018 02:42:11 GMT
ENV REDIS_VERSION=4.0.11
# Sat, 04 Aug 2018 02:42:12 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Sat, 04 Aug 2018 02:42:12 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Sat, 04 Aug 2018 02:42:36 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 04 Aug 2018 02:42:37 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Aug 2018 02:42:37 GMT
VOLUME [/data]
# Sat, 04 Aug 2018 02:42:37 GMT
WORKDIR /data
# Sat, 04 Aug 2018 02:42:38 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 04 Aug 2018 02:42:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Aug 2018 02:42:38 GMT
EXPOSE 6379/tcp
# Sat, 04 Aug 2018 02:42:39 GMT
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
	-	`sha256:82d1d664c6a7b8305e96d7833492a206c6cbacc86ce5b870114251eebe9da4b5`  
		Last Modified: Sat, 04 Aug 2018 02:54:41 GMT  
		Size: 9.4 MB (9412310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69f8979cc3105273cbe7e6d13f52c014b1f8061e457d132ae928f8f09701df2e`  
		Last Modified: Sat, 04 Aug 2018 02:54:38 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ff30b3bc14850c8bc7d0770ee90622b5f7e95fae87b6b342b2dfb407f1887b8`  
		Last Modified: Sat, 04 Aug 2018 02:54:38 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:733ca3b0d5337d215262616f8903a959b6ec27c562252a22a5f57b4da9e97bda
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7970324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:722b119bf4f2912e8d23a8dbac279f9eaa488daedec4fa4b1fe0f646599ef3b3`
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
# Sat, 04 Aug 2018 08:45:47 GMT
ENV REDIS_VERSION=4.0.11
# Sat, 04 Aug 2018 08:45:47 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Sat, 04 Aug 2018 08:45:48 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Sat, 04 Aug 2018 08:49:18 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 04 Aug 2018 08:49:23 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Aug 2018 08:49:24 GMT
VOLUME [/data]
# Sat, 04 Aug 2018 08:49:24 GMT
WORKDIR /data
# Sat, 04 Aug 2018 08:49:26 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 04 Aug 2018 08:49:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Aug 2018 08:49:27 GMT
EXPOSE 6379/tcp
# Sat, 04 Aug 2018 08:49:28 GMT
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
	-	`sha256:b7fe99598159a741061edca2a5c5a8276824c754c5c7f2ab2434c9b9fd1fa4e8`  
		Last Modified: Sat, 04 Aug 2018 08:50:49 GMT  
		Size: 5.8 MB (5813355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eace38cc9ab933614ca814e89fd94a8c94ae25800e8e9de251cb64fe2b74ccca`  
		Last Modified: Sat, 04 Aug 2018 08:50:43 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f71fc77ce1b50c499cba660780a14fbf8e1cbe61eaa51969083080ae9245bc4b`  
		Last Modified: Sat, 04 Aug 2018 08:50:43 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:d27aeefe87dadfbd147e20dfa3d7ea680e7871f2dca7f8feea24d943b94878a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.3 MB (11277180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:004ef068b0926dfcb86804ccab767ea542be9d8138fb65bc825ce20c8d48c5fa`
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
# Sat, 04 Aug 2018 09:41:20 GMT
ENV REDIS_VERSION=4.0.11
# Sat, 04 Aug 2018 09:41:21 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Sat, 04 Aug 2018 09:41:22 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Sat, 04 Aug 2018 09:42:13 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 04 Aug 2018 09:42:15 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Aug 2018 09:42:15 GMT
VOLUME [/data]
# Sat, 04 Aug 2018 09:42:16 GMT
WORKDIR /data
# Sat, 04 Aug 2018 09:42:17 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 04 Aug 2018 09:42:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Aug 2018 09:42:18 GMT
EXPOSE 6379/tcp
# Sat, 04 Aug 2018 09:42:19 GMT
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
	-	`sha256:61a9a72010399fae677f01696224a8fd4ac31c9f6b4fad188937398a52bb9ea6`  
		Last Modified: Sat, 04 Aug 2018 09:48:32 GMT  
		Size: 9.2 MB (9166807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5755e826592c4aa946bbe4045dfc9f6c448a41ad0db8d56880bb5e648b3ecc1`  
		Last Modified: Sat, 04 Aug 2018 09:48:28 GMT  
		Size: 101.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67dca8f49af17fc3ae9957a843ebba37d7bacd1ce9cd37443671ddada05eac7a`  
		Last Modified: Sat, 04 Aug 2018 09:48:28 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:5d2e898d0710a6898d5875c3182cbe7b647d56a72d1d160830c7b12e245eb6e3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.7 MB (11712915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3dd98787bbc5e424a6def227a26d68fcfdeac188bcea614dc4c76bd6712aada`
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
# Sat, 04 Aug 2018 10:05:12 GMT
ENV REDIS_VERSION=4.0.11
# Sat, 04 Aug 2018 10:05:16 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Sat, 04 Aug 2018 10:05:21 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Sat, 04 Aug 2018 10:07:27 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 04 Aug 2018 10:07:46 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Aug 2018 10:07:50 GMT
VOLUME [/data]
# Sat, 04 Aug 2018 10:07:56 GMT
WORKDIR /data
# Sat, 04 Aug 2018 10:08:09 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 04 Aug 2018 10:08:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Aug 2018 10:08:17 GMT
EXPOSE 6379/tcp
# Sat, 04 Aug 2018 10:08:20 GMT
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
	-	`sha256:6e889eda23cca0db1f644eedd71a2a76059fc40f2a4710052514c5da4bf744e5`  
		Last Modified: Sat, 04 Aug 2018 10:12:38 GMT  
		Size: 9.5 MB (9506552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f9c67d1962fb265d02880f3da50dab1918b2ef4219f2dc7d6bb99c6323994c5`  
		Last Modified: Sat, 04 Aug 2018 10:12:31 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99523df5b1e4729edb21c35de387a4c3040f541e7c24dfcbef0de62f6a8f7c7e`  
		Last Modified: Sat, 04 Aug 2018 10:12:32 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4-alpine3.8`

```console
$ docker pull redis@sha256:1a851771a44668c15876c1c9a8102b65d4acceb145e3b553918084f58db495b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `redis:4-alpine3.8` - linux; amd64

```console
$ docker pull redis@sha256:a4b72529acce4055542ea684d2f11484da9fb3b70318a23d6f2eb8a71318bc20
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.6 MB (11629671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08bef618c30adc2eebe5c590150c7f16f20a0dcec1152171e78a3a028df92545`
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
# Sat, 04 Aug 2018 02:42:11 GMT
ENV REDIS_VERSION=4.0.11
# Sat, 04 Aug 2018 02:42:12 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Sat, 04 Aug 2018 02:42:12 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Sat, 04 Aug 2018 02:42:36 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 04 Aug 2018 02:42:37 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Aug 2018 02:42:37 GMT
VOLUME [/data]
# Sat, 04 Aug 2018 02:42:37 GMT
WORKDIR /data
# Sat, 04 Aug 2018 02:42:38 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 04 Aug 2018 02:42:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Aug 2018 02:42:38 GMT
EXPOSE 6379/tcp
# Sat, 04 Aug 2018 02:42:39 GMT
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
	-	`sha256:82d1d664c6a7b8305e96d7833492a206c6cbacc86ce5b870114251eebe9da4b5`  
		Last Modified: Sat, 04 Aug 2018 02:54:41 GMT  
		Size: 9.4 MB (9412310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69f8979cc3105273cbe7e6d13f52c014b1f8061e457d132ae928f8f09701df2e`  
		Last Modified: Sat, 04 Aug 2018 02:54:38 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ff30b3bc14850c8bc7d0770ee90622b5f7e95fae87b6b342b2dfb407f1887b8`  
		Last Modified: Sat, 04 Aug 2018 02:54:38 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine3.8` - linux; arm variant v6

```console
$ docker pull redis@sha256:733ca3b0d5337d215262616f8903a959b6ec27c562252a22a5f57b4da9e97bda
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7970324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:722b119bf4f2912e8d23a8dbac279f9eaa488daedec4fa4b1fe0f646599ef3b3`
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
# Sat, 04 Aug 2018 08:45:47 GMT
ENV REDIS_VERSION=4.0.11
# Sat, 04 Aug 2018 08:45:47 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Sat, 04 Aug 2018 08:45:48 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Sat, 04 Aug 2018 08:49:18 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 04 Aug 2018 08:49:23 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Aug 2018 08:49:24 GMT
VOLUME [/data]
# Sat, 04 Aug 2018 08:49:24 GMT
WORKDIR /data
# Sat, 04 Aug 2018 08:49:26 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 04 Aug 2018 08:49:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Aug 2018 08:49:27 GMT
EXPOSE 6379/tcp
# Sat, 04 Aug 2018 08:49:28 GMT
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
	-	`sha256:b7fe99598159a741061edca2a5c5a8276824c754c5c7f2ab2434c9b9fd1fa4e8`  
		Last Modified: Sat, 04 Aug 2018 08:50:49 GMT  
		Size: 5.8 MB (5813355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eace38cc9ab933614ca814e89fd94a8c94ae25800e8e9de251cb64fe2b74ccca`  
		Last Modified: Sat, 04 Aug 2018 08:50:43 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f71fc77ce1b50c499cba660780a14fbf8e1cbe61eaa51969083080ae9245bc4b`  
		Last Modified: Sat, 04 Aug 2018 08:50:43 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine3.8` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:d27aeefe87dadfbd147e20dfa3d7ea680e7871f2dca7f8feea24d943b94878a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.3 MB (11277180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:004ef068b0926dfcb86804ccab767ea542be9d8138fb65bc825ce20c8d48c5fa`
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
# Sat, 04 Aug 2018 09:41:20 GMT
ENV REDIS_VERSION=4.0.11
# Sat, 04 Aug 2018 09:41:21 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Sat, 04 Aug 2018 09:41:22 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Sat, 04 Aug 2018 09:42:13 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 04 Aug 2018 09:42:15 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Aug 2018 09:42:15 GMT
VOLUME [/data]
# Sat, 04 Aug 2018 09:42:16 GMT
WORKDIR /data
# Sat, 04 Aug 2018 09:42:17 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 04 Aug 2018 09:42:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Aug 2018 09:42:18 GMT
EXPOSE 6379/tcp
# Sat, 04 Aug 2018 09:42:19 GMT
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
	-	`sha256:61a9a72010399fae677f01696224a8fd4ac31c9f6b4fad188937398a52bb9ea6`  
		Last Modified: Sat, 04 Aug 2018 09:48:32 GMT  
		Size: 9.2 MB (9166807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5755e826592c4aa946bbe4045dfc9f6c448a41ad0db8d56880bb5e648b3ecc1`  
		Last Modified: Sat, 04 Aug 2018 09:48:28 GMT  
		Size: 101.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67dca8f49af17fc3ae9957a843ebba37d7bacd1ce9cd37443671ddada05eac7a`  
		Last Modified: Sat, 04 Aug 2018 09:48:28 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine3.8` - linux; ppc64le

```console
$ docker pull redis@sha256:5d2e898d0710a6898d5875c3182cbe7b647d56a72d1d160830c7b12e245eb6e3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.7 MB (11712915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3dd98787bbc5e424a6def227a26d68fcfdeac188bcea614dc4c76bd6712aada`
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
# Sat, 04 Aug 2018 10:05:12 GMT
ENV REDIS_VERSION=4.0.11
# Sat, 04 Aug 2018 10:05:16 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Sat, 04 Aug 2018 10:05:21 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Sat, 04 Aug 2018 10:07:27 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 04 Aug 2018 10:07:46 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Aug 2018 10:07:50 GMT
VOLUME [/data]
# Sat, 04 Aug 2018 10:07:56 GMT
WORKDIR /data
# Sat, 04 Aug 2018 10:08:09 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 04 Aug 2018 10:08:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Aug 2018 10:08:17 GMT
EXPOSE 6379/tcp
# Sat, 04 Aug 2018 10:08:20 GMT
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
	-	`sha256:6e889eda23cca0db1f644eedd71a2a76059fc40f2a4710052514c5da4bf744e5`  
		Last Modified: Sat, 04 Aug 2018 10:12:38 GMT  
		Size: 9.5 MB (9506552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f9c67d1962fb265d02880f3da50dab1918b2ef4219f2dc7d6bb99c6323994c5`  
		Last Modified: Sat, 04 Aug 2018 10:12:31 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99523df5b1e4729edb21c35de387a4c3040f541e7c24dfcbef0de62f6a8f7c7e`  
		Last Modified: Sat, 04 Aug 2018 10:12:32 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4-stretch`

```console
$ docker pull redis@sha256:481970a8481060753c7b1859be284cc2b1a498049e27671b214dc4b9517acbd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `redis:4-stretch` - linux; amd64

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

### `redis:4-stretch` - linux; arm variant v5

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

### `redis:4-stretch` - linux; arm64 variant v8

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

### `redis:4-stretch` - linux; ppc64le

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

## `redis:5.0-rc`

```console
$ docker pull redis@sha256:f3fd90695096cb5468518c77f2f925633b76dc6836e8b41a6a485ef8d209e120
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `redis:5.0-rc` - linux; amd64

```console
$ docker pull redis@sha256:6e54eb4c191b28aa5056dc2991000e88fc075bb67e375dd59a2fed9c800a2cef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.1 MB (35076312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4d725fbd35dbddb8234c3fa528ce028ed277be25383b6d9d45a5c6151a54426`
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
# Sat, 04 Aug 2018 02:34:58 GMT
ENV REDIS_VERSION=5.0-rc4
# Sat, 04 Aug 2018 02:34:58 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0-rc4.tar.gz
# Sat, 04 Aug 2018 02:34:59 GMT
ENV REDIS_DOWNLOAD_SHA=bfc7a27d3ba990e154e5b56484061f01962d40b7c77b520ed7a940914b267cec
# Sat, 04 Aug 2018 02:36:03 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Aug 2018 02:36:14 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Aug 2018 02:36:14 GMT
VOLUME [/data]
# Sat, 04 Aug 2018 02:36:14 GMT
WORKDIR /data
# Sat, 04 Aug 2018 02:36:15 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 04 Aug 2018 02:36:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Aug 2018 02:36:15 GMT
EXPOSE 6379/tcp
# Sat, 04 Aug 2018 02:36:16 GMT
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
	-	`sha256:307f76da4ee4002de560588b4d30a8f2fe27a159a984736b4830ff938f482fa0`  
		Last Modified: Sat, 04 Aug 2018 02:43:26 GMT  
		Size: 11.6 MB (11646890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58d3ac6db1c481215c8659d5a5f3add0445a2a2a6e43c20381af8b870eb89961`  
		Last Modified: Sat, 04 Aug 2018 02:43:20 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b9b2484cf75e32aa041846ab3ef4c2b1eb1ae3810807d4ce2b7606861059f0c`  
		Last Modified: Sat, 04 Aug 2018 02:43:21 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-rc` - linux; arm variant v5

```console
$ docker pull redis@sha256:bae85d62073dee16af456f60e68e8fdb123a8ecf97817e8998f60248dd82d8af
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33388759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79d754f3723becb990662cce8bbebcc90a6870c85b06aa235b2ce18249531ec1`
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
# Sat, 04 Aug 2018 09:06:36 GMT
ENV REDIS_VERSION=5.0-rc4
# Sat, 04 Aug 2018 09:06:37 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0-rc4.tar.gz
# Sat, 04 Aug 2018 09:06:37 GMT
ENV REDIS_DOWNLOAD_SHA=bfc7a27d3ba990e154e5b56484061f01962d40b7c77b520ed7a940914b267cec
# Sat, 04 Aug 2018 09:07:31 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Aug 2018 09:07:32 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Aug 2018 09:07:32 GMT
VOLUME [/data]
# Sat, 04 Aug 2018 09:07:32 GMT
WORKDIR /data
# Sat, 04 Aug 2018 09:07:33 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 04 Aug 2018 09:07:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Aug 2018 09:07:33 GMT
EXPOSE 6379/tcp
# Sat, 04 Aug 2018 09:07:34 GMT
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
	-	`sha256:fd839543bc74795eeb4462d056b4ba1eb7f2ce41ac3b019adda449ba6c502881`  
		Last Modified: Sat, 04 Aug 2018 09:08:44 GMT  
		Size: 11.3 MB (11292752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ff758a124d99cdb94a37a51926faaca6d4f13c26d94a9a2ad30f48bf6ffa1a1`  
		Last Modified: Sat, 04 Aug 2018 09:08:41 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d31d0f6740748ff0af5fe578295e406e240e740ba8183e7a5871cfa389ab7e84`  
		Last Modified: Sat, 04 Aug 2018 09:08:40 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-rc` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:cebd3423e701a4f1a06f9fbe25999b855dc7dcf02a1c61a02ec6d25785e23711
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.7 MB (32697267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ef997d313f95af7bfb716e4fb897533395f5a9522ab2d83d45e6ccfaac47d31`
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
# Sat, 04 Aug 2018 09:33:44 GMT
ENV REDIS_VERSION=5.0-rc4
# Sat, 04 Aug 2018 09:33:45 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0-rc4.tar.gz
# Sat, 04 Aug 2018 09:33:45 GMT
ENV REDIS_DOWNLOAD_SHA=bfc7a27d3ba990e154e5b56484061f01962d40b7c77b520ed7a940914b267cec
# Sat, 04 Aug 2018 09:35:55 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Aug 2018 09:35:58 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Aug 2018 09:35:58 GMT
VOLUME [/data]
# Sat, 04 Aug 2018 09:35:59 GMT
WORKDIR /data
# Sat, 04 Aug 2018 09:36:00 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 04 Aug 2018 09:36:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Aug 2018 09:36:01 GMT
EXPOSE 6379/tcp
# Sat, 04 Aug 2018 09:36:02 GMT
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
	-	`sha256:60b5f923d35dccff45906febf689dd83aa22cd62f4d13440e58aea9a70db9418`  
		Last Modified: Sat, 04 Aug 2018 09:43:03 GMT  
		Size: 11.5 MB (11455442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3ba4a0004cdbf41a7269e813dcac6558669bb2866930611f11dbf36fbcca656`  
		Last Modified: Sat, 04 Aug 2018 09:42:59 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71cb6dbebfa9079e61b1143574c693202d03bcd25751e21214d7b5810a432a72`  
		Last Modified: Sat, 04 Aug 2018 09:42:59 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-rc` - linux; ppc64le

```console
$ docker pull redis@sha256:2710d3283d07ad05cc89c0038d304c61961ba33ce8d85cdbc9ebf9e33b8827d7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.5 MB (35485045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10522692a52386a39a60028771800a7fa0c053e181fdc6da2eb563fd02216153`
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
# Sat, 04 Aug 2018 09:40:36 GMT
ENV REDIS_VERSION=5.0-rc4
# Sat, 04 Aug 2018 09:40:40 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0-rc4.tar.gz
# Sat, 04 Aug 2018 09:40:47 GMT
ENV REDIS_DOWNLOAD_SHA=bfc7a27d3ba990e154e5b56484061f01962d40b7c77b520ed7a940914b267cec
# Sat, 04 Aug 2018 09:50:55 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Aug 2018 09:51:13 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Aug 2018 09:51:21 GMT
VOLUME [/data]
# Sat, 04 Aug 2018 09:51:28 GMT
WORKDIR /data
# Sat, 04 Aug 2018 09:51:34 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 04 Aug 2018 09:51:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Aug 2018 09:51:44 GMT
EXPOSE 6379/tcp
# Sat, 04 Aug 2018 09:51:47 GMT
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
	-	`sha256:7d0e2e389b55741a89772cc84c7d1c15f81ef4d9ebb281112716c7946d2e596e`  
		Last Modified: Sat, 04 Aug 2018 10:09:55 GMT  
		Size: 11.8 MB (11832450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13642204043066af8b67ffbcbc77bafba3f5965d7d474633b3a71fcd314c3897`  
		Last Modified: Sat, 04 Aug 2018 10:09:51 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b76d1e53bb0a0f5b63364ecff6b14f393510ed1ac474fffd0e40cd4fda13ac3d`  
		Last Modified: Sat, 04 Aug 2018 10:09:51 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0-rc-32bit`

```console
$ docker pull redis@sha256:2329befd98b4a5f9f5d3a6da4a902bcfca078571868d1154800417d0f2ce4640
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5.0-rc-32bit` - linux; amd64

```console
$ docker pull redis@sha256:ac2a19e954843f8ab6338ceca31da329b423ffcd72bf3afdf868e25364149faf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.3 MB (39345444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6090a002ff319491f9d9cf5a7c1c51cf937a0e09b9443210b5ec016f89cd4c7e`
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
# Sat, 04 Aug 2018 02:34:58 GMT
ENV REDIS_VERSION=5.0-rc4
# Sat, 04 Aug 2018 02:34:58 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0-rc4.tar.gz
# Sat, 04 Aug 2018 02:34:59 GMT
ENV REDIS_DOWNLOAD_SHA=bfc7a27d3ba990e154e5b56484061f01962d40b7c77b520ed7a940914b267cec
# Sat, 04 Aug 2018 02:36:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Aug 2018 02:38:01 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Aug 2018 02:38:02 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Aug 2018 02:38:02 GMT
VOLUME [/data]
# Sat, 04 Aug 2018 02:38:02 GMT
WORKDIR /data
# Sat, 04 Aug 2018 02:38:03 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 04 Aug 2018 02:38:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Aug 2018 02:38:03 GMT
EXPOSE 6379/tcp
# Sat, 04 Aug 2018 02:38:04 GMT
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
	-	`sha256:30ef2cc8cc07b9258f0eb339de00c099f8f500fad9bb6bf108d6326091be5cd1`  
		Last Modified: Sat, 04 Aug 2018 02:44:44 GMT  
		Size: 4.8 MB (4848309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f245b633b5aba6afd7de743c0b3f6fbfe901c45ae238a676467ce12eadd6c3`  
		Last Modified: Sat, 04 Aug 2018 02:44:46 GMT  
		Size: 11.1 MB (11067708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6003d04edcc7e2a2f0634fb214b4f4d1362e230bd70e6d5d324206753df4201b`  
		Last Modified: Sat, 04 Aug 2018 02:44:42 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f240513ad5407e6c91e27e9e13eacef1eae2ec6fe9fc291c1e681c6669395a0d`  
		Last Modified: Sat, 04 Aug 2018 02:44:42 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0-rc-32bit-stretch`

```console
$ docker pull redis@sha256:2329befd98b4a5f9f5d3a6da4a902bcfca078571868d1154800417d0f2ce4640
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5.0-rc-32bit-stretch` - linux; amd64

```console
$ docker pull redis@sha256:ac2a19e954843f8ab6338ceca31da329b423ffcd72bf3afdf868e25364149faf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.3 MB (39345444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6090a002ff319491f9d9cf5a7c1c51cf937a0e09b9443210b5ec016f89cd4c7e`
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
# Sat, 04 Aug 2018 02:34:58 GMT
ENV REDIS_VERSION=5.0-rc4
# Sat, 04 Aug 2018 02:34:58 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0-rc4.tar.gz
# Sat, 04 Aug 2018 02:34:59 GMT
ENV REDIS_DOWNLOAD_SHA=bfc7a27d3ba990e154e5b56484061f01962d40b7c77b520ed7a940914b267cec
# Sat, 04 Aug 2018 02:36:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Aug 2018 02:38:01 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Aug 2018 02:38:02 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Aug 2018 02:38:02 GMT
VOLUME [/data]
# Sat, 04 Aug 2018 02:38:02 GMT
WORKDIR /data
# Sat, 04 Aug 2018 02:38:03 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 04 Aug 2018 02:38:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Aug 2018 02:38:03 GMT
EXPOSE 6379/tcp
# Sat, 04 Aug 2018 02:38:04 GMT
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
	-	`sha256:30ef2cc8cc07b9258f0eb339de00c099f8f500fad9bb6bf108d6326091be5cd1`  
		Last Modified: Sat, 04 Aug 2018 02:44:44 GMT  
		Size: 4.8 MB (4848309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f245b633b5aba6afd7de743c0b3f6fbfe901c45ae238a676467ce12eadd6c3`  
		Last Modified: Sat, 04 Aug 2018 02:44:46 GMT  
		Size: 11.1 MB (11067708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6003d04edcc7e2a2f0634fb214b4f4d1362e230bd70e6d5d324206753df4201b`  
		Last Modified: Sat, 04 Aug 2018 02:44:42 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f240513ad5407e6c91e27e9e13eacef1eae2ec6fe9fc291c1e681c6669395a0d`  
		Last Modified: Sat, 04 Aug 2018 02:44:42 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0-rc4`

```console
$ docker pull redis@sha256:f3fd90695096cb5468518c77f2f925633b76dc6836e8b41a6a485ef8d209e120
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `redis:5.0-rc4` - linux; amd64

```console
$ docker pull redis@sha256:6e54eb4c191b28aa5056dc2991000e88fc075bb67e375dd59a2fed9c800a2cef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.1 MB (35076312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4d725fbd35dbddb8234c3fa528ce028ed277be25383b6d9d45a5c6151a54426`
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
# Sat, 04 Aug 2018 02:34:58 GMT
ENV REDIS_VERSION=5.0-rc4
# Sat, 04 Aug 2018 02:34:58 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0-rc4.tar.gz
# Sat, 04 Aug 2018 02:34:59 GMT
ENV REDIS_DOWNLOAD_SHA=bfc7a27d3ba990e154e5b56484061f01962d40b7c77b520ed7a940914b267cec
# Sat, 04 Aug 2018 02:36:03 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Aug 2018 02:36:14 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Aug 2018 02:36:14 GMT
VOLUME [/data]
# Sat, 04 Aug 2018 02:36:14 GMT
WORKDIR /data
# Sat, 04 Aug 2018 02:36:15 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 04 Aug 2018 02:36:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Aug 2018 02:36:15 GMT
EXPOSE 6379/tcp
# Sat, 04 Aug 2018 02:36:16 GMT
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
	-	`sha256:307f76da4ee4002de560588b4d30a8f2fe27a159a984736b4830ff938f482fa0`  
		Last Modified: Sat, 04 Aug 2018 02:43:26 GMT  
		Size: 11.6 MB (11646890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58d3ac6db1c481215c8659d5a5f3add0445a2a2a6e43c20381af8b870eb89961`  
		Last Modified: Sat, 04 Aug 2018 02:43:20 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b9b2484cf75e32aa041846ab3ef4c2b1eb1ae3810807d4ce2b7606861059f0c`  
		Last Modified: Sat, 04 Aug 2018 02:43:21 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-rc4` - linux; arm variant v5

```console
$ docker pull redis@sha256:bae85d62073dee16af456f60e68e8fdb123a8ecf97817e8998f60248dd82d8af
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33388759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79d754f3723becb990662cce8bbebcc90a6870c85b06aa235b2ce18249531ec1`
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
# Sat, 04 Aug 2018 09:06:36 GMT
ENV REDIS_VERSION=5.0-rc4
# Sat, 04 Aug 2018 09:06:37 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0-rc4.tar.gz
# Sat, 04 Aug 2018 09:06:37 GMT
ENV REDIS_DOWNLOAD_SHA=bfc7a27d3ba990e154e5b56484061f01962d40b7c77b520ed7a940914b267cec
# Sat, 04 Aug 2018 09:07:31 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Aug 2018 09:07:32 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Aug 2018 09:07:32 GMT
VOLUME [/data]
# Sat, 04 Aug 2018 09:07:32 GMT
WORKDIR /data
# Sat, 04 Aug 2018 09:07:33 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 04 Aug 2018 09:07:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Aug 2018 09:07:33 GMT
EXPOSE 6379/tcp
# Sat, 04 Aug 2018 09:07:34 GMT
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
	-	`sha256:fd839543bc74795eeb4462d056b4ba1eb7f2ce41ac3b019adda449ba6c502881`  
		Last Modified: Sat, 04 Aug 2018 09:08:44 GMT  
		Size: 11.3 MB (11292752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ff758a124d99cdb94a37a51926faaca6d4f13c26d94a9a2ad30f48bf6ffa1a1`  
		Last Modified: Sat, 04 Aug 2018 09:08:41 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d31d0f6740748ff0af5fe578295e406e240e740ba8183e7a5871cfa389ab7e84`  
		Last Modified: Sat, 04 Aug 2018 09:08:40 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-rc4` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:cebd3423e701a4f1a06f9fbe25999b855dc7dcf02a1c61a02ec6d25785e23711
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.7 MB (32697267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ef997d313f95af7bfb716e4fb897533395f5a9522ab2d83d45e6ccfaac47d31`
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
# Sat, 04 Aug 2018 09:33:44 GMT
ENV REDIS_VERSION=5.0-rc4
# Sat, 04 Aug 2018 09:33:45 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0-rc4.tar.gz
# Sat, 04 Aug 2018 09:33:45 GMT
ENV REDIS_DOWNLOAD_SHA=bfc7a27d3ba990e154e5b56484061f01962d40b7c77b520ed7a940914b267cec
# Sat, 04 Aug 2018 09:35:55 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Aug 2018 09:35:58 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Aug 2018 09:35:58 GMT
VOLUME [/data]
# Sat, 04 Aug 2018 09:35:59 GMT
WORKDIR /data
# Sat, 04 Aug 2018 09:36:00 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 04 Aug 2018 09:36:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Aug 2018 09:36:01 GMT
EXPOSE 6379/tcp
# Sat, 04 Aug 2018 09:36:02 GMT
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
	-	`sha256:60b5f923d35dccff45906febf689dd83aa22cd62f4d13440e58aea9a70db9418`  
		Last Modified: Sat, 04 Aug 2018 09:43:03 GMT  
		Size: 11.5 MB (11455442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3ba4a0004cdbf41a7269e813dcac6558669bb2866930611f11dbf36fbcca656`  
		Last Modified: Sat, 04 Aug 2018 09:42:59 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71cb6dbebfa9079e61b1143574c693202d03bcd25751e21214d7b5810a432a72`  
		Last Modified: Sat, 04 Aug 2018 09:42:59 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-rc4` - linux; ppc64le

```console
$ docker pull redis@sha256:2710d3283d07ad05cc89c0038d304c61961ba33ce8d85cdbc9ebf9e33b8827d7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.5 MB (35485045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10522692a52386a39a60028771800a7fa0c053e181fdc6da2eb563fd02216153`
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
# Sat, 04 Aug 2018 09:40:36 GMT
ENV REDIS_VERSION=5.0-rc4
# Sat, 04 Aug 2018 09:40:40 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0-rc4.tar.gz
# Sat, 04 Aug 2018 09:40:47 GMT
ENV REDIS_DOWNLOAD_SHA=bfc7a27d3ba990e154e5b56484061f01962d40b7c77b520ed7a940914b267cec
# Sat, 04 Aug 2018 09:50:55 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Aug 2018 09:51:13 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Aug 2018 09:51:21 GMT
VOLUME [/data]
# Sat, 04 Aug 2018 09:51:28 GMT
WORKDIR /data
# Sat, 04 Aug 2018 09:51:34 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 04 Aug 2018 09:51:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Aug 2018 09:51:44 GMT
EXPOSE 6379/tcp
# Sat, 04 Aug 2018 09:51:47 GMT
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
	-	`sha256:7d0e2e389b55741a89772cc84c7d1c15f81ef4d9ebb281112716c7946d2e596e`  
		Last Modified: Sat, 04 Aug 2018 10:09:55 GMT  
		Size: 11.8 MB (11832450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13642204043066af8b67ffbcbc77bafba3f5965d7d474633b3a71fcd314c3897`  
		Last Modified: Sat, 04 Aug 2018 10:09:51 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b76d1e53bb0a0f5b63364ecff6b14f393510ed1ac474fffd0e40cd4fda13ac3d`  
		Last Modified: Sat, 04 Aug 2018 10:09:51 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0-rc4-32bit`

```console
$ docker pull redis@sha256:2329befd98b4a5f9f5d3a6da4a902bcfca078571868d1154800417d0f2ce4640
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5.0-rc4-32bit` - linux; amd64

```console
$ docker pull redis@sha256:ac2a19e954843f8ab6338ceca31da329b423ffcd72bf3afdf868e25364149faf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.3 MB (39345444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6090a002ff319491f9d9cf5a7c1c51cf937a0e09b9443210b5ec016f89cd4c7e`
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
# Sat, 04 Aug 2018 02:34:58 GMT
ENV REDIS_VERSION=5.0-rc4
# Sat, 04 Aug 2018 02:34:58 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0-rc4.tar.gz
# Sat, 04 Aug 2018 02:34:59 GMT
ENV REDIS_DOWNLOAD_SHA=bfc7a27d3ba990e154e5b56484061f01962d40b7c77b520ed7a940914b267cec
# Sat, 04 Aug 2018 02:36:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Aug 2018 02:38:01 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Aug 2018 02:38:02 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Aug 2018 02:38:02 GMT
VOLUME [/data]
# Sat, 04 Aug 2018 02:38:02 GMT
WORKDIR /data
# Sat, 04 Aug 2018 02:38:03 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 04 Aug 2018 02:38:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Aug 2018 02:38:03 GMT
EXPOSE 6379/tcp
# Sat, 04 Aug 2018 02:38:04 GMT
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
	-	`sha256:30ef2cc8cc07b9258f0eb339de00c099f8f500fad9bb6bf108d6326091be5cd1`  
		Last Modified: Sat, 04 Aug 2018 02:44:44 GMT  
		Size: 4.8 MB (4848309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f245b633b5aba6afd7de743c0b3f6fbfe901c45ae238a676467ce12eadd6c3`  
		Last Modified: Sat, 04 Aug 2018 02:44:46 GMT  
		Size: 11.1 MB (11067708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6003d04edcc7e2a2f0634fb214b4f4d1362e230bd70e6d5d324206753df4201b`  
		Last Modified: Sat, 04 Aug 2018 02:44:42 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f240513ad5407e6c91e27e9e13eacef1eae2ec6fe9fc291c1e681c6669395a0d`  
		Last Modified: Sat, 04 Aug 2018 02:44:42 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0-rc4-32bit-stretch`

```console
$ docker pull redis@sha256:2329befd98b4a5f9f5d3a6da4a902bcfca078571868d1154800417d0f2ce4640
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5.0-rc4-32bit-stretch` - linux; amd64

```console
$ docker pull redis@sha256:ac2a19e954843f8ab6338ceca31da329b423ffcd72bf3afdf868e25364149faf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.3 MB (39345444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6090a002ff319491f9d9cf5a7c1c51cf937a0e09b9443210b5ec016f89cd4c7e`
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
# Sat, 04 Aug 2018 02:34:58 GMT
ENV REDIS_VERSION=5.0-rc4
# Sat, 04 Aug 2018 02:34:58 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0-rc4.tar.gz
# Sat, 04 Aug 2018 02:34:59 GMT
ENV REDIS_DOWNLOAD_SHA=bfc7a27d3ba990e154e5b56484061f01962d40b7c77b520ed7a940914b267cec
# Sat, 04 Aug 2018 02:36:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Aug 2018 02:38:01 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Aug 2018 02:38:02 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Aug 2018 02:38:02 GMT
VOLUME [/data]
# Sat, 04 Aug 2018 02:38:02 GMT
WORKDIR /data
# Sat, 04 Aug 2018 02:38:03 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 04 Aug 2018 02:38:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Aug 2018 02:38:03 GMT
EXPOSE 6379/tcp
# Sat, 04 Aug 2018 02:38:04 GMT
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
	-	`sha256:30ef2cc8cc07b9258f0eb339de00c099f8f500fad9bb6bf108d6326091be5cd1`  
		Last Modified: Sat, 04 Aug 2018 02:44:44 GMT  
		Size: 4.8 MB (4848309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f245b633b5aba6afd7de743c0b3f6fbfe901c45ae238a676467ce12eadd6c3`  
		Last Modified: Sat, 04 Aug 2018 02:44:46 GMT  
		Size: 11.1 MB (11067708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6003d04edcc7e2a2f0634fb214b4f4d1362e230bd70e6d5d324206753df4201b`  
		Last Modified: Sat, 04 Aug 2018 02:44:42 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f240513ad5407e6c91e27e9e13eacef1eae2ec6fe9fc291c1e681c6669395a0d`  
		Last Modified: Sat, 04 Aug 2018 02:44:42 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0-rc4-alpine`

```console
$ docker pull redis@sha256:d23e8e59aee26246931398370c5e6eee4bfc4053ffee9ebc49b98b0542d4b299
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `redis:5.0-rc4-alpine` - linux; amd64

```console
$ docker pull redis@sha256:7240dac83ee736fd7a7a8c7a67d8f42fa56c02b4b946bcca5fd2a4035f254301
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14402154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30acf868132467c20690e02507f2445a6d031142cc98e88dae9637274af19da2`
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
# Sat, 04 Aug 2018 02:38:34 GMT
ENV REDIS_VERSION=5.0-rc4
# Sat, 04 Aug 2018 02:38:34 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0-rc4.tar.gz
# Sat, 04 Aug 2018 02:38:35 GMT
ENV REDIS_DOWNLOAD_SHA=bfc7a27d3ba990e154e5b56484061f01962d40b7c77b520ed7a940914b267cec
# Sat, 04 Aug 2018 02:39:13 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 04 Aug 2018 02:39:14 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Aug 2018 02:39:15 GMT
VOLUME [/data]
# Sat, 04 Aug 2018 02:39:15 GMT
WORKDIR /data
# Sat, 04 Aug 2018 02:39:15 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 04 Aug 2018 02:39:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Aug 2018 02:39:16 GMT
EXPOSE 6379/tcp
# Sat, 04 Aug 2018 02:39:16 GMT
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
	-	`sha256:0fe0d814e9cf8979858ae8511bf63571558639b5495079732eaf7ff090cbb25b`  
		Last Modified: Sat, 04 Aug 2018 02:46:19 GMT  
		Size: 12.2 MB (12184790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64204515789699f3e12351b462fe0f67d2cdbd4e909c5d75afb0c8d490046406`  
		Last Modified: Sat, 04 Aug 2018 02:46:17 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437b1dca38a8dc9d00fa2039dd77fbf3cd04fb27d65acabb6d943c3110d3c8e8`  
		Last Modified: Sat, 04 Aug 2018 02:46:17 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-rc4-alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:bc46de8ba239875fad5c9961c447c9bbf03d0db3c823220b7d3421a5688b7b8e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8317277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66eaf11280af4d15109a2bf1e9e94344b3127edb0fd864f7b8a540bb1cfab5af`
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
# Sat, 04 Aug 2018 08:41:18 GMT
ENV REDIS_VERSION=5.0-rc4
# Sat, 04 Aug 2018 08:41:18 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0-rc4.tar.gz
# Sat, 04 Aug 2018 08:41:19 GMT
ENV REDIS_DOWNLOAD_SHA=bfc7a27d3ba990e154e5b56484061f01962d40b7c77b520ed7a940914b267cec
# Sat, 04 Aug 2018 08:45:25 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 04 Aug 2018 08:45:30 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Aug 2018 08:45:31 GMT
VOLUME [/data]
# Sat, 04 Aug 2018 08:45:32 GMT
WORKDIR /data
# Sat, 04 Aug 2018 08:45:33 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 04 Aug 2018 08:45:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Aug 2018 08:45:34 GMT
EXPOSE 6379/tcp
# Sat, 04 Aug 2018 08:45:35 GMT
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
	-	`sha256:0bfe7b055901440bd0343f1f94bfdb4ee44b4a276b9671dd3b44926aeca707ac`  
		Last Modified: Sat, 04 Aug 2018 08:50:04 GMT  
		Size: 6.2 MB (6160311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb863140cb65e632d9c58f75c73c16f37d8290aeba3f448b3b769d144f9eff4b`  
		Last Modified: Sat, 04 Aug 2018 08:49:56 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81176acdbcdfe5dd6c954a611002b61d32c641cfc75f7ea8114e6afacf06d42c`  
		Last Modified: Sat, 04 Aug 2018 08:49:56 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-rc4-alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:dc51ef63b62a99dc7f751963d15150d087f6db9c37a1493958a9a775e54a0b22
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (14041645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:947b0aca363a1e65e3f633d244e24c492033b800a3aab0cc795a1033245e7f4d`
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
# Sat, 04 Aug 2018 09:36:45 GMT
ENV REDIS_VERSION=5.0-rc4
# Sat, 04 Aug 2018 09:36:46 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0-rc4.tar.gz
# Sat, 04 Aug 2018 09:36:47 GMT
ENV REDIS_DOWNLOAD_SHA=bfc7a27d3ba990e154e5b56484061f01962d40b7c77b520ed7a940914b267cec
# Sat, 04 Aug 2018 09:38:20 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 04 Aug 2018 09:38:21 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Aug 2018 09:38:37 GMT
VOLUME [/data]
# Sat, 04 Aug 2018 09:38:38 GMT
WORKDIR /data
# Sat, 04 Aug 2018 09:38:39 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 04 Aug 2018 09:38:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Aug 2018 09:38:55 GMT
EXPOSE 6379/tcp
# Sat, 04 Aug 2018 09:38:56 GMT
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
	-	`sha256:be0d138debb65c6598d058a7714d4ac855071916e5db8a11ec3b6ba5d6c18ca3`  
		Last Modified: Sat, 04 Aug 2018 09:44:25 GMT  
		Size: 11.9 MB (11931273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40771ee4c561ab60b317defd1d08a51e4a3f2fd444e89536f3d75ef1def95e75`  
		Last Modified: Sat, 04 Aug 2018 09:44:20 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd7a567243f3db7b2be50d48ff5d6dd907a9b6040de3c4a25333db101e42c6c`  
		Last Modified: Sat, 04 Aug 2018 09:44:20 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-rc4-alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:adb1d8dfe12a407576c075bb955b8396233e42f9a4ca3f324ad35558c3c126ce
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14444788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db3219154773ba5a823e8eac34f1fc1be764de9e085f61c5a4613a5a7a448786`
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
# Sat, 04 Aug 2018 09:52:03 GMT
ENV REDIS_VERSION=5.0-rc4
# Sat, 04 Aug 2018 09:52:05 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0-rc4.tar.gz
# Sat, 04 Aug 2018 09:52:08 GMT
ENV REDIS_DOWNLOAD_SHA=bfc7a27d3ba990e154e5b56484061f01962d40b7c77b520ed7a940914b267cec
# Sat, 04 Aug 2018 09:53:56 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 04 Aug 2018 09:54:09 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Aug 2018 09:54:14 GMT
VOLUME [/data]
# Sat, 04 Aug 2018 09:54:23 GMT
WORKDIR /data
# Sat, 04 Aug 2018 09:54:29 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 04 Aug 2018 09:54:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Aug 2018 09:54:45 GMT
EXPOSE 6379/tcp
# Sat, 04 Aug 2018 09:54:53 GMT
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
	-	`sha256:689576e324fd97b80f81e9c15214c7452ed86159cce7137f0c6c91f4b34fee58`  
		Last Modified: Sat, 04 Aug 2018 10:10:32 GMT  
		Size: 12.2 MB (12238427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0664de0db9ebe9160904e60c43453d6abe702151e8989b7b5984bdac328de87b`  
		Last Modified: Sat, 04 Aug 2018 10:10:27 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d40f7bac7ef7b0f811082d0cd8387f9da70a3c341d0a6f1069506eb54a5ac1b`  
		Last Modified: Sat, 04 Aug 2018 10:10:27 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0-rc4-alpine3.8`

```console
$ docker pull redis@sha256:d23e8e59aee26246931398370c5e6eee4bfc4053ffee9ebc49b98b0542d4b299
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `redis:5.0-rc4-alpine3.8` - linux; amd64

```console
$ docker pull redis@sha256:7240dac83ee736fd7a7a8c7a67d8f42fa56c02b4b946bcca5fd2a4035f254301
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14402154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30acf868132467c20690e02507f2445a6d031142cc98e88dae9637274af19da2`
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
# Sat, 04 Aug 2018 02:38:34 GMT
ENV REDIS_VERSION=5.0-rc4
# Sat, 04 Aug 2018 02:38:34 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0-rc4.tar.gz
# Sat, 04 Aug 2018 02:38:35 GMT
ENV REDIS_DOWNLOAD_SHA=bfc7a27d3ba990e154e5b56484061f01962d40b7c77b520ed7a940914b267cec
# Sat, 04 Aug 2018 02:39:13 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 04 Aug 2018 02:39:14 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Aug 2018 02:39:15 GMT
VOLUME [/data]
# Sat, 04 Aug 2018 02:39:15 GMT
WORKDIR /data
# Sat, 04 Aug 2018 02:39:15 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 04 Aug 2018 02:39:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Aug 2018 02:39:16 GMT
EXPOSE 6379/tcp
# Sat, 04 Aug 2018 02:39:16 GMT
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
	-	`sha256:0fe0d814e9cf8979858ae8511bf63571558639b5495079732eaf7ff090cbb25b`  
		Last Modified: Sat, 04 Aug 2018 02:46:19 GMT  
		Size: 12.2 MB (12184790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64204515789699f3e12351b462fe0f67d2cdbd4e909c5d75afb0c8d490046406`  
		Last Modified: Sat, 04 Aug 2018 02:46:17 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437b1dca38a8dc9d00fa2039dd77fbf3cd04fb27d65acabb6d943c3110d3c8e8`  
		Last Modified: Sat, 04 Aug 2018 02:46:17 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-rc4-alpine3.8` - linux; arm variant v6

```console
$ docker pull redis@sha256:bc46de8ba239875fad5c9961c447c9bbf03d0db3c823220b7d3421a5688b7b8e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8317277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66eaf11280af4d15109a2bf1e9e94344b3127edb0fd864f7b8a540bb1cfab5af`
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
# Sat, 04 Aug 2018 08:41:18 GMT
ENV REDIS_VERSION=5.0-rc4
# Sat, 04 Aug 2018 08:41:18 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0-rc4.tar.gz
# Sat, 04 Aug 2018 08:41:19 GMT
ENV REDIS_DOWNLOAD_SHA=bfc7a27d3ba990e154e5b56484061f01962d40b7c77b520ed7a940914b267cec
# Sat, 04 Aug 2018 08:45:25 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 04 Aug 2018 08:45:30 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Aug 2018 08:45:31 GMT
VOLUME [/data]
# Sat, 04 Aug 2018 08:45:32 GMT
WORKDIR /data
# Sat, 04 Aug 2018 08:45:33 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 04 Aug 2018 08:45:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Aug 2018 08:45:34 GMT
EXPOSE 6379/tcp
# Sat, 04 Aug 2018 08:45:35 GMT
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
	-	`sha256:0bfe7b055901440bd0343f1f94bfdb4ee44b4a276b9671dd3b44926aeca707ac`  
		Last Modified: Sat, 04 Aug 2018 08:50:04 GMT  
		Size: 6.2 MB (6160311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb863140cb65e632d9c58f75c73c16f37d8290aeba3f448b3b769d144f9eff4b`  
		Last Modified: Sat, 04 Aug 2018 08:49:56 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81176acdbcdfe5dd6c954a611002b61d32c641cfc75f7ea8114e6afacf06d42c`  
		Last Modified: Sat, 04 Aug 2018 08:49:56 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-rc4-alpine3.8` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:dc51ef63b62a99dc7f751963d15150d087f6db9c37a1493958a9a775e54a0b22
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (14041645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:947b0aca363a1e65e3f633d244e24c492033b800a3aab0cc795a1033245e7f4d`
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
# Sat, 04 Aug 2018 09:36:45 GMT
ENV REDIS_VERSION=5.0-rc4
# Sat, 04 Aug 2018 09:36:46 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0-rc4.tar.gz
# Sat, 04 Aug 2018 09:36:47 GMT
ENV REDIS_DOWNLOAD_SHA=bfc7a27d3ba990e154e5b56484061f01962d40b7c77b520ed7a940914b267cec
# Sat, 04 Aug 2018 09:38:20 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 04 Aug 2018 09:38:21 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Aug 2018 09:38:37 GMT
VOLUME [/data]
# Sat, 04 Aug 2018 09:38:38 GMT
WORKDIR /data
# Sat, 04 Aug 2018 09:38:39 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 04 Aug 2018 09:38:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Aug 2018 09:38:55 GMT
EXPOSE 6379/tcp
# Sat, 04 Aug 2018 09:38:56 GMT
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
	-	`sha256:be0d138debb65c6598d058a7714d4ac855071916e5db8a11ec3b6ba5d6c18ca3`  
		Last Modified: Sat, 04 Aug 2018 09:44:25 GMT  
		Size: 11.9 MB (11931273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40771ee4c561ab60b317defd1d08a51e4a3f2fd444e89536f3d75ef1def95e75`  
		Last Modified: Sat, 04 Aug 2018 09:44:20 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd7a567243f3db7b2be50d48ff5d6dd907a9b6040de3c4a25333db101e42c6c`  
		Last Modified: Sat, 04 Aug 2018 09:44:20 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-rc4-alpine3.8` - linux; ppc64le

```console
$ docker pull redis@sha256:adb1d8dfe12a407576c075bb955b8396233e42f9a4ca3f324ad35558c3c126ce
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14444788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db3219154773ba5a823e8eac34f1fc1be764de9e085f61c5a4613a5a7a448786`
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
# Sat, 04 Aug 2018 09:52:03 GMT
ENV REDIS_VERSION=5.0-rc4
# Sat, 04 Aug 2018 09:52:05 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0-rc4.tar.gz
# Sat, 04 Aug 2018 09:52:08 GMT
ENV REDIS_DOWNLOAD_SHA=bfc7a27d3ba990e154e5b56484061f01962d40b7c77b520ed7a940914b267cec
# Sat, 04 Aug 2018 09:53:56 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 04 Aug 2018 09:54:09 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Aug 2018 09:54:14 GMT
VOLUME [/data]
# Sat, 04 Aug 2018 09:54:23 GMT
WORKDIR /data
# Sat, 04 Aug 2018 09:54:29 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 04 Aug 2018 09:54:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Aug 2018 09:54:45 GMT
EXPOSE 6379/tcp
# Sat, 04 Aug 2018 09:54:53 GMT
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
	-	`sha256:689576e324fd97b80f81e9c15214c7452ed86159cce7137f0c6c91f4b34fee58`  
		Last Modified: Sat, 04 Aug 2018 10:10:32 GMT  
		Size: 12.2 MB (12238427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0664de0db9ebe9160904e60c43453d6abe702151e8989b7b5984bdac328de87b`  
		Last Modified: Sat, 04 Aug 2018 10:10:27 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d40f7bac7ef7b0f811082d0cd8387f9da70a3c341d0a6f1069506eb54a5ac1b`  
		Last Modified: Sat, 04 Aug 2018 10:10:27 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0-rc4-stretch`

```console
$ docker pull redis@sha256:f3fd90695096cb5468518c77f2f925633b76dc6836e8b41a6a485ef8d209e120
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `redis:5.0-rc4-stretch` - linux; amd64

```console
$ docker pull redis@sha256:6e54eb4c191b28aa5056dc2991000e88fc075bb67e375dd59a2fed9c800a2cef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.1 MB (35076312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4d725fbd35dbddb8234c3fa528ce028ed277be25383b6d9d45a5c6151a54426`
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
# Sat, 04 Aug 2018 02:34:58 GMT
ENV REDIS_VERSION=5.0-rc4
# Sat, 04 Aug 2018 02:34:58 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0-rc4.tar.gz
# Sat, 04 Aug 2018 02:34:59 GMT
ENV REDIS_DOWNLOAD_SHA=bfc7a27d3ba990e154e5b56484061f01962d40b7c77b520ed7a940914b267cec
# Sat, 04 Aug 2018 02:36:03 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Aug 2018 02:36:14 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Aug 2018 02:36:14 GMT
VOLUME [/data]
# Sat, 04 Aug 2018 02:36:14 GMT
WORKDIR /data
# Sat, 04 Aug 2018 02:36:15 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 04 Aug 2018 02:36:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Aug 2018 02:36:15 GMT
EXPOSE 6379/tcp
# Sat, 04 Aug 2018 02:36:16 GMT
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
	-	`sha256:307f76da4ee4002de560588b4d30a8f2fe27a159a984736b4830ff938f482fa0`  
		Last Modified: Sat, 04 Aug 2018 02:43:26 GMT  
		Size: 11.6 MB (11646890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58d3ac6db1c481215c8659d5a5f3add0445a2a2a6e43c20381af8b870eb89961`  
		Last Modified: Sat, 04 Aug 2018 02:43:20 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b9b2484cf75e32aa041846ab3ef4c2b1eb1ae3810807d4ce2b7606861059f0c`  
		Last Modified: Sat, 04 Aug 2018 02:43:21 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-rc4-stretch` - linux; arm variant v5

```console
$ docker pull redis@sha256:bae85d62073dee16af456f60e68e8fdb123a8ecf97817e8998f60248dd82d8af
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33388759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79d754f3723becb990662cce8bbebcc90a6870c85b06aa235b2ce18249531ec1`
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
# Sat, 04 Aug 2018 09:06:36 GMT
ENV REDIS_VERSION=5.0-rc4
# Sat, 04 Aug 2018 09:06:37 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0-rc4.tar.gz
# Sat, 04 Aug 2018 09:06:37 GMT
ENV REDIS_DOWNLOAD_SHA=bfc7a27d3ba990e154e5b56484061f01962d40b7c77b520ed7a940914b267cec
# Sat, 04 Aug 2018 09:07:31 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Aug 2018 09:07:32 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Aug 2018 09:07:32 GMT
VOLUME [/data]
# Sat, 04 Aug 2018 09:07:32 GMT
WORKDIR /data
# Sat, 04 Aug 2018 09:07:33 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 04 Aug 2018 09:07:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Aug 2018 09:07:33 GMT
EXPOSE 6379/tcp
# Sat, 04 Aug 2018 09:07:34 GMT
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
	-	`sha256:fd839543bc74795eeb4462d056b4ba1eb7f2ce41ac3b019adda449ba6c502881`  
		Last Modified: Sat, 04 Aug 2018 09:08:44 GMT  
		Size: 11.3 MB (11292752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ff758a124d99cdb94a37a51926faaca6d4f13c26d94a9a2ad30f48bf6ffa1a1`  
		Last Modified: Sat, 04 Aug 2018 09:08:41 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d31d0f6740748ff0af5fe578295e406e240e740ba8183e7a5871cfa389ab7e84`  
		Last Modified: Sat, 04 Aug 2018 09:08:40 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-rc4-stretch` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:cebd3423e701a4f1a06f9fbe25999b855dc7dcf02a1c61a02ec6d25785e23711
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.7 MB (32697267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ef997d313f95af7bfb716e4fb897533395f5a9522ab2d83d45e6ccfaac47d31`
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
# Sat, 04 Aug 2018 09:33:44 GMT
ENV REDIS_VERSION=5.0-rc4
# Sat, 04 Aug 2018 09:33:45 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0-rc4.tar.gz
# Sat, 04 Aug 2018 09:33:45 GMT
ENV REDIS_DOWNLOAD_SHA=bfc7a27d3ba990e154e5b56484061f01962d40b7c77b520ed7a940914b267cec
# Sat, 04 Aug 2018 09:35:55 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Aug 2018 09:35:58 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Aug 2018 09:35:58 GMT
VOLUME [/data]
# Sat, 04 Aug 2018 09:35:59 GMT
WORKDIR /data
# Sat, 04 Aug 2018 09:36:00 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 04 Aug 2018 09:36:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Aug 2018 09:36:01 GMT
EXPOSE 6379/tcp
# Sat, 04 Aug 2018 09:36:02 GMT
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
	-	`sha256:60b5f923d35dccff45906febf689dd83aa22cd62f4d13440e58aea9a70db9418`  
		Last Modified: Sat, 04 Aug 2018 09:43:03 GMT  
		Size: 11.5 MB (11455442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3ba4a0004cdbf41a7269e813dcac6558669bb2866930611f11dbf36fbcca656`  
		Last Modified: Sat, 04 Aug 2018 09:42:59 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71cb6dbebfa9079e61b1143574c693202d03bcd25751e21214d7b5810a432a72`  
		Last Modified: Sat, 04 Aug 2018 09:42:59 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-rc4-stretch` - linux; ppc64le

```console
$ docker pull redis@sha256:2710d3283d07ad05cc89c0038d304c61961ba33ce8d85cdbc9ebf9e33b8827d7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.5 MB (35485045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10522692a52386a39a60028771800a7fa0c053e181fdc6da2eb563fd02216153`
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
# Sat, 04 Aug 2018 09:40:36 GMT
ENV REDIS_VERSION=5.0-rc4
# Sat, 04 Aug 2018 09:40:40 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0-rc4.tar.gz
# Sat, 04 Aug 2018 09:40:47 GMT
ENV REDIS_DOWNLOAD_SHA=bfc7a27d3ba990e154e5b56484061f01962d40b7c77b520ed7a940914b267cec
# Sat, 04 Aug 2018 09:50:55 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Aug 2018 09:51:13 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Aug 2018 09:51:21 GMT
VOLUME [/data]
# Sat, 04 Aug 2018 09:51:28 GMT
WORKDIR /data
# Sat, 04 Aug 2018 09:51:34 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 04 Aug 2018 09:51:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Aug 2018 09:51:44 GMT
EXPOSE 6379/tcp
# Sat, 04 Aug 2018 09:51:47 GMT
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
	-	`sha256:7d0e2e389b55741a89772cc84c7d1c15f81ef4d9ebb281112716c7946d2e596e`  
		Last Modified: Sat, 04 Aug 2018 10:09:55 GMT  
		Size: 11.8 MB (11832450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13642204043066af8b67ffbcbc77bafba3f5965d7d474633b3a71fcd314c3897`  
		Last Modified: Sat, 04 Aug 2018 10:09:51 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b76d1e53bb0a0f5b63364ecff6b14f393510ed1ac474fffd0e40cd4fda13ac3d`  
		Last Modified: Sat, 04 Aug 2018 10:09:51 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0-rc-alpine`

```console
$ docker pull redis@sha256:d23e8e59aee26246931398370c5e6eee4bfc4053ffee9ebc49b98b0542d4b299
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `redis:5.0-rc-alpine` - linux; amd64

```console
$ docker pull redis@sha256:7240dac83ee736fd7a7a8c7a67d8f42fa56c02b4b946bcca5fd2a4035f254301
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14402154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30acf868132467c20690e02507f2445a6d031142cc98e88dae9637274af19da2`
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
# Sat, 04 Aug 2018 02:38:34 GMT
ENV REDIS_VERSION=5.0-rc4
# Sat, 04 Aug 2018 02:38:34 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0-rc4.tar.gz
# Sat, 04 Aug 2018 02:38:35 GMT
ENV REDIS_DOWNLOAD_SHA=bfc7a27d3ba990e154e5b56484061f01962d40b7c77b520ed7a940914b267cec
# Sat, 04 Aug 2018 02:39:13 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 04 Aug 2018 02:39:14 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Aug 2018 02:39:15 GMT
VOLUME [/data]
# Sat, 04 Aug 2018 02:39:15 GMT
WORKDIR /data
# Sat, 04 Aug 2018 02:39:15 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 04 Aug 2018 02:39:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Aug 2018 02:39:16 GMT
EXPOSE 6379/tcp
# Sat, 04 Aug 2018 02:39:16 GMT
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
	-	`sha256:0fe0d814e9cf8979858ae8511bf63571558639b5495079732eaf7ff090cbb25b`  
		Last Modified: Sat, 04 Aug 2018 02:46:19 GMT  
		Size: 12.2 MB (12184790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64204515789699f3e12351b462fe0f67d2cdbd4e909c5d75afb0c8d490046406`  
		Last Modified: Sat, 04 Aug 2018 02:46:17 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437b1dca38a8dc9d00fa2039dd77fbf3cd04fb27d65acabb6d943c3110d3c8e8`  
		Last Modified: Sat, 04 Aug 2018 02:46:17 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-rc-alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:bc46de8ba239875fad5c9961c447c9bbf03d0db3c823220b7d3421a5688b7b8e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8317277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66eaf11280af4d15109a2bf1e9e94344b3127edb0fd864f7b8a540bb1cfab5af`
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
# Sat, 04 Aug 2018 08:41:18 GMT
ENV REDIS_VERSION=5.0-rc4
# Sat, 04 Aug 2018 08:41:18 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0-rc4.tar.gz
# Sat, 04 Aug 2018 08:41:19 GMT
ENV REDIS_DOWNLOAD_SHA=bfc7a27d3ba990e154e5b56484061f01962d40b7c77b520ed7a940914b267cec
# Sat, 04 Aug 2018 08:45:25 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 04 Aug 2018 08:45:30 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Aug 2018 08:45:31 GMT
VOLUME [/data]
# Sat, 04 Aug 2018 08:45:32 GMT
WORKDIR /data
# Sat, 04 Aug 2018 08:45:33 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 04 Aug 2018 08:45:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Aug 2018 08:45:34 GMT
EXPOSE 6379/tcp
# Sat, 04 Aug 2018 08:45:35 GMT
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
	-	`sha256:0bfe7b055901440bd0343f1f94bfdb4ee44b4a276b9671dd3b44926aeca707ac`  
		Last Modified: Sat, 04 Aug 2018 08:50:04 GMT  
		Size: 6.2 MB (6160311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb863140cb65e632d9c58f75c73c16f37d8290aeba3f448b3b769d144f9eff4b`  
		Last Modified: Sat, 04 Aug 2018 08:49:56 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81176acdbcdfe5dd6c954a611002b61d32c641cfc75f7ea8114e6afacf06d42c`  
		Last Modified: Sat, 04 Aug 2018 08:49:56 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-rc-alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:dc51ef63b62a99dc7f751963d15150d087f6db9c37a1493958a9a775e54a0b22
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (14041645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:947b0aca363a1e65e3f633d244e24c492033b800a3aab0cc795a1033245e7f4d`
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
# Sat, 04 Aug 2018 09:36:45 GMT
ENV REDIS_VERSION=5.0-rc4
# Sat, 04 Aug 2018 09:36:46 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0-rc4.tar.gz
# Sat, 04 Aug 2018 09:36:47 GMT
ENV REDIS_DOWNLOAD_SHA=bfc7a27d3ba990e154e5b56484061f01962d40b7c77b520ed7a940914b267cec
# Sat, 04 Aug 2018 09:38:20 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 04 Aug 2018 09:38:21 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Aug 2018 09:38:37 GMT
VOLUME [/data]
# Sat, 04 Aug 2018 09:38:38 GMT
WORKDIR /data
# Sat, 04 Aug 2018 09:38:39 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 04 Aug 2018 09:38:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Aug 2018 09:38:55 GMT
EXPOSE 6379/tcp
# Sat, 04 Aug 2018 09:38:56 GMT
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
	-	`sha256:be0d138debb65c6598d058a7714d4ac855071916e5db8a11ec3b6ba5d6c18ca3`  
		Last Modified: Sat, 04 Aug 2018 09:44:25 GMT  
		Size: 11.9 MB (11931273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40771ee4c561ab60b317defd1d08a51e4a3f2fd444e89536f3d75ef1def95e75`  
		Last Modified: Sat, 04 Aug 2018 09:44:20 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd7a567243f3db7b2be50d48ff5d6dd907a9b6040de3c4a25333db101e42c6c`  
		Last Modified: Sat, 04 Aug 2018 09:44:20 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-rc-alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:adb1d8dfe12a407576c075bb955b8396233e42f9a4ca3f324ad35558c3c126ce
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14444788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db3219154773ba5a823e8eac34f1fc1be764de9e085f61c5a4613a5a7a448786`
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
# Sat, 04 Aug 2018 09:52:03 GMT
ENV REDIS_VERSION=5.0-rc4
# Sat, 04 Aug 2018 09:52:05 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0-rc4.tar.gz
# Sat, 04 Aug 2018 09:52:08 GMT
ENV REDIS_DOWNLOAD_SHA=bfc7a27d3ba990e154e5b56484061f01962d40b7c77b520ed7a940914b267cec
# Sat, 04 Aug 2018 09:53:56 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 04 Aug 2018 09:54:09 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Aug 2018 09:54:14 GMT
VOLUME [/data]
# Sat, 04 Aug 2018 09:54:23 GMT
WORKDIR /data
# Sat, 04 Aug 2018 09:54:29 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 04 Aug 2018 09:54:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Aug 2018 09:54:45 GMT
EXPOSE 6379/tcp
# Sat, 04 Aug 2018 09:54:53 GMT
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
	-	`sha256:689576e324fd97b80f81e9c15214c7452ed86159cce7137f0c6c91f4b34fee58`  
		Last Modified: Sat, 04 Aug 2018 10:10:32 GMT  
		Size: 12.2 MB (12238427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0664de0db9ebe9160904e60c43453d6abe702151e8989b7b5984bdac328de87b`  
		Last Modified: Sat, 04 Aug 2018 10:10:27 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d40f7bac7ef7b0f811082d0cd8387f9da70a3c341d0a6f1069506eb54a5ac1b`  
		Last Modified: Sat, 04 Aug 2018 10:10:27 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0-rc-alpine3.8`

```console
$ docker pull redis@sha256:d23e8e59aee26246931398370c5e6eee4bfc4053ffee9ebc49b98b0542d4b299
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `redis:5.0-rc-alpine3.8` - linux; amd64

```console
$ docker pull redis@sha256:7240dac83ee736fd7a7a8c7a67d8f42fa56c02b4b946bcca5fd2a4035f254301
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14402154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30acf868132467c20690e02507f2445a6d031142cc98e88dae9637274af19da2`
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
# Sat, 04 Aug 2018 02:38:34 GMT
ENV REDIS_VERSION=5.0-rc4
# Sat, 04 Aug 2018 02:38:34 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0-rc4.tar.gz
# Sat, 04 Aug 2018 02:38:35 GMT
ENV REDIS_DOWNLOAD_SHA=bfc7a27d3ba990e154e5b56484061f01962d40b7c77b520ed7a940914b267cec
# Sat, 04 Aug 2018 02:39:13 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 04 Aug 2018 02:39:14 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Aug 2018 02:39:15 GMT
VOLUME [/data]
# Sat, 04 Aug 2018 02:39:15 GMT
WORKDIR /data
# Sat, 04 Aug 2018 02:39:15 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 04 Aug 2018 02:39:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Aug 2018 02:39:16 GMT
EXPOSE 6379/tcp
# Sat, 04 Aug 2018 02:39:16 GMT
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
	-	`sha256:0fe0d814e9cf8979858ae8511bf63571558639b5495079732eaf7ff090cbb25b`  
		Last Modified: Sat, 04 Aug 2018 02:46:19 GMT  
		Size: 12.2 MB (12184790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64204515789699f3e12351b462fe0f67d2cdbd4e909c5d75afb0c8d490046406`  
		Last Modified: Sat, 04 Aug 2018 02:46:17 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437b1dca38a8dc9d00fa2039dd77fbf3cd04fb27d65acabb6d943c3110d3c8e8`  
		Last Modified: Sat, 04 Aug 2018 02:46:17 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-rc-alpine3.8` - linux; arm variant v6

```console
$ docker pull redis@sha256:bc46de8ba239875fad5c9961c447c9bbf03d0db3c823220b7d3421a5688b7b8e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8317277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66eaf11280af4d15109a2bf1e9e94344b3127edb0fd864f7b8a540bb1cfab5af`
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
# Sat, 04 Aug 2018 08:41:18 GMT
ENV REDIS_VERSION=5.0-rc4
# Sat, 04 Aug 2018 08:41:18 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0-rc4.tar.gz
# Sat, 04 Aug 2018 08:41:19 GMT
ENV REDIS_DOWNLOAD_SHA=bfc7a27d3ba990e154e5b56484061f01962d40b7c77b520ed7a940914b267cec
# Sat, 04 Aug 2018 08:45:25 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 04 Aug 2018 08:45:30 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Aug 2018 08:45:31 GMT
VOLUME [/data]
# Sat, 04 Aug 2018 08:45:32 GMT
WORKDIR /data
# Sat, 04 Aug 2018 08:45:33 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 04 Aug 2018 08:45:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Aug 2018 08:45:34 GMT
EXPOSE 6379/tcp
# Sat, 04 Aug 2018 08:45:35 GMT
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
	-	`sha256:0bfe7b055901440bd0343f1f94bfdb4ee44b4a276b9671dd3b44926aeca707ac`  
		Last Modified: Sat, 04 Aug 2018 08:50:04 GMT  
		Size: 6.2 MB (6160311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb863140cb65e632d9c58f75c73c16f37d8290aeba3f448b3b769d144f9eff4b`  
		Last Modified: Sat, 04 Aug 2018 08:49:56 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81176acdbcdfe5dd6c954a611002b61d32c641cfc75f7ea8114e6afacf06d42c`  
		Last Modified: Sat, 04 Aug 2018 08:49:56 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-rc-alpine3.8` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:dc51ef63b62a99dc7f751963d15150d087f6db9c37a1493958a9a775e54a0b22
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (14041645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:947b0aca363a1e65e3f633d244e24c492033b800a3aab0cc795a1033245e7f4d`
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
# Sat, 04 Aug 2018 09:36:45 GMT
ENV REDIS_VERSION=5.0-rc4
# Sat, 04 Aug 2018 09:36:46 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0-rc4.tar.gz
# Sat, 04 Aug 2018 09:36:47 GMT
ENV REDIS_DOWNLOAD_SHA=bfc7a27d3ba990e154e5b56484061f01962d40b7c77b520ed7a940914b267cec
# Sat, 04 Aug 2018 09:38:20 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 04 Aug 2018 09:38:21 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Aug 2018 09:38:37 GMT
VOLUME [/data]
# Sat, 04 Aug 2018 09:38:38 GMT
WORKDIR /data
# Sat, 04 Aug 2018 09:38:39 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 04 Aug 2018 09:38:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Aug 2018 09:38:55 GMT
EXPOSE 6379/tcp
# Sat, 04 Aug 2018 09:38:56 GMT
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
	-	`sha256:be0d138debb65c6598d058a7714d4ac855071916e5db8a11ec3b6ba5d6c18ca3`  
		Last Modified: Sat, 04 Aug 2018 09:44:25 GMT  
		Size: 11.9 MB (11931273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40771ee4c561ab60b317defd1d08a51e4a3f2fd444e89536f3d75ef1def95e75`  
		Last Modified: Sat, 04 Aug 2018 09:44:20 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd7a567243f3db7b2be50d48ff5d6dd907a9b6040de3c4a25333db101e42c6c`  
		Last Modified: Sat, 04 Aug 2018 09:44:20 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-rc-alpine3.8` - linux; ppc64le

```console
$ docker pull redis@sha256:adb1d8dfe12a407576c075bb955b8396233e42f9a4ca3f324ad35558c3c126ce
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14444788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db3219154773ba5a823e8eac34f1fc1be764de9e085f61c5a4613a5a7a448786`
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
# Sat, 04 Aug 2018 09:52:03 GMT
ENV REDIS_VERSION=5.0-rc4
# Sat, 04 Aug 2018 09:52:05 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0-rc4.tar.gz
# Sat, 04 Aug 2018 09:52:08 GMT
ENV REDIS_DOWNLOAD_SHA=bfc7a27d3ba990e154e5b56484061f01962d40b7c77b520ed7a940914b267cec
# Sat, 04 Aug 2018 09:53:56 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 04 Aug 2018 09:54:09 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Aug 2018 09:54:14 GMT
VOLUME [/data]
# Sat, 04 Aug 2018 09:54:23 GMT
WORKDIR /data
# Sat, 04 Aug 2018 09:54:29 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 04 Aug 2018 09:54:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Aug 2018 09:54:45 GMT
EXPOSE 6379/tcp
# Sat, 04 Aug 2018 09:54:53 GMT
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
	-	`sha256:689576e324fd97b80f81e9c15214c7452ed86159cce7137f0c6c91f4b34fee58`  
		Last Modified: Sat, 04 Aug 2018 10:10:32 GMT  
		Size: 12.2 MB (12238427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0664de0db9ebe9160904e60c43453d6abe702151e8989b7b5984bdac328de87b`  
		Last Modified: Sat, 04 Aug 2018 10:10:27 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d40f7bac7ef7b0f811082d0cd8387f9da70a3c341d0a6f1069506eb54a5ac1b`  
		Last Modified: Sat, 04 Aug 2018 10:10:27 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0-rc-stretch`

```console
$ docker pull redis@sha256:f3fd90695096cb5468518c77f2f925633b76dc6836e8b41a6a485ef8d209e120
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `redis:5.0-rc-stretch` - linux; amd64

```console
$ docker pull redis@sha256:6e54eb4c191b28aa5056dc2991000e88fc075bb67e375dd59a2fed9c800a2cef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.1 MB (35076312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4d725fbd35dbddb8234c3fa528ce028ed277be25383b6d9d45a5c6151a54426`
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
# Sat, 04 Aug 2018 02:34:58 GMT
ENV REDIS_VERSION=5.0-rc4
# Sat, 04 Aug 2018 02:34:58 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0-rc4.tar.gz
# Sat, 04 Aug 2018 02:34:59 GMT
ENV REDIS_DOWNLOAD_SHA=bfc7a27d3ba990e154e5b56484061f01962d40b7c77b520ed7a940914b267cec
# Sat, 04 Aug 2018 02:36:03 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Aug 2018 02:36:14 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Aug 2018 02:36:14 GMT
VOLUME [/data]
# Sat, 04 Aug 2018 02:36:14 GMT
WORKDIR /data
# Sat, 04 Aug 2018 02:36:15 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 04 Aug 2018 02:36:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Aug 2018 02:36:15 GMT
EXPOSE 6379/tcp
# Sat, 04 Aug 2018 02:36:16 GMT
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
	-	`sha256:307f76da4ee4002de560588b4d30a8f2fe27a159a984736b4830ff938f482fa0`  
		Last Modified: Sat, 04 Aug 2018 02:43:26 GMT  
		Size: 11.6 MB (11646890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58d3ac6db1c481215c8659d5a5f3add0445a2a2a6e43c20381af8b870eb89961`  
		Last Modified: Sat, 04 Aug 2018 02:43:20 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b9b2484cf75e32aa041846ab3ef4c2b1eb1ae3810807d4ce2b7606861059f0c`  
		Last Modified: Sat, 04 Aug 2018 02:43:21 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-rc-stretch` - linux; arm variant v5

```console
$ docker pull redis@sha256:bae85d62073dee16af456f60e68e8fdb123a8ecf97817e8998f60248dd82d8af
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33388759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79d754f3723becb990662cce8bbebcc90a6870c85b06aa235b2ce18249531ec1`
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
# Sat, 04 Aug 2018 09:06:36 GMT
ENV REDIS_VERSION=5.0-rc4
# Sat, 04 Aug 2018 09:06:37 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0-rc4.tar.gz
# Sat, 04 Aug 2018 09:06:37 GMT
ENV REDIS_DOWNLOAD_SHA=bfc7a27d3ba990e154e5b56484061f01962d40b7c77b520ed7a940914b267cec
# Sat, 04 Aug 2018 09:07:31 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Aug 2018 09:07:32 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Aug 2018 09:07:32 GMT
VOLUME [/data]
# Sat, 04 Aug 2018 09:07:32 GMT
WORKDIR /data
# Sat, 04 Aug 2018 09:07:33 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 04 Aug 2018 09:07:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Aug 2018 09:07:33 GMT
EXPOSE 6379/tcp
# Sat, 04 Aug 2018 09:07:34 GMT
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
	-	`sha256:fd839543bc74795eeb4462d056b4ba1eb7f2ce41ac3b019adda449ba6c502881`  
		Last Modified: Sat, 04 Aug 2018 09:08:44 GMT  
		Size: 11.3 MB (11292752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ff758a124d99cdb94a37a51926faaca6d4f13c26d94a9a2ad30f48bf6ffa1a1`  
		Last Modified: Sat, 04 Aug 2018 09:08:41 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d31d0f6740748ff0af5fe578295e406e240e740ba8183e7a5871cfa389ab7e84`  
		Last Modified: Sat, 04 Aug 2018 09:08:40 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-rc-stretch` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:cebd3423e701a4f1a06f9fbe25999b855dc7dcf02a1c61a02ec6d25785e23711
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.7 MB (32697267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ef997d313f95af7bfb716e4fb897533395f5a9522ab2d83d45e6ccfaac47d31`
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
# Sat, 04 Aug 2018 09:33:44 GMT
ENV REDIS_VERSION=5.0-rc4
# Sat, 04 Aug 2018 09:33:45 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0-rc4.tar.gz
# Sat, 04 Aug 2018 09:33:45 GMT
ENV REDIS_DOWNLOAD_SHA=bfc7a27d3ba990e154e5b56484061f01962d40b7c77b520ed7a940914b267cec
# Sat, 04 Aug 2018 09:35:55 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Aug 2018 09:35:58 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Aug 2018 09:35:58 GMT
VOLUME [/data]
# Sat, 04 Aug 2018 09:35:59 GMT
WORKDIR /data
# Sat, 04 Aug 2018 09:36:00 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 04 Aug 2018 09:36:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Aug 2018 09:36:01 GMT
EXPOSE 6379/tcp
# Sat, 04 Aug 2018 09:36:02 GMT
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
	-	`sha256:60b5f923d35dccff45906febf689dd83aa22cd62f4d13440e58aea9a70db9418`  
		Last Modified: Sat, 04 Aug 2018 09:43:03 GMT  
		Size: 11.5 MB (11455442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3ba4a0004cdbf41a7269e813dcac6558669bb2866930611f11dbf36fbcca656`  
		Last Modified: Sat, 04 Aug 2018 09:42:59 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71cb6dbebfa9079e61b1143574c693202d03bcd25751e21214d7b5810a432a72`  
		Last Modified: Sat, 04 Aug 2018 09:42:59 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-rc-stretch` - linux; ppc64le

```console
$ docker pull redis@sha256:2710d3283d07ad05cc89c0038d304c61961ba33ce8d85cdbc9ebf9e33b8827d7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.5 MB (35485045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10522692a52386a39a60028771800a7fa0c053e181fdc6da2eb563fd02216153`
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
# Sat, 04 Aug 2018 09:40:36 GMT
ENV REDIS_VERSION=5.0-rc4
# Sat, 04 Aug 2018 09:40:40 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0-rc4.tar.gz
# Sat, 04 Aug 2018 09:40:47 GMT
ENV REDIS_DOWNLOAD_SHA=bfc7a27d3ba990e154e5b56484061f01962d40b7c77b520ed7a940914b267cec
# Sat, 04 Aug 2018 09:50:55 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Aug 2018 09:51:13 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Aug 2018 09:51:21 GMT
VOLUME [/data]
# Sat, 04 Aug 2018 09:51:28 GMT
WORKDIR /data
# Sat, 04 Aug 2018 09:51:34 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 04 Aug 2018 09:51:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Aug 2018 09:51:44 GMT
EXPOSE 6379/tcp
# Sat, 04 Aug 2018 09:51:47 GMT
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
	-	`sha256:7d0e2e389b55741a89772cc84c7d1c15f81ef4d9ebb281112716c7946d2e596e`  
		Last Modified: Sat, 04 Aug 2018 10:09:55 GMT  
		Size: 11.8 MB (11832450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13642204043066af8b67ffbcbc77bafba3f5965d7d474633b3a71fcd314c3897`  
		Last Modified: Sat, 04 Aug 2018 10:09:51 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b76d1e53bb0a0f5b63364ecff6b14f393510ed1ac474fffd0e40cd4fda13ac3d`  
		Last Modified: Sat, 04 Aug 2018 10:09:51 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:alpine`

```console
$ docker pull redis@sha256:1a851771a44668c15876c1c9a8102b65d4acceb145e3b553918084f58db495b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `redis:alpine` - linux; amd64

```console
$ docker pull redis@sha256:a4b72529acce4055542ea684d2f11484da9fb3b70318a23d6f2eb8a71318bc20
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.6 MB (11629671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08bef618c30adc2eebe5c590150c7f16f20a0dcec1152171e78a3a028df92545`
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
# Sat, 04 Aug 2018 02:42:11 GMT
ENV REDIS_VERSION=4.0.11
# Sat, 04 Aug 2018 02:42:12 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Sat, 04 Aug 2018 02:42:12 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Sat, 04 Aug 2018 02:42:36 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 04 Aug 2018 02:42:37 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Aug 2018 02:42:37 GMT
VOLUME [/data]
# Sat, 04 Aug 2018 02:42:37 GMT
WORKDIR /data
# Sat, 04 Aug 2018 02:42:38 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 04 Aug 2018 02:42:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Aug 2018 02:42:38 GMT
EXPOSE 6379/tcp
# Sat, 04 Aug 2018 02:42:39 GMT
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
	-	`sha256:82d1d664c6a7b8305e96d7833492a206c6cbacc86ce5b870114251eebe9da4b5`  
		Last Modified: Sat, 04 Aug 2018 02:54:41 GMT  
		Size: 9.4 MB (9412310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69f8979cc3105273cbe7e6d13f52c014b1f8061e457d132ae928f8f09701df2e`  
		Last Modified: Sat, 04 Aug 2018 02:54:38 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ff30b3bc14850c8bc7d0770ee90622b5f7e95fae87b6b342b2dfb407f1887b8`  
		Last Modified: Sat, 04 Aug 2018 02:54:38 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:733ca3b0d5337d215262616f8903a959b6ec27c562252a22a5f57b4da9e97bda
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7970324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:722b119bf4f2912e8d23a8dbac279f9eaa488daedec4fa4b1fe0f646599ef3b3`
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
# Sat, 04 Aug 2018 08:45:47 GMT
ENV REDIS_VERSION=4.0.11
# Sat, 04 Aug 2018 08:45:47 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Sat, 04 Aug 2018 08:45:48 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Sat, 04 Aug 2018 08:49:18 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 04 Aug 2018 08:49:23 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Aug 2018 08:49:24 GMT
VOLUME [/data]
# Sat, 04 Aug 2018 08:49:24 GMT
WORKDIR /data
# Sat, 04 Aug 2018 08:49:26 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 04 Aug 2018 08:49:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Aug 2018 08:49:27 GMT
EXPOSE 6379/tcp
# Sat, 04 Aug 2018 08:49:28 GMT
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
	-	`sha256:b7fe99598159a741061edca2a5c5a8276824c754c5c7f2ab2434c9b9fd1fa4e8`  
		Last Modified: Sat, 04 Aug 2018 08:50:49 GMT  
		Size: 5.8 MB (5813355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eace38cc9ab933614ca814e89fd94a8c94ae25800e8e9de251cb64fe2b74ccca`  
		Last Modified: Sat, 04 Aug 2018 08:50:43 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f71fc77ce1b50c499cba660780a14fbf8e1cbe61eaa51969083080ae9245bc4b`  
		Last Modified: Sat, 04 Aug 2018 08:50:43 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:d27aeefe87dadfbd147e20dfa3d7ea680e7871f2dca7f8feea24d943b94878a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.3 MB (11277180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:004ef068b0926dfcb86804ccab767ea542be9d8138fb65bc825ce20c8d48c5fa`
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
# Sat, 04 Aug 2018 09:41:20 GMT
ENV REDIS_VERSION=4.0.11
# Sat, 04 Aug 2018 09:41:21 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Sat, 04 Aug 2018 09:41:22 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Sat, 04 Aug 2018 09:42:13 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 04 Aug 2018 09:42:15 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Aug 2018 09:42:15 GMT
VOLUME [/data]
# Sat, 04 Aug 2018 09:42:16 GMT
WORKDIR /data
# Sat, 04 Aug 2018 09:42:17 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 04 Aug 2018 09:42:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Aug 2018 09:42:18 GMT
EXPOSE 6379/tcp
# Sat, 04 Aug 2018 09:42:19 GMT
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
	-	`sha256:61a9a72010399fae677f01696224a8fd4ac31c9f6b4fad188937398a52bb9ea6`  
		Last Modified: Sat, 04 Aug 2018 09:48:32 GMT  
		Size: 9.2 MB (9166807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5755e826592c4aa946bbe4045dfc9f6c448a41ad0db8d56880bb5e648b3ecc1`  
		Last Modified: Sat, 04 Aug 2018 09:48:28 GMT  
		Size: 101.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67dca8f49af17fc3ae9957a843ebba37d7bacd1ce9cd37443671ddada05eac7a`  
		Last Modified: Sat, 04 Aug 2018 09:48:28 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:5d2e898d0710a6898d5875c3182cbe7b647d56a72d1d160830c7b12e245eb6e3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.7 MB (11712915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3dd98787bbc5e424a6def227a26d68fcfdeac188bcea614dc4c76bd6712aada`
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
# Sat, 04 Aug 2018 10:05:12 GMT
ENV REDIS_VERSION=4.0.11
# Sat, 04 Aug 2018 10:05:16 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Sat, 04 Aug 2018 10:05:21 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Sat, 04 Aug 2018 10:07:27 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 04 Aug 2018 10:07:46 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Aug 2018 10:07:50 GMT
VOLUME [/data]
# Sat, 04 Aug 2018 10:07:56 GMT
WORKDIR /data
# Sat, 04 Aug 2018 10:08:09 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 04 Aug 2018 10:08:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Aug 2018 10:08:17 GMT
EXPOSE 6379/tcp
# Sat, 04 Aug 2018 10:08:20 GMT
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
	-	`sha256:6e889eda23cca0db1f644eedd71a2a76059fc40f2a4710052514c5da4bf744e5`  
		Last Modified: Sat, 04 Aug 2018 10:12:38 GMT  
		Size: 9.5 MB (9506552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f9c67d1962fb265d02880f3da50dab1918b2ef4219f2dc7d6bb99c6323994c5`  
		Last Modified: Sat, 04 Aug 2018 10:12:31 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99523df5b1e4729edb21c35de387a4c3040f541e7c24dfcbef0de62f6a8f7c7e`  
		Last Modified: Sat, 04 Aug 2018 10:12:32 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:alpine3.8`

```console
$ docker pull redis@sha256:1a851771a44668c15876c1c9a8102b65d4acceb145e3b553918084f58db495b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `redis:alpine3.8` - linux; amd64

```console
$ docker pull redis@sha256:a4b72529acce4055542ea684d2f11484da9fb3b70318a23d6f2eb8a71318bc20
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.6 MB (11629671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08bef618c30adc2eebe5c590150c7f16f20a0dcec1152171e78a3a028df92545`
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
# Sat, 04 Aug 2018 02:42:11 GMT
ENV REDIS_VERSION=4.0.11
# Sat, 04 Aug 2018 02:42:12 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Sat, 04 Aug 2018 02:42:12 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Sat, 04 Aug 2018 02:42:36 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 04 Aug 2018 02:42:37 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Aug 2018 02:42:37 GMT
VOLUME [/data]
# Sat, 04 Aug 2018 02:42:37 GMT
WORKDIR /data
# Sat, 04 Aug 2018 02:42:38 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 04 Aug 2018 02:42:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Aug 2018 02:42:38 GMT
EXPOSE 6379/tcp
# Sat, 04 Aug 2018 02:42:39 GMT
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
	-	`sha256:82d1d664c6a7b8305e96d7833492a206c6cbacc86ce5b870114251eebe9da4b5`  
		Last Modified: Sat, 04 Aug 2018 02:54:41 GMT  
		Size: 9.4 MB (9412310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69f8979cc3105273cbe7e6d13f52c014b1f8061e457d132ae928f8f09701df2e`  
		Last Modified: Sat, 04 Aug 2018 02:54:38 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ff30b3bc14850c8bc7d0770ee90622b5f7e95fae87b6b342b2dfb407f1887b8`  
		Last Modified: Sat, 04 Aug 2018 02:54:38 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine3.8` - linux; arm variant v6

```console
$ docker pull redis@sha256:733ca3b0d5337d215262616f8903a959b6ec27c562252a22a5f57b4da9e97bda
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7970324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:722b119bf4f2912e8d23a8dbac279f9eaa488daedec4fa4b1fe0f646599ef3b3`
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
# Sat, 04 Aug 2018 08:45:47 GMT
ENV REDIS_VERSION=4.0.11
# Sat, 04 Aug 2018 08:45:47 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Sat, 04 Aug 2018 08:45:48 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Sat, 04 Aug 2018 08:49:18 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 04 Aug 2018 08:49:23 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Aug 2018 08:49:24 GMT
VOLUME [/data]
# Sat, 04 Aug 2018 08:49:24 GMT
WORKDIR /data
# Sat, 04 Aug 2018 08:49:26 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 04 Aug 2018 08:49:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Aug 2018 08:49:27 GMT
EXPOSE 6379/tcp
# Sat, 04 Aug 2018 08:49:28 GMT
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
	-	`sha256:b7fe99598159a741061edca2a5c5a8276824c754c5c7f2ab2434c9b9fd1fa4e8`  
		Last Modified: Sat, 04 Aug 2018 08:50:49 GMT  
		Size: 5.8 MB (5813355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eace38cc9ab933614ca814e89fd94a8c94ae25800e8e9de251cb64fe2b74ccca`  
		Last Modified: Sat, 04 Aug 2018 08:50:43 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f71fc77ce1b50c499cba660780a14fbf8e1cbe61eaa51969083080ae9245bc4b`  
		Last Modified: Sat, 04 Aug 2018 08:50:43 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine3.8` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:d27aeefe87dadfbd147e20dfa3d7ea680e7871f2dca7f8feea24d943b94878a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.3 MB (11277180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:004ef068b0926dfcb86804ccab767ea542be9d8138fb65bc825ce20c8d48c5fa`
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
# Sat, 04 Aug 2018 09:41:20 GMT
ENV REDIS_VERSION=4.0.11
# Sat, 04 Aug 2018 09:41:21 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Sat, 04 Aug 2018 09:41:22 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Sat, 04 Aug 2018 09:42:13 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 04 Aug 2018 09:42:15 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Aug 2018 09:42:15 GMT
VOLUME [/data]
# Sat, 04 Aug 2018 09:42:16 GMT
WORKDIR /data
# Sat, 04 Aug 2018 09:42:17 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 04 Aug 2018 09:42:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Aug 2018 09:42:18 GMT
EXPOSE 6379/tcp
# Sat, 04 Aug 2018 09:42:19 GMT
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
	-	`sha256:61a9a72010399fae677f01696224a8fd4ac31c9f6b4fad188937398a52bb9ea6`  
		Last Modified: Sat, 04 Aug 2018 09:48:32 GMT  
		Size: 9.2 MB (9166807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5755e826592c4aa946bbe4045dfc9f6c448a41ad0db8d56880bb5e648b3ecc1`  
		Last Modified: Sat, 04 Aug 2018 09:48:28 GMT  
		Size: 101.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67dca8f49af17fc3ae9957a843ebba37d7bacd1ce9cd37443671ddada05eac7a`  
		Last Modified: Sat, 04 Aug 2018 09:48:28 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine3.8` - linux; ppc64le

```console
$ docker pull redis@sha256:5d2e898d0710a6898d5875c3182cbe7b647d56a72d1d160830c7b12e245eb6e3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.7 MB (11712915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3dd98787bbc5e424a6def227a26d68fcfdeac188bcea614dc4c76bd6712aada`
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
# Sat, 04 Aug 2018 10:05:12 GMT
ENV REDIS_VERSION=4.0.11
# Sat, 04 Aug 2018 10:05:16 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Sat, 04 Aug 2018 10:05:21 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Sat, 04 Aug 2018 10:07:27 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 04 Aug 2018 10:07:46 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Aug 2018 10:07:50 GMT
VOLUME [/data]
# Sat, 04 Aug 2018 10:07:56 GMT
WORKDIR /data
# Sat, 04 Aug 2018 10:08:09 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 04 Aug 2018 10:08:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Aug 2018 10:08:17 GMT
EXPOSE 6379/tcp
# Sat, 04 Aug 2018 10:08:20 GMT
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
	-	`sha256:6e889eda23cca0db1f644eedd71a2a76059fc40f2a4710052514c5da4bf744e5`  
		Last Modified: Sat, 04 Aug 2018 10:12:38 GMT  
		Size: 9.5 MB (9506552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f9c67d1962fb265d02880f3da50dab1918b2ef4219f2dc7d6bb99c6323994c5`  
		Last Modified: Sat, 04 Aug 2018 10:12:31 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99523df5b1e4729edb21c35de387a4c3040f541e7c24dfcbef0de62f6a8f7c7e`  
		Last Modified: Sat, 04 Aug 2018 10:12:32 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:latest`

```console
$ docker pull redis@sha256:74b24b022962e59c43359a7478b362e22343d5613c4fd866f9ffe8b7d5bbefae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8

### `redis:latest` - linux; amd64

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

### `redis:latest` - linux; arm variant v5

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

### `redis:latest` - linux; arm64 variant v8

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
