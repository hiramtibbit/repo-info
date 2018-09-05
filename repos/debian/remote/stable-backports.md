## `debian:stable-backports`

```console
$ docker pull debian@sha256:26ee9da123ab523a47bc96004634322fcaaba269197e0a8130e14af7e16478a3
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
$ docker pull debian@sha256:3e8eafa82655920cd6c26a76ac7296f14005ac809a5642396ac60476a022c152
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (44033249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfef60188a0119c60c8313af6d55224eb8e8359a5b9b79e5707e37aed8a5f1d2`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 08:54:47 GMT
ADD file:2310de80a0689b36e7b18c3635edf2a8b2ba66e8934e1bf26af266faaf8c092f in / 
# Tue, 17 Jul 2018 08:54:47 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 08:55:02 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:6ccba4a0209aed63738bfb5511cd6575549cf1f95ac002aa9b7cceb159854337`  
		Last Modified: Tue, 17 Jul 2018 09:07:08 GMT  
		Size: 44.0 MB (44033025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30b0aa538a96c2bf534d818d13d69e13693203fe63f997113d77337a3b6d21f3`  
		Last Modified: Tue, 17 Jul 2018 09:07:26 GMT  
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
$ docker pull debian@sha256:786436569df7b56b6b8a8096a2c145de784feeac532d94606e55c65117f6feac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43123717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:655318b860198af5190d3259b8ec5753bb8503a5396be5386522b443bf2d93f2`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 08:45:21 GMT
ADD file:34531bcb251fa6c8718b662413d329b11b5e1aa32051a70ed3030aeb849a8168 in / 
# Tue, 17 Jul 2018 08:45:25 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 08:45:57 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:2ff35a7795e30fb09536c0246c89f31452642aa50e341c7c6779725e38c1339a`  
		Last Modified: Tue, 17 Jul 2018 08:54:25 GMT  
		Size: 43.1 MB (43123493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15592220bae254f18488cb7ee0a7ee8fe885749928820d52ad6e167ac0465fb6`  
		Last Modified: Tue, 17 Jul 2018 08:55:03 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; 386

```console
$ docker pull debian@sha256:9c21e4d7daa973038bfab9cc67848c93ebcca2eeb2857eec82e1d83d9bbcd409
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.0 MB (46037759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c7eba8341b2885c9c416a6fcddff3fc19d05a8fdb7487358633a9aff15574c8`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 10:47:55 GMT
ADD file:215195b1abdd291c1b41652ef3e6f80fd9d3457568b3753870cb89d418c18a2a in / 
# Tue, 17 Jul 2018 10:47:56 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 10:48:10 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:bbdfe7e286210c003176bfc10c9e183abf597f56a36fe1bca59dd3ce9bb9892e`  
		Last Modified: Tue, 17 Jul 2018 11:05:14 GMT  
		Size: 46.0 MB (46037535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8bcd002b0f451d4c7dfaf7321bab4b28574b636740244f54b6af10966bbc194`  
		Last Modified: Tue, 17 Jul 2018 11:06:00 GMT  
		Size: 224.0 B  
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
$ docker pull debian@sha256:36fc2f671a88af9b0f37a0b663039f85211f9d3104385932854806d14e5f93d6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.2 MB (45198548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a46945ececd086394853dfea57852662e97b76736348821e0ad274f7310041b8`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 11:42:47 GMT
ADD file:799b1fd3d8f5a390c13eb1922813fcdefc1cb6816cf3235e69eca219fde2de99 in / 
# Tue, 17 Jul 2018 11:42:48 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 11:42:55 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:2d0cb7278f960c484e0f11060d9e511c1882d03ffbb99df86af29ff3af48c75a`  
		Last Modified: Tue, 17 Jul 2018 11:46:02 GMT  
		Size: 45.2 MB (45198327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23955e992256b40c7beb7a865e41a8fefa5cf1ad05e29b23b742732de969b5a4`  
		Last Modified: Tue, 17 Jul 2018 11:46:12 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
