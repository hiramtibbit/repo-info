## `debian:experimental`

```console
$ docker pull debian@sha256:2a47ea86e5e17437ba54ddb723db352e87cb159c71054f8ec6244a03453e3521
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
$ docker pull debian@sha256:1481a642e9820f47d0e705638a5549ebfc54bd46247fb7f3b90918fe1752e436
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.1 MB (50076598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30520994085b53fe65bab5f6312c993e9f687c8cab12623a4995d3bf4a59e091`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 03:31:03 GMT
ADD file:cee9a07d45cab8236a3043f71d7c106d514d2f411d2e0bd55432c2b8deca8f04 in / 
# Wed, 06 Feb 2019 03:31:03 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 03:31:51 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:481ef8f95dd737480940543ca91bd4a86ddedb139cf60d98ce79a7b9ef0a103d`  
		Last Modified: Wed, 06 Feb 2019 03:36:32 GMT  
		Size: 50.1 MB (50076378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bc142ba85f12272d05a294f7e9b3be930b3321c18b799eb14b4986c4a99565b`  
		Last Modified: Wed, 06 Feb 2019 03:37:13 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental` - linux; arm variant v5

```console
$ docker pull debian@sha256:97e4dd688f1825cfd6c816924f1533280c17fa70b0958cc412f4bde1da598d17
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.8 MB (47788317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8f8bb6e20a73e394cc012740ecf77a2a28b8069e7e0e2900d0dc91df9876a2b`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 09:57:15 GMT
ADD file:dd005d261446ee86ca6a68dcc9d69e14abf4ac29333d072829053c9b42c27727 in / 
# Wed, 06 Feb 2019 09:57:16 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 09:58:46 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:3d0b95750579509a12e11ffc6bcfb6c2c683b0744a6e0d98d118fab3ecb282f1`  
		Last Modified: Wed, 06 Feb 2019 10:04:52 GMT  
		Size: 47.8 MB (47788096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7922497f4e59223b13c61609b2b0d2b25fe89ea64cc3132181919482f86613e`  
		Last Modified: Wed, 06 Feb 2019 10:05:52 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental` - linux; arm variant v7

```console
$ docker pull debian@sha256:d9ae836895befb185f023645b027a5e3f7ad63ab2d29e374a9d68a1f1fe774d9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.6 MB (45626301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e200e109a387d6ab3cedf6702846d6fd182c702401046d3028911f457e621ef2`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 13:06:21 GMT
ADD file:5f205f83d91bf7e376c0169944d03e204e722520901d54a3b9a1cb50017efc55 in / 
# Wed, 23 Jan 2019 13:06:22 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:07:48 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:6e87a1cdd0a410b9816083fa12a0306f750db48f4ffa82df212bcd23526c0581`  
		Last Modified: Wed, 23 Jan 2019 13:13:16 GMT  
		Size: 45.6 MB (45626080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6086a2e6901626ff91aad7912c1a0eeb6470b49e781c761f9c4a4392df0cf26b`  
		Last Modified: Wed, 23 Jan 2019 13:14:07 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:02e8f69265c9c23db05a404dfd7d2eb63fac3651ff2771e7d4f73dba5f758ac9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.8 MB (48820912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f114dea478b873a9d282674e49830eabd4b4ca2682bbdca9f4e8618f421feeb1`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 10:10:33 GMT
ADD file:e12ba7776b4aa40f80ae353ccf5987cd6527b2f0eed7718a51775a633d2f3724 in / 
# Wed, 06 Feb 2019 10:10:34 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 10:11:01 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:cbd8738a66237a64f81e747501c78f912c041c878765aa7b36e97d96d626a155`  
		Last Modified: Wed, 06 Feb 2019 10:16:13 GMT  
		Size: 48.8 MB (48820689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8bec25e3ef76dd8da638cfb29167b2884ccd550abfc81ebec8aa4beceaaf24`  
		Last Modified: Wed, 06 Feb 2019 10:16:40 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental` - linux; 386

```console
$ docker pull debian@sha256:14e06c8c1f57309b216874ca0801412134463377641d19d6d3a1e1f537904566
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.9 MB (50870864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8284e5846d7296699bffa8464e8bec0131d409a512044a89d5c73eebc9b23fca`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 11:55:26 GMT
ADD file:0add9f9062795a5fd940e8d7812441b44c63e25d815ba5e359262ff52b7900c2 in / 
# Wed, 23 Jan 2019 11:55:26 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 11:57:41 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:5be52283bbd55505d56c6a7a85b772906015cf5e7e56cfd361634504f4cce7b2`  
		Last Modified: Wed, 23 Jan 2019 12:03:42 GMT  
		Size: 50.9 MB (50870642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2358fd534ed731b557d0d30f6da603a90df34d248c92179d4066b0735a275a9a`  
		Last Modified: Wed, 23 Jan 2019 12:04:48 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental` - linux; ppc64le

```console
$ docker pull debian@sha256:588d51829ced428e53ad06b78eedc58325edca74d38e20e1a275a1f5c2f8657e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.8 MB (53768906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1d4ff99622795a98d37cf873cc3756d1f376c90c34b46eb616323b52321401c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 09:27:35 GMT
ADD file:374e42330ef3773bc4c84f98314a5043dcaecdcf4b0245456f9da111a86fa1ef in / 
# Wed, 06 Feb 2019 09:27:38 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 09:27:59 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:ffc7ff5067f9f9ccd84f270420b90f59a9efbc2bf9056389575cff788547d680`  
		Last Modified: Wed, 06 Feb 2019 09:32:34 GMT  
		Size: 53.8 MB (53768682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f979f3ff41938088886668881086d62ee19d28176062349d1f9811f1c6089f5`  
		Last Modified: Wed, 06 Feb 2019 09:33:00 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental` - linux; s390x

```console
$ docker pull debian@sha256:590ecff8960a533c851aae9dae837628a37aaf36bd5de3f4e0b3f6b614070cdb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48689573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9a247c7c8174d258b621012f68a32842ed217afeedfc21924553bfb3442c6eb`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 12:45:37 GMT
ADD file:4f5e1a918a5384be7880759496a45d6fb5ca7fdc02965cb11a90e8627c0c4bc4 in / 
# Wed, 23 Jan 2019 12:45:38 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 12:46:04 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:1e92c6c080df4088f7ff6eb3a15ccaacb6cf027656ece8e45724e930c92f5e96`  
		Last Modified: Wed, 23 Jan 2019 12:49:43 GMT  
		Size: 48.7 MB (48689351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bced95872086c5641f14b9bd31ff45f986d6bc4fd943987619a87c9c9cd6bce0`  
		Last Modified: Wed, 23 Jan 2019 12:50:00 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
