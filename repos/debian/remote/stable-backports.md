## `debian:stable-backports`

```console
$ docker pull debian@sha256:74e71235e55c1c81ea2a232121bac163caca71f69bcfad1fcf104bf56cef750a
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
$ docker pull debian@sha256:75ab8c69173443a0f8de8d29b087a8b71a0187c76501a49be119482d88c61128
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.3 MB (45344473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:373db650ddcf74ad9af076a28db52e95f80ef08857cf57cbfbde6465fbf4e1d7`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 03:29:27 GMT
ADD file:5418774c69c156bc9cb0a70e7c467d8ff17ec13869abf7cdcfb9bc28b13a270e in / 
# Wed, 06 Feb 2019 03:29:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 03:29:32 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:4211ccc529e4414b5c428938021537a3b0f16f3cc4b67cccc4cba96b6fce40a7`  
		Last Modified: Wed, 06 Feb 2019 03:35:16 GMT  
		Size: 45.3 MB (45344250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a5e87a7a0a5983d9fb2deb93f06ca39b380b8d7a3730d0426dba69d17dbee4f`  
		Last Modified: Wed, 06 Feb 2019 03:35:20 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:9ebbce1c0c77ec3af367f461613ed3e9b5b127359e069e83153ffa7a40ce54a0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44050992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fbb640e25f465a4b889b267e1995418d9314e3641f40d55b8177889cad502f6`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 09:54:22 GMT
ADD file:3b681f004afbe5bb80f7cc01753c446ea7e274671ef628d96fc4ce23af9a03d1 in / 
# Wed, 06 Feb 2019 09:54:23 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 09:54:30 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:a312eaaee07e9d8903a55948022697e8edf0e8cbcb0194e681c7fdef89d14c5b`  
		Last Modified: Wed, 06 Feb 2019 10:02:55 GMT  
		Size: 44.1 MB (44050767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec8993326e2da18145ed2c792aa3fff51440f6815b8e2a4ffce3f9a33ef8c2be`  
		Last Modified: Wed, 06 Feb 2019 10:03:01 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:799325861c117ca46edb3d5ebf729472a67f1d75b08fb953b24c19c2d8e43fa9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.1 MB (42087106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22da8d431a0dbef02cb3947fbbaf85a6dd08865729e8e0d1bf7fcc05c39fa5c7`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Feb 2019 13:02:22 GMT
ADD file:9504a4028d7cb61fa74dab135e9990e5e8c6a816a22482cf26f9593fe9511be8 in / 
# Thu, 07 Feb 2019 13:02:23 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 13:02:30 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:31e378f373a79e030a1544a9dcf81f55779feff036f1c0d3ee29b6d7893b2187`  
		Last Modified: Thu, 07 Feb 2019 13:09:48 GMT  
		Size: 42.1 MB (42086880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7855dc93313cd4a4dfee0b26549fc030df39f579aa0d53294183aa06f6a6b3e1`  
		Last Modified: Thu, 07 Feb 2019 13:09:53 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:edb23e6aecacaddaa24234da609ddb520e488973c7de6cf55cf2abe7fa726137
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43125230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3f2769b67b4150c7cca71676c65f420d05991f17b5a8f80c6ae846dc27d1ec4`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 10:08:01 GMT
ADD file:caf2373af821f5faaa9cb00b949c251b8a26c5e5a7dddb4bcd87e683fc2a4dce in / 
# Wed, 06 Feb 2019 10:08:03 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 10:08:17 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:85e102c119ea03c6ba5b8bbb0982348a2024fd455bda03cd9f258eb28487b0d7`  
		Last Modified: Wed, 06 Feb 2019 10:13:44 GMT  
		Size: 43.1 MB (43125006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18aa05def6ae2afbf1de84dd0c65a44a610b2b221dc7c1879b054711660e4fe1`  
		Last Modified: Wed, 06 Feb 2019 10:13:52 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; 386

```console
$ docker pull debian@sha256:1dc0649aa6bb305f968b43fb590325e620dbda91d8aff4382732bc771cf97e34
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.1 MB (46070050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fef053c890321f1b282218604f6069714ed8836e5f21c8469560c6393d43b5aa`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 12:00:39 GMT
ADD file:6b43e6b165b186f9136f49c748dda1ebd243ee0f1eff17a04db0bd5d038c83f4 in / 
# Wed, 06 Feb 2019 12:00:39 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 12:00:44 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:97558d3ca5d717dbf22464cc4c9ddab9d7ad4aa112e81c61072516c0e0a91cc5`  
		Last Modified: Wed, 06 Feb 2019 12:06:57 GMT  
		Size: 46.1 MB (46069828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f415a35a3d2b82df0c7af7ac7f6e383294657f211ac16390bfa973488c5178eb`  
		Last Modified: Wed, 06 Feb 2019 12:07:03 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:12db920a5b9987c2dacbc5a5c345b713c47ab1d56fe0ce434e25020b4dd351f1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.6 MB (45617170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d75cfd6c275c7f48cd75d431b9b1845c95191e1d266e520fd9a4933c7383d21c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 09:25:54 GMT
ADD file:762cc8642000d1d4216db1e8bd139386a3e13550a16a84128f9e12da924a3b80 in / 
# Wed, 06 Feb 2019 09:25:58 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 09:26:08 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:38ee9022de2f84c4aa4cfd73b9b0c47c0d8f43e6d6ccdec9279a83dadc197aeb`  
		Last Modified: Wed, 06 Feb 2019 09:30:12 GMT  
		Size: 45.6 MB (45616945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7da4c04b61c032764354055134f6cb667af12e9df4b11c15e946bbbd6747ca29`  
		Last Modified: Wed, 06 Feb 2019 09:30:23 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; s390x

```console
$ docker pull debian@sha256:2b8e8b516bbe4284fa2de9dbdd988f7cf5b38427ab4b189dc6ada71fb3e1b061
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.2 MB (45215105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70cd72b67f30ca677c24d50d8e60226607eefb2d34b8c6d9cc837d8ec7753839`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 12:42:42 GMT
ADD file:c324fb0be75d7f595363dda418455883bd9616a1fa239555d979102657d307b9 in / 
# Wed, 06 Feb 2019 12:42:42 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 12:42:46 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:dc7944c01074c151848ff6df7ca2bdfd790c548efcf9ab0f57a63bf23b8d1519`  
		Last Modified: Wed, 06 Feb 2019 12:46:17 GMT  
		Size: 45.2 MB (45214883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d923f5b872011f0c5d791daa6f2fd531c1f78de7c71136a7fda50bb09ee4863`  
		Last Modified: Wed, 06 Feb 2019 12:46:25 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
