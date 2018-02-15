## `debian:stable-backports`

```console
$ docker pull debian@sha256:827e5831784e78efda861f86b4309fd83b9045b40b7c8b0a08a7627353ef8d19
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
$ docker pull debian@sha256:5f2bfb487780baae3f65b7ec26718b6a370ba79a4ce045447009e68be73461a8
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.8 MB (43809422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20706c7b32958775356c830eb11210eddf7d21167b6b54a9dc82276d772ec25a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 21:00:48 GMT
ADD file:5606f3b00b6ac8c7a8a2bc92079df093abcae12f415c17ded941fdc1e5c2236e in / 
# Tue, 12 Dec 2017 21:00:48 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:01:01 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:892d7ecb5e8d92d3fe1bc8c683a81646e5c364154146f43e620290d54f555e99`  
		Last Modified: Tue, 12 Dec 2017 21:10:56 GMT  
		Size: 43.8 MB (43809199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c66c54cf85f3ccd15f5f285383659cc7c3b68fc94ad4db975bcf1c55958c773`  
		Last Modified: Tue, 12 Dec 2017 21:11:15 GMT  
		Size: 223.0 B  
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
$ docker pull debian@sha256:92e8a48e5c25f00ed3d799b1960dbfee4370ecbf9c576701be672c68a0726a48
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.9 MB (42913009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b398fe7a83cf5967157491099729805026966404b5e098437ff9e4ca1f927d0`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 18:31:30 GMT
ADD file:718a2f9550503e03533747b0a90f11d9e5e3901cc6d6ca1d879799053e520fdb in / 
# Tue, 12 Dec 2017 18:31:31 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 18:31:52 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:6b0da2862b465360e525f440830b13a2d2cab0727be29be0188db332ea16dc69`  
		Last Modified: Tue, 12 Dec 2017 18:45:25 GMT  
		Size: 42.9 MB (42912784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46a5ba6f82415011f1cf25579298023f552bdbae7686c7d953effe26eff59407`  
		Last Modified: Tue, 12 Dec 2017 18:46:04 GMT  
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
