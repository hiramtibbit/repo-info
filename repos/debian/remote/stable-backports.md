## `debian:stable-backports`

```console
$ docker pull debian@sha256:953f213f7801082b42c800d786890335d2f900836bc2401f120498da48bdbc45
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

### `debian:stable-backports` - linux; amd64

```console
$ docker pull debian@sha256:95c9bd2bb894841f95d0b4fd6ab1088e843602e74fb9b74357554c4a2cb63e09
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.3 MB (45310325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dad976723d5d86c4a7302a2ed0e7b57d6441602e7f73cb13a13ade3b55c7d8f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:06 GMT
ADD file:bd9f726f432207b11e7a1c082f9e7829fdc166909c5cc6218f2bb7acf6b2b123 in / 
# Tue, 04 Sep 2018 21:21:06 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 21:21:10 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:56178fcb725779e318128622abf350352d70bd9f3be38674a29c57494d827dde`  
		Last Modified: Tue, 04 Sep 2018 21:25:02 GMT  
		Size: 45.3 MB (45310099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6489cb71eda749f7c44f573c294def24a1fe02803832e3be885a96d93b1ad2d3`  
		Last Modified: Tue, 04 Sep 2018 21:25:08 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:80c49d13980a6048aec3ff9cffc68113a8b02c8a2614bf82ea6924923febcb83
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (44033217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c3095460b154d82a71fc8201373797a0df56fa5f279a022e2c8a24d999c0620`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 08:53:58 GMT
ADD file:86730bd0cd00756824fbd866251ff7e3b6192a7f7e054f92c4707dde97d83707 in / 
# Wed, 05 Sep 2018 08:53:59 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 08:54:16 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:b28a6a264e4a0e864b5a6013e2e4b592730a8a2c4d884339c34f66c2d88eb00d`  
		Last Modified: Wed, 05 Sep 2018 09:03:06 GMT  
		Size: 44.0 MB (44032993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d9782904ed0b93927d3944287bda0ce4739e2abc7732446ba26a1a49122071b`  
		Last Modified: Wed, 05 Sep 2018 09:03:21 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:8066e0c7224a06b18ddd3f7e8868ca40f35ed306a2776fc76450a68e9eeb70f6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.1 MB (42061049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ac365f7c8394c6b0c93628d5026b2603c905b5eab6677972218fc7d3c36dece`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 12:04:06 GMT
ADD file:187357cadbd2353d4ad58a7a605bc32f0c50a54fb0e3cf162aba97a0618a37d7 in / 
# Tue, 17 Jul 2018 12:04:07 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 12:04:19 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:d6a5c32f49d9cbd8b3cb32d624d2ec60cb290e4d9f39a72e5743f4dfb4ffc1c5`  
		Last Modified: Tue, 17 Jul 2018 12:16:28 GMT  
		Size: 42.1 MB (42060825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45207339a4b4c02be6afe089215832fdd1c7e7b5723743614c1e72daf7e59181`  
		Last Modified: Tue, 17 Jul 2018 12:16:54 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:bb3de1977a4e35da6fdc2bf86a718de560e28682b9bb59f8257a627462aea712
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43123846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22819ad770c488bcc032c1787b9f8a902a177e67b5aa118b2d6ee3149a83691c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 08:47:19 GMT
ADD file:e63ca37b3383f13a854380a4de2b1c2eb608a6a047103f8f3ead8ff2fa59b04d in / 
# Wed, 05 Sep 2018 08:47:34 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 08:48:07 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:29ec8c62bd64d0243985c21dcb3b6013cc231c0dbe071bff9f3c66376fe334ca`  
		Last Modified: Wed, 05 Sep 2018 09:04:10 GMT  
		Size: 43.1 MB (43123622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaf7bab7e80c515133a3edad10c13325baa1c3adda5c3fcbd6dd94613d2818dd`  
		Last Modified: Wed, 05 Sep 2018 09:05:28 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; 386

```console
$ docker pull debian@sha256:d82260016aaeb18a042ca7674f02dd9c28c35f81f55ba319da6b61c0c8055679
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.0 MB (46039276 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53a1d3abe7c8fa26f886debf3ff31b7edb419c3b7df2f5352c13d435d127f2fd`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 10:42:49 GMT
ADD file:0527fac686f42e89842c3ed3d2340c29c1b5b2e3747fcef8702bb6f79c51fbba in / 
# Wed, 05 Sep 2018 10:42:50 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 10:42:55 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:548d9ebe418ac9029bd3465fe581ff3a8968994004a82fba52208b0aa4fbe5ba`  
		Last Modified: Wed, 05 Sep 2018 10:51:07 GMT  
		Size: 46.0 MB (46039054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24a5eae07cc2564d62b46ae7558a72a0c50b1bd2b36ff64a1240b1d60cc379aa`  
		Last Modified: Wed, 05 Sep 2018 10:51:14 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:51630255512f7d14cda85cfd696f0f2d9367286428521f85f1d13443c4a27b10
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.6 MB (45595643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0be3685fd9c5dd855dfe8ce45e8be645efba420a39d404e62cfecaf779f87b18`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 08:18:29 GMT
ADD file:c207c700ca82d5a049c93cbb90db9c9fc7799b5833257a0d36d9296e73244875 in / 
# Wed, 05 Sep 2018 08:18:32 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 08:18:42 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:598bd892d8420191040e8a45328ef198efbf5a6b918acced954f824ad3a341db`  
		Last Modified: Wed, 05 Sep 2018 08:24:18 GMT  
		Size: 45.6 MB (45595420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f8824949de1cac38d21e7e8507705769ba3b136f7a99f00eef6d11dcb32555b`  
		Last Modified: Wed, 05 Sep 2018 08:24:42 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; s390x

```console
$ docker pull debian@sha256:18903ba77005b9af0dff385aeea9532d0048fd43463b8ed255032bdbda5db876
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.2 MB (45199822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a16198e840a6b06931738551877263a9278c52915177b892f427ffa66be812c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 11:43:07 GMT
ADD file:d94fb12c03952df95bb5ce1638ed3160d6d9df5e37c12b8878b5d0d36d488e97 in / 
# Wed, 05 Sep 2018 11:43:07 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:43:23 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:e1b92bfa5f119982e1f0e600f5712b213ab851afe7a5d2bb52e89c129be4a71d`  
		Last Modified: Wed, 05 Sep 2018 11:47:54 GMT  
		Size: 45.2 MB (45199599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbc088a47dd1de955a1f0fdef609890c8a7c3bd8bb7061a86be9367f3dbc90ca`  
		Last Modified: Wed, 05 Sep 2018 11:48:07 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
