## `buildpack-deps:testing-curl`

```console
$ docker pull buildpack-deps@sha256:462896c90682b4b9bdbe8eb5432cde63ca19ff5d3987cc4aa83c09220c24da65
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
$ docker pull buildpack-deps@sha256:c1e5583e4807665ea899ddd7bec46ecddd1fd6e9c8c30802f180c2e44d69d848
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.2 MB (65178488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3510f4b992358ea0aab43548009cc422b92962cfe90ee04babed2ab0860da375`
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
$ docker pull buildpack-deps@sha256:29797a6c0e74db2ea3f7ddbd7bcbbfe0ce96dfd2fac4e3d5ea7e017b4cacfda1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.6 MB (61581181 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5224ce22563b80e1ee9cdd3424d7e99018b9da17241f678220576c131c8d8967`
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

### `buildpack-deps:testing-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:cb46fb13490da794fb123e421be9184416d12396dd4c6b5973f2fdd49cb0b03f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.2 MB (66162725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a09f4e27db381a8093c29fb64bbf4f3db9709c953e88f69d2b82ab3a56903d01`
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

### `buildpack-deps:testing-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:8e6d24af307aa6543e4cfd81ecc2fb51e481d374b469c1cd39818335f0a6f9df
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.7 MB (66740787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1342741dd87d86a2e7609354ae2421fc5a586c997865f4b06c9296440b5c0c2f`
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
