## `buildpack-deps:sid-curl`

```console
$ docker pull buildpack-deps@sha256:352167d20de91bab59701522cf8e967f0cd11458dfc0dc2a8a2dc089c32ab0ac
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
$ docker pull buildpack-deps@sha256:b70467170023b596bbd938ade86db66e43f02b8d54ef469a413384bcc6076060
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.3 MB (62257330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2914612c8b85229523999f9a529949bc1cb7e2c943dcc92795e95153d8397ff`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 12:05:39 GMT
ADD file:a03e2558b36105c53a68a3064a22313273ed3d28e338785fc91b482aafc646ce in / 
# Wed, 27 Mar 2019 12:05:41 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 13:09:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 13:09:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:10b13a095ef589d26e82bbb83fae57a71c62e84dac2b1fb806528f2b9b7632e0`  
		Last Modified: Wed, 27 Mar 2019 12:11:57 GMT  
		Size: 45.8 MB (45774821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:377969bb0947ea163bd219fa06e75dc143b5b1eb11721c90bd236e08c2b8164c`  
		Last Modified: Wed, 27 Mar 2019 13:20:18 GMT  
		Size: 7.1 MB (7085635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65db9a37d70af034179accf5dc26b6bfe918264fce2bfb7d3d1faafcd803fb81`  
		Last Modified: Wed, 27 Mar 2019 13:20:18 GMT  
		Size: 9.4 MB (9396874 bytes)  
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
$ docker pull buildpack-deps@sha256:def9b6bafa5179d237162e022b4fccf4603edb97af6bcd941380c565a148ad91
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.4 MB (69385837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3055e6e2d4984c4a0e504b6db50e4901ec45855c1fc0049d137571c6dc9aa1d2`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 10:41:58 GMT
ADD file:35788f1e7dcbb1ec1f7f2defd3659b41f24da20c68bfeab196967df87fc8e51c in / 
# Wed, 27 Mar 2019 10:41:58 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 13:53:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 13:53:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:4a9b095f08b70612fc43d5a6994ce29ec5bf30a08f4d667c9001e554c1087a6b`  
		Last Modified: Wed, 27 Mar 2019 10:48:02 GMT  
		Size: 51.0 MB (51036251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ac3f749258c84adbc388b501b458b24b72c90c3cf1af139bea2bebaeaf42599`  
		Last Modified: Wed, 27 Mar 2019 14:08:42 GMT  
		Size: 8.0 MB (7953730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08ce019039fc3caacd4821deda7e87d1571f28280ec42c867bba2a563d2c8288`  
		Last Modified: Wed, 27 Mar 2019 14:08:43 GMT  
		Size: 10.4 MB (10395856 bytes)  
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
$ docker pull buildpack-deps@sha256:8d4348b5674f28cd2d8db0c7124f98f9356ca1a51e8ece4690ec4b419297dc69
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.1 MB (66147820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b4b7c6105526fabb059b23b51612bbe26adea3f2d3addbc24bc1406efcba078`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 11:42:38 GMT
ADD file:36dcfde5a08a63c13bc857704c7de28a5770bc391a4ba334cc504fa9b2e753d6 in / 
# Wed, 27 Mar 2019 11:42:39 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:37:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:37:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:c261d71864e6171524f880b50b73807b618879f2c3f338e41e3a336f232a2e71`  
		Last Modified: Wed, 27 Mar 2019 11:45:45 GMT  
		Size: 48.8 MB (48849433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c271e6f477e8d30f77c6925e6b7912cd008a15591d93a621303a9390904980`  
		Last Modified: Wed, 27 Mar 2019 12:52:47 GMT  
		Size: 7.4 MB (7362642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1faea0f9c5c2a8a91eae3a15ca714a9f294010a20d4ecc89261f4b365654c48`  
		Last Modified: Wed, 27 Mar 2019 12:52:48 GMT  
		Size: 9.9 MB (9935745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
