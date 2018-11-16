## `debian:experimental`

```console
$ docker pull debian@sha256:e1cbfc09661eab6e35976c59f5df263bf861876a9b3ec1273cbc41033b1088d8
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
$ docker pull debian@sha256:214d68edd025fa44b8794902d5860e86ec3d94174d6369b3a1088914ec6cc65d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.3 MB (49259837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e362f4cfa82a51b6b3edbf7381347fcf511a7ae1f9d06b6f45b41533255a8705`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Nov 2018 22:47:14 GMT
ADD file:2dca427612e13b607402ba11006af35433afae201780c511f51276cbedfbca0c in / 
# Thu, 15 Nov 2018 22:47:15 GMT
CMD ["bash"]
# Thu, 15 Nov 2018 22:50:40 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:309dd1c701d39995ac3cceaf83e1a9fba639e15d74426d6528a12594a96b6abb`  
		Last Modified: Thu, 15 Nov 2018 23:20:36 GMT  
		Size: 49.3 MB (49259617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ede48ada7f4eca23c347373fb2b02fe3b508a8f36f66d33a53333b083074aed0`  
		Last Modified: Thu, 15 Nov 2018 23:26:49 GMT  
		Size: 220.0 B  
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
$ docker pull debian@sha256:46bc33e57443c2f7254768e43d5b1049065c2dc0c336ef6abb6154084bb23fd6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.4 MB (52388575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa74a831483f0889e7110d941bee5a4fff4c7e8905c271ed44aa2a4b6b9ec9c8`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 09:33:49 GMT
ADD file:3bb08b37d4ea2b908be24d57c3d0e5cde0ad3767b73fe6f62ea1f5fcdf637555 in / 
# Fri, 16 Nov 2018 09:33:50 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 09:34:33 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:05324940fa95a9f0dc85b2af16b4a6abad49bcd0a4a6c26efbfad5cd29f9e1c6`  
		Last Modified: Fri, 16 Nov 2018 09:45:30 GMT  
		Size: 52.4 MB (52388355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f778f80ad7583b56c71bd85e2e674c95a9b408472ee155707c4be2a0ec381ad1`  
		Last Modified: Fri, 16 Nov 2018 09:46:42 GMT  
		Size: 220.0 B  
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
