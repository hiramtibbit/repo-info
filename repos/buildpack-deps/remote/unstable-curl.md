## `buildpack-deps:unstable-curl`

```console
$ docker pull buildpack-deps@sha256:76d8a5f2e2edca5493729111d4680fc9d63e9e8a604b6198b5ce87919f7488ce
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

### `buildpack-deps:unstable-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:89335fdeb0fea72f3adee354a1d97f43ee6f343fc49061ef5ad0e71ac7c65884
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.3 MB (68271826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98628caf6e4f048b4523fa071de4de85d24aed6c01f0f572a3aebaa8320e3d1a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:23:11 GMT
ADD file:dd0986a5b74404f77d300a1f66ca28f1d810b9563bb0ad60166c42c86a3951a3 in / 
# Mon, 10 Jun 2019 23:23:12 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:26:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:27:06 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:26a3de69c889cd62b7ca9d1a2acfcd53ec6a80624f14b8ac06f623e5e4cd3a83`  
		Last Modified: Mon, 10 Jun 2019 23:27:10 GMT  
		Size: 50.4 MB (50416288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6493fd7de50953fa5b404cfae2364c5ff138cb9192465cac0e40706d8b2042e`  
		Last Modified: Tue, 11 Jun 2019 00:36:22 GMT  
		Size: 7.8 MB (7802781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee800df4f2de854aeb7d62550801c93e12dc2a11e6a763361db7d88c20651319`  
		Last Modified: Tue, 11 Jun 2019 00:36:22 GMT  
		Size: 10.1 MB (10052757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:unstable-curl` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:0e03862084db8912a33c5f773634e3f0222789d59f6eedf515474e1ea127befa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.2 MB (65220739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e21e35347e931f41c65cc4ed32a27b5c3531aec21c58f641dab948ee06dc91d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:51:39 GMT
ADD file:5f8cd1843f0af74cc337fee41fb8a27c05328ba7b4a3bafba58f5e536f529f08 in / 
# Mon, 10 Jun 2019 23:51:40 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:26:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:27:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:1c264d4806521431a7eb41380bbd57ec7719e567e4c180ac833eb83c4c6ca788`  
		Last Modified: Mon, 10 Jun 2019 23:58:03 GMT  
		Size: 48.1 MB (48133931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02b2114760c34b1f3d97c6b8cbac971e2888b078338d4378ece274f373864e6c`  
		Last Modified: Tue, 11 Jun 2019 00:36:58 GMT  
		Size: 7.3 MB (7344359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b7d6b6e7ff207583df1146f0ef9b4c677aa2bc733147fd7e82636adf1400712`  
		Last Modified: Tue, 11 Jun 2019 00:36:58 GMT  
		Size: 9.7 MB (9742449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:unstable-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:04df24ac8ac97c92fc341702799a33a1778f7d8833fbe86c896e11a8fb7a4828
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.4 MB (62381137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:727128820654b812bedb0a4207745a5bb7466fc1c28cd8d83ea041c1e92d894d`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 11 Jun 2019 00:00:53 GMT
ADD file:7d67e93cad2e9cf97ccb5ccea431d24a0d9542dddf05cd63187fa9d62b4bcb3e in / 
# Tue, 11 Jun 2019 00:00:54 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 01:05:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 01:06:01 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:3ab8e76dd11aca2600e6ee2ee15515d8c054e337b5b731bbe393d6fbe778e5fa`  
		Last Modified: Tue, 11 Jun 2019 00:07:56 GMT  
		Size: 45.9 MB (45891294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64a6ec1ae5787190a16008b977426b2596eb790ef8f702359e24b562174caeef`  
		Last Modified: Tue, 11 Jun 2019 01:15:59 GMT  
		Size: 7.1 MB (7090942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:787a622c44e3de782ec7399057f4cec4eead2bd90324049d1cc952cabd882691`  
		Last Modified: Tue, 11 Jun 2019 01:15:59 GMT  
		Size: 9.4 MB (9398901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:unstable-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:e6e557cc32b066eb10252add77e35369889230b3442e537aa9de3dfb2c8e6187
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.9 MB (66904364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d571d237cb4b06f5f3ebb28667260588fec34487a990386de55a9d7af87cd605`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:40:35 GMT
ADD file:68b10e662aced8b803f6c9bd363289416da46c92903fb76bbfa649a85b7d8ab2 in / 
# Mon, 10 Jun 2019 23:40:36 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:16:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:16:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:4ff0b6eff82f60ec8e5a22c5610424c7c50c25da3f3290acff23fdafea091921`  
		Last Modified: Mon, 10 Jun 2019 23:43:55 GMT  
		Size: 49.2 MB (49193137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2af56acdc1f965b792cf19e86eaab158c5998fa15982c03f3a30f1df429d6b5`  
		Last Modified: Tue, 11 Jun 2019 00:35:08 GMT  
		Size: 7.7 MB (7669448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77cb37e9d0aff1a89d21497dbec3845624e5d13afb929effca495457880a2a4a`  
		Last Modified: Tue, 11 Jun 2019 00:35:05 GMT  
		Size: 10.0 MB (10041779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:unstable-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:2f3b8692dfd92aa869863e19c8207a355d050823d3dec6772a1161eac7d0f384
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.5 MB (69450041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5c4fda8b5816ed2c232ca95e3e79ad061314716421a5506b9cf1399d95247f0`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 10:46:20 GMT
ADD file:01b1b621497a25dbcd8a794271b6979630b82c4a01c1df08118866023a64c031 in / 
# Wed, 08 May 2019 10:46:21 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:06:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 19:06:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:5803c24863e6f717e210ea0fe0693c839f73e56f77d8eb4eff1c13e0b1f91412`  
		Last Modified: Wed, 08 May 2019 10:55:49 GMT  
		Size: 51.1 MB (51098329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67024b274725b3f954ad4b1317e8e447443d12b263402410cc207e31c8b9d0aa`  
		Last Modified: Wed, 08 May 2019 19:12:56 GMT  
		Size: 8.0 MB (7955912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a491c323605496d62a0a2d65e3e02c422146d8ae628b5b9f0d772e101e721cc8`  
		Last Modified: Wed, 08 May 2019 19:12:57 GMT  
		Size: 10.4 MB (10395800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:unstable-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:6ac356ea88c927a4724d628ea29105be183ffe259b85032e85a512f11ebc5c67
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.1 MB (73117914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1f94fb1d441341f58e7fd0e35cb172cedd8ab132f730fb04ad100a971a95234`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 08:42:47 GMT
ADD file:c99dbe1b73c7a35a3f4e74bbef02cab9950a1c98285237d8928d02383222cff8 in / 
# Wed, 08 May 2019 08:42:54 GMT
CMD ["bash"]
# Wed, 08 May 2019 11:53:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 11:53:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:63baec0b4ca333a8d154c08de08e8645347b16b8f6a5efb1ba682884b2dba2a3`  
		Last Modified: Wed, 08 May 2019 09:23:27 GMT  
		Size: 54.1 MB (54088145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7adb323188816da0a1566a00fa2d090853cd88a50221cf05ce564abb18707f71`  
		Last Modified: Wed, 08 May 2019 12:21:31 GMT  
		Size: 8.2 MB (8236503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c31b8a22dd3919c0690f6948466c7b8d00c13731fbbed17792c3c48e3933660`  
		Last Modified: Wed, 08 May 2019 12:21:31 GMT  
		Size: 10.8 MB (10793266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:unstable-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:be4470952e0a1e6fb9c849d0df3662382180f20fc0192dcb45da2c6afd74c8dc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.3 MB (66294917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91eccafdf5bedeae7329aa7c390807c02f814b08d078105d1ff14287b3932726`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:42:46 GMT
ADD file:28077e50828d6774a43958ba5a5e3dedc98f956b3e14ea7d505aa4968f5603f5 in / 
# Mon, 10 Jun 2019 23:42:47 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 01:42:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 01:42:47 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:61701f4be07d298ce1009eaf03d90fea9c4f19d146a7badc0e34e63e4c3df580`  
		Last Modified: Mon, 10 Jun 2019 23:45:41 GMT  
		Size: 49.0 MB (48985461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0add1daa1e4badde1e715d2dbd34a7172d241ddf7a438741b265ce7b6b4f3c0`  
		Last Modified: Tue, 11 Jun 2019 01:49:13 GMT  
		Size: 7.4 MB (7369590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d023522355acf85a67cc5b20a3c62e3000552f9e6def8d3ef91fdeb74a670e03`  
		Last Modified: Tue, 11 Jun 2019 01:49:13 GMT  
		Size: 9.9 MB (9939866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
