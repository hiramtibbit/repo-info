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
$ docker pull spiped@sha256:e30dfe3ba18165024231c3f4a0a802685bea252a8b830bc471fdc17af13ebd82
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
$ docker pull spiped@sha256:78296845c3742c036259d3eb9a86398f19cf7503f63ae409bac43586bd13f04a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30272048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5dca578f70529fd89c9cdfbde6a1d0ef7963b5666774f19cddb55eafbeb53e8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:32 GMT
ADD file:a65337a57a064a79ad8a3f42e8282b3e01710cb4684ccd880463cc8d2e051fa5 in / 
# Tue, 22 Jan 2019 19:30:32 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 02:17:46 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 23 Jan 2019 02:17:50 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:17:51 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 23 Jan 2019 02:17:51 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 23 Jan 2019 02:17:51 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 23 Jan 2019 02:18:14 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 02:18:14 GMT
VOLUME [/spiped]
# Wed, 23 Jan 2019 02:18:14 GMT
WORKDIR /spiped
# Wed, 23 Jan 2019 02:18:15 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 23 Jan 2019 02:18:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 02:18:15 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:5e6ec7f28fb77f84f64b8c29fcb0a746260563f5858315e3e9fcc4aee2844840`  
		Last Modified: Tue, 22 Jan 2019 19:37:02 GMT  
		Size: 22.5 MB (22500707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de31842e0dc7f6327ad2e73ad69b906b68bc69fb356a049b49ec51f26f2588d2`  
		Last Modified: Wed, 23 Jan 2019 02:18:31 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91f0530cec2286d7c45024aea225ae05548433b4a5fcb0335db99c4e9cf82d83`  
		Last Modified: Wed, 23 Jan 2019 02:18:31 GMT  
		Size: 1.9 MB (1891332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80736f0d2f1c521cb8c21bfd832118fa0032d6c74f0f049f3f106aadd40eed3f`  
		Last Modified: Wed, 23 Jan 2019 02:18:32 GMT  
		Size: 5.9 MB (5877823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c5345795de598f4dfbf4ad692c08030ac6077ee54e52de4aaec0c1abc7c55eb`  
		Last Modified: Wed, 23 Jan 2019 02:18:30 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e7d3dd7a592518a6513f422b65864c2c9fe0fb78560fc92825b763e79092bee`  
		Last Modified: Wed, 23 Jan 2019 02:18:30 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1` - linux; arm variant v5

```console
$ docker pull spiped@sha256:4279240dcbe527c5d47906f0d377bd86a08c3370df4a11aa9240bfc1fc5c2d1b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 MB (27768126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a4b63f2581269b878d7ae737a14b694079f484aca06219c232680fc36797a09`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 23 Jan 2019 09:54:53 GMT
ADD file:dc26e428c2cc58c087582281cf61d570f0393114b5402cff1118ca6b35ed53d7 in / 
# Wed, 23 Jan 2019 09:54:54 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 11:09:48 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 23 Jan 2019 11:09:57 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 11:09:57 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 23 Jan 2019 11:09:58 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 23 Jan 2019 11:09:58 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 23 Jan 2019 11:10:41 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 11:10:41 GMT
VOLUME [/spiped]
# Wed, 23 Jan 2019 11:10:42 GMT
WORKDIR /spiped
# Wed, 23 Jan 2019 11:10:42 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 23 Jan 2019 11:10:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 11:10:43 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:583fbf7ac56f75b30837306fc2d7ea455e87b6dd8eed4573d37b90971861e219`  
		Last Modified: Wed, 23 Jan 2019 10:02:22 GMT  
		Size: 21.2 MB (21181826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1dc746aa5e7182bec83be6db19606b48a6a1e84b85708db279c081bb4dd210a`  
		Last Modified: Wed, 23 Jan 2019 11:10:54 GMT  
		Size: 1.7 KB (1734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab12c6702a1b3d3b0fd47fabd3a605bfacf9daf106f84d75e43df5587372b80d`  
		Last Modified: Wed, 23 Jan 2019 11:10:54 GMT  
		Size: 1.6 MB (1632484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0875e77423600654bded56927b291feedc8faea757d3dfa4be5bf4cef568a5ac`  
		Last Modified: Wed, 23 Jan 2019 11:10:56 GMT  
		Size: 5.0 MB (4951604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0e3a1a6405e0a350a951dccb2ec3ce27a88065aa7e68257562ae6d81f3d2aad`  
		Last Modified: Wed, 23 Jan 2019 11:10:54 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c916df86d6cd97435061e203c732e034f6310401e4c41d1b9a1f9ff4dfe896fc`  
		Last Modified: Wed, 23 Jan 2019 11:10:54 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1` - linux; arm variant v7

```console
$ docker pull spiped@sha256:1b32d7df10a196325c756eef63dcb0ed08a54f876af6d3acab558ddd39d22cc9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.6 MB (25574001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80183a66a689d32bd1dbcb0bfbbda9dfbdb9291e68bfb4fa83b637512fa52997`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:55 GMT
ADD file:c712096b02de85275a955c0292b6e143730d8506009ecc32436b1bd44789dcd1 in / 
# Wed, 23 Jan 2019 13:04:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 15:38:19 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 23 Jan 2019 15:38:28 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 15:38:29 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 23 Jan 2019 15:38:29 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 23 Jan 2019 15:38:30 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 23 Jan 2019 15:39:15 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 15:39:16 GMT
VOLUME [/spiped]
# Wed, 23 Jan 2019 15:39:17 GMT
WORKDIR /spiped
# Wed, 23 Jan 2019 15:39:19 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 23 Jan 2019 15:39:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 15:39:21 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:433444f4a04d4a68d83dfe1e90ccfe3d02ce163939e9b79dd87136d956b49408`  
		Last Modified: Wed, 23 Jan 2019 13:12:25 GMT  
		Size: 19.3 MB (19290286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52001b7272507b4ef9db5bffded8d94f1f062abeaf9f8b7eceeae08cb964d6d6`  
		Last Modified: Wed, 23 Jan 2019 15:39:43 GMT  
		Size: 1.7 KB (1738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7824c207dbc5379a9f6827e95a5f8f837dbab9b615a5071d80a30910eed12ee5`  
		Last Modified: Wed, 23 Jan 2019 15:39:43 GMT  
		Size: 1.6 MB (1573629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce28ee042d7a52cdca4791ea41a40877cd4a94685b2cb974718cb2e8ff44fa3`  
		Last Modified: Wed, 23 Jan 2019 15:39:44 GMT  
		Size: 4.7 MB (4707868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc044d71958bc5b4418b9705870f2083a6fe7fb68001cdb17a10acae53180be5`  
		Last Modified: Wed, 23 Jan 2019 15:39:43 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e6d8d786fc05c66534f42018fd661bd206e6ca934c0ba0b8e5bb4be6c00a733`  
		Last Modified: Wed, 23 Jan 2019 15:39:43 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:4ce244b79f5f5080ce5fff39081e908dd6679f4d677ba7e26bd88d6d4a8f3c4c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 MB (27212713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3db4bffe72f85f065b55dc9a7ba14c3496f8b73bdf34d401e0b31991ca09e89d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 23 Jan 2019 10:04:38 GMT
ADD file:64db5736cabe52ff81a1eb31101c1afa1e4a04374e84ae717532a88286d01784 in / 
# Wed, 23 Jan 2019 10:04:39 GMT
CMD ["bash"]
# Fri, 25 Jan 2019 05:10:56 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Fri, 25 Jan 2019 05:11:20 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Fri, 25 Jan 2019 05:11:22 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 25 Jan 2019 05:11:23 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 25 Jan 2019 05:11:24 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 25 Jan 2019 05:14:01 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Fri, 25 Jan 2019 05:14:02 GMT
VOLUME [/spiped]
# Fri, 25 Jan 2019 05:14:06 GMT
WORKDIR /spiped
# Fri, 25 Jan 2019 05:14:08 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 25 Jan 2019 05:14:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 25 Jan 2019 05:14:13 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:711c3a2baeda87a6b9816cb812388d62d17396034e595a68d8ee5f938f9d77b3`  
		Last Modified: Wed, 23 Jan 2019 10:11:36 GMT  
		Size: 20.4 MB (20350180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66431ff1a975e241627fcbc9b916f51b41bde9ae44ce2a59bc4ea68eb95d7461`  
		Last Modified: Fri, 25 Jan 2019 05:14:34 GMT  
		Size: 1.8 KB (1758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:882d6683a2b0f67fc571a847f02e306741becd7b2e1c257f9caa667408ce035b`  
		Last Modified: Fri, 25 Jan 2019 05:14:34 GMT  
		Size: 1.6 MB (1623677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83775b7c5b3260efa369e7162e72e302ef7e410180bfb2e81d78abe91806afdd`  
		Last Modified: Fri, 25 Jan 2019 05:14:37 GMT  
		Size: 5.2 MB (5236652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8459b7ba90f28a5f032712753ad0ba306d92ec5dcfe692ffeed1663fb018d07d`  
		Last Modified: Fri, 25 Jan 2019 05:14:33 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1b2047151c393bf5d244cae883f8a7c5bc84fd49f876a868e2536cb0194a491`  
		Last Modified: Fri, 25 Jan 2019 05:14:34 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1` - linux; 386

```console
$ docker pull spiped@sha256:8e8b0710833b35cb585f13bd70fa5dd73a801df84327462c694dc73938a7d883
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34338060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:883668fe6a35e572a24c700fc787c0da3767648c5c23dd5e4cd53041e88ed49a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 23 Jan 2019 11:53:14 GMT
ADD file:33ade62bc2e01bcde808effab0eb8a419e852a98f00d20aa90921b4ab336f065 in / 
# Wed, 23 Jan 2019 11:53:15 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 17:50:27 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 23 Jan 2019 17:50:32 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 17:50:32 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 23 Jan 2019 17:50:32 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 23 Jan 2019 17:50:33 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 23 Jan 2019 17:50:58 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 17:50:58 GMT
VOLUME [/spiped]
# Wed, 23 Jan 2019 17:50:58 GMT
WORKDIR /spiped
# Wed, 23 Jan 2019 17:50:59 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 23 Jan 2019 17:50:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 17:50:59 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:7900f805f4cf31befea34795a27462a91c7e89405b1016d7762ebda023f3cf21`  
		Last Modified: Wed, 23 Jan 2019 12:02:40 GMT  
		Size: 23.1 MB (23147117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f50b9f534a87e6266c70f2607c94c6131fcfa716d57030acaf0cf441a866d070`  
		Last Modified: Wed, 23 Jan 2019 17:51:12 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33b15629e250d9e38d015676f9095f2a1d01b6115e29c9e1795481a5dfe148fe`  
		Last Modified: Wed, 23 Jan 2019 17:51:12 GMT  
		Size: 1.9 MB (1885421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f07a4d9f7471bc403880cf4d18866605b4c1bdd42189d5beb3b990874437f98f`  
		Last Modified: Wed, 23 Jan 2019 17:51:14 GMT  
		Size: 9.3 MB (9303337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c4fb027bdafbe1a38432e75240d718baa8184a584722f18bb1cce537c3c0952`  
		Last Modified: Wed, 23 Jan 2019 17:51:12 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09692f6078c9c62f428facdd53c6526cd6a62966fa5f7bd13b97d5092cbf257`  
		Last Modified: Wed, 23 Jan 2019 17:51:12 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1` - linux; ppc64le

```console
$ docker pull spiped@sha256:0f80976f763af165b770f5d108d12a25d824393ce81284c17c82e7d72c345d1a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.2 MB (30166403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83f40f8a4122a560f2382a72d2bde0b0315d6f8049c03e02dcc658309ba22e3a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 23 Jan 2019 09:27:25 GMT
ADD file:0319b2e5714eb9ca36cdff43e04c2bfeef2d75df874454b811aea2ca19689f38 in / 
# Wed, 23 Jan 2019 09:27:28 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 11:55:21 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 23 Jan 2019 11:55:35 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 11:55:37 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 23 Jan 2019 11:55:40 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 23 Jan 2019 11:55:43 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 23 Jan 2019 11:57:39 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 11:57:43 GMT
VOLUME [/spiped]
# Wed, 23 Jan 2019 11:57:46 GMT
WORKDIR /spiped
# Wed, 23 Jan 2019 11:57:47 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 23 Jan 2019 11:57:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 11:57:56 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:6c5a75a07494bd17f6469a546426663557e2f61d5e776afb51fd406a92082ef1`  
		Last Modified: Wed, 23 Jan 2019 09:33:42 GMT  
		Size: 22.8 MB (22755331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a4f6bd79971d11a28f6db1139c49ed6ac828eab5b11ad65b19acb4a52bbee11`  
		Last Modified: Wed, 23 Jan 2019 11:58:26 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a6a53837222492513a246d423435eac0fa699a4f65856f93ecf5d5bed31bdd8`  
		Last Modified: Wed, 23 Jan 2019 11:58:27 GMT  
		Size: 1.6 MB (1561338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc8e349d8a43fdb6e298c166ede4e131937a8e7c8ff86ac9d038dc64c2756589`  
		Last Modified: Wed, 23 Jan 2019 11:58:28 GMT  
		Size: 5.8 MB (5847512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3011cefbb9a903372a3a5bc4be3e85c7cc9bd4a4ba8946e81ee31631b163c4a1`  
		Last Modified: Wed, 23 Jan 2019 11:58:26 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d15bb2e44dae8f80e442f22b98b6c362e720f2a19b8d4f6a5654bf5529809c47`  
		Last Modified: Wed, 23 Jan 2019 11:58:26 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1` - linux; s390x

```console
$ docker pull spiped@sha256:1d8cdd7f59bb5c6aaf4dfaaf9cf079653756843d7b0ae755b0bb034c2a45aea8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 MB (30751806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02c4c772d11a067350da8373a800eefcd7712c6efcde65d7d4ee814befc0db4d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 23 Jan 2019 12:44:35 GMT
ADD file:9ec2f952473b440ce27a29c354764178258274d4f97e1b3490238eb594dddf16 in / 
# Wed, 23 Jan 2019 12:44:35 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:49:24 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 23 Jan 2019 13:49:28 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:49:28 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 23 Jan 2019 13:49:29 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 23 Jan 2019 13:49:29 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 23 Jan 2019 13:49:48 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 13:49:48 GMT
VOLUME [/spiped]
# Wed, 23 Jan 2019 13:49:48 GMT
WORKDIR /spiped
# Wed, 23 Jan 2019 13:49:49 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 23 Jan 2019 13:49:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 13:49:49 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:99e7bb47d7df9eb7625dccfcacd2c4e8a458ac70850b46efa85d64fac11c6bd2`  
		Last Modified: Wed, 23 Jan 2019 12:48:55 GMT  
		Size: 22.4 MB (22353499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ab28850c35f98ea8b217dfbf38b9a548d9176b788fac35c8817dbf1ef24e568`  
		Last Modified: Wed, 23 Jan 2019 13:50:06 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a3d56a3191ef390996546cebae21e2558093047c03c9a1362347075ff279c40`  
		Last Modified: Wed, 23 Jan 2019 13:50:07 GMT  
		Size: 1.6 MB (1625745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:067a78f67e10abe189e0c96b634c6adbf41380e9407e1a36145ef4c5e5adf481`  
		Last Modified: Wed, 23 Jan 2019 13:50:08 GMT  
		Size: 6.8 MB (6770373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adf6eaba1b689a1f78bddb77f86f91f046be850a261a281b7b3e6bddb9b58ec5`  
		Last Modified: Wed, 23 Jan 2019 13:50:07 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74c6cb18e63b6d30799eb630e9afedc49d99a5264232a0245088ea7b108b118b`  
		Last Modified: Wed, 23 Jan 2019 13:50:06 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1.6`

```console
$ docker pull spiped@sha256:e30dfe3ba18165024231c3f4a0a802685bea252a8b830bc471fdc17af13ebd82
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
$ docker pull spiped@sha256:78296845c3742c036259d3eb9a86398f19cf7503f63ae409bac43586bd13f04a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30272048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5dca578f70529fd89c9cdfbde6a1d0ef7963b5666774f19cddb55eafbeb53e8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:32 GMT
ADD file:a65337a57a064a79ad8a3f42e8282b3e01710cb4684ccd880463cc8d2e051fa5 in / 
# Tue, 22 Jan 2019 19:30:32 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 02:17:46 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 23 Jan 2019 02:17:50 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:17:51 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 23 Jan 2019 02:17:51 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 23 Jan 2019 02:17:51 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 23 Jan 2019 02:18:14 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 02:18:14 GMT
VOLUME [/spiped]
# Wed, 23 Jan 2019 02:18:14 GMT
WORKDIR /spiped
# Wed, 23 Jan 2019 02:18:15 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 23 Jan 2019 02:18:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 02:18:15 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:5e6ec7f28fb77f84f64b8c29fcb0a746260563f5858315e3e9fcc4aee2844840`  
		Last Modified: Tue, 22 Jan 2019 19:37:02 GMT  
		Size: 22.5 MB (22500707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de31842e0dc7f6327ad2e73ad69b906b68bc69fb356a049b49ec51f26f2588d2`  
		Last Modified: Wed, 23 Jan 2019 02:18:31 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91f0530cec2286d7c45024aea225ae05548433b4a5fcb0335db99c4e9cf82d83`  
		Last Modified: Wed, 23 Jan 2019 02:18:31 GMT  
		Size: 1.9 MB (1891332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80736f0d2f1c521cb8c21bfd832118fa0032d6c74f0f049f3f106aadd40eed3f`  
		Last Modified: Wed, 23 Jan 2019 02:18:32 GMT  
		Size: 5.9 MB (5877823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c5345795de598f4dfbf4ad692c08030ac6077ee54e52de4aaec0c1abc7c55eb`  
		Last Modified: Wed, 23 Jan 2019 02:18:30 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e7d3dd7a592518a6513f422b65864c2c9fe0fb78560fc92825b763e79092bee`  
		Last Modified: Wed, 23 Jan 2019 02:18:30 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6` - linux; arm variant v5

```console
$ docker pull spiped@sha256:4279240dcbe527c5d47906f0d377bd86a08c3370df4a11aa9240bfc1fc5c2d1b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 MB (27768126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a4b63f2581269b878d7ae737a14b694079f484aca06219c232680fc36797a09`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 23 Jan 2019 09:54:53 GMT
ADD file:dc26e428c2cc58c087582281cf61d570f0393114b5402cff1118ca6b35ed53d7 in / 
# Wed, 23 Jan 2019 09:54:54 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 11:09:48 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 23 Jan 2019 11:09:57 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 11:09:57 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 23 Jan 2019 11:09:58 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 23 Jan 2019 11:09:58 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 23 Jan 2019 11:10:41 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 11:10:41 GMT
VOLUME [/spiped]
# Wed, 23 Jan 2019 11:10:42 GMT
WORKDIR /spiped
# Wed, 23 Jan 2019 11:10:42 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 23 Jan 2019 11:10:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 11:10:43 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:583fbf7ac56f75b30837306fc2d7ea455e87b6dd8eed4573d37b90971861e219`  
		Last Modified: Wed, 23 Jan 2019 10:02:22 GMT  
		Size: 21.2 MB (21181826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1dc746aa5e7182bec83be6db19606b48a6a1e84b85708db279c081bb4dd210a`  
		Last Modified: Wed, 23 Jan 2019 11:10:54 GMT  
		Size: 1.7 KB (1734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab12c6702a1b3d3b0fd47fabd3a605bfacf9daf106f84d75e43df5587372b80d`  
		Last Modified: Wed, 23 Jan 2019 11:10:54 GMT  
		Size: 1.6 MB (1632484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0875e77423600654bded56927b291feedc8faea757d3dfa4be5bf4cef568a5ac`  
		Last Modified: Wed, 23 Jan 2019 11:10:56 GMT  
		Size: 5.0 MB (4951604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0e3a1a6405e0a350a951dccb2ec3ce27a88065aa7e68257562ae6d81f3d2aad`  
		Last Modified: Wed, 23 Jan 2019 11:10:54 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c916df86d6cd97435061e203c732e034f6310401e4c41d1b9a1f9ff4dfe896fc`  
		Last Modified: Wed, 23 Jan 2019 11:10:54 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6` - linux; arm variant v7

```console
$ docker pull spiped@sha256:1b32d7df10a196325c756eef63dcb0ed08a54f876af6d3acab558ddd39d22cc9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.6 MB (25574001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80183a66a689d32bd1dbcb0bfbbda9dfbdb9291e68bfb4fa83b637512fa52997`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:55 GMT
ADD file:c712096b02de85275a955c0292b6e143730d8506009ecc32436b1bd44789dcd1 in / 
# Wed, 23 Jan 2019 13:04:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 15:38:19 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 23 Jan 2019 15:38:28 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 15:38:29 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 23 Jan 2019 15:38:29 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 23 Jan 2019 15:38:30 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 23 Jan 2019 15:39:15 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 15:39:16 GMT
VOLUME [/spiped]
# Wed, 23 Jan 2019 15:39:17 GMT
WORKDIR /spiped
# Wed, 23 Jan 2019 15:39:19 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 23 Jan 2019 15:39:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 15:39:21 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:433444f4a04d4a68d83dfe1e90ccfe3d02ce163939e9b79dd87136d956b49408`  
		Last Modified: Wed, 23 Jan 2019 13:12:25 GMT  
		Size: 19.3 MB (19290286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52001b7272507b4ef9db5bffded8d94f1f062abeaf9f8b7eceeae08cb964d6d6`  
		Last Modified: Wed, 23 Jan 2019 15:39:43 GMT  
		Size: 1.7 KB (1738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7824c207dbc5379a9f6827e95a5f8f837dbab9b615a5071d80a30910eed12ee5`  
		Last Modified: Wed, 23 Jan 2019 15:39:43 GMT  
		Size: 1.6 MB (1573629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce28ee042d7a52cdca4791ea41a40877cd4a94685b2cb974718cb2e8ff44fa3`  
		Last Modified: Wed, 23 Jan 2019 15:39:44 GMT  
		Size: 4.7 MB (4707868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc044d71958bc5b4418b9705870f2083a6fe7fb68001cdb17a10acae53180be5`  
		Last Modified: Wed, 23 Jan 2019 15:39:43 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e6d8d786fc05c66534f42018fd661bd206e6ca934c0ba0b8e5bb4be6c00a733`  
		Last Modified: Wed, 23 Jan 2019 15:39:43 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:4ce244b79f5f5080ce5fff39081e908dd6679f4d677ba7e26bd88d6d4a8f3c4c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 MB (27212713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3db4bffe72f85f065b55dc9a7ba14c3496f8b73bdf34d401e0b31991ca09e89d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 23 Jan 2019 10:04:38 GMT
ADD file:64db5736cabe52ff81a1eb31101c1afa1e4a04374e84ae717532a88286d01784 in / 
# Wed, 23 Jan 2019 10:04:39 GMT
CMD ["bash"]
# Fri, 25 Jan 2019 05:10:56 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Fri, 25 Jan 2019 05:11:20 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Fri, 25 Jan 2019 05:11:22 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 25 Jan 2019 05:11:23 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 25 Jan 2019 05:11:24 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 25 Jan 2019 05:14:01 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Fri, 25 Jan 2019 05:14:02 GMT
VOLUME [/spiped]
# Fri, 25 Jan 2019 05:14:06 GMT
WORKDIR /spiped
# Fri, 25 Jan 2019 05:14:08 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 25 Jan 2019 05:14:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 25 Jan 2019 05:14:13 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:711c3a2baeda87a6b9816cb812388d62d17396034e595a68d8ee5f938f9d77b3`  
		Last Modified: Wed, 23 Jan 2019 10:11:36 GMT  
		Size: 20.4 MB (20350180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66431ff1a975e241627fcbc9b916f51b41bde9ae44ce2a59bc4ea68eb95d7461`  
		Last Modified: Fri, 25 Jan 2019 05:14:34 GMT  
		Size: 1.8 KB (1758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:882d6683a2b0f67fc571a847f02e306741becd7b2e1c257f9caa667408ce035b`  
		Last Modified: Fri, 25 Jan 2019 05:14:34 GMT  
		Size: 1.6 MB (1623677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83775b7c5b3260efa369e7162e72e302ef7e410180bfb2e81d78abe91806afdd`  
		Last Modified: Fri, 25 Jan 2019 05:14:37 GMT  
		Size: 5.2 MB (5236652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8459b7ba90f28a5f032712753ad0ba306d92ec5dcfe692ffeed1663fb018d07d`  
		Last Modified: Fri, 25 Jan 2019 05:14:33 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1b2047151c393bf5d244cae883f8a7c5bc84fd49f876a868e2536cb0194a491`  
		Last Modified: Fri, 25 Jan 2019 05:14:34 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6` - linux; 386

```console
$ docker pull spiped@sha256:8e8b0710833b35cb585f13bd70fa5dd73a801df84327462c694dc73938a7d883
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34338060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:883668fe6a35e572a24c700fc787c0da3767648c5c23dd5e4cd53041e88ed49a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 23 Jan 2019 11:53:14 GMT
ADD file:33ade62bc2e01bcde808effab0eb8a419e852a98f00d20aa90921b4ab336f065 in / 
# Wed, 23 Jan 2019 11:53:15 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 17:50:27 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 23 Jan 2019 17:50:32 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 17:50:32 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 23 Jan 2019 17:50:32 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 23 Jan 2019 17:50:33 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 23 Jan 2019 17:50:58 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 17:50:58 GMT
VOLUME [/spiped]
# Wed, 23 Jan 2019 17:50:58 GMT
WORKDIR /spiped
# Wed, 23 Jan 2019 17:50:59 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 23 Jan 2019 17:50:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 17:50:59 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:7900f805f4cf31befea34795a27462a91c7e89405b1016d7762ebda023f3cf21`  
		Last Modified: Wed, 23 Jan 2019 12:02:40 GMT  
		Size: 23.1 MB (23147117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f50b9f534a87e6266c70f2607c94c6131fcfa716d57030acaf0cf441a866d070`  
		Last Modified: Wed, 23 Jan 2019 17:51:12 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33b15629e250d9e38d015676f9095f2a1d01b6115e29c9e1795481a5dfe148fe`  
		Last Modified: Wed, 23 Jan 2019 17:51:12 GMT  
		Size: 1.9 MB (1885421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f07a4d9f7471bc403880cf4d18866605b4c1bdd42189d5beb3b990874437f98f`  
		Last Modified: Wed, 23 Jan 2019 17:51:14 GMT  
		Size: 9.3 MB (9303337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c4fb027bdafbe1a38432e75240d718baa8184a584722f18bb1cce537c3c0952`  
		Last Modified: Wed, 23 Jan 2019 17:51:12 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09692f6078c9c62f428facdd53c6526cd6a62966fa5f7bd13b97d5092cbf257`  
		Last Modified: Wed, 23 Jan 2019 17:51:12 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6` - linux; ppc64le

```console
$ docker pull spiped@sha256:0f80976f763af165b770f5d108d12a25d824393ce81284c17c82e7d72c345d1a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.2 MB (30166403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83f40f8a4122a560f2382a72d2bde0b0315d6f8049c03e02dcc658309ba22e3a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 23 Jan 2019 09:27:25 GMT
ADD file:0319b2e5714eb9ca36cdff43e04c2bfeef2d75df874454b811aea2ca19689f38 in / 
# Wed, 23 Jan 2019 09:27:28 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 11:55:21 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 23 Jan 2019 11:55:35 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 11:55:37 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 23 Jan 2019 11:55:40 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 23 Jan 2019 11:55:43 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 23 Jan 2019 11:57:39 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 11:57:43 GMT
VOLUME [/spiped]
# Wed, 23 Jan 2019 11:57:46 GMT
WORKDIR /spiped
# Wed, 23 Jan 2019 11:57:47 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 23 Jan 2019 11:57:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 11:57:56 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:6c5a75a07494bd17f6469a546426663557e2f61d5e776afb51fd406a92082ef1`  
		Last Modified: Wed, 23 Jan 2019 09:33:42 GMT  
		Size: 22.8 MB (22755331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a4f6bd79971d11a28f6db1139c49ed6ac828eab5b11ad65b19acb4a52bbee11`  
		Last Modified: Wed, 23 Jan 2019 11:58:26 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a6a53837222492513a246d423435eac0fa699a4f65856f93ecf5d5bed31bdd8`  
		Last Modified: Wed, 23 Jan 2019 11:58:27 GMT  
		Size: 1.6 MB (1561338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc8e349d8a43fdb6e298c166ede4e131937a8e7c8ff86ac9d038dc64c2756589`  
		Last Modified: Wed, 23 Jan 2019 11:58:28 GMT  
		Size: 5.8 MB (5847512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3011cefbb9a903372a3a5bc4be3e85c7cc9bd4a4ba8946e81ee31631b163c4a1`  
		Last Modified: Wed, 23 Jan 2019 11:58:26 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d15bb2e44dae8f80e442f22b98b6c362e720f2a19b8d4f6a5654bf5529809c47`  
		Last Modified: Wed, 23 Jan 2019 11:58:26 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6` - linux; s390x

```console
$ docker pull spiped@sha256:1d8cdd7f59bb5c6aaf4dfaaf9cf079653756843d7b0ae755b0bb034c2a45aea8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 MB (30751806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02c4c772d11a067350da8373a800eefcd7712c6efcde65d7d4ee814befc0db4d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 23 Jan 2019 12:44:35 GMT
ADD file:9ec2f952473b440ce27a29c354764178258274d4f97e1b3490238eb594dddf16 in / 
# Wed, 23 Jan 2019 12:44:35 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:49:24 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 23 Jan 2019 13:49:28 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:49:28 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 23 Jan 2019 13:49:29 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 23 Jan 2019 13:49:29 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 23 Jan 2019 13:49:48 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 13:49:48 GMT
VOLUME [/spiped]
# Wed, 23 Jan 2019 13:49:48 GMT
WORKDIR /spiped
# Wed, 23 Jan 2019 13:49:49 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 23 Jan 2019 13:49:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 13:49:49 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:99e7bb47d7df9eb7625dccfcacd2c4e8a458ac70850b46efa85d64fac11c6bd2`  
		Last Modified: Wed, 23 Jan 2019 12:48:55 GMT  
		Size: 22.4 MB (22353499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ab28850c35f98ea8b217dfbf38b9a548d9176b788fac35c8817dbf1ef24e568`  
		Last Modified: Wed, 23 Jan 2019 13:50:06 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a3d56a3191ef390996546cebae21e2558093047c03c9a1362347075ff279c40`  
		Last Modified: Wed, 23 Jan 2019 13:50:07 GMT  
		Size: 1.6 MB (1625745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:067a78f67e10abe189e0c96b634c6adbf41380e9407e1a36145ef4c5e5adf481`  
		Last Modified: Wed, 23 Jan 2019 13:50:08 GMT  
		Size: 6.8 MB (6770373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adf6eaba1b689a1f78bddb77f86f91f046be850a261a281b7b3e6bddb9b58ec5`  
		Last Modified: Wed, 23 Jan 2019 13:50:07 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74c6cb18e63b6d30799eb630e9afedc49d99a5264232a0245088ea7b108b118b`  
		Last Modified: Wed, 23 Jan 2019 13:50:06 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1.6.0`

```console
$ docker pull spiped@sha256:e30dfe3ba18165024231c3f4a0a802685bea252a8b830bc471fdc17af13ebd82
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
$ docker pull spiped@sha256:78296845c3742c036259d3eb9a86398f19cf7503f63ae409bac43586bd13f04a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30272048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5dca578f70529fd89c9cdfbde6a1d0ef7963b5666774f19cddb55eafbeb53e8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:32 GMT
ADD file:a65337a57a064a79ad8a3f42e8282b3e01710cb4684ccd880463cc8d2e051fa5 in / 
# Tue, 22 Jan 2019 19:30:32 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 02:17:46 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 23 Jan 2019 02:17:50 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:17:51 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 23 Jan 2019 02:17:51 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 23 Jan 2019 02:17:51 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 23 Jan 2019 02:18:14 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 02:18:14 GMT
VOLUME [/spiped]
# Wed, 23 Jan 2019 02:18:14 GMT
WORKDIR /spiped
# Wed, 23 Jan 2019 02:18:15 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 23 Jan 2019 02:18:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 02:18:15 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:5e6ec7f28fb77f84f64b8c29fcb0a746260563f5858315e3e9fcc4aee2844840`  
		Last Modified: Tue, 22 Jan 2019 19:37:02 GMT  
		Size: 22.5 MB (22500707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de31842e0dc7f6327ad2e73ad69b906b68bc69fb356a049b49ec51f26f2588d2`  
		Last Modified: Wed, 23 Jan 2019 02:18:31 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91f0530cec2286d7c45024aea225ae05548433b4a5fcb0335db99c4e9cf82d83`  
		Last Modified: Wed, 23 Jan 2019 02:18:31 GMT  
		Size: 1.9 MB (1891332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80736f0d2f1c521cb8c21bfd832118fa0032d6c74f0f049f3f106aadd40eed3f`  
		Last Modified: Wed, 23 Jan 2019 02:18:32 GMT  
		Size: 5.9 MB (5877823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c5345795de598f4dfbf4ad692c08030ac6077ee54e52de4aaec0c1abc7c55eb`  
		Last Modified: Wed, 23 Jan 2019 02:18:30 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e7d3dd7a592518a6513f422b65864c2c9fe0fb78560fc92825b763e79092bee`  
		Last Modified: Wed, 23 Jan 2019 02:18:30 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0` - linux; arm variant v5

```console
$ docker pull spiped@sha256:4279240dcbe527c5d47906f0d377bd86a08c3370df4a11aa9240bfc1fc5c2d1b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 MB (27768126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a4b63f2581269b878d7ae737a14b694079f484aca06219c232680fc36797a09`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 23 Jan 2019 09:54:53 GMT
ADD file:dc26e428c2cc58c087582281cf61d570f0393114b5402cff1118ca6b35ed53d7 in / 
# Wed, 23 Jan 2019 09:54:54 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 11:09:48 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 23 Jan 2019 11:09:57 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 11:09:57 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 23 Jan 2019 11:09:58 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 23 Jan 2019 11:09:58 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 23 Jan 2019 11:10:41 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 11:10:41 GMT
VOLUME [/spiped]
# Wed, 23 Jan 2019 11:10:42 GMT
WORKDIR /spiped
# Wed, 23 Jan 2019 11:10:42 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 23 Jan 2019 11:10:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 11:10:43 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:583fbf7ac56f75b30837306fc2d7ea455e87b6dd8eed4573d37b90971861e219`  
		Last Modified: Wed, 23 Jan 2019 10:02:22 GMT  
		Size: 21.2 MB (21181826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1dc746aa5e7182bec83be6db19606b48a6a1e84b85708db279c081bb4dd210a`  
		Last Modified: Wed, 23 Jan 2019 11:10:54 GMT  
		Size: 1.7 KB (1734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab12c6702a1b3d3b0fd47fabd3a605bfacf9daf106f84d75e43df5587372b80d`  
		Last Modified: Wed, 23 Jan 2019 11:10:54 GMT  
		Size: 1.6 MB (1632484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0875e77423600654bded56927b291feedc8faea757d3dfa4be5bf4cef568a5ac`  
		Last Modified: Wed, 23 Jan 2019 11:10:56 GMT  
		Size: 5.0 MB (4951604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0e3a1a6405e0a350a951dccb2ec3ce27a88065aa7e68257562ae6d81f3d2aad`  
		Last Modified: Wed, 23 Jan 2019 11:10:54 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c916df86d6cd97435061e203c732e034f6310401e4c41d1b9a1f9ff4dfe896fc`  
		Last Modified: Wed, 23 Jan 2019 11:10:54 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0` - linux; arm variant v7

```console
$ docker pull spiped@sha256:1b32d7df10a196325c756eef63dcb0ed08a54f876af6d3acab558ddd39d22cc9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.6 MB (25574001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80183a66a689d32bd1dbcb0bfbbda9dfbdb9291e68bfb4fa83b637512fa52997`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:55 GMT
ADD file:c712096b02de85275a955c0292b6e143730d8506009ecc32436b1bd44789dcd1 in / 
# Wed, 23 Jan 2019 13:04:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 15:38:19 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 23 Jan 2019 15:38:28 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 15:38:29 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 23 Jan 2019 15:38:29 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 23 Jan 2019 15:38:30 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 23 Jan 2019 15:39:15 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 15:39:16 GMT
VOLUME [/spiped]
# Wed, 23 Jan 2019 15:39:17 GMT
WORKDIR /spiped
# Wed, 23 Jan 2019 15:39:19 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 23 Jan 2019 15:39:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 15:39:21 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:433444f4a04d4a68d83dfe1e90ccfe3d02ce163939e9b79dd87136d956b49408`  
		Last Modified: Wed, 23 Jan 2019 13:12:25 GMT  
		Size: 19.3 MB (19290286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52001b7272507b4ef9db5bffded8d94f1f062abeaf9f8b7eceeae08cb964d6d6`  
		Last Modified: Wed, 23 Jan 2019 15:39:43 GMT  
		Size: 1.7 KB (1738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7824c207dbc5379a9f6827e95a5f8f837dbab9b615a5071d80a30910eed12ee5`  
		Last Modified: Wed, 23 Jan 2019 15:39:43 GMT  
		Size: 1.6 MB (1573629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce28ee042d7a52cdca4791ea41a40877cd4a94685b2cb974718cb2e8ff44fa3`  
		Last Modified: Wed, 23 Jan 2019 15:39:44 GMT  
		Size: 4.7 MB (4707868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc044d71958bc5b4418b9705870f2083a6fe7fb68001cdb17a10acae53180be5`  
		Last Modified: Wed, 23 Jan 2019 15:39:43 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e6d8d786fc05c66534f42018fd661bd206e6ca934c0ba0b8e5bb4be6c00a733`  
		Last Modified: Wed, 23 Jan 2019 15:39:43 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:4ce244b79f5f5080ce5fff39081e908dd6679f4d677ba7e26bd88d6d4a8f3c4c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 MB (27212713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3db4bffe72f85f065b55dc9a7ba14c3496f8b73bdf34d401e0b31991ca09e89d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 23 Jan 2019 10:04:38 GMT
ADD file:64db5736cabe52ff81a1eb31101c1afa1e4a04374e84ae717532a88286d01784 in / 
# Wed, 23 Jan 2019 10:04:39 GMT
CMD ["bash"]
# Fri, 25 Jan 2019 05:10:56 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Fri, 25 Jan 2019 05:11:20 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Fri, 25 Jan 2019 05:11:22 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 25 Jan 2019 05:11:23 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 25 Jan 2019 05:11:24 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 25 Jan 2019 05:14:01 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Fri, 25 Jan 2019 05:14:02 GMT
VOLUME [/spiped]
# Fri, 25 Jan 2019 05:14:06 GMT
WORKDIR /spiped
# Fri, 25 Jan 2019 05:14:08 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 25 Jan 2019 05:14:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 25 Jan 2019 05:14:13 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:711c3a2baeda87a6b9816cb812388d62d17396034e595a68d8ee5f938f9d77b3`  
		Last Modified: Wed, 23 Jan 2019 10:11:36 GMT  
		Size: 20.4 MB (20350180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66431ff1a975e241627fcbc9b916f51b41bde9ae44ce2a59bc4ea68eb95d7461`  
		Last Modified: Fri, 25 Jan 2019 05:14:34 GMT  
		Size: 1.8 KB (1758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:882d6683a2b0f67fc571a847f02e306741becd7b2e1c257f9caa667408ce035b`  
		Last Modified: Fri, 25 Jan 2019 05:14:34 GMT  
		Size: 1.6 MB (1623677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83775b7c5b3260efa369e7162e72e302ef7e410180bfb2e81d78abe91806afdd`  
		Last Modified: Fri, 25 Jan 2019 05:14:37 GMT  
		Size: 5.2 MB (5236652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8459b7ba90f28a5f032712753ad0ba306d92ec5dcfe692ffeed1663fb018d07d`  
		Last Modified: Fri, 25 Jan 2019 05:14:33 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1b2047151c393bf5d244cae883f8a7c5bc84fd49f876a868e2536cb0194a491`  
		Last Modified: Fri, 25 Jan 2019 05:14:34 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0` - linux; 386

```console
$ docker pull spiped@sha256:8e8b0710833b35cb585f13bd70fa5dd73a801df84327462c694dc73938a7d883
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34338060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:883668fe6a35e572a24c700fc787c0da3767648c5c23dd5e4cd53041e88ed49a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 23 Jan 2019 11:53:14 GMT
ADD file:33ade62bc2e01bcde808effab0eb8a419e852a98f00d20aa90921b4ab336f065 in / 
# Wed, 23 Jan 2019 11:53:15 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 17:50:27 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 23 Jan 2019 17:50:32 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 17:50:32 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 23 Jan 2019 17:50:32 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 23 Jan 2019 17:50:33 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 23 Jan 2019 17:50:58 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 17:50:58 GMT
VOLUME [/spiped]
# Wed, 23 Jan 2019 17:50:58 GMT
WORKDIR /spiped
# Wed, 23 Jan 2019 17:50:59 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 23 Jan 2019 17:50:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 17:50:59 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:7900f805f4cf31befea34795a27462a91c7e89405b1016d7762ebda023f3cf21`  
		Last Modified: Wed, 23 Jan 2019 12:02:40 GMT  
		Size: 23.1 MB (23147117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f50b9f534a87e6266c70f2607c94c6131fcfa716d57030acaf0cf441a866d070`  
		Last Modified: Wed, 23 Jan 2019 17:51:12 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33b15629e250d9e38d015676f9095f2a1d01b6115e29c9e1795481a5dfe148fe`  
		Last Modified: Wed, 23 Jan 2019 17:51:12 GMT  
		Size: 1.9 MB (1885421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f07a4d9f7471bc403880cf4d18866605b4c1bdd42189d5beb3b990874437f98f`  
		Last Modified: Wed, 23 Jan 2019 17:51:14 GMT  
		Size: 9.3 MB (9303337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c4fb027bdafbe1a38432e75240d718baa8184a584722f18bb1cce537c3c0952`  
		Last Modified: Wed, 23 Jan 2019 17:51:12 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09692f6078c9c62f428facdd53c6526cd6a62966fa5f7bd13b97d5092cbf257`  
		Last Modified: Wed, 23 Jan 2019 17:51:12 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0` - linux; ppc64le

```console
$ docker pull spiped@sha256:0f80976f763af165b770f5d108d12a25d824393ce81284c17c82e7d72c345d1a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.2 MB (30166403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83f40f8a4122a560f2382a72d2bde0b0315d6f8049c03e02dcc658309ba22e3a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 23 Jan 2019 09:27:25 GMT
ADD file:0319b2e5714eb9ca36cdff43e04c2bfeef2d75df874454b811aea2ca19689f38 in / 
# Wed, 23 Jan 2019 09:27:28 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 11:55:21 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 23 Jan 2019 11:55:35 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 11:55:37 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 23 Jan 2019 11:55:40 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 23 Jan 2019 11:55:43 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 23 Jan 2019 11:57:39 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 11:57:43 GMT
VOLUME [/spiped]
# Wed, 23 Jan 2019 11:57:46 GMT
WORKDIR /spiped
# Wed, 23 Jan 2019 11:57:47 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 23 Jan 2019 11:57:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 11:57:56 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:6c5a75a07494bd17f6469a546426663557e2f61d5e776afb51fd406a92082ef1`  
		Last Modified: Wed, 23 Jan 2019 09:33:42 GMT  
		Size: 22.8 MB (22755331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a4f6bd79971d11a28f6db1139c49ed6ac828eab5b11ad65b19acb4a52bbee11`  
		Last Modified: Wed, 23 Jan 2019 11:58:26 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a6a53837222492513a246d423435eac0fa699a4f65856f93ecf5d5bed31bdd8`  
		Last Modified: Wed, 23 Jan 2019 11:58:27 GMT  
		Size: 1.6 MB (1561338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc8e349d8a43fdb6e298c166ede4e131937a8e7c8ff86ac9d038dc64c2756589`  
		Last Modified: Wed, 23 Jan 2019 11:58:28 GMT  
		Size: 5.8 MB (5847512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3011cefbb9a903372a3a5bc4be3e85c7cc9bd4a4ba8946e81ee31631b163c4a1`  
		Last Modified: Wed, 23 Jan 2019 11:58:26 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d15bb2e44dae8f80e442f22b98b6c362e720f2a19b8d4f6a5654bf5529809c47`  
		Last Modified: Wed, 23 Jan 2019 11:58:26 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0` - linux; s390x

```console
$ docker pull spiped@sha256:1d8cdd7f59bb5c6aaf4dfaaf9cf079653756843d7b0ae755b0bb034c2a45aea8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 MB (30751806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02c4c772d11a067350da8373a800eefcd7712c6efcde65d7d4ee814befc0db4d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 23 Jan 2019 12:44:35 GMT
ADD file:9ec2f952473b440ce27a29c354764178258274d4f97e1b3490238eb594dddf16 in / 
# Wed, 23 Jan 2019 12:44:35 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:49:24 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 23 Jan 2019 13:49:28 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:49:28 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 23 Jan 2019 13:49:29 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 23 Jan 2019 13:49:29 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 23 Jan 2019 13:49:48 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 13:49:48 GMT
VOLUME [/spiped]
# Wed, 23 Jan 2019 13:49:48 GMT
WORKDIR /spiped
# Wed, 23 Jan 2019 13:49:49 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 23 Jan 2019 13:49:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 13:49:49 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:99e7bb47d7df9eb7625dccfcacd2c4e8a458ac70850b46efa85d64fac11c6bd2`  
		Last Modified: Wed, 23 Jan 2019 12:48:55 GMT  
		Size: 22.4 MB (22353499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ab28850c35f98ea8b217dfbf38b9a548d9176b788fac35c8817dbf1ef24e568`  
		Last Modified: Wed, 23 Jan 2019 13:50:06 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a3d56a3191ef390996546cebae21e2558093047c03c9a1362347075ff279c40`  
		Last Modified: Wed, 23 Jan 2019 13:50:07 GMT  
		Size: 1.6 MB (1625745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:067a78f67e10abe189e0c96b634c6adbf41380e9407e1a36145ef4c5e5adf481`  
		Last Modified: Wed, 23 Jan 2019 13:50:08 GMT  
		Size: 6.8 MB (6770373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adf6eaba1b689a1f78bddb77f86f91f046be850a261a281b7b3e6bddb9b58ec5`  
		Last Modified: Wed, 23 Jan 2019 13:50:07 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74c6cb18e63b6d30799eb630e9afedc49d99a5264232a0245088ea7b108b118b`  
		Last Modified: Wed, 23 Jan 2019 13:50:06 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1.6.0-alpine`

```console
$ docker pull spiped@sha256:6a2a863e6574c0865177f903df900d4eb7a0e4a4c0834f518849127c7e77a364
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
$ docker pull spiped@sha256:665ffa6bcba71dc0f5d6be6b0d3fe26744b133fbef1cc25aab7f388c9465c8cf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2842381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b068ece1a09b581fee656af47f2bedb9139fd1627685a2e6bb397b8952e3ae1c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Fri, 01 Feb 2019 22:21:39 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 01 Feb 2019 22:21:40 GMT
RUN apk add --no-cache libssl1.1
# Fri, 01 Feb 2019 22:21:40 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 01 Feb 2019 22:21:40 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 01 Feb 2019 22:21:40 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 01 Feb 2019 22:21:51 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 01 Feb 2019 22:21:51 GMT
VOLUME [/spiped]
# Fri, 01 Feb 2019 22:21:51 GMT
WORKDIR /spiped
# Fri, 01 Feb 2019 22:21:52 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 01 Feb 2019 22:21:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Feb 2019 22:21:52 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2320f43dd4f5b3d4a5f7ee66ca6b5795d7b98eac80925b00db4a746d2b6cb58b`  
		Last Modified: Fri, 01 Feb 2019 22:22:01 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:138bcd3bf5dc027ab9927f7293a3101b403242df68778358271d20eabeb7c54c`  
		Last Modified: Fri, 01 Feb 2019 22:22:00 GMT  
		Size: 6.4 KB (6374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b7b7bbec90ed9490f04081b9b0adb6b453dac0226193b18bced1aa3aae59e00`  
		Last Modified: Fri, 01 Feb 2019 22:22:00 GMT  
		Size: 79.6 KB (79592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:613342943ab7a788fcad978d86d20455d9be7967380e29b42e083e7c4fe6feb2`  
		Last Modified: Fri, 01 Feb 2019 22:22:00 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e658d5a025a9a568d3c0ec70c9b386faf070c00534cd206ceea7a8488b03e96c`  
		Last Modified: Fri, 01 Feb 2019 22:22:00 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0-alpine` - linux; arm variant v6

```console
$ docker pull spiped@sha256:0be9e7d282b67ee21926e575cc6618db557ed77bde10b513ad37870aef09916a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3130839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c558233f353e989e5aeb52f5a72ca039d061449827178790485f3668d467269`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 09:11:57 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Thu, 31 Jan 2019 09:11:59 GMT
RUN apk add --no-cache libssl1.0
# Thu, 31 Jan 2019 09:11:59 GMT
ENV SPIPED_VERSION=1.6.0
# Thu, 31 Jan 2019 09:11:59 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Thu, 31 Jan 2019 09:12:00 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Thu, 31 Jan 2019 09:12:16 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Thu, 31 Jan 2019 09:12:16 GMT
VOLUME [/spiped]
# Thu, 31 Jan 2019 09:12:16 GMT
WORKDIR /spiped
# Thu, 31 Jan 2019 09:12:17 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Thu, 31 Jan 2019 09:12:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 31 Jan 2019 09:12:18 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3036dd2602c3b8c6e04b2a11890093b3ed43eff6cee5bae6a48cc08e133d9628`  
		Last Modified: Thu, 31 Jan 2019 09:12:28 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0287120d8df5346df6e44c9757ae5615f7a8c94ece429a197b4dd72b07068662`  
		Last Modified: Thu, 31 Jan 2019 09:12:29 GMT  
		Size: 914.1 KB (914127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a35cdcfe8a5cf996e6ea9c19e66c037093aa884e1b70cbed684c895c159c3cf`  
		Last Modified: Thu, 31 Jan 2019 09:12:28 GMT  
		Size: 69.0 KB (69005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece6692e6d9324366ec42eb21ffa8bf27121bb7eec08dd32a1275fd62530e3eb`  
		Last Modified: Thu, 31 Jan 2019 09:12:28 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a9d24d5cfb0a81612250e84987a7f20a6f289ab0e58757fab972b506e14da23`  
		Last Modified: Thu, 31 Jan 2019 09:12:29 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0-alpine` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:97154842a80dbf04b50b7223b0ba187b5d56a946fbeddf4afbf97ed72a01533c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3096495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18f2e36c5275fd6c19c466fae4b90f7dd9673825c0e8cc4c41d9b699bbf66126`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 13:45:15 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 21 Dec 2018 13:45:17 GMT
RUN apk add --no-cache libssl1.0
# Fri, 21 Dec 2018 13:45:17 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 21 Dec 2018 13:45:18 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 21 Dec 2018 13:45:19 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 21 Dec 2018 13:45:41 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 21 Dec 2018 13:45:42 GMT
VOLUME [/spiped]
# Fri, 21 Dec 2018 13:45:44 GMT
WORKDIR /spiped
# Fri, 21 Dec 2018 13:45:45 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 21 Dec 2018 13:45:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 13:45:48 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58f3011bfe59e7e46bba7059016bed6ab0d1e6bf0074e1723ae18ac0639ace2b`  
		Last Modified: Fri, 21 Dec 2018 13:46:18 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e794155986fa7f4d95b51ca8477d9a7fcec1bd0b3db89d790b491e0f368dcdc`  
		Last Modified: Fri, 21 Dec 2018 13:46:18 GMT  
		Size: 929.9 KB (929928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea1d582532a92c8b1692dfba7fc16da41873f22242c3f2b499ea24970de496ed`  
		Last Modified: Fri, 21 Dec 2018 13:46:18 GMT  
		Size: 64.9 KB (64863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74864b4109229cef2349743565baca853dffe71230601f2918d976671e234b7a`  
		Last Modified: Fri, 21 Dec 2018 13:46:18 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40f1a5e31785c6df2b57bdec50b688150cf0e679cfbb9d21df90f4093afe3922`  
		Last Modified: Fri, 21 Dec 2018 13:46:18 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0-alpine` - linux; 386

```console
$ docker pull spiped@sha256:3893719c4f2a9b3ca876e82f7d09f0aea95cd53028cfe965b328b5442379c4b3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.5 MB (3489263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f369c8245507256ad29b2347e96357e5232ae8a518e171d0ec2a5fa27dd5ca9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 21 Dec 2018 11:40:13 GMT
ADD file:38576b24298c124265c8fffb7bc8fdb0c144d99dcce4e9942bdcceb936830ba6 in / 
# Fri, 21 Dec 2018 11:40:14 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 11:40:14 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 17:18:27 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 21 Dec 2018 17:18:28 GMT
RUN apk add --no-cache libssl1.0
# Fri, 21 Dec 2018 17:18:28 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 21 Dec 2018 17:18:28 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 21 Dec 2018 17:18:28 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 21 Dec 2018 17:18:38 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 21 Dec 2018 17:18:38 GMT
VOLUME [/spiped]
# Fri, 21 Dec 2018 17:18:38 GMT
WORKDIR /spiped
# Fri, 21 Dec 2018 17:18:39 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 21 Dec 2018 17:18:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 17:18:39 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:25bcd1068fdd02354e6b3fb4ebbad1a9c1df7f5ec2d61aa88a337345415dc102`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 2.3 MB (2271567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795c3ef9c057ef60e7a4a088655adecaccd21d68099ad1f654bccd015ab319da`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ecc5c97ed7e3cdc5fddbd98b741d286376427cefc0670e65e54eeebeb5a3247`  
		Last Modified: Fri, 21 Dec 2018 17:18:48 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f464e71c586f2764a88dedf6eef6e6222602c19c2d62fa60a2d60739af51957b`  
		Last Modified: Fri, 21 Dec 2018 17:18:49 GMT  
		Size: 1.1 MB (1127096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47926adf459f216c4c7cd10a8511595a2429a55cad1cb6172b216f44c8653752`  
		Last Modified: Fri, 21 Dec 2018 17:18:48 GMT  
		Size: 88.7 KB (88737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9296d5125ca46eeb5e1e1259022d126910c1e70c7a37caa79cc6e395fde02983`  
		Last Modified: Fri, 21 Dec 2018 17:18:48 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dbf570adb2ed6ff05cb5eba456db19f26d3461da3a856bda391bbd3129826c5`  
		Last Modified: Fri, 21 Dec 2018 17:18:48 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0-alpine` - linux; ppc64le

```console
$ docker pull spiped@sha256:e3dcfb3e2b24fed4849e0dd434e29fb213e1b8b18128ae74b175f446c1cd9bb7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3270774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc172ef37a880be166aa8cdb70f46c2e53307513a18f02cb8fe1dc76df4395ce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 21 Dec 2018 09:44:05 GMT
ADD file:81f8badc2215d9ccd8f5406b89b63bf0b407b3e877f6232bd11153780c551392 in / 
# Fri, 21 Dec 2018 09:44:06 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:44:10 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 12:13:29 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 21 Dec 2018 12:13:39 GMT
RUN apk add --no-cache libssl1.0
# Fri, 21 Dec 2018 12:13:41 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 21 Dec 2018 12:13:43 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 21 Dec 2018 12:13:44 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 21 Dec 2018 12:13:59 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 21 Dec 2018 12:14:03 GMT
VOLUME [/spiped]
# Fri, 21 Dec 2018 12:14:11 GMT
WORKDIR /spiped
# Fri, 21 Dec 2018 12:14:12 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 21 Dec 2018 12:14:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 12:14:20 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:5fac6f91a5114ca7e803950377d1db527386361cdf48b205eed63d8ab99820c3`  
		Last Modified: Fri, 21 Dec 2018 09:45:58 GMT  
		Size: 2.2 MB (2194772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c21fc409a1bc2fd1e54e11e2bd2beb4251b1c6d49aee187e7d28df20b2004b1`  
		Last Modified: Fri, 21 Dec 2018 09:45:56 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba3eabda2a106817357c2c0e19723d8d9c173b006e6da388e29c499ed3b64d73`  
		Last Modified: Fri, 21 Dec 2018 12:14:41 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a61b8ec8dfb1751d8f61c0fd5ba9f74513dec0949c9046de21ea8eb233a13e20`  
		Last Modified: Fri, 21 Dec 2018 12:14:42 GMT  
		Size: 1000.3 KB (1000308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d72739e935a4580e95c7edf6c60855af49177bd030548eaf9fcead262125a1c`  
		Last Modified: Fri, 21 Dec 2018 12:14:41 GMT  
		Size: 73.8 KB (73766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1c306d787d4f685a70ffcb6f41f75de10fef311c27a35cdb4f1137b62c4c223`  
		Last Modified: Fri, 21 Dec 2018 12:14:41 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1464339250bacb135b3ece9580657c8bd73a3ef2e4e4cbf378d7ee55849fc614`  
		Last Modified: Fri, 21 Dec 2018 12:14:41 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0-alpine` - linux; s390x

```console
$ docker pull spiped@sha256:d412e460f059a896a203beab40f4fa983453983fee330514e366512f8ce5b191
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.5 MB (3450279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa35230cd1e5f8bad7870b8b197dfc5188e89f1643155c6bcaa7a36691342cea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 21 Dec 2018 12:42:37 GMT
ADD file:1a22c7b9e0997dd22f616aaab8281f257d34f6f684cf60e256faed91dd22b7a5 in / 
# Fri, 21 Dec 2018 12:42:37 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 12:42:38 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 13:34:59 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 21 Dec 2018 13:35:00 GMT
RUN apk add --no-cache libssl1.0
# Fri, 21 Dec 2018 13:35:00 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 21 Dec 2018 13:35:00 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 21 Dec 2018 13:35:01 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 21 Dec 2018 13:35:11 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 21 Dec 2018 13:35:11 GMT
VOLUME [/spiped]
# Fri, 21 Dec 2018 13:35:11 GMT
WORKDIR /spiped
# Fri, 21 Dec 2018 13:35:12 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 21 Dec 2018 13:35:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 13:35:12 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:15104e3bedebb091b5b7a84edf7fdd60a8c1564c514db2cd2280365c6545b489`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 2.3 MB (2307849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b6c2e18bbe3b8455119e6724bd63ad7bf07637d1ea3be59615766903e0bfb9a`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:890cbe9a0c09b545a4a698de2697b09287723336f7195c3957fa15c1de4700a7`  
		Last Modified: Fri, 21 Dec 2018 13:35:27 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00ba8f7951f2f8ba65d2654162311cfcaf166ec61e0d30db1d82078c92d429a2`  
		Last Modified: Fri, 21 Dec 2018 13:35:27 GMT  
		Size: 1.1 MB (1065667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d32ff7f869442cd0ce9db680939da4703084c25792b1615f8582d1d1f6410af`  
		Last Modified: Fri, 21 Dec 2018 13:35:26 GMT  
		Size: 74.9 KB (74900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9db1d3ee7d22aa13ff896629535bd2a9b25296abaa7692923772209722d65d4`  
		Last Modified: Fri, 21 Dec 2018 13:35:27 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17b73bec7f2799b917a58414e957e2330b10d8b16c791188492a2e4d65d4cbb3`  
		Last Modified: Fri, 21 Dec 2018 13:35:26 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1.6-alpine`

```console
$ docker pull spiped@sha256:6a2a863e6574c0865177f903df900d4eb7a0e4a4c0834f518849127c7e77a364
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
$ docker pull spiped@sha256:665ffa6bcba71dc0f5d6be6b0d3fe26744b133fbef1cc25aab7f388c9465c8cf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2842381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b068ece1a09b581fee656af47f2bedb9139fd1627685a2e6bb397b8952e3ae1c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Fri, 01 Feb 2019 22:21:39 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 01 Feb 2019 22:21:40 GMT
RUN apk add --no-cache libssl1.1
# Fri, 01 Feb 2019 22:21:40 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 01 Feb 2019 22:21:40 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 01 Feb 2019 22:21:40 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 01 Feb 2019 22:21:51 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 01 Feb 2019 22:21:51 GMT
VOLUME [/spiped]
# Fri, 01 Feb 2019 22:21:51 GMT
WORKDIR /spiped
# Fri, 01 Feb 2019 22:21:52 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 01 Feb 2019 22:21:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Feb 2019 22:21:52 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2320f43dd4f5b3d4a5f7ee66ca6b5795d7b98eac80925b00db4a746d2b6cb58b`  
		Last Modified: Fri, 01 Feb 2019 22:22:01 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:138bcd3bf5dc027ab9927f7293a3101b403242df68778358271d20eabeb7c54c`  
		Last Modified: Fri, 01 Feb 2019 22:22:00 GMT  
		Size: 6.4 KB (6374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b7b7bbec90ed9490f04081b9b0adb6b453dac0226193b18bced1aa3aae59e00`  
		Last Modified: Fri, 01 Feb 2019 22:22:00 GMT  
		Size: 79.6 KB (79592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:613342943ab7a788fcad978d86d20455d9be7967380e29b42e083e7c4fe6feb2`  
		Last Modified: Fri, 01 Feb 2019 22:22:00 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e658d5a025a9a568d3c0ec70c9b386faf070c00534cd206ceea7a8488b03e96c`  
		Last Modified: Fri, 01 Feb 2019 22:22:00 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6-alpine` - linux; arm variant v6

```console
$ docker pull spiped@sha256:0be9e7d282b67ee21926e575cc6618db557ed77bde10b513ad37870aef09916a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3130839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c558233f353e989e5aeb52f5a72ca039d061449827178790485f3668d467269`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 09:11:57 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Thu, 31 Jan 2019 09:11:59 GMT
RUN apk add --no-cache libssl1.0
# Thu, 31 Jan 2019 09:11:59 GMT
ENV SPIPED_VERSION=1.6.0
# Thu, 31 Jan 2019 09:11:59 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Thu, 31 Jan 2019 09:12:00 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Thu, 31 Jan 2019 09:12:16 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Thu, 31 Jan 2019 09:12:16 GMT
VOLUME [/spiped]
# Thu, 31 Jan 2019 09:12:16 GMT
WORKDIR /spiped
# Thu, 31 Jan 2019 09:12:17 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Thu, 31 Jan 2019 09:12:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 31 Jan 2019 09:12:18 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3036dd2602c3b8c6e04b2a11890093b3ed43eff6cee5bae6a48cc08e133d9628`  
		Last Modified: Thu, 31 Jan 2019 09:12:28 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0287120d8df5346df6e44c9757ae5615f7a8c94ece429a197b4dd72b07068662`  
		Last Modified: Thu, 31 Jan 2019 09:12:29 GMT  
		Size: 914.1 KB (914127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a35cdcfe8a5cf996e6ea9c19e66c037093aa884e1b70cbed684c895c159c3cf`  
		Last Modified: Thu, 31 Jan 2019 09:12:28 GMT  
		Size: 69.0 KB (69005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece6692e6d9324366ec42eb21ffa8bf27121bb7eec08dd32a1275fd62530e3eb`  
		Last Modified: Thu, 31 Jan 2019 09:12:28 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a9d24d5cfb0a81612250e84987a7f20a6f289ab0e58757fab972b506e14da23`  
		Last Modified: Thu, 31 Jan 2019 09:12:29 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6-alpine` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:97154842a80dbf04b50b7223b0ba187b5d56a946fbeddf4afbf97ed72a01533c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3096495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18f2e36c5275fd6c19c466fae4b90f7dd9673825c0e8cc4c41d9b699bbf66126`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 13:45:15 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 21 Dec 2018 13:45:17 GMT
RUN apk add --no-cache libssl1.0
# Fri, 21 Dec 2018 13:45:17 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 21 Dec 2018 13:45:18 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 21 Dec 2018 13:45:19 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 21 Dec 2018 13:45:41 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 21 Dec 2018 13:45:42 GMT
VOLUME [/spiped]
# Fri, 21 Dec 2018 13:45:44 GMT
WORKDIR /spiped
# Fri, 21 Dec 2018 13:45:45 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 21 Dec 2018 13:45:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 13:45:48 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58f3011bfe59e7e46bba7059016bed6ab0d1e6bf0074e1723ae18ac0639ace2b`  
		Last Modified: Fri, 21 Dec 2018 13:46:18 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e794155986fa7f4d95b51ca8477d9a7fcec1bd0b3db89d790b491e0f368dcdc`  
		Last Modified: Fri, 21 Dec 2018 13:46:18 GMT  
		Size: 929.9 KB (929928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea1d582532a92c8b1692dfba7fc16da41873f22242c3f2b499ea24970de496ed`  
		Last Modified: Fri, 21 Dec 2018 13:46:18 GMT  
		Size: 64.9 KB (64863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74864b4109229cef2349743565baca853dffe71230601f2918d976671e234b7a`  
		Last Modified: Fri, 21 Dec 2018 13:46:18 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40f1a5e31785c6df2b57bdec50b688150cf0e679cfbb9d21df90f4093afe3922`  
		Last Modified: Fri, 21 Dec 2018 13:46:18 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6-alpine` - linux; 386

```console
$ docker pull spiped@sha256:3893719c4f2a9b3ca876e82f7d09f0aea95cd53028cfe965b328b5442379c4b3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.5 MB (3489263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f369c8245507256ad29b2347e96357e5232ae8a518e171d0ec2a5fa27dd5ca9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 21 Dec 2018 11:40:13 GMT
ADD file:38576b24298c124265c8fffb7bc8fdb0c144d99dcce4e9942bdcceb936830ba6 in / 
# Fri, 21 Dec 2018 11:40:14 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 11:40:14 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 17:18:27 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 21 Dec 2018 17:18:28 GMT
RUN apk add --no-cache libssl1.0
# Fri, 21 Dec 2018 17:18:28 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 21 Dec 2018 17:18:28 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 21 Dec 2018 17:18:28 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 21 Dec 2018 17:18:38 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 21 Dec 2018 17:18:38 GMT
VOLUME [/spiped]
# Fri, 21 Dec 2018 17:18:38 GMT
WORKDIR /spiped
# Fri, 21 Dec 2018 17:18:39 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 21 Dec 2018 17:18:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 17:18:39 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:25bcd1068fdd02354e6b3fb4ebbad1a9c1df7f5ec2d61aa88a337345415dc102`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 2.3 MB (2271567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795c3ef9c057ef60e7a4a088655adecaccd21d68099ad1f654bccd015ab319da`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ecc5c97ed7e3cdc5fddbd98b741d286376427cefc0670e65e54eeebeb5a3247`  
		Last Modified: Fri, 21 Dec 2018 17:18:48 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f464e71c586f2764a88dedf6eef6e6222602c19c2d62fa60a2d60739af51957b`  
		Last Modified: Fri, 21 Dec 2018 17:18:49 GMT  
		Size: 1.1 MB (1127096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47926adf459f216c4c7cd10a8511595a2429a55cad1cb6172b216f44c8653752`  
		Last Modified: Fri, 21 Dec 2018 17:18:48 GMT  
		Size: 88.7 KB (88737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9296d5125ca46eeb5e1e1259022d126910c1e70c7a37caa79cc6e395fde02983`  
		Last Modified: Fri, 21 Dec 2018 17:18:48 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dbf570adb2ed6ff05cb5eba456db19f26d3461da3a856bda391bbd3129826c5`  
		Last Modified: Fri, 21 Dec 2018 17:18:48 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6-alpine` - linux; ppc64le

```console
$ docker pull spiped@sha256:e3dcfb3e2b24fed4849e0dd434e29fb213e1b8b18128ae74b175f446c1cd9bb7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3270774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc172ef37a880be166aa8cdb70f46c2e53307513a18f02cb8fe1dc76df4395ce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 21 Dec 2018 09:44:05 GMT
ADD file:81f8badc2215d9ccd8f5406b89b63bf0b407b3e877f6232bd11153780c551392 in / 
# Fri, 21 Dec 2018 09:44:06 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:44:10 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 12:13:29 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 21 Dec 2018 12:13:39 GMT
RUN apk add --no-cache libssl1.0
# Fri, 21 Dec 2018 12:13:41 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 21 Dec 2018 12:13:43 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 21 Dec 2018 12:13:44 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 21 Dec 2018 12:13:59 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 21 Dec 2018 12:14:03 GMT
VOLUME [/spiped]
# Fri, 21 Dec 2018 12:14:11 GMT
WORKDIR /spiped
# Fri, 21 Dec 2018 12:14:12 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 21 Dec 2018 12:14:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 12:14:20 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:5fac6f91a5114ca7e803950377d1db527386361cdf48b205eed63d8ab99820c3`  
		Last Modified: Fri, 21 Dec 2018 09:45:58 GMT  
		Size: 2.2 MB (2194772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c21fc409a1bc2fd1e54e11e2bd2beb4251b1c6d49aee187e7d28df20b2004b1`  
		Last Modified: Fri, 21 Dec 2018 09:45:56 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba3eabda2a106817357c2c0e19723d8d9c173b006e6da388e29c499ed3b64d73`  
		Last Modified: Fri, 21 Dec 2018 12:14:41 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a61b8ec8dfb1751d8f61c0fd5ba9f74513dec0949c9046de21ea8eb233a13e20`  
		Last Modified: Fri, 21 Dec 2018 12:14:42 GMT  
		Size: 1000.3 KB (1000308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d72739e935a4580e95c7edf6c60855af49177bd030548eaf9fcead262125a1c`  
		Last Modified: Fri, 21 Dec 2018 12:14:41 GMT  
		Size: 73.8 KB (73766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1c306d787d4f685a70ffcb6f41f75de10fef311c27a35cdb4f1137b62c4c223`  
		Last Modified: Fri, 21 Dec 2018 12:14:41 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1464339250bacb135b3ece9580657c8bd73a3ef2e4e4cbf378d7ee55849fc614`  
		Last Modified: Fri, 21 Dec 2018 12:14:41 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6-alpine` - linux; s390x

```console
$ docker pull spiped@sha256:d412e460f059a896a203beab40f4fa983453983fee330514e366512f8ce5b191
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.5 MB (3450279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa35230cd1e5f8bad7870b8b197dfc5188e89f1643155c6bcaa7a36691342cea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 21 Dec 2018 12:42:37 GMT
ADD file:1a22c7b9e0997dd22f616aaab8281f257d34f6f684cf60e256faed91dd22b7a5 in / 
# Fri, 21 Dec 2018 12:42:37 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 12:42:38 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 13:34:59 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 21 Dec 2018 13:35:00 GMT
RUN apk add --no-cache libssl1.0
# Fri, 21 Dec 2018 13:35:00 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 21 Dec 2018 13:35:00 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 21 Dec 2018 13:35:01 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 21 Dec 2018 13:35:11 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 21 Dec 2018 13:35:11 GMT
VOLUME [/spiped]
# Fri, 21 Dec 2018 13:35:11 GMT
WORKDIR /spiped
# Fri, 21 Dec 2018 13:35:12 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 21 Dec 2018 13:35:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 13:35:12 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:15104e3bedebb091b5b7a84edf7fdd60a8c1564c514db2cd2280365c6545b489`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 2.3 MB (2307849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b6c2e18bbe3b8455119e6724bd63ad7bf07637d1ea3be59615766903e0bfb9a`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:890cbe9a0c09b545a4a698de2697b09287723336f7195c3957fa15c1de4700a7`  
		Last Modified: Fri, 21 Dec 2018 13:35:27 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00ba8f7951f2f8ba65d2654162311cfcaf166ec61e0d30db1d82078c92d429a2`  
		Last Modified: Fri, 21 Dec 2018 13:35:27 GMT  
		Size: 1.1 MB (1065667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d32ff7f869442cd0ce9db680939da4703084c25792b1615f8582d1d1f6410af`  
		Last Modified: Fri, 21 Dec 2018 13:35:26 GMT  
		Size: 74.9 KB (74900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9db1d3ee7d22aa13ff896629535bd2a9b25296abaa7692923772209722d65d4`  
		Last Modified: Fri, 21 Dec 2018 13:35:27 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17b73bec7f2799b917a58414e957e2330b10d8b16c791188492a2e4d65d4cbb3`  
		Last Modified: Fri, 21 Dec 2018 13:35:26 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1-alpine`

```console
$ docker pull spiped@sha256:6a2a863e6574c0865177f903df900d4eb7a0e4a4c0834f518849127c7e77a364
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
$ docker pull spiped@sha256:665ffa6bcba71dc0f5d6be6b0d3fe26744b133fbef1cc25aab7f388c9465c8cf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2842381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b068ece1a09b581fee656af47f2bedb9139fd1627685a2e6bb397b8952e3ae1c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Fri, 01 Feb 2019 22:21:39 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 01 Feb 2019 22:21:40 GMT
RUN apk add --no-cache libssl1.1
# Fri, 01 Feb 2019 22:21:40 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 01 Feb 2019 22:21:40 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 01 Feb 2019 22:21:40 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 01 Feb 2019 22:21:51 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 01 Feb 2019 22:21:51 GMT
VOLUME [/spiped]
# Fri, 01 Feb 2019 22:21:51 GMT
WORKDIR /spiped
# Fri, 01 Feb 2019 22:21:52 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 01 Feb 2019 22:21:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Feb 2019 22:21:52 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2320f43dd4f5b3d4a5f7ee66ca6b5795d7b98eac80925b00db4a746d2b6cb58b`  
		Last Modified: Fri, 01 Feb 2019 22:22:01 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:138bcd3bf5dc027ab9927f7293a3101b403242df68778358271d20eabeb7c54c`  
		Last Modified: Fri, 01 Feb 2019 22:22:00 GMT  
		Size: 6.4 KB (6374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b7b7bbec90ed9490f04081b9b0adb6b453dac0226193b18bced1aa3aae59e00`  
		Last Modified: Fri, 01 Feb 2019 22:22:00 GMT  
		Size: 79.6 KB (79592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:613342943ab7a788fcad978d86d20455d9be7967380e29b42e083e7c4fe6feb2`  
		Last Modified: Fri, 01 Feb 2019 22:22:00 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e658d5a025a9a568d3c0ec70c9b386faf070c00534cd206ceea7a8488b03e96c`  
		Last Modified: Fri, 01 Feb 2019 22:22:00 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1-alpine` - linux; arm variant v6

```console
$ docker pull spiped@sha256:0be9e7d282b67ee21926e575cc6618db557ed77bde10b513ad37870aef09916a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3130839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c558233f353e989e5aeb52f5a72ca039d061449827178790485f3668d467269`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 09:11:57 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Thu, 31 Jan 2019 09:11:59 GMT
RUN apk add --no-cache libssl1.0
# Thu, 31 Jan 2019 09:11:59 GMT
ENV SPIPED_VERSION=1.6.0
# Thu, 31 Jan 2019 09:11:59 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Thu, 31 Jan 2019 09:12:00 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Thu, 31 Jan 2019 09:12:16 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Thu, 31 Jan 2019 09:12:16 GMT
VOLUME [/spiped]
# Thu, 31 Jan 2019 09:12:16 GMT
WORKDIR /spiped
# Thu, 31 Jan 2019 09:12:17 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Thu, 31 Jan 2019 09:12:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 31 Jan 2019 09:12:18 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3036dd2602c3b8c6e04b2a11890093b3ed43eff6cee5bae6a48cc08e133d9628`  
		Last Modified: Thu, 31 Jan 2019 09:12:28 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0287120d8df5346df6e44c9757ae5615f7a8c94ece429a197b4dd72b07068662`  
		Last Modified: Thu, 31 Jan 2019 09:12:29 GMT  
		Size: 914.1 KB (914127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a35cdcfe8a5cf996e6ea9c19e66c037093aa884e1b70cbed684c895c159c3cf`  
		Last Modified: Thu, 31 Jan 2019 09:12:28 GMT  
		Size: 69.0 KB (69005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece6692e6d9324366ec42eb21ffa8bf27121bb7eec08dd32a1275fd62530e3eb`  
		Last Modified: Thu, 31 Jan 2019 09:12:28 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a9d24d5cfb0a81612250e84987a7f20a6f289ab0e58757fab972b506e14da23`  
		Last Modified: Thu, 31 Jan 2019 09:12:29 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1-alpine` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:97154842a80dbf04b50b7223b0ba187b5d56a946fbeddf4afbf97ed72a01533c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3096495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18f2e36c5275fd6c19c466fae4b90f7dd9673825c0e8cc4c41d9b699bbf66126`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 13:45:15 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 21 Dec 2018 13:45:17 GMT
RUN apk add --no-cache libssl1.0
# Fri, 21 Dec 2018 13:45:17 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 21 Dec 2018 13:45:18 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 21 Dec 2018 13:45:19 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 21 Dec 2018 13:45:41 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 21 Dec 2018 13:45:42 GMT
VOLUME [/spiped]
# Fri, 21 Dec 2018 13:45:44 GMT
WORKDIR /spiped
# Fri, 21 Dec 2018 13:45:45 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 21 Dec 2018 13:45:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 13:45:48 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58f3011bfe59e7e46bba7059016bed6ab0d1e6bf0074e1723ae18ac0639ace2b`  
		Last Modified: Fri, 21 Dec 2018 13:46:18 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e794155986fa7f4d95b51ca8477d9a7fcec1bd0b3db89d790b491e0f368dcdc`  
		Last Modified: Fri, 21 Dec 2018 13:46:18 GMT  
		Size: 929.9 KB (929928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea1d582532a92c8b1692dfba7fc16da41873f22242c3f2b499ea24970de496ed`  
		Last Modified: Fri, 21 Dec 2018 13:46:18 GMT  
		Size: 64.9 KB (64863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74864b4109229cef2349743565baca853dffe71230601f2918d976671e234b7a`  
		Last Modified: Fri, 21 Dec 2018 13:46:18 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40f1a5e31785c6df2b57bdec50b688150cf0e679cfbb9d21df90f4093afe3922`  
		Last Modified: Fri, 21 Dec 2018 13:46:18 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1-alpine` - linux; 386

```console
$ docker pull spiped@sha256:3893719c4f2a9b3ca876e82f7d09f0aea95cd53028cfe965b328b5442379c4b3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.5 MB (3489263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f369c8245507256ad29b2347e96357e5232ae8a518e171d0ec2a5fa27dd5ca9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 21 Dec 2018 11:40:13 GMT
ADD file:38576b24298c124265c8fffb7bc8fdb0c144d99dcce4e9942bdcceb936830ba6 in / 
# Fri, 21 Dec 2018 11:40:14 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 11:40:14 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 17:18:27 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 21 Dec 2018 17:18:28 GMT
RUN apk add --no-cache libssl1.0
# Fri, 21 Dec 2018 17:18:28 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 21 Dec 2018 17:18:28 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 21 Dec 2018 17:18:28 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 21 Dec 2018 17:18:38 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 21 Dec 2018 17:18:38 GMT
VOLUME [/spiped]
# Fri, 21 Dec 2018 17:18:38 GMT
WORKDIR /spiped
# Fri, 21 Dec 2018 17:18:39 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 21 Dec 2018 17:18:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 17:18:39 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:25bcd1068fdd02354e6b3fb4ebbad1a9c1df7f5ec2d61aa88a337345415dc102`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 2.3 MB (2271567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795c3ef9c057ef60e7a4a088655adecaccd21d68099ad1f654bccd015ab319da`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ecc5c97ed7e3cdc5fddbd98b741d286376427cefc0670e65e54eeebeb5a3247`  
		Last Modified: Fri, 21 Dec 2018 17:18:48 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f464e71c586f2764a88dedf6eef6e6222602c19c2d62fa60a2d60739af51957b`  
		Last Modified: Fri, 21 Dec 2018 17:18:49 GMT  
		Size: 1.1 MB (1127096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47926adf459f216c4c7cd10a8511595a2429a55cad1cb6172b216f44c8653752`  
		Last Modified: Fri, 21 Dec 2018 17:18:48 GMT  
		Size: 88.7 KB (88737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9296d5125ca46eeb5e1e1259022d126910c1e70c7a37caa79cc6e395fde02983`  
		Last Modified: Fri, 21 Dec 2018 17:18:48 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dbf570adb2ed6ff05cb5eba456db19f26d3461da3a856bda391bbd3129826c5`  
		Last Modified: Fri, 21 Dec 2018 17:18:48 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1-alpine` - linux; ppc64le

```console
$ docker pull spiped@sha256:e3dcfb3e2b24fed4849e0dd434e29fb213e1b8b18128ae74b175f446c1cd9bb7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3270774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc172ef37a880be166aa8cdb70f46c2e53307513a18f02cb8fe1dc76df4395ce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 21 Dec 2018 09:44:05 GMT
ADD file:81f8badc2215d9ccd8f5406b89b63bf0b407b3e877f6232bd11153780c551392 in / 
# Fri, 21 Dec 2018 09:44:06 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:44:10 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 12:13:29 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 21 Dec 2018 12:13:39 GMT
RUN apk add --no-cache libssl1.0
# Fri, 21 Dec 2018 12:13:41 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 21 Dec 2018 12:13:43 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 21 Dec 2018 12:13:44 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 21 Dec 2018 12:13:59 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 21 Dec 2018 12:14:03 GMT
VOLUME [/spiped]
# Fri, 21 Dec 2018 12:14:11 GMT
WORKDIR /spiped
# Fri, 21 Dec 2018 12:14:12 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 21 Dec 2018 12:14:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 12:14:20 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:5fac6f91a5114ca7e803950377d1db527386361cdf48b205eed63d8ab99820c3`  
		Last Modified: Fri, 21 Dec 2018 09:45:58 GMT  
		Size: 2.2 MB (2194772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c21fc409a1bc2fd1e54e11e2bd2beb4251b1c6d49aee187e7d28df20b2004b1`  
		Last Modified: Fri, 21 Dec 2018 09:45:56 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba3eabda2a106817357c2c0e19723d8d9c173b006e6da388e29c499ed3b64d73`  
		Last Modified: Fri, 21 Dec 2018 12:14:41 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a61b8ec8dfb1751d8f61c0fd5ba9f74513dec0949c9046de21ea8eb233a13e20`  
		Last Modified: Fri, 21 Dec 2018 12:14:42 GMT  
		Size: 1000.3 KB (1000308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d72739e935a4580e95c7edf6c60855af49177bd030548eaf9fcead262125a1c`  
		Last Modified: Fri, 21 Dec 2018 12:14:41 GMT  
		Size: 73.8 KB (73766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1c306d787d4f685a70ffcb6f41f75de10fef311c27a35cdb4f1137b62c4c223`  
		Last Modified: Fri, 21 Dec 2018 12:14:41 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1464339250bacb135b3ece9580657c8bd73a3ef2e4e4cbf378d7ee55849fc614`  
		Last Modified: Fri, 21 Dec 2018 12:14:41 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1-alpine` - linux; s390x

```console
$ docker pull spiped@sha256:d412e460f059a896a203beab40f4fa983453983fee330514e366512f8ce5b191
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.5 MB (3450279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa35230cd1e5f8bad7870b8b197dfc5188e89f1643155c6bcaa7a36691342cea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 21 Dec 2018 12:42:37 GMT
ADD file:1a22c7b9e0997dd22f616aaab8281f257d34f6f684cf60e256faed91dd22b7a5 in / 
# Fri, 21 Dec 2018 12:42:37 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 12:42:38 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 13:34:59 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 21 Dec 2018 13:35:00 GMT
RUN apk add --no-cache libssl1.0
# Fri, 21 Dec 2018 13:35:00 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 21 Dec 2018 13:35:00 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 21 Dec 2018 13:35:01 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 21 Dec 2018 13:35:11 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 21 Dec 2018 13:35:11 GMT
VOLUME [/spiped]
# Fri, 21 Dec 2018 13:35:11 GMT
WORKDIR /spiped
# Fri, 21 Dec 2018 13:35:12 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 21 Dec 2018 13:35:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 13:35:12 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:15104e3bedebb091b5b7a84edf7fdd60a8c1564c514db2cd2280365c6545b489`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 2.3 MB (2307849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b6c2e18bbe3b8455119e6724bd63ad7bf07637d1ea3be59615766903e0bfb9a`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:890cbe9a0c09b545a4a698de2697b09287723336f7195c3957fa15c1de4700a7`  
		Last Modified: Fri, 21 Dec 2018 13:35:27 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00ba8f7951f2f8ba65d2654162311cfcaf166ec61e0d30db1d82078c92d429a2`  
		Last Modified: Fri, 21 Dec 2018 13:35:27 GMT  
		Size: 1.1 MB (1065667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d32ff7f869442cd0ce9db680939da4703084c25792b1615f8582d1d1f6410af`  
		Last Modified: Fri, 21 Dec 2018 13:35:26 GMT  
		Size: 74.9 KB (74900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9db1d3ee7d22aa13ff896629535bd2a9b25296abaa7692923772209722d65d4`  
		Last Modified: Fri, 21 Dec 2018 13:35:27 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17b73bec7f2799b917a58414e957e2330b10d8b16c791188492a2e4d65d4cbb3`  
		Last Modified: Fri, 21 Dec 2018 13:35:26 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:alpine`

```console
$ docker pull spiped@sha256:6a2a863e6574c0865177f903df900d4eb7a0e4a4c0834f518849127c7e77a364
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
$ docker pull spiped@sha256:665ffa6bcba71dc0f5d6be6b0d3fe26744b133fbef1cc25aab7f388c9465c8cf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2842381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b068ece1a09b581fee656af47f2bedb9139fd1627685a2e6bb397b8952e3ae1c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Fri, 01 Feb 2019 22:21:39 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 01 Feb 2019 22:21:40 GMT
RUN apk add --no-cache libssl1.1
# Fri, 01 Feb 2019 22:21:40 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 01 Feb 2019 22:21:40 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 01 Feb 2019 22:21:40 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 01 Feb 2019 22:21:51 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 01 Feb 2019 22:21:51 GMT
VOLUME [/spiped]
# Fri, 01 Feb 2019 22:21:51 GMT
WORKDIR /spiped
# Fri, 01 Feb 2019 22:21:52 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 01 Feb 2019 22:21:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Feb 2019 22:21:52 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2320f43dd4f5b3d4a5f7ee66ca6b5795d7b98eac80925b00db4a746d2b6cb58b`  
		Last Modified: Fri, 01 Feb 2019 22:22:01 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:138bcd3bf5dc027ab9927f7293a3101b403242df68778358271d20eabeb7c54c`  
		Last Modified: Fri, 01 Feb 2019 22:22:00 GMT  
		Size: 6.4 KB (6374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b7b7bbec90ed9490f04081b9b0adb6b453dac0226193b18bced1aa3aae59e00`  
		Last Modified: Fri, 01 Feb 2019 22:22:00 GMT  
		Size: 79.6 KB (79592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:613342943ab7a788fcad978d86d20455d9be7967380e29b42e083e7c4fe6feb2`  
		Last Modified: Fri, 01 Feb 2019 22:22:00 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e658d5a025a9a568d3c0ec70c9b386faf070c00534cd206ceea7a8488b03e96c`  
		Last Modified: Fri, 01 Feb 2019 22:22:00 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:alpine` - linux; arm variant v6

```console
$ docker pull spiped@sha256:0be9e7d282b67ee21926e575cc6618db557ed77bde10b513ad37870aef09916a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3130839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c558233f353e989e5aeb52f5a72ca039d061449827178790485f3668d467269`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 09:11:57 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Thu, 31 Jan 2019 09:11:59 GMT
RUN apk add --no-cache libssl1.0
# Thu, 31 Jan 2019 09:11:59 GMT
ENV SPIPED_VERSION=1.6.0
# Thu, 31 Jan 2019 09:11:59 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Thu, 31 Jan 2019 09:12:00 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Thu, 31 Jan 2019 09:12:16 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Thu, 31 Jan 2019 09:12:16 GMT
VOLUME [/spiped]
# Thu, 31 Jan 2019 09:12:16 GMT
WORKDIR /spiped
# Thu, 31 Jan 2019 09:12:17 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Thu, 31 Jan 2019 09:12:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 31 Jan 2019 09:12:18 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3036dd2602c3b8c6e04b2a11890093b3ed43eff6cee5bae6a48cc08e133d9628`  
		Last Modified: Thu, 31 Jan 2019 09:12:28 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0287120d8df5346df6e44c9757ae5615f7a8c94ece429a197b4dd72b07068662`  
		Last Modified: Thu, 31 Jan 2019 09:12:29 GMT  
		Size: 914.1 KB (914127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a35cdcfe8a5cf996e6ea9c19e66c037093aa884e1b70cbed684c895c159c3cf`  
		Last Modified: Thu, 31 Jan 2019 09:12:28 GMT  
		Size: 69.0 KB (69005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece6692e6d9324366ec42eb21ffa8bf27121bb7eec08dd32a1275fd62530e3eb`  
		Last Modified: Thu, 31 Jan 2019 09:12:28 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a9d24d5cfb0a81612250e84987a7f20a6f289ab0e58757fab972b506e14da23`  
		Last Modified: Thu, 31 Jan 2019 09:12:29 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:alpine` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:97154842a80dbf04b50b7223b0ba187b5d56a946fbeddf4afbf97ed72a01533c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3096495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18f2e36c5275fd6c19c466fae4b90f7dd9673825c0e8cc4c41d9b699bbf66126`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 13:45:15 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 21 Dec 2018 13:45:17 GMT
RUN apk add --no-cache libssl1.0
# Fri, 21 Dec 2018 13:45:17 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 21 Dec 2018 13:45:18 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 21 Dec 2018 13:45:19 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 21 Dec 2018 13:45:41 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 21 Dec 2018 13:45:42 GMT
VOLUME [/spiped]
# Fri, 21 Dec 2018 13:45:44 GMT
WORKDIR /spiped
# Fri, 21 Dec 2018 13:45:45 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 21 Dec 2018 13:45:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 13:45:48 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58f3011bfe59e7e46bba7059016bed6ab0d1e6bf0074e1723ae18ac0639ace2b`  
		Last Modified: Fri, 21 Dec 2018 13:46:18 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e794155986fa7f4d95b51ca8477d9a7fcec1bd0b3db89d790b491e0f368dcdc`  
		Last Modified: Fri, 21 Dec 2018 13:46:18 GMT  
		Size: 929.9 KB (929928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea1d582532a92c8b1692dfba7fc16da41873f22242c3f2b499ea24970de496ed`  
		Last Modified: Fri, 21 Dec 2018 13:46:18 GMT  
		Size: 64.9 KB (64863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74864b4109229cef2349743565baca853dffe71230601f2918d976671e234b7a`  
		Last Modified: Fri, 21 Dec 2018 13:46:18 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40f1a5e31785c6df2b57bdec50b688150cf0e679cfbb9d21df90f4093afe3922`  
		Last Modified: Fri, 21 Dec 2018 13:46:18 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:alpine` - linux; 386

```console
$ docker pull spiped@sha256:3893719c4f2a9b3ca876e82f7d09f0aea95cd53028cfe965b328b5442379c4b3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.5 MB (3489263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f369c8245507256ad29b2347e96357e5232ae8a518e171d0ec2a5fa27dd5ca9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 21 Dec 2018 11:40:13 GMT
ADD file:38576b24298c124265c8fffb7bc8fdb0c144d99dcce4e9942bdcceb936830ba6 in / 
# Fri, 21 Dec 2018 11:40:14 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 11:40:14 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 17:18:27 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 21 Dec 2018 17:18:28 GMT
RUN apk add --no-cache libssl1.0
# Fri, 21 Dec 2018 17:18:28 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 21 Dec 2018 17:18:28 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 21 Dec 2018 17:18:28 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 21 Dec 2018 17:18:38 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 21 Dec 2018 17:18:38 GMT
VOLUME [/spiped]
# Fri, 21 Dec 2018 17:18:38 GMT
WORKDIR /spiped
# Fri, 21 Dec 2018 17:18:39 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 21 Dec 2018 17:18:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 17:18:39 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:25bcd1068fdd02354e6b3fb4ebbad1a9c1df7f5ec2d61aa88a337345415dc102`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 2.3 MB (2271567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795c3ef9c057ef60e7a4a088655adecaccd21d68099ad1f654bccd015ab319da`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ecc5c97ed7e3cdc5fddbd98b741d286376427cefc0670e65e54eeebeb5a3247`  
		Last Modified: Fri, 21 Dec 2018 17:18:48 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f464e71c586f2764a88dedf6eef6e6222602c19c2d62fa60a2d60739af51957b`  
		Last Modified: Fri, 21 Dec 2018 17:18:49 GMT  
		Size: 1.1 MB (1127096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47926adf459f216c4c7cd10a8511595a2429a55cad1cb6172b216f44c8653752`  
		Last Modified: Fri, 21 Dec 2018 17:18:48 GMT  
		Size: 88.7 KB (88737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9296d5125ca46eeb5e1e1259022d126910c1e70c7a37caa79cc6e395fde02983`  
		Last Modified: Fri, 21 Dec 2018 17:18:48 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dbf570adb2ed6ff05cb5eba456db19f26d3461da3a856bda391bbd3129826c5`  
		Last Modified: Fri, 21 Dec 2018 17:18:48 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:alpine` - linux; ppc64le

```console
$ docker pull spiped@sha256:e3dcfb3e2b24fed4849e0dd434e29fb213e1b8b18128ae74b175f446c1cd9bb7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3270774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc172ef37a880be166aa8cdb70f46c2e53307513a18f02cb8fe1dc76df4395ce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 21 Dec 2018 09:44:05 GMT
ADD file:81f8badc2215d9ccd8f5406b89b63bf0b407b3e877f6232bd11153780c551392 in / 
# Fri, 21 Dec 2018 09:44:06 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:44:10 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 12:13:29 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 21 Dec 2018 12:13:39 GMT
RUN apk add --no-cache libssl1.0
# Fri, 21 Dec 2018 12:13:41 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 21 Dec 2018 12:13:43 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 21 Dec 2018 12:13:44 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 21 Dec 2018 12:13:59 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 21 Dec 2018 12:14:03 GMT
VOLUME [/spiped]
# Fri, 21 Dec 2018 12:14:11 GMT
WORKDIR /spiped
# Fri, 21 Dec 2018 12:14:12 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 21 Dec 2018 12:14:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 12:14:20 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:5fac6f91a5114ca7e803950377d1db527386361cdf48b205eed63d8ab99820c3`  
		Last Modified: Fri, 21 Dec 2018 09:45:58 GMT  
		Size: 2.2 MB (2194772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c21fc409a1bc2fd1e54e11e2bd2beb4251b1c6d49aee187e7d28df20b2004b1`  
		Last Modified: Fri, 21 Dec 2018 09:45:56 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba3eabda2a106817357c2c0e19723d8d9c173b006e6da388e29c499ed3b64d73`  
		Last Modified: Fri, 21 Dec 2018 12:14:41 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a61b8ec8dfb1751d8f61c0fd5ba9f74513dec0949c9046de21ea8eb233a13e20`  
		Last Modified: Fri, 21 Dec 2018 12:14:42 GMT  
		Size: 1000.3 KB (1000308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d72739e935a4580e95c7edf6c60855af49177bd030548eaf9fcead262125a1c`  
		Last Modified: Fri, 21 Dec 2018 12:14:41 GMT  
		Size: 73.8 KB (73766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1c306d787d4f685a70ffcb6f41f75de10fef311c27a35cdb4f1137b62c4c223`  
		Last Modified: Fri, 21 Dec 2018 12:14:41 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1464339250bacb135b3ece9580657c8bd73a3ef2e4e4cbf378d7ee55849fc614`  
		Last Modified: Fri, 21 Dec 2018 12:14:41 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:alpine` - linux; s390x

```console
$ docker pull spiped@sha256:d412e460f059a896a203beab40f4fa983453983fee330514e366512f8ce5b191
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.5 MB (3450279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa35230cd1e5f8bad7870b8b197dfc5188e89f1643155c6bcaa7a36691342cea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 21 Dec 2018 12:42:37 GMT
ADD file:1a22c7b9e0997dd22f616aaab8281f257d34f6f684cf60e256faed91dd22b7a5 in / 
# Fri, 21 Dec 2018 12:42:37 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 12:42:38 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 13:34:59 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 21 Dec 2018 13:35:00 GMT
RUN apk add --no-cache libssl1.0
# Fri, 21 Dec 2018 13:35:00 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 21 Dec 2018 13:35:00 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 21 Dec 2018 13:35:01 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 21 Dec 2018 13:35:11 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 21 Dec 2018 13:35:11 GMT
VOLUME [/spiped]
# Fri, 21 Dec 2018 13:35:11 GMT
WORKDIR /spiped
# Fri, 21 Dec 2018 13:35:12 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 21 Dec 2018 13:35:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 13:35:12 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:15104e3bedebb091b5b7a84edf7fdd60a8c1564c514db2cd2280365c6545b489`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 2.3 MB (2307849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b6c2e18bbe3b8455119e6724bd63ad7bf07637d1ea3be59615766903e0bfb9a`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:890cbe9a0c09b545a4a698de2697b09287723336f7195c3957fa15c1de4700a7`  
		Last Modified: Fri, 21 Dec 2018 13:35:27 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00ba8f7951f2f8ba65d2654162311cfcaf166ec61e0d30db1d82078c92d429a2`  
		Last Modified: Fri, 21 Dec 2018 13:35:27 GMT  
		Size: 1.1 MB (1065667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d32ff7f869442cd0ce9db680939da4703084c25792b1615f8582d1d1f6410af`  
		Last Modified: Fri, 21 Dec 2018 13:35:26 GMT  
		Size: 74.9 KB (74900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9db1d3ee7d22aa13ff896629535bd2a9b25296abaa7692923772209722d65d4`  
		Last Modified: Fri, 21 Dec 2018 13:35:27 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17b73bec7f2799b917a58414e957e2330b10d8b16c791188492a2e4d65d4cbb3`  
		Last Modified: Fri, 21 Dec 2018 13:35:26 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:latest`

```console
$ docker pull spiped@sha256:e30dfe3ba18165024231c3f4a0a802685bea252a8b830bc471fdc17af13ebd82
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
$ docker pull spiped@sha256:78296845c3742c036259d3eb9a86398f19cf7503f63ae409bac43586bd13f04a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30272048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5dca578f70529fd89c9cdfbde6a1d0ef7963b5666774f19cddb55eafbeb53e8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:32 GMT
ADD file:a65337a57a064a79ad8a3f42e8282b3e01710cb4684ccd880463cc8d2e051fa5 in / 
# Tue, 22 Jan 2019 19:30:32 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 02:17:46 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 23 Jan 2019 02:17:50 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:17:51 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 23 Jan 2019 02:17:51 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 23 Jan 2019 02:17:51 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 23 Jan 2019 02:18:14 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 02:18:14 GMT
VOLUME [/spiped]
# Wed, 23 Jan 2019 02:18:14 GMT
WORKDIR /spiped
# Wed, 23 Jan 2019 02:18:15 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 23 Jan 2019 02:18:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 02:18:15 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:5e6ec7f28fb77f84f64b8c29fcb0a746260563f5858315e3e9fcc4aee2844840`  
		Last Modified: Tue, 22 Jan 2019 19:37:02 GMT  
		Size: 22.5 MB (22500707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de31842e0dc7f6327ad2e73ad69b906b68bc69fb356a049b49ec51f26f2588d2`  
		Last Modified: Wed, 23 Jan 2019 02:18:31 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91f0530cec2286d7c45024aea225ae05548433b4a5fcb0335db99c4e9cf82d83`  
		Last Modified: Wed, 23 Jan 2019 02:18:31 GMT  
		Size: 1.9 MB (1891332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80736f0d2f1c521cb8c21bfd832118fa0032d6c74f0f049f3f106aadd40eed3f`  
		Last Modified: Wed, 23 Jan 2019 02:18:32 GMT  
		Size: 5.9 MB (5877823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c5345795de598f4dfbf4ad692c08030ac6077ee54e52de4aaec0c1abc7c55eb`  
		Last Modified: Wed, 23 Jan 2019 02:18:30 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e7d3dd7a592518a6513f422b65864c2c9fe0fb78560fc92825b763e79092bee`  
		Last Modified: Wed, 23 Jan 2019 02:18:30 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; arm variant v5

```console
$ docker pull spiped@sha256:4279240dcbe527c5d47906f0d377bd86a08c3370df4a11aa9240bfc1fc5c2d1b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 MB (27768126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a4b63f2581269b878d7ae737a14b694079f484aca06219c232680fc36797a09`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 23 Jan 2019 09:54:53 GMT
ADD file:dc26e428c2cc58c087582281cf61d570f0393114b5402cff1118ca6b35ed53d7 in / 
# Wed, 23 Jan 2019 09:54:54 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 11:09:48 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 23 Jan 2019 11:09:57 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 11:09:57 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 23 Jan 2019 11:09:58 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 23 Jan 2019 11:09:58 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 23 Jan 2019 11:10:41 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 11:10:41 GMT
VOLUME [/spiped]
# Wed, 23 Jan 2019 11:10:42 GMT
WORKDIR /spiped
# Wed, 23 Jan 2019 11:10:42 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 23 Jan 2019 11:10:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 11:10:43 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:583fbf7ac56f75b30837306fc2d7ea455e87b6dd8eed4573d37b90971861e219`  
		Last Modified: Wed, 23 Jan 2019 10:02:22 GMT  
		Size: 21.2 MB (21181826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1dc746aa5e7182bec83be6db19606b48a6a1e84b85708db279c081bb4dd210a`  
		Last Modified: Wed, 23 Jan 2019 11:10:54 GMT  
		Size: 1.7 KB (1734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab12c6702a1b3d3b0fd47fabd3a605bfacf9daf106f84d75e43df5587372b80d`  
		Last Modified: Wed, 23 Jan 2019 11:10:54 GMT  
		Size: 1.6 MB (1632484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0875e77423600654bded56927b291feedc8faea757d3dfa4be5bf4cef568a5ac`  
		Last Modified: Wed, 23 Jan 2019 11:10:56 GMT  
		Size: 5.0 MB (4951604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0e3a1a6405e0a350a951dccb2ec3ce27a88065aa7e68257562ae6d81f3d2aad`  
		Last Modified: Wed, 23 Jan 2019 11:10:54 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c916df86d6cd97435061e203c732e034f6310401e4c41d1b9a1f9ff4dfe896fc`  
		Last Modified: Wed, 23 Jan 2019 11:10:54 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; arm variant v7

```console
$ docker pull spiped@sha256:1b32d7df10a196325c756eef63dcb0ed08a54f876af6d3acab558ddd39d22cc9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.6 MB (25574001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80183a66a689d32bd1dbcb0bfbbda9dfbdb9291e68bfb4fa83b637512fa52997`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:55 GMT
ADD file:c712096b02de85275a955c0292b6e143730d8506009ecc32436b1bd44789dcd1 in / 
# Wed, 23 Jan 2019 13:04:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 15:38:19 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 23 Jan 2019 15:38:28 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 15:38:29 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 23 Jan 2019 15:38:29 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 23 Jan 2019 15:38:30 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 23 Jan 2019 15:39:15 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 15:39:16 GMT
VOLUME [/spiped]
# Wed, 23 Jan 2019 15:39:17 GMT
WORKDIR /spiped
# Wed, 23 Jan 2019 15:39:19 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 23 Jan 2019 15:39:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 15:39:21 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:433444f4a04d4a68d83dfe1e90ccfe3d02ce163939e9b79dd87136d956b49408`  
		Last Modified: Wed, 23 Jan 2019 13:12:25 GMT  
		Size: 19.3 MB (19290286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52001b7272507b4ef9db5bffded8d94f1f062abeaf9f8b7eceeae08cb964d6d6`  
		Last Modified: Wed, 23 Jan 2019 15:39:43 GMT  
		Size: 1.7 KB (1738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7824c207dbc5379a9f6827e95a5f8f837dbab9b615a5071d80a30910eed12ee5`  
		Last Modified: Wed, 23 Jan 2019 15:39:43 GMT  
		Size: 1.6 MB (1573629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce28ee042d7a52cdca4791ea41a40877cd4a94685b2cb974718cb2e8ff44fa3`  
		Last Modified: Wed, 23 Jan 2019 15:39:44 GMT  
		Size: 4.7 MB (4707868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc044d71958bc5b4418b9705870f2083a6fe7fb68001cdb17a10acae53180be5`  
		Last Modified: Wed, 23 Jan 2019 15:39:43 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e6d8d786fc05c66534f42018fd661bd206e6ca934c0ba0b8e5bb4be6c00a733`  
		Last Modified: Wed, 23 Jan 2019 15:39:43 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:4ce244b79f5f5080ce5fff39081e908dd6679f4d677ba7e26bd88d6d4a8f3c4c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 MB (27212713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3db4bffe72f85f065b55dc9a7ba14c3496f8b73bdf34d401e0b31991ca09e89d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 23 Jan 2019 10:04:38 GMT
ADD file:64db5736cabe52ff81a1eb31101c1afa1e4a04374e84ae717532a88286d01784 in / 
# Wed, 23 Jan 2019 10:04:39 GMT
CMD ["bash"]
# Fri, 25 Jan 2019 05:10:56 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Fri, 25 Jan 2019 05:11:20 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Fri, 25 Jan 2019 05:11:22 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 25 Jan 2019 05:11:23 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 25 Jan 2019 05:11:24 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 25 Jan 2019 05:14:01 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Fri, 25 Jan 2019 05:14:02 GMT
VOLUME [/spiped]
# Fri, 25 Jan 2019 05:14:06 GMT
WORKDIR /spiped
# Fri, 25 Jan 2019 05:14:08 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 25 Jan 2019 05:14:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 25 Jan 2019 05:14:13 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:711c3a2baeda87a6b9816cb812388d62d17396034e595a68d8ee5f938f9d77b3`  
		Last Modified: Wed, 23 Jan 2019 10:11:36 GMT  
		Size: 20.4 MB (20350180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66431ff1a975e241627fcbc9b916f51b41bde9ae44ce2a59bc4ea68eb95d7461`  
		Last Modified: Fri, 25 Jan 2019 05:14:34 GMT  
		Size: 1.8 KB (1758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:882d6683a2b0f67fc571a847f02e306741becd7b2e1c257f9caa667408ce035b`  
		Last Modified: Fri, 25 Jan 2019 05:14:34 GMT  
		Size: 1.6 MB (1623677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83775b7c5b3260efa369e7162e72e302ef7e410180bfb2e81d78abe91806afdd`  
		Last Modified: Fri, 25 Jan 2019 05:14:37 GMT  
		Size: 5.2 MB (5236652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8459b7ba90f28a5f032712753ad0ba306d92ec5dcfe692ffeed1663fb018d07d`  
		Last Modified: Fri, 25 Jan 2019 05:14:33 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1b2047151c393bf5d244cae883f8a7c5bc84fd49f876a868e2536cb0194a491`  
		Last Modified: Fri, 25 Jan 2019 05:14:34 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; 386

```console
$ docker pull spiped@sha256:8e8b0710833b35cb585f13bd70fa5dd73a801df84327462c694dc73938a7d883
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34338060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:883668fe6a35e572a24c700fc787c0da3767648c5c23dd5e4cd53041e88ed49a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 23 Jan 2019 11:53:14 GMT
ADD file:33ade62bc2e01bcde808effab0eb8a419e852a98f00d20aa90921b4ab336f065 in / 
# Wed, 23 Jan 2019 11:53:15 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 17:50:27 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 23 Jan 2019 17:50:32 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 17:50:32 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 23 Jan 2019 17:50:32 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 23 Jan 2019 17:50:33 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 23 Jan 2019 17:50:58 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 17:50:58 GMT
VOLUME [/spiped]
# Wed, 23 Jan 2019 17:50:58 GMT
WORKDIR /spiped
# Wed, 23 Jan 2019 17:50:59 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 23 Jan 2019 17:50:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 17:50:59 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:7900f805f4cf31befea34795a27462a91c7e89405b1016d7762ebda023f3cf21`  
		Last Modified: Wed, 23 Jan 2019 12:02:40 GMT  
		Size: 23.1 MB (23147117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f50b9f534a87e6266c70f2607c94c6131fcfa716d57030acaf0cf441a866d070`  
		Last Modified: Wed, 23 Jan 2019 17:51:12 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33b15629e250d9e38d015676f9095f2a1d01b6115e29c9e1795481a5dfe148fe`  
		Last Modified: Wed, 23 Jan 2019 17:51:12 GMT  
		Size: 1.9 MB (1885421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f07a4d9f7471bc403880cf4d18866605b4c1bdd42189d5beb3b990874437f98f`  
		Last Modified: Wed, 23 Jan 2019 17:51:14 GMT  
		Size: 9.3 MB (9303337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c4fb027bdafbe1a38432e75240d718baa8184a584722f18bb1cce537c3c0952`  
		Last Modified: Wed, 23 Jan 2019 17:51:12 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09692f6078c9c62f428facdd53c6526cd6a62966fa5f7bd13b97d5092cbf257`  
		Last Modified: Wed, 23 Jan 2019 17:51:12 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; ppc64le

```console
$ docker pull spiped@sha256:0f80976f763af165b770f5d108d12a25d824393ce81284c17c82e7d72c345d1a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.2 MB (30166403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83f40f8a4122a560f2382a72d2bde0b0315d6f8049c03e02dcc658309ba22e3a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 23 Jan 2019 09:27:25 GMT
ADD file:0319b2e5714eb9ca36cdff43e04c2bfeef2d75df874454b811aea2ca19689f38 in / 
# Wed, 23 Jan 2019 09:27:28 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 11:55:21 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 23 Jan 2019 11:55:35 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 11:55:37 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 23 Jan 2019 11:55:40 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 23 Jan 2019 11:55:43 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 23 Jan 2019 11:57:39 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 11:57:43 GMT
VOLUME [/spiped]
# Wed, 23 Jan 2019 11:57:46 GMT
WORKDIR /spiped
# Wed, 23 Jan 2019 11:57:47 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 23 Jan 2019 11:57:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 11:57:56 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:6c5a75a07494bd17f6469a546426663557e2f61d5e776afb51fd406a92082ef1`  
		Last Modified: Wed, 23 Jan 2019 09:33:42 GMT  
		Size: 22.8 MB (22755331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a4f6bd79971d11a28f6db1139c49ed6ac828eab5b11ad65b19acb4a52bbee11`  
		Last Modified: Wed, 23 Jan 2019 11:58:26 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a6a53837222492513a246d423435eac0fa699a4f65856f93ecf5d5bed31bdd8`  
		Last Modified: Wed, 23 Jan 2019 11:58:27 GMT  
		Size: 1.6 MB (1561338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc8e349d8a43fdb6e298c166ede4e131937a8e7c8ff86ac9d038dc64c2756589`  
		Last Modified: Wed, 23 Jan 2019 11:58:28 GMT  
		Size: 5.8 MB (5847512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3011cefbb9a903372a3a5bc4be3e85c7cc9bd4a4ba8946e81ee31631b163c4a1`  
		Last Modified: Wed, 23 Jan 2019 11:58:26 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d15bb2e44dae8f80e442f22b98b6c362e720f2a19b8d4f6a5654bf5529809c47`  
		Last Modified: Wed, 23 Jan 2019 11:58:26 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; s390x

```console
$ docker pull spiped@sha256:1d8cdd7f59bb5c6aaf4dfaaf9cf079653756843d7b0ae755b0bb034c2a45aea8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 MB (30751806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02c4c772d11a067350da8373a800eefcd7712c6efcde65d7d4ee814befc0db4d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 23 Jan 2019 12:44:35 GMT
ADD file:9ec2f952473b440ce27a29c354764178258274d4f97e1b3490238eb594dddf16 in / 
# Wed, 23 Jan 2019 12:44:35 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:49:24 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 23 Jan 2019 13:49:28 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:49:28 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 23 Jan 2019 13:49:29 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 23 Jan 2019 13:49:29 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 23 Jan 2019 13:49:48 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 13:49:48 GMT
VOLUME [/spiped]
# Wed, 23 Jan 2019 13:49:48 GMT
WORKDIR /spiped
# Wed, 23 Jan 2019 13:49:49 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 23 Jan 2019 13:49:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 13:49:49 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:99e7bb47d7df9eb7625dccfcacd2c4e8a458ac70850b46efa85d64fac11c6bd2`  
		Last Modified: Wed, 23 Jan 2019 12:48:55 GMT  
		Size: 22.4 MB (22353499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ab28850c35f98ea8b217dfbf38b9a548d9176b788fac35c8817dbf1ef24e568`  
		Last Modified: Wed, 23 Jan 2019 13:50:06 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a3d56a3191ef390996546cebae21e2558093047c03c9a1362347075ff279c40`  
		Last Modified: Wed, 23 Jan 2019 13:50:07 GMT  
		Size: 1.6 MB (1625745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:067a78f67e10abe189e0c96b634c6adbf41380e9407e1a36145ef4c5e5adf481`  
		Last Modified: Wed, 23 Jan 2019 13:50:08 GMT  
		Size: 6.8 MB (6770373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adf6eaba1b689a1f78bddb77f86f91f046be850a261a281b7b3e6bddb9b58ec5`  
		Last Modified: Wed, 23 Jan 2019 13:50:07 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74c6cb18e63b6d30799eb630e9afedc49d99a5264232a0245088ea7b108b118b`  
		Last Modified: Wed, 23 Jan 2019 13:50:06 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
