## `debian:stable-backports`

```console
$ docker pull debian@sha256:230c7c6e0aaed404509b8b6e3de9b012c4f8058ebc31ad9bab4a0ba93ab75798
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
$ docker pull debian@sha256:a2153135ddd71b500b9e8ff651af80172cac0fe0799c9a5852e081bc3f7c3fe6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45132865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b9c86e6e2a3b432ea0404aa2484e8079c832611fef9ee07f7424534b95c64e6`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 01:56:17 GMT
ADD file:e7cd2be9baaee076445e80a4f6209aacc2aa708266856b4def8b00ca46cbcd63 in / 
# Thu, 15 Feb 2018 01:56:17 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 01:57:18 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:974c2c350dc48f40f79e7516d9fa241a5561efc72798766be211ae3dcdf18952`  
		Last Modified: Thu, 15 Feb 2018 02:24:17 GMT  
		Size: 45.1 MB (45132640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac988ca8122c76056b9fc28b0d022f9e50d1750de65eb5543cd2d24b989fb723`  
		Last Modified: Thu, 15 Feb 2018 02:24:58 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:064a0ad4e6bed99c898d1c22c1b245540cbfb196ca6036fbb6c7d2837a65969a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.8 MB (43814555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85048b56412490c3a492e2023aa8305c550a368053f4b6659c7cbdcbd60ee20d`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 20:59:13 GMT
ADD file:f489d959b36af25db21e1cf8e3bef9952284d95df3e38e65fd44107c3e5f2129 in / 
# Thu, 15 Feb 2018 20:59:14 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 20:59:24 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:65ce3ab15728959569a1bf54792fb8d766a86b389ee11920b84ea3ed0b0bd852`  
		Last Modified: Thu, 15 Feb 2018 21:09:05 GMT  
		Size: 43.8 MB (43814329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:281ff690e254d7b78221011ec2d5a4555a0265efb568f7a603a56ede94e512f7`  
		Last Modified: Thu, 15 Feb 2018 21:09:28 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:ec5befc5910e3617c5824ccfa069745d554009aef0846548288f6a8cf3dbe8ee
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.9 MB (41859885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf5006fc6b300c1357288f3f2a617b334885640988a764fe0e6e8206c426cde3`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 13:30:00 GMT
ADD file:4ef79111898c9cbd9f00d44f821c7f96d2b6590cb136664e425363157981d773 in / 
# Thu, 15 Feb 2018 13:30:01 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 13:30:12 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:7e4c50bc37b10c34a4f68e05c26eab47f521437bba4e2eff588caba548182ec2`  
		Last Modified: Thu, 15 Feb 2018 13:39:56 GMT  
		Size: 41.9 MB (41859661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef45d0f8fba03da2c112bc86de62b29b1107002015288963c58f89d57c9e6a74`  
		Last Modified: Thu, 15 Feb 2018 13:40:17 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:763f7e9df4ec676a504677f361ad420340695b0c51aafc2de44c32be9670f928
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.9 MB (42922129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea86fc5a940a320fed56f5f3844922460e64dbf0a9dd0ff870532436d44b75ac`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 18:27:47 GMT
ADD file:e6cc13ed6a0f154372e9eb5bf7e9299b8ac330d59ab1643568b165b99178cbea in / 
# Thu, 15 Feb 2018 18:27:48 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 18:28:03 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:b9014e7c23b8b057dd79d9ca291e44d174a0a6b47a91b60b0bda503a35bdefab`  
		Last Modified: Thu, 15 Feb 2018 18:40:26 GMT  
		Size: 42.9 MB (42921904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22abfeb94db3cc10109cbb85e7e87002ba1f7d4c67c5d6cc41abb98c7eb084db`  
		Last Modified: Thu, 15 Feb 2018 18:40:55 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; 386

```console
$ docker pull debian@sha256:1c137a1d558221e5756c2214130dcee537ca8f6e60222767092558bf5fb40aa1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.8 MB (45827322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a67b51c677fd4dd8f3298102f9a9d4e043c2333bd655f4bcab3e9a6818443d72`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 14:26:27 GMT
ADD file:b4506faef1374afea354028d93f02b26ed2fe009ded2af8b2d2acb9d9e8bb50a in / 
# Tue, 12 Dec 2017 14:26:27 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 14:27:41 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:786f44732f3712daf577d06f9a8a032e075023422a73e09b3101d307f47f328a`  
		Last Modified: Tue, 12 Dec 2017 14:59:55 GMT  
		Size: 45.8 MB (45827097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ffc91b5ce1565eeebb1ceb6137999e439e43cc3273bee46acc142b7fb063548`  
		Last Modified: Tue, 12 Dec 2017 15:00:55 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:1df54ad3ca680d3723224a9eb3d0b1cf4a7314467ee4a2b38e6e08ab13939d6f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.4 MB (45388051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2453c2b15c598ca16b782332e767b84097165a2c925ee94b9e00b16999d9023`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 01:36:31 GMT
ADD file:c9efc3c7d1ab7d194634bbc822a30be0c606cf1b514ae6ec08f3bf597cfc27df in / 
# Thu, 15 Feb 2018 01:36:35 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 01:36:46 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:580b92388cc60e2f12bad45fb5749543b185a63ad0473a63d0c78a0460e384f1`  
		Last Modified: Thu, 15 Feb 2018 01:44:57 GMT  
		Size: 45.4 MB (45387826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65dbf4fbb29152c25921baf12219a58cc0f223958b5fb71f14044006b09e00ec`  
		Last Modified: Thu, 15 Feb 2018 01:45:13 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; s390x

```console
$ docker pull debian@sha256:235dae65003a23319dffe8640b228da7227c3a26c0ede1dc41d0bc3d55715571
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.0 MB (44972118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bce497bed04f1fad884ee160cdae9ff73a4dcdb25171ddb48e78f68f68ffebba`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 06:23:45 GMT
ADD file:0b08dd4412206bd15147ab21e502443964b291fd87ce8818d4d5040d12211a6b in / 
# Thu, 15 Feb 2018 06:23:45 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 06:23:50 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:78bec906879e867a828a698df0744623be8a00c1b9c211355f428c8fe434b093`  
		Last Modified: Thu, 15 Feb 2018 06:28:09 GMT  
		Size: 45.0 MB (44971896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c234b88c5ffc5942d214a9c92897a87087a3425d5c6028cd6acb82ff2b4fa2cf`  
		Last Modified: Thu, 15 Feb 2018 06:28:22 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
