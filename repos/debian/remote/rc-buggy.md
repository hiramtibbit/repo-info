## `debian:rc-buggy`

```console
$ docker pull debian@sha256:ccb86eb362e53f7792a00ced2b408588ec3715c6d9a57d750e0d6cc65b7b72b9
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
$ docker pull debian@sha256:5493e7a1b75e36886ec75e8b9708cbf0e706529689128f3259e6f4f655c1c751
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.1 MB (48050259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e90cfae7c5ff39ac8adb61b6643b611d7803fea677c1c079421f113660bb9cb`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 08:51:39 GMT
ADD file:9413922e0450a981af5b854fd02d6462ae98edbc50dd0c86aa6b3a8980832488 in / 
# Wed, 08 May 2019 08:51:40 GMT
CMD ["bash"]
# Wed, 08 May 2019 08:55:27 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:9496df20a2df40133d2e133f1a23a2da3ac7d28df6d3546c7c2c7472da72acb9`  
		Last Modified: Wed, 08 May 2019 08:58:06 GMT  
		Size: 48.1 MB (48050033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78c94e7a0f4161b7a25fc720f2f11f636bc99573173a016ea7d190ff608039d0`  
		Last Modified: Wed, 08 May 2019 09:00:57 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:rc-buggy` - linux; arm variant v7

```console
$ docker pull debian@sha256:5c500c56f1a64c9209a95f276ec29859e11a178f2938d3b4681d9847018a2939
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.8 MB (45832240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30b1a204ac674a9dd5a0ff12f1de2c0117524d28380d93970276ac7433a3034f`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 12:01:32 GMT
ADD file:3d32a1759251e5837e3cdae42fa906791e9c892300288e215950a176746a3cc8 in / 
# Wed, 08 May 2019 12:01:34 GMT
CMD ["bash"]
# Wed, 08 May 2019 12:05:56 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:67f8dba29ff4d738bafc60e2ad83ad23b287b7e75537c9c33df98e2f796090a1`  
		Last Modified: Wed, 08 May 2019 12:08:32 GMT  
		Size: 45.8 MB (45832013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaf7b857b72c16f53eaa95c93c3f48cfa90a2961f5ed2e03ba1a525c2c30392d`  
		Last Modified: Wed, 08 May 2019 12:11:18 GMT  
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
