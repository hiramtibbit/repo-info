<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `centos`

-	[`centos:6`](#centos6)
-	[`centos:6.6`](#centos66)
-	[`centos:6.7`](#centos67)
-	[`centos:6.8`](#centos68)
-	[`centos:6.9`](#centos69)
-	[`centos:7`](#centos7)
-	[`centos:7.0.1406`](#centos701406)
-	[`centos:7.1.1503`](#centos711503)
-	[`centos:7.2.1511`](#centos721511)
-	[`centos:7.3.1611`](#centos731611)
-	[`centos:7.4.1708`](#centos741708)
-	[`centos:centos6`](#centoscentos6)
-	[`centos:centos6.6`](#centoscentos66)
-	[`centos:centos6.7`](#centoscentos67)
-	[`centos:centos6.8`](#centoscentos68)
-	[`centos:centos6.9`](#centoscentos69)
-	[`centos:centos7`](#centoscentos7)
-	[`centos:centos7.0.1406`](#centoscentos701406)
-	[`centos:centos7.1.1503`](#centoscentos711503)
-	[`centos:centos7.2.1511`](#centoscentos721511)
-	[`centos:centos7.3.1611`](#centoscentos731611)
-	[`centos:centos7.4.1708`](#centoscentos741708)
-	[`centos:latest`](#centoslatest)

## `centos:6`

```console
$ docker pull centos@sha256:ea82d46ce4a56f7eb10fd12080496c8c41ba6f3c2c9cef05ce18b40208e48e6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `centos:6` - linux; amd64

```console
$ docker pull centos@sha256:f69fc0c13d7df456ff80ae54fa1206e0d3e95848811029d96e73fcf5ff3e8556
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.1 MB (70077563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26cb1244b171480b705ab05afda5df29bd077a0703f8ba4431ea3042b6bdbb4d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 06 Mar 2018 00:48:49 GMT
ADD file:451b31a3892e00fcc44fd9be8cb169b6a2a411d5e90cc325596268dda59c2047 in / 
# Tue, 06 Mar 2018 00:48:49 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20180302
# Tue, 06 Mar 2018 00:48:50 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:e09ea867b78410323dc16db6cfe61f2a9e95bbbbee7f71737333117f0a299234`  
		Last Modified: Tue, 06 Mar 2018 01:06:17 GMT  
		Size: 70.1 MB (70077563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `centos:6` - linux; 386

```console
$ docker pull centos@sha256:8cbdb7c1840fb056355cd6e7c9ab6ef2b359c9812281323143bd614545e3b426
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.3 MB (70270900 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cda930ce91e0f26284e84d35b5285dcfc882b0146b672a04516e7806de121370`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 09 Jan 2018 19:37:35 GMT
ADD file:391cabf8e1a038f6d8cbb6e4b836219e80995bc5fd48b1c5314ca5e8449683e5 in / 
# Tue, 09 Jan 2018 19:43:55 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20180107
# Tue, 09 Jan 2018 19:43:55 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:c094d16b010875da580873fed895f8d2df34b653da944cfd1d4287b80d8be297`  
		Last Modified: Tue, 09 Jan 2018 19:47:09 GMT  
		Size: 70.3 MB (70270900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `centos:6.6`

```console
$ docker pull centos@sha256:ba9fbbcf6e957b480c6721f0e2abced5082b690d87342a7efd95df6f662c2c2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `centos:6.6` - linux; amd64

```console
$ docker pull centos@sha256:915f3f45166618913d02c9d7b14eb8fd28540d4a36393918c7ade74e153a89c2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.7 MB (73694253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d7ac13b921a506e2e985f56542903c00dd1aa35a530fffa46f9a89786219b49`

```dockerfile
# Fri, 03 Nov 2017 22:32:47 GMT
MAINTAINER The CentOS Project <cloud-ops@centos.org> - ami_creator
# Fri, 03 Nov 2017 22:33:45 GMT
ADD file:a5c79d873c20d685b71d899211c5d58b90c08473604aba82a9d655a58fcd1488 in / 
```

-	Layers:
	-	`sha256:f9f73d801f0558b085ffa505240a065319269c4cefbe9c2e60103d58761edfa8`  
		Last Modified: Tue, 15 Aug 2017 23:38:22 GMT  
		Size: 73.7 MB (73694253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `centos:6.7`

```console
$ docker pull centos@sha256:7248c96de4648749c7936f203d983530e7ebdd83c3db6d47278392f18bcd7baf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `centos:6.7` - linux; amd64

```console
$ docker pull centos@sha256:8465fb658e41f38894b1f7f05b9d5709c9f7b22cc4cb6287f4bfd3525e44e965
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.8 MB (67814264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:000c5746fa523e3e4150a91909ef6236ff4c063f0b1e5c8c2acedf5982175284`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 03 Nov 2017 22:32:37 GMT
MAINTAINER The CentOS Project <cloud-ops@centos.org>
# Fri, 03 Nov 2017 22:33:34 GMT
ADD file:b32a37ee272e6ae1740be193cc0947edaf5cda5d428feaf347a4afb571042bc1 in / 
# Fri, 03 Nov 2017 22:33:34 GMT
LABEL Vendor=CentOS
# Fri, 03 Nov 2017 22:33:35 GMT
LABEL License=GPLv2
# Fri, 03 Nov 2017 22:33:35 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:cbddbc0189a05ef8d3ac344a82cb5cf43279e80004433782cc7874b487f4a9a7`  
		Last Modified: Thu, 27 Jul 2017 04:22:26 GMT  
		Size: 67.8 MB (67814264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `centos:6.8`

```console
$ docker pull centos@sha256:147bb07a3a271ae84d53fbf7f619b00929c332845e389b7423f15d618236acd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `centos:6.8` - linux; amd64

```console
$ docker pull centos@sha256:fff29edd6a84e7ad8b92b27587cbb53635243c987f905adb8248d6c5327a6e6e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.2 MB (70230972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6704d778b3ba4fe03d49a26c92b5fe58d6212877c30cf7f58d47060f30ce3ee9`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 03 Nov 2017 22:32:37 GMT
MAINTAINER The CentOS Project <cloud-ops@centos.org>
# Fri, 03 Nov 2017 22:33:24 GMT
ADD file:beeefa390db7bc02afe6a885fecdd835435d30121252a0caf1f9215bd8e37fc2 in / 
# Fri, 03 Nov 2017 22:33:25 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=2016-06-02
# Fri, 03 Nov 2017 22:33:25 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:b268bb2f98b209d55d0687166e0854ce43f687dd4141a26c708e24fa81c81093`  
		Last Modified: Wed, 13 Sep 2017 14:49:34 GMT  
		Size: 70.2 MB (70230972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `centos:6.9`

```console
$ docker pull centos@sha256:5cf988fbf143af398f879bd626ee677da3f8d229049b7210790928a02613ab26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `centos:6.9` - linux; amd64

```console
$ docker pull centos@sha256:db54f4bd5c413ffcd8c787176d498e992122ba1347a56b1492502b09dffbb21f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.2 MB (70185621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fca4c61d0fa79b166147cb5553d43c0c3a52989c07a82451d80207799b4d23f9`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 03 Nov 2017 22:33:15 GMT
ADD file:b99efdfca7b4df4efa121b94bc7cc76539df7f41e72c7413d5eb24dcf0b41bfc in / 
# Fri, 03 Nov 2017 22:33:15 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20170406
# Fri, 03 Nov 2017 22:33:15 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:993c50d4746993429b177fdd4ef15b886d36e376c52b0a69b3ac964f1250de69`  
		Last Modified: Thu, 11 May 2017 08:02:02 GMT  
		Size: 70.2 MB (70185621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `centos:7`

```console
$ docker pull centos@sha256:5bfbcce576f4c0694e2b81df4ded44107d80b02689cbe29a6d01f990c11ec0d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `centos:7` - linux; amd64

```console
$ docker pull centos@sha256:8c7ac054adab3692f7026d49fd1c4df69aa6a138b2f076b432d2ac0164c022d3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.0 MB (72980725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d194b392dd16955847a14f969b2dd319251471ffa6356be6d8f16c5bf53db9b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 06 Mar 2018 00:48:12 GMT
ADD file:8d83f3e2c14f39e7f7b281117a45e245c1941668f2d560e9f7ac23da89d667a9 in / 
# Tue, 06 Mar 2018 00:48:12 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20180302
# Tue, 06 Mar 2018 00:48:12 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:5e35d10a3ebadf9d6ab606ce72e1e77f8646b2e2ff8dd3a60d4401c3e3a76f31`  
		Last Modified: Tue, 06 Mar 2018 01:04:21 GMT  
		Size: 73.0 MB (72980725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `centos:7` - linux; arm variant v7

```console
$ docker pull centos@sha256:73db5b3060b35e836f1b76b3092a90d69d2c1a8f9c63f6faa5001ffb06427dc0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.1 MB (68145089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1401c2e2000f1cdbabd042b0980c9b6c73db0a947dc570cb5f29f83e9168458e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 27 Feb 2018 09:56:51 GMT
ADD file:35eeed82a9ca06d14652993b094705c50b0cde21504e39d1417fb87faa5e56e8 in / 
# Tue, 27 Feb 2018 09:56:52 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20180223
# Tue, 27 Feb 2018 09:56:53 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:90cbd92df8d88778ecc26163bfd74ef5c02ba87fda70bb52346ecfbd6ed678d7`  
		Last Modified: Tue, 27 Feb 2018 09:57:27 GMT  
		Size: 68.1 MB (68145089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `centos:7` - linux; arm64 variant v8

```console
$ docker pull centos@sha256:77b9ced9d4996732f57d098d172d14cad943eac7a9594b091997e07d6a8469b7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.5 MB (73473778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:252f40a2e842ec04ef908b188c1b4ab6c688c2832b5dacf11b7f39e4d22e9650`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 08 Jan 2018 20:32:08 GMT
ADD file:b68d3a68915b721c6469f363505f8af9ae52080fca627b4cf6bf0cd16aaefcf0 in / 
# Mon, 08 Jan 2018 20:32:09 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20180107
# Mon, 08 Jan 2018 20:32:09 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:40c388956b41d956ab7fbccfce5f9b8a5a376801060b542cbcd3b5c19d69464e`  
		Last Modified: Mon, 08 Jan 2018 00:49:55 GMT  
		Size: 73.5 MB (73473778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `centos:7` - linux; ppc64le

```console
$ docker pull centos@sha256:baa72b3dd87d3eb9b7b5c2c53f694bf2138310d5c6cf8e107e4f2c93112131f7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.8 MB (75809171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e831a7031b3ca77611a277cf98ba77695abc85178271df49bcb15a6a6e0eea52`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 06 Mar 2018 18:20:26 GMT
ADD file:78d57f0a6b24dc9e5bd921af7f2c00fc0eb8cad01b6aab72f45956c858cf7e9a in / 
# Tue, 06 Mar 2018 18:20:29 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20180302
# Tue, 06 Mar 2018 18:20:31 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:fb54d88211961c2e1fcf88e35f8445f309dc52596be2115c8aaad80716f84032`  
		Last Modified: Tue, 06 Mar 2018 18:21:01 GMT  
		Size: 75.8 MB (75809171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `centos:7.0.1406`

```console
$ docker pull centos@sha256:c3f0576cc915592e01e44cf4ae795dbefc1a7bad0d1c07677cdc59289230403c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `centos:7.0.1406` - linux; amd64

```console
$ docker pull centos@sha256:4610671f25d27875bb832d165dfdd9fcbf693b098568d8605f15bd08ff11336c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.8 MB (76788795 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:284549eacf844851fd544d8b39c109f9804a6afa41e9ad767a25366f271f99a3`

```dockerfile
# Fri, 03 Nov 2017 22:32:47 GMT
MAINTAINER The CentOS Project <cloud-ops@centos.org> - ami_creator
# Fri, 03 Nov 2017 22:33:05 GMT
ADD file:6a409eac27f0c7e04393da096dbeff01b929405e79b15222a0dc06a2084d3df3 in / 
```

-	Layers:
	-	`sha256:1fc5dabcd32d4d92fb8e61dc68b9c2bf3f0498f88302a868aad63c0899c1c10e`  
		Last Modified: Wed, 13 Sep 2017 14:48:28 GMT  
		Size: 76.8 MB (76788795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `centos:7.1.1503`

```console
$ docker pull centos@sha256:971669f975ea13bba21ad975992dac10f55f45ea6c557f6459e57b5b7f4d48cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `centos:7.1.1503` - linux; amd64

```console
$ docker pull centos@sha256:3fdb8d48b318f3a174551a04a142bd62b20c177a3cade3e70c3a0038bd59041b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.4 MB (77374769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbe8925ecf55b55d4247453d7d28c79b3b4943792d890f2d889b5a38bb753028`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 03 Nov 2017 22:32:47 GMT
MAINTAINER The CentOS Project <cloud-ops@centos.org> - ami_creator
# Fri, 03 Nov 2017 22:32:54 GMT
ADD file:0dd14af9c86c705779784ad9c5162130f3e68974b427beb38d47ba87f33f6c9c in / 
# Fri, 03 Nov 2017 22:32:55 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:07618ba636d9b85c79edf21a041dc86f94e69dc1ee56774d31049f8f647a07a3`  
		Last Modified: Wed, 13 Sep 2017 14:47:50 GMT  
		Size: 77.4 MB (77374769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `centos:7.2.1511`

```console
$ docker pull centos@sha256:7c47810fd05ba380bd607a1ece3b4ad7e67f5906b1b981291987918cb22f6d4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `centos:7.2.1511` - linux; amd64

```console
$ docker pull centos@sha256:63fa5b0e8b57e651e021799866e5f625a6235a2bdd6073f73bb96ac85b538560
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.6 MB (71560015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a2bad7da9b55f3121f0829de061f002ef059717fc2ed23c135443081200000e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 03 Nov 2017 22:32:37 GMT
MAINTAINER The CentOS Project <cloud-ops@centos.org>
# Fri, 03 Nov 2017 22:32:43 GMT
ADD file:b3bdbca0669a03490ea9267688e14695348d73f92df88a90f8c1845cb1ce7db8 in / 
# Fri, 03 Nov 2017 22:32:44 GMT
LABEL name=CentOS Base Image
# Fri, 03 Nov 2017 22:32:44 GMT
LABEL vendor=CentOS
# Fri, 03 Nov 2017 22:32:45 GMT
LABEL license=GPLv2
# Fri, 03 Nov 2017 22:32:45 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:f2d1d709a1daed8f529e5f561d7e102c08cab4856f1ca44c36509c552d14e3fe`  
		Last Modified: Wed, 13 Sep 2017 14:47:13 GMT  
		Size: 71.6 MB (71560015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `centos:7.3.1611`

```console
$ docker pull centos@sha256:507adc79cd945e1a36cf082e1782e60f80f4738590bc6ad0ecd6b64c4df78bf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `centos:7.3.1611` - linux; amd64

```console
$ docker pull centos@sha256:ff80c21ce1583b9fd74aadd4dc918bed666234ebded65ce642e3ed4ca4ba175d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.2 MB (72171488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66ee80d59a68047e6eac9fc10cbe698f15bd369bd8bbd512857bdd65cdecf601`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 03 Nov 2017 22:32:26 GMT
MAINTAINER https://github.com/CentOS/sig-cloud-instance-images
# Fri, 03 Nov 2017 22:32:33 GMT
ADD file:940c77b6724c00d4208cc72169a63951eaa605672bcc5902ab2013cbae107434 in / 
# Fri, 03 Nov 2017 22:32:34 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20161214
# Fri, 03 Nov 2017 22:32:34 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:b8e0383d5f949de632d2e7e9bdffabe1859e1cfbb61696f8f41aab0c154816d4`  
		Last Modified: Wed, 13 Sep 2017 14:46:41 GMT  
		Size: 72.2 MB (72171488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `centos:7.4.1708`

```console
$ docker pull centos@sha256:2a61f8abd6250751c4b1dd3384a2bdd8f87e0e60d11c064b8a90e2e552fee2d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `centos:7.4.1708` - linux; amd64

```console
$ docker pull centos@sha256:834aba7fdd53f4e622a8d636dcd549a83e86a22efad0246bf9438e4655b888ef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.4 MB (73359152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3afd47092a0ef2877da88b5dad059a0a86ac6d64bead3d4b95b6ff0583cf1239`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 03 Nov 2017 22:32:23 GMT
ADD file:d6a1da927f0b7a710092fca7e3f021d2757fa3006cdbda3fe0898114832eda9b in / 
# Fri, 03 Nov 2017 22:32:24 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20170911
# Fri, 03 Nov 2017 22:32:24 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:18b8eb7e7f013bd0e585c8c88c6f24599a5db1cbbe72e54246004dad662582c1`  
		Last Modified: Thu, 14 Sep 2017 15:14:38 GMT  
		Size: 73.4 MB (73359152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `centos:centos6`

```console
$ docker pull centos@sha256:ea82d46ce4a56f7eb10fd12080496c8c41ba6f3c2c9cef05ce18b40208e48e6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `centos:centos6` - linux; amd64

```console
$ docker pull centos@sha256:f69fc0c13d7df456ff80ae54fa1206e0d3e95848811029d96e73fcf5ff3e8556
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.1 MB (70077563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26cb1244b171480b705ab05afda5df29bd077a0703f8ba4431ea3042b6bdbb4d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 06 Mar 2018 00:48:49 GMT
ADD file:451b31a3892e00fcc44fd9be8cb169b6a2a411d5e90cc325596268dda59c2047 in / 
# Tue, 06 Mar 2018 00:48:49 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20180302
# Tue, 06 Mar 2018 00:48:50 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:e09ea867b78410323dc16db6cfe61f2a9e95bbbbee7f71737333117f0a299234`  
		Last Modified: Tue, 06 Mar 2018 01:06:17 GMT  
		Size: 70.1 MB (70077563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `centos:centos6` - linux; 386

```console
$ docker pull centos@sha256:8cbdb7c1840fb056355cd6e7c9ab6ef2b359c9812281323143bd614545e3b426
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.3 MB (70270900 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cda930ce91e0f26284e84d35b5285dcfc882b0146b672a04516e7806de121370`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 09 Jan 2018 19:37:35 GMT
ADD file:391cabf8e1a038f6d8cbb6e4b836219e80995bc5fd48b1c5314ca5e8449683e5 in / 
# Tue, 09 Jan 2018 19:43:55 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20180107
# Tue, 09 Jan 2018 19:43:55 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:c094d16b010875da580873fed895f8d2df34b653da944cfd1d4287b80d8be297`  
		Last Modified: Tue, 09 Jan 2018 19:47:09 GMT  
		Size: 70.3 MB (70270900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `centos:centos6.6`

```console
$ docker pull centos@sha256:ba9fbbcf6e957b480c6721f0e2abced5082b690d87342a7efd95df6f662c2c2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `centos:centos6.6` - linux; amd64

```console
$ docker pull centos@sha256:915f3f45166618913d02c9d7b14eb8fd28540d4a36393918c7ade74e153a89c2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.7 MB (73694253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d7ac13b921a506e2e985f56542903c00dd1aa35a530fffa46f9a89786219b49`

```dockerfile
# Fri, 03 Nov 2017 22:32:47 GMT
MAINTAINER The CentOS Project <cloud-ops@centos.org> - ami_creator
# Fri, 03 Nov 2017 22:33:45 GMT
ADD file:a5c79d873c20d685b71d899211c5d58b90c08473604aba82a9d655a58fcd1488 in / 
```

-	Layers:
	-	`sha256:f9f73d801f0558b085ffa505240a065319269c4cefbe9c2e60103d58761edfa8`  
		Last Modified: Tue, 15 Aug 2017 23:38:22 GMT  
		Size: 73.7 MB (73694253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `centos:centos6.7`

```console
$ docker pull centos@sha256:7248c96de4648749c7936f203d983530e7ebdd83c3db6d47278392f18bcd7baf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `centos:centos6.7` - linux; amd64

```console
$ docker pull centos@sha256:8465fb658e41f38894b1f7f05b9d5709c9f7b22cc4cb6287f4bfd3525e44e965
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.8 MB (67814264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:000c5746fa523e3e4150a91909ef6236ff4c063f0b1e5c8c2acedf5982175284`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 03 Nov 2017 22:32:37 GMT
MAINTAINER The CentOS Project <cloud-ops@centos.org>
# Fri, 03 Nov 2017 22:33:34 GMT
ADD file:b32a37ee272e6ae1740be193cc0947edaf5cda5d428feaf347a4afb571042bc1 in / 
# Fri, 03 Nov 2017 22:33:34 GMT
LABEL Vendor=CentOS
# Fri, 03 Nov 2017 22:33:35 GMT
LABEL License=GPLv2
# Fri, 03 Nov 2017 22:33:35 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:cbddbc0189a05ef8d3ac344a82cb5cf43279e80004433782cc7874b487f4a9a7`  
		Last Modified: Thu, 27 Jul 2017 04:22:26 GMT  
		Size: 67.8 MB (67814264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `centos:centos6.8`

```console
$ docker pull centos@sha256:147bb07a3a271ae84d53fbf7f619b00929c332845e389b7423f15d618236acd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `centos:centos6.8` - linux; amd64

```console
$ docker pull centos@sha256:fff29edd6a84e7ad8b92b27587cbb53635243c987f905adb8248d6c5327a6e6e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.2 MB (70230972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6704d778b3ba4fe03d49a26c92b5fe58d6212877c30cf7f58d47060f30ce3ee9`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 03 Nov 2017 22:32:37 GMT
MAINTAINER The CentOS Project <cloud-ops@centos.org>
# Fri, 03 Nov 2017 22:33:24 GMT
ADD file:beeefa390db7bc02afe6a885fecdd835435d30121252a0caf1f9215bd8e37fc2 in / 
# Fri, 03 Nov 2017 22:33:25 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=2016-06-02
# Fri, 03 Nov 2017 22:33:25 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:b268bb2f98b209d55d0687166e0854ce43f687dd4141a26c708e24fa81c81093`  
		Last Modified: Wed, 13 Sep 2017 14:49:34 GMT  
		Size: 70.2 MB (70230972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `centos:centos6.9`

```console
$ docker pull centos@sha256:5cf988fbf143af398f879bd626ee677da3f8d229049b7210790928a02613ab26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `centos:centos6.9` - linux; amd64

```console
$ docker pull centos@sha256:db54f4bd5c413ffcd8c787176d498e992122ba1347a56b1492502b09dffbb21f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.2 MB (70185621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fca4c61d0fa79b166147cb5553d43c0c3a52989c07a82451d80207799b4d23f9`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 03 Nov 2017 22:33:15 GMT
ADD file:b99efdfca7b4df4efa121b94bc7cc76539df7f41e72c7413d5eb24dcf0b41bfc in / 
# Fri, 03 Nov 2017 22:33:15 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20170406
# Fri, 03 Nov 2017 22:33:15 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:993c50d4746993429b177fdd4ef15b886d36e376c52b0a69b3ac964f1250de69`  
		Last Modified: Thu, 11 May 2017 08:02:02 GMT  
		Size: 70.2 MB (70185621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `centos:centos7`

```console
$ docker pull centos@sha256:5bfbcce576f4c0694e2b81df4ded44107d80b02689cbe29a6d01f990c11ec0d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `centos:centos7` - linux; amd64

```console
$ docker pull centos@sha256:8c7ac054adab3692f7026d49fd1c4df69aa6a138b2f076b432d2ac0164c022d3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.0 MB (72980725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d194b392dd16955847a14f969b2dd319251471ffa6356be6d8f16c5bf53db9b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 06 Mar 2018 00:48:12 GMT
ADD file:8d83f3e2c14f39e7f7b281117a45e245c1941668f2d560e9f7ac23da89d667a9 in / 
# Tue, 06 Mar 2018 00:48:12 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20180302
# Tue, 06 Mar 2018 00:48:12 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:5e35d10a3ebadf9d6ab606ce72e1e77f8646b2e2ff8dd3a60d4401c3e3a76f31`  
		Last Modified: Tue, 06 Mar 2018 01:04:21 GMT  
		Size: 73.0 MB (72980725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `centos:centos7` - linux; arm variant v7

```console
$ docker pull centos@sha256:73db5b3060b35e836f1b76b3092a90d69d2c1a8f9c63f6faa5001ffb06427dc0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.1 MB (68145089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1401c2e2000f1cdbabd042b0980c9b6c73db0a947dc570cb5f29f83e9168458e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 27 Feb 2018 09:56:51 GMT
ADD file:35eeed82a9ca06d14652993b094705c50b0cde21504e39d1417fb87faa5e56e8 in / 
# Tue, 27 Feb 2018 09:56:52 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20180223
# Tue, 27 Feb 2018 09:56:53 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:90cbd92df8d88778ecc26163bfd74ef5c02ba87fda70bb52346ecfbd6ed678d7`  
		Last Modified: Tue, 27 Feb 2018 09:57:27 GMT  
		Size: 68.1 MB (68145089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `centos:centos7` - linux; arm64 variant v8

```console
$ docker pull centos@sha256:77b9ced9d4996732f57d098d172d14cad943eac7a9594b091997e07d6a8469b7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.5 MB (73473778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:252f40a2e842ec04ef908b188c1b4ab6c688c2832b5dacf11b7f39e4d22e9650`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 08 Jan 2018 20:32:08 GMT
ADD file:b68d3a68915b721c6469f363505f8af9ae52080fca627b4cf6bf0cd16aaefcf0 in / 
# Mon, 08 Jan 2018 20:32:09 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20180107
# Mon, 08 Jan 2018 20:32:09 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:40c388956b41d956ab7fbccfce5f9b8a5a376801060b542cbcd3b5c19d69464e`  
		Last Modified: Mon, 08 Jan 2018 00:49:55 GMT  
		Size: 73.5 MB (73473778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `centos:centos7` - linux; ppc64le

```console
$ docker pull centos@sha256:baa72b3dd87d3eb9b7b5c2c53f694bf2138310d5c6cf8e107e4f2c93112131f7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.8 MB (75809171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e831a7031b3ca77611a277cf98ba77695abc85178271df49bcb15a6a6e0eea52`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 06 Mar 2018 18:20:26 GMT
ADD file:78d57f0a6b24dc9e5bd921af7f2c00fc0eb8cad01b6aab72f45956c858cf7e9a in / 
# Tue, 06 Mar 2018 18:20:29 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20180302
# Tue, 06 Mar 2018 18:20:31 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:fb54d88211961c2e1fcf88e35f8445f309dc52596be2115c8aaad80716f84032`  
		Last Modified: Tue, 06 Mar 2018 18:21:01 GMT  
		Size: 75.8 MB (75809171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `centos:centos7.0.1406`

```console
$ docker pull centos@sha256:c3f0576cc915592e01e44cf4ae795dbefc1a7bad0d1c07677cdc59289230403c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `centos:centos7.0.1406` - linux; amd64

```console
$ docker pull centos@sha256:4610671f25d27875bb832d165dfdd9fcbf693b098568d8605f15bd08ff11336c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.8 MB (76788795 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:284549eacf844851fd544d8b39c109f9804a6afa41e9ad767a25366f271f99a3`

```dockerfile
# Fri, 03 Nov 2017 22:32:47 GMT
MAINTAINER The CentOS Project <cloud-ops@centos.org> - ami_creator
# Fri, 03 Nov 2017 22:33:05 GMT
ADD file:6a409eac27f0c7e04393da096dbeff01b929405e79b15222a0dc06a2084d3df3 in / 
```

-	Layers:
	-	`sha256:1fc5dabcd32d4d92fb8e61dc68b9c2bf3f0498f88302a868aad63c0899c1c10e`  
		Last Modified: Wed, 13 Sep 2017 14:48:28 GMT  
		Size: 76.8 MB (76788795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `centos:centos7.1.1503`

```console
$ docker pull centos@sha256:971669f975ea13bba21ad975992dac10f55f45ea6c557f6459e57b5b7f4d48cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `centos:centos7.1.1503` - linux; amd64

```console
$ docker pull centos@sha256:3fdb8d48b318f3a174551a04a142bd62b20c177a3cade3e70c3a0038bd59041b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.4 MB (77374769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbe8925ecf55b55d4247453d7d28c79b3b4943792d890f2d889b5a38bb753028`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 03 Nov 2017 22:32:47 GMT
MAINTAINER The CentOS Project <cloud-ops@centos.org> - ami_creator
# Fri, 03 Nov 2017 22:32:54 GMT
ADD file:0dd14af9c86c705779784ad9c5162130f3e68974b427beb38d47ba87f33f6c9c in / 
# Fri, 03 Nov 2017 22:32:55 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:07618ba636d9b85c79edf21a041dc86f94e69dc1ee56774d31049f8f647a07a3`  
		Last Modified: Wed, 13 Sep 2017 14:47:50 GMT  
		Size: 77.4 MB (77374769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `centos:centos7.2.1511`

```console
$ docker pull centos@sha256:7c47810fd05ba380bd607a1ece3b4ad7e67f5906b1b981291987918cb22f6d4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `centos:centos7.2.1511` - linux; amd64

```console
$ docker pull centos@sha256:63fa5b0e8b57e651e021799866e5f625a6235a2bdd6073f73bb96ac85b538560
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.6 MB (71560015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a2bad7da9b55f3121f0829de061f002ef059717fc2ed23c135443081200000e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 03 Nov 2017 22:32:37 GMT
MAINTAINER The CentOS Project <cloud-ops@centos.org>
# Fri, 03 Nov 2017 22:32:43 GMT
ADD file:b3bdbca0669a03490ea9267688e14695348d73f92df88a90f8c1845cb1ce7db8 in / 
# Fri, 03 Nov 2017 22:32:44 GMT
LABEL name=CentOS Base Image
# Fri, 03 Nov 2017 22:32:44 GMT
LABEL vendor=CentOS
# Fri, 03 Nov 2017 22:32:45 GMT
LABEL license=GPLv2
# Fri, 03 Nov 2017 22:32:45 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:f2d1d709a1daed8f529e5f561d7e102c08cab4856f1ca44c36509c552d14e3fe`  
		Last Modified: Wed, 13 Sep 2017 14:47:13 GMT  
		Size: 71.6 MB (71560015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `centos:centos7.3.1611`

```console
$ docker pull centos@sha256:507adc79cd945e1a36cf082e1782e60f80f4738590bc6ad0ecd6b64c4df78bf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `centos:centos7.3.1611` - linux; amd64

```console
$ docker pull centos@sha256:ff80c21ce1583b9fd74aadd4dc918bed666234ebded65ce642e3ed4ca4ba175d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.2 MB (72171488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66ee80d59a68047e6eac9fc10cbe698f15bd369bd8bbd512857bdd65cdecf601`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 03 Nov 2017 22:32:26 GMT
MAINTAINER https://github.com/CentOS/sig-cloud-instance-images
# Fri, 03 Nov 2017 22:32:33 GMT
ADD file:940c77b6724c00d4208cc72169a63951eaa605672bcc5902ab2013cbae107434 in / 
# Fri, 03 Nov 2017 22:32:34 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20161214
# Fri, 03 Nov 2017 22:32:34 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:b8e0383d5f949de632d2e7e9bdffabe1859e1cfbb61696f8f41aab0c154816d4`  
		Last Modified: Wed, 13 Sep 2017 14:46:41 GMT  
		Size: 72.2 MB (72171488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `centos:centos7.4.1708`

```console
$ docker pull centos@sha256:2a61f8abd6250751c4b1dd3384a2bdd8f87e0e60d11c064b8a90e2e552fee2d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `centos:centos7.4.1708` - linux; amd64

```console
$ docker pull centos@sha256:834aba7fdd53f4e622a8d636dcd549a83e86a22efad0246bf9438e4655b888ef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.4 MB (73359152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3afd47092a0ef2877da88b5dad059a0a86ac6d64bead3d4b95b6ff0583cf1239`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 03 Nov 2017 22:32:23 GMT
ADD file:d6a1da927f0b7a710092fca7e3f021d2757fa3006cdbda3fe0898114832eda9b in / 
# Fri, 03 Nov 2017 22:32:24 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20170911
# Fri, 03 Nov 2017 22:32:24 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:18b8eb7e7f013bd0e585c8c88c6f24599a5db1cbbe72e54246004dad662582c1`  
		Last Modified: Thu, 14 Sep 2017 15:14:38 GMT  
		Size: 73.4 MB (73359152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `centos:latest`

```console
$ docker pull centos@sha256:5bfbcce576f4c0694e2b81df4ded44107d80b02689cbe29a6d01f990c11ec0d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `centos:latest` - linux; amd64

```console
$ docker pull centos@sha256:8c7ac054adab3692f7026d49fd1c4df69aa6a138b2f076b432d2ac0164c022d3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.0 MB (72980725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d194b392dd16955847a14f969b2dd319251471ffa6356be6d8f16c5bf53db9b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 06 Mar 2018 00:48:12 GMT
ADD file:8d83f3e2c14f39e7f7b281117a45e245c1941668f2d560e9f7ac23da89d667a9 in / 
# Tue, 06 Mar 2018 00:48:12 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20180302
# Tue, 06 Mar 2018 00:48:12 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:5e35d10a3ebadf9d6ab606ce72e1e77f8646b2e2ff8dd3a60d4401c3e3a76f31`  
		Last Modified: Tue, 06 Mar 2018 01:04:21 GMT  
		Size: 73.0 MB (72980725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `centos:latest` - linux; arm variant v7

```console
$ docker pull centos@sha256:73db5b3060b35e836f1b76b3092a90d69d2c1a8f9c63f6faa5001ffb06427dc0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.1 MB (68145089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1401c2e2000f1cdbabd042b0980c9b6c73db0a947dc570cb5f29f83e9168458e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 27 Feb 2018 09:56:51 GMT
ADD file:35eeed82a9ca06d14652993b094705c50b0cde21504e39d1417fb87faa5e56e8 in / 
# Tue, 27 Feb 2018 09:56:52 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20180223
# Tue, 27 Feb 2018 09:56:53 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:90cbd92df8d88778ecc26163bfd74ef5c02ba87fda70bb52346ecfbd6ed678d7`  
		Last Modified: Tue, 27 Feb 2018 09:57:27 GMT  
		Size: 68.1 MB (68145089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `centos:latest` - linux; arm64 variant v8

```console
$ docker pull centos@sha256:77b9ced9d4996732f57d098d172d14cad943eac7a9594b091997e07d6a8469b7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.5 MB (73473778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:252f40a2e842ec04ef908b188c1b4ab6c688c2832b5dacf11b7f39e4d22e9650`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 08 Jan 2018 20:32:08 GMT
ADD file:b68d3a68915b721c6469f363505f8af9ae52080fca627b4cf6bf0cd16aaefcf0 in / 
# Mon, 08 Jan 2018 20:32:09 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20180107
# Mon, 08 Jan 2018 20:32:09 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:40c388956b41d956ab7fbccfce5f9b8a5a376801060b542cbcd3b5c19d69464e`  
		Last Modified: Mon, 08 Jan 2018 00:49:55 GMT  
		Size: 73.5 MB (73473778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `centos:latest` - linux; ppc64le

```console
$ docker pull centos@sha256:baa72b3dd87d3eb9b7b5c2c53f694bf2138310d5c6cf8e107e4f2c93112131f7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.8 MB (75809171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e831a7031b3ca77611a277cf98ba77695abc85178271df49bcb15a6a6e0eea52`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 06 Mar 2018 18:20:26 GMT
ADD file:78d57f0a6b24dc9e5bd921af7f2c00fc0eb8cad01b6aab72f45956c858cf7e9a in / 
# Tue, 06 Mar 2018 18:20:29 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20180302
# Tue, 06 Mar 2018 18:20:31 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:fb54d88211961c2e1fcf88e35f8445f309dc52596be2115c8aaad80716f84032`  
		Last Modified: Tue, 06 Mar 2018 18:21:01 GMT  
		Size: 75.8 MB (75809171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
