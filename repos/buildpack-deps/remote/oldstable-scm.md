## `buildpack-deps:oldstable-scm`

```console
$ docker pull buildpack-deps@sha256:44d0d909383bb6976c231000af4bcf7988a84afff293270b3df8fdc8af0d3483
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `buildpack-deps:oldstable-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:6bd2776d74d719e65182879bb2018e89d11b888f48a6ee15f6c5a37c49b0d0f5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.3 MB (115294529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff4716f45595e420cd014980e13d04c2913fa51c49976f3c46cbd4aa1532d207`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:22:09 GMT
ADD file:6f4dbeacd2c7a48941d1b7aacc0e881df9cd6e3c2bcc54665038e0f2e29c7ac1 in / 
# Mon, 10 Jun 2019 23:22:14 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:19:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:19:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 00:22:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9811207f4ebad5e666eddf6e1684e4eabe16efc94008f77fc6fd17f02c583d17`  
		Last Modified: Mon, 10 Jun 2019 23:26:18 GMT  
		Size: 54.4 MB (54385835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c8f4d0494dc910e90a45519fd46ead7a76c43073a36a726ddcedbdfafbd80cf`  
		Last Modified: Tue, 11 Jun 2019 00:35:12 GMT  
		Size: 17.6 MB (17572182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1954412987c0e1cf159da814c1b3207d08c9251c518b5d44e06e79e9c9cde7cd`  
		Last Modified: Tue, 11 Jun 2019 00:35:34 GMT  
		Size: 43.3 MB (43336512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:oldstable-scm` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:951182f77aa170b290aac504076474420ddd4b21085f652c571a93c3060d6711
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.8 MB (110764090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5c5d31f04d69e2c6d0bab437adc4ae1c730d66badf80283dd9a2487e96145ca`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:49:59 GMT
ADD file:7f8109dd37b2c20302f7a90e042e3dca781757478e499034c546fb898e6fc96e in / 
# Mon, 10 Jun 2019 23:50:00 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:21:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:21:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 00:23:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:5d91a8f5de0e5f384568f40fe9ac89414f2afbdb38d7744ff944cead02827c60`  
		Last Modified: Mon, 10 Jun 2019 23:56:45 GMT  
		Size: 52.6 MB (52575080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac0dec262b7c726fae31a74bd90e247b518c277ca6a002ff602d64dc6155b6bb`  
		Last Modified: Tue, 11 Jun 2019 00:35:42 GMT  
		Size: 17.0 MB (17032638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6dacb207d51051ee37677f5c407bb85a3fdc5abb0defbf13f5a65a2b825625f`  
		Last Modified: Tue, 11 Jun 2019 00:36:02 GMT  
		Size: 41.2 MB (41156372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:oldstable-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:67c82a7ab87be67cb0f788c528a9972ed4c945d3c239267e7391aa895985165d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.8 MB (106783124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0542cfeebf554f03e5d64cf00c666c097db51ecb8e01201c3e2e34e7e11c029f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:58:52 GMT
ADD file:fd38fec1d1ecba98d40ef09479860aea406e5721e9752fa0c1d231944306c438 in / 
# Mon, 10 Jun 2019 23:58:53 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 01:00:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 01:00:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 01:02:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ad656537a00a24adfe5e93daf249c9dad7f6db57aacfc13bacd0416aa3f5199e`  
		Last Modified: Tue, 11 Jun 2019 00:06:42 GMT  
		Size: 50.3 MB (50297275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3c0f42b2bf8f8b361bf0098ee7a640f6f7180ffbf3de0f2095ffdabc3eed02f`  
		Last Modified: Tue, 11 Jun 2019 01:14:55 GMT  
		Size: 16.7 MB (16718940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:618d721683e919ce8bc587b61b28f5500da44bad1b157f852ccad82502ed9810`  
		Last Modified: Tue, 11 Jun 2019 01:15:16 GMT  
		Size: 39.8 MB (39766909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:oldstable-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:bcd48ba490592a4837585d5c5ace5fd65c63866b1e2efe9d1f7e476685f62475
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.4 MB (118420166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f73226d49a045625649f81c43e0278dddf582a99db68bdf4fef2dae338323d68`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:39:31 GMT
ADD file:262f4293ed178c11f8c64854276cb136c09ea3739d168a680c82be9d87caa99e in / 
# Mon, 10 Jun 2019 23:39:32 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 02:47:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 02:47:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 02:51:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:94e5a6c6976290c52800f8923e6a09c3c489f135c16b6112e5af439a1b55477c`  
		Last Modified: Mon, 10 Jun 2019 23:43:37 GMT  
		Size: 54.6 MB (54605215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf9f96e642caa8c6c308eba7bfea58ba6454f6b7034b2f369b839d06e3195ff1`  
		Last Modified: Tue, 11 Jun 2019 03:07:37 GMT  
		Size: 19.9 MB (19850010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38bc0252de1798744d259c4d9f9916ca06d8def06e20f75eeb9e08bee54c364d`  
		Last Modified: Tue, 11 Jun 2019 03:08:03 GMT  
		Size: 44.0 MB (43964941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
