## `debian:stretch-backports`

```console
$ docker pull debian@sha256:64f7b05043b7992aeb431cc71538e2ddb242f99332c2fe0ea549b0a0f781ca1a
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

### `debian:stretch-backports` - linux; amd64

```console
$ docker pull debian@sha256:151cf6f8ffd1af3b29c8db018634ff53c07061663b537fc22982930dd3919085
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.3 MB (45339540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c53a855903663f6d4fba26abb91ecd9c5d3792d051af254f23e5a3d0183b835`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 00:33:15 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a3d7a96703d0e413ec61eb318af1838d9885839d479aaa8215b1545fa90794c`  
		Last Modified: Wed, 08 May 2019 00:37:51 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stretch-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:b8a649b88e45f91a8a6f043ed6d6b2da29b05e34e01beef95de1b60a5680be1f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (44046003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d58eb29681477e9c5a4e7b3c3bb86181a48b1006942561b33cfeb828b6ac98c6`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 08:53:17 GMT
ADD file:5dfe3b771bd67a2856913544993e219cb8c7933c33523cc56fe13a3a0e76ce9b in / 
# Wed, 08 May 2019 08:53:18 GMT
CMD ["bash"]
# Wed, 08 May 2019 08:53:24 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:ca892ced475bf1c51c1f13b76a64549cfc5d1a0b55d33d8b9418efbb47887bf8`  
		Last Modified: Wed, 08 May 2019 08:59:09 GMT  
		Size: 44.0 MB (44045778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b16d62c2bf0b5793bde35c550f038d39d6ab1ce670f079f712f7d1c66cc1689a`  
		Last Modified: Wed, 08 May 2019 08:59:18 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stretch-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:7a4e64dec82ab9eb50a5ba8381924be323e156cc55940c037ae382137e337068
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.1 MB (42082830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cec71659022ba2fede25c96b72e325958609fd56231b62d38273b788c1a79ded`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 12:03:26 GMT
ADD file:7e8dcc40e246d53b86266855a2de8080d26e6b4ed9f594c1acc565784405735b in / 
# Wed, 08 May 2019 12:03:27 GMT
CMD ["bash"]
# Wed, 08 May 2019 12:03:35 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:f2a2fd7c1ab35cd1b5ea6fcc2b801f3877852797e2698ecdb9556e0dee3accb5`  
		Last Modified: Wed, 08 May 2019 12:09:40 GMT  
		Size: 42.1 MB (42082604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a78858d092ea7c60fe47489724aaf851ba488dd349d97e38109e463b84d69c3`  
		Last Modified: Wed, 08 May 2019 12:09:51 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stretch-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:93013b364227c2e23a0881360aefbf5c440208b2e5f1f28fccf3781244ee538b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43142178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b76cea9dd9f9586832f16babbd9143b9ec24db88218e44a870ec3840130497a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 08:48:25 GMT
ADD file:153045f4fe6532d8c2ff273bb249a7a3a4cba913c26a4103ba5ddce1af02c1e5 in / 
# Wed, 08 May 2019 08:48:26 GMT
CMD ["bash"]
# Wed, 08 May 2019 08:48:34 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:5894e28291972e44f5c3eba2779a85979bae6f95ed4f3e43ea5c98a132f06c48`  
		Last Modified: Wed, 08 May 2019 08:54:43 GMT  
		Size: 43.1 MB (43141955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d615815b8de882f27bc006babae58b6dccb1d2860adf62139602bbc4f6f71c1`  
		Last Modified: Wed, 08 May 2019 08:54:58 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stretch-backports` - linux; 386

```console
$ docker pull debian@sha256:b37de8e6145ddc05ae629459d54a50ee39b67b100e722e597c8078df18f1933f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.1 MB (46063596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6d92df9608fb02da1c3e2bc7ad853ce33822f0ac985cbb1016a3650975ec0b0`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 10:49:19 GMT
ADD file:fde8cf5700c66c38b88d4b3254ec1544d09194e06568c23fe3989f7eaa1f5785 in / 
# Wed, 08 May 2019 10:49:20 GMT
CMD ["bash"]
# Wed, 08 May 2019 10:49:26 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:b5d586ad7adeab23f6ff0b7ec90785dc757eaccd445976fda3f6d7db64d20585`  
		Last Modified: Wed, 08 May 2019 10:57:26 GMT  
		Size: 46.1 MB (46063371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f1bf846e665a0f7581df4f73085b2ef93ab5181af01daee056b94262d42c987`  
		Last Modified: Wed, 08 May 2019 10:57:35 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stretch-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:a46bff21f0684f158152e5f6ba19c913c92756e3b3a21c0327110e25b6f8f79c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.6 MB (45603410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e43a0ba6809169df7f3c9adc47969877c7cc976aa3a20d4977a2c81b468f3b1`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 09:03:26 GMT
ADD file:844cea0aa071f0f6b2640d4c452590a8777485fa27a0aad789553110eaeb7081 in / 
# Wed, 08 May 2019 09:03:33 GMT
CMD ["bash"]
# Wed, 08 May 2019 09:03:50 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:c6c4df30bc4ffa8fb97a3dda6f8758fb0ddeb8929d159369cf5974dd3f2ac117`  
		Last Modified: Wed, 08 May 2019 09:21:32 GMT  
		Size: 45.6 MB (45603184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83f4c02876f62b271e1d6f6ac15b4e77226d5d94dbd802f8784a5cb203446404`  
		Last Modified: Wed, 08 May 2019 09:25:53 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stretch-backports` - linux; s390x

```console
$ docker pull debian@sha256:a23c5a6210e2ae8dd4103a478214412ea102b8e66d4b2b56be2749a8dcf0ec67
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.2 MB (45197872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc3a0174e7d9d26eba75b09ce8065e10b3e1a3905251b2799a76d8c42f992747`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 11:46:30 GMT
ADD file:35b243252442c1fc6a9e4f7bea498f5b7302c530eb804ed6a79c5b84a68a96fd in / 
# Wed, 08 May 2019 11:46:31 GMT
CMD ["bash"]
# Wed, 08 May 2019 11:46:42 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:3602dd773e45048fcb10569c368bf7ddac54267760f371efbe1bb65ba8d67361`  
		Last Modified: Wed, 08 May 2019 11:52:15 GMT  
		Size: 45.2 MB (45197648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3bed67d4dc8565b503001cbf8a9820077f7ffc81bf0e3f646815050989c1040`  
		Last Modified: Wed, 08 May 2019 11:52:27 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
