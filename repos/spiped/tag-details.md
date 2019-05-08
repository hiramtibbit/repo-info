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
$ docker pull spiped@sha256:f3ea9bf220b1310947c68edffdd2d267abcf33e1608a2d3ed0a11c390fce37e5
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
$ docker pull spiped@sha256:4469696d28684c86a079cdb8577029dc01637244d9ed48b479efa5b3adda9251
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30261386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70ee43d5bcf9c8b32bef96eb451265b7f8596942f7a129b4b23b64472914cbbd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 06:25:21 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 08 May 2019 06:25:28 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 06:25:28 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 08 May 2019 06:25:29 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 08 May 2019 06:25:29 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 08 May 2019 06:26:09 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 06:26:10 GMT
VOLUME [/spiped]
# Wed, 08 May 2019 06:26:10 GMT
WORKDIR /spiped
# Wed, 08 May 2019 06:26:11 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 08 May 2019 06:26:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 06:26:11 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b334c8f63e0a7e4e5d3251a9fca0e1bf87436fb0a10631d6e402e69b8a6a70b`  
		Last Modified: Wed, 08 May 2019 06:26:34 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01de0dc86bb533c7a404dad1473f0e9e27832e942875fbc3e0d6c06ec45f7867`  
		Last Modified: Wed, 08 May 2019 06:26:35 GMT  
		Size: 1.9 MB (1891444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a62496f71308eac32037ad5d3cccc19cdbb777a6f0ba69e2f5c1739df118eb70`  
		Last Modified: Wed, 08 May 2019 06:26:38 GMT  
		Size: 5.9 MB (5878408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:790716f9d82fbf3b97b59cfc8056759e7cb0ed4d05eceaa11cb964187aa1d891`  
		Last Modified: Wed, 08 May 2019 06:26:35 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35d57e6339079df38e8d120b61c17adfa7c377518662ad528cb7650900e6c996`  
		Last Modified: Wed, 08 May 2019 06:26:34 GMT  
		Size: 350.0 B  
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
$ docker pull spiped@sha256:f3ea9bf220b1310947c68edffdd2d267abcf33e1608a2d3ed0a11c390fce37e5
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
$ docker pull spiped@sha256:4469696d28684c86a079cdb8577029dc01637244d9ed48b479efa5b3adda9251
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30261386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70ee43d5bcf9c8b32bef96eb451265b7f8596942f7a129b4b23b64472914cbbd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 06:25:21 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 08 May 2019 06:25:28 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 06:25:28 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 08 May 2019 06:25:29 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 08 May 2019 06:25:29 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 08 May 2019 06:26:09 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 06:26:10 GMT
VOLUME [/spiped]
# Wed, 08 May 2019 06:26:10 GMT
WORKDIR /spiped
# Wed, 08 May 2019 06:26:11 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 08 May 2019 06:26:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 06:26:11 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b334c8f63e0a7e4e5d3251a9fca0e1bf87436fb0a10631d6e402e69b8a6a70b`  
		Last Modified: Wed, 08 May 2019 06:26:34 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01de0dc86bb533c7a404dad1473f0e9e27832e942875fbc3e0d6c06ec45f7867`  
		Last Modified: Wed, 08 May 2019 06:26:35 GMT  
		Size: 1.9 MB (1891444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a62496f71308eac32037ad5d3cccc19cdbb777a6f0ba69e2f5c1739df118eb70`  
		Last Modified: Wed, 08 May 2019 06:26:38 GMT  
		Size: 5.9 MB (5878408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:790716f9d82fbf3b97b59cfc8056759e7cb0ed4d05eceaa11cb964187aa1d891`  
		Last Modified: Wed, 08 May 2019 06:26:35 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35d57e6339079df38e8d120b61c17adfa7c377518662ad528cb7650900e6c996`  
		Last Modified: Wed, 08 May 2019 06:26:34 GMT  
		Size: 350.0 B  
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
$ docker pull spiped@sha256:f3ea9bf220b1310947c68edffdd2d267abcf33e1608a2d3ed0a11c390fce37e5
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
$ docker pull spiped@sha256:4469696d28684c86a079cdb8577029dc01637244d9ed48b479efa5b3adda9251
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30261386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70ee43d5bcf9c8b32bef96eb451265b7f8596942f7a129b4b23b64472914cbbd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 06:25:21 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 08 May 2019 06:25:28 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 06:25:28 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 08 May 2019 06:25:29 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 08 May 2019 06:25:29 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 08 May 2019 06:26:09 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 06:26:10 GMT
VOLUME [/spiped]
# Wed, 08 May 2019 06:26:10 GMT
WORKDIR /spiped
# Wed, 08 May 2019 06:26:11 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 08 May 2019 06:26:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 06:26:11 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b334c8f63e0a7e4e5d3251a9fca0e1bf87436fb0a10631d6e402e69b8a6a70b`  
		Last Modified: Wed, 08 May 2019 06:26:34 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01de0dc86bb533c7a404dad1473f0e9e27832e942875fbc3e0d6c06ec45f7867`  
		Last Modified: Wed, 08 May 2019 06:26:35 GMT  
		Size: 1.9 MB (1891444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a62496f71308eac32037ad5d3cccc19cdbb777a6f0ba69e2f5c1739df118eb70`  
		Last Modified: Wed, 08 May 2019 06:26:38 GMT  
		Size: 5.9 MB (5878408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:790716f9d82fbf3b97b59cfc8056759e7cb0ed4d05eceaa11cb964187aa1d891`  
		Last Modified: Wed, 08 May 2019 06:26:35 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35d57e6339079df38e8d120b61c17adfa7c377518662ad528cb7650900e6c996`  
		Last Modified: Wed, 08 May 2019 06:26:34 GMT  
		Size: 350.0 B  
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
$ docker pull spiped@sha256:b9e38ee3325ec3abec9250b99652050b92e61e1a6888ce4d435d43bf1b43c048
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
$ docker pull spiped@sha256:76bfb2c2d9bc65a6f3f6972208511417c684bda5d42a877bff75e2d874677615
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2844695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94aa6264c644ca4fd6a6d01ac2ee76e3496b5e0f2298aec66436e70551e3d7af`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Tue, 09 Apr 2019 23:55:20 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Tue, 09 Apr 2019 23:55:21 GMT
RUN apk add --no-cache libssl1.1
# Tue, 09 Apr 2019 23:55:21 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 09 Apr 2019 23:55:22 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 09 Apr 2019 23:55:22 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 09 Apr 2019 23:55:32 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Tue, 09 Apr 2019 23:55:32 GMT
VOLUME [/spiped]
# Tue, 09 Apr 2019 23:55:32 GMT
WORKDIR /spiped
# Tue, 09 Apr 2019 23:55:33 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Tue, 09 Apr 2019 23:55:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 Apr 2019 23:55:33 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8234f03fa8a139ca49aba31553c318fe32da9855b7f7b5cc4d4db535afb3793`  
		Last Modified: Tue, 09 Apr 2019 23:55:44 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce1070d6aced3397465c61060aabafbe8235b689b5b1556e34c325936e8ed7f1`  
		Last Modified: Tue, 09 Apr 2019 23:55:44 GMT  
		Size: 6.4 KB (6380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0beabb73baf87bd5aeb1f92df034032af4d231e36edc2a646a2ae20160aea56c`  
		Last Modified: Tue, 09 Apr 2019 23:55:44 GMT  
		Size: 79.6 KB (79610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2119809dd922d434f9c0a7547b1e5cf86bb69ba2d5273a8e02ba1cf260f03a4`  
		Last Modified: Tue, 09 Apr 2019 23:55:44 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00f93169aef4349f0689b9141b341c03a7ba1f4186159e0bffe5dd057a7e3d7b`  
		Last Modified: Tue, 09 Apr 2019 23:55:44 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0-alpine` - linux; arm variant v6

```console
$ docker pull spiped@sha256:be4715b6984bdf0f04ef82fc46e08e292ed8d3034ad5a6a724c79fd1071fe8b6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2620016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f9f96bc364dc234ce7c414b47191c57858e7910371de785d3af671bb57fe34f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 09:02:11 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Wed, 10 Apr 2019 09:02:13 GMT
RUN apk add --no-cache libssl1.1
# Wed, 10 Apr 2019 09:02:13 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 10 Apr 2019 09:02:13 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 10 Apr 2019 09:02:14 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 10 Apr 2019 09:02:31 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Wed, 10 Apr 2019 09:02:32 GMT
VOLUME [/spiped]
# Wed, 10 Apr 2019 09:02:32 GMT
WORKDIR /spiped
# Wed, 10 Apr 2019 09:02:33 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 10 Apr 2019 09:02:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 09:02:34 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14cba87aecdad34477dfb8027388cd5d4dfaea36ab15943599ae0687ee4427b6`  
		Last Modified: Wed, 10 Apr 2019 09:02:43 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7646df46140795aedc20913a8036b31fc1647df4cb0a9ef377fdaed9f4133dbe`  
		Last Modified: Wed, 10 Apr 2019 09:02:43 GMT  
		Size: 6.4 KB (6397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b14e996eef5cc3e4b9d7078d1ea46d76d0003af7604ed6194862a710155fda85`  
		Last Modified: Wed, 10 Apr 2019 09:02:43 GMT  
		Size: 68.4 KB (68421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:278255654318bec8ff8455858fee8e69b5c9963d000d09a8aaa01b0b467d1806`  
		Last Modified: Wed, 10 Apr 2019 09:02:43 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd5616712ecf39de33024de8a4c3b54085631ad57fd33bc9b438b74eb9e65431`  
		Last Modified: Wed, 10 Apr 2019 09:02:43 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0-alpine` - linux; arm variant v7

```console
$ docker pull spiped@sha256:86a084c872adf9bed8a9791ad451ee1f6349a50c3cce545acc395a33ed3b2afa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2421076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d1c8fc95d99414a65d3d9f874cd83618e475af122d3e2e01f47d1f07b3e891e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 10 Apr 2019 11:57:47 GMT
ADD file:1a27b74f23795a1f205247dcd6eff48ac56f0b8f2afe0c358199a0b60f694861 in / 
# Wed, 10 Apr 2019 11:57:48 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 12:30:25 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Wed, 10 Apr 2019 12:30:27 GMT
RUN apk add --no-cache libssl1.1
# Wed, 10 Apr 2019 12:30:27 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 10 Apr 2019 12:30:27 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 10 Apr 2019 12:30:28 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 10 Apr 2019 12:30:45 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Wed, 10 Apr 2019 12:30:46 GMT
VOLUME [/spiped]
# Wed, 10 Apr 2019 12:30:46 GMT
WORKDIR /spiped
# Wed, 10 Apr 2019 12:30:47 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 10 Apr 2019 12:30:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 12:30:48 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:c2a5cdd4aa08146b4516cc95f6b461f2994250a819b3e6f75f23fa2a8c1b1744`  
		Last Modified: Wed, 10 Apr 2019 11:58:04 GMT  
		Size: 2.4 MB (2350757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6046e3a66218f67beee09edf31522799824b08cbbce1f6e30ea229147154dd70`  
		Last Modified: Wed, 10 Apr 2019 12:30:59 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9608f0b6b8ec0f6514144f9c84d43b7279bcbeeb9c0a00ddf5d7c03f5788033c`  
		Last Modified: Wed, 10 Apr 2019 12:30:59 GMT  
		Size: 6.4 KB (6379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8116fbddac912aa46a21e03d80844ea418bf764a99ae1097b6d3dafcdfc182cd`  
		Last Modified: Wed, 10 Apr 2019 12:30:59 GMT  
		Size: 62.2 KB (62185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a1bebe218c4bb69b9229dadb8606390a7cf2b45ca7a6a41b84f5bf5bff012fa`  
		Last Modified: Wed, 10 Apr 2019 12:30:59 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d8b60c7e8731f2755eb41cb1fd259f868141605e59abdcee27eda0b47e5fa4`  
		Last Modified: Wed, 10 Apr 2019 12:30:59 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0-alpine` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:e371e669c705b2e62f643cccca63777ba68191f6b6cee499951e10f304129b77
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2771866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3d172bb529129467f9d1b7c5d37224f4052f049095eea9da5b5b0f0162af1bd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 10 Apr 2019 08:49:11 GMT
ADD file:30e0a8ccdca70b20b8ce637f0ba5108157f4ba491447d20aafbe45d82392bd81 in / 
# Wed, 10 Apr 2019 08:49:12 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 14:20:52 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Wed, 10 Apr 2019 14:20:57 GMT
RUN apk add --no-cache libssl1.1
# Wed, 10 Apr 2019 14:20:58 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 10 Apr 2019 14:20:59 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 10 Apr 2019 14:21:00 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 10 Apr 2019 14:21:50 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Wed, 10 Apr 2019 14:21:51 GMT
VOLUME [/spiped]
# Wed, 10 Apr 2019 14:21:52 GMT
WORKDIR /spiped
# Wed, 10 Apr 2019 14:21:54 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 10 Apr 2019 14:21:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 14:21:56 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:6f37394be673296a0fdc21b819c5df40431baf7d3af121bee451726dd1457493`  
		Last Modified: Wed, 10 Apr 2019 08:50:38 GMT  
		Size: 2.7 MB (2688778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ec38a229dae29b37dc8c89c18b8e1d4154993552b72da3fcb7b132e02e94b9`  
		Last Modified: Wed, 10 Apr 2019 14:22:28 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48adbc9c4850b9bddd9d3319e62ab8291c58311ae420b61dff8cfaa009a684a3`  
		Last Modified: Wed, 10 Apr 2019 14:22:28 GMT  
		Size: 6.4 KB (6397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c47a8bbb8e685d2c0c7d46b2927d6984e7f8ba5b598ba44988341710f61e74b`  
		Last Modified: Wed, 10 Apr 2019 14:22:28 GMT  
		Size: 75.0 KB (74994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:732e22e07fc65924664c27905abdec209142c2416cf3da7999291c45c6f3b1b9`  
		Last Modified: Wed, 10 Apr 2019 14:22:29 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f759f728595b8fabdedae7c143947c4485a369d739477d432e9d0574b7cc997`  
		Last Modified: Wed, 10 Apr 2019 14:22:28 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0-alpine` - linux; 386

```console
$ docker pull spiped@sha256:426f18d4a005a5843e853bbb1c5a732cd73e3b9b04059beeb24eb540ca188164
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2848111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bc0a71ea1fd8742ea17ed3612ae3360704dbd548ec78ce0a4f5b247af3870f5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 10 Apr 2019 10:38:55 GMT
ADD file:51f7bb95ef6cc3519317dcb7abbf6155e6bb7b73a17ad7d90cad7911e8a8933c in / 
# Wed, 10 Apr 2019 10:38:55 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 13:25:51 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Wed, 10 Apr 2019 13:25:52 GMT
RUN apk add --no-cache libssl1.1
# Wed, 10 Apr 2019 13:25:52 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 10 Apr 2019 13:25:52 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 10 Apr 2019 13:25:53 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 10 Apr 2019 13:26:03 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Wed, 10 Apr 2019 13:26:03 GMT
VOLUME [/spiped]
# Wed, 10 Apr 2019 13:26:03 GMT
WORKDIR /spiped
# Wed, 10 Apr 2019 13:26:04 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 10 Apr 2019 13:26:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 13:26:04 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:9a81e6a1a3b4f174d22173a96692c9aeffaefcd00f40607d508951a2b14d6f1f`  
		Last Modified: Wed, 10 Apr 2019 10:39:15 GMT  
		Size: 2.8 MB (2752162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:591d378a1fa4b362dfe986eef637fc5db6212ad6017e9ac8157ed7a19c65b4a4`  
		Last Modified: Wed, 10 Apr 2019 13:26:12 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e5c8ef3d01d549d96f6bbd6ce451d1d468a81a78bf2e4e078e43242ff4302ac`  
		Last Modified: Wed, 10 Apr 2019 13:26:12 GMT  
		Size: 6.4 KB (6399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b13362f6285f833645be5d56f819cb368e32696be5047d4f2b72e18dbe0237e`  
		Last Modified: Wed, 10 Apr 2019 13:26:13 GMT  
		Size: 87.9 KB (87855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43fc4fb991c3bcac1ed351222da66d5862145ea30e0aad962bb5f5fc8af13ad3`  
		Last Modified: Wed, 10 Apr 2019 13:26:12 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69c954ebb3a8ed9d620f79f773cf9dfd53d6a3a90f0ebfd689d58908697bfe8a`  
		Last Modified: Wed, 10 Apr 2019 13:26:13 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0-alpine` - linux; ppc64le

```console
$ docker pull spiped@sha256:4cf9b84e9352fb0d287ebbad7a27705dc2a1573462ae0c256825c2066e25da19
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2877767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a75899f09a59edfbf8a40bd8930cc4a720743d2e560492c1a43d75091a7e265e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 10 Apr 2019 08:27:30 GMT
ADD file:c13c1c2b4e6d71924f570a910caf6a1756ea5a28a4017c7b11305e021eacd0ee in / 
# Wed, 10 Apr 2019 08:27:33 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 10:23:14 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Wed, 10 Apr 2019 10:23:28 GMT
RUN apk add --no-cache libssl1.1
# Wed, 10 Apr 2019 10:23:34 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 10 Apr 2019 10:23:39 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 10 Apr 2019 10:23:45 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 10 Apr 2019 10:24:16 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Wed, 10 Apr 2019 10:24:20 GMT
VOLUME [/spiped]
# Wed, 10 Apr 2019 10:24:26 GMT
WORKDIR /spiped
# Wed, 10 Apr 2019 10:24:27 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 10 Apr 2019 10:24:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 10:24:34 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:fe0f92a92ee06f38abf50fefd22331ac42262e3872ecd2d7ddfa7c24ab71a53a`  
		Last Modified: Wed, 10 Apr 2019 08:28:34 GMT  
		Size: 2.8 MB (2781020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:864fe0e9483bf5bd7ecd7f91a64123c5baa028b508d8c6cf212b0e4a63069863`  
		Last Modified: Wed, 10 Apr 2019 10:25:05 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac5f178dee233aa4bdafd58ec88bf27326ab6e70335d46a12895c19e375a68d1`  
		Last Modified: Wed, 10 Apr 2019 10:25:05 GMT  
		Size: 6.4 KB (6410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0ef1539f2acb1c12a152271ba20d58cf445e369fd537f59da60f35ef5a12499`  
		Last Modified: Wed, 10 Apr 2019 10:25:05 GMT  
		Size: 88.6 KB (88577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:367ba8d5348813357fe526a1d78cc6042752975605670491548d485890b54388`  
		Last Modified: Wed, 10 Apr 2019 10:25:05 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53ee940e50564eae47a71e79f478fe06ded9a9a86c7277ca3135866c908b8c92`  
		Last Modified: Wed, 10 Apr 2019 10:25:05 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0-alpine` - linux; s390x

```console
$ docker pull spiped@sha256:21c1dac8e18400d71cf160748b64e4e34e313d6fc20faa4d712eba21325fa3cb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2624328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fa8324c63c868af6b828110eb28a292350481c507e1756da82edba38507db3b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 10 Apr 2019 11:42:23 GMT
ADD file:ab106eb2cf4bf0e1ca7861a56dc24e44dd206fd3ae8d3587684324e5c11136f4 in / 
# Wed, 10 Apr 2019 11:42:23 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 14:20:20 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Wed, 10 Apr 2019 14:20:23 GMT
RUN apk add --no-cache libssl1.1
# Wed, 10 Apr 2019 14:20:24 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 10 Apr 2019 14:20:24 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 10 Apr 2019 14:20:24 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 10 Apr 2019 14:20:43 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Wed, 10 Apr 2019 14:20:44 GMT
VOLUME [/spiped]
# Wed, 10 Apr 2019 14:20:44 GMT
WORKDIR /spiped
# Wed, 10 Apr 2019 14:20:45 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 10 Apr 2019 14:20:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 14:20:47 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:5b51e37a522c2e7cd3c67e8a3e5500b45189ea6698e9fdaed7f5d48282326633`  
		Last Modified: Wed, 10 Apr 2019 11:43:06 GMT  
		Size: 2.5 MB (2543326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35776b68c96beb63c04206503bbe57f3731b9de51200ec1b059364fa4d2030ca`  
		Last Modified: Wed, 10 Apr 2019 14:21:10 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9fe554e061c94e8b18f160d5c44244bae8bf9c0d891ba68fb8b70613d9477cf`  
		Last Modified: Wed, 10 Apr 2019 14:21:10 GMT  
		Size: 6.4 KB (6395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db3d2afcb64f130ccc190517156bb1f7487f0b42dfb628223fd09e2ab592ed21`  
		Last Modified: Wed, 10 Apr 2019 14:21:10 GMT  
		Size: 72.9 KB (72915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:386c86e2d6c2849858c3283a5356e20a914e3300c2582aa09837b958c0ceba8b`  
		Last Modified: Wed, 10 Apr 2019 14:21:10 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f8366791d43ecf839d170dce65049014d15620efad1b03bcbeb5a16670b22f2`  
		Last Modified: Wed, 10 Apr 2019 14:21:10 GMT  
		Size: 339.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1.6-alpine`

```console
$ docker pull spiped@sha256:b9e38ee3325ec3abec9250b99652050b92e61e1a6888ce4d435d43bf1b43c048
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
$ docker pull spiped@sha256:76bfb2c2d9bc65a6f3f6972208511417c684bda5d42a877bff75e2d874677615
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2844695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94aa6264c644ca4fd6a6d01ac2ee76e3496b5e0f2298aec66436e70551e3d7af`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Tue, 09 Apr 2019 23:55:20 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Tue, 09 Apr 2019 23:55:21 GMT
RUN apk add --no-cache libssl1.1
# Tue, 09 Apr 2019 23:55:21 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 09 Apr 2019 23:55:22 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 09 Apr 2019 23:55:22 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 09 Apr 2019 23:55:32 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Tue, 09 Apr 2019 23:55:32 GMT
VOLUME [/spiped]
# Tue, 09 Apr 2019 23:55:32 GMT
WORKDIR /spiped
# Tue, 09 Apr 2019 23:55:33 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Tue, 09 Apr 2019 23:55:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 Apr 2019 23:55:33 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8234f03fa8a139ca49aba31553c318fe32da9855b7f7b5cc4d4db535afb3793`  
		Last Modified: Tue, 09 Apr 2019 23:55:44 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce1070d6aced3397465c61060aabafbe8235b689b5b1556e34c325936e8ed7f1`  
		Last Modified: Tue, 09 Apr 2019 23:55:44 GMT  
		Size: 6.4 KB (6380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0beabb73baf87bd5aeb1f92df034032af4d231e36edc2a646a2ae20160aea56c`  
		Last Modified: Tue, 09 Apr 2019 23:55:44 GMT  
		Size: 79.6 KB (79610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2119809dd922d434f9c0a7547b1e5cf86bb69ba2d5273a8e02ba1cf260f03a4`  
		Last Modified: Tue, 09 Apr 2019 23:55:44 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00f93169aef4349f0689b9141b341c03a7ba1f4186159e0bffe5dd057a7e3d7b`  
		Last Modified: Tue, 09 Apr 2019 23:55:44 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6-alpine` - linux; arm variant v6

```console
$ docker pull spiped@sha256:be4715b6984bdf0f04ef82fc46e08e292ed8d3034ad5a6a724c79fd1071fe8b6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2620016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f9f96bc364dc234ce7c414b47191c57858e7910371de785d3af671bb57fe34f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 09:02:11 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Wed, 10 Apr 2019 09:02:13 GMT
RUN apk add --no-cache libssl1.1
# Wed, 10 Apr 2019 09:02:13 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 10 Apr 2019 09:02:13 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 10 Apr 2019 09:02:14 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 10 Apr 2019 09:02:31 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Wed, 10 Apr 2019 09:02:32 GMT
VOLUME [/spiped]
# Wed, 10 Apr 2019 09:02:32 GMT
WORKDIR /spiped
# Wed, 10 Apr 2019 09:02:33 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 10 Apr 2019 09:02:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 09:02:34 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14cba87aecdad34477dfb8027388cd5d4dfaea36ab15943599ae0687ee4427b6`  
		Last Modified: Wed, 10 Apr 2019 09:02:43 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7646df46140795aedc20913a8036b31fc1647df4cb0a9ef377fdaed9f4133dbe`  
		Last Modified: Wed, 10 Apr 2019 09:02:43 GMT  
		Size: 6.4 KB (6397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b14e996eef5cc3e4b9d7078d1ea46d76d0003af7604ed6194862a710155fda85`  
		Last Modified: Wed, 10 Apr 2019 09:02:43 GMT  
		Size: 68.4 KB (68421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:278255654318bec8ff8455858fee8e69b5c9963d000d09a8aaa01b0b467d1806`  
		Last Modified: Wed, 10 Apr 2019 09:02:43 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd5616712ecf39de33024de8a4c3b54085631ad57fd33bc9b438b74eb9e65431`  
		Last Modified: Wed, 10 Apr 2019 09:02:43 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6-alpine` - linux; arm variant v7

```console
$ docker pull spiped@sha256:86a084c872adf9bed8a9791ad451ee1f6349a50c3cce545acc395a33ed3b2afa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2421076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d1c8fc95d99414a65d3d9f874cd83618e475af122d3e2e01f47d1f07b3e891e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 10 Apr 2019 11:57:47 GMT
ADD file:1a27b74f23795a1f205247dcd6eff48ac56f0b8f2afe0c358199a0b60f694861 in / 
# Wed, 10 Apr 2019 11:57:48 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 12:30:25 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Wed, 10 Apr 2019 12:30:27 GMT
RUN apk add --no-cache libssl1.1
# Wed, 10 Apr 2019 12:30:27 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 10 Apr 2019 12:30:27 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 10 Apr 2019 12:30:28 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 10 Apr 2019 12:30:45 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Wed, 10 Apr 2019 12:30:46 GMT
VOLUME [/spiped]
# Wed, 10 Apr 2019 12:30:46 GMT
WORKDIR /spiped
# Wed, 10 Apr 2019 12:30:47 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 10 Apr 2019 12:30:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 12:30:48 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:c2a5cdd4aa08146b4516cc95f6b461f2994250a819b3e6f75f23fa2a8c1b1744`  
		Last Modified: Wed, 10 Apr 2019 11:58:04 GMT  
		Size: 2.4 MB (2350757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6046e3a66218f67beee09edf31522799824b08cbbce1f6e30ea229147154dd70`  
		Last Modified: Wed, 10 Apr 2019 12:30:59 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9608f0b6b8ec0f6514144f9c84d43b7279bcbeeb9c0a00ddf5d7c03f5788033c`  
		Last Modified: Wed, 10 Apr 2019 12:30:59 GMT  
		Size: 6.4 KB (6379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8116fbddac912aa46a21e03d80844ea418bf764a99ae1097b6d3dafcdfc182cd`  
		Last Modified: Wed, 10 Apr 2019 12:30:59 GMT  
		Size: 62.2 KB (62185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a1bebe218c4bb69b9229dadb8606390a7cf2b45ca7a6a41b84f5bf5bff012fa`  
		Last Modified: Wed, 10 Apr 2019 12:30:59 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d8b60c7e8731f2755eb41cb1fd259f868141605e59abdcee27eda0b47e5fa4`  
		Last Modified: Wed, 10 Apr 2019 12:30:59 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6-alpine` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:e371e669c705b2e62f643cccca63777ba68191f6b6cee499951e10f304129b77
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2771866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3d172bb529129467f9d1b7c5d37224f4052f049095eea9da5b5b0f0162af1bd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 10 Apr 2019 08:49:11 GMT
ADD file:30e0a8ccdca70b20b8ce637f0ba5108157f4ba491447d20aafbe45d82392bd81 in / 
# Wed, 10 Apr 2019 08:49:12 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 14:20:52 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Wed, 10 Apr 2019 14:20:57 GMT
RUN apk add --no-cache libssl1.1
# Wed, 10 Apr 2019 14:20:58 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 10 Apr 2019 14:20:59 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 10 Apr 2019 14:21:00 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 10 Apr 2019 14:21:50 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Wed, 10 Apr 2019 14:21:51 GMT
VOLUME [/spiped]
# Wed, 10 Apr 2019 14:21:52 GMT
WORKDIR /spiped
# Wed, 10 Apr 2019 14:21:54 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 10 Apr 2019 14:21:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 14:21:56 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:6f37394be673296a0fdc21b819c5df40431baf7d3af121bee451726dd1457493`  
		Last Modified: Wed, 10 Apr 2019 08:50:38 GMT  
		Size: 2.7 MB (2688778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ec38a229dae29b37dc8c89c18b8e1d4154993552b72da3fcb7b132e02e94b9`  
		Last Modified: Wed, 10 Apr 2019 14:22:28 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48adbc9c4850b9bddd9d3319e62ab8291c58311ae420b61dff8cfaa009a684a3`  
		Last Modified: Wed, 10 Apr 2019 14:22:28 GMT  
		Size: 6.4 KB (6397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c47a8bbb8e685d2c0c7d46b2927d6984e7f8ba5b598ba44988341710f61e74b`  
		Last Modified: Wed, 10 Apr 2019 14:22:28 GMT  
		Size: 75.0 KB (74994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:732e22e07fc65924664c27905abdec209142c2416cf3da7999291c45c6f3b1b9`  
		Last Modified: Wed, 10 Apr 2019 14:22:29 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f759f728595b8fabdedae7c143947c4485a369d739477d432e9d0574b7cc997`  
		Last Modified: Wed, 10 Apr 2019 14:22:28 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6-alpine` - linux; 386

```console
$ docker pull spiped@sha256:426f18d4a005a5843e853bbb1c5a732cd73e3b9b04059beeb24eb540ca188164
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2848111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bc0a71ea1fd8742ea17ed3612ae3360704dbd548ec78ce0a4f5b247af3870f5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 10 Apr 2019 10:38:55 GMT
ADD file:51f7bb95ef6cc3519317dcb7abbf6155e6bb7b73a17ad7d90cad7911e8a8933c in / 
# Wed, 10 Apr 2019 10:38:55 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 13:25:51 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Wed, 10 Apr 2019 13:25:52 GMT
RUN apk add --no-cache libssl1.1
# Wed, 10 Apr 2019 13:25:52 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 10 Apr 2019 13:25:52 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 10 Apr 2019 13:25:53 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 10 Apr 2019 13:26:03 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Wed, 10 Apr 2019 13:26:03 GMT
VOLUME [/spiped]
# Wed, 10 Apr 2019 13:26:03 GMT
WORKDIR /spiped
# Wed, 10 Apr 2019 13:26:04 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 10 Apr 2019 13:26:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 13:26:04 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:9a81e6a1a3b4f174d22173a96692c9aeffaefcd00f40607d508951a2b14d6f1f`  
		Last Modified: Wed, 10 Apr 2019 10:39:15 GMT  
		Size: 2.8 MB (2752162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:591d378a1fa4b362dfe986eef637fc5db6212ad6017e9ac8157ed7a19c65b4a4`  
		Last Modified: Wed, 10 Apr 2019 13:26:12 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e5c8ef3d01d549d96f6bbd6ce451d1d468a81a78bf2e4e078e43242ff4302ac`  
		Last Modified: Wed, 10 Apr 2019 13:26:12 GMT  
		Size: 6.4 KB (6399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b13362f6285f833645be5d56f819cb368e32696be5047d4f2b72e18dbe0237e`  
		Last Modified: Wed, 10 Apr 2019 13:26:13 GMT  
		Size: 87.9 KB (87855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43fc4fb991c3bcac1ed351222da66d5862145ea30e0aad962bb5f5fc8af13ad3`  
		Last Modified: Wed, 10 Apr 2019 13:26:12 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69c954ebb3a8ed9d620f79f773cf9dfd53d6a3a90f0ebfd689d58908697bfe8a`  
		Last Modified: Wed, 10 Apr 2019 13:26:13 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6-alpine` - linux; ppc64le

```console
$ docker pull spiped@sha256:4cf9b84e9352fb0d287ebbad7a27705dc2a1573462ae0c256825c2066e25da19
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2877767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a75899f09a59edfbf8a40bd8930cc4a720743d2e560492c1a43d75091a7e265e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 10 Apr 2019 08:27:30 GMT
ADD file:c13c1c2b4e6d71924f570a910caf6a1756ea5a28a4017c7b11305e021eacd0ee in / 
# Wed, 10 Apr 2019 08:27:33 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 10:23:14 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Wed, 10 Apr 2019 10:23:28 GMT
RUN apk add --no-cache libssl1.1
# Wed, 10 Apr 2019 10:23:34 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 10 Apr 2019 10:23:39 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 10 Apr 2019 10:23:45 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 10 Apr 2019 10:24:16 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Wed, 10 Apr 2019 10:24:20 GMT
VOLUME [/spiped]
# Wed, 10 Apr 2019 10:24:26 GMT
WORKDIR /spiped
# Wed, 10 Apr 2019 10:24:27 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 10 Apr 2019 10:24:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 10:24:34 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:fe0f92a92ee06f38abf50fefd22331ac42262e3872ecd2d7ddfa7c24ab71a53a`  
		Last Modified: Wed, 10 Apr 2019 08:28:34 GMT  
		Size: 2.8 MB (2781020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:864fe0e9483bf5bd7ecd7f91a64123c5baa028b508d8c6cf212b0e4a63069863`  
		Last Modified: Wed, 10 Apr 2019 10:25:05 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac5f178dee233aa4bdafd58ec88bf27326ab6e70335d46a12895c19e375a68d1`  
		Last Modified: Wed, 10 Apr 2019 10:25:05 GMT  
		Size: 6.4 KB (6410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0ef1539f2acb1c12a152271ba20d58cf445e369fd537f59da60f35ef5a12499`  
		Last Modified: Wed, 10 Apr 2019 10:25:05 GMT  
		Size: 88.6 KB (88577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:367ba8d5348813357fe526a1d78cc6042752975605670491548d485890b54388`  
		Last Modified: Wed, 10 Apr 2019 10:25:05 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53ee940e50564eae47a71e79f478fe06ded9a9a86c7277ca3135866c908b8c92`  
		Last Modified: Wed, 10 Apr 2019 10:25:05 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6-alpine` - linux; s390x

```console
$ docker pull spiped@sha256:21c1dac8e18400d71cf160748b64e4e34e313d6fc20faa4d712eba21325fa3cb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2624328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fa8324c63c868af6b828110eb28a292350481c507e1756da82edba38507db3b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 10 Apr 2019 11:42:23 GMT
ADD file:ab106eb2cf4bf0e1ca7861a56dc24e44dd206fd3ae8d3587684324e5c11136f4 in / 
# Wed, 10 Apr 2019 11:42:23 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 14:20:20 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Wed, 10 Apr 2019 14:20:23 GMT
RUN apk add --no-cache libssl1.1
# Wed, 10 Apr 2019 14:20:24 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 10 Apr 2019 14:20:24 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 10 Apr 2019 14:20:24 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 10 Apr 2019 14:20:43 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Wed, 10 Apr 2019 14:20:44 GMT
VOLUME [/spiped]
# Wed, 10 Apr 2019 14:20:44 GMT
WORKDIR /spiped
# Wed, 10 Apr 2019 14:20:45 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 10 Apr 2019 14:20:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 14:20:47 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:5b51e37a522c2e7cd3c67e8a3e5500b45189ea6698e9fdaed7f5d48282326633`  
		Last Modified: Wed, 10 Apr 2019 11:43:06 GMT  
		Size: 2.5 MB (2543326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35776b68c96beb63c04206503bbe57f3731b9de51200ec1b059364fa4d2030ca`  
		Last Modified: Wed, 10 Apr 2019 14:21:10 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9fe554e061c94e8b18f160d5c44244bae8bf9c0d891ba68fb8b70613d9477cf`  
		Last Modified: Wed, 10 Apr 2019 14:21:10 GMT  
		Size: 6.4 KB (6395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db3d2afcb64f130ccc190517156bb1f7487f0b42dfb628223fd09e2ab592ed21`  
		Last Modified: Wed, 10 Apr 2019 14:21:10 GMT  
		Size: 72.9 KB (72915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:386c86e2d6c2849858c3283a5356e20a914e3300c2582aa09837b958c0ceba8b`  
		Last Modified: Wed, 10 Apr 2019 14:21:10 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f8366791d43ecf839d170dce65049014d15620efad1b03bcbeb5a16670b22f2`  
		Last Modified: Wed, 10 Apr 2019 14:21:10 GMT  
		Size: 339.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1-alpine`

```console
$ docker pull spiped@sha256:b9e38ee3325ec3abec9250b99652050b92e61e1a6888ce4d435d43bf1b43c048
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
$ docker pull spiped@sha256:76bfb2c2d9bc65a6f3f6972208511417c684bda5d42a877bff75e2d874677615
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2844695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94aa6264c644ca4fd6a6d01ac2ee76e3496b5e0f2298aec66436e70551e3d7af`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Tue, 09 Apr 2019 23:55:20 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Tue, 09 Apr 2019 23:55:21 GMT
RUN apk add --no-cache libssl1.1
# Tue, 09 Apr 2019 23:55:21 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 09 Apr 2019 23:55:22 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 09 Apr 2019 23:55:22 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 09 Apr 2019 23:55:32 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Tue, 09 Apr 2019 23:55:32 GMT
VOLUME [/spiped]
# Tue, 09 Apr 2019 23:55:32 GMT
WORKDIR /spiped
# Tue, 09 Apr 2019 23:55:33 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Tue, 09 Apr 2019 23:55:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 Apr 2019 23:55:33 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8234f03fa8a139ca49aba31553c318fe32da9855b7f7b5cc4d4db535afb3793`  
		Last Modified: Tue, 09 Apr 2019 23:55:44 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce1070d6aced3397465c61060aabafbe8235b689b5b1556e34c325936e8ed7f1`  
		Last Modified: Tue, 09 Apr 2019 23:55:44 GMT  
		Size: 6.4 KB (6380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0beabb73baf87bd5aeb1f92df034032af4d231e36edc2a646a2ae20160aea56c`  
		Last Modified: Tue, 09 Apr 2019 23:55:44 GMT  
		Size: 79.6 KB (79610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2119809dd922d434f9c0a7547b1e5cf86bb69ba2d5273a8e02ba1cf260f03a4`  
		Last Modified: Tue, 09 Apr 2019 23:55:44 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00f93169aef4349f0689b9141b341c03a7ba1f4186159e0bffe5dd057a7e3d7b`  
		Last Modified: Tue, 09 Apr 2019 23:55:44 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1-alpine` - linux; arm variant v6

```console
$ docker pull spiped@sha256:be4715b6984bdf0f04ef82fc46e08e292ed8d3034ad5a6a724c79fd1071fe8b6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2620016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f9f96bc364dc234ce7c414b47191c57858e7910371de785d3af671bb57fe34f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 09:02:11 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Wed, 10 Apr 2019 09:02:13 GMT
RUN apk add --no-cache libssl1.1
# Wed, 10 Apr 2019 09:02:13 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 10 Apr 2019 09:02:13 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 10 Apr 2019 09:02:14 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 10 Apr 2019 09:02:31 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Wed, 10 Apr 2019 09:02:32 GMT
VOLUME [/spiped]
# Wed, 10 Apr 2019 09:02:32 GMT
WORKDIR /spiped
# Wed, 10 Apr 2019 09:02:33 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 10 Apr 2019 09:02:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 09:02:34 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14cba87aecdad34477dfb8027388cd5d4dfaea36ab15943599ae0687ee4427b6`  
		Last Modified: Wed, 10 Apr 2019 09:02:43 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7646df46140795aedc20913a8036b31fc1647df4cb0a9ef377fdaed9f4133dbe`  
		Last Modified: Wed, 10 Apr 2019 09:02:43 GMT  
		Size: 6.4 KB (6397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b14e996eef5cc3e4b9d7078d1ea46d76d0003af7604ed6194862a710155fda85`  
		Last Modified: Wed, 10 Apr 2019 09:02:43 GMT  
		Size: 68.4 KB (68421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:278255654318bec8ff8455858fee8e69b5c9963d000d09a8aaa01b0b467d1806`  
		Last Modified: Wed, 10 Apr 2019 09:02:43 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd5616712ecf39de33024de8a4c3b54085631ad57fd33bc9b438b74eb9e65431`  
		Last Modified: Wed, 10 Apr 2019 09:02:43 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1-alpine` - linux; arm variant v7

```console
$ docker pull spiped@sha256:86a084c872adf9bed8a9791ad451ee1f6349a50c3cce545acc395a33ed3b2afa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2421076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d1c8fc95d99414a65d3d9f874cd83618e475af122d3e2e01f47d1f07b3e891e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 10 Apr 2019 11:57:47 GMT
ADD file:1a27b74f23795a1f205247dcd6eff48ac56f0b8f2afe0c358199a0b60f694861 in / 
# Wed, 10 Apr 2019 11:57:48 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 12:30:25 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Wed, 10 Apr 2019 12:30:27 GMT
RUN apk add --no-cache libssl1.1
# Wed, 10 Apr 2019 12:30:27 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 10 Apr 2019 12:30:27 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 10 Apr 2019 12:30:28 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 10 Apr 2019 12:30:45 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Wed, 10 Apr 2019 12:30:46 GMT
VOLUME [/spiped]
# Wed, 10 Apr 2019 12:30:46 GMT
WORKDIR /spiped
# Wed, 10 Apr 2019 12:30:47 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 10 Apr 2019 12:30:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 12:30:48 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:c2a5cdd4aa08146b4516cc95f6b461f2994250a819b3e6f75f23fa2a8c1b1744`  
		Last Modified: Wed, 10 Apr 2019 11:58:04 GMT  
		Size: 2.4 MB (2350757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6046e3a66218f67beee09edf31522799824b08cbbce1f6e30ea229147154dd70`  
		Last Modified: Wed, 10 Apr 2019 12:30:59 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9608f0b6b8ec0f6514144f9c84d43b7279bcbeeb9c0a00ddf5d7c03f5788033c`  
		Last Modified: Wed, 10 Apr 2019 12:30:59 GMT  
		Size: 6.4 KB (6379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8116fbddac912aa46a21e03d80844ea418bf764a99ae1097b6d3dafcdfc182cd`  
		Last Modified: Wed, 10 Apr 2019 12:30:59 GMT  
		Size: 62.2 KB (62185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a1bebe218c4bb69b9229dadb8606390a7cf2b45ca7a6a41b84f5bf5bff012fa`  
		Last Modified: Wed, 10 Apr 2019 12:30:59 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d8b60c7e8731f2755eb41cb1fd259f868141605e59abdcee27eda0b47e5fa4`  
		Last Modified: Wed, 10 Apr 2019 12:30:59 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1-alpine` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:e371e669c705b2e62f643cccca63777ba68191f6b6cee499951e10f304129b77
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2771866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3d172bb529129467f9d1b7c5d37224f4052f049095eea9da5b5b0f0162af1bd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 10 Apr 2019 08:49:11 GMT
ADD file:30e0a8ccdca70b20b8ce637f0ba5108157f4ba491447d20aafbe45d82392bd81 in / 
# Wed, 10 Apr 2019 08:49:12 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 14:20:52 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Wed, 10 Apr 2019 14:20:57 GMT
RUN apk add --no-cache libssl1.1
# Wed, 10 Apr 2019 14:20:58 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 10 Apr 2019 14:20:59 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 10 Apr 2019 14:21:00 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 10 Apr 2019 14:21:50 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Wed, 10 Apr 2019 14:21:51 GMT
VOLUME [/spiped]
# Wed, 10 Apr 2019 14:21:52 GMT
WORKDIR /spiped
# Wed, 10 Apr 2019 14:21:54 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 10 Apr 2019 14:21:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 14:21:56 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:6f37394be673296a0fdc21b819c5df40431baf7d3af121bee451726dd1457493`  
		Last Modified: Wed, 10 Apr 2019 08:50:38 GMT  
		Size: 2.7 MB (2688778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ec38a229dae29b37dc8c89c18b8e1d4154993552b72da3fcb7b132e02e94b9`  
		Last Modified: Wed, 10 Apr 2019 14:22:28 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48adbc9c4850b9bddd9d3319e62ab8291c58311ae420b61dff8cfaa009a684a3`  
		Last Modified: Wed, 10 Apr 2019 14:22:28 GMT  
		Size: 6.4 KB (6397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c47a8bbb8e685d2c0c7d46b2927d6984e7f8ba5b598ba44988341710f61e74b`  
		Last Modified: Wed, 10 Apr 2019 14:22:28 GMT  
		Size: 75.0 KB (74994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:732e22e07fc65924664c27905abdec209142c2416cf3da7999291c45c6f3b1b9`  
		Last Modified: Wed, 10 Apr 2019 14:22:29 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f759f728595b8fabdedae7c143947c4485a369d739477d432e9d0574b7cc997`  
		Last Modified: Wed, 10 Apr 2019 14:22:28 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1-alpine` - linux; 386

```console
$ docker pull spiped@sha256:426f18d4a005a5843e853bbb1c5a732cd73e3b9b04059beeb24eb540ca188164
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2848111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bc0a71ea1fd8742ea17ed3612ae3360704dbd548ec78ce0a4f5b247af3870f5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 10 Apr 2019 10:38:55 GMT
ADD file:51f7bb95ef6cc3519317dcb7abbf6155e6bb7b73a17ad7d90cad7911e8a8933c in / 
# Wed, 10 Apr 2019 10:38:55 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 13:25:51 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Wed, 10 Apr 2019 13:25:52 GMT
RUN apk add --no-cache libssl1.1
# Wed, 10 Apr 2019 13:25:52 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 10 Apr 2019 13:25:52 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 10 Apr 2019 13:25:53 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 10 Apr 2019 13:26:03 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Wed, 10 Apr 2019 13:26:03 GMT
VOLUME [/spiped]
# Wed, 10 Apr 2019 13:26:03 GMT
WORKDIR /spiped
# Wed, 10 Apr 2019 13:26:04 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 10 Apr 2019 13:26:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 13:26:04 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:9a81e6a1a3b4f174d22173a96692c9aeffaefcd00f40607d508951a2b14d6f1f`  
		Last Modified: Wed, 10 Apr 2019 10:39:15 GMT  
		Size: 2.8 MB (2752162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:591d378a1fa4b362dfe986eef637fc5db6212ad6017e9ac8157ed7a19c65b4a4`  
		Last Modified: Wed, 10 Apr 2019 13:26:12 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e5c8ef3d01d549d96f6bbd6ce451d1d468a81a78bf2e4e078e43242ff4302ac`  
		Last Modified: Wed, 10 Apr 2019 13:26:12 GMT  
		Size: 6.4 KB (6399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b13362f6285f833645be5d56f819cb368e32696be5047d4f2b72e18dbe0237e`  
		Last Modified: Wed, 10 Apr 2019 13:26:13 GMT  
		Size: 87.9 KB (87855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43fc4fb991c3bcac1ed351222da66d5862145ea30e0aad962bb5f5fc8af13ad3`  
		Last Modified: Wed, 10 Apr 2019 13:26:12 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69c954ebb3a8ed9d620f79f773cf9dfd53d6a3a90f0ebfd689d58908697bfe8a`  
		Last Modified: Wed, 10 Apr 2019 13:26:13 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1-alpine` - linux; ppc64le

```console
$ docker pull spiped@sha256:4cf9b84e9352fb0d287ebbad7a27705dc2a1573462ae0c256825c2066e25da19
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2877767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a75899f09a59edfbf8a40bd8930cc4a720743d2e560492c1a43d75091a7e265e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 10 Apr 2019 08:27:30 GMT
ADD file:c13c1c2b4e6d71924f570a910caf6a1756ea5a28a4017c7b11305e021eacd0ee in / 
# Wed, 10 Apr 2019 08:27:33 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 10:23:14 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Wed, 10 Apr 2019 10:23:28 GMT
RUN apk add --no-cache libssl1.1
# Wed, 10 Apr 2019 10:23:34 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 10 Apr 2019 10:23:39 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 10 Apr 2019 10:23:45 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 10 Apr 2019 10:24:16 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Wed, 10 Apr 2019 10:24:20 GMT
VOLUME [/spiped]
# Wed, 10 Apr 2019 10:24:26 GMT
WORKDIR /spiped
# Wed, 10 Apr 2019 10:24:27 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 10 Apr 2019 10:24:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 10:24:34 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:fe0f92a92ee06f38abf50fefd22331ac42262e3872ecd2d7ddfa7c24ab71a53a`  
		Last Modified: Wed, 10 Apr 2019 08:28:34 GMT  
		Size: 2.8 MB (2781020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:864fe0e9483bf5bd7ecd7f91a64123c5baa028b508d8c6cf212b0e4a63069863`  
		Last Modified: Wed, 10 Apr 2019 10:25:05 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac5f178dee233aa4bdafd58ec88bf27326ab6e70335d46a12895c19e375a68d1`  
		Last Modified: Wed, 10 Apr 2019 10:25:05 GMT  
		Size: 6.4 KB (6410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0ef1539f2acb1c12a152271ba20d58cf445e369fd537f59da60f35ef5a12499`  
		Last Modified: Wed, 10 Apr 2019 10:25:05 GMT  
		Size: 88.6 KB (88577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:367ba8d5348813357fe526a1d78cc6042752975605670491548d485890b54388`  
		Last Modified: Wed, 10 Apr 2019 10:25:05 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53ee940e50564eae47a71e79f478fe06ded9a9a86c7277ca3135866c908b8c92`  
		Last Modified: Wed, 10 Apr 2019 10:25:05 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1-alpine` - linux; s390x

```console
$ docker pull spiped@sha256:21c1dac8e18400d71cf160748b64e4e34e313d6fc20faa4d712eba21325fa3cb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2624328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fa8324c63c868af6b828110eb28a292350481c507e1756da82edba38507db3b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 10 Apr 2019 11:42:23 GMT
ADD file:ab106eb2cf4bf0e1ca7861a56dc24e44dd206fd3ae8d3587684324e5c11136f4 in / 
# Wed, 10 Apr 2019 11:42:23 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 14:20:20 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Wed, 10 Apr 2019 14:20:23 GMT
RUN apk add --no-cache libssl1.1
# Wed, 10 Apr 2019 14:20:24 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 10 Apr 2019 14:20:24 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 10 Apr 2019 14:20:24 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 10 Apr 2019 14:20:43 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Wed, 10 Apr 2019 14:20:44 GMT
VOLUME [/spiped]
# Wed, 10 Apr 2019 14:20:44 GMT
WORKDIR /spiped
# Wed, 10 Apr 2019 14:20:45 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 10 Apr 2019 14:20:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 14:20:47 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:5b51e37a522c2e7cd3c67e8a3e5500b45189ea6698e9fdaed7f5d48282326633`  
		Last Modified: Wed, 10 Apr 2019 11:43:06 GMT  
		Size: 2.5 MB (2543326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35776b68c96beb63c04206503bbe57f3731b9de51200ec1b059364fa4d2030ca`  
		Last Modified: Wed, 10 Apr 2019 14:21:10 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9fe554e061c94e8b18f160d5c44244bae8bf9c0d891ba68fb8b70613d9477cf`  
		Last Modified: Wed, 10 Apr 2019 14:21:10 GMT  
		Size: 6.4 KB (6395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db3d2afcb64f130ccc190517156bb1f7487f0b42dfb628223fd09e2ab592ed21`  
		Last Modified: Wed, 10 Apr 2019 14:21:10 GMT  
		Size: 72.9 KB (72915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:386c86e2d6c2849858c3283a5356e20a914e3300c2582aa09837b958c0ceba8b`  
		Last Modified: Wed, 10 Apr 2019 14:21:10 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f8366791d43ecf839d170dce65049014d15620efad1b03bcbeb5a16670b22f2`  
		Last Modified: Wed, 10 Apr 2019 14:21:10 GMT  
		Size: 339.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:alpine`

```console
$ docker pull spiped@sha256:b9e38ee3325ec3abec9250b99652050b92e61e1a6888ce4d435d43bf1b43c048
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
$ docker pull spiped@sha256:76bfb2c2d9bc65a6f3f6972208511417c684bda5d42a877bff75e2d874677615
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2844695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94aa6264c644ca4fd6a6d01ac2ee76e3496b5e0f2298aec66436e70551e3d7af`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Tue, 09 Apr 2019 23:55:20 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Tue, 09 Apr 2019 23:55:21 GMT
RUN apk add --no-cache libssl1.1
# Tue, 09 Apr 2019 23:55:21 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 09 Apr 2019 23:55:22 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 09 Apr 2019 23:55:22 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 09 Apr 2019 23:55:32 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Tue, 09 Apr 2019 23:55:32 GMT
VOLUME [/spiped]
# Tue, 09 Apr 2019 23:55:32 GMT
WORKDIR /spiped
# Tue, 09 Apr 2019 23:55:33 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Tue, 09 Apr 2019 23:55:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 Apr 2019 23:55:33 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8234f03fa8a139ca49aba31553c318fe32da9855b7f7b5cc4d4db535afb3793`  
		Last Modified: Tue, 09 Apr 2019 23:55:44 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce1070d6aced3397465c61060aabafbe8235b689b5b1556e34c325936e8ed7f1`  
		Last Modified: Tue, 09 Apr 2019 23:55:44 GMT  
		Size: 6.4 KB (6380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0beabb73baf87bd5aeb1f92df034032af4d231e36edc2a646a2ae20160aea56c`  
		Last Modified: Tue, 09 Apr 2019 23:55:44 GMT  
		Size: 79.6 KB (79610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2119809dd922d434f9c0a7547b1e5cf86bb69ba2d5273a8e02ba1cf260f03a4`  
		Last Modified: Tue, 09 Apr 2019 23:55:44 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00f93169aef4349f0689b9141b341c03a7ba1f4186159e0bffe5dd057a7e3d7b`  
		Last Modified: Tue, 09 Apr 2019 23:55:44 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:alpine` - linux; arm variant v6

```console
$ docker pull spiped@sha256:be4715b6984bdf0f04ef82fc46e08e292ed8d3034ad5a6a724c79fd1071fe8b6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2620016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f9f96bc364dc234ce7c414b47191c57858e7910371de785d3af671bb57fe34f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 09:02:11 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Wed, 10 Apr 2019 09:02:13 GMT
RUN apk add --no-cache libssl1.1
# Wed, 10 Apr 2019 09:02:13 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 10 Apr 2019 09:02:13 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 10 Apr 2019 09:02:14 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 10 Apr 2019 09:02:31 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Wed, 10 Apr 2019 09:02:32 GMT
VOLUME [/spiped]
# Wed, 10 Apr 2019 09:02:32 GMT
WORKDIR /spiped
# Wed, 10 Apr 2019 09:02:33 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 10 Apr 2019 09:02:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 09:02:34 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14cba87aecdad34477dfb8027388cd5d4dfaea36ab15943599ae0687ee4427b6`  
		Last Modified: Wed, 10 Apr 2019 09:02:43 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7646df46140795aedc20913a8036b31fc1647df4cb0a9ef377fdaed9f4133dbe`  
		Last Modified: Wed, 10 Apr 2019 09:02:43 GMT  
		Size: 6.4 KB (6397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b14e996eef5cc3e4b9d7078d1ea46d76d0003af7604ed6194862a710155fda85`  
		Last Modified: Wed, 10 Apr 2019 09:02:43 GMT  
		Size: 68.4 KB (68421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:278255654318bec8ff8455858fee8e69b5c9963d000d09a8aaa01b0b467d1806`  
		Last Modified: Wed, 10 Apr 2019 09:02:43 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd5616712ecf39de33024de8a4c3b54085631ad57fd33bc9b438b74eb9e65431`  
		Last Modified: Wed, 10 Apr 2019 09:02:43 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:alpine` - linux; arm variant v7

```console
$ docker pull spiped@sha256:86a084c872adf9bed8a9791ad451ee1f6349a50c3cce545acc395a33ed3b2afa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2421076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d1c8fc95d99414a65d3d9f874cd83618e475af122d3e2e01f47d1f07b3e891e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 10 Apr 2019 11:57:47 GMT
ADD file:1a27b74f23795a1f205247dcd6eff48ac56f0b8f2afe0c358199a0b60f694861 in / 
# Wed, 10 Apr 2019 11:57:48 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 12:30:25 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Wed, 10 Apr 2019 12:30:27 GMT
RUN apk add --no-cache libssl1.1
# Wed, 10 Apr 2019 12:30:27 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 10 Apr 2019 12:30:27 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 10 Apr 2019 12:30:28 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 10 Apr 2019 12:30:45 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Wed, 10 Apr 2019 12:30:46 GMT
VOLUME [/spiped]
# Wed, 10 Apr 2019 12:30:46 GMT
WORKDIR /spiped
# Wed, 10 Apr 2019 12:30:47 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 10 Apr 2019 12:30:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 12:30:48 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:c2a5cdd4aa08146b4516cc95f6b461f2994250a819b3e6f75f23fa2a8c1b1744`  
		Last Modified: Wed, 10 Apr 2019 11:58:04 GMT  
		Size: 2.4 MB (2350757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6046e3a66218f67beee09edf31522799824b08cbbce1f6e30ea229147154dd70`  
		Last Modified: Wed, 10 Apr 2019 12:30:59 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9608f0b6b8ec0f6514144f9c84d43b7279bcbeeb9c0a00ddf5d7c03f5788033c`  
		Last Modified: Wed, 10 Apr 2019 12:30:59 GMT  
		Size: 6.4 KB (6379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8116fbddac912aa46a21e03d80844ea418bf764a99ae1097b6d3dafcdfc182cd`  
		Last Modified: Wed, 10 Apr 2019 12:30:59 GMT  
		Size: 62.2 KB (62185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a1bebe218c4bb69b9229dadb8606390a7cf2b45ca7a6a41b84f5bf5bff012fa`  
		Last Modified: Wed, 10 Apr 2019 12:30:59 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d8b60c7e8731f2755eb41cb1fd259f868141605e59abdcee27eda0b47e5fa4`  
		Last Modified: Wed, 10 Apr 2019 12:30:59 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:alpine` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:e371e669c705b2e62f643cccca63777ba68191f6b6cee499951e10f304129b77
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2771866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3d172bb529129467f9d1b7c5d37224f4052f049095eea9da5b5b0f0162af1bd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 10 Apr 2019 08:49:11 GMT
ADD file:30e0a8ccdca70b20b8ce637f0ba5108157f4ba491447d20aafbe45d82392bd81 in / 
# Wed, 10 Apr 2019 08:49:12 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 14:20:52 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Wed, 10 Apr 2019 14:20:57 GMT
RUN apk add --no-cache libssl1.1
# Wed, 10 Apr 2019 14:20:58 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 10 Apr 2019 14:20:59 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 10 Apr 2019 14:21:00 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 10 Apr 2019 14:21:50 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Wed, 10 Apr 2019 14:21:51 GMT
VOLUME [/spiped]
# Wed, 10 Apr 2019 14:21:52 GMT
WORKDIR /spiped
# Wed, 10 Apr 2019 14:21:54 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 10 Apr 2019 14:21:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 14:21:56 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:6f37394be673296a0fdc21b819c5df40431baf7d3af121bee451726dd1457493`  
		Last Modified: Wed, 10 Apr 2019 08:50:38 GMT  
		Size: 2.7 MB (2688778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ec38a229dae29b37dc8c89c18b8e1d4154993552b72da3fcb7b132e02e94b9`  
		Last Modified: Wed, 10 Apr 2019 14:22:28 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48adbc9c4850b9bddd9d3319e62ab8291c58311ae420b61dff8cfaa009a684a3`  
		Last Modified: Wed, 10 Apr 2019 14:22:28 GMT  
		Size: 6.4 KB (6397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c47a8bbb8e685d2c0c7d46b2927d6984e7f8ba5b598ba44988341710f61e74b`  
		Last Modified: Wed, 10 Apr 2019 14:22:28 GMT  
		Size: 75.0 KB (74994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:732e22e07fc65924664c27905abdec209142c2416cf3da7999291c45c6f3b1b9`  
		Last Modified: Wed, 10 Apr 2019 14:22:29 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f759f728595b8fabdedae7c143947c4485a369d739477d432e9d0574b7cc997`  
		Last Modified: Wed, 10 Apr 2019 14:22:28 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:alpine` - linux; 386

```console
$ docker pull spiped@sha256:426f18d4a005a5843e853bbb1c5a732cd73e3b9b04059beeb24eb540ca188164
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2848111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bc0a71ea1fd8742ea17ed3612ae3360704dbd548ec78ce0a4f5b247af3870f5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 10 Apr 2019 10:38:55 GMT
ADD file:51f7bb95ef6cc3519317dcb7abbf6155e6bb7b73a17ad7d90cad7911e8a8933c in / 
# Wed, 10 Apr 2019 10:38:55 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 13:25:51 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Wed, 10 Apr 2019 13:25:52 GMT
RUN apk add --no-cache libssl1.1
# Wed, 10 Apr 2019 13:25:52 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 10 Apr 2019 13:25:52 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 10 Apr 2019 13:25:53 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 10 Apr 2019 13:26:03 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Wed, 10 Apr 2019 13:26:03 GMT
VOLUME [/spiped]
# Wed, 10 Apr 2019 13:26:03 GMT
WORKDIR /spiped
# Wed, 10 Apr 2019 13:26:04 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 10 Apr 2019 13:26:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 13:26:04 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:9a81e6a1a3b4f174d22173a96692c9aeffaefcd00f40607d508951a2b14d6f1f`  
		Last Modified: Wed, 10 Apr 2019 10:39:15 GMT  
		Size: 2.8 MB (2752162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:591d378a1fa4b362dfe986eef637fc5db6212ad6017e9ac8157ed7a19c65b4a4`  
		Last Modified: Wed, 10 Apr 2019 13:26:12 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e5c8ef3d01d549d96f6bbd6ce451d1d468a81a78bf2e4e078e43242ff4302ac`  
		Last Modified: Wed, 10 Apr 2019 13:26:12 GMT  
		Size: 6.4 KB (6399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b13362f6285f833645be5d56f819cb368e32696be5047d4f2b72e18dbe0237e`  
		Last Modified: Wed, 10 Apr 2019 13:26:13 GMT  
		Size: 87.9 KB (87855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43fc4fb991c3bcac1ed351222da66d5862145ea30e0aad962bb5f5fc8af13ad3`  
		Last Modified: Wed, 10 Apr 2019 13:26:12 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69c954ebb3a8ed9d620f79f773cf9dfd53d6a3a90f0ebfd689d58908697bfe8a`  
		Last Modified: Wed, 10 Apr 2019 13:26:13 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:alpine` - linux; ppc64le

```console
$ docker pull spiped@sha256:4cf9b84e9352fb0d287ebbad7a27705dc2a1573462ae0c256825c2066e25da19
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2877767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a75899f09a59edfbf8a40bd8930cc4a720743d2e560492c1a43d75091a7e265e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 10 Apr 2019 08:27:30 GMT
ADD file:c13c1c2b4e6d71924f570a910caf6a1756ea5a28a4017c7b11305e021eacd0ee in / 
# Wed, 10 Apr 2019 08:27:33 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 10:23:14 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Wed, 10 Apr 2019 10:23:28 GMT
RUN apk add --no-cache libssl1.1
# Wed, 10 Apr 2019 10:23:34 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 10 Apr 2019 10:23:39 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 10 Apr 2019 10:23:45 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 10 Apr 2019 10:24:16 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Wed, 10 Apr 2019 10:24:20 GMT
VOLUME [/spiped]
# Wed, 10 Apr 2019 10:24:26 GMT
WORKDIR /spiped
# Wed, 10 Apr 2019 10:24:27 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 10 Apr 2019 10:24:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 10:24:34 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:fe0f92a92ee06f38abf50fefd22331ac42262e3872ecd2d7ddfa7c24ab71a53a`  
		Last Modified: Wed, 10 Apr 2019 08:28:34 GMT  
		Size: 2.8 MB (2781020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:864fe0e9483bf5bd7ecd7f91a64123c5baa028b508d8c6cf212b0e4a63069863`  
		Last Modified: Wed, 10 Apr 2019 10:25:05 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac5f178dee233aa4bdafd58ec88bf27326ab6e70335d46a12895c19e375a68d1`  
		Last Modified: Wed, 10 Apr 2019 10:25:05 GMT  
		Size: 6.4 KB (6410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0ef1539f2acb1c12a152271ba20d58cf445e369fd537f59da60f35ef5a12499`  
		Last Modified: Wed, 10 Apr 2019 10:25:05 GMT  
		Size: 88.6 KB (88577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:367ba8d5348813357fe526a1d78cc6042752975605670491548d485890b54388`  
		Last Modified: Wed, 10 Apr 2019 10:25:05 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53ee940e50564eae47a71e79f478fe06ded9a9a86c7277ca3135866c908b8c92`  
		Last Modified: Wed, 10 Apr 2019 10:25:05 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:alpine` - linux; s390x

```console
$ docker pull spiped@sha256:21c1dac8e18400d71cf160748b64e4e34e313d6fc20faa4d712eba21325fa3cb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2624328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fa8324c63c868af6b828110eb28a292350481c507e1756da82edba38507db3b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 10 Apr 2019 11:42:23 GMT
ADD file:ab106eb2cf4bf0e1ca7861a56dc24e44dd206fd3ae8d3587684324e5c11136f4 in / 
# Wed, 10 Apr 2019 11:42:23 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 14:20:20 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Wed, 10 Apr 2019 14:20:23 GMT
RUN apk add --no-cache libssl1.1
# Wed, 10 Apr 2019 14:20:24 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 10 Apr 2019 14:20:24 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 10 Apr 2019 14:20:24 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 10 Apr 2019 14:20:43 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Wed, 10 Apr 2019 14:20:44 GMT
VOLUME [/spiped]
# Wed, 10 Apr 2019 14:20:44 GMT
WORKDIR /spiped
# Wed, 10 Apr 2019 14:20:45 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 10 Apr 2019 14:20:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 14:20:47 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:5b51e37a522c2e7cd3c67e8a3e5500b45189ea6698e9fdaed7f5d48282326633`  
		Last Modified: Wed, 10 Apr 2019 11:43:06 GMT  
		Size: 2.5 MB (2543326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35776b68c96beb63c04206503bbe57f3731b9de51200ec1b059364fa4d2030ca`  
		Last Modified: Wed, 10 Apr 2019 14:21:10 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9fe554e061c94e8b18f160d5c44244bae8bf9c0d891ba68fb8b70613d9477cf`  
		Last Modified: Wed, 10 Apr 2019 14:21:10 GMT  
		Size: 6.4 KB (6395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db3d2afcb64f130ccc190517156bb1f7487f0b42dfb628223fd09e2ab592ed21`  
		Last Modified: Wed, 10 Apr 2019 14:21:10 GMT  
		Size: 72.9 KB (72915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:386c86e2d6c2849858c3283a5356e20a914e3300c2582aa09837b958c0ceba8b`  
		Last Modified: Wed, 10 Apr 2019 14:21:10 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f8366791d43ecf839d170dce65049014d15620efad1b03bcbeb5a16670b22f2`  
		Last Modified: Wed, 10 Apr 2019 14:21:10 GMT  
		Size: 339.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:latest`

```console
$ docker pull spiped@sha256:f3ea9bf220b1310947c68edffdd2d267abcf33e1608a2d3ed0a11c390fce37e5
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
$ docker pull spiped@sha256:4469696d28684c86a079cdb8577029dc01637244d9ed48b479efa5b3adda9251
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30261386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70ee43d5bcf9c8b32bef96eb451265b7f8596942f7a129b4b23b64472914cbbd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 06:25:21 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 08 May 2019 06:25:28 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 06:25:28 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 08 May 2019 06:25:29 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 08 May 2019 06:25:29 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 08 May 2019 06:26:09 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 06:26:10 GMT
VOLUME [/spiped]
# Wed, 08 May 2019 06:26:10 GMT
WORKDIR /spiped
# Wed, 08 May 2019 06:26:11 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 08 May 2019 06:26:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 06:26:11 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b334c8f63e0a7e4e5d3251a9fca0e1bf87436fb0a10631d6e402e69b8a6a70b`  
		Last Modified: Wed, 08 May 2019 06:26:34 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01de0dc86bb533c7a404dad1473f0e9e27832e942875fbc3e0d6c06ec45f7867`  
		Last Modified: Wed, 08 May 2019 06:26:35 GMT  
		Size: 1.9 MB (1891444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a62496f71308eac32037ad5d3cccc19cdbb777a6f0ba69e2f5c1739df118eb70`  
		Last Modified: Wed, 08 May 2019 06:26:38 GMT  
		Size: 5.9 MB (5878408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:790716f9d82fbf3b97b59cfc8056759e7cb0ed4d05eceaa11cb964187aa1d891`  
		Last Modified: Wed, 08 May 2019 06:26:35 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35d57e6339079df38e8d120b61c17adfa7c377518662ad528cb7650900e6c996`  
		Last Modified: Wed, 08 May 2019 06:26:34 GMT  
		Size: 350.0 B  
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
