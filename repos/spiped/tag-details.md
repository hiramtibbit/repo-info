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
$ docker pull spiped@sha256:d2117adca52b4098dce7f3060637fbbef4e8cbdff61f1e8d4cc1c845f5c51d87
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
$ docker pull spiped@sha256:cf1c0c1f28dedba70a08fc9ed7af58fc3dcbef52c60ebc3bd61340aefd0099e5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.7 MB (27743857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7295d4a66e9ca0bc26afb2788048f9949961bf18db5695a7a617725d00023025`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 08 May 2019 08:53:38 GMT
ADD file:d9cc007a953434e1439cc534f397967f4f0f1bf149f1288a52f6209eca436852 in / 
# Wed, 08 May 2019 08:53:39 GMT
CMD ["bash"]
# Wed, 08 May 2019 11:55:57 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 08 May 2019 11:56:06 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 11:56:06 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 08 May 2019 11:56:07 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 08 May 2019 11:56:07 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 08 May 2019 11:56:50 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 11:56:50 GMT
VOLUME [/spiped]
# Wed, 08 May 2019 11:56:51 GMT
WORKDIR /spiped
# Wed, 08 May 2019 11:56:51 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 08 May 2019 11:56:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 11:56:52 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:f23f9ce99dc288927adafc8d503252a16b6ea2b40c9cb0dca688223c56bd0235`  
		Last Modified: Wed, 08 May 2019 08:59:29 GMT  
		Size: 21.2 MB (21155863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c74e69e24dcc64f4723a072102c09004473fa54d8b448ccae88750ca88c1ce2`  
		Last Modified: Wed, 08 May 2019 11:57:07 GMT  
		Size: 1.7 KB (1735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f548face7d3726de86621e9e1b8b8384cbf1ae7d1ce5f05f812903963d91161`  
		Last Modified: Wed, 08 May 2019 11:57:06 GMT  
		Size: 1.6 MB (1632455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57eba3217688b73abeef0d443ba3fc1c1e0466b5a9e76ff0928080999d10f780`  
		Last Modified: Wed, 08 May 2019 11:57:08 GMT  
		Size: 5.0 MB (4953326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c36a90d7d54dddcfcd3cee597b4a56d6f03317e1bd294d701ce8326d70e8f90d`  
		Last Modified: Wed, 08 May 2019 11:57:05 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1fa514ee5a0d6b04f943b372b74a0a5fbe4ff09e1abecc3fdd575b7da9c9f22`  
		Last Modified: Wed, 08 May 2019 11:57:06 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1` - linux; arm variant v7

```console
$ docker pull spiped@sha256:af359eb703102a38d29ffeb696b2e55eb1bbef8169ad33c3a28259c719a444b7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.6 MB (25560929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c53594a61e9035983b6719b0cd4553e64856ef0760c6f0e1e66c6dd19a225a6b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 08 May 2019 12:03:54 GMT
ADD file:7813549b5e7862c4d5ecec9e7d8da27b520dd2cc1433e66637c57bb695d4f55a in / 
# Wed, 08 May 2019 12:03:54 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:58:15 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 08 May 2019 14:58:23 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 14:58:23 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 08 May 2019 14:58:24 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 08 May 2019 14:58:24 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 08 May 2019 14:59:05 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 14:59:06 GMT
VOLUME [/spiped]
# Wed, 08 May 2019 14:59:07 GMT
WORKDIR /spiped
# Wed, 08 May 2019 14:59:08 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 08 May 2019 14:59:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 14:59:08 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:b0727b1ec48ef8920082aec023c050c83b563ae08080d9951d68fba55934bbd6`  
		Last Modified: Wed, 08 May 2019 12:10:01 GMT  
		Size: 19.3 MB (19276216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e68c791dd2d6430f2ea155c4bda3db4448275d5a79febf0d0b84d5ee514c34f`  
		Last Modified: Wed, 08 May 2019 14:59:28 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0c5b280bc322ff52d7d8d5d2e56b1fabfc16b2ec0f0126a3828af147fde6739`  
		Last Modified: Wed, 08 May 2019 14:59:29 GMT  
		Size: 1.6 MB (1573642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deec3cfe6e3dca615c31f995d64b56852d57a2ece3be6ded4f81c5e3f73f124a`  
		Last Modified: Wed, 08 May 2019 14:59:30 GMT  
		Size: 4.7 MB (4708860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83f7669d826ba2825b23dcec39106cc895dd7d14b80b7942db31827eb6c7fcf9`  
		Last Modified: Wed, 08 May 2019 14:59:28 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd45a276ddbe8dd378bb192cf7d58ebb02ad549e9abfeac67a7baaadca0ae351`  
		Last Modified: Wed, 08 May 2019 14:59:28 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:792554fb2d46a0d81231425577d0609735163ebe2a26619a5203e8a240a36d02
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 MB (27198516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cef42c5407f7d684de5966f89951cfaf45dc1e5fdc927a8da3184bbace9cf565`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 10 Jun 2019 23:41:42 GMT
ADD file:cd613dd4ee4b2224b6debd778ceb35ef342fc7ea13102853ee42a5abb6f30d76 in / 
# Mon, 10 Jun 2019 23:41:43 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:34:17 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 11 Jun 2019 00:34:24 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:34:25 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 11 Jun 2019 00:34:25 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 11 Jun 2019 00:34:26 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 11 Jun 2019 00:35:06 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 11 Jun 2019 00:35:07 GMT
VOLUME [/spiped]
# Tue, 11 Jun 2019 00:35:07 GMT
WORKDIR /spiped
# Tue, 11 Jun 2019 00:35:08 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Tue, 11 Jun 2019 00:35:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Jun 2019 00:35:09 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:86ef8b977e9b28fc775a14aa2d4243a07dd2d142d19435649d2f478fbbee796b`  
		Last Modified: Mon, 10 Jun 2019 23:45:15 GMT  
		Size: 20.3 MB (20333790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f404b963bfada3c20d23ff05b874ff5c1231e2498697cf72f065019eaef935f1`  
		Last Modified: Tue, 11 Jun 2019 00:36:00 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1959fc4de4d2c4c95c398425b853de45708e6e90b3db332fce8640cecbe37888`  
		Last Modified: Tue, 11 Jun 2019 00:36:00 GMT  
		Size: 1.6 MB (1623670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83c13b97af25ae427fdb88e884009dd7d8c8d1cb4528550f2f70e1b4e84d04ed`  
		Last Modified: Tue, 11 Jun 2019 00:36:01 GMT  
		Size: 5.2 MB (5238833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffc67e43acc214d603c07db7deeb399c484be7fc9d3436af9b2f877ba3861a51`  
		Last Modified: Tue, 11 Jun 2019 00:35:59 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c24db3fba19d7814a4dddb7ae56a086726eb638819dc78d3cf435ede8471b3f`  
		Last Modified: Tue, 11 Jun 2019 00:35:59 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1` - linux; 386

```console
$ docker pull spiped@sha256:8fc08f02d8a6d706a88fafd0767f6331636d225718b1dc60a9ae02a0f4249402
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34320186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:499a252a3cd051ca2d6c5bc65c564872cfc8f1bb7d8397c57de73a5a9a8e7882`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:40:39 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 08 May 2019 19:40:43 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 19:40:43 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 08 May 2019 19:40:44 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 08 May 2019 19:40:44 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 08 May 2019 19:41:09 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 19:41:09 GMT
VOLUME [/spiped]
# Wed, 08 May 2019 19:41:09 GMT
WORKDIR /spiped
# Wed, 08 May 2019 19:41:10 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 08 May 2019 19:41:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 19:41:10 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b469c93feb13638afdd2d6d34e9491eec45acf7daa4fbe448da4b2e5837501fe`  
		Last Modified: Wed, 08 May 2019 19:41:23 GMT  
		Size: 1.7 KB (1736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a4a48973b7af0d9bda368a523040fe0e44ee181f4861ecf2ede5a9793effda6`  
		Last Modified: Wed, 08 May 2019 19:41:24 GMT  
		Size: 1.9 MB (1885407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed564b6100872afd5b59c5448c6b292c3c1e45fa4ec0308ef9d042d212f4de3d`  
		Last Modified: Wed, 08 May 2019 19:41:26 GMT  
		Size: 9.3 MB (9311756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b485aa0efb90e8aa9eb28031fdf725522831d38e088ad020ab1a4d13e4727c8`  
		Last Modified: Wed, 08 May 2019 19:41:23 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8b6f33bf844532c07eef7d6b4842ab9a97c8f227db93b52bfc6f74670770b5a`  
		Last Modified: Wed, 08 May 2019 19:41:23 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1` - linux; ppc64le

```console
$ docker pull spiped@sha256:8b48ec8e079577bde684641200641e70464ece791b82a1fd4a54a48ffb2b4f27
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.2 MB (30158909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2024543b3dbc2146568cd0b9239c2ff997b5db0ee98206f94276d420057b6edc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 08 May 2019 09:05:46 GMT
ADD file:fa23694e2ef3b1ff3ac824d7d18d6951725f7f1ebfd5350392edd91f6b90d89e in / 
# Wed, 08 May 2019 09:05:50 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:01:45 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 08 May 2019 14:02:17 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 14:02:25 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 08 May 2019 14:02:31 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 08 May 2019 14:02:38 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 08 May 2019 14:08:49 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 14:08:54 GMT
VOLUME [/spiped]
# Wed, 08 May 2019 14:08:57 GMT
WORKDIR /spiped
# Wed, 08 May 2019 14:09:01 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 08 May 2019 14:09:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 14:09:12 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:64bfe8794b280a764f2e07634dce2977621d140ae17fb34a03635710e84c3dfb`  
		Last Modified: Wed, 08 May 2019 09:26:17 GMT  
		Size: 22.7 MB (22744914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dec7c9aebf6f40879333d98aedd4cf388a46ce220620c24871765391f03d0e6`  
		Last Modified: Wed, 08 May 2019 14:09:45 GMT  
		Size: 1.8 KB (1753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f029e45878cabae55d480e6d332f728328b35b275fe0024c2f0249f6d5b38f0`  
		Last Modified: Wed, 08 May 2019 14:09:44 GMT  
		Size: 1.6 MB (1561375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8430327da2471a6ae65a9218eb94c7f2b9c8e82bd2cc560d25fbd05933cd9e9`  
		Last Modified: Wed, 08 May 2019 14:09:46 GMT  
		Size: 5.9 MB (5850386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e09e81f0a5a4c771a4a0797d8fd4c9ac23f9f1589f171c5f575de966aa4c24de`  
		Last Modified: Wed, 08 May 2019 14:09:42 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ba0fdb6a53dba544d55a14c0aae1b94508ac9d301a1536cc75887d4b7b0f452`  
		Last Modified: Wed, 08 May 2019 14:09:43 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1` - linux; s390x

```console
$ docker pull spiped@sha256:a4d4f96381152a11660049b2f31332ffde750091227d1fe32044e9ac25e39b97
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 MB (30739528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4ea1018c59b724c3572fa105a0dcf4bfff741403560a395caeff75ad1c0ea5f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 08 May 2019 11:47:01 GMT
ADD file:94f3707604bb7173eb9661df1719a395e39e97c32d08f5fc146b79dcee237fd8 in / 
# Wed, 08 May 2019 11:47:01 GMT
CMD ["bash"]
# Wed, 08 May 2019 18:10:15 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 08 May 2019 18:10:36 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 18:10:38 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 08 May 2019 18:10:39 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 08 May 2019 18:10:40 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 08 May 2019 18:12:47 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 18:12:49 GMT
VOLUME [/spiped]
# Wed, 08 May 2019 18:12:50 GMT
WORKDIR /spiped
# Wed, 08 May 2019 18:12:53 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 08 May 2019 18:12:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 18:12:55 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:e9681d6b3f0fb55b5da73b567906eaac580ed39b3428e95f839a34da054b5e37`  
		Last Modified: Wed, 08 May 2019 11:52:38 GMT  
		Size: 22.3 MB (22338869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b81ede6ed060d48efdf564b4275ad347391336f5de0d1a7f6ced003d0b761bd7`  
		Last Modified: Wed, 08 May 2019 18:13:58 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:442850461b1cea49f9d438fef11f18659ba24fcc45bf65ffc63e21f417c89d2f`  
		Last Modified: Wed, 08 May 2019 18:14:00 GMT  
		Size: 1.6 MB (1625750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb3e5fe379f64ee2cfe17494860253ed0ceda5349bb8a33a032203fdcee547f5`  
		Last Modified: Wed, 08 May 2019 18:14:04 GMT  
		Size: 6.8 MB (6772720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84a149eb93fd211709e9b489008f882cff6a9695370d25e385354676138292ea`  
		Last Modified: Wed, 08 May 2019 18:13:58 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fb1f506dbe9dcfc66022c377c578e1acd1eef92260682cf0ec3e0f157e202d9`  
		Last Modified: Wed, 08 May 2019 18:13:58 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1.6`

```console
$ docker pull spiped@sha256:d2117adca52b4098dce7f3060637fbbef4e8cbdff61f1e8d4cc1c845f5c51d87
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
$ docker pull spiped@sha256:cf1c0c1f28dedba70a08fc9ed7af58fc3dcbef52c60ebc3bd61340aefd0099e5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.7 MB (27743857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7295d4a66e9ca0bc26afb2788048f9949961bf18db5695a7a617725d00023025`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 08 May 2019 08:53:38 GMT
ADD file:d9cc007a953434e1439cc534f397967f4f0f1bf149f1288a52f6209eca436852 in / 
# Wed, 08 May 2019 08:53:39 GMT
CMD ["bash"]
# Wed, 08 May 2019 11:55:57 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 08 May 2019 11:56:06 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 11:56:06 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 08 May 2019 11:56:07 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 08 May 2019 11:56:07 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 08 May 2019 11:56:50 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 11:56:50 GMT
VOLUME [/spiped]
# Wed, 08 May 2019 11:56:51 GMT
WORKDIR /spiped
# Wed, 08 May 2019 11:56:51 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 08 May 2019 11:56:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 11:56:52 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:f23f9ce99dc288927adafc8d503252a16b6ea2b40c9cb0dca688223c56bd0235`  
		Last Modified: Wed, 08 May 2019 08:59:29 GMT  
		Size: 21.2 MB (21155863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c74e69e24dcc64f4723a072102c09004473fa54d8b448ccae88750ca88c1ce2`  
		Last Modified: Wed, 08 May 2019 11:57:07 GMT  
		Size: 1.7 KB (1735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f548face7d3726de86621e9e1b8b8384cbf1ae7d1ce5f05f812903963d91161`  
		Last Modified: Wed, 08 May 2019 11:57:06 GMT  
		Size: 1.6 MB (1632455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57eba3217688b73abeef0d443ba3fc1c1e0466b5a9e76ff0928080999d10f780`  
		Last Modified: Wed, 08 May 2019 11:57:08 GMT  
		Size: 5.0 MB (4953326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c36a90d7d54dddcfcd3cee597b4a56d6f03317e1bd294d701ce8326d70e8f90d`  
		Last Modified: Wed, 08 May 2019 11:57:05 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1fa514ee5a0d6b04f943b372b74a0a5fbe4ff09e1abecc3fdd575b7da9c9f22`  
		Last Modified: Wed, 08 May 2019 11:57:06 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6` - linux; arm variant v7

```console
$ docker pull spiped@sha256:af359eb703102a38d29ffeb696b2e55eb1bbef8169ad33c3a28259c719a444b7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.6 MB (25560929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c53594a61e9035983b6719b0cd4553e64856ef0760c6f0e1e66c6dd19a225a6b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 08 May 2019 12:03:54 GMT
ADD file:7813549b5e7862c4d5ecec9e7d8da27b520dd2cc1433e66637c57bb695d4f55a in / 
# Wed, 08 May 2019 12:03:54 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:58:15 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 08 May 2019 14:58:23 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 14:58:23 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 08 May 2019 14:58:24 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 08 May 2019 14:58:24 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 08 May 2019 14:59:05 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 14:59:06 GMT
VOLUME [/spiped]
# Wed, 08 May 2019 14:59:07 GMT
WORKDIR /spiped
# Wed, 08 May 2019 14:59:08 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 08 May 2019 14:59:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 14:59:08 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:b0727b1ec48ef8920082aec023c050c83b563ae08080d9951d68fba55934bbd6`  
		Last Modified: Wed, 08 May 2019 12:10:01 GMT  
		Size: 19.3 MB (19276216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e68c791dd2d6430f2ea155c4bda3db4448275d5a79febf0d0b84d5ee514c34f`  
		Last Modified: Wed, 08 May 2019 14:59:28 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0c5b280bc322ff52d7d8d5d2e56b1fabfc16b2ec0f0126a3828af147fde6739`  
		Last Modified: Wed, 08 May 2019 14:59:29 GMT  
		Size: 1.6 MB (1573642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deec3cfe6e3dca615c31f995d64b56852d57a2ece3be6ded4f81c5e3f73f124a`  
		Last Modified: Wed, 08 May 2019 14:59:30 GMT  
		Size: 4.7 MB (4708860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83f7669d826ba2825b23dcec39106cc895dd7d14b80b7942db31827eb6c7fcf9`  
		Last Modified: Wed, 08 May 2019 14:59:28 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd45a276ddbe8dd378bb192cf7d58ebb02ad549e9abfeac67a7baaadca0ae351`  
		Last Modified: Wed, 08 May 2019 14:59:28 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:792554fb2d46a0d81231425577d0609735163ebe2a26619a5203e8a240a36d02
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 MB (27198516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cef42c5407f7d684de5966f89951cfaf45dc1e5fdc927a8da3184bbace9cf565`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 10 Jun 2019 23:41:42 GMT
ADD file:cd613dd4ee4b2224b6debd778ceb35ef342fc7ea13102853ee42a5abb6f30d76 in / 
# Mon, 10 Jun 2019 23:41:43 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:34:17 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 11 Jun 2019 00:34:24 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:34:25 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 11 Jun 2019 00:34:25 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 11 Jun 2019 00:34:26 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 11 Jun 2019 00:35:06 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 11 Jun 2019 00:35:07 GMT
VOLUME [/spiped]
# Tue, 11 Jun 2019 00:35:07 GMT
WORKDIR /spiped
# Tue, 11 Jun 2019 00:35:08 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Tue, 11 Jun 2019 00:35:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Jun 2019 00:35:09 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:86ef8b977e9b28fc775a14aa2d4243a07dd2d142d19435649d2f478fbbee796b`  
		Last Modified: Mon, 10 Jun 2019 23:45:15 GMT  
		Size: 20.3 MB (20333790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f404b963bfada3c20d23ff05b874ff5c1231e2498697cf72f065019eaef935f1`  
		Last Modified: Tue, 11 Jun 2019 00:36:00 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1959fc4de4d2c4c95c398425b853de45708e6e90b3db332fce8640cecbe37888`  
		Last Modified: Tue, 11 Jun 2019 00:36:00 GMT  
		Size: 1.6 MB (1623670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83c13b97af25ae427fdb88e884009dd7d8c8d1cb4528550f2f70e1b4e84d04ed`  
		Last Modified: Tue, 11 Jun 2019 00:36:01 GMT  
		Size: 5.2 MB (5238833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffc67e43acc214d603c07db7deeb399c484be7fc9d3436af9b2f877ba3861a51`  
		Last Modified: Tue, 11 Jun 2019 00:35:59 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c24db3fba19d7814a4dddb7ae56a086726eb638819dc78d3cf435ede8471b3f`  
		Last Modified: Tue, 11 Jun 2019 00:35:59 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6` - linux; 386

```console
$ docker pull spiped@sha256:8fc08f02d8a6d706a88fafd0767f6331636d225718b1dc60a9ae02a0f4249402
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34320186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:499a252a3cd051ca2d6c5bc65c564872cfc8f1bb7d8397c57de73a5a9a8e7882`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:40:39 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 08 May 2019 19:40:43 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 19:40:43 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 08 May 2019 19:40:44 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 08 May 2019 19:40:44 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 08 May 2019 19:41:09 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 19:41:09 GMT
VOLUME [/spiped]
# Wed, 08 May 2019 19:41:09 GMT
WORKDIR /spiped
# Wed, 08 May 2019 19:41:10 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 08 May 2019 19:41:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 19:41:10 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b469c93feb13638afdd2d6d34e9491eec45acf7daa4fbe448da4b2e5837501fe`  
		Last Modified: Wed, 08 May 2019 19:41:23 GMT  
		Size: 1.7 KB (1736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a4a48973b7af0d9bda368a523040fe0e44ee181f4861ecf2ede5a9793effda6`  
		Last Modified: Wed, 08 May 2019 19:41:24 GMT  
		Size: 1.9 MB (1885407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed564b6100872afd5b59c5448c6b292c3c1e45fa4ec0308ef9d042d212f4de3d`  
		Last Modified: Wed, 08 May 2019 19:41:26 GMT  
		Size: 9.3 MB (9311756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b485aa0efb90e8aa9eb28031fdf725522831d38e088ad020ab1a4d13e4727c8`  
		Last Modified: Wed, 08 May 2019 19:41:23 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8b6f33bf844532c07eef7d6b4842ab9a97c8f227db93b52bfc6f74670770b5a`  
		Last Modified: Wed, 08 May 2019 19:41:23 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6` - linux; ppc64le

```console
$ docker pull spiped@sha256:8b48ec8e079577bde684641200641e70464ece791b82a1fd4a54a48ffb2b4f27
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.2 MB (30158909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2024543b3dbc2146568cd0b9239c2ff997b5db0ee98206f94276d420057b6edc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 08 May 2019 09:05:46 GMT
ADD file:fa23694e2ef3b1ff3ac824d7d18d6951725f7f1ebfd5350392edd91f6b90d89e in / 
# Wed, 08 May 2019 09:05:50 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:01:45 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 08 May 2019 14:02:17 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 14:02:25 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 08 May 2019 14:02:31 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 08 May 2019 14:02:38 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 08 May 2019 14:08:49 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 14:08:54 GMT
VOLUME [/spiped]
# Wed, 08 May 2019 14:08:57 GMT
WORKDIR /spiped
# Wed, 08 May 2019 14:09:01 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 08 May 2019 14:09:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 14:09:12 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:64bfe8794b280a764f2e07634dce2977621d140ae17fb34a03635710e84c3dfb`  
		Last Modified: Wed, 08 May 2019 09:26:17 GMT  
		Size: 22.7 MB (22744914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dec7c9aebf6f40879333d98aedd4cf388a46ce220620c24871765391f03d0e6`  
		Last Modified: Wed, 08 May 2019 14:09:45 GMT  
		Size: 1.8 KB (1753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f029e45878cabae55d480e6d332f728328b35b275fe0024c2f0249f6d5b38f0`  
		Last Modified: Wed, 08 May 2019 14:09:44 GMT  
		Size: 1.6 MB (1561375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8430327da2471a6ae65a9218eb94c7f2b9c8e82bd2cc560d25fbd05933cd9e9`  
		Last Modified: Wed, 08 May 2019 14:09:46 GMT  
		Size: 5.9 MB (5850386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e09e81f0a5a4c771a4a0797d8fd4c9ac23f9f1589f171c5f575de966aa4c24de`  
		Last Modified: Wed, 08 May 2019 14:09:42 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ba0fdb6a53dba544d55a14c0aae1b94508ac9d301a1536cc75887d4b7b0f452`  
		Last Modified: Wed, 08 May 2019 14:09:43 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6` - linux; s390x

```console
$ docker pull spiped@sha256:a4d4f96381152a11660049b2f31332ffde750091227d1fe32044e9ac25e39b97
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 MB (30739528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4ea1018c59b724c3572fa105a0dcf4bfff741403560a395caeff75ad1c0ea5f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 08 May 2019 11:47:01 GMT
ADD file:94f3707604bb7173eb9661df1719a395e39e97c32d08f5fc146b79dcee237fd8 in / 
# Wed, 08 May 2019 11:47:01 GMT
CMD ["bash"]
# Wed, 08 May 2019 18:10:15 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 08 May 2019 18:10:36 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 18:10:38 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 08 May 2019 18:10:39 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 08 May 2019 18:10:40 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 08 May 2019 18:12:47 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 18:12:49 GMT
VOLUME [/spiped]
# Wed, 08 May 2019 18:12:50 GMT
WORKDIR /spiped
# Wed, 08 May 2019 18:12:53 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 08 May 2019 18:12:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 18:12:55 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:e9681d6b3f0fb55b5da73b567906eaac580ed39b3428e95f839a34da054b5e37`  
		Last Modified: Wed, 08 May 2019 11:52:38 GMT  
		Size: 22.3 MB (22338869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b81ede6ed060d48efdf564b4275ad347391336f5de0d1a7f6ced003d0b761bd7`  
		Last Modified: Wed, 08 May 2019 18:13:58 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:442850461b1cea49f9d438fef11f18659ba24fcc45bf65ffc63e21f417c89d2f`  
		Last Modified: Wed, 08 May 2019 18:14:00 GMT  
		Size: 1.6 MB (1625750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb3e5fe379f64ee2cfe17494860253ed0ceda5349bb8a33a032203fdcee547f5`  
		Last Modified: Wed, 08 May 2019 18:14:04 GMT  
		Size: 6.8 MB (6772720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84a149eb93fd211709e9b489008f882cff6a9695370d25e385354676138292ea`  
		Last Modified: Wed, 08 May 2019 18:13:58 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fb1f506dbe9dcfc66022c377c578e1acd1eef92260682cf0ec3e0f157e202d9`  
		Last Modified: Wed, 08 May 2019 18:13:58 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1.6.0`

```console
$ docker pull spiped@sha256:d2117adca52b4098dce7f3060637fbbef4e8cbdff61f1e8d4cc1c845f5c51d87
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
$ docker pull spiped@sha256:cf1c0c1f28dedba70a08fc9ed7af58fc3dcbef52c60ebc3bd61340aefd0099e5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.7 MB (27743857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7295d4a66e9ca0bc26afb2788048f9949961bf18db5695a7a617725d00023025`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 08 May 2019 08:53:38 GMT
ADD file:d9cc007a953434e1439cc534f397967f4f0f1bf149f1288a52f6209eca436852 in / 
# Wed, 08 May 2019 08:53:39 GMT
CMD ["bash"]
# Wed, 08 May 2019 11:55:57 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 08 May 2019 11:56:06 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 11:56:06 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 08 May 2019 11:56:07 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 08 May 2019 11:56:07 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 08 May 2019 11:56:50 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 11:56:50 GMT
VOLUME [/spiped]
# Wed, 08 May 2019 11:56:51 GMT
WORKDIR /spiped
# Wed, 08 May 2019 11:56:51 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 08 May 2019 11:56:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 11:56:52 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:f23f9ce99dc288927adafc8d503252a16b6ea2b40c9cb0dca688223c56bd0235`  
		Last Modified: Wed, 08 May 2019 08:59:29 GMT  
		Size: 21.2 MB (21155863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c74e69e24dcc64f4723a072102c09004473fa54d8b448ccae88750ca88c1ce2`  
		Last Modified: Wed, 08 May 2019 11:57:07 GMT  
		Size: 1.7 KB (1735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f548face7d3726de86621e9e1b8b8384cbf1ae7d1ce5f05f812903963d91161`  
		Last Modified: Wed, 08 May 2019 11:57:06 GMT  
		Size: 1.6 MB (1632455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57eba3217688b73abeef0d443ba3fc1c1e0466b5a9e76ff0928080999d10f780`  
		Last Modified: Wed, 08 May 2019 11:57:08 GMT  
		Size: 5.0 MB (4953326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c36a90d7d54dddcfcd3cee597b4a56d6f03317e1bd294d701ce8326d70e8f90d`  
		Last Modified: Wed, 08 May 2019 11:57:05 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1fa514ee5a0d6b04f943b372b74a0a5fbe4ff09e1abecc3fdd575b7da9c9f22`  
		Last Modified: Wed, 08 May 2019 11:57:06 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0` - linux; arm variant v7

```console
$ docker pull spiped@sha256:af359eb703102a38d29ffeb696b2e55eb1bbef8169ad33c3a28259c719a444b7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.6 MB (25560929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c53594a61e9035983b6719b0cd4553e64856ef0760c6f0e1e66c6dd19a225a6b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 08 May 2019 12:03:54 GMT
ADD file:7813549b5e7862c4d5ecec9e7d8da27b520dd2cc1433e66637c57bb695d4f55a in / 
# Wed, 08 May 2019 12:03:54 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:58:15 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 08 May 2019 14:58:23 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 14:58:23 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 08 May 2019 14:58:24 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 08 May 2019 14:58:24 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 08 May 2019 14:59:05 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 14:59:06 GMT
VOLUME [/spiped]
# Wed, 08 May 2019 14:59:07 GMT
WORKDIR /spiped
# Wed, 08 May 2019 14:59:08 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 08 May 2019 14:59:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 14:59:08 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:b0727b1ec48ef8920082aec023c050c83b563ae08080d9951d68fba55934bbd6`  
		Last Modified: Wed, 08 May 2019 12:10:01 GMT  
		Size: 19.3 MB (19276216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e68c791dd2d6430f2ea155c4bda3db4448275d5a79febf0d0b84d5ee514c34f`  
		Last Modified: Wed, 08 May 2019 14:59:28 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0c5b280bc322ff52d7d8d5d2e56b1fabfc16b2ec0f0126a3828af147fde6739`  
		Last Modified: Wed, 08 May 2019 14:59:29 GMT  
		Size: 1.6 MB (1573642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deec3cfe6e3dca615c31f995d64b56852d57a2ece3be6ded4f81c5e3f73f124a`  
		Last Modified: Wed, 08 May 2019 14:59:30 GMT  
		Size: 4.7 MB (4708860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83f7669d826ba2825b23dcec39106cc895dd7d14b80b7942db31827eb6c7fcf9`  
		Last Modified: Wed, 08 May 2019 14:59:28 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd45a276ddbe8dd378bb192cf7d58ebb02ad549e9abfeac67a7baaadca0ae351`  
		Last Modified: Wed, 08 May 2019 14:59:28 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:792554fb2d46a0d81231425577d0609735163ebe2a26619a5203e8a240a36d02
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 MB (27198516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cef42c5407f7d684de5966f89951cfaf45dc1e5fdc927a8da3184bbace9cf565`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 10 Jun 2019 23:41:42 GMT
ADD file:cd613dd4ee4b2224b6debd778ceb35ef342fc7ea13102853ee42a5abb6f30d76 in / 
# Mon, 10 Jun 2019 23:41:43 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:34:17 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 11 Jun 2019 00:34:24 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:34:25 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 11 Jun 2019 00:34:25 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 11 Jun 2019 00:34:26 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 11 Jun 2019 00:35:06 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 11 Jun 2019 00:35:07 GMT
VOLUME [/spiped]
# Tue, 11 Jun 2019 00:35:07 GMT
WORKDIR /spiped
# Tue, 11 Jun 2019 00:35:08 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Tue, 11 Jun 2019 00:35:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Jun 2019 00:35:09 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:86ef8b977e9b28fc775a14aa2d4243a07dd2d142d19435649d2f478fbbee796b`  
		Last Modified: Mon, 10 Jun 2019 23:45:15 GMT  
		Size: 20.3 MB (20333790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f404b963bfada3c20d23ff05b874ff5c1231e2498697cf72f065019eaef935f1`  
		Last Modified: Tue, 11 Jun 2019 00:36:00 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1959fc4de4d2c4c95c398425b853de45708e6e90b3db332fce8640cecbe37888`  
		Last Modified: Tue, 11 Jun 2019 00:36:00 GMT  
		Size: 1.6 MB (1623670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83c13b97af25ae427fdb88e884009dd7d8c8d1cb4528550f2f70e1b4e84d04ed`  
		Last Modified: Tue, 11 Jun 2019 00:36:01 GMT  
		Size: 5.2 MB (5238833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffc67e43acc214d603c07db7deeb399c484be7fc9d3436af9b2f877ba3861a51`  
		Last Modified: Tue, 11 Jun 2019 00:35:59 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c24db3fba19d7814a4dddb7ae56a086726eb638819dc78d3cf435ede8471b3f`  
		Last Modified: Tue, 11 Jun 2019 00:35:59 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0` - linux; 386

```console
$ docker pull spiped@sha256:8fc08f02d8a6d706a88fafd0767f6331636d225718b1dc60a9ae02a0f4249402
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34320186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:499a252a3cd051ca2d6c5bc65c564872cfc8f1bb7d8397c57de73a5a9a8e7882`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:40:39 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 08 May 2019 19:40:43 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 19:40:43 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 08 May 2019 19:40:44 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 08 May 2019 19:40:44 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 08 May 2019 19:41:09 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 19:41:09 GMT
VOLUME [/spiped]
# Wed, 08 May 2019 19:41:09 GMT
WORKDIR /spiped
# Wed, 08 May 2019 19:41:10 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 08 May 2019 19:41:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 19:41:10 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b469c93feb13638afdd2d6d34e9491eec45acf7daa4fbe448da4b2e5837501fe`  
		Last Modified: Wed, 08 May 2019 19:41:23 GMT  
		Size: 1.7 KB (1736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a4a48973b7af0d9bda368a523040fe0e44ee181f4861ecf2ede5a9793effda6`  
		Last Modified: Wed, 08 May 2019 19:41:24 GMT  
		Size: 1.9 MB (1885407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed564b6100872afd5b59c5448c6b292c3c1e45fa4ec0308ef9d042d212f4de3d`  
		Last Modified: Wed, 08 May 2019 19:41:26 GMT  
		Size: 9.3 MB (9311756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b485aa0efb90e8aa9eb28031fdf725522831d38e088ad020ab1a4d13e4727c8`  
		Last Modified: Wed, 08 May 2019 19:41:23 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8b6f33bf844532c07eef7d6b4842ab9a97c8f227db93b52bfc6f74670770b5a`  
		Last Modified: Wed, 08 May 2019 19:41:23 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0` - linux; ppc64le

```console
$ docker pull spiped@sha256:8b48ec8e079577bde684641200641e70464ece791b82a1fd4a54a48ffb2b4f27
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.2 MB (30158909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2024543b3dbc2146568cd0b9239c2ff997b5db0ee98206f94276d420057b6edc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 08 May 2019 09:05:46 GMT
ADD file:fa23694e2ef3b1ff3ac824d7d18d6951725f7f1ebfd5350392edd91f6b90d89e in / 
# Wed, 08 May 2019 09:05:50 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:01:45 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 08 May 2019 14:02:17 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 14:02:25 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 08 May 2019 14:02:31 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 08 May 2019 14:02:38 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 08 May 2019 14:08:49 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 14:08:54 GMT
VOLUME [/spiped]
# Wed, 08 May 2019 14:08:57 GMT
WORKDIR /spiped
# Wed, 08 May 2019 14:09:01 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 08 May 2019 14:09:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 14:09:12 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:64bfe8794b280a764f2e07634dce2977621d140ae17fb34a03635710e84c3dfb`  
		Last Modified: Wed, 08 May 2019 09:26:17 GMT  
		Size: 22.7 MB (22744914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dec7c9aebf6f40879333d98aedd4cf388a46ce220620c24871765391f03d0e6`  
		Last Modified: Wed, 08 May 2019 14:09:45 GMT  
		Size: 1.8 KB (1753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f029e45878cabae55d480e6d332f728328b35b275fe0024c2f0249f6d5b38f0`  
		Last Modified: Wed, 08 May 2019 14:09:44 GMT  
		Size: 1.6 MB (1561375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8430327da2471a6ae65a9218eb94c7f2b9c8e82bd2cc560d25fbd05933cd9e9`  
		Last Modified: Wed, 08 May 2019 14:09:46 GMT  
		Size: 5.9 MB (5850386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e09e81f0a5a4c771a4a0797d8fd4c9ac23f9f1589f171c5f575de966aa4c24de`  
		Last Modified: Wed, 08 May 2019 14:09:42 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ba0fdb6a53dba544d55a14c0aae1b94508ac9d301a1536cc75887d4b7b0f452`  
		Last Modified: Wed, 08 May 2019 14:09:43 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0` - linux; s390x

```console
$ docker pull spiped@sha256:a4d4f96381152a11660049b2f31332ffde750091227d1fe32044e9ac25e39b97
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 MB (30739528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4ea1018c59b724c3572fa105a0dcf4bfff741403560a395caeff75ad1c0ea5f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 08 May 2019 11:47:01 GMT
ADD file:94f3707604bb7173eb9661df1719a395e39e97c32d08f5fc146b79dcee237fd8 in / 
# Wed, 08 May 2019 11:47:01 GMT
CMD ["bash"]
# Wed, 08 May 2019 18:10:15 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 08 May 2019 18:10:36 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 18:10:38 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 08 May 2019 18:10:39 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 08 May 2019 18:10:40 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 08 May 2019 18:12:47 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 18:12:49 GMT
VOLUME [/spiped]
# Wed, 08 May 2019 18:12:50 GMT
WORKDIR /spiped
# Wed, 08 May 2019 18:12:53 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 08 May 2019 18:12:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 18:12:55 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:e9681d6b3f0fb55b5da73b567906eaac580ed39b3428e95f839a34da054b5e37`  
		Last Modified: Wed, 08 May 2019 11:52:38 GMT  
		Size: 22.3 MB (22338869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b81ede6ed060d48efdf564b4275ad347391336f5de0d1a7f6ced003d0b761bd7`  
		Last Modified: Wed, 08 May 2019 18:13:58 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:442850461b1cea49f9d438fef11f18659ba24fcc45bf65ffc63e21f417c89d2f`  
		Last Modified: Wed, 08 May 2019 18:14:00 GMT  
		Size: 1.6 MB (1625750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb3e5fe379f64ee2cfe17494860253ed0ceda5349bb8a33a032203fdcee547f5`  
		Last Modified: Wed, 08 May 2019 18:14:04 GMT  
		Size: 6.8 MB (6772720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84a149eb93fd211709e9b489008f882cff6a9695370d25e385354676138292ea`  
		Last Modified: Wed, 08 May 2019 18:13:58 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fb1f506dbe9dcfc66022c377c578e1acd1eef92260682cf0ec3e0f157e202d9`  
		Last Modified: Wed, 08 May 2019 18:13:58 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1.6.0-alpine`

```console
$ docker pull spiped@sha256:910ef66fd73e9e6498418b5afccc3c82c5f7278b130f7fe8eb12963d7f7181e1
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
$ docker pull spiped@sha256:b957740f833538b3771fabd3eb00485be6b9e5a469fcde3787260a0da6c7c562
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2844719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0efa760df45b20a2bacc1a3e46272ae5bed32b2562fec4d5fa41125a8d08cfa6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 01:49:59 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Sat, 11 May 2019 01:50:00 GMT
RUN apk add --no-cache libssl1.1
# Sat, 11 May 2019 01:50:01 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 11 May 2019 01:50:01 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 11 May 2019 01:50:01 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 11 May 2019 01:50:19 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Sat, 11 May 2019 01:50:20 GMT
VOLUME [/spiped]
# Sat, 11 May 2019 01:50:20 GMT
WORKDIR /spiped
# Sat, 11 May 2019 01:50:20 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Sat, 11 May 2019 01:50:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 01:50:21 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef2770bd03c589f70b5a774dc481b29f74ffe220544ae1a0f007c81fb08983a3`  
		Last Modified: Sat, 11 May 2019 01:50:37 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a0a720b5a9f6fadd3e42a13a31e80022c989d5e7de29e0477e8a696bcf125d3`  
		Last Modified: Sat, 11 May 2019 01:50:37 GMT  
		Size: 6.4 KB (6381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54240dd8f68b0ced13b6c38396b90cd288e03192c2d2a2110fac5e0988a1ba05`  
		Last Modified: Sat, 11 May 2019 01:50:37 GMT  
		Size: 79.6 KB (79612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cb4b1212926844509e0f6ce474d3f00dfb508f29a95cd857d61b073610bded6`  
		Last Modified: Sat, 11 May 2019 01:50:37 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bca05dcee260130d4761cc8558512d6fb399d0c91003f7588eddb5feb26f71b1`  
		Last Modified: Sat, 11 May 2019 01:50:37 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0-alpine` - linux; arm variant v6

```console
$ docker pull spiped@sha256:0b66af7678bf3b02272e08b339a3faf99bc40fbb16c00b3ed73adf3283a254f5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2619993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:712abda549574642ba1bc6a7a9448d3f701fff55496702eef37583b58d0041ea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:31:58 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Sat, 11 May 2019 08:32:00 GMT
RUN apk add --no-cache libssl1.1
# Sat, 11 May 2019 08:32:00 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 11 May 2019 08:32:01 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 11 May 2019 08:32:01 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 11 May 2019 08:32:18 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Sat, 11 May 2019 08:32:18 GMT
VOLUME [/spiped]
# Sat, 11 May 2019 08:32:19 GMT
WORKDIR /spiped
# Sat, 11 May 2019 08:32:19 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Sat, 11 May 2019 08:32:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 08:32:20 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deed7fbf341c2d5c3fa302e330fc31dac83e8f8b71bacec835a240dab99cbcd8`  
		Last Modified: Sat, 11 May 2019 08:32:30 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b8568d7ef9a30261b1d43ccf5b307657a47b8582e98b06100abe927e4f5fb6`  
		Last Modified: Sat, 11 May 2019 08:32:30 GMT  
		Size: 6.4 KB (6393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3530af6ebb74ea33e953e476658af2867d671ffa178b78ab58337e650b83364c`  
		Last Modified: Sat, 11 May 2019 08:32:30 GMT  
		Size: 68.4 KB (68418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab7c62ed5e061e8c93923bd04b240634b15750b5fdcc836e13ef9efad62d7982`  
		Last Modified: Sat, 11 May 2019 08:32:30 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0349fa3568e6373decb638cfe0436c819288b8f390b9b5de2dd036468edf58f7`  
		Last Modified: Sat, 11 May 2019 08:32:30 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0-alpine` - linux; arm variant v7

```console
$ docker pull spiped@sha256:2c4950766053bf7a5fc79a63200c6a9ad0b4dd50b5db113feab260d39e3f0dd7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2420988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02d515320ce54e9b9a736e2f17ef7a6480b5c61a4ca2fd73eadc61d0d8b75e74`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Sat, 11 May 2019 11:57:33 GMT
ADD file:6a887e546cc71145f8be9285950befcf2a4095b97ba44c66550b31165f7a02b5 in / 
# Sat, 11 May 2019 11:57:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 12:47:14 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Sat, 11 May 2019 12:47:16 GMT
RUN apk add --no-cache libssl1.1
# Sat, 11 May 2019 12:47:17 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 11 May 2019 12:47:17 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 11 May 2019 12:47:18 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 11 May 2019 12:47:36 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Sat, 11 May 2019 12:47:36 GMT
VOLUME [/spiped]
# Sat, 11 May 2019 12:47:37 GMT
WORKDIR /spiped
# Sat, 11 May 2019 12:47:38 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Sat, 11 May 2019 12:47:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 12:47:39 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:856f4240f8dba160c5323506c1e9a4dbaaca840bf1b0c244af3b8d1b42b0f43b`  
		Last Modified: Sat, 11 May 2019 11:57:49 GMT  
		Size: 2.4 MB (2350666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52c4b7087d0a9e823bd3a715038357835e04ae1c4e535b1dca55994f60a7e511`  
		Last Modified: Sat, 11 May 2019 12:47:54 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42cba67efbd41be5582496c852dc87966cd1369d5c1f97af6793a121997b3a87`  
		Last Modified: Sat, 11 May 2019 12:47:54 GMT  
		Size: 6.4 KB (6380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2461fbc8826ec2dfe7bc3fa9649511bd886bace6d4c6052abda993732574f57`  
		Last Modified: Sat, 11 May 2019 12:47:55 GMT  
		Size: 62.2 KB (62187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15935a7f2ab9263ae495c5e2e8cda200e959b76f68526e3a88f000ae0ba6f6ed`  
		Last Modified: Sat, 11 May 2019 12:47:54 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aff52c9761fa04d19a6faf34ba9c9f7ca6126cda35a7848583ceab7ac3ccdff0`  
		Last Modified: Sat, 11 May 2019 12:47:54 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0-alpine` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:bc18f5a714a2897c3521f34d23d43eef673d085fe33957c864a11ce7e6db8328
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2771966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33ead3eec077da983a18160af8a09c271a2d6a9b9e7e5531dd9fbb2733571ee4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Tue, 11 Jun 2019 00:35:20 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Tue, 11 Jun 2019 00:35:22 GMT
RUN apk add --no-cache libssl1.1
# Tue, 11 Jun 2019 00:35:23 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 11 Jun 2019 00:35:23 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 11 Jun 2019 00:35:24 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 11 Jun 2019 00:35:43 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Tue, 11 Jun 2019 00:35:43 GMT
VOLUME [/spiped]
# Tue, 11 Jun 2019 00:35:44 GMT
WORKDIR /spiped
# Tue, 11 Jun 2019 00:35:45 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Tue, 11 Jun 2019 00:35:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Jun 2019 00:35:45 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c21169594569007710865a7b044a2c90fdf358c17db080225500fa528f25ac`  
		Last Modified: Tue, 11 Jun 2019 00:36:15 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48dfed1003106ac1da6ccbe2500564b0ef0cf809bbac3cf70369a28f7492eaff`  
		Last Modified: Tue, 11 Jun 2019 00:36:13 GMT  
		Size: 6.4 KB (6396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6609eb1b9dee47cda6b3912cfe7986192a07d81d536bcb7e7f917fe4c4df3d1`  
		Last Modified: Tue, 11 Jun 2019 00:36:13 GMT  
		Size: 75.0 KB (75034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84c03ba7ffeeba81721b5ca33941712c8cc28cfd4c2b9e92cddf88ac16732775`  
		Last Modified: Tue, 11 Jun 2019 00:36:13 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67e5660b292d18df32d6275267a4d3ae469fd5c066d46f2731d8a9b47a9ebe36`  
		Last Modified: Tue, 11 Jun 2019 00:36:13 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0-alpine` - linux; 386

```console
$ docker pull spiped@sha256:c1b7c7458a5f2b1b30731dcba7d472f135444efd937d7bb8ef2f60cabe5064c0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2848031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1244c9df40b18090753908c9c649cd655beaa9a6e2c634749c3990fe84f9c8db`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Sat, 11 May 2019 10:39:25 GMT
ADD file:6bcacb93c2814cb9c833dfb82a5ef000ef21e6864d9f0b20a7a68b6e16801700 in / 
# Sat, 11 May 2019 10:39:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 14:22:38 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Sat, 11 May 2019 14:22:39 GMT
RUN apk add --no-cache libssl1.1
# Sat, 11 May 2019 14:22:39 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 11 May 2019 14:22:40 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 11 May 2019 14:22:40 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 11 May 2019 14:22:50 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Sat, 11 May 2019 14:22:50 GMT
VOLUME [/spiped]
# Sat, 11 May 2019 14:22:50 GMT
WORKDIR /spiped
# Sat, 11 May 2019 14:22:50 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Sat, 11 May 2019 14:22:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 14:22:51 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:d0c434c0359e2da36b788ae4f5a3a70015d83ee20070aa412e714c7feecca465`  
		Last Modified: Sat, 11 May 2019 10:39:46 GMT  
		Size: 2.8 MB (2752091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7684f3c2fd7b752cfb242313b2eb3f0dce50a24068b43f98bed22eb85b12988f`  
		Last Modified: Sat, 11 May 2019 14:23:00 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ec838d4a9df3f0b1587ec77258b5662f5da621ead0d0af416452351878fd844`  
		Last Modified: Sat, 11 May 2019 14:23:00 GMT  
		Size: 6.4 KB (6397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8083ec304199501b0a423d55d6a71b4eebd6ebfe9e6c3c0e34e6c8eef1c81c1a`  
		Last Modified: Sat, 11 May 2019 14:23:00 GMT  
		Size: 87.9 KB (87853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f3ce4b9aeb2de4babbbbc52cde7019d72ba0a0bfa6dd6d80596178254c1e0cf`  
		Last Modified: Sat, 11 May 2019 14:23:00 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b88cc75c2f295350f651dee9bf30dc6bb282fe154b443da298ef583fb3e25f0`  
		Last Modified: Sat, 11 May 2019 14:23:00 GMT  
		Size: 339.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0-alpine` - linux; ppc64le

```console
$ docker pull spiped@sha256:437f19e36fb97de274a756940f1144ec18e23ce5f287ea00e700c727b1b227e8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2877759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d964058efc2f2c2d3336085dc5e2578db13e430b0ee061caaf17cb699b75d22e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Sat, 11 May 2019 08:29:33 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Sat, 11 May 2019 08:29:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:56:22 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Sat, 11 May 2019 08:56:32 GMT
RUN apk add --no-cache libssl1.1
# Sat, 11 May 2019 08:56:36 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 11 May 2019 08:56:43 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 11 May 2019 08:56:46 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 11 May 2019 08:57:24 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Sat, 11 May 2019 08:57:27 GMT
VOLUME [/spiped]
# Sat, 11 May 2019 08:57:30 GMT
WORKDIR /spiped
# Sat, 11 May 2019 08:57:32 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Sat, 11 May 2019 08:57:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 08:57:37 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1f31dbe3071f8c037131aef6960a783a6dc7e0554588e47e0d5c376ff913444`  
		Last Modified: Sat, 11 May 2019 08:57:57 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945acc6a2fe54a1afda9e5bb186f41e95d653c39bb70370ae882e3729ab412b0`  
		Last Modified: Sat, 11 May 2019 08:57:54 GMT  
		Size: 6.4 KB (6408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f535694efed2ba3741f95a78c49d10b59e772810fc31f9461952fbb84c930fc`  
		Last Modified: Sat, 11 May 2019 08:57:55 GMT  
		Size: 88.6 KB (88572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:871152c8e5bf4aef0d227dda1798a30e7a7554c64fc42a2710a5fd3cbe41271d`  
		Last Modified: Sat, 11 May 2019 08:57:54 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d53050b88a62e4ad2c394d326bff142a0ec6397765f3b35a329ce4f13ec356a`  
		Last Modified: Sat, 11 May 2019 08:57:54 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0-alpine` - linux; s390x

```console
$ docker pull spiped@sha256:90c3a30c59f45f71b866e9470b759fa05c56f44e1b73decbd2e5782cb48604c7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2624335 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a51e5a42bfe89fe1965a3196018d0efa5a00d25098e7333b70edbcd80a796d85`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Sat, 11 May 2019 11:41:43 GMT
ADD file:6b519ed40566a3088c7bf57b3f1624dadc83f9e56839d5cde42489b54a0a1e90 in / 
# Sat, 11 May 2019 11:41:43 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 13:53:47 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Sat, 11 May 2019 13:53:48 GMT
RUN apk add --no-cache libssl1.1
# Sat, 11 May 2019 13:53:48 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 11 May 2019 13:53:49 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 11 May 2019 13:53:49 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 11 May 2019 13:54:00 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Sat, 11 May 2019 13:54:03 GMT
VOLUME [/spiped]
# Sat, 11 May 2019 13:54:06 GMT
WORKDIR /spiped
# Sat, 11 May 2019 13:54:06 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Sat, 11 May 2019 13:54:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 13:54:07 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:bea4f04d8b33c5bd68ccb34849e615333c5ef00958b400841a03970dd2d5e9ae`  
		Last Modified: Sat, 11 May 2019 11:42:13 GMT  
		Size: 2.5 MB (2543331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a5cd2fe99ad8a7a2f91329eb1ec9d1f0083c150ddbf4a0829eb9e27d426474c`  
		Last Modified: Sat, 11 May 2019 13:54:20 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b1f1a88ded0520d413e5a20671b527e170ed3d25fb098a049df5c44ff2c368e`  
		Last Modified: Sat, 11 May 2019 13:54:20 GMT  
		Size: 6.4 KB (6393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a12ff642d3632ba364c7a8509f229293b4f79d1d46dcfd2a3fdcf7d6d6e965e6`  
		Last Modified: Sat, 11 May 2019 13:54:20 GMT  
		Size: 72.9 KB (72915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:025aa172fcad0844d7385f06fde499fc5685ddc23e5021fb35268c0a0c334276`  
		Last Modified: Sat, 11 May 2019 13:54:20 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9f1b417ce66a198eb47e19da92cca8b4c97f4e72ad5a4224e965f85858db4ea`  
		Last Modified: Sat, 11 May 2019 13:54:20 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1.6-alpine`

```console
$ docker pull spiped@sha256:910ef66fd73e9e6498418b5afccc3c82c5f7278b130f7fe8eb12963d7f7181e1
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
$ docker pull spiped@sha256:b957740f833538b3771fabd3eb00485be6b9e5a469fcde3787260a0da6c7c562
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2844719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0efa760df45b20a2bacc1a3e46272ae5bed32b2562fec4d5fa41125a8d08cfa6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 01:49:59 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Sat, 11 May 2019 01:50:00 GMT
RUN apk add --no-cache libssl1.1
# Sat, 11 May 2019 01:50:01 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 11 May 2019 01:50:01 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 11 May 2019 01:50:01 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 11 May 2019 01:50:19 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Sat, 11 May 2019 01:50:20 GMT
VOLUME [/spiped]
# Sat, 11 May 2019 01:50:20 GMT
WORKDIR /spiped
# Sat, 11 May 2019 01:50:20 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Sat, 11 May 2019 01:50:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 01:50:21 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef2770bd03c589f70b5a774dc481b29f74ffe220544ae1a0f007c81fb08983a3`  
		Last Modified: Sat, 11 May 2019 01:50:37 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a0a720b5a9f6fadd3e42a13a31e80022c989d5e7de29e0477e8a696bcf125d3`  
		Last Modified: Sat, 11 May 2019 01:50:37 GMT  
		Size: 6.4 KB (6381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54240dd8f68b0ced13b6c38396b90cd288e03192c2d2a2110fac5e0988a1ba05`  
		Last Modified: Sat, 11 May 2019 01:50:37 GMT  
		Size: 79.6 KB (79612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cb4b1212926844509e0f6ce474d3f00dfb508f29a95cd857d61b073610bded6`  
		Last Modified: Sat, 11 May 2019 01:50:37 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bca05dcee260130d4761cc8558512d6fb399d0c91003f7588eddb5feb26f71b1`  
		Last Modified: Sat, 11 May 2019 01:50:37 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6-alpine` - linux; arm variant v6

```console
$ docker pull spiped@sha256:0b66af7678bf3b02272e08b339a3faf99bc40fbb16c00b3ed73adf3283a254f5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2619993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:712abda549574642ba1bc6a7a9448d3f701fff55496702eef37583b58d0041ea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:31:58 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Sat, 11 May 2019 08:32:00 GMT
RUN apk add --no-cache libssl1.1
# Sat, 11 May 2019 08:32:00 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 11 May 2019 08:32:01 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 11 May 2019 08:32:01 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 11 May 2019 08:32:18 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Sat, 11 May 2019 08:32:18 GMT
VOLUME [/spiped]
# Sat, 11 May 2019 08:32:19 GMT
WORKDIR /spiped
# Sat, 11 May 2019 08:32:19 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Sat, 11 May 2019 08:32:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 08:32:20 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deed7fbf341c2d5c3fa302e330fc31dac83e8f8b71bacec835a240dab99cbcd8`  
		Last Modified: Sat, 11 May 2019 08:32:30 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b8568d7ef9a30261b1d43ccf5b307657a47b8582e98b06100abe927e4f5fb6`  
		Last Modified: Sat, 11 May 2019 08:32:30 GMT  
		Size: 6.4 KB (6393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3530af6ebb74ea33e953e476658af2867d671ffa178b78ab58337e650b83364c`  
		Last Modified: Sat, 11 May 2019 08:32:30 GMT  
		Size: 68.4 KB (68418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab7c62ed5e061e8c93923bd04b240634b15750b5fdcc836e13ef9efad62d7982`  
		Last Modified: Sat, 11 May 2019 08:32:30 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0349fa3568e6373decb638cfe0436c819288b8f390b9b5de2dd036468edf58f7`  
		Last Modified: Sat, 11 May 2019 08:32:30 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6-alpine` - linux; arm variant v7

```console
$ docker pull spiped@sha256:2c4950766053bf7a5fc79a63200c6a9ad0b4dd50b5db113feab260d39e3f0dd7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2420988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02d515320ce54e9b9a736e2f17ef7a6480b5c61a4ca2fd73eadc61d0d8b75e74`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Sat, 11 May 2019 11:57:33 GMT
ADD file:6a887e546cc71145f8be9285950befcf2a4095b97ba44c66550b31165f7a02b5 in / 
# Sat, 11 May 2019 11:57:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 12:47:14 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Sat, 11 May 2019 12:47:16 GMT
RUN apk add --no-cache libssl1.1
# Sat, 11 May 2019 12:47:17 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 11 May 2019 12:47:17 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 11 May 2019 12:47:18 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 11 May 2019 12:47:36 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Sat, 11 May 2019 12:47:36 GMT
VOLUME [/spiped]
# Sat, 11 May 2019 12:47:37 GMT
WORKDIR /spiped
# Sat, 11 May 2019 12:47:38 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Sat, 11 May 2019 12:47:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 12:47:39 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:856f4240f8dba160c5323506c1e9a4dbaaca840bf1b0c244af3b8d1b42b0f43b`  
		Last Modified: Sat, 11 May 2019 11:57:49 GMT  
		Size: 2.4 MB (2350666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52c4b7087d0a9e823bd3a715038357835e04ae1c4e535b1dca55994f60a7e511`  
		Last Modified: Sat, 11 May 2019 12:47:54 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42cba67efbd41be5582496c852dc87966cd1369d5c1f97af6793a121997b3a87`  
		Last Modified: Sat, 11 May 2019 12:47:54 GMT  
		Size: 6.4 KB (6380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2461fbc8826ec2dfe7bc3fa9649511bd886bace6d4c6052abda993732574f57`  
		Last Modified: Sat, 11 May 2019 12:47:55 GMT  
		Size: 62.2 KB (62187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15935a7f2ab9263ae495c5e2e8cda200e959b76f68526e3a88f000ae0ba6f6ed`  
		Last Modified: Sat, 11 May 2019 12:47:54 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aff52c9761fa04d19a6faf34ba9c9f7ca6126cda35a7848583ceab7ac3ccdff0`  
		Last Modified: Sat, 11 May 2019 12:47:54 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6-alpine` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:bc18f5a714a2897c3521f34d23d43eef673d085fe33957c864a11ce7e6db8328
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2771966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33ead3eec077da983a18160af8a09c271a2d6a9b9e7e5531dd9fbb2733571ee4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Tue, 11 Jun 2019 00:35:20 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Tue, 11 Jun 2019 00:35:22 GMT
RUN apk add --no-cache libssl1.1
# Tue, 11 Jun 2019 00:35:23 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 11 Jun 2019 00:35:23 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 11 Jun 2019 00:35:24 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 11 Jun 2019 00:35:43 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Tue, 11 Jun 2019 00:35:43 GMT
VOLUME [/spiped]
# Tue, 11 Jun 2019 00:35:44 GMT
WORKDIR /spiped
# Tue, 11 Jun 2019 00:35:45 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Tue, 11 Jun 2019 00:35:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Jun 2019 00:35:45 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c21169594569007710865a7b044a2c90fdf358c17db080225500fa528f25ac`  
		Last Modified: Tue, 11 Jun 2019 00:36:15 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48dfed1003106ac1da6ccbe2500564b0ef0cf809bbac3cf70369a28f7492eaff`  
		Last Modified: Tue, 11 Jun 2019 00:36:13 GMT  
		Size: 6.4 KB (6396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6609eb1b9dee47cda6b3912cfe7986192a07d81d536bcb7e7f917fe4c4df3d1`  
		Last Modified: Tue, 11 Jun 2019 00:36:13 GMT  
		Size: 75.0 KB (75034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84c03ba7ffeeba81721b5ca33941712c8cc28cfd4c2b9e92cddf88ac16732775`  
		Last Modified: Tue, 11 Jun 2019 00:36:13 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67e5660b292d18df32d6275267a4d3ae469fd5c066d46f2731d8a9b47a9ebe36`  
		Last Modified: Tue, 11 Jun 2019 00:36:13 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6-alpine` - linux; 386

```console
$ docker pull spiped@sha256:c1b7c7458a5f2b1b30731dcba7d472f135444efd937d7bb8ef2f60cabe5064c0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2848031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1244c9df40b18090753908c9c649cd655beaa9a6e2c634749c3990fe84f9c8db`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Sat, 11 May 2019 10:39:25 GMT
ADD file:6bcacb93c2814cb9c833dfb82a5ef000ef21e6864d9f0b20a7a68b6e16801700 in / 
# Sat, 11 May 2019 10:39:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 14:22:38 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Sat, 11 May 2019 14:22:39 GMT
RUN apk add --no-cache libssl1.1
# Sat, 11 May 2019 14:22:39 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 11 May 2019 14:22:40 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 11 May 2019 14:22:40 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 11 May 2019 14:22:50 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Sat, 11 May 2019 14:22:50 GMT
VOLUME [/spiped]
# Sat, 11 May 2019 14:22:50 GMT
WORKDIR /spiped
# Sat, 11 May 2019 14:22:50 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Sat, 11 May 2019 14:22:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 14:22:51 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:d0c434c0359e2da36b788ae4f5a3a70015d83ee20070aa412e714c7feecca465`  
		Last Modified: Sat, 11 May 2019 10:39:46 GMT  
		Size: 2.8 MB (2752091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7684f3c2fd7b752cfb242313b2eb3f0dce50a24068b43f98bed22eb85b12988f`  
		Last Modified: Sat, 11 May 2019 14:23:00 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ec838d4a9df3f0b1587ec77258b5662f5da621ead0d0af416452351878fd844`  
		Last Modified: Sat, 11 May 2019 14:23:00 GMT  
		Size: 6.4 KB (6397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8083ec304199501b0a423d55d6a71b4eebd6ebfe9e6c3c0e34e6c8eef1c81c1a`  
		Last Modified: Sat, 11 May 2019 14:23:00 GMT  
		Size: 87.9 KB (87853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f3ce4b9aeb2de4babbbbc52cde7019d72ba0a0bfa6dd6d80596178254c1e0cf`  
		Last Modified: Sat, 11 May 2019 14:23:00 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b88cc75c2f295350f651dee9bf30dc6bb282fe154b443da298ef583fb3e25f0`  
		Last Modified: Sat, 11 May 2019 14:23:00 GMT  
		Size: 339.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6-alpine` - linux; ppc64le

```console
$ docker pull spiped@sha256:437f19e36fb97de274a756940f1144ec18e23ce5f287ea00e700c727b1b227e8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2877759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d964058efc2f2c2d3336085dc5e2578db13e430b0ee061caaf17cb699b75d22e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Sat, 11 May 2019 08:29:33 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Sat, 11 May 2019 08:29:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:56:22 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Sat, 11 May 2019 08:56:32 GMT
RUN apk add --no-cache libssl1.1
# Sat, 11 May 2019 08:56:36 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 11 May 2019 08:56:43 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 11 May 2019 08:56:46 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 11 May 2019 08:57:24 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Sat, 11 May 2019 08:57:27 GMT
VOLUME [/spiped]
# Sat, 11 May 2019 08:57:30 GMT
WORKDIR /spiped
# Sat, 11 May 2019 08:57:32 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Sat, 11 May 2019 08:57:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 08:57:37 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1f31dbe3071f8c037131aef6960a783a6dc7e0554588e47e0d5c376ff913444`  
		Last Modified: Sat, 11 May 2019 08:57:57 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945acc6a2fe54a1afda9e5bb186f41e95d653c39bb70370ae882e3729ab412b0`  
		Last Modified: Sat, 11 May 2019 08:57:54 GMT  
		Size: 6.4 KB (6408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f535694efed2ba3741f95a78c49d10b59e772810fc31f9461952fbb84c930fc`  
		Last Modified: Sat, 11 May 2019 08:57:55 GMT  
		Size: 88.6 KB (88572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:871152c8e5bf4aef0d227dda1798a30e7a7554c64fc42a2710a5fd3cbe41271d`  
		Last Modified: Sat, 11 May 2019 08:57:54 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d53050b88a62e4ad2c394d326bff142a0ec6397765f3b35a329ce4f13ec356a`  
		Last Modified: Sat, 11 May 2019 08:57:54 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6-alpine` - linux; s390x

```console
$ docker pull spiped@sha256:90c3a30c59f45f71b866e9470b759fa05c56f44e1b73decbd2e5782cb48604c7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2624335 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a51e5a42bfe89fe1965a3196018d0efa5a00d25098e7333b70edbcd80a796d85`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Sat, 11 May 2019 11:41:43 GMT
ADD file:6b519ed40566a3088c7bf57b3f1624dadc83f9e56839d5cde42489b54a0a1e90 in / 
# Sat, 11 May 2019 11:41:43 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 13:53:47 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Sat, 11 May 2019 13:53:48 GMT
RUN apk add --no-cache libssl1.1
# Sat, 11 May 2019 13:53:48 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 11 May 2019 13:53:49 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 11 May 2019 13:53:49 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 11 May 2019 13:54:00 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Sat, 11 May 2019 13:54:03 GMT
VOLUME [/spiped]
# Sat, 11 May 2019 13:54:06 GMT
WORKDIR /spiped
# Sat, 11 May 2019 13:54:06 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Sat, 11 May 2019 13:54:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 13:54:07 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:bea4f04d8b33c5bd68ccb34849e615333c5ef00958b400841a03970dd2d5e9ae`  
		Last Modified: Sat, 11 May 2019 11:42:13 GMT  
		Size: 2.5 MB (2543331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a5cd2fe99ad8a7a2f91329eb1ec9d1f0083c150ddbf4a0829eb9e27d426474c`  
		Last Modified: Sat, 11 May 2019 13:54:20 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b1f1a88ded0520d413e5a20671b527e170ed3d25fb098a049df5c44ff2c368e`  
		Last Modified: Sat, 11 May 2019 13:54:20 GMT  
		Size: 6.4 KB (6393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a12ff642d3632ba364c7a8509f229293b4f79d1d46dcfd2a3fdcf7d6d6e965e6`  
		Last Modified: Sat, 11 May 2019 13:54:20 GMT  
		Size: 72.9 KB (72915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:025aa172fcad0844d7385f06fde499fc5685ddc23e5021fb35268c0a0c334276`  
		Last Modified: Sat, 11 May 2019 13:54:20 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9f1b417ce66a198eb47e19da92cca8b4c97f4e72ad5a4224e965f85858db4ea`  
		Last Modified: Sat, 11 May 2019 13:54:20 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1-alpine`

```console
$ docker pull spiped@sha256:910ef66fd73e9e6498418b5afccc3c82c5f7278b130f7fe8eb12963d7f7181e1
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
$ docker pull spiped@sha256:b957740f833538b3771fabd3eb00485be6b9e5a469fcde3787260a0da6c7c562
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2844719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0efa760df45b20a2bacc1a3e46272ae5bed32b2562fec4d5fa41125a8d08cfa6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 01:49:59 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Sat, 11 May 2019 01:50:00 GMT
RUN apk add --no-cache libssl1.1
# Sat, 11 May 2019 01:50:01 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 11 May 2019 01:50:01 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 11 May 2019 01:50:01 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 11 May 2019 01:50:19 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Sat, 11 May 2019 01:50:20 GMT
VOLUME [/spiped]
# Sat, 11 May 2019 01:50:20 GMT
WORKDIR /spiped
# Sat, 11 May 2019 01:50:20 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Sat, 11 May 2019 01:50:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 01:50:21 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef2770bd03c589f70b5a774dc481b29f74ffe220544ae1a0f007c81fb08983a3`  
		Last Modified: Sat, 11 May 2019 01:50:37 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a0a720b5a9f6fadd3e42a13a31e80022c989d5e7de29e0477e8a696bcf125d3`  
		Last Modified: Sat, 11 May 2019 01:50:37 GMT  
		Size: 6.4 KB (6381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54240dd8f68b0ced13b6c38396b90cd288e03192c2d2a2110fac5e0988a1ba05`  
		Last Modified: Sat, 11 May 2019 01:50:37 GMT  
		Size: 79.6 KB (79612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cb4b1212926844509e0f6ce474d3f00dfb508f29a95cd857d61b073610bded6`  
		Last Modified: Sat, 11 May 2019 01:50:37 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bca05dcee260130d4761cc8558512d6fb399d0c91003f7588eddb5feb26f71b1`  
		Last Modified: Sat, 11 May 2019 01:50:37 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1-alpine` - linux; arm variant v6

```console
$ docker pull spiped@sha256:0b66af7678bf3b02272e08b339a3faf99bc40fbb16c00b3ed73adf3283a254f5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2619993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:712abda549574642ba1bc6a7a9448d3f701fff55496702eef37583b58d0041ea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:31:58 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Sat, 11 May 2019 08:32:00 GMT
RUN apk add --no-cache libssl1.1
# Sat, 11 May 2019 08:32:00 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 11 May 2019 08:32:01 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 11 May 2019 08:32:01 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 11 May 2019 08:32:18 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Sat, 11 May 2019 08:32:18 GMT
VOLUME [/spiped]
# Sat, 11 May 2019 08:32:19 GMT
WORKDIR /spiped
# Sat, 11 May 2019 08:32:19 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Sat, 11 May 2019 08:32:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 08:32:20 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deed7fbf341c2d5c3fa302e330fc31dac83e8f8b71bacec835a240dab99cbcd8`  
		Last Modified: Sat, 11 May 2019 08:32:30 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b8568d7ef9a30261b1d43ccf5b307657a47b8582e98b06100abe927e4f5fb6`  
		Last Modified: Sat, 11 May 2019 08:32:30 GMT  
		Size: 6.4 KB (6393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3530af6ebb74ea33e953e476658af2867d671ffa178b78ab58337e650b83364c`  
		Last Modified: Sat, 11 May 2019 08:32:30 GMT  
		Size: 68.4 KB (68418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab7c62ed5e061e8c93923bd04b240634b15750b5fdcc836e13ef9efad62d7982`  
		Last Modified: Sat, 11 May 2019 08:32:30 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0349fa3568e6373decb638cfe0436c819288b8f390b9b5de2dd036468edf58f7`  
		Last Modified: Sat, 11 May 2019 08:32:30 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1-alpine` - linux; arm variant v7

```console
$ docker pull spiped@sha256:2c4950766053bf7a5fc79a63200c6a9ad0b4dd50b5db113feab260d39e3f0dd7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2420988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02d515320ce54e9b9a736e2f17ef7a6480b5c61a4ca2fd73eadc61d0d8b75e74`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Sat, 11 May 2019 11:57:33 GMT
ADD file:6a887e546cc71145f8be9285950befcf2a4095b97ba44c66550b31165f7a02b5 in / 
# Sat, 11 May 2019 11:57:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 12:47:14 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Sat, 11 May 2019 12:47:16 GMT
RUN apk add --no-cache libssl1.1
# Sat, 11 May 2019 12:47:17 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 11 May 2019 12:47:17 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 11 May 2019 12:47:18 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 11 May 2019 12:47:36 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Sat, 11 May 2019 12:47:36 GMT
VOLUME [/spiped]
# Sat, 11 May 2019 12:47:37 GMT
WORKDIR /spiped
# Sat, 11 May 2019 12:47:38 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Sat, 11 May 2019 12:47:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 12:47:39 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:856f4240f8dba160c5323506c1e9a4dbaaca840bf1b0c244af3b8d1b42b0f43b`  
		Last Modified: Sat, 11 May 2019 11:57:49 GMT  
		Size: 2.4 MB (2350666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52c4b7087d0a9e823bd3a715038357835e04ae1c4e535b1dca55994f60a7e511`  
		Last Modified: Sat, 11 May 2019 12:47:54 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42cba67efbd41be5582496c852dc87966cd1369d5c1f97af6793a121997b3a87`  
		Last Modified: Sat, 11 May 2019 12:47:54 GMT  
		Size: 6.4 KB (6380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2461fbc8826ec2dfe7bc3fa9649511bd886bace6d4c6052abda993732574f57`  
		Last Modified: Sat, 11 May 2019 12:47:55 GMT  
		Size: 62.2 KB (62187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15935a7f2ab9263ae495c5e2e8cda200e959b76f68526e3a88f000ae0ba6f6ed`  
		Last Modified: Sat, 11 May 2019 12:47:54 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aff52c9761fa04d19a6faf34ba9c9f7ca6126cda35a7848583ceab7ac3ccdff0`  
		Last Modified: Sat, 11 May 2019 12:47:54 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1-alpine` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:bc18f5a714a2897c3521f34d23d43eef673d085fe33957c864a11ce7e6db8328
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2771966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33ead3eec077da983a18160af8a09c271a2d6a9b9e7e5531dd9fbb2733571ee4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Tue, 11 Jun 2019 00:35:20 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Tue, 11 Jun 2019 00:35:22 GMT
RUN apk add --no-cache libssl1.1
# Tue, 11 Jun 2019 00:35:23 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 11 Jun 2019 00:35:23 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 11 Jun 2019 00:35:24 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 11 Jun 2019 00:35:43 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Tue, 11 Jun 2019 00:35:43 GMT
VOLUME [/spiped]
# Tue, 11 Jun 2019 00:35:44 GMT
WORKDIR /spiped
# Tue, 11 Jun 2019 00:35:45 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Tue, 11 Jun 2019 00:35:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Jun 2019 00:35:45 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c21169594569007710865a7b044a2c90fdf358c17db080225500fa528f25ac`  
		Last Modified: Tue, 11 Jun 2019 00:36:15 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48dfed1003106ac1da6ccbe2500564b0ef0cf809bbac3cf70369a28f7492eaff`  
		Last Modified: Tue, 11 Jun 2019 00:36:13 GMT  
		Size: 6.4 KB (6396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6609eb1b9dee47cda6b3912cfe7986192a07d81d536bcb7e7f917fe4c4df3d1`  
		Last Modified: Tue, 11 Jun 2019 00:36:13 GMT  
		Size: 75.0 KB (75034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84c03ba7ffeeba81721b5ca33941712c8cc28cfd4c2b9e92cddf88ac16732775`  
		Last Modified: Tue, 11 Jun 2019 00:36:13 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67e5660b292d18df32d6275267a4d3ae469fd5c066d46f2731d8a9b47a9ebe36`  
		Last Modified: Tue, 11 Jun 2019 00:36:13 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1-alpine` - linux; 386

```console
$ docker pull spiped@sha256:c1b7c7458a5f2b1b30731dcba7d472f135444efd937d7bb8ef2f60cabe5064c0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2848031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1244c9df40b18090753908c9c649cd655beaa9a6e2c634749c3990fe84f9c8db`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Sat, 11 May 2019 10:39:25 GMT
ADD file:6bcacb93c2814cb9c833dfb82a5ef000ef21e6864d9f0b20a7a68b6e16801700 in / 
# Sat, 11 May 2019 10:39:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 14:22:38 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Sat, 11 May 2019 14:22:39 GMT
RUN apk add --no-cache libssl1.1
# Sat, 11 May 2019 14:22:39 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 11 May 2019 14:22:40 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 11 May 2019 14:22:40 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 11 May 2019 14:22:50 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Sat, 11 May 2019 14:22:50 GMT
VOLUME [/spiped]
# Sat, 11 May 2019 14:22:50 GMT
WORKDIR /spiped
# Sat, 11 May 2019 14:22:50 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Sat, 11 May 2019 14:22:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 14:22:51 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:d0c434c0359e2da36b788ae4f5a3a70015d83ee20070aa412e714c7feecca465`  
		Last Modified: Sat, 11 May 2019 10:39:46 GMT  
		Size: 2.8 MB (2752091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7684f3c2fd7b752cfb242313b2eb3f0dce50a24068b43f98bed22eb85b12988f`  
		Last Modified: Sat, 11 May 2019 14:23:00 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ec838d4a9df3f0b1587ec77258b5662f5da621ead0d0af416452351878fd844`  
		Last Modified: Sat, 11 May 2019 14:23:00 GMT  
		Size: 6.4 KB (6397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8083ec304199501b0a423d55d6a71b4eebd6ebfe9e6c3c0e34e6c8eef1c81c1a`  
		Last Modified: Sat, 11 May 2019 14:23:00 GMT  
		Size: 87.9 KB (87853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f3ce4b9aeb2de4babbbbc52cde7019d72ba0a0bfa6dd6d80596178254c1e0cf`  
		Last Modified: Sat, 11 May 2019 14:23:00 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b88cc75c2f295350f651dee9bf30dc6bb282fe154b443da298ef583fb3e25f0`  
		Last Modified: Sat, 11 May 2019 14:23:00 GMT  
		Size: 339.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1-alpine` - linux; ppc64le

```console
$ docker pull spiped@sha256:437f19e36fb97de274a756940f1144ec18e23ce5f287ea00e700c727b1b227e8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2877759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d964058efc2f2c2d3336085dc5e2578db13e430b0ee061caaf17cb699b75d22e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Sat, 11 May 2019 08:29:33 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Sat, 11 May 2019 08:29:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:56:22 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Sat, 11 May 2019 08:56:32 GMT
RUN apk add --no-cache libssl1.1
# Sat, 11 May 2019 08:56:36 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 11 May 2019 08:56:43 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 11 May 2019 08:56:46 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 11 May 2019 08:57:24 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Sat, 11 May 2019 08:57:27 GMT
VOLUME [/spiped]
# Sat, 11 May 2019 08:57:30 GMT
WORKDIR /spiped
# Sat, 11 May 2019 08:57:32 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Sat, 11 May 2019 08:57:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 08:57:37 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1f31dbe3071f8c037131aef6960a783a6dc7e0554588e47e0d5c376ff913444`  
		Last Modified: Sat, 11 May 2019 08:57:57 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945acc6a2fe54a1afda9e5bb186f41e95d653c39bb70370ae882e3729ab412b0`  
		Last Modified: Sat, 11 May 2019 08:57:54 GMT  
		Size: 6.4 KB (6408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f535694efed2ba3741f95a78c49d10b59e772810fc31f9461952fbb84c930fc`  
		Last Modified: Sat, 11 May 2019 08:57:55 GMT  
		Size: 88.6 KB (88572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:871152c8e5bf4aef0d227dda1798a30e7a7554c64fc42a2710a5fd3cbe41271d`  
		Last Modified: Sat, 11 May 2019 08:57:54 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d53050b88a62e4ad2c394d326bff142a0ec6397765f3b35a329ce4f13ec356a`  
		Last Modified: Sat, 11 May 2019 08:57:54 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1-alpine` - linux; s390x

```console
$ docker pull spiped@sha256:90c3a30c59f45f71b866e9470b759fa05c56f44e1b73decbd2e5782cb48604c7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2624335 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a51e5a42bfe89fe1965a3196018d0efa5a00d25098e7333b70edbcd80a796d85`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Sat, 11 May 2019 11:41:43 GMT
ADD file:6b519ed40566a3088c7bf57b3f1624dadc83f9e56839d5cde42489b54a0a1e90 in / 
# Sat, 11 May 2019 11:41:43 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 13:53:47 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Sat, 11 May 2019 13:53:48 GMT
RUN apk add --no-cache libssl1.1
# Sat, 11 May 2019 13:53:48 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 11 May 2019 13:53:49 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 11 May 2019 13:53:49 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 11 May 2019 13:54:00 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Sat, 11 May 2019 13:54:03 GMT
VOLUME [/spiped]
# Sat, 11 May 2019 13:54:06 GMT
WORKDIR /spiped
# Sat, 11 May 2019 13:54:06 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Sat, 11 May 2019 13:54:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 13:54:07 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:bea4f04d8b33c5bd68ccb34849e615333c5ef00958b400841a03970dd2d5e9ae`  
		Last Modified: Sat, 11 May 2019 11:42:13 GMT  
		Size: 2.5 MB (2543331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a5cd2fe99ad8a7a2f91329eb1ec9d1f0083c150ddbf4a0829eb9e27d426474c`  
		Last Modified: Sat, 11 May 2019 13:54:20 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b1f1a88ded0520d413e5a20671b527e170ed3d25fb098a049df5c44ff2c368e`  
		Last Modified: Sat, 11 May 2019 13:54:20 GMT  
		Size: 6.4 KB (6393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a12ff642d3632ba364c7a8509f229293b4f79d1d46dcfd2a3fdcf7d6d6e965e6`  
		Last Modified: Sat, 11 May 2019 13:54:20 GMT  
		Size: 72.9 KB (72915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:025aa172fcad0844d7385f06fde499fc5685ddc23e5021fb35268c0a0c334276`  
		Last Modified: Sat, 11 May 2019 13:54:20 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9f1b417ce66a198eb47e19da92cca8b4c97f4e72ad5a4224e965f85858db4ea`  
		Last Modified: Sat, 11 May 2019 13:54:20 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:alpine`

```console
$ docker pull spiped@sha256:910ef66fd73e9e6498418b5afccc3c82c5f7278b130f7fe8eb12963d7f7181e1
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
$ docker pull spiped@sha256:b957740f833538b3771fabd3eb00485be6b9e5a469fcde3787260a0da6c7c562
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2844719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0efa760df45b20a2bacc1a3e46272ae5bed32b2562fec4d5fa41125a8d08cfa6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 01:49:59 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Sat, 11 May 2019 01:50:00 GMT
RUN apk add --no-cache libssl1.1
# Sat, 11 May 2019 01:50:01 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 11 May 2019 01:50:01 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 11 May 2019 01:50:01 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 11 May 2019 01:50:19 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Sat, 11 May 2019 01:50:20 GMT
VOLUME [/spiped]
# Sat, 11 May 2019 01:50:20 GMT
WORKDIR /spiped
# Sat, 11 May 2019 01:50:20 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Sat, 11 May 2019 01:50:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 01:50:21 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef2770bd03c589f70b5a774dc481b29f74ffe220544ae1a0f007c81fb08983a3`  
		Last Modified: Sat, 11 May 2019 01:50:37 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a0a720b5a9f6fadd3e42a13a31e80022c989d5e7de29e0477e8a696bcf125d3`  
		Last Modified: Sat, 11 May 2019 01:50:37 GMT  
		Size: 6.4 KB (6381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54240dd8f68b0ced13b6c38396b90cd288e03192c2d2a2110fac5e0988a1ba05`  
		Last Modified: Sat, 11 May 2019 01:50:37 GMT  
		Size: 79.6 KB (79612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cb4b1212926844509e0f6ce474d3f00dfb508f29a95cd857d61b073610bded6`  
		Last Modified: Sat, 11 May 2019 01:50:37 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bca05dcee260130d4761cc8558512d6fb399d0c91003f7588eddb5feb26f71b1`  
		Last Modified: Sat, 11 May 2019 01:50:37 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:alpine` - linux; arm variant v6

```console
$ docker pull spiped@sha256:0b66af7678bf3b02272e08b339a3faf99bc40fbb16c00b3ed73adf3283a254f5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2619993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:712abda549574642ba1bc6a7a9448d3f701fff55496702eef37583b58d0041ea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:31:58 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Sat, 11 May 2019 08:32:00 GMT
RUN apk add --no-cache libssl1.1
# Sat, 11 May 2019 08:32:00 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 11 May 2019 08:32:01 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 11 May 2019 08:32:01 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 11 May 2019 08:32:18 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Sat, 11 May 2019 08:32:18 GMT
VOLUME [/spiped]
# Sat, 11 May 2019 08:32:19 GMT
WORKDIR /spiped
# Sat, 11 May 2019 08:32:19 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Sat, 11 May 2019 08:32:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 08:32:20 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deed7fbf341c2d5c3fa302e330fc31dac83e8f8b71bacec835a240dab99cbcd8`  
		Last Modified: Sat, 11 May 2019 08:32:30 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b8568d7ef9a30261b1d43ccf5b307657a47b8582e98b06100abe927e4f5fb6`  
		Last Modified: Sat, 11 May 2019 08:32:30 GMT  
		Size: 6.4 KB (6393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3530af6ebb74ea33e953e476658af2867d671ffa178b78ab58337e650b83364c`  
		Last Modified: Sat, 11 May 2019 08:32:30 GMT  
		Size: 68.4 KB (68418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab7c62ed5e061e8c93923bd04b240634b15750b5fdcc836e13ef9efad62d7982`  
		Last Modified: Sat, 11 May 2019 08:32:30 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0349fa3568e6373decb638cfe0436c819288b8f390b9b5de2dd036468edf58f7`  
		Last Modified: Sat, 11 May 2019 08:32:30 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:alpine` - linux; arm variant v7

```console
$ docker pull spiped@sha256:2c4950766053bf7a5fc79a63200c6a9ad0b4dd50b5db113feab260d39e3f0dd7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2420988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02d515320ce54e9b9a736e2f17ef7a6480b5c61a4ca2fd73eadc61d0d8b75e74`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Sat, 11 May 2019 11:57:33 GMT
ADD file:6a887e546cc71145f8be9285950befcf2a4095b97ba44c66550b31165f7a02b5 in / 
# Sat, 11 May 2019 11:57:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 12:47:14 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Sat, 11 May 2019 12:47:16 GMT
RUN apk add --no-cache libssl1.1
# Sat, 11 May 2019 12:47:17 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 11 May 2019 12:47:17 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 11 May 2019 12:47:18 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 11 May 2019 12:47:36 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Sat, 11 May 2019 12:47:36 GMT
VOLUME [/spiped]
# Sat, 11 May 2019 12:47:37 GMT
WORKDIR /spiped
# Sat, 11 May 2019 12:47:38 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Sat, 11 May 2019 12:47:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 12:47:39 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:856f4240f8dba160c5323506c1e9a4dbaaca840bf1b0c244af3b8d1b42b0f43b`  
		Last Modified: Sat, 11 May 2019 11:57:49 GMT  
		Size: 2.4 MB (2350666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52c4b7087d0a9e823bd3a715038357835e04ae1c4e535b1dca55994f60a7e511`  
		Last Modified: Sat, 11 May 2019 12:47:54 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42cba67efbd41be5582496c852dc87966cd1369d5c1f97af6793a121997b3a87`  
		Last Modified: Sat, 11 May 2019 12:47:54 GMT  
		Size: 6.4 KB (6380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2461fbc8826ec2dfe7bc3fa9649511bd886bace6d4c6052abda993732574f57`  
		Last Modified: Sat, 11 May 2019 12:47:55 GMT  
		Size: 62.2 KB (62187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15935a7f2ab9263ae495c5e2e8cda200e959b76f68526e3a88f000ae0ba6f6ed`  
		Last Modified: Sat, 11 May 2019 12:47:54 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aff52c9761fa04d19a6faf34ba9c9f7ca6126cda35a7848583ceab7ac3ccdff0`  
		Last Modified: Sat, 11 May 2019 12:47:54 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:alpine` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:bc18f5a714a2897c3521f34d23d43eef673d085fe33957c864a11ce7e6db8328
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2771966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33ead3eec077da983a18160af8a09c271a2d6a9b9e7e5531dd9fbb2733571ee4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Tue, 11 Jun 2019 00:35:20 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Tue, 11 Jun 2019 00:35:22 GMT
RUN apk add --no-cache libssl1.1
# Tue, 11 Jun 2019 00:35:23 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 11 Jun 2019 00:35:23 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 11 Jun 2019 00:35:24 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 11 Jun 2019 00:35:43 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Tue, 11 Jun 2019 00:35:43 GMT
VOLUME [/spiped]
# Tue, 11 Jun 2019 00:35:44 GMT
WORKDIR /spiped
# Tue, 11 Jun 2019 00:35:45 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Tue, 11 Jun 2019 00:35:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Jun 2019 00:35:45 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c21169594569007710865a7b044a2c90fdf358c17db080225500fa528f25ac`  
		Last Modified: Tue, 11 Jun 2019 00:36:15 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48dfed1003106ac1da6ccbe2500564b0ef0cf809bbac3cf70369a28f7492eaff`  
		Last Modified: Tue, 11 Jun 2019 00:36:13 GMT  
		Size: 6.4 KB (6396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6609eb1b9dee47cda6b3912cfe7986192a07d81d536bcb7e7f917fe4c4df3d1`  
		Last Modified: Tue, 11 Jun 2019 00:36:13 GMT  
		Size: 75.0 KB (75034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84c03ba7ffeeba81721b5ca33941712c8cc28cfd4c2b9e92cddf88ac16732775`  
		Last Modified: Tue, 11 Jun 2019 00:36:13 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67e5660b292d18df32d6275267a4d3ae469fd5c066d46f2731d8a9b47a9ebe36`  
		Last Modified: Tue, 11 Jun 2019 00:36:13 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:alpine` - linux; 386

```console
$ docker pull spiped@sha256:c1b7c7458a5f2b1b30731dcba7d472f135444efd937d7bb8ef2f60cabe5064c0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2848031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1244c9df40b18090753908c9c649cd655beaa9a6e2c634749c3990fe84f9c8db`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Sat, 11 May 2019 10:39:25 GMT
ADD file:6bcacb93c2814cb9c833dfb82a5ef000ef21e6864d9f0b20a7a68b6e16801700 in / 
# Sat, 11 May 2019 10:39:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 14:22:38 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Sat, 11 May 2019 14:22:39 GMT
RUN apk add --no-cache libssl1.1
# Sat, 11 May 2019 14:22:39 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 11 May 2019 14:22:40 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 11 May 2019 14:22:40 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 11 May 2019 14:22:50 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Sat, 11 May 2019 14:22:50 GMT
VOLUME [/spiped]
# Sat, 11 May 2019 14:22:50 GMT
WORKDIR /spiped
# Sat, 11 May 2019 14:22:50 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Sat, 11 May 2019 14:22:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 14:22:51 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:d0c434c0359e2da36b788ae4f5a3a70015d83ee20070aa412e714c7feecca465`  
		Last Modified: Sat, 11 May 2019 10:39:46 GMT  
		Size: 2.8 MB (2752091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7684f3c2fd7b752cfb242313b2eb3f0dce50a24068b43f98bed22eb85b12988f`  
		Last Modified: Sat, 11 May 2019 14:23:00 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ec838d4a9df3f0b1587ec77258b5662f5da621ead0d0af416452351878fd844`  
		Last Modified: Sat, 11 May 2019 14:23:00 GMT  
		Size: 6.4 KB (6397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8083ec304199501b0a423d55d6a71b4eebd6ebfe9e6c3c0e34e6c8eef1c81c1a`  
		Last Modified: Sat, 11 May 2019 14:23:00 GMT  
		Size: 87.9 KB (87853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f3ce4b9aeb2de4babbbbc52cde7019d72ba0a0bfa6dd6d80596178254c1e0cf`  
		Last Modified: Sat, 11 May 2019 14:23:00 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b88cc75c2f295350f651dee9bf30dc6bb282fe154b443da298ef583fb3e25f0`  
		Last Modified: Sat, 11 May 2019 14:23:00 GMT  
		Size: 339.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:alpine` - linux; ppc64le

```console
$ docker pull spiped@sha256:437f19e36fb97de274a756940f1144ec18e23ce5f287ea00e700c727b1b227e8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2877759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d964058efc2f2c2d3336085dc5e2578db13e430b0ee061caaf17cb699b75d22e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Sat, 11 May 2019 08:29:33 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Sat, 11 May 2019 08:29:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:56:22 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Sat, 11 May 2019 08:56:32 GMT
RUN apk add --no-cache libssl1.1
# Sat, 11 May 2019 08:56:36 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 11 May 2019 08:56:43 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 11 May 2019 08:56:46 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 11 May 2019 08:57:24 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Sat, 11 May 2019 08:57:27 GMT
VOLUME [/spiped]
# Sat, 11 May 2019 08:57:30 GMT
WORKDIR /spiped
# Sat, 11 May 2019 08:57:32 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Sat, 11 May 2019 08:57:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 08:57:37 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1f31dbe3071f8c037131aef6960a783a6dc7e0554588e47e0d5c376ff913444`  
		Last Modified: Sat, 11 May 2019 08:57:57 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945acc6a2fe54a1afda9e5bb186f41e95d653c39bb70370ae882e3729ab412b0`  
		Last Modified: Sat, 11 May 2019 08:57:54 GMT  
		Size: 6.4 KB (6408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f535694efed2ba3741f95a78c49d10b59e772810fc31f9461952fbb84c930fc`  
		Last Modified: Sat, 11 May 2019 08:57:55 GMT  
		Size: 88.6 KB (88572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:871152c8e5bf4aef0d227dda1798a30e7a7554c64fc42a2710a5fd3cbe41271d`  
		Last Modified: Sat, 11 May 2019 08:57:54 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d53050b88a62e4ad2c394d326bff142a0ec6397765f3b35a329ce4f13ec356a`  
		Last Modified: Sat, 11 May 2019 08:57:54 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:alpine` - linux; s390x

```console
$ docker pull spiped@sha256:90c3a30c59f45f71b866e9470b759fa05c56f44e1b73decbd2e5782cb48604c7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2624335 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a51e5a42bfe89fe1965a3196018d0efa5a00d25098e7333b70edbcd80a796d85`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Sat, 11 May 2019 11:41:43 GMT
ADD file:6b519ed40566a3088c7bf57b3f1624dadc83f9e56839d5cde42489b54a0a1e90 in / 
# Sat, 11 May 2019 11:41:43 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 13:53:47 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Sat, 11 May 2019 13:53:48 GMT
RUN apk add --no-cache libssl1.1
# Sat, 11 May 2019 13:53:48 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 11 May 2019 13:53:49 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 11 May 2019 13:53:49 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 11 May 2019 13:54:00 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Sat, 11 May 2019 13:54:03 GMT
VOLUME [/spiped]
# Sat, 11 May 2019 13:54:06 GMT
WORKDIR /spiped
# Sat, 11 May 2019 13:54:06 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Sat, 11 May 2019 13:54:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 13:54:07 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:bea4f04d8b33c5bd68ccb34849e615333c5ef00958b400841a03970dd2d5e9ae`  
		Last Modified: Sat, 11 May 2019 11:42:13 GMT  
		Size: 2.5 MB (2543331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a5cd2fe99ad8a7a2f91329eb1ec9d1f0083c150ddbf4a0829eb9e27d426474c`  
		Last Modified: Sat, 11 May 2019 13:54:20 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b1f1a88ded0520d413e5a20671b527e170ed3d25fb098a049df5c44ff2c368e`  
		Last Modified: Sat, 11 May 2019 13:54:20 GMT  
		Size: 6.4 KB (6393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a12ff642d3632ba364c7a8509f229293b4f79d1d46dcfd2a3fdcf7d6d6e965e6`  
		Last Modified: Sat, 11 May 2019 13:54:20 GMT  
		Size: 72.9 KB (72915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:025aa172fcad0844d7385f06fde499fc5685ddc23e5021fb35268c0a0c334276`  
		Last Modified: Sat, 11 May 2019 13:54:20 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9f1b417ce66a198eb47e19da92cca8b4c97f4e72ad5a4224e965f85858db4ea`  
		Last Modified: Sat, 11 May 2019 13:54:20 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:latest`

```console
$ docker pull spiped@sha256:d2117adca52b4098dce7f3060637fbbef4e8cbdff61f1e8d4cc1c845f5c51d87
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
$ docker pull spiped@sha256:cf1c0c1f28dedba70a08fc9ed7af58fc3dcbef52c60ebc3bd61340aefd0099e5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.7 MB (27743857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7295d4a66e9ca0bc26afb2788048f9949961bf18db5695a7a617725d00023025`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 08 May 2019 08:53:38 GMT
ADD file:d9cc007a953434e1439cc534f397967f4f0f1bf149f1288a52f6209eca436852 in / 
# Wed, 08 May 2019 08:53:39 GMT
CMD ["bash"]
# Wed, 08 May 2019 11:55:57 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 08 May 2019 11:56:06 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 11:56:06 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 08 May 2019 11:56:07 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 08 May 2019 11:56:07 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 08 May 2019 11:56:50 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 11:56:50 GMT
VOLUME [/spiped]
# Wed, 08 May 2019 11:56:51 GMT
WORKDIR /spiped
# Wed, 08 May 2019 11:56:51 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 08 May 2019 11:56:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 11:56:52 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:f23f9ce99dc288927adafc8d503252a16b6ea2b40c9cb0dca688223c56bd0235`  
		Last Modified: Wed, 08 May 2019 08:59:29 GMT  
		Size: 21.2 MB (21155863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c74e69e24dcc64f4723a072102c09004473fa54d8b448ccae88750ca88c1ce2`  
		Last Modified: Wed, 08 May 2019 11:57:07 GMT  
		Size: 1.7 KB (1735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f548face7d3726de86621e9e1b8b8384cbf1ae7d1ce5f05f812903963d91161`  
		Last Modified: Wed, 08 May 2019 11:57:06 GMT  
		Size: 1.6 MB (1632455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57eba3217688b73abeef0d443ba3fc1c1e0466b5a9e76ff0928080999d10f780`  
		Last Modified: Wed, 08 May 2019 11:57:08 GMT  
		Size: 5.0 MB (4953326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c36a90d7d54dddcfcd3cee597b4a56d6f03317e1bd294d701ce8326d70e8f90d`  
		Last Modified: Wed, 08 May 2019 11:57:05 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1fa514ee5a0d6b04f943b372b74a0a5fbe4ff09e1abecc3fdd575b7da9c9f22`  
		Last Modified: Wed, 08 May 2019 11:57:06 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; arm variant v7

```console
$ docker pull spiped@sha256:af359eb703102a38d29ffeb696b2e55eb1bbef8169ad33c3a28259c719a444b7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.6 MB (25560929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c53594a61e9035983b6719b0cd4553e64856ef0760c6f0e1e66c6dd19a225a6b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 08 May 2019 12:03:54 GMT
ADD file:7813549b5e7862c4d5ecec9e7d8da27b520dd2cc1433e66637c57bb695d4f55a in / 
# Wed, 08 May 2019 12:03:54 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:58:15 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 08 May 2019 14:58:23 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 14:58:23 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 08 May 2019 14:58:24 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 08 May 2019 14:58:24 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 08 May 2019 14:59:05 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 14:59:06 GMT
VOLUME [/spiped]
# Wed, 08 May 2019 14:59:07 GMT
WORKDIR /spiped
# Wed, 08 May 2019 14:59:08 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 08 May 2019 14:59:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 14:59:08 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:b0727b1ec48ef8920082aec023c050c83b563ae08080d9951d68fba55934bbd6`  
		Last Modified: Wed, 08 May 2019 12:10:01 GMT  
		Size: 19.3 MB (19276216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e68c791dd2d6430f2ea155c4bda3db4448275d5a79febf0d0b84d5ee514c34f`  
		Last Modified: Wed, 08 May 2019 14:59:28 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0c5b280bc322ff52d7d8d5d2e56b1fabfc16b2ec0f0126a3828af147fde6739`  
		Last Modified: Wed, 08 May 2019 14:59:29 GMT  
		Size: 1.6 MB (1573642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deec3cfe6e3dca615c31f995d64b56852d57a2ece3be6ded4f81c5e3f73f124a`  
		Last Modified: Wed, 08 May 2019 14:59:30 GMT  
		Size: 4.7 MB (4708860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83f7669d826ba2825b23dcec39106cc895dd7d14b80b7942db31827eb6c7fcf9`  
		Last Modified: Wed, 08 May 2019 14:59:28 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd45a276ddbe8dd378bb192cf7d58ebb02ad549e9abfeac67a7baaadca0ae351`  
		Last Modified: Wed, 08 May 2019 14:59:28 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:792554fb2d46a0d81231425577d0609735163ebe2a26619a5203e8a240a36d02
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 MB (27198516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cef42c5407f7d684de5966f89951cfaf45dc1e5fdc927a8da3184bbace9cf565`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 10 Jun 2019 23:41:42 GMT
ADD file:cd613dd4ee4b2224b6debd778ceb35ef342fc7ea13102853ee42a5abb6f30d76 in / 
# Mon, 10 Jun 2019 23:41:43 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:34:17 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 11 Jun 2019 00:34:24 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:34:25 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 11 Jun 2019 00:34:25 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 11 Jun 2019 00:34:26 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 11 Jun 2019 00:35:06 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 11 Jun 2019 00:35:07 GMT
VOLUME [/spiped]
# Tue, 11 Jun 2019 00:35:07 GMT
WORKDIR /spiped
# Tue, 11 Jun 2019 00:35:08 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Tue, 11 Jun 2019 00:35:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Jun 2019 00:35:09 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:86ef8b977e9b28fc775a14aa2d4243a07dd2d142d19435649d2f478fbbee796b`  
		Last Modified: Mon, 10 Jun 2019 23:45:15 GMT  
		Size: 20.3 MB (20333790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f404b963bfada3c20d23ff05b874ff5c1231e2498697cf72f065019eaef935f1`  
		Last Modified: Tue, 11 Jun 2019 00:36:00 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1959fc4de4d2c4c95c398425b853de45708e6e90b3db332fce8640cecbe37888`  
		Last Modified: Tue, 11 Jun 2019 00:36:00 GMT  
		Size: 1.6 MB (1623670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83c13b97af25ae427fdb88e884009dd7d8c8d1cb4528550f2f70e1b4e84d04ed`  
		Last Modified: Tue, 11 Jun 2019 00:36:01 GMT  
		Size: 5.2 MB (5238833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffc67e43acc214d603c07db7deeb399c484be7fc9d3436af9b2f877ba3861a51`  
		Last Modified: Tue, 11 Jun 2019 00:35:59 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c24db3fba19d7814a4dddb7ae56a086726eb638819dc78d3cf435ede8471b3f`  
		Last Modified: Tue, 11 Jun 2019 00:35:59 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; 386

```console
$ docker pull spiped@sha256:8fc08f02d8a6d706a88fafd0767f6331636d225718b1dc60a9ae02a0f4249402
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34320186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:499a252a3cd051ca2d6c5bc65c564872cfc8f1bb7d8397c57de73a5a9a8e7882`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:40:39 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 08 May 2019 19:40:43 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 19:40:43 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 08 May 2019 19:40:44 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 08 May 2019 19:40:44 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 08 May 2019 19:41:09 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 19:41:09 GMT
VOLUME [/spiped]
# Wed, 08 May 2019 19:41:09 GMT
WORKDIR /spiped
# Wed, 08 May 2019 19:41:10 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 08 May 2019 19:41:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 19:41:10 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b469c93feb13638afdd2d6d34e9491eec45acf7daa4fbe448da4b2e5837501fe`  
		Last Modified: Wed, 08 May 2019 19:41:23 GMT  
		Size: 1.7 KB (1736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a4a48973b7af0d9bda368a523040fe0e44ee181f4861ecf2ede5a9793effda6`  
		Last Modified: Wed, 08 May 2019 19:41:24 GMT  
		Size: 1.9 MB (1885407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed564b6100872afd5b59c5448c6b292c3c1e45fa4ec0308ef9d042d212f4de3d`  
		Last Modified: Wed, 08 May 2019 19:41:26 GMT  
		Size: 9.3 MB (9311756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b485aa0efb90e8aa9eb28031fdf725522831d38e088ad020ab1a4d13e4727c8`  
		Last Modified: Wed, 08 May 2019 19:41:23 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8b6f33bf844532c07eef7d6b4842ab9a97c8f227db93b52bfc6f74670770b5a`  
		Last Modified: Wed, 08 May 2019 19:41:23 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; ppc64le

```console
$ docker pull spiped@sha256:8b48ec8e079577bde684641200641e70464ece791b82a1fd4a54a48ffb2b4f27
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.2 MB (30158909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2024543b3dbc2146568cd0b9239c2ff997b5db0ee98206f94276d420057b6edc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 08 May 2019 09:05:46 GMT
ADD file:fa23694e2ef3b1ff3ac824d7d18d6951725f7f1ebfd5350392edd91f6b90d89e in / 
# Wed, 08 May 2019 09:05:50 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:01:45 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 08 May 2019 14:02:17 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 14:02:25 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 08 May 2019 14:02:31 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 08 May 2019 14:02:38 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 08 May 2019 14:08:49 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 14:08:54 GMT
VOLUME [/spiped]
# Wed, 08 May 2019 14:08:57 GMT
WORKDIR /spiped
# Wed, 08 May 2019 14:09:01 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 08 May 2019 14:09:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 14:09:12 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:64bfe8794b280a764f2e07634dce2977621d140ae17fb34a03635710e84c3dfb`  
		Last Modified: Wed, 08 May 2019 09:26:17 GMT  
		Size: 22.7 MB (22744914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dec7c9aebf6f40879333d98aedd4cf388a46ce220620c24871765391f03d0e6`  
		Last Modified: Wed, 08 May 2019 14:09:45 GMT  
		Size: 1.8 KB (1753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f029e45878cabae55d480e6d332f728328b35b275fe0024c2f0249f6d5b38f0`  
		Last Modified: Wed, 08 May 2019 14:09:44 GMT  
		Size: 1.6 MB (1561375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8430327da2471a6ae65a9218eb94c7f2b9c8e82bd2cc560d25fbd05933cd9e9`  
		Last Modified: Wed, 08 May 2019 14:09:46 GMT  
		Size: 5.9 MB (5850386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e09e81f0a5a4c771a4a0797d8fd4c9ac23f9f1589f171c5f575de966aa4c24de`  
		Last Modified: Wed, 08 May 2019 14:09:42 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ba0fdb6a53dba544d55a14c0aae1b94508ac9d301a1536cc75887d4b7b0f452`  
		Last Modified: Wed, 08 May 2019 14:09:43 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; s390x

```console
$ docker pull spiped@sha256:a4d4f96381152a11660049b2f31332ffde750091227d1fe32044e9ac25e39b97
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 MB (30739528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4ea1018c59b724c3572fa105a0dcf4bfff741403560a395caeff75ad1c0ea5f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 08 May 2019 11:47:01 GMT
ADD file:94f3707604bb7173eb9661df1719a395e39e97c32d08f5fc146b79dcee237fd8 in / 
# Wed, 08 May 2019 11:47:01 GMT
CMD ["bash"]
# Wed, 08 May 2019 18:10:15 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 08 May 2019 18:10:36 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 18:10:38 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 08 May 2019 18:10:39 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 08 May 2019 18:10:40 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 08 May 2019 18:12:47 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 18:12:49 GMT
VOLUME [/spiped]
# Wed, 08 May 2019 18:12:50 GMT
WORKDIR /spiped
# Wed, 08 May 2019 18:12:53 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 08 May 2019 18:12:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 18:12:55 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:e9681d6b3f0fb55b5da73b567906eaac580ed39b3428e95f839a34da054b5e37`  
		Last Modified: Wed, 08 May 2019 11:52:38 GMT  
		Size: 22.3 MB (22338869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b81ede6ed060d48efdf564b4275ad347391336f5de0d1a7f6ced003d0b761bd7`  
		Last Modified: Wed, 08 May 2019 18:13:58 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:442850461b1cea49f9d438fef11f18659ba24fcc45bf65ffc63e21f417c89d2f`  
		Last Modified: Wed, 08 May 2019 18:14:00 GMT  
		Size: 1.6 MB (1625750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb3e5fe379f64ee2cfe17494860253ed0ceda5349bb8a33a032203fdcee547f5`  
		Last Modified: Wed, 08 May 2019 18:14:04 GMT  
		Size: 6.8 MB (6772720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84a149eb93fd211709e9b489008f882cff6a9695370d25e385354676138292ea`  
		Last Modified: Wed, 08 May 2019 18:13:58 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fb1f506dbe9dcfc66022c377c578e1acd1eef92260682cf0ec3e0f157e202d9`  
		Last Modified: Wed, 08 May 2019 18:13:58 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
