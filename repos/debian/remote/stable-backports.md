## `debian:stable-backports`

```console
$ docker pull debian@sha256:c5bf06dc3e4167fe723ca6f4bdec8ba981f7e748284b7b654c35f91a6be92d78
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
$ docker pull debian@sha256:095a7c5a2da96250e4f98ee31fea4be41af646a66a5c2a8f81321b729d706774
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45135302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4432a903abc18754e115cf422fb78e45e780df65c9c0bac8a4499ee5c10b988`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 22:22:19 GMT
ADD file:8ce25752602de735b001db8b874e5cec0c221407d8e005a889ec4f2d7d3523d3 in / 
# Tue, 13 Mar 2018 22:22:19 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 22:24:16 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:e351a8af5f009964d80dbd1ae598fe2e01824afea933f84173231024e7c296d1`  
		Last Modified: Tue, 13 Mar 2018 22:50:51 GMT  
		Size: 45.1 MB (45135080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98e6cb1f86f1556b55a1156a6f9d1358a636de0fdf41452d60cf63e5e2ba9fa1`  
		Last Modified: Tue, 13 Mar 2018 22:51:28 GMT  
		Size: 222.0 B  
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
$ docker pull debian@sha256:1fd1d148e4de9dfa034b9ebe0a6c6fd7f743b99d28f312e823d692e1e7fec284
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.8 MB (45837940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e780140500d797ca152cabd636e903191c3ce6ef36cbebd50b00ccf3d3920dbe`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 17:01:43 GMT
ADD file:891d19bff7271b48688593ae98924fc6cf80c636d2d519ba0361a0847db43390 in / 
# Thu, 15 Feb 2018 17:13:48 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 17:26:00 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:09ecb4e20f3f16130f9b3d58aad13ec89cfed73877118b5d398eb61b640da6fd`  
		Last Modified: Fri, 16 Feb 2018 00:55:09 GMT  
		Size: 45.8 MB (45837715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1233dd1672fdf384eb76ff0c2717cb5059c35fe87095c4388a166e3a495a5454`  
		Last Modified: Fri, 16 Feb 2018 01:08:04 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:cac4b8597de5723d4cc532356e35c8869af906be209da8877539c46754bbd403
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.4 MB (45377276 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0612dcc72067f2e850d913c205bb94a601f9296182904b9ae98b7d0ce0c86c5a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 00:34:12 GMT
ADD file:7508c27678b40a53f2b9cafd3947fd4e91751c6cfb04ee430a5977f92a2d29ad in / 
# Wed, 14 Mar 2018 00:34:15 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 00:34:26 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:d0587e76a2435b345a687c1480a8c0e3be2c6e8eb6210f4ce2fd5e384c2cd913`  
		Last Modified: Wed, 14 Mar 2018 00:41:46 GMT  
		Size: 45.4 MB (45377051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeb0f08fa5a50a1504aeb21be4d0e4d32be9da990c43e3e4a122da8503743efa`  
		Last Modified: Wed, 14 Mar 2018 00:42:00 GMT  
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
