## `buildpack-deps:sid-curl`

```console
$ docker pull buildpack-deps@sha256:10f066216079efcc5cadb8bc9d510af6783e19eb68ef99b5b05ad7fc83a7b0da
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
$ docker pull buildpack-deps@sha256:c8f4e1836dca7610fb166d3ad94c9fda021bcd0aca7cfafd2294551efd721a17
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.8 MB (66764019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63e6ae9a22b8096f419f7d1ba7a8a4532cfadae153a9980fd1dccbd942f8d3f4`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:45:41 GMT
ADD file:68cb85d4af7b927b8543f3786f7ca7100ac3b9c18b420b47dac25daf5799832b in / 
# Wed, 27 Mar 2019 08:45:42 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 10:05:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 10:06:18 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:ec45e1f43eaad20885a807eff4b048b1dcf620827bffc3e1060a75bb358a1c7a`  
		Last Modified: Wed, 27 Mar 2019 08:51:07 GMT  
		Size: 49.1 MB (49075641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba7d470ff2f1e2e1bcb47aa4cd6dd5490bc5d3c4e107dca4f28c486928335e6c`  
		Last Modified: Wed, 27 Mar 2019 10:34:03 GMT  
		Size: 7.7 MB (7652313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b807aee712d82fec33d798a7daf3c4aa366089bde485475e5050b45c0d85aad`  
		Last Modified: Wed, 27 Mar 2019 10:34:03 GMT  
		Size: 10.0 MB (10036065 bytes)  
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
$ docker pull buildpack-deps@sha256:b8d322ab20d54304a73f64321cd5b806d2c785cd53fd47c66f1481f22c88a985
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.0 MB (73040681 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3553e3566bb9c27a0569374616e94a8b1eac80ce80bf0ccb3c398db1d55978bd`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:23:25 GMT
ADD file:a95861734bc310e50b882d74e42d04bbd062e0e399fad88a4514440fa4d6c983 in / 
# Wed, 27 Mar 2019 08:23:29 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:18:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:19:47 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:de010fce00f5a67d16b84c1807875f16c577630cf29414a47d72c806e1dd7fdb`  
		Last Modified: Wed, 27 Mar 2019 08:29:58 GMT  
		Size: 54.0 MB (54027867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc8973a9087cce195d08df0036cbd4ad7947844d92995a1c5a4715d7f60fc6f2`  
		Last Modified: Wed, 27 Mar 2019 09:48:50 GMT  
		Size: 8.2 MB (8222691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e5c4202494b5950b1fb154e8321cc6aaf924e6142ba18ebfb4d8cc7c4a39aa9`  
		Last Modified: Wed, 27 Mar 2019 09:48:50 GMT  
		Size: 10.8 MB (10790123 bytes)  
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
