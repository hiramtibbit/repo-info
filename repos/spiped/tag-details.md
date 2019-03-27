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
$ docker pull spiped@sha256:b822b48261c9913420daf792252e67806d0877eaa8bd57604e6c3f649b121c9b
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
$ docker pull spiped@sha256:288d03e90855c467c039b42fdf617f11641eb3c083a6bbf3d8c187eb66dbacab
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30267935 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6501a4ca3adbb2be5fe0726c5966ce8c1282385104cfcc8d9fba16d7fcc5246c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 03:27:39 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 27 Mar 2019 03:27:44 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 03:27:44 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 27 Mar 2019 03:27:45 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 27 Mar 2019 03:27:45 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 27 Mar 2019 03:28:11 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 03:28:11 GMT
VOLUME [/spiped]
# Wed, 27 Mar 2019 03:28:11 GMT
WORKDIR /spiped
# Wed, 27 Mar 2019 03:28:11 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 27 Mar 2019 03:28:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 03:28:12 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3efa62874fa9ee3a28d4f29bbc5a5e74a75e60c9849af876896f1fab525dcee3`  
		Last Modified: Wed, 27 Mar 2019 03:28:23 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc4320eee094d4433d1747676e8533654e75f10d48eaad79467ad58c0e2b1acb`  
		Last Modified: Wed, 27 Mar 2019 03:28:23 GMT  
		Size: 1.9 MB (1891382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4cf09b7da38a1e551c9cc956eec205ea5e50cc9aa85fcfcc56f07cb9ebfb4e`  
		Last Modified: Wed, 27 Mar 2019 03:28:24 GMT  
		Size: 5.9 MB (5878319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b100f66cd89df86131bf97617a0aa879a21cb2192da1851ccc028265c0b5bd1`  
		Last Modified: Wed, 27 Mar 2019 03:28:23 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa2dec97127839b9ded8b53b4e9d7bc8fad9b2abf8366f6437db557a26268c33`  
		Last Modified: Wed, 27 Mar 2019 03:28:23 GMT  
		Size: 351.0 B  
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
$ docker pull spiped@sha256:b822b48261c9913420daf792252e67806d0877eaa8bd57604e6c3f649b121c9b
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
$ docker pull spiped@sha256:288d03e90855c467c039b42fdf617f11641eb3c083a6bbf3d8c187eb66dbacab
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30267935 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6501a4ca3adbb2be5fe0726c5966ce8c1282385104cfcc8d9fba16d7fcc5246c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 03:27:39 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 27 Mar 2019 03:27:44 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 03:27:44 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 27 Mar 2019 03:27:45 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 27 Mar 2019 03:27:45 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 27 Mar 2019 03:28:11 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 03:28:11 GMT
VOLUME [/spiped]
# Wed, 27 Mar 2019 03:28:11 GMT
WORKDIR /spiped
# Wed, 27 Mar 2019 03:28:11 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 27 Mar 2019 03:28:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 03:28:12 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3efa62874fa9ee3a28d4f29bbc5a5e74a75e60c9849af876896f1fab525dcee3`  
		Last Modified: Wed, 27 Mar 2019 03:28:23 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc4320eee094d4433d1747676e8533654e75f10d48eaad79467ad58c0e2b1acb`  
		Last Modified: Wed, 27 Mar 2019 03:28:23 GMT  
		Size: 1.9 MB (1891382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4cf09b7da38a1e551c9cc956eec205ea5e50cc9aa85fcfcc56f07cb9ebfb4e`  
		Last Modified: Wed, 27 Mar 2019 03:28:24 GMT  
		Size: 5.9 MB (5878319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b100f66cd89df86131bf97617a0aa879a21cb2192da1851ccc028265c0b5bd1`  
		Last Modified: Wed, 27 Mar 2019 03:28:23 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa2dec97127839b9ded8b53b4e9d7bc8fad9b2abf8366f6437db557a26268c33`  
		Last Modified: Wed, 27 Mar 2019 03:28:23 GMT  
		Size: 351.0 B  
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
$ docker pull spiped@sha256:b822b48261c9913420daf792252e67806d0877eaa8bd57604e6c3f649b121c9b
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
$ docker pull spiped@sha256:288d03e90855c467c039b42fdf617f11641eb3c083a6bbf3d8c187eb66dbacab
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30267935 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6501a4ca3adbb2be5fe0726c5966ce8c1282385104cfcc8d9fba16d7fcc5246c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 03:27:39 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 27 Mar 2019 03:27:44 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 03:27:44 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 27 Mar 2019 03:27:45 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 27 Mar 2019 03:27:45 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 27 Mar 2019 03:28:11 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 03:28:11 GMT
VOLUME [/spiped]
# Wed, 27 Mar 2019 03:28:11 GMT
WORKDIR /spiped
# Wed, 27 Mar 2019 03:28:11 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 27 Mar 2019 03:28:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 03:28:12 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3efa62874fa9ee3a28d4f29bbc5a5e74a75e60c9849af876896f1fab525dcee3`  
		Last Modified: Wed, 27 Mar 2019 03:28:23 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc4320eee094d4433d1747676e8533654e75f10d48eaad79467ad58c0e2b1acb`  
		Last Modified: Wed, 27 Mar 2019 03:28:23 GMT  
		Size: 1.9 MB (1891382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4cf09b7da38a1e551c9cc956eec205ea5e50cc9aa85fcfcc56f07cb9ebfb4e`  
		Last Modified: Wed, 27 Mar 2019 03:28:24 GMT  
		Size: 5.9 MB (5878319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b100f66cd89df86131bf97617a0aa879a21cb2192da1851ccc028265c0b5bd1`  
		Last Modified: Wed, 27 Mar 2019 03:28:23 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa2dec97127839b9ded8b53b4e9d7bc8fad9b2abf8366f6437db557a26268c33`  
		Last Modified: Wed, 27 Mar 2019 03:28:23 GMT  
		Size: 351.0 B  
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
$ docker pull spiped@sha256:ea9316c1c49293803695aa7d5ca270e8afc406a516f310b8c0f4f71eb7d49fd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
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
$ docker pull spiped@sha256:129e6c94a0476afc0b424344b20d2a8e90905659a1272ccc11bcdfff85fad46e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2617147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7523fc29a394e933980b37c6aeb276196ae6452c93ff9038beab9c20515de243`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 05:41:23 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 08 Mar 2019 05:41:25 GMT
RUN apk add --no-cache libssl1.1
# Fri, 08 Mar 2019 05:41:25 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 08 Mar 2019 05:41:26 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 08 Mar 2019 05:41:26 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 08 Mar 2019 05:41:42 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 08 Mar 2019 05:41:42 GMT
VOLUME [/spiped]
# Fri, 08 Mar 2019 05:41:43 GMT
WORKDIR /spiped
# Fri, 08 Mar 2019 05:41:43 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 08 Mar 2019 05:41:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 05:41:44 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdadc0f2a3ac5b7eda35cd5a2a8cda6d76419a8ce686d7d313987d4f6e7d3953`  
		Last Modified: Fri, 08 Mar 2019 05:41:54 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10e50a69cba957e8e14e43df036e1e2fe8a3663b45dad832bc028e46261dcf0f`  
		Last Modified: Fri, 08 Mar 2019 05:41:54 GMT  
		Size: 6.4 KB (6388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cc80fc87fabaf2924b7accfb434b2fcda6c07762f3de28d75382db55191d4a1`  
		Last Modified: Fri, 08 Mar 2019 05:41:55 GMT  
		Size: 68.3 KB (68332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:827362263eb83de1d595f86a1f2ea453091dbeadeaa9e12cced46b8da4710f48`  
		Last Modified: Fri, 08 Mar 2019 05:41:55 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dc13f0ee4e00011c1ba664f6e09feb101c639a79ea09948a37de32ad7dfc3f2`  
		Last Modified: Fri, 08 Mar 2019 05:41:54 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0-alpine` - linux; arm variant v7

```console
$ docker pull spiped@sha256:ccb667ccc71506d5d0bee5341befacd0b3b513a22d96eb48090759333575bae5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2418872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91e63bb383c01111452f360937f93946d511a85e9195624876c7c412df4628cc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:52 GMT
ADD file:e9ae09c8f3973b62bf7e10dd8b9251e50f5479c0d8d1644f632f3886e02c7323 in / 
# Fri, 08 Mar 2019 03:35:52 GMT
CMD ["/bin/sh"]
# Tue, 12 Mar 2019 12:41:35 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Tue, 12 Mar 2019 12:41:36 GMT
RUN apk add --no-cache libssl1.1
# Tue, 12 Mar 2019 12:41:37 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 12 Mar 2019 12:41:37 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 12 Mar 2019 12:41:37 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 12 Mar 2019 12:41:54 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Tue, 12 Mar 2019 12:41:54 GMT
VOLUME [/spiped]
# Tue, 12 Mar 2019 12:41:55 GMT
WORKDIR /spiped
# Tue, 12 Mar 2019 12:41:56 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Tue, 12 Mar 2019 12:41:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Mar 2019 12:41:56 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:d8d287cbc5740a5d49f37493eecadafc220fee4fd570329023344cad978c4272`  
		Last Modified: Tue, 05 Mar 2019 08:53:06 GMT  
		Size: 2.3 MB (2348580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8da258c1da7b251c36ac0d7fe1980a22f13f981a70db4c6783e508637f8ee980`  
		Last Modified: Tue, 12 Mar 2019 12:42:09 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e050ea0ebf2d80b3a5d2d610bf7bfac9bd90d70a32e139b3fb50aaa3e95cece4`  
		Last Modified: Tue, 12 Mar 2019 12:42:09 GMT  
		Size: 6.4 KB (6381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9bb9da9ec845c185310e4d12b849e76192d99ead70193b62cdd2e9799e0e5d4`  
		Last Modified: Tue, 12 Mar 2019 12:42:09 GMT  
		Size: 62.2 KB (62153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:969fb170056c6b7af6df73ec0cccb1f4b945cab2a915bd66549046bb86d7d2a6`  
		Last Modified: Tue, 12 Mar 2019 12:42:09 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a7c8d95874213fa775fd5d4054cf994f5ee2ec02a8bac5d90b54a0e432ec5cf`  
		Last Modified: Tue, 12 Mar 2019 12:42:09 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0-alpine` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:caebfd50f51747f2a2d27a115735690881995840598f1b990ccdfb11c96d0a24
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2771018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eae7c7187fe26866da8d27afde9ebd110a824b373d710b7635d4454c052c11e5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 07:53:45 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 08 Mar 2019 07:53:48 GMT
RUN apk add --no-cache libssl1.1
# Fri, 08 Mar 2019 07:53:49 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 08 Mar 2019 07:53:50 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 08 Mar 2019 07:53:51 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 08 Mar 2019 07:54:23 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 08 Mar 2019 07:54:24 GMT
VOLUME [/spiped]
# Fri, 08 Mar 2019 07:54:25 GMT
WORKDIR /spiped
# Fri, 08 Mar 2019 07:54:26 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 08 Mar 2019 07:54:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 07:54:27 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d5ecfff623894bc63b62f06796656ea0503e1bb1304913ad3de6d4f23909e45`  
		Last Modified: Fri, 08 Mar 2019 07:54:46 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:665122279a172c19fb8078cefb674b8ef8776991960e9e0772119f80d156cc46`  
		Last Modified: Fri, 08 Mar 2019 07:54:46 GMT  
		Size: 6.4 KB (6385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c2dfa54cd90411bcf74ac21b04bc7ccf4597118152c0b66735d24e27e057580`  
		Last Modified: Fri, 08 Mar 2019 07:54:46 GMT  
		Size: 75.0 KB (75002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a828fac1f1f9bdca3c602eb3896e249203a93aec3bcdfc0234d76515cac3a270`  
		Last Modified: Fri, 08 Mar 2019 07:54:47 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9728a3a61d5d98a1d7220be5f1d4494606a871d1fde27ba3ccbf080ae20a525a`  
		Last Modified: Fri, 08 Mar 2019 07:54:46 GMT  
		Size: 339.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0-alpine` - linux; 386

```console
$ docker pull spiped@sha256:97351cdf6471f361eba40031b93613241fb585d959385f3e915c156bf959e486
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2845331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21101c5ef6e438675b437edd22dfab9832a105f99ce0708117446b7ab46f30bd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:50 GMT
ADD file:98a0f92574b6a8592a131ccb07c4f516694e053d610a1701fde2d5e7c65c2175 in / 
# Fri, 08 Mar 2019 03:35:50 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 10:16:57 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 08 Mar 2019 10:16:58 GMT
RUN apk add --no-cache libssl1.1
# Fri, 08 Mar 2019 10:16:58 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 08 Mar 2019 10:16:59 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 08 Mar 2019 10:16:59 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 08 Mar 2019 10:17:09 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 08 Mar 2019 10:17:09 GMT
VOLUME [/spiped]
# Fri, 08 Mar 2019 10:17:09 GMT
WORKDIR /spiped
# Fri, 08 Mar 2019 10:17:10 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 08 Mar 2019 10:17:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 10:17:10 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:a4c1e43a7431a562d92c5eb6e09e96b4731a474af51cad1c46e2d305ede29005`  
		Last Modified: Fri, 08 Mar 2019 03:36:34 GMT  
		Size: 2.7 MB (2749355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4a305b33c4fc473f870284a5f41fa57dd9ebb0d1347f3d3f57a229dffa7dcef`  
		Last Modified: Fri, 08 Mar 2019 10:17:19 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8779ac0c98cdbd02665f281a489076f283e39d756a5e8d47bbed67d7dcf7c028`  
		Last Modified: Fri, 08 Mar 2019 10:17:19 GMT  
		Size: 6.4 KB (6396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:216c1bbf517c53b57b89dd1402aff9ee63c2b5a47143d616076e653a0da87d4d`  
		Last Modified: Fri, 08 Mar 2019 10:17:19 GMT  
		Size: 87.9 KB (87894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ade00fc94c488dd5676dce9cf0ca40becae0ef54bf93fd90d3aec4f9fb8771`  
		Last Modified: Fri, 08 Mar 2019 10:17:19 GMT  
		Size: 91.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:feb800ed4b51420050bef406b4896a51084475e5912180b3f5da4773dda811d0`  
		Last Modified: Fri, 08 Mar 2019 10:17:19 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0-alpine` - linux; ppc64le

```console
$ docker pull spiped@sha256:a176abd04b0c180b1be2fcb10327cfde5d2d5c9bf09243c239113d386e1b7976
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2875468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0cb9b03afe6e5fdaefd73880db8ba26c851a9a6a7db766ff6d9f1f25e204f6a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:33 GMT
ADD file:6dfaec9befa64397af571d1da2e766c694148f7a025b9411404a924d3de64bd3 in / 
# Fri, 08 Mar 2019 03:37:36 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:57:14 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 08 Mar 2019 04:57:31 GMT
RUN apk add --no-cache libssl1.1
# Fri, 08 Mar 2019 04:57:39 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 08 Mar 2019 04:57:51 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 08 Mar 2019 04:57:58 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 08 Mar 2019 04:58:20 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 08 Mar 2019 04:58:28 GMT
VOLUME [/spiped]
# Fri, 08 Mar 2019 04:58:36 GMT
WORKDIR /spiped
# Fri, 08 Mar 2019 04:58:40 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:58:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:58:51 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:611bce2a4fa9a0e18025e088381d26f1dda2e1c02160c4d24a2720f9dbca9eaf`  
		Last Modified: Fri, 08 Mar 2019 03:38:31 GMT  
		Size: 2.8 MB (2778638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a21dec35fc69e0f327466707769b38d7d6182a641794261721720f223a5ddea9`  
		Last Modified: Fri, 08 Mar 2019 04:59:11 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d79651e2b986209fd420a71391e2590bed1c9029d6dcd08401497324c5af0fc`  
		Last Modified: Fri, 08 Mar 2019 04:59:11 GMT  
		Size: 6.4 KB (6395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:760fe0f66a57447927cc26dfade83918321f2de50276b4c1dc3480c5dc38514a`  
		Last Modified: Fri, 08 Mar 2019 04:59:11 GMT  
		Size: 88.7 KB (88673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f39370cccb2e800a191c47dc73f77f6c205990d4efa39db9fc82891a8259b0f8`  
		Last Modified: Fri, 08 Mar 2019 04:59:11 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35b8181b59f5bc8a643d3a7f16c62a231e883c9201db69a3d6889f5142409217`  
		Last Modified: Fri, 08 Mar 2019 04:59:11 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0-alpine` - linux; s390x

```console
$ docker pull spiped@sha256:6133a2af505f180170426ec6b55f7d01e45251f9776bf5028f88d164be25ee6c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2622291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fc736851cb15c248f006b38a8e20baa9ac0038116394b7c4d807c0e70be492a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 05:04:51 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 08 Mar 2019 05:04:52 GMT
RUN apk add --no-cache libssl1.1
# Fri, 08 Mar 2019 05:04:52 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 08 Mar 2019 05:04:53 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 08 Mar 2019 05:04:53 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 08 Mar 2019 05:05:01 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 08 Mar 2019 05:05:01 GMT
VOLUME [/spiped]
# Fri, 08 Mar 2019 05:05:01 GMT
WORKDIR /spiped
# Fri, 08 Mar 2019 05:05:02 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 08 Mar 2019 05:05:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 05:05:02 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0192823751d616a3364f8ceca6f6e50c78d6a0f36a004767798f75863205dd6`  
		Last Modified: Fri, 08 Mar 2019 05:05:17 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6151faf7e9d82cd2a235fdd05ec445e1883fe858aab30151f1de8b67f4e6aeb8`  
		Last Modified: Fri, 08 Mar 2019 05:05:17 GMT  
		Size: 6.4 KB (6392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10a50ad12010bfda0f8370739e5275876addd713f131e40234ab14828d572db3`  
		Last Modified: Fri, 08 Mar 2019 05:05:17 GMT  
		Size: 72.9 KB (72900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee004ccdb1d799f613601443799c97669a66107dcd980d84d2169666dcf53ceb`  
		Last Modified: Fri, 08 Mar 2019 05:05:17 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cb15f3940d163f4563aec6c0bcf4c124cae8d9ac490e6b6d0c5595a0b78fd84`  
		Last Modified: Fri, 08 Mar 2019 05:05:17 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1.6-alpine`

```console
$ docker pull spiped@sha256:ea9316c1c49293803695aa7d5ca270e8afc406a516f310b8c0f4f71eb7d49fd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
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
$ docker pull spiped@sha256:129e6c94a0476afc0b424344b20d2a8e90905659a1272ccc11bcdfff85fad46e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2617147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7523fc29a394e933980b37c6aeb276196ae6452c93ff9038beab9c20515de243`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 05:41:23 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 08 Mar 2019 05:41:25 GMT
RUN apk add --no-cache libssl1.1
# Fri, 08 Mar 2019 05:41:25 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 08 Mar 2019 05:41:26 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 08 Mar 2019 05:41:26 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 08 Mar 2019 05:41:42 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 08 Mar 2019 05:41:42 GMT
VOLUME [/spiped]
# Fri, 08 Mar 2019 05:41:43 GMT
WORKDIR /spiped
# Fri, 08 Mar 2019 05:41:43 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 08 Mar 2019 05:41:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 05:41:44 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdadc0f2a3ac5b7eda35cd5a2a8cda6d76419a8ce686d7d313987d4f6e7d3953`  
		Last Modified: Fri, 08 Mar 2019 05:41:54 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10e50a69cba957e8e14e43df036e1e2fe8a3663b45dad832bc028e46261dcf0f`  
		Last Modified: Fri, 08 Mar 2019 05:41:54 GMT  
		Size: 6.4 KB (6388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cc80fc87fabaf2924b7accfb434b2fcda6c07762f3de28d75382db55191d4a1`  
		Last Modified: Fri, 08 Mar 2019 05:41:55 GMT  
		Size: 68.3 KB (68332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:827362263eb83de1d595f86a1f2ea453091dbeadeaa9e12cced46b8da4710f48`  
		Last Modified: Fri, 08 Mar 2019 05:41:55 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dc13f0ee4e00011c1ba664f6e09feb101c639a79ea09948a37de32ad7dfc3f2`  
		Last Modified: Fri, 08 Mar 2019 05:41:54 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6-alpine` - linux; arm variant v7

```console
$ docker pull spiped@sha256:ccb667ccc71506d5d0bee5341befacd0b3b513a22d96eb48090759333575bae5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2418872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91e63bb383c01111452f360937f93946d511a85e9195624876c7c412df4628cc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:52 GMT
ADD file:e9ae09c8f3973b62bf7e10dd8b9251e50f5479c0d8d1644f632f3886e02c7323 in / 
# Fri, 08 Mar 2019 03:35:52 GMT
CMD ["/bin/sh"]
# Tue, 12 Mar 2019 12:41:35 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Tue, 12 Mar 2019 12:41:36 GMT
RUN apk add --no-cache libssl1.1
# Tue, 12 Mar 2019 12:41:37 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 12 Mar 2019 12:41:37 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 12 Mar 2019 12:41:37 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 12 Mar 2019 12:41:54 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Tue, 12 Mar 2019 12:41:54 GMT
VOLUME [/spiped]
# Tue, 12 Mar 2019 12:41:55 GMT
WORKDIR /spiped
# Tue, 12 Mar 2019 12:41:56 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Tue, 12 Mar 2019 12:41:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Mar 2019 12:41:56 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:d8d287cbc5740a5d49f37493eecadafc220fee4fd570329023344cad978c4272`  
		Last Modified: Tue, 05 Mar 2019 08:53:06 GMT  
		Size: 2.3 MB (2348580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8da258c1da7b251c36ac0d7fe1980a22f13f981a70db4c6783e508637f8ee980`  
		Last Modified: Tue, 12 Mar 2019 12:42:09 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e050ea0ebf2d80b3a5d2d610bf7bfac9bd90d70a32e139b3fb50aaa3e95cece4`  
		Last Modified: Tue, 12 Mar 2019 12:42:09 GMT  
		Size: 6.4 KB (6381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9bb9da9ec845c185310e4d12b849e76192d99ead70193b62cdd2e9799e0e5d4`  
		Last Modified: Tue, 12 Mar 2019 12:42:09 GMT  
		Size: 62.2 KB (62153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:969fb170056c6b7af6df73ec0cccb1f4b945cab2a915bd66549046bb86d7d2a6`  
		Last Modified: Tue, 12 Mar 2019 12:42:09 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a7c8d95874213fa775fd5d4054cf994f5ee2ec02a8bac5d90b54a0e432ec5cf`  
		Last Modified: Tue, 12 Mar 2019 12:42:09 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6-alpine` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:caebfd50f51747f2a2d27a115735690881995840598f1b990ccdfb11c96d0a24
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2771018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eae7c7187fe26866da8d27afde9ebd110a824b373d710b7635d4454c052c11e5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 07:53:45 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 08 Mar 2019 07:53:48 GMT
RUN apk add --no-cache libssl1.1
# Fri, 08 Mar 2019 07:53:49 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 08 Mar 2019 07:53:50 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 08 Mar 2019 07:53:51 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 08 Mar 2019 07:54:23 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 08 Mar 2019 07:54:24 GMT
VOLUME [/spiped]
# Fri, 08 Mar 2019 07:54:25 GMT
WORKDIR /spiped
# Fri, 08 Mar 2019 07:54:26 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 08 Mar 2019 07:54:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 07:54:27 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d5ecfff623894bc63b62f06796656ea0503e1bb1304913ad3de6d4f23909e45`  
		Last Modified: Fri, 08 Mar 2019 07:54:46 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:665122279a172c19fb8078cefb674b8ef8776991960e9e0772119f80d156cc46`  
		Last Modified: Fri, 08 Mar 2019 07:54:46 GMT  
		Size: 6.4 KB (6385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c2dfa54cd90411bcf74ac21b04bc7ccf4597118152c0b66735d24e27e057580`  
		Last Modified: Fri, 08 Mar 2019 07:54:46 GMT  
		Size: 75.0 KB (75002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a828fac1f1f9bdca3c602eb3896e249203a93aec3bcdfc0234d76515cac3a270`  
		Last Modified: Fri, 08 Mar 2019 07:54:47 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9728a3a61d5d98a1d7220be5f1d4494606a871d1fde27ba3ccbf080ae20a525a`  
		Last Modified: Fri, 08 Mar 2019 07:54:46 GMT  
		Size: 339.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6-alpine` - linux; 386

```console
$ docker pull spiped@sha256:97351cdf6471f361eba40031b93613241fb585d959385f3e915c156bf959e486
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2845331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21101c5ef6e438675b437edd22dfab9832a105f99ce0708117446b7ab46f30bd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:50 GMT
ADD file:98a0f92574b6a8592a131ccb07c4f516694e053d610a1701fde2d5e7c65c2175 in / 
# Fri, 08 Mar 2019 03:35:50 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 10:16:57 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 08 Mar 2019 10:16:58 GMT
RUN apk add --no-cache libssl1.1
# Fri, 08 Mar 2019 10:16:58 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 08 Mar 2019 10:16:59 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 08 Mar 2019 10:16:59 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 08 Mar 2019 10:17:09 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 08 Mar 2019 10:17:09 GMT
VOLUME [/spiped]
# Fri, 08 Mar 2019 10:17:09 GMT
WORKDIR /spiped
# Fri, 08 Mar 2019 10:17:10 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 08 Mar 2019 10:17:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 10:17:10 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:a4c1e43a7431a562d92c5eb6e09e96b4731a474af51cad1c46e2d305ede29005`  
		Last Modified: Fri, 08 Mar 2019 03:36:34 GMT  
		Size: 2.7 MB (2749355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4a305b33c4fc473f870284a5f41fa57dd9ebb0d1347f3d3f57a229dffa7dcef`  
		Last Modified: Fri, 08 Mar 2019 10:17:19 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8779ac0c98cdbd02665f281a489076f283e39d756a5e8d47bbed67d7dcf7c028`  
		Last Modified: Fri, 08 Mar 2019 10:17:19 GMT  
		Size: 6.4 KB (6396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:216c1bbf517c53b57b89dd1402aff9ee63c2b5a47143d616076e653a0da87d4d`  
		Last Modified: Fri, 08 Mar 2019 10:17:19 GMT  
		Size: 87.9 KB (87894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ade00fc94c488dd5676dce9cf0ca40becae0ef54bf93fd90d3aec4f9fb8771`  
		Last Modified: Fri, 08 Mar 2019 10:17:19 GMT  
		Size: 91.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:feb800ed4b51420050bef406b4896a51084475e5912180b3f5da4773dda811d0`  
		Last Modified: Fri, 08 Mar 2019 10:17:19 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6-alpine` - linux; ppc64le

```console
$ docker pull spiped@sha256:a176abd04b0c180b1be2fcb10327cfde5d2d5c9bf09243c239113d386e1b7976
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2875468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0cb9b03afe6e5fdaefd73880db8ba26c851a9a6a7db766ff6d9f1f25e204f6a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:33 GMT
ADD file:6dfaec9befa64397af571d1da2e766c694148f7a025b9411404a924d3de64bd3 in / 
# Fri, 08 Mar 2019 03:37:36 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:57:14 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 08 Mar 2019 04:57:31 GMT
RUN apk add --no-cache libssl1.1
# Fri, 08 Mar 2019 04:57:39 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 08 Mar 2019 04:57:51 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 08 Mar 2019 04:57:58 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 08 Mar 2019 04:58:20 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 08 Mar 2019 04:58:28 GMT
VOLUME [/spiped]
# Fri, 08 Mar 2019 04:58:36 GMT
WORKDIR /spiped
# Fri, 08 Mar 2019 04:58:40 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:58:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:58:51 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:611bce2a4fa9a0e18025e088381d26f1dda2e1c02160c4d24a2720f9dbca9eaf`  
		Last Modified: Fri, 08 Mar 2019 03:38:31 GMT  
		Size: 2.8 MB (2778638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a21dec35fc69e0f327466707769b38d7d6182a641794261721720f223a5ddea9`  
		Last Modified: Fri, 08 Mar 2019 04:59:11 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d79651e2b986209fd420a71391e2590bed1c9029d6dcd08401497324c5af0fc`  
		Last Modified: Fri, 08 Mar 2019 04:59:11 GMT  
		Size: 6.4 KB (6395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:760fe0f66a57447927cc26dfade83918321f2de50276b4c1dc3480c5dc38514a`  
		Last Modified: Fri, 08 Mar 2019 04:59:11 GMT  
		Size: 88.7 KB (88673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f39370cccb2e800a191c47dc73f77f6c205990d4efa39db9fc82891a8259b0f8`  
		Last Modified: Fri, 08 Mar 2019 04:59:11 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35b8181b59f5bc8a643d3a7f16c62a231e883c9201db69a3d6889f5142409217`  
		Last Modified: Fri, 08 Mar 2019 04:59:11 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6-alpine` - linux; s390x

```console
$ docker pull spiped@sha256:6133a2af505f180170426ec6b55f7d01e45251f9776bf5028f88d164be25ee6c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2622291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fc736851cb15c248f006b38a8e20baa9ac0038116394b7c4d807c0e70be492a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 05:04:51 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 08 Mar 2019 05:04:52 GMT
RUN apk add --no-cache libssl1.1
# Fri, 08 Mar 2019 05:04:52 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 08 Mar 2019 05:04:53 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 08 Mar 2019 05:04:53 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 08 Mar 2019 05:05:01 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 08 Mar 2019 05:05:01 GMT
VOLUME [/spiped]
# Fri, 08 Mar 2019 05:05:01 GMT
WORKDIR /spiped
# Fri, 08 Mar 2019 05:05:02 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 08 Mar 2019 05:05:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 05:05:02 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0192823751d616a3364f8ceca6f6e50c78d6a0f36a004767798f75863205dd6`  
		Last Modified: Fri, 08 Mar 2019 05:05:17 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6151faf7e9d82cd2a235fdd05ec445e1883fe858aab30151f1de8b67f4e6aeb8`  
		Last Modified: Fri, 08 Mar 2019 05:05:17 GMT  
		Size: 6.4 KB (6392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10a50ad12010bfda0f8370739e5275876addd713f131e40234ab14828d572db3`  
		Last Modified: Fri, 08 Mar 2019 05:05:17 GMT  
		Size: 72.9 KB (72900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee004ccdb1d799f613601443799c97669a66107dcd980d84d2169666dcf53ceb`  
		Last Modified: Fri, 08 Mar 2019 05:05:17 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cb15f3940d163f4563aec6c0bcf4c124cae8d9ac490e6b6d0c5595a0b78fd84`  
		Last Modified: Fri, 08 Mar 2019 05:05:17 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1-alpine`

```console
$ docker pull spiped@sha256:ea9316c1c49293803695aa7d5ca270e8afc406a516f310b8c0f4f71eb7d49fd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
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
$ docker pull spiped@sha256:129e6c94a0476afc0b424344b20d2a8e90905659a1272ccc11bcdfff85fad46e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2617147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7523fc29a394e933980b37c6aeb276196ae6452c93ff9038beab9c20515de243`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 05:41:23 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 08 Mar 2019 05:41:25 GMT
RUN apk add --no-cache libssl1.1
# Fri, 08 Mar 2019 05:41:25 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 08 Mar 2019 05:41:26 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 08 Mar 2019 05:41:26 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 08 Mar 2019 05:41:42 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 08 Mar 2019 05:41:42 GMT
VOLUME [/spiped]
# Fri, 08 Mar 2019 05:41:43 GMT
WORKDIR /spiped
# Fri, 08 Mar 2019 05:41:43 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 08 Mar 2019 05:41:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 05:41:44 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdadc0f2a3ac5b7eda35cd5a2a8cda6d76419a8ce686d7d313987d4f6e7d3953`  
		Last Modified: Fri, 08 Mar 2019 05:41:54 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10e50a69cba957e8e14e43df036e1e2fe8a3663b45dad832bc028e46261dcf0f`  
		Last Modified: Fri, 08 Mar 2019 05:41:54 GMT  
		Size: 6.4 KB (6388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cc80fc87fabaf2924b7accfb434b2fcda6c07762f3de28d75382db55191d4a1`  
		Last Modified: Fri, 08 Mar 2019 05:41:55 GMT  
		Size: 68.3 KB (68332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:827362263eb83de1d595f86a1f2ea453091dbeadeaa9e12cced46b8da4710f48`  
		Last Modified: Fri, 08 Mar 2019 05:41:55 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dc13f0ee4e00011c1ba664f6e09feb101c639a79ea09948a37de32ad7dfc3f2`  
		Last Modified: Fri, 08 Mar 2019 05:41:54 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1-alpine` - linux; arm variant v7

```console
$ docker pull spiped@sha256:ccb667ccc71506d5d0bee5341befacd0b3b513a22d96eb48090759333575bae5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2418872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91e63bb383c01111452f360937f93946d511a85e9195624876c7c412df4628cc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:52 GMT
ADD file:e9ae09c8f3973b62bf7e10dd8b9251e50f5479c0d8d1644f632f3886e02c7323 in / 
# Fri, 08 Mar 2019 03:35:52 GMT
CMD ["/bin/sh"]
# Tue, 12 Mar 2019 12:41:35 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Tue, 12 Mar 2019 12:41:36 GMT
RUN apk add --no-cache libssl1.1
# Tue, 12 Mar 2019 12:41:37 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 12 Mar 2019 12:41:37 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 12 Mar 2019 12:41:37 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 12 Mar 2019 12:41:54 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Tue, 12 Mar 2019 12:41:54 GMT
VOLUME [/spiped]
# Tue, 12 Mar 2019 12:41:55 GMT
WORKDIR /spiped
# Tue, 12 Mar 2019 12:41:56 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Tue, 12 Mar 2019 12:41:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Mar 2019 12:41:56 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:d8d287cbc5740a5d49f37493eecadafc220fee4fd570329023344cad978c4272`  
		Last Modified: Tue, 05 Mar 2019 08:53:06 GMT  
		Size: 2.3 MB (2348580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8da258c1da7b251c36ac0d7fe1980a22f13f981a70db4c6783e508637f8ee980`  
		Last Modified: Tue, 12 Mar 2019 12:42:09 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e050ea0ebf2d80b3a5d2d610bf7bfac9bd90d70a32e139b3fb50aaa3e95cece4`  
		Last Modified: Tue, 12 Mar 2019 12:42:09 GMT  
		Size: 6.4 KB (6381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9bb9da9ec845c185310e4d12b849e76192d99ead70193b62cdd2e9799e0e5d4`  
		Last Modified: Tue, 12 Mar 2019 12:42:09 GMT  
		Size: 62.2 KB (62153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:969fb170056c6b7af6df73ec0cccb1f4b945cab2a915bd66549046bb86d7d2a6`  
		Last Modified: Tue, 12 Mar 2019 12:42:09 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a7c8d95874213fa775fd5d4054cf994f5ee2ec02a8bac5d90b54a0e432ec5cf`  
		Last Modified: Tue, 12 Mar 2019 12:42:09 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1-alpine` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:caebfd50f51747f2a2d27a115735690881995840598f1b990ccdfb11c96d0a24
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2771018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eae7c7187fe26866da8d27afde9ebd110a824b373d710b7635d4454c052c11e5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 07:53:45 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 08 Mar 2019 07:53:48 GMT
RUN apk add --no-cache libssl1.1
# Fri, 08 Mar 2019 07:53:49 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 08 Mar 2019 07:53:50 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 08 Mar 2019 07:53:51 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 08 Mar 2019 07:54:23 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 08 Mar 2019 07:54:24 GMT
VOLUME [/spiped]
# Fri, 08 Mar 2019 07:54:25 GMT
WORKDIR /spiped
# Fri, 08 Mar 2019 07:54:26 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 08 Mar 2019 07:54:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 07:54:27 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d5ecfff623894bc63b62f06796656ea0503e1bb1304913ad3de6d4f23909e45`  
		Last Modified: Fri, 08 Mar 2019 07:54:46 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:665122279a172c19fb8078cefb674b8ef8776991960e9e0772119f80d156cc46`  
		Last Modified: Fri, 08 Mar 2019 07:54:46 GMT  
		Size: 6.4 KB (6385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c2dfa54cd90411bcf74ac21b04bc7ccf4597118152c0b66735d24e27e057580`  
		Last Modified: Fri, 08 Mar 2019 07:54:46 GMT  
		Size: 75.0 KB (75002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a828fac1f1f9bdca3c602eb3896e249203a93aec3bcdfc0234d76515cac3a270`  
		Last Modified: Fri, 08 Mar 2019 07:54:47 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9728a3a61d5d98a1d7220be5f1d4494606a871d1fde27ba3ccbf080ae20a525a`  
		Last Modified: Fri, 08 Mar 2019 07:54:46 GMT  
		Size: 339.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1-alpine` - linux; 386

```console
$ docker pull spiped@sha256:97351cdf6471f361eba40031b93613241fb585d959385f3e915c156bf959e486
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2845331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21101c5ef6e438675b437edd22dfab9832a105f99ce0708117446b7ab46f30bd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:50 GMT
ADD file:98a0f92574b6a8592a131ccb07c4f516694e053d610a1701fde2d5e7c65c2175 in / 
# Fri, 08 Mar 2019 03:35:50 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 10:16:57 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 08 Mar 2019 10:16:58 GMT
RUN apk add --no-cache libssl1.1
# Fri, 08 Mar 2019 10:16:58 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 08 Mar 2019 10:16:59 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 08 Mar 2019 10:16:59 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 08 Mar 2019 10:17:09 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 08 Mar 2019 10:17:09 GMT
VOLUME [/spiped]
# Fri, 08 Mar 2019 10:17:09 GMT
WORKDIR /spiped
# Fri, 08 Mar 2019 10:17:10 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 08 Mar 2019 10:17:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 10:17:10 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:a4c1e43a7431a562d92c5eb6e09e96b4731a474af51cad1c46e2d305ede29005`  
		Last Modified: Fri, 08 Mar 2019 03:36:34 GMT  
		Size: 2.7 MB (2749355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4a305b33c4fc473f870284a5f41fa57dd9ebb0d1347f3d3f57a229dffa7dcef`  
		Last Modified: Fri, 08 Mar 2019 10:17:19 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8779ac0c98cdbd02665f281a489076f283e39d756a5e8d47bbed67d7dcf7c028`  
		Last Modified: Fri, 08 Mar 2019 10:17:19 GMT  
		Size: 6.4 KB (6396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:216c1bbf517c53b57b89dd1402aff9ee63c2b5a47143d616076e653a0da87d4d`  
		Last Modified: Fri, 08 Mar 2019 10:17:19 GMT  
		Size: 87.9 KB (87894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ade00fc94c488dd5676dce9cf0ca40becae0ef54bf93fd90d3aec4f9fb8771`  
		Last Modified: Fri, 08 Mar 2019 10:17:19 GMT  
		Size: 91.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:feb800ed4b51420050bef406b4896a51084475e5912180b3f5da4773dda811d0`  
		Last Modified: Fri, 08 Mar 2019 10:17:19 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1-alpine` - linux; ppc64le

```console
$ docker pull spiped@sha256:a176abd04b0c180b1be2fcb10327cfde5d2d5c9bf09243c239113d386e1b7976
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2875468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0cb9b03afe6e5fdaefd73880db8ba26c851a9a6a7db766ff6d9f1f25e204f6a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:33 GMT
ADD file:6dfaec9befa64397af571d1da2e766c694148f7a025b9411404a924d3de64bd3 in / 
# Fri, 08 Mar 2019 03:37:36 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:57:14 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 08 Mar 2019 04:57:31 GMT
RUN apk add --no-cache libssl1.1
# Fri, 08 Mar 2019 04:57:39 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 08 Mar 2019 04:57:51 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 08 Mar 2019 04:57:58 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 08 Mar 2019 04:58:20 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 08 Mar 2019 04:58:28 GMT
VOLUME [/spiped]
# Fri, 08 Mar 2019 04:58:36 GMT
WORKDIR /spiped
# Fri, 08 Mar 2019 04:58:40 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:58:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:58:51 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:611bce2a4fa9a0e18025e088381d26f1dda2e1c02160c4d24a2720f9dbca9eaf`  
		Last Modified: Fri, 08 Mar 2019 03:38:31 GMT  
		Size: 2.8 MB (2778638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a21dec35fc69e0f327466707769b38d7d6182a641794261721720f223a5ddea9`  
		Last Modified: Fri, 08 Mar 2019 04:59:11 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d79651e2b986209fd420a71391e2590bed1c9029d6dcd08401497324c5af0fc`  
		Last Modified: Fri, 08 Mar 2019 04:59:11 GMT  
		Size: 6.4 KB (6395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:760fe0f66a57447927cc26dfade83918321f2de50276b4c1dc3480c5dc38514a`  
		Last Modified: Fri, 08 Mar 2019 04:59:11 GMT  
		Size: 88.7 KB (88673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f39370cccb2e800a191c47dc73f77f6c205990d4efa39db9fc82891a8259b0f8`  
		Last Modified: Fri, 08 Mar 2019 04:59:11 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35b8181b59f5bc8a643d3a7f16c62a231e883c9201db69a3d6889f5142409217`  
		Last Modified: Fri, 08 Mar 2019 04:59:11 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1-alpine` - linux; s390x

```console
$ docker pull spiped@sha256:6133a2af505f180170426ec6b55f7d01e45251f9776bf5028f88d164be25ee6c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2622291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fc736851cb15c248f006b38a8e20baa9ac0038116394b7c4d807c0e70be492a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 05:04:51 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 08 Mar 2019 05:04:52 GMT
RUN apk add --no-cache libssl1.1
# Fri, 08 Mar 2019 05:04:52 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 08 Mar 2019 05:04:53 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 08 Mar 2019 05:04:53 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 08 Mar 2019 05:05:01 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 08 Mar 2019 05:05:01 GMT
VOLUME [/spiped]
# Fri, 08 Mar 2019 05:05:01 GMT
WORKDIR /spiped
# Fri, 08 Mar 2019 05:05:02 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 08 Mar 2019 05:05:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 05:05:02 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0192823751d616a3364f8ceca6f6e50c78d6a0f36a004767798f75863205dd6`  
		Last Modified: Fri, 08 Mar 2019 05:05:17 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6151faf7e9d82cd2a235fdd05ec445e1883fe858aab30151f1de8b67f4e6aeb8`  
		Last Modified: Fri, 08 Mar 2019 05:05:17 GMT  
		Size: 6.4 KB (6392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10a50ad12010bfda0f8370739e5275876addd713f131e40234ab14828d572db3`  
		Last Modified: Fri, 08 Mar 2019 05:05:17 GMT  
		Size: 72.9 KB (72900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee004ccdb1d799f613601443799c97669a66107dcd980d84d2169666dcf53ceb`  
		Last Modified: Fri, 08 Mar 2019 05:05:17 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cb15f3940d163f4563aec6c0bcf4c124cae8d9ac490e6b6d0c5595a0b78fd84`  
		Last Modified: Fri, 08 Mar 2019 05:05:17 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:alpine`

```console
$ docker pull spiped@sha256:ea9316c1c49293803695aa7d5ca270e8afc406a516f310b8c0f4f71eb7d49fd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
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
$ docker pull spiped@sha256:129e6c94a0476afc0b424344b20d2a8e90905659a1272ccc11bcdfff85fad46e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2617147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7523fc29a394e933980b37c6aeb276196ae6452c93ff9038beab9c20515de243`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 05:41:23 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 08 Mar 2019 05:41:25 GMT
RUN apk add --no-cache libssl1.1
# Fri, 08 Mar 2019 05:41:25 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 08 Mar 2019 05:41:26 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 08 Mar 2019 05:41:26 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 08 Mar 2019 05:41:42 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 08 Mar 2019 05:41:42 GMT
VOLUME [/spiped]
# Fri, 08 Mar 2019 05:41:43 GMT
WORKDIR /spiped
# Fri, 08 Mar 2019 05:41:43 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 08 Mar 2019 05:41:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 05:41:44 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdadc0f2a3ac5b7eda35cd5a2a8cda6d76419a8ce686d7d313987d4f6e7d3953`  
		Last Modified: Fri, 08 Mar 2019 05:41:54 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10e50a69cba957e8e14e43df036e1e2fe8a3663b45dad832bc028e46261dcf0f`  
		Last Modified: Fri, 08 Mar 2019 05:41:54 GMT  
		Size: 6.4 KB (6388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cc80fc87fabaf2924b7accfb434b2fcda6c07762f3de28d75382db55191d4a1`  
		Last Modified: Fri, 08 Mar 2019 05:41:55 GMT  
		Size: 68.3 KB (68332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:827362263eb83de1d595f86a1f2ea453091dbeadeaa9e12cced46b8da4710f48`  
		Last Modified: Fri, 08 Mar 2019 05:41:55 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dc13f0ee4e00011c1ba664f6e09feb101c639a79ea09948a37de32ad7dfc3f2`  
		Last Modified: Fri, 08 Mar 2019 05:41:54 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:alpine` - linux; arm variant v7

```console
$ docker pull spiped@sha256:ccb667ccc71506d5d0bee5341befacd0b3b513a22d96eb48090759333575bae5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2418872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91e63bb383c01111452f360937f93946d511a85e9195624876c7c412df4628cc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:52 GMT
ADD file:e9ae09c8f3973b62bf7e10dd8b9251e50f5479c0d8d1644f632f3886e02c7323 in / 
# Fri, 08 Mar 2019 03:35:52 GMT
CMD ["/bin/sh"]
# Tue, 12 Mar 2019 12:41:35 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Tue, 12 Mar 2019 12:41:36 GMT
RUN apk add --no-cache libssl1.1
# Tue, 12 Mar 2019 12:41:37 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 12 Mar 2019 12:41:37 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 12 Mar 2019 12:41:37 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 12 Mar 2019 12:41:54 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Tue, 12 Mar 2019 12:41:54 GMT
VOLUME [/spiped]
# Tue, 12 Mar 2019 12:41:55 GMT
WORKDIR /spiped
# Tue, 12 Mar 2019 12:41:56 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Tue, 12 Mar 2019 12:41:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Mar 2019 12:41:56 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:d8d287cbc5740a5d49f37493eecadafc220fee4fd570329023344cad978c4272`  
		Last Modified: Tue, 05 Mar 2019 08:53:06 GMT  
		Size: 2.3 MB (2348580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8da258c1da7b251c36ac0d7fe1980a22f13f981a70db4c6783e508637f8ee980`  
		Last Modified: Tue, 12 Mar 2019 12:42:09 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e050ea0ebf2d80b3a5d2d610bf7bfac9bd90d70a32e139b3fb50aaa3e95cece4`  
		Last Modified: Tue, 12 Mar 2019 12:42:09 GMT  
		Size: 6.4 KB (6381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9bb9da9ec845c185310e4d12b849e76192d99ead70193b62cdd2e9799e0e5d4`  
		Last Modified: Tue, 12 Mar 2019 12:42:09 GMT  
		Size: 62.2 KB (62153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:969fb170056c6b7af6df73ec0cccb1f4b945cab2a915bd66549046bb86d7d2a6`  
		Last Modified: Tue, 12 Mar 2019 12:42:09 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a7c8d95874213fa775fd5d4054cf994f5ee2ec02a8bac5d90b54a0e432ec5cf`  
		Last Modified: Tue, 12 Mar 2019 12:42:09 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:alpine` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:caebfd50f51747f2a2d27a115735690881995840598f1b990ccdfb11c96d0a24
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2771018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eae7c7187fe26866da8d27afde9ebd110a824b373d710b7635d4454c052c11e5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 07:53:45 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 08 Mar 2019 07:53:48 GMT
RUN apk add --no-cache libssl1.1
# Fri, 08 Mar 2019 07:53:49 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 08 Mar 2019 07:53:50 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 08 Mar 2019 07:53:51 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 08 Mar 2019 07:54:23 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 08 Mar 2019 07:54:24 GMT
VOLUME [/spiped]
# Fri, 08 Mar 2019 07:54:25 GMT
WORKDIR /spiped
# Fri, 08 Mar 2019 07:54:26 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 08 Mar 2019 07:54:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 07:54:27 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d5ecfff623894bc63b62f06796656ea0503e1bb1304913ad3de6d4f23909e45`  
		Last Modified: Fri, 08 Mar 2019 07:54:46 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:665122279a172c19fb8078cefb674b8ef8776991960e9e0772119f80d156cc46`  
		Last Modified: Fri, 08 Mar 2019 07:54:46 GMT  
		Size: 6.4 KB (6385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c2dfa54cd90411bcf74ac21b04bc7ccf4597118152c0b66735d24e27e057580`  
		Last Modified: Fri, 08 Mar 2019 07:54:46 GMT  
		Size: 75.0 KB (75002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a828fac1f1f9bdca3c602eb3896e249203a93aec3bcdfc0234d76515cac3a270`  
		Last Modified: Fri, 08 Mar 2019 07:54:47 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9728a3a61d5d98a1d7220be5f1d4494606a871d1fde27ba3ccbf080ae20a525a`  
		Last Modified: Fri, 08 Mar 2019 07:54:46 GMT  
		Size: 339.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:alpine` - linux; 386

```console
$ docker pull spiped@sha256:97351cdf6471f361eba40031b93613241fb585d959385f3e915c156bf959e486
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2845331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21101c5ef6e438675b437edd22dfab9832a105f99ce0708117446b7ab46f30bd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:50 GMT
ADD file:98a0f92574b6a8592a131ccb07c4f516694e053d610a1701fde2d5e7c65c2175 in / 
# Fri, 08 Mar 2019 03:35:50 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 10:16:57 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 08 Mar 2019 10:16:58 GMT
RUN apk add --no-cache libssl1.1
# Fri, 08 Mar 2019 10:16:58 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 08 Mar 2019 10:16:59 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 08 Mar 2019 10:16:59 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 08 Mar 2019 10:17:09 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 08 Mar 2019 10:17:09 GMT
VOLUME [/spiped]
# Fri, 08 Mar 2019 10:17:09 GMT
WORKDIR /spiped
# Fri, 08 Mar 2019 10:17:10 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 08 Mar 2019 10:17:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 10:17:10 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:a4c1e43a7431a562d92c5eb6e09e96b4731a474af51cad1c46e2d305ede29005`  
		Last Modified: Fri, 08 Mar 2019 03:36:34 GMT  
		Size: 2.7 MB (2749355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4a305b33c4fc473f870284a5f41fa57dd9ebb0d1347f3d3f57a229dffa7dcef`  
		Last Modified: Fri, 08 Mar 2019 10:17:19 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8779ac0c98cdbd02665f281a489076f283e39d756a5e8d47bbed67d7dcf7c028`  
		Last Modified: Fri, 08 Mar 2019 10:17:19 GMT  
		Size: 6.4 KB (6396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:216c1bbf517c53b57b89dd1402aff9ee63c2b5a47143d616076e653a0da87d4d`  
		Last Modified: Fri, 08 Mar 2019 10:17:19 GMT  
		Size: 87.9 KB (87894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ade00fc94c488dd5676dce9cf0ca40becae0ef54bf93fd90d3aec4f9fb8771`  
		Last Modified: Fri, 08 Mar 2019 10:17:19 GMT  
		Size: 91.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:feb800ed4b51420050bef406b4896a51084475e5912180b3f5da4773dda811d0`  
		Last Modified: Fri, 08 Mar 2019 10:17:19 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:alpine` - linux; ppc64le

```console
$ docker pull spiped@sha256:a176abd04b0c180b1be2fcb10327cfde5d2d5c9bf09243c239113d386e1b7976
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2875468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0cb9b03afe6e5fdaefd73880db8ba26c851a9a6a7db766ff6d9f1f25e204f6a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:33 GMT
ADD file:6dfaec9befa64397af571d1da2e766c694148f7a025b9411404a924d3de64bd3 in / 
# Fri, 08 Mar 2019 03:37:36 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:57:14 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 08 Mar 2019 04:57:31 GMT
RUN apk add --no-cache libssl1.1
# Fri, 08 Mar 2019 04:57:39 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 08 Mar 2019 04:57:51 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 08 Mar 2019 04:57:58 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 08 Mar 2019 04:58:20 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 08 Mar 2019 04:58:28 GMT
VOLUME [/spiped]
# Fri, 08 Mar 2019 04:58:36 GMT
WORKDIR /spiped
# Fri, 08 Mar 2019 04:58:40 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:58:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:58:51 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:611bce2a4fa9a0e18025e088381d26f1dda2e1c02160c4d24a2720f9dbca9eaf`  
		Last Modified: Fri, 08 Mar 2019 03:38:31 GMT  
		Size: 2.8 MB (2778638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a21dec35fc69e0f327466707769b38d7d6182a641794261721720f223a5ddea9`  
		Last Modified: Fri, 08 Mar 2019 04:59:11 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d79651e2b986209fd420a71391e2590bed1c9029d6dcd08401497324c5af0fc`  
		Last Modified: Fri, 08 Mar 2019 04:59:11 GMT  
		Size: 6.4 KB (6395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:760fe0f66a57447927cc26dfade83918321f2de50276b4c1dc3480c5dc38514a`  
		Last Modified: Fri, 08 Mar 2019 04:59:11 GMT  
		Size: 88.7 KB (88673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f39370cccb2e800a191c47dc73f77f6c205990d4efa39db9fc82891a8259b0f8`  
		Last Modified: Fri, 08 Mar 2019 04:59:11 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35b8181b59f5bc8a643d3a7f16c62a231e883c9201db69a3d6889f5142409217`  
		Last Modified: Fri, 08 Mar 2019 04:59:11 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:alpine` - linux; s390x

```console
$ docker pull spiped@sha256:6133a2af505f180170426ec6b55f7d01e45251f9776bf5028f88d164be25ee6c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2622291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fc736851cb15c248f006b38a8e20baa9ac0038116394b7c4d807c0e70be492a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 05:04:51 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 08 Mar 2019 05:04:52 GMT
RUN apk add --no-cache libssl1.1
# Fri, 08 Mar 2019 05:04:52 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 08 Mar 2019 05:04:53 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 08 Mar 2019 05:04:53 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 08 Mar 2019 05:05:01 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 08 Mar 2019 05:05:01 GMT
VOLUME [/spiped]
# Fri, 08 Mar 2019 05:05:01 GMT
WORKDIR /spiped
# Fri, 08 Mar 2019 05:05:02 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 08 Mar 2019 05:05:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 05:05:02 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0192823751d616a3364f8ceca6f6e50c78d6a0f36a004767798f75863205dd6`  
		Last Modified: Fri, 08 Mar 2019 05:05:17 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6151faf7e9d82cd2a235fdd05ec445e1883fe858aab30151f1de8b67f4e6aeb8`  
		Last Modified: Fri, 08 Mar 2019 05:05:17 GMT  
		Size: 6.4 KB (6392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10a50ad12010bfda0f8370739e5275876addd713f131e40234ab14828d572db3`  
		Last Modified: Fri, 08 Mar 2019 05:05:17 GMT  
		Size: 72.9 KB (72900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee004ccdb1d799f613601443799c97669a66107dcd980d84d2169666dcf53ceb`  
		Last Modified: Fri, 08 Mar 2019 05:05:17 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cb15f3940d163f4563aec6c0bcf4c124cae8d9ac490e6b6d0c5595a0b78fd84`  
		Last Modified: Fri, 08 Mar 2019 05:05:17 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:latest`

```console
$ docker pull spiped@sha256:b822b48261c9913420daf792252e67806d0877eaa8bd57604e6c3f649b121c9b
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
$ docker pull spiped@sha256:288d03e90855c467c039b42fdf617f11641eb3c083a6bbf3d8c187eb66dbacab
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30267935 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6501a4ca3adbb2be5fe0726c5966ce8c1282385104cfcc8d9fba16d7fcc5246c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 03:27:39 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 27 Mar 2019 03:27:44 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 03:27:44 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 27 Mar 2019 03:27:45 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 27 Mar 2019 03:27:45 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 27 Mar 2019 03:28:11 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 03:28:11 GMT
VOLUME [/spiped]
# Wed, 27 Mar 2019 03:28:11 GMT
WORKDIR /spiped
# Wed, 27 Mar 2019 03:28:11 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 27 Mar 2019 03:28:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 03:28:12 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3efa62874fa9ee3a28d4f29bbc5a5e74a75e60c9849af876896f1fab525dcee3`  
		Last Modified: Wed, 27 Mar 2019 03:28:23 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc4320eee094d4433d1747676e8533654e75f10d48eaad79467ad58c0e2b1acb`  
		Last Modified: Wed, 27 Mar 2019 03:28:23 GMT  
		Size: 1.9 MB (1891382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4cf09b7da38a1e551c9cc956eec205ea5e50cc9aa85fcfcc56f07cb9ebfb4e`  
		Last Modified: Wed, 27 Mar 2019 03:28:24 GMT  
		Size: 5.9 MB (5878319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b100f66cd89df86131bf97617a0aa879a21cb2192da1851ccc028265c0b5bd1`  
		Last Modified: Wed, 27 Mar 2019 03:28:23 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa2dec97127839b9ded8b53b4e9d7bc8fad9b2abf8366f6437db557a26268c33`  
		Last Modified: Wed, 27 Mar 2019 03:28:23 GMT  
		Size: 351.0 B  
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
