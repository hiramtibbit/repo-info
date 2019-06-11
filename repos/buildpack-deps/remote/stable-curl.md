## `buildpack-deps:stable-curl`

```console
$ docker pull buildpack-deps@sha256:5b65551ed9218546252c38ff35915fb64b8fb1c5f7de47513a88b79ff74e9962
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

### `buildpack-deps:stable-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:76f1390c3910b5b7e713a79517f5c39c999af402266fe641b81764672f1aeec2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.5 MB (60464598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:534976f45711bb972169f46fbd4e579012701ec9d2a4f73a51414a05a4f51a8b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:07 GMT
ADD file:6e8620824300ccf3754fb5d8644a1dc7c69431d4cd1ef9d28d73f39260f96020 in / 
# Mon, 10 Jun 2019 23:24:07 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:29:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:30:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:6f2f362378c5a6fd915d96d11dda1e0223ccf213bf121ace56ae0f6616ea1dc8`  
		Last Modified: Mon, 10 Jun 2019 23:27:55 GMT  
		Size: 45.3 MB (45339350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:494c27a8a6b820f9167ec7e368b3a9bb47d7029f4dc8c97c67091f3757a5bc4e`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 10.8 MB (10785105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7596bb83081b6c8410df557d538a0ae45922cbf81e469c6f4cfa835247cb24ab`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 4.3 MB (4340143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:stable-curl` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:c251337a037c1e806241a2ac04f652bb54f2ca7f820ab5d894a62208faddf0ba
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.1 MB (58058981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c95bf637a00932be60ab3f2c9bb2da721fe1ea0160c5878b1c5f19059a57abae`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:53:14 GMT
ADD file:a7cb648ce3675a1858ef2d8f7f7f800565b04d62c623db96abe0707e6fccaf2b in / 
# Mon, 10 Jun 2019 23:53:15 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:30:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:30:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:ae9a5cbf1024ffcd82d46915de75b48c566db03a61cb2856f9145c20b9ec0604`  
		Last Modified: Mon, 10 Jun 2019 23:59:21 GMT  
		Size: 44.0 MB (44045730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01c32fd7a426e902fa6a163aef5ea45c81b638ab90acc53afbd19597440fb522`  
		Last Modified: Tue, 11 Jun 2019 00:38:36 GMT  
		Size: 9.9 MB (9854169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:656daf820188415055ce1f72dc908573ff479d5df4b29535dfd8b1c95d9b36c2`  
		Last Modified: Tue, 11 Jun 2019 00:38:31 GMT  
		Size: 4.2 MB (4159082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:stable-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:59aa54a8ca7e423f43c8a9842a93c6fbc987b06847b8ecdbcb4a7b098d49d7a9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.5 MB (55486471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd6b808702fdf68393139a3a03779a66e64549deef7b73bf84c024e53c80b457`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 11 Jun 2019 00:02:40 GMT
ADD file:a533ab960a52dd32ca40bdcb55083ba8c340e110f8519a3eda696b46a4a07165 in / 
# Tue, 11 Jun 2019 00:02:41 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 01:09:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 01:09:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:162e276b1a29dfd1a4601fd55aeaeb0175b63182e9190b1b0068252e5196b015`  
		Last Modified: Tue, 11 Jun 2019 00:09:02 GMT  
		Size: 42.1 MB (42082622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:052e820679506cc68db5317ee3f92e7f5f520894f881940a686f7b1280ff93a0`  
		Last Modified: Tue, 11 Jun 2019 01:17:33 GMT  
		Size: 9.5 MB (9485206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f5e84bede193d1aa79031526fbcfa99e8b6cf354b12a7cfbe5cdfe2c9acf155`  
		Last Modified: Tue, 11 Jun 2019 01:17:32 GMT  
		Size: 3.9 MB (3918643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:stable-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:91646ffd5a2f4fdc999de9d2efb0286011211e23c327b09080dff1c471c9dc7b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.0 MB (56970398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:305a83f7f08f098382947357b3c4a2d94244cd768681547da3474152950bcae4`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 08:48:25 GMT
ADD file:153045f4fe6532d8c2ff273bb249a7a3a4cba913c26a4103ba5ddce1af02c1e5 in / 
# Wed, 08 May 2019 08:48:26 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:19:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:19:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:5894e28291972e44f5c3eba2779a85979bae6f95ed4f3e43ea5c98a132f06c48`  
		Last Modified: Wed, 08 May 2019 08:54:43 GMT  
		Size: 43.1 MB (43141955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4579724c1a9cbbeb91053f719bf515654043a3e39cfaa248ebedc84c2f0460ea`  
		Last Modified: Tue, 11 Jun 2019 00:36:45 GMT  
		Size: 9.7 MB (9734083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a493ac681ca78302ad6a97cd01e4daa5f1d995f0523f5e5cb8306071eea417b5`  
		Last Modified: Tue, 11 Jun 2019 00:36:43 GMT  
		Size: 4.1 MB (4094360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:stable-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:67fba423c5a52fe5b0f12f99ad46ef6c94bff0166235707db98a8c3e90e6195b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.4 MB (61426902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3403956d82afc9377840a5be2f63d7ad375c9ea3f843e34fe888c20a651fad7`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:41:21 GMT
ADD file:591ac23170d9cebe3f8e69a1822d7cad09508218bbcc52fe4c6ff78c4e3681fe in / 
# Mon, 10 Jun 2019 23:41:21 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 03:00:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 03:00:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:bd6445c9478b5a80482cfa5395d00388a745243f09b45cac165c642434532e10`  
		Last Modified: Mon, 10 Jun 2019 23:45:36 GMT  
		Size: 46.1 MB (46063291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92692b68247c2ef978121f8c38378ffe2bc385e0c01a2b748da9888a72f401f`  
		Last Modified: Tue, 11 Jun 2019 03:11:25 GMT  
		Size: 10.8 MB (10802210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74b0e0339f403263b4881ba8af8f24967e853ac416305bb1195b14820363669d`  
		Last Modified: Tue, 11 Jun 2019 03:11:22 GMT  
		Size: 4.6 MB (4561401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:stable-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:40d9165a0da5420197296d4a41b346b0e6b1a3e3e572e40e57e84032fe2d1fe7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59890730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6264ef3760e5210f2d64b686292c47e1431d07e242a8a68c12885b28fd51684d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:18:37 GMT
ADD file:e68c9724b3bb547060bee969d578b43b6d9d54c015f424a85194d83c5d025f06 in / 
# Mon, 10 Jun 2019 23:18:41 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 02:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 02:03:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:a3b105ca9ddcf9e9e70676be6fe489ffa6bc0b4da42b1722d11e5adc95d0bda0`  
		Last Modified: Mon, 10 Jun 2019 23:23:43 GMT  
		Size: 45.6 MB (45603172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b751577b61f05bfd21e4bd12546cc82b6dbe59663f4a282f227a6bbd8a5ef95c`  
		Last Modified: Tue, 11 Jun 2019 02:55:42 GMT  
		Size: 10.0 MB (9990977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18cc130533eb82cb8e44f86a482bef7e77fd51203bdc90eb7de21a352a1c90fb`  
		Last Modified: Tue, 11 Jun 2019 02:55:39 GMT  
		Size: 4.3 MB (4296581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:stable-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:2f43ea73290e3f0c3364f9a98f97b3c2cdb55e6e652fb162f722c96dae3c6cd7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59883904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa15e7831d5ef550d82119ef9f78770b778c79cb15761e67604989c69c28c787`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:43:36 GMT
ADD file:afcc920e9f12a9a8dcd8fc13d10697d5a80737bb1480544b3e85270be9be266a in / 
# Mon, 10 Jun 2019 23:43:38 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 01:45:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 01:45:18 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:34d3ef0e6f1ff3be371d86c57ace6652cfebba770c522ecb77770e635c66e696`  
		Last Modified: Mon, 10 Jun 2019 23:46:25 GMT  
		Size: 45.2 MB (45197640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fc063f1d64e7e2207325ea5d8e8bd20d7eeb5335ec9e2b74895aa6716554940`  
		Last Modified: Tue, 11 Jun 2019 01:50:20 GMT  
		Size: 10.3 MB (10314034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c889930bae60ac0b0b8285fdfa660853def739db23075cd2f465f40bc2cb7254`  
		Last Modified: Tue, 11 Jun 2019 01:50:16 GMT  
		Size: 4.4 MB (4372230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
