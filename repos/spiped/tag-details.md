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
$ docker pull spiped@sha256:a0e1eda14c0e60bc16106d2a63fe25ba780abaea26b32b7803aa8cec8d6d5d22
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
$ docker pull spiped@sha256:c6c63bf7341c6ec82b9f60a4f586164d2754a8d6b81476da585ebe5b88a60c9a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30267930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8d7fd7a39eadd98625b68bed61cada812831281fd7ac79accf0bc6b38ac7ebd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 04:32:53 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 05 Mar 2019 04:32:58 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 04:32:58 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 05 Mar 2019 04:32:58 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 05 Mar 2019 04:32:59 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 05 Mar 2019 04:33:23 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 04:33:23 GMT
VOLUME [/spiped]
# Tue, 05 Mar 2019 04:33:23 GMT
WORKDIR /spiped
# Tue, 05 Mar 2019 04:33:23 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Tue, 05 Mar 2019 04:33:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 04:33:24 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d1440a29d602fd62c7882136f6317ccbb07f3eadd6c93e158f44f5487885e62`  
		Last Modified: Tue, 05 Mar 2019 04:33:39 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e67802f758d6c3c6662ac8caf3a61f81a4b87a1f91b0644b957f787ed6d27bd3`  
		Last Modified: Tue, 05 Mar 2019 04:33:39 GMT  
		Size: 1.9 MB (1891367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53f4052751c49a3c143c4fee2d549f6ce84d5cb4027a958310a4c1b75f34ae71`  
		Last Modified: Tue, 05 Mar 2019 04:33:40 GMT  
		Size: 5.9 MB (5878339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7c17a6359d4d96035188562a1562c360aaa5ea863586c6899209e48146f7f5e`  
		Last Modified: Tue, 05 Mar 2019 04:33:39 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71c2e2e40c5a79669d22f93a1b779fda48cf2c96caf72b66395fd68a39b7bcc2`  
		Last Modified: Tue, 05 Mar 2019 04:33:39 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1` - linux; arm variant v5

```console
$ docker pull spiped@sha256:2b21cb9e77e3c5a6391440a174785b9c1741a7fbb3696598d3db514779630130
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.7 MB (27748428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d354339c4669a40d4f6dbb480d60b661fc5a2e397723aa617d35b4f8b73c512`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 05 Mar 2019 09:55:08 GMT
ADD file:2526a4ee90bfd47bff3ab8ba2594e49465df9aa258daf8426e7d38166f4fecc2 in / 
# Tue, 05 Mar 2019 09:55:09 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 11:48:32 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 05 Mar 2019 11:48:42 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 11:48:42 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 05 Mar 2019 11:48:43 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 05 Mar 2019 11:48:43 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 05 Mar 2019 11:49:27 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 11:49:27 GMT
VOLUME [/spiped]
# Tue, 05 Mar 2019 11:49:28 GMT
WORKDIR /spiped
# Tue, 05 Mar 2019 11:49:28 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Tue, 05 Mar 2019 11:49:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 11:49:29 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:c5b53d864e73b66292b38bbea137ab84443437d4a8a51ea774f4af661bdfa126`  
		Last Modified: Tue, 05 Mar 2019 10:02:45 GMT  
		Size: 21.2 MB (21160548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24e12fda779f3a6b6cdadf85edd1608dabb9d69c3f497552df5f1fdc40b94ed7`  
		Last Modified: Tue, 05 Mar 2019 11:49:39 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ad719b0ce41ca014ba1d121146b434c37c080411e843fca08cbd14e75b5ece5`  
		Last Modified: Tue, 05 Mar 2019 11:49:39 GMT  
		Size: 1.6 MB (1632485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:165d7d6e406b792eae474c2896e68ebcfaec4b6a8e4cdbb475b421641f8b63b0`  
		Last Modified: Tue, 05 Mar 2019 11:49:41 GMT  
		Size: 5.0 MB (4953173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68528de1ad274ac8fea1ee7bf8cefc57517023cecfde60918a4dd8fa99b554ed`  
		Last Modified: Tue, 05 Mar 2019 11:49:39 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d52c9931eaeeebd26074ec4090405bfce9cd40fd31369a97a59614b23f97ddb`  
		Last Modified: Tue, 05 Mar 2019 11:49:39 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1` - linux; arm variant v7

```console
$ docker pull spiped@sha256:303328baa0ff827a423fd1a1c5942cdc08e77ff7488c0113d6c2a50c80821eab
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.6 MB (25566908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ae5c0234d107eb0baac7b96d75f74574a8df8c9e2ef5704cd41211aa1f6bbdd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 05 Mar 2019 13:11:01 GMT
ADD file:5d43d39fbe853e1f4c9f89be2ddc937fb88624889c511b9a75d6389c2b67918a in / 
# Tue, 05 Mar 2019 13:11:03 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 16:00:10 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 05 Mar 2019 16:00:18 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 16:00:19 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 05 Mar 2019 16:00:19 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 05 Mar 2019 16:00:20 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 05 Mar 2019 16:01:05 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 16:01:06 GMT
VOLUME [/spiped]
# Tue, 05 Mar 2019 16:01:06 GMT
WORKDIR /spiped
# Tue, 05 Mar 2019 16:01:07 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Tue, 05 Mar 2019 16:01:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 16:01:09 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:ecad9bd7ef0cc879127c92e50db573b75c643910463a12affaa5be77c7960bda`  
		Last Modified: Tue, 05 Mar 2019 13:18:41 GMT  
		Size: 19.3 MB (19282494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a1079a0e4e27eef8f15fcb4dc66191c3131b53380657665a6aec30171a9ede9`  
		Last Modified: Tue, 05 Mar 2019 16:01:28 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:582de0c844438590bdba8a890e4bed1849b8144a8e72d5b7bab58fda0118b7ae`  
		Last Modified: Tue, 05 Mar 2019 16:01:28 GMT  
		Size: 1.6 MB (1573638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60e83be5cb61ede383048a46f0b49a3bf75408d1ef02f5c0f10474112ea06f92`  
		Last Modified: Tue, 05 Mar 2019 16:01:29 GMT  
		Size: 4.7 MB (4708558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8b9ec4e310cd37265d3c7eee858c7f5917e8b5a96bdffc9229b563f47ee801e`  
		Last Modified: Tue, 05 Mar 2019 16:01:28 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2209b520c251832bf4e9a6783639fa2ff7b668102020de2acc1c5fd27d2540bd`  
		Last Modified: Tue, 05 Mar 2019 16:01:27 GMT  
		Size: 352.0 B  
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
$ docker pull spiped@sha256:e54dc515e3615f4534671fd1b63739a67820bb8b5485806bc6b4969de1c98755
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34324722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2422f25f8c95be624cf47886751b5569c63eee55a508806083408634c3d1512`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 05 Mar 2019 11:45:43 GMT
ADD file:25fe90430e63a83798c7fa241ebe3a89591a059654422474b19d5610b104a639 in / 
# Tue, 05 Mar 2019 11:45:44 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 21:20:02 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 05 Mar 2019 21:20:07 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 21:20:07 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 05 Mar 2019 21:20:07 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 05 Mar 2019 21:20:07 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 05 Mar 2019 21:20:33 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 21:20:33 GMT
VOLUME [/spiped]
# Tue, 05 Mar 2019 21:20:33 GMT
WORKDIR /spiped
# Tue, 05 Mar 2019 21:20:33 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Tue, 05 Mar 2019 21:20:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 21:20:34 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:14de7d5deca96a0d1b115104a4375816794d85fc365ada5173b5a806f0d8dbcf`  
		Last Modified: Tue, 05 Mar 2019 11:55:10 GMT  
		Size: 23.1 MB (23125680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:069f111440c76b2bcce0744bda938e41961e4157fd293d45cf779680d62b7d10`  
		Last Modified: Tue, 05 Mar 2019 21:20:45 GMT  
		Size: 1.7 KB (1736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b76681ea2809c082ff7a6cfb7185b77615c0f91d0609a5226690819f90dabd64`  
		Last Modified: Tue, 05 Mar 2019 21:20:46 GMT  
		Size: 1.9 MB (1885364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72c3f5a1a3bc7caa7eb49c09a83f8f3439f80268e642057cfd7fcce3b1176ccf`  
		Last Modified: Tue, 05 Mar 2019 21:20:48 GMT  
		Size: 9.3 MB (9311498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85211191169be0d0488962c1a8e164c70c167cb71fcdff2d0fdea844f1b5bb12`  
		Last Modified: Tue, 05 Mar 2019 21:20:45 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7aec2072af975505ab2f1956f7ee75726ce78a3b3e8bbcf3078b4741d55ced4`  
		Last Modified: Tue, 05 Mar 2019 21:20:45 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1` - linux; ppc64le

```console
$ docker pull spiped@sha256:42b64fbce6540c96a9159e0606916caba88a070ce2e4cdfbfb29ebf33a31421e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.2 MB (30164483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc4724df99764ed22f61a5016fdce8f84f2e921d38edeee3af782b58d62c4428`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 05 Mar 2019 09:25:57 GMT
ADD file:499a43a96e8ab3c7c8ab9d1c3260d34bb2b955e9751ada2b98194e42f9578be3 in / 
# Tue, 05 Mar 2019 09:26:02 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 15:55:16 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 05 Mar 2019 15:55:27 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 15:55:29 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 05 Mar 2019 15:55:32 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 05 Mar 2019 15:55:34 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 05 Mar 2019 15:58:07 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 15:58:12 GMT
VOLUME [/spiped]
# Tue, 05 Mar 2019 15:58:16 GMT
WORKDIR /spiped
# Tue, 05 Mar 2019 15:58:17 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Tue, 05 Mar 2019 15:58:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 15:58:22 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:1a1c20c0e1fe9ea9a7ae86ac61ed89ee8cf01dccfb363d582cb8c910510c06fb`  
		Last Modified: Tue, 05 Mar 2019 09:32:10 GMT  
		Size: 22.8 MB (22751497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26c077d02f92941d34ec5492c888e7c683606474997150608df1582f0da2b132`  
		Last Modified: Tue, 05 Mar 2019 15:58:52 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:967355bf1bdcadd6889951c9a53aa6867546405acc8cd7fdda3d9a961f6b8520`  
		Last Modified: Tue, 05 Mar 2019 15:58:52 GMT  
		Size: 1.6 MB (1561314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06a36c23dafcc1b8a1292935ccaba0cb793d7627ab1a45fde6628cfcd2c8638f`  
		Last Modified: Tue, 05 Mar 2019 15:58:53 GMT  
		Size: 5.8 MB (5849446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55608aac59aefce6a77019fdb3fa441f2a6f088e744d9fc7a188a2dc1c7cb520`  
		Last Modified: Tue, 05 Mar 2019 15:58:52 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c37b6443b305e83052bbb057cf7970016793cd1731caf71873de16352f71c72`  
		Last Modified: Tue, 05 Mar 2019 15:58:52 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1` - linux; s390x

```console
$ docker pull spiped@sha256:915d5da4c517f125ec920a769e52db14ab749304a2c26b7d4c7cc89a1e8cd850
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 MB (30745600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e054645d89fc96e4984a6986495c5c8b1dadf0a303deb42e10f8ca15f8f43e86`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 05 Mar 2019 12:43:10 GMT
ADD file:977b2abfb4bb6e881775d945b4d82d3f3e492b498a78ce0a9c877d9c8b82e3a9 in / 
# Tue, 05 Mar 2019 12:43:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 15:44:52 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 05 Mar 2019 15:44:56 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 15:44:57 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 05 Mar 2019 15:44:57 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 05 Mar 2019 15:44:57 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 05 Mar 2019 15:45:19 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 15:45:20 GMT
VOLUME [/spiped]
# Tue, 05 Mar 2019 15:45:20 GMT
WORKDIR /spiped
# Tue, 05 Mar 2019 15:45:20 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Tue, 05 Mar 2019 15:45:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 15:45:22 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:2c9e1401ee6b0131741b02fed745b7f1d34bf29b0bc59f41e08dc969a710fc58`  
		Last Modified: Tue, 05 Mar 2019 12:45:42 GMT  
		Size: 22.3 MB (22345383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee8703f25d6c53db3ca19e8201198e5b332091b988b7db26dd927ca56bb1bff8`  
		Last Modified: Tue, 05 Mar 2019 15:45:41 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca2671cebed7f34d9ae36f28e6ded50035c70d2caa9da5307a829e3b9c00ac01`  
		Last Modified: Tue, 05 Mar 2019 15:45:42 GMT  
		Size: 1.6 MB (1625688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d8b8d401d369686122da77612a89df78c2b4ceb9fb44479682743a77698cd7f`  
		Last Modified: Tue, 05 Mar 2019 15:45:43 GMT  
		Size: 6.8 MB (6772339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d5f5498174f820b7ce8715ca72e24e45d98c1552e0b9f40b2c3fe6355cce77`  
		Last Modified: Tue, 05 Mar 2019 15:45:41 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbc63fc57c62818c0ad29b520a1e8cc830586f884ee2f1da31885f95d9bdc1ad`  
		Last Modified: Tue, 05 Mar 2019 15:45:41 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1.6`

```console
$ docker pull spiped@sha256:a0e1eda14c0e60bc16106d2a63fe25ba780abaea26b32b7803aa8cec8d6d5d22
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
$ docker pull spiped@sha256:c6c63bf7341c6ec82b9f60a4f586164d2754a8d6b81476da585ebe5b88a60c9a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30267930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8d7fd7a39eadd98625b68bed61cada812831281fd7ac79accf0bc6b38ac7ebd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 04:32:53 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 05 Mar 2019 04:32:58 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 04:32:58 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 05 Mar 2019 04:32:58 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 05 Mar 2019 04:32:59 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 05 Mar 2019 04:33:23 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 04:33:23 GMT
VOLUME [/spiped]
# Tue, 05 Mar 2019 04:33:23 GMT
WORKDIR /spiped
# Tue, 05 Mar 2019 04:33:23 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Tue, 05 Mar 2019 04:33:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 04:33:24 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d1440a29d602fd62c7882136f6317ccbb07f3eadd6c93e158f44f5487885e62`  
		Last Modified: Tue, 05 Mar 2019 04:33:39 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e67802f758d6c3c6662ac8caf3a61f81a4b87a1f91b0644b957f787ed6d27bd3`  
		Last Modified: Tue, 05 Mar 2019 04:33:39 GMT  
		Size: 1.9 MB (1891367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53f4052751c49a3c143c4fee2d549f6ce84d5cb4027a958310a4c1b75f34ae71`  
		Last Modified: Tue, 05 Mar 2019 04:33:40 GMT  
		Size: 5.9 MB (5878339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7c17a6359d4d96035188562a1562c360aaa5ea863586c6899209e48146f7f5e`  
		Last Modified: Tue, 05 Mar 2019 04:33:39 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71c2e2e40c5a79669d22f93a1b779fda48cf2c96caf72b66395fd68a39b7bcc2`  
		Last Modified: Tue, 05 Mar 2019 04:33:39 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6` - linux; arm variant v5

```console
$ docker pull spiped@sha256:2b21cb9e77e3c5a6391440a174785b9c1741a7fbb3696598d3db514779630130
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.7 MB (27748428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d354339c4669a40d4f6dbb480d60b661fc5a2e397723aa617d35b4f8b73c512`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 05 Mar 2019 09:55:08 GMT
ADD file:2526a4ee90bfd47bff3ab8ba2594e49465df9aa258daf8426e7d38166f4fecc2 in / 
# Tue, 05 Mar 2019 09:55:09 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 11:48:32 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 05 Mar 2019 11:48:42 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 11:48:42 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 05 Mar 2019 11:48:43 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 05 Mar 2019 11:48:43 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 05 Mar 2019 11:49:27 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 11:49:27 GMT
VOLUME [/spiped]
# Tue, 05 Mar 2019 11:49:28 GMT
WORKDIR /spiped
# Tue, 05 Mar 2019 11:49:28 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Tue, 05 Mar 2019 11:49:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 11:49:29 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:c5b53d864e73b66292b38bbea137ab84443437d4a8a51ea774f4af661bdfa126`  
		Last Modified: Tue, 05 Mar 2019 10:02:45 GMT  
		Size: 21.2 MB (21160548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24e12fda779f3a6b6cdadf85edd1608dabb9d69c3f497552df5f1fdc40b94ed7`  
		Last Modified: Tue, 05 Mar 2019 11:49:39 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ad719b0ce41ca014ba1d121146b434c37c080411e843fca08cbd14e75b5ece5`  
		Last Modified: Tue, 05 Mar 2019 11:49:39 GMT  
		Size: 1.6 MB (1632485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:165d7d6e406b792eae474c2896e68ebcfaec4b6a8e4cdbb475b421641f8b63b0`  
		Last Modified: Tue, 05 Mar 2019 11:49:41 GMT  
		Size: 5.0 MB (4953173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68528de1ad274ac8fea1ee7bf8cefc57517023cecfde60918a4dd8fa99b554ed`  
		Last Modified: Tue, 05 Mar 2019 11:49:39 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d52c9931eaeeebd26074ec4090405bfce9cd40fd31369a97a59614b23f97ddb`  
		Last Modified: Tue, 05 Mar 2019 11:49:39 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6` - linux; arm variant v7

```console
$ docker pull spiped@sha256:303328baa0ff827a423fd1a1c5942cdc08e77ff7488c0113d6c2a50c80821eab
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.6 MB (25566908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ae5c0234d107eb0baac7b96d75f74574a8df8c9e2ef5704cd41211aa1f6bbdd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 05 Mar 2019 13:11:01 GMT
ADD file:5d43d39fbe853e1f4c9f89be2ddc937fb88624889c511b9a75d6389c2b67918a in / 
# Tue, 05 Mar 2019 13:11:03 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 16:00:10 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 05 Mar 2019 16:00:18 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 16:00:19 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 05 Mar 2019 16:00:19 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 05 Mar 2019 16:00:20 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 05 Mar 2019 16:01:05 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 16:01:06 GMT
VOLUME [/spiped]
# Tue, 05 Mar 2019 16:01:06 GMT
WORKDIR /spiped
# Tue, 05 Mar 2019 16:01:07 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Tue, 05 Mar 2019 16:01:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 16:01:09 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:ecad9bd7ef0cc879127c92e50db573b75c643910463a12affaa5be77c7960bda`  
		Last Modified: Tue, 05 Mar 2019 13:18:41 GMT  
		Size: 19.3 MB (19282494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a1079a0e4e27eef8f15fcb4dc66191c3131b53380657665a6aec30171a9ede9`  
		Last Modified: Tue, 05 Mar 2019 16:01:28 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:582de0c844438590bdba8a890e4bed1849b8144a8e72d5b7bab58fda0118b7ae`  
		Last Modified: Tue, 05 Mar 2019 16:01:28 GMT  
		Size: 1.6 MB (1573638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60e83be5cb61ede383048a46f0b49a3bf75408d1ef02f5c0f10474112ea06f92`  
		Last Modified: Tue, 05 Mar 2019 16:01:29 GMT  
		Size: 4.7 MB (4708558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8b9ec4e310cd37265d3c7eee858c7f5917e8b5a96bdffc9229b563f47ee801e`  
		Last Modified: Tue, 05 Mar 2019 16:01:28 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2209b520c251832bf4e9a6783639fa2ff7b668102020de2acc1c5fd27d2540bd`  
		Last Modified: Tue, 05 Mar 2019 16:01:27 GMT  
		Size: 352.0 B  
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
$ docker pull spiped@sha256:e54dc515e3615f4534671fd1b63739a67820bb8b5485806bc6b4969de1c98755
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34324722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2422f25f8c95be624cf47886751b5569c63eee55a508806083408634c3d1512`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 05 Mar 2019 11:45:43 GMT
ADD file:25fe90430e63a83798c7fa241ebe3a89591a059654422474b19d5610b104a639 in / 
# Tue, 05 Mar 2019 11:45:44 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 21:20:02 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 05 Mar 2019 21:20:07 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 21:20:07 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 05 Mar 2019 21:20:07 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 05 Mar 2019 21:20:07 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 05 Mar 2019 21:20:33 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 21:20:33 GMT
VOLUME [/spiped]
# Tue, 05 Mar 2019 21:20:33 GMT
WORKDIR /spiped
# Tue, 05 Mar 2019 21:20:33 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Tue, 05 Mar 2019 21:20:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 21:20:34 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:14de7d5deca96a0d1b115104a4375816794d85fc365ada5173b5a806f0d8dbcf`  
		Last Modified: Tue, 05 Mar 2019 11:55:10 GMT  
		Size: 23.1 MB (23125680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:069f111440c76b2bcce0744bda938e41961e4157fd293d45cf779680d62b7d10`  
		Last Modified: Tue, 05 Mar 2019 21:20:45 GMT  
		Size: 1.7 KB (1736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b76681ea2809c082ff7a6cfb7185b77615c0f91d0609a5226690819f90dabd64`  
		Last Modified: Tue, 05 Mar 2019 21:20:46 GMT  
		Size: 1.9 MB (1885364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72c3f5a1a3bc7caa7eb49c09a83f8f3439f80268e642057cfd7fcce3b1176ccf`  
		Last Modified: Tue, 05 Mar 2019 21:20:48 GMT  
		Size: 9.3 MB (9311498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85211191169be0d0488962c1a8e164c70c167cb71fcdff2d0fdea844f1b5bb12`  
		Last Modified: Tue, 05 Mar 2019 21:20:45 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7aec2072af975505ab2f1956f7ee75726ce78a3b3e8bbcf3078b4741d55ced4`  
		Last Modified: Tue, 05 Mar 2019 21:20:45 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6` - linux; ppc64le

```console
$ docker pull spiped@sha256:42b64fbce6540c96a9159e0606916caba88a070ce2e4cdfbfb29ebf33a31421e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.2 MB (30164483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc4724df99764ed22f61a5016fdce8f84f2e921d38edeee3af782b58d62c4428`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 05 Mar 2019 09:25:57 GMT
ADD file:499a43a96e8ab3c7c8ab9d1c3260d34bb2b955e9751ada2b98194e42f9578be3 in / 
# Tue, 05 Mar 2019 09:26:02 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 15:55:16 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 05 Mar 2019 15:55:27 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 15:55:29 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 05 Mar 2019 15:55:32 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 05 Mar 2019 15:55:34 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 05 Mar 2019 15:58:07 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 15:58:12 GMT
VOLUME [/spiped]
# Tue, 05 Mar 2019 15:58:16 GMT
WORKDIR /spiped
# Tue, 05 Mar 2019 15:58:17 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Tue, 05 Mar 2019 15:58:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 15:58:22 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:1a1c20c0e1fe9ea9a7ae86ac61ed89ee8cf01dccfb363d582cb8c910510c06fb`  
		Last Modified: Tue, 05 Mar 2019 09:32:10 GMT  
		Size: 22.8 MB (22751497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26c077d02f92941d34ec5492c888e7c683606474997150608df1582f0da2b132`  
		Last Modified: Tue, 05 Mar 2019 15:58:52 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:967355bf1bdcadd6889951c9a53aa6867546405acc8cd7fdda3d9a961f6b8520`  
		Last Modified: Tue, 05 Mar 2019 15:58:52 GMT  
		Size: 1.6 MB (1561314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06a36c23dafcc1b8a1292935ccaba0cb793d7627ab1a45fde6628cfcd2c8638f`  
		Last Modified: Tue, 05 Mar 2019 15:58:53 GMT  
		Size: 5.8 MB (5849446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55608aac59aefce6a77019fdb3fa441f2a6f088e744d9fc7a188a2dc1c7cb520`  
		Last Modified: Tue, 05 Mar 2019 15:58:52 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c37b6443b305e83052bbb057cf7970016793cd1731caf71873de16352f71c72`  
		Last Modified: Tue, 05 Mar 2019 15:58:52 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6` - linux; s390x

```console
$ docker pull spiped@sha256:915d5da4c517f125ec920a769e52db14ab749304a2c26b7d4c7cc89a1e8cd850
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 MB (30745600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e054645d89fc96e4984a6986495c5c8b1dadf0a303deb42e10f8ca15f8f43e86`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 05 Mar 2019 12:43:10 GMT
ADD file:977b2abfb4bb6e881775d945b4d82d3f3e492b498a78ce0a9c877d9c8b82e3a9 in / 
# Tue, 05 Mar 2019 12:43:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 15:44:52 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 05 Mar 2019 15:44:56 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 15:44:57 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 05 Mar 2019 15:44:57 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 05 Mar 2019 15:44:57 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 05 Mar 2019 15:45:19 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 15:45:20 GMT
VOLUME [/spiped]
# Tue, 05 Mar 2019 15:45:20 GMT
WORKDIR /spiped
# Tue, 05 Mar 2019 15:45:20 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Tue, 05 Mar 2019 15:45:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 15:45:22 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:2c9e1401ee6b0131741b02fed745b7f1d34bf29b0bc59f41e08dc969a710fc58`  
		Last Modified: Tue, 05 Mar 2019 12:45:42 GMT  
		Size: 22.3 MB (22345383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee8703f25d6c53db3ca19e8201198e5b332091b988b7db26dd927ca56bb1bff8`  
		Last Modified: Tue, 05 Mar 2019 15:45:41 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca2671cebed7f34d9ae36f28e6ded50035c70d2caa9da5307a829e3b9c00ac01`  
		Last Modified: Tue, 05 Mar 2019 15:45:42 GMT  
		Size: 1.6 MB (1625688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d8b8d401d369686122da77612a89df78c2b4ceb9fb44479682743a77698cd7f`  
		Last Modified: Tue, 05 Mar 2019 15:45:43 GMT  
		Size: 6.8 MB (6772339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d5f5498174f820b7ce8715ca72e24e45d98c1552e0b9f40b2c3fe6355cce77`  
		Last Modified: Tue, 05 Mar 2019 15:45:41 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbc63fc57c62818c0ad29b520a1e8cc830586f884ee2f1da31885f95d9bdc1ad`  
		Last Modified: Tue, 05 Mar 2019 15:45:41 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1.6.0`

```console
$ docker pull spiped@sha256:a0e1eda14c0e60bc16106d2a63fe25ba780abaea26b32b7803aa8cec8d6d5d22
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
$ docker pull spiped@sha256:c6c63bf7341c6ec82b9f60a4f586164d2754a8d6b81476da585ebe5b88a60c9a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30267930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8d7fd7a39eadd98625b68bed61cada812831281fd7ac79accf0bc6b38ac7ebd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 04:32:53 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 05 Mar 2019 04:32:58 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 04:32:58 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 05 Mar 2019 04:32:58 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 05 Mar 2019 04:32:59 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 05 Mar 2019 04:33:23 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 04:33:23 GMT
VOLUME [/spiped]
# Tue, 05 Mar 2019 04:33:23 GMT
WORKDIR /spiped
# Tue, 05 Mar 2019 04:33:23 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Tue, 05 Mar 2019 04:33:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 04:33:24 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d1440a29d602fd62c7882136f6317ccbb07f3eadd6c93e158f44f5487885e62`  
		Last Modified: Tue, 05 Mar 2019 04:33:39 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e67802f758d6c3c6662ac8caf3a61f81a4b87a1f91b0644b957f787ed6d27bd3`  
		Last Modified: Tue, 05 Mar 2019 04:33:39 GMT  
		Size: 1.9 MB (1891367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53f4052751c49a3c143c4fee2d549f6ce84d5cb4027a958310a4c1b75f34ae71`  
		Last Modified: Tue, 05 Mar 2019 04:33:40 GMT  
		Size: 5.9 MB (5878339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7c17a6359d4d96035188562a1562c360aaa5ea863586c6899209e48146f7f5e`  
		Last Modified: Tue, 05 Mar 2019 04:33:39 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71c2e2e40c5a79669d22f93a1b779fda48cf2c96caf72b66395fd68a39b7bcc2`  
		Last Modified: Tue, 05 Mar 2019 04:33:39 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0` - linux; arm variant v5

```console
$ docker pull spiped@sha256:2b21cb9e77e3c5a6391440a174785b9c1741a7fbb3696598d3db514779630130
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.7 MB (27748428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d354339c4669a40d4f6dbb480d60b661fc5a2e397723aa617d35b4f8b73c512`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 05 Mar 2019 09:55:08 GMT
ADD file:2526a4ee90bfd47bff3ab8ba2594e49465df9aa258daf8426e7d38166f4fecc2 in / 
# Tue, 05 Mar 2019 09:55:09 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 11:48:32 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 05 Mar 2019 11:48:42 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 11:48:42 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 05 Mar 2019 11:48:43 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 05 Mar 2019 11:48:43 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 05 Mar 2019 11:49:27 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 11:49:27 GMT
VOLUME [/spiped]
# Tue, 05 Mar 2019 11:49:28 GMT
WORKDIR /spiped
# Tue, 05 Mar 2019 11:49:28 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Tue, 05 Mar 2019 11:49:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 11:49:29 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:c5b53d864e73b66292b38bbea137ab84443437d4a8a51ea774f4af661bdfa126`  
		Last Modified: Tue, 05 Mar 2019 10:02:45 GMT  
		Size: 21.2 MB (21160548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24e12fda779f3a6b6cdadf85edd1608dabb9d69c3f497552df5f1fdc40b94ed7`  
		Last Modified: Tue, 05 Mar 2019 11:49:39 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ad719b0ce41ca014ba1d121146b434c37c080411e843fca08cbd14e75b5ece5`  
		Last Modified: Tue, 05 Mar 2019 11:49:39 GMT  
		Size: 1.6 MB (1632485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:165d7d6e406b792eae474c2896e68ebcfaec4b6a8e4cdbb475b421641f8b63b0`  
		Last Modified: Tue, 05 Mar 2019 11:49:41 GMT  
		Size: 5.0 MB (4953173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68528de1ad274ac8fea1ee7bf8cefc57517023cecfde60918a4dd8fa99b554ed`  
		Last Modified: Tue, 05 Mar 2019 11:49:39 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d52c9931eaeeebd26074ec4090405bfce9cd40fd31369a97a59614b23f97ddb`  
		Last Modified: Tue, 05 Mar 2019 11:49:39 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0` - linux; arm variant v7

```console
$ docker pull spiped@sha256:303328baa0ff827a423fd1a1c5942cdc08e77ff7488c0113d6c2a50c80821eab
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.6 MB (25566908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ae5c0234d107eb0baac7b96d75f74574a8df8c9e2ef5704cd41211aa1f6bbdd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 05 Mar 2019 13:11:01 GMT
ADD file:5d43d39fbe853e1f4c9f89be2ddc937fb88624889c511b9a75d6389c2b67918a in / 
# Tue, 05 Mar 2019 13:11:03 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 16:00:10 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 05 Mar 2019 16:00:18 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 16:00:19 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 05 Mar 2019 16:00:19 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 05 Mar 2019 16:00:20 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 05 Mar 2019 16:01:05 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 16:01:06 GMT
VOLUME [/spiped]
# Tue, 05 Mar 2019 16:01:06 GMT
WORKDIR /spiped
# Tue, 05 Mar 2019 16:01:07 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Tue, 05 Mar 2019 16:01:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 16:01:09 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:ecad9bd7ef0cc879127c92e50db573b75c643910463a12affaa5be77c7960bda`  
		Last Modified: Tue, 05 Mar 2019 13:18:41 GMT  
		Size: 19.3 MB (19282494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a1079a0e4e27eef8f15fcb4dc66191c3131b53380657665a6aec30171a9ede9`  
		Last Modified: Tue, 05 Mar 2019 16:01:28 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:582de0c844438590bdba8a890e4bed1849b8144a8e72d5b7bab58fda0118b7ae`  
		Last Modified: Tue, 05 Mar 2019 16:01:28 GMT  
		Size: 1.6 MB (1573638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60e83be5cb61ede383048a46f0b49a3bf75408d1ef02f5c0f10474112ea06f92`  
		Last Modified: Tue, 05 Mar 2019 16:01:29 GMT  
		Size: 4.7 MB (4708558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8b9ec4e310cd37265d3c7eee858c7f5917e8b5a96bdffc9229b563f47ee801e`  
		Last Modified: Tue, 05 Mar 2019 16:01:28 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2209b520c251832bf4e9a6783639fa2ff7b668102020de2acc1c5fd27d2540bd`  
		Last Modified: Tue, 05 Mar 2019 16:01:27 GMT  
		Size: 352.0 B  
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
$ docker pull spiped@sha256:e54dc515e3615f4534671fd1b63739a67820bb8b5485806bc6b4969de1c98755
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34324722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2422f25f8c95be624cf47886751b5569c63eee55a508806083408634c3d1512`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 05 Mar 2019 11:45:43 GMT
ADD file:25fe90430e63a83798c7fa241ebe3a89591a059654422474b19d5610b104a639 in / 
# Tue, 05 Mar 2019 11:45:44 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 21:20:02 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 05 Mar 2019 21:20:07 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 21:20:07 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 05 Mar 2019 21:20:07 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 05 Mar 2019 21:20:07 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 05 Mar 2019 21:20:33 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 21:20:33 GMT
VOLUME [/spiped]
# Tue, 05 Mar 2019 21:20:33 GMT
WORKDIR /spiped
# Tue, 05 Mar 2019 21:20:33 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Tue, 05 Mar 2019 21:20:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 21:20:34 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:14de7d5deca96a0d1b115104a4375816794d85fc365ada5173b5a806f0d8dbcf`  
		Last Modified: Tue, 05 Mar 2019 11:55:10 GMT  
		Size: 23.1 MB (23125680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:069f111440c76b2bcce0744bda938e41961e4157fd293d45cf779680d62b7d10`  
		Last Modified: Tue, 05 Mar 2019 21:20:45 GMT  
		Size: 1.7 KB (1736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b76681ea2809c082ff7a6cfb7185b77615c0f91d0609a5226690819f90dabd64`  
		Last Modified: Tue, 05 Mar 2019 21:20:46 GMT  
		Size: 1.9 MB (1885364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72c3f5a1a3bc7caa7eb49c09a83f8f3439f80268e642057cfd7fcce3b1176ccf`  
		Last Modified: Tue, 05 Mar 2019 21:20:48 GMT  
		Size: 9.3 MB (9311498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85211191169be0d0488962c1a8e164c70c167cb71fcdff2d0fdea844f1b5bb12`  
		Last Modified: Tue, 05 Mar 2019 21:20:45 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7aec2072af975505ab2f1956f7ee75726ce78a3b3e8bbcf3078b4741d55ced4`  
		Last Modified: Tue, 05 Mar 2019 21:20:45 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0` - linux; ppc64le

```console
$ docker pull spiped@sha256:42b64fbce6540c96a9159e0606916caba88a070ce2e4cdfbfb29ebf33a31421e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.2 MB (30164483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc4724df99764ed22f61a5016fdce8f84f2e921d38edeee3af782b58d62c4428`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 05 Mar 2019 09:25:57 GMT
ADD file:499a43a96e8ab3c7c8ab9d1c3260d34bb2b955e9751ada2b98194e42f9578be3 in / 
# Tue, 05 Mar 2019 09:26:02 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 15:55:16 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 05 Mar 2019 15:55:27 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 15:55:29 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 05 Mar 2019 15:55:32 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 05 Mar 2019 15:55:34 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 05 Mar 2019 15:58:07 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 15:58:12 GMT
VOLUME [/spiped]
# Tue, 05 Mar 2019 15:58:16 GMT
WORKDIR /spiped
# Tue, 05 Mar 2019 15:58:17 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Tue, 05 Mar 2019 15:58:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 15:58:22 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:1a1c20c0e1fe9ea9a7ae86ac61ed89ee8cf01dccfb363d582cb8c910510c06fb`  
		Last Modified: Tue, 05 Mar 2019 09:32:10 GMT  
		Size: 22.8 MB (22751497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26c077d02f92941d34ec5492c888e7c683606474997150608df1582f0da2b132`  
		Last Modified: Tue, 05 Mar 2019 15:58:52 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:967355bf1bdcadd6889951c9a53aa6867546405acc8cd7fdda3d9a961f6b8520`  
		Last Modified: Tue, 05 Mar 2019 15:58:52 GMT  
		Size: 1.6 MB (1561314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06a36c23dafcc1b8a1292935ccaba0cb793d7627ab1a45fde6628cfcd2c8638f`  
		Last Modified: Tue, 05 Mar 2019 15:58:53 GMT  
		Size: 5.8 MB (5849446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55608aac59aefce6a77019fdb3fa441f2a6f088e744d9fc7a188a2dc1c7cb520`  
		Last Modified: Tue, 05 Mar 2019 15:58:52 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c37b6443b305e83052bbb057cf7970016793cd1731caf71873de16352f71c72`  
		Last Modified: Tue, 05 Mar 2019 15:58:52 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0` - linux; s390x

```console
$ docker pull spiped@sha256:915d5da4c517f125ec920a769e52db14ab749304a2c26b7d4c7cc89a1e8cd850
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 MB (30745600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e054645d89fc96e4984a6986495c5c8b1dadf0a303deb42e10f8ca15f8f43e86`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 05 Mar 2019 12:43:10 GMT
ADD file:977b2abfb4bb6e881775d945b4d82d3f3e492b498a78ce0a9c877d9c8b82e3a9 in / 
# Tue, 05 Mar 2019 12:43:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 15:44:52 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 05 Mar 2019 15:44:56 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 15:44:57 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 05 Mar 2019 15:44:57 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 05 Mar 2019 15:44:57 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 05 Mar 2019 15:45:19 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 15:45:20 GMT
VOLUME [/spiped]
# Tue, 05 Mar 2019 15:45:20 GMT
WORKDIR /spiped
# Tue, 05 Mar 2019 15:45:20 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Tue, 05 Mar 2019 15:45:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 15:45:22 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:2c9e1401ee6b0131741b02fed745b7f1d34bf29b0bc59f41e08dc969a710fc58`  
		Last Modified: Tue, 05 Mar 2019 12:45:42 GMT  
		Size: 22.3 MB (22345383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee8703f25d6c53db3ca19e8201198e5b332091b988b7db26dd927ca56bb1bff8`  
		Last Modified: Tue, 05 Mar 2019 15:45:41 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca2671cebed7f34d9ae36f28e6ded50035c70d2caa9da5307a829e3b9c00ac01`  
		Last Modified: Tue, 05 Mar 2019 15:45:42 GMT  
		Size: 1.6 MB (1625688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d8b8d401d369686122da77612a89df78c2b4ceb9fb44479682743a77698cd7f`  
		Last Modified: Tue, 05 Mar 2019 15:45:43 GMT  
		Size: 6.8 MB (6772339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d5f5498174f820b7ce8715ca72e24e45d98c1552e0b9f40b2c3fe6355cce77`  
		Last Modified: Tue, 05 Mar 2019 15:45:41 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbc63fc57c62818c0ad29b520a1e8cc830586f884ee2f1da31885f95d9bdc1ad`  
		Last Modified: Tue, 05 Mar 2019 15:45:41 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1.6.0-alpine`

```console
$ docker pull spiped@sha256:5157f32f02dd78bf6038a808b6cedfac2ad40db26c758acb76a432e4390d3690
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
$ docker pull spiped@sha256:c338d596fc42e4091f94d652fb385f63a0cbb4c6dd44a92e7b3e6d12b19ad014
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2842390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aab51c1b2eda0499d3a3c89eb35f237a338d68af1f100d550ed1fb0835f7e27d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:23:11 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Thu, 07 Mar 2019 23:23:11 GMT
RUN apk add --no-cache libssl1.1
# Thu, 07 Mar 2019 23:23:11 GMT
ENV SPIPED_VERSION=1.6.0
# Thu, 07 Mar 2019 23:23:12 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Thu, 07 Mar 2019 23:23:12 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Thu, 07 Mar 2019 23:23:23 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Thu, 07 Mar 2019 23:23:23 GMT
VOLUME [/spiped]
# Thu, 07 Mar 2019 23:23:23 GMT
WORKDIR /spiped
# Thu, 07 Mar 2019 23:23:23 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Thu, 07 Mar 2019 23:23:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Mar 2019 23:23:24 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dff3fa563a788251263a78767d8d2682a1bb020a8d3cff2269d2f8d0efe67dbd`  
		Last Modified: Thu, 07 Mar 2019 23:23:42 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc3459e34f6e17d01900eaba42a204146bdef9fc22d31235dc34697c526e555e`  
		Last Modified: Thu, 07 Mar 2019 23:23:42 GMT  
		Size: 6.4 KB (6376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e34acb5196c8b1272465d581401d6a8a8c2bf22184d724740e9e8132b14bbc4`  
		Last Modified: Thu, 07 Mar 2019 23:23:42 GMT  
		Size: 79.6 KB (79590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58f380545690113ac6da811632051255a677e5662d01c6c07e7a612447d53ae1`  
		Last Modified: Thu, 07 Mar 2019 23:23:42 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f0d61bb6ce02c3a91b557ccfe45ccaef9d551d16121106af203989b8e6a642`  
		Last Modified: Thu, 07 Mar 2019 23:23:42 GMT  
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
$ docker pull spiped@sha256:5157f32f02dd78bf6038a808b6cedfac2ad40db26c758acb76a432e4390d3690
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
$ docker pull spiped@sha256:c338d596fc42e4091f94d652fb385f63a0cbb4c6dd44a92e7b3e6d12b19ad014
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2842390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aab51c1b2eda0499d3a3c89eb35f237a338d68af1f100d550ed1fb0835f7e27d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:23:11 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Thu, 07 Mar 2019 23:23:11 GMT
RUN apk add --no-cache libssl1.1
# Thu, 07 Mar 2019 23:23:11 GMT
ENV SPIPED_VERSION=1.6.0
# Thu, 07 Mar 2019 23:23:12 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Thu, 07 Mar 2019 23:23:12 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Thu, 07 Mar 2019 23:23:23 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Thu, 07 Mar 2019 23:23:23 GMT
VOLUME [/spiped]
# Thu, 07 Mar 2019 23:23:23 GMT
WORKDIR /spiped
# Thu, 07 Mar 2019 23:23:23 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Thu, 07 Mar 2019 23:23:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Mar 2019 23:23:24 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dff3fa563a788251263a78767d8d2682a1bb020a8d3cff2269d2f8d0efe67dbd`  
		Last Modified: Thu, 07 Mar 2019 23:23:42 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc3459e34f6e17d01900eaba42a204146bdef9fc22d31235dc34697c526e555e`  
		Last Modified: Thu, 07 Mar 2019 23:23:42 GMT  
		Size: 6.4 KB (6376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e34acb5196c8b1272465d581401d6a8a8c2bf22184d724740e9e8132b14bbc4`  
		Last Modified: Thu, 07 Mar 2019 23:23:42 GMT  
		Size: 79.6 KB (79590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58f380545690113ac6da811632051255a677e5662d01c6c07e7a612447d53ae1`  
		Last Modified: Thu, 07 Mar 2019 23:23:42 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f0d61bb6ce02c3a91b557ccfe45ccaef9d551d16121106af203989b8e6a642`  
		Last Modified: Thu, 07 Mar 2019 23:23:42 GMT  
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
$ docker pull spiped@sha256:5157f32f02dd78bf6038a808b6cedfac2ad40db26c758acb76a432e4390d3690
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
$ docker pull spiped@sha256:c338d596fc42e4091f94d652fb385f63a0cbb4c6dd44a92e7b3e6d12b19ad014
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2842390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aab51c1b2eda0499d3a3c89eb35f237a338d68af1f100d550ed1fb0835f7e27d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:23:11 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Thu, 07 Mar 2019 23:23:11 GMT
RUN apk add --no-cache libssl1.1
# Thu, 07 Mar 2019 23:23:11 GMT
ENV SPIPED_VERSION=1.6.0
# Thu, 07 Mar 2019 23:23:12 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Thu, 07 Mar 2019 23:23:12 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Thu, 07 Mar 2019 23:23:23 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Thu, 07 Mar 2019 23:23:23 GMT
VOLUME [/spiped]
# Thu, 07 Mar 2019 23:23:23 GMT
WORKDIR /spiped
# Thu, 07 Mar 2019 23:23:23 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Thu, 07 Mar 2019 23:23:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Mar 2019 23:23:24 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dff3fa563a788251263a78767d8d2682a1bb020a8d3cff2269d2f8d0efe67dbd`  
		Last Modified: Thu, 07 Mar 2019 23:23:42 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc3459e34f6e17d01900eaba42a204146bdef9fc22d31235dc34697c526e555e`  
		Last Modified: Thu, 07 Mar 2019 23:23:42 GMT  
		Size: 6.4 KB (6376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e34acb5196c8b1272465d581401d6a8a8c2bf22184d724740e9e8132b14bbc4`  
		Last Modified: Thu, 07 Mar 2019 23:23:42 GMT  
		Size: 79.6 KB (79590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58f380545690113ac6da811632051255a677e5662d01c6c07e7a612447d53ae1`  
		Last Modified: Thu, 07 Mar 2019 23:23:42 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f0d61bb6ce02c3a91b557ccfe45ccaef9d551d16121106af203989b8e6a642`  
		Last Modified: Thu, 07 Mar 2019 23:23:42 GMT  
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
$ docker pull spiped@sha256:5157f32f02dd78bf6038a808b6cedfac2ad40db26c758acb76a432e4390d3690
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
$ docker pull spiped@sha256:c338d596fc42e4091f94d652fb385f63a0cbb4c6dd44a92e7b3e6d12b19ad014
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2842390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aab51c1b2eda0499d3a3c89eb35f237a338d68af1f100d550ed1fb0835f7e27d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:23:11 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Thu, 07 Mar 2019 23:23:11 GMT
RUN apk add --no-cache libssl1.1
# Thu, 07 Mar 2019 23:23:11 GMT
ENV SPIPED_VERSION=1.6.0
# Thu, 07 Mar 2019 23:23:12 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Thu, 07 Mar 2019 23:23:12 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Thu, 07 Mar 2019 23:23:23 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Thu, 07 Mar 2019 23:23:23 GMT
VOLUME [/spiped]
# Thu, 07 Mar 2019 23:23:23 GMT
WORKDIR /spiped
# Thu, 07 Mar 2019 23:23:23 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Thu, 07 Mar 2019 23:23:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Mar 2019 23:23:24 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dff3fa563a788251263a78767d8d2682a1bb020a8d3cff2269d2f8d0efe67dbd`  
		Last Modified: Thu, 07 Mar 2019 23:23:42 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc3459e34f6e17d01900eaba42a204146bdef9fc22d31235dc34697c526e555e`  
		Last Modified: Thu, 07 Mar 2019 23:23:42 GMT  
		Size: 6.4 KB (6376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e34acb5196c8b1272465d581401d6a8a8c2bf22184d724740e9e8132b14bbc4`  
		Last Modified: Thu, 07 Mar 2019 23:23:42 GMT  
		Size: 79.6 KB (79590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58f380545690113ac6da811632051255a677e5662d01c6c07e7a612447d53ae1`  
		Last Modified: Thu, 07 Mar 2019 23:23:42 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f0d61bb6ce02c3a91b557ccfe45ccaef9d551d16121106af203989b8e6a642`  
		Last Modified: Thu, 07 Mar 2019 23:23:42 GMT  
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
$ docker pull spiped@sha256:a0e1eda14c0e60bc16106d2a63fe25ba780abaea26b32b7803aa8cec8d6d5d22
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
$ docker pull spiped@sha256:c6c63bf7341c6ec82b9f60a4f586164d2754a8d6b81476da585ebe5b88a60c9a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30267930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8d7fd7a39eadd98625b68bed61cada812831281fd7ac79accf0bc6b38ac7ebd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 04:32:53 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 05 Mar 2019 04:32:58 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 04:32:58 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 05 Mar 2019 04:32:58 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 05 Mar 2019 04:32:59 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 05 Mar 2019 04:33:23 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 04:33:23 GMT
VOLUME [/spiped]
# Tue, 05 Mar 2019 04:33:23 GMT
WORKDIR /spiped
# Tue, 05 Mar 2019 04:33:23 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Tue, 05 Mar 2019 04:33:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 04:33:24 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d1440a29d602fd62c7882136f6317ccbb07f3eadd6c93e158f44f5487885e62`  
		Last Modified: Tue, 05 Mar 2019 04:33:39 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e67802f758d6c3c6662ac8caf3a61f81a4b87a1f91b0644b957f787ed6d27bd3`  
		Last Modified: Tue, 05 Mar 2019 04:33:39 GMT  
		Size: 1.9 MB (1891367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53f4052751c49a3c143c4fee2d549f6ce84d5cb4027a958310a4c1b75f34ae71`  
		Last Modified: Tue, 05 Mar 2019 04:33:40 GMT  
		Size: 5.9 MB (5878339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7c17a6359d4d96035188562a1562c360aaa5ea863586c6899209e48146f7f5e`  
		Last Modified: Tue, 05 Mar 2019 04:33:39 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71c2e2e40c5a79669d22f93a1b779fda48cf2c96caf72b66395fd68a39b7bcc2`  
		Last Modified: Tue, 05 Mar 2019 04:33:39 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; arm variant v5

```console
$ docker pull spiped@sha256:2b21cb9e77e3c5a6391440a174785b9c1741a7fbb3696598d3db514779630130
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.7 MB (27748428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d354339c4669a40d4f6dbb480d60b661fc5a2e397723aa617d35b4f8b73c512`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 05 Mar 2019 09:55:08 GMT
ADD file:2526a4ee90bfd47bff3ab8ba2594e49465df9aa258daf8426e7d38166f4fecc2 in / 
# Tue, 05 Mar 2019 09:55:09 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 11:48:32 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 05 Mar 2019 11:48:42 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 11:48:42 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 05 Mar 2019 11:48:43 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 05 Mar 2019 11:48:43 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 05 Mar 2019 11:49:27 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 11:49:27 GMT
VOLUME [/spiped]
# Tue, 05 Mar 2019 11:49:28 GMT
WORKDIR /spiped
# Tue, 05 Mar 2019 11:49:28 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Tue, 05 Mar 2019 11:49:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 11:49:29 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:c5b53d864e73b66292b38bbea137ab84443437d4a8a51ea774f4af661bdfa126`  
		Last Modified: Tue, 05 Mar 2019 10:02:45 GMT  
		Size: 21.2 MB (21160548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24e12fda779f3a6b6cdadf85edd1608dabb9d69c3f497552df5f1fdc40b94ed7`  
		Last Modified: Tue, 05 Mar 2019 11:49:39 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ad719b0ce41ca014ba1d121146b434c37c080411e843fca08cbd14e75b5ece5`  
		Last Modified: Tue, 05 Mar 2019 11:49:39 GMT  
		Size: 1.6 MB (1632485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:165d7d6e406b792eae474c2896e68ebcfaec4b6a8e4cdbb475b421641f8b63b0`  
		Last Modified: Tue, 05 Mar 2019 11:49:41 GMT  
		Size: 5.0 MB (4953173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68528de1ad274ac8fea1ee7bf8cefc57517023cecfde60918a4dd8fa99b554ed`  
		Last Modified: Tue, 05 Mar 2019 11:49:39 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d52c9931eaeeebd26074ec4090405bfce9cd40fd31369a97a59614b23f97ddb`  
		Last Modified: Tue, 05 Mar 2019 11:49:39 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; arm variant v7

```console
$ docker pull spiped@sha256:303328baa0ff827a423fd1a1c5942cdc08e77ff7488c0113d6c2a50c80821eab
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.6 MB (25566908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ae5c0234d107eb0baac7b96d75f74574a8df8c9e2ef5704cd41211aa1f6bbdd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 05 Mar 2019 13:11:01 GMT
ADD file:5d43d39fbe853e1f4c9f89be2ddc937fb88624889c511b9a75d6389c2b67918a in / 
# Tue, 05 Mar 2019 13:11:03 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 16:00:10 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 05 Mar 2019 16:00:18 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 16:00:19 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 05 Mar 2019 16:00:19 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 05 Mar 2019 16:00:20 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 05 Mar 2019 16:01:05 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 16:01:06 GMT
VOLUME [/spiped]
# Tue, 05 Mar 2019 16:01:06 GMT
WORKDIR /spiped
# Tue, 05 Mar 2019 16:01:07 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Tue, 05 Mar 2019 16:01:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 16:01:09 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:ecad9bd7ef0cc879127c92e50db573b75c643910463a12affaa5be77c7960bda`  
		Last Modified: Tue, 05 Mar 2019 13:18:41 GMT  
		Size: 19.3 MB (19282494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a1079a0e4e27eef8f15fcb4dc66191c3131b53380657665a6aec30171a9ede9`  
		Last Modified: Tue, 05 Mar 2019 16:01:28 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:582de0c844438590bdba8a890e4bed1849b8144a8e72d5b7bab58fda0118b7ae`  
		Last Modified: Tue, 05 Mar 2019 16:01:28 GMT  
		Size: 1.6 MB (1573638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60e83be5cb61ede383048a46f0b49a3bf75408d1ef02f5c0f10474112ea06f92`  
		Last Modified: Tue, 05 Mar 2019 16:01:29 GMT  
		Size: 4.7 MB (4708558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8b9ec4e310cd37265d3c7eee858c7f5917e8b5a96bdffc9229b563f47ee801e`  
		Last Modified: Tue, 05 Mar 2019 16:01:28 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2209b520c251832bf4e9a6783639fa2ff7b668102020de2acc1c5fd27d2540bd`  
		Last Modified: Tue, 05 Mar 2019 16:01:27 GMT  
		Size: 352.0 B  
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
$ docker pull spiped@sha256:e54dc515e3615f4534671fd1b63739a67820bb8b5485806bc6b4969de1c98755
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34324722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2422f25f8c95be624cf47886751b5569c63eee55a508806083408634c3d1512`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 05 Mar 2019 11:45:43 GMT
ADD file:25fe90430e63a83798c7fa241ebe3a89591a059654422474b19d5610b104a639 in / 
# Tue, 05 Mar 2019 11:45:44 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 21:20:02 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 05 Mar 2019 21:20:07 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 21:20:07 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 05 Mar 2019 21:20:07 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 05 Mar 2019 21:20:07 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 05 Mar 2019 21:20:33 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 21:20:33 GMT
VOLUME [/spiped]
# Tue, 05 Mar 2019 21:20:33 GMT
WORKDIR /spiped
# Tue, 05 Mar 2019 21:20:33 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Tue, 05 Mar 2019 21:20:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 21:20:34 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:14de7d5deca96a0d1b115104a4375816794d85fc365ada5173b5a806f0d8dbcf`  
		Last Modified: Tue, 05 Mar 2019 11:55:10 GMT  
		Size: 23.1 MB (23125680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:069f111440c76b2bcce0744bda938e41961e4157fd293d45cf779680d62b7d10`  
		Last Modified: Tue, 05 Mar 2019 21:20:45 GMT  
		Size: 1.7 KB (1736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b76681ea2809c082ff7a6cfb7185b77615c0f91d0609a5226690819f90dabd64`  
		Last Modified: Tue, 05 Mar 2019 21:20:46 GMT  
		Size: 1.9 MB (1885364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72c3f5a1a3bc7caa7eb49c09a83f8f3439f80268e642057cfd7fcce3b1176ccf`  
		Last Modified: Tue, 05 Mar 2019 21:20:48 GMT  
		Size: 9.3 MB (9311498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85211191169be0d0488962c1a8e164c70c167cb71fcdff2d0fdea844f1b5bb12`  
		Last Modified: Tue, 05 Mar 2019 21:20:45 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7aec2072af975505ab2f1956f7ee75726ce78a3b3e8bbcf3078b4741d55ced4`  
		Last Modified: Tue, 05 Mar 2019 21:20:45 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; ppc64le

```console
$ docker pull spiped@sha256:42b64fbce6540c96a9159e0606916caba88a070ce2e4cdfbfb29ebf33a31421e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.2 MB (30164483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc4724df99764ed22f61a5016fdce8f84f2e921d38edeee3af782b58d62c4428`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 05 Mar 2019 09:25:57 GMT
ADD file:499a43a96e8ab3c7c8ab9d1c3260d34bb2b955e9751ada2b98194e42f9578be3 in / 
# Tue, 05 Mar 2019 09:26:02 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 15:55:16 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 05 Mar 2019 15:55:27 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 15:55:29 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 05 Mar 2019 15:55:32 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 05 Mar 2019 15:55:34 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 05 Mar 2019 15:58:07 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 15:58:12 GMT
VOLUME [/spiped]
# Tue, 05 Mar 2019 15:58:16 GMT
WORKDIR /spiped
# Tue, 05 Mar 2019 15:58:17 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Tue, 05 Mar 2019 15:58:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 15:58:22 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:1a1c20c0e1fe9ea9a7ae86ac61ed89ee8cf01dccfb363d582cb8c910510c06fb`  
		Last Modified: Tue, 05 Mar 2019 09:32:10 GMT  
		Size: 22.8 MB (22751497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26c077d02f92941d34ec5492c888e7c683606474997150608df1582f0da2b132`  
		Last Modified: Tue, 05 Mar 2019 15:58:52 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:967355bf1bdcadd6889951c9a53aa6867546405acc8cd7fdda3d9a961f6b8520`  
		Last Modified: Tue, 05 Mar 2019 15:58:52 GMT  
		Size: 1.6 MB (1561314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06a36c23dafcc1b8a1292935ccaba0cb793d7627ab1a45fde6628cfcd2c8638f`  
		Last Modified: Tue, 05 Mar 2019 15:58:53 GMT  
		Size: 5.8 MB (5849446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55608aac59aefce6a77019fdb3fa441f2a6f088e744d9fc7a188a2dc1c7cb520`  
		Last Modified: Tue, 05 Mar 2019 15:58:52 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c37b6443b305e83052bbb057cf7970016793cd1731caf71873de16352f71c72`  
		Last Modified: Tue, 05 Mar 2019 15:58:52 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; s390x

```console
$ docker pull spiped@sha256:915d5da4c517f125ec920a769e52db14ab749304a2c26b7d4c7cc89a1e8cd850
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 MB (30745600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e054645d89fc96e4984a6986495c5c8b1dadf0a303deb42e10f8ca15f8f43e86`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 05 Mar 2019 12:43:10 GMT
ADD file:977b2abfb4bb6e881775d945b4d82d3f3e492b498a78ce0a9c877d9c8b82e3a9 in / 
# Tue, 05 Mar 2019 12:43:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 15:44:52 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 05 Mar 2019 15:44:56 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 15:44:57 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 05 Mar 2019 15:44:57 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 05 Mar 2019 15:44:57 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 05 Mar 2019 15:45:19 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 15:45:20 GMT
VOLUME [/spiped]
# Tue, 05 Mar 2019 15:45:20 GMT
WORKDIR /spiped
# Tue, 05 Mar 2019 15:45:20 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Tue, 05 Mar 2019 15:45:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 15:45:22 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:2c9e1401ee6b0131741b02fed745b7f1d34bf29b0bc59f41e08dc969a710fc58`  
		Last Modified: Tue, 05 Mar 2019 12:45:42 GMT  
		Size: 22.3 MB (22345383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee8703f25d6c53db3ca19e8201198e5b332091b988b7db26dd927ca56bb1bff8`  
		Last Modified: Tue, 05 Mar 2019 15:45:41 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca2671cebed7f34d9ae36f28e6ded50035c70d2caa9da5307a829e3b9c00ac01`  
		Last Modified: Tue, 05 Mar 2019 15:45:42 GMT  
		Size: 1.6 MB (1625688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d8b8d401d369686122da77612a89df78c2b4ceb9fb44479682743a77698cd7f`  
		Last Modified: Tue, 05 Mar 2019 15:45:43 GMT  
		Size: 6.8 MB (6772339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d5f5498174f820b7ce8715ca72e24e45d98c1552e0b9f40b2c3fe6355cce77`  
		Last Modified: Tue, 05 Mar 2019 15:45:41 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbc63fc57c62818c0ad29b520a1e8cc830586f884ee2f1da31885f95d9bdc1ad`  
		Last Modified: Tue, 05 Mar 2019 15:45:41 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
