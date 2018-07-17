## `buildpack-deps:testing-scm`

```console
$ docker pull buildpack-deps@sha256:f0ec99ae3e4e7eaf033b48b1c03bd97a7213815bb715b854ff42effcc6c6ac39
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

### `buildpack-deps:testing-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:0991f823ac3e17f573b5fd0222432ee6991f8afe7a77e3f5f5f06b72a9e4dc23
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.6 MB (116612157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e73d4c85b4ac8f1961047df7b5ae733aab6b75d5a8e8e89eabc23acb8a15dd67`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:19:46 GMT
ADD file:e0eb7fd196a77a8c01b8187e5b032570504c8a8298b9b1ece3e14d9b33d55118 in / 
# Tue, 17 Jul 2018 00:19:47 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 02:55:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 02:55:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 02:56:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6e8f29bc2816888d5c4a1a83baae3048b6d32a16b8f2ce62d9a93d7a37eb976e`  
		Last Modified: Tue, 17 Jul 2018 00:32:47 GMT  
		Size: 48.9 MB (48859152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17c836e8cd81925e40e141878ff917d917616d5e81c215f50797c21bc58cb38d`  
		Last Modified: Tue, 17 Jul 2018 03:40:24 GMT  
		Size: 7.1 MB (7072731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ad16217db4929382b1d06480d7250beb19c3cac7f4c3328cffb58e248965eee`  
		Last Modified: Tue, 17 Jul 2018 03:40:26 GMT  
		Size: 9.2 MB (9246605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1bd205fbc0bb439d900a058e8c0cc510334db4debf26b5aab45b2c24fddd424`  
		Last Modified: Tue, 17 Jul 2018 03:41:31 GMT  
		Size: 51.4 MB (51433669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-scm` - linux; arm variant v5

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

### `buildpack-deps:testing-scm` - linux; arm variant v7

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

### `buildpack-deps:testing-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:9ee4320004e676a7bf5fa49ea982f89714f9318adc755283f13bd8e7605f3993
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.9 MB (110933632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3782b67caeb675518232da8d1ba53bef4dd778791bd8e195566a67f974dfbf0a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 08:41:17 GMT
ADD file:692294feb32e8b9bf3510dae1c83cdbb869a7a1b7ec24f6ed5fbbabba061a8af in / 
# Wed, 27 Jun 2018 08:41:18 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 10:19:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:19:56 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 10:21:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bef60b6834f761c65eaadb7dc9a039dc0ec9aa7de8ba56a0dded0cd24fb3c8e6`  
		Last Modified: Wed, 27 Jun 2018 08:51:04 GMT  
		Size: 45.9 MB (45919144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef85bbd28706d01060eb47d3a8d21bf1304db3581c942aec142487ee63f5fb77`  
		Last Modified: Wed, 27 Jun 2018 11:01:31 GMT  
		Size: 6.7 MB (6681486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be2655a63e995833173991ab27a2a086306e8d546b67cec82734fd968f2c96b4`  
		Last Modified: Wed, 27 Jun 2018 11:01:33 GMT  
		Size: 9.0 MB (8980551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85d4c68c9c223edf9f2a1af7ae18e5d9f81442257f8494c9abe5dbb5f8c871d6`  
		Last Modified: Wed, 27 Jun 2018 11:02:18 GMT  
		Size: 49.4 MB (49352451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:ca318ca3e0aaa6a82129cbcd2ac4269b4742dc531f598f565cac43727f58dcec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.1 MB (119092935 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c7a29e4b1cba769cb4672edc429161346adc069c49dfdb0fe193b81e861bf2e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 10:39:08 GMT
ADD file:c9cfaa3bdf0b6c449805dc877cca855faf2022cfed63d9b50fb538a41f2a2b3f in / 
# Wed, 27 Jun 2018 10:39:15 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 11:31:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:31:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 11:32:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b386f2fbdc3eb3542f9e09e9332b6238756dfac1e869adfe725fed0167e27eb0`  
		Last Modified: Wed, 27 Jun 2018 10:51:30 GMT  
		Size: 49.4 MB (49412314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34c88e3f5046d9f9be3ed9a5ba692df35560d3e5401ea1d440fd3fbf5852073f`  
		Last Modified: Wed, 27 Jun 2018 11:46:46 GMT  
		Size: 7.2 MB (7222839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acef0ba08e60c66012469719d26ecd9ba41c03da44b2814ee901028d826b85b3`  
		Last Modified: Wed, 27 Jun 2018 11:46:46 GMT  
		Size: 9.5 MB (9527572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039cd317e9e3734d6dbb948316f0f2495d2066a6c574a442c941642f5e24d6ff`  
		Last Modified: Wed, 27 Jun 2018 11:47:22 GMT  
		Size: 52.9 MB (52930210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-scm` - linux; ppc64le

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

### `buildpack-deps:testing-scm` - linux; s390x

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
