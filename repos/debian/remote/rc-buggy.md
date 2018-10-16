## `debian:rc-buggy`

```console
$ docker pull debian@sha256:41f716faf2ce950b7bb23b3428235dac5eeb8076edbf7121d7da22c219a7e0c4
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
$ docker pull debian@sha256:e5ba4922e7015ec28e03fd7ed6e35350462ba53c5772b455fcd5e96e0a467bdd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.1 MB (49108123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4db5958ac2e9975bcb76bd5b28316693287e37b6c48fff5ce21584c9540c2174`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Oct 2018 23:22:53 GMT
ADD file:12e34cd91f24d3d0c4716498cdd87838722af59e568ba8c18c457c367a53a315 in / 
# Mon, 15 Oct 2018 23:22:53 GMT
CMD ["bash"]
# Mon, 15 Oct 2018 23:27:14 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:38517b3035164966f7e2b960f3e87e1f9178537d06992e6045fbd375b84cddfa`  
		Last Modified: Mon, 15 Oct 2018 23:31:59 GMT  
		Size: 49.1 MB (49107897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10a47c3b75fdfa4c765b15f88905d635c349c008c415b4653dfcc04f065f79b7`  
		Last Modified: Mon, 15 Oct 2018 23:38:42 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:rc-buggy` - linux; arm variant v5

```console
$ docker pull debian@sha256:87f57e15b1c8a3a1db1e988984fe0678f98a8fca183ac39d93d252b98555f786
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.9 MB (46860729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24efe72226edf87e7fc33c85b97498fc9eec1059801140a2d2c7e949a165db76`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 08:53:12 GMT
ADD file:d204a837dc7c47c406943c2337da21ccd177ea67f346558d9dd6ba518eb5e445 in / 
# Tue, 16 Oct 2018 08:53:15 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 08:58:03 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:3a2a7cefe87adee1328d1887984c79e8eb71aaaefc97a339601a30fd31866a41`  
		Last Modified: Tue, 16 Oct 2018 09:02:27 GMT  
		Size: 46.9 MB (46860503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d49ecbd1de96cb8b79a73031d2c10471b6ee2a4cb0863a838effe01b58a84f5`  
		Last Modified: Tue, 16 Oct 2018 09:08:33 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:rc-buggy` - linux; arm variant v7

```console
$ docker pull debian@sha256:e8e56847f597928e59aacca8c3725841528931aafb36b83aff46be4d076427a4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.7 MB (44685472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:797ad430e6808e97cfe94fc018bbaef5cf8df333e4f4413c2c1f642d035f85d8`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 12:03:01 GMT
ADD file:3d47e4eafb1700975274b7c68ee1bd156e101e5252d990f75937d97a90f7b613 in / 
# Tue, 16 Oct 2018 12:03:02 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:10:32 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:4760d7874360cf16afc72e3ed07e58414d51cccfc8023f0bf68562c82bc5c471`  
		Last Modified: Tue, 16 Oct 2018 12:14:27 GMT  
		Size: 44.7 MB (44685243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:078f4f69d4ab626f5608b6c7fa19537c612ceccf6a2672bb15486ddd108afa8b`  
		Last Modified: Tue, 16 Oct 2018 12:19:36 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:rc-buggy` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:25794b8c8484e0a4cf17d1b6c53f97b7de95c46f4f0ab778a026eb1670aa3e34
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.5 MB (47450693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b15d7231eea350b208e8e604d04571f9f8952bfe2e005082954e53048151e46`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 08:41:25 GMT
ADD file:993a36018778e74ae6ce1afa2ba4377c60bb69d360987bc158b9081037ec8587 in / 
# Tue, 16 Oct 2018 08:41:26 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 08:45:40 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:157e3bb7825ebf937e61c4c02ade571002c5e3384dd3ae81d0832ee2d2619b06`  
		Last Modified: Tue, 16 Oct 2018 08:47:21 GMT  
		Size: 47.5 MB (47450464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e79732800d38404d543b399ac8ae8996485aac1217484a1846ba68e88193102`  
		Last Modified: Tue, 16 Oct 2018 08:53:50 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:rc-buggy` - linux; 386

```console
$ docker pull debian@sha256:fd5329085c0be0fa9d6db850afe6c563965e1ca24f955abf3fbd2fbffa14ebc7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.8 MB (49800670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bc20ce6b9ad1683cad4867b752a9aa7090d864da758085fb184ded3b06db3a5`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 10:45:35 GMT
ADD file:6801190ad21f3efeeeeb6ca1473d8f32e41d2ba5324c620bc949df696e4b1cf4 in / 
# Tue, 16 Oct 2018 10:45:35 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 10:53:21 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:c11ca5589af8bf436bc7393ae2e24b1f4f170ca31b4b1cf385603848d56fc658`  
		Last Modified: Tue, 16 Oct 2018 11:01:43 GMT  
		Size: 49.8 MB (49800443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fec5aa38584ef17b5125c1ef79d80ec22ed93ad79e77b0fe6216da297abf0859`  
		Last Modified: Tue, 16 Oct 2018 11:12:53 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:rc-buggy` - linux; ppc64le

```console
$ docker pull debian@sha256:00996a1eafedebcd20f35fdb692ed34c38f2ada910c6834856d5a5b6bd1e982b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.1 MB (52120965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63bbfcabfe8b3685164d15a571119987eaaf8f1cb45c4b1911f9384a31bad264`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 08:19:05 GMT
ADD file:d9b7fdbd5284d601c2fa0ac9ef56d94501675e8bb1272b818f990813457dad97 in / 
# Tue, 16 Oct 2018 08:19:08 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 08:24:14 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:266ba3ea23b4937c573be52c8dbda3ecd61615aa8a826c0f19bd1519b482bc99`  
		Last Modified: Tue, 16 Oct 2018 08:27:28 GMT  
		Size: 52.1 MB (52120737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e56ed3e679cdc420da1c7f504081c46f1c2cd3cfcace8f761c0d1fa25090d89`  
		Last Modified: Tue, 16 Oct 2018 08:35:29 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:rc-buggy` - linux; s390x

```console
$ docker pull debian@sha256:efd17982b506c8f0b1bbced74f025ccc499980023b4037cbac95a4a13ea339c8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.7 MB (47696068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:164350afa89e51cc7a07196c41dad131770a443bf24a49ae7a1f967dbe2142f6`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 11:41:58 GMT
ADD file:c2788418bf37902fd1afb90f8c09580137baf257270ad310c93f4617b2910c5c in / 
# Tue, 16 Oct 2018 11:41:58 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 11:43:39 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:3d678438ae7450e08efed3c628d6a7e353e585928d4dfe02330f09708b274772`  
		Last Modified: Tue, 16 Oct 2018 11:44:43 GMT  
		Size: 47.7 MB (47695841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6361257d1444feadad5081bc635bdbf830d54d77f0eedc123bdee63d66ebe6f5`  
		Last Modified: Tue, 16 Oct 2018 11:47:13 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
