## `debian:rc-buggy`

```console
$ docker pull debian@sha256:1e59e5e835cd7703bbc49ae361709e924939c12e8da7aaced7bcf2e45d586e20
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
$ docker pull debian@sha256:859d76d807e202354d9e3920b3cff78388c214ff036e854420dfe44f1ac12802
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48725811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50192e6b7d1df73274bfa98b73c36bbec5fa379ffadd313b3dbaa91fbacca3d1`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:24:39 GMT
ADD file:f04b64a73c29541d70cda855be7033dbd8e0b173ab11cd93458f3400fd270d85 in / 
# Tue, 17 Jul 2018 00:24:40 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 00:31:55 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:e367ac4072dc48836ab52faeb39e943b075e21aa02c1a88f838651b9b384de50`  
		Last Modified: Tue, 17 Jul 2018 00:39:42 GMT  
		Size: 48.7 MB (48725588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b211b70c94849b14e5b9436debb9951bde674c421be598deb88472d687f8a8b1`  
		Last Modified: Tue, 17 Jul 2018 00:50:31 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:rc-buggy` - linux; arm variant v5

```console
$ docker pull debian@sha256:f0d25019b2e77be5aab9c026c7eea05ddfdb3960c68b8547f39c528eeee8283e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.6 MB (46645804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f0c926d256f3173aa2445dce76eba6d96f008dd17a37a89c15fdcd1771a54ef`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 08:53:54 GMT
ADD file:feed6b12801621af72a787e98590f6fd783022a609efc8254532712521e6c570 in / 
# Tue, 17 Jul 2018 08:53:55 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 09:01:04 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:b6112397569f950be7cab355fd3cb9fb3b089c080499c1eebc269ecb7cc3715c`  
		Last Modified: Tue, 17 Jul 2018 09:06:21 GMT  
		Size: 46.6 MB (46645580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a87507a5b86ac3fb19ef4e0a98b10eafc23eccb105c996f60caf88e9bce84088`  
		Last Modified: Tue, 17 Jul 2018 09:12:48 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:rc-buggy` - linux; arm variant v7

```console
$ docker pull debian@sha256:3114f9d031f83384d6783542c435e0ce7f05f53509e3ae02e59aca96956ab88e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.5 MB (44475109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f33b6a609a7c2f57d5b0388446d7483f8b36b8be1ccba54eecbfeb4f1222cf1`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 12:01:58 GMT
ADD file:fb368eeca8896eaf5ae53a4a5f51bb2ffcb3de2afc5288178fc15e87327d624f in / 
# Wed, 27 Jun 2018 12:02:01 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:06:28 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:4d15482f8eb5deefaf0868a9ccd27a4114951064b3932d35d9efb85e81279901`  
		Last Modified: Wed, 27 Jun 2018 12:11:13 GMT  
		Size: 44.5 MB (44474882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269cab0b6d9bd05d49877213b69a8969c1218b95206b7b07217da30be084a20a`  
		Last Modified: Wed, 27 Jun 2018 12:16:38 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:rc-buggy` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:179ee114598e982e48c4c8050d6ac9092c3542d8925a70bf7d126fed5988c7b1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.0 MB (45967606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7d027c97936b3087cbe12ffabccbaa1e124a823e0c994274c2c86fc67bfa46b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 08:43:33 GMT
ADD file:1145a1860bba8a4d148966c227a31ee5ee05c524c8af7a2c0963bb5671b11ad7 in / 
# Tue, 17 Jul 2018 08:43:36 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 08:51:12 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:719cf01a9d639f6fad37c3abd73d6746ec6483c438952c7daf2503b9dccde689`  
		Last Modified: Tue, 17 Jul 2018 08:53:02 GMT  
		Size: 46.0 MB (45967380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:151ec2ac9d3d6ee805fbe968ac8612e0a785f66f815647c7c89df8e3fe18a94a`  
		Last Modified: Tue, 17 Jul 2018 09:01:18 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:rc-buggy` - linux; 386

```console
$ docker pull debian@sha256:d3d5bccb9a6683b978d68456fa746082f1a5e2c1a691851d344ef2f3e9f7c2fe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.5 MB (49529688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bcc842d6e31724e9c9874e70a45b727cf7a86211c452695b5e0d8afe08146d1`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 10:46:37 GMT
ADD file:9a56907f76deea3f2b22068eae8c6cc31bed7f9c7b3de38c6e99c54e77d0822e in / 
# Tue, 17 Jul 2018 10:46:41 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 10:54:06 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:c4a6da94b3de8d8ecc301930050dce3da90b886c8443b00166765e0873f7abf6`  
		Last Modified: Tue, 17 Jul 2018 11:03:38 GMT  
		Size: 49.5 MB (49529462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0597f6517d3950b8fc886288955577457d7a59c4417fc90809478ec84d035109`  
		Last Modified: Tue, 17 Jul 2018 11:15:17 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:rc-buggy` - linux; ppc64le

```console
$ docker pull debian@sha256:a34733e8aad0ea1d4d007caae640f777affa0012547a84edc21f57c9dace4c47
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.2 MB (50185269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8958b2111efbc0a8ea5defdd7ee4deb8f74f94291fe81acbc4af8a346fdadec5`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 08:18:22 GMT
ADD file:94ebec540eca8b99572e5842e1f1f2fe8cf7a62fb1366b2459edb37903e41200 in / 
# Tue, 17 Jul 2018 08:18:31 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 08:22:13 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:2d7cf41bf039d34ad7c6efe6cb9dc3370c5f55c39226a13fd409d52eb991f335`  
		Last Modified: Tue, 17 Jul 2018 08:23:43 GMT  
		Size: 50.2 MB (50185044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e29edbde9398f83f3a7b49692685280efe815c277a9bd19b23d9448b2b2a9a55`  
		Last Modified: Tue, 17 Jul 2018 08:28:55 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:rc-buggy` - linux; s390x

```console
$ docker pull debian@sha256:330bdc7a64676d800a3c991c57410101d94e0864d964051c7aa0a09f2fe672c7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47624353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3997005ed7c4e6830f663d66d3794b7f61440872a7ca243a52b4c2e0e5fc85ce`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 11:47:48 GMT
ADD file:e5fdd44acf3c50e200fa8721ef36ce18dcde4c041d59482bff0f2fcd7ff32082 in / 
# Wed, 27 Jun 2018 11:47:48 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 11:49:48 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:80e8bd77eaf2fb43b1f457021472f2481479fee109d88246d06d3fdf6743f24f`  
		Last Modified: Wed, 27 Jun 2018 11:52:08 GMT  
		Size: 47.6 MB (47624129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cf2151bc326ff0b5cae547ff3fa1a37743e870a9135ca3b64f7e1333a1bef02`  
		Last Modified: Wed, 27 Jun 2018 11:54:59 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
