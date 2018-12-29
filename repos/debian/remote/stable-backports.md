## `debian:stable-backports`

```console
$ docker pull debian@sha256:fad5a84f2545ba33f559a541be65a857d9c9e5ead2c5b94452732cf13fa071de
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
$ docker pull debian@sha256:82d2eb85da99290034ebd72f8a06c77502a120399dffa8e9b35182b7e5869cc0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (44031591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0eb6ec5c0e785e8940c7e037d2d2bdfe54c84ab8841952c3f166bda624c1ef6`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 09:56:18 GMT
ADD file:b0676a52b19216731571c1a50b7ead49fd4ea85f9674cfbd1da5a0e07198c1c3 in / 
# Fri, 16 Nov 2018 09:56:19 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 09:56:37 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:c9f04f003522349736926059ab58f7663769304f113db730c293c310dc0216e9`  
		Last Modified: Fri, 16 Nov 2018 10:11:01 GMT  
		Size: 44.0 MB (44031366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12108ca1fa5f577dd3efeaf692d4237e01c780a515353d69a14ab24a51760c0d`  
		Last Modified: Fri, 16 Nov 2018 10:11:22 GMT  
		Size: 225.0 B  
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
$ docker pull debian@sha256:4a450c1983b61d5aa009f641bc3eeb08f4f7469e7e8c7052223ba6ab052f58b8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43116849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79d689423e73fa549f211b89df3258205952d01c46616d7c45baa07ad860f76e`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 10:11:42 GMT
ADD file:dc869081e3a6a7db175bfb09d179faef249b6300f1f5b7b6364e0a652bd69359 in / 
# Fri, 16 Nov 2018 10:11:43 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 10:12:02 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:b662fae25834f3afb4f2ad909ed84aa1815fca46bf48983e2f1dbaa6ea4d7a89`  
		Last Modified: Fri, 16 Nov 2018 10:22:08 GMT  
		Size: 43.1 MB (43116625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:157c0a04921997cd3b1670058e812281b25314046a1f6ebaa6dce41d911bab33`  
		Last Modified: Fri, 16 Nov 2018 10:22:44 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; 386

```console
$ docker pull debian@sha256:e80e9798d2b6c43160f3b3a729a837ca5149f1517cfe3732c82a7a1dc35999dc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.1 MB (46055501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4151e6f6b00230b6e76ae1f59212468278c53bea495c3ff23e08b4dca521436`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 12:33:51 GMT
ADD file:e6f7ae0db455d2c32851770810e281375a8ad24fdebed378620646e81e270a29 in / 
# Fri, 16 Nov 2018 12:33:51 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 12:34:14 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:5aba52cd12cb6f2b8cf731752b12fbe5310db60017e35e2c0e64faa4cbffbf29`  
		Last Modified: Fri, 16 Nov 2018 12:55:57 GMT  
		Size: 46.1 MB (46055276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff32499c3e6b7e262fdb9373b8edfd28d3345ae5609f0612109836e7883f4142`  
		Last Modified: Fri, 16 Nov 2018 12:56:36 GMT  
		Size: 225.0 B  
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
