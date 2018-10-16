## `buildpack-deps:jessie-scm`

```console
$ docker pull buildpack-deps@sha256:a848a409577bc52eb2d5400f7a12bac00058160f8561eaa1567f66b6ef724205
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `buildpack-deps:jessie-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:6512870dfc86653d25c471fb8c2b81e7a3fb776d903d7a36e17bf0be68ddde7e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 MB (115094408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcdeff60d449c2976375d544c5f7cff96896cce94358457f3d7c81ad98da1be6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Oct 2018 23:20:26 GMT
ADD file:28906382f13932b8498c715984587f13905a32cc9427fb4f8779b7f159a68580 in / 
# Mon, 15 Oct 2018 23:20:26 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 00:54:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 00:54:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 00:55:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:61be48634cb9ffcb29c1508fc1c308be81c32f84e95a627de9bdf107a854408c`  
		Last Modified: Mon, 15 Oct 2018 23:28:32 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa696905a59054a0875af6a9b054edd282710a6e885c03514cc9e685aa31ca7a`  
		Last Modified: Tue, 16 Oct 2018 01:09:21 GMT  
		Size: 17.5 MB (17538611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6dd2322bbef2cf5fc00a84425ab08febcb9cd378326afc9cdc954257f9daf67`  
		Last Modified: Tue, 16 Oct 2018 01:09:51 GMT  
		Size: 43.3 MB (43303672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:jessie-scm` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:7191b0819abd5119e58d210aef5143d2ced0aea25290a3f8552ffffae4c848dc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.6 MB (110619251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de0a09b69572f51c0d338b2a832c1b34ff29440c109b05ab8fc7c1cf609dc95d`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:01 GMT
ADD file:367230829937e3f959936d2c250983c5c63d8aff2e1987a1512c68d6b05ec2d9 in / 
# Wed, 05 Sep 2018 08:50:03 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 09:51:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:51:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 09:52:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e01fe8429ccebc46a010376112e864ce611e175d1f38e60e721840613bc3bc2a`  
		Last Modified: Wed, 05 Sep 2018 08:59:16 GMT  
		Size: 52.4 MB (52447943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6945911bf8713186fd7ee2c21f4ef1138adb8b200242ca929e7caab6978ff3a`  
		Last Modified: Wed, 05 Sep 2018 10:08:21 GMT  
		Size: 17.0 MB (17029456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a401183513e38faaa6c251a53174b409b087aeb9a040849500580106285c318`  
		Last Modified: Wed, 05 Sep 2018 10:08:50 GMT  
		Size: 41.1 MB (41141852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:jessie-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:cef1c1da7c6108dfd619bd6bc19f3b652127a5eca42dfd8e77a96de96540480b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.7 MB (106665678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:822f917a1c97fce0d7eaf81e618bc51fff109f30268f9a27db682e4d21ee5c67`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 11:59:11 GMT
ADD file:807e1499dd3578811c9df2630d381e29d52684675650039494a60eecfbbe9027 in / 
# Wed, 05 Sep 2018 11:59:12 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:37:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:37:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 12:38:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:16b1b4bf69814b0a3f82bfd8b5c3117909ae89accabd8bee13a723080db56a75`  
		Last Modified: Wed, 05 Sep 2018 12:08:24 GMT  
		Size: 50.2 MB (50188388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:002878cce7e14ca1293cd555eec033a6494913ae05e9b1b6a76701bb86dae153`  
		Last Modified: Wed, 05 Sep 2018 12:53:36 GMT  
		Size: 16.7 MB (16712872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a262dbf1b2c7fd841963ee65f24c265c5385068a36df528802e7ea0303aa0f`  
		Last Modified: Wed, 05 Sep 2018 12:54:08 GMT  
		Size: 39.8 MB (39764418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:jessie-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:3648568db89ee0c60eb9ac732a8f9bfed1b83b676e8cedee596e37b1973e4233
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.3 MB (118268246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f02debec5f96f34f3baea9b28bdd07afefd54bc9d2f32e4657ed4e035b011bf`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 10:39:51 GMT
ADD file:66e0b8b746f2f743e827a1adbb0d978b38dc00dab94077aa275e852073ea6beb in / 
# Wed, 05 Sep 2018 10:39:52 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:28:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:28:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 11:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8c6f9fc63ec81982d7b33596e2017e55287bdd085fd1c53fc5b439f51306efa5`  
		Last Modified: Wed, 05 Sep 2018 10:47:54 GMT  
		Size: 54.5 MB (54484051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:912168c1f05e29e4f46f4cbc0e1aa3825348c0e9a19508d7658722848ddda877`  
		Last Modified: Wed, 05 Sep 2018 12:03:41 GMT  
		Size: 19.8 MB (19835822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e9187aeb009b949c7ae34ecf63d21f9c811f6f6bc2295738d4682eaba1f20e`  
		Last Modified: Wed, 05 Sep 2018 12:04:20 GMT  
		Size: 43.9 MB (43948373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
