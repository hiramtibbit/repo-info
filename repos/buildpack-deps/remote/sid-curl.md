## `buildpack-deps:sid-curl`

```console
$ docker pull buildpack-deps@sha256:e1ce4b609eefcff24b41bc4b5b58bcb2bd681cbfdb6b19615b6965a9dd5d2d44
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

### `buildpack-deps:sid-curl` - linux; amd64

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

### `buildpack-deps:sid-curl` - linux; arm variant v5

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

### `buildpack-deps:sid-curl` - linux; arm variant v7

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

### `buildpack-deps:sid-curl` - linux; arm64 variant v8

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

### `buildpack-deps:sid-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:b138220549d320392219215f3d8d5278fe7856e39ee339f16731f2fe3c5fa051
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.5 MB (69531229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e4c6c011b13d24dc6156ab61828d8b8ee6c2b254479c91fc31721c59de38d5c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:40:27 GMT
ADD file:94428624b8a12a143621d6a227fb8362d1c9f9722446b0243cf4b2782a45eafb in / 
# Mon, 10 Jun 2019 23:40:27 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 02:57:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 02:57:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:42161218c4a20dafac7bfc240e36303807ce4515329f48b3a264b093e3ce57c0`  
		Last Modified: Mon, 10 Jun 2019 23:44:35 GMT  
		Size: 51.2 MB (51166982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bed67cc530b90d8f0b220c0c8ca62822c6eb905724bffcd7e419e556f6962078`  
		Last Modified: Tue, 11 Jun 2019 03:09:17 GMT  
		Size: 8.0 MB (7966666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa131f953a939da7d8fa9aafa9d96a1228222e561cbf201fbd21655968182431`  
		Last Modified: Tue, 11 Jun 2019 03:09:17 GMT  
		Size: 10.4 MB (10397581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:6e2d316984d4c26f06016f67c4c8a6a4e1d8e911bf6ceefa607fd2bff61eecd7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.2 MB (73171898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efcf0e9830c606b0242c037012df8f358228cede26e81e8e55bc62c6c2298ee6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:17:44 GMT
ADD file:9e0f17640dbfd63699c5e94379034b1350422dc0f982e4061195002a081b16a8 in / 
# Mon, 10 Jun 2019 23:17:46 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 01:51:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 01:52:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:695a4a9a1dde5df6d15ecb468cc4a42fd972a411bcb57af71813c348a2b9beea`  
		Last Modified: Mon, 10 Jun 2019 23:22:09 GMT  
		Size: 54.1 MB (54137390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3baed8e1ccfe59eb20056817a588b7228b5ba94681496d73b9de177cc9bfde9`  
		Last Modified: Tue, 11 Jun 2019 02:53:17 GMT  
		Size: 8.2 MB (8241567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b47fd349dbfcf7df41b8bd818ddec4d28ee1af77a180084c036c9ff5c75c5a30`  
		Last Modified: Tue, 11 Jun 2019 02:53:17 GMT  
		Size: 10.8 MB (10792941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-curl` - linux; s390x

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
