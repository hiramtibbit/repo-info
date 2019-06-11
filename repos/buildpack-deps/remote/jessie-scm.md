## `buildpack-deps:jessie-scm`

```console
$ docker pull buildpack-deps@sha256:79cadaa8aa6c5a6513285dccec6bb77a29027a867430dbf5ad71826ff9ad997e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `buildpack-deps:jessie-scm` - linux; amd64

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

### `buildpack-deps:jessie-scm` - linux; arm variant v5

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

### `buildpack-deps:jessie-scm` - linux; arm variant v7

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

### `buildpack-deps:jessie-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:074316cc36c2dbcc6fd8d04ee1e2d3c107ca2a2b7ed444eaae1416a33d0f90f6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.4 MB (118420043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94690c8f35e737640e871b9c26205c591182c50fe34f73aa81b7626789b4c72a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 10:42:11 GMT
ADD file:383a4648827e4920fc38f6ee93e3a1b0198694530961012a3ac4ff2b60d469f0 in / 
# Wed, 08 May 2019 10:42:12 GMT
CMD ["bash"]
# Wed, 08 May 2019 18:57:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 18:57:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 19:01:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6b6ce677eea2e67f795221107c4a01e07d07480fa9706aa20331a88f2a6f8617`  
		Last Modified: Wed, 08 May 2019 10:54:05 GMT  
		Size: 54.6 MB (54605091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7f48be8120c22e9a5375fa05aea15ce2e87362772a9df12046625d8fcaba344`  
		Last Modified: Wed, 08 May 2019 19:12:01 GMT  
		Size: 19.8 MB (19849905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05e2f0da43ea430545e5a12be0e5a2ef24f151c7a76853985342d7075ee644ce`  
		Last Modified: Wed, 08 May 2019 19:12:15 GMT  
		Size: 44.0 MB (43965047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
