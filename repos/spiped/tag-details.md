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
$ docker pull spiped@sha256:51e475ad703c5eba0d2f2993a16fb9e97a78aa42a6734b61f61280bbedef3f65
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
$ docker pull spiped@sha256:669ae0c7c7afcf392ca23c9ae8b65c69aa2bcc6bbee60fa2c0fcdf312c9be8e1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.7 MB (27748640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1800114e33c090e4d78001f3728dd171dadcbb808ddb4488494d0a558f20dac0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:57 GMT
ADD file:7a35d0949b1b3e7394102d060feb38dba6645340f0c24c11c41eab11995474e2 in / 
# Wed, 27 Mar 2019 08:53:58 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 11:46:04 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 27 Mar 2019 11:46:14 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 11:46:14 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 27 Mar 2019 11:46:14 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 27 Mar 2019 11:46:15 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 27 Mar 2019 11:47:35 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 11:47:35 GMT
VOLUME [/spiped]
# Wed, 27 Mar 2019 11:47:35 GMT
WORKDIR /spiped
# Wed, 27 Mar 2019 11:47:36 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 27 Mar 2019 11:47:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 11:47:37 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:2e028234e3987a188a306c264af3c27abc8240fc8e19373e1c5adc01b31e6176`  
		Last Modified: Wed, 27 Mar 2019 08:59:38 GMT  
		Size: 21.2 MB (21160663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38fb4352de43c0e60fae432a7386b963879c74ae6fa752bdbecfa5c456445ded`  
		Last Modified: Wed, 27 Mar 2019 11:47:52 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68d95a87a5986aa3e4051531fb695c3640c8986dea91401284934e34f64525b4`  
		Last Modified: Wed, 27 Mar 2019 11:47:52 GMT  
		Size: 1.6 MB (1632496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a7318a56c417d3bc90386e56837134101ce44dc1b76eaacfa0669751622f88`  
		Last Modified: Wed, 27 Mar 2019 11:47:54 GMT  
		Size: 5.0 MB (4953273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f00059192b792dd497a6196b29642fa5c56f35d5726d97ff660a76214809ff31`  
		Last Modified: Wed, 27 Mar 2019 11:47:52 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69a4da1feea4d7edf68fa306045da0f5cb12c03f42a56c9f4340f488cbe6d8e8`  
		Last Modified: Wed, 27 Mar 2019 11:47:52 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1` - linux; arm variant v7

```console
$ docker pull spiped@sha256:d1761a57cbe9d33d23603aa5c7382f373d7debe193802584e494b67bce822f40
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.6 MB (25566889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98d2fce5b9916e1fb7d4fbe09a5155735290caadfa243c5c358066a243fb148c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 27 Mar 2019 12:07:48 GMT
ADD file:6bf06125d936ccaf67981470df5ef6b9bd5dee3c0ef0e042a448fc60bb02f191 in / 
# Wed, 27 Mar 2019 12:07:49 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 14:46:21 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 27 Mar 2019 14:46:30 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 14:46:30 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 27 Mar 2019 14:46:31 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 27 Mar 2019 14:46:31 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 27 Mar 2019 14:47:17 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 14:47:18 GMT
VOLUME [/spiped]
# Wed, 27 Mar 2019 14:47:19 GMT
WORKDIR /spiped
# Wed, 27 Mar 2019 14:47:20 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 27 Mar 2019 14:47:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 14:47:21 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:fac132c5d16f670820c8c4ae332bd663c2ff856e9af86b2b23a201db263d851e`  
		Last Modified: Wed, 27 Mar 2019 12:13:15 GMT  
		Size: 19.3 MB (19282442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a96e21d6e9b68ebeded2deef984527995b0541a571972a641495d08061169b2d`  
		Last Modified: Wed, 27 Mar 2019 14:47:44 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f439e539b817c357d04be92b2a091f0c25e2896d3f409e6a27edf68085581112`  
		Last Modified: Wed, 27 Mar 2019 14:47:44 GMT  
		Size: 1.6 MB (1573674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:072def37617def5a9c73cf102bb8280c48fcc6a4483ea443ee9cddb6bc07848b`  
		Last Modified: Wed, 27 Mar 2019 14:47:46 GMT  
		Size: 4.7 MB (4708561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0efc17597ea1183db78a315a7ac1d6cb1f36012e584aea125ec92646dab6568`  
		Last Modified: Wed, 27 Mar 2019 14:47:44 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdbd3c1a846030fb6a27b158ca680803d99c3e15fa6523eeebde847e1d1b887d`  
		Last Modified: Wed, 27 Mar 2019 14:47:44 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:5982920db2e6f947e8fa4f81104a8a8cfd4e23976c3bc167bc3aca4169f5b1fa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 MB (27204054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:998672d093fc24d37464aee3b93742c91f95e6e2f960d16dbfe04bd4a246b7e1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:46 GMT
ADD file:9db7760cb1c28ef0cd3fa9ee9d0f528d2bcfe80b1c3973daa9f87e30b2047102 in / 
# Wed, 27 Mar 2019 08:47:47 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 18:00:40 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 27 Mar 2019 18:00:55 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 18:00:55 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 27 Mar 2019 18:00:56 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 27 Mar 2019 18:00:57 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 27 Mar 2019 18:04:03 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 18:04:04 GMT
VOLUME [/spiped]
# Wed, 27 Mar 2019 18:04:06 GMT
WORKDIR /spiped
# Wed, 27 Mar 2019 18:04:07 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 27 Mar 2019 18:04:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 18:04:10 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:007027d142c80b166a004bc7265c04036b80df438ac408f1a947e05c581b418e`  
		Last Modified: Wed, 27 Mar 2019 08:52:56 GMT  
		Size: 20.3 MB (20340179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:071f74b81c65fbc8c5854557fd9bfd590a8476ee21e81c3791cf903cdb6b1c2e`  
		Last Modified: Wed, 27 Mar 2019 18:04:39 GMT  
		Size: 1.7 KB (1748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a28c1252db1c6225fd34751ab045e669a8ed06ba904d31538b9f20e937e541fe`  
		Last Modified: Wed, 27 Mar 2019 18:04:40 GMT  
		Size: 1.6 MB (1623599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c71b025af878dac561882dfc647a1f5d96641f00b6d7d3b45c8faa467882c8b9`  
		Last Modified: Wed, 27 Mar 2019 18:04:42 GMT  
		Size: 5.2 MB (5238082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ac188fed91e6a287d7694a2eefbe01505c8ca8e928899a68aa3e84805da532e`  
		Last Modified: Wed, 27 Mar 2019 18:04:39 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c21616accd32e189f5c05b760544ffbe9727b4925ba2c1a942f91425db894815`  
		Last Modified: Wed, 27 Mar 2019 18:04:39 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1` - linux; 386

```console
$ docker pull spiped@sha256:23a5a8d48af53af5a92dbf6768a59780c57d760ddc2e09c7db80dcbd368021e9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34324856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b56266a66ea78c94fa3c0fb443d0ee29e0d0c69a3f807bf23110e36a241ed846`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 27 Mar 2019 10:43:41 GMT
ADD file:13e40d14dbdd0814b4fb7b2a378757164620517fec383739c87747c27e07d8e7 in / 
# Wed, 27 Mar 2019 10:43:41 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 13:30:58 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 27 Mar 2019 13:31:03 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 13:31:04 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 27 Mar 2019 13:31:04 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 27 Mar 2019 13:31:04 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 27 Mar 2019 13:31:31 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 13:31:31 GMT
VOLUME [/spiped]
# Wed, 27 Mar 2019 13:31:32 GMT
WORKDIR /spiped
# Wed, 27 Mar 2019 13:31:32 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 27 Mar 2019 13:31:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 13:31:32 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:a5ba78e1989e52ae238c3f225934c1a2dee4dfaa4667abd6f2e0717b78159472`  
		Last Modified: Wed, 27 Mar 2019 10:49:24 GMT  
		Size: 23.1 MB (23125745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfffc06d344053b3d19227346e356e48968d47743bc6748bf21bc325234dc7ba`  
		Last Modified: Wed, 27 Mar 2019 13:31:43 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2efe01dbaffc64a8ed586fb5bde794119722dfc8e8a5b817afc29370fc670d60`  
		Last Modified: Wed, 27 Mar 2019 13:31:44 GMT  
		Size: 1.9 MB (1885410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea4e14cce3fcdb2cbcadf024837ca267b5edab5a6a9024b0971779c0d74f4dbb`  
		Last Modified: Wed, 27 Mar 2019 13:31:46 GMT  
		Size: 9.3 MB (9311526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01d7eccb7b5bdd59eb6f2ab356d0bb49d043f4adddfaa3cb49da1d078b0f06f6`  
		Last Modified: Wed, 27 Mar 2019 13:31:43 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae6b754e58c03526450b7a40aac8640a9e47371598693f4da3b4e2c47b189fc6`  
		Last Modified: Wed, 27 Mar 2019 13:31:43 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1` - linux; ppc64le

```console
$ docker pull spiped@sha256:a90538c4b1450f955b6ba367dee3adf6c317d25923478d961e47f3016435d6f8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.2 MB (30164490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e28056f8b6309e1448a6ef8b80159f7b67f3a2ac70f355d3bf6c1220758095c2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:29:08 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 27 Mar 2019 12:29:25 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:29:29 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 27 Mar 2019 12:29:30 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 27 Mar 2019 12:29:33 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 27 Mar 2019 12:31:35 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 12:31:39 GMT
VOLUME [/spiped]
# Wed, 27 Mar 2019 12:31:42 GMT
WORKDIR /spiped
# Wed, 27 Mar 2019 12:31:43 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 27 Mar 2019 12:31:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 12:31:48 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:47457ee2fac27696752b903854c4e4621e3481edc7a34b727f45b4c355de7976`  
		Last Modified: Wed, 27 Mar 2019 08:32:50 GMT  
		Size: 22.8 MB (22751385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eacc5429d64237974ea8695fad2bb34ec4758f4d55fd50bc2de9d824fbf7c8dc`  
		Last Modified: Wed, 27 Mar 2019 12:32:10 GMT  
		Size: 1.7 KB (1749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e81ff6fd7c1e79e229ff632b2aed426cce8851c4a3f9058b2c256ae2bfbc5d4`  
		Last Modified: Wed, 27 Mar 2019 12:32:08 GMT  
		Size: 1.6 MB (1561396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68cf0540fec8bb17ab25b94564a394622b6497650e710bf86504c3805e522d8d`  
		Last Modified: Wed, 27 Mar 2019 12:32:07 GMT  
		Size: 5.8 MB (5849482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f63a6b59ecc1c31747a4040574dc98fd1f7c86b2b15f80ed4acf01b11550609`  
		Last Modified: Wed, 27 Mar 2019 12:32:06 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e86f733e43c79235771834c6498614921dc5c5c8c368bf76af4ba5470390863`  
		Last Modified: Wed, 27 Mar 2019 12:32:06 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1` - linux; s390x

```console
$ docker pull spiped@sha256:b4b41feedba24237cb6a789e79e1e8edb2d34f0db269cf7f1a0844ad0adf5dbb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 MB (30745497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af90c8cd9050c54ef385e60d1f359fafa057d4414135c77aeceb91b14f92d37a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 27 Mar 2019 11:43:45 GMT
ADD file:bbc08c16057153af2910791402d3a29eb5da11e030d2fc6778644c444142d2ab in / 
# Wed, 27 Mar 2019 11:43:46 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 15:19:42 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 27 Mar 2019 15:19:47 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 15:19:47 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 27 Mar 2019 15:19:47 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 27 Mar 2019 15:19:48 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 27 Mar 2019 15:20:42 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 15:20:43 GMT
VOLUME [/spiped]
# Wed, 27 Mar 2019 15:20:43 GMT
WORKDIR /spiped
# Wed, 27 Mar 2019 15:20:43 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 27 Mar 2019 15:20:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 15:20:44 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:9ce36a197e11ef57ec11f749055a2d2db6113c6b0026d930d3ddbbd86a7ec15b`  
		Last Modified: Wed, 27 Mar 2019 11:46:50 GMT  
		Size: 22.3 MB (22345282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1adacf61acf0ab6f008594a79331e2c1cb7cd012bc101090b089473678edfa5d`  
		Last Modified: Wed, 27 Mar 2019 15:21:09 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6889ef27649118e775ec8f1f11926f5da115cc772d3853ee3d392b8aec4d8a70`  
		Last Modified: Wed, 27 Mar 2019 15:21:09 GMT  
		Size: 1.6 MB (1625698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c18d3fb723580ae732c9995508d18fae3a720e43b3c4b78a1a3575faa4fbef2f`  
		Last Modified: Wed, 27 Mar 2019 15:21:11 GMT  
		Size: 6.8 MB (6772326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0895f2643aa20d20c242a767c4d28b9ae28efef03d87b11ef748c9c8a7e040d8`  
		Last Modified: Wed, 27 Mar 2019 15:21:09 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fa56ce8862ced50c4e8ba41bef1fbb3e818be741f93f4efc692d6106304554d`  
		Last Modified: Wed, 27 Mar 2019 15:21:09 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1.6`

```console
$ docker pull spiped@sha256:51e475ad703c5eba0d2f2993a16fb9e97a78aa42a6734b61f61280bbedef3f65
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
$ docker pull spiped@sha256:669ae0c7c7afcf392ca23c9ae8b65c69aa2bcc6bbee60fa2c0fcdf312c9be8e1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.7 MB (27748640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1800114e33c090e4d78001f3728dd171dadcbb808ddb4488494d0a558f20dac0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:57 GMT
ADD file:7a35d0949b1b3e7394102d060feb38dba6645340f0c24c11c41eab11995474e2 in / 
# Wed, 27 Mar 2019 08:53:58 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 11:46:04 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 27 Mar 2019 11:46:14 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 11:46:14 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 27 Mar 2019 11:46:14 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 27 Mar 2019 11:46:15 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 27 Mar 2019 11:47:35 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 11:47:35 GMT
VOLUME [/spiped]
# Wed, 27 Mar 2019 11:47:35 GMT
WORKDIR /spiped
# Wed, 27 Mar 2019 11:47:36 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 27 Mar 2019 11:47:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 11:47:37 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:2e028234e3987a188a306c264af3c27abc8240fc8e19373e1c5adc01b31e6176`  
		Last Modified: Wed, 27 Mar 2019 08:59:38 GMT  
		Size: 21.2 MB (21160663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38fb4352de43c0e60fae432a7386b963879c74ae6fa752bdbecfa5c456445ded`  
		Last Modified: Wed, 27 Mar 2019 11:47:52 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68d95a87a5986aa3e4051531fb695c3640c8986dea91401284934e34f64525b4`  
		Last Modified: Wed, 27 Mar 2019 11:47:52 GMT  
		Size: 1.6 MB (1632496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a7318a56c417d3bc90386e56837134101ce44dc1b76eaacfa0669751622f88`  
		Last Modified: Wed, 27 Mar 2019 11:47:54 GMT  
		Size: 5.0 MB (4953273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f00059192b792dd497a6196b29642fa5c56f35d5726d97ff660a76214809ff31`  
		Last Modified: Wed, 27 Mar 2019 11:47:52 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69a4da1feea4d7edf68fa306045da0f5cb12c03f42a56c9f4340f488cbe6d8e8`  
		Last Modified: Wed, 27 Mar 2019 11:47:52 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6` - linux; arm variant v7

```console
$ docker pull spiped@sha256:d1761a57cbe9d33d23603aa5c7382f373d7debe193802584e494b67bce822f40
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.6 MB (25566889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98d2fce5b9916e1fb7d4fbe09a5155735290caadfa243c5c358066a243fb148c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 27 Mar 2019 12:07:48 GMT
ADD file:6bf06125d936ccaf67981470df5ef6b9bd5dee3c0ef0e042a448fc60bb02f191 in / 
# Wed, 27 Mar 2019 12:07:49 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 14:46:21 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 27 Mar 2019 14:46:30 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 14:46:30 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 27 Mar 2019 14:46:31 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 27 Mar 2019 14:46:31 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 27 Mar 2019 14:47:17 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 14:47:18 GMT
VOLUME [/spiped]
# Wed, 27 Mar 2019 14:47:19 GMT
WORKDIR /spiped
# Wed, 27 Mar 2019 14:47:20 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 27 Mar 2019 14:47:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 14:47:21 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:fac132c5d16f670820c8c4ae332bd663c2ff856e9af86b2b23a201db263d851e`  
		Last Modified: Wed, 27 Mar 2019 12:13:15 GMT  
		Size: 19.3 MB (19282442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a96e21d6e9b68ebeded2deef984527995b0541a571972a641495d08061169b2d`  
		Last Modified: Wed, 27 Mar 2019 14:47:44 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f439e539b817c357d04be92b2a091f0c25e2896d3f409e6a27edf68085581112`  
		Last Modified: Wed, 27 Mar 2019 14:47:44 GMT  
		Size: 1.6 MB (1573674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:072def37617def5a9c73cf102bb8280c48fcc6a4483ea443ee9cddb6bc07848b`  
		Last Modified: Wed, 27 Mar 2019 14:47:46 GMT  
		Size: 4.7 MB (4708561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0efc17597ea1183db78a315a7ac1d6cb1f36012e584aea125ec92646dab6568`  
		Last Modified: Wed, 27 Mar 2019 14:47:44 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdbd3c1a846030fb6a27b158ca680803d99c3e15fa6523eeebde847e1d1b887d`  
		Last Modified: Wed, 27 Mar 2019 14:47:44 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:5982920db2e6f947e8fa4f81104a8a8cfd4e23976c3bc167bc3aca4169f5b1fa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 MB (27204054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:998672d093fc24d37464aee3b93742c91f95e6e2f960d16dbfe04bd4a246b7e1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:46 GMT
ADD file:9db7760cb1c28ef0cd3fa9ee9d0f528d2bcfe80b1c3973daa9f87e30b2047102 in / 
# Wed, 27 Mar 2019 08:47:47 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 18:00:40 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 27 Mar 2019 18:00:55 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 18:00:55 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 27 Mar 2019 18:00:56 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 27 Mar 2019 18:00:57 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 27 Mar 2019 18:04:03 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 18:04:04 GMT
VOLUME [/spiped]
# Wed, 27 Mar 2019 18:04:06 GMT
WORKDIR /spiped
# Wed, 27 Mar 2019 18:04:07 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 27 Mar 2019 18:04:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 18:04:10 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:007027d142c80b166a004bc7265c04036b80df438ac408f1a947e05c581b418e`  
		Last Modified: Wed, 27 Mar 2019 08:52:56 GMT  
		Size: 20.3 MB (20340179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:071f74b81c65fbc8c5854557fd9bfd590a8476ee21e81c3791cf903cdb6b1c2e`  
		Last Modified: Wed, 27 Mar 2019 18:04:39 GMT  
		Size: 1.7 KB (1748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a28c1252db1c6225fd34751ab045e669a8ed06ba904d31538b9f20e937e541fe`  
		Last Modified: Wed, 27 Mar 2019 18:04:40 GMT  
		Size: 1.6 MB (1623599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c71b025af878dac561882dfc647a1f5d96641f00b6d7d3b45c8faa467882c8b9`  
		Last Modified: Wed, 27 Mar 2019 18:04:42 GMT  
		Size: 5.2 MB (5238082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ac188fed91e6a287d7694a2eefbe01505c8ca8e928899a68aa3e84805da532e`  
		Last Modified: Wed, 27 Mar 2019 18:04:39 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c21616accd32e189f5c05b760544ffbe9727b4925ba2c1a942f91425db894815`  
		Last Modified: Wed, 27 Mar 2019 18:04:39 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6` - linux; 386

```console
$ docker pull spiped@sha256:23a5a8d48af53af5a92dbf6768a59780c57d760ddc2e09c7db80dcbd368021e9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34324856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b56266a66ea78c94fa3c0fb443d0ee29e0d0c69a3f807bf23110e36a241ed846`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 27 Mar 2019 10:43:41 GMT
ADD file:13e40d14dbdd0814b4fb7b2a378757164620517fec383739c87747c27e07d8e7 in / 
# Wed, 27 Mar 2019 10:43:41 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 13:30:58 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 27 Mar 2019 13:31:03 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 13:31:04 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 27 Mar 2019 13:31:04 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 27 Mar 2019 13:31:04 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 27 Mar 2019 13:31:31 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 13:31:31 GMT
VOLUME [/spiped]
# Wed, 27 Mar 2019 13:31:32 GMT
WORKDIR /spiped
# Wed, 27 Mar 2019 13:31:32 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 27 Mar 2019 13:31:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 13:31:32 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:a5ba78e1989e52ae238c3f225934c1a2dee4dfaa4667abd6f2e0717b78159472`  
		Last Modified: Wed, 27 Mar 2019 10:49:24 GMT  
		Size: 23.1 MB (23125745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfffc06d344053b3d19227346e356e48968d47743bc6748bf21bc325234dc7ba`  
		Last Modified: Wed, 27 Mar 2019 13:31:43 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2efe01dbaffc64a8ed586fb5bde794119722dfc8e8a5b817afc29370fc670d60`  
		Last Modified: Wed, 27 Mar 2019 13:31:44 GMT  
		Size: 1.9 MB (1885410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea4e14cce3fcdb2cbcadf024837ca267b5edab5a6a9024b0971779c0d74f4dbb`  
		Last Modified: Wed, 27 Mar 2019 13:31:46 GMT  
		Size: 9.3 MB (9311526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01d7eccb7b5bdd59eb6f2ab356d0bb49d043f4adddfaa3cb49da1d078b0f06f6`  
		Last Modified: Wed, 27 Mar 2019 13:31:43 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae6b754e58c03526450b7a40aac8640a9e47371598693f4da3b4e2c47b189fc6`  
		Last Modified: Wed, 27 Mar 2019 13:31:43 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6` - linux; ppc64le

```console
$ docker pull spiped@sha256:a90538c4b1450f955b6ba367dee3adf6c317d25923478d961e47f3016435d6f8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.2 MB (30164490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e28056f8b6309e1448a6ef8b80159f7b67f3a2ac70f355d3bf6c1220758095c2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:29:08 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 27 Mar 2019 12:29:25 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:29:29 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 27 Mar 2019 12:29:30 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 27 Mar 2019 12:29:33 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 27 Mar 2019 12:31:35 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 12:31:39 GMT
VOLUME [/spiped]
# Wed, 27 Mar 2019 12:31:42 GMT
WORKDIR /spiped
# Wed, 27 Mar 2019 12:31:43 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 27 Mar 2019 12:31:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 12:31:48 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:47457ee2fac27696752b903854c4e4621e3481edc7a34b727f45b4c355de7976`  
		Last Modified: Wed, 27 Mar 2019 08:32:50 GMT  
		Size: 22.8 MB (22751385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eacc5429d64237974ea8695fad2bb34ec4758f4d55fd50bc2de9d824fbf7c8dc`  
		Last Modified: Wed, 27 Mar 2019 12:32:10 GMT  
		Size: 1.7 KB (1749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e81ff6fd7c1e79e229ff632b2aed426cce8851c4a3f9058b2c256ae2bfbc5d4`  
		Last Modified: Wed, 27 Mar 2019 12:32:08 GMT  
		Size: 1.6 MB (1561396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68cf0540fec8bb17ab25b94564a394622b6497650e710bf86504c3805e522d8d`  
		Last Modified: Wed, 27 Mar 2019 12:32:07 GMT  
		Size: 5.8 MB (5849482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f63a6b59ecc1c31747a4040574dc98fd1f7c86b2b15f80ed4acf01b11550609`  
		Last Modified: Wed, 27 Mar 2019 12:32:06 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e86f733e43c79235771834c6498614921dc5c5c8c368bf76af4ba5470390863`  
		Last Modified: Wed, 27 Mar 2019 12:32:06 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6` - linux; s390x

```console
$ docker pull spiped@sha256:b4b41feedba24237cb6a789e79e1e8edb2d34f0db269cf7f1a0844ad0adf5dbb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 MB (30745497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af90c8cd9050c54ef385e60d1f359fafa057d4414135c77aeceb91b14f92d37a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 27 Mar 2019 11:43:45 GMT
ADD file:bbc08c16057153af2910791402d3a29eb5da11e030d2fc6778644c444142d2ab in / 
# Wed, 27 Mar 2019 11:43:46 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 15:19:42 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 27 Mar 2019 15:19:47 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 15:19:47 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 27 Mar 2019 15:19:47 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 27 Mar 2019 15:19:48 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 27 Mar 2019 15:20:42 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 15:20:43 GMT
VOLUME [/spiped]
# Wed, 27 Mar 2019 15:20:43 GMT
WORKDIR /spiped
# Wed, 27 Mar 2019 15:20:43 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 27 Mar 2019 15:20:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 15:20:44 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:9ce36a197e11ef57ec11f749055a2d2db6113c6b0026d930d3ddbbd86a7ec15b`  
		Last Modified: Wed, 27 Mar 2019 11:46:50 GMT  
		Size: 22.3 MB (22345282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1adacf61acf0ab6f008594a79331e2c1cb7cd012bc101090b089473678edfa5d`  
		Last Modified: Wed, 27 Mar 2019 15:21:09 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6889ef27649118e775ec8f1f11926f5da115cc772d3853ee3d392b8aec4d8a70`  
		Last Modified: Wed, 27 Mar 2019 15:21:09 GMT  
		Size: 1.6 MB (1625698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c18d3fb723580ae732c9995508d18fae3a720e43b3c4b78a1a3575faa4fbef2f`  
		Last Modified: Wed, 27 Mar 2019 15:21:11 GMT  
		Size: 6.8 MB (6772326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0895f2643aa20d20c242a767c4d28b9ae28efef03d87b11ef748c9c8a7e040d8`  
		Last Modified: Wed, 27 Mar 2019 15:21:09 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fa56ce8862ced50c4e8ba41bef1fbb3e818be741f93f4efc692d6106304554d`  
		Last Modified: Wed, 27 Mar 2019 15:21:09 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1.6.0`

```console
$ docker pull spiped@sha256:51e475ad703c5eba0d2f2993a16fb9e97a78aa42a6734b61f61280bbedef3f65
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
$ docker pull spiped@sha256:669ae0c7c7afcf392ca23c9ae8b65c69aa2bcc6bbee60fa2c0fcdf312c9be8e1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.7 MB (27748640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1800114e33c090e4d78001f3728dd171dadcbb808ddb4488494d0a558f20dac0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:57 GMT
ADD file:7a35d0949b1b3e7394102d060feb38dba6645340f0c24c11c41eab11995474e2 in / 
# Wed, 27 Mar 2019 08:53:58 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 11:46:04 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 27 Mar 2019 11:46:14 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 11:46:14 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 27 Mar 2019 11:46:14 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 27 Mar 2019 11:46:15 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 27 Mar 2019 11:47:35 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 11:47:35 GMT
VOLUME [/spiped]
# Wed, 27 Mar 2019 11:47:35 GMT
WORKDIR /spiped
# Wed, 27 Mar 2019 11:47:36 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 27 Mar 2019 11:47:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 11:47:37 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:2e028234e3987a188a306c264af3c27abc8240fc8e19373e1c5adc01b31e6176`  
		Last Modified: Wed, 27 Mar 2019 08:59:38 GMT  
		Size: 21.2 MB (21160663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38fb4352de43c0e60fae432a7386b963879c74ae6fa752bdbecfa5c456445ded`  
		Last Modified: Wed, 27 Mar 2019 11:47:52 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68d95a87a5986aa3e4051531fb695c3640c8986dea91401284934e34f64525b4`  
		Last Modified: Wed, 27 Mar 2019 11:47:52 GMT  
		Size: 1.6 MB (1632496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a7318a56c417d3bc90386e56837134101ce44dc1b76eaacfa0669751622f88`  
		Last Modified: Wed, 27 Mar 2019 11:47:54 GMT  
		Size: 5.0 MB (4953273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f00059192b792dd497a6196b29642fa5c56f35d5726d97ff660a76214809ff31`  
		Last Modified: Wed, 27 Mar 2019 11:47:52 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69a4da1feea4d7edf68fa306045da0f5cb12c03f42a56c9f4340f488cbe6d8e8`  
		Last Modified: Wed, 27 Mar 2019 11:47:52 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0` - linux; arm variant v7

```console
$ docker pull spiped@sha256:d1761a57cbe9d33d23603aa5c7382f373d7debe193802584e494b67bce822f40
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.6 MB (25566889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98d2fce5b9916e1fb7d4fbe09a5155735290caadfa243c5c358066a243fb148c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 27 Mar 2019 12:07:48 GMT
ADD file:6bf06125d936ccaf67981470df5ef6b9bd5dee3c0ef0e042a448fc60bb02f191 in / 
# Wed, 27 Mar 2019 12:07:49 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 14:46:21 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 27 Mar 2019 14:46:30 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 14:46:30 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 27 Mar 2019 14:46:31 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 27 Mar 2019 14:46:31 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 27 Mar 2019 14:47:17 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 14:47:18 GMT
VOLUME [/spiped]
# Wed, 27 Mar 2019 14:47:19 GMT
WORKDIR /spiped
# Wed, 27 Mar 2019 14:47:20 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 27 Mar 2019 14:47:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 14:47:21 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:fac132c5d16f670820c8c4ae332bd663c2ff856e9af86b2b23a201db263d851e`  
		Last Modified: Wed, 27 Mar 2019 12:13:15 GMT  
		Size: 19.3 MB (19282442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a96e21d6e9b68ebeded2deef984527995b0541a571972a641495d08061169b2d`  
		Last Modified: Wed, 27 Mar 2019 14:47:44 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f439e539b817c357d04be92b2a091f0c25e2896d3f409e6a27edf68085581112`  
		Last Modified: Wed, 27 Mar 2019 14:47:44 GMT  
		Size: 1.6 MB (1573674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:072def37617def5a9c73cf102bb8280c48fcc6a4483ea443ee9cddb6bc07848b`  
		Last Modified: Wed, 27 Mar 2019 14:47:46 GMT  
		Size: 4.7 MB (4708561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0efc17597ea1183db78a315a7ac1d6cb1f36012e584aea125ec92646dab6568`  
		Last Modified: Wed, 27 Mar 2019 14:47:44 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdbd3c1a846030fb6a27b158ca680803d99c3e15fa6523eeebde847e1d1b887d`  
		Last Modified: Wed, 27 Mar 2019 14:47:44 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:5982920db2e6f947e8fa4f81104a8a8cfd4e23976c3bc167bc3aca4169f5b1fa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 MB (27204054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:998672d093fc24d37464aee3b93742c91f95e6e2f960d16dbfe04bd4a246b7e1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:46 GMT
ADD file:9db7760cb1c28ef0cd3fa9ee9d0f528d2bcfe80b1c3973daa9f87e30b2047102 in / 
# Wed, 27 Mar 2019 08:47:47 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 18:00:40 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 27 Mar 2019 18:00:55 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 18:00:55 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 27 Mar 2019 18:00:56 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 27 Mar 2019 18:00:57 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 27 Mar 2019 18:04:03 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 18:04:04 GMT
VOLUME [/spiped]
# Wed, 27 Mar 2019 18:04:06 GMT
WORKDIR /spiped
# Wed, 27 Mar 2019 18:04:07 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 27 Mar 2019 18:04:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 18:04:10 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:007027d142c80b166a004bc7265c04036b80df438ac408f1a947e05c581b418e`  
		Last Modified: Wed, 27 Mar 2019 08:52:56 GMT  
		Size: 20.3 MB (20340179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:071f74b81c65fbc8c5854557fd9bfd590a8476ee21e81c3791cf903cdb6b1c2e`  
		Last Modified: Wed, 27 Mar 2019 18:04:39 GMT  
		Size: 1.7 KB (1748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a28c1252db1c6225fd34751ab045e669a8ed06ba904d31538b9f20e937e541fe`  
		Last Modified: Wed, 27 Mar 2019 18:04:40 GMT  
		Size: 1.6 MB (1623599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c71b025af878dac561882dfc647a1f5d96641f00b6d7d3b45c8faa467882c8b9`  
		Last Modified: Wed, 27 Mar 2019 18:04:42 GMT  
		Size: 5.2 MB (5238082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ac188fed91e6a287d7694a2eefbe01505c8ca8e928899a68aa3e84805da532e`  
		Last Modified: Wed, 27 Mar 2019 18:04:39 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c21616accd32e189f5c05b760544ffbe9727b4925ba2c1a942f91425db894815`  
		Last Modified: Wed, 27 Mar 2019 18:04:39 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0` - linux; 386

```console
$ docker pull spiped@sha256:23a5a8d48af53af5a92dbf6768a59780c57d760ddc2e09c7db80dcbd368021e9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34324856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b56266a66ea78c94fa3c0fb443d0ee29e0d0c69a3f807bf23110e36a241ed846`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 27 Mar 2019 10:43:41 GMT
ADD file:13e40d14dbdd0814b4fb7b2a378757164620517fec383739c87747c27e07d8e7 in / 
# Wed, 27 Mar 2019 10:43:41 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 13:30:58 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 27 Mar 2019 13:31:03 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 13:31:04 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 27 Mar 2019 13:31:04 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 27 Mar 2019 13:31:04 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 27 Mar 2019 13:31:31 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 13:31:31 GMT
VOLUME [/spiped]
# Wed, 27 Mar 2019 13:31:32 GMT
WORKDIR /spiped
# Wed, 27 Mar 2019 13:31:32 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 27 Mar 2019 13:31:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 13:31:32 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:a5ba78e1989e52ae238c3f225934c1a2dee4dfaa4667abd6f2e0717b78159472`  
		Last Modified: Wed, 27 Mar 2019 10:49:24 GMT  
		Size: 23.1 MB (23125745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfffc06d344053b3d19227346e356e48968d47743bc6748bf21bc325234dc7ba`  
		Last Modified: Wed, 27 Mar 2019 13:31:43 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2efe01dbaffc64a8ed586fb5bde794119722dfc8e8a5b817afc29370fc670d60`  
		Last Modified: Wed, 27 Mar 2019 13:31:44 GMT  
		Size: 1.9 MB (1885410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea4e14cce3fcdb2cbcadf024837ca267b5edab5a6a9024b0971779c0d74f4dbb`  
		Last Modified: Wed, 27 Mar 2019 13:31:46 GMT  
		Size: 9.3 MB (9311526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01d7eccb7b5bdd59eb6f2ab356d0bb49d043f4adddfaa3cb49da1d078b0f06f6`  
		Last Modified: Wed, 27 Mar 2019 13:31:43 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae6b754e58c03526450b7a40aac8640a9e47371598693f4da3b4e2c47b189fc6`  
		Last Modified: Wed, 27 Mar 2019 13:31:43 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0` - linux; ppc64le

```console
$ docker pull spiped@sha256:a90538c4b1450f955b6ba367dee3adf6c317d25923478d961e47f3016435d6f8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.2 MB (30164490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e28056f8b6309e1448a6ef8b80159f7b67f3a2ac70f355d3bf6c1220758095c2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:29:08 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 27 Mar 2019 12:29:25 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:29:29 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 27 Mar 2019 12:29:30 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 27 Mar 2019 12:29:33 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 27 Mar 2019 12:31:35 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 12:31:39 GMT
VOLUME [/spiped]
# Wed, 27 Mar 2019 12:31:42 GMT
WORKDIR /spiped
# Wed, 27 Mar 2019 12:31:43 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 27 Mar 2019 12:31:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 12:31:48 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:47457ee2fac27696752b903854c4e4621e3481edc7a34b727f45b4c355de7976`  
		Last Modified: Wed, 27 Mar 2019 08:32:50 GMT  
		Size: 22.8 MB (22751385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eacc5429d64237974ea8695fad2bb34ec4758f4d55fd50bc2de9d824fbf7c8dc`  
		Last Modified: Wed, 27 Mar 2019 12:32:10 GMT  
		Size: 1.7 KB (1749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e81ff6fd7c1e79e229ff632b2aed426cce8851c4a3f9058b2c256ae2bfbc5d4`  
		Last Modified: Wed, 27 Mar 2019 12:32:08 GMT  
		Size: 1.6 MB (1561396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68cf0540fec8bb17ab25b94564a394622b6497650e710bf86504c3805e522d8d`  
		Last Modified: Wed, 27 Mar 2019 12:32:07 GMT  
		Size: 5.8 MB (5849482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f63a6b59ecc1c31747a4040574dc98fd1f7c86b2b15f80ed4acf01b11550609`  
		Last Modified: Wed, 27 Mar 2019 12:32:06 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e86f733e43c79235771834c6498614921dc5c5c8c368bf76af4ba5470390863`  
		Last Modified: Wed, 27 Mar 2019 12:32:06 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0` - linux; s390x

```console
$ docker pull spiped@sha256:b4b41feedba24237cb6a789e79e1e8edb2d34f0db269cf7f1a0844ad0adf5dbb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 MB (30745497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af90c8cd9050c54ef385e60d1f359fafa057d4414135c77aeceb91b14f92d37a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 27 Mar 2019 11:43:45 GMT
ADD file:bbc08c16057153af2910791402d3a29eb5da11e030d2fc6778644c444142d2ab in / 
# Wed, 27 Mar 2019 11:43:46 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 15:19:42 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 27 Mar 2019 15:19:47 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 15:19:47 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 27 Mar 2019 15:19:47 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 27 Mar 2019 15:19:48 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 27 Mar 2019 15:20:42 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 15:20:43 GMT
VOLUME [/spiped]
# Wed, 27 Mar 2019 15:20:43 GMT
WORKDIR /spiped
# Wed, 27 Mar 2019 15:20:43 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 27 Mar 2019 15:20:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 15:20:44 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:9ce36a197e11ef57ec11f749055a2d2db6113c6b0026d930d3ddbbd86a7ec15b`  
		Last Modified: Wed, 27 Mar 2019 11:46:50 GMT  
		Size: 22.3 MB (22345282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1adacf61acf0ab6f008594a79331e2c1cb7cd012bc101090b089473678edfa5d`  
		Last Modified: Wed, 27 Mar 2019 15:21:09 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6889ef27649118e775ec8f1f11926f5da115cc772d3853ee3d392b8aec4d8a70`  
		Last Modified: Wed, 27 Mar 2019 15:21:09 GMT  
		Size: 1.6 MB (1625698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c18d3fb723580ae732c9995508d18fae3a720e43b3c4b78a1a3575faa4fbef2f`  
		Last Modified: Wed, 27 Mar 2019 15:21:11 GMT  
		Size: 6.8 MB (6772326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0895f2643aa20d20c242a767c4d28b9ae28efef03d87b11ef748c9c8a7e040d8`  
		Last Modified: Wed, 27 Mar 2019 15:21:09 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fa56ce8862ced50c4e8ba41bef1fbb3e818be741f93f4efc692d6106304554d`  
		Last Modified: Wed, 27 Mar 2019 15:21:09 GMT  
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
$ docker pull spiped@sha256:22cd6a0d5f9110509302676190ad8a8d057fb0d8b34e80307945dff4c771e808
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
$ docker pull spiped@sha256:669ae0c7c7afcf392ca23c9ae8b65c69aa2bcc6bbee60fa2c0fcdf312c9be8e1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.7 MB (27748640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1800114e33c090e4d78001f3728dd171dadcbb808ddb4488494d0a558f20dac0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:57 GMT
ADD file:7a35d0949b1b3e7394102d060feb38dba6645340f0c24c11c41eab11995474e2 in / 
# Wed, 27 Mar 2019 08:53:58 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 11:46:04 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 27 Mar 2019 11:46:14 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 11:46:14 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 27 Mar 2019 11:46:14 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 27 Mar 2019 11:46:15 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 27 Mar 2019 11:47:35 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 11:47:35 GMT
VOLUME [/spiped]
# Wed, 27 Mar 2019 11:47:35 GMT
WORKDIR /spiped
# Wed, 27 Mar 2019 11:47:36 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 27 Mar 2019 11:47:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 11:47:37 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:2e028234e3987a188a306c264af3c27abc8240fc8e19373e1c5adc01b31e6176`  
		Last Modified: Wed, 27 Mar 2019 08:59:38 GMT  
		Size: 21.2 MB (21160663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38fb4352de43c0e60fae432a7386b963879c74ae6fa752bdbecfa5c456445ded`  
		Last Modified: Wed, 27 Mar 2019 11:47:52 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68d95a87a5986aa3e4051531fb695c3640c8986dea91401284934e34f64525b4`  
		Last Modified: Wed, 27 Mar 2019 11:47:52 GMT  
		Size: 1.6 MB (1632496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a7318a56c417d3bc90386e56837134101ce44dc1b76eaacfa0669751622f88`  
		Last Modified: Wed, 27 Mar 2019 11:47:54 GMT  
		Size: 5.0 MB (4953273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f00059192b792dd497a6196b29642fa5c56f35d5726d97ff660a76214809ff31`  
		Last Modified: Wed, 27 Mar 2019 11:47:52 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69a4da1feea4d7edf68fa306045da0f5cb12c03f42a56c9f4340f488cbe6d8e8`  
		Last Modified: Wed, 27 Mar 2019 11:47:52 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; arm variant v7

```console
$ docker pull spiped@sha256:d1761a57cbe9d33d23603aa5c7382f373d7debe193802584e494b67bce822f40
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.6 MB (25566889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98d2fce5b9916e1fb7d4fbe09a5155735290caadfa243c5c358066a243fb148c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 27 Mar 2019 12:07:48 GMT
ADD file:6bf06125d936ccaf67981470df5ef6b9bd5dee3c0ef0e042a448fc60bb02f191 in / 
# Wed, 27 Mar 2019 12:07:49 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 14:46:21 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 27 Mar 2019 14:46:30 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 14:46:30 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 27 Mar 2019 14:46:31 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 27 Mar 2019 14:46:31 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 27 Mar 2019 14:47:17 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 14:47:18 GMT
VOLUME [/spiped]
# Wed, 27 Mar 2019 14:47:19 GMT
WORKDIR /spiped
# Wed, 27 Mar 2019 14:47:20 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 27 Mar 2019 14:47:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 14:47:21 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:fac132c5d16f670820c8c4ae332bd663c2ff856e9af86b2b23a201db263d851e`  
		Last Modified: Wed, 27 Mar 2019 12:13:15 GMT  
		Size: 19.3 MB (19282442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a96e21d6e9b68ebeded2deef984527995b0541a571972a641495d08061169b2d`  
		Last Modified: Wed, 27 Mar 2019 14:47:44 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f439e539b817c357d04be92b2a091f0c25e2896d3f409e6a27edf68085581112`  
		Last Modified: Wed, 27 Mar 2019 14:47:44 GMT  
		Size: 1.6 MB (1573674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:072def37617def5a9c73cf102bb8280c48fcc6a4483ea443ee9cddb6bc07848b`  
		Last Modified: Wed, 27 Mar 2019 14:47:46 GMT  
		Size: 4.7 MB (4708561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0efc17597ea1183db78a315a7ac1d6cb1f36012e584aea125ec92646dab6568`  
		Last Modified: Wed, 27 Mar 2019 14:47:44 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdbd3c1a846030fb6a27b158ca680803d99c3e15fa6523eeebde847e1d1b887d`  
		Last Modified: Wed, 27 Mar 2019 14:47:44 GMT  
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
$ docker pull spiped@sha256:23a5a8d48af53af5a92dbf6768a59780c57d760ddc2e09c7db80dcbd368021e9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34324856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b56266a66ea78c94fa3c0fb443d0ee29e0d0c69a3f807bf23110e36a241ed846`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 27 Mar 2019 10:43:41 GMT
ADD file:13e40d14dbdd0814b4fb7b2a378757164620517fec383739c87747c27e07d8e7 in / 
# Wed, 27 Mar 2019 10:43:41 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 13:30:58 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 27 Mar 2019 13:31:03 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 13:31:04 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 27 Mar 2019 13:31:04 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 27 Mar 2019 13:31:04 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 27 Mar 2019 13:31:31 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 13:31:31 GMT
VOLUME [/spiped]
# Wed, 27 Mar 2019 13:31:32 GMT
WORKDIR /spiped
# Wed, 27 Mar 2019 13:31:32 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 27 Mar 2019 13:31:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 13:31:32 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:a5ba78e1989e52ae238c3f225934c1a2dee4dfaa4667abd6f2e0717b78159472`  
		Last Modified: Wed, 27 Mar 2019 10:49:24 GMT  
		Size: 23.1 MB (23125745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfffc06d344053b3d19227346e356e48968d47743bc6748bf21bc325234dc7ba`  
		Last Modified: Wed, 27 Mar 2019 13:31:43 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2efe01dbaffc64a8ed586fb5bde794119722dfc8e8a5b817afc29370fc670d60`  
		Last Modified: Wed, 27 Mar 2019 13:31:44 GMT  
		Size: 1.9 MB (1885410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea4e14cce3fcdb2cbcadf024837ca267b5edab5a6a9024b0971779c0d74f4dbb`  
		Last Modified: Wed, 27 Mar 2019 13:31:46 GMT  
		Size: 9.3 MB (9311526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01d7eccb7b5bdd59eb6f2ab356d0bb49d043f4adddfaa3cb49da1d078b0f06f6`  
		Last Modified: Wed, 27 Mar 2019 13:31:43 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae6b754e58c03526450b7a40aac8640a9e47371598693f4da3b4e2c47b189fc6`  
		Last Modified: Wed, 27 Mar 2019 13:31:43 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; ppc64le

```console
$ docker pull spiped@sha256:a90538c4b1450f955b6ba367dee3adf6c317d25923478d961e47f3016435d6f8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.2 MB (30164490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e28056f8b6309e1448a6ef8b80159f7b67f3a2ac70f355d3bf6c1220758095c2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:29:08 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 27 Mar 2019 12:29:25 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:29:29 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 27 Mar 2019 12:29:30 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 27 Mar 2019 12:29:33 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 27 Mar 2019 12:31:35 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 12:31:39 GMT
VOLUME [/spiped]
# Wed, 27 Mar 2019 12:31:42 GMT
WORKDIR /spiped
# Wed, 27 Mar 2019 12:31:43 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 27 Mar 2019 12:31:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 12:31:48 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:47457ee2fac27696752b903854c4e4621e3481edc7a34b727f45b4c355de7976`  
		Last Modified: Wed, 27 Mar 2019 08:32:50 GMT  
		Size: 22.8 MB (22751385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eacc5429d64237974ea8695fad2bb34ec4758f4d55fd50bc2de9d824fbf7c8dc`  
		Last Modified: Wed, 27 Mar 2019 12:32:10 GMT  
		Size: 1.7 KB (1749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e81ff6fd7c1e79e229ff632b2aed426cce8851c4a3f9058b2c256ae2bfbc5d4`  
		Last Modified: Wed, 27 Mar 2019 12:32:08 GMT  
		Size: 1.6 MB (1561396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68cf0540fec8bb17ab25b94564a394622b6497650e710bf86504c3805e522d8d`  
		Last Modified: Wed, 27 Mar 2019 12:32:07 GMT  
		Size: 5.8 MB (5849482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f63a6b59ecc1c31747a4040574dc98fd1f7c86b2b15f80ed4acf01b11550609`  
		Last Modified: Wed, 27 Mar 2019 12:32:06 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e86f733e43c79235771834c6498614921dc5c5c8c368bf76af4ba5470390863`  
		Last Modified: Wed, 27 Mar 2019 12:32:06 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; s390x

```console
$ docker pull spiped@sha256:b4b41feedba24237cb6a789e79e1e8edb2d34f0db269cf7f1a0844ad0adf5dbb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 MB (30745497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af90c8cd9050c54ef385e60d1f359fafa057d4414135c77aeceb91b14f92d37a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 27 Mar 2019 11:43:45 GMT
ADD file:bbc08c16057153af2910791402d3a29eb5da11e030d2fc6778644c444142d2ab in / 
# Wed, 27 Mar 2019 11:43:46 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 15:19:42 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 27 Mar 2019 15:19:47 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 15:19:47 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 27 Mar 2019 15:19:47 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 27 Mar 2019 15:19:48 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 27 Mar 2019 15:20:42 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 15:20:43 GMT
VOLUME [/spiped]
# Wed, 27 Mar 2019 15:20:43 GMT
WORKDIR /spiped
# Wed, 27 Mar 2019 15:20:43 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 27 Mar 2019 15:20:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 15:20:44 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:9ce36a197e11ef57ec11f749055a2d2db6113c6b0026d930d3ddbbd86a7ec15b`  
		Last Modified: Wed, 27 Mar 2019 11:46:50 GMT  
		Size: 22.3 MB (22345282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1adacf61acf0ab6f008594a79331e2c1cb7cd012bc101090b089473678edfa5d`  
		Last Modified: Wed, 27 Mar 2019 15:21:09 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6889ef27649118e775ec8f1f11926f5da115cc772d3853ee3d392b8aec4d8a70`  
		Last Modified: Wed, 27 Mar 2019 15:21:09 GMT  
		Size: 1.6 MB (1625698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c18d3fb723580ae732c9995508d18fae3a720e43b3c4b78a1a3575faa4fbef2f`  
		Last Modified: Wed, 27 Mar 2019 15:21:11 GMT  
		Size: 6.8 MB (6772326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0895f2643aa20d20c242a767c4d28b9ae28efef03d87b11ef748c9c8a7e040d8`  
		Last Modified: Wed, 27 Mar 2019 15:21:09 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fa56ce8862ced50c4e8ba41bef1fbb3e818be741f93f4efc692d6106304554d`  
		Last Modified: Wed, 27 Mar 2019 15:21:09 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
