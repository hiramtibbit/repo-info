## `buildpack-deps:unstable-curl`

```console
$ docker pull buildpack-deps@sha256:06fb63b8cf7e657fc726d8c4d0170ee39407368f8d7978a02cd49b9025a6a777
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
$ docker pull buildpack-deps@sha256:aaa3341510e717722ec063f1a21c5b53505d291f1214be41a0440102d1d8d928
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.5 MB (67466429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35a3c6a2423df361622becfc1ef4955b7ff72faaea42b5ff1148dd9130c7cc3c`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:27:16 GMT
ADD file:a8b53d71a5992a0dcc8277eacfbc2320c583cb4afb386a3af91f143319dab415 in / 
# Fri, 28 Dec 2018 23:27:17 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:02:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:02:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:6d3c280df34afe0f4fab360f1675e991cbd7c97ec4d88098c1ec85ce64746aab`  
		Last Modified: Fri, 28 Dec 2018 23:35:07 GMT  
		Size: 49.8 MB (49797033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90a9494815e4cca6f6c58b6a569316db2831809cb1f53f3d53253624ac0aae89`  
		Last Modified: Sat, 29 Dec 2018 00:20:29 GMT  
		Size: 7.7 MB (7703466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f3608709f6cb36e535319ab3567536bb147e1e9b743a26c680b14cc63c983ef`  
		Last Modified: Sat, 29 Dec 2018 00:20:29 GMT  
		Size: 10.0 MB (9965930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:unstable-curl` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:88d6449106b5fd3c704b3eda54e750e4372f2f42730fd54cb0142a42004ae3b7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.4 MB (64386965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9890739e4d5de9f5692970b438d379a6a9c26da996a1833055a460e9085c3dd7`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 09:53:14 GMT
ADD file:bbf3d04b1ab90755a373631c3624fbab9db5026135c8d50af94b7dbe10c2dac1 in / 
# Sat, 29 Dec 2018 09:53:15 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 10:30:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:30:31 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:56a0afd770bd9b2fec7b7f148f23cee78c5c9c969a9d714c127b97598862f79d`  
		Last Modified: Sat, 29 Dec 2018 10:01:51 GMT  
		Size: 47.5 MB (47474125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb55adba1c8ee15586b82dbbe62f3ee01c9f99f05e59bd5333da0dda3d2c68f`  
		Last Modified: Sat, 29 Dec 2018 10:42:19 GMT  
		Size: 7.3 MB (7253840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebcaf20e7cc65a07b29893ee04946eb5d5fa9256532d7a99fedcf368574c5a81`  
		Last Modified: Sat, 29 Dec 2018 10:42:19 GMT  
		Size: 9.7 MB (9659000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:unstable-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:b0d0137b28762f76ca9188f4c267ceffff49cff1d2475fff0e9788c17fdec2a6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.6 MB (60649376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3287862bad2da0ae832de5f0aacc1d37a6ba1c2e877451476ee63331a2584add`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 13:06:12 GMT
ADD file:4182d54a140ffdace3af2db1d2632f4271c1b1754fbc78075c0813d49212e466 in / 
# Fri, 16 Nov 2018 13:06:14 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:14:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:14:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:fdd94773a9e48362892e21476e28eead609d35afebea9220515e313cc45e9b67`  
		Last Modified: Fri, 16 Nov 2018 13:19:04 GMT  
		Size: 44.8 MB (44797919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:170ebfdb451da69aec8b40173375cf38f87f1e39085d2072e246796c09c6738c`  
		Last Modified: Fri, 16 Nov 2018 18:29:31 GMT  
		Size: 6.7 MB (6703425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29e9929c695e5dc9cd495d9b50731f7cabfba0a93fbe0c8c039f86c25531c0dd`  
		Last Modified: Fri, 16 Nov 2018 18:29:31 GMT  
		Size: 9.1 MB (9148032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:unstable-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:4193549d7dace6ad26c640edf02c559967857659a624937dbceab31f939db840
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.6 MB (64635632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7b7d47f0020070da86791e18fc4a13ace446fff2783c241e9fd5ab79e13d010`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 10:10:09 GMT
ADD file:832a9af57620f627dd172e1887e8dd24971e52fd5eee7d5f5d2a43532d6be776 in / 
# Fri, 16 Nov 2018 10:10:17 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 02:17:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 02:17:47 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:3da09231e583a9a3b7103f6be2d0679bc461005f2d2ff624366b0eb98f3dbfd5`  
		Last Modified: Thu, 15 Nov 2018 01:31:37 GMT  
		Size: 47.6 MB (47624414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9075e353d5a562472189e3052838c7ae3ae6d1010aaaa24fdee045e71c553ecb`  
		Last Modified: Sat, 17 Nov 2018 02:47:14 GMT  
		Size: 7.3 MB (7251197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:645fc9dd9541251810eb8e2a2465a257a66a4c0e930c37f2b9233063083fffdf`  
		Last Modified: Sat, 17 Nov 2018 02:47:14 GMT  
		Size: 9.8 MB (9760021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:unstable-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:4f93e86541ac38a7b72f7c4d82d44331d943b0f517aa34b7c95359337b2f480d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.6 MB (67570801 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8bc5192bb8188f8af21ea8558a9bffc444e4d74502bc922a55f3b8813ec5e0a`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 12:32:10 GMT
ADD file:35a7a6d82265a9aaaa338d026c69123fcf5a876f04c62aa8b8576e728eb2d703 in / 
# Fri, 16 Nov 2018 12:32:10 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 11:20:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 11:20:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:aa30602b1807a2d186d63c50f118d4f15cb29b1b571140414c0bfc373476f654`  
		Last Modified: Thu, 15 Nov 2018 01:33:39 GMT  
		Size: 49.9 MB (49936516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8ad8c93fe5a088ae5005cfe50a1ef475d4f0e1a97371d56db68fc08705a03df`  
		Last Modified: Sat, 17 Nov 2018 11:45:39 GMT  
		Size: 7.5 MB (7524919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ece88fa739651725b15edad9d926c3b46176bc8e5ea97bfbb390ed5a132223d`  
		Last Modified: Sat, 17 Nov 2018 11:45:39 GMT  
		Size: 10.1 MB (10109366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:unstable-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:8b38efb8a816bc723de45b4398f7ad891a861f0413e59f749f11d67c127bc11d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.2 MB (72248341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f03c1432cb60d37ca114e85118b38bf51d501e743c00415e507a418d9d28b41`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 09:20:43 GMT
ADD file:2554b79107be415058aa9583ae616c4dbdf53850afe279b6b57c6f4d6cc9b0b1 in / 
# Sat, 29 Dec 2018 09:20:44 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 10:27:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:28:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:3e4b2e95f4e41a9cad6c746f1dc0185d059f9b9eacd1287be8d39d0709e4182f`  
		Last Modified: Sat, 29 Dec 2018 09:26:10 GMT  
		Size: 53.4 MB (53407199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d50534b4ae7aac86bc7ccfd4d3cf882820ceaccc4678c0271d9eb539fc55401`  
		Last Modified: Sat, 29 Dec 2018 11:16:08 GMT  
		Size: 8.1 MB (8137820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf43e2e8204d6afcb3f7773107fe0f36295ce802ad9ecf5148a5943555e1ecd0`  
		Last Modified: Sat, 29 Dec 2018 11:16:07 GMT  
		Size: 10.7 MB (10703322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:unstable-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:eeb97d709dc787e95213939abb06fa8dfe7108162988ad36da29debfb202a72e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.6 MB (64584108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbb983b4b25ac9d40c90a5508daef52cd8f9330f9dbfdd7d542527a62eea8656`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 12:42:33 GMT
ADD file:77fbcf3a7fd8e7c1d35c9b0144f5dcef5228f477c512b3de313b5f9f8106c20b in / 
# Fri, 16 Nov 2018 12:42:34 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 20:14:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 20:14:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:b5f718c394fe29f847c837a4abaeea5358350a23da072857d9a17d7b3f835ba6`  
		Last Modified: Thu, 15 Nov 2018 01:49:01 GMT  
		Size: 47.9 MB (47868485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41806c8eb45b71025055bb1e6fd1976203b50f81a43cd4d17ecd2e08bf1ca416`  
		Last Modified: Fri, 16 Nov 2018 20:22:12 GMT  
		Size: 7.0 MB (7044644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:311646161ff8988e1dbd14a16907d30a4e22f1b324c178e21580877b40c200d0`  
		Last Modified: Fri, 16 Nov 2018 20:22:12 GMT  
		Size: 9.7 MB (9670979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
