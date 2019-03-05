## `buildpack-deps:buster-scm`

```console
$ docker pull buildpack-deps@sha256:ab3cec9aa40116df79c86c14ce1357f8e1f7bf6ea1811000c10635bb89d8d32c
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

### `buildpack-deps:buster-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:b165a96cee18cf9abc2ac89bdd656fa1c0baedb6d2c581b376162c293a6276cd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.7 MB (119673438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1208b7cff717921fa13fada8b2320fb10161977dd536481b289583b3efdf414`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 04 Mar 2019 23:19:56 GMT
ADD file:d272c1d83c768286bee82c0583c289bbc64661c4b528db2217208623331689d8 in / 
# Mon, 04 Mar 2019 23:19:56 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 02:21:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 02:21:24 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 02:22:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a5e86c41ccba20f8cc620ba9905a566083b6659ea5212c4ef78fdcc1a5d9ab32`  
		Last Modified: Mon, 04 Mar 2019 23:24:04 GMT  
		Size: 50.2 MB (50154948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61c073c9472fd3c1fa81088409b15f977b5701e40777e49f421f56d1c9e132af`  
		Last Modified: Tue, 05 Mar 2019 02:40:48 GMT  
		Size: 7.8 MB (7772500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:536125220d87c6f26705675f2d1f297043e0868397ea501e0db897da1b34d4f6`  
		Last Modified: Tue, 05 Mar 2019 02:40:49 GMT  
		Size: 10.0 MB (9966376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c66baacf7b04a87ece03dc2610807249438410410ad789f0af691459db07bdb4`  
		Last Modified: Tue, 05 Mar 2019 02:41:04 GMT  
		Size: 51.8 MB (51779614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-scm` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:bee9fe22c9a6f5f00eda0dc19418348323efe3be8c2cfdce21935bd07cd6ffb7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.4 MB (114389454 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0085d47027296a34ce92a41580ec5ee45734e564ae95b63a56705755d8e22e0`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:49:05 GMT
ADD file:4998fef42e86a8ef1cf1f73a98240a0b9b2dcd1b390cc60d462fbcdad67e1618 in / 
# Tue, 05 Mar 2019 09:49:06 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 10:20:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 10:20:35 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 10:21:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:2105c83f20696340f66a60f463e0934c7bae680b26c03ae56fe09cea8290d5ac`  
		Last Modified: Tue, 05 Mar 2019 09:58:45 GMT  
		Size: 47.9 MB (47881139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f283aab1647112fcff4ff09f98ffe57352fa3551a2a3a25aa1a263a5735088d8`  
		Last Modified: Tue, 05 Mar 2019 10:39:13 GMT  
		Size: 7.3 MB (7330435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:363a132a46f590b8eb2ca0be47d560cdd0dcc4629e0af4f85e7cd428620edcc2`  
		Last Modified: Tue, 05 Mar 2019 10:39:14 GMT  
		Size: 9.7 MB (9660984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71876fb202cde1f900d86818f03e7c8305f0765f98773f915f6a9b8cf70c1815`  
		Last Modified: Tue, 05 Mar 2019 10:39:36 GMT  
		Size: 49.5 MB (49516896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:f95bb099212deb8faf8d6bd9f7c8e74728089663b50d0590e9e8a74d7c932a5d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.3 MB (109337383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d9900b270d5ad9dffb231c306772913e8492c513b34a31653602914a381e385`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 13:04:44 GMT
ADD file:2ba192582fb2c0b337e48196c2698460a194d03e22e4ad12687c4f150d475994 in / 
# Tue, 05 Mar 2019 13:04:46 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 13:36:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 13:36:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 13:37:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a48c086c5e2001e71f1a2e0fe0dba658a521a7b873e880e45c8f67746a80c546`  
		Last Modified: Tue, 05 Mar 2019 13:14:52 GMT  
		Size: 45.6 MB (45639642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:770db833cb9de91deb8c935b59bcd4866449b397bf7b62de2282c822f11f8abc`  
		Last Modified: Tue, 05 Mar 2019 13:58:57 GMT  
		Size: 7.1 MB (7076114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:470b23df0815f7fcd22463426cfa2cb0dfe492818b404eb8b8f275653a10444d`  
		Last Modified: Tue, 05 Mar 2019 13:58:57 GMT  
		Size: 9.3 MB (9317079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac657404e47abd49b78a31177fd17c8be63325a8bdc36ec9afffcb76edb71741`  
		Last Modified: Tue, 05 Mar 2019 13:59:19 GMT  
		Size: 47.3 MB (47304548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:64b207ec945c4d4e7bb658a501f0c5e5f4404218d7548f7c17a4177acc004dda
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.6 MB (118619744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4acffb2150573d3ac3f7798180461c06180727faf1dcc75b84520f5151fd8c90`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:57:24 GMT
ADD file:12ef091554862fcbcdfa6327ef937066a1a7b188c75475358ec6dd86d0887b82 in / 
# Tue, 05 Mar 2019 09:57:25 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 11:08:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 11:09:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 11:10:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:2d5fe5a6667213b6265017ede7ed1288bfe048a96cd0fa39e416bd3c78de87ae`  
		Last Modified: Tue, 05 Mar 2019 10:04:04 GMT  
		Size: 48.9 MB (48921399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ade1480732fda91b38a1cd397faa752bfb69568e804d8e345551f464cee20f4c`  
		Last Modified: Tue, 05 Mar 2019 11:42:45 GMT  
		Size: 7.6 MB (7642249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d02f9c2f0ce2f5f79f2fb6ce0626d6237464867e913fd78350f847241b1b3a37`  
		Last Modified: Tue, 05 Mar 2019 11:42:46 GMT  
		Size: 10.0 MB (9954167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c7d0d69f0d0bf023d3b517a2e6137a7ca432042a41f2175624df16f0ad1c67`  
		Last Modified: Tue, 05 Mar 2019 11:43:15 GMT  
		Size: 52.1 MB (52101929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:7795c0411f9ff510a7ef5371c6e25855009857b915e2791f0446c8ba438e91b0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.5 MB (122538968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f78418afa62cd87dc28b28d14f8a4f1578984f3d7cb12525f6bbf9a92ace306`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 11:39:45 GMT
ADD file:13f327af89182501665dd89471b307a8c0b3ae23437ddeb7da2f1bffb908095b in / 
# Tue, 05 Mar 2019 11:39:46 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 20:54:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 20:54:35 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 20:54:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1b547c12a9a79a6d7efd6e0e99bc0c698e1df51905ed8d34f0fb576a33e69087`  
		Last Modified: Tue, 05 Mar 2019 11:50:22 GMT  
		Size: 50.9 MB (50916845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8097f3a05edb0db816f79d4186a3a1353362dc30c5fd5575ab1b6518fe5a35c1`  
		Last Modified: Tue, 05 Mar 2019 21:14:34 GMT  
		Size: 7.9 MB (7937959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce69f22f8f5b57df149ab1ca3151af16233920955eb20ed6262fb7dbcdd9b269`  
		Last Modified: Tue, 05 Mar 2019 21:14:37 GMT  
		Size: 10.3 MB (10310712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2230c46aa23eb9506eaa1f5c832e22d2d3e074906f9c0dc2b7e1f343c0cafa83`  
		Last Modified: Tue, 05 Mar 2019 21:14:54 GMT  
		Size: 53.4 MB (53373452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:d22ace3f039771d9384a35b320a63c34c21f58834c7a5a552f6767a094befab3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.2 MB (130193019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf4551d26088803e2b5bb90267400a4cfb502ddbf1131b97e4f5767c8dcce452`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:23:17 GMT
ADD file:34f28c3c6b1e14adff79a4efa60817a9790a5451d8687d5a704b09102cdb6b49 in / 
# Tue, 05 Mar 2019 09:23:21 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 12:23:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 12:24:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 12:25:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:4bf8a91dba8ad5095a7f8841a9a2cd585f42eca08498169a72a211ab6cb00b28`  
		Last Modified: Tue, 05 Mar 2019 09:28:36 GMT  
		Size: 53.9 MB (53876236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039592a094e75079e19a505447227635bf1d1c240536e6e9a60ddfd3a30d2c22`  
		Last Modified: Tue, 05 Mar 2019 12:57:25 GMT  
		Size: 8.2 MB (8218942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7ab98348edc95dda1e5ff51a5afa898f38f85df4f51bcac6d9de62792e34a0c`  
		Last Modified: Tue, 05 Mar 2019 12:57:26 GMT  
		Size: 10.7 MB (10704182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:130c8c086e60d82aec467053e5e346fb4c57ef74d05afdb1d26f421cbcc23051`  
		Last Modified: Tue, 05 Mar 2019 12:58:09 GMT  
		Size: 57.4 MB (57393659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:c4d170e2da730f8ead34311ba91ee71d8efbce1a65a64625d7ab73325fdcaeab
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.2 MB (117243043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:853bbc85d57dcfbe248def0ab16242c4a9fb19f0f65549bdbbc4438e121ea2f4`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 12:41:56 GMT
ADD file:e5027bc6f0310670ee8930b84a7e3ce671be0000267c8b568d7f0d13112b0f2d in / 
# Tue, 05 Mar 2019 12:41:56 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 13:30:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 13:30:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 13:31:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:931b689d4ee3f4f1d7abaf2ce3f02f09f00a2ead1ec2e5ab8150fc5bca993e10`  
		Last Modified: Tue, 05 Mar 2019 12:44:22 GMT  
		Size: 48.7 MB (48733424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:714c460d2e8818aa26138aaedd89c03ff6ad45f951f0440944086630d443b438`  
		Last Modified: Tue, 05 Mar 2019 13:38:35 GMT  
		Size: 7.4 MB (7353931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58747b0755b513c53be17c1fec99456bdd7705d5d22d8d8b73c9eb4ba8946fe0`  
		Last Modified: Tue, 05 Mar 2019 13:38:35 GMT  
		Size: 9.9 MB (9852536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1f2d0d8c14b4643d3a1eea936fc9175f74300cd403d95b261fc2188d46b1bd4`  
		Last Modified: Tue, 05 Mar 2019 13:38:50 GMT  
		Size: 51.3 MB (51303152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
