<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `spiped`

-	[`spiped:1`](#spiped1)
-	[`spiped:1.6`](#spiped16)
-	[`spiped:1.6.0`](#spiped160)
-	[`spiped:1.6.0-alpine`](#spiped160-alpine)
-	[`spiped:1.6-alpine`](#spiped16-alpine)
-	[`spiped:1-alpine`](#spiped1-alpine)
-	[`spiped:alpine`](#spipedalpine)
-	[`spiped:latest`](#spipedlatest)

## `spiped:1`

```console
$ docker pull spiped@sha256:95e212bbefad94b717dbc14873590745c1a931bc66ed8bcb405e21bfdad4446c
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

### `spiped:1` - linux; amd64

```console
$ docker pull spiped@sha256:e3082527cfa5af597bc1e7213492c0b49253bdf8a5e6dfc4fb506bcbdb3cceba
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30257794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cd2a5698a9c59054540a2c392a00bf5e774170465b2ba1c3b66162976a4c3e4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 26 Jun 2018 21:25:25 GMT
ADD file:28fbc9fd012eef72780d1c75fc2b0969d13f0138f735035335ab4b76793da2da in / 
# Tue, 26 Jun 2018 21:25:25 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 01:53:37 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 27 Jun 2018 01:53:44 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 01:53:44 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 27 Jun 2018 01:53:45 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 27 Jun 2018 01:53:45 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 27 Jun 2018 01:54:24 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 01:54:24 GMT
VOLUME [/spiped]
# Wed, 27 Jun 2018 01:54:24 GMT
WORKDIR /spiped
# Wed, 27 Jun 2018 01:54:25 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 27 Jun 2018 01:54:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 01:54:26 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:683abbb4ea60e108164f1d351e7bcf13daf45941137d800086447874df05f48e`  
		Last Modified: Tue, 26 Jun 2018 21:37:45 GMT  
		Size: 22.5 MB (22496975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9db266f3530b4e13f81e1ceea020eb63fbc8b9f161e520bf13cfa80a6c41eca4`  
		Last Modified: Wed, 27 Jun 2018 01:55:21 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99a21adc90d743b6303269e55a6943472a7f8fe448b663c7366cb8266ba05933`  
		Last Modified: Wed, 27 Jun 2018 01:55:22 GMT  
		Size: 1.9 MB (1881476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69a11766fcdebf3b72c6d8532cd98c64724fbb3ca7bb2261a19fb92e6bea1e02`  
		Last Modified: Wed, 27 Jun 2018 01:55:24 GMT  
		Size: 5.9 MB (5877159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484d7b23a09481b2ae356bbd665c6eef86fdffdcf5c50b718e4ec86d1c258ace`  
		Last Modified: Wed, 27 Jun 2018 01:55:21 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e10f70836b73ff52d6844b0bf39add945254536c6b1993cdce05cb352f52ec46`  
		Last Modified: Wed, 27 Jun 2018 01:55:21 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1` - linux; arm variant v5

```console
$ docker pull spiped@sha256:cd2f11f29ad1ce4426f8c877694f6d3f8bb4b67a219fb0878e019b057aeaa777
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 MB (27753848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebf3476a001ef3832d89c562c26da2178bcfe9b172ae97dc24918dda1a651f96`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 27 Jun 2018 08:54:01 GMT
ADD file:f1e0d5c56a23a29918cb3b7691cee8f22620b4c54ee70a0dbb4b8151b2be3355 in / 
# Wed, 27 Jun 2018 08:54:02 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 09:26:08 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 27 Jun 2018 09:26:18 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 09:26:18 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 27 Jun 2018 09:26:18 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 27 Jun 2018 09:26:19 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 27 Jun 2018 09:26:58 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 09:26:58 GMT
VOLUME [/spiped]
# Wed, 27 Jun 2018 09:26:58 GMT
WORKDIR /spiped
# Wed, 27 Jun 2018 09:26:59 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 27 Jun 2018 09:26:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 09:27:00 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:151bc45ca30d5401779cd71c1dd194a7e6f64f1214de3f4f025bc53daf823199`  
		Last Modified: Wed, 27 Jun 2018 09:03:17 GMT  
		Size: 21.2 MB (21177290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f880e610a73e5d393ac189fba2ac1089147a75d5e58fee118a5a72d2f4c898b`  
		Last Modified: Wed, 27 Jun 2018 09:27:19 GMT  
		Size: 1.7 KB (1734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bac916f1cfc1c1cac20c4ba1a3dbb8c1e27b7c04c6b9fcb0557004aaf0f2a93c`  
		Last Modified: Wed, 27 Jun 2018 09:27:19 GMT  
		Size: 1.6 MB (1622942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b57f21301330ff3da53b387f4e2993ef4f4b5288f92e277f188e67095204394c`  
		Last Modified: Wed, 27 Jun 2018 09:27:21 GMT  
		Size: 5.0 MB (4951405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d81d191fe1c511e6d3a4a53d62ffe3882a92d18adb36e95a6db82141a8258203`  
		Last Modified: Wed, 27 Jun 2018 09:27:19 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4769af27e29077f18172e07715fedb9cbf70a5bf80cbe600356d6a85bf74cad8`  
		Last Modified: Wed, 27 Jun 2018 09:27:19 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1` - linux; arm variant v7

```console
$ docker pull spiped@sha256:8feb20537b6191d91c07571bd0df898deeb9ed405e6502339c6e3042a90464d9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.6 MB (25560441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c22fa14307357fbc453fa170f81f34c9fe8ae34b885a4cdebcfd787b49d129eb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 27 Jun 2018 12:03:51 GMT
ADD file:d05cf75761bffd94ce908a55d38fc4966c194aa14492730dfdc1e52c3ddd0892 in / 
# Wed, 27 Jun 2018 12:03:54 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 14:33:22 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 27 Jun 2018 14:33:29 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 14:33:31 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 27 Jun 2018 14:33:31 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 27 Jun 2018 14:33:32 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 27 Jun 2018 14:34:01 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 14:34:02 GMT
VOLUME [/spiped]
# Wed, 27 Jun 2018 14:34:02 GMT
WORKDIR /spiped
# Wed, 27 Jun 2018 14:34:04 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 27 Jun 2018 14:34:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 14:34:04 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:a779870b6875e97ad1448eaf9befb46011e0fd10ef5014f59d63f624b51de26f`  
		Last Modified: Wed, 27 Jun 2018 12:13:30 GMT  
		Size: 19.3 MB (19286273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a35b360ce5f3bd1305a9ccf159944d24f2c4f5051d703d94c7693b543930748`  
		Last Modified: Wed, 27 Jun 2018 14:34:22 GMT  
		Size: 1.7 KB (1738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20a068697c4d62a96f730b3fed15637ce5d5282577ff3a89009f455b9868ec4f`  
		Last Modified: Wed, 27 Jun 2018 14:34:22 GMT  
		Size: 1.6 MB (1564321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a829a5d17ef1d9dc72e0f7b01313a969d6c8820a2560aa95bddfcc317b13c04b`  
		Last Modified: Wed, 27 Jun 2018 14:34:23 GMT  
		Size: 4.7 MB (4707632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8754ee15d9bef810b8824c9ac8f1dc7712736aff06818395185513e0a2244d75`  
		Last Modified: Wed, 27 Jun 2018 14:34:22 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c54fb7b5e373010bf8843351b29a8fd2dbcf424e7959d352332d40dad3197c79`  
		Last Modified: Wed, 27 Jun 2018 14:34:22 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:d988764360180965e0e2e363faf022c9895d982d1539908f0c85170ea34901fb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 MB (27201273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9807e73ea9e9ba59223656404f0e0b647fd129a7a38b45801064887ace3ba880`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:44 GMT
ADD file:b8a1907d99b0b9f75b52f8e25d5c346caf0244b325919c02090ab1e05ba1cf18 in / 
# Wed, 27 Jun 2018 08:47:45 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 10:16:06 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 27 Jun 2018 10:16:17 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:16:18 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 27 Jun 2018 10:16:18 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 27 Jun 2018 10:16:19 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 27 Jun 2018 10:17:56 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 10:17:56 GMT
VOLUME [/spiped]
# Wed, 27 Jun 2018 10:17:57 GMT
WORKDIR /spiped
# Wed, 27 Jun 2018 10:18:05 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 27 Jun 2018 10:18:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 10:18:06 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:153362478bb06475bede3bd6da2ff08a91dd9fc6f245c70bb5a033b65f38ac14`  
		Last Modified: Wed, 27 Jun 2018 08:58:51 GMT  
		Size: 20.3 MB (20348077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78b2f43c016fd4d4cd481aeac0419698ea92dca5f6bb98dd7db5ca2561449ac1`  
		Last Modified: Wed, 27 Jun 2018 10:18:53 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aba2a04d3936ded7cff2128fbc05182ee1afc89ed1d866b9e6c9baffca94d36b`  
		Last Modified: Wed, 27 Jun 2018 10:18:54 GMT  
		Size: 1.6 MB (1614864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:956b30a9f14a239462f5e2a16993a0a7bae1ab613ed52cdc6e11f1e0162367ba`  
		Last Modified: Wed, 27 Jun 2018 10:18:55 GMT  
		Size: 5.2 MB (5236143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c88ecccfd146789a9081a2775acf562d52da827a3b551e9ec08f9b6fcd56422`  
		Last Modified: Wed, 27 Jun 2018 10:18:54 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44da34c9f604867ebb04a564302cadbdf0e29c19835515562221703983465e78`  
		Last Modified: Wed, 27 Jun 2018 10:18:53 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1` - linux; 386

```console
$ docker pull spiped@sha256:5f33e4aee7b81dfc21594ca7c7f342300ebe5b4b4e71d634a417ac17eea43b2c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34318464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2564df961f51aa933ec5841ed0dc9846b8907e2d9b68dbaf9a787a51d1c745f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 27 Jun 2018 10:46:39 GMT
ADD file:e1777a98c0e3aaf9cb1f4116550001b0eed2fe669b2c6449c93b76cccc92e1a2 in / 
# Wed, 27 Jun 2018 10:46:42 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:30:08 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 27 Jun 2018 12:30:14 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:30:15 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 27 Jun 2018 12:30:15 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 27 Jun 2018 12:30:15 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 27 Jun 2018 12:30:55 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 12:30:55 GMT
VOLUME [/spiped]
# Wed, 27 Jun 2018 12:30:56 GMT
WORKDIR /spiped
# Wed, 27 Jun 2018 12:30:56 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 27 Jun 2018 12:30:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 12:30:56 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:7de5eb46c52dbee10629f5dc34d9b2445893031ae37083572734bc4f6577757d`  
		Last Modified: Wed, 27 Jun 2018 11:11:02 GMT  
		Size: 23.1 MB (23140103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b7ab4234767cba8adea7d4842d9013e2fa2c85532842525c7659d0e61e827f4`  
		Last Modified: Wed, 27 Jun 2018 12:31:19 GMT  
		Size: 1.7 KB (1735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef522984a73a43c9cb1ddbe0466f29cb43f58d818c6077437841753663fb7722`  
		Last Modified: Wed, 27 Jun 2018 12:31:20 GMT  
		Size: 1.9 MB (1874129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d31ff24e7cae5f63d28f3dcf17634ea1c2f8ff6e48cf79c90a2ec99338bb7c9`  
		Last Modified: Wed, 27 Jun 2018 12:31:25 GMT  
		Size: 9.3 MB (9302053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f401c60ded68afbb2e3c8deff093cd19aba01290eb0b767b7f54e92d31af96f0`  
		Last Modified: Wed, 27 Jun 2018 12:31:19 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abd18763fdca57022694b894839d383d0de691e8441eee0f265d7bcc3f3123cb`  
		Last Modified: Wed, 27 Jun 2018 12:31:20 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1` - linux; ppc64le

```console
$ docker pull spiped@sha256:cdcef69b1af352bb219479709b040284c87098330a7fc6f9d82870dc4867f4d4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.2 MB (30155123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d19a2138397566ef19a710c882cc7771af91beb7b92d99b6def61f61e036e5b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 27 Jun 2018 08:21:34 GMT
ADD file:7bd6d5557557a294db488600b483d452db358e399f7c8b1acf2a89c25b3d2006 in / 
# Wed, 27 Jun 2018 08:21:35 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 10:00:36 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 27 Jun 2018 10:01:06 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:01:11 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 27 Jun 2018 10:01:12 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 27 Jun 2018 10:01:12 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 27 Jun 2018 10:06:24 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 10:06:27 GMT
VOLUME [/spiped]
# Wed, 27 Jun 2018 10:06:31 GMT
WORKDIR /spiped
# Wed, 27 Jun 2018 10:06:37 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 27 Jun 2018 10:06:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 10:06:47 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:591f394d671c26b8ef397269eb6b0bd86b78d5619523f5d1632fca943faff2de`  
		Last Modified: Wed, 27 Jun 2018 08:31:55 GMT  
		Size: 22.8 MB (22753035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c445af234076f754d0228e4b8683b69d52627538cd531ba0b0fdbbad22439bf9`  
		Last Modified: Wed, 27 Jun 2018 10:07:16 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eaeb4274d32480257356732d1eecfdfaa42b603eeaa2c4e554f7652e0784274`  
		Last Modified: Wed, 27 Jun 2018 10:07:17 GMT  
		Size: 1.6 MB (1552482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8abcc73deaf09bad1891a636708cb2be8fc7c6d8f8f929ccbe7c1cf71a247aa7`  
		Last Modified: Wed, 27 Jun 2018 10:07:17 GMT  
		Size: 5.8 MB (5847376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa327565291b857449a5f22688532dc21e5141344aec3ae16ea3a816492eaa2a`  
		Last Modified: Wed, 27 Jun 2018 10:07:16 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbe9cb2d3a1fcfde6b3e8a26d55e834158608fc650e3a8a888feda469587e399`  
		Last Modified: Wed, 27 Jun 2018 10:07:16 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1` - linux; s390x

```console
$ docker pull spiped@sha256:b450c01a2844bc02eb54d5d08136c8f627c082ebcbf5af06cc8bc6c5699a9124
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 MB (30737855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d31ecd992a7f6d5afcefb30f76827a13fc7659dc3209e6db05f9e085e0f1e739`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 27 Jun 2018 11:48:52 GMT
ADD file:30e8aac3f01e5ddc9493a0fac1c0978b9435ab33031d2af05afca0f9cb7eb71f in / 
# Wed, 27 Jun 2018 11:48:52 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:10:23 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 27 Jun 2018 12:10:27 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:10:27 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 27 Jun 2018 12:10:27 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 27 Jun 2018 12:10:27 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 27 Jun 2018 12:10:48 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 12:10:48 GMT
VOLUME [/spiped]
# Wed, 27 Jun 2018 12:10:48 GMT
WORKDIR /spiped
# Wed, 27 Jun 2018 12:10:49 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 27 Jun 2018 12:10:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 12:10:49 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:1c23a44ac305da2d34995cf30530ba5adce0229e4a70678fd4d25384883b1281`  
		Last Modified: Wed, 27 Jun 2018 11:53:41 GMT  
		Size: 22.3 MB (22349871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec2cb3d97189e0e27153a66f4bad710a7a81cbe53c925892deb33e5630ebb85d`  
		Last Modified: Wed, 27 Jun 2018 12:11:11 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c56d224127ab770027993fde8261c31a64f0d0428dac5c5742e6a1b3c6fcb658`  
		Last Modified: Wed, 27 Jun 2018 12:11:10 GMT  
		Size: 1.6 MB (1615575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:456555db890fd760d681bf08418ad47ae488b02856d208e74f240d92b85f6c34`  
		Last Modified: Wed, 27 Jun 2018 12:11:12 GMT  
		Size: 6.8 MB (6770222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52fbad3f2fbb02706dd00d2954123baaa77f516e0e8b482ba9082958abed3de9`  
		Last Modified: Wed, 27 Jun 2018 12:11:09 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d888043d4b9e6d623aa889fa10620a4801b575343a6913be721fe28115b8e389`  
		Last Modified: Wed, 27 Jun 2018 12:11:09 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1.6`

```console
$ docker pull spiped@sha256:95e212bbefad94b717dbc14873590745c1a931bc66ed8bcb405e21bfdad4446c
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

### `spiped:1.6` - linux; amd64

```console
$ docker pull spiped@sha256:e3082527cfa5af597bc1e7213492c0b49253bdf8a5e6dfc4fb506bcbdb3cceba
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30257794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cd2a5698a9c59054540a2c392a00bf5e774170465b2ba1c3b66162976a4c3e4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 26 Jun 2018 21:25:25 GMT
ADD file:28fbc9fd012eef72780d1c75fc2b0969d13f0138f735035335ab4b76793da2da in / 
# Tue, 26 Jun 2018 21:25:25 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 01:53:37 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 27 Jun 2018 01:53:44 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 01:53:44 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 27 Jun 2018 01:53:45 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 27 Jun 2018 01:53:45 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 27 Jun 2018 01:54:24 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 01:54:24 GMT
VOLUME [/spiped]
# Wed, 27 Jun 2018 01:54:24 GMT
WORKDIR /spiped
# Wed, 27 Jun 2018 01:54:25 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 27 Jun 2018 01:54:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 01:54:26 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:683abbb4ea60e108164f1d351e7bcf13daf45941137d800086447874df05f48e`  
		Last Modified: Tue, 26 Jun 2018 21:37:45 GMT  
		Size: 22.5 MB (22496975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9db266f3530b4e13f81e1ceea020eb63fbc8b9f161e520bf13cfa80a6c41eca4`  
		Last Modified: Wed, 27 Jun 2018 01:55:21 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99a21adc90d743b6303269e55a6943472a7f8fe448b663c7366cb8266ba05933`  
		Last Modified: Wed, 27 Jun 2018 01:55:22 GMT  
		Size: 1.9 MB (1881476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69a11766fcdebf3b72c6d8532cd98c64724fbb3ca7bb2261a19fb92e6bea1e02`  
		Last Modified: Wed, 27 Jun 2018 01:55:24 GMT  
		Size: 5.9 MB (5877159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484d7b23a09481b2ae356bbd665c6eef86fdffdcf5c50b718e4ec86d1c258ace`  
		Last Modified: Wed, 27 Jun 2018 01:55:21 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e10f70836b73ff52d6844b0bf39add945254536c6b1993cdce05cb352f52ec46`  
		Last Modified: Wed, 27 Jun 2018 01:55:21 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6` - linux; arm variant v5

```console
$ docker pull spiped@sha256:cd2f11f29ad1ce4426f8c877694f6d3f8bb4b67a219fb0878e019b057aeaa777
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 MB (27753848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebf3476a001ef3832d89c562c26da2178bcfe9b172ae97dc24918dda1a651f96`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 27 Jun 2018 08:54:01 GMT
ADD file:f1e0d5c56a23a29918cb3b7691cee8f22620b4c54ee70a0dbb4b8151b2be3355 in / 
# Wed, 27 Jun 2018 08:54:02 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 09:26:08 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 27 Jun 2018 09:26:18 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 09:26:18 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 27 Jun 2018 09:26:18 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 27 Jun 2018 09:26:19 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 27 Jun 2018 09:26:58 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 09:26:58 GMT
VOLUME [/spiped]
# Wed, 27 Jun 2018 09:26:58 GMT
WORKDIR /spiped
# Wed, 27 Jun 2018 09:26:59 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 27 Jun 2018 09:26:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 09:27:00 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:151bc45ca30d5401779cd71c1dd194a7e6f64f1214de3f4f025bc53daf823199`  
		Last Modified: Wed, 27 Jun 2018 09:03:17 GMT  
		Size: 21.2 MB (21177290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f880e610a73e5d393ac189fba2ac1089147a75d5e58fee118a5a72d2f4c898b`  
		Last Modified: Wed, 27 Jun 2018 09:27:19 GMT  
		Size: 1.7 KB (1734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bac916f1cfc1c1cac20c4ba1a3dbb8c1e27b7c04c6b9fcb0557004aaf0f2a93c`  
		Last Modified: Wed, 27 Jun 2018 09:27:19 GMT  
		Size: 1.6 MB (1622942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b57f21301330ff3da53b387f4e2993ef4f4b5288f92e277f188e67095204394c`  
		Last Modified: Wed, 27 Jun 2018 09:27:21 GMT  
		Size: 5.0 MB (4951405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d81d191fe1c511e6d3a4a53d62ffe3882a92d18adb36e95a6db82141a8258203`  
		Last Modified: Wed, 27 Jun 2018 09:27:19 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4769af27e29077f18172e07715fedb9cbf70a5bf80cbe600356d6a85bf74cad8`  
		Last Modified: Wed, 27 Jun 2018 09:27:19 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6` - linux; arm variant v7

```console
$ docker pull spiped@sha256:8feb20537b6191d91c07571bd0df898deeb9ed405e6502339c6e3042a90464d9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.6 MB (25560441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c22fa14307357fbc453fa170f81f34c9fe8ae34b885a4cdebcfd787b49d129eb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 27 Jun 2018 12:03:51 GMT
ADD file:d05cf75761bffd94ce908a55d38fc4966c194aa14492730dfdc1e52c3ddd0892 in / 
# Wed, 27 Jun 2018 12:03:54 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 14:33:22 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 27 Jun 2018 14:33:29 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 14:33:31 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 27 Jun 2018 14:33:31 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 27 Jun 2018 14:33:32 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 27 Jun 2018 14:34:01 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 14:34:02 GMT
VOLUME [/spiped]
# Wed, 27 Jun 2018 14:34:02 GMT
WORKDIR /spiped
# Wed, 27 Jun 2018 14:34:04 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 27 Jun 2018 14:34:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 14:34:04 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:a779870b6875e97ad1448eaf9befb46011e0fd10ef5014f59d63f624b51de26f`  
		Last Modified: Wed, 27 Jun 2018 12:13:30 GMT  
		Size: 19.3 MB (19286273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a35b360ce5f3bd1305a9ccf159944d24f2c4f5051d703d94c7693b543930748`  
		Last Modified: Wed, 27 Jun 2018 14:34:22 GMT  
		Size: 1.7 KB (1738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20a068697c4d62a96f730b3fed15637ce5d5282577ff3a89009f455b9868ec4f`  
		Last Modified: Wed, 27 Jun 2018 14:34:22 GMT  
		Size: 1.6 MB (1564321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a829a5d17ef1d9dc72e0f7b01313a969d6c8820a2560aa95bddfcc317b13c04b`  
		Last Modified: Wed, 27 Jun 2018 14:34:23 GMT  
		Size: 4.7 MB (4707632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8754ee15d9bef810b8824c9ac8f1dc7712736aff06818395185513e0a2244d75`  
		Last Modified: Wed, 27 Jun 2018 14:34:22 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c54fb7b5e373010bf8843351b29a8fd2dbcf424e7959d352332d40dad3197c79`  
		Last Modified: Wed, 27 Jun 2018 14:34:22 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:d988764360180965e0e2e363faf022c9895d982d1539908f0c85170ea34901fb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 MB (27201273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9807e73ea9e9ba59223656404f0e0b647fd129a7a38b45801064887ace3ba880`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:44 GMT
ADD file:b8a1907d99b0b9f75b52f8e25d5c346caf0244b325919c02090ab1e05ba1cf18 in / 
# Wed, 27 Jun 2018 08:47:45 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 10:16:06 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 27 Jun 2018 10:16:17 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:16:18 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 27 Jun 2018 10:16:18 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 27 Jun 2018 10:16:19 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 27 Jun 2018 10:17:56 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 10:17:56 GMT
VOLUME [/spiped]
# Wed, 27 Jun 2018 10:17:57 GMT
WORKDIR /spiped
# Wed, 27 Jun 2018 10:18:05 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 27 Jun 2018 10:18:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 10:18:06 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:153362478bb06475bede3bd6da2ff08a91dd9fc6f245c70bb5a033b65f38ac14`  
		Last Modified: Wed, 27 Jun 2018 08:58:51 GMT  
		Size: 20.3 MB (20348077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78b2f43c016fd4d4cd481aeac0419698ea92dca5f6bb98dd7db5ca2561449ac1`  
		Last Modified: Wed, 27 Jun 2018 10:18:53 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aba2a04d3936ded7cff2128fbc05182ee1afc89ed1d866b9e6c9baffca94d36b`  
		Last Modified: Wed, 27 Jun 2018 10:18:54 GMT  
		Size: 1.6 MB (1614864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:956b30a9f14a239462f5e2a16993a0a7bae1ab613ed52cdc6e11f1e0162367ba`  
		Last Modified: Wed, 27 Jun 2018 10:18:55 GMT  
		Size: 5.2 MB (5236143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c88ecccfd146789a9081a2775acf562d52da827a3b551e9ec08f9b6fcd56422`  
		Last Modified: Wed, 27 Jun 2018 10:18:54 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44da34c9f604867ebb04a564302cadbdf0e29c19835515562221703983465e78`  
		Last Modified: Wed, 27 Jun 2018 10:18:53 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6` - linux; 386

```console
$ docker pull spiped@sha256:5f33e4aee7b81dfc21594ca7c7f342300ebe5b4b4e71d634a417ac17eea43b2c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34318464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2564df961f51aa933ec5841ed0dc9846b8907e2d9b68dbaf9a787a51d1c745f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 27 Jun 2018 10:46:39 GMT
ADD file:e1777a98c0e3aaf9cb1f4116550001b0eed2fe669b2c6449c93b76cccc92e1a2 in / 
# Wed, 27 Jun 2018 10:46:42 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:30:08 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 27 Jun 2018 12:30:14 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:30:15 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 27 Jun 2018 12:30:15 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 27 Jun 2018 12:30:15 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 27 Jun 2018 12:30:55 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 12:30:55 GMT
VOLUME [/spiped]
# Wed, 27 Jun 2018 12:30:56 GMT
WORKDIR /spiped
# Wed, 27 Jun 2018 12:30:56 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 27 Jun 2018 12:30:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 12:30:56 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:7de5eb46c52dbee10629f5dc34d9b2445893031ae37083572734bc4f6577757d`  
		Last Modified: Wed, 27 Jun 2018 11:11:02 GMT  
		Size: 23.1 MB (23140103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b7ab4234767cba8adea7d4842d9013e2fa2c85532842525c7659d0e61e827f4`  
		Last Modified: Wed, 27 Jun 2018 12:31:19 GMT  
		Size: 1.7 KB (1735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef522984a73a43c9cb1ddbe0466f29cb43f58d818c6077437841753663fb7722`  
		Last Modified: Wed, 27 Jun 2018 12:31:20 GMT  
		Size: 1.9 MB (1874129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d31ff24e7cae5f63d28f3dcf17634ea1c2f8ff6e48cf79c90a2ec99338bb7c9`  
		Last Modified: Wed, 27 Jun 2018 12:31:25 GMT  
		Size: 9.3 MB (9302053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f401c60ded68afbb2e3c8deff093cd19aba01290eb0b767b7f54e92d31af96f0`  
		Last Modified: Wed, 27 Jun 2018 12:31:19 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abd18763fdca57022694b894839d383d0de691e8441eee0f265d7bcc3f3123cb`  
		Last Modified: Wed, 27 Jun 2018 12:31:20 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6` - linux; ppc64le

```console
$ docker pull spiped@sha256:cdcef69b1af352bb219479709b040284c87098330a7fc6f9d82870dc4867f4d4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.2 MB (30155123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d19a2138397566ef19a710c882cc7771af91beb7b92d99b6def61f61e036e5b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 27 Jun 2018 08:21:34 GMT
ADD file:7bd6d5557557a294db488600b483d452db358e399f7c8b1acf2a89c25b3d2006 in / 
# Wed, 27 Jun 2018 08:21:35 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 10:00:36 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 27 Jun 2018 10:01:06 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:01:11 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 27 Jun 2018 10:01:12 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 27 Jun 2018 10:01:12 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 27 Jun 2018 10:06:24 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 10:06:27 GMT
VOLUME [/spiped]
# Wed, 27 Jun 2018 10:06:31 GMT
WORKDIR /spiped
# Wed, 27 Jun 2018 10:06:37 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 27 Jun 2018 10:06:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 10:06:47 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:591f394d671c26b8ef397269eb6b0bd86b78d5619523f5d1632fca943faff2de`  
		Last Modified: Wed, 27 Jun 2018 08:31:55 GMT  
		Size: 22.8 MB (22753035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c445af234076f754d0228e4b8683b69d52627538cd531ba0b0fdbbad22439bf9`  
		Last Modified: Wed, 27 Jun 2018 10:07:16 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eaeb4274d32480257356732d1eecfdfaa42b603eeaa2c4e554f7652e0784274`  
		Last Modified: Wed, 27 Jun 2018 10:07:17 GMT  
		Size: 1.6 MB (1552482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8abcc73deaf09bad1891a636708cb2be8fc7c6d8f8f929ccbe7c1cf71a247aa7`  
		Last Modified: Wed, 27 Jun 2018 10:07:17 GMT  
		Size: 5.8 MB (5847376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa327565291b857449a5f22688532dc21e5141344aec3ae16ea3a816492eaa2a`  
		Last Modified: Wed, 27 Jun 2018 10:07:16 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbe9cb2d3a1fcfde6b3e8a26d55e834158608fc650e3a8a888feda469587e399`  
		Last Modified: Wed, 27 Jun 2018 10:07:16 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6` - linux; s390x

```console
$ docker pull spiped@sha256:b450c01a2844bc02eb54d5d08136c8f627c082ebcbf5af06cc8bc6c5699a9124
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 MB (30737855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d31ecd992a7f6d5afcefb30f76827a13fc7659dc3209e6db05f9e085e0f1e739`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 27 Jun 2018 11:48:52 GMT
ADD file:30e8aac3f01e5ddc9493a0fac1c0978b9435ab33031d2af05afca0f9cb7eb71f in / 
# Wed, 27 Jun 2018 11:48:52 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:10:23 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 27 Jun 2018 12:10:27 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:10:27 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 27 Jun 2018 12:10:27 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 27 Jun 2018 12:10:27 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 27 Jun 2018 12:10:48 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 12:10:48 GMT
VOLUME [/spiped]
# Wed, 27 Jun 2018 12:10:48 GMT
WORKDIR /spiped
# Wed, 27 Jun 2018 12:10:49 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 27 Jun 2018 12:10:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 12:10:49 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:1c23a44ac305da2d34995cf30530ba5adce0229e4a70678fd4d25384883b1281`  
		Last Modified: Wed, 27 Jun 2018 11:53:41 GMT  
		Size: 22.3 MB (22349871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec2cb3d97189e0e27153a66f4bad710a7a81cbe53c925892deb33e5630ebb85d`  
		Last Modified: Wed, 27 Jun 2018 12:11:11 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c56d224127ab770027993fde8261c31a64f0d0428dac5c5742e6a1b3c6fcb658`  
		Last Modified: Wed, 27 Jun 2018 12:11:10 GMT  
		Size: 1.6 MB (1615575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:456555db890fd760d681bf08418ad47ae488b02856d208e74f240d92b85f6c34`  
		Last Modified: Wed, 27 Jun 2018 12:11:12 GMT  
		Size: 6.8 MB (6770222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52fbad3f2fbb02706dd00d2954123baaa77f516e0e8b482ba9082958abed3de9`  
		Last Modified: Wed, 27 Jun 2018 12:11:09 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d888043d4b9e6d623aa889fa10620a4801b575343a6913be721fe28115b8e389`  
		Last Modified: Wed, 27 Jun 2018 12:11:09 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1.6.0`

```console
$ docker pull spiped@sha256:95e212bbefad94b717dbc14873590745c1a931bc66ed8bcb405e21bfdad4446c
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

### `spiped:1.6.0` - linux; amd64

```console
$ docker pull spiped@sha256:e3082527cfa5af597bc1e7213492c0b49253bdf8a5e6dfc4fb506bcbdb3cceba
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30257794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cd2a5698a9c59054540a2c392a00bf5e774170465b2ba1c3b66162976a4c3e4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 26 Jun 2018 21:25:25 GMT
ADD file:28fbc9fd012eef72780d1c75fc2b0969d13f0138f735035335ab4b76793da2da in / 
# Tue, 26 Jun 2018 21:25:25 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 01:53:37 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 27 Jun 2018 01:53:44 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 01:53:44 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 27 Jun 2018 01:53:45 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 27 Jun 2018 01:53:45 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 27 Jun 2018 01:54:24 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 01:54:24 GMT
VOLUME [/spiped]
# Wed, 27 Jun 2018 01:54:24 GMT
WORKDIR /spiped
# Wed, 27 Jun 2018 01:54:25 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 27 Jun 2018 01:54:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 01:54:26 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:683abbb4ea60e108164f1d351e7bcf13daf45941137d800086447874df05f48e`  
		Last Modified: Tue, 26 Jun 2018 21:37:45 GMT  
		Size: 22.5 MB (22496975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9db266f3530b4e13f81e1ceea020eb63fbc8b9f161e520bf13cfa80a6c41eca4`  
		Last Modified: Wed, 27 Jun 2018 01:55:21 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99a21adc90d743b6303269e55a6943472a7f8fe448b663c7366cb8266ba05933`  
		Last Modified: Wed, 27 Jun 2018 01:55:22 GMT  
		Size: 1.9 MB (1881476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69a11766fcdebf3b72c6d8532cd98c64724fbb3ca7bb2261a19fb92e6bea1e02`  
		Last Modified: Wed, 27 Jun 2018 01:55:24 GMT  
		Size: 5.9 MB (5877159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484d7b23a09481b2ae356bbd665c6eef86fdffdcf5c50b718e4ec86d1c258ace`  
		Last Modified: Wed, 27 Jun 2018 01:55:21 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e10f70836b73ff52d6844b0bf39add945254536c6b1993cdce05cb352f52ec46`  
		Last Modified: Wed, 27 Jun 2018 01:55:21 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0` - linux; arm variant v5

```console
$ docker pull spiped@sha256:cd2f11f29ad1ce4426f8c877694f6d3f8bb4b67a219fb0878e019b057aeaa777
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 MB (27753848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebf3476a001ef3832d89c562c26da2178bcfe9b172ae97dc24918dda1a651f96`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 27 Jun 2018 08:54:01 GMT
ADD file:f1e0d5c56a23a29918cb3b7691cee8f22620b4c54ee70a0dbb4b8151b2be3355 in / 
# Wed, 27 Jun 2018 08:54:02 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 09:26:08 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 27 Jun 2018 09:26:18 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 09:26:18 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 27 Jun 2018 09:26:18 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 27 Jun 2018 09:26:19 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 27 Jun 2018 09:26:58 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 09:26:58 GMT
VOLUME [/spiped]
# Wed, 27 Jun 2018 09:26:58 GMT
WORKDIR /spiped
# Wed, 27 Jun 2018 09:26:59 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 27 Jun 2018 09:26:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 09:27:00 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:151bc45ca30d5401779cd71c1dd194a7e6f64f1214de3f4f025bc53daf823199`  
		Last Modified: Wed, 27 Jun 2018 09:03:17 GMT  
		Size: 21.2 MB (21177290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f880e610a73e5d393ac189fba2ac1089147a75d5e58fee118a5a72d2f4c898b`  
		Last Modified: Wed, 27 Jun 2018 09:27:19 GMT  
		Size: 1.7 KB (1734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bac916f1cfc1c1cac20c4ba1a3dbb8c1e27b7c04c6b9fcb0557004aaf0f2a93c`  
		Last Modified: Wed, 27 Jun 2018 09:27:19 GMT  
		Size: 1.6 MB (1622942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b57f21301330ff3da53b387f4e2993ef4f4b5288f92e277f188e67095204394c`  
		Last Modified: Wed, 27 Jun 2018 09:27:21 GMT  
		Size: 5.0 MB (4951405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d81d191fe1c511e6d3a4a53d62ffe3882a92d18adb36e95a6db82141a8258203`  
		Last Modified: Wed, 27 Jun 2018 09:27:19 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4769af27e29077f18172e07715fedb9cbf70a5bf80cbe600356d6a85bf74cad8`  
		Last Modified: Wed, 27 Jun 2018 09:27:19 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0` - linux; arm variant v7

```console
$ docker pull spiped@sha256:8feb20537b6191d91c07571bd0df898deeb9ed405e6502339c6e3042a90464d9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.6 MB (25560441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c22fa14307357fbc453fa170f81f34c9fe8ae34b885a4cdebcfd787b49d129eb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 27 Jun 2018 12:03:51 GMT
ADD file:d05cf75761bffd94ce908a55d38fc4966c194aa14492730dfdc1e52c3ddd0892 in / 
# Wed, 27 Jun 2018 12:03:54 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 14:33:22 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 27 Jun 2018 14:33:29 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 14:33:31 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 27 Jun 2018 14:33:31 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 27 Jun 2018 14:33:32 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 27 Jun 2018 14:34:01 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 14:34:02 GMT
VOLUME [/spiped]
# Wed, 27 Jun 2018 14:34:02 GMT
WORKDIR /spiped
# Wed, 27 Jun 2018 14:34:04 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 27 Jun 2018 14:34:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 14:34:04 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:a779870b6875e97ad1448eaf9befb46011e0fd10ef5014f59d63f624b51de26f`  
		Last Modified: Wed, 27 Jun 2018 12:13:30 GMT  
		Size: 19.3 MB (19286273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a35b360ce5f3bd1305a9ccf159944d24f2c4f5051d703d94c7693b543930748`  
		Last Modified: Wed, 27 Jun 2018 14:34:22 GMT  
		Size: 1.7 KB (1738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20a068697c4d62a96f730b3fed15637ce5d5282577ff3a89009f455b9868ec4f`  
		Last Modified: Wed, 27 Jun 2018 14:34:22 GMT  
		Size: 1.6 MB (1564321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a829a5d17ef1d9dc72e0f7b01313a969d6c8820a2560aa95bddfcc317b13c04b`  
		Last Modified: Wed, 27 Jun 2018 14:34:23 GMT  
		Size: 4.7 MB (4707632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8754ee15d9bef810b8824c9ac8f1dc7712736aff06818395185513e0a2244d75`  
		Last Modified: Wed, 27 Jun 2018 14:34:22 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c54fb7b5e373010bf8843351b29a8fd2dbcf424e7959d352332d40dad3197c79`  
		Last Modified: Wed, 27 Jun 2018 14:34:22 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:d988764360180965e0e2e363faf022c9895d982d1539908f0c85170ea34901fb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 MB (27201273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9807e73ea9e9ba59223656404f0e0b647fd129a7a38b45801064887ace3ba880`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:44 GMT
ADD file:b8a1907d99b0b9f75b52f8e25d5c346caf0244b325919c02090ab1e05ba1cf18 in / 
# Wed, 27 Jun 2018 08:47:45 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 10:16:06 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 27 Jun 2018 10:16:17 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:16:18 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 27 Jun 2018 10:16:18 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 27 Jun 2018 10:16:19 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 27 Jun 2018 10:17:56 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 10:17:56 GMT
VOLUME [/spiped]
# Wed, 27 Jun 2018 10:17:57 GMT
WORKDIR /spiped
# Wed, 27 Jun 2018 10:18:05 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 27 Jun 2018 10:18:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 10:18:06 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:153362478bb06475bede3bd6da2ff08a91dd9fc6f245c70bb5a033b65f38ac14`  
		Last Modified: Wed, 27 Jun 2018 08:58:51 GMT  
		Size: 20.3 MB (20348077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78b2f43c016fd4d4cd481aeac0419698ea92dca5f6bb98dd7db5ca2561449ac1`  
		Last Modified: Wed, 27 Jun 2018 10:18:53 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aba2a04d3936ded7cff2128fbc05182ee1afc89ed1d866b9e6c9baffca94d36b`  
		Last Modified: Wed, 27 Jun 2018 10:18:54 GMT  
		Size: 1.6 MB (1614864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:956b30a9f14a239462f5e2a16993a0a7bae1ab613ed52cdc6e11f1e0162367ba`  
		Last Modified: Wed, 27 Jun 2018 10:18:55 GMT  
		Size: 5.2 MB (5236143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c88ecccfd146789a9081a2775acf562d52da827a3b551e9ec08f9b6fcd56422`  
		Last Modified: Wed, 27 Jun 2018 10:18:54 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44da34c9f604867ebb04a564302cadbdf0e29c19835515562221703983465e78`  
		Last Modified: Wed, 27 Jun 2018 10:18:53 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0` - linux; 386

```console
$ docker pull spiped@sha256:5f33e4aee7b81dfc21594ca7c7f342300ebe5b4b4e71d634a417ac17eea43b2c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34318464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2564df961f51aa933ec5841ed0dc9846b8907e2d9b68dbaf9a787a51d1c745f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 27 Jun 2018 10:46:39 GMT
ADD file:e1777a98c0e3aaf9cb1f4116550001b0eed2fe669b2c6449c93b76cccc92e1a2 in / 
# Wed, 27 Jun 2018 10:46:42 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:30:08 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 27 Jun 2018 12:30:14 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:30:15 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 27 Jun 2018 12:30:15 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 27 Jun 2018 12:30:15 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 27 Jun 2018 12:30:55 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 12:30:55 GMT
VOLUME [/spiped]
# Wed, 27 Jun 2018 12:30:56 GMT
WORKDIR /spiped
# Wed, 27 Jun 2018 12:30:56 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 27 Jun 2018 12:30:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 12:30:56 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:7de5eb46c52dbee10629f5dc34d9b2445893031ae37083572734bc4f6577757d`  
		Last Modified: Wed, 27 Jun 2018 11:11:02 GMT  
		Size: 23.1 MB (23140103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b7ab4234767cba8adea7d4842d9013e2fa2c85532842525c7659d0e61e827f4`  
		Last Modified: Wed, 27 Jun 2018 12:31:19 GMT  
		Size: 1.7 KB (1735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef522984a73a43c9cb1ddbe0466f29cb43f58d818c6077437841753663fb7722`  
		Last Modified: Wed, 27 Jun 2018 12:31:20 GMT  
		Size: 1.9 MB (1874129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d31ff24e7cae5f63d28f3dcf17634ea1c2f8ff6e48cf79c90a2ec99338bb7c9`  
		Last Modified: Wed, 27 Jun 2018 12:31:25 GMT  
		Size: 9.3 MB (9302053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f401c60ded68afbb2e3c8deff093cd19aba01290eb0b767b7f54e92d31af96f0`  
		Last Modified: Wed, 27 Jun 2018 12:31:19 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abd18763fdca57022694b894839d383d0de691e8441eee0f265d7bcc3f3123cb`  
		Last Modified: Wed, 27 Jun 2018 12:31:20 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0` - linux; ppc64le

```console
$ docker pull spiped@sha256:cdcef69b1af352bb219479709b040284c87098330a7fc6f9d82870dc4867f4d4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.2 MB (30155123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d19a2138397566ef19a710c882cc7771af91beb7b92d99b6def61f61e036e5b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 27 Jun 2018 08:21:34 GMT
ADD file:7bd6d5557557a294db488600b483d452db358e399f7c8b1acf2a89c25b3d2006 in / 
# Wed, 27 Jun 2018 08:21:35 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 10:00:36 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 27 Jun 2018 10:01:06 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:01:11 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 27 Jun 2018 10:01:12 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 27 Jun 2018 10:01:12 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 27 Jun 2018 10:06:24 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 10:06:27 GMT
VOLUME [/spiped]
# Wed, 27 Jun 2018 10:06:31 GMT
WORKDIR /spiped
# Wed, 27 Jun 2018 10:06:37 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 27 Jun 2018 10:06:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 10:06:47 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:591f394d671c26b8ef397269eb6b0bd86b78d5619523f5d1632fca943faff2de`  
		Last Modified: Wed, 27 Jun 2018 08:31:55 GMT  
		Size: 22.8 MB (22753035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c445af234076f754d0228e4b8683b69d52627538cd531ba0b0fdbbad22439bf9`  
		Last Modified: Wed, 27 Jun 2018 10:07:16 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eaeb4274d32480257356732d1eecfdfaa42b603eeaa2c4e554f7652e0784274`  
		Last Modified: Wed, 27 Jun 2018 10:07:17 GMT  
		Size: 1.6 MB (1552482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8abcc73deaf09bad1891a636708cb2be8fc7c6d8f8f929ccbe7c1cf71a247aa7`  
		Last Modified: Wed, 27 Jun 2018 10:07:17 GMT  
		Size: 5.8 MB (5847376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa327565291b857449a5f22688532dc21e5141344aec3ae16ea3a816492eaa2a`  
		Last Modified: Wed, 27 Jun 2018 10:07:16 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbe9cb2d3a1fcfde6b3e8a26d55e834158608fc650e3a8a888feda469587e399`  
		Last Modified: Wed, 27 Jun 2018 10:07:16 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0` - linux; s390x

```console
$ docker pull spiped@sha256:b450c01a2844bc02eb54d5d08136c8f627c082ebcbf5af06cc8bc6c5699a9124
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 MB (30737855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d31ecd992a7f6d5afcefb30f76827a13fc7659dc3209e6db05f9e085e0f1e739`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 27 Jun 2018 11:48:52 GMT
ADD file:30e8aac3f01e5ddc9493a0fac1c0978b9435ab33031d2af05afca0f9cb7eb71f in / 
# Wed, 27 Jun 2018 11:48:52 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:10:23 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 27 Jun 2018 12:10:27 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:10:27 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 27 Jun 2018 12:10:27 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 27 Jun 2018 12:10:27 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 27 Jun 2018 12:10:48 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 12:10:48 GMT
VOLUME [/spiped]
# Wed, 27 Jun 2018 12:10:48 GMT
WORKDIR /spiped
# Wed, 27 Jun 2018 12:10:49 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 27 Jun 2018 12:10:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 12:10:49 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:1c23a44ac305da2d34995cf30530ba5adce0229e4a70678fd4d25384883b1281`  
		Last Modified: Wed, 27 Jun 2018 11:53:41 GMT  
		Size: 22.3 MB (22349871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec2cb3d97189e0e27153a66f4bad710a7a81cbe53c925892deb33e5630ebb85d`  
		Last Modified: Wed, 27 Jun 2018 12:11:11 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c56d224127ab770027993fde8261c31a64f0d0428dac5c5742e6a1b3c6fcb658`  
		Last Modified: Wed, 27 Jun 2018 12:11:10 GMT  
		Size: 1.6 MB (1615575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:456555db890fd760d681bf08418ad47ae488b02856d208e74f240d92b85f6c34`  
		Last Modified: Wed, 27 Jun 2018 12:11:12 GMT  
		Size: 6.8 MB (6770222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52fbad3f2fbb02706dd00d2954123baaa77f516e0e8b482ba9082958abed3de9`  
		Last Modified: Wed, 27 Jun 2018 12:11:09 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d888043d4b9e6d623aa889fa10620a4801b575343a6913be721fe28115b8e389`  
		Last Modified: Wed, 27 Jun 2018 12:11:09 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1.6.0-alpine`

```console
$ docker pull spiped@sha256:1c7b8430bfa12786d70b6619a52c27139bb7c27b59f9f3451e5eccaaeeb0b583
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `spiped:1.6.0-alpine` - linux; amd64

```console
$ docker pull spiped@sha256:58653738b045679a8daf3fbd4cf3558a3e32e0aa0d6346215ac4ed2d7e43b497
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4863459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5a1cb874da6f5ad39c265e642982053a52fd955397fe2ed75c7813480f6289c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Sat, 07 Jul 2018 03:42:49 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Sat, 07 Jul 2018 03:42:50 GMT
RUN apk add --no-cache libssl1.0
# Sat, 07 Jul 2018 03:42:50 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 07 Jul 2018 03:42:51 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 07 Jul 2018 03:42:51 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 07 Jul 2018 03:43:09 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Sat, 07 Jul 2018 03:43:09 GMT
VOLUME [/spiped]
# Sat, 07 Jul 2018 03:43:10 GMT
WORKDIR /spiped
# Sat, 07 Jul 2018 03:43:10 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Sat, 07 Jul 2018 03:43:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 07 Jul 2018 03:43:11 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:238308f783528935eca9ccb7cf50ae56a4d944e583b97bc00d1ab1440c4f53aa`  
		Last Modified: Sat, 07 Jul 2018 03:43:30 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fb0657f0bdfcf5044dc8bfec89a096b0ac39890edfe90b0adfbfd80e70c0499`  
		Last Modified: Sat, 07 Jul 2018 03:43:30 GMT  
		Size: 1.3 MB (1301303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4804da4f6a19c174657eff6fed7fd178acb552ad3bcb89d9444990b346989be7`  
		Last Modified: Sat, 07 Jul 2018 03:43:30 GMT  
		Size: 1.4 MB (1353931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81b8c54b0d601a174cbf1544e8880ef0dcfc1f3a849e08a2b83139d489b663ed`  
		Last Modified: Sat, 07 Jul 2018 03:43:29 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d44d299a7626245569fa232bd8637fd1d6dc7c6277e254324db773bad8e7eba7`  
		Last Modified: Sat, 07 Jul 2018 03:43:29 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0-alpine` - linux; arm variant v6

```console
$ docker pull spiped@sha256:a97ca052bd4d4d5ace0c6ddc823b194c02318797af3b58530378b546025f04ab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4365863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e141a81d2d7ef9cabdc6fa8bfb7928fafbb49b19824a4b8a90c3c81669d59185`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 06 Jul 2018 07:53:29 GMT
ADD file:122e3422d9afa971806601812374fdd9d00c8edc8e9a6df7256e2caa85fab6d1 in / 
# Fri, 06 Jul 2018 07:53:30 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 07:53:30 GMT
CMD ["/bin/sh"]
# Sat, 14 Jul 2018 12:01:17 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Sat, 14 Jul 2018 12:01:23 GMT
RUN apk add --no-cache libssl1.0
# Sat, 14 Jul 2018 12:01:24 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 14 Jul 2018 12:01:24 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 14 Jul 2018 12:01:25 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 14 Jul 2018 12:03:33 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Sat, 14 Jul 2018 12:03:34 GMT
VOLUME [/spiped]
# Sat, 14 Jul 2018 12:03:35 GMT
WORKDIR /spiped
# Sat, 14 Jul 2018 12:03:36 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Sat, 14 Jul 2018 12:03:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 14 Jul 2018 12:03:38 GMT
CMD ["spiped"]
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
	-	`sha256:3d83edd4c68cca51d3c254f9fdf3fb55cf21a95431a5806fe5d59336c4e9e135`  
		Last Modified: Sat, 14 Jul 2018 12:04:01 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c2349b96c595a764e625e89ca3e146228fe1019d35f37d77b830461157e269e`  
		Last Modified: Sat, 14 Jul 2018 12:04:03 GMT  
		Size: 911.5 KB (911532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1254c85dca454cf68f0060cfbd9aeae3a68035266dfb3b373dd18f4fe01a740d`  
		Last Modified: Sat, 14 Jul 2018 12:04:02 GMT  
		Size: 1.3 MB (1306411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3646961dc71115b0d647845430e27b29c6ee4c1991a4252967e4f5b17fd87770`  
		Last Modified: Sat, 14 Jul 2018 12:04:02 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:815ff7030fcef9941864ea919914b4a966114a7aed9fbeaf034f5dd41248cf09`  
		Last Modified: Sat, 14 Jul 2018 12:04:02 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0-alpine` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:ba04fcad828001876151273e768706f9b134c14fd6eae5aeb5df1b893774add6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4338695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f044bfc751a658779b28631bd81f1bef44d8e0f731ab299c41ceaf37e113580`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 06 Jul 2018 08:41:03 GMT
ADD file:199a5a48bddabaf1f649f58f3b17c323a1aa1a50e939dfdea3542e4041e91b7b in / 
# Fri, 06 Jul 2018 08:41:03 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:41:04 GMT
CMD ["/bin/sh"]
# Sat, 07 Jul 2018 09:38:14 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Sat, 07 Jul 2018 09:38:16 GMT
RUN apk add --no-cache libssl1.0
# Sat, 07 Jul 2018 09:38:17 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 07 Jul 2018 09:38:18 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 07 Jul 2018 09:38:19 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 07 Jul 2018 09:38:43 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Sat, 07 Jul 2018 09:38:43 GMT
VOLUME [/spiped]
# Sat, 07 Jul 2018 09:38:44 GMT
WORKDIR /spiped
# Sat, 07 Jul 2018 09:38:45 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Sat, 07 Jul 2018 09:38:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 07 Jul 2018 09:38:47 GMT
CMD ["spiped"]
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
	-	`sha256:9192df97a42e9ed4d42332071bd5e9eafce9e438f3c3a7509a6d1c41211ea902`  
		Last Modified: Sat, 07 Jul 2018 09:39:09 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc0626024507b4dd65535391cd2519db24bc4d171f98f7eba5c908762cea690d`  
		Last Modified: Sat, 07 Jul 2018 09:39:10 GMT  
		Size: 926.9 KB (926924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dfb36cda8fb398aa534be75a3c8cf8831ac296c808452c6ded06e43ddb8b2cd`  
		Last Modified: Sat, 07 Jul 2018 09:39:09 GMT  
		Size: 1.3 MB (1310398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d6d3a605fdd263436a1b55e3d4f1459dd0194b62a0813cce081ed9efcfd0e1b`  
		Last Modified: Sat, 07 Jul 2018 09:39:09 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d6bd7834c456e9f0b3277dbac99dd5f153773d8b4e09b4a44b5127a6781341f`  
		Last Modified: Sat, 07 Jul 2018 09:39:09 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0-alpine` - linux; 386

```console
$ docker pull spiped@sha256:ffc0a09248953c9b1c251679b70c2f0feca2aadb9ba6331daa6cd460289a7307
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4738874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b41ce4be0e2b2d204f4b3fec4a14390474af6f01ea29d8b4bedfd994b154d59`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 06 Jul 2018 15:02:06 GMT
ADD file:ebd40cda2f6087daf4d14e6dc1ee0b4a0fb5dc96c70129be8e07de0e5c628312 in / 
# Fri, 06 Jul 2018 15:02:07 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 15:02:07 GMT
CMD ["/bin/sh"]
# Sat, 07 Jul 2018 11:00:54 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Sat, 07 Jul 2018 11:00:57 GMT
RUN apk add --no-cache libssl1.0
# Sat, 07 Jul 2018 11:00:57 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 07 Jul 2018 11:00:57 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 07 Jul 2018 11:00:57 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 07 Jul 2018 11:01:14 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Sat, 07 Jul 2018 11:01:15 GMT
VOLUME [/spiped]
# Sat, 07 Jul 2018 11:01:15 GMT
WORKDIR /spiped
# Sat, 07 Jul 2018 11:01:15 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Sat, 07 Jul 2018 11:01:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 07 Jul 2018 11:01:16 GMT
CMD ["spiped"]
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
	-	`sha256:9a058f5a1285e67e9755ef2057609e32bf07c04d8eec0a3f85dbd30670938be2`  
		Last Modified: Sat, 07 Jul 2018 11:01:30 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:812eac6a861ee484c7258b7409dc00feb6e1cd0e7ef7d4e669ac99435473dc58`  
		Last Modified: Sat, 07 Jul 2018 11:01:30 GMT  
		Size: 1.1 MB (1123893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0bab8ba5a8e875cdb4675f57c4bad389edb17f000b05c62fcba75eee48e0bf0`  
		Last Modified: Sat, 07 Jul 2018 11:01:30 GMT  
		Size: 1.3 MB (1342201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288d75a5f4b1229bbe9f78889cb7d3da73f15330d0582c11be65ab8d422b453a`  
		Last Modified: Sat, 07 Jul 2018 11:01:30 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea103e55de7be25e2dd08b1acde00acd79f48f44cd9fd71f7278544b42a6b0cd`  
		Last Modified: Sat, 07 Jul 2018 11:01:30 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0-alpine` - linux; ppc64le

```console
$ docker pull spiped@sha256:7fd76f31713643fc8968b92ac6dfb9da432648c2dde5ca22498a80051fb25e59
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4517734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd0d7d214cfac1ae7ac46f866f052edb7d50431f62cc9e7ed3daaa9b53661eec`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 06 Jul 2018 08:18:09 GMT
ADD file:4ff20d593b16518d45b1b1d6efdab141199316dba7a53ce7459249f5de690dfd in / 
# Fri, 06 Jul 2018 08:18:10 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:18:11 GMT
CMD ["/bin/sh"]
# Sat, 07 Jul 2018 08:53:30 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Sat, 07 Jul 2018 08:53:34 GMT
RUN apk add --no-cache libssl1.0
# Sat, 07 Jul 2018 08:53:35 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 07 Jul 2018 08:53:36 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 07 Jul 2018 08:53:37 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 07 Jul 2018 08:53:58 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Sat, 07 Jul 2018 08:54:01 GMT
VOLUME [/spiped]
# Sat, 07 Jul 2018 08:54:03 GMT
WORKDIR /spiped
# Sat, 07 Jul 2018 08:54:07 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Sat, 07 Jul 2018 08:54:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 07 Jul 2018 08:54:10 GMT
CMD ["spiped"]
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
	-	`sha256:12dfbdbfa83decaaebba31bb3d6aba694ad7db2a9fdb88ddf0c4beabcc19edd1`  
		Last Modified: Sat, 07 Jul 2018 08:54:32 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ea4c6854013a40004d988f636b60fbe119801143a54b89b2f13e3fb1934ceae`  
		Last Modified: Sat, 07 Jul 2018 08:54:33 GMT  
		Size: 996.9 KB (996894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48f8a5b96139a61a87d6b207aee87325a3fe58d57188d075801de843fcb6b755`  
		Last Modified: Sat, 07 Jul 2018 08:54:33 GMT  
		Size: 1.3 MB (1324053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:406eac5385a9d91d424e301b947a87650f16ee1e83079c2cf534312385090c4c`  
		Last Modified: Sat, 07 Jul 2018 08:54:32 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68725a2bc1cea1b526f696f61d5334c1dfae5cf3207b528f4f462d02c49b8faf`  
		Last Modified: Sat, 07 Jul 2018 08:54:33 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0-alpine` - linux; s390x

```console
$ docker pull spiped@sha256:d96e6aa529decc50d4dac5e10de2649ef20d2785f68e1d474fc89d536b033b01
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4657142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80c7f1766812109fbf54809b551e56d88066dc4d69a5d58657ad7bb06915f78f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 06 Jul 2018 11:41:42 GMT
ADD file:376dd7fc34ad39570d2e20f3704305e788ae613c589445b3e8fb880147c3eb59 in / 
# Fri, 06 Jul 2018 11:41:43 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 11:41:43 GMT
CMD ["/bin/sh"]
# Sat, 07 Jul 2018 12:06:27 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Sat, 07 Jul 2018 12:06:28 GMT
RUN apk add --no-cache libssl1.0
# Sat, 07 Jul 2018 12:06:28 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 07 Jul 2018 12:06:29 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 07 Jul 2018 12:06:29 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 07 Jul 2018 12:06:38 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Sat, 07 Jul 2018 12:06:38 GMT
VOLUME [/spiped]
# Sat, 07 Jul 2018 12:06:38 GMT
WORKDIR /spiped
# Sat, 07 Jul 2018 12:06:39 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Sat, 07 Jul 2018 12:06:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 07 Jul 2018 12:06:39 GMT
CMD ["spiped"]
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
	-	`sha256:d1e070e770633a2b5db7e68d037725a846fe6fe9be06f842c3e4bd4fa5f916b0`  
		Last Modified: Sat, 07 Jul 2018 12:06:52 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc1ae2f3d0f10e94ed98029005f70f55e447eb7e4a7256f1f35b6ad2f4665ab8`  
		Last Modified: Sat, 07 Jul 2018 12:06:53 GMT  
		Size: 1.1 MB (1062585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da8d818bf2817431d08018b3cc25298c25d38de8878badca16de0ec4e51b710a`  
		Last Modified: Sat, 07 Jul 2018 12:06:54 GMT  
		Size: 1.3 MB (1285224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e1083cecbc0ed03e82596754021312dd318a69b4c9a86d79e14e193f90eef8e`  
		Last Modified: Sat, 07 Jul 2018 12:06:52 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc8f2f752a945d183a9f9cf79680bf9d86143bd1e34db5904f8e78acf6ec9bbb`  
		Last Modified: Sat, 07 Jul 2018 12:06:52 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1.6-alpine`

```console
$ docker pull spiped@sha256:1c7b8430bfa12786d70b6619a52c27139bb7c27b59f9f3451e5eccaaeeb0b583
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `spiped:1.6-alpine` - linux; amd64

```console
$ docker pull spiped@sha256:58653738b045679a8daf3fbd4cf3558a3e32e0aa0d6346215ac4ed2d7e43b497
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4863459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5a1cb874da6f5ad39c265e642982053a52fd955397fe2ed75c7813480f6289c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Sat, 07 Jul 2018 03:42:49 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Sat, 07 Jul 2018 03:42:50 GMT
RUN apk add --no-cache libssl1.0
# Sat, 07 Jul 2018 03:42:50 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 07 Jul 2018 03:42:51 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 07 Jul 2018 03:42:51 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 07 Jul 2018 03:43:09 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Sat, 07 Jul 2018 03:43:09 GMT
VOLUME [/spiped]
# Sat, 07 Jul 2018 03:43:10 GMT
WORKDIR /spiped
# Sat, 07 Jul 2018 03:43:10 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Sat, 07 Jul 2018 03:43:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 07 Jul 2018 03:43:11 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:238308f783528935eca9ccb7cf50ae56a4d944e583b97bc00d1ab1440c4f53aa`  
		Last Modified: Sat, 07 Jul 2018 03:43:30 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fb0657f0bdfcf5044dc8bfec89a096b0ac39890edfe90b0adfbfd80e70c0499`  
		Last Modified: Sat, 07 Jul 2018 03:43:30 GMT  
		Size: 1.3 MB (1301303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4804da4f6a19c174657eff6fed7fd178acb552ad3bcb89d9444990b346989be7`  
		Last Modified: Sat, 07 Jul 2018 03:43:30 GMT  
		Size: 1.4 MB (1353931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81b8c54b0d601a174cbf1544e8880ef0dcfc1f3a849e08a2b83139d489b663ed`  
		Last Modified: Sat, 07 Jul 2018 03:43:29 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d44d299a7626245569fa232bd8637fd1d6dc7c6277e254324db773bad8e7eba7`  
		Last Modified: Sat, 07 Jul 2018 03:43:29 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6-alpine` - linux; arm variant v6

```console
$ docker pull spiped@sha256:a97ca052bd4d4d5ace0c6ddc823b194c02318797af3b58530378b546025f04ab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4365863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e141a81d2d7ef9cabdc6fa8bfb7928fafbb49b19824a4b8a90c3c81669d59185`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 06 Jul 2018 07:53:29 GMT
ADD file:122e3422d9afa971806601812374fdd9d00c8edc8e9a6df7256e2caa85fab6d1 in / 
# Fri, 06 Jul 2018 07:53:30 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 07:53:30 GMT
CMD ["/bin/sh"]
# Sat, 14 Jul 2018 12:01:17 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Sat, 14 Jul 2018 12:01:23 GMT
RUN apk add --no-cache libssl1.0
# Sat, 14 Jul 2018 12:01:24 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 14 Jul 2018 12:01:24 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 14 Jul 2018 12:01:25 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 14 Jul 2018 12:03:33 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Sat, 14 Jul 2018 12:03:34 GMT
VOLUME [/spiped]
# Sat, 14 Jul 2018 12:03:35 GMT
WORKDIR /spiped
# Sat, 14 Jul 2018 12:03:36 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Sat, 14 Jul 2018 12:03:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 14 Jul 2018 12:03:38 GMT
CMD ["spiped"]
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
	-	`sha256:3d83edd4c68cca51d3c254f9fdf3fb55cf21a95431a5806fe5d59336c4e9e135`  
		Last Modified: Sat, 14 Jul 2018 12:04:01 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c2349b96c595a764e625e89ca3e146228fe1019d35f37d77b830461157e269e`  
		Last Modified: Sat, 14 Jul 2018 12:04:03 GMT  
		Size: 911.5 KB (911532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1254c85dca454cf68f0060cfbd9aeae3a68035266dfb3b373dd18f4fe01a740d`  
		Last Modified: Sat, 14 Jul 2018 12:04:02 GMT  
		Size: 1.3 MB (1306411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3646961dc71115b0d647845430e27b29c6ee4c1991a4252967e4f5b17fd87770`  
		Last Modified: Sat, 14 Jul 2018 12:04:02 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:815ff7030fcef9941864ea919914b4a966114a7aed9fbeaf034f5dd41248cf09`  
		Last Modified: Sat, 14 Jul 2018 12:04:02 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6-alpine` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:ba04fcad828001876151273e768706f9b134c14fd6eae5aeb5df1b893774add6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4338695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f044bfc751a658779b28631bd81f1bef44d8e0f731ab299c41ceaf37e113580`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 06 Jul 2018 08:41:03 GMT
ADD file:199a5a48bddabaf1f649f58f3b17c323a1aa1a50e939dfdea3542e4041e91b7b in / 
# Fri, 06 Jul 2018 08:41:03 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:41:04 GMT
CMD ["/bin/sh"]
# Sat, 07 Jul 2018 09:38:14 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Sat, 07 Jul 2018 09:38:16 GMT
RUN apk add --no-cache libssl1.0
# Sat, 07 Jul 2018 09:38:17 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 07 Jul 2018 09:38:18 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 07 Jul 2018 09:38:19 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 07 Jul 2018 09:38:43 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Sat, 07 Jul 2018 09:38:43 GMT
VOLUME [/spiped]
# Sat, 07 Jul 2018 09:38:44 GMT
WORKDIR /spiped
# Sat, 07 Jul 2018 09:38:45 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Sat, 07 Jul 2018 09:38:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 07 Jul 2018 09:38:47 GMT
CMD ["spiped"]
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
	-	`sha256:9192df97a42e9ed4d42332071bd5e9eafce9e438f3c3a7509a6d1c41211ea902`  
		Last Modified: Sat, 07 Jul 2018 09:39:09 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc0626024507b4dd65535391cd2519db24bc4d171f98f7eba5c908762cea690d`  
		Last Modified: Sat, 07 Jul 2018 09:39:10 GMT  
		Size: 926.9 KB (926924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dfb36cda8fb398aa534be75a3c8cf8831ac296c808452c6ded06e43ddb8b2cd`  
		Last Modified: Sat, 07 Jul 2018 09:39:09 GMT  
		Size: 1.3 MB (1310398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d6d3a605fdd263436a1b55e3d4f1459dd0194b62a0813cce081ed9efcfd0e1b`  
		Last Modified: Sat, 07 Jul 2018 09:39:09 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d6bd7834c456e9f0b3277dbac99dd5f153773d8b4e09b4a44b5127a6781341f`  
		Last Modified: Sat, 07 Jul 2018 09:39:09 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6-alpine` - linux; 386

```console
$ docker pull spiped@sha256:ffc0a09248953c9b1c251679b70c2f0feca2aadb9ba6331daa6cd460289a7307
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4738874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b41ce4be0e2b2d204f4b3fec4a14390474af6f01ea29d8b4bedfd994b154d59`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 06 Jul 2018 15:02:06 GMT
ADD file:ebd40cda2f6087daf4d14e6dc1ee0b4a0fb5dc96c70129be8e07de0e5c628312 in / 
# Fri, 06 Jul 2018 15:02:07 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 15:02:07 GMT
CMD ["/bin/sh"]
# Sat, 07 Jul 2018 11:00:54 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Sat, 07 Jul 2018 11:00:57 GMT
RUN apk add --no-cache libssl1.0
# Sat, 07 Jul 2018 11:00:57 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 07 Jul 2018 11:00:57 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 07 Jul 2018 11:00:57 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 07 Jul 2018 11:01:14 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Sat, 07 Jul 2018 11:01:15 GMT
VOLUME [/spiped]
# Sat, 07 Jul 2018 11:01:15 GMT
WORKDIR /spiped
# Sat, 07 Jul 2018 11:01:15 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Sat, 07 Jul 2018 11:01:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 07 Jul 2018 11:01:16 GMT
CMD ["spiped"]
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
	-	`sha256:9a058f5a1285e67e9755ef2057609e32bf07c04d8eec0a3f85dbd30670938be2`  
		Last Modified: Sat, 07 Jul 2018 11:01:30 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:812eac6a861ee484c7258b7409dc00feb6e1cd0e7ef7d4e669ac99435473dc58`  
		Last Modified: Sat, 07 Jul 2018 11:01:30 GMT  
		Size: 1.1 MB (1123893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0bab8ba5a8e875cdb4675f57c4bad389edb17f000b05c62fcba75eee48e0bf0`  
		Last Modified: Sat, 07 Jul 2018 11:01:30 GMT  
		Size: 1.3 MB (1342201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288d75a5f4b1229bbe9f78889cb7d3da73f15330d0582c11be65ab8d422b453a`  
		Last Modified: Sat, 07 Jul 2018 11:01:30 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea103e55de7be25e2dd08b1acde00acd79f48f44cd9fd71f7278544b42a6b0cd`  
		Last Modified: Sat, 07 Jul 2018 11:01:30 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6-alpine` - linux; ppc64le

```console
$ docker pull spiped@sha256:7fd76f31713643fc8968b92ac6dfb9da432648c2dde5ca22498a80051fb25e59
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4517734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd0d7d214cfac1ae7ac46f866f052edb7d50431f62cc9e7ed3daaa9b53661eec`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 06 Jul 2018 08:18:09 GMT
ADD file:4ff20d593b16518d45b1b1d6efdab141199316dba7a53ce7459249f5de690dfd in / 
# Fri, 06 Jul 2018 08:18:10 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:18:11 GMT
CMD ["/bin/sh"]
# Sat, 07 Jul 2018 08:53:30 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Sat, 07 Jul 2018 08:53:34 GMT
RUN apk add --no-cache libssl1.0
# Sat, 07 Jul 2018 08:53:35 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 07 Jul 2018 08:53:36 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 07 Jul 2018 08:53:37 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 07 Jul 2018 08:53:58 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Sat, 07 Jul 2018 08:54:01 GMT
VOLUME [/spiped]
# Sat, 07 Jul 2018 08:54:03 GMT
WORKDIR /spiped
# Sat, 07 Jul 2018 08:54:07 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Sat, 07 Jul 2018 08:54:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 07 Jul 2018 08:54:10 GMT
CMD ["spiped"]
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
	-	`sha256:12dfbdbfa83decaaebba31bb3d6aba694ad7db2a9fdb88ddf0c4beabcc19edd1`  
		Last Modified: Sat, 07 Jul 2018 08:54:32 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ea4c6854013a40004d988f636b60fbe119801143a54b89b2f13e3fb1934ceae`  
		Last Modified: Sat, 07 Jul 2018 08:54:33 GMT  
		Size: 996.9 KB (996894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48f8a5b96139a61a87d6b207aee87325a3fe58d57188d075801de843fcb6b755`  
		Last Modified: Sat, 07 Jul 2018 08:54:33 GMT  
		Size: 1.3 MB (1324053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:406eac5385a9d91d424e301b947a87650f16ee1e83079c2cf534312385090c4c`  
		Last Modified: Sat, 07 Jul 2018 08:54:32 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68725a2bc1cea1b526f696f61d5334c1dfae5cf3207b528f4f462d02c49b8faf`  
		Last Modified: Sat, 07 Jul 2018 08:54:33 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6-alpine` - linux; s390x

```console
$ docker pull spiped@sha256:d96e6aa529decc50d4dac5e10de2649ef20d2785f68e1d474fc89d536b033b01
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4657142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80c7f1766812109fbf54809b551e56d88066dc4d69a5d58657ad7bb06915f78f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 06 Jul 2018 11:41:42 GMT
ADD file:376dd7fc34ad39570d2e20f3704305e788ae613c589445b3e8fb880147c3eb59 in / 
# Fri, 06 Jul 2018 11:41:43 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 11:41:43 GMT
CMD ["/bin/sh"]
# Sat, 07 Jul 2018 12:06:27 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Sat, 07 Jul 2018 12:06:28 GMT
RUN apk add --no-cache libssl1.0
# Sat, 07 Jul 2018 12:06:28 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 07 Jul 2018 12:06:29 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 07 Jul 2018 12:06:29 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 07 Jul 2018 12:06:38 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Sat, 07 Jul 2018 12:06:38 GMT
VOLUME [/spiped]
# Sat, 07 Jul 2018 12:06:38 GMT
WORKDIR /spiped
# Sat, 07 Jul 2018 12:06:39 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Sat, 07 Jul 2018 12:06:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 07 Jul 2018 12:06:39 GMT
CMD ["spiped"]
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
	-	`sha256:d1e070e770633a2b5db7e68d037725a846fe6fe9be06f842c3e4bd4fa5f916b0`  
		Last Modified: Sat, 07 Jul 2018 12:06:52 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc1ae2f3d0f10e94ed98029005f70f55e447eb7e4a7256f1f35b6ad2f4665ab8`  
		Last Modified: Sat, 07 Jul 2018 12:06:53 GMT  
		Size: 1.1 MB (1062585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da8d818bf2817431d08018b3cc25298c25d38de8878badca16de0ec4e51b710a`  
		Last Modified: Sat, 07 Jul 2018 12:06:54 GMT  
		Size: 1.3 MB (1285224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e1083cecbc0ed03e82596754021312dd318a69b4c9a86d79e14e193f90eef8e`  
		Last Modified: Sat, 07 Jul 2018 12:06:52 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc8f2f752a945d183a9f9cf79680bf9d86143bd1e34db5904f8e78acf6ec9bbb`  
		Last Modified: Sat, 07 Jul 2018 12:06:52 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1-alpine`

```console
$ docker pull spiped@sha256:1c7b8430bfa12786d70b6619a52c27139bb7c27b59f9f3451e5eccaaeeb0b583
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `spiped:1-alpine` - linux; amd64

```console
$ docker pull spiped@sha256:58653738b045679a8daf3fbd4cf3558a3e32e0aa0d6346215ac4ed2d7e43b497
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4863459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5a1cb874da6f5ad39c265e642982053a52fd955397fe2ed75c7813480f6289c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Sat, 07 Jul 2018 03:42:49 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Sat, 07 Jul 2018 03:42:50 GMT
RUN apk add --no-cache libssl1.0
# Sat, 07 Jul 2018 03:42:50 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 07 Jul 2018 03:42:51 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 07 Jul 2018 03:42:51 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 07 Jul 2018 03:43:09 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Sat, 07 Jul 2018 03:43:09 GMT
VOLUME [/spiped]
# Sat, 07 Jul 2018 03:43:10 GMT
WORKDIR /spiped
# Sat, 07 Jul 2018 03:43:10 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Sat, 07 Jul 2018 03:43:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 07 Jul 2018 03:43:11 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:238308f783528935eca9ccb7cf50ae56a4d944e583b97bc00d1ab1440c4f53aa`  
		Last Modified: Sat, 07 Jul 2018 03:43:30 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fb0657f0bdfcf5044dc8bfec89a096b0ac39890edfe90b0adfbfd80e70c0499`  
		Last Modified: Sat, 07 Jul 2018 03:43:30 GMT  
		Size: 1.3 MB (1301303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4804da4f6a19c174657eff6fed7fd178acb552ad3bcb89d9444990b346989be7`  
		Last Modified: Sat, 07 Jul 2018 03:43:30 GMT  
		Size: 1.4 MB (1353931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81b8c54b0d601a174cbf1544e8880ef0dcfc1f3a849e08a2b83139d489b663ed`  
		Last Modified: Sat, 07 Jul 2018 03:43:29 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d44d299a7626245569fa232bd8637fd1d6dc7c6277e254324db773bad8e7eba7`  
		Last Modified: Sat, 07 Jul 2018 03:43:29 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1-alpine` - linux; arm variant v6

```console
$ docker pull spiped@sha256:a97ca052bd4d4d5ace0c6ddc823b194c02318797af3b58530378b546025f04ab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4365863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e141a81d2d7ef9cabdc6fa8bfb7928fafbb49b19824a4b8a90c3c81669d59185`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 06 Jul 2018 07:53:29 GMT
ADD file:122e3422d9afa971806601812374fdd9d00c8edc8e9a6df7256e2caa85fab6d1 in / 
# Fri, 06 Jul 2018 07:53:30 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 07:53:30 GMT
CMD ["/bin/sh"]
# Sat, 14 Jul 2018 12:01:17 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Sat, 14 Jul 2018 12:01:23 GMT
RUN apk add --no-cache libssl1.0
# Sat, 14 Jul 2018 12:01:24 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 14 Jul 2018 12:01:24 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 14 Jul 2018 12:01:25 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 14 Jul 2018 12:03:33 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Sat, 14 Jul 2018 12:03:34 GMT
VOLUME [/spiped]
# Sat, 14 Jul 2018 12:03:35 GMT
WORKDIR /spiped
# Sat, 14 Jul 2018 12:03:36 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Sat, 14 Jul 2018 12:03:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 14 Jul 2018 12:03:38 GMT
CMD ["spiped"]
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
	-	`sha256:3d83edd4c68cca51d3c254f9fdf3fb55cf21a95431a5806fe5d59336c4e9e135`  
		Last Modified: Sat, 14 Jul 2018 12:04:01 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c2349b96c595a764e625e89ca3e146228fe1019d35f37d77b830461157e269e`  
		Last Modified: Sat, 14 Jul 2018 12:04:03 GMT  
		Size: 911.5 KB (911532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1254c85dca454cf68f0060cfbd9aeae3a68035266dfb3b373dd18f4fe01a740d`  
		Last Modified: Sat, 14 Jul 2018 12:04:02 GMT  
		Size: 1.3 MB (1306411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3646961dc71115b0d647845430e27b29c6ee4c1991a4252967e4f5b17fd87770`  
		Last Modified: Sat, 14 Jul 2018 12:04:02 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:815ff7030fcef9941864ea919914b4a966114a7aed9fbeaf034f5dd41248cf09`  
		Last Modified: Sat, 14 Jul 2018 12:04:02 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1-alpine` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:ba04fcad828001876151273e768706f9b134c14fd6eae5aeb5df1b893774add6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4338695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f044bfc751a658779b28631bd81f1bef44d8e0f731ab299c41ceaf37e113580`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 06 Jul 2018 08:41:03 GMT
ADD file:199a5a48bddabaf1f649f58f3b17c323a1aa1a50e939dfdea3542e4041e91b7b in / 
# Fri, 06 Jul 2018 08:41:03 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:41:04 GMT
CMD ["/bin/sh"]
# Sat, 07 Jul 2018 09:38:14 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Sat, 07 Jul 2018 09:38:16 GMT
RUN apk add --no-cache libssl1.0
# Sat, 07 Jul 2018 09:38:17 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 07 Jul 2018 09:38:18 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 07 Jul 2018 09:38:19 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 07 Jul 2018 09:38:43 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Sat, 07 Jul 2018 09:38:43 GMT
VOLUME [/spiped]
# Sat, 07 Jul 2018 09:38:44 GMT
WORKDIR /spiped
# Sat, 07 Jul 2018 09:38:45 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Sat, 07 Jul 2018 09:38:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 07 Jul 2018 09:38:47 GMT
CMD ["spiped"]
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
	-	`sha256:9192df97a42e9ed4d42332071bd5e9eafce9e438f3c3a7509a6d1c41211ea902`  
		Last Modified: Sat, 07 Jul 2018 09:39:09 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc0626024507b4dd65535391cd2519db24bc4d171f98f7eba5c908762cea690d`  
		Last Modified: Sat, 07 Jul 2018 09:39:10 GMT  
		Size: 926.9 KB (926924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dfb36cda8fb398aa534be75a3c8cf8831ac296c808452c6ded06e43ddb8b2cd`  
		Last Modified: Sat, 07 Jul 2018 09:39:09 GMT  
		Size: 1.3 MB (1310398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d6d3a605fdd263436a1b55e3d4f1459dd0194b62a0813cce081ed9efcfd0e1b`  
		Last Modified: Sat, 07 Jul 2018 09:39:09 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d6bd7834c456e9f0b3277dbac99dd5f153773d8b4e09b4a44b5127a6781341f`  
		Last Modified: Sat, 07 Jul 2018 09:39:09 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1-alpine` - linux; 386

```console
$ docker pull spiped@sha256:ffc0a09248953c9b1c251679b70c2f0feca2aadb9ba6331daa6cd460289a7307
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4738874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b41ce4be0e2b2d204f4b3fec4a14390474af6f01ea29d8b4bedfd994b154d59`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 06 Jul 2018 15:02:06 GMT
ADD file:ebd40cda2f6087daf4d14e6dc1ee0b4a0fb5dc96c70129be8e07de0e5c628312 in / 
# Fri, 06 Jul 2018 15:02:07 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 15:02:07 GMT
CMD ["/bin/sh"]
# Sat, 07 Jul 2018 11:00:54 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Sat, 07 Jul 2018 11:00:57 GMT
RUN apk add --no-cache libssl1.0
# Sat, 07 Jul 2018 11:00:57 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 07 Jul 2018 11:00:57 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 07 Jul 2018 11:00:57 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 07 Jul 2018 11:01:14 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Sat, 07 Jul 2018 11:01:15 GMT
VOLUME [/spiped]
# Sat, 07 Jul 2018 11:01:15 GMT
WORKDIR /spiped
# Sat, 07 Jul 2018 11:01:15 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Sat, 07 Jul 2018 11:01:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 07 Jul 2018 11:01:16 GMT
CMD ["spiped"]
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
	-	`sha256:9a058f5a1285e67e9755ef2057609e32bf07c04d8eec0a3f85dbd30670938be2`  
		Last Modified: Sat, 07 Jul 2018 11:01:30 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:812eac6a861ee484c7258b7409dc00feb6e1cd0e7ef7d4e669ac99435473dc58`  
		Last Modified: Sat, 07 Jul 2018 11:01:30 GMT  
		Size: 1.1 MB (1123893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0bab8ba5a8e875cdb4675f57c4bad389edb17f000b05c62fcba75eee48e0bf0`  
		Last Modified: Sat, 07 Jul 2018 11:01:30 GMT  
		Size: 1.3 MB (1342201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288d75a5f4b1229bbe9f78889cb7d3da73f15330d0582c11be65ab8d422b453a`  
		Last Modified: Sat, 07 Jul 2018 11:01:30 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea103e55de7be25e2dd08b1acde00acd79f48f44cd9fd71f7278544b42a6b0cd`  
		Last Modified: Sat, 07 Jul 2018 11:01:30 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1-alpine` - linux; ppc64le

```console
$ docker pull spiped@sha256:7fd76f31713643fc8968b92ac6dfb9da432648c2dde5ca22498a80051fb25e59
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4517734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd0d7d214cfac1ae7ac46f866f052edb7d50431f62cc9e7ed3daaa9b53661eec`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 06 Jul 2018 08:18:09 GMT
ADD file:4ff20d593b16518d45b1b1d6efdab141199316dba7a53ce7459249f5de690dfd in / 
# Fri, 06 Jul 2018 08:18:10 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:18:11 GMT
CMD ["/bin/sh"]
# Sat, 07 Jul 2018 08:53:30 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Sat, 07 Jul 2018 08:53:34 GMT
RUN apk add --no-cache libssl1.0
# Sat, 07 Jul 2018 08:53:35 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 07 Jul 2018 08:53:36 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 07 Jul 2018 08:53:37 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 07 Jul 2018 08:53:58 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Sat, 07 Jul 2018 08:54:01 GMT
VOLUME [/spiped]
# Sat, 07 Jul 2018 08:54:03 GMT
WORKDIR /spiped
# Sat, 07 Jul 2018 08:54:07 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Sat, 07 Jul 2018 08:54:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 07 Jul 2018 08:54:10 GMT
CMD ["spiped"]
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
	-	`sha256:12dfbdbfa83decaaebba31bb3d6aba694ad7db2a9fdb88ddf0c4beabcc19edd1`  
		Last Modified: Sat, 07 Jul 2018 08:54:32 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ea4c6854013a40004d988f636b60fbe119801143a54b89b2f13e3fb1934ceae`  
		Last Modified: Sat, 07 Jul 2018 08:54:33 GMT  
		Size: 996.9 KB (996894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48f8a5b96139a61a87d6b207aee87325a3fe58d57188d075801de843fcb6b755`  
		Last Modified: Sat, 07 Jul 2018 08:54:33 GMT  
		Size: 1.3 MB (1324053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:406eac5385a9d91d424e301b947a87650f16ee1e83079c2cf534312385090c4c`  
		Last Modified: Sat, 07 Jul 2018 08:54:32 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68725a2bc1cea1b526f696f61d5334c1dfae5cf3207b528f4f462d02c49b8faf`  
		Last Modified: Sat, 07 Jul 2018 08:54:33 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1-alpine` - linux; s390x

```console
$ docker pull spiped@sha256:d96e6aa529decc50d4dac5e10de2649ef20d2785f68e1d474fc89d536b033b01
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4657142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80c7f1766812109fbf54809b551e56d88066dc4d69a5d58657ad7bb06915f78f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 06 Jul 2018 11:41:42 GMT
ADD file:376dd7fc34ad39570d2e20f3704305e788ae613c589445b3e8fb880147c3eb59 in / 
# Fri, 06 Jul 2018 11:41:43 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 11:41:43 GMT
CMD ["/bin/sh"]
# Sat, 07 Jul 2018 12:06:27 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Sat, 07 Jul 2018 12:06:28 GMT
RUN apk add --no-cache libssl1.0
# Sat, 07 Jul 2018 12:06:28 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 07 Jul 2018 12:06:29 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 07 Jul 2018 12:06:29 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 07 Jul 2018 12:06:38 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Sat, 07 Jul 2018 12:06:38 GMT
VOLUME [/spiped]
# Sat, 07 Jul 2018 12:06:38 GMT
WORKDIR /spiped
# Sat, 07 Jul 2018 12:06:39 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Sat, 07 Jul 2018 12:06:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 07 Jul 2018 12:06:39 GMT
CMD ["spiped"]
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
	-	`sha256:d1e070e770633a2b5db7e68d037725a846fe6fe9be06f842c3e4bd4fa5f916b0`  
		Last Modified: Sat, 07 Jul 2018 12:06:52 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc1ae2f3d0f10e94ed98029005f70f55e447eb7e4a7256f1f35b6ad2f4665ab8`  
		Last Modified: Sat, 07 Jul 2018 12:06:53 GMT  
		Size: 1.1 MB (1062585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da8d818bf2817431d08018b3cc25298c25d38de8878badca16de0ec4e51b710a`  
		Last Modified: Sat, 07 Jul 2018 12:06:54 GMT  
		Size: 1.3 MB (1285224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e1083cecbc0ed03e82596754021312dd318a69b4c9a86d79e14e193f90eef8e`  
		Last Modified: Sat, 07 Jul 2018 12:06:52 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc8f2f752a945d183a9f9cf79680bf9d86143bd1e34db5904f8e78acf6ec9bbb`  
		Last Modified: Sat, 07 Jul 2018 12:06:52 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:alpine`

```console
$ docker pull spiped@sha256:1c7b8430bfa12786d70b6619a52c27139bb7c27b59f9f3451e5eccaaeeb0b583
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `spiped:alpine` - linux; amd64

```console
$ docker pull spiped@sha256:58653738b045679a8daf3fbd4cf3558a3e32e0aa0d6346215ac4ed2d7e43b497
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4863459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5a1cb874da6f5ad39c265e642982053a52fd955397fe2ed75c7813480f6289c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Sat, 07 Jul 2018 03:42:49 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Sat, 07 Jul 2018 03:42:50 GMT
RUN apk add --no-cache libssl1.0
# Sat, 07 Jul 2018 03:42:50 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 07 Jul 2018 03:42:51 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 07 Jul 2018 03:42:51 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 07 Jul 2018 03:43:09 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Sat, 07 Jul 2018 03:43:09 GMT
VOLUME [/spiped]
# Sat, 07 Jul 2018 03:43:10 GMT
WORKDIR /spiped
# Sat, 07 Jul 2018 03:43:10 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Sat, 07 Jul 2018 03:43:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 07 Jul 2018 03:43:11 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:238308f783528935eca9ccb7cf50ae56a4d944e583b97bc00d1ab1440c4f53aa`  
		Last Modified: Sat, 07 Jul 2018 03:43:30 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fb0657f0bdfcf5044dc8bfec89a096b0ac39890edfe90b0adfbfd80e70c0499`  
		Last Modified: Sat, 07 Jul 2018 03:43:30 GMT  
		Size: 1.3 MB (1301303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4804da4f6a19c174657eff6fed7fd178acb552ad3bcb89d9444990b346989be7`  
		Last Modified: Sat, 07 Jul 2018 03:43:30 GMT  
		Size: 1.4 MB (1353931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81b8c54b0d601a174cbf1544e8880ef0dcfc1f3a849e08a2b83139d489b663ed`  
		Last Modified: Sat, 07 Jul 2018 03:43:29 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d44d299a7626245569fa232bd8637fd1d6dc7c6277e254324db773bad8e7eba7`  
		Last Modified: Sat, 07 Jul 2018 03:43:29 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:alpine` - linux; arm variant v6

```console
$ docker pull spiped@sha256:a97ca052bd4d4d5ace0c6ddc823b194c02318797af3b58530378b546025f04ab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4365863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e141a81d2d7ef9cabdc6fa8bfb7928fafbb49b19824a4b8a90c3c81669d59185`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 06 Jul 2018 07:53:29 GMT
ADD file:122e3422d9afa971806601812374fdd9d00c8edc8e9a6df7256e2caa85fab6d1 in / 
# Fri, 06 Jul 2018 07:53:30 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 07:53:30 GMT
CMD ["/bin/sh"]
# Sat, 14 Jul 2018 12:01:17 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Sat, 14 Jul 2018 12:01:23 GMT
RUN apk add --no-cache libssl1.0
# Sat, 14 Jul 2018 12:01:24 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 14 Jul 2018 12:01:24 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 14 Jul 2018 12:01:25 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 14 Jul 2018 12:03:33 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Sat, 14 Jul 2018 12:03:34 GMT
VOLUME [/spiped]
# Sat, 14 Jul 2018 12:03:35 GMT
WORKDIR /spiped
# Sat, 14 Jul 2018 12:03:36 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Sat, 14 Jul 2018 12:03:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 14 Jul 2018 12:03:38 GMT
CMD ["spiped"]
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
	-	`sha256:3d83edd4c68cca51d3c254f9fdf3fb55cf21a95431a5806fe5d59336c4e9e135`  
		Last Modified: Sat, 14 Jul 2018 12:04:01 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c2349b96c595a764e625e89ca3e146228fe1019d35f37d77b830461157e269e`  
		Last Modified: Sat, 14 Jul 2018 12:04:03 GMT  
		Size: 911.5 KB (911532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1254c85dca454cf68f0060cfbd9aeae3a68035266dfb3b373dd18f4fe01a740d`  
		Last Modified: Sat, 14 Jul 2018 12:04:02 GMT  
		Size: 1.3 MB (1306411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3646961dc71115b0d647845430e27b29c6ee4c1991a4252967e4f5b17fd87770`  
		Last Modified: Sat, 14 Jul 2018 12:04:02 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:815ff7030fcef9941864ea919914b4a966114a7aed9fbeaf034f5dd41248cf09`  
		Last Modified: Sat, 14 Jul 2018 12:04:02 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:alpine` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:ba04fcad828001876151273e768706f9b134c14fd6eae5aeb5df1b893774add6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4338695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f044bfc751a658779b28631bd81f1bef44d8e0f731ab299c41ceaf37e113580`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 06 Jul 2018 08:41:03 GMT
ADD file:199a5a48bddabaf1f649f58f3b17c323a1aa1a50e939dfdea3542e4041e91b7b in / 
# Fri, 06 Jul 2018 08:41:03 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:41:04 GMT
CMD ["/bin/sh"]
# Sat, 07 Jul 2018 09:38:14 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Sat, 07 Jul 2018 09:38:16 GMT
RUN apk add --no-cache libssl1.0
# Sat, 07 Jul 2018 09:38:17 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 07 Jul 2018 09:38:18 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 07 Jul 2018 09:38:19 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 07 Jul 2018 09:38:43 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Sat, 07 Jul 2018 09:38:43 GMT
VOLUME [/spiped]
# Sat, 07 Jul 2018 09:38:44 GMT
WORKDIR /spiped
# Sat, 07 Jul 2018 09:38:45 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Sat, 07 Jul 2018 09:38:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 07 Jul 2018 09:38:47 GMT
CMD ["spiped"]
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
	-	`sha256:9192df97a42e9ed4d42332071bd5e9eafce9e438f3c3a7509a6d1c41211ea902`  
		Last Modified: Sat, 07 Jul 2018 09:39:09 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc0626024507b4dd65535391cd2519db24bc4d171f98f7eba5c908762cea690d`  
		Last Modified: Sat, 07 Jul 2018 09:39:10 GMT  
		Size: 926.9 KB (926924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dfb36cda8fb398aa534be75a3c8cf8831ac296c808452c6ded06e43ddb8b2cd`  
		Last Modified: Sat, 07 Jul 2018 09:39:09 GMT  
		Size: 1.3 MB (1310398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d6d3a605fdd263436a1b55e3d4f1459dd0194b62a0813cce081ed9efcfd0e1b`  
		Last Modified: Sat, 07 Jul 2018 09:39:09 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d6bd7834c456e9f0b3277dbac99dd5f153773d8b4e09b4a44b5127a6781341f`  
		Last Modified: Sat, 07 Jul 2018 09:39:09 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:alpine` - linux; 386

```console
$ docker pull spiped@sha256:ffc0a09248953c9b1c251679b70c2f0feca2aadb9ba6331daa6cd460289a7307
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4738874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b41ce4be0e2b2d204f4b3fec4a14390474af6f01ea29d8b4bedfd994b154d59`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 06 Jul 2018 15:02:06 GMT
ADD file:ebd40cda2f6087daf4d14e6dc1ee0b4a0fb5dc96c70129be8e07de0e5c628312 in / 
# Fri, 06 Jul 2018 15:02:07 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 15:02:07 GMT
CMD ["/bin/sh"]
# Sat, 07 Jul 2018 11:00:54 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Sat, 07 Jul 2018 11:00:57 GMT
RUN apk add --no-cache libssl1.0
# Sat, 07 Jul 2018 11:00:57 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 07 Jul 2018 11:00:57 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 07 Jul 2018 11:00:57 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 07 Jul 2018 11:01:14 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Sat, 07 Jul 2018 11:01:15 GMT
VOLUME [/spiped]
# Sat, 07 Jul 2018 11:01:15 GMT
WORKDIR /spiped
# Sat, 07 Jul 2018 11:01:15 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Sat, 07 Jul 2018 11:01:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 07 Jul 2018 11:01:16 GMT
CMD ["spiped"]
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
	-	`sha256:9a058f5a1285e67e9755ef2057609e32bf07c04d8eec0a3f85dbd30670938be2`  
		Last Modified: Sat, 07 Jul 2018 11:01:30 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:812eac6a861ee484c7258b7409dc00feb6e1cd0e7ef7d4e669ac99435473dc58`  
		Last Modified: Sat, 07 Jul 2018 11:01:30 GMT  
		Size: 1.1 MB (1123893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0bab8ba5a8e875cdb4675f57c4bad389edb17f000b05c62fcba75eee48e0bf0`  
		Last Modified: Sat, 07 Jul 2018 11:01:30 GMT  
		Size: 1.3 MB (1342201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288d75a5f4b1229bbe9f78889cb7d3da73f15330d0582c11be65ab8d422b453a`  
		Last Modified: Sat, 07 Jul 2018 11:01:30 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea103e55de7be25e2dd08b1acde00acd79f48f44cd9fd71f7278544b42a6b0cd`  
		Last Modified: Sat, 07 Jul 2018 11:01:30 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:alpine` - linux; ppc64le

```console
$ docker pull spiped@sha256:7fd76f31713643fc8968b92ac6dfb9da432648c2dde5ca22498a80051fb25e59
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4517734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd0d7d214cfac1ae7ac46f866f052edb7d50431f62cc9e7ed3daaa9b53661eec`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 06 Jul 2018 08:18:09 GMT
ADD file:4ff20d593b16518d45b1b1d6efdab141199316dba7a53ce7459249f5de690dfd in / 
# Fri, 06 Jul 2018 08:18:10 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:18:11 GMT
CMD ["/bin/sh"]
# Sat, 07 Jul 2018 08:53:30 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Sat, 07 Jul 2018 08:53:34 GMT
RUN apk add --no-cache libssl1.0
# Sat, 07 Jul 2018 08:53:35 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 07 Jul 2018 08:53:36 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 07 Jul 2018 08:53:37 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 07 Jul 2018 08:53:58 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Sat, 07 Jul 2018 08:54:01 GMT
VOLUME [/spiped]
# Sat, 07 Jul 2018 08:54:03 GMT
WORKDIR /spiped
# Sat, 07 Jul 2018 08:54:07 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Sat, 07 Jul 2018 08:54:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 07 Jul 2018 08:54:10 GMT
CMD ["spiped"]
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
	-	`sha256:12dfbdbfa83decaaebba31bb3d6aba694ad7db2a9fdb88ddf0c4beabcc19edd1`  
		Last Modified: Sat, 07 Jul 2018 08:54:32 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ea4c6854013a40004d988f636b60fbe119801143a54b89b2f13e3fb1934ceae`  
		Last Modified: Sat, 07 Jul 2018 08:54:33 GMT  
		Size: 996.9 KB (996894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48f8a5b96139a61a87d6b207aee87325a3fe58d57188d075801de843fcb6b755`  
		Last Modified: Sat, 07 Jul 2018 08:54:33 GMT  
		Size: 1.3 MB (1324053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:406eac5385a9d91d424e301b947a87650f16ee1e83079c2cf534312385090c4c`  
		Last Modified: Sat, 07 Jul 2018 08:54:32 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68725a2bc1cea1b526f696f61d5334c1dfae5cf3207b528f4f462d02c49b8faf`  
		Last Modified: Sat, 07 Jul 2018 08:54:33 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:alpine` - linux; s390x

```console
$ docker pull spiped@sha256:d96e6aa529decc50d4dac5e10de2649ef20d2785f68e1d474fc89d536b033b01
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4657142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80c7f1766812109fbf54809b551e56d88066dc4d69a5d58657ad7bb06915f78f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 06 Jul 2018 11:41:42 GMT
ADD file:376dd7fc34ad39570d2e20f3704305e788ae613c589445b3e8fb880147c3eb59 in / 
# Fri, 06 Jul 2018 11:41:43 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 11:41:43 GMT
CMD ["/bin/sh"]
# Sat, 07 Jul 2018 12:06:27 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Sat, 07 Jul 2018 12:06:28 GMT
RUN apk add --no-cache libssl1.0
# Sat, 07 Jul 2018 12:06:28 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 07 Jul 2018 12:06:29 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 07 Jul 2018 12:06:29 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 07 Jul 2018 12:06:38 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Sat, 07 Jul 2018 12:06:38 GMT
VOLUME [/spiped]
# Sat, 07 Jul 2018 12:06:38 GMT
WORKDIR /spiped
# Sat, 07 Jul 2018 12:06:39 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Sat, 07 Jul 2018 12:06:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 07 Jul 2018 12:06:39 GMT
CMD ["spiped"]
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
	-	`sha256:d1e070e770633a2b5db7e68d037725a846fe6fe9be06f842c3e4bd4fa5f916b0`  
		Last Modified: Sat, 07 Jul 2018 12:06:52 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc1ae2f3d0f10e94ed98029005f70f55e447eb7e4a7256f1f35b6ad2f4665ab8`  
		Last Modified: Sat, 07 Jul 2018 12:06:53 GMT  
		Size: 1.1 MB (1062585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da8d818bf2817431d08018b3cc25298c25d38de8878badca16de0ec4e51b710a`  
		Last Modified: Sat, 07 Jul 2018 12:06:54 GMT  
		Size: 1.3 MB (1285224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e1083cecbc0ed03e82596754021312dd318a69b4c9a86d79e14e193f90eef8e`  
		Last Modified: Sat, 07 Jul 2018 12:06:52 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc8f2f752a945d183a9f9cf79680bf9d86143bd1e34db5904f8e78acf6ec9bbb`  
		Last Modified: Sat, 07 Jul 2018 12:06:52 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:latest`

```console
$ docker pull spiped@sha256:95e212bbefad94b717dbc14873590745c1a931bc66ed8bcb405e21bfdad4446c
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

### `spiped:latest` - linux; amd64

```console
$ docker pull spiped@sha256:e3082527cfa5af597bc1e7213492c0b49253bdf8a5e6dfc4fb506bcbdb3cceba
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30257794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cd2a5698a9c59054540a2c392a00bf5e774170465b2ba1c3b66162976a4c3e4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 26 Jun 2018 21:25:25 GMT
ADD file:28fbc9fd012eef72780d1c75fc2b0969d13f0138f735035335ab4b76793da2da in / 
# Tue, 26 Jun 2018 21:25:25 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 01:53:37 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 27 Jun 2018 01:53:44 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 01:53:44 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 27 Jun 2018 01:53:45 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 27 Jun 2018 01:53:45 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 27 Jun 2018 01:54:24 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 01:54:24 GMT
VOLUME [/spiped]
# Wed, 27 Jun 2018 01:54:24 GMT
WORKDIR /spiped
# Wed, 27 Jun 2018 01:54:25 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 27 Jun 2018 01:54:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 01:54:26 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:683abbb4ea60e108164f1d351e7bcf13daf45941137d800086447874df05f48e`  
		Last Modified: Tue, 26 Jun 2018 21:37:45 GMT  
		Size: 22.5 MB (22496975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9db266f3530b4e13f81e1ceea020eb63fbc8b9f161e520bf13cfa80a6c41eca4`  
		Last Modified: Wed, 27 Jun 2018 01:55:21 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99a21adc90d743b6303269e55a6943472a7f8fe448b663c7366cb8266ba05933`  
		Last Modified: Wed, 27 Jun 2018 01:55:22 GMT  
		Size: 1.9 MB (1881476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69a11766fcdebf3b72c6d8532cd98c64724fbb3ca7bb2261a19fb92e6bea1e02`  
		Last Modified: Wed, 27 Jun 2018 01:55:24 GMT  
		Size: 5.9 MB (5877159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484d7b23a09481b2ae356bbd665c6eef86fdffdcf5c50b718e4ec86d1c258ace`  
		Last Modified: Wed, 27 Jun 2018 01:55:21 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e10f70836b73ff52d6844b0bf39add945254536c6b1993cdce05cb352f52ec46`  
		Last Modified: Wed, 27 Jun 2018 01:55:21 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; arm variant v5

```console
$ docker pull spiped@sha256:cd2f11f29ad1ce4426f8c877694f6d3f8bb4b67a219fb0878e019b057aeaa777
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 MB (27753848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebf3476a001ef3832d89c562c26da2178bcfe9b172ae97dc24918dda1a651f96`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 27 Jun 2018 08:54:01 GMT
ADD file:f1e0d5c56a23a29918cb3b7691cee8f22620b4c54ee70a0dbb4b8151b2be3355 in / 
# Wed, 27 Jun 2018 08:54:02 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 09:26:08 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 27 Jun 2018 09:26:18 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 09:26:18 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 27 Jun 2018 09:26:18 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 27 Jun 2018 09:26:19 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 27 Jun 2018 09:26:58 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 09:26:58 GMT
VOLUME [/spiped]
# Wed, 27 Jun 2018 09:26:58 GMT
WORKDIR /spiped
# Wed, 27 Jun 2018 09:26:59 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 27 Jun 2018 09:26:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 09:27:00 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:151bc45ca30d5401779cd71c1dd194a7e6f64f1214de3f4f025bc53daf823199`  
		Last Modified: Wed, 27 Jun 2018 09:03:17 GMT  
		Size: 21.2 MB (21177290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f880e610a73e5d393ac189fba2ac1089147a75d5e58fee118a5a72d2f4c898b`  
		Last Modified: Wed, 27 Jun 2018 09:27:19 GMT  
		Size: 1.7 KB (1734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bac916f1cfc1c1cac20c4ba1a3dbb8c1e27b7c04c6b9fcb0557004aaf0f2a93c`  
		Last Modified: Wed, 27 Jun 2018 09:27:19 GMT  
		Size: 1.6 MB (1622942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b57f21301330ff3da53b387f4e2993ef4f4b5288f92e277f188e67095204394c`  
		Last Modified: Wed, 27 Jun 2018 09:27:21 GMT  
		Size: 5.0 MB (4951405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d81d191fe1c511e6d3a4a53d62ffe3882a92d18adb36e95a6db82141a8258203`  
		Last Modified: Wed, 27 Jun 2018 09:27:19 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4769af27e29077f18172e07715fedb9cbf70a5bf80cbe600356d6a85bf74cad8`  
		Last Modified: Wed, 27 Jun 2018 09:27:19 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; arm variant v7

```console
$ docker pull spiped@sha256:8feb20537b6191d91c07571bd0df898deeb9ed405e6502339c6e3042a90464d9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.6 MB (25560441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c22fa14307357fbc453fa170f81f34c9fe8ae34b885a4cdebcfd787b49d129eb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 27 Jun 2018 12:03:51 GMT
ADD file:d05cf75761bffd94ce908a55d38fc4966c194aa14492730dfdc1e52c3ddd0892 in / 
# Wed, 27 Jun 2018 12:03:54 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 14:33:22 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 27 Jun 2018 14:33:29 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 14:33:31 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 27 Jun 2018 14:33:31 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 27 Jun 2018 14:33:32 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 27 Jun 2018 14:34:01 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 14:34:02 GMT
VOLUME [/spiped]
# Wed, 27 Jun 2018 14:34:02 GMT
WORKDIR /spiped
# Wed, 27 Jun 2018 14:34:04 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 27 Jun 2018 14:34:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 14:34:04 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:a779870b6875e97ad1448eaf9befb46011e0fd10ef5014f59d63f624b51de26f`  
		Last Modified: Wed, 27 Jun 2018 12:13:30 GMT  
		Size: 19.3 MB (19286273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a35b360ce5f3bd1305a9ccf159944d24f2c4f5051d703d94c7693b543930748`  
		Last Modified: Wed, 27 Jun 2018 14:34:22 GMT  
		Size: 1.7 KB (1738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20a068697c4d62a96f730b3fed15637ce5d5282577ff3a89009f455b9868ec4f`  
		Last Modified: Wed, 27 Jun 2018 14:34:22 GMT  
		Size: 1.6 MB (1564321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a829a5d17ef1d9dc72e0f7b01313a969d6c8820a2560aa95bddfcc317b13c04b`  
		Last Modified: Wed, 27 Jun 2018 14:34:23 GMT  
		Size: 4.7 MB (4707632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8754ee15d9bef810b8824c9ac8f1dc7712736aff06818395185513e0a2244d75`  
		Last Modified: Wed, 27 Jun 2018 14:34:22 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c54fb7b5e373010bf8843351b29a8fd2dbcf424e7959d352332d40dad3197c79`  
		Last Modified: Wed, 27 Jun 2018 14:34:22 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:d988764360180965e0e2e363faf022c9895d982d1539908f0c85170ea34901fb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 MB (27201273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9807e73ea9e9ba59223656404f0e0b647fd129a7a38b45801064887ace3ba880`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:44 GMT
ADD file:b8a1907d99b0b9f75b52f8e25d5c346caf0244b325919c02090ab1e05ba1cf18 in / 
# Wed, 27 Jun 2018 08:47:45 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 10:16:06 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 27 Jun 2018 10:16:17 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:16:18 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 27 Jun 2018 10:16:18 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 27 Jun 2018 10:16:19 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 27 Jun 2018 10:17:56 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 10:17:56 GMT
VOLUME [/spiped]
# Wed, 27 Jun 2018 10:17:57 GMT
WORKDIR /spiped
# Wed, 27 Jun 2018 10:18:05 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 27 Jun 2018 10:18:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 10:18:06 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:153362478bb06475bede3bd6da2ff08a91dd9fc6f245c70bb5a033b65f38ac14`  
		Last Modified: Wed, 27 Jun 2018 08:58:51 GMT  
		Size: 20.3 MB (20348077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78b2f43c016fd4d4cd481aeac0419698ea92dca5f6bb98dd7db5ca2561449ac1`  
		Last Modified: Wed, 27 Jun 2018 10:18:53 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aba2a04d3936ded7cff2128fbc05182ee1afc89ed1d866b9e6c9baffca94d36b`  
		Last Modified: Wed, 27 Jun 2018 10:18:54 GMT  
		Size: 1.6 MB (1614864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:956b30a9f14a239462f5e2a16993a0a7bae1ab613ed52cdc6e11f1e0162367ba`  
		Last Modified: Wed, 27 Jun 2018 10:18:55 GMT  
		Size: 5.2 MB (5236143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c88ecccfd146789a9081a2775acf562d52da827a3b551e9ec08f9b6fcd56422`  
		Last Modified: Wed, 27 Jun 2018 10:18:54 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44da34c9f604867ebb04a564302cadbdf0e29c19835515562221703983465e78`  
		Last Modified: Wed, 27 Jun 2018 10:18:53 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; 386

```console
$ docker pull spiped@sha256:5f33e4aee7b81dfc21594ca7c7f342300ebe5b4b4e71d634a417ac17eea43b2c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34318464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2564df961f51aa933ec5841ed0dc9846b8907e2d9b68dbaf9a787a51d1c745f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 27 Jun 2018 10:46:39 GMT
ADD file:e1777a98c0e3aaf9cb1f4116550001b0eed2fe669b2c6449c93b76cccc92e1a2 in / 
# Wed, 27 Jun 2018 10:46:42 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:30:08 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 27 Jun 2018 12:30:14 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:30:15 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 27 Jun 2018 12:30:15 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 27 Jun 2018 12:30:15 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 27 Jun 2018 12:30:55 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 12:30:55 GMT
VOLUME [/spiped]
# Wed, 27 Jun 2018 12:30:56 GMT
WORKDIR /spiped
# Wed, 27 Jun 2018 12:30:56 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 27 Jun 2018 12:30:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 12:30:56 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:7de5eb46c52dbee10629f5dc34d9b2445893031ae37083572734bc4f6577757d`  
		Last Modified: Wed, 27 Jun 2018 11:11:02 GMT  
		Size: 23.1 MB (23140103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b7ab4234767cba8adea7d4842d9013e2fa2c85532842525c7659d0e61e827f4`  
		Last Modified: Wed, 27 Jun 2018 12:31:19 GMT  
		Size: 1.7 KB (1735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef522984a73a43c9cb1ddbe0466f29cb43f58d818c6077437841753663fb7722`  
		Last Modified: Wed, 27 Jun 2018 12:31:20 GMT  
		Size: 1.9 MB (1874129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d31ff24e7cae5f63d28f3dcf17634ea1c2f8ff6e48cf79c90a2ec99338bb7c9`  
		Last Modified: Wed, 27 Jun 2018 12:31:25 GMT  
		Size: 9.3 MB (9302053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f401c60ded68afbb2e3c8deff093cd19aba01290eb0b767b7f54e92d31af96f0`  
		Last Modified: Wed, 27 Jun 2018 12:31:19 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abd18763fdca57022694b894839d383d0de691e8441eee0f265d7bcc3f3123cb`  
		Last Modified: Wed, 27 Jun 2018 12:31:20 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; ppc64le

```console
$ docker pull spiped@sha256:cdcef69b1af352bb219479709b040284c87098330a7fc6f9d82870dc4867f4d4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.2 MB (30155123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d19a2138397566ef19a710c882cc7771af91beb7b92d99b6def61f61e036e5b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 27 Jun 2018 08:21:34 GMT
ADD file:7bd6d5557557a294db488600b483d452db358e399f7c8b1acf2a89c25b3d2006 in / 
# Wed, 27 Jun 2018 08:21:35 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 10:00:36 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 27 Jun 2018 10:01:06 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:01:11 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 27 Jun 2018 10:01:12 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 27 Jun 2018 10:01:12 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 27 Jun 2018 10:06:24 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 10:06:27 GMT
VOLUME [/spiped]
# Wed, 27 Jun 2018 10:06:31 GMT
WORKDIR /spiped
# Wed, 27 Jun 2018 10:06:37 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 27 Jun 2018 10:06:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 10:06:47 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:591f394d671c26b8ef397269eb6b0bd86b78d5619523f5d1632fca943faff2de`  
		Last Modified: Wed, 27 Jun 2018 08:31:55 GMT  
		Size: 22.8 MB (22753035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c445af234076f754d0228e4b8683b69d52627538cd531ba0b0fdbbad22439bf9`  
		Last Modified: Wed, 27 Jun 2018 10:07:16 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eaeb4274d32480257356732d1eecfdfaa42b603eeaa2c4e554f7652e0784274`  
		Last Modified: Wed, 27 Jun 2018 10:07:17 GMT  
		Size: 1.6 MB (1552482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8abcc73deaf09bad1891a636708cb2be8fc7c6d8f8f929ccbe7c1cf71a247aa7`  
		Last Modified: Wed, 27 Jun 2018 10:07:17 GMT  
		Size: 5.8 MB (5847376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa327565291b857449a5f22688532dc21e5141344aec3ae16ea3a816492eaa2a`  
		Last Modified: Wed, 27 Jun 2018 10:07:16 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbe9cb2d3a1fcfde6b3e8a26d55e834158608fc650e3a8a888feda469587e399`  
		Last Modified: Wed, 27 Jun 2018 10:07:16 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; s390x

```console
$ docker pull spiped@sha256:b450c01a2844bc02eb54d5d08136c8f627c082ebcbf5af06cc8bc6c5699a9124
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 MB (30737855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d31ecd992a7f6d5afcefb30f76827a13fc7659dc3209e6db05f9e085e0f1e739`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 27 Jun 2018 11:48:52 GMT
ADD file:30e8aac3f01e5ddc9493a0fac1c0978b9435ab33031d2af05afca0f9cb7eb71f in / 
# Wed, 27 Jun 2018 11:48:52 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:10:23 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 27 Jun 2018 12:10:27 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:10:27 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 27 Jun 2018 12:10:27 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 27 Jun 2018 12:10:27 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 27 Jun 2018 12:10:48 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 12:10:48 GMT
VOLUME [/spiped]
# Wed, 27 Jun 2018 12:10:48 GMT
WORKDIR /spiped
# Wed, 27 Jun 2018 12:10:49 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 27 Jun 2018 12:10:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 12:10:49 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:1c23a44ac305da2d34995cf30530ba5adce0229e4a70678fd4d25384883b1281`  
		Last Modified: Wed, 27 Jun 2018 11:53:41 GMT  
		Size: 22.3 MB (22349871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec2cb3d97189e0e27153a66f4bad710a7a81cbe53c925892deb33e5630ebb85d`  
		Last Modified: Wed, 27 Jun 2018 12:11:11 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c56d224127ab770027993fde8261c31a64f0d0428dac5c5742e6a1b3c6fcb658`  
		Last Modified: Wed, 27 Jun 2018 12:11:10 GMT  
		Size: 1.6 MB (1615575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:456555db890fd760d681bf08418ad47ae488b02856d208e74f240d92b85f6c34`  
		Last Modified: Wed, 27 Jun 2018 12:11:12 GMT  
		Size: 6.8 MB (6770222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52fbad3f2fbb02706dd00d2954123baaa77f516e0e8b482ba9082958abed3de9`  
		Last Modified: Wed, 27 Jun 2018 12:11:09 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d888043d4b9e6d623aa889fa10620a4801b575343a6913be721fe28115b8e389`  
		Last Modified: Wed, 27 Jun 2018 12:11:09 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
