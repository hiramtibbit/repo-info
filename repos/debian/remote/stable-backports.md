## `debian:stable-backports`

```console
$ docker pull debian@sha256:da00e41bd9fac18946dcbd6b5e14342011606067e9b4bfd67671897819d50bf7
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

### `debian:stable-backports` - linux; amd64

```console
$ docker pull debian@sha256:095a7c5a2da96250e4f98ee31fea4be41af646a66a5c2a8f81321b729d706774
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45135302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4432a903abc18754e115cf422fb78e45e780df65c9c0bac8a4499ee5c10b988`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 22:22:19 GMT
ADD file:8ce25752602de735b001db8b874e5cec0c221407d8e005a889ec4f2d7d3523d3 in / 
# Tue, 13 Mar 2018 22:22:19 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 22:24:16 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:e351a8af5f009964d80dbd1ae598fe2e01824afea933f84173231024e7c296d1`  
		Last Modified: Tue, 13 Mar 2018 22:50:51 GMT  
		Size: 45.1 MB (45135080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98e6cb1f86f1556b55a1156a6f9d1358a636de0fdf41452d60cf63e5e2ba9fa1`  
		Last Modified: Tue, 13 Mar 2018 22:51:28 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:53dd4097569c62d11332a1a9727ac8c74121751c9d164c8bc58af41f5829adef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.8 MB (43819796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f237412fc9f350ab5b67ba88a80a321ce6f955289abf8b22fa40675776448963`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 19:59:48 GMT
ADD file:3b89a767caec58e94fa46d1ace4bca6ab066b8a6ab89149a81a2ce0aa1be08b9 in / 
# Wed, 14 Mar 2018 19:59:48 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 20:00:02 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:ef351eaa61f63a780b7ad1305217a7dab2ae8315842bedd05476e8d61b2d1a66`  
		Last Modified: Wed, 14 Mar 2018 20:11:15 GMT  
		Size: 43.8 MB (43819571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6256ca9384305e1131a607279f5eab9b927b874f460f2aba26f14cd5ca548a5d`  
		Last Modified: Wed, 14 Mar 2018 20:11:35 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:c32b294c8acd057e71db0cf7f20a0ce863975c635c5e4a9a2851dc406c5faa70
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.9 MB (41857676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1e3747483cfd5104364e70bd874e4b618c363d8fac3e42624290138492bb0df`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 12:31:21 GMT
ADD file:8bd63141975400462d3661409199997a02a95c5822493e539d6ceef5cd872865 in / 
# Wed, 14 Mar 2018 12:31:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 12:31:36 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:dd11ab8973bc7a63a14e0fd46d01c8e3b044bb4ba44cbbc960d5e89cbc1c9ec3`  
		Last Modified: Wed, 14 Mar 2018 12:43:03 GMT  
		Size: 41.9 MB (41857454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16d831a31494659906165ea937ea5f8c1f865d6c8eb848989bb0a9b85b82d994`  
		Last Modified: Wed, 14 Mar 2018 12:43:26 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:b16ca6b601f158d81660500791957ff9fae66d69ffd02da894ffe806ff01643a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.9 MB (42908055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c214872322fe1a836daae948fa6302546258704ad446a8e3cd83aedd989ecda6`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 17:29:14 GMT
ADD file:3aa6a621ac55f79e70877d22eb7d04631c64ec34766a9960793a8a9e2aadfa50 in / 
# Wed, 14 Mar 2018 17:29:15 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 17:29:37 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:c819a04cce37eadab72957a61733f7bd44f789faeec1294d547ccf205fed49fd`  
		Last Modified: Wed, 14 Mar 2018 17:43:45 GMT  
		Size: 42.9 MB (42907829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff69f655a72041759920b5d01bcccfa9cd875e7a5729a7517d9e829c4182264f`  
		Last Modified: Wed, 14 Mar 2018 17:44:22 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; 386

```console
$ docker pull debian@sha256:1fd1d148e4de9dfa034b9ebe0a6c6fd7f743b99d28f312e823d692e1e7fec284
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.8 MB (45837940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e780140500d797ca152cabd636e903191c3ce6ef36cbebd50b00ccf3d3920dbe`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 17:01:43 GMT
ADD file:891d19bff7271b48688593ae98924fc6cf80c636d2d519ba0361a0847db43390 in / 
# Thu, 15 Feb 2018 17:13:48 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 17:26:00 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:09ecb4e20f3f16130f9b3d58aad13ec89cfed73877118b5d398eb61b640da6fd`  
		Last Modified: Fri, 16 Feb 2018 00:55:09 GMT  
		Size: 45.8 MB (45837715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1233dd1672fdf384eb76ff0c2717cb5059c35fe87095c4388a166e3a495a5454`  
		Last Modified: Fri, 16 Feb 2018 01:08:04 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:cac4b8597de5723d4cc532356e35c8869af906be209da8877539c46754bbd403
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.4 MB (45377276 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0612dcc72067f2e850d913c205bb94a601f9296182904b9ae98b7d0ce0c86c5a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 00:34:12 GMT
ADD file:7508c27678b40a53f2b9cafd3947fd4e91751c6cfb04ee430a5977f92a2d29ad in / 
# Wed, 14 Mar 2018 00:34:15 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 00:34:26 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:d0587e76a2435b345a687c1480a8c0e3be2c6e8eb6210f4ce2fd5e384c2cd913`  
		Last Modified: Wed, 14 Mar 2018 00:41:46 GMT  
		Size: 45.4 MB (45377051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeb0f08fa5a50a1504aeb21be4d0e4d32be9da990c43e3e4a122da8503743efa`  
		Last Modified: Wed, 14 Mar 2018 00:42:00 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; s390x

```console
$ docker pull debian@sha256:c708b7455ed78d3b209329fd967ed52c4683e8364022960abdd4d25e2866b8d3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.0 MB (44977396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:614f84ea592c9b19ba8781910313c54a9e893220b9387d31e47cf0ecfd54a214`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 05:23:21 GMT
ADD file:3308cf3ee3c647f9528a3ac0b4e3b2610f5c2e27e8bb8caca28daa6ac9d000db in / 
# Wed, 14 Mar 2018 05:23:21 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 05:23:27 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:9bc85983dcf4b8aa0599ea51e1b37c5300d56f1c5b58dab7e3b2a3e7cf9ac6ee`  
		Last Modified: Wed, 14 Mar 2018 05:28:01 GMT  
		Size: 45.0 MB (44977174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0daf225bee3d5b723b1f07ba490d73b3aa7fc673f8f4883146b81254ddebabef`  
		Last Modified: Wed, 14 Mar 2018 05:28:12 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
