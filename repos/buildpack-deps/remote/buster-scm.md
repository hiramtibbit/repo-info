## `buildpack-deps:buster-scm`

```console
$ docker pull buildpack-deps@sha256:f722fcdb86327d2e315d6b850aa6fab1c0f68ce77325e4f0399f32eb8291a034
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

### `buildpack-deps:buster-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:79361a0f8111100cdc78e18aa7115c4d08f1fda4ae295fcc707f85a248a7549a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.5 MB (117526147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e92bb03d1b1e82b2ed6314b7c63a03873f2d7ff1f86422e4fd055bd61e116e3`
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
# Tue, 04 Sep 2018 22:21:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
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
	-	`sha256:5e51830d0602755a5326f83ff4a31bbbdc20abbfe6f97c1005af7be2f8cbb28d`  
		Last Modified: Tue, 04 Sep 2018 22:48:47 GMT  
		Size: 51.5 MB (51542907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-scm` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:2e85681c02c0689dba3ab86a0c95850d1b3a3faa39e6128e6a05040019798306
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.2 MB (111156738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63907d1b880999b410ac4c229e73fcdbfba49d73488b2fb24a794eebcc9e30a7`
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
# Tue, 17 Jul 2018 11:37:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
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
	-	`sha256:cca421a851701afbbaba72ad04eb05f2ffa880ab54ad8aaa8e6c97d513d3410e`  
		Last Modified: Tue, 17 Jul 2018 11:56:49 GMT  
		Size: 48.7 MB (48707918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:a43b8b683ea5357a27e7517396f04c7c33f84a154492883a6c618f8c8f0d73ac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.4 MB (106408035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72623d36a1dcb6fb6049e5e5bb632be366daf6ccd1791952bebd8470248f2921`
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
# Tue, 17 Jul 2018 13:34:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
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
	-	`sha256:952f46eb697bc791422ae1a581c31592b65c11f77c99aed4a8c34f77e82993cd`  
		Last Modified: Tue, 17 Jul 2018 14:02:48 GMT  
		Size: 46.6 MB (46581091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:64a902e52c863bc1c1e00c9258b5a0f2f191ff091a9fbc001b3cc6ca68b18e20
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.1 MB (111139607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7be2236a7bf349a02d39e7862916bb70819ef4410f497bb24c6d6ac3665068a1`
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
# Tue, 17 Jul 2018 14:26:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
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
	-	`sha256:e63c4ae4cba52d289709059174c4245b0563fa142dc2fdb8885f4b92d5df39f6`  
		Last Modified: Tue, 17 Jul 2018 15:05:21 GMT  
		Size: 49.4 MB (49355320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:287d6293a040dd88e9c00ac7cac00eb5a86acd6328ebfe8bf5d6bed1a66c3b6d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.3 MB (119340069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82203796451c58e528cebfaf12a574c7cad7608f4f4351c4ad6951d913ebd065`
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
# Tue, 17 Jul 2018 14:14:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
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
	-	`sha256:3404dac707590f65c0c15cf1352a0f74570f57a3d6d1ee1331765b127f73cc8c`  
		Last Modified: Tue, 17 Jul 2018 15:03:44 GMT  
		Size: 52.9 MB (52941263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:a46ddf0ddd57679f7e0d64ccace26eb408ece76c59ee0a688f459437bf429cf7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.8 MB (120840736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d76f81a233c95b811deea50f91a8eab2888ff1187b11a4c051e876202b43cdfd`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 08:17:44 GMT
ADD file:3cd0ebc6ec0d6a5058e733ebd166dab448d3d3da8e24b4be77b4ac0963dcabaf in / 
# Tue, 17 Jul 2018 08:17:49 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 12:29:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 12:29:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 12:32:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b9943e4943de8a062eff21e85d00df2552f8ab13344336de83416c2607e9d91e`  
		Last Modified: Tue, 17 Jul 2018 08:22:49 GMT  
		Size: 50.3 MB (50335300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87bb631636c0c2135253c8af2c034e413e543a7508a2bd2c154e697e3af8563c`  
		Last Modified: Tue, 17 Jul 2018 14:07:42 GMT  
		Size: 6.9 MB (6909888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2622bb337aa455416fd8dc88df761ef4ea3fcae9eb5dd2abcb71383cac606a4`  
		Last Modified: Tue, 17 Jul 2018 14:07:41 GMT  
		Size: 9.5 MB (9495599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf48a201b7d8a04bafee4113d91588f8d3693c2334c6e4084c120079d67b2b9c`  
		Last Modified: Tue, 17 Jul 2018 14:08:33 GMT  
		Size: 54.1 MB (54099949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:3511cf70c04e26fc83104079e2f938d08bb44b0dfe0421a93636c9edb2bb0b48
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.6 MB (114597501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d48773ab5fe871be02af87433d8597511cad2783f1377b532de1afee1b93c35`
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
# Tue, 17 Jul 2018 13:15:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
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
	-	`sha256:2ff5a46ca2a003bdc97dfa16deae6e05c22bf515d417df298a0a8643d5f8893d`  
		Last Modified: Tue, 17 Jul 2018 13:27:27 GMT  
		Size: 50.8 MB (50783027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
