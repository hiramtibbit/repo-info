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
$ docker pull spiped@sha256:2f50c222c75b4b4a0a543415e828c34b7d5bcb411477ce7cd3e19054fea9b62e
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
$ docker pull spiped@sha256:2f50c222c75b4b4a0a543415e828c34b7d5bcb411477ce7cd3e19054fea9b62e
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
$ docker pull spiped@sha256:2f50c222c75b4b4a0a543415e828c34b7d5bcb411477ce7cd3e19054fea9b62e
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
$ docker pull spiped@sha256:9e6c6007a53bfd6bb0538b938f303a73303e77ea0660c695f411aecf8d04afa4
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
$ docker pull spiped@sha256:9e6c6007a53bfd6bb0538b938f303a73303e77ea0660c695f411aecf8d04afa4
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
$ docker pull spiped@sha256:9e6c6007a53bfd6bb0538b938f303a73303e77ea0660c695f411aecf8d04afa4
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
$ docker pull spiped@sha256:9e6c6007a53bfd6bb0538b938f303a73303e77ea0660c695f411aecf8d04afa4
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
$ docker pull spiped@sha256:d34e66298cd76685af92849bcb3d435523ffb5b2b8ac832e7466579645f5f822
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
