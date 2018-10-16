## `buildpack-deps:buster-curl`

```console
$ docker pull buildpack-deps@sha256:8259b91ef4d0b3624aa390280939bb1fea4c02bf532f3cd012486ef24405cf20
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

### `buildpack-deps:buster-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:61e2bca25f58794e6887ba7cc298c5c67e105883aa10dd105ac6c8328ac03673
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.6 MB (66596355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9be92ad93e50dbec66e64c51fe51a67989e3e87790b75e08f1887a08246dd44`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Oct 2018 23:19:46 GMT
ADD file:383d98905fbb0760c147b202cce1e9faf1a79022d01444216df307f52a461c13 in / 
# Mon, 15 Oct 2018 23:19:46 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 00:51:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 00:51:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:2cf2dc2b7cf341d06ddd2b70430cd0009e470a0a9f4b0eb06936df0cfe0992bf`  
		Last Modified: Mon, 15 Oct 2018 23:27:41 GMT  
		Size: 49.1 MB (49111873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa025c1eb1cda467ec34f848a5afdee5159e29a824bcb546fe67fab7a5140453`  
		Last Modified: Tue, 16 Oct 2018 01:06:37 GMT  
		Size: 7.1 MB (7086378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ca6a4b5953515431f3e21a5eaef5277dbe946ccf26fd4eccde33227ecaf81ec`  
		Last Modified: Tue, 16 Oct 2018 01:06:37 GMT  
		Size: 10.4 MB (10398104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-curl` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:e1604975e22dbd6b0470985a127874912d66ddd654383a0b9a59338e7558d1a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.6 MB (63617903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8d9a97a2a1288b1cb0cc04825c19a8479b090f79e7bd51ba6eca9d96ebded97`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 08:49:06 GMT
ADD file:72c1c9f078b771b572197a5f6e049afcafa13e20f76b817ab1ee48ab5b550d5a in / 
# Tue, 16 Oct 2018 08:49:07 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 09:52:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:53:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:986270a373f7181ef01d64d59559cc759017994335eb7c28c236d9ed58da5c40`  
		Last Modified: Tue, 16 Oct 2018 08:58:47 GMT  
		Size: 46.9 MB (46861990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8432a10db4b2b13a51151e57fa7be15ab4c23b025e9ab66055750fefe2216b06`  
		Last Modified: Tue, 16 Oct 2018 10:06:13 GMT  
		Size: 6.7 MB (6670491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cd1e2b7c3e2043c004c9057863c5978072ba7eb8b3184aa56dd448f3ca2cd62`  
		Last Modified: Tue, 16 Oct 2018 10:06:14 GMT  
		Size: 10.1 MB (10085422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:8b2aa6d17de5ccaaa7f75ed6a5c81a09128f7ada63dbd275cadd36af0ef7d248
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.5 MB (60458856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dca7160e69d5b358e9530ba0b2193de4ecc9da6c59e781120f428f0811680af8`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 11:58:11 GMT
ADD file:0ceda11c6c9224d1b7435e8e5e3c23ddd7726ed71b2771e3abca3c38f1837232 in / 
# Wed, 05 Sep 2018 11:58:15 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:32:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:33:06 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:9f558322d800ab476d4bbe205c48e9d0a6a1756493b4d73034069d06cf03297a`  
		Last Modified: Wed, 05 Sep 2018 12:07:40 GMT  
		Size: 44.7 MB (44669136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c92cb02b1d3f73d7c4e6ea01fbe27e511e70704c742b297765eaa009d0618730`  
		Last Modified: Wed, 05 Sep 2018 12:51:49 GMT  
		Size: 6.5 MB (6458813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2927f45f6bf438a9a52b830c769dccb7e36c6ec3cf7acc4719f66bd56ab4d56`  
		Last Modified: Wed, 05 Sep 2018 12:51:50 GMT  
		Size: 9.3 MB (9330907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:0b8b1cc65cb217e431678797c4bf167d657a7537c6fdce3b19fe7579d9540cbc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.5 MB (64486313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1708b69cf648d4f4d4cf458f48f414bdf7cea7baf352ca4f21b1228c8738182`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 08:40:40 GMT
ADD file:4857face4d6b661dcc7389904203bb3aedcdfeb0ceedc8b362dcc3636ac7459b in / 
# Tue, 16 Oct 2018 08:40:41 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 11:37:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 11:38:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:1ed8cd8fb3aa00c426f795dd579c1c7f16ed6d507fb199daa1900248272311ed`  
		Last Modified: Tue, 16 Oct 2018 08:46:20 GMT  
		Size: 47.3 MB (47316581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f263d5e42e5eb9d21509fd326000e0575d3b4e46c546450dc9f165412d014a71`  
		Last Modified: Tue, 16 Oct 2018 12:19:04 GMT  
		Size: 6.8 MB (6788429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:077bd122c26d8eff28bf2faf8d28334884c010a76ab8cf7071fd89e4ba8bc2f9`  
		Last Modified: Tue, 16 Oct 2018 12:19:06 GMT  
		Size: 10.4 MB (10381303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:28a60310afaeb9d2303464eda93d3ec051506fa3bc68d718e80e291eb3fbd84c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.2 MB (67171864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dff66862f8042828379809579cab32b8d3a20d74a985200d410830c281e65ee`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 10:39:13 GMT
ADD file:48a0f1cad5537efcb85c35a04bf729567cb43e4f2933d58f224ea9b6f4ea0d73 in / 
# Wed, 05 Sep 2018 10:39:13 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:16:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:17:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:ebad9676aa1aed92d8780b8945e7b41c7d941861b739301055b6d6a4756b5633`  
		Last Modified: Wed, 05 Sep 2018 10:47:06 GMT  
		Size: 49.7 MB (49720982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc16ed0a398e4173a251323e2744088b280e1ab1b08b048a657b3d6c05f6fd21`  
		Last Modified: Wed, 05 Sep 2018 11:58:23 GMT  
		Size: 7.2 MB (7228612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a43a235f8ea65aa76a75ea7f2b30cd85e584474890344a95b66debbaae592a6`  
		Last Modified: Wed, 05 Sep 2018 11:58:23 GMT  
		Size: 10.2 MB (10222270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:4f07394ae8c08d2e92e0ebd64caf31eb165c68ea2de30283f78ef11c8cf14770
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.2 MB (70225731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cf334ca59f00837d1d710c5d59c18c89d51c164c77a0646dafbc4bfecca16d0`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 08:18:28 GMT
ADD file:5e3e283f6be46586ee3aa52a0eabb62e6df9b0b9671787c071f2242904778293 in / 
# Tue, 16 Oct 2018 08:18:30 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 10:23:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 10:23:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:4235160846e98b63950bdc60bf58b6fe98639d8ce3eccc9fb3db19693e1df9c6`  
		Last Modified: Tue, 16 Oct 2018 08:25:05 GMT  
		Size: 52.0 MB (51955347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d33b4b49c83033b52eebc94bb8e03702ce959a8f1807dd9d7a2e342f1d6f25f`  
		Last Modified: Tue, 16 Oct 2018 10:59:56 GMT  
		Size: 7.1 MB (7076302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fb6581d99e16e9a8d24dea3573e043d600bf5478f636d686180eeea81ee2d1d`  
		Last Modified: Tue, 16 Oct 2018 10:59:56 GMT  
		Size: 11.2 MB (11194082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:d4a09a3cc63e7a7ba150bebd3bda368e5882c4380a464915c64e3010dc6f1320
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.4 MB (64361512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bceda641aabce40378c4720c71f91767e5c14f65b24c350c593e124fe8eef851`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 11:41:54 GMT
ADD file:1698a1fd27f8bd24d1c2d02bf9f3f029a3e885eabe1ef022aabd9e62aa164ebb in / 
# Wed, 05 Sep 2018 11:41:55 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:39:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:39:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:368eafd96dbf007872153dfcde0d76f5211cfb3717b092c482641893abb45b67`  
		Last Modified: Wed, 05 Sep 2018 11:46:40 GMT  
		Size: 47.7 MB (47734880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc6dd5fe20f5a468b38b8c58c0bda71c24866c03897381400eee83774fcb460f`  
		Last Modified: Wed, 05 Sep 2018 12:47:21 GMT  
		Size: 6.8 MB (6798874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5c810a37d442b7a0628fda098b9be716296fee3c3dbbce1f570aaa614060802`  
		Last Modified: Wed, 05 Sep 2018 12:47:22 GMT  
		Size: 9.8 MB (9827758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
