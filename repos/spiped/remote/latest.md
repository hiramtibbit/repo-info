## `spiped:latest`

```console
$ docker pull spiped@sha256:01a150ade786ac015c1998a4200c0265b4b3081b586f99f609c2b027c473220a
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
$ docker pull spiped@sha256:23885e4ba17cba87e0caa5f4babc426c38f9a752a0138005364ac256c91f5a7e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.6 MB (25560730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3934ce65de83e6eeb2f3145a3927f8dc88ee978ec475e6ab760216806487728f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:59 GMT
ADD file:f8bb9e9954bfe2f550e8a786c4be1dd5fca4a373b82b372b80c163e5640bd5a4 in / 
# Sat, 28 Apr 2018 12:05:00 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 15:31:30 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Sat, 28 Apr 2018 15:31:36 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 15:31:36 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 28 Apr 2018 15:31:37 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 28 Apr 2018 15:31:37 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 28 Apr 2018 15:32:06 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 15:32:07 GMT
VOLUME [/spiped]
# Sat, 28 Apr 2018 15:32:07 GMT
WORKDIR /spiped
# Sat, 28 Apr 2018 15:32:08 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Sat, 28 Apr 2018 15:32:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 28 Apr 2018 15:32:08 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:6c8a025e90b325dd5af06b0297cc1608120a47d4ab0e1cedb26c8cda811091d6`  
		Last Modified: Sat, 28 Apr 2018 12:16:08 GMT  
		Size: 19.3 MB (19286790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6dc99ef703b23a9b7a503b9ceafe37a64b3e971d43c94d30a4c8844a5e967f0`  
		Last Modified: Sat, 28 Apr 2018 15:32:31 GMT  
		Size: 1.7 KB (1734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4480200cf21d8dc50d13f86c490f1299220b2caf1d83e5ab10c3bd361ffb6568`  
		Last Modified: Sat, 28 Apr 2018 15:32:31 GMT  
		Size: 1.6 MB (1564311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:febe5141bf7588eed49ee4a9312cdca0815007cded7ab017c2d0449131d72ee2`  
		Last Modified: Sat, 28 Apr 2018 15:32:33 GMT  
		Size: 4.7 MB (4707416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b09fc5a064e78ca191d61be1a168963352f5f29798406899ec472bbb0e83a27b`  
		Last Modified: Sat, 28 Apr 2018 15:32:31 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62d8eb2319203499f8729cb7181492b9a17a7b37a3233e8a718470eb42259306`  
		Last Modified: Sat, 28 Apr 2018 15:32:31 GMT  
		Size: 350.0 B  
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
