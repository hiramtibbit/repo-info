## `debian:experimental`

```console
$ docker pull debian@sha256:ea97b2e9062c7295e5725989e8f540c49c4ca99bb9e80b699d67c4fbb1fb512d
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

### `debian:experimental` - linux; amd64

```console
$ docker pull debian@sha256:661f906d5ad2258f63de1705627aa6bd2035ab7f7ea560318c48b15120220f4f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.8 MB (49797254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:682b0c0c1621d4300778624c0fa9b0df540882a814bd56943cfd611a2985ab1a`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:31:21 GMT
ADD file:108d1c925af5f611fe0347daf7c09b5164e9ce469c040bbf4a441daf454c0fb4 in / 
# Fri, 28 Dec 2018 23:31:22 GMT
CMD ["bash"]
# Fri, 28 Dec 2018 23:32:43 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:0352a27688b9dca4135ea46d2a56f76667e1ea1e9d3fee7ab45a5545089a1d08`  
		Last Modified: Fri, 28 Dec 2018 23:36:36 GMT  
		Size: 49.8 MB (49797033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e444694ec135035076319a502cdba0c4e72acdc5f65055b3617af199c41d31e`  
		Last Modified: Fri, 28 Dec 2018 23:37:12 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental` - linux; arm variant v5

```console
$ docker pull debian@sha256:982df0c6e78247718c10cd0d5492f84d693501d2f1714d4efed35eb1311ee4ce
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.9 MB (46931463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:097585bf973851c610bddcd0373d07f438dcfc22970aaa67971882f7c90be0e5`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 10:00:38 GMT
ADD file:547a7d76cd9f13a7564574bafd7aea4dc9298f22da6298c8423ec914c564d203 in / 
# Fri, 16 Nov 2018 10:00:39 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 10:02:49 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:95f493ba6963d902d04df52651217c4caca2aa8f7f36e79d64e1ecdd76bbbdad`  
		Last Modified: Fri, 16 Nov 2018 10:15:28 GMT  
		Size: 46.9 MB (46931241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8895d7c0feb5bc3ec0bf750fddf86a14f353d90338e2da654cba733fb57af5c5`  
		Last Modified: Fri, 16 Nov 2018 10:18:04 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental` - linux; arm variant v7

```console
$ docker pull debian@sha256:7d19d1f5d9af13bb0dba7483fcdb104ba6ab544b0438c3e2ef302871a4b47ed6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.8 MB (44798122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c925a0b738ed7e134148c0d9cf598e1f364ab0187c8ac7d036d7d6bd9f4eb1b`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 13:11:12 GMT
ADD file:776b7316572022ad8c79661b45592adc33fadd6a1db4d946881b9fce7882f900 in / 
# Fri, 16 Nov 2018 13:11:13 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 13:13:20 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:c52957941db33705018aec6754c184dfd6179ba953eac337b53fb59cc13e9ded`  
		Last Modified: Fri, 16 Nov 2018 13:23:47 GMT  
		Size: 44.8 MB (44797898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcef9ff4853cccf295453ceb6529c811459aa5003a6c972c5c9cc9ef9ba179ee`  
		Last Modified: Fri, 16 Nov 2018 13:26:14 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:1e17734f6850efca181cf887a8054d9071b47e52b8318ef8323604c778f47b99
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47624563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd600c6aaa9751c17fd8b1d23b702b96a5364b0fa5bb12d9e5c726ccaa153ffe`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 10:16:40 GMT
ADD file:05f399b3cd26d4da909154d0a68295fc1d9c4b79de3194ab25c69104f2014a04 in / 
# Fri, 16 Nov 2018 10:16:41 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 10:17:44 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:6e083426206a5cdff31326e4a6614a84d69956a90b72636a4a69d91b413a888e`  
		Last Modified: Fri, 16 Nov 2018 10:28:50 GMT  
		Size: 47.6 MB (47624341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc4b97509fb7a3f5f47a9a49c18c9e5d93f7a1fc2b98a326ef1a31b6d19b8ae4`  
		Last Modified: Fri, 16 Nov 2018 10:30:21 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental` - linux; 386

```console
$ docker pull debian@sha256:92f9cf8dc837c13a2c7a98831ae7fe08c4e7556f5b959ce4feebe876baec8ed0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.9 MB (49936784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf8011ec04f781f2bbc20a213197c11b9d3548afcda9565a69c929472e849e4b`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 12:39:29 GMT
ADD file:908ee157cd1840bc664f4a22628cdc1e8e4e1443d5049cc61b429690e2b70886 in / 
# Fri, 16 Nov 2018 12:39:29 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 12:42:54 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:2c9a836802a7a211e54ada509dd1bd39f33b8fcd77f44d9807afc95648d57549`  
		Last Modified: Fri, 16 Nov 2018 13:03:47 GMT  
		Size: 49.9 MB (49936564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b57d6d18df18b22495aac97bd8e07be1fbb66494e3090e13476df237106b10ef`  
		Last Modified: Fri, 16 Nov 2018 13:08:52 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental` - linux; ppc64le

```console
$ docker pull debian@sha256:26041d3bc7292da69bfec5094e7fd0ea7ee8820d749b92cd128308246c0a09bb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.4 MB (53407462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:facf6bf47ddaac1f5cdf961c3b11e9396eb7bd3f72733a97dd2c6f6948f5bf2c`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 09:23:34 GMT
ADD file:039dd0f1f90b2ba4b0564de5812df04204730f86f2fb3dfe792679899360821f in / 
# Sat, 29 Dec 2018 09:23:37 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 09:23:59 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:1763168294e0e0842a88e05a50a19cebcab4302c61e2477dfb0c0eb789c04b8a`  
		Last Modified: Sat, 29 Dec 2018 09:30:08 GMT  
		Size: 53.4 MB (53407239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:346f06287fd5ae44fa1dbc8f443d52bbf44ce7d0d6b87d840d8177cae4057042`  
		Last Modified: Sat, 29 Dec 2018 09:30:39 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental` - linux; s390x

```console
$ docker pull debian@sha256:4992b63dc5f7e85df8e872734cca6ce614a84b29b5df71495e4bad49afcaba92
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.9 MB (47868778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b353f3970c5abce3f0d858c35aaa5e440b4e8a2ae9d7d6b0994eb3f7b76dd93c`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 12:45:24 GMT
ADD file:365e73b920f4c8f481a2494212695e69a816b74cc82c745a87b1ad09a71c103d in / 
# Fri, 16 Nov 2018 12:45:25 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 12:45:50 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:b0eed50f21bf7129bdcffd1e396ab5d51cf287bc38b9573551a9e6269077180c`  
		Last Modified: Fri, 16 Nov 2018 12:49:57 GMT  
		Size: 47.9 MB (47868557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3eeaf428c72e99c6fa33eec5c8cd4ae4e363249f36b0bd74072d464058bfdf1`  
		Last Modified: Fri, 16 Nov 2018 12:50:26 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
