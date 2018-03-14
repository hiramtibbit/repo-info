## `debian:wheezy-backports`

```console
$ docker pull debian@sha256:2981c4518a0d4fb0b0763de860838563518a1a15a05ff083ac8118004fa10d85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `debian:wheezy-backports` - linux; amd64

```console
$ docker pull debian@sha256:4ae4e6923115857e7d39f280a48fd2379098317b275bc5eebd747982248596a4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 MB (38111714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb4c5ad9b93d65392931e5f8b1cd4bf234550fc9b6b09b5fed9633a2fb02d7eb`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 22:31:05 GMT
ADD file:fc9ba15f087e646a9d3b72e742eb1233132a118ecfa998e2497b724f3ff84061 in / 
# Tue, 13 Mar 2018 22:31:06 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 22:32:10 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:4269eaa217cc08668f088a9719d43c993c4644a73eda4eb55921f031a4311060`  
		Last Modified: Tue, 13 Mar 2018 22:58:14 GMT  
		Size: 38.1 MB (38111490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee02da37d50f6e4a17f968f08fb9809029d5d8775c66f6f38d46f0a551c5de7`  
		Last Modified: Tue, 13 Mar 2018 22:59:23 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:wheezy-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:5e7f465319d8b2f42284b2ee82bc0d0b414204ac7c0fd83c5f3822c9bc25cc1e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36948756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e915d710409517283cc6bde0147466d648d437692c789731ddef58b302d627a`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 21:02:18 GMT
ADD file:e3460ef36ebae417896a335577e126f2c0d24f4cb8198a71796ffe6c76a67112 in / 
# Thu, 15 Feb 2018 21:02:19 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 21:02:28 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:d3ea6a702aef7af84624d9a907b843ad1ee298df0f9a10cb81e49c92219e5250`  
		Last Modified: Thu, 15 Feb 2018 21:13:31 GMT  
		Size: 36.9 MB (36948528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0514c84143b97e7e250743e5b3acbbbbc689218ce883f070932596ef70ee01c9`  
		Last Modified: Thu, 15 Feb 2018 21:14:05 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:wheezy-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:de1e64dee56ab7fdb3731295b4a3e825624562128b996cf063f5fd6bc5a0f46c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.7 MB (35662764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94513086433edcb98c9e3556d27c27dc4a4355177f7e417df5607d9274b3de0f`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 12:35:41 GMT
ADD file:ea4bfcd96c3bd6a1a47a17ab35e33799b93ff57ff9bb2c44284fc54d63b51234 in / 
# Wed, 14 Mar 2018 12:35:41 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 12:35:56 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:bfc8f8e5a275b7e0bf9f677a7d237447e73a3145fecb7ae7f6c0c4ee73bc284c`  
		Last Modified: Wed, 14 Mar 2018 12:47:39 GMT  
		Size: 35.7 MB (35662536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc652ad49af687ed858fd641a1acf83e7a420b1fa06beaf2c41bd93cea09495b`  
		Last Modified: Wed, 14 Mar 2018 12:48:22 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:wheezy-backports` - linux; 386

```console
$ docker pull debian@sha256:dd97ca871609a5960f40783eb9ab681c01c59f18deb9be2456d8b399a1bbbd05
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.4 MB (37439351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07cbc2d3f66831c00e849f358a54e9217fb0aea8c9fcaed651ec0c474a9a3f01`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 20:34:29 GMT
ADD file:b269dd25aa5a2b39f29e341376ca9f2b8aded8f1327c01024b96a2eaa5c3a142 in / 
# Thu, 15 Feb 2018 20:34:29 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 20:45:18 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:f10fe2356c6af971fa6e4de75405f5f2c0a1b4dd473c5da5cca0dc476bf491f8`  
		Last Modified: Thu, 15 Feb 2018 01:29:03 GMT  
		Size: 37.4 MB (37439124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f6b69930ee3d8034afbfaf470413ea0963bd3c89aa229b5a983c2c366f640c8`  
		Last Modified: Fri, 16 Feb 2018 03:54:49 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
