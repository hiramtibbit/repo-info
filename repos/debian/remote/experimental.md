## `debian:experimental`

```console
$ docker pull debian@sha256:0d07b3e0875b2924a44889bdfddd9d05b0f902f06d452e9eb6a71f89aa362a1c
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
$ docker pull debian@sha256:2fea3debe705ac716e9e372fccb78a7134b645e609e7f9d1fcb7298a28004a38
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.5 MB (47474340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03de51d60e9216f258876f58bfb972b62eee91fd00616b6cdaa93a9c9cc9e481`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 09:57:01 GMT
ADD file:81e2839bc3e8e1e0084f8855a24e1b2c1789f69c4dc2096222f82f888d3491be in / 
# Sat, 29 Dec 2018 09:57:02 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 09:58:25 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:4190dfd99705087cefb331d3d3b03891b9a89c2f2352b9dc90249a6b89440afa`  
		Last Modified: Sat, 29 Dec 2018 10:04:08 GMT  
		Size: 47.5 MB (47474117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a18b2a99c8035bc229a81f1a201c0d5ebb8b358ed466bacfc5121f21bb68876`  
		Last Modified: Sat, 29 Dec 2018 10:05:02 GMT  
		Size: 223.0 B  
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
$ docker pull debian@sha256:b748ba30dda8072db8f1ab83b92967b48eea21291a2d3e96380f4b56444ffd03
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.5 MB (48472445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:515f9a093a56cd6ed03c5e3bb7158d88e3b11686e1b142db4d5823cc498ea43c`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:10:35 GMT
ADD file:b1dd1fb0d47f8bed2f7346de3f8bb10ea1ca5412197107e5d9b7cc056b1b3ad6 in / 
# Sat, 29 Dec 2018 10:10:36 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 10:11:16 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:a47a0ed100a9ace34ef32b33b158f9af13e2500e61fd226b270400f7f01091c8`  
		Last Modified: Sat, 29 Dec 2018 10:16:15 GMT  
		Size: 48.5 MB (48472220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190f72a48a0908429f8405b8c16f1142423513a5351d887c25f843da7980b2e2`  
		Last Modified: Sat, 29 Dec 2018 10:16:40 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental` - linux; 386

```console
$ docker pull debian@sha256:1118c40ede252f9eadc9420920f8d13f7f056ca8ec073c38379af218e6a5eaf3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.6 MB (50553672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99e6db67795872bf7a63ccf6d38d5dbd7472537edb860b66703f41d3841b2731`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 11:59:46 GMT
ADD file:c067065c29adaf662e0ef93250a53931893501d171d1df5197beb21b5fbe4a64 in / 
# Sat, 29 Dec 2018 11:59:47 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:03:44 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:97ee8bc83786163ce957fc73ec9d8707529d19ca29c0120b8c286dced3328220`  
		Last Modified: Sat, 29 Dec 2018 12:11:48 GMT  
		Size: 50.6 MB (50553447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:802ab3f7dcc53b04bc5aa16b0927ac56c910c8c9ed8b45727bef6da7d0e97e45`  
		Last Modified: Sat, 29 Dec 2018 12:12:41 GMT  
		Size: 225.0 B  
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
