## `debian:rc-buggy`

```console
$ docker pull debian@sha256:62f375f5a0cd6c0bcc4da3cd6a372a150cf7ab7413211e815ac542f0a22d615e
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

### `debian:rc-buggy` - linux; amd64

```console
$ docker pull debian@sha256:f4484c2031e812e1ea2e797bc5db7e2411eac4d2f80142c7ecca7003b46b7ac8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.4 MB (50416515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41d05cb6faf1eb2a645975a066359a558ec7f1e1e2bda20866c869607b5f1fdf`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:23:11 GMT
ADD file:dd0986a5b74404f77d300a1f66ca28f1d810b9563bb0ad60166c42c86a3951a3 in / 
# Mon, 10 Jun 2019 23:23:12 GMT
CMD ["bash"]
# Mon, 10 Jun 2019 23:25:23 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:26a3de69c889cd62b7ca9d1a2acfcd53ec6a80624f14b8ac06f623e5e4cd3a83`  
		Last Modified: Mon, 10 Jun 2019 23:27:10 GMT  
		Size: 50.4 MB (50416288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4373edcd68d2af89626f2e11f6b7b03b40c148553e6a291f3fcac5eb660ce444`  
		Last Modified: Mon, 10 Jun 2019 23:28:59 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:rc-buggy` - linux; arm variant v5

```console
$ docker pull debian@sha256:dc29c89e37978f17f2acfc351fe6f97399151cc7c7b26a010ef1517eb9aa4d66
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.1 MB (48134157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:394ac70056c3d902f6c28b71e18ef1c9746fd0d024355d48dddf54829949df7d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:51:39 GMT
ADD file:5f8cd1843f0af74cc337fee41fb8a27c05328ba7b4a3bafba58f5e536f529f08 in / 
# Mon, 10 Jun 2019 23:51:40 GMT
CMD ["bash"]
# Mon, 10 Jun 2019 23:55:14 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:1c264d4806521431a7eb41380bbd57ec7719e567e4c180ac833eb83c4c6ca788`  
		Last Modified: Mon, 10 Jun 2019 23:58:03 GMT  
		Size: 48.1 MB (48133931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9155a347661b6f7f0ae1673f38ca779995a78825d4f0359c225e754e6d7ab97`  
		Last Modified: Tue, 11 Jun 2019 00:01:11 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:rc-buggy` - linux; arm variant v7

```console
$ docker pull debian@sha256:e5aa236987ee54123d874dc96d8e3dc8a6ddb26173368389edcd07d609397d92
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.9 MB (45891521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fc302f7f821ece1dcb88b466e021f3f34973743f8364bb065b7b21b1a437abc`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 11 Jun 2019 00:00:53 GMT
ADD file:7d67e93cad2e9cf97ccb5ccea431d24a0d9542dddf05cd63187fa9d62b4bcb3e in / 
# Tue, 11 Jun 2019 00:00:54 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:05:11 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:3ab8e76dd11aca2600e6ee2ee15515d8c054e337b5b731bbe393d6fbe778e5fa`  
		Last Modified: Tue, 11 Jun 2019 00:07:56 GMT  
		Size: 45.9 MB (45891294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eda783b1c22ae0df5eab9b1f3fd9162b3ffc127562a2e804a7881f9b3fa00862`  
		Last Modified: Tue, 11 Jun 2019 00:10:52 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:rc-buggy` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:8b84fed7202029cc60a9c14ec9e6472bf14903a0d176eeab0333dec7a5486923
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.2 MB (49193364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f06bcaa326f8d477f34c234ffb65cc702b2dac201448a7a413af9eeb493ad22`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:40:35 GMT
ADD file:68b10e662aced8b803f6c9bd363289416da46c92903fb76bbfa649a85b7d8ab2 in / 
# Mon, 10 Jun 2019 23:40:36 GMT
CMD ["bash"]
# Mon, 10 Jun 2019 23:42:44 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:4ff0b6eff82f60ec8e5a22c5610424c7c50c25da3f3290acff23fdafea091921`  
		Last Modified: Mon, 10 Jun 2019 23:43:55 GMT  
		Size: 49.2 MB (49193137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a325735365aca56f914fcc083fce5cb73b782e69cc7b0f73df74d84a6ee183c3`  
		Last Modified: Mon, 10 Jun 2019 23:46:33 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:rc-buggy` - linux; 386

```console
$ docker pull debian@sha256:92690e86a3e734ba4e81d68ff5cc17641ce98d39eca59ed7c6d94b04482f2c68
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.2 MB (51167207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac017c2dbe5119cc3bfbecb0a9f14bd81afae6cae78bf1f2144c9f205555632d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:40:27 GMT
ADD file:94428624b8a12a143621d6a227fb8362d1c9f9722446b0243cf4b2782a45eafb in / 
# Mon, 10 Jun 2019 23:40:27 GMT
CMD ["bash"]
# Mon, 10 Jun 2019 23:42:36 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:42161218c4a20dafac7bfc240e36303807ce4515329f48b3a264b093e3ce57c0`  
		Last Modified: Mon, 10 Jun 2019 23:44:35 GMT  
		Size: 51.2 MB (51166982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b68c1a716ac8658030fac3094b16684dea7d1c07ca07b399f7111f47c22074e8`  
		Last Modified: Mon, 10 Jun 2019 23:47:16 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:rc-buggy` - linux; ppc64le

```console
$ docker pull debian@sha256:ad669afdce344a813915f3c04f0f3d484d759a98c93b256a2e5b366593d56eed
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.1 MB (54137618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2fce2d4c8c935c9fa22856738f333ed86da793dfdd755341b03e697bcd14db6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:17:44 GMT
ADD file:9e0f17640dbfd63699c5e94379034b1350422dc0f982e4061195002a081b16a8 in / 
# Mon, 10 Jun 2019 23:17:46 GMT
CMD ["bash"]
# Mon, 10 Jun 2019 23:20:24 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:695a4a9a1dde5df6d15ecb468cc4a42fd972a411bcb57af71813c348a2b9beea`  
		Last Modified: Mon, 10 Jun 2019 23:22:09 GMT  
		Size: 54.1 MB (54137390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3c972cb296fb98ae3f8969d982a22c4e06dc5ffa8d9810ad5b6faabf74601e8`  
		Last Modified: Mon, 10 Jun 2019 23:26:07 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:rc-buggy` - linux; s390x

```console
$ docker pull debian@sha256:53d5c18fd3a690ae0e7a6c65f0cc7752e1a032e9e2bfa13ce15178a4f76e03c0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.0 MB (48985686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3c96fb1d05cb31176045d27a519b22a37ed53b155f10165fa769389c21c701c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:42:46 GMT
ADD file:28077e50828d6774a43958ba5a5e3dedc98f956b3e14ea7d505aa4968f5603f5 in / 
# Mon, 10 Jun 2019 23:42:47 GMT
CMD ["bash"]
# Mon, 10 Jun 2019 23:44:50 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:61701f4be07d298ce1009eaf03d90fea9c4f19d146a7badc0e34e63e4c3df580`  
		Last Modified: Mon, 10 Jun 2019 23:45:41 GMT  
		Size: 49.0 MB (48985461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e83bfae41491f584d04ce2ee858b14f175cd3bb7f4ac5a6e9a952d41bfa8e9c9`  
		Last Modified: Mon, 10 Jun 2019 23:47:41 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
