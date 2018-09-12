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
$ docker pull spiped@sha256:87bd48e44b6114246d16d52b1041092001b308d15b43e1db92bc1528d0449825
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
$ docker pull spiped@sha256:844b3111fb71c8cb56c1ff4b43773261617df27d10441f2f8604e40290dfb7a8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.2 MB (30247489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8de20099b2276fba637bffefe7a5c5b77770553fa62c1fa48fa1df60147a3c83`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:34 GMT
ADD file:e6ca98733431f75e97eb09758ba64065d213d51bd2070a95cf15f2ff5adccfc4 in / 
# Tue, 04 Sep 2018 21:21:34 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 08:37:31 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 05 Sep 2018 08:37:35 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 08:37:36 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 05 Sep 2018 08:37:36 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 05 Sep 2018 08:37:36 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 05 Sep 2018 08:37:58 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 05 Sep 2018 08:37:59 GMT
VOLUME [/spiped]
# Wed, 05 Sep 2018 08:37:59 GMT
WORKDIR /spiped
# Wed, 05 Sep 2018 08:37:59 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 05 Sep 2018 08:37:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 08:37:59 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:802b00ed6f79f48e6a5f44ecbcaf43563d6077aaecb565eee1dfc615c0b18c00`  
		Last Modified: Tue, 04 Sep 2018 21:25:45 GMT  
		Size: 22.5 MB (22485965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d6a4145f3b986374ed36ecd6d01f8136597a1061c139d5e1db76fde9545330f`  
		Last Modified: Wed, 05 Sep 2018 08:38:28 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:389424de50f0ec9b0cfa8b55b6c588c43fa0387ed7672f88009eca3e1ff0b9bf`  
		Last Modified: Wed, 05 Sep 2018 08:38:29 GMT  
		Size: 1.9 MB (1881480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:514c39a4af39c647596f40be4846c5676622348b3db7415df9270b131ca03420`  
		Last Modified: Wed, 05 Sep 2018 08:38:29 GMT  
		Size: 5.9 MB (5877857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c8d3dbeb83cb140a79eb4cfe8f3189f3726e042682bc6c4499cf35d33a9353`  
		Last Modified: Wed, 05 Sep 2018 08:38:28 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d40f535cb3cd8c2a6d61e6d3fdc229cc6fb7ac96bf001ba5c5a94cd7d81d05e`  
		Last Modified: Wed, 05 Sep 2018 08:38:28 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1` - linux; arm variant v5

```console
$ docker pull spiped@sha256:a241bef9d5894c927bd2c0a01ee92dc06c8d11c291a66306780b57b8ca623192
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.7 MB (27739456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:250ad4c2c50a83a7249645235132acbaf4de4386f504a6ab99bfb94aa2cbeb9f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 05 Sep 2018 08:55:26 GMT
ADD file:589b238a5fdfe8cc752d0f1769d0c392a7ac3d1204f9247c4eea21dd805663b0 in / 
# Wed, 05 Sep 2018 08:55:26 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:46:48 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 05 Sep 2018 12:46:57 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:46:57 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 05 Sep 2018 12:46:58 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 05 Sep 2018 12:46:58 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 05 Sep 2018 12:47:37 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 05 Sep 2018 12:47:38 GMT
VOLUME [/spiped]
# Wed, 05 Sep 2018 12:47:38 GMT
WORKDIR /spiped
# Wed, 05 Sep 2018 12:47:39 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 05 Sep 2018 12:47:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 12:47:40 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:675207fbfe2baab74b37fd78c8be6e05579c046e848f9e9762e048899fa484f1`  
		Last Modified: Wed, 05 Sep 2018 09:04:43 GMT  
		Size: 21.2 MB (21162872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c919d184c21c34d81869900b75b5ca68e2b44602de3b40b58b16ba91a0aff8f4`  
		Last Modified: Wed, 05 Sep 2018 12:47:59 GMT  
		Size: 1.7 KB (1735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c056b8847fc5bad90f897cc99888d0006c405c8117ed0e0aae9e31195528eefd`  
		Last Modified: Wed, 05 Sep 2018 12:48:00 GMT  
		Size: 1.6 MB (1622911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d506b7a955df6be5df1871f7428e33a4c915bcfed23c008dbda25bf869c413`  
		Last Modified: Wed, 05 Sep 2018 12:48:02 GMT  
		Size: 5.0 MB (4951457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d35367f899af93376663aac21585f259bdef4d87c9ceaa21a6cd8ba49550d50`  
		Last Modified: Wed, 05 Sep 2018 12:47:59 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dac8bec8ed46c2e43c0143fb5fc3496b2f47d2910c8f1efdbd05a8331aeec8eb`  
		Last Modified: Wed, 05 Sep 2018 12:47:59 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1` - linux; arm variant v7

```console
$ docker pull spiped@sha256:15db97143bdef13a6f8857c5ec18624a33399df2329ecb5843e98a847822c428
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.5 MB (25544397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0794ad874be303e95b77432953bee3cf247683a8581f21397e3e3c779be3e6e0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 05 Sep 2018 12:04:38 GMT
ADD file:d20313e46e6d5f092327691d5bc0e83ad6b16d7b44a8dc82fa973c25a13257e7 in / 
# Wed, 05 Sep 2018 12:04:38 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 13:48:00 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 05 Sep 2018 13:48:07 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:48:07 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 05 Sep 2018 13:48:07 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 05 Sep 2018 13:48:08 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 05 Sep 2018 13:48:37 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 05 Sep 2018 13:48:37 GMT
VOLUME [/spiped]
# Wed, 05 Sep 2018 13:48:38 GMT
WORKDIR /spiped
# Wed, 05 Sep 2018 13:48:39 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 05 Sep 2018 13:48:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 13:48:39 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:2e5bbd238113a2057012dfb78ac9665531c276c48962d208492c8802fb0503c0`  
		Last Modified: Wed, 05 Sep 2018 12:13:41 GMT  
		Size: 19.3 MB (19270166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d807de210a85b89719f15d54945081fd57f3018f44d21a1b4811a884a2ac6e7`  
		Last Modified: Wed, 05 Sep 2018 13:48:56 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51ecb7631fb7baa5b05ea5c40306da47665a1baf1bfea06f96b13cd874884b04`  
		Last Modified: Wed, 05 Sep 2018 13:48:56 GMT  
		Size: 1.6 MB (1564301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8790ddf7922fe9e5b8ea9e9c40c9dacdb8bbc69c78d2c4f00574cbbd4cc37616`  
		Last Modified: Wed, 05 Sep 2018 13:48:57 GMT  
		Size: 4.7 MB (4707718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b48e26944c329774ec908d33b7592b0976e57ecc05724b66dfbf90dec81d2b8f`  
		Last Modified: Wed, 05 Sep 2018 13:48:55 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27f6b7f05f0e9a163a836c7e5fa05b7b27c095580ce42c80ec5e75972ccec6cb`  
		Last Modified: Wed, 05 Sep 2018 13:48:55 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:49b11d1c4cb20a87d9c5db348ed6d9383fcaa48a35a6ddd4b921bcd4ceb9e0c8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 MB (27184975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:539d8660c75198ca774376f34581adbe2b28670a9df8367ec7e5691b42005df2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 05 Sep 2018 08:51:48 GMT
ADD file:11982f247d3c0dc005ade5290cf65e3e0f9d4a64f141d4d63317af8680ef094a in / 
# Wed, 05 Sep 2018 08:52:05 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 22:07:06 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 05 Sep 2018 22:07:16 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:07:29 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 05 Sep 2018 22:07:30 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 05 Sep 2018 22:07:31 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 05 Sep 2018 22:09:05 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 05 Sep 2018 22:09:13 GMT
VOLUME [/spiped]
# Wed, 05 Sep 2018 22:09:14 GMT
WORKDIR /spiped
# Wed, 05 Sep 2018 22:09:15 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 05 Sep 2018 22:09:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 22:09:37 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:8d586fc7919319b234c6d8676e8dc3baa39e4edf195a2dec935bdaeeb0862163`  
		Last Modified: Wed, 05 Sep 2018 09:09:38 GMT  
		Size: 20.3 MB (20331641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbd34c6510fa060b5a4d6164dbb569d1158d479fadefe607397750242844333f`  
		Last Modified: Wed, 05 Sep 2018 22:10:24 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4886898ed2d83eed12064b20a67417a3b5af6009edc2f998c3e65ea8e13735a2`  
		Last Modified: Wed, 05 Sep 2018 22:10:24 GMT  
		Size: 1.6 MB (1614894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d055c4517459cd9b3aabcba8f53cb7e1f5d554d08bac03ec73065f021675a70`  
		Last Modified: Wed, 05 Sep 2018 22:10:26 GMT  
		Size: 5.2 MB (5236249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbf72333dcf9b74f6b97e8cd805e85cfb79b367f19213e728cfdaed0f5d01913`  
		Last Modified: Wed, 05 Sep 2018 22:10:23 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cf70d7e24719ffb896cafc412b7b7a77adcb8dfa02bf66d4e7c79d43908ef81`  
		Last Modified: Wed, 05 Sep 2018 22:10:23 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1` - linux; 386

```console
$ docker pull spiped@sha256:980bbbc2dfe0c886e24b2b0c45634478a4bf73d4f960d7b7d981d8d873f45aa2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34306075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73f15b190d603a53f23ef9b6771f5221c0927bfad44c42c09a231a98bc17ca39`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 05 Sep 2018 10:43:58 GMT
ADD file:e2998c599fe122e866e9244aa7fdb1d3bdddb454863a1d003340392684d2388d in / 
# Wed, 05 Sep 2018 10:43:59 GMT
CMD ["bash"]
# Fri, 07 Sep 2018 02:01:33 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Fri, 07 Sep 2018 02:01:38 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Fri, 07 Sep 2018 02:01:38 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 07 Sep 2018 02:01:38 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 07 Sep 2018 02:01:38 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 07 Sep 2018 02:02:05 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Fri, 07 Sep 2018 02:02:05 GMT
VOLUME [/spiped]
# Fri, 07 Sep 2018 02:02:05 GMT
WORKDIR /spiped
# Fri, 07 Sep 2018 02:02:06 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Fri, 07 Sep 2018 02:02:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 07 Sep 2018 02:02:06 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:6a04e6fc95134a0f0b1fc5f312d7930a2abb685ce0081538c60b7d51a221cbb1`  
		Last Modified: Wed, 05 Sep 2018 10:52:19 GMT  
		Size: 23.1 MB (23126488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66fa9a5b0d9054c1db2dd79398f5ae538b837fbbd1feb5c11adb3bec1686f544`  
		Last Modified: Fri, 07 Sep 2018 02:02:36 GMT  
		Size: 1.7 KB (1738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cc5193a3fdec07d1e25372c2b3ad227921f9fdf82f51c469371c9a017449b90`  
		Last Modified: Fri, 07 Sep 2018 02:02:37 GMT  
		Size: 1.9 MB (1874130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0ecab759396753398e3e797391c4b2fad6b438670cc3a454db39f4a9f9d4918`  
		Last Modified: Fri, 07 Sep 2018 02:02:40 GMT  
		Size: 9.3 MB (9303273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e59026c9a6d37b2bb431142104d39083a55b6be39555b6919ee9adab8a37eb7`  
		Last Modified: Fri, 07 Sep 2018 02:02:36 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f07b82017165ee25cf737098dd634385a11dfd60f0c5dab974ede595f311707`  
		Last Modified: Fri, 07 Sep 2018 02:02:36 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1` - linux; ppc64le

```console
$ docker pull spiped@sha256:b80e4ad950b57a360f049b8a46a945831489c8a61273ea91f35c4f776179046c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.1 MB (30142943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87ee001db9c449f679fd09ba7d25d0d3ef97f87a4e33922a6365f8dd37c16675`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 05 Sep 2018 08:19:50 GMT
ADD file:d599fe9ac09b7e23964896f5c79eb1a253ab4cfd9d27e3c409ff87a0cc012a33 in / 
# Wed, 05 Sep 2018 08:19:51 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 13:08:00 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 05 Sep 2018 13:08:14 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:08:16 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 05 Sep 2018 13:08:17 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 05 Sep 2018 13:08:17 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 05 Sep 2018 13:10:34 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 05 Sep 2018 13:10:36 GMT
VOLUME [/spiped]
# Wed, 05 Sep 2018 13:10:38 GMT
WORKDIR /spiped
# Wed, 05 Sep 2018 13:10:40 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 05 Sep 2018 13:10:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 13:10:43 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:92065d7cb20e14e29d25bb528f13bf94b0956f60664782bb1c43ce3192bf762b`  
		Last Modified: Wed, 05 Sep 2018 08:26:35 GMT  
		Size: 22.7 MB (22740533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0f20ee3665c5907641827e6c3c2008487adb35ff07088d735d525352dc08c79`  
		Last Modified: Wed, 05 Sep 2018 13:11:14 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dffe2ed6021efbc1031d08b6f79b92bf41370ca7894bac38bd4b63ecc50d6616`  
		Last Modified: Wed, 05 Sep 2018 13:11:14 GMT  
		Size: 1.6 MB (1552446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:498c348e9e33b15fc12f07ebddbe6363175947b912758e87e727f8b171b27b6b`  
		Last Modified: Wed, 05 Sep 2018 13:11:17 GMT  
		Size: 5.8 MB (5847738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4ddc451b0e8209c78b1a0ba2bef378ca2e8b033c7bd2ce04260155a774fa45b`  
		Last Modified: Wed, 05 Sep 2018 13:11:13 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb41d84b9e3d06b18f20536c0b65341991880a79aae08e835ef2a8dd1e209211`  
		Last Modified: Wed, 05 Sep 2018 13:11:14 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1` - linux; s390x

```console
$ docker pull spiped@sha256:68588a3ce45adc7257513bc43da46988f128bc1b885fb0cdd23e48f0c60cfe47
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 MB (30722773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86f3f39b307fe2188676aab508e7c217b8e73f7c08276e32cc1e287ecc88387d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 05 Sep 2018 11:44:28 GMT
ADD file:f5f366bce70b148326259fed081f171c5f1789dbd1954137fb79deb38cf5cef1 in / 
# Wed, 05 Sep 2018 11:44:29 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 15:03:18 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 05 Sep 2018 15:03:23 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 15:03:23 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 05 Sep 2018 15:03:23 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 05 Sep 2018 15:03:24 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 05 Sep 2018 15:03:48 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 05 Sep 2018 15:03:49 GMT
VOLUME [/spiped]
# Wed, 05 Sep 2018 15:03:49 GMT
WORKDIR /spiped
# Wed, 05 Sep 2018 15:03:50 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 05 Sep 2018 15:03:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 15:03:50 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:599d69132c0524467aafceacede5f8ea0a07f3ae6d5c97a28cf25ce9e1cd4580`  
		Last Modified: Wed, 05 Sep 2018 11:49:20 GMT  
		Size: 22.3 MB (22334611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95c4df251d23a0b0108794c1ebcf380d71af668fa994b41fca52890f0b53902b`  
		Last Modified: Wed, 05 Sep 2018 15:04:15 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10d514e8536ea220f81193e33deb7761573ea717e30075591a98800e9c12740c`  
		Last Modified: Wed, 05 Sep 2018 15:04:14 GMT  
		Size: 1.6 MB (1615617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d44ae2785502cce8957732a17f412a7dcd5b4183ff097fbd28eb9c381d8569f`  
		Last Modified: Wed, 05 Sep 2018 15:04:14 GMT  
		Size: 6.8 MB (6770355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86bd613b27faf0d59772628dbffef949aba395e17b30226c2da79780e99c1ed3`  
		Last Modified: Wed, 05 Sep 2018 15:04:14 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aeaffd4df3ada2b4b99216608a3d87f5bea761f6f4676bc6eaf96d4d04040d9`  
		Last Modified: Wed, 05 Sep 2018 15:04:14 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1.6`

```console
$ docker pull spiped@sha256:87bd48e44b6114246d16d52b1041092001b308d15b43e1db92bc1528d0449825
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
$ docker pull spiped@sha256:844b3111fb71c8cb56c1ff4b43773261617df27d10441f2f8604e40290dfb7a8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.2 MB (30247489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8de20099b2276fba637bffefe7a5c5b77770553fa62c1fa48fa1df60147a3c83`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:34 GMT
ADD file:e6ca98733431f75e97eb09758ba64065d213d51bd2070a95cf15f2ff5adccfc4 in / 
# Tue, 04 Sep 2018 21:21:34 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 08:37:31 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 05 Sep 2018 08:37:35 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 08:37:36 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 05 Sep 2018 08:37:36 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 05 Sep 2018 08:37:36 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 05 Sep 2018 08:37:58 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 05 Sep 2018 08:37:59 GMT
VOLUME [/spiped]
# Wed, 05 Sep 2018 08:37:59 GMT
WORKDIR /spiped
# Wed, 05 Sep 2018 08:37:59 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 05 Sep 2018 08:37:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 08:37:59 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:802b00ed6f79f48e6a5f44ecbcaf43563d6077aaecb565eee1dfc615c0b18c00`  
		Last Modified: Tue, 04 Sep 2018 21:25:45 GMT  
		Size: 22.5 MB (22485965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d6a4145f3b986374ed36ecd6d01f8136597a1061c139d5e1db76fde9545330f`  
		Last Modified: Wed, 05 Sep 2018 08:38:28 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:389424de50f0ec9b0cfa8b55b6c588c43fa0387ed7672f88009eca3e1ff0b9bf`  
		Last Modified: Wed, 05 Sep 2018 08:38:29 GMT  
		Size: 1.9 MB (1881480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:514c39a4af39c647596f40be4846c5676622348b3db7415df9270b131ca03420`  
		Last Modified: Wed, 05 Sep 2018 08:38:29 GMT  
		Size: 5.9 MB (5877857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c8d3dbeb83cb140a79eb4cfe8f3189f3726e042682bc6c4499cf35d33a9353`  
		Last Modified: Wed, 05 Sep 2018 08:38:28 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d40f535cb3cd8c2a6d61e6d3fdc229cc6fb7ac96bf001ba5c5a94cd7d81d05e`  
		Last Modified: Wed, 05 Sep 2018 08:38:28 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6` - linux; arm variant v5

```console
$ docker pull spiped@sha256:a241bef9d5894c927bd2c0a01ee92dc06c8d11c291a66306780b57b8ca623192
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.7 MB (27739456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:250ad4c2c50a83a7249645235132acbaf4de4386f504a6ab99bfb94aa2cbeb9f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 05 Sep 2018 08:55:26 GMT
ADD file:589b238a5fdfe8cc752d0f1769d0c392a7ac3d1204f9247c4eea21dd805663b0 in / 
# Wed, 05 Sep 2018 08:55:26 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:46:48 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 05 Sep 2018 12:46:57 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:46:57 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 05 Sep 2018 12:46:58 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 05 Sep 2018 12:46:58 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 05 Sep 2018 12:47:37 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 05 Sep 2018 12:47:38 GMT
VOLUME [/spiped]
# Wed, 05 Sep 2018 12:47:38 GMT
WORKDIR /spiped
# Wed, 05 Sep 2018 12:47:39 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 05 Sep 2018 12:47:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 12:47:40 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:675207fbfe2baab74b37fd78c8be6e05579c046e848f9e9762e048899fa484f1`  
		Last Modified: Wed, 05 Sep 2018 09:04:43 GMT  
		Size: 21.2 MB (21162872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c919d184c21c34d81869900b75b5ca68e2b44602de3b40b58b16ba91a0aff8f4`  
		Last Modified: Wed, 05 Sep 2018 12:47:59 GMT  
		Size: 1.7 KB (1735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c056b8847fc5bad90f897cc99888d0006c405c8117ed0e0aae9e31195528eefd`  
		Last Modified: Wed, 05 Sep 2018 12:48:00 GMT  
		Size: 1.6 MB (1622911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d506b7a955df6be5df1871f7428e33a4c915bcfed23c008dbda25bf869c413`  
		Last Modified: Wed, 05 Sep 2018 12:48:02 GMT  
		Size: 5.0 MB (4951457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d35367f899af93376663aac21585f259bdef4d87c9ceaa21a6cd8ba49550d50`  
		Last Modified: Wed, 05 Sep 2018 12:47:59 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dac8bec8ed46c2e43c0143fb5fc3496b2f47d2910c8f1efdbd05a8331aeec8eb`  
		Last Modified: Wed, 05 Sep 2018 12:47:59 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6` - linux; arm variant v7

```console
$ docker pull spiped@sha256:15db97143bdef13a6f8857c5ec18624a33399df2329ecb5843e98a847822c428
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.5 MB (25544397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0794ad874be303e95b77432953bee3cf247683a8581f21397e3e3c779be3e6e0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 05 Sep 2018 12:04:38 GMT
ADD file:d20313e46e6d5f092327691d5bc0e83ad6b16d7b44a8dc82fa973c25a13257e7 in / 
# Wed, 05 Sep 2018 12:04:38 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 13:48:00 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 05 Sep 2018 13:48:07 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:48:07 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 05 Sep 2018 13:48:07 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 05 Sep 2018 13:48:08 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 05 Sep 2018 13:48:37 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 05 Sep 2018 13:48:37 GMT
VOLUME [/spiped]
# Wed, 05 Sep 2018 13:48:38 GMT
WORKDIR /spiped
# Wed, 05 Sep 2018 13:48:39 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 05 Sep 2018 13:48:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 13:48:39 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:2e5bbd238113a2057012dfb78ac9665531c276c48962d208492c8802fb0503c0`  
		Last Modified: Wed, 05 Sep 2018 12:13:41 GMT  
		Size: 19.3 MB (19270166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d807de210a85b89719f15d54945081fd57f3018f44d21a1b4811a884a2ac6e7`  
		Last Modified: Wed, 05 Sep 2018 13:48:56 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51ecb7631fb7baa5b05ea5c40306da47665a1baf1bfea06f96b13cd874884b04`  
		Last Modified: Wed, 05 Sep 2018 13:48:56 GMT  
		Size: 1.6 MB (1564301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8790ddf7922fe9e5b8ea9e9c40c9dacdb8bbc69c78d2c4f00574cbbd4cc37616`  
		Last Modified: Wed, 05 Sep 2018 13:48:57 GMT  
		Size: 4.7 MB (4707718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b48e26944c329774ec908d33b7592b0976e57ecc05724b66dfbf90dec81d2b8f`  
		Last Modified: Wed, 05 Sep 2018 13:48:55 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27f6b7f05f0e9a163a836c7e5fa05b7b27c095580ce42c80ec5e75972ccec6cb`  
		Last Modified: Wed, 05 Sep 2018 13:48:55 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:49b11d1c4cb20a87d9c5db348ed6d9383fcaa48a35a6ddd4b921bcd4ceb9e0c8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 MB (27184975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:539d8660c75198ca774376f34581adbe2b28670a9df8367ec7e5691b42005df2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 05 Sep 2018 08:51:48 GMT
ADD file:11982f247d3c0dc005ade5290cf65e3e0f9d4a64f141d4d63317af8680ef094a in / 
# Wed, 05 Sep 2018 08:52:05 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 22:07:06 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 05 Sep 2018 22:07:16 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:07:29 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 05 Sep 2018 22:07:30 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 05 Sep 2018 22:07:31 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 05 Sep 2018 22:09:05 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 05 Sep 2018 22:09:13 GMT
VOLUME [/spiped]
# Wed, 05 Sep 2018 22:09:14 GMT
WORKDIR /spiped
# Wed, 05 Sep 2018 22:09:15 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 05 Sep 2018 22:09:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 22:09:37 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:8d586fc7919319b234c6d8676e8dc3baa39e4edf195a2dec935bdaeeb0862163`  
		Last Modified: Wed, 05 Sep 2018 09:09:38 GMT  
		Size: 20.3 MB (20331641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbd34c6510fa060b5a4d6164dbb569d1158d479fadefe607397750242844333f`  
		Last Modified: Wed, 05 Sep 2018 22:10:24 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4886898ed2d83eed12064b20a67417a3b5af6009edc2f998c3e65ea8e13735a2`  
		Last Modified: Wed, 05 Sep 2018 22:10:24 GMT  
		Size: 1.6 MB (1614894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d055c4517459cd9b3aabcba8f53cb7e1f5d554d08bac03ec73065f021675a70`  
		Last Modified: Wed, 05 Sep 2018 22:10:26 GMT  
		Size: 5.2 MB (5236249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbf72333dcf9b74f6b97e8cd805e85cfb79b367f19213e728cfdaed0f5d01913`  
		Last Modified: Wed, 05 Sep 2018 22:10:23 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cf70d7e24719ffb896cafc412b7b7a77adcb8dfa02bf66d4e7c79d43908ef81`  
		Last Modified: Wed, 05 Sep 2018 22:10:23 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6` - linux; 386

```console
$ docker pull spiped@sha256:980bbbc2dfe0c886e24b2b0c45634478a4bf73d4f960d7b7d981d8d873f45aa2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34306075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73f15b190d603a53f23ef9b6771f5221c0927bfad44c42c09a231a98bc17ca39`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 05 Sep 2018 10:43:58 GMT
ADD file:e2998c599fe122e866e9244aa7fdb1d3bdddb454863a1d003340392684d2388d in / 
# Wed, 05 Sep 2018 10:43:59 GMT
CMD ["bash"]
# Fri, 07 Sep 2018 02:01:33 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Fri, 07 Sep 2018 02:01:38 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Fri, 07 Sep 2018 02:01:38 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 07 Sep 2018 02:01:38 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 07 Sep 2018 02:01:38 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 07 Sep 2018 02:02:05 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Fri, 07 Sep 2018 02:02:05 GMT
VOLUME [/spiped]
# Fri, 07 Sep 2018 02:02:05 GMT
WORKDIR /spiped
# Fri, 07 Sep 2018 02:02:06 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Fri, 07 Sep 2018 02:02:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 07 Sep 2018 02:02:06 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:6a04e6fc95134a0f0b1fc5f312d7930a2abb685ce0081538c60b7d51a221cbb1`  
		Last Modified: Wed, 05 Sep 2018 10:52:19 GMT  
		Size: 23.1 MB (23126488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66fa9a5b0d9054c1db2dd79398f5ae538b837fbbd1feb5c11adb3bec1686f544`  
		Last Modified: Fri, 07 Sep 2018 02:02:36 GMT  
		Size: 1.7 KB (1738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cc5193a3fdec07d1e25372c2b3ad227921f9fdf82f51c469371c9a017449b90`  
		Last Modified: Fri, 07 Sep 2018 02:02:37 GMT  
		Size: 1.9 MB (1874130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0ecab759396753398e3e797391c4b2fad6b438670cc3a454db39f4a9f9d4918`  
		Last Modified: Fri, 07 Sep 2018 02:02:40 GMT  
		Size: 9.3 MB (9303273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e59026c9a6d37b2bb431142104d39083a55b6be39555b6919ee9adab8a37eb7`  
		Last Modified: Fri, 07 Sep 2018 02:02:36 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f07b82017165ee25cf737098dd634385a11dfd60f0c5dab974ede595f311707`  
		Last Modified: Fri, 07 Sep 2018 02:02:36 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6` - linux; ppc64le

```console
$ docker pull spiped@sha256:b80e4ad950b57a360f049b8a46a945831489c8a61273ea91f35c4f776179046c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.1 MB (30142943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87ee001db9c449f679fd09ba7d25d0d3ef97f87a4e33922a6365f8dd37c16675`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 05 Sep 2018 08:19:50 GMT
ADD file:d599fe9ac09b7e23964896f5c79eb1a253ab4cfd9d27e3c409ff87a0cc012a33 in / 
# Wed, 05 Sep 2018 08:19:51 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 13:08:00 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 05 Sep 2018 13:08:14 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:08:16 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 05 Sep 2018 13:08:17 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 05 Sep 2018 13:08:17 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 05 Sep 2018 13:10:34 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 05 Sep 2018 13:10:36 GMT
VOLUME [/spiped]
# Wed, 05 Sep 2018 13:10:38 GMT
WORKDIR /spiped
# Wed, 05 Sep 2018 13:10:40 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 05 Sep 2018 13:10:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 13:10:43 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:92065d7cb20e14e29d25bb528f13bf94b0956f60664782bb1c43ce3192bf762b`  
		Last Modified: Wed, 05 Sep 2018 08:26:35 GMT  
		Size: 22.7 MB (22740533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0f20ee3665c5907641827e6c3c2008487adb35ff07088d735d525352dc08c79`  
		Last Modified: Wed, 05 Sep 2018 13:11:14 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dffe2ed6021efbc1031d08b6f79b92bf41370ca7894bac38bd4b63ecc50d6616`  
		Last Modified: Wed, 05 Sep 2018 13:11:14 GMT  
		Size: 1.6 MB (1552446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:498c348e9e33b15fc12f07ebddbe6363175947b912758e87e727f8b171b27b6b`  
		Last Modified: Wed, 05 Sep 2018 13:11:17 GMT  
		Size: 5.8 MB (5847738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4ddc451b0e8209c78b1a0ba2bef378ca2e8b033c7bd2ce04260155a774fa45b`  
		Last Modified: Wed, 05 Sep 2018 13:11:13 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb41d84b9e3d06b18f20536c0b65341991880a79aae08e835ef2a8dd1e209211`  
		Last Modified: Wed, 05 Sep 2018 13:11:14 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6` - linux; s390x

```console
$ docker pull spiped@sha256:68588a3ce45adc7257513bc43da46988f128bc1b885fb0cdd23e48f0c60cfe47
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 MB (30722773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86f3f39b307fe2188676aab508e7c217b8e73f7c08276e32cc1e287ecc88387d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 05 Sep 2018 11:44:28 GMT
ADD file:f5f366bce70b148326259fed081f171c5f1789dbd1954137fb79deb38cf5cef1 in / 
# Wed, 05 Sep 2018 11:44:29 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 15:03:18 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 05 Sep 2018 15:03:23 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 15:03:23 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 05 Sep 2018 15:03:23 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 05 Sep 2018 15:03:24 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 05 Sep 2018 15:03:48 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 05 Sep 2018 15:03:49 GMT
VOLUME [/spiped]
# Wed, 05 Sep 2018 15:03:49 GMT
WORKDIR /spiped
# Wed, 05 Sep 2018 15:03:50 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 05 Sep 2018 15:03:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 15:03:50 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:599d69132c0524467aafceacede5f8ea0a07f3ae6d5c97a28cf25ce9e1cd4580`  
		Last Modified: Wed, 05 Sep 2018 11:49:20 GMT  
		Size: 22.3 MB (22334611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95c4df251d23a0b0108794c1ebcf380d71af668fa994b41fca52890f0b53902b`  
		Last Modified: Wed, 05 Sep 2018 15:04:15 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10d514e8536ea220f81193e33deb7761573ea717e30075591a98800e9c12740c`  
		Last Modified: Wed, 05 Sep 2018 15:04:14 GMT  
		Size: 1.6 MB (1615617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d44ae2785502cce8957732a17f412a7dcd5b4183ff097fbd28eb9c381d8569f`  
		Last Modified: Wed, 05 Sep 2018 15:04:14 GMT  
		Size: 6.8 MB (6770355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86bd613b27faf0d59772628dbffef949aba395e17b30226c2da79780e99c1ed3`  
		Last Modified: Wed, 05 Sep 2018 15:04:14 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aeaffd4df3ada2b4b99216608a3d87f5bea761f6f4676bc6eaf96d4d04040d9`  
		Last Modified: Wed, 05 Sep 2018 15:04:14 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1.6.0`

```console
$ docker pull spiped@sha256:87bd48e44b6114246d16d52b1041092001b308d15b43e1db92bc1528d0449825
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
$ docker pull spiped@sha256:844b3111fb71c8cb56c1ff4b43773261617df27d10441f2f8604e40290dfb7a8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.2 MB (30247489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8de20099b2276fba637bffefe7a5c5b77770553fa62c1fa48fa1df60147a3c83`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:34 GMT
ADD file:e6ca98733431f75e97eb09758ba64065d213d51bd2070a95cf15f2ff5adccfc4 in / 
# Tue, 04 Sep 2018 21:21:34 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 08:37:31 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 05 Sep 2018 08:37:35 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 08:37:36 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 05 Sep 2018 08:37:36 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 05 Sep 2018 08:37:36 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 05 Sep 2018 08:37:58 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 05 Sep 2018 08:37:59 GMT
VOLUME [/spiped]
# Wed, 05 Sep 2018 08:37:59 GMT
WORKDIR /spiped
# Wed, 05 Sep 2018 08:37:59 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 05 Sep 2018 08:37:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 08:37:59 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:802b00ed6f79f48e6a5f44ecbcaf43563d6077aaecb565eee1dfc615c0b18c00`  
		Last Modified: Tue, 04 Sep 2018 21:25:45 GMT  
		Size: 22.5 MB (22485965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d6a4145f3b986374ed36ecd6d01f8136597a1061c139d5e1db76fde9545330f`  
		Last Modified: Wed, 05 Sep 2018 08:38:28 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:389424de50f0ec9b0cfa8b55b6c588c43fa0387ed7672f88009eca3e1ff0b9bf`  
		Last Modified: Wed, 05 Sep 2018 08:38:29 GMT  
		Size: 1.9 MB (1881480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:514c39a4af39c647596f40be4846c5676622348b3db7415df9270b131ca03420`  
		Last Modified: Wed, 05 Sep 2018 08:38:29 GMT  
		Size: 5.9 MB (5877857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c8d3dbeb83cb140a79eb4cfe8f3189f3726e042682bc6c4499cf35d33a9353`  
		Last Modified: Wed, 05 Sep 2018 08:38:28 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d40f535cb3cd8c2a6d61e6d3fdc229cc6fb7ac96bf001ba5c5a94cd7d81d05e`  
		Last Modified: Wed, 05 Sep 2018 08:38:28 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0` - linux; arm variant v5

```console
$ docker pull spiped@sha256:a241bef9d5894c927bd2c0a01ee92dc06c8d11c291a66306780b57b8ca623192
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.7 MB (27739456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:250ad4c2c50a83a7249645235132acbaf4de4386f504a6ab99bfb94aa2cbeb9f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 05 Sep 2018 08:55:26 GMT
ADD file:589b238a5fdfe8cc752d0f1769d0c392a7ac3d1204f9247c4eea21dd805663b0 in / 
# Wed, 05 Sep 2018 08:55:26 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:46:48 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 05 Sep 2018 12:46:57 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:46:57 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 05 Sep 2018 12:46:58 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 05 Sep 2018 12:46:58 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 05 Sep 2018 12:47:37 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 05 Sep 2018 12:47:38 GMT
VOLUME [/spiped]
# Wed, 05 Sep 2018 12:47:38 GMT
WORKDIR /spiped
# Wed, 05 Sep 2018 12:47:39 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 05 Sep 2018 12:47:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 12:47:40 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:675207fbfe2baab74b37fd78c8be6e05579c046e848f9e9762e048899fa484f1`  
		Last Modified: Wed, 05 Sep 2018 09:04:43 GMT  
		Size: 21.2 MB (21162872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c919d184c21c34d81869900b75b5ca68e2b44602de3b40b58b16ba91a0aff8f4`  
		Last Modified: Wed, 05 Sep 2018 12:47:59 GMT  
		Size: 1.7 KB (1735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c056b8847fc5bad90f897cc99888d0006c405c8117ed0e0aae9e31195528eefd`  
		Last Modified: Wed, 05 Sep 2018 12:48:00 GMT  
		Size: 1.6 MB (1622911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d506b7a955df6be5df1871f7428e33a4c915bcfed23c008dbda25bf869c413`  
		Last Modified: Wed, 05 Sep 2018 12:48:02 GMT  
		Size: 5.0 MB (4951457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d35367f899af93376663aac21585f259bdef4d87c9ceaa21a6cd8ba49550d50`  
		Last Modified: Wed, 05 Sep 2018 12:47:59 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dac8bec8ed46c2e43c0143fb5fc3496b2f47d2910c8f1efdbd05a8331aeec8eb`  
		Last Modified: Wed, 05 Sep 2018 12:47:59 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0` - linux; arm variant v7

```console
$ docker pull spiped@sha256:15db97143bdef13a6f8857c5ec18624a33399df2329ecb5843e98a847822c428
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.5 MB (25544397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0794ad874be303e95b77432953bee3cf247683a8581f21397e3e3c779be3e6e0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 05 Sep 2018 12:04:38 GMT
ADD file:d20313e46e6d5f092327691d5bc0e83ad6b16d7b44a8dc82fa973c25a13257e7 in / 
# Wed, 05 Sep 2018 12:04:38 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 13:48:00 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 05 Sep 2018 13:48:07 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:48:07 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 05 Sep 2018 13:48:07 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 05 Sep 2018 13:48:08 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 05 Sep 2018 13:48:37 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 05 Sep 2018 13:48:37 GMT
VOLUME [/spiped]
# Wed, 05 Sep 2018 13:48:38 GMT
WORKDIR /spiped
# Wed, 05 Sep 2018 13:48:39 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 05 Sep 2018 13:48:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 13:48:39 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:2e5bbd238113a2057012dfb78ac9665531c276c48962d208492c8802fb0503c0`  
		Last Modified: Wed, 05 Sep 2018 12:13:41 GMT  
		Size: 19.3 MB (19270166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d807de210a85b89719f15d54945081fd57f3018f44d21a1b4811a884a2ac6e7`  
		Last Modified: Wed, 05 Sep 2018 13:48:56 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51ecb7631fb7baa5b05ea5c40306da47665a1baf1bfea06f96b13cd874884b04`  
		Last Modified: Wed, 05 Sep 2018 13:48:56 GMT  
		Size: 1.6 MB (1564301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8790ddf7922fe9e5b8ea9e9c40c9dacdb8bbc69c78d2c4f00574cbbd4cc37616`  
		Last Modified: Wed, 05 Sep 2018 13:48:57 GMT  
		Size: 4.7 MB (4707718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b48e26944c329774ec908d33b7592b0976e57ecc05724b66dfbf90dec81d2b8f`  
		Last Modified: Wed, 05 Sep 2018 13:48:55 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27f6b7f05f0e9a163a836c7e5fa05b7b27c095580ce42c80ec5e75972ccec6cb`  
		Last Modified: Wed, 05 Sep 2018 13:48:55 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:49b11d1c4cb20a87d9c5db348ed6d9383fcaa48a35a6ddd4b921bcd4ceb9e0c8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 MB (27184975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:539d8660c75198ca774376f34581adbe2b28670a9df8367ec7e5691b42005df2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 05 Sep 2018 08:51:48 GMT
ADD file:11982f247d3c0dc005ade5290cf65e3e0f9d4a64f141d4d63317af8680ef094a in / 
# Wed, 05 Sep 2018 08:52:05 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 22:07:06 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 05 Sep 2018 22:07:16 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:07:29 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 05 Sep 2018 22:07:30 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 05 Sep 2018 22:07:31 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 05 Sep 2018 22:09:05 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 05 Sep 2018 22:09:13 GMT
VOLUME [/spiped]
# Wed, 05 Sep 2018 22:09:14 GMT
WORKDIR /spiped
# Wed, 05 Sep 2018 22:09:15 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 05 Sep 2018 22:09:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 22:09:37 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:8d586fc7919319b234c6d8676e8dc3baa39e4edf195a2dec935bdaeeb0862163`  
		Last Modified: Wed, 05 Sep 2018 09:09:38 GMT  
		Size: 20.3 MB (20331641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbd34c6510fa060b5a4d6164dbb569d1158d479fadefe607397750242844333f`  
		Last Modified: Wed, 05 Sep 2018 22:10:24 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4886898ed2d83eed12064b20a67417a3b5af6009edc2f998c3e65ea8e13735a2`  
		Last Modified: Wed, 05 Sep 2018 22:10:24 GMT  
		Size: 1.6 MB (1614894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d055c4517459cd9b3aabcba8f53cb7e1f5d554d08bac03ec73065f021675a70`  
		Last Modified: Wed, 05 Sep 2018 22:10:26 GMT  
		Size: 5.2 MB (5236249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbf72333dcf9b74f6b97e8cd805e85cfb79b367f19213e728cfdaed0f5d01913`  
		Last Modified: Wed, 05 Sep 2018 22:10:23 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cf70d7e24719ffb896cafc412b7b7a77adcb8dfa02bf66d4e7c79d43908ef81`  
		Last Modified: Wed, 05 Sep 2018 22:10:23 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0` - linux; 386

```console
$ docker pull spiped@sha256:980bbbc2dfe0c886e24b2b0c45634478a4bf73d4f960d7b7d981d8d873f45aa2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34306075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73f15b190d603a53f23ef9b6771f5221c0927bfad44c42c09a231a98bc17ca39`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 05 Sep 2018 10:43:58 GMT
ADD file:e2998c599fe122e866e9244aa7fdb1d3bdddb454863a1d003340392684d2388d in / 
# Wed, 05 Sep 2018 10:43:59 GMT
CMD ["bash"]
# Fri, 07 Sep 2018 02:01:33 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Fri, 07 Sep 2018 02:01:38 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Fri, 07 Sep 2018 02:01:38 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 07 Sep 2018 02:01:38 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 07 Sep 2018 02:01:38 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 07 Sep 2018 02:02:05 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Fri, 07 Sep 2018 02:02:05 GMT
VOLUME [/spiped]
# Fri, 07 Sep 2018 02:02:05 GMT
WORKDIR /spiped
# Fri, 07 Sep 2018 02:02:06 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Fri, 07 Sep 2018 02:02:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 07 Sep 2018 02:02:06 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:6a04e6fc95134a0f0b1fc5f312d7930a2abb685ce0081538c60b7d51a221cbb1`  
		Last Modified: Wed, 05 Sep 2018 10:52:19 GMT  
		Size: 23.1 MB (23126488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66fa9a5b0d9054c1db2dd79398f5ae538b837fbbd1feb5c11adb3bec1686f544`  
		Last Modified: Fri, 07 Sep 2018 02:02:36 GMT  
		Size: 1.7 KB (1738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cc5193a3fdec07d1e25372c2b3ad227921f9fdf82f51c469371c9a017449b90`  
		Last Modified: Fri, 07 Sep 2018 02:02:37 GMT  
		Size: 1.9 MB (1874130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0ecab759396753398e3e797391c4b2fad6b438670cc3a454db39f4a9f9d4918`  
		Last Modified: Fri, 07 Sep 2018 02:02:40 GMT  
		Size: 9.3 MB (9303273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e59026c9a6d37b2bb431142104d39083a55b6be39555b6919ee9adab8a37eb7`  
		Last Modified: Fri, 07 Sep 2018 02:02:36 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f07b82017165ee25cf737098dd634385a11dfd60f0c5dab974ede595f311707`  
		Last Modified: Fri, 07 Sep 2018 02:02:36 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0` - linux; ppc64le

```console
$ docker pull spiped@sha256:b80e4ad950b57a360f049b8a46a945831489c8a61273ea91f35c4f776179046c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.1 MB (30142943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87ee001db9c449f679fd09ba7d25d0d3ef97f87a4e33922a6365f8dd37c16675`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 05 Sep 2018 08:19:50 GMT
ADD file:d599fe9ac09b7e23964896f5c79eb1a253ab4cfd9d27e3c409ff87a0cc012a33 in / 
# Wed, 05 Sep 2018 08:19:51 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 13:08:00 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 05 Sep 2018 13:08:14 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:08:16 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 05 Sep 2018 13:08:17 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 05 Sep 2018 13:08:17 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 05 Sep 2018 13:10:34 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 05 Sep 2018 13:10:36 GMT
VOLUME [/spiped]
# Wed, 05 Sep 2018 13:10:38 GMT
WORKDIR /spiped
# Wed, 05 Sep 2018 13:10:40 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 05 Sep 2018 13:10:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 13:10:43 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:92065d7cb20e14e29d25bb528f13bf94b0956f60664782bb1c43ce3192bf762b`  
		Last Modified: Wed, 05 Sep 2018 08:26:35 GMT  
		Size: 22.7 MB (22740533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0f20ee3665c5907641827e6c3c2008487adb35ff07088d735d525352dc08c79`  
		Last Modified: Wed, 05 Sep 2018 13:11:14 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dffe2ed6021efbc1031d08b6f79b92bf41370ca7894bac38bd4b63ecc50d6616`  
		Last Modified: Wed, 05 Sep 2018 13:11:14 GMT  
		Size: 1.6 MB (1552446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:498c348e9e33b15fc12f07ebddbe6363175947b912758e87e727f8b171b27b6b`  
		Last Modified: Wed, 05 Sep 2018 13:11:17 GMT  
		Size: 5.8 MB (5847738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4ddc451b0e8209c78b1a0ba2bef378ca2e8b033c7bd2ce04260155a774fa45b`  
		Last Modified: Wed, 05 Sep 2018 13:11:13 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb41d84b9e3d06b18f20536c0b65341991880a79aae08e835ef2a8dd1e209211`  
		Last Modified: Wed, 05 Sep 2018 13:11:14 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0` - linux; s390x

```console
$ docker pull spiped@sha256:68588a3ce45adc7257513bc43da46988f128bc1b885fb0cdd23e48f0c60cfe47
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 MB (30722773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86f3f39b307fe2188676aab508e7c217b8e73f7c08276e32cc1e287ecc88387d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 05 Sep 2018 11:44:28 GMT
ADD file:f5f366bce70b148326259fed081f171c5f1789dbd1954137fb79deb38cf5cef1 in / 
# Wed, 05 Sep 2018 11:44:29 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 15:03:18 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 05 Sep 2018 15:03:23 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 15:03:23 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 05 Sep 2018 15:03:23 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 05 Sep 2018 15:03:24 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 05 Sep 2018 15:03:48 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 05 Sep 2018 15:03:49 GMT
VOLUME [/spiped]
# Wed, 05 Sep 2018 15:03:49 GMT
WORKDIR /spiped
# Wed, 05 Sep 2018 15:03:50 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 05 Sep 2018 15:03:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 15:03:50 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:599d69132c0524467aafceacede5f8ea0a07f3ae6d5c97a28cf25ce9e1cd4580`  
		Last Modified: Wed, 05 Sep 2018 11:49:20 GMT  
		Size: 22.3 MB (22334611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95c4df251d23a0b0108794c1ebcf380d71af668fa994b41fca52890f0b53902b`  
		Last Modified: Wed, 05 Sep 2018 15:04:15 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10d514e8536ea220f81193e33deb7761573ea717e30075591a98800e9c12740c`  
		Last Modified: Wed, 05 Sep 2018 15:04:14 GMT  
		Size: 1.6 MB (1615617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d44ae2785502cce8957732a17f412a7dcd5b4183ff097fbd28eb9c381d8569f`  
		Last Modified: Wed, 05 Sep 2018 15:04:14 GMT  
		Size: 6.8 MB (6770355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86bd613b27faf0d59772628dbffef949aba395e17b30226c2da79780e99c1ed3`  
		Last Modified: Wed, 05 Sep 2018 15:04:14 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aeaffd4df3ada2b4b99216608a3d87f5bea761f6f4676bc6eaf96d4d04040d9`  
		Last Modified: Wed, 05 Sep 2018 15:04:14 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1.6.0-alpine`

```console
$ docker pull spiped@sha256:720af2ce2d50cd223b2881f2e8d66bbc57b3f384e8ea6da46ecab78c13f995eb
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
$ docker pull spiped@sha256:de95f7ce9314414861b82636ee3874ff7e5ca370287c1d6a475fc02a4296d2ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3590423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12a538f79f5a67e631730990d75a54af718209281bf204490f4adc8929a74ba0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 03:33:01 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Wed, 12 Sep 2018 03:33:01 GMT
RUN apk add --no-cache libssl1.0
# Wed, 12 Sep 2018 03:33:02 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 12 Sep 2018 03:33:02 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 12 Sep 2018 03:33:02 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 12 Sep 2018 03:33:12 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Wed, 12 Sep 2018 03:33:12 GMT
VOLUME [/spiped]
# Wed, 12 Sep 2018 03:33:12 GMT
WORKDIR /spiped
# Wed, 12 Sep 2018 03:33:13 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 12 Sep 2018 03:33:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 03:33:13 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4cd4d5655c566961befc476d8473bd378a78974a5d85782058b747349c9f486`  
		Last Modified: Wed, 12 Sep 2018 03:33:29 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0f87be389241977373542df8c38e01da80122a8e828b44f9b21e3757c1a67d8`  
		Last Modified: Wed, 12 Sep 2018 03:33:28 GMT  
		Size: 1.3 MB (1301317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a61fcba03f10b8ce91f652657285e3ebf40fc6b221df56cacb9dd40619a969cd`  
		Last Modified: Wed, 12 Sep 2018 03:33:29 GMT  
		Size: 80.5 KB (80489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca8d7785f39e3a20efd2dc222174ab437307c0a26aaffffd8c837f0d98810976`  
		Last Modified: Wed, 12 Sep 2018 03:33:28 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ac9b20010910568e6224dd622fcfc3cacac5d86bc2d750bf75293bc88294a7b`  
		Last Modified: Wed, 12 Sep 2018 03:33:29 GMT  
		Size: 341.0 B  
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
$ docker pull spiped@sha256:baf9d86e0bec0ce23c95338ec81340508b9570b87ef309fa84fa7677ec4770b9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4740725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:021c73f1309b292da898dbfaef7f107c239c91441d35fbdfecb2029ba89f0441`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 06 Jul 2018 15:02:06 GMT
ADD file:ebd40cda2f6087daf4d14e6dc1ee0b4a0fb5dc96c70129be8e07de0e5c628312 in / 
# Fri, 06 Jul 2018 15:02:07 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 15:02:07 GMT
CMD ["/bin/sh"]
# Fri, 07 Sep 2018 02:02:11 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 07 Sep 2018 02:02:12 GMT
RUN apk add --no-cache libssl1.0
# Fri, 07 Sep 2018 02:02:12 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 07 Sep 2018 02:02:13 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 07 Sep 2018 02:02:13 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 07 Sep 2018 02:02:25 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 07 Sep 2018 02:02:25 GMT
VOLUME [/spiped]
# Fri, 07 Sep 2018 02:02:25 GMT
WORKDIR /spiped
# Fri, 07 Sep 2018 02:02:25 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Fri, 07 Sep 2018 02:02:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 07 Sep 2018 02:02:26 GMT
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
	-	`sha256:9bd149d70fdb8fd261d75b830cf2964354e61ec967e97c54d2ecec75ccc10d08`  
		Last Modified: Fri, 07 Sep 2018 02:02:53 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75d26304305de18d5510938b71fcf29e0f0b812589eef748709a37a35cfafadb`  
		Last Modified: Fri, 07 Sep 2018 02:02:54 GMT  
		Size: 1.1 MB (1123917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eef0acf02a40165a975c52809611b3b2f1fa5c49f1fc180365ec7b651688918f`  
		Last Modified: Fri, 07 Sep 2018 02:02:54 GMT  
		Size: 1.3 MB (1344028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffb54f2d2464ce6f10a2ee1335ac350da077d1514d0041e8f145e2b6b2d11bc0`  
		Last Modified: Fri, 07 Sep 2018 02:02:53 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:868e6b456ed6b06c40cc3aa1815c4df8008ff18d947102b4dad737eb401c608f`  
		Last Modified: Fri, 07 Sep 2018 02:02:55 GMT  
		Size: 340.0 B  
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
$ docker pull spiped@sha256:720af2ce2d50cd223b2881f2e8d66bbc57b3f384e8ea6da46ecab78c13f995eb
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
$ docker pull spiped@sha256:de95f7ce9314414861b82636ee3874ff7e5ca370287c1d6a475fc02a4296d2ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3590423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12a538f79f5a67e631730990d75a54af718209281bf204490f4adc8929a74ba0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 03:33:01 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Wed, 12 Sep 2018 03:33:01 GMT
RUN apk add --no-cache libssl1.0
# Wed, 12 Sep 2018 03:33:02 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 12 Sep 2018 03:33:02 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 12 Sep 2018 03:33:02 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 12 Sep 2018 03:33:12 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Wed, 12 Sep 2018 03:33:12 GMT
VOLUME [/spiped]
# Wed, 12 Sep 2018 03:33:12 GMT
WORKDIR /spiped
# Wed, 12 Sep 2018 03:33:13 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 12 Sep 2018 03:33:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 03:33:13 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4cd4d5655c566961befc476d8473bd378a78974a5d85782058b747349c9f486`  
		Last Modified: Wed, 12 Sep 2018 03:33:29 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0f87be389241977373542df8c38e01da80122a8e828b44f9b21e3757c1a67d8`  
		Last Modified: Wed, 12 Sep 2018 03:33:28 GMT  
		Size: 1.3 MB (1301317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a61fcba03f10b8ce91f652657285e3ebf40fc6b221df56cacb9dd40619a969cd`  
		Last Modified: Wed, 12 Sep 2018 03:33:29 GMT  
		Size: 80.5 KB (80489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca8d7785f39e3a20efd2dc222174ab437307c0a26aaffffd8c837f0d98810976`  
		Last Modified: Wed, 12 Sep 2018 03:33:28 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ac9b20010910568e6224dd622fcfc3cacac5d86bc2d750bf75293bc88294a7b`  
		Last Modified: Wed, 12 Sep 2018 03:33:29 GMT  
		Size: 341.0 B  
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
$ docker pull spiped@sha256:baf9d86e0bec0ce23c95338ec81340508b9570b87ef309fa84fa7677ec4770b9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4740725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:021c73f1309b292da898dbfaef7f107c239c91441d35fbdfecb2029ba89f0441`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 06 Jul 2018 15:02:06 GMT
ADD file:ebd40cda2f6087daf4d14e6dc1ee0b4a0fb5dc96c70129be8e07de0e5c628312 in / 
# Fri, 06 Jul 2018 15:02:07 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 15:02:07 GMT
CMD ["/bin/sh"]
# Fri, 07 Sep 2018 02:02:11 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 07 Sep 2018 02:02:12 GMT
RUN apk add --no-cache libssl1.0
# Fri, 07 Sep 2018 02:02:12 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 07 Sep 2018 02:02:13 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 07 Sep 2018 02:02:13 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 07 Sep 2018 02:02:25 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 07 Sep 2018 02:02:25 GMT
VOLUME [/spiped]
# Fri, 07 Sep 2018 02:02:25 GMT
WORKDIR /spiped
# Fri, 07 Sep 2018 02:02:25 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Fri, 07 Sep 2018 02:02:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 07 Sep 2018 02:02:26 GMT
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
	-	`sha256:9bd149d70fdb8fd261d75b830cf2964354e61ec967e97c54d2ecec75ccc10d08`  
		Last Modified: Fri, 07 Sep 2018 02:02:53 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75d26304305de18d5510938b71fcf29e0f0b812589eef748709a37a35cfafadb`  
		Last Modified: Fri, 07 Sep 2018 02:02:54 GMT  
		Size: 1.1 MB (1123917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eef0acf02a40165a975c52809611b3b2f1fa5c49f1fc180365ec7b651688918f`  
		Last Modified: Fri, 07 Sep 2018 02:02:54 GMT  
		Size: 1.3 MB (1344028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffb54f2d2464ce6f10a2ee1335ac350da077d1514d0041e8f145e2b6b2d11bc0`  
		Last Modified: Fri, 07 Sep 2018 02:02:53 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:868e6b456ed6b06c40cc3aa1815c4df8008ff18d947102b4dad737eb401c608f`  
		Last Modified: Fri, 07 Sep 2018 02:02:55 GMT  
		Size: 340.0 B  
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
$ docker pull spiped@sha256:720af2ce2d50cd223b2881f2e8d66bbc57b3f384e8ea6da46ecab78c13f995eb
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
$ docker pull spiped@sha256:de95f7ce9314414861b82636ee3874ff7e5ca370287c1d6a475fc02a4296d2ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3590423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12a538f79f5a67e631730990d75a54af718209281bf204490f4adc8929a74ba0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 03:33:01 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Wed, 12 Sep 2018 03:33:01 GMT
RUN apk add --no-cache libssl1.0
# Wed, 12 Sep 2018 03:33:02 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 12 Sep 2018 03:33:02 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 12 Sep 2018 03:33:02 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 12 Sep 2018 03:33:12 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Wed, 12 Sep 2018 03:33:12 GMT
VOLUME [/spiped]
# Wed, 12 Sep 2018 03:33:12 GMT
WORKDIR /spiped
# Wed, 12 Sep 2018 03:33:13 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 12 Sep 2018 03:33:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 03:33:13 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4cd4d5655c566961befc476d8473bd378a78974a5d85782058b747349c9f486`  
		Last Modified: Wed, 12 Sep 2018 03:33:29 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0f87be389241977373542df8c38e01da80122a8e828b44f9b21e3757c1a67d8`  
		Last Modified: Wed, 12 Sep 2018 03:33:28 GMT  
		Size: 1.3 MB (1301317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a61fcba03f10b8ce91f652657285e3ebf40fc6b221df56cacb9dd40619a969cd`  
		Last Modified: Wed, 12 Sep 2018 03:33:29 GMT  
		Size: 80.5 KB (80489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca8d7785f39e3a20efd2dc222174ab437307c0a26aaffffd8c837f0d98810976`  
		Last Modified: Wed, 12 Sep 2018 03:33:28 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ac9b20010910568e6224dd622fcfc3cacac5d86bc2d750bf75293bc88294a7b`  
		Last Modified: Wed, 12 Sep 2018 03:33:29 GMT  
		Size: 341.0 B  
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
$ docker pull spiped@sha256:baf9d86e0bec0ce23c95338ec81340508b9570b87ef309fa84fa7677ec4770b9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4740725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:021c73f1309b292da898dbfaef7f107c239c91441d35fbdfecb2029ba89f0441`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 06 Jul 2018 15:02:06 GMT
ADD file:ebd40cda2f6087daf4d14e6dc1ee0b4a0fb5dc96c70129be8e07de0e5c628312 in / 
# Fri, 06 Jul 2018 15:02:07 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 15:02:07 GMT
CMD ["/bin/sh"]
# Fri, 07 Sep 2018 02:02:11 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 07 Sep 2018 02:02:12 GMT
RUN apk add --no-cache libssl1.0
# Fri, 07 Sep 2018 02:02:12 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 07 Sep 2018 02:02:13 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 07 Sep 2018 02:02:13 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 07 Sep 2018 02:02:25 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 07 Sep 2018 02:02:25 GMT
VOLUME [/spiped]
# Fri, 07 Sep 2018 02:02:25 GMT
WORKDIR /spiped
# Fri, 07 Sep 2018 02:02:25 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Fri, 07 Sep 2018 02:02:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 07 Sep 2018 02:02:26 GMT
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
	-	`sha256:9bd149d70fdb8fd261d75b830cf2964354e61ec967e97c54d2ecec75ccc10d08`  
		Last Modified: Fri, 07 Sep 2018 02:02:53 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75d26304305de18d5510938b71fcf29e0f0b812589eef748709a37a35cfafadb`  
		Last Modified: Fri, 07 Sep 2018 02:02:54 GMT  
		Size: 1.1 MB (1123917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eef0acf02a40165a975c52809611b3b2f1fa5c49f1fc180365ec7b651688918f`  
		Last Modified: Fri, 07 Sep 2018 02:02:54 GMT  
		Size: 1.3 MB (1344028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffb54f2d2464ce6f10a2ee1335ac350da077d1514d0041e8f145e2b6b2d11bc0`  
		Last Modified: Fri, 07 Sep 2018 02:02:53 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:868e6b456ed6b06c40cc3aa1815c4df8008ff18d947102b4dad737eb401c608f`  
		Last Modified: Fri, 07 Sep 2018 02:02:55 GMT  
		Size: 340.0 B  
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
$ docker pull spiped@sha256:720af2ce2d50cd223b2881f2e8d66bbc57b3f384e8ea6da46ecab78c13f995eb
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
$ docker pull spiped@sha256:de95f7ce9314414861b82636ee3874ff7e5ca370287c1d6a475fc02a4296d2ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3590423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12a538f79f5a67e631730990d75a54af718209281bf204490f4adc8929a74ba0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 03:33:01 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Wed, 12 Sep 2018 03:33:01 GMT
RUN apk add --no-cache libssl1.0
# Wed, 12 Sep 2018 03:33:02 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 12 Sep 2018 03:33:02 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 12 Sep 2018 03:33:02 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 12 Sep 2018 03:33:12 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Wed, 12 Sep 2018 03:33:12 GMT
VOLUME [/spiped]
# Wed, 12 Sep 2018 03:33:12 GMT
WORKDIR /spiped
# Wed, 12 Sep 2018 03:33:13 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 12 Sep 2018 03:33:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 03:33:13 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4cd4d5655c566961befc476d8473bd378a78974a5d85782058b747349c9f486`  
		Last Modified: Wed, 12 Sep 2018 03:33:29 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0f87be389241977373542df8c38e01da80122a8e828b44f9b21e3757c1a67d8`  
		Last Modified: Wed, 12 Sep 2018 03:33:28 GMT  
		Size: 1.3 MB (1301317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a61fcba03f10b8ce91f652657285e3ebf40fc6b221df56cacb9dd40619a969cd`  
		Last Modified: Wed, 12 Sep 2018 03:33:29 GMT  
		Size: 80.5 KB (80489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca8d7785f39e3a20efd2dc222174ab437307c0a26aaffffd8c837f0d98810976`  
		Last Modified: Wed, 12 Sep 2018 03:33:28 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ac9b20010910568e6224dd622fcfc3cacac5d86bc2d750bf75293bc88294a7b`  
		Last Modified: Wed, 12 Sep 2018 03:33:29 GMT  
		Size: 341.0 B  
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
$ docker pull spiped@sha256:baf9d86e0bec0ce23c95338ec81340508b9570b87ef309fa84fa7677ec4770b9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4740725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:021c73f1309b292da898dbfaef7f107c239c91441d35fbdfecb2029ba89f0441`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 06 Jul 2018 15:02:06 GMT
ADD file:ebd40cda2f6087daf4d14e6dc1ee0b4a0fb5dc96c70129be8e07de0e5c628312 in / 
# Fri, 06 Jul 2018 15:02:07 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 15:02:07 GMT
CMD ["/bin/sh"]
# Fri, 07 Sep 2018 02:02:11 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 07 Sep 2018 02:02:12 GMT
RUN apk add --no-cache libssl1.0
# Fri, 07 Sep 2018 02:02:12 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 07 Sep 2018 02:02:13 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 07 Sep 2018 02:02:13 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 07 Sep 2018 02:02:25 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 07 Sep 2018 02:02:25 GMT
VOLUME [/spiped]
# Fri, 07 Sep 2018 02:02:25 GMT
WORKDIR /spiped
# Fri, 07 Sep 2018 02:02:25 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Fri, 07 Sep 2018 02:02:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 07 Sep 2018 02:02:26 GMT
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
	-	`sha256:9bd149d70fdb8fd261d75b830cf2964354e61ec967e97c54d2ecec75ccc10d08`  
		Last Modified: Fri, 07 Sep 2018 02:02:53 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75d26304305de18d5510938b71fcf29e0f0b812589eef748709a37a35cfafadb`  
		Last Modified: Fri, 07 Sep 2018 02:02:54 GMT  
		Size: 1.1 MB (1123917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eef0acf02a40165a975c52809611b3b2f1fa5c49f1fc180365ec7b651688918f`  
		Last Modified: Fri, 07 Sep 2018 02:02:54 GMT  
		Size: 1.3 MB (1344028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffb54f2d2464ce6f10a2ee1335ac350da077d1514d0041e8f145e2b6b2d11bc0`  
		Last Modified: Fri, 07 Sep 2018 02:02:53 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:868e6b456ed6b06c40cc3aa1815c4df8008ff18d947102b4dad737eb401c608f`  
		Last Modified: Fri, 07 Sep 2018 02:02:55 GMT  
		Size: 340.0 B  
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
$ docker pull spiped@sha256:87bd48e44b6114246d16d52b1041092001b308d15b43e1db92bc1528d0449825
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
$ docker pull spiped@sha256:844b3111fb71c8cb56c1ff4b43773261617df27d10441f2f8604e40290dfb7a8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.2 MB (30247489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8de20099b2276fba637bffefe7a5c5b77770553fa62c1fa48fa1df60147a3c83`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:34 GMT
ADD file:e6ca98733431f75e97eb09758ba64065d213d51bd2070a95cf15f2ff5adccfc4 in / 
# Tue, 04 Sep 2018 21:21:34 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 08:37:31 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 05 Sep 2018 08:37:35 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 08:37:36 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 05 Sep 2018 08:37:36 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 05 Sep 2018 08:37:36 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 05 Sep 2018 08:37:58 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 05 Sep 2018 08:37:59 GMT
VOLUME [/spiped]
# Wed, 05 Sep 2018 08:37:59 GMT
WORKDIR /spiped
# Wed, 05 Sep 2018 08:37:59 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 05 Sep 2018 08:37:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 08:37:59 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:802b00ed6f79f48e6a5f44ecbcaf43563d6077aaecb565eee1dfc615c0b18c00`  
		Last Modified: Tue, 04 Sep 2018 21:25:45 GMT  
		Size: 22.5 MB (22485965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d6a4145f3b986374ed36ecd6d01f8136597a1061c139d5e1db76fde9545330f`  
		Last Modified: Wed, 05 Sep 2018 08:38:28 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:389424de50f0ec9b0cfa8b55b6c588c43fa0387ed7672f88009eca3e1ff0b9bf`  
		Last Modified: Wed, 05 Sep 2018 08:38:29 GMT  
		Size: 1.9 MB (1881480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:514c39a4af39c647596f40be4846c5676622348b3db7415df9270b131ca03420`  
		Last Modified: Wed, 05 Sep 2018 08:38:29 GMT  
		Size: 5.9 MB (5877857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c8d3dbeb83cb140a79eb4cfe8f3189f3726e042682bc6c4499cf35d33a9353`  
		Last Modified: Wed, 05 Sep 2018 08:38:28 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d40f535cb3cd8c2a6d61e6d3fdc229cc6fb7ac96bf001ba5c5a94cd7d81d05e`  
		Last Modified: Wed, 05 Sep 2018 08:38:28 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; arm variant v5

```console
$ docker pull spiped@sha256:a241bef9d5894c927bd2c0a01ee92dc06c8d11c291a66306780b57b8ca623192
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.7 MB (27739456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:250ad4c2c50a83a7249645235132acbaf4de4386f504a6ab99bfb94aa2cbeb9f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 05 Sep 2018 08:55:26 GMT
ADD file:589b238a5fdfe8cc752d0f1769d0c392a7ac3d1204f9247c4eea21dd805663b0 in / 
# Wed, 05 Sep 2018 08:55:26 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:46:48 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 05 Sep 2018 12:46:57 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:46:57 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 05 Sep 2018 12:46:58 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 05 Sep 2018 12:46:58 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 05 Sep 2018 12:47:37 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 05 Sep 2018 12:47:38 GMT
VOLUME [/spiped]
# Wed, 05 Sep 2018 12:47:38 GMT
WORKDIR /spiped
# Wed, 05 Sep 2018 12:47:39 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 05 Sep 2018 12:47:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 12:47:40 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:675207fbfe2baab74b37fd78c8be6e05579c046e848f9e9762e048899fa484f1`  
		Last Modified: Wed, 05 Sep 2018 09:04:43 GMT  
		Size: 21.2 MB (21162872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c919d184c21c34d81869900b75b5ca68e2b44602de3b40b58b16ba91a0aff8f4`  
		Last Modified: Wed, 05 Sep 2018 12:47:59 GMT  
		Size: 1.7 KB (1735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c056b8847fc5bad90f897cc99888d0006c405c8117ed0e0aae9e31195528eefd`  
		Last Modified: Wed, 05 Sep 2018 12:48:00 GMT  
		Size: 1.6 MB (1622911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d506b7a955df6be5df1871f7428e33a4c915bcfed23c008dbda25bf869c413`  
		Last Modified: Wed, 05 Sep 2018 12:48:02 GMT  
		Size: 5.0 MB (4951457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d35367f899af93376663aac21585f259bdef4d87c9ceaa21a6cd8ba49550d50`  
		Last Modified: Wed, 05 Sep 2018 12:47:59 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dac8bec8ed46c2e43c0143fb5fc3496b2f47d2910c8f1efdbd05a8331aeec8eb`  
		Last Modified: Wed, 05 Sep 2018 12:47:59 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; arm variant v7

```console
$ docker pull spiped@sha256:15db97143bdef13a6f8857c5ec18624a33399df2329ecb5843e98a847822c428
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.5 MB (25544397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0794ad874be303e95b77432953bee3cf247683a8581f21397e3e3c779be3e6e0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 05 Sep 2018 12:04:38 GMT
ADD file:d20313e46e6d5f092327691d5bc0e83ad6b16d7b44a8dc82fa973c25a13257e7 in / 
# Wed, 05 Sep 2018 12:04:38 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 13:48:00 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 05 Sep 2018 13:48:07 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:48:07 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 05 Sep 2018 13:48:07 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 05 Sep 2018 13:48:08 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 05 Sep 2018 13:48:37 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 05 Sep 2018 13:48:37 GMT
VOLUME [/spiped]
# Wed, 05 Sep 2018 13:48:38 GMT
WORKDIR /spiped
# Wed, 05 Sep 2018 13:48:39 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 05 Sep 2018 13:48:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 13:48:39 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:2e5bbd238113a2057012dfb78ac9665531c276c48962d208492c8802fb0503c0`  
		Last Modified: Wed, 05 Sep 2018 12:13:41 GMT  
		Size: 19.3 MB (19270166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d807de210a85b89719f15d54945081fd57f3018f44d21a1b4811a884a2ac6e7`  
		Last Modified: Wed, 05 Sep 2018 13:48:56 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51ecb7631fb7baa5b05ea5c40306da47665a1baf1bfea06f96b13cd874884b04`  
		Last Modified: Wed, 05 Sep 2018 13:48:56 GMT  
		Size: 1.6 MB (1564301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8790ddf7922fe9e5b8ea9e9c40c9dacdb8bbc69c78d2c4f00574cbbd4cc37616`  
		Last Modified: Wed, 05 Sep 2018 13:48:57 GMT  
		Size: 4.7 MB (4707718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b48e26944c329774ec908d33b7592b0976e57ecc05724b66dfbf90dec81d2b8f`  
		Last Modified: Wed, 05 Sep 2018 13:48:55 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27f6b7f05f0e9a163a836c7e5fa05b7b27c095580ce42c80ec5e75972ccec6cb`  
		Last Modified: Wed, 05 Sep 2018 13:48:55 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:49b11d1c4cb20a87d9c5db348ed6d9383fcaa48a35a6ddd4b921bcd4ceb9e0c8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 MB (27184975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:539d8660c75198ca774376f34581adbe2b28670a9df8367ec7e5691b42005df2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 05 Sep 2018 08:51:48 GMT
ADD file:11982f247d3c0dc005ade5290cf65e3e0f9d4a64f141d4d63317af8680ef094a in / 
# Wed, 05 Sep 2018 08:52:05 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 22:07:06 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 05 Sep 2018 22:07:16 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:07:29 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 05 Sep 2018 22:07:30 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 05 Sep 2018 22:07:31 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 05 Sep 2018 22:09:05 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 05 Sep 2018 22:09:13 GMT
VOLUME [/spiped]
# Wed, 05 Sep 2018 22:09:14 GMT
WORKDIR /spiped
# Wed, 05 Sep 2018 22:09:15 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 05 Sep 2018 22:09:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 22:09:37 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:8d586fc7919319b234c6d8676e8dc3baa39e4edf195a2dec935bdaeeb0862163`  
		Last Modified: Wed, 05 Sep 2018 09:09:38 GMT  
		Size: 20.3 MB (20331641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbd34c6510fa060b5a4d6164dbb569d1158d479fadefe607397750242844333f`  
		Last Modified: Wed, 05 Sep 2018 22:10:24 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4886898ed2d83eed12064b20a67417a3b5af6009edc2f998c3e65ea8e13735a2`  
		Last Modified: Wed, 05 Sep 2018 22:10:24 GMT  
		Size: 1.6 MB (1614894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d055c4517459cd9b3aabcba8f53cb7e1f5d554d08bac03ec73065f021675a70`  
		Last Modified: Wed, 05 Sep 2018 22:10:26 GMT  
		Size: 5.2 MB (5236249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbf72333dcf9b74f6b97e8cd805e85cfb79b367f19213e728cfdaed0f5d01913`  
		Last Modified: Wed, 05 Sep 2018 22:10:23 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cf70d7e24719ffb896cafc412b7b7a77adcb8dfa02bf66d4e7c79d43908ef81`  
		Last Modified: Wed, 05 Sep 2018 22:10:23 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; 386

```console
$ docker pull spiped@sha256:980bbbc2dfe0c886e24b2b0c45634478a4bf73d4f960d7b7d981d8d873f45aa2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34306075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73f15b190d603a53f23ef9b6771f5221c0927bfad44c42c09a231a98bc17ca39`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 05 Sep 2018 10:43:58 GMT
ADD file:e2998c599fe122e866e9244aa7fdb1d3bdddb454863a1d003340392684d2388d in / 
# Wed, 05 Sep 2018 10:43:59 GMT
CMD ["bash"]
# Fri, 07 Sep 2018 02:01:33 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Fri, 07 Sep 2018 02:01:38 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Fri, 07 Sep 2018 02:01:38 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 07 Sep 2018 02:01:38 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 07 Sep 2018 02:01:38 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 07 Sep 2018 02:02:05 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Fri, 07 Sep 2018 02:02:05 GMT
VOLUME [/spiped]
# Fri, 07 Sep 2018 02:02:05 GMT
WORKDIR /spiped
# Fri, 07 Sep 2018 02:02:06 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Fri, 07 Sep 2018 02:02:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 07 Sep 2018 02:02:06 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:6a04e6fc95134a0f0b1fc5f312d7930a2abb685ce0081538c60b7d51a221cbb1`  
		Last Modified: Wed, 05 Sep 2018 10:52:19 GMT  
		Size: 23.1 MB (23126488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66fa9a5b0d9054c1db2dd79398f5ae538b837fbbd1feb5c11adb3bec1686f544`  
		Last Modified: Fri, 07 Sep 2018 02:02:36 GMT  
		Size: 1.7 KB (1738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cc5193a3fdec07d1e25372c2b3ad227921f9fdf82f51c469371c9a017449b90`  
		Last Modified: Fri, 07 Sep 2018 02:02:37 GMT  
		Size: 1.9 MB (1874130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0ecab759396753398e3e797391c4b2fad6b438670cc3a454db39f4a9f9d4918`  
		Last Modified: Fri, 07 Sep 2018 02:02:40 GMT  
		Size: 9.3 MB (9303273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e59026c9a6d37b2bb431142104d39083a55b6be39555b6919ee9adab8a37eb7`  
		Last Modified: Fri, 07 Sep 2018 02:02:36 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f07b82017165ee25cf737098dd634385a11dfd60f0c5dab974ede595f311707`  
		Last Modified: Fri, 07 Sep 2018 02:02:36 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; ppc64le

```console
$ docker pull spiped@sha256:b80e4ad950b57a360f049b8a46a945831489c8a61273ea91f35c4f776179046c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.1 MB (30142943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87ee001db9c449f679fd09ba7d25d0d3ef97f87a4e33922a6365f8dd37c16675`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 05 Sep 2018 08:19:50 GMT
ADD file:d599fe9ac09b7e23964896f5c79eb1a253ab4cfd9d27e3c409ff87a0cc012a33 in / 
# Wed, 05 Sep 2018 08:19:51 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 13:08:00 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 05 Sep 2018 13:08:14 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:08:16 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 05 Sep 2018 13:08:17 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 05 Sep 2018 13:08:17 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 05 Sep 2018 13:10:34 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 05 Sep 2018 13:10:36 GMT
VOLUME [/spiped]
# Wed, 05 Sep 2018 13:10:38 GMT
WORKDIR /spiped
# Wed, 05 Sep 2018 13:10:40 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 05 Sep 2018 13:10:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 13:10:43 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:92065d7cb20e14e29d25bb528f13bf94b0956f60664782bb1c43ce3192bf762b`  
		Last Modified: Wed, 05 Sep 2018 08:26:35 GMT  
		Size: 22.7 MB (22740533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0f20ee3665c5907641827e6c3c2008487adb35ff07088d735d525352dc08c79`  
		Last Modified: Wed, 05 Sep 2018 13:11:14 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dffe2ed6021efbc1031d08b6f79b92bf41370ca7894bac38bd4b63ecc50d6616`  
		Last Modified: Wed, 05 Sep 2018 13:11:14 GMT  
		Size: 1.6 MB (1552446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:498c348e9e33b15fc12f07ebddbe6363175947b912758e87e727f8b171b27b6b`  
		Last Modified: Wed, 05 Sep 2018 13:11:17 GMT  
		Size: 5.8 MB (5847738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4ddc451b0e8209c78b1a0ba2bef378ca2e8b033c7bd2ce04260155a774fa45b`  
		Last Modified: Wed, 05 Sep 2018 13:11:13 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb41d84b9e3d06b18f20536c0b65341991880a79aae08e835ef2a8dd1e209211`  
		Last Modified: Wed, 05 Sep 2018 13:11:14 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; s390x

```console
$ docker pull spiped@sha256:68588a3ce45adc7257513bc43da46988f128bc1b885fb0cdd23e48f0c60cfe47
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 MB (30722773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86f3f39b307fe2188676aab508e7c217b8e73f7c08276e32cc1e287ecc88387d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 05 Sep 2018 11:44:28 GMT
ADD file:f5f366bce70b148326259fed081f171c5f1789dbd1954137fb79deb38cf5cef1 in / 
# Wed, 05 Sep 2018 11:44:29 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 15:03:18 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 05 Sep 2018 15:03:23 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 15:03:23 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 05 Sep 2018 15:03:23 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 05 Sep 2018 15:03:24 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 05 Sep 2018 15:03:48 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 05 Sep 2018 15:03:49 GMT
VOLUME [/spiped]
# Wed, 05 Sep 2018 15:03:49 GMT
WORKDIR /spiped
# Wed, 05 Sep 2018 15:03:50 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 05 Sep 2018 15:03:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 15:03:50 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:599d69132c0524467aafceacede5f8ea0a07f3ae6d5c97a28cf25ce9e1cd4580`  
		Last Modified: Wed, 05 Sep 2018 11:49:20 GMT  
		Size: 22.3 MB (22334611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95c4df251d23a0b0108794c1ebcf380d71af668fa994b41fca52890f0b53902b`  
		Last Modified: Wed, 05 Sep 2018 15:04:15 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10d514e8536ea220f81193e33deb7761573ea717e30075591a98800e9c12740c`  
		Last Modified: Wed, 05 Sep 2018 15:04:14 GMT  
		Size: 1.6 MB (1615617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d44ae2785502cce8957732a17f412a7dcd5b4183ff097fbd28eb9c381d8569f`  
		Last Modified: Wed, 05 Sep 2018 15:04:14 GMT  
		Size: 6.8 MB (6770355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86bd613b27faf0d59772628dbffef949aba395e17b30226c2da79780e99c1ed3`  
		Last Modified: Wed, 05 Sep 2018 15:04:14 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aeaffd4df3ada2b4b99216608a3d87f5bea761f6f4676bc6eaf96d4d04040d9`  
		Last Modified: Wed, 05 Sep 2018 15:04:14 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
