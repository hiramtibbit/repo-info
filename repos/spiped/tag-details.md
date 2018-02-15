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
$ docker pull spiped@sha256:656133d20cf87ba984113cd9fd4d4ee1f59c79155fd84c7da449ea3e8fc6b771
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
$ docker pull spiped@sha256:43e922a428bd3129127cc11684fe5d16d2ea29616909bca177249fba8343c54f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (54020453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5aaca4c5f8da4bd1aa9fe264e24ebf42da9026f9269da7559af01161e3b4cec3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 15 Feb 2018 01:58:24 GMT
ADD file:7d3b21b18d7bc6d6db1349979cf0e68073647e90c892aebab0da5d679b5550eb in / 
# Thu, 15 Feb 2018 02:01:04 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:50:53 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Thu, 15 Feb 2018 07:51:00 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:51:00 GMT
ENV SPIPED_VERSION=1.6.0
# Thu, 15 Feb 2018 07:51:01 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Thu, 15 Feb 2018 07:51:01 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Thu, 15 Feb 2018 07:51:24 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 07:51:24 GMT
VOLUME [/spiped]
# Thu, 15 Feb 2018 07:51:25 GMT
WORKDIR /spiped
# Thu, 15 Feb 2018 07:51:26 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Thu, 15 Feb 2018 07:51:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 07:51:27 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:3e731ddb7fc902c6fc10f00cd7f99f11d63914692bd8c2816a29e6d016353932`  
		Last Modified: Thu, 15 Feb 2018 02:26:01 GMT  
		Size: 45.1 MB (45132625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24a5cad19fbb1499a86dec02b73042c413d9cf70c445750a0a20e654d83dbc8d`  
		Last Modified: Thu, 15 Feb 2018 07:51:52 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a87fb8f7eb19770b75d0e3c6a702d9f6a436692e974a1a3fba70b6102b6ab84a`  
		Last Modified: Thu, 15 Feb 2018 07:51:52 GMT  
		Size: 2.1 MB (2091877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d9dfeb032a99e2b18395f9b5c0db2cb02ef1755c4be7fa50104c5dcc0786d6c`  
		Last Modified: Thu, 15 Feb 2018 07:51:54 GMT  
		Size: 6.8 MB (6793765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4fde2bf878bd4dc71f81e1e866cf1f2b4a4f028f44381d273e540aa7cdb196d`  
		Last Modified: Thu, 15 Feb 2018 07:51:52 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c23fff678990ed81497acb956c013d11946d3c5f2fc61f5ed09fd7ad9677ac46`  
		Last Modified: Thu, 15 Feb 2018 07:51:52 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1` - linux; arm variant v5

```console
$ docker pull spiped@sha256:560c522f7249dfd37827a2e2949fe8b576705c67364683d86bd4c922f025ede6
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.5 MB (51511664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9769e7253670180c4f12c80d5fefa56744a47a2195a101d68c1ab85b1334a50`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 12 Dec 2017 21:01:46 GMT
ADD file:f8517f9f02293861c50bd41f708eb4f907ae9a1d2f9b6c917602b677f174fbc0 in / 
# Tue, 12 Dec 2017 21:01:46 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 00:04:00 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 13 Dec 2017 00:04:08 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 00:04:08 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 13 Dec 2017 00:04:09 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 13 Dec 2017 00:04:09 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 13 Dec 2017 00:04:42 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 13 Dec 2017 00:04:42 GMT
VOLUME [/spiped]
# Wed, 13 Dec 2017 00:04:42 GMT
WORKDIR /spiped
# Wed, 13 Dec 2017 00:04:43 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 13 Dec 2017 00:04:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Dec 2017 00:04:43 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:b858507a828940bb4f637f38191bc4c62a00a6857fcddefc11c003815277c27d`  
		Last Modified: Tue, 12 Dec 2017 21:11:55 GMT  
		Size: 43.8 MB (43809184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d29c9d84d181a32bb935d6274e885098643d3df2d49c7becb0def9d74ea83a8d`  
		Last Modified: Wed, 13 Dec 2017 00:05:04 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2784ce219fd686745bc89565de1bed7426f9fb23a2a6541cd17f7bac449f817`  
		Last Modified: Wed, 13 Dec 2017 00:05:05 GMT  
		Size: 1.8 MB (1833659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55cd10d34fdcc69b3045f44357d19c5aa5ae6aa89acf6c3d0c2b5e64212d6d0f`  
		Last Modified: Wed, 13 Dec 2017 00:05:07 GMT  
		Size: 5.9 MB (5866607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c95553899cf9e054b7d6773e59f23b9bb24ffd0052d4925f71840efde4e558a`  
		Last Modified: Wed, 13 Dec 2017 00:05:04 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f0b0214c272ec135649ff6d2d37966033419095a1d92ca26c77652d4c638aae`  
		Last Modified: Wed, 13 Dec 2017 00:05:05 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1` - linux; arm variant v7

```console
$ docker pull spiped@sha256:18d37d8ab34cfde55481a2ae0476d8382e52ec606b1a196945c9f215ead621c9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.3 MB (49259747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbf8a352ea33ac15816b074d2dcc299d07ee454ba776d96642025f8953157876`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 15 Feb 2018 13:30:55 GMT
ADD file:58c4e4829c3db6bdb6063ee3ca04776b696772f592f70cb29d5196788c3608da in / 
# Thu, 15 Feb 2018 13:30:56 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 16:22:13 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Thu, 15 Feb 2018 16:22:20 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 16:22:26 GMT
ENV SPIPED_VERSION=1.6.0
# Thu, 15 Feb 2018 16:22:27 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Thu, 15 Feb 2018 16:22:27 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Thu, 15 Feb 2018 16:22:56 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 16:22:56 GMT
VOLUME [/spiped]
# Thu, 15 Feb 2018 16:22:56 GMT
WORKDIR /spiped
# Thu, 15 Feb 2018 16:22:57 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Thu, 15 Feb 2018 16:22:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 16:22:58 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:c0518139464abb63e1069cd4c638aad760a6cb319660ae2229921b17c703441b`  
		Last Modified: Thu, 15 Feb 2018 13:40:56 GMT  
		Size: 41.9 MB (41859666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d143e84d7620378a7f636f88b02def08c2e3fb4ce1e1b773438effa8d5e9957`  
		Last Modified: Thu, 15 Feb 2018 16:23:18 GMT  
		Size: 1.7 KB (1736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35bfefff8fa2bac9a22901b68289f78c851516583ad95e2d02528ac33c27c223`  
		Last Modified: Thu, 15 Feb 2018 16:23:20 GMT  
		Size: 1.8 MB (1774954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb7bc76a4a0eb230c7c7897e6c311a43424a1691884e5e03a7b5db7bb21ab333`  
		Last Modified: Thu, 15 Feb 2018 16:23:20 GMT  
		Size: 5.6 MB (5622910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8339a2a3fd9d1376299134279c0cfc1d898f14cc064bff1b9420e8ed55b97cf`  
		Last Modified: Thu, 15 Feb 2018 16:23:18 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed4ab49891d0756e655293dd9880125ac4ad0bd8abb94a6fbdf23064a7358ea`  
		Last Modified: Thu, 15 Feb 2018 16:23:18 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:d514b859091e1e5e5d467494856093b7724758d252481e1e7170e008e0a6d121
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.9 MB (50891969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ca054154878db78448c83d3b685358836d23c8d79d39f9563fe8e5052d44078`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 12 Dec 2017 18:33:14 GMT
ADD file:ae07a2e0bd59c986cf9cec3d7ce9a3db8f8034bac7b69938557e472980c70cdc in / 
# Tue, 12 Dec 2017 18:33:14 GMT
CMD ["bash"]
# Thu, 14 Dec 2017 20:53:55 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Thu, 14 Dec 2017 20:54:06 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 20:54:06 GMT
ENV SPIPED_VERSION=1.6.0
# Thu, 14 Dec 2017 20:54:07 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Thu, 14 Dec 2017 20:54:07 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Thu, 14 Dec 2017 20:55:37 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Thu, 14 Dec 2017 20:55:38 GMT
VOLUME [/spiped]
# Thu, 14 Dec 2017 20:55:39 GMT
WORKDIR /spiped
# Thu, 14 Dec 2017 20:55:40 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Thu, 14 Dec 2017 20:55:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Dec 2017 20:55:41 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:91ea0aed359111bf5beb30e4bebd50fac25bc40a69e1bb3bf0f8e3c6dcd5fa7f`  
		Last Modified: Tue, 12 Dec 2017 18:47:08 GMT  
		Size: 42.9 MB (42912813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5644974e24dbe41529271b1c148cc836147096fc1aaafc2e402b515fd6dce58`  
		Last Modified: Thu, 14 Dec 2017 20:56:12 GMT  
		Size: 1.7 KB (1749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b154fa51ba797d27e38414d2fd79bebd72df7f8e36dee8fe659bc5c7dbc213c9`  
		Last Modified: Thu, 14 Dec 2017 20:56:13 GMT  
		Size: 1.8 MB (1825814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:778e01042fcf58d2ff94428ce5e5f789e773f5c607d5b7e80dba0a605a3ebf69`  
		Last Modified: Thu, 14 Dec 2017 20:56:17 GMT  
		Size: 6.2 MB (6151147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83a2207126ecfe5f6cf30c933e19e6fdfed6935fdb664138d69798f97223cb84`  
		Last Modified: Thu, 14 Dec 2017 20:56:12 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ead75dcf5effda7e903ad973ed5d9bb3b0e1b3d2b8f7fe8428a5f75835b18f`  
		Last Modified: Thu, 14 Dec 2017 20:56:12 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1` - linux; 386

```console
$ docker pull spiped@sha256:d25946f1efb7003973193f2c3d645254e80f68ba8c47d37b2243a2655a85b138
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.1 MB (58131701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3965a5533a4e2fd1fe8a2e3f54566e503d546b7b74755d264dab1957e1c9442`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 12 Dec 2017 14:28:39 GMT
ADD file:a6cfca6b73e41be73fc4e964d25ccb94f9c3538d1bd6623f5f203d3594167a5f in / 
# Tue, 12 Dec 2017 14:28:39 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 14:43:58 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 13 Dec 2017 14:44:15 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 14:44:17 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 13 Dec 2017 14:44:17 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 13 Dec 2017 14:44:17 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 13 Dec 2017 14:45:02 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 13 Dec 2017 14:45:02 GMT
VOLUME [/spiped]
# Wed, 13 Dec 2017 14:45:03 GMT
WORKDIR /spiped
# Wed, 13 Dec 2017 14:45:03 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 13 Dec 2017 14:45:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Dec 2017 14:45:12 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:50d72515450fee13bee4f8be703ed400c6fc2f1bc9a5699f1d6917eb6dde6aa0`  
		Last Modified: Tue, 12 Dec 2017 15:01:52 GMT  
		Size: 45.8 MB (45827066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e809914ee658c1e958ce0ca27daab31747785aff9990473948f19241636a663e`  
		Last Modified: Wed, 13 Dec 2017 14:45:40 GMT  
		Size: 1.7 KB (1736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3437201f8fbabb85f5392c2be04f09e2c1c370bcd31fffc76f78e39a08635e5d`  
		Last Modified: Wed, 13 Dec 2017 14:45:41 GMT  
		Size: 2.1 MB (2084828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ff97210e5f69e3a11b38fff94c5f5bc9cbc5444f4e383437556f2d0eeba5fe`  
		Last Modified: Wed, 13 Dec 2017 14:45:44 GMT  
		Size: 10.2 MB (10217624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd2569643eda9bf4c944b52e7fa9287c26a78bcc1deb70ab25a0d6d6ccb25a35`  
		Last Modified: Wed, 13 Dec 2017 14:45:41 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c353cb4873ed0d112b2f6b37b9554b1a4ee4c6a0abf53b07cc12a903c5b3883`  
		Last Modified: Wed, 13 Dec 2017 14:45:41 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1` - linux; ppc64le

```console
$ docker pull spiped@sha256:1ce4162196fc8639df95936449b41b56646dfa95f880d8ec1dac85a92e6e968c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53916024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:573e7d562f3bc2c7cd52c3c3e5935109a3982a395654c99e776d0e315f5c9545`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 15 Feb 2018 01:37:41 GMT
ADD file:7e6ef12294e8694d6e9f12ca4b08b7d37810560a9354608f3c26da2d7bb58ee7 in / 
# Thu, 15 Feb 2018 01:37:43 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 08:13:19 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Thu, 15 Feb 2018 08:13:49 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 08:13:52 GMT
ENV SPIPED_VERSION=1.6.0
# Thu, 15 Feb 2018 08:13:54 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Thu, 15 Feb 2018 08:13:57 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Thu, 15 Feb 2018 08:20:39 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 08:20:41 GMT
VOLUME [/spiped]
# Thu, 15 Feb 2018 08:20:42 GMT
WORKDIR /spiped
# Thu, 15 Feb 2018 08:20:44 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Thu, 15 Feb 2018 08:20:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 08:20:49 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:13243907a6ee503282f5b315b55be9aa688e7041decc7709ce64da512fcd0a07`  
		Last Modified: Thu, 15 Feb 2018 01:45:54 GMT  
		Size: 45.4 MB (45387828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87fed9885cd59e39b87a84bf0669b2e9c409b754b682d018a3e0d464f8499c3e`  
		Last Modified: Thu, 15 Feb 2018 08:21:21 GMT  
		Size: 1.8 KB (1752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b260541306022c318fb8d9f1f27eedd0d0aa9df6c15faa0afbc5b8545b12973f`  
		Last Modified: Thu, 15 Feb 2018 08:21:19 GMT  
		Size: 1.8 MB (1763277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46b7ca3ba94ce00263453334ba6e7e44aa536a8ef14c0f0a3b3fd546beb00976`  
		Last Modified: Thu, 15 Feb 2018 08:21:21 GMT  
		Size: 6.8 MB (6762688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3830e0b97e1124920c6d4e7ef23d6a4f4ff3febdf2b81e8f4137dfdaec3a6c0c`  
		Last Modified: Thu, 15 Feb 2018 08:21:18 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a5acb8e5331f576605151b7e88f58a65012548deb05bcff571afe7a298cc974`  
		Last Modified: Thu, 15 Feb 2018 08:21:19 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1` - linux; s390x

```console
$ docker pull spiped@sha256:ae1d3faeb61e403faa88a0aefedbf10b8d0eae310bed4049c0db1603719e2b5c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.5 MB (54487214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82558a68fe9af391bc091391661451a353b8e3d8ae9939883f2a3686b97a2590`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 15 Feb 2018 06:24:07 GMT
ADD file:01afc5861263642b3ae4beb3dedd40e7edb1e65d86c4368a502a15247a39a3c1 in / 
# Thu, 15 Feb 2018 06:24:07 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 08:11:27 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Thu, 15 Feb 2018 08:11:30 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 08:11:30 GMT
ENV SPIPED_VERSION=1.6.0
# Thu, 15 Feb 2018 08:11:30 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Thu, 15 Feb 2018 08:11:30 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Thu, 15 Feb 2018 08:11:48 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 08:11:48 GMT
VOLUME [/spiped]
# Thu, 15 Feb 2018 08:11:48 GMT
WORKDIR /spiped
# Thu, 15 Feb 2018 08:11:49 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Thu, 15 Feb 2018 08:11:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 08:11:49 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:964d84d1f29ab606f833ed91af2d80183a542335d5c85f61d55a80b6c2dbdd32`  
		Last Modified: Thu, 15 Feb 2018 01:20:26 GMT  
		Size: 45.0 MB (44971889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:540e73c9e6042eae603cd503fca0a4b6ab864873bdd7d5b1ecb7ceab63325777`  
		Last Modified: Thu, 15 Feb 2018 08:12:04 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5962c6ce67ef6dde575fe3e4266b336ab1e3a4dbc1e104d57bac6bb71fe1501`  
		Last Modified: Thu, 15 Feb 2018 08:12:04 GMT  
		Size: 1.8 MB (1825983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d88f361d354231e047101e04c645abc105175d8fcc5674b0dbd8c2a7d97325`  
		Last Modified: Thu, 15 Feb 2018 08:12:05 GMT  
		Size: 7.7 MB (7687151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b3a3f80aba137cb6ca3f46a37a1146d6d31c65017776ac594cdb56053f5842b`  
		Last Modified: Thu, 15 Feb 2018 08:12:04 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b1ab993db03a5201bc1b399126e93ea874dffeebcc9d5f3ed3112ecebfd097f`  
		Last Modified: Thu, 15 Feb 2018 08:12:04 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1.6`

```console
$ docker pull spiped@sha256:656133d20cf87ba984113cd9fd4d4ee1f59c79155fd84c7da449ea3e8fc6b771
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
$ docker pull spiped@sha256:43e922a428bd3129127cc11684fe5d16d2ea29616909bca177249fba8343c54f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (54020453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5aaca4c5f8da4bd1aa9fe264e24ebf42da9026f9269da7559af01161e3b4cec3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 15 Feb 2018 01:58:24 GMT
ADD file:7d3b21b18d7bc6d6db1349979cf0e68073647e90c892aebab0da5d679b5550eb in / 
# Thu, 15 Feb 2018 02:01:04 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:50:53 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Thu, 15 Feb 2018 07:51:00 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:51:00 GMT
ENV SPIPED_VERSION=1.6.0
# Thu, 15 Feb 2018 07:51:01 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Thu, 15 Feb 2018 07:51:01 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Thu, 15 Feb 2018 07:51:24 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 07:51:24 GMT
VOLUME [/spiped]
# Thu, 15 Feb 2018 07:51:25 GMT
WORKDIR /spiped
# Thu, 15 Feb 2018 07:51:26 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Thu, 15 Feb 2018 07:51:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 07:51:27 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:3e731ddb7fc902c6fc10f00cd7f99f11d63914692bd8c2816a29e6d016353932`  
		Last Modified: Thu, 15 Feb 2018 02:26:01 GMT  
		Size: 45.1 MB (45132625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24a5cad19fbb1499a86dec02b73042c413d9cf70c445750a0a20e654d83dbc8d`  
		Last Modified: Thu, 15 Feb 2018 07:51:52 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a87fb8f7eb19770b75d0e3c6a702d9f6a436692e974a1a3fba70b6102b6ab84a`  
		Last Modified: Thu, 15 Feb 2018 07:51:52 GMT  
		Size: 2.1 MB (2091877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d9dfeb032a99e2b18395f9b5c0db2cb02ef1755c4be7fa50104c5dcc0786d6c`  
		Last Modified: Thu, 15 Feb 2018 07:51:54 GMT  
		Size: 6.8 MB (6793765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4fde2bf878bd4dc71f81e1e866cf1f2b4a4f028f44381d273e540aa7cdb196d`  
		Last Modified: Thu, 15 Feb 2018 07:51:52 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c23fff678990ed81497acb956c013d11946d3c5f2fc61f5ed09fd7ad9677ac46`  
		Last Modified: Thu, 15 Feb 2018 07:51:52 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6` - linux; arm variant v5

```console
$ docker pull spiped@sha256:560c522f7249dfd37827a2e2949fe8b576705c67364683d86bd4c922f025ede6
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.5 MB (51511664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9769e7253670180c4f12c80d5fefa56744a47a2195a101d68c1ab85b1334a50`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 12 Dec 2017 21:01:46 GMT
ADD file:f8517f9f02293861c50bd41f708eb4f907ae9a1d2f9b6c917602b677f174fbc0 in / 
# Tue, 12 Dec 2017 21:01:46 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 00:04:00 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 13 Dec 2017 00:04:08 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 00:04:08 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 13 Dec 2017 00:04:09 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 13 Dec 2017 00:04:09 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 13 Dec 2017 00:04:42 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 13 Dec 2017 00:04:42 GMT
VOLUME [/spiped]
# Wed, 13 Dec 2017 00:04:42 GMT
WORKDIR /spiped
# Wed, 13 Dec 2017 00:04:43 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 13 Dec 2017 00:04:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Dec 2017 00:04:43 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:b858507a828940bb4f637f38191bc4c62a00a6857fcddefc11c003815277c27d`  
		Last Modified: Tue, 12 Dec 2017 21:11:55 GMT  
		Size: 43.8 MB (43809184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d29c9d84d181a32bb935d6274e885098643d3df2d49c7becb0def9d74ea83a8d`  
		Last Modified: Wed, 13 Dec 2017 00:05:04 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2784ce219fd686745bc89565de1bed7426f9fb23a2a6541cd17f7bac449f817`  
		Last Modified: Wed, 13 Dec 2017 00:05:05 GMT  
		Size: 1.8 MB (1833659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55cd10d34fdcc69b3045f44357d19c5aa5ae6aa89acf6c3d0c2b5e64212d6d0f`  
		Last Modified: Wed, 13 Dec 2017 00:05:07 GMT  
		Size: 5.9 MB (5866607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c95553899cf9e054b7d6773e59f23b9bb24ffd0052d4925f71840efde4e558a`  
		Last Modified: Wed, 13 Dec 2017 00:05:04 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f0b0214c272ec135649ff6d2d37966033419095a1d92ca26c77652d4c638aae`  
		Last Modified: Wed, 13 Dec 2017 00:05:05 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6` - linux; arm variant v7

```console
$ docker pull spiped@sha256:18d37d8ab34cfde55481a2ae0476d8382e52ec606b1a196945c9f215ead621c9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.3 MB (49259747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbf8a352ea33ac15816b074d2dcc299d07ee454ba776d96642025f8953157876`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 15 Feb 2018 13:30:55 GMT
ADD file:58c4e4829c3db6bdb6063ee3ca04776b696772f592f70cb29d5196788c3608da in / 
# Thu, 15 Feb 2018 13:30:56 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 16:22:13 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Thu, 15 Feb 2018 16:22:20 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 16:22:26 GMT
ENV SPIPED_VERSION=1.6.0
# Thu, 15 Feb 2018 16:22:27 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Thu, 15 Feb 2018 16:22:27 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Thu, 15 Feb 2018 16:22:56 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 16:22:56 GMT
VOLUME [/spiped]
# Thu, 15 Feb 2018 16:22:56 GMT
WORKDIR /spiped
# Thu, 15 Feb 2018 16:22:57 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Thu, 15 Feb 2018 16:22:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 16:22:58 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:c0518139464abb63e1069cd4c638aad760a6cb319660ae2229921b17c703441b`  
		Last Modified: Thu, 15 Feb 2018 13:40:56 GMT  
		Size: 41.9 MB (41859666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d143e84d7620378a7f636f88b02def08c2e3fb4ce1e1b773438effa8d5e9957`  
		Last Modified: Thu, 15 Feb 2018 16:23:18 GMT  
		Size: 1.7 KB (1736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35bfefff8fa2bac9a22901b68289f78c851516583ad95e2d02528ac33c27c223`  
		Last Modified: Thu, 15 Feb 2018 16:23:20 GMT  
		Size: 1.8 MB (1774954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb7bc76a4a0eb230c7c7897e6c311a43424a1691884e5e03a7b5db7bb21ab333`  
		Last Modified: Thu, 15 Feb 2018 16:23:20 GMT  
		Size: 5.6 MB (5622910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8339a2a3fd9d1376299134279c0cfc1d898f14cc064bff1b9420e8ed55b97cf`  
		Last Modified: Thu, 15 Feb 2018 16:23:18 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed4ab49891d0756e655293dd9880125ac4ad0bd8abb94a6fbdf23064a7358ea`  
		Last Modified: Thu, 15 Feb 2018 16:23:18 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:d514b859091e1e5e5d467494856093b7724758d252481e1e7170e008e0a6d121
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.9 MB (50891969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ca054154878db78448c83d3b685358836d23c8d79d39f9563fe8e5052d44078`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 12 Dec 2017 18:33:14 GMT
ADD file:ae07a2e0bd59c986cf9cec3d7ce9a3db8f8034bac7b69938557e472980c70cdc in / 
# Tue, 12 Dec 2017 18:33:14 GMT
CMD ["bash"]
# Thu, 14 Dec 2017 20:53:55 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Thu, 14 Dec 2017 20:54:06 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 20:54:06 GMT
ENV SPIPED_VERSION=1.6.0
# Thu, 14 Dec 2017 20:54:07 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Thu, 14 Dec 2017 20:54:07 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Thu, 14 Dec 2017 20:55:37 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Thu, 14 Dec 2017 20:55:38 GMT
VOLUME [/spiped]
# Thu, 14 Dec 2017 20:55:39 GMT
WORKDIR /spiped
# Thu, 14 Dec 2017 20:55:40 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Thu, 14 Dec 2017 20:55:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Dec 2017 20:55:41 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:91ea0aed359111bf5beb30e4bebd50fac25bc40a69e1bb3bf0f8e3c6dcd5fa7f`  
		Last Modified: Tue, 12 Dec 2017 18:47:08 GMT  
		Size: 42.9 MB (42912813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5644974e24dbe41529271b1c148cc836147096fc1aaafc2e402b515fd6dce58`  
		Last Modified: Thu, 14 Dec 2017 20:56:12 GMT  
		Size: 1.7 KB (1749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b154fa51ba797d27e38414d2fd79bebd72df7f8e36dee8fe659bc5c7dbc213c9`  
		Last Modified: Thu, 14 Dec 2017 20:56:13 GMT  
		Size: 1.8 MB (1825814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:778e01042fcf58d2ff94428ce5e5f789e773f5c607d5b7e80dba0a605a3ebf69`  
		Last Modified: Thu, 14 Dec 2017 20:56:17 GMT  
		Size: 6.2 MB (6151147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83a2207126ecfe5f6cf30c933e19e6fdfed6935fdb664138d69798f97223cb84`  
		Last Modified: Thu, 14 Dec 2017 20:56:12 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ead75dcf5effda7e903ad973ed5d9bb3b0e1b3d2b8f7fe8428a5f75835b18f`  
		Last Modified: Thu, 14 Dec 2017 20:56:12 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6` - linux; 386

```console
$ docker pull spiped@sha256:d25946f1efb7003973193f2c3d645254e80f68ba8c47d37b2243a2655a85b138
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.1 MB (58131701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3965a5533a4e2fd1fe8a2e3f54566e503d546b7b74755d264dab1957e1c9442`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 12 Dec 2017 14:28:39 GMT
ADD file:a6cfca6b73e41be73fc4e964d25ccb94f9c3538d1bd6623f5f203d3594167a5f in / 
# Tue, 12 Dec 2017 14:28:39 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 14:43:58 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 13 Dec 2017 14:44:15 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 14:44:17 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 13 Dec 2017 14:44:17 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 13 Dec 2017 14:44:17 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 13 Dec 2017 14:45:02 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 13 Dec 2017 14:45:02 GMT
VOLUME [/spiped]
# Wed, 13 Dec 2017 14:45:03 GMT
WORKDIR /spiped
# Wed, 13 Dec 2017 14:45:03 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 13 Dec 2017 14:45:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Dec 2017 14:45:12 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:50d72515450fee13bee4f8be703ed400c6fc2f1bc9a5699f1d6917eb6dde6aa0`  
		Last Modified: Tue, 12 Dec 2017 15:01:52 GMT  
		Size: 45.8 MB (45827066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e809914ee658c1e958ce0ca27daab31747785aff9990473948f19241636a663e`  
		Last Modified: Wed, 13 Dec 2017 14:45:40 GMT  
		Size: 1.7 KB (1736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3437201f8fbabb85f5392c2be04f09e2c1c370bcd31fffc76f78e39a08635e5d`  
		Last Modified: Wed, 13 Dec 2017 14:45:41 GMT  
		Size: 2.1 MB (2084828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ff97210e5f69e3a11b38fff94c5f5bc9cbc5444f4e383437556f2d0eeba5fe`  
		Last Modified: Wed, 13 Dec 2017 14:45:44 GMT  
		Size: 10.2 MB (10217624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd2569643eda9bf4c944b52e7fa9287c26a78bcc1deb70ab25a0d6d6ccb25a35`  
		Last Modified: Wed, 13 Dec 2017 14:45:41 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c353cb4873ed0d112b2f6b37b9554b1a4ee4c6a0abf53b07cc12a903c5b3883`  
		Last Modified: Wed, 13 Dec 2017 14:45:41 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6` - linux; ppc64le

```console
$ docker pull spiped@sha256:1ce4162196fc8639df95936449b41b56646dfa95f880d8ec1dac85a92e6e968c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53916024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:573e7d562f3bc2c7cd52c3c3e5935109a3982a395654c99e776d0e315f5c9545`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 15 Feb 2018 01:37:41 GMT
ADD file:7e6ef12294e8694d6e9f12ca4b08b7d37810560a9354608f3c26da2d7bb58ee7 in / 
# Thu, 15 Feb 2018 01:37:43 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 08:13:19 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Thu, 15 Feb 2018 08:13:49 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 08:13:52 GMT
ENV SPIPED_VERSION=1.6.0
# Thu, 15 Feb 2018 08:13:54 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Thu, 15 Feb 2018 08:13:57 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Thu, 15 Feb 2018 08:20:39 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 08:20:41 GMT
VOLUME [/spiped]
# Thu, 15 Feb 2018 08:20:42 GMT
WORKDIR /spiped
# Thu, 15 Feb 2018 08:20:44 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Thu, 15 Feb 2018 08:20:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 08:20:49 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:13243907a6ee503282f5b315b55be9aa688e7041decc7709ce64da512fcd0a07`  
		Last Modified: Thu, 15 Feb 2018 01:45:54 GMT  
		Size: 45.4 MB (45387828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87fed9885cd59e39b87a84bf0669b2e9c409b754b682d018a3e0d464f8499c3e`  
		Last Modified: Thu, 15 Feb 2018 08:21:21 GMT  
		Size: 1.8 KB (1752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b260541306022c318fb8d9f1f27eedd0d0aa9df6c15faa0afbc5b8545b12973f`  
		Last Modified: Thu, 15 Feb 2018 08:21:19 GMT  
		Size: 1.8 MB (1763277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46b7ca3ba94ce00263453334ba6e7e44aa536a8ef14c0f0a3b3fd546beb00976`  
		Last Modified: Thu, 15 Feb 2018 08:21:21 GMT  
		Size: 6.8 MB (6762688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3830e0b97e1124920c6d4e7ef23d6a4f4ff3febdf2b81e8f4137dfdaec3a6c0c`  
		Last Modified: Thu, 15 Feb 2018 08:21:18 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a5acb8e5331f576605151b7e88f58a65012548deb05bcff571afe7a298cc974`  
		Last Modified: Thu, 15 Feb 2018 08:21:19 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6` - linux; s390x

```console
$ docker pull spiped@sha256:ae1d3faeb61e403faa88a0aefedbf10b8d0eae310bed4049c0db1603719e2b5c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.5 MB (54487214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82558a68fe9af391bc091391661451a353b8e3d8ae9939883f2a3686b97a2590`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 15 Feb 2018 06:24:07 GMT
ADD file:01afc5861263642b3ae4beb3dedd40e7edb1e65d86c4368a502a15247a39a3c1 in / 
# Thu, 15 Feb 2018 06:24:07 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 08:11:27 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Thu, 15 Feb 2018 08:11:30 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 08:11:30 GMT
ENV SPIPED_VERSION=1.6.0
# Thu, 15 Feb 2018 08:11:30 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Thu, 15 Feb 2018 08:11:30 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Thu, 15 Feb 2018 08:11:48 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 08:11:48 GMT
VOLUME [/spiped]
# Thu, 15 Feb 2018 08:11:48 GMT
WORKDIR /spiped
# Thu, 15 Feb 2018 08:11:49 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Thu, 15 Feb 2018 08:11:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 08:11:49 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:964d84d1f29ab606f833ed91af2d80183a542335d5c85f61d55a80b6c2dbdd32`  
		Last Modified: Thu, 15 Feb 2018 01:20:26 GMT  
		Size: 45.0 MB (44971889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:540e73c9e6042eae603cd503fca0a4b6ab864873bdd7d5b1ecb7ceab63325777`  
		Last Modified: Thu, 15 Feb 2018 08:12:04 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5962c6ce67ef6dde575fe3e4266b336ab1e3a4dbc1e104d57bac6bb71fe1501`  
		Last Modified: Thu, 15 Feb 2018 08:12:04 GMT  
		Size: 1.8 MB (1825983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d88f361d354231e047101e04c645abc105175d8fcc5674b0dbd8c2a7d97325`  
		Last Modified: Thu, 15 Feb 2018 08:12:05 GMT  
		Size: 7.7 MB (7687151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b3a3f80aba137cb6ca3f46a37a1146d6d31c65017776ac594cdb56053f5842b`  
		Last Modified: Thu, 15 Feb 2018 08:12:04 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b1ab993db03a5201bc1b399126e93ea874dffeebcc9d5f3ed3112ecebfd097f`  
		Last Modified: Thu, 15 Feb 2018 08:12:04 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1.6.0`

```console
$ docker pull spiped@sha256:656133d20cf87ba984113cd9fd4d4ee1f59c79155fd84c7da449ea3e8fc6b771
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
$ docker pull spiped@sha256:43e922a428bd3129127cc11684fe5d16d2ea29616909bca177249fba8343c54f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (54020453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5aaca4c5f8da4bd1aa9fe264e24ebf42da9026f9269da7559af01161e3b4cec3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 15 Feb 2018 01:58:24 GMT
ADD file:7d3b21b18d7bc6d6db1349979cf0e68073647e90c892aebab0da5d679b5550eb in / 
# Thu, 15 Feb 2018 02:01:04 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:50:53 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Thu, 15 Feb 2018 07:51:00 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:51:00 GMT
ENV SPIPED_VERSION=1.6.0
# Thu, 15 Feb 2018 07:51:01 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Thu, 15 Feb 2018 07:51:01 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Thu, 15 Feb 2018 07:51:24 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 07:51:24 GMT
VOLUME [/spiped]
# Thu, 15 Feb 2018 07:51:25 GMT
WORKDIR /spiped
# Thu, 15 Feb 2018 07:51:26 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Thu, 15 Feb 2018 07:51:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 07:51:27 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:3e731ddb7fc902c6fc10f00cd7f99f11d63914692bd8c2816a29e6d016353932`  
		Last Modified: Thu, 15 Feb 2018 02:26:01 GMT  
		Size: 45.1 MB (45132625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24a5cad19fbb1499a86dec02b73042c413d9cf70c445750a0a20e654d83dbc8d`  
		Last Modified: Thu, 15 Feb 2018 07:51:52 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a87fb8f7eb19770b75d0e3c6a702d9f6a436692e974a1a3fba70b6102b6ab84a`  
		Last Modified: Thu, 15 Feb 2018 07:51:52 GMT  
		Size: 2.1 MB (2091877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d9dfeb032a99e2b18395f9b5c0db2cb02ef1755c4be7fa50104c5dcc0786d6c`  
		Last Modified: Thu, 15 Feb 2018 07:51:54 GMT  
		Size: 6.8 MB (6793765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4fde2bf878bd4dc71f81e1e866cf1f2b4a4f028f44381d273e540aa7cdb196d`  
		Last Modified: Thu, 15 Feb 2018 07:51:52 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c23fff678990ed81497acb956c013d11946d3c5f2fc61f5ed09fd7ad9677ac46`  
		Last Modified: Thu, 15 Feb 2018 07:51:52 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0` - linux; arm variant v5

```console
$ docker pull spiped@sha256:560c522f7249dfd37827a2e2949fe8b576705c67364683d86bd4c922f025ede6
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.5 MB (51511664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9769e7253670180c4f12c80d5fefa56744a47a2195a101d68c1ab85b1334a50`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 12 Dec 2017 21:01:46 GMT
ADD file:f8517f9f02293861c50bd41f708eb4f907ae9a1d2f9b6c917602b677f174fbc0 in / 
# Tue, 12 Dec 2017 21:01:46 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 00:04:00 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 13 Dec 2017 00:04:08 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 00:04:08 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 13 Dec 2017 00:04:09 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 13 Dec 2017 00:04:09 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 13 Dec 2017 00:04:42 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 13 Dec 2017 00:04:42 GMT
VOLUME [/spiped]
# Wed, 13 Dec 2017 00:04:42 GMT
WORKDIR /spiped
# Wed, 13 Dec 2017 00:04:43 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 13 Dec 2017 00:04:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Dec 2017 00:04:43 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:b858507a828940bb4f637f38191bc4c62a00a6857fcddefc11c003815277c27d`  
		Last Modified: Tue, 12 Dec 2017 21:11:55 GMT  
		Size: 43.8 MB (43809184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d29c9d84d181a32bb935d6274e885098643d3df2d49c7becb0def9d74ea83a8d`  
		Last Modified: Wed, 13 Dec 2017 00:05:04 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2784ce219fd686745bc89565de1bed7426f9fb23a2a6541cd17f7bac449f817`  
		Last Modified: Wed, 13 Dec 2017 00:05:05 GMT  
		Size: 1.8 MB (1833659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55cd10d34fdcc69b3045f44357d19c5aa5ae6aa89acf6c3d0c2b5e64212d6d0f`  
		Last Modified: Wed, 13 Dec 2017 00:05:07 GMT  
		Size: 5.9 MB (5866607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c95553899cf9e054b7d6773e59f23b9bb24ffd0052d4925f71840efde4e558a`  
		Last Modified: Wed, 13 Dec 2017 00:05:04 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f0b0214c272ec135649ff6d2d37966033419095a1d92ca26c77652d4c638aae`  
		Last Modified: Wed, 13 Dec 2017 00:05:05 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0` - linux; arm variant v7

```console
$ docker pull spiped@sha256:18d37d8ab34cfde55481a2ae0476d8382e52ec606b1a196945c9f215ead621c9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.3 MB (49259747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbf8a352ea33ac15816b074d2dcc299d07ee454ba776d96642025f8953157876`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 15 Feb 2018 13:30:55 GMT
ADD file:58c4e4829c3db6bdb6063ee3ca04776b696772f592f70cb29d5196788c3608da in / 
# Thu, 15 Feb 2018 13:30:56 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 16:22:13 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Thu, 15 Feb 2018 16:22:20 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 16:22:26 GMT
ENV SPIPED_VERSION=1.6.0
# Thu, 15 Feb 2018 16:22:27 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Thu, 15 Feb 2018 16:22:27 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Thu, 15 Feb 2018 16:22:56 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 16:22:56 GMT
VOLUME [/spiped]
# Thu, 15 Feb 2018 16:22:56 GMT
WORKDIR /spiped
# Thu, 15 Feb 2018 16:22:57 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Thu, 15 Feb 2018 16:22:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 16:22:58 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:c0518139464abb63e1069cd4c638aad760a6cb319660ae2229921b17c703441b`  
		Last Modified: Thu, 15 Feb 2018 13:40:56 GMT  
		Size: 41.9 MB (41859666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d143e84d7620378a7f636f88b02def08c2e3fb4ce1e1b773438effa8d5e9957`  
		Last Modified: Thu, 15 Feb 2018 16:23:18 GMT  
		Size: 1.7 KB (1736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35bfefff8fa2bac9a22901b68289f78c851516583ad95e2d02528ac33c27c223`  
		Last Modified: Thu, 15 Feb 2018 16:23:20 GMT  
		Size: 1.8 MB (1774954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb7bc76a4a0eb230c7c7897e6c311a43424a1691884e5e03a7b5db7bb21ab333`  
		Last Modified: Thu, 15 Feb 2018 16:23:20 GMT  
		Size: 5.6 MB (5622910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8339a2a3fd9d1376299134279c0cfc1d898f14cc064bff1b9420e8ed55b97cf`  
		Last Modified: Thu, 15 Feb 2018 16:23:18 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed4ab49891d0756e655293dd9880125ac4ad0bd8abb94a6fbdf23064a7358ea`  
		Last Modified: Thu, 15 Feb 2018 16:23:18 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:d514b859091e1e5e5d467494856093b7724758d252481e1e7170e008e0a6d121
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.9 MB (50891969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ca054154878db78448c83d3b685358836d23c8d79d39f9563fe8e5052d44078`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 12 Dec 2017 18:33:14 GMT
ADD file:ae07a2e0bd59c986cf9cec3d7ce9a3db8f8034bac7b69938557e472980c70cdc in / 
# Tue, 12 Dec 2017 18:33:14 GMT
CMD ["bash"]
# Thu, 14 Dec 2017 20:53:55 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Thu, 14 Dec 2017 20:54:06 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 20:54:06 GMT
ENV SPIPED_VERSION=1.6.0
# Thu, 14 Dec 2017 20:54:07 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Thu, 14 Dec 2017 20:54:07 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Thu, 14 Dec 2017 20:55:37 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Thu, 14 Dec 2017 20:55:38 GMT
VOLUME [/spiped]
# Thu, 14 Dec 2017 20:55:39 GMT
WORKDIR /spiped
# Thu, 14 Dec 2017 20:55:40 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Thu, 14 Dec 2017 20:55:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Dec 2017 20:55:41 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:91ea0aed359111bf5beb30e4bebd50fac25bc40a69e1bb3bf0f8e3c6dcd5fa7f`  
		Last Modified: Tue, 12 Dec 2017 18:47:08 GMT  
		Size: 42.9 MB (42912813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5644974e24dbe41529271b1c148cc836147096fc1aaafc2e402b515fd6dce58`  
		Last Modified: Thu, 14 Dec 2017 20:56:12 GMT  
		Size: 1.7 KB (1749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b154fa51ba797d27e38414d2fd79bebd72df7f8e36dee8fe659bc5c7dbc213c9`  
		Last Modified: Thu, 14 Dec 2017 20:56:13 GMT  
		Size: 1.8 MB (1825814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:778e01042fcf58d2ff94428ce5e5f789e773f5c607d5b7e80dba0a605a3ebf69`  
		Last Modified: Thu, 14 Dec 2017 20:56:17 GMT  
		Size: 6.2 MB (6151147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83a2207126ecfe5f6cf30c933e19e6fdfed6935fdb664138d69798f97223cb84`  
		Last Modified: Thu, 14 Dec 2017 20:56:12 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ead75dcf5effda7e903ad973ed5d9bb3b0e1b3d2b8f7fe8428a5f75835b18f`  
		Last Modified: Thu, 14 Dec 2017 20:56:12 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0` - linux; 386

```console
$ docker pull spiped@sha256:d25946f1efb7003973193f2c3d645254e80f68ba8c47d37b2243a2655a85b138
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.1 MB (58131701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3965a5533a4e2fd1fe8a2e3f54566e503d546b7b74755d264dab1957e1c9442`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 12 Dec 2017 14:28:39 GMT
ADD file:a6cfca6b73e41be73fc4e964d25ccb94f9c3538d1bd6623f5f203d3594167a5f in / 
# Tue, 12 Dec 2017 14:28:39 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 14:43:58 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 13 Dec 2017 14:44:15 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 14:44:17 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 13 Dec 2017 14:44:17 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 13 Dec 2017 14:44:17 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 13 Dec 2017 14:45:02 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 13 Dec 2017 14:45:02 GMT
VOLUME [/spiped]
# Wed, 13 Dec 2017 14:45:03 GMT
WORKDIR /spiped
# Wed, 13 Dec 2017 14:45:03 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 13 Dec 2017 14:45:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Dec 2017 14:45:12 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:50d72515450fee13bee4f8be703ed400c6fc2f1bc9a5699f1d6917eb6dde6aa0`  
		Last Modified: Tue, 12 Dec 2017 15:01:52 GMT  
		Size: 45.8 MB (45827066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e809914ee658c1e958ce0ca27daab31747785aff9990473948f19241636a663e`  
		Last Modified: Wed, 13 Dec 2017 14:45:40 GMT  
		Size: 1.7 KB (1736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3437201f8fbabb85f5392c2be04f09e2c1c370bcd31fffc76f78e39a08635e5d`  
		Last Modified: Wed, 13 Dec 2017 14:45:41 GMT  
		Size: 2.1 MB (2084828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ff97210e5f69e3a11b38fff94c5f5bc9cbc5444f4e383437556f2d0eeba5fe`  
		Last Modified: Wed, 13 Dec 2017 14:45:44 GMT  
		Size: 10.2 MB (10217624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd2569643eda9bf4c944b52e7fa9287c26a78bcc1deb70ab25a0d6d6ccb25a35`  
		Last Modified: Wed, 13 Dec 2017 14:45:41 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c353cb4873ed0d112b2f6b37b9554b1a4ee4c6a0abf53b07cc12a903c5b3883`  
		Last Modified: Wed, 13 Dec 2017 14:45:41 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0` - linux; ppc64le

```console
$ docker pull spiped@sha256:1ce4162196fc8639df95936449b41b56646dfa95f880d8ec1dac85a92e6e968c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53916024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:573e7d562f3bc2c7cd52c3c3e5935109a3982a395654c99e776d0e315f5c9545`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 15 Feb 2018 01:37:41 GMT
ADD file:7e6ef12294e8694d6e9f12ca4b08b7d37810560a9354608f3c26da2d7bb58ee7 in / 
# Thu, 15 Feb 2018 01:37:43 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 08:13:19 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Thu, 15 Feb 2018 08:13:49 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 08:13:52 GMT
ENV SPIPED_VERSION=1.6.0
# Thu, 15 Feb 2018 08:13:54 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Thu, 15 Feb 2018 08:13:57 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Thu, 15 Feb 2018 08:20:39 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 08:20:41 GMT
VOLUME [/spiped]
# Thu, 15 Feb 2018 08:20:42 GMT
WORKDIR /spiped
# Thu, 15 Feb 2018 08:20:44 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Thu, 15 Feb 2018 08:20:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 08:20:49 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:13243907a6ee503282f5b315b55be9aa688e7041decc7709ce64da512fcd0a07`  
		Last Modified: Thu, 15 Feb 2018 01:45:54 GMT  
		Size: 45.4 MB (45387828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87fed9885cd59e39b87a84bf0669b2e9c409b754b682d018a3e0d464f8499c3e`  
		Last Modified: Thu, 15 Feb 2018 08:21:21 GMT  
		Size: 1.8 KB (1752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b260541306022c318fb8d9f1f27eedd0d0aa9df6c15faa0afbc5b8545b12973f`  
		Last Modified: Thu, 15 Feb 2018 08:21:19 GMT  
		Size: 1.8 MB (1763277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46b7ca3ba94ce00263453334ba6e7e44aa536a8ef14c0f0a3b3fd546beb00976`  
		Last Modified: Thu, 15 Feb 2018 08:21:21 GMT  
		Size: 6.8 MB (6762688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3830e0b97e1124920c6d4e7ef23d6a4f4ff3febdf2b81e8f4137dfdaec3a6c0c`  
		Last Modified: Thu, 15 Feb 2018 08:21:18 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a5acb8e5331f576605151b7e88f58a65012548deb05bcff571afe7a298cc974`  
		Last Modified: Thu, 15 Feb 2018 08:21:19 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0` - linux; s390x

```console
$ docker pull spiped@sha256:ae1d3faeb61e403faa88a0aefedbf10b8d0eae310bed4049c0db1603719e2b5c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.5 MB (54487214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82558a68fe9af391bc091391661451a353b8e3d8ae9939883f2a3686b97a2590`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 15 Feb 2018 06:24:07 GMT
ADD file:01afc5861263642b3ae4beb3dedd40e7edb1e65d86c4368a502a15247a39a3c1 in / 
# Thu, 15 Feb 2018 06:24:07 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 08:11:27 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Thu, 15 Feb 2018 08:11:30 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 08:11:30 GMT
ENV SPIPED_VERSION=1.6.0
# Thu, 15 Feb 2018 08:11:30 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Thu, 15 Feb 2018 08:11:30 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Thu, 15 Feb 2018 08:11:48 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 08:11:48 GMT
VOLUME [/spiped]
# Thu, 15 Feb 2018 08:11:48 GMT
WORKDIR /spiped
# Thu, 15 Feb 2018 08:11:49 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Thu, 15 Feb 2018 08:11:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 08:11:49 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:964d84d1f29ab606f833ed91af2d80183a542335d5c85f61d55a80b6c2dbdd32`  
		Last Modified: Thu, 15 Feb 2018 01:20:26 GMT  
		Size: 45.0 MB (44971889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:540e73c9e6042eae603cd503fca0a4b6ab864873bdd7d5b1ecb7ceab63325777`  
		Last Modified: Thu, 15 Feb 2018 08:12:04 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5962c6ce67ef6dde575fe3e4266b336ab1e3a4dbc1e104d57bac6bb71fe1501`  
		Last Modified: Thu, 15 Feb 2018 08:12:04 GMT  
		Size: 1.8 MB (1825983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d88f361d354231e047101e04c645abc105175d8fcc5674b0dbd8c2a7d97325`  
		Last Modified: Thu, 15 Feb 2018 08:12:05 GMT  
		Size: 7.7 MB (7687151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b3a3f80aba137cb6ca3f46a37a1146d6d31c65017776ac594cdb56053f5842b`  
		Last Modified: Thu, 15 Feb 2018 08:12:04 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b1ab993db03a5201bc1b399126e93ea874dffeebcc9d5f3ed3112ecebfd097f`  
		Last Modified: Thu, 15 Feb 2018 08:12:04 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1.6.0-alpine`

```console
$ docker pull spiped@sha256:210fc9804c4efffa8db75bcab86ecc0d85886abbed0a32db318c43835f5d8d10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `spiped:1.6.0-alpine` - linux; amd64

```console
$ docker pull spiped@sha256:e9a0ff882297d94464f7b14fce24288c1eedb3f83fb9102ee1a36da898e7fdb4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3434759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cd572943d5beac33545b8402ca08f9e66ce9c793b379ac201436f9b4c8e1240`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Mon, 05 Feb 2018 20:34:18 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Mon, 05 Feb 2018 20:34:22 GMT
RUN apk add --no-cache libssl1.0
# Mon, 05 Feb 2018 20:34:31 GMT
ENV SPIPED_VERSION=1.6.0
# Mon, 05 Feb 2018 20:34:32 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Mon, 05 Feb 2018 20:34:32 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Mon, 05 Feb 2018 20:34:43 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Mon, 05 Feb 2018 20:34:43 GMT
VOLUME [/spiped]
# Mon, 05 Feb 2018 20:34:43 GMT
WORKDIR /spiped
# Mon, 05 Feb 2018 20:34:44 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Mon, 05 Feb 2018 20:34:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 05 Feb 2018 20:34:44 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:579453cbf5a9c56d30cd28781b8b83af38aa41419a99ede6e95f1e2341c56530`  
		Last Modified: Mon, 05 Feb 2018 20:35:04 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6a82e07596e967ea2b7473cd4be5ce0cc3677ab2e45b428e42c89774f9849a6`  
		Last Modified: Mon, 05 Feb 2018 20:35:05 GMT  
		Size: 1.3 MB (1289091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8e55becc55cf3ec1ac9e9f12a3961a7077844d97f1bb9e2ae369912e8b7e48f`  
		Last Modified: Mon, 05 Feb 2018 20:35:05 GMT  
		Size: 78.4 KB (78444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cb6911fddb99fde303ef54f4699ad5f471e894209ca0433edf0ec1b0ffac86d`  
		Last Modified: Mon, 05 Feb 2018 20:35:06 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fafebd19967290ebf10619a1062241f1a5e97c5aeecfa24798c713995b4769d9`  
		Last Modified: Mon, 05 Feb 2018 20:35:05 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0-alpine` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:a0709947e112921c9114bb95476a9fbb36e4e5f794a210e52b238c17e9b7e61a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2982031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8754a63d2315018df22cc930b35ab0ac07b38fa25f6e817f280d224c34c40217`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Mon, 05 Feb 2018 20:53:56 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Mon, 05 Feb 2018 20:54:00 GMT
RUN apk add --no-cache libssl1.0
# Mon, 05 Feb 2018 20:54:00 GMT
ENV SPIPED_VERSION=1.6.0
# Mon, 05 Feb 2018 20:54:01 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Mon, 05 Feb 2018 20:54:01 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Mon, 05 Feb 2018 20:54:31 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Mon, 05 Feb 2018 20:54:32 GMT
VOLUME [/spiped]
# Mon, 05 Feb 2018 20:54:33 GMT
WORKDIR /spiped
# Mon, 05 Feb 2018 20:54:33 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Mon, 05 Feb 2018 20:54:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 05 Feb 2018 20:54:35 GMT
CMD ["spiped"]
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
	-	`sha256:41aa6526a175be1ac361f233d5d07a78ed4f636cc22c43da3f95a8948626a1cb`  
		Last Modified: Mon, 05 Feb 2018 20:54:54 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ce0808dd8eb595610ea0ca6154ff062d92598959478ed809f5734ee47a646d`  
		Last Modified: Mon, 05 Feb 2018 20:54:54 GMT  
		Size: 926.5 KB (926453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c61d5b88c325a7e86915d1053eef70b50ff38c0d0c17120fb822cb9175fc1565`  
		Last Modified: Mon, 05 Feb 2018 20:54:53 GMT  
		Size: 64.9 KB (64857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e15bb02a583886a931b410249b9968246ec9c3331999fa022af3770a25f0faa`  
		Last Modified: Mon, 05 Feb 2018 20:54:55 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:702795f6b0fe6c325d7d4f63fb7183eb2c9c09672cd380a6cc5efb70bf9dc758`  
		Last Modified: Mon, 05 Feb 2018 20:54:53 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0-alpine` - linux; 386

```console
$ docker pull spiped@sha256:9e23386b3e37432cc8337a9538c477b612f2a2dee511c440439c9461c92d0e44
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3330666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4adb175adc4b24c53ff40b3544591fcd0d77c02ab1673a982ea299551f38fc75`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Tue, 06 Feb 2018 06:47:02 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Tue, 06 Feb 2018 06:47:06 GMT
RUN apk add --no-cache libssl1.0
# Tue, 06 Feb 2018 06:47:06 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 06 Feb 2018 06:47:06 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 06 Feb 2018 06:47:06 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 06 Feb 2018 06:47:31 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Tue, 06 Feb 2018 06:47:31 GMT
VOLUME [/spiped]
# Tue, 06 Feb 2018 06:47:32 GMT
WORKDIR /spiped
# Tue, 06 Feb 2018 06:47:32 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Tue, 06 Feb 2018 06:47:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Feb 2018 06:47:33 GMT
CMD ["spiped"]
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
	-	`sha256:cea3a81a9f3f2e1a91b7838353816a4a9224f4fc8704e07c92e609b51b40c4ca`  
		Last Modified: Tue, 06 Feb 2018 06:53:09 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03ad7fec2ff671f6246b416be1b61521ac001170dfd25d457a6fe42b2a52a9b3`  
		Last Modified: Tue, 06 Feb 2018 06:53:10 GMT  
		Size: 1.1 MB (1115353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa6f6a7f0631666ee2082d59099dc4dfc8263b4bdfe518f506ecc2c6e92dc864`  
		Last Modified: Tue, 06 Feb 2018 06:53:10 GMT  
		Size: 87.2 KB (87233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d8d933c5a85624c1bfcdac30ac84f469067ebbe8a342f5f8548b35941bb2c90`  
		Last Modified: Tue, 06 Feb 2018 06:53:09 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2efdccc7822aa213c9a4f665373401e5c8b1bbc293d8b294fb1b084f862bf8b4`  
		Last Modified: Tue, 06 Feb 2018 06:53:09 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0-alpine` - linux; ppc64le

```console
$ docker pull spiped@sha256:2a33a777212d286782a3ca3755c9cd478545b6f023a84dbf8c57ce31a8856df0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3153750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa2383fc8338bd43097a9b3771c553d65e7ac16b245e6272c22704a764f62edb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Mon, 05 Feb 2018 21:23:50 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Mon, 05 Feb 2018 21:24:00 GMT
RUN apk add --no-cache libssl1.0
# Mon, 05 Feb 2018 21:24:02 GMT
ENV SPIPED_VERSION=1.6.0
# Mon, 05 Feb 2018 21:24:03 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Mon, 05 Feb 2018 21:24:05 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Mon, 05 Feb 2018 21:24:39 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Mon, 05 Feb 2018 21:24:41 GMT
VOLUME [/spiped]
# Mon, 05 Feb 2018 21:24:43 GMT
WORKDIR /spiped
# Mon, 05 Feb 2018 21:24:46 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Mon, 05 Feb 2018 21:24:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 05 Feb 2018 21:24:50 GMT
CMD ["spiped"]
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
	-	`sha256:ebcea29b17181e1398768de9c3d271c4bc9feafd3e124684716b68a74a71ffb7`  
		Last Modified: Mon, 05 Feb 2018 21:25:17 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52e464230ae23a26fad85a126550b6cddfb7d3d509d03fe152e762acf8788404`  
		Last Modified: Mon, 05 Feb 2018 21:25:17 GMT  
		Size: 996.8 KB (996771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:458b6627b723b53168b1b6cdfe7169177ce7721b50a717e8bed23b84e0398d2f`  
		Last Modified: Mon, 05 Feb 2018 21:25:16 GMT  
		Size: 73.6 KB (73579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1381ee2cdbbe69229f1ba947a7ba42c09bf381d588cbbdae76395f2719fb62f9`  
		Last Modified: Mon, 05 Feb 2018 21:25:16 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bf767e586fd621738ede96ee96fb69b8fa93f6bd46825e73fe3f0eea5f0ba44`  
		Last Modified: Mon, 05 Feb 2018 21:25:17 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0-alpine` - linux; s390x

```console
$ docker pull spiped@sha256:81cb8486cf3c2d1781c8178206bfbf7b800997c54a4d955872eb5ab8254cf3fa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3322086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed2cf1451ed98be049b9936362cac8c183b2e18bbebd98f495de5ed38aefc5c8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Tue, 06 Feb 2018 15:14:30 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Tue, 06 Feb 2018 15:14:33 GMT
RUN apk add --no-cache libssl1.0
# Tue, 06 Feb 2018 15:14:33 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 06 Feb 2018 15:14:33 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 06 Feb 2018 15:14:33 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 06 Feb 2018 15:14:45 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Tue, 06 Feb 2018 15:14:45 GMT
VOLUME [/spiped]
# Tue, 06 Feb 2018 15:14:45 GMT
WORKDIR /spiped
# Tue, 06 Feb 2018 15:14:46 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Tue, 06 Feb 2018 15:14:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Feb 2018 15:14:46 GMT
CMD ["spiped"]
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
	-	`sha256:d0c59bb61a5c29bfa87dbc93965bddc1ad693c64046eab16f3a7e4e8a87e73c0`  
		Last Modified: Tue, 06 Feb 2018 15:14:57 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1617e236ae643c033c209f92dd6687671fd7519ab032c64878b2280964dd2bd`  
		Last Modified: Tue, 06 Feb 2018 15:14:57 GMT  
		Size: 1.1 MB (1060501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cfa06ceb4635723b8014c520dadd66d6a1cc38e2a23858b7783d58894ed7b4a`  
		Last Modified: Tue, 06 Feb 2018 15:14:57 GMT  
		Size: 74.5 KB (74495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e10b29ee309a42d398d1a0a54d21019276a456b4c09b15f06a4b1061e91ec050`  
		Last Modified: Tue, 06 Feb 2018 15:14:57 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af7f652380aee7524afc76bcb19b4f99e6cdf80b3938c6661f4445d8cf8ad37b`  
		Last Modified: Tue, 06 Feb 2018 15:14:57 GMT  
		Size: 339.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1.6-alpine`

```console
$ docker pull spiped@sha256:210fc9804c4efffa8db75bcab86ecc0d85886abbed0a32db318c43835f5d8d10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `spiped:1.6-alpine` - linux; amd64

```console
$ docker pull spiped@sha256:e9a0ff882297d94464f7b14fce24288c1eedb3f83fb9102ee1a36da898e7fdb4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3434759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cd572943d5beac33545b8402ca08f9e66ce9c793b379ac201436f9b4c8e1240`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Mon, 05 Feb 2018 20:34:18 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Mon, 05 Feb 2018 20:34:22 GMT
RUN apk add --no-cache libssl1.0
# Mon, 05 Feb 2018 20:34:31 GMT
ENV SPIPED_VERSION=1.6.0
# Mon, 05 Feb 2018 20:34:32 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Mon, 05 Feb 2018 20:34:32 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Mon, 05 Feb 2018 20:34:43 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Mon, 05 Feb 2018 20:34:43 GMT
VOLUME [/spiped]
# Mon, 05 Feb 2018 20:34:43 GMT
WORKDIR /spiped
# Mon, 05 Feb 2018 20:34:44 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Mon, 05 Feb 2018 20:34:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 05 Feb 2018 20:34:44 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:579453cbf5a9c56d30cd28781b8b83af38aa41419a99ede6e95f1e2341c56530`  
		Last Modified: Mon, 05 Feb 2018 20:35:04 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6a82e07596e967ea2b7473cd4be5ce0cc3677ab2e45b428e42c89774f9849a6`  
		Last Modified: Mon, 05 Feb 2018 20:35:05 GMT  
		Size: 1.3 MB (1289091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8e55becc55cf3ec1ac9e9f12a3961a7077844d97f1bb9e2ae369912e8b7e48f`  
		Last Modified: Mon, 05 Feb 2018 20:35:05 GMT  
		Size: 78.4 KB (78444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cb6911fddb99fde303ef54f4699ad5f471e894209ca0433edf0ec1b0ffac86d`  
		Last Modified: Mon, 05 Feb 2018 20:35:06 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fafebd19967290ebf10619a1062241f1a5e97c5aeecfa24798c713995b4769d9`  
		Last Modified: Mon, 05 Feb 2018 20:35:05 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6-alpine` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:a0709947e112921c9114bb95476a9fbb36e4e5f794a210e52b238c17e9b7e61a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2982031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8754a63d2315018df22cc930b35ab0ac07b38fa25f6e817f280d224c34c40217`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Mon, 05 Feb 2018 20:53:56 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Mon, 05 Feb 2018 20:54:00 GMT
RUN apk add --no-cache libssl1.0
# Mon, 05 Feb 2018 20:54:00 GMT
ENV SPIPED_VERSION=1.6.0
# Mon, 05 Feb 2018 20:54:01 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Mon, 05 Feb 2018 20:54:01 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Mon, 05 Feb 2018 20:54:31 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Mon, 05 Feb 2018 20:54:32 GMT
VOLUME [/spiped]
# Mon, 05 Feb 2018 20:54:33 GMT
WORKDIR /spiped
# Mon, 05 Feb 2018 20:54:33 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Mon, 05 Feb 2018 20:54:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 05 Feb 2018 20:54:35 GMT
CMD ["spiped"]
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
	-	`sha256:41aa6526a175be1ac361f233d5d07a78ed4f636cc22c43da3f95a8948626a1cb`  
		Last Modified: Mon, 05 Feb 2018 20:54:54 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ce0808dd8eb595610ea0ca6154ff062d92598959478ed809f5734ee47a646d`  
		Last Modified: Mon, 05 Feb 2018 20:54:54 GMT  
		Size: 926.5 KB (926453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c61d5b88c325a7e86915d1053eef70b50ff38c0d0c17120fb822cb9175fc1565`  
		Last Modified: Mon, 05 Feb 2018 20:54:53 GMT  
		Size: 64.9 KB (64857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e15bb02a583886a931b410249b9968246ec9c3331999fa022af3770a25f0faa`  
		Last Modified: Mon, 05 Feb 2018 20:54:55 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:702795f6b0fe6c325d7d4f63fb7183eb2c9c09672cd380a6cc5efb70bf9dc758`  
		Last Modified: Mon, 05 Feb 2018 20:54:53 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6-alpine` - linux; 386

```console
$ docker pull spiped@sha256:9e23386b3e37432cc8337a9538c477b612f2a2dee511c440439c9461c92d0e44
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3330666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4adb175adc4b24c53ff40b3544591fcd0d77c02ab1673a982ea299551f38fc75`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Tue, 06 Feb 2018 06:47:02 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Tue, 06 Feb 2018 06:47:06 GMT
RUN apk add --no-cache libssl1.0
# Tue, 06 Feb 2018 06:47:06 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 06 Feb 2018 06:47:06 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 06 Feb 2018 06:47:06 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 06 Feb 2018 06:47:31 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Tue, 06 Feb 2018 06:47:31 GMT
VOLUME [/spiped]
# Tue, 06 Feb 2018 06:47:32 GMT
WORKDIR /spiped
# Tue, 06 Feb 2018 06:47:32 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Tue, 06 Feb 2018 06:47:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Feb 2018 06:47:33 GMT
CMD ["spiped"]
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
	-	`sha256:cea3a81a9f3f2e1a91b7838353816a4a9224f4fc8704e07c92e609b51b40c4ca`  
		Last Modified: Tue, 06 Feb 2018 06:53:09 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03ad7fec2ff671f6246b416be1b61521ac001170dfd25d457a6fe42b2a52a9b3`  
		Last Modified: Tue, 06 Feb 2018 06:53:10 GMT  
		Size: 1.1 MB (1115353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa6f6a7f0631666ee2082d59099dc4dfc8263b4bdfe518f506ecc2c6e92dc864`  
		Last Modified: Tue, 06 Feb 2018 06:53:10 GMT  
		Size: 87.2 KB (87233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d8d933c5a85624c1bfcdac30ac84f469067ebbe8a342f5f8548b35941bb2c90`  
		Last Modified: Tue, 06 Feb 2018 06:53:09 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2efdccc7822aa213c9a4f665373401e5c8b1bbc293d8b294fb1b084f862bf8b4`  
		Last Modified: Tue, 06 Feb 2018 06:53:09 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6-alpine` - linux; ppc64le

```console
$ docker pull spiped@sha256:2a33a777212d286782a3ca3755c9cd478545b6f023a84dbf8c57ce31a8856df0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3153750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa2383fc8338bd43097a9b3771c553d65e7ac16b245e6272c22704a764f62edb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Mon, 05 Feb 2018 21:23:50 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Mon, 05 Feb 2018 21:24:00 GMT
RUN apk add --no-cache libssl1.0
# Mon, 05 Feb 2018 21:24:02 GMT
ENV SPIPED_VERSION=1.6.0
# Mon, 05 Feb 2018 21:24:03 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Mon, 05 Feb 2018 21:24:05 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Mon, 05 Feb 2018 21:24:39 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Mon, 05 Feb 2018 21:24:41 GMT
VOLUME [/spiped]
# Mon, 05 Feb 2018 21:24:43 GMT
WORKDIR /spiped
# Mon, 05 Feb 2018 21:24:46 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Mon, 05 Feb 2018 21:24:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 05 Feb 2018 21:24:50 GMT
CMD ["spiped"]
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
	-	`sha256:ebcea29b17181e1398768de9c3d271c4bc9feafd3e124684716b68a74a71ffb7`  
		Last Modified: Mon, 05 Feb 2018 21:25:17 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52e464230ae23a26fad85a126550b6cddfb7d3d509d03fe152e762acf8788404`  
		Last Modified: Mon, 05 Feb 2018 21:25:17 GMT  
		Size: 996.8 KB (996771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:458b6627b723b53168b1b6cdfe7169177ce7721b50a717e8bed23b84e0398d2f`  
		Last Modified: Mon, 05 Feb 2018 21:25:16 GMT  
		Size: 73.6 KB (73579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1381ee2cdbbe69229f1ba947a7ba42c09bf381d588cbbdae76395f2719fb62f9`  
		Last Modified: Mon, 05 Feb 2018 21:25:16 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bf767e586fd621738ede96ee96fb69b8fa93f6bd46825e73fe3f0eea5f0ba44`  
		Last Modified: Mon, 05 Feb 2018 21:25:17 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6-alpine` - linux; s390x

```console
$ docker pull spiped@sha256:81cb8486cf3c2d1781c8178206bfbf7b800997c54a4d955872eb5ab8254cf3fa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3322086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed2cf1451ed98be049b9936362cac8c183b2e18bbebd98f495de5ed38aefc5c8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Tue, 06 Feb 2018 15:14:30 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Tue, 06 Feb 2018 15:14:33 GMT
RUN apk add --no-cache libssl1.0
# Tue, 06 Feb 2018 15:14:33 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 06 Feb 2018 15:14:33 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 06 Feb 2018 15:14:33 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 06 Feb 2018 15:14:45 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Tue, 06 Feb 2018 15:14:45 GMT
VOLUME [/spiped]
# Tue, 06 Feb 2018 15:14:45 GMT
WORKDIR /spiped
# Tue, 06 Feb 2018 15:14:46 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Tue, 06 Feb 2018 15:14:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Feb 2018 15:14:46 GMT
CMD ["spiped"]
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
	-	`sha256:d0c59bb61a5c29bfa87dbc93965bddc1ad693c64046eab16f3a7e4e8a87e73c0`  
		Last Modified: Tue, 06 Feb 2018 15:14:57 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1617e236ae643c033c209f92dd6687671fd7519ab032c64878b2280964dd2bd`  
		Last Modified: Tue, 06 Feb 2018 15:14:57 GMT  
		Size: 1.1 MB (1060501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cfa06ceb4635723b8014c520dadd66d6a1cc38e2a23858b7783d58894ed7b4a`  
		Last Modified: Tue, 06 Feb 2018 15:14:57 GMT  
		Size: 74.5 KB (74495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e10b29ee309a42d398d1a0a54d21019276a456b4c09b15f06a4b1061e91ec050`  
		Last Modified: Tue, 06 Feb 2018 15:14:57 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af7f652380aee7524afc76bcb19b4f99e6cdf80b3938c6661f4445d8cf8ad37b`  
		Last Modified: Tue, 06 Feb 2018 15:14:57 GMT  
		Size: 339.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1-alpine`

```console
$ docker pull spiped@sha256:210fc9804c4efffa8db75bcab86ecc0d85886abbed0a32db318c43835f5d8d10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `spiped:1-alpine` - linux; amd64

```console
$ docker pull spiped@sha256:e9a0ff882297d94464f7b14fce24288c1eedb3f83fb9102ee1a36da898e7fdb4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3434759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cd572943d5beac33545b8402ca08f9e66ce9c793b379ac201436f9b4c8e1240`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Mon, 05 Feb 2018 20:34:18 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Mon, 05 Feb 2018 20:34:22 GMT
RUN apk add --no-cache libssl1.0
# Mon, 05 Feb 2018 20:34:31 GMT
ENV SPIPED_VERSION=1.6.0
# Mon, 05 Feb 2018 20:34:32 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Mon, 05 Feb 2018 20:34:32 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Mon, 05 Feb 2018 20:34:43 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Mon, 05 Feb 2018 20:34:43 GMT
VOLUME [/spiped]
# Mon, 05 Feb 2018 20:34:43 GMT
WORKDIR /spiped
# Mon, 05 Feb 2018 20:34:44 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Mon, 05 Feb 2018 20:34:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 05 Feb 2018 20:34:44 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:579453cbf5a9c56d30cd28781b8b83af38aa41419a99ede6e95f1e2341c56530`  
		Last Modified: Mon, 05 Feb 2018 20:35:04 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6a82e07596e967ea2b7473cd4be5ce0cc3677ab2e45b428e42c89774f9849a6`  
		Last Modified: Mon, 05 Feb 2018 20:35:05 GMT  
		Size: 1.3 MB (1289091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8e55becc55cf3ec1ac9e9f12a3961a7077844d97f1bb9e2ae369912e8b7e48f`  
		Last Modified: Mon, 05 Feb 2018 20:35:05 GMT  
		Size: 78.4 KB (78444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cb6911fddb99fde303ef54f4699ad5f471e894209ca0433edf0ec1b0ffac86d`  
		Last Modified: Mon, 05 Feb 2018 20:35:06 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fafebd19967290ebf10619a1062241f1a5e97c5aeecfa24798c713995b4769d9`  
		Last Modified: Mon, 05 Feb 2018 20:35:05 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1-alpine` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:a0709947e112921c9114bb95476a9fbb36e4e5f794a210e52b238c17e9b7e61a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2982031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8754a63d2315018df22cc930b35ab0ac07b38fa25f6e817f280d224c34c40217`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Mon, 05 Feb 2018 20:53:56 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Mon, 05 Feb 2018 20:54:00 GMT
RUN apk add --no-cache libssl1.0
# Mon, 05 Feb 2018 20:54:00 GMT
ENV SPIPED_VERSION=1.6.0
# Mon, 05 Feb 2018 20:54:01 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Mon, 05 Feb 2018 20:54:01 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Mon, 05 Feb 2018 20:54:31 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Mon, 05 Feb 2018 20:54:32 GMT
VOLUME [/spiped]
# Mon, 05 Feb 2018 20:54:33 GMT
WORKDIR /spiped
# Mon, 05 Feb 2018 20:54:33 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Mon, 05 Feb 2018 20:54:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 05 Feb 2018 20:54:35 GMT
CMD ["spiped"]
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
	-	`sha256:41aa6526a175be1ac361f233d5d07a78ed4f636cc22c43da3f95a8948626a1cb`  
		Last Modified: Mon, 05 Feb 2018 20:54:54 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ce0808dd8eb595610ea0ca6154ff062d92598959478ed809f5734ee47a646d`  
		Last Modified: Mon, 05 Feb 2018 20:54:54 GMT  
		Size: 926.5 KB (926453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c61d5b88c325a7e86915d1053eef70b50ff38c0d0c17120fb822cb9175fc1565`  
		Last Modified: Mon, 05 Feb 2018 20:54:53 GMT  
		Size: 64.9 KB (64857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e15bb02a583886a931b410249b9968246ec9c3331999fa022af3770a25f0faa`  
		Last Modified: Mon, 05 Feb 2018 20:54:55 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:702795f6b0fe6c325d7d4f63fb7183eb2c9c09672cd380a6cc5efb70bf9dc758`  
		Last Modified: Mon, 05 Feb 2018 20:54:53 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1-alpine` - linux; 386

```console
$ docker pull spiped@sha256:9e23386b3e37432cc8337a9538c477b612f2a2dee511c440439c9461c92d0e44
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3330666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4adb175adc4b24c53ff40b3544591fcd0d77c02ab1673a982ea299551f38fc75`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Tue, 06 Feb 2018 06:47:02 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Tue, 06 Feb 2018 06:47:06 GMT
RUN apk add --no-cache libssl1.0
# Tue, 06 Feb 2018 06:47:06 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 06 Feb 2018 06:47:06 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 06 Feb 2018 06:47:06 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 06 Feb 2018 06:47:31 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Tue, 06 Feb 2018 06:47:31 GMT
VOLUME [/spiped]
# Tue, 06 Feb 2018 06:47:32 GMT
WORKDIR /spiped
# Tue, 06 Feb 2018 06:47:32 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Tue, 06 Feb 2018 06:47:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Feb 2018 06:47:33 GMT
CMD ["spiped"]
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
	-	`sha256:cea3a81a9f3f2e1a91b7838353816a4a9224f4fc8704e07c92e609b51b40c4ca`  
		Last Modified: Tue, 06 Feb 2018 06:53:09 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03ad7fec2ff671f6246b416be1b61521ac001170dfd25d457a6fe42b2a52a9b3`  
		Last Modified: Tue, 06 Feb 2018 06:53:10 GMT  
		Size: 1.1 MB (1115353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa6f6a7f0631666ee2082d59099dc4dfc8263b4bdfe518f506ecc2c6e92dc864`  
		Last Modified: Tue, 06 Feb 2018 06:53:10 GMT  
		Size: 87.2 KB (87233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d8d933c5a85624c1bfcdac30ac84f469067ebbe8a342f5f8548b35941bb2c90`  
		Last Modified: Tue, 06 Feb 2018 06:53:09 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2efdccc7822aa213c9a4f665373401e5c8b1bbc293d8b294fb1b084f862bf8b4`  
		Last Modified: Tue, 06 Feb 2018 06:53:09 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1-alpine` - linux; ppc64le

```console
$ docker pull spiped@sha256:2a33a777212d286782a3ca3755c9cd478545b6f023a84dbf8c57ce31a8856df0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3153750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa2383fc8338bd43097a9b3771c553d65e7ac16b245e6272c22704a764f62edb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Mon, 05 Feb 2018 21:23:50 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Mon, 05 Feb 2018 21:24:00 GMT
RUN apk add --no-cache libssl1.0
# Mon, 05 Feb 2018 21:24:02 GMT
ENV SPIPED_VERSION=1.6.0
# Mon, 05 Feb 2018 21:24:03 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Mon, 05 Feb 2018 21:24:05 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Mon, 05 Feb 2018 21:24:39 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Mon, 05 Feb 2018 21:24:41 GMT
VOLUME [/spiped]
# Mon, 05 Feb 2018 21:24:43 GMT
WORKDIR /spiped
# Mon, 05 Feb 2018 21:24:46 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Mon, 05 Feb 2018 21:24:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 05 Feb 2018 21:24:50 GMT
CMD ["spiped"]
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
	-	`sha256:ebcea29b17181e1398768de9c3d271c4bc9feafd3e124684716b68a74a71ffb7`  
		Last Modified: Mon, 05 Feb 2018 21:25:17 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52e464230ae23a26fad85a126550b6cddfb7d3d509d03fe152e762acf8788404`  
		Last Modified: Mon, 05 Feb 2018 21:25:17 GMT  
		Size: 996.8 KB (996771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:458b6627b723b53168b1b6cdfe7169177ce7721b50a717e8bed23b84e0398d2f`  
		Last Modified: Mon, 05 Feb 2018 21:25:16 GMT  
		Size: 73.6 KB (73579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1381ee2cdbbe69229f1ba947a7ba42c09bf381d588cbbdae76395f2719fb62f9`  
		Last Modified: Mon, 05 Feb 2018 21:25:16 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bf767e586fd621738ede96ee96fb69b8fa93f6bd46825e73fe3f0eea5f0ba44`  
		Last Modified: Mon, 05 Feb 2018 21:25:17 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1-alpine` - linux; s390x

```console
$ docker pull spiped@sha256:81cb8486cf3c2d1781c8178206bfbf7b800997c54a4d955872eb5ab8254cf3fa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3322086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed2cf1451ed98be049b9936362cac8c183b2e18bbebd98f495de5ed38aefc5c8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Tue, 06 Feb 2018 15:14:30 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Tue, 06 Feb 2018 15:14:33 GMT
RUN apk add --no-cache libssl1.0
# Tue, 06 Feb 2018 15:14:33 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 06 Feb 2018 15:14:33 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 06 Feb 2018 15:14:33 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 06 Feb 2018 15:14:45 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Tue, 06 Feb 2018 15:14:45 GMT
VOLUME [/spiped]
# Tue, 06 Feb 2018 15:14:45 GMT
WORKDIR /spiped
# Tue, 06 Feb 2018 15:14:46 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Tue, 06 Feb 2018 15:14:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Feb 2018 15:14:46 GMT
CMD ["spiped"]
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
	-	`sha256:d0c59bb61a5c29bfa87dbc93965bddc1ad693c64046eab16f3a7e4e8a87e73c0`  
		Last Modified: Tue, 06 Feb 2018 15:14:57 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1617e236ae643c033c209f92dd6687671fd7519ab032c64878b2280964dd2bd`  
		Last Modified: Tue, 06 Feb 2018 15:14:57 GMT  
		Size: 1.1 MB (1060501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cfa06ceb4635723b8014c520dadd66d6a1cc38e2a23858b7783d58894ed7b4a`  
		Last Modified: Tue, 06 Feb 2018 15:14:57 GMT  
		Size: 74.5 KB (74495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e10b29ee309a42d398d1a0a54d21019276a456b4c09b15f06a4b1061e91ec050`  
		Last Modified: Tue, 06 Feb 2018 15:14:57 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af7f652380aee7524afc76bcb19b4f99e6cdf80b3938c6661f4445d8cf8ad37b`  
		Last Modified: Tue, 06 Feb 2018 15:14:57 GMT  
		Size: 339.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:alpine`

```console
$ docker pull spiped@sha256:210fc9804c4efffa8db75bcab86ecc0d85886abbed0a32db318c43835f5d8d10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `spiped:alpine` - linux; amd64

```console
$ docker pull spiped@sha256:e9a0ff882297d94464f7b14fce24288c1eedb3f83fb9102ee1a36da898e7fdb4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3434759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cd572943d5beac33545b8402ca08f9e66ce9c793b379ac201436f9b4c8e1240`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Mon, 05 Feb 2018 20:34:18 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Mon, 05 Feb 2018 20:34:22 GMT
RUN apk add --no-cache libssl1.0
# Mon, 05 Feb 2018 20:34:31 GMT
ENV SPIPED_VERSION=1.6.0
# Mon, 05 Feb 2018 20:34:32 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Mon, 05 Feb 2018 20:34:32 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Mon, 05 Feb 2018 20:34:43 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Mon, 05 Feb 2018 20:34:43 GMT
VOLUME [/spiped]
# Mon, 05 Feb 2018 20:34:43 GMT
WORKDIR /spiped
# Mon, 05 Feb 2018 20:34:44 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Mon, 05 Feb 2018 20:34:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 05 Feb 2018 20:34:44 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:579453cbf5a9c56d30cd28781b8b83af38aa41419a99ede6e95f1e2341c56530`  
		Last Modified: Mon, 05 Feb 2018 20:35:04 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6a82e07596e967ea2b7473cd4be5ce0cc3677ab2e45b428e42c89774f9849a6`  
		Last Modified: Mon, 05 Feb 2018 20:35:05 GMT  
		Size: 1.3 MB (1289091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8e55becc55cf3ec1ac9e9f12a3961a7077844d97f1bb9e2ae369912e8b7e48f`  
		Last Modified: Mon, 05 Feb 2018 20:35:05 GMT  
		Size: 78.4 KB (78444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cb6911fddb99fde303ef54f4699ad5f471e894209ca0433edf0ec1b0ffac86d`  
		Last Modified: Mon, 05 Feb 2018 20:35:06 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fafebd19967290ebf10619a1062241f1a5e97c5aeecfa24798c713995b4769d9`  
		Last Modified: Mon, 05 Feb 2018 20:35:05 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:alpine` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:a0709947e112921c9114bb95476a9fbb36e4e5f794a210e52b238c17e9b7e61a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2982031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8754a63d2315018df22cc930b35ab0ac07b38fa25f6e817f280d224c34c40217`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Mon, 05 Feb 2018 20:53:56 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Mon, 05 Feb 2018 20:54:00 GMT
RUN apk add --no-cache libssl1.0
# Mon, 05 Feb 2018 20:54:00 GMT
ENV SPIPED_VERSION=1.6.0
# Mon, 05 Feb 2018 20:54:01 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Mon, 05 Feb 2018 20:54:01 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Mon, 05 Feb 2018 20:54:31 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Mon, 05 Feb 2018 20:54:32 GMT
VOLUME [/spiped]
# Mon, 05 Feb 2018 20:54:33 GMT
WORKDIR /spiped
# Mon, 05 Feb 2018 20:54:33 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Mon, 05 Feb 2018 20:54:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 05 Feb 2018 20:54:35 GMT
CMD ["spiped"]
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
	-	`sha256:41aa6526a175be1ac361f233d5d07a78ed4f636cc22c43da3f95a8948626a1cb`  
		Last Modified: Mon, 05 Feb 2018 20:54:54 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ce0808dd8eb595610ea0ca6154ff062d92598959478ed809f5734ee47a646d`  
		Last Modified: Mon, 05 Feb 2018 20:54:54 GMT  
		Size: 926.5 KB (926453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c61d5b88c325a7e86915d1053eef70b50ff38c0d0c17120fb822cb9175fc1565`  
		Last Modified: Mon, 05 Feb 2018 20:54:53 GMT  
		Size: 64.9 KB (64857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e15bb02a583886a931b410249b9968246ec9c3331999fa022af3770a25f0faa`  
		Last Modified: Mon, 05 Feb 2018 20:54:55 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:702795f6b0fe6c325d7d4f63fb7183eb2c9c09672cd380a6cc5efb70bf9dc758`  
		Last Modified: Mon, 05 Feb 2018 20:54:53 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:alpine` - linux; 386

```console
$ docker pull spiped@sha256:9e23386b3e37432cc8337a9538c477b612f2a2dee511c440439c9461c92d0e44
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3330666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4adb175adc4b24c53ff40b3544591fcd0d77c02ab1673a982ea299551f38fc75`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Tue, 06 Feb 2018 06:47:02 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Tue, 06 Feb 2018 06:47:06 GMT
RUN apk add --no-cache libssl1.0
# Tue, 06 Feb 2018 06:47:06 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 06 Feb 2018 06:47:06 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 06 Feb 2018 06:47:06 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 06 Feb 2018 06:47:31 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Tue, 06 Feb 2018 06:47:31 GMT
VOLUME [/spiped]
# Tue, 06 Feb 2018 06:47:32 GMT
WORKDIR /spiped
# Tue, 06 Feb 2018 06:47:32 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Tue, 06 Feb 2018 06:47:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Feb 2018 06:47:33 GMT
CMD ["spiped"]
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
	-	`sha256:cea3a81a9f3f2e1a91b7838353816a4a9224f4fc8704e07c92e609b51b40c4ca`  
		Last Modified: Tue, 06 Feb 2018 06:53:09 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03ad7fec2ff671f6246b416be1b61521ac001170dfd25d457a6fe42b2a52a9b3`  
		Last Modified: Tue, 06 Feb 2018 06:53:10 GMT  
		Size: 1.1 MB (1115353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa6f6a7f0631666ee2082d59099dc4dfc8263b4bdfe518f506ecc2c6e92dc864`  
		Last Modified: Tue, 06 Feb 2018 06:53:10 GMT  
		Size: 87.2 KB (87233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d8d933c5a85624c1bfcdac30ac84f469067ebbe8a342f5f8548b35941bb2c90`  
		Last Modified: Tue, 06 Feb 2018 06:53:09 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2efdccc7822aa213c9a4f665373401e5c8b1bbc293d8b294fb1b084f862bf8b4`  
		Last Modified: Tue, 06 Feb 2018 06:53:09 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:alpine` - linux; ppc64le

```console
$ docker pull spiped@sha256:2a33a777212d286782a3ca3755c9cd478545b6f023a84dbf8c57ce31a8856df0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3153750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa2383fc8338bd43097a9b3771c553d65e7ac16b245e6272c22704a764f62edb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Mon, 05 Feb 2018 21:23:50 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Mon, 05 Feb 2018 21:24:00 GMT
RUN apk add --no-cache libssl1.0
# Mon, 05 Feb 2018 21:24:02 GMT
ENV SPIPED_VERSION=1.6.0
# Mon, 05 Feb 2018 21:24:03 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Mon, 05 Feb 2018 21:24:05 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Mon, 05 Feb 2018 21:24:39 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Mon, 05 Feb 2018 21:24:41 GMT
VOLUME [/spiped]
# Mon, 05 Feb 2018 21:24:43 GMT
WORKDIR /spiped
# Mon, 05 Feb 2018 21:24:46 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Mon, 05 Feb 2018 21:24:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 05 Feb 2018 21:24:50 GMT
CMD ["spiped"]
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
	-	`sha256:ebcea29b17181e1398768de9c3d271c4bc9feafd3e124684716b68a74a71ffb7`  
		Last Modified: Mon, 05 Feb 2018 21:25:17 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52e464230ae23a26fad85a126550b6cddfb7d3d509d03fe152e762acf8788404`  
		Last Modified: Mon, 05 Feb 2018 21:25:17 GMT  
		Size: 996.8 KB (996771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:458b6627b723b53168b1b6cdfe7169177ce7721b50a717e8bed23b84e0398d2f`  
		Last Modified: Mon, 05 Feb 2018 21:25:16 GMT  
		Size: 73.6 KB (73579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1381ee2cdbbe69229f1ba947a7ba42c09bf381d588cbbdae76395f2719fb62f9`  
		Last Modified: Mon, 05 Feb 2018 21:25:16 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bf767e586fd621738ede96ee96fb69b8fa93f6bd46825e73fe3f0eea5f0ba44`  
		Last Modified: Mon, 05 Feb 2018 21:25:17 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:alpine` - linux; s390x

```console
$ docker pull spiped@sha256:81cb8486cf3c2d1781c8178206bfbf7b800997c54a4d955872eb5ab8254cf3fa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3322086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed2cf1451ed98be049b9936362cac8c183b2e18bbebd98f495de5ed38aefc5c8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Tue, 06 Feb 2018 15:14:30 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Tue, 06 Feb 2018 15:14:33 GMT
RUN apk add --no-cache libssl1.0
# Tue, 06 Feb 2018 15:14:33 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 06 Feb 2018 15:14:33 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 06 Feb 2018 15:14:33 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 06 Feb 2018 15:14:45 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Tue, 06 Feb 2018 15:14:45 GMT
VOLUME [/spiped]
# Tue, 06 Feb 2018 15:14:45 GMT
WORKDIR /spiped
# Tue, 06 Feb 2018 15:14:46 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Tue, 06 Feb 2018 15:14:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Feb 2018 15:14:46 GMT
CMD ["spiped"]
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
	-	`sha256:d0c59bb61a5c29bfa87dbc93965bddc1ad693c64046eab16f3a7e4e8a87e73c0`  
		Last Modified: Tue, 06 Feb 2018 15:14:57 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1617e236ae643c033c209f92dd6687671fd7519ab032c64878b2280964dd2bd`  
		Last Modified: Tue, 06 Feb 2018 15:14:57 GMT  
		Size: 1.1 MB (1060501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cfa06ceb4635723b8014c520dadd66d6a1cc38e2a23858b7783d58894ed7b4a`  
		Last Modified: Tue, 06 Feb 2018 15:14:57 GMT  
		Size: 74.5 KB (74495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e10b29ee309a42d398d1a0a54d21019276a456b4c09b15f06a4b1061e91ec050`  
		Last Modified: Tue, 06 Feb 2018 15:14:57 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af7f652380aee7524afc76bcb19b4f99e6cdf80b3938c6661f4445d8cf8ad37b`  
		Last Modified: Tue, 06 Feb 2018 15:14:57 GMT  
		Size: 339.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:latest`

```console
$ docker pull spiped@sha256:9feb56d7d5a1e081c3cc2f4cd7e8ff8855c8c2892d93538c2b13dc70ec0409c7
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
$ docker pull spiped@sha256:43e922a428bd3129127cc11684fe5d16d2ea29616909bca177249fba8343c54f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (54020453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5aaca4c5f8da4bd1aa9fe264e24ebf42da9026f9269da7559af01161e3b4cec3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 15 Feb 2018 01:58:24 GMT
ADD file:7d3b21b18d7bc6d6db1349979cf0e68073647e90c892aebab0da5d679b5550eb in / 
# Thu, 15 Feb 2018 02:01:04 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:50:53 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Thu, 15 Feb 2018 07:51:00 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:51:00 GMT
ENV SPIPED_VERSION=1.6.0
# Thu, 15 Feb 2018 07:51:01 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Thu, 15 Feb 2018 07:51:01 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Thu, 15 Feb 2018 07:51:24 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 07:51:24 GMT
VOLUME [/spiped]
# Thu, 15 Feb 2018 07:51:25 GMT
WORKDIR /spiped
# Thu, 15 Feb 2018 07:51:26 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Thu, 15 Feb 2018 07:51:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 07:51:27 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:3e731ddb7fc902c6fc10f00cd7f99f11d63914692bd8c2816a29e6d016353932`  
		Last Modified: Thu, 15 Feb 2018 02:26:01 GMT  
		Size: 45.1 MB (45132625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24a5cad19fbb1499a86dec02b73042c413d9cf70c445750a0a20e654d83dbc8d`  
		Last Modified: Thu, 15 Feb 2018 07:51:52 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a87fb8f7eb19770b75d0e3c6a702d9f6a436692e974a1a3fba70b6102b6ab84a`  
		Last Modified: Thu, 15 Feb 2018 07:51:52 GMT  
		Size: 2.1 MB (2091877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d9dfeb032a99e2b18395f9b5c0db2cb02ef1755c4be7fa50104c5dcc0786d6c`  
		Last Modified: Thu, 15 Feb 2018 07:51:54 GMT  
		Size: 6.8 MB (6793765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4fde2bf878bd4dc71f81e1e866cf1f2b4a4f028f44381d273e540aa7cdb196d`  
		Last Modified: Thu, 15 Feb 2018 07:51:52 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c23fff678990ed81497acb956c013d11946d3c5f2fc61f5ed09fd7ad9677ac46`  
		Last Modified: Thu, 15 Feb 2018 07:51:52 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; arm variant v5

```console
$ docker pull spiped@sha256:560c522f7249dfd37827a2e2949fe8b576705c67364683d86bd4c922f025ede6
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.5 MB (51511664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9769e7253670180c4f12c80d5fefa56744a47a2195a101d68c1ab85b1334a50`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 12 Dec 2017 21:01:46 GMT
ADD file:f8517f9f02293861c50bd41f708eb4f907ae9a1d2f9b6c917602b677f174fbc0 in / 
# Tue, 12 Dec 2017 21:01:46 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 00:04:00 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 13 Dec 2017 00:04:08 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 00:04:08 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 13 Dec 2017 00:04:09 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 13 Dec 2017 00:04:09 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 13 Dec 2017 00:04:42 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 13 Dec 2017 00:04:42 GMT
VOLUME [/spiped]
# Wed, 13 Dec 2017 00:04:42 GMT
WORKDIR /spiped
# Wed, 13 Dec 2017 00:04:43 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 13 Dec 2017 00:04:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Dec 2017 00:04:43 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:b858507a828940bb4f637f38191bc4c62a00a6857fcddefc11c003815277c27d`  
		Last Modified: Tue, 12 Dec 2017 21:11:55 GMT  
		Size: 43.8 MB (43809184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d29c9d84d181a32bb935d6274e885098643d3df2d49c7becb0def9d74ea83a8d`  
		Last Modified: Wed, 13 Dec 2017 00:05:04 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2784ce219fd686745bc89565de1bed7426f9fb23a2a6541cd17f7bac449f817`  
		Last Modified: Wed, 13 Dec 2017 00:05:05 GMT  
		Size: 1.8 MB (1833659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55cd10d34fdcc69b3045f44357d19c5aa5ae6aa89acf6c3d0c2b5e64212d6d0f`  
		Last Modified: Wed, 13 Dec 2017 00:05:07 GMT  
		Size: 5.9 MB (5866607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c95553899cf9e054b7d6773e59f23b9bb24ffd0052d4925f71840efde4e558a`  
		Last Modified: Wed, 13 Dec 2017 00:05:04 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f0b0214c272ec135649ff6d2d37966033419095a1d92ca26c77652d4c638aae`  
		Last Modified: Wed, 13 Dec 2017 00:05:05 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; arm variant v7

```console
$ docker pull spiped@sha256:f1fe36eeb4bce082bd615578defbb03aa28f38f49d6b83dd99b36dd32e412881
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.2 MB (49247593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a3663a7643a4a341ac04fd2079b285455a6e6a2327f075598dc209096f8c70e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 12 Dec 2017 13:32:59 GMT
ADD file:d49e67cdc6ae27f43c5c002d96bff764fd43188dd7e8036f5d5f8c44eb12dcad in / 
# Tue, 12 Dec 2017 13:32:59 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 14:06:02 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 12 Dec 2017 14:06:27 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 14:06:30 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 12 Dec 2017 14:06:31 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 12 Dec 2017 14:06:41 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 12 Dec 2017 14:07:25 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Dec 2017 14:07:26 GMT
VOLUME [/spiped]
# Tue, 12 Dec 2017 14:07:26 GMT
WORKDIR /spiped
# Tue, 12 Dec 2017 14:07:27 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Tue, 12 Dec 2017 14:07:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 14:07:28 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:0e10ef01c84000f6f5865b480436e689e2d437a4a8b63b01d5ce85532872b636`  
		Last Modified: Tue, 12 Dec 2017 13:44:34 GMT  
		Size: 41.8 MB (41849695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28f4eeafc969c7869503ed9504a0f077a000cc5e3501a41990be9706bf7fd046`  
		Last Modified: Tue, 12 Dec 2017 14:08:06 GMT  
		Size: 1.7 KB (1734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5734800193806a736ac5fce0bc6e3a01a1dc0704ff259887e1ed40dea801216a`  
		Last Modified: Tue, 12 Dec 2017 14:08:05 GMT  
		Size: 1.8 MB (1774924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06843ad12ae1c89b0943e8cd167a4c9fbc1a56c8b42edff68192ac0fbc5db7f9`  
		Last Modified: Tue, 12 Dec 2017 14:08:08 GMT  
		Size: 5.6 MB (5620761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b299e4942db985c9d10128672c0de1552f3171bbf8db1c21d6fdfd3ac3f790b1`  
		Last Modified: Tue, 12 Dec 2017 14:08:05 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92bccda6a4978f6b1f47d4042f3323e284d9aa4b1a5b7059ac0f26ad60853885`  
		Last Modified: Tue, 12 Dec 2017 14:08:05 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:d514b859091e1e5e5d467494856093b7724758d252481e1e7170e008e0a6d121
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.9 MB (50891969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ca054154878db78448c83d3b685358836d23c8d79d39f9563fe8e5052d44078`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 12 Dec 2017 18:33:14 GMT
ADD file:ae07a2e0bd59c986cf9cec3d7ce9a3db8f8034bac7b69938557e472980c70cdc in / 
# Tue, 12 Dec 2017 18:33:14 GMT
CMD ["bash"]
# Thu, 14 Dec 2017 20:53:55 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Thu, 14 Dec 2017 20:54:06 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 20:54:06 GMT
ENV SPIPED_VERSION=1.6.0
# Thu, 14 Dec 2017 20:54:07 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Thu, 14 Dec 2017 20:54:07 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Thu, 14 Dec 2017 20:55:37 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Thu, 14 Dec 2017 20:55:38 GMT
VOLUME [/spiped]
# Thu, 14 Dec 2017 20:55:39 GMT
WORKDIR /spiped
# Thu, 14 Dec 2017 20:55:40 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Thu, 14 Dec 2017 20:55:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Dec 2017 20:55:41 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:91ea0aed359111bf5beb30e4bebd50fac25bc40a69e1bb3bf0f8e3c6dcd5fa7f`  
		Last Modified: Tue, 12 Dec 2017 18:47:08 GMT  
		Size: 42.9 MB (42912813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5644974e24dbe41529271b1c148cc836147096fc1aaafc2e402b515fd6dce58`  
		Last Modified: Thu, 14 Dec 2017 20:56:12 GMT  
		Size: 1.7 KB (1749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b154fa51ba797d27e38414d2fd79bebd72df7f8e36dee8fe659bc5c7dbc213c9`  
		Last Modified: Thu, 14 Dec 2017 20:56:13 GMT  
		Size: 1.8 MB (1825814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:778e01042fcf58d2ff94428ce5e5f789e773f5c607d5b7e80dba0a605a3ebf69`  
		Last Modified: Thu, 14 Dec 2017 20:56:17 GMT  
		Size: 6.2 MB (6151147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83a2207126ecfe5f6cf30c933e19e6fdfed6935fdb664138d69798f97223cb84`  
		Last Modified: Thu, 14 Dec 2017 20:56:12 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ead75dcf5effda7e903ad973ed5d9bb3b0e1b3d2b8f7fe8428a5f75835b18f`  
		Last Modified: Thu, 14 Dec 2017 20:56:12 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; 386

```console
$ docker pull spiped@sha256:d25946f1efb7003973193f2c3d645254e80f68ba8c47d37b2243a2655a85b138
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.1 MB (58131701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3965a5533a4e2fd1fe8a2e3f54566e503d546b7b74755d264dab1957e1c9442`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 12 Dec 2017 14:28:39 GMT
ADD file:a6cfca6b73e41be73fc4e964d25ccb94f9c3538d1bd6623f5f203d3594167a5f in / 
# Tue, 12 Dec 2017 14:28:39 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 14:43:58 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 13 Dec 2017 14:44:15 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 14:44:17 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 13 Dec 2017 14:44:17 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 13 Dec 2017 14:44:17 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 13 Dec 2017 14:45:02 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 13 Dec 2017 14:45:02 GMT
VOLUME [/spiped]
# Wed, 13 Dec 2017 14:45:03 GMT
WORKDIR /spiped
# Wed, 13 Dec 2017 14:45:03 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 13 Dec 2017 14:45:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Dec 2017 14:45:12 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:50d72515450fee13bee4f8be703ed400c6fc2f1bc9a5699f1d6917eb6dde6aa0`  
		Last Modified: Tue, 12 Dec 2017 15:01:52 GMT  
		Size: 45.8 MB (45827066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e809914ee658c1e958ce0ca27daab31747785aff9990473948f19241636a663e`  
		Last Modified: Wed, 13 Dec 2017 14:45:40 GMT  
		Size: 1.7 KB (1736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3437201f8fbabb85f5392c2be04f09e2c1c370bcd31fffc76f78e39a08635e5d`  
		Last Modified: Wed, 13 Dec 2017 14:45:41 GMT  
		Size: 2.1 MB (2084828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ff97210e5f69e3a11b38fff94c5f5bc9cbc5444f4e383437556f2d0eeba5fe`  
		Last Modified: Wed, 13 Dec 2017 14:45:44 GMT  
		Size: 10.2 MB (10217624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd2569643eda9bf4c944b52e7fa9287c26a78bcc1deb70ab25a0d6d6ccb25a35`  
		Last Modified: Wed, 13 Dec 2017 14:45:41 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c353cb4873ed0d112b2f6b37b9554b1a4ee4c6a0abf53b07cc12a903c5b3883`  
		Last Modified: Wed, 13 Dec 2017 14:45:41 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; ppc64le

```console
$ docker pull spiped@sha256:1ce4162196fc8639df95936449b41b56646dfa95f880d8ec1dac85a92e6e968c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53916024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:573e7d562f3bc2c7cd52c3c3e5935109a3982a395654c99e776d0e315f5c9545`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 15 Feb 2018 01:37:41 GMT
ADD file:7e6ef12294e8694d6e9f12ca4b08b7d37810560a9354608f3c26da2d7bb58ee7 in / 
# Thu, 15 Feb 2018 01:37:43 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 08:13:19 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Thu, 15 Feb 2018 08:13:49 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 08:13:52 GMT
ENV SPIPED_VERSION=1.6.0
# Thu, 15 Feb 2018 08:13:54 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Thu, 15 Feb 2018 08:13:57 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Thu, 15 Feb 2018 08:20:39 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 08:20:41 GMT
VOLUME [/spiped]
# Thu, 15 Feb 2018 08:20:42 GMT
WORKDIR /spiped
# Thu, 15 Feb 2018 08:20:44 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Thu, 15 Feb 2018 08:20:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 08:20:49 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:13243907a6ee503282f5b315b55be9aa688e7041decc7709ce64da512fcd0a07`  
		Last Modified: Thu, 15 Feb 2018 01:45:54 GMT  
		Size: 45.4 MB (45387828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87fed9885cd59e39b87a84bf0669b2e9c409b754b682d018a3e0d464f8499c3e`  
		Last Modified: Thu, 15 Feb 2018 08:21:21 GMT  
		Size: 1.8 KB (1752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b260541306022c318fb8d9f1f27eedd0d0aa9df6c15faa0afbc5b8545b12973f`  
		Last Modified: Thu, 15 Feb 2018 08:21:19 GMT  
		Size: 1.8 MB (1763277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46b7ca3ba94ce00263453334ba6e7e44aa536a8ef14c0f0a3b3fd546beb00976`  
		Last Modified: Thu, 15 Feb 2018 08:21:21 GMT  
		Size: 6.8 MB (6762688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3830e0b97e1124920c6d4e7ef23d6a4f4ff3febdf2b81e8f4137dfdaec3a6c0c`  
		Last Modified: Thu, 15 Feb 2018 08:21:18 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a5acb8e5331f576605151b7e88f58a65012548deb05bcff571afe7a298cc974`  
		Last Modified: Thu, 15 Feb 2018 08:21:19 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; s390x

```console
$ docker pull spiped@sha256:ae1d3faeb61e403faa88a0aefedbf10b8d0eae310bed4049c0db1603719e2b5c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.5 MB (54487214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82558a68fe9af391bc091391661451a353b8e3d8ae9939883f2a3686b97a2590`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 15 Feb 2018 06:24:07 GMT
ADD file:01afc5861263642b3ae4beb3dedd40e7edb1e65d86c4368a502a15247a39a3c1 in / 
# Thu, 15 Feb 2018 06:24:07 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 08:11:27 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Thu, 15 Feb 2018 08:11:30 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 08:11:30 GMT
ENV SPIPED_VERSION=1.6.0
# Thu, 15 Feb 2018 08:11:30 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Thu, 15 Feb 2018 08:11:30 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Thu, 15 Feb 2018 08:11:48 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 08:11:48 GMT
VOLUME [/spiped]
# Thu, 15 Feb 2018 08:11:48 GMT
WORKDIR /spiped
# Thu, 15 Feb 2018 08:11:49 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Thu, 15 Feb 2018 08:11:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 08:11:49 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:964d84d1f29ab606f833ed91af2d80183a542335d5c85f61d55a80b6c2dbdd32`  
		Last Modified: Thu, 15 Feb 2018 01:20:26 GMT  
		Size: 45.0 MB (44971889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:540e73c9e6042eae603cd503fca0a4b6ab864873bdd7d5b1ecb7ceab63325777`  
		Last Modified: Thu, 15 Feb 2018 08:12:04 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5962c6ce67ef6dde575fe3e4266b336ab1e3a4dbc1e104d57bac6bb71fe1501`  
		Last Modified: Thu, 15 Feb 2018 08:12:04 GMT  
		Size: 1.8 MB (1825983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d88f361d354231e047101e04c645abc105175d8fcc5674b0dbd8c2a7d97325`  
		Last Modified: Thu, 15 Feb 2018 08:12:05 GMT  
		Size: 7.7 MB (7687151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b3a3f80aba137cb6ca3f46a37a1146d6d31c65017776ac594cdb56053f5842b`  
		Last Modified: Thu, 15 Feb 2018 08:12:04 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b1ab993db03a5201bc1b399126e93ea874dffeebcc9d5f3ed3112ecebfd097f`  
		Last Modified: Thu, 15 Feb 2018 08:12:04 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
