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
$ docker pull spiped@sha256:707514983d89ee761d2c3df628650a088ebb4c3d37f51486ee887d709442103f
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
$ docker pull spiped@sha256:5d709fc85eebdbae907be642a06e16a5d727d9f581afe9724490be0683c03c63
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30271718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff80a72458c6bbeb4a37015ce261eb28da7eeb43f263629eeebb027ce1102a3c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 09:09:42 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 06 Feb 2019 09:09:46 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 09:09:46 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 06 Feb 2019 09:09:46 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 06 Feb 2019 09:09:46 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 06 Feb 2019 09:10:11 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 09:10:11 GMT
VOLUME [/spiped]
# Wed, 06 Feb 2019 09:10:11 GMT
WORKDIR /spiped
# Wed, 06 Feb 2019 09:10:11 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 06 Feb 2019 09:10:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 09:10:12 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75d552125b09b5ce62c23bd69b845a9e46e99b1254fff13f4ee42cbdbbe15197`  
		Last Modified: Wed, 06 Feb 2019 09:10:27 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:685dcba75b8d55c04f4a8f8c3bff87836f0f2e94e5c273025183dc77384abd16`  
		Last Modified: Wed, 06 Feb 2019 09:10:27 GMT  
		Size: 1.9 MB (1891371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55c5e70f16de59738a7499611ffcda1b821c356cd95a31005943b968dfc826eb`  
		Last Modified: Wed, 06 Feb 2019 09:10:28 GMT  
		Size: 5.9 MB (5877872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1d15ff32c20a17a9e845f7f07b43c253c4042bd3cce0e97b92d92570e983430`  
		Last Modified: Wed, 06 Feb 2019 09:10:27 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5ef9f86d65a7ecda74a2c29103ad7de47adc4a8009fbe17578818b949b334dc`  
		Last Modified: Wed, 06 Feb 2019 09:10:27 GMT  
		Size: 350.0 B  
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
$ docker pull spiped@sha256:37773b63b471d58daf62c9338359db90ed379955f1fbb278fbac3e80cdb41a09
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.6 MB (25573868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d41497a435aa7c20732a3e054ae00cf2cf67bd80ac83fc9b0d9b40db7754a8b9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 07 Feb 2019 13:03:29 GMT
ADD file:c46db86f1395f6e482757d17e7f4cd42dc7dd9526d1c2c517c37199df306ee84 in / 
# Thu, 07 Feb 2019 13:03:30 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:55:08 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Thu, 07 Feb 2019 15:55:16 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 15:55:16 GMT
ENV SPIPED_VERSION=1.6.0
# Thu, 07 Feb 2019 15:55:17 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Thu, 07 Feb 2019 15:55:17 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Thu, 07 Feb 2019 15:55:54 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Thu, 07 Feb 2019 15:55:55 GMT
VOLUME [/spiped]
# Thu, 07 Feb 2019 15:55:55 GMT
WORKDIR /spiped
# Thu, 07 Feb 2019 15:55:56 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Thu, 07 Feb 2019 15:55:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 15:55:57 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:9c38b5a8a4d56e8a005f102689cfc8b39dc34b4f322891f8854ac54520004723`  
		Last Modified: Thu, 07 Feb 2019 02:05:05 GMT  
		Size: 19.3 MB (19290199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:862c85012a148b570adb06834a13bf8784db5ff8c8fb1e0470b9ce3eb024217a`  
		Last Modified: Thu, 07 Feb 2019 15:56:14 GMT  
		Size: 1.7 KB (1736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3130a916129565387fde2331759352c185616b631fcf1acf83d621939171a31`  
		Last Modified: Thu, 07 Feb 2019 15:56:14 GMT  
		Size: 1.6 MB (1573591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8211c16683a0266078d6da01eedd4a0cb3184b7dc1e1520defa91988dbf791eb`  
		Last Modified: Thu, 07 Feb 2019 15:56:16 GMT  
		Size: 4.7 MB (4707866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e5155509376ba498a45c6ccc31b2c7c6bbc58cac826431d8d94b752a1ee8890`  
		Last Modified: Thu, 07 Feb 2019 15:56:14 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88b571cb565fe61888fa7d28ac675689ea7967eb1e1ae896ead0b2f5195fe941`  
		Last Modified: Thu, 07 Feb 2019 15:56:13 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:589ccf3e70de7b31c385e893ecfa702513e626f7a6c78a35c4cbfe88f731f6d8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 MB (27212826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51636bc03e47395d43f474f876aeed4d831879380b31276082171f0a032ee996`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 00:48:03 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Thu, 07 Feb 2019 00:48:40 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 00:48:43 GMT
ENV SPIPED_VERSION=1.6.0
# Thu, 07 Feb 2019 00:48:46 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Thu, 07 Feb 2019 00:48:49 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Thu, 07 Feb 2019 00:52:54 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Thu, 07 Feb 2019 00:52:56 GMT
VOLUME [/spiped]
# Thu, 07 Feb 2019 00:52:58 GMT
WORKDIR /spiped
# Thu, 07 Feb 2019 00:52:59 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Thu, 07 Feb 2019 00:53:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 00:53:02 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3565ce75a9b04ef907f9bc8373e07c3a5669d47000f50af00854c5ece30b4a4`  
		Last Modified: Thu, 07 Feb 2019 00:53:24 GMT  
		Size: 1.8 KB (1761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f08c92f2efed3998738e623c117cecc8299ed309171bf2224efebdcd9f971a0`  
		Last Modified: Thu, 07 Feb 2019 00:53:24 GMT  
		Size: 1.6 MB (1623652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6192a6210aa3a18f33885a722cbeafe960c3994d8f7ba1c0b01111262dad6fe`  
		Last Modified: Thu, 07 Feb 2019 00:53:26 GMT  
		Size: 5.2 MB (5236809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5365da16b09c00f439a7f5beff12e8a8ab5c9717853c90eab7bf69c5ba2c16f9`  
		Last Modified: Thu, 07 Feb 2019 00:53:24 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24b24e845ce9f097523dd7e4d76d5ee62d75824eeed021243a74fda0bdd14147`  
		Last Modified: Thu, 07 Feb 2019 00:53:24 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1` - linux; 386

```console
$ docker pull spiped@sha256:1d0f0761d772ce764ff8273bba45c129d513397b48501dd56dd3a23335c0e965
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34337907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba727e68aada81e87f61fe2799d3c0147c9d223a7d4e79e611e6f8121e45025a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 06 Feb 2019 12:01:21 GMT
ADD file:dc62e26c5e1fadea4cfe8bf1352ae3efb1fbb25f51c6499761d1dba06b3f436e in / 
# Wed, 06 Feb 2019 12:01:22 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 04:16:59 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Thu, 07 Feb 2019 04:17:04 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 04:17:04 GMT
ENV SPIPED_VERSION=1.6.0
# Thu, 07 Feb 2019 04:17:04 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Thu, 07 Feb 2019 04:17:04 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Thu, 07 Feb 2019 04:17:32 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Thu, 07 Feb 2019 04:17:32 GMT
VOLUME [/spiped]
# Thu, 07 Feb 2019 04:17:32 GMT
WORKDIR /spiped
# Thu, 07 Feb 2019 04:17:32 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Thu, 07 Feb 2019 04:17:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 04:17:33 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:fd883529ef37cccd489ccdd81e45760985451191b1dfe64c020b0d7a8325a679`  
		Last Modified: Wed, 06 Feb 2019 12:07:59 GMT  
		Size: 23.1 MB (23146972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d603b26d541b88a663dc9aefeda80fcc673c159bab26713b5db89ce4c51a970c`  
		Last Modified: Thu, 07 Feb 2019 04:17:44 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdcccf6eec324e16b9a306aa881627ce27634518c34cc78cc4c49796c4662113`  
		Last Modified: Thu, 07 Feb 2019 04:17:45 GMT  
		Size: 1.9 MB (1885388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a377e7229cf18d23533a51223c10017210f75f770d22b5aee62a56d54d98def5`  
		Last Modified: Thu, 07 Feb 2019 04:17:47 GMT  
		Size: 9.3 MB (9303367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d00974c4f0044d9ae7d15cb60513bbb002ff9d2b272caa3aeb3ea7cb05aff4e`  
		Last Modified: Thu, 07 Feb 2019 04:17:44 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c4fcc8a1ce5e135c14654cec76a519363bd8c6ce9e41b4b744d9e121110acfd`  
		Last Modified: Thu, 07 Feb 2019 04:17:44 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1` - linux; ppc64le

```console
$ docker pull spiped@sha256:d061004209596f52125bb924a7ff4ccbc54ff38d1619c56aa7060f27c175a502
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.2 MB (30166484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b632d2b14567a67443b93d93ae0d29f6da0532513c70d04bc2f3eb0fba06110b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 06 Feb 2019 09:26:52 GMT
ADD file:a3fa4dfe4f8ea60454e3698650325be0ad97847e49c257136da78e2f997c2202 in / 
# Wed, 06 Feb 2019 09:26:54 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 20:05:12 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 06 Feb 2019 20:05:24 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 20:05:29 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 06 Feb 2019 20:05:32 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 06 Feb 2019 20:05:36 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 06 Feb 2019 20:07:16 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 20:07:19 GMT
VOLUME [/spiped]
# Wed, 06 Feb 2019 20:07:22 GMT
WORKDIR /spiped
# Wed, 06 Feb 2019 20:07:23 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 06 Feb 2019 20:07:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 20:07:26 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:ce77ebcb1b656de04f8443959fa201b1696ff2136de5be3de628f0c463c727f4`  
		Last Modified: Wed, 06 Feb 2019 09:31:25 GMT  
		Size: 22.8 MB (22755392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b2ca5f7587dd075fad22bd10dc1faa5206bcb9bdaf401d4d9ce3e1b71c2b79`  
		Last Modified: Wed, 06 Feb 2019 20:07:43 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:231b6b67c5d8f30adeeeeeda29456810c9dd316431a37b4ce07400801e89128a`  
		Last Modified: Wed, 06 Feb 2019 20:07:44 GMT  
		Size: 1.6 MB (1561329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ac0b0c7dfdf7727e678a88b06f2dfb63f236f4f791381e05a5040b2a6167da`  
		Last Modified: Wed, 06 Feb 2019 20:07:50 GMT  
		Size: 5.8 MB (5847539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ea9ce9ada60f645cba28fe4ebc9fc70f86355ef4600879826582d89e148e3f`  
		Last Modified: Wed, 06 Feb 2019 20:07:43 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1e7f029f55a0e3bf34b9176c6624ea9d503bc13661e53e7ec01a32d1ac35cb6`  
		Last Modified: Wed, 06 Feb 2019 20:07:43 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1` - linux; s390x

```console
$ docker pull spiped@sha256:190912b473f4814d951e3f3c8440d3e162c4e4733b838726ca0f92e233e1c2aa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 MB (30751664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3747cc66d735fbde84171955c10ad34ecb43274ae98524c4c3b53af632a5d426`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 06 Feb 2019 12:43:23 GMT
ADD file:3a9fa274c8adc237938518b0ab05a8da0888b24eb1291c4c1d10353adf5c2c35 in / 
# Wed, 06 Feb 2019 12:43:24 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 17:51:19 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 06 Feb 2019 17:51:23 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 17:51:23 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 06 Feb 2019 17:51:24 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 06 Feb 2019 17:51:24 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 06 Feb 2019 17:51:40 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 17:51:40 GMT
VOLUME [/spiped]
# Wed, 06 Feb 2019 17:51:40 GMT
WORKDIR /spiped
# Wed, 06 Feb 2019 17:51:41 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 06 Feb 2019 17:51:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 17:51:41 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:7a7744b459675a4ad2aa884ea8350b1c1ae822c31e0ed60ab392fa7362b5c510`  
		Last Modified: Wed, 06 Feb 2019 12:46:59 GMT  
		Size: 22.4 MB (22353334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d8b16150d2067fb0be8f3bcf9ce77bc01b2663f2ecd3bf2f26e9bf23861534f`  
		Last Modified: Wed, 06 Feb 2019 17:51:57 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4257aa2c1658782b6ba65dfb9eafee998b516f77bc2045461fba9a03a9504bec`  
		Last Modified: Wed, 06 Feb 2019 17:51:57 GMT  
		Size: 1.6 MB (1625747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8a05e3a37eb56bfdf6d589fc30bab82ee31778862cbf1c6b078c4ee9a671880`  
		Last Modified: Wed, 06 Feb 2019 17:51:59 GMT  
		Size: 6.8 MB (6770394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e18cf11df3a111f02f650e5cac921a7b3ea676977c0614dcb1710f9a7a006a4`  
		Last Modified: Wed, 06 Feb 2019 17:51:57 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f40b3f6de4c29a72c38a826ccd85709851207d6eccccbaf3e48ca9690355fe26`  
		Last Modified: Wed, 06 Feb 2019 17:51:57 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1.6`

```console
$ docker pull spiped@sha256:707514983d89ee761d2c3df628650a088ebb4c3d37f51486ee887d709442103f
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
$ docker pull spiped@sha256:5d709fc85eebdbae907be642a06e16a5d727d9f581afe9724490be0683c03c63
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30271718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff80a72458c6bbeb4a37015ce261eb28da7eeb43f263629eeebb027ce1102a3c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 09:09:42 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 06 Feb 2019 09:09:46 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 09:09:46 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 06 Feb 2019 09:09:46 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 06 Feb 2019 09:09:46 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 06 Feb 2019 09:10:11 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 09:10:11 GMT
VOLUME [/spiped]
# Wed, 06 Feb 2019 09:10:11 GMT
WORKDIR /spiped
# Wed, 06 Feb 2019 09:10:11 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 06 Feb 2019 09:10:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 09:10:12 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75d552125b09b5ce62c23bd69b845a9e46e99b1254fff13f4ee42cbdbbe15197`  
		Last Modified: Wed, 06 Feb 2019 09:10:27 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:685dcba75b8d55c04f4a8f8c3bff87836f0f2e94e5c273025183dc77384abd16`  
		Last Modified: Wed, 06 Feb 2019 09:10:27 GMT  
		Size: 1.9 MB (1891371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55c5e70f16de59738a7499611ffcda1b821c356cd95a31005943b968dfc826eb`  
		Last Modified: Wed, 06 Feb 2019 09:10:28 GMT  
		Size: 5.9 MB (5877872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1d15ff32c20a17a9e845f7f07b43c253c4042bd3cce0e97b92d92570e983430`  
		Last Modified: Wed, 06 Feb 2019 09:10:27 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5ef9f86d65a7ecda74a2c29103ad7de47adc4a8009fbe17578818b949b334dc`  
		Last Modified: Wed, 06 Feb 2019 09:10:27 GMT  
		Size: 350.0 B  
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
$ docker pull spiped@sha256:37773b63b471d58daf62c9338359db90ed379955f1fbb278fbac3e80cdb41a09
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.6 MB (25573868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d41497a435aa7c20732a3e054ae00cf2cf67bd80ac83fc9b0d9b40db7754a8b9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 07 Feb 2019 13:03:29 GMT
ADD file:c46db86f1395f6e482757d17e7f4cd42dc7dd9526d1c2c517c37199df306ee84 in / 
# Thu, 07 Feb 2019 13:03:30 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:55:08 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Thu, 07 Feb 2019 15:55:16 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 15:55:16 GMT
ENV SPIPED_VERSION=1.6.0
# Thu, 07 Feb 2019 15:55:17 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Thu, 07 Feb 2019 15:55:17 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Thu, 07 Feb 2019 15:55:54 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Thu, 07 Feb 2019 15:55:55 GMT
VOLUME [/spiped]
# Thu, 07 Feb 2019 15:55:55 GMT
WORKDIR /spiped
# Thu, 07 Feb 2019 15:55:56 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Thu, 07 Feb 2019 15:55:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 15:55:57 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:9c38b5a8a4d56e8a005f102689cfc8b39dc34b4f322891f8854ac54520004723`  
		Last Modified: Thu, 07 Feb 2019 02:05:05 GMT  
		Size: 19.3 MB (19290199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:862c85012a148b570adb06834a13bf8784db5ff8c8fb1e0470b9ce3eb024217a`  
		Last Modified: Thu, 07 Feb 2019 15:56:14 GMT  
		Size: 1.7 KB (1736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3130a916129565387fde2331759352c185616b631fcf1acf83d621939171a31`  
		Last Modified: Thu, 07 Feb 2019 15:56:14 GMT  
		Size: 1.6 MB (1573591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8211c16683a0266078d6da01eedd4a0cb3184b7dc1e1520defa91988dbf791eb`  
		Last Modified: Thu, 07 Feb 2019 15:56:16 GMT  
		Size: 4.7 MB (4707866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e5155509376ba498a45c6ccc31b2c7c6bbc58cac826431d8d94b752a1ee8890`  
		Last Modified: Thu, 07 Feb 2019 15:56:14 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88b571cb565fe61888fa7d28ac675689ea7967eb1e1ae896ead0b2f5195fe941`  
		Last Modified: Thu, 07 Feb 2019 15:56:13 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:589ccf3e70de7b31c385e893ecfa702513e626f7a6c78a35c4cbfe88f731f6d8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 MB (27212826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51636bc03e47395d43f474f876aeed4d831879380b31276082171f0a032ee996`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 00:48:03 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Thu, 07 Feb 2019 00:48:40 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 00:48:43 GMT
ENV SPIPED_VERSION=1.6.0
# Thu, 07 Feb 2019 00:48:46 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Thu, 07 Feb 2019 00:48:49 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Thu, 07 Feb 2019 00:52:54 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Thu, 07 Feb 2019 00:52:56 GMT
VOLUME [/spiped]
# Thu, 07 Feb 2019 00:52:58 GMT
WORKDIR /spiped
# Thu, 07 Feb 2019 00:52:59 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Thu, 07 Feb 2019 00:53:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 00:53:02 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3565ce75a9b04ef907f9bc8373e07c3a5669d47000f50af00854c5ece30b4a4`  
		Last Modified: Thu, 07 Feb 2019 00:53:24 GMT  
		Size: 1.8 KB (1761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f08c92f2efed3998738e623c117cecc8299ed309171bf2224efebdcd9f971a0`  
		Last Modified: Thu, 07 Feb 2019 00:53:24 GMT  
		Size: 1.6 MB (1623652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6192a6210aa3a18f33885a722cbeafe960c3994d8f7ba1c0b01111262dad6fe`  
		Last Modified: Thu, 07 Feb 2019 00:53:26 GMT  
		Size: 5.2 MB (5236809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5365da16b09c00f439a7f5beff12e8a8ab5c9717853c90eab7bf69c5ba2c16f9`  
		Last Modified: Thu, 07 Feb 2019 00:53:24 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24b24e845ce9f097523dd7e4d76d5ee62d75824eeed021243a74fda0bdd14147`  
		Last Modified: Thu, 07 Feb 2019 00:53:24 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6` - linux; 386

```console
$ docker pull spiped@sha256:1d0f0761d772ce764ff8273bba45c129d513397b48501dd56dd3a23335c0e965
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34337907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba727e68aada81e87f61fe2799d3c0147c9d223a7d4e79e611e6f8121e45025a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 06 Feb 2019 12:01:21 GMT
ADD file:dc62e26c5e1fadea4cfe8bf1352ae3efb1fbb25f51c6499761d1dba06b3f436e in / 
# Wed, 06 Feb 2019 12:01:22 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 04:16:59 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Thu, 07 Feb 2019 04:17:04 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 04:17:04 GMT
ENV SPIPED_VERSION=1.6.0
# Thu, 07 Feb 2019 04:17:04 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Thu, 07 Feb 2019 04:17:04 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Thu, 07 Feb 2019 04:17:32 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Thu, 07 Feb 2019 04:17:32 GMT
VOLUME [/spiped]
# Thu, 07 Feb 2019 04:17:32 GMT
WORKDIR /spiped
# Thu, 07 Feb 2019 04:17:32 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Thu, 07 Feb 2019 04:17:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 04:17:33 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:fd883529ef37cccd489ccdd81e45760985451191b1dfe64c020b0d7a8325a679`  
		Last Modified: Wed, 06 Feb 2019 12:07:59 GMT  
		Size: 23.1 MB (23146972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d603b26d541b88a663dc9aefeda80fcc673c159bab26713b5db89ce4c51a970c`  
		Last Modified: Thu, 07 Feb 2019 04:17:44 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdcccf6eec324e16b9a306aa881627ce27634518c34cc78cc4c49796c4662113`  
		Last Modified: Thu, 07 Feb 2019 04:17:45 GMT  
		Size: 1.9 MB (1885388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a377e7229cf18d23533a51223c10017210f75f770d22b5aee62a56d54d98def5`  
		Last Modified: Thu, 07 Feb 2019 04:17:47 GMT  
		Size: 9.3 MB (9303367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d00974c4f0044d9ae7d15cb60513bbb002ff9d2b272caa3aeb3ea7cb05aff4e`  
		Last Modified: Thu, 07 Feb 2019 04:17:44 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c4fcc8a1ce5e135c14654cec76a519363bd8c6ce9e41b4b744d9e121110acfd`  
		Last Modified: Thu, 07 Feb 2019 04:17:44 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6` - linux; ppc64le

```console
$ docker pull spiped@sha256:d061004209596f52125bb924a7ff4ccbc54ff38d1619c56aa7060f27c175a502
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.2 MB (30166484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b632d2b14567a67443b93d93ae0d29f6da0532513c70d04bc2f3eb0fba06110b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 06 Feb 2019 09:26:52 GMT
ADD file:a3fa4dfe4f8ea60454e3698650325be0ad97847e49c257136da78e2f997c2202 in / 
# Wed, 06 Feb 2019 09:26:54 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 20:05:12 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 06 Feb 2019 20:05:24 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 20:05:29 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 06 Feb 2019 20:05:32 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 06 Feb 2019 20:05:36 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 06 Feb 2019 20:07:16 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 20:07:19 GMT
VOLUME [/spiped]
# Wed, 06 Feb 2019 20:07:22 GMT
WORKDIR /spiped
# Wed, 06 Feb 2019 20:07:23 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 06 Feb 2019 20:07:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 20:07:26 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:ce77ebcb1b656de04f8443959fa201b1696ff2136de5be3de628f0c463c727f4`  
		Last Modified: Wed, 06 Feb 2019 09:31:25 GMT  
		Size: 22.8 MB (22755392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b2ca5f7587dd075fad22bd10dc1faa5206bcb9bdaf401d4d9ce3e1b71c2b79`  
		Last Modified: Wed, 06 Feb 2019 20:07:43 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:231b6b67c5d8f30adeeeeeda29456810c9dd316431a37b4ce07400801e89128a`  
		Last Modified: Wed, 06 Feb 2019 20:07:44 GMT  
		Size: 1.6 MB (1561329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ac0b0c7dfdf7727e678a88b06f2dfb63f236f4f791381e05a5040b2a6167da`  
		Last Modified: Wed, 06 Feb 2019 20:07:50 GMT  
		Size: 5.8 MB (5847539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ea9ce9ada60f645cba28fe4ebc9fc70f86355ef4600879826582d89e148e3f`  
		Last Modified: Wed, 06 Feb 2019 20:07:43 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1e7f029f55a0e3bf34b9176c6624ea9d503bc13661e53e7ec01a32d1ac35cb6`  
		Last Modified: Wed, 06 Feb 2019 20:07:43 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6` - linux; s390x

```console
$ docker pull spiped@sha256:190912b473f4814d951e3f3c8440d3e162c4e4733b838726ca0f92e233e1c2aa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 MB (30751664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3747cc66d735fbde84171955c10ad34ecb43274ae98524c4c3b53af632a5d426`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 06 Feb 2019 12:43:23 GMT
ADD file:3a9fa274c8adc237938518b0ab05a8da0888b24eb1291c4c1d10353adf5c2c35 in / 
# Wed, 06 Feb 2019 12:43:24 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 17:51:19 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 06 Feb 2019 17:51:23 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 17:51:23 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 06 Feb 2019 17:51:24 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 06 Feb 2019 17:51:24 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 06 Feb 2019 17:51:40 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 17:51:40 GMT
VOLUME [/spiped]
# Wed, 06 Feb 2019 17:51:40 GMT
WORKDIR /spiped
# Wed, 06 Feb 2019 17:51:41 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 06 Feb 2019 17:51:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 17:51:41 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:7a7744b459675a4ad2aa884ea8350b1c1ae822c31e0ed60ab392fa7362b5c510`  
		Last Modified: Wed, 06 Feb 2019 12:46:59 GMT  
		Size: 22.4 MB (22353334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d8b16150d2067fb0be8f3bcf9ce77bc01b2663f2ecd3bf2f26e9bf23861534f`  
		Last Modified: Wed, 06 Feb 2019 17:51:57 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4257aa2c1658782b6ba65dfb9eafee998b516f77bc2045461fba9a03a9504bec`  
		Last Modified: Wed, 06 Feb 2019 17:51:57 GMT  
		Size: 1.6 MB (1625747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8a05e3a37eb56bfdf6d589fc30bab82ee31778862cbf1c6b078c4ee9a671880`  
		Last Modified: Wed, 06 Feb 2019 17:51:59 GMT  
		Size: 6.8 MB (6770394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e18cf11df3a111f02f650e5cac921a7b3ea676977c0614dcb1710f9a7a006a4`  
		Last Modified: Wed, 06 Feb 2019 17:51:57 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f40b3f6de4c29a72c38a826ccd85709851207d6eccccbaf3e48ca9690355fe26`  
		Last Modified: Wed, 06 Feb 2019 17:51:57 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1.6.0`

```console
$ docker pull spiped@sha256:707514983d89ee761d2c3df628650a088ebb4c3d37f51486ee887d709442103f
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
$ docker pull spiped@sha256:5d709fc85eebdbae907be642a06e16a5d727d9f581afe9724490be0683c03c63
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30271718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff80a72458c6bbeb4a37015ce261eb28da7eeb43f263629eeebb027ce1102a3c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 09:09:42 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 06 Feb 2019 09:09:46 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 09:09:46 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 06 Feb 2019 09:09:46 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 06 Feb 2019 09:09:46 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 06 Feb 2019 09:10:11 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 09:10:11 GMT
VOLUME [/spiped]
# Wed, 06 Feb 2019 09:10:11 GMT
WORKDIR /spiped
# Wed, 06 Feb 2019 09:10:11 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 06 Feb 2019 09:10:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 09:10:12 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75d552125b09b5ce62c23bd69b845a9e46e99b1254fff13f4ee42cbdbbe15197`  
		Last Modified: Wed, 06 Feb 2019 09:10:27 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:685dcba75b8d55c04f4a8f8c3bff87836f0f2e94e5c273025183dc77384abd16`  
		Last Modified: Wed, 06 Feb 2019 09:10:27 GMT  
		Size: 1.9 MB (1891371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55c5e70f16de59738a7499611ffcda1b821c356cd95a31005943b968dfc826eb`  
		Last Modified: Wed, 06 Feb 2019 09:10:28 GMT  
		Size: 5.9 MB (5877872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1d15ff32c20a17a9e845f7f07b43c253c4042bd3cce0e97b92d92570e983430`  
		Last Modified: Wed, 06 Feb 2019 09:10:27 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5ef9f86d65a7ecda74a2c29103ad7de47adc4a8009fbe17578818b949b334dc`  
		Last Modified: Wed, 06 Feb 2019 09:10:27 GMT  
		Size: 350.0 B  
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
$ docker pull spiped@sha256:37773b63b471d58daf62c9338359db90ed379955f1fbb278fbac3e80cdb41a09
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.6 MB (25573868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d41497a435aa7c20732a3e054ae00cf2cf67bd80ac83fc9b0d9b40db7754a8b9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 07 Feb 2019 13:03:29 GMT
ADD file:c46db86f1395f6e482757d17e7f4cd42dc7dd9526d1c2c517c37199df306ee84 in / 
# Thu, 07 Feb 2019 13:03:30 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:55:08 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Thu, 07 Feb 2019 15:55:16 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 15:55:16 GMT
ENV SPIPED_VERSION=1.6.0
# Thu, 07 Feb 2019 15:55:17 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Thu, 07 Feb 2019 15:55:17 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Thu, 07 Feb 2019 15:55:54 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Thu, 07 Feb 2019 15:55:55 GMT
VOLUME [/spiped]
# Thu, 07 Feb 2019 15:55:55 GMT
WORKDIR /spiped
# Thu, 07 Feb 2019 15:55:56 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Thu, 07 Feb 2019 15:55:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 15:55:57 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:9c38b5a8a4d56e8a005f102689cfc8b39dc34b4f322891f8854ac54520004723`  
		Last Modified: Thu, 07 Feb 2019 02:05:05 GMT  
		Size: 19.3 MB (19290199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:862c85012a148b570adb06834a13bf8784db5ff8c8fb1e0470b9ce3eb024217a`  
		Last Modified: Thu, 07 Feb 2019 15:56:14 GMT  
		Size: 1.7 KB (1736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3130a916129565387fde2331759352c185616b631fcf1acf83d621939171a31`  
		Last Modified: Thu, 07 Feb 2019 15:56:14 GMT  
		Size: 1.6 MB (1573591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8211c16683a0266078d6da01eedd4a0cb3184b7dc1e1520defa91988dbf791eb`  
		Last Modified: Thu, 07 Feb 2019 15:56:16 GMT  
		Size: 4.7 MB (4707866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e5155509376ba498a45c6ccc31b2c7c6bbc58cac826431d8d94b752a1ee8890`  
		Last Modified: Thu, 07 Feb 2019 15:56:14 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88b571cb565fe61888fa7d28ac675689ea7967eb1e1ae896ead0b2f5195fe941`  
		Last Modified: Thu, 07 Feb 2019 15:56:13 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:589ccf3e70de7b31c385e893ecfa702513e626f7a6c78a35c4cbfe88f731f6d8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 MB (27212826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51636bc03e47395d43f474f876aeed4d831879380b31276082171f0a032ee996`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 00:48:03 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Thu, 07 Feb 2019 00:48:40 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 00:48:43 GMT
ENV SPIPED_VERSION=1.6.0
# Thu, 07 Feb 2019 00:48:46 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Thu, 07 Feb 2019 00:48:49 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Thu, 07 Feb 2019 00:52:54 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Thu, 07 Feb 2019 00:52:56 GMT
VOLUME [/spiped]
# Thu, 07 Feb 2019 00:52:58 GMT
WORKDIR /spiped
# Thu, 07 Feb 2019 00:52:59 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Thu, 07 Feb 2019 00:53:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 00:53:02 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3565ce75a9b04ef907f9bc8373e07c3a5669d47000f50af00854c5ece30b4a4`  
		Last Modified: Thu, 07 Feb 2019 00:53:24 GMT  
		Size: 1.8 KB (1761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f08c92f2efed3998738e623c117cecc8299ed309171bf2224efebdcd9f971a0`  
		Last Modified: Thu, 07 Feb 2019 00:53:24 GMT  
		Size: 1.6 MB (1623652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6192a6210aa3a18f33885a722cbeafe960c3994d8f7ba1c0b01111262dad6fe`  
		Last Modified: Thu, 07 Feb 2019 00:53:26 GMT  
		Size: 5.2 MB (5236809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5365da16b09c00f439a7f5beff12e8a8ab5c9717853c90eab7bf69c5ba2c16f9`  
		Last Modified: Thu, 07 Feb 2019 00:53:24 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24b24e845ce9f097523dd7e4d76d5ee62d75824eeed021243a74fda0bdd14147`  
		Last Modified: Thu, 07 Feb 2019 00:53:24 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0` - linux; 386

```console
$ docker pull spiped@sha256:1d0f0761d772ce764ff8273bba45c129d513397b48501dd56dd3a23335c0e965
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34337907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba727e68aada81e87f61fe2799d3c0147c9d223a7d4e79e611e6f8121e45025a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 06 Feb 2019 12:01:21 GMT
ADD file:dc62e26c5e1fadea4cfe8bf1352ae3efb1fbb25f51c6499761d1dba06b3f436e in / 
# Wed, 06 Feb 2019 12:01:22 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 04:16:59 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Thu, 07 Feb 2019 04:17:04 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 04:17:04 GMT
ENV SPIPED_VERSION=1.6.0
# Thu, 07 Feb 2019 04:17:04 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Thu, 07 Feb 2019 04:17:04 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Thu, 07 Feb 2019 04:17:32 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Thu, 07 Feb 2019 04:17:32 GMT
VOLUME [/spiped]
# Thu, 07 Feb 2019 04:17:32 GMT
WORKDIR /spiped
# Thu, 07 Feb 2019 04:17:32 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Thu, 07 Feb 2019 04:17:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 04:17:33 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:fd883529ef37cccd489ccdd81e45760985451191b1dfe64c020b0d7a8325a679`  
		Last Modified: Wed, 06 Feb 2019 12:07:59 GMT  
		Size: 23.1 MB (23146972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d603b26d541b88a663dc9aefeda80fcc673c159bab26713b5db89ce4c51a970c`  
		Last Modified: Thu, 07 Feb 2019 04:17:44 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdcccf6eec324e16b9a306aa881627ce27634518c34cc78cc4c49796c4662113`  
		Last Modified: Thu, 07 Feb 2019 04:17:45 GMT  
		Size: 1.9 MB (1885388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a377e7229cf18d23533a51223c10017210f75f770d22b5aee62a56d54d98def5`  
		Last Modified: Thu, 07 Feb 2019 04:17:47 GMT  
		Size: 9.3 MB (9303367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d00974c4f0044d9ae7d15cb60513bbb002ff9d2b272caa3aeb3ea7cb05aff4e`  
		Last Modified: Thu, 07 Feb 2019 04:17:44 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c4fcc8a1ce5e135c14654cec76a519363bd8c6ce9e41b4b744d9e121110acfd`  
		Last Modified: Thu, 07 Feb 2019 04:17:44 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0` - linux; ppc64le

```console
$ docker pull spiped@sha256:d061004209596f52125bb924a7ff4ccbc54ff38d1619c56aa7060f27c175a502
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.2 MB (30166484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b632d2b14567a67443b93d93ae0d29f6da0532513c70d04bc2f3eb0fba06110b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 06 Feb 2019 09:26:52 GMT
ADD file:a3fa4dfe4f8ea60454e3698650325be0ad97847e49c257136da78e2f997c2202 in / 
# Wed, 06 Feb 2019 09:26:54 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 20:05:12 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 06 Feb 2019 20:05:24 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 20:05:29 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 06 Feb 2019 20:05:32 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 06 Feb 2019 20:05:36 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 06 Feb 2019 20:07:16 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 20:07:19 GMT
VOLUME [/spiped]
# Wed, 06 Feb 2019 20:07:22 GMT
WORKDIR /spiped
# Wed, 06 Feb 2019 20:07:23 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 06 Feb 2019 20:07:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 20:07:26 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:ce77ebcb1b656de04f8443959fa201b1696ff2136de5be3de628f0c463c727f4`  
		Last Modified: Wed, 06 Feb 2019 09:31:25 GMT  
		Size: 22.8 MB (22755392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b2ca5f7587dd075fad22bd10dc1faa5206bcb9bdaf401d4d9ce3e1b71c2b79`  
		Last Modified: Wed, 06 Feb 2019 20:07:43 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:231b6b67c5d8f30adeeeeeda29456810c9dd316431a37b4ce07400801e89128a`  
		Last Modified: Wed, 06 Feb 2019 20:07:44 GMT  
		Size: 1.6 MB (1561329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ac0b0c7dfdf7727e678a88b06f2dfb63f236f4f791381e05a5040b2a6167da`  
		Last Modified: Wed, 06 Feb 2019 20:07:50 GMT  
		Size: 5.8 MB (5847539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ea9ce9ada60f645cba28fe4ebc9fc70f86355ef4600879826582d89e148e3f`  
		Last Modified: Wed, 06 Feb 2019 20:07:43 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1e7f029f55a0e3bf34b9176c6624ea9d503bc13661e53e7ec01a32d1ac35cb6`  
		Last Modified: Wed, 06 Feb 2019 20:07:43 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0` - linux; s390x

```console
$ docker pull spiped@sha256:190912b473f4814d951e3f3c8440d3e162c4e4733b838726ca0f92e233e1c2aa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 MB (30751664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3747cc66d735fbde84171955c10ad34ecb43274ae98524c4c3b53af632a5d426`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 06 Feb 2019 12:43:23 GMT
ADD file:3a9fa274c8adc237938518b0ab05a8da0888b24eb1291c4c1d10353adf5c2c35 in / 
# Wed, 06 Feb 2019 12:43:24 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 17:51:19 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 06 Feb 2019 17:51:23 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 17:51:23 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 06 Feb 2019 17:51:24 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 06 Feb 2019 17:51:24 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 06 Feb 2019 17:51:40 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 17:51:40 GMT
VOLUME [/spiped]
# Wed, 06 Feb 2019 17:51:40 GMT
WORKDIR /spiped
# Wed, 06 Feb 2019 17:51:41 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 06 Feb 2019 17:51:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 17:51:41 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:7a7744b459675a4ad2aa884ea8350b1c1ae822c31e0ed60ab392fa7362b5c510`  
		Last Modified: Wed, 06 Feb 2019 12:46:59 GMT  
		Size: 22.4 MB (22353334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d8b16150d2067fb0be8f3bcf9ce77bc01b2663f2ecd3bf2f26e9bf23861534f`  
		Last Modified: Wed, 06 Feb 2019 17:51:57 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4257aa2c1658782b6ba65dfb9eafee998b516f77bc2045461fba9a03a9504bec`  
		Last Modified: Wed, 06 Feb 2019 17:51:57 GMT  
		Size: 1.6 MB (1625747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8a05e3a37eb56bfdf6d589fc30bab82ee31778862cbf1c6b078c4ee9a671880`  
		Last Modified: Wed, 06 Feb 2019 17:51:59 GMT  
		Size: 6.8 MB (6770394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e18cf11df3a111f02f650e5cac921a7b3ea676977c0614dcb1710f9a7a006a4`  
		Last Modified: Wed, 06 Feb 2019 17:51:57 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f40b3f6de4c29a72c38a826ccd85709851207d6eccccbaf3e48ca9690355fe26`  
		Last Modified: Wed, 06 Feb 2019 17:51:57 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1.6.0-alpine`

```console
$ docker pull spiped@sha256:db28e8f8aa4a305518b55a5d19e87900823501f53a491000c3551350dcd896c8
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
$ docker pull spiped@sha256:3a67e6f5190d6c33b6de7e831ce52baa8627a4db9a4b5ad17780ff3cec7d9ea5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2617388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:830fee77b3f15d7f583212fc665f779ceba0323b9521d31bc3ef10ce7de53f91`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 31 Jan 2019 08:50:08 GMT
ADD file:64d5aa5dc08c958468e7c857c35d32a3e87c88800152264432930898defa10c5 in / 
# Thu, 31 Jan 2019 08:50:09 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 08:50:09 GMT
CMD ["/bin/sh"]
# Sat, 02 Feb 2019 09:03:00 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Sat, 02 Feb 2019 09:03:01 GMT
RUN apk add --no-cache libssl1.1
# Sat, 02 Feb 2019 09:03:02 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 02 Feb 2019 09:03:02 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 02 Feb 2019 09:03:02 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 02 Feb 2019 09:03:19 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Sat, 02 Feb 2019 09:03:20 GMT
VOLUME [/spiped]
# Sat, 02 Feb 2019 09:03:20 GMT
WORKDIR /spiped
# Sat, 02 Feb 2019 09:03:21 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Sat, 02 Feb 2019 09:03:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Feb 2019 09:03:22 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:05276f4299f299c4d5ca6776672dcf52f03189b7004e747fd1c2b759d9157831`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 2.5 MB (2540746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5657e63df53674891643732c236f7932524d1710ce42d916bb3c889a8652df67`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd0520f1a1117c483d2e0c59bf3e3e3bb816423e2e22e1988e1a2a4067f8942b`  
		Last Modified: Sat, 02 Feb 2019 09:03:31 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e456175b91916fc727a7c863d10dd28e0a0019adc18e340f6450fa2dc271349`  
		Last Modified: Sat, 02 Feb 2019 09:03:30 GMT  
		Size: 6.4 KB (6384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01d38f697671dbe0d3d29b24233777fe998d009ac879368c29b639153302af4b`  
		Last Modified: Sat, 02 Feb 2019 09:03:31 GMT  
		Size: 68.3 KB (68340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7d84de096f7fea4d68bea3f3a890a3ca73760a4c961e6f1324d9b22e69c4217`  
		Last Modified: Sat, 02 Feb 2019 09:03:31 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cf89af97b5c94cef488ff4e063cb7b81c68edabc62cdfba6772c9b11be47ef7`  
		Last Modified: Sat, 02 Feb 2019 09:03:30 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0-alpine` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:7a88585b6c5aa9f94f70a271e9c9506ad1f1b4df3eb1bc1717f023125238a3f9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2771143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b298c6e9946ad986a7f9ce05202deb8c2bdbbebe14c8f4d7d91196d2ed8ade6e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 31 Jan 2019 09:40:55 GMT
ADD file:3c5f57c6644886bbb8164b9aa4cd60e233be7da48b7194a04963a8e7de058e28 in / 
# Thu, 31 Jan 2019 09:40:56 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:40:57 GMT
CMD ["/bin/sh"]
# Sat, 02 Feb 2019 10:01:50 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Sat, 02 Feb 2019 10:01:54 GMT
RUN apk add --no-cache libssl1.1
# Sat, 02 Feb 2019 10:01:55 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 02 Feb 2019 10:01:57 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 02 Feb 2019 10:01:57 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 02 Feb 2019 10:02:26 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Sat, 02 Feb 2019 10:02:27 GMT
VOLUME [/spiped]
# Sat, 02 Feb 2019 10:02:28 GMT
WORKDIR /spiped
# Sat, 02 Feb 2019 10:02:29 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Sat, 02 Feb 2019 10:02:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Feb 2019 10:02:31 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:ee02fa18913c824d1d1c9b680f1a43dad343b9d6c086a6bc62e3361c3d3a2d63`  
		Last Modified: Thu, 31 Jan 2019 09:41:23 GMT  
		Size: 2.7 MB (2687895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afafa41235ea57b01b00eba47de1574777073a79c1d592c5709dfcbb3bd51f2a`  
		Last Modified: Thu, 31 Jan 2019 09:41:21 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24d04fa97998ab9fbb61929f183a7b0c6aedde636ed4504dcaa71e1c04bb4dd2`  
		Last Modified: Sat, 02 Feb 2019 10:02:48 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e04842db82ddc8dfd44430afae1e47420cc0225193c0db96a7e77343b4afef4c`  
		Last Modified: Sat, 02 Feb 2019 10:02:48 GMT  
		Size: 6.4 KB (6392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7111107af9e3445ed6b39f026e914a0a147f023aa0066a6b8d5f374de45c9f65`  
		Last Modified: Sat, 02 Feb 2019 10:02:48 GMT  
		Size: 75.0 KB (74996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68ebb2c461608b2018184ec5f905795c3161a19f135acc1931fdd69bd7bd3448`  
		Last Modified: Sat, 02 Feb 2019 10:02:48 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7a97d58ef94e726e107b19628ced3da2e1dcc491de35f7da8ef4b88933022b`  
		Last Modified: Sat, 02 Feb 2019 10:02:48 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0-alpine` - linux; 386

```console
$ docker pull spiped@sha256:fdfb1543ab4f7bbc17e1087c4043115debaa09d726b740d87e745dafe9975557
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2845488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df2f2d387bc6207a32ddb2891135333659214ba7a8731f2d8db952f1d0f1bd4f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 31 Jan 2019 11:38:57 GMT
ADD file:738a04760a9f9a1cd919954db42a0da78c644e7024240160c54723bf1dd479e9 in / 
# Thu, 31 Jan 2019 11:38:57 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 11:38:57 GMT
CMD ["/bin/sh"]
# Sat, 02 Feb 2019 12:21:31 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Sat, 02 Feb 2019 12:21:32 GMT
RUN apk add --no-cache libssl1.1
# Sat, 02 Feb 2019 12:21:32 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 02 Feb 2019 12:21:32 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 02 Feb 2019 12:21:32 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 02 Feb 2019 12:21:43 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Sat, 02 Feb 2019 12:21:43 GMT
VOLUME [/spiped]
# Sat, 02 Feb 2019 12:21:43 GMT
WORKDIR /spiped
# Sat, 02 Feb 2019 12:21:43 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Sat, 02 Feb 2019 12:21:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Feb 2019 12:21:44 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:bcb4f889a459d231e71d88c93174eec5edef928ab1e2481f8b0074076ee934a6`  
		Last Modified: Thu, 31 Jan 2019 11:39:11 GMT  
		Size: 2.7 MB (2749336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4099db9edcf638f20df22a899890483f7c152af59ca7a2de9c3b24c53c509e7`  
		Last Modified: Thu, 31 Jan 2019 11:39:11 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74953bd4bb2809f90482409754dfbad5f6ea1a86009c5956161c46bf10c4f3de`  
		Last Modified: Sat, 02 Feb 2019 12:21:53 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ce67f311c3a7691ddc165a35077167c09585e1254cb191dbf7fc45dfb5e1d00`  
		Last Modified: Sat, 02 Feb 2019 12:21:52 GMT  
		Size: 6.4 KB (6394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:602c96ef375d5403081e00b6c33e91d936eb3dcf141b85ac0c390457672fde25`  
		Last Modified: Sat, 02 Feb 2019 12:21:52 GMT  
		Size: 87.9 KB (87894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36853a433a0966015517dc72b44ace9477d0afd65770654be7b6785dfa0913af`  
		Last Modified: Sat, 02 Feb 2019 12:21:52 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1600908f2527c202b3c00a2f002a87a8601d4c3609fe5d5f9e4a00dfc72858ac`  
		Last Modified: Sat, 02 Feb 2019 12:21:52 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0-alpine` - linux; ppc64le

```console
$ docker pull spiped@sha256:4ef3317b82851276c8572f0abd9e00717fdb015b6de9aa88d3d987e08bbe083e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2875663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a39874959032067e3d0be557ef5da66e26903647ce5f2fa93df5099587ecad52`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 31 Jan 2019 09:21:00 GMT
ADD file:22eef5b6e842546e68660322c07723d9794ca0eb45ac3acf95381e2591f455c6 in / 
# Thu, 31 Jan 2019 09:21:01 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:21:02 GMT
CMD ["/bin/sh"]
# Sat, 02 Feb 2019 09:23:30 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Sat, 02 Feb 2019 09:23:39 GMT
RUN apk add --no-cache libssl1.1
# Sat, 02 Feb 2019 09:23:43 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 02 Feb 2019 09:23:51 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 02 Feb 2019 09:23:54 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 02 Feb 2019 09:24:13 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Sat, 02 Feb 2019 09:24:15 GMT
VOLUME [/spiped]
# Sat, 02 Feb 2019 09:24:19 GMT
WORKDIR /spiped
# Sat, 02 Feb 2019 09:24:20 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Sat, 02 Feb 2019 09:24:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Feb 2019 09:24:27 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:3261f066f954b13c338d7bebabcc22a2a4037bfe4c6989b60595b13ac629445f`  
		Last Modified: Thu, 31 Jan 2019 09:21:21 GMT  
		Size: 2.8 MB (2778665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff5f92c7db4d11f3356e3243a8a330a8eb64fcde5310599933270ad96a2e3dc`  
		Last Modified: Thu, 31 Jan 2019 09:21:22 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49a14c5852ca3b4659ab33b00f720399f64bb00bfa56223b6b150e538a1de215`  
		Last Modified: Sat, 02 Feb 2019 09:24:49 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e8dfd7cd5f4180949045c61c2f2bfd1163266f9a7e5332b2a77b083439f6210`  
		Last Modified: Sat, 02 Feb 2019 09:24:49 GMT  
		Size: 6.4 KB (6397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91bc5854abba6d2ac2bf9e4adb568d1b1faaff7558c38a04fe5394dd862ecce7`  
		Last Modified: Sat, 02 Feb 2019 09:24:50 GMT  
		Size: 88.7 KB (88677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9cd23d109f938ea4b2308c95a0c064d7223944628b76b91f26fdd2bd259bfaa`  
		Last Modified: Sat, 02 Feb 2019 09:24:49 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a20772ff227e84b891d517713920b3d0795c32aad1d055372921699b4ccff1c`  
		Last Modified: Sat, 02 Feb 2019 09:24:49 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0-alpine` - linux; s390x

```console
$ docker pull spiped@sha256:15b79efaaf5bcbeec42b587c3c714184dcb30a6947c875a5b74fd3d1d6b219ae
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2622506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:591d07ea89219836e8505595171bd9795437abb3db71cfe5a55eb009ce296d29`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 31 Jan 2019 12:41:43 GMT
ADD file:fdc9dcc7d932bb46a3992371288a0f80814bfb29ae8c8f1d860b6aabf0e9f893 in / 
# Thu, 31 Jan 2019 12:41:44 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 12:41:44 GMT
CMD ["/bin/sh"]
# Sat, 02 Feb 2019 13:22:43 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Sat, 02 Feb 2019 13:22:50 GMT
RUN apk add --no-cache libssl1.1
# Sat, 02 Feb 2019 13:22:51 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 02 Feb 2019 13:22:53 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 02 Feb 2019 13:22:54 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 02 Feb 2019 13:23:40 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Sat, 02 Feb 2019 13:23:41 GMT
VOLUME [/spiped]
# Sat, 02 Feb 2019 13:23:42 GMT
WORKDIR /spiped
# Sat, 02 Feb 2019 13:23:44 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Sat, 02 Feb 2019 13:23:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Feb 2019 13:23:45 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:11396e2e564eba3ffa05ba6ea52a711025650a7cfe1387d6a59fdd9a90f2e024`  
		Last Modified: Thu, 31 Jan 2019 12:42:01 GMT  
		Size: 2.5 MB (2541348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e33c309129e1ab066f8f8e65929ab8246c5ae9ec293c9522c706fa70dfa0a4c6`  
		Last Modified: Thu, 31 Jan 2019 12:42:01 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:948a1bc44bf3b809854407c53567c9ee1f93f96edad74f215475324bf72da82f`  
		Last Modified: Sat, 02 Feb 2019 13:24:27 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba3002c4d467d95b290475cf7850de1b82b8c2969e10fe63357862503f47fcde`  
		Last Modified: Sat, 02 Feb 2019 13:24:27 GMT  
		Size: 6.4 KB (6393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb360680d979e80990b0c799035a73af21cb9184e8ed66b9b504233350927b88`  
		Last Modified: Sat, 02 Feb 2019 13:24:29 GMT  
		Size: 72.9 KB (72900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:930b40a4d76b75b700f3209b8cd973a745c33934aa5b66b10b5f119c68f96d37`  
		Last Modified: Sat, 02 Feb 2019 13:24:28 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f87fe31681ef3b394697f5f5b962346e5d574df2c25e1c6b25cd3d87a40c9935`  
		Last Modified: Sat, 02 Feb 2019 13:24:27 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1.6-alpine`

```console
$ docker pull spiped@sha256:db28e8f8aa4a305518b55a5d19e87900823501f53a491000c3551350dcd896c8
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
$ docker pull spiped@sha256:3a67e6f5190d6c33b6de7e831ce52baa8627a4db9a4b5ad17780ff3cec7d9ea5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2617388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:830fee77b3f15d7f583212fc665f779ceba0323b9521d31bc3ef10ce7de53f91`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 31 Jan 2019 08:50:08 GMT
ADD file:64d5aa5dc08c958468e7c857c35d32a3e87c88800152264432930898defa10c5 in / 
# Thu, 31 Jan 2019 08:50:09 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 08:50:09 GMT
CMD ["/bin/sh"]
# Sat, 02 Feb 2019 09:03:00 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Sat, 02 Feb 2019 09:03:01 GMT
RUN apk add --no-cache libssl1.1
# Sat, 02 Feb 2019 09:03:02 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 02 Feb 2019 09:03:02 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 02 Feb 2019 09:03:02 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 02 Feb 2019 09:03:19 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Sat, 02 Feb 2019 09:03:20 GMT
VOLUME [/spiped]
# Sat, 02 Feb 2019 09:03:20 GMT
WORKDIR /spiped
# Sat, 02 Feb 2019 09:03:21 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Sat, 02 Feb 2019 09:03:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Feb 2019 09:03:22 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:05276f4299f299c4d5ca6776672dcf52f03189b7004e747fd1c2b759d9157831`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 2.5 MB (2540746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5657e63df53674891643732c236f7932524d1710ce42d916bb3c889a8652df67`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd0520f1a1117c483d2e0c59bf3e3e3bb816423e2e22e1988e1a2a4067f8942b`  
		Last Modified: Sat, 02 Feb 2019 09:03:31 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e456175b91916fc727a7c863d10dd28e0a0019adc18e340f6450fa2dc271349`  
		Last Modified: Sat, 02 Feb 2019 09:03:30 GMT  
		Size: 6.4 KB (6384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01d38f697671dbe0d3d29b24233777fe998d009ac879368c29b639153302af4b`  
		Last Modified: Sat, 02 Feb 2019 09:03:31 GMT  
		Size: 68.3 KB (68340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7d84de096f7fea4d68bea3f3a890a3ca73760a4c961e6f1324d9b22e69c4217`  
		Last Modified: Sat, 02 Feb 2019 09:03:31 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cf89af97b5c94cef488ff4e063cb7b81c68edabc62cdfba6772c9b11be47ef7`  
		Last Modified: Sat, 02 Feb 2019 09:03:30 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6-alpine` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:7a88585b6c5aa9f94f70a271e9c9506ad1f1b4df3eb1bc1717f023125238a3f9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2771143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b298c6e9946ad986a7f9ce05202deb8c2bdbbebe14c8f4d7d91196d2ed8ade6e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 31 Jan 2019 09:40:55 GMT
ADD file:3c5f57c6644886bbb8164b9aa4cd60e233be7da48b7194a04963a8e7de058e28 in / 
# Thu, 31 Jan 2019 09:40:56 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:40:57 GMT
CMD ["/bin/sh"]
# Sat, 02 Feb 2019 10:01:50 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Sat, 02 Feb 2019 10:01:54 GMT
RUN apk add --no-cache libssl1.1
# Sat, 02 Feb 2019 10:01:55 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 02 Feb 2019 10:01:57 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 02 Feb 2019 10:01:57 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 02 Feb 2019 10:02:26 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Sat, 02 Feb 2019 10:02:27 GMT
VOLUME [/spiped]
# Sat, 02 Feb 2019 10:02:28 GMT
WORKDIR /spiped
# Sat, 02 Feb 2019 10:02:29 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Sat, 02 Feb 2019 10:02:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Feb 2019 10:02:31 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:ee02fa18913c824d1d1c9b680f1a43dad343b9d6c086a6bc62e3361c3d3a2d63`  
		Last Modified: Thu, 31 Jan 2019 09:41:23 GMT  
		Size: 2.7 MB (2687895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afafa41235ea57b01b00eba47de1574777073a79c1d592c5709dfcbb3bd51f2a`  
		Last Modified: Thu, 31 Jan 2019 09:41:21 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24d04fa97998ab9fbb61929f183a7b0c6aedde636ed4504dcaa71e1c04bb4dd2`  
		Last Modified: Sat, 02 Feb 2019 10:02:48 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e04842db82ddc8dfd44430afae1e47420cc0225193c0db96a7e77343b4afef4c`  
		Last Modified: Sat, 02 Feb 2019 10:02:48 GMT  
		Size: 6.4 KB (6392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7111107af9e3445ed6b39f026e914a0a147f023aa0066a6b8d5f374de45c9f65`  
		Last Modified: Sat, 02 Feb 2019 10:02:48 GMT  
		Size: 75.0 KB (74996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68ebb2c461608b2018184ec5f905795c3161a19f135acc1931fdd69bd7bd3448`  
		Last Modified: Sat, 02 Feb 2019 10:02:48 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7a97d58ef94e726e107b19628ced3da2e1dcc491de35f7da8ef4b88933022b`  
		Last Modified: Sat, 02 Feb 2019 10:02:48 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6-alpine` - linux; 386

```console
$ docker pull spiped@sha256:fdfb1543ab4f7bbc17e1087c4043115debaa09d726b740d87e745dafe9975557
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2845488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df2f2d387bc6207a32ddb2891135333659214ba7a8731f2d8db952f1d0f1bd4f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 31 Jan 2019 11:38:57 GMT
ADD file:738a04760a9f9a1cd919954db42a0da78c644e7024240160c54723bf1dd479e9 in / 
# Thu, 31 Jan 2019 11:38:57 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 11:38:57 GMT
CMD ["/bin/sh"]
# Sat, 02 Feb 2019 12:21:31 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Sat, 02 Feb 2019 12:21:32 GMT
RUN apk add --no-cache libssl1.1
# Sat, 02 Feb 2019 12:21:32 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 02 Feb 2019 12:21:32 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 02 Feb 2019 12:21:32 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 02 Feb 2019 12:21:43 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Sat, 02 Feb 2019 12:21:43 GMT
VOLUME [/spiped]
# Sat, 02 Feb 2019 12:21:43 GMT
WORKDIR /spiped
# Sat, 02 Feb 2019 12:21:43 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Sat, 02 Feb 2019 12:21:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Feb 2019 12:21:44 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:bcb4f889a459d231e71d88c93174eec5edef928ab1e2481f8b0074076ee934a6`  
		Last Modified: Thu, 31 Jan 2019 11:39:11 GMT  
		Size: 2.7 MB (2749336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4099db9edcf638f20df22a899890483f7c152af59ca7a2de9c3b24c53c509e7`  
		Last Modified: Thu, 31 Jan 2019 11:39:11 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74953bd4bb2809f90482409754dfbad5f6ea1a86009c5956161c46bf10c4f3de`  
		Last Modified: Sat, 02 Feb 2019 12:21:53 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ce67f311c3a7691ddc165a35077167c09585e1254cb191dbf7fc45dfb5e1d00`  
		Last Modified: Sat, 02 Feb 2019 12:21:52 GMT  
		Size: 6.4 KB (6394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:602c96ef375d5403081e00b6c33e91d936eb3dcf141b85ac0c390457672fde25`  
		Last Modified: Sat, 02 Feb 2019 12:21:52 GMT  
		Size: 87.9 KB (87894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36853a433a0966015517dc72b44ace9477d0afd65770654be7b6785dfa0913af`  
		Last Modified: Sat, 02 Feb 2019 12:21:52 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1600908f2527c202b3c00a2f002a87a8601d4c3609fe5d5f9e4a00dfc72858ac`  
		Last Modified: Sat, 02 Feb 2019 12:21:52 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6-alpine` - linux; ppc64le

```console
$ docker pull spiped@sha256:4ef3317b82851276c8572f0abd9e00717fdb015b6de9aa88d3d987e08bbe083e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2875663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a39874959032067e3d0be557ef5da66e26903647ce5f2fa93df5099587ecad52`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 31 Jan 2019 09:21:00 GMT
ADD file:22eef5b6e842546e68660322c07723d9794ca0eb45ac3acf95381e2591f455c6 in / 
# Thu, 31 Jan 2019 09:21:01 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:21:02 GMT
CMD ["/bin/sh"]
# Sat, 02 Feb 2019 09:23:30 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Sat, 02 Feb 2019 09:23:39 GMT
RUN apk add --no-cache libssl1.1
# Sat, 02 Feb 2019 09:23:43 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 02 Feb 2019 09:23:51 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 02 Feb 2019 09:23:54 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 02 Feb 2019 09:24:13 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Sat, 02 Feb 2019 09:24:15 GMT
VOLUME [/spiped]
# Sat, 02 Feb 2019 09:24:19 GMT
WORKDIR /spiped
# Sat, 02 Feb 2019 09:24:20 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Sat, 02 Feb 2019 09:24:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Feb 2019 09:24:27 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:3261f066f954b13c338d7bebabcc22a2a4037bfe4c6989b60595b13ac629445f`  
		Last Modified: Thu, 31 Jan 2019 09:21:21 GMT  
		Size: 2.8 MB (2778665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff5f92c7db4d11f3356e3243a8a330a8eb64fcde5310599933270ad96a2e3dc`  
		Last Modified: Thu, 31 Jan 2019 09:21:22 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49a14c5852ca3b4659ab33b00f720399f64bb00bfa56223b6b150e538a1de215`  
		Last Modified: Sat, 02 Feb 2019 09:24:49 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e8dfd7cd5f4180949045c61c2f2bfd1163266f9a7e5332b2a77b083439f6210`  
		Last Modified: Sat, 02 Feb 2019 09:24:49 GMT  
		Size: 6.4 KB (6397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91bc5854abba6d2ac2bf9e4adb568d1b1faaff7558c38a04fe5394dd862ecce7`  
		Last Modified: Sat, 02 Feb 2019 09:24:50 GMT  
		Size: 88.7 KB (88677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9cd23d109f938ea4b2308c95a0c064d7223944628b76b91f26fdd2bd259bfaa`  
		Last Modified: Sat, 02 Feb 2019 09:24:49 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a20772ff227e84b891d517713920b3d0795c32aad1d055372921699b4ccff1c`  
		Last Modified: Sat, 02 Feb 2019 09:24:49 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6-alpine` - linux; s390x

```console
$ docker pull spiped@sha256:15b79efaaf5bcbeec42b587c3c714184dcb30a6947c875a5b74fd3d1d6b219ae
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2622506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:591d07ea89219836e8505595171bd9795437abb3db71cfe5a55eb009ce296d29`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 31 Jan 2019 12:41:43 GMT
ADD file:fdc9dcc7d932bb46a3992371288a0f80814bfb29ae8c8f1d860b6aabf0e9f893 in / 
# Thu, 31 Jan 2019 12:41:44 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 12:41:44 GMT
CMD ["/bin/sh"]
# Sat, 02 Feb 2019 13:22:43 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Sat, 02 Feb 2019 13:22:50 GMT
RUN apk add --no-cache libssl1.1
# Sat, 02 Feb 2019 13:22:51 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 02 Feb 2019 13:22:53 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 02 Feb 2019 13:22:54 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 02 Feb 2019 13:23:40 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Sat, 02 Feb 2019 13:23:41 GMT
VOLUME [/spiped]
# Sat, 02 Feb 2019 13:23:42 GMT
WORKDIR /spiped
# Sat, 02 Feb 2019 13:23:44 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Sat, 02 Feb 2019 13:23:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Feb 2019 13:23:45 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:11396e2e564eba3ffa05ba6ea52a711025650a7cfe1387d6a59fdd9a90f2e024`  
		Last Modified: Thu, 31 Jan 2019 12:42:01 GMT  
		Size: 2.5 MB (2541348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e33c309129e1ab066f8f8e65929ab8246c5ae9ec293c9522c706fa70dfa0a4c6`  
		Last Modified: Thu, 31 Jan 2019 12:42:01 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:948a1bc44bf3b809854407c53567c9ee1f93f96edad74f215475324bf72da82f`  
		Last Modified: Sat, 02 Feb 2019 13:24:27 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba3002c4d467d95b290475cf7850de1b82b8c2969e10fe63357862503f47fcde`  
		Last Modified: Sat, 02 Feb 2019 13:24:27 GMT  
		Size: 6.4 KB (6393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb360680d979e80990b0c799035a73af21cb9184e8ed66b9b504233350927b88`  
		Last Modified: Sat, 02 Feb 2019 13:24:29 GMT  
		Size: 72.9 KB (72900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:930b40a4d76b75b700f3209b8cd973a745c33934aa5b66b10b5f119c68f96d37`  
		Last Modified: Sat, 02 Feb 2019 13:24:28 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f87fe31681ef3b394697f5f5b962346e5d574df2c25e1c6b25cd3d87a40c9935`  
		Last Modified: Sat, 02 Feb 2019 13:24:27 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1-alpine`

```console
$ docker pull spiped@sha256:db28e8f8aa4a305518b55a5d19e87900823501f53a491000c3551350dcd896c8
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
$ docker pull spiped@sha256:3a67e6f5190d6c33b6de7e831ce52baa8627a4db9a4b5ad17780ff3cec7d9ea5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2617388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:830fee77b3f15d7f583212fc665f779ceba0323b9521d31bc3ef10ce7de53f91`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 31 Jan 2019 08:50:08 GMT
ADD file:64d5aa5dc08c958468e7c857c35d32a3e87c88800152264432930898defa10c5 in / 
# Thu, 31 Jan 2019 08:50:09 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 08:50:09 GMT
CMD ["/bin/sh"]
# Sat, 02 Feb 2019 09:03:00 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Sat, 02 Feb 2019 09:03:01 GMT
RUN apk add --no-cache libssl1.1
# Sat, 02 Feb 2019 09:03:02 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 02 Feb 2019 09:03:02 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 02 Feb 2019 09:03:02 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 02 Feb 2019 09:03:19 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Sat, 02 Feb 2019 09:03:20 GMT
VOLUME [/spiped]
# Sat, 02 Feb 2019 09:03:20 GMT
WORKDIR /spiped
# Sat, 02 Feb 2019 09:03:21 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Sat, 02 Feb 2019 09:03:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Feb 2019 09:03:22 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:05276f4299f299c4d5ca6776672dcf52f03189b7004e747fd1c2b759d9157831`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 2.5 MB (2540746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5657e63df53674891643732c236f7932524d1710ce42d916bb3c889a8652df67`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd0520f1a1117c483d2e0c59bf3e3e3bb816423e2e22e1988e1a2a4067f8942b`  
		Last Modified: Sat, 02 Feb 2019 09:03:31 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e456175b91916fc727a7c863d10dd28e0a0019adc18e340f6450fa2dc271349`  
		Last Modified: Sat, 02 Feb 2019 09:03:30 GMT  
		Size: 6.4 KB (6384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01d38f697671dbe0d3d29b24233777fe998d009ac879368c29b639153302af4b`  
		Last Modified: Sat, 02 Feb 2019 09:03:31 GMT  
		Size: 68.3 KB (68340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7d84de096f7fea4d68bea3f3a890a3ca73760a4c961e6f1324d9b22e69c4217`  
		Last Modified: Sat, 02 Feb 2019 09:03:31 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cf89af97b5c94cef488ff4e063cb7b81c68edabc62cdfba6772c9b11be47ef7`  
		Last Modified: Sat, 02 Feb 2019 09:03:30 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1-alpine` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:7a88585b6c5aa9f94f70a271e9c9506ad1f1b4df3eb1bc1717f023125238a3f9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2771143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b298c6e9946ad986a7f9ce05202deb8c2bdbbebe14c8f4d7d91196d2ed8ade6e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 31 Jan 2019 09:40:55 GMT
ADD file:3c5f57c6644886bbb8164b9aa4cd60e233be7da48b7194a04963a8e7de058e28 in / 
# Thu, 31 Jan 2019 09:40:56 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:40:57 GMT
CMD ["/bin/sh"]
# Sat, 02 Feb 2019 10:01:50 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Sat, 02 Feb 2019 10:01:54 GMT
RUN apk add --no-cache libssl1.1
# Sat, 02 Feb 2019 10:01:55 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 02 Feb 2019 10:01:57 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 02 Feb 2019 10:01:57 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 02 Feb 2019 10:02:26 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Sat, 02 Feb 2019 10:02:27 GMT
VOLUME [/spiped]
# Sat, 02 Feb 2019 10:02:28 GMT
WORKDIR /spiped
# Sat, 02 Feb 2019 10:02:29 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Sat, 02 Feb 2019 10:02:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Feb 2019 10:02:31 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:ee02fa18913c824d1d1c9b680f1a43dad343b9d6c086a6bc62e3361c3d3a2d63`  
		Last Modified: Thu, 31 Jan 2019 09:41:23 GMT  
		Size: 2.7 MB (2687895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afafa41235ea57b01b00eba47de1574777073a79c1d592c5709dfcbb3bd51f2a`  
		Last Modified: Thu, 31 Jan 2019 09:41:21 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24d04fa97998ab9fbb61929f183a7b0c6aedde636ed4504dcaa71e1c04bb4dd2`  
		Last Modified: Sat, 02 Feb 2019 10:02:48 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e04842db82ddc8dfd44430afae1e47420cc0225193c0db96a7e77343b4afef4c`  
		Last Modified: Sat, 02 Feb 2019 10:02:48 GMT  
		Size: 6.4 KB (6392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7111107af9e3445ed6b39f026e914a0a147f023aa0066a6b8d5f374de45c9f65`  
		Last Modified: Sat, 02 Feb 2019 10:02:48 GMT  
		Size: 75.0 KB (74996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68ebb2c461608b2018184ec5f905795c3161a19f135acc1931fdd69bd7bd3448`  
		Last Modified: Sat, 02 Feb 2019 10:02:48 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7a97d58ef94e726e107b19628ced3da2e1dcc491de35f7da8ef4b88933022b`  
		Last Modified: Sat, 02 Feb 2019 10:02:48 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1-alpine` - linux; 386

```console
$ docker pull spiped@sha256:fdfb1543ab4f7bbc17e1087c4043115debaa09d726b740d87e745dafe9975557
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2845488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df2f2d387bc6207a32ddb2891135333659214ba7a8731f2d8db952f1d0f1bd4f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 31 Jan 2019 11:38:57 GMT
ADD file:738a04760a9f9a1cd919954db42a0da78c644e7024240160c54723bf1dd479e9 in / 
# Thu, 31 Jan 2019 11:38:57 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 11:38:57 GMT
CMD ["/bin/sh"]
# Sat, 02 Feb 2019 12:21:31 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Sat, 02 Feb 2019 12:21:32 GMT
RUN apk add --no-cache libssl1.1
# Sat, 02 Feb 2019 12:21:32 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 02 Feb 2019 12:21:32 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 02 Feb 2019 12:21:32 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 02 Feb 2019 12:21:43 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Sat, 02 Feb 2019 12:21:43 GMT
VOLUME [/spiped]
# Sat, 02 Feb 2019 12:21:43 GMT
WORKDIR /spiped
# Sat, 02 Feb 2019 12:21:43 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Sat, 02 Feb 2019 12:21:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Feb 2019 12:21:44 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:bcb4f889a459d231e71d88c93174eec5edef928ab1e2481f8b0074076ee934a6`  
		Last Modified: Thu, 31 Jan 2019 11:39:11 GMT  
		Size: 2.7 MB (2749336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4099db9edcf638f20df22a899890483f7c152af59ca7a2de9c3b24c53c509e7`  
		Last Modified: Thu, 31 Jan 2019 11:39:11 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74953bd4bb2809f90482409754dfbad5f6ea1a86009c5956161c46bf10c4f3de`  
		Last Modified: Sat, 02 Feb 2019 12:21:53 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ce67f311c3a7691ddc165a35077167c09585e1254cb191dbf7fc45dfb5e1d00`  
		Last Modified: Sat, 02 Feb 2019 12:21:52 GMT  
		Size: 6.4 KB (6394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:602c96ef375d5403081e00b6c33e91d936eb3dcf141b85ac0c390457672fde25`  
		Last Modified: Sat, 02 Feb 2019 12:21:52 GMT  
		Size: 87.9 KB (87894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36853a433a0966015517dc72b44ace9477d0afd65770654be7b6785dfa0913af`  
		Last Modified: Sat, 02 Feb 2019 12:21:52 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1600908f2527c202b3c00a2f002a87a8601d4c3609fe5d5f9e4a00dfc72858ac`  
		Last Modified: Sat, 02 Feb 2019 12:21:52 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1-alpine` - linux; ppc64le

```console
$ docker pull spiped@sha256:4ef3317b82851276c8572f0abd9e00717fdb015b6de9aa88d3d987e08bbe083e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2875663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a39874959032067e3d0be557ef5da66e26903647ce5f2fa93df5099587ecad52`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 31 Jan 2019 09:21:00 GMT
ADD file:22eef5b6e842546e68660322c07723d9794ca0eb45ac3acf95381e2591f455c6 in / 
# Thu, 31 Jan 2019 09:21:01 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:21:02 GMT
CMD ["/bin/sh"]
# Sat, 02 Feb 2019 09:23:30 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Sat, 02 Feb 2019 09:23:39 GMT
RUN apk add --no-cache libssl1.1
# Sat, 02 Feb 2019 09:23:43 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 02 Feb 2019 09:23:51 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 02 Feb 2019 09:23:54 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 02 Feb 2019 09:24:13 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Sat, 02 Feb 2019 09:24:15 GMT
VOLUME [/spiped]
# Sat, 02 Feb 2019 09:24:19 GMT
WORKDIR /spiped
# Sat, 02 Feb 2019 09:24:20 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Sat, 02 Feb 2019 09:24:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Feb 2019 09:24:27 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:3261f066f954b13c338d7bebabcc22a2a4037bfe4c6989b60595b13ac629445f`  
		Last Modified: Thu, 31 Jan 2019 09:21:21 GMT  
		Size: 2.8 MB (2778665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff5f92c7db4d11f3356e3243a8a330a8eb64fcde5310599933270ad96a2e3dc`  
		Last Modified: Thu, 31 Jan 2019 09:21:22 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49a14c5852ca3b4659ab33b00f720399f64bb00bfa56223b6b150e538a1de215`  
		Last Modified: Sat, 02 Feb 2019 09:24:49 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e8dfd7cd5f4180949045c61c2f2bfd1163266f9a7e5332b2a77b083439f6210`  
		Last Modified: Sat, 02 Feb 2019 09:24:49 GMT  
		Size: 6.4 KB (6397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91bc5854abba6d2ac2bf9e4adb568d1b1faaff7558c38a04fe5394dd862ecce7`  
		Last Modified: Sat, 02 Feb 2019 09:24:50 GMT  
		Size: 88.7 KB (88677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9cd23d109f938ea4b2308c95a0c064d7223944628b76b91f26fdd2bd259bfaa`  
		Last Modified: Sat, 02 Feb 2019 09:24:49 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a20772ff227e84b891d517713920b3d0795c32aad1d055372921699b4ccff1c`  
		Last Modified: Sat, 02 Feb 2019 09:24:49 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1-alpine` - linux; s390x

```console
$ docker pull spiped@sha256:15b79efaaf5bcbeec42b587c3c714184dcb30a6947c875a5b74fd3d1d6b219ae
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2622506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:591d07ea89219836e8505595171bd9795437abb3db71cfe5a55eb009ce296d29`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 31 Jan 2019 12:41:43 GMT
ADD file:fdc9dcc7d932bb46a3992371288a0f80814bfb29ae8c8f1d860b6aabf0e9f893 in / 
# Thu, 31 Jan 2019 12:41:44 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 12:41:44 GMT
CMD ["/bin/sh"]
# Sat, 02 Feb 2019 13:22:43 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Sat, 02 Feb 2019 13:22:50 GMT
RUN apk add --no-cache libssl1.1
# Sat, 02 Feb 2019 13:22:51 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 02 Feb 2019 13:22:53 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 02 Feb 2019 13:22:54 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 02 Feb 2019 13:23:40 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Sat, 02 Feb 2019 13:23:41 GMT
VOLUME [/spiped]
# Sat, 02 Feb 2019 13:23:42 GMT
WORKDIR /spiped
# Sat, 02 Feb 2019 13:23:44 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Sat, 02 Feb 2019 13:23:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Feb 2019 13:23:45 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:11396e2e564eba3ffa05ba6ea52a711025650a7cfe1387d6a59fdd9a90f2e024`  
		Last Modified: Thu, 31 Jan 2019 12:42:01 GMT  
		Size: 2.5 MB (2541348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e33c309129e1ab066f8f8e65929ab8246c5ae9ec293c9522c706fa70dfa0a4c6`  
		Last Modified: Thu, 31 Jan 2019 12:42:01 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:948a1bc44bf3b809854407c53567c9ee1f93f96edad74f215475324bf72da82f`  
		Last Modified: Sat, 02 Feb 2019 13:24:27 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba3002c4d467d95b290475cf7850de1b82b8c2969e10fe63357862503f47fcde`  
		Last Modified: Sat, 02 Feb 2019 13:24:27 GMT  
		Size: 6.4 KB (6393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb360680d979e80990b0c799035a73af21cb9184e8ed66b9b504233350927b88`  
		Last Modified: Sat, 02 Feb 2019 13:24:29 GMT  
		Size: 72.9 KB (72900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:930b40a4d76b75b700f3209b8cd973a745c33934aa5b66b10b5f119c68f96d37`  
		Last Modified: Sat, 02 Feb 2019 13:24:28 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f87fe31681ef3b394697f5f5b962346e5d574df2c25e1c6b25cd3d87a40c9935`  
		Last Modified: Sat, 02 Feb 2019 13:24:27 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:alpine`

```console
$ docker pull spiped@sha256:db28e8f8aa4a305518b55a5d19e87900823501f53a491000c3551350dcd896c8
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
$ docker pull spiped@sha256:3a67e6f5190d6c33b6de7e831ce52baa8627a4db9a4b5ad17780ff3cec7d9ea5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2617388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:830fee77b3f15d7f583212fc665f779ceba0323b9521d31bc3ef10ce7de53f91`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 31 Jan 2019 08:50:08 GMT
ADD file:64d5aa5dc08c958468e7c857c35d32a3e87c88800152264432930898defa10c5 in / 
# Thu, 31 Jan 2019 08:50:09 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 08:50:09 GMT
CMD ["/bin/sh"]
# Sat, 02 Feb 2019 09:03:00 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Sat, 02 Feb 2019 09:03:01 GMT
RUN apk add --no-cache libssl1.1
# Sat, 02 Feb 2019 09:03:02 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 02 Feb 2019 09:03:02 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 02 Feb 2019 09:03:02 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 02 Feb 2019 09:03:19 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Sat, 02 Feb 2019 09:03:20 GMT
VOLUME [/spiped]
# Sat, 02 Feb 2019 09:03:20 GMT
WORKDIR /spiped
# Sat, 02 Feb 2019 09:03:21 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Sat, 02 Feb 2019 09:03:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Feb 2019 09:03:22 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:05276f4299f299c4d5ca6776672dcf52f03189b7004e747fd1c2b759d9157831`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 2.5 MB (2540746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5657e63df53674891643732c236f7932524d1710ce42d916bb3c889a8652df67`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd0520f1a1117c483d2e0c59bf3e3e3bb816423e2e22e1988e1a2a4067f8942b`  
		Last Modified: Sat, 02 Feb 2019 09:03:31 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e456175b91916fc727a7c863d10dd28e0a0019adc18e340f6450fa2dc271349`  
		Last Modified: Sat, 02 Feb 2019 09:03:30 GMT  
		Size: 6.4 KB (6384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01d38f697671dbe0d3d29b24233777fe998d009ac879368c29b639153302af4b`  
		Last Modified: Sat, 02 Feb 2019 09:03:31 GMT  
		Size: 68.3 KB (68340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7d84de096f7fea4d68bea3f3a890a3ca73760a4c961e6f1324d9b22e69c4217`  
		Last Modified: Sat, 02 Feb 2019 09:03:31 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cf89af97b5c94cef488ff4e063cb7b81c68edabc62cdfba6772c9b11be47ef7`  
		Last Modified: Sat, 02 Feb 2019 09:03:30 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:alpine` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:7a88585b6c5aa9f94f70a271e9c9506ad1f1b4df3eb1bc1717f023125238a3f9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2771143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b298c6e9946ad986a7f9ce05202deb8c2bdbbebe14c8f4d7d91196d2ed8ade6e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 31 Jan 2019 09:40:55 GMT
ADD file:3c5f57c6644886bbb8164b9aa4cd60e233be7da48b7194a04963a8e7de058e28 in / 
# Thu, 31 Jan 2019 09:40:56 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:40:57 GMT
CMD ["/bin/sh"]
# Sat, 02 Feb 2019 10:01:50 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Sat, 02 Feb 2019 10:01:54 GMT
RUN apk add --no-cache libssl1.1
# Sat, 02 Feb 2019 10:01:55 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 02 Feb 2019 10:01:57 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 02 Feb 2019 10:01:57 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 02 Feb 2019 10:02:26 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Sat, 02 Feb 2019 10:02:27 GMT
VOLUME [/spiped]
# Sat, 02 Feb 2019 10:02:28 GMT
WORKDIR /spiped
# Sat, 02 Feb 2019 10:02:29 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Sat, 02 Feb 2019 10:02:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Feb 2019 10:02:31 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:ee02fa18913c824d1d1c9b680f1a43dad343b9d6c086a6bc62e3361c3d3a2d63`  
		Last Modified: Thu, 31 Jan 2019 09:41:23 GMT  
		Size: 2.7 MB (2687895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afafa41235ea57b01b00eba47de1574777073a79c1d592c5709dfcbb3bd51f2a`  
		Last Modified: Thu, 31 Jan 2019 09:41:21 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24d04fa97998ab9fbb61929f183a7b0c6aedde636ed4504dcaa71e1c04bb4dd2`  
		Last Modified: Sat, 02 Feb 2019 10:02:48 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e04842db82ddc8dfd44430afae1e47420cc0225193c0db96a7e77343b4afef4c`  
		Last Modified: Sat, 02 Feb 2019 10:02:48 GMT  
		Size: 6.4 KB (6392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7111107af9e3445ed6b39f026e914a0a147f023aa0066a6b8d5f374de45c9f65`  
		Last Modified: Sat, 02 Feb 2019 10:02:48 GMT  
		Size: 75.0 KB (74996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68ebb2c461608b2018184ec5f905795c3161a19f135acc1931fdd69bd7bd3448`  
		Last Modified: Sat, 02 Feb 2019 10:02:48 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7a97d58ef94e726e107b19628ced3da2e1dcc491de35f7da8ef4b88933022b`  
		Last Modified: Sat, 02 Feb 2019 10:02:48 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:alpine` - linux; 386

```console
$ docker pull spiped@sha256:fdfb1543ab4f7bbc17e1087c4043115debaa09d726b740d87e745dafe9975557
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2845488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df2f2d387bc6207a32ddb2891135333659214ba7a8731f2d8db952f1d0f1bd4f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 31 Jan 2019 11:38:57 GMT
ADD file:738a04760a9f9a1cd919954db42a0da78c644e7024240160c54723bf1dd479e9 in / 
# Thu, 31 Jan 2019 11:38:57 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 11:38:57 GMT
CMD ["/bin/sh"]
# Sat, 02 Feb 2019 12:21:31 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Sat, 02 Feb 2019 12:21:32 GMT
RUN apk add --no-cache libssl1.1
# Sat, 02 Feb 2019 12:21:32 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 02 Feb 2019 12:21:32 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 02 Feb 2019 12:21:32 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 02 Feb 2019 12:21:43 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Sat, 02 Feb 2019 12:21:43 GMT
VOLUME [/spiped]
# Sat, 02 Feb 2019 12:21:43 GMT
WORKDIR /spiped
# Sat, 02 Feb 2019 12:21:43 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Sat, 02 Feb 2019 12:21:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Feb 2019 12:21:44 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:bcb4f889a459d231e71d88c93174eec5edef928ab1e2481f8b0074076ee934a6`  
		Last Modified: Thu, 31 Jan 2019 11:39:11 GMT  
		Size: 2.7 MB (2749336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4099db9edcf638f20df22a899890483f7c152af59ca7a2de9c3b24c53c509e7`  
		Last Modified: Thu, 31 Jan 2019 11:39:11 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74953bd4bb2809f90482409754dfbad5f6ea1a86009c5956161c46bf10c4f3de`  
		Last Modified: Sat, 02 Feb 2019 12:21:53 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ce67f311c3a7691ddc165a35077167c09585e1254cb191dbf7fc45dfb5e1d00`  
		Last Modified: Sat, 02 Feb 2019 12:21:52 GMT  
		Size: 6.4 KB (6394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:602c96ef375d5403081e00b6c33e91d936eb3dcf141b85ac0c390457672fde25`  
		Last Modified: Sat, 02 Feb 2019 12:21:52 GMT  
		Size: 87.9 KB (87894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36853a433a0966015517dc72b44ace9477d0afd65770654be7b6785dfa0913af`  
		Last Modified: Sat, 02 Feb 2019 12:21:52 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1600908f2527c202b3c00a2f002a87a8601d4c3609fe5d5f9e4a00dfc72858ac`  
		Last Modified: Sat, 02 Feb 2019 12:21:52 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:alpine` - linux; ppc64le

```console
$ docker pull spiped@sha256:4ef3317b82851276c8572f0abd9e00717fdb015b6de9aa88d3d987e08bbe083e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2875663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a39874959032067e3d0be557ef5da66e26903647ce5f2fa93df5099587ecad52`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 31 Jan 2019 09:21:00 GMT
ADD file:22eef5b6e842546e68660322c07723d9794ca0eb45ac3acf95381e2591f455c6 in / 
# Thu, 31 Jan 2019 09:21:01 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:21:02 GMT
CMD ["/bin/sh"]
# Sat, 02 Feb 2019 09:23:30 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Sat, 02 Feb 2019 09:23:39 GMT
RUN apk add --no-cache libssl1.1
# Sat, 02 Feb 2019 09:23:43 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 02 Feb 2019 09:23:51 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 02 Feb 2019 09:23:54 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 02 Feb 2019 09:24:13 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Sat, 02 Feb 2019 09:24:15 GMT
VOLUME [/spiped]
# Sat, 02 Feb 2019 09:24:19 GMT
WORKDIR /spiped
# Sat, 02 Feb 2019 09:24:20 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Sat, 02 Feb 2019 09:24:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Feb 2019 09:24:27 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:3261f066f954b13c338d7bebabcc22a2a4037bfe4c6989b60595b13ac629445f`  
		Last Modified: Thu, 31 Jan 2019 09:21:21 GMT  
		Size: 2.8 MB (2778665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff5f92c7db4d11f3356e3243a8a330a8eb64fcde5310599933270ad96a2e3dc`  
		Last Modified: Thu, 31 Jan 2019 09:21:22 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49a14c5852ca3b4659ab33b00f720399f64bb00bfa56223b6b150e538a1de215`  
		Last Modified: Sat, 02 Feb 2019 09:24:49 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e8dfd7cd5f4180949045c61c2f2bfd1163266f9a7e5332b2a77b083439f6210`  
		Last Modified: Sat, 02 Feb 2019 09:24:49 GMT  
		Size: 6.4 KB (6397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91bc5854abba6d2ac2bf9e4adb568d1b1faaff7558c38a04fe5394dd862ecce7`  
		Last Modified: Sat, 02 Feb 2019 09:24:50 GMT  
		Size: 88.7 KB (88677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9cd23d109f938ea4b2308c95a0c064d7223944628b76b91f26fdd2bd259bfaa`  
		Last Modified: Sat, 02 Feb 2019 09:24:49 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a20772ff227e84b891d517713920b3d0795c32aad1d055372921699b4ccff1c`  
		Last Modified: Sat, 02 Feb 2019 09:24:49 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:alpine` - linux; s390x

```console
$ docker pull spiped@sha256:15b79efaaf5bcbeec42b587c3c714184dcb30a6947c875a5b74fd3d1d6b219ae
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2622506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:591d07ea89219836e8505595171bd9795437abb3db71cfe5a55eb009ce296d29`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 31 Jan 2019 12:41:43 GMT
ADD file:fdc9dcc7d932bb46a3992371288a0f80814bfb29ae8c8f1d860b6aabf0e9f893 in / 
# Thu, 31 Jan 2019 12:41:44 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 12:41:44 GMT
CMD ["/bin/sh"]
# Sat, 02 Feb 2019 13:22:43 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Sat, 02 Feb 2019 13:22:50 GMT
RUN apk add --no-cache libssl1.1
# Sat, 02 Feb 2019 13:22:51 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 02 Feb 2019 13:22:53 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 02 Feb 2019 13:22:54 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 02 Feb 2019 13:23:40 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Sat, 02 Feb 2019 13:23:41 GMT
VOLUME [/spiped]
# Sat, 02 Feb 2019 13:23:42 GMT
WORKDIR /spiped
# Sat, 02 Feb 2019 13:23:44 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Sat, 02 Feb 2019 13:23:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Feb 2019 13:23:45 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:11396e2e564eba3ffa05ba6ea52a711025650a7cfe1387d6a59fdd9a90f2e024`  
		Last Modified: Thu, 31 Jan 2019 12:42:01 GMT  
		Size: 2.5 MB (2541348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e33c309129e1ab066f8f8e65929ab8246c5ae9ec293c9522c706fa70dfa0a4c6`  
		Last Modified: Thu, 31 Jan 2019 12:42:01 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:948a1bc44bf3b809854407c53567c9ee1f93f96edad74f215475324bf72da82f`  
		Last Modified: Sat, 02 Feb 2019 13:24:27 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba3002c4d467d95b290475cf7850de1b82b8c2969e10fe63357862503f47fcde`  
		Last Modified: Sat, 02 Feb 2019 13:24:27 GMT  
		Size: 6.4 KB (6393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb360680d979e80990b0c799035a73af21cb9184e8ed66b9b504233350927b88`  
		Last Modified: Sat, 02 Feb 2019 13:24:29 GMT  
		Size: 72.9 KB (72900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:930b40a4d76b75b700f3209b8cd973a745c33934aa5b66b10b5f119c68f96d37`  
		Last Modified: Sat, 02 Feb 2019 13:24:28 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f87fe31681ef3b394697f5f5b962346e5d574df2c25e1c6b25cd3d87a40c9935`  
		Last Modified: Sat, 02 Feb 2019 13:24:27 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:latest`

```console
$ docker pull spiped@sha256:3d888da9c59bb734a0cac5e60e50cd3d9837fd295a449aac49d2c6313c57abd5
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
$ docker pull spiped@sha256:5d709fc85eebdbae907be642a06e16a5d727d9f581afe9724490be0683c03c63
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30271718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff80a72458c6bbeb4a37015ce261eb28da7eeb43f263629eeebb027ce1102a3c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 09:09:42 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 06 Feb 2019 09:09:46 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 09:09:46 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 06 Feb 2019 09:09:46 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 06 Feb 2019 09:09:46 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 06 Feb 2019 09:10:11 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 09:10:11 GMT
VOLUME [/spiped]
# Wed, 06 Feb 2019 09:10:11 GMT
WORKDIR /spiped
# Wed, 06 Feb 2019 09:10:11 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 06 Feb 2019 09:10:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 09:10:12 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75d552125b09b5ce62c23bd69b845a9e46e99b1254fff13f4ee42cbdbbe15197`  
		Last Modified: Wed, 06 Feb 2019 09:10:27 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:685dcba75b8d55c04f4a8f8c3bff87836f0f2e94e5c273025183dc77384abd16`  
		Last Modified: Wed, 06 Feb 2019 09:10:27 GMT  
		Size: 1.9 MB (1891371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55c5e70f16de59738a7499611ffcda1b821c356cd95a31005943b968dfc826eb`  
		Last Modified: Wed, 06 Feb 2019 09:10:28 GMT  
		Size: 5.9 MB (5877872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1d15ff32c20a17a9e845f7f07b43c253c4042bd3cce0e97b92d92570e983430`  
		Last Modified: Wed, 06 Feb 2019 09:10:27 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5ef9f86d65a7ecda74a2c29103ad7de47adc4a8009fbe17578818b949b334dc`  
		Last Modified: Wed, 06 Feb 2019 09:10:27 GMT  
		Size: 350.0 B  
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
$ docker pull spiped@sha256:589ccf3e70de7b31c385e893ecfa702513e626f7a6c78a35c4cbfe88f731f6d8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 MB (27212826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51636bc03e47395d43f474f876aeed4d831879380b31276082171f0a032ee996`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 00:48:03 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Thu, 07 Feb 2019 00:48:40 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 00:48:43 GMT
ENV SPIPED_VERSION=1.6.0
# Thu, 07 Feb 2019 00:48:46 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Thu, 07 Feb 2019 00:48:49 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Thu, 07 Feb 2019 00:52:54 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Thu, 07 Feb 2019 00:52:56 GMT
VOLUME [/spiped]
# Thu, 07 Feb 2019 00:52:58 GMT
WORKDIR /spiped
# Thu, 07 Feb 2019 00:52:59 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Thu, 07 Feb 2019 00:53:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 00:53:02 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3565ce75a9b04ef907f9bc8373e07c3a5669d47000f50af00854c5ece30b4a4`  
		Last Modified: Thu, 07 Feb 2019 00:53:24 GMT  
		Size: 1.8 KB (1761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f08c92f2efed3998738e623c117cecc8299ed309171bf2224efebdcd9f971a0`  
		Last Modified: Thu, 07 Feb 2019 00:53:24 GMT  
		Size: 1.6 MB (1623652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6192a6210aa3a18f33885a722cbeafe960c3994d8f7ba1c0b01111262dad6fe`  
		Last Modified: Thu, 07 Feb 2019 00:53:26 GMT  
		Size: 5.2 MB (5236809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5365da16b09c00f439a7f5beff12e8a8ab5c9717853c90eab7bf69c5ba2c16f9`  
		Last Modified: Thu, 07 Feb 2019 00:53:24 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24b24e845ce9f097523dd7e4d76d5ee62d75824eeed021243a74fda0bdd14147`  
		Last Modified: Thu, 07 Feb 2019 00:53:24 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; 386

```console
$ docker pull spiped@sha256:1d0f0761d772ce764ff8273bba45c129d513397b48501dd56dd3a23335c0e965
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34337907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba727e68aada81e87f61fe2799d3c0147c9d223a7d4e79e611e6f8121e45025a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 06 Feb 2019 12:01:21 GMT
ADD file:dc62e26c5e1fadea4cfe8bf1352ae3efb1fbb25f51c6499761d1dba06b3f436e in / 
# Wed, 06 Feb 2019 12:01:22 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 04:16:59 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Thu, 07 Feb 2019 04:17:04 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 04:17:04 GMT
ENV SPIPED_VERSION=1.6.0
# Thu, 07 Feb 2019 04:17:04 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Thu, 07 Feb 2019 04:17:04 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Thu, 07 Feb 2019 04:17:32 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Thu, 07 Feb 2019 04:17:32 GMT
VOLUME [/spiped]
# Thu, 07 Feb 2019 04:17:32 GMT
WORKDIR /spiped
# Thu, 07 Feb 2019 04:17:32 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Thu, 07 Feb 2019 04:17:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 04:17:33 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:fd883529ef37cccd489ccdd81e45760985451191b1dfe64c020b0d7a8325a679`  
		Last Modified: Wed, 06 Feb 2019 12:07:59 GMT  
		Size: 23.1 MB (23146972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d603b26d541b88a663dc9aefeda80fcc673c159bab26713b5db89ce4c51a970c`  
		Last Modified: Thu, 07 Feb 2019 04:17:44 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdcccf6eec324e16b9a306aa881627ce27634518c34cc78cc4c49796c4662113`  
		Last Modified: Thu, 07 Feb 2019 04:17:45 GMT  
		Size: 1.9 MB (1885388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a377e7229cf18d23533a51223c10017210f75f770d22b5aee62a56d54d98def5`  
		Last Modified: Thu, 07 Feb 2019 04:17:47 GMT  
		Size: 9.3 MB (9303367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d00974c4f0044d9ae7d15cb60513bbb002ff9d2b272caa3aeb3ea7cb05aff4e`  
		Last Modified: Thu, 07 Feb 2019 04:17:44 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c4fcc8a1ce5e135c14654cec76a519363bd8c6ce9e41b4b744d9e121110acfd`  
		Last Modified: Thu, 07 Feb 2019 04:17:44 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; ppc64le

```console
$ docker pull spiped@sha256:d061004209596f52125bb924a7ff4ccbc54ff38d1619c56aa7060f27c175a502
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.2 MB (30166484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b632d2b14567a67443b93d93ae0d29f6da0532513c70d04bc2f3eb0fba06110b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 06 Feb 2019 09:26:52 GMT
ADD file:a3fa4dfe4f8ea60454e3698650325be0ad97847e49c257136da78e2f997c2202 in / 
# Wed, 06 Feb 2019 09:26:54 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 20:05:12 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 06 Feb 2019 20:05:24 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 20:05:29 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 06 Feb 2019 20:05:32 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 06 Feb 2019 20:05:36 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 06 Feb 2019 20:07:16 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 20:07:19 GMT
VOLUME [/spiped]
# Wed, 06 Feb 2019 20:07:22 GMT
WORKDIR /spiped
# Wed, 06 Feb 2019 20:07:23 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 06 Feb 2019 20:07:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 20:07:26 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:ce77ebcb1b656de04f8443959fa201b1696ff2136de5be3de628f0c463c727f4`  
		Last Modified: Wed, 06 Feb 2019 09:31:25 GMT  
		Size: 22.8 MB (22755392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b2ca5f7587dd075fad22bd10dc1faa5206bcb9bdaf401d4d9ce3e1b71c2b79`  
		Last Modified: Wed, 06 Feb 2019 20:07:43 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:231b6b67c5d8f30adeeeeeda29456810c9dd316431a37b4ce07400801e89128a`  
		Last Modified: Wed, 06 Feb 2019 20:07:44 GMT  
		Size: 1.6 MB (1561329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ac0b0c7dfdf7727e678a88b06f2dfb63f236f4f791381e05a5040b2a6167da`  
		Last Modified: Wed, 06 Feb 2019 20:07:50 GMT  
		Size: 5.8 MB (5847539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ea9ce9ada60f645cba28fe4ebc9fc70f86355ef4600879826582d89e148e3f`  
		Last Modified: Wed, 06 Feb 2019 20:07:43 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1e7f029f55a0e3bf34b9176c6624ea9d503bc13661e53e7ec01a32d1ac35cb6`  
		Last Modified: Wed, 06 Feb 2019 20:07:43 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; s390x

```console
$ docker pull spiped@sha256:190912b473f4814d951e3f3c8440d3e162c4e4733b838726ca0f92e233e1c2aa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 MB (30751664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3747cc66d735fbde84171955c10ad34ecb43274ae98524c4c3b53af632a5d426`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 06 Feb 2019 12:43:23 GMT
ADD file:3a9fa274c8adc237938518b0ab05a8da0888b24eb1291c4c1d10353adf5c2c35 in / 
# Wed, 06 Feb 2019 12:43:24 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 17:51:19 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 06 Feb 2019 17:51:23 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 17:51:23 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 06 Feb 2019 17:51:24 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 06 Feb 2019 17:51:24 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 06 Feb 2019 17:51:40 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 17:51:40 GMT
VOLUME [/spiped]
# Wed, 06 Feb 2019 17:51:40 GMT
WORKDIR /spiped
# Wed, 06 Feb 2019 17:51:41 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 06 Feb 2019 17:51:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 17:51:41 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:7a7744b459675a4ad2aa884ea8350b1c1ae822c31e0ed60ab392fa7362b5c510`  
		Last Modified: Wed, 06 Feb 2019 12:46:59 GMT  
		Size: 22.4 MB (22353334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d8b16150d2067fb0be8f3bcf9ce77bc01b2663f2ecd3bf2f26e9bf23861534f`  
		Last Modified: Wed, 06 Feb 2019 17:51:57 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4257aa2c1658782b6ba65dfb9eafee998b516f77bc2045461fba9a03a9504bec`  
		Last Modified: Wed, 06 Feb 2019 17:51:57 GMT  
		Size: 1.6 MB (1625747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8a05e3a37eb56bfdf6d589fc30bab82ee31778862cbf1c6b078c4ee9a671880`  
		Last Modified: Wed, 06 Feb 2019 17:51:59 GMT  
		Size: 6.8 MB (6770394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e18cf11df3a111f02f650e5cac921a7b3ea676977c0614dcb1710f9a7a006a4`  
		Last Modified: Wed, 06 Feb 2019 17:51:57 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f40b3f6de4c29a72c38a826ccd85709851207d6eccccbaf3e48ca9690355fe26`  
		Last Modified: Wed, 06 Feb 2019 17:51:57 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
