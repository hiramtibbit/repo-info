## `buildpack-deps:testing-curl`

```console
$ docker pull buildpack-deps@sha256:0bbd768fb04bb5d8952efc8cd8f7e453bdd98f0e9dfe892de6e8558bb0e5a002
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
$ docker pull buildpack-deps@sha256:3e889f2c3f0b13fab8a81de6efc7bb8aefb8e48131b088c00d377ffd6ec7079d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.9 MB (67893824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63b9f6c8fdabd67d1998fdb1e0468257f0f20d5473e45c97fcd3ef5dbb0bd52d`
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

### `buildpack-deps:testing-curl` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:d71c1581815d8f1588d06eac1e389f62037fb75f2f3f6a1db4026f89aa76e025
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.9 MB (64872558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0b7e49f639b4499e49a8e3c5064f2a25ecf12f80bb0b0381386f2f846633c3d`
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

### `buildpack-deps:testing-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:986b6083f677ccbe5706ded5cdf909437a28f759a1a40f3163c7c31db05de07e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.0 MB (62032835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:872a468fea91374539337833859d380f3501fbacc9f45fe070a5f7d7c7731f03`
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

### `buildpack-deps:testing-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:3446743b80ce26117cd46547a9035bd71ae39cb3424d6a48f8c6f476dd0ae874
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.5 MB (66517815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79dae9f139bf5a880fd591e4b10ca459269f14e8bf15b562fcd12dcade7c0165`
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

### `buildpack-deps:testing-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:2ce15f667467725409744c449d89575d833b684e545deb8389af4bab14d78083
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.1 MB (69146504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b5d7520d08129c73a19ccfecbe588df50e3043edb1639e18c42192c5205ac4c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 11:58:07 GMT
ADD file:032ae36fc70b5e896838c38d33968573979a147ac7aeb7bad89a2a03a1e2ce6d in / 
# Wed, 06 Feb 2019 11:58:07 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 01:21:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:22:01 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:31428505a106aac9ed272a273932a2e2470eddd3ab51e27001cd15df87d8785c`  
		Last Modified: Wed, 06 Feb 2019 12:03:46 GMT  
		Size: 50.9 MB (50914560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8e546259cf7294fafe876629da13ebfd2a9e00da5753c2e2433fa1b9cf410b3`  
		Last Modified: Thu, 07 Feb 2019 01:56:38 GMT  
		Size: 7.9 MB (7924159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65700808c80368a80cea344ecdb5c0807bf86820adcc744d8f0f7d46311cbd7a`  
		Last Modified: Thu, 07 Feb 2019 01:56:40 GMT  
		Size: 10.3 MB (10307785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:a709cf65aa727c0f1a37db4bef90207c7f3af6836fcfc9e9a58a98cd0c64d4b1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.8 MB (72799360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5c8c5cdf4f9bd1ced898dd4409d3482b65e2ace0a32fabff7bebc6c5bd2aa0a`
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

### `buildpack-deps:testing-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:4901d92829b395c98e775f59f15340385055e5e225f1a2735aa204a5441cdb24
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.9 MB (65939891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbc441edf5c5dd3b27585f04c411e4d21a538e756cca981ddc7f78c00d14a61f`
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
