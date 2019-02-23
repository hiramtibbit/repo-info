<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `aerospike`

-	[`aerospike:4.3.1.8`](#aerospike4318)
-	[`aerospike:4.4.0.8`](#aerospike4408)
-	[`aerospike:4.5.0.5`](#aerospike4505)
-	[`aerospike:latest`](#aerospikelatest)

## `aerospike:4.3.1.8`

```console
$ docker pull aerospike@sha256:fe3d5109b33f9ff75f1c73cde1d92caceda4ccbb3c1278ca9ff5f2afd3ead4e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `aerospike:4.3.1.8` - linux; amd64

```console
$ docker pull aerospike@sha256:d11790c51e7063ddd677035ca0fb51f27d36da7bd8aad24cffce6755e85ae514
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.3 MB (49288557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca5d93dc1ba538cb598a3165d171a246a0217c2f70c691aee95fcf7f2feffdb5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["asd"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 05:07:43 GMT
ENV AEROSPIKE_VERSION=4.3.1.8
# Wed, 06 Feb 2019 05:07:43 GMT
ENV AEROSPIKE_SHA256=63df952ad6dc031749d09322091760ba5836b6921b6004cb5b7d14c292591380
# Wed, 06 Feb 2019 05:08:00 GMT
RUN apt-get update -y   && apt-get install -y wget python lua5.2 gettext-base   && wget "https://www.aerospike.com/artifacts/aerospike-server-community/${AEROSPIKE_VERSION}/aerospike-server-community-${AEROSPIKE_VERSION}-debian9.tgz" -O aerospike-server.tgz   && echo "$AEROSPIKE_SHA256 *aerospike-server.tgz" | sha256sum -c -   && mkdir aerospike   && tar xzf aerospike-server.tgz --strip-components=1 -C aerospike   && dpkg -i aerospike/aerospike-server-*.deb   && dpkg -i aerospike/aerospike-tools-*.deb   && mkdir -p /var/log/aerospike/   && mkdir -p /var/run/aerospike/   && rm -rf aerospike-server.tgz aerospike /var/lib/apt/lists/*   && rm -rf /opt/aerospike/lib/java   && dpkg -r wget ca-certificates openssl xz-utils  && dpkg --purge wget ca-certificates openssl xz-utils  && apt-get purge -y   && apt autoremove -y
# Wed, 06 Feb 2019 05:08:00 GMT
COPY file:8d3c7b634fe854c02711ded13d6741f28621ef3e5ae540ca3219ed7816a992ab in /etc/aerospike/aerospike.template.conf 
# Wed, 06 Feb 2019 05:08:01 GMT
COPY file:688bc1b7dea55c1dc5575a99640936049823d07bac5c920bbace2369fbb27428 in /entrypoint.sh 
# Wed, 06 Feb 2019 05:08:01 GMT
VOLUME [/opt/aerospike/data]
# Wed, 06 Feb 2019 05:08:01 GMT
EXPOSE 3000 3001 3002 3003
# Wed, 06 Feb 2019 05:08:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Feb 2019 05:08:01 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:833a6d40dd2c6027404a563ef9f6b0d97906b41c1841cddabd428dfcc7e864ef`  
		Last Modified: Wed, 06 Feb 2019 05:08:38 GMT  
		Size: 26.8 MB (26786272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0feac764c7efbd89339c3386b787ffef8bdc4e7097748874070cf4a0c9abdb5c`  
		Last Modified: Wed, 06 Feb 2019 05:08:32 GMT  
		Size: 1.1 KB (1113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fa4b45970023498a759e445ce3cd58c317fff974b3174003e020f5bf1fc79a9`  
		Last Modified: Wed, 06 Feb 2019 05:08:30 GMT  
		Size: 884.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `aerospike:4.4.0.8`

```console
$ docker pull aerospike@sha256:2e5b975baa0eb4541750a31dcd05513a993d55cd80bce8d57e776eea0d784512
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `aerospike:4.4.0.8` - linux; amd64

```console
$ docker pull aerospike@sha256:6b6f7e4e06a5bc0b6ae3b386cf25d889126787a81cb7647a0d5ed15b7fb10208
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.3 MB (49252445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d1f3aaa6e3064be673c578a0218b0003b612a433965c90dbfeccc04d5ab9974`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["asd"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 05:07:20 GMT
ENV AEROSPIKE_VERSION=4.4.0.8
# Wed, 06 Feb 2019 05:07:20 GMT
ENV AEROSPIKE_SHA256=d9fe9642346e8ada2fe0c1f621f49eb9a5be12a91fee72e74a9391de9bab6f58
# Wed, 06 Feb 2019 05:07:38 GMT
RUN apt-get update -y   && apt-get install -y wget python lua5.2 gettext-base   && wget "https://www.aerospike.com/artifacts/aerospike-server-community/${AEROSPIKE_VERSION}/aerospike-server-community-${AEROSPIKE_VERSION}-debian9.tgz" -O aerospike-server.tgz   && echo "$AEROSPIKE_SHA256 *aerospike-server.tgz" | sha256sum -c -   && mkdir aerospike   && tar xzf aerospike-server.tgz --strip-components=1 -C aerospike   && dpkg -i aerospike/aerospike-server-*.deb   && dpkg -i aerospike/aerospike-tools-*.deb   && mkdir -p /var/log/aerospike/   && mkdir -p /var/run/aerospike/   && rm -rf aerospike-server.tgz aerospike /var/lib/apt/lists/*   && rm -rf /opt/aerospike/lib/java   && dpkg -r wget ca-certificates openssl xz-utils  && dpkg --purge wget ca-certificates openssl xz-utils  && apt-get purge -y   && apt autoremove -y
# Wed, 06 Feb 2019 05:07:38 GMT
COPY file:8d3c7b634fe854c02711ded13d6741f28621ef3e5ae540ca3219ed7816a992ab in /etc/aerospike/aerospike.template.conf 
# Wed, 06 Feb 2019 05:07:38 GMT
COPY file:688bc1b7dea55c1dc5575a99640936049823d07bac5c920bbace2369fbb27428 in /entrypoint.sh 
# Wed, 06 Feb 2019 05:07:38 GMT
VOLUME [/opt/aerospike/data]
# Wed, 06 Feb 2019 05:07:39 GMT
EXPOSE 3000 3001 3002 3003
# Wed, 06 Feb 2019 05:07:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Feb 2019 05:07:39 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f611a30a5276f0ea6f6c3fa17f568ea392587a5a509e0f5f4f430b4b76fd27e6`  
		Last Modified: Wed, 06 Feb 2019 05:08:27 GMT  
		Size: 26.8 MB (26750163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3fc5783c860045dddd745f20cee0106548b5bbca2fec0d01c79a7b50d18bd5a`  
		Last Modified: Wed, 06 Feb 2019 05:08:20 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c60f0a311fa2873768a8aeb6675d84a556c55d4b78cce9d2aaf527781d5747d6`  
		Last Modified: Wed, 06 Feb 2019 05:08:20 GMT  
		Size: 884.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `aerospike:4.5.0.5`

```console
$ docker pull aerospike@sha256:4fc53e24762785898e165bdafa97c4e947cff731f964ace2988c6cb36d2acbb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `aerospike:4.5.0.5` - linux; amd64

```console
$ docker pull aerospike@sha256:73dc2a67a80c641577fa134fe5518164656c4239efa0f308740284d16e4bcab1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.3 MB (49259463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fd90cb00718b08afc81aae49f4d19abd38f690daeb02c400d608a46187e8761`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["asd"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Sat, 23 Feb 2019 00:19:17 GMT
ENV AEROSPIKE_VERSION=4.5.0.5
# Sat, 23 Feb 2019 00:19:18 GMT
ENV AEROSPIKE_SHA256=c1062f496cb3e16a22df31d87a04aeda5f1294d30208e25477d51c8973f0e6e6
# Sat, 23 Feb 2019 00:19:38 GMT
RUN apt-get update -y   && apt-get install -y wget python lua5.2 gettext-base   && wget "https://www.aerospike.com/artifacts/aerospike-server-community/${AEROSPIKE_VERSION}/aerospike-server-community-${AEROSPIKE_VERSION}-debian9.tgz" -O aerospike-server.tgz   && echo "$AEROSPIKE_SHA256 *aerospike-server.tgz" | sha256sum -c -   && mkdir aerospike   && tar xzf aerospike-server.tgz --strip-components=1 -C aerospike   && dpkg -i aerospike/aerospike-server-*.deb   && dpkg -i aerospike/aerospike-tools-*.deb   && mkdir -p /var/log/aerospike/   && mkdir -p /var/run/aerospike/   && rm -rf aerospike-server.tgz aerospike /var/lib/apt/lists/*   && rm -rf /opt/aerospike/lib/java   && dpkg -r wget ca-certificates openssl xz-utils  && dpkg --purge wget ca-certificates openssl xz-utils  && apt-get purge -y   && apt autoremove -y
# Sat, 23 Feb 2019 00:19:38 GMT
COPY file:8d3c7b634fe854c02711ded13d6741f28621ef3e5ae540ca3219ed7816a992ab in /etc/aerospike/aerospike.template.conf 
# Sat, 23 Feb 2019 00:19:38 GMT
COPY file:688bc1b7dea55c1dc5575a99640936049823d07bac5c920bbace2369fbb27428 in /entrypoint.sh 
# Sat, 23 Feb 2019 00:19:38 GMT
VOLUME [/opt/aerospike/data]
# Sat, 23 Feb 2019 00:19:39 GMT
EXPOSE 3000 3001 3002 3003
# Sat, 23 Feb 2019 00:19:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 23 Feb 2019 00:19:39 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81a114ca3c0b38ffab4d635bef7f30046161a3ff7ab1c204cccff3972671ee9a`  
		Last Modified: Sat, 23 Feb 2019 00:19:58 GMT  
		Size: 26.8 MB (26757179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f9139879440fa562ae2bd7d7d0230db39dea6fa3b0f1763df43f69f1629cdcd`  
		Last Modified: Sat, 23 Feb 2019 00:19:53 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f231b52be971d34b9530d5c3642da2bd883b80532855cb33f50af02f27c5258`  
		Last Modified: Sat, 23 Feb 2019 00:19:53 GMT  
		Size: 884.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `aerospike:latest`

```console
$ docker pull aerospike@sha256:4fc53e24762785898e165bdafa97c4e947cff731f964ace2988c6cb36d2acbb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `aerospike:latest` - linux; amd64

```console
$ docker pull aerospike@sha256:73dc2a67a80c641577fa134fe5518164656c4239efa0f308740284d16e4bcab1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.3 MB (49259463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fd90cb00718b08afc81aae49f4d19abd38f690daeb02c400d608a46187e8761`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["asd"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Sat, 23 Feb 2019 00:19:17 GMT
ENV AEROSPIKE_VERSION=4.5.0.5
# Sat, 23 Feb 2019 00:19:18 GMT
ENV AEROSPIKE_SHA256=c1062f496cb3e16a22df31d87a04aeda5f1294d30208e25477d51c8973f0e6e6
# Sat, 23 Feb 2019 00:19:38 GMT
RUN apt-get update -y   && apt-get install -y wget python lua5.2 gettext-base   && wget "https://www.aerospike.com/artifacts/aerospike-server-community/${AEROSPIKE_VERSION}/aerospike-server-community-${AEROSPIKE_VERSION}-debian9.tgz" -O aerospike-server.tgz   && echo "$AEROSPIKE_SHA256 *aerospike-server.tgz" | sha256sum -c -   && mkdir aerospike   && tar xzf aerospike-server.tgz --strip-components=1 -C aerospike   && dpkg -i aerospike/aerospike-server-*.deb   && dpkg -i aerospike/aerospike-tools-*.deb   && mkdir -p /var/log/aerospike/   && mkdir -p /var/run/aerospike/   && rm -rf aerospike-server.tgz aerospike /var/lib/apt/lists/*   && rm -rf /opt/aerospike/lib/java   && dpkg -r wget ca-certificates openssl xz-utils  && dpkg --purge wget ca-certificates openssl xz-utils  && apt-get purge -y   && apt autoremove -y
# Sat, 23 Feb 2019 00:19:38 GMT
COPY file:8d3c7b634fe854c02711ded13d6741f28621ef3e5ae540ca3219ed7816a992ab in /etc/aerospike/aerospike.template.conf 
# Sat, 23 Feb 2019 00:19:38 GMT
COPY file:688bc1b7dea55c1dc5575a99640936049823d07bac5c920bbace2369fbb27428 in /entrypoint.sh 
# Sat, 23 Feb 2019 00:19:38 GMT
VOLUME [/opt/aerospike/data]
# Sat, 23 Feb 2019 00:19:39 GMT
EXPOSE 3000 3001 3002 3003
# Sat, 23 Feb 2019 00:19:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 23 Feb 2019 00:19:39 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81a114ca3c0b38ffab4d635bef7f30046161a3ff7ab1c204cccff3972671ee9a`  
		Last Modified: Sat, 23 Feb 2019 00:19:58 GMT  
		Size: 26.8 MB (26757179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f9139879440fa562ae2bd7d7d0230db39dea6fa3b0f1763df43f69f1629cdcd`  
		Last Modified: Sat, 23 Feb 2019 00:19:53 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f231b52be971d34b9530d5c3642da2bd883b80532855cb33f50af02f27c5258`  
		Last Modified: Sat, 23 Feb 2019 00:19:53 GMT  
		Size: 884.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
