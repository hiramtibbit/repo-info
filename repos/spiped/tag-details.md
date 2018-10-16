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
$ docker pull spiped@sha256:a2b194a5151c1a1a9465180479b8daf043be7fc645ed7245bba37bf05371ff6f
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
$ docker pull spiped@sha256:482974814a66c816ccee5a8bff1c09889edef010d81eeae8e7b18a36bade0b07
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.2 MB (30247500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b79c2fb5484ce6908a84a7e46303c617372043b2c52f718decfe7c3803fc6bc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 04:24:33 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 16 Oct 2018 04:24:37 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 04:24:37 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 16 Oct 2018 04:24:38 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 16 Oct 2018 04:24:38 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 16 Oct 2018 04:25:00 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 16 Oct 2018 04:25:01 GMT
VOLUME [/spiped]
# Tue, 16 Oct 2018 04:25:01 GMT
WORKDIR /spiped
# Tue, 16 Oct 2018 04:25:01 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Tue, 16 Oct 2018 04:25:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 04:25:02 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f40232465b30d57b99583b1463902715ca4b6b2cca0958042ac1ca0e4a4ebb32`  
		Last Modified: Tue, 16 Oct 2018 04:25:17 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f20340f9998dfe2daa4438ea75a690cd73ceb179d9dea8b0b4939b0ba2869ab`  
		Last Modified: Tue, 16 Oct 2018 04:25:17 GMT  
		Size: 1.9 MB (1881455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc18f2c47a77437d8ded4f209b84300e042f43e80dacde4441897efa5f511bd9`  
		Last Modified: Tue, 16 Oct 2018 04:25:19 GMT  
		Size: 5.9 MB (5877818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9a9746bad23360368ac49f8a55ff9dc2f6dd8013fd3e8a8fee146f68e3ed682`  
		Last Modified: Tue, 16 Oct 2018 04:25:17 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:575d849a79780cc899e806f9d31868af01f6c837fdca2c9227b2da574d43d4f6`  
		Last Modified: Tue, 16 Oct 2018 04:25:22 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1` - linux; arm variant v5

```console
$ docker pull spiped@sha256:660c78c8a0fb0bfc5c9b506840edbc7cd5a65cc9c61c9a6308e85c7133cad9f7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.7 MB (27739671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c42d5ba89bc3fefad199251293efebeabb83b7a2e128a3d88f414078f2f1b312`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 16 Oct 2018 08:55:22 GMT
ADD file:8f2148adabc29587e17b50138f305f39e94e0e2bd9211a9f913fef56013ac35a in / 
# Tue, 16 Oct 2018 08:55:23 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 11:56:36 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 16 Oct 2018 11:56:45 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 11:56:45 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 16 Oct 2018 11:56:46 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 16 Oct 2018 11:56:46 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 16 Oct 2018 11:57:28 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 16 Oct 2018 11:57:28 GMT
VOLUME [/spiped]
# Tue, 16 Oct 2018 11:57:29 GMT
WORKDIR /spiped
# Tue, 16 Oct 2018 11:57:30 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Tue, 16 Oct 2018 11:57:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 11:57:30 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:4b7ffdf9817f718c84be550e8edf757070396d69165fa729c6ddd4e775428eb2`  
		Last Modified: Tue, 16 Oct 2018 09:04:44 GMT  
		Size: 21.2 MB (21162965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28112441dc968adddd665b83134ac336f22752e84978dd5290e95f19a7e64aaf`  
		Last Modified: Tue, 16 Oct 2018 11:57:40 GMT  
		Size: 1.7 KB (1738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6a21834421fd88fe63afbf08dba36ccca1dff5025798307e9b392c822e8a5c4`  
		Last Modified: Tue, 16 Oct 2018 11:57:43 GMT  
		Size: 1.6 MB (1622963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72c787750b8fb392f9645924310f83b3f22bdd310e18ba8fd276393909fa5571`  
		Last Modified: Tue, 16 Oct 2018 11:57:42 GMT  
		Size: 5.0 MB (4951524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5dcd81de183ef4e23b406c4c1365951b1fadbe7d941696e47e7e19b8fcf81a3`  
		Last Modified: Tue, 16 Oct 2018 11:57:41 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9727d05fed22cf1b7c372dcd90ef06c98946bc60dd1cccf8c13218e1d1c3fc2b`  
		Last Modified: Tue, 16 Oct 2018 11:57:40 GMT  
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
$ docker pull spiped@sha256:de921f604234c88275b2eabcf38786064d1f1a98303cda48f09c934ffbae60ac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 MB (27184842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59aa8164a7c8d13f2a0621cb6d5fee1be76f740baa3bce61a01aed3c81110f7d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:45 GMT
ADD file:e83c09a5cfc1cecaeba6b736737d551fe0f5d3f204ec3fc984fe768003774f81 in / 
# Tue, 16 Oct 2018 08:43:46 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 21:07:57 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 16 Oct 2018 21:08:07 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 21:08:08 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 16 Oct 2018 21:08:08 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 16 Oct 2018 21:08:09 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 16 Oct 2018 21:09:44 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 16 Oct 2018 21:09:45 GMT
VOLUME [/spiped]
# Tue, 16 Oct 2018 21:09:46 GMT
WORKDIR /spiped
# Tue, 16 Oct 2018 21:09:47 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Tue, 16 Oct 2018 21:09:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 21:09:48 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:141796bfcf0d5a5edb072138e517bf85deef4f47f40afb51ba8705bec3b921dd`  
		Last Modified: Tue, 16 Oct 2018 08:50:53 GMT  
		Size: 20.3 MB (20331585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38384241fdd3f1d522279dcebae58317063f256968f6ecc44c3730a30ba465ca`  
		Last Modified: Tue, 16 Oct 2018 21:10:48 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a689a3c2bc58ff11567229039928ae0561bb3e9c2d3e70380137faf729cabe21`  
		Last Modified: Tue, 16 Oct 2018 21:10:49 GMT  
		Size: 1.6 MB (1614877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3930c0a6c0d9d37ae1b5b32326b0dffc1d1506bd30ddb91368e9cd8d50a04900`  
		Last Modified: Tue, 16 Oct 2018 21:11:32 GMT  
		Size: 5.2 MB (5236186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:505faad41b9d4798cb7c77d3f56b00cbd1762da19d10bb143bee95fbff1a5c3a`  
		Last Modified: Tue, 16 Oct 2018 21:10:48 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:188293f30c3c905bbf712e3ba288d20833c00c6f115607ac83756275a016516f`  
		Last Modified: Tue, 16 Oct 2018 21:10:48 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1` - linux; 386

```console
$ docker pull spiped@sha256:374110b135fcae920ef23fc2f3e0323e3669ec114594854aa3e648136981d2ef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34306250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cf0b2729c465909cefcafbba3cad26924c630622c424bbec7dff68867061a35`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 16 Oct 2018 10:49:05 GMT
ADD file:a71ef0e9adb528ae2dc5ca3395654522c23762d8936a4902378c6749bb357582 in / 
# Tue, 16 Oct 2018 10:49:05 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 22:14:14 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 16 Oct 2018 22:14:19 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 22:14:19 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 16 Oct 2018 22:14:20 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 16 Oct 2018 22:14:20 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 16 Oct 2018 22:14:46 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 16 Oct 2018 22:14:47 GMT
VOLUME [/spiped]
# Tue, 16 Oct 2018 22:14:47 GMT
WORKDIR /spiped
# Tue, 16 Oct 2018 22:14:47 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Tue, 16 Oct 2018 22:14:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 22:14:48 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:2b7bcb618c4033f37486fd700e6d0debf2260935f888a192119c41eaddd29978`  
		Last Modified: Tue, 16 Oct 2018 11:06:15 GMT  
		Size: 23.1 MB (23126605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4de3efcd25105b1b8b691a38a3264a4087a12c9a09d396da55bd5d92557729a6`  
		Last Modified: Tue, 16 Oct 2018 22:15:02 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83a9672ed4d9f0558371083ca5db30c909d65610c166e3948871501e39c7bde5`  
		Last Modified: Tue, 16 Oct 2018 22:15:03 GMT  
		Size: 1.9 MB (1874162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd7d97b45f78a1ac4131fd06b3770295efff0c2cfe9c70506cffc40a105b3daf`  
		Last Modified: Tue, 16 Oct 2018 22:15:06 GMT  
		Size: 9.3 MB (9303298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83360694a312146b4ce44f4f0a9a56414b0ca94b2626b2972ef9a4f6f5f8e0ad`  
		Last Modified: Tue, 16 Oct 2018 22:15:03 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e313f32e062b21b250aac4f28cb7381f0e779d1cd2df98bb00d9aaa7f0355bf`  
		Last Modified: Tue, 16 Oct 2018 22:15:03 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1` - linux; ppc64le

```console
$ docker pull spiped@sha256:afbd0474901ca5515b4e90c10e3640d824f9ac2875184e27fff5aaa98bf7f72c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.1 MB (30142483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:258202aa10b30412d8e5d44d360fba612e4967324f282a57b5673c1a1c76ef73`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 16 Oct 2018 08:22:25 GMT
ADD file:b1fa1d0ffa2b206311dfd95642d74c3312565a1ec2e6e3a2197bfd2a4b3de6c6 in / 
# Tue, 16 Oct 2018 08:22:30 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 10:18:41 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 16 Oct 2018 10:18:54 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 10:18:58 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 16 Oct 2018 10:18:59 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 16 Oct 2018 10:19:00 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 16 Oct 2018 10:20:20 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 16 Oct 2018 10:20:22 GMT
VOLUME [/spiped]
# Tue, 16 Oct 2018 10:20:24 GMT
WORKDIR /spiped
# Tue, 16 Oct 2018 10:20:25 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Tue, 16 Oct 2018 10:20:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 10:20:27 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:202f659db3e53c01ac947538d8b37251e9fa16c4a6a699dc6c2a8910afcdfed4`  
		Last Modified: Tue, 16 Oct 2018 08:30:59 GMT  
		Size: 22.7 MB (22740583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61dc8355cacf797ac78dc0d3d6d85a57aa7bccf9e0f21bcac1e43a8031d562d7`  
		Last Modified: Tue, 16 Oct 2018 10:20:44 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45d893b7a17f2b58609eb4629f61044fd072ef2ed881a2ad6fd6d909f0eb9810`  
		Last Modified: Tue, 16 Oct 2018 10:20:45 GMT  
		Size: 1.6 MB (1552446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f72cede59af8465e89acaf3b94f036a978b041461d238a7a138beb263fba04c3`  
		Last Modified: Tue, 16 Oct 2018 10:20:47 GMT  
		Size: 5.8 MB (5847233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91bc4405f8cec3316e11252cd8d4bfd0c990fc29e987fe6032b14d7f755efdf2`  
		Last Modified: Tue, 16 Oct 2018 10:20:44 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8420ea4dbb42f4ff384a2ac8dbf5abfd0fbc8858549847ea2f188b353cadcbe`  
		Last Modified: Tue, 16 Oct 2018 10:20:44 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1` - linux; s390x

```console
$ docker pull spiped@sha256:4ffd7bfa6027a62ffbb70519ac13203b358c55c12f6f79697954554170887a1b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 MB (30722883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab9834066afbafd563e8466cdd3cefb0a50bb1e7fa6aba7c8b76d5c3e02c983f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 16 Oct 2018 11:42:52 GMT
ADD file:a7cc9e5280b465a6e72c8b1331e009ddd18bff12c000c9e49ababac631179edc in / 
# Tue, 16 Oct 2018 11:42:52 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:26:54 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 16 Oct 2018 12:26:58 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:26:59 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 16 Oct 2018 12:26:59 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 16 Oct 2018 12:26:59 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 16 Oct 2018 12:27:24 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 16 Oct 2018 12:27:24 GMT
VOLUME [/spiped]
# Tue, 16 Oct 2018 12:27:24 GMT
WORKDIR /spiped
# Tue, 16 Oct 2018 12:27:25 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Tue, 16 Oct 2018 12:27:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 12:27:25 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:b16a7816eac3ca0893b75f07b37e5e276ba331e1a35619343718d1c33f877877`  
		Last Modified: Tue, 16 Oct 2018 11:46:03 GMT  
		Size: 22.3 MB (22334662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f297c844ef6d8b2fb45ccc8e1041aec7e500b345e2e825486f053a073012d64`  
		Last Modified: Tue, 16 Oct 2018 12:27:38 GMT  
		Size: 1.8 KB (1761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32ac669a6cb40400cfc70849f689bbeea639b106482eaffdb57bc0fccb56a4b4`  
		Last Modified: Tue, 16 Oct 2018 12:27:38 GMT  
		Size: 1.6 MB (1615639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18718a25fa922b8f12e34812be8bf5c0f77fccf25aaed5c390ff3072204be785`  
		Last Modified: Tue, 16 Oct 2018 12:27:40 GMT  
		Size: 6.8 MB (6770376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:723422ff95b5ead0c857f0f6a270f8dfb945ce115b6c8816da72896a3be46c53`  
		Last Modified: Tue, 16 Oct 2018 12:27:37 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4008b6b2dc4178d1797f65ce8af7fe04aa017d9f1962741b23584e1a93ebc45d`  
		Last Modified: Tue, 16 Oct 2018 12:27:37 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1.6`

```console
$ docker pull spiped@sha256:a2b194a5151c1a1a9465180479b8daf043be7fc645ed7245bba37bf05371ff6f
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
$ docker pull spiped@sha256:482974814a66c816ccee5a8bff1c09889edef010d81eeae8e7b18a36bade0b07
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.2 MB (30247500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b79c2fb5484ce6908a84a7e46303c617372043b2c52f718decfe7c3803fc6bc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 04:24:33 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 16 Oct 2018 04:24:37 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 04:24:37 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 16 Oct 2018 04:24:38 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 16 Oct 2018 04:24:38 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 16 Oct 2018 04:25:00 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 16 Oct 2018 04:25:01 GMT
VOLUME [/spiped]
# Tue, 16 Oct 2018 04:25:01 GMT
WORKDIR /spiped
# Tue, 16 Oct 2018 04:25:01 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Tue, 16 Oct 2018 04:25:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 04:25:02 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f40232465b30d57b99583b1463902715ca4b6b2cca0958042ac1ca0e4a4ebb32`  
		Last Modified: Tue, 16 Oct 2018 04:25:17 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f20340f9998dfe2daa4438ea75a690cd73ceb179d9dea8b0b4939b0ba2869ab`  
		Last Modified: Tue, 16 Oct 2018 04:25:17 GMT  
		Size: 1.9 MB (1881455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc18f2c47a77437d8ded4f209b84300e042f43e80dacde4441897efa5f511bd9`  
		Last Modified: Tue, 16 Oct 2018 04:25:19 GMT  
		Size: 5.9 MB (5877818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9a9746bad23360368ac49f8a55ff9dc2f6dd8013fd3e8a8fee146f68e3ed682`  
		Last Modified: Tue, 16 Oct 2018 04:25:17 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:575d849a79780cc899e806f9d31868af01f6c837fdca2c9227b2da574d43d4f6`  
		Last Modified: Tue, 16 Oct 2018 04:25:22 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6` - linux; arm variant v5

```console
$ docker pull spiped@sha256:660c78c8a0fb0bfc5c9b506840edbc7cd5a65cc9c61c9a6308e85c7133cad9f7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.7 MB (27739671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c42d5ba89bc3fefad199251293efebeabb83b7a2e128a3d88f414078f2f1b312`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 16 Oct 2018 08:55:22 GMT
ADD file:8f2148adabc29587e17b50138f305f39e94e0e2bd9211a9f913fef56013ac35a in / 
# Tue, 16 Oct 2018 08:55:23 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 11:56:36 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 16 Oct 2018 11:56:45 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 11:56:45 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 16 Oct 2018 11:56:46 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 16 Oct 2018 11:56:46 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 16 Oct 2018 11:57:28 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 16 Oct 2018 11:57:28 GMT
VOLUME [/spiped]
# Tue, 16 Oct 2018 11:57:29 GMT
WORKDIR /spiped
# Tue, 16 Oct 2018 11:57:30 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Tue, 16 Oct 2018 11:57:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 11:57:30 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:4b7ffdf9817f718c84be550e8edf757070396d69165fa729c6ddd4e775428eb2`  
		Last Modified: Tue, 16 Oct 2018 09:04:44 GMT  
		Size: 21.2 MB (21162965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28112441dc968adddd665b83134ac336f22752e84978dd5290e95f19a7e64aaf`  
		Last Modified: Tue, 16 Oct 2018 11:57:40 GMT  
		Size: 1.7 KB (1738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6a21834421fd88fe63afbf08dba36ccca1dff5025798307e9b392c822e8a5c4`  
		Last Modified: Tue, 16 Oct 2018 11:57:43 GMT  
		Size: 1.6 MB (1622963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72c787750b8fb392f9645924310f83b3f22bdd310e18ba8fd276393909fa5571`  
		Last Modified: Tue, 16 Oct 2018 11:57:42 GMT  
		Size: 5.0 MB (4951524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5dcd81de183ef4e23b406c4c1365951b1fadbe7d941696e47e7e19b8fcf81a3`  
		Last Modified: Tue, 16 Oct 2018 11:57:41 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9727d05fed22cf1b7c372dcd90ef06c98946bc60dd1cccf8c13218e1d1c3fc2b`  
		Last Modified: Tue, 16 Oct 2018 11:57:40 GMT  
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
$ docker pull spiped@sha256:de921f604234c88275b2eabcf38786064d1f1a98303cda48f09c934ffbae60ac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 MB (27184842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59aa8164a7c8d13f2a0621cb6d5fee1be76f740baa3bce61a01aed3c81110f7d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:45 GMT
ADD file:e83c09a5cfc1cecaeba6b736737d551fe0f5d3f204ec3fc984fe768003774f81 in / 
# Tue, 16 Oct 2018 08:43:46 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 21:07:57 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 16 Oct 2018 21:08:07 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 21:08:08 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 16 Oct 2018 21:08:08 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 16 Oct 2018 21:08:09 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 16 Oct 2018 21:09:44 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 16 Oct 2018 21:09:45 GMT
VOLUME [/spiped]
# Tue, 16 Oct 2018 21:09:46 GMT
WORKDIR /spiped
# Tue, 16 Oct 2018 21:09:47 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Tue, 16 Oct 2018 21:09:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 21:09:48 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:141796bfcf0d5a5edb072138e517bf85deef4f47f40afb51ba8705bec3b921dd`  
		Last Modified: Tue, 16 Oct 2018 08:50:53 GMT  
		Size: 20.3 MB (20331585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38384241fdd3f1d522279dcebae58317063f256968f6ecc44c3730a30ba465ca`  
		Last Modified: Tue, 16 Oct 2018 21:10:48 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a689a3c2bc58ff11567229039928ae0561bb3e9c2d3e70380137faf729cabe21`  
		Last Modified: Tue, 16 Oct 2018 21:10:49 GMT  
		Size: 1.6 MB (1614877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3930c0a6c0d9d37ae1b5b32326b0dffc1d1506bd30ddb91368e9cd8d50a04900`  
		Last Modified: Tue, 16 Oct 2018 21:11:32 GMT  
		Size: 5.2 MB (5236186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:505faad41b9d4798cb7c77d3f56b00cbd1762da19d10bb143bee95fbff1a5c3a`  
		Last Modified: Tue, 16 Oct 2018 21:10:48 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:188293f30c3c905bbf712e3ba288d20833c00c6f115607ac83756275a016516f`  
		Last Modified: Tue, 16 Oct 2018 21:10:48 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6` - linux; 386

```console
$ docker pull spiped@sha256:374110b135fcae920ef23fc2f3e0323e3669ec114594854aa3e648136981d2ef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34306250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cf0b2729c465909cefcafbba3cad26924c630622c424bbec7dff68867061a35`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 16 Oct 2018 10:49:05 GMT
ADD file:a71ef0e9adb528ae2dc5ca3395654522c23762d8936a4902378c6749bb357582 in / 
# Tue, 16 Oct 2018 10:49:05 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 22:14:14 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 16 Oct 2018 22:14:19 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 22:14:19 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 16 Oct 2018 22:14:20 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 16 Oct 2018 22:14:20 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 16 Oct 2018 22:14:46 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 16 Oct 2018 22:14:47 GMT
VOLUME [/spiped]
# Tue, 16 Oct 2018 22:14:47 GMT
WORKDIR /spiped
# Tue, 16 Oct 2018 22:14:47 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Tue, 16 Oct 2018 22:14:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 22:14:48 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:2b7bcb618c4033f37486fd700e6d0debf2260935f888a192119c41eaddd29978`  
		Last Modified: Tue, 16 Oct 2018 11:06:15 GMT  
		Size: 23.1 MB (23126605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4de3efcd25105b1b8b691a38a3264a4087a12c9a09d396da55bd5d92557729a6`  
		Last Modified: Tue, 16 Oct 2018 22:15:02 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83a9672ed4d9f0558371083ca5db30c909d65610c166e3948871501e39c7bde5`  
		Last Modified: Tue, 16 Oct 2018 22:15:03 GMT  
		Size: 1.9 MB (1874162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd7d97b45f78a1ac4131fd06b3770295efff0c2cfe9c70506cffc40a105b3daf`  
		Last Modified: Tue, 16 Oct 2018 22:15:06 GMT  
		Size: 9.3 MB (9303298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83360694a312146b4ce44f4f0a9a56414b0ca94b2626b2972ef9a4f6f5f8e0ad`  
		Last Modified: Tue, 16 Oct 2018 22:15:03 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e313f32e062b21b250aac4f28cb7381f0e779d1cd2df98bb00d9aaa7f0355bf`  
		Last Modified: Tue, 16 Oct 2018 22:15:03 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6` - linux; ppc64le

```console
$ docker pull spiped@sha256:afbd0474901ca5515b4e90c10e3640d824f9ac2875184e27fff5aaa98bf7f72c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.1 MB (30142483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:258202aa10b30412d8e5d44d360fba612e4967324f282a57b5673c1a1c76ef73`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 16 Oct 2018 08:22:25 GMT
ADD file:b1fa1d0ffa2b206311dfd95642d74c3312565a1ec2e6e3a2197bfd2a4b3de6c6 in / 
# Tue, 16 Oct 2018 08:22:30 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 10:18:41 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 16 Oct 2018 10:18:54 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 10:18:58 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 16 Oct 2018 10:18:59 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 16 Oct 2018 10:19:00 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 16 Oct 2018 10:20:20 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 16 Oct 2018 10:20:22 GMT
VOLUME [/spiped]
# Tue, 16 Oct 2018 10:20:24 GMT
WORKDIR /spiped
# Tue, 16 Oct 2018 10:20:25 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Tue, 16 Oct 2018 10:20:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 10:20:27 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:202f659db3e53c01ac947538d8b37251e9fa16c4a6a699dc6c2a8910afcdfed4`  
		Last Modified: Tue, 16 Oct 2018 08:30:59 GMT  
		Size: 22.7 MB (22740583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61dc8355cacf797ac78dc0d3d6d85a57aa7bccf9e0f21bcac1e43a8031d562d7`  
		Last Modified: Tue, 16 Oct 2018 10:20:44 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45d893b7a17f2b58609eb4629f61044fd072ef2ed881a2ad6fd6d909f0eb9810`  
		Last Modified: Tue, 16 Oct 2018 10:20:45 GMT  
		Size: 1.6 MB (1552446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f72cede59af8465e89acaf3b94f036a978b041461d238a7a138beb263fba04c3`  
		Last Modified: Tue, 16 Oct 2018 10:20:47 GMT  
		Size: 5.8 MB (5847233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91bc4405f8cec3316e11252cd8d4bfd0c990fc29e987fe6032b14d7f755efdf2`  
		Last Modified: Tue, 16 Oct 2018 10:20:44 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8420ea4dbb42f4ff384a2ac8dbf5abfd0fbc8858549847ea2f188b353cadcbe`  
		Last Modified: Tue, 16 Oct 2018 10:20:44 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6` - linux; s390x

```console
$ docker pull spiped@sha256:4ffd7bfa6027a62ffbb70519ac13203b358c55c12f6f79697954554170887a1b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 MB (30722883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab9834066afbafd563e8466cdd3cefb0a50bb1e7fa6aba7c8b76d5c3e02c983f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 16 Oct 2018 11:42:52 GMT
ADD file:a7cc9e5280b465a6e72c8b1331e009ddd18bff12c000c9e49ababac631179edc in / 
# Tue, 16 Oct 2018 11:42:52 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:26:54 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 16 Oct 2018 12:26:58 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:26:59 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 16 Oct 2018 12:26:59 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 16 Oct 2018 12:26:59 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 16 Oct 2018 12:27:24 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 16 Oct 2018 12:27:24 GMT
VOLUME [/spiped]
# Tue, 16 Oct 2018 12:27:24 GMT
WORKDIR /spiped
# Tue, 16 Oct 2018 12:27:25 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Tue, 16 Oct 2018 12:27:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 12:27:25 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:b16a7816eac3ca0893b75f07b37e5e276ba331e1a35619343718d1c33f877877`  
		Last Modified: Tue, 16 Oct 2018 11:46:03 GMT  
		Size: 22.3 MB (22334662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f297c844ef6d8b2fb45ccc8e1041aec7e500b345e2e825486f053a073012d64`  
		Last Modified: Tue, 16 Oct 2018 12:27:38 GMT  
		Size: 1.8 KB (1761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32ac669a6cb40400cfc70849f689bbeea639b106482eaffdb57bc0fccb56a4b4`  
		Last Modified: Tue, 16 Oct 2018 12:27:38 GMT  
		Size: 1.6 MB (1615639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18718a25fa922b8f12e34812be8bf5c0f77fccf25aaed5c390ff3072204be785`  
		Last Modified: Tue, 16 Oct 2018 12:27:40 GMT  
		Size: 6.8 MB (6770376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:723422ff95b5ead0c857f0f6a270f8dfb945ce115b6c8816da72896a3be46c53`  
		Last Modified: Tue, 16 Oct 2018 12:27:37 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4008b6b2dc4178d1797f65ce8af7fe04aa017d9f1962741b23584e1a93ebc45d`  
		Last Modified: Tue, 16 Oct 2018 12:27:37 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1.6.0`

```console
$ docker pull spiped@sha256:a2b194a5151c1a1a9465180479b8daf043be7fc645ed7245bba37bf05371ff6f
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
$ docker pull spiped@sha256:482974814a66c816ccee5a8bff1c09889edef010d81eeae8e7b18a36bade0b07
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.2 MB (30247500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b79c2fb5484ce6908a84a7e46303c617372043b2c52f718decfe7c3803fc6bc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 04:24:33 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 16 Oct 2018 04:24:37 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 04:24:37 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 16 Oct 2018 04:24:38 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 16 Oct 2018 04:24:38 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 16 Oct 2018 04:25:00 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 16 Oct 2018 04:25:01 GMT
VOLUME [/spiped]
# Tue, 16 Oct 2018 04:25:01 GMT
WORKDIR /spiped
# Tue, 16 Oct 2018 04:25:01 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Tue, 16 Oct 2018 04:25:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 04:25:02 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f40232465b30d57b99583b1463902715ca4b6b2cca0958042ac1ca0e4a4ebb32`  
		Last Modified: Tue, 16 Oct 2018 04:25:17 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f20340f9998dfe2daa4438ea75a690cd73ceb179d9dea8b0b4939b0ba2869ab`  
		Last Modified: Tue, 16 Oct 2018 04:25:17 GMT  
		Size: 1.9 MB (1881455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc18f2c47a77437d8ded4f209b84300e042f43e80dacde4441897efa5f511bd9`  
		Last Modified: Tue, 16 Oct 2018 04:25:19 GMT  
		Size: 5.9 MB (5877818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9a9746bad23360368ac49f8a55ff9dc2f6dd8013fd3e8a8fee146f68e3ed682`  
		Last Modified: Tue, 16 Oct 2018 04:25:17 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:575d849a79780cc899e806f9d31868af01f6c837fdca2c9227b2da574d43d4f6`  
		Last Modified: Tue, 16 Oct 2018 04:25:22 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0` - linux; arm variant v5

```console
$ docker pull spiped@sha256:660c78c8a0fb0bfc5c9b506840edbc7cd5a65cc9c61c9a6308e85c7133cad9f7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.7 MB (27739671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c42d5ba89bc3fefad199251293efebeabb83b7a2e128a3d88f414078f2f1b312`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 16 Oct 2018 08:55:22 GMT
ADD file:8f2148adabc29587e17b50138f305f39e94e0e2bd9211a9f913fef56013ac35a in / 
# Tue, 16 Oct 2018 08:55:23 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 11:56:36 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 16 Oct 2018 11:56:45 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 11:56:45 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 16 Oct 2018 11:56:46 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 16 Oct 2018 11:56:46 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 16 Oct 2018 11:57:28 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 16 Oct 2018 11:57:28 GMT
VOLUME [/spiped]
# Tue, 16 Oct 2018 11:57:29 GMT
WORKDIR /spiped
# Tue, 16 Oct 2018 11:57:30 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Tue, 16 Oct 2018 11:57:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 11:57:30 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:4b7ffdf9817f718c84be550e8edf757070396d69165fa729c6ddd4e775428eb2`  
		Last Modified: Tue, 16 Oct 2018 09:04:44 GMT  
		Size: 21.2 MB (21162965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28112441dc968adddd665b83134ac336f22752e84978dd5290e95f19a7e64aaf`  
		Last Modified: Tue, 16 Oct 2018 11:57:40 GMT  
		Size: 1.7 KB (1738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6a21834421fd88fe63afbf08dba36ccca1dff5025798307e9b392c822e8a5c4`  
		Last Modified: Tue, 16 Oct 2018 11:57:43 GMT  
		Size: 1.6 MB (1622963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72c787750b8fb392f9645924310f83b3f22bdd310e18ba8fd276393909fa5571`  
		Last Modified: Tue, 16 Oct 2018 11:57:42 GMT  
		Size: 5.0 MB (4951524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5dcd81de183ef4e23b406c4c1365951b1fadbe7d941696e47e7e19b8fcf81a3`  
		Last Modified: Tue, 16 Oct 2018 11:57:41 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9727d05fed22cf1b7c372dcd90ef06c98946bc60dd1cccf8c13218e1d1c3fc2b`  
		Last Modified: Tue, 16 Oct 2018 11:57:40 GMT  
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
$ docker pull spiped@sha256:de921f604234c88275b2eabcf38786064d1f1a98303cda48f09c934ffbae60ac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 MB (27184842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59aa8164a7c8d13f2a0621cb6d5fee1be76f740baa3bce61a01aed3c81110f7d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:45 GMT
ADD file:e83c09a5cfc1cecaeba6b736737d551fe0f5d3f204ec3fc984fe768003774f81 in / 
# Tue, 16 Oct 2018 08:43:46 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 21:07:57 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 16 Oct 2018 21:08:07 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 21:08:08 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 16 Oct 2018 21:08:08 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 16 Oct 2018 21:08:09 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 16 Oct 2018 21:09:44 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 16 Oct 2018 21:09:45 GMT
VOLUME [/spiped]
# Tue, 16 Oct 2018 21:09:46 GMT
WORKDIR /spiped
# Tue, 16 Oct 2018 21:09:47 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Tue, 16 Oct 2018 21:09:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 21:09:48 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:141796bfcf0d5a5edb072138e517bf85deef4f47f40afb51ba8705bec3b921dd`  
		Last Modified: Tue, 16 Oct 2018 08:50:53 GMT  
		Size: 20.3 MB (20331585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38384241fdd3f1d522279dcebae58317063f256968f6ecc44c3730a30ba465ca`  
		Last Modified: Tue, 16 Oct 2018 21:10:48 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a689a3c2bc58ff11567229039928ae0561bb3e9c2d3e70380137faf729cabe21`  
		Last Modified: Tue, 16 Oct 2018 21:10:49 GMT  
		Size: 1.6 MB (1614877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3930c0a6c0d9d37ae1b5b32326b0dffc1d1506bd30ddb91368e9cd8d50a04900`  
		Last Modified: Tue, 16 Oct 2018 21:11:32 GMT  
		Size: 5.2 MB (5236186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:505faad41b9d4798cb7c77d3f56b00cbd1762da19d10bb143bee95fbff1a5c3a`  
		Last Modified: Tue, 16 Oct 2018 21:10:48 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:188293f30c3c905bbf712e3ba288d20833c00c6f115607ac83756275a016516f`  
		Last Modified: Tue, 16 Oct 2018 21:10:48 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0` - linux; 386

```console
$ docker pull spiped@sha256:374110b135fcae920ef23fc2f3e0323e3669ec114594854aa3e648136981d2ef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34306250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cf0b2729c465909cefcafbba3cad26924c630622c424bbec7dff68867061a35`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 16 Oct 2018 10:49:05 GMT
ADD file:a71ef0e9adb528ae2dc5ca3395654522c23762d8936a4902378c6749bb357582 in / 
# Tue, 16 Oct 2018 10:49:05 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 22:14:14 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 16 Oct 2018 22:14:19 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 22:14:19 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 16 Oct 2018 22:14:20 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 16 Oct 2018 22:14:20 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 16 Oct 2018 22:14:46 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 16 Oct 2018 22:14:47 GMT
VOLUME [/spiped]
# Tue, 16 Oct 2018 22:14:47 GMT
WORKDIR /spiped
# Tue, 16 Oct 2018 22:14:47 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Tue, 16 Oct 2018 22:14:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 22:14:48 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:2b7bcb618c4033f37486fd700e6d0debf2260935f888a192119c41eaddd29978`  
		Last Modified: Tue, 16 Oct 2018 11:06:15 GMT  
		Size: 23.1 MB (23126605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4de3efcd25105b1b8b691a38a3264a4087a12c9a09d396da55bd5d92557729a6`  
		Last Modified: Tue, 16 Oct 2018 22:15:02 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83a9672ed4d9f0558371083ca5db30c909d65610c166e3948871501e39c7bde5`  
		Last Modified: Tue, 16 Oct 2018 22:15:03 GMT  
		Size: 1.9 MB (1874162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd7d97b45f78a1ac4131fd06b3770295efff0c2cfe9c70506cffc40a105b3daf`  
		Last Modified: Tue, 16 Oct 2018 22:15:06 GMT  
		Size: 9.3 MB (9303298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83360694a312146b4ce44f4f0a9a56414b0ca94b2626b2972ef9a4f6f5f8e0ad`  
		Last Modified: Tue, 16 Oct 2018 22:15:03 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e313f32e062b21b250aac4f28cb7381f0e779d1cd2df98bb00d9aaa7f0355bf`  
		Last Modified: Tue, 16 Oct 2018 22:15:03 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0` - linux; ppc64le

```console
$ docker pull spiped@sha256:afbd0474901ca5515b4e90c10e3640d824f9ac2875184e27fff5aaa98bf7f72c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.1 MB (30142483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:258202aa10b30412d8e5d44d360fba612e4967324f282a57b5673c1a1c76ef73`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 16 Oct 2018 08:22:25 GMT
ADD file:b1fa1d0ffa2b206311dfd95642d74c3312565a1ec2e6e3a2197bfd2a4b3de6c6 in / 
# Tue, 16 Oct 2018 08:22:30 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 10:18:41 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 16 Oct 2018 10:18:54 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 10:18:58 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 16 Oct 2018 10:18:59 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 16 Oct 2018 10:19:00 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 16 Oct 2018 10:20:20 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 16 Oct 2018 10:20:22 GMT
VOLUME [/spiped]
# Tue, 16 Oct 2018 10:20:24 GMT
WORKDIR /spiped
# Tue, 16 Oct 2018 10:20:25 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Tue, 16 Oct 2018 10:20:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 10:20:27 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:202f659db3e53c01ac947538d8b37251e9fa16c4a6a699dc6c2a8910afcdfed4`  
		Last Modified: Tue, 16 Oct 2018 08:30:59 GMT  
		Size: 22.7 MB (22740583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61dc8355cacf797ac78dc0d3d6d85a57aa7bccf9e0f21bcac1e43a8031d562d7`  
		Last Modified: Tue, 16 Oct 2018 10:20:44 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45d893b7a17f2b58609eb4629f61044fd072ef2ed881a2ad6fd6d909f0eb9810`  
		Last Modified: Tue, 16 Oct 2018 10:20:45 GMT  
		Size: 1.6 MB (1552446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f72cede59af8465e89acaf3b94f036a978b041461d238a7a138beb263fba04c3`  
		Last Modified: Tue, 16 Oct 2018 10:20:47 GMT  
		Size: 5.8 MB (5847233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91bc4405f8cec3316e11252cd8d4bfd0c990fc29e987fe6032b14d7f755efdf2`  
		Last Modified: Tue, 16 Oct 2018 10:20:44 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8420ea4dbb42f4ff384a2ac8dbf5abfd0fbc8858549847ea2f188b353cadcbe`  
		Last Modified: Tue, 16 Oct 2018 10:20:44 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0` - linux; s390x

```console
$ docker pull spiped@sha256:4ffd7bfa6027a62ffbb70519ac13203b358c55c12f6f79697954554170887a1b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 MB (30722883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab9834066afbafd563e8466cdd3cefb0a50bb1e7fa6aba7c8b76d5c3e02c983f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 16 Oct 2018 11:42:52 GMT
ADD file:a7cc9e5280b465a6e72c8b1331e009ddd18bff12c000c9e49ababac631179edc in / 
# Tue, 16 Oct 2018 11:42:52 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:26:54 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 16 Oct 2018 12:26:58 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:26:59 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 16 Oct 2018 12:26:59 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 16 Oct 2018 12:26:59 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 16 Oct 2018 12:27:24 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 16 Oct 2018 12:27:24 GMT
VOLUME [/spiped]
# Tue, 16 Oct 2018 12:27:24 GMT
WORKDIR /spiped
# Tue, 16 Oct 2018 12:27:25 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Tue, 16 Oct 2018 12:27:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 12:27:25 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:b16a7816eac3ca0893b75f07b37e5e276ba331e1a35619343718d1c33f877877`  
		Last Modified: Tue, 16 Oct 2018 11:46:03 GMT  
		Size: 22.3 MB (22334662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f297c844ef6d8b2fb45ccc8e1041aec7e500b345e2e825486f053a073012d64`  
		Last Modified: Tue, 16 Oct 2018 12:27:38 GMT  
		Size: 1.8 KB (1761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32ac669a6cb40400cfc70849f689bbeea639b106482eaffdb57bc0fccb56a4b4`  
		Last Modified: Tue, 16 Oct 2018 12:27:38 GMT  
		Size: 1.6 MB (1615639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18718a25fa922b8f12e34812be8bf5c0f77fccf25aaed5c390ff3072204be785`  
		Last Modified: Tue, 16 Oct 2018 12:27:40 GMT  
		Size: 6.8 MB (6770376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:723422ff95b5ead0c857f0f6a270f8dfb945ce115b6c8816da72896a3be46c53`  
		Last Modified: Tue, 16 Oct 2018 12:27:37 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4008b6b2dc4178d1797f65ce8af7fe04aa017d9f1962741b23584e1a93ebc45d`  
		Last Modified: Tue, 16 Oct 2018 12:27:37 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1.6.0-alpine`

```console
$ docker pull spiped@sha256:9e559cb04456622c3247dac00ff1be78410f2e4841685e5fadca2cc9d6358c25
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
$ docker pull spiped@sha256:00a843424142bea09da8217b82a334ee561f52fb44210aea8965c50943a29a88
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3128990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:beec6013e5d02eb6e05e82126a842349b00bdc8881e98283db21e392aa80a12b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 14:07:11 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Wed, 12 Sep 2018 14:07:17 GMT
RUN apk add --no-cache libssl1.0
# Wed, 12 Sep 2018 14:07:18 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 12 Sep 2018 14:07:18 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 12 Sep 2018 14:07:19 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 12 Sep 2018 14:09:43 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Wed, 12 Sep 2018 14:09:44 GMT
VOLUME [/spiped]
# Wed, 12 Sep 2018 14:09:45 GMT
WORKDIR /spiped
# Wed, 12 Sep 2018 14:09:46 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 12 Sep 2018 14:09:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 14:09:48 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:905674ea9d9448b14f15ae82e3c34138680bac1ef4fc29088aae8c9639b502fe`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 2.1 MB (2146453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91fe322e1690c8fb3f2b684fd85335d36a45e509b1568683232aede6d8a5e2b`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63d4643a3ff8ac6f9f0dd09d7c503139d4b5731ee229d1d2df60acfd5e040ffb`  
		Last Modified: Wed, 12 Sep 2018 14:10:13 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3e7ab2230e639edfcb2e7bbc07d5a03f11a0a5159482fe8d879b0a4eeeb9617`  
		Last Modified: Wed, 12 Sep 2018 14:10:14 GMT  
		Size: 911.6 KB (911604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e36725bbf69d18b7a1b1209abb132f1cb2a4ccad1aa6169b7bb4bdc7bdd539d5`  
		Last Modified: Wed, 12 Sep 2018 14:10:14 GMT  
		Size: 69.0 KB (69009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3f70e3afe5520ac1703e050c21613539c69ede2023cc9edb494131be4490fdc`  
		Last Modified: Wed, 12 Sep 2018 14:10:13 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6199ea0d48d9147070216826ef848db2e4b45e0eecd4c6fa4b70f04d45cf44e4`  
		Last Modified: Wed, 12 Sep 2018 14:10:13 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0-alpine` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:943da12800833394382a87e999c0516f00b7a4c2386a922fe55c64eb66ecff6e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3094624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:329922275eb81e5d4c32580722f182c4a0010f4da8aea0d040d483da5520f88d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 12 Sep 2018 08:42:24 GMT
ADD file:a4b53e2a2e207c5107a76c16d91b99cb1ed4ecb90b363913798e663426137d45 in / 
# Wed, 12 Sep 2018 08:42:24 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:42:25 GMT
CMD ["/bin/sh"]
# Tue, 16 Oct 2018 21:10:01 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Tue, 16 Oct 2018 21:10:04 GMT
RUN apk add --no-cache libssl1.0
# Tue, 16 Oct 2018 21:10:04 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 16 Oct 2018 21:10:05 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 16 Oct 2018 21:10:06 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 16 Oct 2018 21:10:28 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Tue, 16 Oct 2018 21:10:28 GMT
VOLUME [/spiped]
# Tue, 16 Oct 2018 21:10:29 GMT
WORKDIR /spiped
# Tue, 16 Oct 2018 21:10:30 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Tue, 16 Oct 2018 21:10:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 21:10:32 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:9941776d74c9129fd585b6f0434ba48bd3a7112d6736bc02e6d12f41153cab26`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 2.1 MB (2099762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae94b3cb7a1b2cef0ceffe3303cd03f83434d283aab43389e586b42bea00b358`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d6cfe7211b190d212f45d66faf3c96f15e9a9f087056bdbcdafe61968473057`  
		Last Modified: Tue, 16 Oct 2018 21:12:10 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff37dce3bd42c9c5d54814f0351d57efe584f0b64e3cf6aee3b25c486c249ea2`  
		Last Modified: Tue, 16 Oct 2018 21:12:10 GMT  
		Size: 928.1 KB (928133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b2e61eb1391506e2a7302e95b5bb0f253c87eeb5fdb525d96d5f56f6738ba20`  
		Last Modified: Tue, 16 Oct 2018 21:12:10 GMT  
		Size: 64.9 KB (64865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:956abd9d7a3361371ec640681ff9cf3a5d3cc5e82ebde613c4ba4e24c4ca15a1`  
		Last Modified: Tue, 16 Oct 2018 21:12:10 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:013591ec221c74a5b43e34bd88580c2dc72ec3b418aea34bc0ddd99a29b26763`  
		Last Modified: Tue, 16 Oct 2018 21:12:10 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0-alpine` - linux; 386

```console
$ docker pull spiped@sha256:ecc084006e7a47fb9acd8f951d8506431436ad83c011336da87bb5ffa84f9f31
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.5 MB (3485956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b54d121308163d9c4540a2db17e119b8e3807835637545a83e0aa2645c9a4550`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 12 Sep 2018 10:38:54 GMT
ADD file:b789aca08d6985c0bf373a2ca5f2a263d45e3a789aa6bbcd1fe1d47133f985d2 in / 
# Wed, 12 Sep 2018 10:38:54 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 10:38:54 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 17:24:25 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Wed, 12 Sep 2018 17:24:25 GMT
RUN apk add --no-cache libssl1.0
# Wed, 12 Sep 2018 17:24:26 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 12 Sep 2018 17:24:26 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 12 Sep 2018 17:24:26 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 12 Sep 2018 17:24:36 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Wed, 12 Sep 2018 17:24:36 GMT
VOLUME [/spiped]
# Wed, 12 Sep 2018 17:24:36 GMT
WORKDIR /spiped
# Wed, 12 Sep 2018 17:24:37 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 12 Sep 2018 17:24:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 17:24:37 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:6b5c2e9bbf9885ccefe772a5a1f471d7da4315b7bf43ec3b4c014a65d04073b1`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 2.3 MB (2271460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d99e807699886f28203b3284584d7b093a61a84c40230f7094513bb2f84cd2`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e611caebda645f20d65b0704fb755af5b294708ad43c9634583913a95ad54d7`  
		Last Modified: Wed, 12 Sep 2018 17:24:49 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b792bf07a961c7d263600fe88d1a174cb893a526a356d0549409acb4ac0064fb`  
		Last Modified: Wed, 12 Sep 2018 17:24:49 GMT  
		Size: 1.1 MB (1123904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00a6564b09d4f759257890bacd3d81fa0c0e4bb6c5b809a8b4bf8ac007e18019`  
		Last Modified: Wed, 12 Sep 2018 17:24:49 GMT  
		Size: 88.7 KB (88731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58476aaa6793ce963880079bc3c94ccc4f326cc2c719bfcc72267f0394c01af3`  
		Last Modified: Wed, 12 Sep 2018 17:24:49 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09347a9db1ced7f9fd725fe5e1a92c53509f276f4102e4aeda5be09f7f6c2347`  
		Last Modified: Wed, 12 Sep 2018 17:24:49 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0-alpine` - linux; ppc64le

```console
$ docker pull spiped@sha256:f59254b88a620271957b44347f2f28122a5a82e31c4722ff4a9cbc1818675e19
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3267853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5be97556e307838a763dc649ea9c6d68e39e95a7a2b4e9c57ae51b28b3fb350f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:47:11 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Wed, 12 Sep 2018 08:47:14 GMT
RUN apk add --no-cache libssl1.0
# Wed, 12 Sep 2018 08:47:15 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 12 Sep 2018 08:47:18 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 12 Sep 2018 08:47:20 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 12 Sep 2018 08:47:40 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Wed, 12 Sep 2018 08:47:41 GMT
VOLUME [/spiped]
# Wed, 12 Sep 2018 08:47:42 GMT
WORKDIR /spiped
# Wed, 12 Sep 2018 08:47:44 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 12 Sep 2018 08:47:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 08:47:47 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:d6201b52ea9b908d4d6e950e2a79ded27be48979d6f0f63bd3a57b16b621f188`  
		Last Modified: Wed, 12 Sep 2018 08:19:46 GMT  
		Size: 2.2 MB (2195226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5cedde51de1c8ffccd5521fd02fc1efc1cc44ece2d5dccb1e550a65366cd80`  
		Last Modified: Wed, 12 Sep 2018 08:19:44 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c646c788c80338071acdd1f5823046ef3f2324021b29446120de0c8f00af6c0`  
		Last Modified: Wed, 12 Sep 2018 08:48:13 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47058b00d1974983e223e26c481316e3097e47f32e2760aa87d47993a29371db`  
		Last Modified: Wed, 12 Sep 2018 08:48:14 GMT  
		Size: 996.9 KB (996932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03485974322380d2132f7e40bad4b33ba5cc009bb944a177c3557229dacc4bcb`  
		Last Modified: Wed, 12 Sep 2018 08:48:13 GMT  
		Size: 73.8 KB (73767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb747a79876ded285dd0dab9e7e3b5f65c307c723b2dd3a74567d3821ef94334`  
		Last Modified: Wed, 12 Sep 2018 08:48:13 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18c8391f1a08b75b8ed119772c33a4e40185a2778492005f779b2be301719b1`  
		Last Modified: Wed, 12 Sep 2018 08:48:13 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0-alpine` - linux; s390x

```console
$ docker pull spiped@sha256:4cdf7917691856dd8cc02fc6e9318499a55cdea93080ab8e560c2230a887caa9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3447158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8cd93fddb8ff52bc7ca03cd4178e6e3c0dff60ceaffb27390f555fee80d36f1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 12 Sep 2018 11:42:25 GMT
ADD file:532f451315fcf5c4077ef91f62d9838cf5681b4a348af2d78f6edd825146612c in / 
# Wed, 12 Sep 2018 11:42:25 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 11:42:25 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 12:03:07 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Wed, 12 Sep 2018 12:03:08 GMT
RUN apk add --no-cache libssl1.0
# Wed, 12 Sep 2018 12:03:08 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 12 Sep 2018 12:03:08 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 12 Sep 2018 12:03:08 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 12 Sep 2018 12:03:17 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Wed, 12 Sep 2018 12:03:17 GMT
VOLUME [/spiped]
# Wed, 12 Sep 2018 12:03:17 GMT
WORKDIR /spiped
# Wed, 12 Sep 2018 12:03:18 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 12 Sep 2018 12:03:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 12:03:18 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:e5d7a290acc264d66e5c29923d4b8a79135ffd15887225581968bf7df22fb281`  
		Last Modified: Wed, 12 Sep 2018 11:43:25 GMT  
		Size: 2.3 MB (2307746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad01149bcd3bd207c03ab0c38897be9653222644a37b651c399c24f1e9170313`  
		Last Modified: Wed, 12 Sep 2018 11:43:24 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70047511fe5c298ec49df2ab66228d745e6ca4ff53ddd49bc4f2bf8f50064b57`  
		Last Modified: Wed, 12 Sep 2018 12:03:34 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dc0d0f118cd613ec2e8fab3c99156eb75a50dd4c9f945c4bd702eecb5d4f3cc`  
		Last Modified: Wed, 12 Sep 2018 12:03:35 GMT  
		Size: 1.1 MB (1062643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e61448e0db2bded6097171457ddcd69ed09315cb3eac52000f2ef807dd6f0e5`  
		Last Modified: Wed, 12 Sep 2018 12:03:34 GMT  
		Size: 74.9 KB (74905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:791ec9d64c42a4acce131c093b6dd24cfc9ad0359a5d7685c08d7604c0c21710`  
		Last Modified: Wed, 12 Sep 2018 12:03:34 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6e0ec92c1465d129768b67a96cff978c3cc0232e4519c220bdc7a61c0862df2`  
		Last Modified: Wed, 12 Sep 2018 12:03:35 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1.6-alpine`

```console
$ docker pull spiped@sha256:9e559cb04456622c3247dac00ff1be78410f2e4841685e5fadca2cc9d6358c25
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
$ docker pull spiped@sha256:00a843424142bea09da8217b82a334ee561f52fb44210aea8965c50943a29a88
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3128990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:beec6013e5d02eb6e05e82126a842349b00bdc8881e98283db21e392aa80a12b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 14:07:11 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Wed, 12 Sep 2018 14:07:17 GMT
RUN apk add --no-cache libssl1.0
# Wed, 12 Sep 2018 14:07:18 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 12 Sep 2018 14:07:18 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 12 Sep 2018 14:07:19 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 12 Sep 2018 14:09:43 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Wed, 12 Sep 2018 14:09:44 GMT
VOLUME [/spiped]
# Wed, 12 Sep 2018 14:09:45 GMT
WORKDIR /spiped
# Wed, 12 Sep 2018 14:09:46 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 12 Sep 2018 14:09:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 14:09:48 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:905674ea9d9448b14f15ae82e3c34138680bac1ef4fc29088aae8c9639b502fe`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 2.1 MB (2146453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91fe322e1690c8fb3f2b684fd85335d36a45e509b1568683232aede6d8a5e2b`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63d4643a3ff8ac6f9f0dd09d7c503139d4b5731ee229d1d2df60acfd5e040ffb`  
		Last Modified: Wed, 12 Sep 2018 14:10:13 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3e7ab2230e639edfcb2e7bbc07d5a03f11a0a5159482fe8d879b0a4eeeb9617`  
		Last Modified: Wed, 12 Sep 2018 14:10:14 GMT  
		Size: 911.6 KB (911604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e36725bbf69d18b7a1b1209abb132f1cb2a4ccad1aa6169b7bb4bdc7bdd539d5`  
		Last Modified: Wed, 12 Sep 2018 14:10:14 GMT  
		Size: 69.0 KB (69009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3f70e3afe5520ac1703e050c21613539c69ede2023cc9edb494131be4490fdc`  
		Last Modified: Wed, 12 Sep 2018 14:10:13 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6199ea0d48d9147070216826ef848db2e4b45e0eecd4c6fa4b70f04d45cf44e4`  
		Last Modified: Wed, 12 Sep 2018 14:10:13 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6-alpine` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:943da12800833394382a87e999c0516f00b7a4c2386a922fe55c64eb66ecff6e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3094624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:329922275eb81e5d4c32580722f182c4a0010f4da8aea0d040d483da5520f88d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 12 Sep 2018 08:42:24 GMT
ADD file:a4b53e2a2e207c5107a76c16d91b99cb1ed4ecb90b363913798e663426137d45 in / 
# Wed, 12 Sep 2018 08:42:24 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:42:25 GMT
CMD ["/bin/sh"]
# Tue, 16 Oct 2018 21:10:01 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Tue, 16 Oct 2018 21:10:04 GMT
RUN apk add --no-cache libssl1.0
# Tue, 16 Oct 2018 21:10:04 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 16 Oct 2018 21:10:05 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 16 Oct 2018 21:10:06 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 16 Oct 2018 21:10:28 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Tue, 16 Oct 2018 21:10:28 GMT
VOLUME [/spiped]
# Tue, 16 Oct 2018 21:10:29 GMT
WORKDIR /spiped
# Tue, 16 Oct 2018 21:10:30 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Tue, 16 Oct 2018 21:10:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 21:10:32 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:9941776d74c9129fd585b6f0434ba48bd3a7112d6736bc02e6d12f41153cab26`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 2.1 MB (2099762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae94b3cb7a1b2cef0ceffe3303cd03f83434d283aab43389e586b42bea00b358`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d6cfe7211b190d212f45d66faf3c96f15e9a9f087056bdbcdafe61968473057`  
		Last Modified: Tue, 16 Oct 2018 21:12:10 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff37dce3bd42c9c5d54814f0351d57efe584f0b64e3cf6aee3b25c486c249ea2`  
		Last Modified: Tue, 16 Oct 2018 21:12:10 GMT  
		Size: 928.1 KB (928133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b2e61eb1391506e2a7302e95b5bb0f253c87eeb5fdb525d96d5f56f6738ba20`  
		Last Modified: Tue, 16 Oct 2018 21:12:10 GMT  
		Size: 64.9 KB (64865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:956abd9d7a3361371ec640681ff9cf3a5d3cc5e82ebde613c4ba4e24c4ca15a1`  
		Last Modified: Tue, 16 Oct 2018 21:12:10 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:013591ec221c74a5b43e34bd88580c2dc72ec3b418aea34bc0ddd99a29b26763`  
		Last Modified: Tue, 16 Oct 2018 21:12:10 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6-alpine` - linux; 386

```console
$ docker pull spiped@sha256:ecc084006e7a47fb9acd8f951d8506431436ad83c011336da87bb5ffa84f9f31
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.5 MB (3485956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b54d121308163d9c4540a2db17e119b8e3807835637545a83e0aa2645c9a4550`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 12 Sep 2018 10:38:54 GMT
ADD file:b789aca08d6985c0bf373a2ca5f2a263d45e3a789aa6bbcd1fe1d47133f985d2 in / 
# Wed, 12 Sep 2018 10:38:54 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 10:38:54 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 17:24:25 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Wed, 12 Sep 2018 17:24:25 GMT
RUN apk add --no-cache libssl1.0
# Wed, 12 Sep 2018 17:24:26 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 12 Sep 2018 17:24:26 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 12 Sep 2018 17:24:26 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 12 Sep 2018 17:24:36 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Wed, 12 Sep 2018 17:24:36 GMT
VOLUME [/spiped]
# Wed, 12 Sep 2018 17:24:36 GMT
WORKDIR /spiped
# Wed, 12 Sep 2018 17:24:37 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 12 Sep 2018 17:24:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 17:24:37 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:6b5c2e9bbf9885ccefe772a5a1f471d7da4315b7bf43ec3b4c014a65d04073b1`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 2.3 MB (2271460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d99e807699886f28203b3284584d7b093a61a84c40230f7094513bb2f84cd2`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e611caebda645f20d65b0704fb755af5b294708ad43c9634583913a95ad54d7`  
		Last Modified: Wed, 12 Sep 2018 17:24:49 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b792bf07a961c7d263600fe88d1a174cb893a526a356d0549409acb4ac0064fb`  
		Last Modified: Wed, 12 Sep 2018 17:24:49 GMT  
		Size: 1.1 MB (1123904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00a6564b09d4f759257890bacd3d81fa0c0e4bb6c5b809a8b4bf8ac007e18019`  
		Last Modified: Wed, 12 Sep 2018 17:24:49 GMT  
		Size: 88.7 KB (88731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58476aaa6793ce963880079bc3c94ccc4f326cc2c719bfcc72267f0394c01af3`  
		Last Modified: Wed, 12 Sep 2018 17:24:49 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09347a9db1ced7f9fd725fe5e1a92c53509f276f4102e4aeda5be09f7f6c2347`  
		Last Modified: Wed, 12 Sep 2018 17:24:49 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6-alpine` - linux; ppc64le

```console
$ docker pull spiped@sha256:f59254b88a620271957b44347f2f28122a5a82e31c4722ff4a9cbc1818675e19
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3267853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5be97556e307838a763dc649ea9c6d68e39e95a7a2b4e9c57ae51b28b3fb350f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:47:11 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Wed, 12 Sep 2018 08:47:14 GMT
RUN apk add --no-cache libssl1.0
# Wed, 12 Sep 2018 08:47:15 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 12 Sep 2018 08:47:18 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 12 Sep 2018 08:47:20 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 12 Sep 2018 08:47:40 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Wed, 12 Sep 2018 08:47:41 GMT
VOLUME [/spiped]
# Wed, 12 Sep 2018 08:47:42 GMT
WORKDIR /spiped
# Wed, 12 Sep 2018 08:47:44 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 12 Sep 2018 08:47:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 08:47:47 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:d6201b52ea9b908d4d6e950e2a79ded27be48979d6f0f63bd3a57b16b621f188`  
		Last Modified: Wed, 12 Sep 2018 08:19:46 GMT  
		Size: 2.2 MB (2195226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5cedde51de1c8ffccd5521fd02fc1efc1cc44ece2d5dccb1e550a65366cd80`  
		Last Modified: Wed, 12 Sep 2018 08:19:44 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c646c788c80338071acdd1f5823046ef3f2324021b29446120de0c8f00af6c0`  
		Last Modified: Wed, 12 Sep 2018 08:48:13 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47058b00d1974983e223e26c481316e3097e47f32e2760aa87d47993a29371db`  
		Last Modified: Wed, 12 Sep 2018 08:48:14 GMT  
		Size: 996.9 KB (996932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03485974322380d2132f7e40bad4b33ba5cc009bb944a177c3557229dacc4bcb`  
		Last Modified: Wed, 12 Sep 2018 08:48:13 GMT  
		Size: 73.8 KB (73767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb747a79876ded285dd0dab9e7e3b5f65c307c723b2dd3a74567d3821ef94334`  
		Last Modified: Wed, 12 Sep 2018 08:48:13 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18c8391f1a08b75b8ed119772c33a4e40185a2778492005f779b2be301719b1`  
		Last Modified: Wed, 12 Sep 2018 08:48:13 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6-alpine` - linux; s390x

```console
$ docker pull spiped@sha256:4cdf7917691856dd8cc02fc6e9318499a55cdea93080ab8e560c2230a887caa9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3447158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8cd93fddb8ff52bc7ca03cd4178e6e3c0dff60ceaffb27390f555fee80d36f1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 12 Sep 2018 11:42:25 GMT
ADD file:532f451315fcf5c4077ef91f62d9838cf5681b4a348af2d78f6edd825146612c in / 
# Wed, 12 Sep 2018 11:42:25 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 11:42:25 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 12:03:07 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Wed, 12 Sep 2018 12:03:08 GMT
RUN apk add --no-cache libssl1.0
# Wed, 12 Sep 2018 12:03:08 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 12 Sep 2018 12:03:08 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 12 Sep 2018 12:03:08 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 12 Sep 2018 12:03:17 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Wed, 12 Sep 2018 12:03:17 GMT
VOLUME [/spiped]
# Wed, 12 Sep 2018 12:03:17 GMT
WORKDIR /spiped
# Wed, 12 Sep 2018 12:03:18 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 12 Sep 2018 12:03:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 12:03:18 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:e5d7a290acc264d66e5c29923d4b8a79135ffd15887225581968bf7df22fb281`  
		Last Modified: Wed, 12 Sep 2018 11:43:25 GMT  
		Size: 2.3 MB (2307746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad01149bcd3bd207c03ab0c38897be9653222644a37b651c399c24f1e9170313`  
		Last Modified: Wed, 12 Sep 2018 11:43:24 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70047511fe5c298ec49df2ab66228d745e6ca4ff53ddd49bc4f2bf8f50064b57`  
		Last Modified: Wed, 12 Sep 2018 12:03:34 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dc0d0f118cd613ec2e8fab3c99156eb75a50dd4c9f945c4bd702eecb5d4f3cc`  
		Last Modified: Wed, 12 Sep 2018 12:03:35 GMT  
		Size: 1.1 MB (1062643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e61448e0db2bded6097171457ddcd69ed09315cb3eac52000f2ef807dd6f0e5`  
		Last Modified: Wed, 12 Sep 2018 12:03:34 GMT  
		Size: 74.9 KB (74905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:791ec9d64c42a4acce131c093b6dd24cfc9ad0359a5d7685c08d7604c0c21710`  
		Last Modified: Wed, 12 Sep 2018 12:03:34 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6e0ec92c1465d129768b67a96cff978c3cc0232e4519c220bdc7a61c0862df2`  
		Last Modified: Wed, 12 Sep 2018 12:03:35 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1-alpine`

```console
$ docker pull spiped@sha256:9e559cb04456622c3247dac00ff1be78410f2e4841685e5fadca2cc9d6358c25
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
$ docker pull spiped@sha256:00a843424142bea09da8217b82a334ee561f52fb44210aea8965c50943a29a88
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3128990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:beec6013e5d02eb6e05e82126a842349b00bdc8881e98283db21e392aa80a12b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 14:07:11 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Wed, 12 Sep 2018 14:07:17 GMT
RUN apk add --no-cache libssl1.0
# Wed, 12 Sep 2018 14:07:18 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 12 Sep 2018 14:07:18 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 12 Sep 2018 14:07:19 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 12 Sep 2018 14:09:43 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Wed, 12 Sep 2018 14:09:44 GMT
VOLUME [/spiped]
# Wed, 12 Sep 2018 14:09:45 GMT
WORKDIR /spiped
# Wed, 12 Sep 2018 14:09:46 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 12 Sep 2018 14:09:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 14:09:48 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:905674ea9d9448b14f15ae82e3c34138680bac1ef4fc29088aae8c9639b502fe`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 2.1 MB (2146453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91fe322e1690c8fb3f2b684fd85335d36a45e509b1568683232aede6d8a5e2b`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63d4643a3ff8ac6f9f0dd09d7c503139d4b5731ee229d1d2df60acfd5e040ffb`  
		Last Modified: Wed, 12 Sep 2018 14:10:13 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3e7ab2230e639edfcb2e7bbc07d5a03f11a0a5159482fe8d879b0a4eeeb9617`  
		Last Modified: Wed, 12 Sep 2018 14:10:14 GMT  
		Size: 911.6 KB (911604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e36725bbf69d18b7a1b1209abb132f1cb2a4ccad1aa6169b7bb4bdc7bdd539d5`  
		Last Modified: Wed, 12 Sep 2018 14:10:14 GMT  
		Size: 69.0 KB (69009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3f70e3afe5520ac1703e050c21613539c69ede2023cc9edb494131be4490fdc`  
		Last Modified: Wed, 12 Sep 2018 14:10:13 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6199ea0d48d9147070216826ef848db2e4b45e0eecd4c6fa4b70f04d45cf44e4`  
		Last Modified: Wed, 12 Sep 2018 14:10:13 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1-alpine` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:943da12800833394382a87e999c0516f00b7a4c2386a922fe55c64eb66ecff6e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3094624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:329922275eb81e5d4c32580722f182c4a0010f4da8aea0d040d483da5520f88d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 12 Sep 2018 08:42:24 GMT
ADD file:a4b53e2a2e207c5107a76c16d91b99cb1ed4ecb90b363913798e663426137d45 in / 
# Wed, 12 Sep 2018 08:42:24 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:42:25 GMT
CMD ["/bin/sh"]
# Tue, 16 Oct 2018 21:10:01 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Tue, 16 Oct 2018 21:10:04 GMT
RUN apk add --no-cache libssl1.0
# Tue, 16 Oct 2018 21:10:04 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 16 Oct 2018 21:10:05 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 16 Oct 2018 21:10:06 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 16 Oct 2018 21:10:28 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Tue, 16 Oct 2018 21:10:28 GMT
VOLUME [/spiped]
# Tue, 16 Oct 2018 21:10:29 GMT
WORKDIR /spiped
# Tue, 16 Oct 2018 21:10:30 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Tue, 16 Oct 2018 21:10:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 21:10:32 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:9941776d74c9129fd585b6f0434ba48bd3a7112d6736bc02e6d12f41153cab26`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 2.1 MB (2099762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae94b3cb7a1b2cef0ceffe3303cd03f83434d283aab43389e586b42bea00b358`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d6cfe7211b190d212f45d66faf3c96f15e9a9f087056bdbcdafe61968473057`  
		Last Modified: Tue, 16 Oct 2018 21:12:10 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff37dce3bd42c9c5d54814f0351d57efe584f0b64e3cf6aee3b25c486c249ea2`  
		Last Modified: Tue, 16 Oct 2018 21:12:10 GMT  
		Size: 928.1 KB (928133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b2e61eb1391506e2a7302e95b5bb0f253c87eeb5fdb525d96d5f56f6738ba20`  
		Last Modified: Tue, 16 Oct 2018 21:12:10 GMT  
		Size: 64.9 KB (64865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:956abd9d7a3361371ec640681ff9cf3a5d3cc5e82ebde613c4ba4e24c4ca15a1`  
		Last Modified: Tue, 16 Oct 2018 21:12:10 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:013591ec221c74a5b43e34bd88580c2dc72ec3b418aea34bc0ddd99a29b26763`  
		Last Modified: Tue, 16 Oct 2018 21:12:10 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1-alpine` - linux; 386

```console
$ docker pull spiped@sha256:ecc084006e7a47fb9acd8f951d8506431436ad83c011336da87bb5ffa84f9f31
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.5 MB (3485956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b54d121308163d9c4540a2db17e119b8e3807835637545a83e0aa2645c9a4550`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 12 Sep 2018 10:38:54 GMT
ADD file:b789aca08d6985c0bf373a2ca5f2a263d45e3a789aa6bbcd1fe1d47133f985d2 in / 
# Wed, 12 Sep 2018 10:38:54 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 10:38:54 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 17:24:25 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Wed, 12 Sep 2018 17:24:25 GMT
RUN apk add --no-cache libssl1.0
# Wed, 12 Sep 2018 17:24:26 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 12 Sep 2018 17:24:26 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 12 Sep 2018 17:24:26 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 12 Sep 2018 17:24:36 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Wed, 12 Sep 2018 17:24:36 GMT
VOLUME [/spiped]
# Wed, 12 Sep 2018 17:24:36 GMT
WORKDIR /spiped
# Wed, 12 Sep 2018 17:24:37 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 12 Sep 2018 17:24:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 17:24:37 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:6b5c2e9bbf9885ccefe772a5a1f471d7da4315b7bf43ec3b4c014a65d04073b1`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 2.3 MB (2271460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d99e807699886f28203b3284584d7b093a61a84c40230f7094513bb2f84cd2`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e611caebda645f20d65b0704fb755af5b294708ad43c9634583913a95ad54d7`  
		Last Modified: Wed, 12 Sep 2018 17:24:49 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b792bf07a961c7d263600fe88d1a174cb893a526a356d0549409acb4ac0064fb`  
		Last Modified: Wed, 12 Sep 2018 17:24:49 GMT  
		Size: 1.1 MB (1123904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00a6564b09d4f759257890bacd3d81fa0c0e4bb6c5b809a8b4bf8ac007e18019`  
		Last Modified: Wed, 12 Sep 2018 17:24:49 GMT  
		Size: 88.7 KB (88731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58476aaa6793ce963880079bc3c94ccc4f326cc2c719bfcc72267f0394c01af3`  
		Last Modified: Wed, 12 Sep 2018 17:24:49 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09347a9db1ced7f9fd725fe5e1a92c53509f276f4102e4aeda5be09f7f6c2347`  
		Last Modified: Wed, 12 Sep 2018 17:24:49 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1-alpine` - linux; ppc64le

```console
$ docker pull spiped@sha256:f59254b88a620271957b44347f2f28122a5a82e31c4722ff4a9cbc1818675e19
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3267853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5be97556e307838a763dc649ea9c6d68e39e95a7a2b4e9c57ae51b28b3fb350f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:47:11 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Wed, 12 Sep 2018 08:47:14 GMT
RUN apk add --no-cache libssl1.0
# Wed, 12 Sep 2018 08:47:15 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 12 Sep 2018 08:47:18 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 12 Sep 2018 08:47:20 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 12 Sep 2018 08:47:40 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Wed, 12 Sep 2018 08:47:41 GMT
VOLUME [/spiped]
# Wed, 12 Sep 2018 08:47:42 GMT
WORKDIR /spiped
# Wed, 12 Sep 2018 08:47:44 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 12 Sep 2018 08:47:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 08:47:47 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:d6201b52ea9b908d4d6e950e2a79ded27be48979d6f0f63bd3a57b16b621f188`  
		Last Modified: Wed, 12 Sep 2018 08:19:46 GMT  
		Size: 2.2 MB (2195226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5cedde51de1c8ffccd5521fd02fc1efc1cc44ece2d5dccb1e550a65366cd80`  
		Last Modified: Wed, 12 Sep 2018 08:19:44 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c646c788c80338071acdd1f5823046ef3f2324021b29446120de0c8f00af6c0`  
		Last Modified: Wed, 12 Sep 2018 08:48:13 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47058b00d1974983e223e26c481316e3097e47f32e2760aa87d47993a29371db`  
		Last Modified: Wed, 12 Sep 2018 08:48:14 GMT  
		Size: 996.9 KB (996932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03485974322380d2132f7e40bad4b33ba5cc009bb944a177c3557229dacc4bcb`  
		Last Modified: Wed, 12 Sep 2018 08:48:13 GMT  
		Size: 73.8 KB (73767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb747a79876ded285dd0dab9e7e3b5f65c307c723b2dd3a74567d3821ef94334`  
		Last Modified: Wed, 12 Sep 2018 08:48:13 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18c8391f1a08b75b8ed119772c33a4e40185a2778492005f779b2be301719b1`  
		Last Modified: Wed, 12 Sep 2018 08:48:13 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1-alpine` - linux; s390x

```console
$ docker pull spiped@sha256:4cdf7917691856dd8cc02fc6e9318499a55cdea93080ab8e560c2230a887caa9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3447158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8cd93fddb8ff52bc7ca03cd4178e6e3c0dff60ceaffb27390f555fee80d36f1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 12 Sep 2018 11:42:25 GMT
ADD file:532f451315fcf5c4077ef91f62d9838cf5681b4a348af2d78f6edd825146612c in / 
# Wed, 12 Sep 2018 11:42:25 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 11:42:25 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 12:03:07 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Wed, 12 Sep 2018 12:03:08 GMT
RUN apk add --no-cache libssl1.0
# Wed, 12 Sep 2018 12:03:08 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 12 Sep 2018 12:03:08 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 12 Sep 2018 12:03:08 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 12 Sep 2018 12:03:17 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Wed, 12 Sep 2018 12:03:17 GMT
VOLUME [/spiped]
# Wed, 12 Sep 2018 12:03:17 GMT
WORKDIR /spiped
# Wed, 12 Sep 2018 12:03:18 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 12 Sep 2018 12:03:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 12:03:18 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:e5d7a290acc264d66e5c29923d4b8a79135ffd15887225581968bf7df22fb281`  
		Last Modified: Wed, 12 Sep 2018 11:43:25 GMT  
		Size: 2.3 MB (2307746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad01149bcd3bd207c03ab0c38897be9653222644a37b651c399c24f1e9170313`  
		Last Modified: Wed, 12 Sep 2018 11:43:24 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70047511fe5c298ec49df2ab66228d745e6ca4ff53ddd49bc4f2bf8f50064b57`  
		Last Modified: Wed, 12 Sep 2018 12:03:34 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dc0d0f118cd613ec2e8fab3c99156eb75a50dd4c9f945c4bd702eecb5d4f3cc`  
		Last Modified: Wed, 12 Sep 2018 12:03:35 GMT  
		Size: 1.1 MB (1062643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e61448e0db2bded6097171457ddcd69ed09315cb3eac52000f2ef807dd6f0e5`  
		Last Modified: Wed, 12 Sep 2018 12:03:34 GMT  
		Size: 74.9 KB (74905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:791ec9d64c42a4acce131c093b6dd24cfc9ad0359a5d7685c08d7604c0c21710`  
		Last Modified: Wed, 12 Sep 2018 12:03:34 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6e0ec92c1465d129768b67a96cff978c3cc0232e4519c220bdc7a61c0862df2`  
		Last Modified: Wed, 12 Sep 2018 12:03:35 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:alpine`

```console
$ docker pull spiped@sha256:9e559cb04456622c3247dac00ff1be78410f2e4841685e5fadca2cc9d6358c25
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
$ docker pull spiped@sha256:00a843424142bea09da8217b82a334ee561f52fb44210aea8965c50943a29a88
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3128990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:beec6013e5d02eb6e05e82126a842349b00bdc8881e98283db21e392aa80a12b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 14:07:11 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Wed, 12 Sep 2018 14:07:17 GMT
RUN apk add --no-cache libssl1.0
# Wed, 12 Sep 2018 14:07:18 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 12 Sep 2018 14:07:18 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 12 Sep 2018 14:07:19 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 12 Sep 2018 14:09:43 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Wed, 12 Sep 2018 14:09:44 GMT
VOLUME [/spiped]
# Wed, 12 Sep 2018 14:09:45 GMT
WORKDIR /spiped
# Wed, 12 Sep 2018 14:09:46 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 12 Sep 2018 14:09:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 14:09:48 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:905674ea9d9448b14f15ae82e3c34138680bac1ef4fc29088aae8c9639b502fe`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 2.1 MB (2146453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91fe322e1690c8fb3f2b684fd85335d36a45e509b1568683232aede6d8a5e2b`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63d4643a3ff8ac6f9f0dd09d7c503139d4b5731ee229d1d2df60acfd5e040ffb`  
		Last Modified: Wed, 12 Sep 2018 14:10:13 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3e7ab2230e639edfcb2e7bbc07d5a03f11a0a5159482fe8d879b0a4eeeb9617`  
		Last Modified: Wed, 12 Sep 2018 14:10:14 GMT  
		Size: 911.6 KB (911604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e36725bbf69d18b7a1b1209abb132f1cb2a4ccad1aa6169b7bb4bdc7bdd539d5`  
		Last Modified: Wed, 12 Sep 2018 14:10:14 GMT  
		Size: 69.0 KB (69009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3f70e3afe5520ac1703e050c21613539c69ede2023cc9edb494131be4490fdc`  
		Last Modified: Wed, 12 Sep 2018 14:10:13 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6199ea0d48d9147070216826ef848db2e4b45e0eecd4c6fa4b70f04d45cf44e4`  
		Last Modified: Wed, 12 Sep 2018 14:10:13 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:alpine` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:943da12800833394382a87e999c0516f00b7a4c2386a922fe55c64eb66ecff6e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3094624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:329922275eb81e5d4c32580722f182c4a0010f4da8aea0d040d483da5520f88d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 12 Sep 2018 08:42:24 GMT
ADD file:a4b53e2a2e207c5107a76c16d91b99cb1ed4ecb90b363913798e663426137d45 in / 
# Wed, 12 Sep 2018 08:42:24 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:42:25 GMT
CMD ["/bin/sh"]
# Tue, 16 Oct 2018 21:10:01 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Tue, 16 Oct 2018 21:10:04 GMT
RUN apk add --no-cache libssl1.0
# Tue, 16 Oct 2018 21:10:04 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 16 Oct 2018 21:10:05 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 16 Oct 2018 21:10:06 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 16 Oct 2018 21:10:28 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Tue, 16 Oct 2018 21:10:28 GMT
VOLUME [/spiped]
# Tue, 16 Oct 2018 21:10:29 GMT
WORKDIR /spiped
# Tue, 16 Oct 2018 21:10:30 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Tue, 16 Oct 2018 21:10:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 21:10:32 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:9941776d74c9129fd585b6f0434ba48bd3a7112d6736bc02e6d12f41153cab26`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 2.1 MB (2099762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae94b3cb7a1b2cef0ceffe3303cd03f83434d283aab43389e586b42bea00b358`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d6cfe7211b190d212f45d66faf3c96f15e9a9f087056bdbcdafe61968473057`  
		Last Modified: Tue, 16 Oct 2018 21:12:10 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff37dce3bd42c9c5d54814f0351d57efe584f0b64e3cf6aee3b25c486c249ea2`  
		Last Modified: Tue, 16 Oct 2018 21:12:10 GMT  
		Size: 928.1 KB (928133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b2e61eb1391506e2a7302e95b5bb0f253c87eeb5fdb525d96d5f56f6738ba20`  
		Last Modified: Tue, 16 Oct 2018 21:12:10 GMT  
		Size: 64.9 KB (64865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:956abd9d7a3361371ec640681ff9cf3a5d3cc5e82ebde613c4ba4e24c4ca15a1`  
		Last Modified: Tue, 16 Oct 2018 21:12:10 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:013591ec221c74a5b43e34bd88580c2dc72ec3b418aea34bc0ddd99a29b26763`  
		Last Modified: Tue, 16 Oct 2018 21:12:10 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:alpine` - linux; 386

```console
$ docker pull spiped@sha256:ecc084006e7a47fb9acd8f951d8506431436ad83c011336da87bb5ffa84f9f31
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.5 MB (3485956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b54d121308163d9c4540a2db17e119b8e3807835637545a83e0aa2645c9a4550`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 12 Sep 2018 10:38:54 GMT
ADD file:b789aca08d6985c0bf373a2ca5f2a263d45e3a789aa6bbcd1fe1d47133f985d2 in / 
# Wed, 12 Sep 2018 10:38:54 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 10:38:54 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 17:24:25 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Wed, 12 Sep 2018 17:24:25 GMT
RUN apk add --no-cache libssl1.0
# Wed, 12 Sep 2018 17:24:26 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 12 Sep 2018 17:24:26 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 12 Sep 2018 17:24:26 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 12 Sep 2018 17:24:36 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Wed, 12 Sep 2018 17:24:36 GMT
VOLUME [/spiped]
# Wed, 12 Sep 2018 17:24:36 GMT
WORKDIR /spiped
# Wed, 12 Sep 2018 17:24:37 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 12 Sep 2018 17:24:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 17:24:37 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:6b5c2e9bbf9885ccefe772a5a1f471d7da4315b7bf43ec3b4c014a65d04073b1`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 2.3 MB (2271460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d99e807699886f28203b3284584d7b093a61a84c40230f7094513bb2f84cd2`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e611caebda645f20d65b0704fb755af5b294708ad43c9634583913a95ad54d7`  
		Last Modified: Wed, 12 Sep 2018 17:24:49 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b792bf07a961c7d263600fe88d1a174cb893a526a356d0549409acb4ac0064fb`  
		Last Modified: Wed, 12 Sep 2018 17:24:49 GMT  
		Size: 1.1 MB (1123904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00a6564b09d4f759257890bacd3d81fa0c0e4bb6c5b809a8b4bf8ac007e18019`  
		Last Modified: Wed, 12 Sep 2018 17:24:49 GMT  
		Size: 88.7 KB (88731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58476aaa6793ce963880079bc3c94ccc4f326cc2c719bfcc72267f0394c01af3`  
		Last Modified: Wed, 12 Sep 2018 17:24:49 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09347a9db1ced7f9fd725fe5e1a92c53509f276f4102e4aeda5be09f7f6c2347`  
		Last Modified: Wed, 12 Sep 2018 17:24:49 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:alpine` - linux; ppc64le

```console
$ docker pull spiped@sha256:f59254b88a620271957b44347f2f28122a5a82e31c4722ff4a9cbc1818675e19
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3267853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5be97556e307838a763dc649ea9c6d68e39e95a7a2b4e9c57ae51b28b3fb350f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:47:11 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Wed, 12 Sep 2018 08:47:14 GMT
RUN apk add --no-cache libssl1.0
# Wed, 12 Sep 2018 08:47:15 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 12 Sep 2018 08:47:18 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 12 Sep 2018 08:47:20 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 12 Sep 2018 08:47:40 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Wed, 12 Sep 2018 08:47:41 GMT
VOLUME [/spiped]
# Wed, 12 Sep 2018 08:47:42 GMT
WORKDIR /spiped
# Wed, 12 Sep 2018 08:47:44 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 12 Sep 2018 08:47:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 08:47:47 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:d6201b52ea9b908d4d6e950e2a79ded27be48979d6f0f63bd3a57b16b621f188`  
		Last Modified: Wed, 12 Sep 2018 08:19:46 GMT  
		Size: 2.2 MB (2195226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5cedde51de1c8ffccd5521fd02fc1efc1cc44ece2d5dccb1e550a65366cd80`  
		Last Modified: Wed, 12 Sep 2018 08:19:44 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c646c788c80338071acdd1f5823046ef3f2324021b29446120de0c8f00af6c0`  
		Last Modified: Wed, 12 Sep 2018 08:48:13 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47058b00d1974983e223e26c481316e3097e47f32e2760aa87d47993a29371db`  
		Last Modified: Wed, 12 Sep 2018 08:48:14 GMT  
		Size: 996.9 KB (996932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03485974322380d2132f7e40bad4b33ba5cc009bb944a177c3557229dacc4bcb`  
		Last Modified: Wed, 12 Sep 2018 08:48:13 GMT  
		Size: 73.8 KB (73767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb747a79876ded285dd0dab9e7e3b5f65c307c723b2dd3a74567d3821ef94334`  
		Last Modified: Wed, 12 Sep 2018 08:48:13 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18c8391f1a08b75b8ed119772c33a4e40185a2778492005f779b2be301719b1`  
		Last Modified: Wed, 12 Sep 2018 08:48:13 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:alpine` - linux; s390x

```console
$ docker pull spiped@sha256:4cdf7917691856dd8cc02fc6e9318499a55cdea93080ab8e560c2230a887caa9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3447158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8cd93fddb8ff52bc7ca03cd4178e6e3c0dff60ceaffb27390f555fee80d36f1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 12 Sep 2018 11:42:25 GMT
ADD file:532f451315fcf5c4077ef91f62d9838cf5681b4a348af2d78f6edd825146612c in / 
# Wed, 12 Sep 2018 11:42:25 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 11:42:25 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 12:03:07 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Wed, 12 Sep 2018 12:03:08 GMT
RUN apk add --no-cache libssl1.0
# Wed, 12 Sep 2018 12:03:08 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 12 Sep 2018 12:03:08 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 12 Sep 2018 12:03:08 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 12 Sep 2018 12:03:17 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Wed, 12 Sep 2018 12:03:17 GMT
VOLUME [/spiped]
# Wed, 12 Sep 2018 12:03:17 GMT
WORKDIR /spiped
# Wed, 12 Sep 2018 12:03:18 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 12 Sep 2018 12:03:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 12:03:18 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:e5d7a290acc264d66e5c29923d4b8a79135ffd15887225581968bf7df22fb281`  
		Last Modified: Wed, 12 Sep 2018 11:43:25 GMT  
		Size: 2.3 MB (2307746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad01149bcd3bd207c03ab0c38897be9653222644a37b651c399c24f1e9170313`  
		Last Modified: Wed, 12 Sep 2018 11:43:24 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70047511fe5c298ec49df2ab66228d745e6ca4ff53ddd49bc4f2bf8f50064b57`  
		Last Modified: Wed, 12 Sep 2018 12:03:34 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dc0d0f118cd613ec2e8fab3c99156eb75a50dd4c9f945c4bd702eecb5d4f3cc`  
		Last Modified: Wed, 12 Sep 2018 12:03:35 GMT  
		Size: 1.1 MB (1062643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e61448e0db2bded6097171457ddcd69ed09315cb3eac52000f2ef807dd6f0e5`  
		Last Modified: Wed, 12 Sep 2018 12:03:34 GMT  
		Size: 74.9 KB (74905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:791ec9d64c42a4acce131c093b6dd24cfc9ad0359a5d7685c08d7604c0c21710`  
		Last Modified: Wed, 12 Sep 2018 12:03:34 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6e0ec92c1465d129768b67a96cff978c3cc0232e4519c220bdc7a61c0862df2`  
		Last Modified: Wed, 12 Sep 2018 12:03:35 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:latest`

```console
$ docker pull spiped@sha256:a2b194a5151c1a1a9465180479b8daf043be7fc645ed7245bba37bf05371ff6f
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
$ docker pull spiped@sha256:482974814a66c816ccee5a8bff1c09889edef010d81eeae8e7b18a36bade0b07
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.2 MB (30247500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b79c2fb5484ce6908a84a7e46303c617372043b2c52f718decfe7c3803fc6bc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 04:24:33 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 16 Oct 2018 04:24:37 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 04:24:37 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 16 Oct 2018 04:24:38 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 16 Oct 2018 04:24:38 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 16 Oct 2018 04:25:00 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 16 Oct 2018 04:25:01 GMT
VOLUME [/spiped]
# Tue, 16 Oct 2018 04:25:01 GMT
WORKDIR /spiped
# Tue, 16 Oct 2018 04:25:01 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Tue, 16 Oct 2018 04:25:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 04:25:02 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f40232465b30d57b99583b1463902715ca4b6b2cca0958042ac1ca0e4a4ebb32`  
		Last Modified: Tue, 16 Oct 2018 04:25:17 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f20340f9998dfe2daa4438ea75a690cd73ceb179d9dea8b0b4939b0ba2869ab`  
		Last Modified: Tue, 16 Oct 2018 04:25:17 GMT  
		Size: 1.9 MB (1881455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc18f2c47a77437d8ded4f209b84300e042f43e80dacde4441897efa5f511bd9`  
		Last Modified: Tue, 16 Oct 2018 04:25:19 GMT  
		Size: 5.9 MB (5877818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9a9746bad23360368ac49f8a55ff9dc2f6dd8013fd3e8a8fee146f68e3ed682`  
		Last Modified: Tue, 16 Oct 2018 04:25:17 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:575d849a79780cc899e806f9d31868af01f6c837fdca2c9227b2da574d43d4f6`  
		Last Modified: Tue, 16 Oct 2018 04:25:22 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; arm variant v5

```console
$ docker pull spiped@sha256:660c78c8a0fb0bfc5c9b506840edbc7cd5a65cc9c61c9a6308e85c7133cad9f7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.7 MB (27739671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c42d5ba89bc3fefad199251293efebeabb83b7a2e128a3d88f414078f2f1b312`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 16 Oct 2018 08:55:22 GMT
ADD file:8f2148adabc29587e17b50138f305f39e94e0e2bd9211a9f913fef56013ac35a in / 
# Tue, 16 Oct 2018 08:55:23 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 11:56:36 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 16 Oct 2018 11:56:45 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 11:56:45 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 16 Oct 2018 11:56:46 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 16 Oct 2018 11:56:46 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 16 Oct 2018 11:57:28 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 16 Oct 2018 11:57:28 GMT
VOLUME [/spiped]
# Tue, 16 Oct 2018 11:57:29 GMT
WORKDIR /spiped
# Tue, 16 Oct 2018 11:57:30 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Tue, 16 Oct 2018 11:57:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 11:57:30 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:4b7ffdf9817f718c84be550e8edf757070396d69165fa729c6ddd4e775428eb2`  
		Last Modified: Tue, 16 Oct 2018 09:04:44 GMT  
		Size: 21.2 MB (21162965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28112441dc968adddd665b83134ac336f22752e84978dd5290e95f19a7e64aaf`  
		Last Modified: Tue, 16 Oct 2018 11:57:40 GMT  
		Size: 1.7 KB (1738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6a21834421fd88fe63afbf08dba36ccca1dff5025798307e9b392c822e8a5c4`  
		Last Modified: Tue, 16 Oct 2018 11:57:43 GMT  
		Size: 1.6 MB (1622963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72c787750b8fb392f9645924310f83b3f22bdd310e18ba8fd276393909fa5571`  
		Last Modified: Tue, 16 Oct 2018 11:57:42 GMT  
		Size: 5.0 MB (4951524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5dcd81de183ef4e23b406c4c1365951b1fadbe7d941696e47e7e19b8fcf81a3`  
		Last Modified: Tue, 16 Oct 2018 11:57:41 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9727d05fed22cf1b7c372dcd90ef06c98946bc60dd1cccf8c13218e1d1c3fc2b`  
		Last Modified: Tue, 16 Oct 2018 11:57:40 GMT  
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
$ docker pull spiped@sha256:de921f604234c88275b2eabcf38786064d1f1a98303cda48f09c934ffbae60ac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 MB (27184842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59aa8164a7c8d13f2a0621cb6d5fee1be76f740baa3bce61a01aed3c81110f7d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:45 GMT
ADD file:e83c09a5cfc1cecaeba6b736737d551fe0f5d3f204ec3fc984fe768003774f81 in / 
# Tue, 16 Oct 2018 08:43:46 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 21:07:57 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 16 Oct 2018 21:08:07 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 21:08:08 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 16 Oct 2018 21:08:08 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 16 Oct 2018 21:08:09 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 16 Oct 2018 21:09:44 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 16 Oct 2018 21:09:45 GMT
VOLUME [/spiped]
# Tue, 16 Oct 2018 21:09:46 GMT
WORKDIR /spiped
# Tue, 16 Oct 2018 21:09:47 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Tue, 16 Oct 2018 21:09:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 21:09:48 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:141796bfcf0d5a5edb072138e517bf85deef4f47f40afb51ba8705bec3b921dd`  
		Last Modified: Tue, 16 Oct 2018 08:50:53 GMT  
		Size: 20.3 MB (20331585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38384241fdd3f1d522279dcebae58317063f256968f6ecc44c3730a30ba465ca`  
		Last Modified: Tue, 16 Oct 2018 21:10:48 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a689a3c2bc58ff11567229039928ae0561bb3e9c2d3e70380137faf729cabe21`  
		Last Modified: Tue, 16 Oct 2018 21:10:49 GMT  
		Size: 1.6 MB (1614877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3930c0a6c0d9d37ae1b5b32326b0dffc1d1506bd30ddb91368e9cd8d50a04900`  
		Last Modified: Tue, 16 Oct 2018 21:11:32 GMT  
		Size: 5.2 MB (5236186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:505faad41b9d4798cb7c77d3f56b00cbd1762da19d10bb143bee95fbff1a5c3a`  
		Last Modified: Tue, 16 Oct 2018 21:10:48 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:188293f30c3c905bbf712e3ba288d20833c00c6f115607ac83756275a016516f`  
		Last Modified: Tue, 16 Oct 2018 21:10:48 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; 386

```console
$ docker pull spiped@sha256:374110b135fcae920ef23fc2f3e0323e3669ec114594854aa3e648136981d2ef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34306250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cf0b2729c465909cefcafbba3cad26924c630622c424bbec7dff68867061a35`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 16 Oct 2018 10:49:05 GMT
ADD file:a71ef0e9adb528ae2dc5ca3395654522c23762d8936a4902378c6749bb357582 in / 
# Tue, 16 Oct 2018 10:49:05 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 22:14:14 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 16 Oct 2018 22:14:19 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 22:14:19 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 16 Oct 2018 22:14:20 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 16 Oct 2018 22:14:20 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 16 Oct 2018 22:14:46 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 16 Oct 2018 22:14:47 GMT
VOLUME [/spiped]
# Tue, 16 Oct 2018 22:14:47 GMT
WORKDIR /spiped
# Tue, 16 Oct 2018 22:14:47 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Tue, 16 Oct 2018 22:14:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 22:14:48 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:2b7bcb618c4033f37486fd700e6d0debf2260935f888a192119c41eaddd29978`  
		Last Modified: Tue, 16 Oct 2018 11:06:15 GMT  
		Size: 23.1 MB (23126605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4de3efcd25105b1b8b691a38a3264a4087a12c9a09d396da55bd5d92557729a6`  
		Last Modified: Tue, 16 Oct 2018 22:15:02 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83a9672ed4d9f0558371083ca5db30c909d65610c166e3948871501e39c7bde5`  
		Last Modified: Tue, 16 Oct 2018 22:15:03 GMT  
		Size: 1.9 MB (1874162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd7d97b45f78a1ac4131fd06b3770295efff0c2cfe9c70506cffc40a105b3daf`  
		Last Modified: Tue, 16 Oct 2018 22:15:06 GMT  
		Size: 9.3 MB (9303298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83360694a312146b4ce44f4f0a9a56414b0ca94b2626b2972ef9a4f6f5f8e0ad`  
		Last Modified: Tue, 16 Oct 2018 22:15:03 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e313f32e062b21b250aac4f28cb7381f0e779d1cd2df98bb00d9aaa7f0355bf`  
		Last Modified: Tue, 16 Oct 2018 22:15:03 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; ppc64le

```console
$ docker pull spiped@sha256:afbd0474901ca5515b4e90c10e3640d824f9ac2875184e27fff5aaa98bf7f72c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.1 MB (30142483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:258202aa10b30412d8e5d44d360fba612e4967324f282a57b5673c1a1c76ef73`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 16 Oct 2018 08:22:25 GMT
ADD file:b1fa1d0ffa2b206311dfd95642d74c3312565a1ec2e6e3a2197bfd2a4b3de6c6 in / 
# Tue, 16 Oct 2018 08:22:30 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 10:18:41 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 16 Oct 2018 10:18:54 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 10:18:58 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 16 Oct 2018 10:18:59 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 16 Oct 2018 10:19:00 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 16 Oct 2018 10:20:20 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 16 Oct 2018 10:20:22 GMT
VOLUME [/spiped]
# Tue, 16 Oct 2018 10:20:24 GMT
WORKDIR /spiped
# Tue, 16 Oct 2018 10:20:25 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Tue, 16 Oct 2018 10:20:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 10:20:27 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:202f659db3e53c01ac947538d8b37251e9fa16c4a6a699dc6c2a8910afcdfed4`  
		Last Modified: Tue, 16 Oct 2018 08:30:59 GMT  
		Size: 22.7 MB (22740583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61dc8355cacf797ac78dc0d3d6d85a57aa7bccf9e0f21bcac1e43a8031d562d7`  
		Last Modified: Tue, 16 Oct 2018 10:20:44 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45d893b7a17f2b58609eb4629f61044fd072ef2ed881a2ad6fd6d909f0eb9810`  
		Last Modified: Tue, 16 Oct 2018 10:20:45 GMT  
		Size: 1.6 MB (1552446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f72cede59af8465e89acaf3b94f036a978b041461d238a7a138beb263fba04c3`  
		Last Modified: Tue, 16 Oct 2018 10:20:47 GMT  
		Size: 5.8 MB (5847233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91bc4405f8cec3316e11252cd8d4bfd0c990fc29e987fe6032b14d7f755efdf2`  
		Last Modified: Tue, 16 Oct 2018 10:20:44 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8420ea4dbb42f4ff384a2ac8dbf5abfd0fbc8858549847ea2f188b353cadcbe`  
		Last Modified: Tue, 16 Oct 2018 10:20:44 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; s390x

```console
$ docker pull spiped@sha256:4ffd7bfa6027a62ffbb70519ac13203b358c55c12f6f79697954554170887a1b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 MB (30722883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab9834066afbafd563e8466cdd3cefb0a50bb1e7fa6aba7c8b76d5c3e02c983f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 16 Oct 2018 11:42:52 GMT
ADD file:a7cc9e5280b465a6e72c8b1331e009ddd18bff12c000c9e49ababac631179edc in / 
# Tue, 16 Oct 2018 11:42:52 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:26:54 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 16 Oct 2018 12:26:58 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:26:59 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 16 Oct 2018 12:26:59 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 16 Oct 2018 12:26:59 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 16 Oct 2018 12:27:24 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 16 Oct 2018 12:27:24 GMT
VOLUME [/spiped]
# Tue, 16 Oct 2018 12:27:24 GMT
WORKDIR /spiped
# Tue, 16 Oct 2018 12:27:25 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Tue, 16 Oct 2018 12:27:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 12:27:25 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:b16a7816eac3ca0893b75f07b37e5e276ba331e1a35619343718d1c33f877877`  
		Last Modified: Tue, 16 Oct 2018 11:46:03 GMT  
		Size: 22.3 MB (22334662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f297c844ef6d8b2fb45ccc8e1041aec7e500b345e2e825486f053a073012d64`  
		Last Modified: Tue, 16 Oct 2018 12:27:38 GMT  
		Size: 1.8 KB (1761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32ac669a6cb40400cfc70849f689bbeea639b106482eaffdb57bc0fccb56a4b4`  
		Last Modified: Tue, 16 Oct 2018 12:27:38 GMT  
		Size: 1.6 MB (1615639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18718a25fa922b8f12e34812be8bf5c0f77fccf25aaed5c390ff3072204be785`  
		Last Modified: Tue, 16 Oct 2018 12:27:40 GMT  
		Size: 6.8 MB (6770376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:723422ff95b5ead0c857f0f6a270f8dfb945ce115b6c8816da72896a3be46c53`  
		Last Modified: Tue, 16 Oct 2018 12:27:37 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4008b6b2dc4178d1797f65ce8af7fe04aa017d9f1962741b23584e1a93ebc45d`  
		Last Modified: Tue, 16 Oct 2018 12:27:37 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
