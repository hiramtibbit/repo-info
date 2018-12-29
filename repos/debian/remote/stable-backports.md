## `debian:stable-backports`

```console
$ docker pull debian@sha256:8a3a626c90e13cf86cc5e1f47765ef193244c4aa2273cd9d0cea06be8c203002
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
$ docker pull debian@sha256:f5e9d31f914a2fe411524d21fe71333fae932cd65b9ce3c77ac23f402d569069
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.3 MB (45324005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:568c54687302a9f65285c873a275c94197afb4ff869fa244efea13511cc137b0`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:28:44 GMT
ADD file:4af1f6d416b01fae4a7446e4fd9ba495c384151fbfd4a51e785cfebd57ba3905 in / 
# Fri, 28 Dec 2018 23:28:44 GMT
CMD ["bash"]
# Fri, 28 Dec 2018 23:28:51 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:51bfd01d0a8600738120673af2bb19ca2fe13e0c0badc99792a1a9d1abf73ea3`  
		Last Modified: Fri, 28 Dec 2018 23:35:27 GMT  
		Size: 45.3 MB (45323779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:401e0167f4df56b0318f4b12745f20b04f22bf5f2a87913087ddf14496434f9b`  
		Last Modified: Fri, 28 Dec 2018 23:35:32 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:bcc7b310bc711db82fd7052b377ee195a0e92cfe49933f9bf8472992f840eadc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (44029544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6bee399b620b70a8e6e73eeaf4251627a4309dffda45ca83fd6c3ce87148441`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 09:54:07 GMT
ADD file:3e4c53a258b5b57d69f555fbd2448d6b26eb28dcbaf20452d1d432758191ac34 in / 
# Sat, 29 Dec 2018 09:54:09 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 09:54:15 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:8d9c5de95e0ba12f9bcfce10e3d745db806f932b3a2ee4f293d485945b6400e8`  
		Last Modified: Sat, 29 Dec 2018 10:02:22 GMT  
		Size: 44.0 MB (44029321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5775732f142193f165058ded2a385f132035b8db8223d21d4252325fcc266adf`  
		Last Modified: Sat, 29 Dec 2018 10:02:28 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:9bbe359dba5288807d1ef82b02649aae66a779a8a5f63d204743f4a4a0b5e197
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.1 MB (42076391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07a9950416deec0a53615e829254d3352cb2c6fadcae87cd6361d7cfc65684a0`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 13:07:23 GMT
ADD file:19acf42c1a71f61bb2d1a9345f068a0a499dac80967a00a1833f90e28ac127c5 in / 
# Fri, 16 Nov 2018 13:07:25 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 13:07:39 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:c45f571056c31fa9a2fd590d2a2c963781ee31b61e703ca7c4b5b1ef9c0b3df0`  
		Last Modified: Fri, 16 Nov 2018 13:20:00 GMT  
		Size: 42.1 MB (42076169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b91e18cd6399ae8cc245605b27ef3ad2799dcd339d030843a98181f800f5411c`  
		Last Modified: Fri, 16 Nov 2018 13:20:19 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:303fb0e20c71c1785411cc782682f00ec42ad747c40bd57843c7ae6d441bb679
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43116701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4f382e621aa9fd20fa26c2232902797e37a51dadd96df92ff3684ed669a937c`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:06:59 GMT
ADD file:69f04e716b82b6d386a4ea0a878d832e51852ffe639f46f6e3146e06cb8f98f7 in / 
# Sat, 29 Dec 2018 10:07:00 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 10:07:12 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:2cb9d82941ae9b0403b05120eac21c3a2ee923875f0cad62a216cedeb3a4d835`  
		Last Modified: Sat, 29 Dec 2018 10:13:54 GMT  
		Size: 43.1 MB (43116476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26988d8c8b469fd9592529c2931020a4cb223b8466b52640acaf54b7beb8fc4d`  
		Last Modified: Sat, 29 Dec 2018 10:14:02 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; 386

```console
$ docker pull debian@sha256:8b179567346bc9851afb150dc29a689659ec662f20f12274d502852f8dacec08
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.1 MB (46057507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f39245e5b61e889ce489946cd45642c362c9be8d5128752a8d742ea623fec7d`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 11:51:55 GMT
ADD file:d84c582864c226f1cac5a77657dbd3d0e23d26f090eb8ff6bfd30a3f609f7419 in / 
# Sat, 29 Dec 2018 11:51:56 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 11:52:02 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:87c2a6c32d1de47b7b626db6801eb1e1f9125c49f6dcea8a23e0f4cbaf469a2a`  
		Last Modified: Sat, 29 Dec 2018 12:09:32 GMT  
		Size: 46.1 MB (46057285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c79413ed6cc78d496012926436682c30548fd8f1f07bc42abe2fe897405a49ec`  
		Last Modified: Sat, 29 Dec 2018 12:09:40 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:303640c911a7556e54f49714ef24c5026131e814e39ba4d85a22e9dfdb7bc5d5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.6 MB (45605894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05cac35d45cb70c3ce87b220f67e2c4ce19ea4746a68002af2cf1677ccdb69e0`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 09:21:13 GMT
ADD file:74752352f1f09408c5d3900ecd7bac7b05adbecefdaa3ac6a7094cfde5cd88ff in / 
# Sat, 29 Dec 2018 09:21:19 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 09:21:30 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:fd9237e4dcd7d7857481c404649a7d3cfd31274729b78fe6181afdf8de0e43e1`  
		Last Modified: Sat, 29 Dec 2018 09:27:11 GMT  
		Size: 45.6 MB (45605669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ded29176fb0403d02ced0019cf3bd3f3446c9083a53f076f2eb01e05c4f3a929`  
		Last Modified: Sat, 29 Dec 2018 09:27:21 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; s390x

```console
$ docker pull debian@sha256:18e259e59ca2251a228e9e238781b0a3c2c7d34a13665e754f7ca50df65d79cb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.2 MB (45205101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98555e666756e9dfd76fd5642e10d6467cac2e6b5835aa086254e54259171d1e`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 12:43:09 GMT
ADD file:da93ffab87aefef14c65579b3a0284bc13dc476f76e682cda86626bb4b566daa in / 
# Fri, 16 Nov 2018 12:43:10 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 12:43:20 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:e84b56a4550d031fff64d20d36a106411775f946470e9c72f87b594c6d05ab10`  
		Last Modified: Fri, 16 Nov 2018 12:47:43 GMT  
		Size: 45.2 MB (45204876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35739450f716b67f56a9aead6b2ef8ee78e2a0e4bbfe44769b398ffa141aebd0`  
		Last Modified: Fri, 16 Nov 2018 12:47:53 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
