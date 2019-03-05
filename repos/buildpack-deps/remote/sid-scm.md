## `buildpack-deps:sid-scm`

```console
$ docker pull buildpack-deps@sha256:4f1732b9ec5ab18bbb69a68ce74049f7d0a12ff64e0253dc6d5f04295d0440e8
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

### `buildpack-deps:sid-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:98bc65178a18228203ae77b1508a2981eea78b2924f3242baa99acfa3f0c02dc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.7 MB (120664098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:413680cb17047a06387699deba0939cfe143543e0ecfd047b076cb0bdb2f2f71`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 04 Mar 2019 23:21:27 GMT
ADD file:dca5a20f97013b9a80952784924ca7f3820f99958ad080344fe8445a67c2ca92 in / 
# Mon, 04 Mar 2019 23:21:27 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 02:32:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 02:33:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 02:33:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9785490dff12d73b09ebaeb9dfa12d32bc61a107039000030ea3d9da0db5f77a`  
		Last Modified: Mon, 04 Mar 2019 23:25:37 GMT  
		Size: 50.2 MB (50217046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81298de37ef3a5fa4733f0841b968e44cf8a8e3c50d4c2e14c599ef4066a4083`  
		Last Modified: Tue, 05 Mar 2019 02:42:40 GMT  
		Size: 7.8 MB (7785176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aae9f220b3fb2f6292283f3afdfbc148c506980841df909b63b2faf289cd618a`  
		Last Modified: Tue, 05 Mar 2019 02:42:40 GMT  
		Size: 10.7 MB (10670055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ad2ed23090f3baa71334a3f4b8ff9f2c744437018bd612321cb5bd4c1a15c3e`  
		Last Modified: Tue, 05 Mar 2019 02:42:56 GMT  
		Size: 52.0 MB (51991821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-scm` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:26ef133a42e1c032c08078f7af9902793dd53f2e856eb971cc1e0bc9bdb1050c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.3 MB (115349537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa1f29c9e68a9b8f492f84b8fcb5a802191afec93083259659b3734d4c3488cf`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:52:57 GMT
ADD file:408a135a9a2b4df4beece5b2de3301cfa0e45a7a062eb63e9a0e7e9192bd5f99 in / 
# Tue, 05 Mar 2019 09:52:58 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 10:29:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 10:29:41 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 10:30:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3f835cac0c7da48ab45ed34e7fa9323dc275f7e955809e476af719eca0844a82`  
		Last Modified: Tue, 05 Mar 2019 10:01:18 GMT  
		Size: 47.9 MB (47927091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20a13c1b08400ad8c370949bdf50dd9e9beb876d921502e30bf1b5fd309b9ac`  
		Last Modified: Tue, 05 Mar 2019 10:41:47 GMT  
		Size: 7.3 MB (7336165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ddae599fbb72dbcdfff564e64d55467d131f4ef12a46081715d0f6e05b06ce8`  
		Last Modified: Tue, 05 Mar 2019 10:41:48 GMT  
		Size: 10.3 MB (10343335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62acf10d86111f3f76514640e45a2242318ec4c77631d4393551a7d24a509b11`  
		Last Modified: Tue, 05 Mar 2019 10:42:10 GMT  
		Size: 49.7 MB (49742946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:1e4098e79ca4f381b3936944bdc92734f3da70f20179c075b5c36b4235d5fca7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.5 MB (109489035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c17add6e675848172010addc156e197a818aa84d66c60580f98cc6394954e363`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Feb 2019 13:01:35 GMT
ADD file:a5ec8ee488d30cb687ca0762ec363e449fb00765212c6f1181848cbf3c3d6d1f in / 
# Thu, 07 Feb 2019 13:01:36 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:34:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 15:34:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Feb 2019 15:35:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:17febb2059b5733145fcd79dbf81a59c1cfe76c77c0288fcde8d76d9f19ee04c`  
		Last Modified: Thu, 07 Feb 2019 01:42:10 GMT  
		Size: 45.6 MB (45567644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79409742c2ceaeaf5a950e3f8c05f4776d47e4dc8a7d566a2ef1f9ae18a98db7`  
		Last Modified: Thu, 07 Feb 2019 15:50:47 GMT  
		Size: 7.1 MB (7075518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33df216f6fec4a0793c5bf6ea34fdc36193f3ea50a87d3e47deb6a93ec637686`  
		Last Modified: Thu, 07 Feb 2019 15:50:44 GMT  
		Size: 9.3 MB (9315687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5ce605231140ded6fa78eed06deff7f1c8fb07c08f91353f8c49831a70c8b3`  
		Last Modified: Thu, 07 Feb 2019 15:51:10 GMT  
		Size: 47.5 MB (47530186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:ef95797c667e07aad5ddab1ee229d95a587504436964fb89a46c51e160bcef86
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.5 MB (118500343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a451d0a9e7b0e9661a07bf8fffba018915805496263cfce0202dbcb3cd6f3d4e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 10:07:17 GMT
ADD file:7b42d90311ba4721000b061ce5688b7617c00f357746b95a1001654a8305cf2e in / 
# Wed, 06 Feb 2019 10:07:20 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 10:26:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 10:27:01 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 10:28:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:f20511bfb9032422f9398607efa0d22ecc98b39ed90a1905a9bdf23e4a9fac4d`  
		Last Modified: Wed, 06 Feb 2019 10:13:03 GMT  
		Size: 48.8 MB (48820697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0e7af22c8a8d91244e5d3dc8314423b1f51c571e552b3ca769fc46d670e1496`  
		Last Modified: Wed, 06 Feb 2019 11:17:02 GMT  
		Size: 7.6 MB (7630486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:208e8fded67b605a465c7d15c4bd287883a27bb75b849b6671f4fd6e7f0b9bfc`  
		Last Modified: Wed, 06 Feb 2019 11:17:02 GMT  
		Size: 10.0 MB (9953764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39dfd1320b7ef0a90c0a6c2798a9b874a1938a5eaf852d97121bb14a8f7de33c`  
		Last Modified: Wed, 06 Feb 2019 11:17:49 GMT  
		Size: 52.1 MB (52095396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:10ef8715cfb71892fd8c91d5ccf0d1e251a30ec5f044e96656b06373b3d19384
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.7 MB (122654738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c060e1e1b4f00286eb7ebca03530fcfaa4789af80e83cf0ac8e5b79b3b52199`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 12:00:13 GMT
ADD file:ce7c45fff0d74bfe603a7138b818751de070b078ca0721b047e8567c30f61cf0 in / 
# Wed, 06 Feb 2019 12:00:13 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 01:46:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:46:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Feb 2019 01:47:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7f5d83ecefd7c06c9ad1f3c8e31a16ca0808dd67c4c337ffd67e9a10a97d7675`  
		Last Modified: Wed, 06 Feb 2019 12:06:14 GMT  
		Size: 50.8 MB (50829933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8bcf4f56465b45cfe5620cbd28fc67621aec9ed3ef1ff3a6e4e9a9e3b6b18cc`  
		Last Modified: Thu, 07 Feb 2019 02:01:48 GMT  
		Size: 7.9 MB (7924724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb1e77e887de2c62af9e946eeb3bdc7df911c334d8daa540671d5a51ab4ed6f5`  
		Last Modified: Thu, 07 Feb 2019 02:01:48 GMT  
		Size: 10.3 MB (10307727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e205e8f133e3f2038b72fd52f79e44f82aa495a5bbdf20f14f65a833b2a31d48`  
		Last Modified: Thu, 07 Feb 2019 02:02:08 GMT  
		Size: 53.6 MB (53592354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:d260aea64e2131db51858d98b809feb56707559ca2c60deb9f594783cd78d542
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.3 MB (130275665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5eaee5355bde364cdd6a7c5f928ff580bc45ad493efcb9e565f90f294fa67cef`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 09:25:27 GMT
ADD file:a2cf5ae39385f7b927131248a493d2e950537da2b4a33c9a1623275b4c1f37cb in / 
# Wed, 06 Feb 2019 09:25:29 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 18:58:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 18:58:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 19:00:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7ca445fe7afd63ed9c58b670083df50dbc0ebbb9cb6206ca9bbdafb0f88349e3`  
		Last Modified: Wed, 06 Feb 2019 09:29:35 GMT  
		Size: 53.8 MB (53768634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf0296a85176e72ceec71f4feb9fdf9312f2c705cf9b52811fbc848609e8f04e`  
		Last Modified: Wed, 06 Feb 2019 19:26:05 GMT  
		Size: 8.2 MB (8206996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93cbc85de1461ac3cf707a9fdbb5ecc41c5b5483b6b97cac621fb2fc71d6dd1c`  
		Last Modified: Wed, 06 Feb 2019 19:26:05 GMT  
		Size: 10.7 MB (10703067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:926f4427aa3b5fb290c166744852d2effa6a484370bc96ce67fbec077e412571`  
		Last Modified: Wed, 06 Feb 2019 19:26:43 GMT  
		Size: 57.6 MB (57596968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:efc17fb6fca1a0b5986f8dd107e40c45b8cc9c8ac1499aa09f1d3ffd3f1b0a20
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.4 MB (117369664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b701529ec1f0275a5de96a34f7b9b55cf975c96c246cfe367d585d0235c34b68`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 12:42:20 GMT
ADD file:a5ee680799f2f7c5bc6b342acbeccd9b53fcb4c9ead7369f835dd85be5ca3fa7 in / 
# Wed, 06 Feb 2019 12:42:21 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 15:26:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 15:26:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 15:26:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:fa45b08f2a9797c6d1f48741b3f2096e45b319e1a52f713f1eac8b8e472e3521`  
		Last Modified: Wed, 06 Feb 2019 12:45:51 GMT  
		Size: 48.6 MB (48643552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a83968d34fc41fa766d950210772d5f50c78a26b8549f3feb79c444ad6e78e44`  
		Last Modified: Wed, 06 Feb 2019 15:33:25 GMT  
		Size: 7.3 MB (7342529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca21562c0cbec64a6c6ea7bd50fd01a3cfff5ca91c8ffe3f6d9469380792b856`  
		Last Modified: Wed, 06 Feb 2019 15:33:25 GMT  
		Size: 9.9 MB (9854411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5022d8c606419ad4ccc73a028c144bf5597dda5f7abb151fd5a4dcdb2571e6a0`  
		Last Modified: Wed, 06 Feb 2019 15:33:39 GMT  
		Size: 51.5 MB (51529172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
