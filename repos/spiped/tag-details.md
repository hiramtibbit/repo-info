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
$ docker pull spiped@sha256:e77c0af1b03aaf11c89a6cccb1526d79a1208e2163e471678af3e303ee072ef3
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
$ docker pull spiped@sha256:b1cd5417dcb7ee075dfeca3a13b8481e0e3a73f93611a2597abfc600af960e78
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.2 MB (30249214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d273dac6a83ca127de021db46b3167597ba036f0caefab2815f9160a9ccc89a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 13 Mar 2018 22:27:37 GMT
ADD file:e3250bb9848f956bdb43b205f1237df0d81a25088c95dbdeb20a1e2baf1d884f in / 
# Tue, 13 Mar 2018 22:27:37 GMT
CMD ["bash"]
# Fri, 16 Mar 2018 05:14:24 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Fri, 16 Mar 2018 05:14:29 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Fri, 16 Mar 2018 05:14:30 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 16 Mar 2018 05:14:30 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 16 Mar 2018 05:14:30 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 16 Mar 2018 05:14:52 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Mar 2018 05:14:52 GMT
VOLUME [/spiped]
# Fri, 16 Mar 2018 05:14:52 GMT
WORKDIR /spiped
# Fri, 16 Mar 2018 05:14:53 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Fri, 16 Mar 2018 05:14:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Mar 2018 05:14:54 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:2a72cbf407d67c7a7a76dd48e432091678e297140dce050ad5eccad918a9f8d6`  
		Last Modified: Tue, 13 Mar 2018 22:54:21 GMT  
		Size: 22.5 MB (22488979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c85e7bfe508752947dfc6bd53a936364875dcbbb4aee04de3b39d3a42c7589d`  
		Last Modified: Fri, 16 Mar 2018 05:25:35 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e029eb83fdc3fedaac48d6e142c79cb690b3aefb824120b491c750814862f15`  
		Last Modified: Fri, 16 Mar 2018 05:25:36 GMT  
		Size: 1.9 MB (1881194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b76332d167441f7510149701ed4c57e526d2ba2b61468c497ad390f3a4719c7a`  
		Last Modified: Fri, 16 Mar 2018 05:25:38 GMT  
		Size: 5.9 MB (5876856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21cc22df52b3f59eb854487bc2b906c9a3f7b5ae81ce3ef23dfaa49ca5ff53fa`  
		Last Modified: Fri, 16 Mar 2018 05:25:35 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f62c048efb6070c28f58aefcf31df9c833ce8ae60da1a2a801e7ce3eef99329`  
		Last Modified: Fri, 16 Mar 2018 05:25:35 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1` - linux; arm variant v5

```console
$ docker pull spiped@sha256:e73f33774e2ba292ad97ab05daa637a8b4747a917c9cee3224b5a36d34c0a9d5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 MB (27751905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d66f9c61e01eec231072c2d369ca21924d4ed747437f35ad2776bdf7bc59ffb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Sat, 28 Apr 2018 08:53:29 GMT
ADD file:ca564f3cd7bd0fee7f6e56d1a55f5f92da6d4bf55ce3bf20ca398e9e95cdf8df in / 
# Sat, 28 Apr 2018 08:53:30 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:15:54 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Sat, 28 Apr 2018 12:16:03 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:16:06 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 28 Apr 2018 12:16:06 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 28 Apr 2018 12:16:06 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 28 Apr 2018 12:16:42 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 12:16:42 GMT
VOLUME [/spiped]
# Sat, 28 Apr 2018 12:16:42 GMT
WORKDIR /spiped
# Sat, 28 Apr 2018 12:16:43 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Sat, 28 Apr 2018 12:16:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 28 Apr 2018 12:16:44 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:b2a4458ef3b9777a47503028af324e4890546ca8e24a86697b3219a6e3069450`  
		Last Modified: Sat, 28 Apr 2018 09:02:15 GMT  
		Size: 21.2 MB (21175666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd77e2a0189b0813d5ed278dcc1b36fe276e866e9895a8f5489789cce856018a`  
		Last Modified: Sat, 28 Apr 2018 12:16:56 GMT  
		Size: 1.7 KB (1735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbdd77005eaff80fd0aaa072639b04f96aea85e011577a61e45fc8def7dc1cee`  
		Last Modified: Sat, 28 Apr 2018 12:16:57 GMT  
		Size: 1.6 MB (1622907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e542922c2498c6d285ef1dc87b0407442129450895b7c36fcb3e9e93653c98a`  
		Last Modified: Sat, 28 Apr 2018 12:16:59 GMT  
		Size: 5.0 MB (4951116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af636ab0005a163dece2ce400259194c3e16e93df87bc6656a05257bf06b032d`  
		Last Modified: Sat, 28 Apr 2018 12:16:56 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f2a42e5e9db654c1853e22ff75c3af104c30717c4b6af84cd4b8e17db3867c1`  
		Last Modified: Sat, 28 Apr 2018 12:16:57 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1` - linux; arm variant v7

```console
$ docker pull spiped@sha256:b177b569caa140ae530cf7924ff2cb797889e09bc0fcd4c49b532e72e12d9f58
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.6 MB (25551321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97245ba6836676a1dd15b195a40a9a410638bbd53dcf050a49bfef0d327692f7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 14 Mar 2018 12:33:12 GMT
ADD file:f766c04443a9148691357e97aad9ecafe1a8b4995a429d01337e669edeb93da2 in / 
# Wed, 14 Mar 2018 12:33:13 GMT
CMD ["bash"]
# Fri, 16 Mar 2018 09:16:44 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Fri, 16 Mar 2018 09:16:50 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Fri, 16 Mar 2018 09:16:50 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 16 Mar 2018 09:16:51 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 16 Mar 2018 09:16:51 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 16 Mar 2018 09:17:21 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Mar 2018 09:17:21 GMT
VOLUME [/spiped]
# Fri, 16 Mar 2018 09:17:22 GMT
WORKDIR /spiped
# Fri, 16 Mar 2018 09:17:23 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Fri, 16 Mar 2018 09:17:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Mar 2018 09:17:23 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:752dd0920056531abfaa5b01106ccd62d69cd92b84449b98f46b15b5b8495ac8`  
		Last Modified: Wed, 14 Mar 2018 12:45:14 GMT  
		Size: 19.3 MB (19277610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdc4eac8a19daef50bd0da1fb37190aa34328b568a5db2c46761b6068a41d472`  
		Last Modified: Fri, 16 Mar 2018 09:17:46 GMT  
		Size: 1.7 KB (1735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52fa8427b553dee849b53d41fc3be26105e612e713e4fa3f32a5bc8485f7b26`  
		Last Modified: Fri, 16 Mar 2018 09:17:45 GMT  
		Size: 1.6 MB (1564131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76a10f42cbe6ac288076b2959ce554e5d88568aea01bbd204448d4bdbcfba82f`  
		Last Modified: Fri, 16 Mar 2018 09:17:47 GMT  
		Size: 4.7 MB (4707365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea50dc5c9df274025fc092cd134f8312f5ff1330e3de8023458782b6abddbad6`  
		Last Modified: Fri, 16 Mar 2018 09:17:45 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1ac53b1bf13ac1051b1757aae37341c682b8d451a393e19f35a38b1ed0170e6`  
		Last Modified: Fri, 16 Mar 2018 09:17:45 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:203e47343fc1caffe5b193dd76b9719aa387b1012f506e640a92fbbed253981c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 MB (27190241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:365d7bd9653e6c84cea9a3d57870fffc11f69ae66ab29ec25c905245af1d5f85`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 14 Mar 2018 17:31:57 GMT
ADD file:c8a9419b2fbc1297f28b404507a39054e101a6f21f15c352b351cab19067cb4f in / 
# Wed, 14 Mar 2018 17:31:57 GMT
CMD ["bash"]
# Fri, 16 Mar 2018 19:54:20 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Fri, 16 Mar 2018 19:54:31 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Fri, 16 Mar 2018 19:54:32 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 16 Mar 2018 19:54:32 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 16 Mar 2018 19:54:33 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 16 Mar 2018 19:56:04 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Mar 2018 19:56:05 GMT
VOLUME [/spiped]
# Fri, 16 Mar 2018 19:56:05 GMT
WORKDIR /spiped
# Fri, 16 Mar 2018 19:56:06 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Fri, 16 Mar 2018 19:56:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Mar 2018 19:56:08 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:fe48c4e9ee8492678b1070a971759d407b15524c49c40762b590ba4b52766dde`  
		Last Modified: Wed, 14 Mar 2018 17:47:11 GMT  
		Size: 20.3 MB (20337203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bf14a782f2ce5dcd70880e547ff135c672c40ce5c52f15f5240afd597f82f21`  
		Last Modified: Fri, 16 Mar 2018 19:56:46 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26c5aa4d7ff19c9f8301732ac7bea5b695331a0b906d3314e692668a756383c7`  
		Last Modified: Fri, 16 Mar 2018 19:56:47 GMT  
		Size: 1.6 MB (1614841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d01340df399a46bea39900bb68e6c94324609f5379ca63288e6072b5f4e9d44`  
		Last Modified: Fri, 16 Mar 2018 19:56:49 GMT  
		Size: 5.2 MB (5236001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:745226ff0def97d2f0e3399be43af92bef985a9771dce626e59a88ef9d38b0f4`  
		Last Modified: Fri, 16 Mar 2018 19:56:46 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ff4e1acd84bcbcc3a805a08619bb1568077c3ead7c555ccf0a6d9fb1b6fd9ff`  
		Last Modified: Fri, 16 Mar 2018 19:56:46 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1` - linux; 386

```console
$ docker pull spiped@sha256:7ca7ce36a09f300dda7585a65fca4de4d6b8bc8e6508096f600956dde00716e8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34306734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6b1b6ebf6a3805f488deb6f0a95ea27ce0fd4857d553be9bc24988dbeb5a743`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 27 Mar 2018 16:09:09 GMT
ADD file:5f8e2fbc1268ac5b46594efb678568241114da3315a48a2b48d45a696e709a59 in / 
# Tue, 27 Mar 2018 16:09:09 GMT
CMD ["bash"]
# Thu, 29 Mar 2018 19:01:28 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Thu, 29 Mar 2018 19:01:36 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Thu, 29 Mar 2018 19:01:36 GMT
ENV SPIPED_VERSION=1.6.0
# Thu, 29 Mar 2018 19:01:36 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Thu, 29 Mar 2018 19:01:37 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Thu, 29 Mar 2018 19:02:01 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Thu, 29 Mar 2018 19:02:02 GMT
VOLUME [/spiped]
# Thu, 29 Mar 2018 19:02:02 GMT
WORKDIR /spiped
# Thu, 29 Mar 2018 19:02:02 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Thu, 29 Mar 2018 19:02:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Mar 2018 19:02:03 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:4bbaad9d12d2240d446a4bdd775931ab087231a82c5d07172d661861d447f336`  
		Last Modified: Thu, 15 Mar 2018 01:29:42 GMT  
		Size: 23.1 MB (23128783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d7fbbac8593454697de5c28bb5142c809cf31711ce121d82134d0ff96eaca2`  
		Last Modified: Thu, 29 Mar 2018 19:03:05 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42a560e89cc3f4aa6db99de2b9973f2e26d1a2e64b878c1ac552cd3b5cf92605`  
		Last Modified: Thu, 29 Mar 2018 19:03:06 GMT  
		Size: 1.9 MB (1874024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0281d87c32dcb119906c89138fc502fde85f8f45dc280e6e13f2cf909ecd64e`  
		Last Modified: Thu, 29 Mar 2018 19:03:07 GMT  
		Size: 9.3 MB (9301747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9559b77a7f78c90cd1c55fde2a33e1db590d78007e86212528367f6a235d6534`  
		Last Modified: Thu, 29 Mar 2018 19:03:05 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:886029ca0ba9292551fc206dcb0e2b20c3d3a54078845c9382672eab05893f7a`  
		Last Modified: Thu, 29 Mar 2018 19:03:05 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1` - linux; ppc64le

```console
$ docker pull spiped@sha256:edfb97d4a273fb10bb39a3bb3e7b994040b3215b8be008e0b8405d54dccf962a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.2 MB (30153837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fac642eab07adeb30bae9dd8f9789ec43813f5975853c6eb12fb9053b24ef534`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Sat, 28 Apr 2018 08:20:54 GMT
ADD file:c561a92d41ab01d60c88efa7b21fd9b48e6c0c96fb8d2552f4cebbed3df42bca in / 
# Sat, 28 Apr 2018 08:20:55 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:57:55 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Sat, 28 Apr 2018 12:58:01 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:58:02 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 28 Apr 2018 12:58:02 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 28 Apr 2018 12:58:03 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 28 Apr 2018 12:59:29 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 12:59:30 GMT
VOLUME [/spiped]
# Sat, 28 Apr 2018 12:59:31 GMT
WORKDIR /spiped
# Sat, 28 Apr 2018 12:59:31 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Sat, 28 Apr 2018 12:59:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 28 Apr 2018 12:59:33 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:39214b2a7dd7dd2d1069dd155ce8ab2206bb1fda22be8136b88451c8be20e82f`  
		Last Modified: Sat, 28 Apr 2018 08:30:28 GMT  
		Size: 22.8 MB (22753096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83d5749fd929baf5f38af36b9e0cc29082ec2ad3b9ad343ca69390540b02e329`  
		Last Modified: Sat, 28 Apr 2018 13:00:02 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ec64c686177f3d64d117aa46347e87f320565f56caf20fe6482324c700e3bc`  
		Last Modified: Sat, 28 Apr 2018 13:00:02 GMT  
		Size: 1.6 MB (1552447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e74437e86762ded58e9b755170236574861c5d601e957a5bcb21415a172f6ea`  
		Last Modified: Sat, 28 Apr 2018 13:00:03 GMT  
		Size: 5.8 MB (5846070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:207aab2c782258e1c0baf93c444e33abdb13f3d472090a843d48303efb8b1f4a`  
		Last Modified: Sat, 28 Apr 2018 13:00:03 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6781ab0b3b80ee2221c02b0dbed798c0f9da07c2f5b6a0af5ee63da5ca90c03`  
		Last Modified: Sat, 28 Apr 2018 13:00:04 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1` - linux; s390x

```console
$ docker pull spiped@sha256:284de07421c392c7607542280775ac3e4211372332e0ee7666955b2cc1a163ec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 MB (30728077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0aaa05dd903e07afdd27724b4e0b3d2e081fcdf8391e31e7c76565b87bec643`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 14 Mar 2018 05:24:07 GMT
ADD file:61d2621323852492d52f23ac03a18fa0af2bcc5597691b40f508eae65f4a9242 in / 
# Wed, 14 Mar 2018 05:24:07 GMT
CMD ["bash"]
# Fri, 16 Mar 2018 05:39:12 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Fri, 16 Mar 2018 05:39:16 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Fri, 16 Mar 2018 05:39:16 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 16 Mar 2018 05:39:16 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 16 Mar 2018 05:39:16 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 16 Mar 2018 05:39:35 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Mar 2018 05:39:35 GMT
VOLUME [/spiped]
# Fri, 16 Mar 2018 05:39:35 GMT
WORKDIR /spiped
# Fri, 16 Mar 2018 05:39:35 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Fri, 16 Mar 2018 05:39:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Mar 2018 05:39:36 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:b1c81357f99190a5db0d8057d246a1f1ef9b85b2af5569523da5f1dc979989d3`  
		Last Modified: Wed, 14 Mar 2018 05:29:05 GMT  
		Size: 22.3 MB (22340478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa8ab55a55987ea1cb80fdce3191f21100123660efef6233f0b60326e8987e51`  
		Last Modified: Fri, 16 Mar 2018 05:39:51 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d83afe55831d8ae2482eb861d7e959e65a4c3c08db6ed359f76f21de1ebb9e4`  
		Last Modified: Fri, 16 Mar 2018 05:39:51 GMT  
		Size: 1.6 MB (1615430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01d2237a7ee4cebd695283a0784717e5a00b4e9587af8349bb44223b722926ad`  
		Last Modified: Fri, 16 Mar 2018 05:39:53 GMT  
		Size: 6.8 MB (6769982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6b959d45923088677f71e94a6bb3bf92bf0c4be781a98336a9dec42a78c1e1c`  
		Last Modified: Fri, 16 Mar 2018 05:39:51 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ec172e235e9bbca37e1929bfab22b65c3354f6f56519fb98d4a7b60fc8a3ccf`  
		Last Modified: Fri, 16 Mar 2018 05:39:51 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1.6`

```console
$ docker pull spiped@sha256:e77c0af1b03aaf11c89a6cccb1526d79a1208e2163e471678af3e303ee072ef3
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
$ docker pull spiped@sha256:b1cd5417dcb7ee075dfeca3a13b8481e0e3a73f93611a2597abfc600af960e78
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.2 MB (30249214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d273dac6a83ca127de021db46b3167597ba036f0caefab2815f9160a9ccc89a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 13 Mar 2018 22:27:37 GMT
ADD file:e3250bb9848f956bdb43b205f1237df0d81a25088c95dbdeb20a1e2baf1d884f in / 
# Tue, 13 Mar 2018 22:27:37 GMT
CMD ["bash"]
# Fri, 16 Mar 2018 05:14:24 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Fri, 16 Mar 2018 05:14:29 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Fri, 16 Mar 2018 05:14:30 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 16 Mar 2018 05:14:30 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 16 Mar 2018 05:14:30 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 16 Mar 2018 05:14:52 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Mar 2018 05:14:52 GMT
VOLUME [/spiped]
# Fri, 16 Mar 2018 05:14:52 GMT
WORKDIR /spiped
# Fri, 16 Mar 2018 05:14:53 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Fri, 16 Mar 2018 05:14:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Mar 2018 05:14:54 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:2a72cbf407d67c7a7a76dd48e432091678e297140dce050ad5eccad918a9f8d6`  
		Last Modified: Tue, 13 Mar 2018 22:54:21 GMT  
		Size: 22.5 MB (22488979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c85e7bfe508752947dfc6bd53a936364875dcbbb4aee04de3b39d3a42c7589d`  
		Last Modified: Fri, 16 Mar 2018 05:25:35 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e029eb83fdc3fedaac48d6e142c79cb690b3aefb824120b491c750814862f15`  
		Last Modified: Fri, 16 Mar 2018 05:25:36 GMT  
		Size: 1.9 MB (1881194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b76332d167441f7510149701ed4c57e526d2ba2b61468c497ad390f3a4719c7a`  
		Last Modified: Fri, 16 Mar 2018 05:25:38 GMT  
		Size: 5.9 MB (5876856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21cc22df52b3f59eb854487bc2b906c9a3f7b5ae81ce3ef23dfaa49ca5ff53fa`  
		Last Modified: Fri, 16 Mar 2018 05:25:35 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f62c048efb6070c28f58aefcf31df9c833ce8ae60da1a2a801e7ce3eef99329`  
		Last Modified: Fri, 16 Mar 2018 05:25:35 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6` - linux; arm variant v5

```console
$ docker pull spiped@sha256:e73f33774e2ba292ad97ab05daa637a8b4747a917c9cee3224b5a36d34c0a9d5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 MB (27751905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d66f9c61e01eec231072c2d369ca21924d4ed747437f35ad2776bdf7bc59ffb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Sat, 28 Apr 2018 08:53:29 GMT
ADD file:ca564f3cd7bd0fee7f6e56d1a55f5f92da6d4bf55ce3bf20ca398e9e95cdf8df in / 
# Sat, 28 Apr 2018 08:53:30 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:15:54 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Sat, 28 Apr 2018 12:16:03 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:16:06 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 28 Apr 2018 12:16:06 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 28 Apr 2018 12:16:06 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 28 Apr 2018 12:16:42 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 12:16:42 GMT
VOLUME [/spiped]
# Sat, 28 Apr 2018 12:16:42 GMT
WORKDIR /spiped
# Sat, 28 Apr 2018 12:16:43 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Sat, 28 Apr 2018 12:16:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 28 Apr 2018 12:16:44 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:b2a4458ef3b9777a47503028af324e4890546ca8e24a86697b3219a6e3069450`  
		Last Modified: Sat, 28 Apr 2018 09:02:15 GMT  
		Size: 21.2 MB (21175666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd77e2a0189b0813d5ed278dcc1b36fe276e866e9895a8f5489789cce856018a`  
		Last Modified: Sat, 28 Apr 2018 12:16:56 GMT  
		Size: 1.7 KB (1735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbdd77005eaff80fd0aaa072639b04f96aea85e011577a61e45fc8def7dc1cee`  
		Last Modified: Sat, 28 Apr 2018 12:16:57 GMT  
		Size: 1.6 MB (1622907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e542922c2498c6d285ef1dc87b0407442129450895b7c36fcb3e9e93653c98a`  
		Last Modified: Sat, 28 Apr 2018 12:16:59 GMT  
		Size: 5.0 MB (4951116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af636ab0005a163dece2ce400259194c3e16e93df87bc6656a05257bf06b032d`  
		Last Modified: Sat, 28 Apr 2018 12:16:56 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f2a42e5e9db654c1853e22ff75c3af104c30717c4b6af84cd4b8e17db3867c1`  
		Last Modified: Sat, 28 Apr 2018 12:16:57 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6` - linux; arm variant v7

```console
$ docker pull spiped@sha256:b177b569caa140ae530cf7924ff2cb797889e09bc0fcd4c49b532e72e12d9f58
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.6 MB (25551321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97245ba6836676a1dd15b195a40a9a410638bbd53dcf050a49bfef0d327692f7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 14 Mar 2018 12:33:12 GMT
ADD file:f766c04443a9148691357e97aad9ecafe1a8b4995a429d01337e669edeb93da2 in / 
# Wed, 14 Mar 2018 12:33:13 GMT
CMD ["bash"]
# Fri, 16 Mar 2018 09:16:44 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Fri, 16 Mar 2018 09:16:50 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Fri, 16 Mar 2018 09:16:50 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 16 Mar 2018 09:16:51 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 16 Mar 2018 09:16:51 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 16 Mar 2018 09:17:21 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Mar 2018 09:17:21 GMT
VOLUME [/spiped]
# Fri, 16 Mar 2018 09:17:22 GMT
WORKDIR /spiped
# Fri, 16 Mar 2018 09:17:23 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Fri, 16 Mar 2018 09:17:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Mar 2018 09:17:23 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:752dd0920056531abfaa5b01106ccd62d69cd92b84449b98f46b15b5b8495ac8`  
		Last Modified: Wed, 14 Mar 2018 12:45:14 GMT  
		Size: 19.3 MB (19277610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdc4eac8a19daef50bd0da1fb37190aa34328b568a5db2c46761b6068a41d472`  
		Last Modified: Fri, 16 Mar 2018 09:17:46 GMT  
		Size: 1.7 KB (1735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52fa8427b553dee849b53d41fc3be26105e612e713e4fa3f32a5bc8485f7b26`  
		Last Modified: Fri, 16 Mar 2018 09:17:45 GMT  
		Size: 1.6 MB (1564131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76a10f42cbe6ac288076b2959ce554e5d88568aea01bbd204448d4bdbcfba82f`  
		Last Modified: Fri, 16 Mar 2018 09:17:47 GMT  
		Size: 4.7 MB (4707365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea50dc5c9df274025fc092cd134f8312f5ff1330e3de8023458782b6abddbad6`  
		Last Modified: Fri, 16 Mar 2018 09:17:45 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1ac53b1bf13ac1051b1757aae37341c682b8d451a393e19f35a38b1ed0170e6`  
		Last Modified: Fri, 16 Mar 2018 09:17:45 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:203e47343fc1caffe5b193dd76b9719aa387b1012f506e640a92fbbed253981c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 MB (27190241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:365d7bd9653e6c84cea9a3d57870fffc11f69ae66ab29ec25c905245af1d5f85`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 14 Mar 2018 17:31:57 GMT
ADD file:c8a9419b2fbc1297f28b404507a39054e101a6f21f15c352b351cab19067cb4f in / 
# Wed, 14 Mar 2018 17:31:57 GMT
CMD ["bash"]
# Fri, 16 Mar 2018 19:54:20 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Fri, 16 Mar 2018 19:54:31 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Fri, 16 Mar 2018 19:54:32 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 16 Mar 2018 19:54:32 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 16 Mar 2018 19:54:33 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 16 Mar 2018 19:56:04 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Mar 2018 19:56:05 GMT
VOLUME [/spiped]
# Fri, 16 Mar 2018 19:56:05 GMT
WORKDIR /spiped
# Fri, 16 Mar 2018 19:56:06 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Fri, 16 Mar 2018 19:56:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Mar 2018 19:56:08 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:fe48c4e9ee8492678b1070a971759d407b15524c49c40762b590ba4b52766dde`  
		Last Modified: Wed, 14 Mar 2018 17:47:11 GMT  
		Size: 20.3 MB (20337203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bf14a782f2ce5dcd70880e547ff135c672c40ce5c52f15f5240afd597f82f21`  
		Last Modified: Fri, 16 Mar 2018 19:56:46 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26c5aa4d7ff19c9f8301732ac7bea5b695331a0b906d3314e692668a756383c7`  
		Last Modified: Fri, 16 Mar 2018 19:56:47 GMT  
		Size: 1.6 MB (1614841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d01340df399a46bea39900bb68e6c94324609f5379ca63288e6072b5f4e9d44`  
		Last Modified: Fri, 16 Mar 2018 19:56:49 GMT  
		Size: 5.2 MB (5236001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:745226ff0def97d2f0e3399be43af92bef985a9771dce626e59a88ef9d38b0f4`  
		Last Modified: Fri, 16 Mar 2018 19:56:46 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ff4e1acd84bcbcc3a805a08619bb1568077c3ead7c555ccf0a6d9fb1b6fd9ff`  
		Last Modified: Fri, 16 Mar 2018 19:56:46 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6` - linux; 386

```console
$ docker pull spiped@sha256:7ca7ce36a09f300dda7585a65fca4de4d6b8bc8e6508096f600956dde00716e8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34306734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6b1b6ebf6a3805f488deb6f0a95ea27ce0fd4857d553be9bc24988dbeb5a743`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 27 Mar 2018 16:09:09 GMT
ADD file:5f8e2fbc1268ac5b46594efb678568241114da3315a48a2b48d45a696e709a59 in / 
# Tue, 27 Mar 2018 16:09:09 GMT
CMD ["bash"]
# Thu, 29 Mar 2018 19:01:28 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Thu, 29 Mar 2018 19:01:36 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Thu, 29 Mar 2018 19:01:36 GMT
ENV SPIPED_VERSION=1.6.0
# Thu, 29 Mar 2018 19:01:36 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Thu, 29 Mar 2018 19:01:37 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Thu, 29 Mar 2018 19:02:01 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Thu, 29 Mar 2018 19:02:02 GMT
VOLUME [/spiped]
# Thu, 29 Mar 2018 19:02:02 GMT
WORKDIR /spiped
# Thu, 29 Mar 2018 19:02:02 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Thu, 29 Mar 2018 19:02:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Mar 2018 19:02:03 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:4bbaad9d12d2240d446a4bdd775931ab087231a82c5d07172d661861d447f336`  
		Last Modified: Thu, 15 Mar 2018 01:29:42 GMT  
		Size: 23.1 MB (23128783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d7fbbac8593454697de5c28bb5142c809cf31711ce121d82134d0ff96eaca2`  
		Last Modified: Thu, 29 Mar 2018 19:03:05 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42a560e89cc3f4aa6db99de2b9973f2e26d1a2e64b878c1ac552cd3b5cf92605`  
		Last Modified: Thu, 29 Mar 2018 19:03:06 GMT  
		Size: 1.9 MB (1874024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0281d87c32dcb119906c89138fc502fde85f8f45dc280e6e13f2cf909ecd64e`  
		Last Modified: Thu, 29 Mar 2018 19:03:07 GMT  
		Size: 9.3 MB (9301747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9559b77a7f78c90cd1c55fde2a33e1db590d78007e86212528367f6a235d6534`  
		Last Modified: Thu, 29 Mar 2018 19:03:05 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:886029ca0ba9292551fc206dcb0e2b20c3d3a54078845c9382672eab05893f7a`  
		Last Modified: Thu, 29 Mar 2018 19:03:05 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6` - linux; ppc64le

```console
$ docker pull spiped@sha256:edfb97d4a273fb10bb39a3bb3e7b994040b3215b8be008e0b8405d54dccf962a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.2 MB (30153837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fac642eab07adeb30bae9dd8f9789ec43813f5975853c6eb12fb9053b24ef534`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Sat, 28 Apr 2018 08:20:54 GMT
ADD file:c561a92d41ab01d60c88efa7b21fd9b48e6c0c96fb8d2552f4cebbed3df42bca in / 
# Sat, 28 Apr 2018 08:20:55 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:57:55 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Sat, 28 Apr 2018 12:58:01 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:58:02 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 28 Apr 2018 12:58:02 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 28 Apr 2018 12:58:03 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 28 Apr 2018 12:59:29 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 12:59:30 GMT
VOLUME [/spiped]
# Sat, 28 Apr 2018 12:59:31 GMT
WORKDIR /spiped
# Sat, 28 Apr 2018 12:59:31 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Sat, 28 Apr 2018 12:59:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 28 Apr 2018 12:59:33 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:39214b2a7dd7dd2d1069dd155ce8ab2206bb1fda22be8136b88451c8be20e82f`  
		Last Modified: Sat, 28 Apr 2018 08:30:28 GMT  
		Size: 22.8 MB (22753096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83d5749fd929baf5f38af36b9e0cc29082ec2ad3b9ad343ca69390540b02e329`  
		Last Modified: Sat, 28 Apr 2018 13:00:02 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ec64c686177f3d64d117aa46347e87f320565f56caf20fe6482324c700e3bc`  
		Last Modified: Sat, 28 Apr 2018 13:00:02 GMT  
		Size: 1.6 MB (1552447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e74437e86762ded58e9b755170236574861c5d601e957a5bcb21415a172f6ea`  
		Last Modified: Sat, 28 Apr 2018 13:00:03 GMT  
		Size: 5.8 MB (5846070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:207aab2c782258e1c0baf93c444e33abdb13f3d472090a843d48303efb8b1f4a`  
		Last Modified: Sat, 28 Apr 2018 13:00:03 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6781ab0b3b80ee2221c02b0dbed798c0f9da07c2f5b6a0af5ee63da5ca90c03`  
		Last Modified: Sat, 28 Apr 2018 13:00:04 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6` - linux; s390x

```console
$ docker pull spiped@sha256:284de07421c392c7607542280775ac3e4211372332e0ee7666955b2cc1a163ec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 MB (30728077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0aaa05dd903e07afdd27724b4e0b3d2e081fcdf8391e31e7c76565b87bec643`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 14 Mar 2018 05:24:07 GMT
ADD file:61d2621323852492d52f23ac03a18fa0af2bcc5597691b40f508eae65f4a9242 in / 
# Wed, 14 Mar 2018 05:24:07 GMT
CMD ["bash"]
# Fri, 16 Mar 2018 05:39:12 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Fri, 16 Mar 2018 05:39:16 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Fri, 16 Mar 2018 05:39:16 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 16 Mar 2018 05:39:16 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 16 Mar 2018 05:39:16 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 16 Mar 2018 05:39:35 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Mar 2018 05:39:35 GMT
VOLUME [/spiped]
# Fri, 16 Mar 2018 05:39:35 GMT
WORKDIR /spiped
# Fri, 16 Mar 2018 05:39:35 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Fri, 16 Mar 2018 05:39:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Mar 2018 05:39:36 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:b1c81357f99190a5db0d8057d246a1f1ef9b85b2af5569523da5f1dc979989d3`  
		Last Modified: Wed, 14 Mar 2018 05:29:05 GMT  
		Size: 22.3 MB (22340478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa8ab55a55987ea1cb80fdce3191f21100123660efef6233f0b60326e8987e51`  
		Last Modified: Fri, 16 Mar 2018 05:39:51 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d83afe55831d8ae2482eb861d7e959e65a4c3c08db6ed359f76f21de1ebb9e4`  
		Last Modified: Fri, 16 Mar 2018 05:39:51 GMT  
		Size: 1.6 MB (1615430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01d2237a7ee4cebd695283a0784717e5a00b4e9587af8349bb44223b722926ad`  
		Last Modified: Fri, 16 Mar 2018 05:39:53 GMT  
		Size: 6.8 MB (6769982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6b959d45923088677f71e94a6bb3bf92bf0c4be781a98336a9dec42a78c1e1c`  
		Last Modified: Fri, 16 Mar 2018 05:39:51 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ec172e235e9bbca37e1929bfab22b65c3354f6f56519fb98d4a7b60fc8a3ccf`  
		Last Modified: Fri, 16 Mar 2018 05:39:51 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1.6.0`

```console
$ docker pull spiped@sha256:e77c0af1b03aaf11c89a6cccb1526d79a1208e2163e471678af3e303ee072ef3
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
$ docker pull spiped@sha256:b1cd5417dcb7ee075dfeca3a13b8481e0e3a73f93611a2597abfc600af960e78
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.2 MB (30249214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d273dac6a83ca127de021db46b3167597ba036f0caefab2815f9160a9ccc89a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 13 Mar 2018 22:27:37 GMT
ADD file:e3250bb9848f956bdb43b205f1237df0d81a25088c95dbdeb20a1e2baf1d884f in / 
# Tue, 13 Mar 2018 22:27:37 GMT
CMD ["bash"]
# Fri, 16 Mar 2018 05:14:24 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Fri, 16 Mar 2018 05:14:29 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Fri, 16 Mar 2018 05:14:30 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 16 Mar 2018 05:14:30 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 16 Mar 2018 05:14:30 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 16 Mar 2018 05:14:52 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Mar 2018 05:14:52 GMT
VOLUME [/spiped]
# Fri, 16 Mar 2018 05:14:52 GMT
WORKDIR /spiped
# Fri, 16 Mar 2018 05:14:53 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Fri, 16 Mar 2018 05:14:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Mar 2018 05:14:54 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:2a72cbf407d67c7a7a76dd48e432091678e297140dce050ad5eccad918a9f8d6`  
		Last Modified: Tue, 13 Mar 2018 22:54:21 GMT  
		Size: 22.5 MB (22488979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c85e7bfe508752947dfc6bd53a936364875dcbbb4aee04de3b39d3a42c7589d`  
		Last Modified: Fri, 16 Mar 2018 05:25:35 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e029eb83fdc3fedaac48d6e142c79cb690b3aefb824120b491c750814862f15`  
		Last Modified: Fri, 16 Mar 2018 05:25:36 GMT  
		Size: 1.9 MB (1881194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b76332d167441f7510149701ed4c57e526d2ba2b61468c497ad390f3a4719c7a`  
		Last Modified: Fri, 16 Mar 2018 05:25:38 GMT  
		Size: 5.9 MB (5876856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21cc22df52b3f59eb854487bc2b906c9a3f7b5ae81ce3ef23dfaa49ca5ff53fa`  
		Last Modified: Fri, 16 Mar 2018 05:25:35 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f62c048efb6070c28f58aefcf31df9c833ce8ae60da1a2a801e7ce3eef99329`  
		Last Modified: Fri, 16 Mar 2018 05:25:35 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0` - linux; arm variant v5

```console
$ docker pull spiped@sha256:e73f33774e2ba292ad97ab05daa637a8b4747a917c9cee3224b5a36d34c0a9d5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 MB (27751905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d66f9c61e01eec231072c2d369ca21924d4ed747437f35ad2776bdf7bc59ffb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Sat, 28 Apr 2018 08:53:29 GMT
ADD file:ca564f3cd7bd0fee7f6e56d1a55f5f92da6d4bf55ce3bf20ca398e9e95cdf8df in / 
# Sat, 28 Apr 2018 08:53:30 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:15:54 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Sat, 28 Apr 2018 12:16:03 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:16:06 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 28 Apr 2018 12:16:06 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 28 Apr 2018 12:16:06 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 28 Apr 2018 12:16:42 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 12:16:42 GMT
VOLUME [/spiped]
# Sat, 28 Apr 2018 12:16:42 GMT
WORKDIR /spiped
# Sat, 28 Apr 2018 12:16:43 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Sat, 28 Apr 2018 12:16:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 28 Apr 2018 12:16:44 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:b2a4458ef3b9777a47503028af324e4890546ca8e24a86697b3219a6e3069450`  
		Last Modified: Sat, 28 Apr 2018 09:02:15 GMT  
		Size: 21.2 MB (21175666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd77e2a0189b0813d5ed278dcc1b36fe276e866e9895a8f5489789cce856018a`  
		Last Modified: Sat, 28 Apr 2018 12:16:56 GMT  
		Size: 1.7 KB (1735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbdd77005eaff80fd0aaa072639b04f96aea85e011577a61e45fc8def7dc1cee`  
		Last Modified: Sat, 28 Apr 2018 12:16:57 GMT  
		Size: 1.6 MB (1622907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e542922c2498c6d285ef1dc87b0407442129450895b7c36fcb3e9e93653c98a`  
		Last Modified: Sat, 28 Apr 2018 12:16:59 GMT  
		Size: 5.0 MB (4951116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af636ab0005a163dece2ce400259194c3e16e93df87bc6656a05257bf06b032d`  
		Last Modified: Sat, 28 Apr 2018 12:16:56 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f2a42e5e9db654c1853e22ff75c3af104c30717c4b6af84cd4b8e17db3867c1`  
		Last Modified: Sat, 28 Apr 2018 12:16:57 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0` - linux; arm variant v7

```console
$ docker pull spiped@sha256:b177b569caa140ae530cf7924ff2cb797889e09bc0fcd4c49b532e72e12d9f58
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.6 MB (25551321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97245ba6836676a1dd15b195a40a9a410638bbd53dcf050a49bfef0d327692f7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 14 Mar 2018 12:33:12 GMT
ADD file:f766c04443a9148691357e97aad9ecafe1a8b4995a429d01337e669edeb93da2 in / 
# Wed, 14 Mar 2018 12:33:13 GMT
CMD ["bash"]
# Fri, 16 Mar 2018 09:16:44 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Fri, 16 Mar 2018 09:16:50 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Fri, 16 Mar 2018 09:16:50 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 16 Mar 2018 09:16:51 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 16 Mar 2018 09:16:51 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 16 Mar 2018 09:17:21 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Mar 2018 09:17:21 GMT
VOLUME [/spiped]
# Fri, 16 Mar 2018 09:17:22 GMT
WORKDIR /spiped
# Fri, 16 Mar 2018 09:17:23 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Fri, 16 Mar 2018 09:17:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Mar 2018 09:17:23 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:752dd0920056531abfaa5b01106ccd62d69cd92b84449b98f46b15b5b8495ac8`  
		Last Modified: Wed, 14 Mar 2018 12:45:14 GMT  
		Size: 19.3 MB (19277610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdc4eac8a19daef50bd0da1fb37190aa34328b568a5db2c46761b6068a41d472`  
		Last Modified: Fri, 16 Mar 2018 09:17:46 GMT  
		Size: 1.7 KB (1735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52fa8427b553dee849b53d41fc3be26105e612e713e4fa3f32a5bc8485f7b26`  
		Last Modified: Fri, 16 Mar 2018 09:17:45 GMT  
		Size: 1.6 MB (1564131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76a10f42cbe6ac288076b2959ce554e5d88568aea01bbd204448d4bdbcfba82f`  
		Last Modified: Fri, 16 Mar 2018 09:17:47 GMT  
		Size: 4.7 MB (4707365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea50dc5c9df274025fc092cd134f8312f5ff1330e3de8023458782b6abddbad6`  
		Last Modified: Fri, 16 Mar 2018 09:17:45 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1ac53b1bf13ac1051b1757aae37341c682b8d451a393e19f35a38b1ed0170e6`  
		Last Modified: Fri, 16 Mar 2018 09:17:45 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:203e47343fc1caffe5b193dd76b9719aa387b1012f506e640a92fbbed253981c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 MB (27190241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:365d7bd9653e6c84cea9a3d57870fffc11f69ae66ab29ec25c905245af1d5f85`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 14 Mar 2018 17:31:57 GMT
ADD file:c8a9419b2fbc1297f28b404507a39054e101a6f21f15c352b351cab19067cb4f in / 
# Wed, 14 Mar 2018 17:31:57 GMT
CMD ["bash"]
# Fri, 16 Mar 2018 19:54:20 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Fri, 16 Mar 2018 19:54:31 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Fri, 16 Mar 2018 19:54:32 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 16 Mar 2018 19:54:32 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 16 Mar 2018 19:54:33 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 16 Mar 2018 19:56:04 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Mar 2018 19:56:05 GMT
VOLUME [/spiped]
# Fri, 16 Mar 2018 19:56:05 GMT
WORKDIR /spiped
# Fri, 16 Mar 2018 19:56:06 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Fri, 16 Mar 2018 19:56:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Mar 2018 19:56:08 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:fe48c4e9ee8492678b1070a971759d407b15524c49c40762b590ba4b52766dde`  
		Last Modified: Wed, 14 Mar 2018 17:47:11 GMT  
		Size: 20.3 MB (20337203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bf14a782f2ce5dcd70880e547ff135c672c40ce5c52f15f5240afd597f82f21`  
		Last Modified: Fri, 16 Mar 2018 19:56:46 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26c5aa4d7ff19c9f8301732ac7bea5b695331a0b906d3314e692668a756383c7`  
		Last Modified: Fri, 16 Mar 2018 19:56:47 GMT  
		Size: 1.6 MB (1614841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d01340df399a46bea39900bb68e6c94324609f5379ca63288e6072b5f4e9d44`  
		Last Modified: Fri, 16 Mar 2018 19:56:49 GMT  
		Size: 5.2 MB (5236001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:745226ff0def97d2f0e3399be43af92bef985a9771dce626e59a88ef9d38b0f4`  
		Last Modified: Fri, 16 Mar 2018 19:56:46 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ff4e1acd84bcbcc3a805a08619bb1568077c3ead7c555ccf0a6d9fb1b6fd9ff`  
		Last Modified: Fri, 16 Mar 2018 19:56:46 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0` - linux; 386

```console
$ docker pull spiped@sha256:7ca7ce36a09f300dda7585a65fca4de4d6b8bc8e6508096f600956dde00716e8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34306734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6b1b6ebf6a3805f488deb6f0a95ea27ce0fd4857d553be9bc24988dbeb5a743`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 27 Mar 2018 16:09:09 GMT
ADD file:5f8e2fbc1268ac5b46594efb678568241114da3315a48a2b48d45a696e709a59 in / 
# Tue, 27 Mar 2018 16:09:09 GMT
CMD ["bash"]
# Thu, 29 Mar 2018 19:01:28 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Thu, 29 Mar 2018 19:01:36 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Thu, 29 Mar 2018 19:01:36 GMT
ENV SPIPED_VERSION=1.6.0
# Thu, 29 Mar 2018 19:01:36 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Thu, 29 Mar 2018 19:01:37 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Thu, 29 Mar 2018 19:02:01 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Thu, 29 Mar 2018 19:02:02 GMT
VOLUME [/spiped]
# Thu, 29 Mar 2018 19:02:02 GMT
WORKDIR /spiped
# Thu, 29 Mar 2018 19:02:02 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Thu, 29 Mar 2018 19:02:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Mar 2018 19:02:03 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:4bbaad9d12d2240d446a4bdd775931ab087231a82c5d07172d661861d447f336`  
		Last Modified: Thu, 15 Mar 2018 01:29:42 GMT  
		Size: 23.1 MB (23128783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d7fbbac8593454697de5c28bb5142c809cf31711ce121d82134d0ff96eaca2`  
		Last Modified: Thu, 29 Mar 2018 19:03:05 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42a560e89cc3f4aa6db99de2b9973f2e26d1a2e64b878c1ac552cd3b5cf92605`  
		Last Modified: Thu, 29 Mar 2018 19:03:06 GMT  
		Size: 1.9 MB (1874024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0281d87c32dcb119906c89138fc502fde85f8f45dc280e6e13f2cf909ecd64e`  
		Last Modified: Thu, 29 Mar 2018 19:03:07 GMT  
		Size: 9.3 MB (9301747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9559b77a7f78c90cd1c55fde2a33e1db590d78007e86212528367f6a235d6534`  
		Last Modified: Thu, 29 Mar 2018 19:03:05 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:886029ca0ba9292551fc206dcb0e2b20c3d3a54078845c9382672eab05893f7a`  
		Last Modified: Thu, 29 Mar 2018 19:03:05 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0` - linux; ppc64le

```console
$ docker pull spiped@sha256:edfb97d4a273fb10bb39a3bb3e7b994040b3215b8be008e0b8405d54dccf962a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.2 MB (30153837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fac642eab07adeb30bae9dd8f9789ec43813f5975853c6eb12fb9053b24ef534`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Sat, 28 Apr 2018 08:20:54 GMT
ADD file:c561a92d41ab01d60c88efa7b21fd9b48e6c0c96fb8d2552f4cebbed3df42bca in / 
# Sat, 28 Apr 2018 08:20:55 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:57:55 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Sat, 28 Apr 2018 12:58:01 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:58:02 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 28 Apr 2018 12:58:02 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 28 Apr 2018 12:58:03 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 28 Apr 2018 12:59:29 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 12:59:30 GMT
VOLUME [/spiped]
# Sat, 28 Apr 2018 12:59:31 GMT
WORKDIR /spiped
# Sat, 28 Apr 2018 12:59:31 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Sat, 28 Apr 2018 12:59:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 28 Apr 2018 12:59:33 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:39214b2a7dd7dd2d1069dd155ce8ab2206bb1fda22be8136b88451c8be20e82f`  
		Last Modified: Sat, 28 Apr 2018 08:30:28 GMT  
		Size: 22.8 MB (22753096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83d5749fd929baf5f38af36b9e0cc29082ec2ad3b9ad343ca69390540b02e329`  
		Last Modified: Sat, 28 Apr 2018 13:00:02 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ec64c686177f3d64d117aa46347e87f320565f56caf20fe6482324c700e3bc`  
		Last Modified: Sat, 28 Apr 2018 13:00:02 GMT  
		Size: 1.6 MB (1552447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e74437e86762ded58e9b755170236574861c5d601e957a5bcb21415a172f6ea`  
		Last Modified: Sat, 28 Apr 2018 13:00:03 GMT  
		Size: 5.8 MB (5846070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:207aab2c782258e1c0baf93c444e33abdb13f3d472090a843d48303efb8b1f4a`  
		Last Modified: Sat, 28 Apr 2018 13:00:03 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6781ab0b3b80ee2221c02b0dbed798c0f9da07c2f5b6a0af5ee63da5ca90c03`  
		Last Modified: Sat, 28 Apr 2018 13:00:04 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0` - linux; s390x

```console
$ docker pull spiped@sha256:284de07421c392c7607542280775ac3e4211372332e0ee7666955b2cc1a163ec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 MB (30728077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0aaa05dd903e07afdd27724b4e0b3d2e081fcdf8391e31e7c76565b87bec643`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 14 Mar 2018 05:24:07 GMT
ADD file:61d2621323852492d52f23ac03a18fa0af2bcc5597691b40f508eae65f4a9242 in / 
# Wed, 14 Mar 2018 05:24:07 GMT
CMD ["bash"]
# Fri, 16 Mar 2018 05:39:12 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Fri, 16 Mar 2018 05:39:16 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Fri, 16 Mar 2018 05:39:16 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 16 Mar 2018 05:39:16 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 16 Mar 2018 05:39:16 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 16 Mar 2018 05:39:35 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Mar 2018 05:39:35 GMT
VOLUME [/spiped]
# Fri, 16 Mar 2018 05:39:35 GMT
WORKDIR /spiped
# Fri, 16 Mar 2018 05:39:35 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Fri, 16 Mar 2018 05:39:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Mar 2018 05:39:36 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:b1c81357f99190a5db0d8057d246a1f1ef9b85b2af5569523da5f1dc979989d3`  
		Last Modified: Wed, 14 Mar 2018 05:29:05 GMT  
		Size: 22.3 MB (22340478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa8ab55a55987ea1cb80fdce3191f21100123660efef6233f0b60326e8987e51`  
		Last Modified: Fri, 16 Mar 2018 05:39:51 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d83afe55831d8ae2482eb861d7e959e65a4c3c08db6ed359f76f21de1ebb9e4`  
		Last Modified: Fri, 16 Mar 2018 05:39:51 GMT  
		Size: 1.6 MB (1615430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01d2237a7ee4cebd695283a0784717e5a00b4e9587af8349bb44223b722926ad`  
		Last Modified: Fri, 16 Mar 2018 05:39:53 GMT  
		Size: 6.8 MB (6769982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6b959d45923088677f71e94a6bb3bf92bf0c4be781a98336a9dec42a78c1e1c`  
		Last Modified: Fri, 16 Mar 2018 05:39:51 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ec172e235e9bbca37e1929bfab22b65c3354f6f56519fb98d4a7b60fc8a3ccf`  
		Last Modified: Fri, 16 Mar 2018 05:39:51 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1.6.0-alpine`

```console
$ docker pull spiped@sha256:44ce062e494d80a4ead97e040786a367c805d605dfb364230f798c3facfd3847
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

### `spiped:1.6.0-alpine` - linux; arm variant v6

```console
$ docker pull spiped@sha256:ba20c4c4ac103310b46cff9a3ce8c203ded2865e70c59b0c6bbce76ff0a60397
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3403537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d596287a483e08f691e585153ab0c5f0f9d9cd5ede1ff4e976f04876823efde9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:45 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Fri, 01 Dec 2017 18:41:45 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:46 GMT
CMD ["/bin/sh"]
# Wed, 25 Apr 2018 21:14:15 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Wed, 25 Apr 2018 21:14:23 GMT
RUN apk add --no-cache libssl1.0
# Wed, 25 Apr 2018 21:14:23 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 25 Apr 2018 21:14:24 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 25 Apr 2018 21:14:25 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 25 Apr 2018 21:16:56 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Wed, 25 Apr 2018 21:16:57 GMT
VOLUME [/spiped]
# Wed, 25 Apr 2018 21:16:57 GMT
WORKDIR /spiped
# Wed, 25 Apr 2018 21:17:00 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 25 Apr 2018 21:17:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Apr 2018 21:17:01 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bf7d76c39215a547858ef9260990b9b80c0e679bb2f6ceef942d7b6d0eeec3`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ac4450dfa64d751fb5d407cb266185c5242bb48fea4128560ecad90d21cc7b6`  
		Last Modified: Wed, 25 Apr 2018 21:17:14 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ddb58f41cdbbb082aa2ef4d7b5642f2691f42859c885dc80b32505d1ea1409a`  
		Last Modified: Wed, 25 Apr 2018 21:17:15 GMT  
		Size: 911.2 KB (911159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e26021f7c624057989a5ed214b52d33d0d75f7620d10098a34df67f8bac1967`  
		Last Modified: Wed, 25 Apr 2018 21:17:16 GMT  
		Size: 452.2 KB (452152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc6df0c6383a22c5d040ad9072bc1ab5f505a58f4b6d26d7d00b07eaeb608747`  
		Last Modified: Wed, 25 Apr 2018 21:17:14 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc61920be8f5393579c0af8cba9052cff27f56d453825e8f984e534fc24bc409`  
		Last Modified: Wed, 25 Apr 2018 21:17:14 GMT  
		Size: 347.0 B  
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
$ docker pull spiped@sha256:44ce062e494d80a4ead97e040786a367c805d605dfb364230f798c3facfd3847
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

### `spiped:1.6-alpine` - linux; arm variant v6

```console
$ docker pull spiped@sha256:ba20c4c4ac103310b46cff9a3ce8c203ded2865e70c59b0c6bbce76ff0a60397
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3403537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d596287a483e08f691e585153ab0c5f0f9d9cd5ede1ff4e976f04876823efde9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:45 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Fri, 01 Dec 2017 18:41:45 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:46 GMT
CMD ["/bin/sh"]
# Wed, 25 Apr 2018 21:14:15 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Wed, 25 Apr 2018 21:14:23 GMT
RUN apk add --no-cache libssl1.0
# Wed, 25 Apr 2018 21:14:23 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 25 Apr 2018 21:14:24 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 25 Apr 2018 21:14:25 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 25 Apr 2018 21:16:56 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Wed, 25 Apr 2018 21:16:57 GMT
VOLUME [/spiped]
# Wed, 25 Apr 2018 21:16:57 GMT
WORKDIR /spiped
# Wed, 25 Apr 2018 21:17:00 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 25 Apr 2018 21:17:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Apr 2018 21:17:01 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bf7d76c39215a547858ef9260990b9b80c0e679bb2f6ceef942d7b6d0eeec3`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ac4450dfa64d751fb5d407cb266185c5242bb48fea4128560ecad90d21cc7b6`  
		Last Modified: Wed, 25 Apr 2018 21:17:14 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ddb58f41cdbbb082aa2ef4d7b5642f2691f42859c885dc80b32505d1ea1409a`  
		Last Modified: Wed, 25 Apr 2018 21:17:15 GMT  
		Size: 911.2 KB (911159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e26021f7c624057989a5ed214b52d33d0d75f7620d10098a34df67f8bac1967`  
		Last Modified: Wed, 25 Apr 2018 21:17:16 GMT  
		Size: 452.2 KB (452152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc6df0c6383a22c5d040ad9072bc1ab5f505a58f4b6d26d7d00b07eaeb608747`  
		Last Modified: Wed, 25 Apr 2018 21:17:14 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc61920be8f5393579c0af8cba9052cff27f56d453825e8f984e534fc24bc409`  
		Last Modified: Wed, 25 Apr 2018 21:17:14 GMT  
		Size: 347.0 B  
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
$ docker pull spiped@sha256:44ce062e494d80a4ead97e040786a367c805d605dfb364230f798c3facfd3847
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

### `spiped:1-alpine` - linux; arm variant v6

```console
$ docker pull spiped@sha256:ba20c4c4ac103310b46cff9a3ce8c203ded2865e70c59b0c6bbce76ff0a60397
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3403537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d596287a483e08f691e585153ab0c5f0f9d9cd5ede1ff4e976f04876823efde9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:45 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Fri, 01 Dec 2017 18:41:45 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:46 GMT
CMD ["/bin/sh"]
# Wed, 25 Apr 2018 21:14:15 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Wed, 25 Apr 2018 21:14:23 GMT
RUN apk add --no-cache libssl1.0
# Wed, 25 Apr 2018 21:14:23 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 25 Apr 2018 21:14:24 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 25 Apr 2018 21:14:25 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 25 Apr 2018 21:16:56 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Wed, 25 Apr 2018 21:16:57 GMT
VOLUME [/spiped]
# Wed, 25 Apr 2018 21:16:57 GMT
WORKDIR /spiped
# Wed, 25 Apr 2018 21:17:00 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 25 Apr 2018 21:17:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Apr 2018 21:17:01 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bf7d76c39215a547858ef9260990b9b80c0e679bb2f6ceef942d7b6d0eeec3`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ac4450dfa64d751fb5d407cb266185c5242bb48fea4128560ecad90d21cc7b6`  
		Last Modified: Wed, 25 Apr 2018 21:17:14 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ddb58f41cdbbb082aa2ef4d7b5642f2691f42859c885dc80b32505d1ea1409a`  
		Last Modified: Wed, 25 Apr 2018 21:17:15 GMT  
		Size: 911.2 KB (911159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e26021f7c624057989a5ed214b52d33d0d75f7620d10098a34df67f8bac1967`  
		Last Modified: Wed, 25 Apr 2018 21:17:16 GMT  
		Size: 452.2 KB (452152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc6df0c6383a22c5d040ad9072bc1ab5f505a58f4b6d26d7d00b07eaeb608747`  
		Last Modified: Wed, 25 Apr 2018 21:17:14 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc61920be8f5393579c0af8cba9052cff27f56d453825e8f984e534fc24bc409`  
		Last Modified: Wed, 25 Apr 2018 21:17:14 GMT  
		Size: 347.0 B  
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
$ docker pull spiped@sha256:44ce062e494d80a4ead97e040786a367c805d605dfb364230f798c3facfd3847
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

### `spiped:alpine` - linux; arm variant v6

```console
$ docker pull spiped@sha256:ba20c4c4ac103310b46cff9a3ce8c203ded2865e70c59b0c6bbce76ff0a60397
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3403537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d596287a483e08f691e585153ab0c5f0f9d9cd5ede1ff4e976f04876823efde9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:45 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Fri, 01 Dec 2017 18:41:45 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:46 GMT
CMD ["/bin/sh"]
# Wed, 25 Apr 2018 21:14:15 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Wed, 25 Apr 2018 21:14:23 GMT
RUN apk add --no-cache libssl1.0
# Wed, 25 Apr 2018 21:14:23 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 25 Apr 2018 21:14:24 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 25 Apr 2018 21:14:25 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 25 Apr 2018 21:16:56 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Wed, 25 Apr 2018 21:16:57 GMT
VOLUME [/spiped]
# Wed, 25 Apr 2018 21:16:57 GMT
WORKDIR /spiped
# Wed, 25 Apr 2018 21:17:00 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 25 Apr 2018 21:17:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Apr 2018 21:17:01 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bf7d76c39215a547858ef9260990b9b80c0e679bb2f6ceef942d7b6d0eeec3`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ac4450dfa64d751fb5d407cb266185c5242bb48fea4128560ecad90d21cc7b6`  
		Last Modified: Wed, 25 Apr 2018 21:17:14 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ddb58f41cdbbb082aa2ef4d7b5642f2691f42859c885dc80b32505d1ea1409a`  
		Last Modified: Wed, 25 Apr 2018 21:17:15 GMT  
		Size: 911.2 KB (911159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e26021f7c624057989a5ed214b52d33d0d75f7620d10098a34df67f8bac1967`  
		Last Modified: Wed, 25 Apr 2018 21:17:16 GMT  
		Size: 452.2 KB (452152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc6df0c6383a22c5d040ad9072bc1ab5f505a58f4b6d26d7d00b07eaeb608747`  
		Last Modified: Wed, 25 Apr 2018 21:17:14 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc61920be8f5393579c0af8cba9052cff27f56d453825e8f984e534fc24bc409`  
		Last Modified: Wed, 25 Apr 2018 21:17:14 GMT  
		Size: 347.0 B  
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
$ docker pull spiped@sha256:5c546803e80b713310ae0eb715e76c0a01bd00a6c15c2348bb25b6f164a3463a
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
$ docker pull spiped@sha256:b1cd5417dcb7ee075dfeca3a13b8481e0e3a73f93611a2597abfc600af960e78
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.2 MB (30249214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d273dac6a83ca127de021db46b3167597ba036f0caefab2815f9160a9ccc89a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 13 Mar 2018 22:27:37 GMT
ADD file:e3250bb9848f956bdb43b205f1237df0d81a25088c95dbdeb20a1e2baf1d884f in / 
# Tue, 13 Mar 2018 22:27:37 GMT
CMD ["bash"]
# Fri, 16 Mar 2018 05:14:24 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Fri, 16 Mar 2018 05:14:29 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Fri, 16 Mar 2018 05:14:30 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 16 Mar 2018 05:14:30 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 16 Mar 2018 05:14:30 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 16 Mar 2018 05:14:52 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Mar 2018 05:14:52 GMT
VOLUME [/spiped]
# Fri, 16 Mar 2018 05:14:52 GMT
WORKDIR /spiped
# Fri, 16 Mar 2018 05:14:53 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Fri, 16 Mar 2018 05:14:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Mar 2018 05:14:54 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:2a72cbf407d67c7a7a76dd48e432091678e297140dce050ad5eccad918a9f8d6`  
		Last Modified: Tue, 13 Mar 2018 22:54:21 GMT  
		Size: 22.5 MB (22488979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c85e7bfe508752947dfc6bd53a936364875dcbbb4aee04de3b39d3a42c7589d`  
		Last Modified: Fri, 16 Mar 2018 05:25:35 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e029eb83fdc3fedaac48d6e142c79cb690b3aefb824120b491c750814862f15`  
		Last Modified: Fri, 16 Mar 2018 05:25:36 GMT  
		Size: 1.9 MB (1881194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b76332d167441f7510149701ed4c57e526d2ba2b61468c497ad390f3a4719c7a`  
		Last Modified: Fri, 16 Mar 2018 05:25:38 GMT  
		Size: 5.9 MB (5876856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21cc22df52b3f59eb854487bc2b906c9a3f7b5ae81ce3ef23dfaa49ca5ff53fa`  
		Last Modified: Fri, 16 Mar 2018 05:25:35 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f62c048efb6070c28f58aefcf31df9c833ce8ae60da1a2a801e7ce3eef99329`  
		Last Modified: Fri, 16 Mar 2018 05:25:35 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; arm variant v5

```console
$ docker pull spiped@sha256:e73f33774e2ba292ad97ab05daa637a8b4747a917c9cee3224b5a36d34c0a9d5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 MB (27751905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d66f9c61e01eec231072c2d369ca21924d4ed747437f35ad2776bdf7bc59ffb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Sat, 28 Apr 2018 08:53:29 GMT
ADD file:ca564f3cd7bd0fee7f6e56d1a55f5f92da6d4bf55ce3bf20ca398e9e95cdf8df in / 
# Sat, 28 Apr 2018 08:53:30 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:15:54 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Sat, 28 Apr 2018 12:16:03 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:16:06 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 28 Apr 2018 12:16:06 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 28 Apr 2018 12:16:06 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 28 Apr 2018 12:16:42 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 12:16:42 GMT
VOLUME [/spiped]
# Sat, 28 Apr 2018 12:16:42 GMT
WORKDIR /spiped
# Sat, 28 Apr 2018 12:16:43 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Sat, 28 Apr 2018 12:16:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 28 Apr 2018 12:16:44 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:b2a4458ef3b9777a47503028af324e4890546ca8e24a86697b3219a6e3069450`  
		Last Modified: Sat, 28 Apr 2018 09:02:15 GMT  
		Size: 21.2 MB (21175666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd77e2a0189b0813d5ed278dcc1b36fe276e866e9895a8f5489789cce856018a`  
		Last Modified: Sat, 28 Apr 2018 12:16:56 GMT  
		Size: 1.7 KB (1735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbdd77005eaff80fd0aaa072639b04f96aea85e011577a61e45fc8def7dc1cee`  
		Last Modified: Sat, 28 Apr 2018 12:16:57 GMT  
		Size: 1.6 MB (1622907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e542922c2498c6d285ef1dc87b0407442129450895b7c36fcb3e9e93653c98a`  
		Last Modified: Sat, 28 Apr 2018 12:16:59 GMT  
		Size: 5.0 MB (4951116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af636ab0005a163dece2ce400259194c3e16e93df87bc6656a05257bf06b032d`  
		Last Modified: Sat, 28 Apr 2018 12:16:56 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f2a42e5e9db654c1853e22ff75c3af104c30717c4b6af84cd4b8e17db3867c1`  
		Last Modified: Sat, 28 Apr 2018 12:16:57 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; arm variant v7

```console
$ docker pull spiped@sha256:b177b569caa140ae530cf7924ff2cb797889e09bc0fcd4c49b532e72e12d9f58
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.6 MB (25551321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97245ba6836676a1dd15b195a40a9a410638bbd53dcf050a49bfef0d327692f7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 14 Mar 2018 12:33:12 GMT
ADD file:f766c04443a9148691357e97aad9ecafe1a8b4995a429d01337e669edeb93da2 in / 
# Wed, 14 Mar 2018 12:33:13 GMT
CMD ["bash"]
# Fri, 16 Mar 2018 09:16:44 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Fri, 16 Mar 2018 09:16:50 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Fri, 16 Mar 2018 09:16:50 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 16 Mar 2018 09:16:51 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 16 Mar 2018 09:16:51 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 16 Mar 2018 09:17:21 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Mar 2018 09:17:21 GMT
VOLUME [/spiped]
# Fri, 16 Mar 2018 09:17:22 GMT
WORKDIR /spiped
# Fri, 16 Mar 2018 09:17:23 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Fri, 16 Mar 2018 09:17:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Mar 2018 09:17:23 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:752dd0920056531abfaa5b01106ccd62d69cd92b84449b98f46b15b5b8495ac8`  
		Last Modified: Wed, 14 Mar 2018 12:45:14 GMT  
		Size: 19.3 MB (19277610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdc4eac8a19daef50bd0da1fb37190aa34328b568a5db2c46761b6068a41d472`  
		Last Modified: Fri, 16 Mar 2018 09:17:46 GMT  
		Size: 1.7 KB (1735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52fa8427b553dee849b53d41fc3be26105e612e713e4fa3f32a5bc8485f7b26`  
		Last Modified: Fri, 16 Mar 2018 09:17:45 GMT  
		Size: 1.6 MB (1564131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76a10f42cbe6ac288076b2959ce554e5d88568aea01bbd204448d4bdbcfba82f`  
		Last Modified: Fri, 16 Mar 2018 09:17:47 GMT  
		Size: 4.7 MB (4707365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea50dc5c9df274025fc092cd134f8312f5ff1330e3de8023458782b6abddbad6`  
		Last Modified: Fri, 16 Mar 2018 09:17:45 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1ac53b1bf13ac1051b1757aae37341c682b8d451a393e19f35a38b1ed0170e6`  
		Last Modified: Fri, 16 Mar 2018 09:17:45 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:203e47343fc1caffe5b193dd76b9719aa387b1012f506e640a92fbbed253981c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 MB (27190241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:365d7bd9653e6c84cea9a3d57870fffc11f69ae66ab29ec25c905245af1d5f85`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 14 Mar 2018 17:31:57 GMT
ADD file:c8a9419b2fbc1297f28b404507a39054e101a6f21f15c352b351cab19067cb4f in / 
# Wed, 14 Mar 2018 17:31:57 GMT
CMD ["bash"]
# Fri, 16 Mar 2018 19:54:20 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Fri, 16 Mar 2018 19:54:31 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Fri, 16 Mar 2018 19:54:32 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 16 Mar 2018 19:54:32 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 16 Mar 2018 19:54:33 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 16 Mar 2018 19:56:04 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Mar 2018 19:56:05 GMT
VOLUME [/spiped]
# Fri, 16 Mar 2018 19:56:05 GMT
WORKDIR /spiped
# Fri, 16 Mar 2018 19:56:06 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Fri, 16 Mar 2018 19:56:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Mar 2018 19:56:08 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:fe48c4e9ee8492678b1070a971759d407b15524c49c40762b590ba4b52766dde`  
		Last Modified: Wed, 14 Mar 2018 17:47:11 GMT  
		Size: 20.3 MB (20337203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bf14a782f2ce5dcd70880e547ff135c672c40ce5c52f15f5240afd597f82f21`  
		Last Modified: Fri, 16 Mar 2018 19:56:46 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26c5aa4d7ff19c9f8301732ac7bea5b695331a0b906d3314e692668a756383c7`  
		Last Modified: Fri, 16 Mar 2018 19:56:47 GMT  
		Size: 1.6 MB (1614841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d01340df399a46bea39900bb68e6c94324609f5379ca63288e6072b5f4e9d44`  
		Last Modified: Fri, 16 Mar 2018 19:56:49 GMT  
		Size: 5.2 MB (5236001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:745226ff0def97d2f0e3399be43af92bef985a9771dce626e59a88ef9d38b0f4`  
		Last Modified: Fri, 16 Mar 2018 19:56:46 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ff4e1acd84bcbcc3a805a08619bb1568077c3ead7c555ccf0a6d9fb1b6fd9ff`  
		Last Modified: Fri, 16 Mar 2018 19:56:46 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; 386

```console
$ docker pull spiped@sha256:7ca7ce36a09f300dda7585a65fca4de4d6b8bc8e6508096f600956dde00716e8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34306734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6b1b6ebf6a3805f488deb6f0a95ea27ce0fd4857d553be9bc24988dbeb5a743`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 27 Mar 2018 16:09:09 GMT
ADD file:5f8e2fbc1268ac5b46594efb678568241114da3315a48a2b48d45a696e709a59 in / 
# Tue, 27 Mar 2018 16:09:09 GMT
CMD ["bash"]
# Thu, 29 Mar 2018 19:01:28 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Thu, 29 Mar 2018 19:01:36 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Thu, 29 Mar 2018 19:01:36 GMT
ENV SPIPED_VERSION=1.6.0
# Thu, 29 Mar 2018 19:01:36 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Thu, 29 Mar 2018 19:01:37 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Thu, 29 Mar 2018 19:02:01 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Thu, 29 Mar 2018 19:02:02 GMT
VOLUME [/spiped]
# Thu, 29 Mar 2018 19:02:02 GMT
WORKDIR /spiped
# Thu, 29 Mar 2018 19:02:02 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Thu, 29 Mar 2018 19:02:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Mar 2018 19:02:03 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:4bbaad9d12d2240d446a4bdd775931ab087231a82c5d07172d661861d447f336`  
		Last Modified: Thu, 15 Mar 2018 01:29:42 GMT  
		Size: 23.1 MB (23128783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d7fbbac8593454697de5c28bb5142c809cf31711ce121d82134d0ff96eaca2`  
		Last Modified: Thu, 29 Mar 2018 19:03:05 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42a560e89cc3f4aa6db99de2b9973f2e26d1a2e64b878c1ac552cd3b5cf92605`  
		Last Modified: Thu, 29 Mar 2018 19:03:06 GMT  
		Size: 1.9 MB (1874024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0281d87c32dcb119906c89138fc502fde85f8f45dc280e6e13f2cf909ecd64e`  
		Last Modified: Thu, 29 Mar 2018 19:03:07 GMT  
		Size: 9.3 MB (9301747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9559b77a7f78c90cd1c55fde2a33e1db590d78007e86212528367f6a235d6534`  
		Last Modified: Thu, 29 Mar 2018 19:03:05 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:886029ca0ba9292551fc206dcb0e2b20c3d3a54078845c9382672eab05893f7a`  
		Last Modified: Thu, 29 Mar 2018 19:03:05 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; ppc64le

```console
$ docker pull spiped@sha256:042716f6efc45c89876f39bc8dd1c742b83b8f6a880abdf564796ae987341241
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.1 MB (30147307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cf0551a691ba0c8f75fe0577bed096d287e466669965118692df4d2e4f6bb2b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 14 Mar 2018 00:35:22 GMT
ADD file:eb08f3c15b97624b92d23e06e82a8de439723fe3fd0f2d75b242fd2a9b9abc51 in / 
# Wed, 14 Mar 2018 00:35:24 GMT
CMD ["bash"]
# Fri, 16 Mar 2018 20:23:34 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Fri, 16 Mar 2018 20:23:48 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Fri, 16 Mar 2018 20:23:49 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 16 Mar 2018 20:23:50 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 16 Mar 2018 20:23:51 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 16 Mar 2018 20:27:20 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Mar 2018 20:27:23 GMT
VOLUME [/spiped]
# Fri, 16 Mar 2018 20:27:24 GMT
WORKDIR /spiped
# Fri, 16 Mar 2018 20:27:26 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Fri, 16 Mar 2018 20:27:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Mar 2018 20:27:29 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:f3543c3a35ef83bbd42a728d1995f79f0163e330a44b0abe41042ac8b94787ca`  
		Last Modified: Thu, 15 Mar 2018 00:33:06 GMT  
		Size: 22.7 MB (22746142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:656ac8bb7439dfaf007487c2d528b06b77736821832aa19db3ee8697c2ffd696`  
		Last Modified: Fri, 16 Mar 2018 20:27:54 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8a5e837d52de285d86efd607edb7978700833a1b94089d6ab72d97a7b65866c`  
		Last Modified: Fri, 16 Mar 2018 20:27:54 GMT  
		Size: 1.6 MB (1552258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2d8272899b13e8b026ce542ab9c67c2ef3723b18462c0cec734ce539ead243e`  
		Last Modified: Fri, 16 Mar 2018 20:27:55 GMT  
		Size: 5.8 MB (5846688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929a296be833c9037614c86cf5fcf1822877c1e40b60728905d43f4f601f910d`  
		Last Modified: Fri, 16 Mar 2018 20:27:53 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8948e0c480e6e4489c08f9dde69b20bd8972ff05115bb8219eb365937c29b16d`  
		Last Modified: Fri, 16 Mar 2018 20:27:53 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; s390x

```console
$ docker pull spiped@sha256:284de07421c392c7607542280775ac3e4211372332e0ee7666955b2cc1a163ec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 MB (30728077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0aaa05dd903e07afdd27724b4e0b3d2e081fcdf8391e31e7c76565b87bec643`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 14 Mar 2018 05:24:07 GMT
ADD file:61d2621323852492d52f23ac03a18fa0af2bcc5597691b40f508eae65f4a9242 in / 
# Wed, 14 Mar 2018 05:24:07 GMT
CMD ["bash"]
# Fri, 16 Mar 2018 05:39:12 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Fri, 16 Mar 2018 05:39:16 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Fri, 16 Mar 2018 05:39:16 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 16 Mar 2018 05:39:16 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 16 Mar 2018 05:39:16 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 16 Mar 2018 05:39:35 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Mar 2018 05:39:35 GMT
VOLUME [/spiped]
# Fri, 16 Mar 2018 05:39:35 GMT
WORKDIR /spiped
# Fri, 16 Mar 2018 05:39:35 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Fri, 16 Mar 2018 05:39:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Mar 2018 05:39:36 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:b1c81357f99190a5db0d8057d246a1f1ef9b85b2af5569523da5f1dc979989d3`  
		Last Modified: Wed, 14 Mar 2018 05:29:05 GMT  
		Size: 22.3 MB (22340478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa8ab55a55987ea1cb80fdce3191f21100123660efef6233f0b60326e8987e51`  
		Last Modified: Fri, 16 Mar 2018 05:39:51 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d83afe55831d8ae2482eb861d7e959e65a4c3c08db6ed359f76f21de1ebb9e4`  
		Last Modified: Fri, 16 Mar 2018 05:39:51 GMT  
		Size: 1.6 MB (1615430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01d2237a7ee4cebd695283a0784717e5a00b4e9587af8349bb44223b722926ad`  
		Last Modified: Fri, 16 Mar 2018 05:39:53 GMT  
		Size: 6.8 MB (6769982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6b959d45923088677f71e94a6bb3bf92bf0c4be781a98336a9dec42a78c1e1c`  
		Last Modified: Fri, 16 Mar 2018 05:39:51 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ec172e235e9bbca37e1929bfab22b65c3354f6f56519fb98d4a7b60fc8a3ccf`  
		Last Modified: Fri, 16 Mar 2018 05:39:51 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
