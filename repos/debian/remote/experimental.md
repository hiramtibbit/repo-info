## `debian:experimental`

```console
$ docker pull debian@sha256:df7167805220e75109b95f6f533cbc87b259c7ce66d1f82dbb6a432298829064
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
$ docker pull debian@sha256:35c45f9831e366336c76d4cb542e32fc749e6c28d38a864159fcc19f6deb623e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.1 MB (49108110 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be11c5f9dd356f32d97f122ed83a6849473b14f8da4a0866f77f67c10bf7456c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Oct 2018 23:25:48 GMT
ADD file:65e69e2aeccbe5227584336241565b944f1cdcb3ea6b0a7cda4dd730324a6b61 in / 
# Mon, 15 Oct 2018 23:25:49 GMT
CMD ["bash"]
# Mon, 15 Oct 2018 23:27:05 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:8bcabf193e3c9361ea2ddb9d0b9350bd3c496549db4376b79d57c8a22743ffb5`  
		Last Modified: Mon, 15 Oct 2018 23:36:18 GMT  
		Size: 49.1 MB (49107888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f478cfbe88bcb0a11c4ae68d01813ea5ea4694a13ac096a8296e20792673520`  
		Last Modified: Mon, 15 Oct 2018 23:38:24 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental` - linux; arm variant v5

```console
$ docker pull debian@sha256:b9aca1931b2f1875130cd522f36546ab736f3f0bd897e5c09b40f27d705d8dd5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.9 MB (46860831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1faef2797c894dc996ad4ad3893df633ddef4181f4a461a7f54c0d3024853c26`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 08:56:42 GMT
ADD file:d2fbf4485384353a561e90fea0d2ff852649a55c8882e331dadad6c683501994 in / 
# Tue, 16 Oct 2018 08:56:43 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 08:57:57 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:504f9c112f82ee8ad3d1c18e9811776063fcf1d146d6cc98e9db861df4214280`  
		Last Modified: Tue, 16 Oct 2018 09:06:24 GMT  
		Size: 46.9 MB (46860606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a3fcef8ce57eb5423c2199f667e2e3a4c85ae9fdbb0c75f3ea3ac1f41fa9e2f`  
		Last Modified: Tue, 16 Oct 2018 09:08:24 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental` - linux; arm variant v7

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

### `debian:experimental` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:59579ac19b3127f91a3fd087d982a2b0f9420e9dc70259b5c38a8f323804b4b9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.5 MB (47450666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad6763087c9caa237eb38b6f4177e38715aee7175994fbaf43c01a8f13c38d91`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 08:44:53 GMT
ADD file:0131ae9423d7e0142e05c8ca0b7c466767c34906c43e6a221da411dae480309c in / 
# Tue, 16 Oct 2018 08:44:54 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 08:45:26 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:dcf9a70bb586ccc26691056d945a5e0da2e782a84b73549401d262fe60f58d72`  
		Last Modified: Tue, 16 Oct 2018 08:52:48 GMT  
		Size: 47.5 MB (47450442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20712a2496762aca5017bf905205e63bb14b2efd0b07d1209e91589f801f8e7e`  
		Last Modified: Tue, 16 Oct 2018 08:53:33 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental` - linux; 386

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

### `debian:experimental` - linux; ppc64le

```console
$ docker pull debian@sha256:f068921782f321d586c25d43767b6c228e3d0381e2e557523b97a2de41d7a24d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.1 MB (52120912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba02afe4374c4bf2ecbfcb584764949e62cca3ebcee56aa3a9e6268acd2ca14d`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 08:23:26 GMT
ADD file:7b3d3b46fe9fd7d3f2b7fe7ed5881c2c55e3d115538325734be443dfcc71051f in / 
# Tue, 16 Oct 2018 08:23:30 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 08:24:02 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:841fe9b085561e7fc6b81b12659ef2de30e40b62436c5a8a8983a19e85ed6d79`  
		Last Modified: Tue, 16 Oct 2018 08:34:16 GMT  
		Size: 52.1 MB (52120689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4776bd8fba865927bcadc8bfeafa4c0150b254ac5a9e151efa3549047b049d6a`  
		Last Modified: Tue, 16 Oct 2018 08:35:11 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental` - linux; s390x

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
