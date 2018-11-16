## `debian:jessie-backports`

```console
$ docker pull debian@sha256:5009f184355e15fa7b9e21875c6880f373744e8659a77857c1ba838aa9c842ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `debian:jessie-backports` - linux; amd64

```console
$ docker pull debian@sha256:1f9b9da985aaadc4166d3b63813e27411e059d86b29b6788bd5246338689f7d4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.4 MB (54358065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c828ab72e91de5d24c465d492fd8c1217abe7802b24a849a831a3952b2f7178`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Nov 2018 22:33:25 GMT
ADD file:0b25d0012989e20b95dd0702d9491fdc4a4d40d0994690df7ec502cf163590fe in / 
# Thu, 15 Nov 2018 22:33:36 GMT
CMD ["bash"]
# Thu, 15 Nov 2018 22:33:53 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:4b105072aa89afc93b7238396c7ca2951308666854da2fb399c4ca362c93b445`  
		Last Modified: Thu, 15 Nov 2018 22:53:33 GMT  
		Size: 54.4 MB (54357843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92bc10af122ce1ea6cbf276ec22708b0679fb42df03776d555d93f18f6ab3132`  
		Last Modified: Thu, 15 Nov 2018 22:56:03 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:jessie-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:a257bed9c10df65d081ff4fa4bf28988d023e2e246318ae98a189cbdf1d491cc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52544788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a58a329013086807524612580355842e89568501f545370b291a852ad261dd71`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 09:50:40 GMT
ADD file:51b6e570dd2584f3747b0877f1342ea36c4c8dae4b0aa0f4a114e816fde77904 in / 
# Fri, 16 Nov 2018 09:50:41 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 09:50:57 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:28b426da5f009c6d2c8bc1993bee5601ab4126eb8a3a2698db1d96c7f612dde8`  
		Last Modified: Fri, 16 Nov 2018 10:05:38 GMT  
		Size: 52.5 MB (52544563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c0bbd5cd7cef4679d11f58b128a0a19def22fd708aad857c2e2ccaa712471c3`  
		Last Modified: Fri, 16 Nov 2018 10:06:18 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:jessie-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:4ffb91cd8f750b641f013e6a9f1075001f0e74eca3c7ff64c89afcd524d6922c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.2 MB (50188871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60bd8c7eab5f8df49aab5abc1d1922f587f6dada191bb35994a69af4d9e847b5`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 11:59:33 GMT
ADD file:9edd7e5dd9866508197c1b6cf8b6cb3fb8facd975bc2a5c19345fccf32b26e4c in / 
# Tue, 16 Oct 2018 11:59:37 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 11:59:44 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:25629e5219870918007c34709e42bdf0d203fce78b64e41a187f51a7f6ed5c8b`  
		Last Modified: Tue, 16 Oct 2018 12:11:52 GMT  
		Size: 50.2 MB (50188644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f33e96c27776419a00b9ad3aadd3ed6ea0bf7d78c72bfbb380737533380ec92`  
		Last Modified: Tue, 16 Oct 2018 12:12:10 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:jessie-backports` - linux; 386

```console
$ docker pull debian@sha256:526867be9150176dccbfb0447d39347e276bee32229a81404a61669c36f46154
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.5 MB (54484513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a6caa25290259e163954aa91ae899c8f0825cf9a48acbfede6478e5b8234da9`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 10:41:07 GMT
ADD file:884a15e85725363fbbc2c6e8db4d505681cab38aaccb85d33230096fceb51ad1 in / 
# Tue, 16 Oct 2018 10:41:07 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 10:41:22 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:58744882a671928d73076405b749948006049d6d70461101d15a64e8b66d1786`  
		Last Modified: Tue, 16 Oct 2018 10:55:45 GMT  
		Size: 54.5 MB (54484289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:166901e537b4420c29c36f4782198aa7d9c7719a58625d2c70b3f62a428af4c4`  
		Last Modified: Tue, 16 Oct 2018 10:56:35 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
