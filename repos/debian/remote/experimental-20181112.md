## `debian:experimental-20181112`

```console
$ docker pull debian@sha256:78eb6744006792d5519fefb5595a2202f4c416110419f6cedbaa85c9f521d6c8
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

### `debian:experimental-20181112` - linux; amd64

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

### `debian:experimental-20181112` - linux; arm variant v5

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

### `debian:experimental-20181112` - linux; arm variant v7

```console
$ docker pull debian@sha256:36ae75fdadcfdb9197740dcb6cee2c33ed1070fe09fc1d000707063c0265614d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.7 MB (44685433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81214dff2ea07c2a447a25bff003e31b14527b611c698a539e1b0fcec56387bb`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 12:08:12 GMT
ADD file:aa7043fa83fa40bda1773fc4c0488777dd23cb6ca7da93f3a4d9d26fe431e3d0 in / 
# Tue, 16 Oct 2018 12:08:17 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:10:18 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:337ab185ba859e53f67620946a6b71683c5a8599ea3ee935d3f9e2cf89bdc18a`  
		Last Modified: Tue, 16 Oct 2018 12:17:45 GMT  
		Size: 44.7 MB (44685209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:377378a4605586373732271f65f5c02d8926af8ad847a7e92444dc1d1994b548`  
		Last Modified: Tue, 16 Oct 2018 12:19:23 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental-20181112` - linux; arm64 variant v8

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

### `debian:experimental-20181112` - linux; 386

```console
$ docker pull debian@sha256:bd184d5e17a2e5d1d5d87a8aca2a85b13f945c0f977d85272fd43847f8d182f9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.8 MB (49800632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:660588eb6d50caa14df963d1b8c8673d8753d0c697c785ce15cb2cf5259f242e`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 10:50:59 GMT
ADD file:cc354deb02fcd778063f7e7bc826f1797702d9165d73fb4322bf59d103eb2642 in / 
# Tue, 16 Oct 2018 10:50:59 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 10:53:07 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:e8922b8810a4ef00927958f01181443cf894b6a5852f63330a0cce7f2f5dbefb`  
		Last Modified: Tue, 16 Oct 2018 11:08:53 GMT  
		Size: 49.8 MB (49800407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4874c5a0a1e2d13c7dae10854c7513f8395c158aebbfad6e2a44c4fddbdcc82`  
		Last Modified: Tue, 16 Oct 2018 11:12:26 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental-20181112` - linux; ppc64le

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

### `debian:experimental-20181112` - linux; s390x

```console
$ docker pull debian@sha256:9f84d5bbbad9a11cce84fa371670ed7495ec8d298ceac9106b7e15a44475730d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.7 MB (47696117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9731ad5df816eaa1a5722e653d74e2c405aa840e812cf9c7d3d92611a25678a8`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 11:43:21 GMT
ADD file:64a92e88264606a83f7ab8be6f4e9cd1f845d796e9c9ea4b5d94199f068b2ebd in / 
# Tue, 16 Oct 2018 11:43:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 11:43:35 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:8194c5312c44b14f0b43056c4ea017551e71af12a90e3e8ad0ffdeaa688b4512`  
		Last Modified: Tue, 16 Oct 2018 11:46:47 GMT  
		Size: 47.7 MB (47695895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b436d5df5e19efdecd435120dc3d91f7221eb1a2d1b21ecf6d58c638a46796b`  
		Last Modified: Tue, 16 Oct 2018 11:47:06 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
