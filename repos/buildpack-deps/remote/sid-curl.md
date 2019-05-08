## `buildpack-deps:sid-curl`

```console
$ docker pull buildpack-deps@sha256:1d1c6e01dcfd60ec1f91d3adfc546213a775eb2b979236451d039da3d7ea175d
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
$ docker pull buildpack-deps@sha256:e3df1762efb09cd82d40caf908ed5001962eebb734e20de19a15569d212b645b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.2 MB (68179126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:136fc8c3e7fd4d5efb89706210d223f81d2c935c0f84d461853c9bcbfa25142a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 00:31:47 GMT
ADD file:fb47fe44d1e6b6b670253c11516570b51b7f0fb8b982c3f5d384146343df5f5b in / 
# Wed, 08 May 2019 00:31:47 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:38:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:38:13 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:0e46e397f892870613903a2484edb209778048886e5d00b27f9d4393280c94f8`  
		Last Modified: Wed, 08 May 2019 00:36:58 GMT  
		Size: 50.3 MB (50340155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9be41ac19f89ce322172dc112b6a1a0e0874c0e56225e16d4c79b68fdb1594d5`  
		Last Modified: Wed, 08 May 2019 01:44:41 GMT  
		Size: 7.8 MB (7789405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dedd06bdcacea2c0c2aa629225a58be0efcb08d2fdedf0ec094945fb41311f02`  
		Last Modified: Wed, 08 May 2019 01:44:41 GMT  
		Size: 10.0 MB (10049566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-curl` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:8d6a42c574607912602d528ab26dd9905f62899a7d9719e632d80669f37e0954
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.1 MB (65129068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbb48fbe618a372ba5ff8c7a53f767f730e03807dc48e64ee9701f0a037af725`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 08:51:39 GMT
ADD file:9413922e0450a981af5b854fd02d6462ae98edbc50dd0c86aa6b3a8980832488 in / 
# Wed, 08 May 2019 08:51:40 GMT
CMD ["bash"]
# Wed, 08 May 2019 09:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 09:58:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:9496df20a2df40133d2e133f1a23a2da3ac7d28df6d3546c7c2c7472da72acb9`  
		Last Modified: Wed, 08 May 2019 08:58:06 GMT  
		Size: 48.1 MB (48050033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5417c06ad026ad3d801aa2995bbc998beffb64bf2ab86ce2cbe85d7f2edb1a19`  
		Last Modified: Wed, 08 May 2019 10:07:58 GMT  
		Size: 7.3 MB (7339557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74c8f2b8abd7e42d4b50c64e06937eda45e7f2ccd07a12ebf83d769652259b7b`  
		Last Modified: Wed, 08 May 2019 10:07:58 GMT  
		Size: 9.7 MB (9739478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:241f3cb10e895919392b5c5c9d78aaa8a564b759e760b089a09c10c6d45e3b53
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.3 MB (62315771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d10b94a1cf63fb65ea5d3bba5fe4595c4d456172ced67cae3e305f6400a2e67`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 12:01:32 GMT
ADD file:3d32a1759251e5837e3cdae42fa906791e9c892300288e215950a176746a3cc8 in / 
# Wed, 08 May 2019 12:01:34 GMT
CMD ["bash"]
# Wed, 08 May 2019 13:00:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 13:01:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:67f8dba29ff4d738bafc60e2ad83ad23b287b7e75537c9c33df98e2f796090a1`  
		Last Modified: Wed, 08 May 2019 12:08:32 GMT  
		Size: 45.8 MB (45832013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6415f7154015cc2cc8de167510849ae48a78c93082ce491bf1ab1d1e4068e041`  
		Last Modified: Wed, 08 May 2019 13:10:48 GMT  
		Size: 7.1 MB (7087006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c11e29d2e316f6761be080b7f24445c92ed61249f247272c9bb576b876206aee`  
		Last Modified: Wed, 08 May 2019 13:10:47 GMT  
		Size: 9.4 MB (9396752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:a58bf65e3aa34c5ac5d3c34f32f3dfb31fbf2bd3a75a9fef2964a205c5bd3d20
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.8 MB (66835130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df66ba984a576702712ffb1da43cb9b18eabeab953c912ba3773a61fb5c365bc`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 08:46:04 GMT
ADD file:b772d60d99de58b0a77b838a9ea76bd80e74fea967941bf2dce602f95189ef47 in / 
# Wed, 08 May 2019 08:46:05 GMT
CMD ["bash"]
# Wed, 08 May 2019 11:39:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 11:39:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:af42c3f242f1fc5a2e7df41c4d9800290f2083187f3b36bce1cb6b2248ff6d7d`  
		Last Modified: Wed, 08 May 2019 08:53:12 GMT  
		Size: 49.1 MB (49132069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d4c9a49a9f229f6eeeaff3b09729a10c9e150ccecfe7a5aa69fb6509106d003`  
		Last Modified: Wed, 08 May 2019 12:05:14 GMT  
		Size: 7.7 MB (7663884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f6720045851b7c9d3e1bd1ff59aa5a017be98e284bed4778a9a683244f2bb13`  
		Last Modified: Wed, 08 May 2019 12:05:15 GMT  
		Size: 10.0 MB (10039177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-curl` - linux; 386

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

### `buildpack-deps:sid-curl` - linux; ppc64le

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

### `buildpack-deps:sid-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:5a297785231386ded305c201bbc2355d2d9d3b3880971b6d925c9abadd4aea04
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.2 MB (66204220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8455c9b5913a879a1f4f6fcf2eed9831df515fa8620c6cc5911f657fd71d2a9`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 11:44:28 GMT
ADD file:74d6614cffe0580ce0783d578d9a77ee371dfd88d2a26ad3c2baa99055454578 in / 
# Wed, 08 May 2019 11:44:29 GMT
CMD ["bash"]
# Wed, 08 May 2019 13:43:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 13:44:01 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:50f7d14cb4a5dff38bf6abd5712e460bc2317ae09a78fc33ea4be272b3dd853f`  
		Last Modified: Wed, 08 May 2019 11:51:07 GMT  
		Size: 48.9 MB (48904096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e289e03b386b5bcded271ce71f262d941634ea0de57641f2fcbd1f40145ae92`  
		Last Modified: Wed, 08 May 2019 13:58:30 GMT  
		Size: 7.4 MB (7364532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:944c481898edc8b54b8c199bb0e32c8bb3d20c7caf5900c2283c8e382fff521e`  
		Last Modified: Wed, 08 May 2019 13:58:30 GMT  
		Size: 9.9 MB (9935592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
