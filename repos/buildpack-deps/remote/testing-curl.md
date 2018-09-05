## `buildpack-deps:testing-curl`

```console
$ docker pull buildpack-deps@sha256:07b11c117b2cb0f9365ebc937c7a0be090dd469a40a3d9e6737e23a254837790
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

### `buildpack-deps:testing-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:ff9e67f3b1029f37028c1b82026bbc0fbe126d8e21cf97f139b7d3eb0329995c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.0 MB (65983240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b742ab653f27688f9e818dbb8797227d2d88f0b466b91cf66643ad0cb36743e`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 04 Sep 2018 21:19:38 GMT
ADD file:9a59523584bffb4f021dc93910d62a0895fb3034e1b677cee880bc2c9c7d3cfa in / 
# Tue, 04 Sep 2018 21:19:39 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:20:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:20:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:1064a561889d4755937e39513dda622c2ebd16d0e4faeefe499ccb8494ea5176`  
		Last Modified: Tue, 04 Sep 2018 21:22:49 GMT  
		Size: 49.0 MB (48982727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd0147b29a6cde8f1220e1e500835d1a90d5cd8cc58f37a99f8898215cb83a33`  
		Last Modified: Tue, 04 Sep 2018 22:48:23 GMT  
		Size: 7.1 MB (7078979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7176dd0a39ca8bb73073995b4f9e86e703a550bebf075498a90a2e9559cd5fe5`  
		Last Modified: Tue, 04 Sep 2018 22:48:23 GMT  
		Size: 9.9 MB (9921534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-curl` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:d0051909590152f1aaf3ed8119a2b32cfa8d3944e12b41e874f84138843d23ce
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.4 MB (62448820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2daa2d75aa4f58e729f6b01931cef07dcc37fd3ef134cb7061d830f7c42f6f9b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 08:48:51 GMT
ADD file:41ba433a05f6f3decf730b6ecf28c9d728da257c5cbef4edd46ad18dbd6feecd in / 
# Tue, 17 Jul 2018 08:48:58 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 11:36:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:36:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:de426355529ff2db32424f3016ce9751275f19dc857c55cc607079f4acb9f87c`  
		Last Modified: Tue, 17 Jul 2018 09:01:42 GMT  
		Size: 46.8 MB (46795713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af31179da93974ac8a4b9d83776984c007eb196f00da29af50733a36c12e84dd`  
		Last Modified: Tue, 17 Jul 2018 11:56:06 GMT  
		Size: 6.7 MB (6664473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aae0a7bcd9370f8de4c071f4abe6ffde78f89aae66945193207e12f67bad6654`  
		Last Modified: Tue, 17 Jul 2018 11:56:07 GMT  
		Size: 9.0 MB (8988634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:62d3587081478b1d9355570ccb5af88619fb9b0156ca722cab1e568128883bb7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.8 MB (59826944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02aa0d3f2a0cc96f2722e58ab581c5c507259f549d7f3922039e7a8af613f2c0`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 11:58:16 GMT
ADD file:cc226c714fd87a8d8245fe4ee250645827c939771c43726bfee439d9410e0681 in / 
# Tue, 17 Jul 2018 11:58:17 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 13:33:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:33:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:c1527ffc49aed4bcd81120e0b3877f7d2558c50f41a63a452d74e6060802ea75`  
		Last Modified: Tue, 17 Jul 2018 12:09:57 GMT  
		Size: 44.7 MB (44666680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d49641e095e0e37b790e407cb61be989c6228c6d683bd794873b2ae2a314f912`  
		Last Modified: Tue, 17 Jul 2018 14:02:12 GMT  
		Size: 6.5 MB (6455998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8322b804a049a0f6d7f2e709cec61fc3ef97534e72ad3c85af53cbeb0a9dca94`  
		Last Modified: Tue, 17 Jul 2018 14:02:16 GMT  
		Size: 8.7 MB (8704266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:b05763331c6405aee7d1ebf72dd65518d20da6bcc1e163b07202d4a36f010869
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.8 MB (61784287 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ff9de8f67d22020ccab4ea8bb260bb708a1f26004823cfcf67b5cfd13bfd45e`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 08:41:59 GMT
ADD file:50e6644465ae7d1de0b9421371bed7b92a9c7fc31bd97a5942482ca5b19420d3 in / 
# Tue, 17 Jul 2018 08:42:00 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:24:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:24:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:676a49a4c98c6fb9b8face32e4f911216f7f5676131c7a74fa19eaea6aabd490`  
		Last Modified: Tue, 17 Jul 2018 08:51:55 GMT  
		Size: 46.1 MB (46117577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:976f371da80d0656f97e09b79fa615fc0f6965fffccfbf2a589704d3fd25d507`  
		Last Modified: Tue, 17 Jul 2018 15:03:40 GMT  
		Size: 6.7 MB (6684446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a26122c58d2d064213fb96052a91bb8d9a607df65f3de526e7b106f6b5209c5`  
		Last Modified: Tue, 17 Jul 2018 15:03:41 GMT  
		Size: 9.0 MB (8982264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:1ea2ccbbd2bf251744a7eb1089876afb0aa2a08fddd507462f97057ec39a4b7c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.4 MB (66398806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b9a775af85894fc4e952d896b643e4dc93d51dd1827942c265fa161d7ae522b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 10:39:36 GMT
ADD file:43fdced830e4e180f0f86b158bbdc62358f7179645e7a082bdf1168d7efc3e0f in / 
# Tue, 17 Jul 2018 10:39:39 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:13:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:13:54 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:1e553b82081a55d71148b2efe6cf89aa4d2ee3cd275d7e6471e85d606fb52b1e`  
		Last Modified: Tue, 17 Jul 2018 10:55:13 GMT  
		Size: 49.6 MB (49644475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1653eb5c6029be943fb36cb7d56b2e7674938a8ee7ad5decc9c3e637db691294`  
		Last Modified: Tue, 17 Jul 2018 15:02:54 GMT  
		Size: 7.2 MB (7225514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11027ab4c0fe5ac8ee975a2d557aedc3b52c8520f72fe77fa3d523a6c36b8d3c`  
		Last Modified: Tue, 17 Jul 2018 15:02:54 GMT  
		Size: 9.5 MB (9528817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:e51997c6f04b39314e5df15a1a360dded6b488220da5db907d7f3a761d5c4610
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.8 MB (68797496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60e643cb3560bff5efa3735b818afbd49c8aacc60657b518301e251a965fecfe`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 08:17:13 GMT
ADD file:b9a66512c933d368d5bc398be4a8b9b24a3bcac0e5f4df668c507d38e0c129d8 in / 
# Wed, 05 Sep 2018 08:17:14 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 08:45:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 08:46:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:cfb56c02f1d048cbcf2da46a46ea3d730ffe6cff0ceb9797f43ec49cc92e044d`  
		Last Modified: Wed, 05 Sep 2018 08:22:15 GMT  
		Size: 51.3 MB (51309580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a0632fa1f08757e79a6036fb135a1b27567cba9865e778c0416906106857357`  
		Last Modified: Wed, 05 Sep 2018 09:12:26 GMT  
		Size: 7.0 MB (6966044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92bf14d1632e22ea0faa87a77b879c49e74241ddabc86edb3c6acf2023030313`  
		Last Modified: Wed, 05 Sep 2018 09:12:29 GMT  
		Size: 10.5 MB (10521872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:7dddf196933f591cc19606662c80c66d27477683ad6247bf15105e41297d0706
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.8 MB (63814474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62672c03155a18f48464b17969fcf3823f4e3b973cd6c733e589cafe3acce10d`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 11:41:43 GMT
ADD file:bef24f5a7022c532ee4e83c06a45f245cea83795b0560dabfa96b15f9e414051 in / 
# Tue, 17 Jul 2018 11:41:45 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 13:14:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:14:47 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:85656be978556b52b57e8f832bc69e6a1dfb567d599423c2ea6eb590c1c2112c`  
		Last Modified: Tue, 17 Jul 2018 11:45:03 GMT  
		Size: 47.8 MB (47831178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f3cdae5a2252db542bdab47d4eb4949e8d8dce97e4b345cd45c0a33fcf2acb9`  
		Last Modified: Tue, 17 Jul 2018 13:27:06 GMT  
		Size: 6.8 MB (6799513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4f98dc18255b0fa76868d327cec1baf287cd6ca8f3720e85f6a1722ceff31ea`  
		Last Modified: Tue, 17 Jul 2018 13:27:06 GMT  
		Size: 9.2 MB (9183783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
