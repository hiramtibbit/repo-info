## `debian:experimental`

```console
$ docker pull debian@sha256:bd5f8102489394acfe9d22cf77a2cfc027b6d103eb2eb8cd91d354ae8a444241
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
$ docker pull debian@sha256:35c45f9831e366336c76d4cb542e32fc749e6c28d38a864159fcc19f6deb623e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.1 MB (49108110 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be11c5f9dd356f32d97f122ed83a6849473b14f8da4a0866f77f67c10bf7456c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Oct 2018 23:25:48 GMT
ADD file:65e69e2aeccbe5227584336241565b944f1cdcb3ea6b0a7cda4dd730324a6b61 in / 
# Mon, 15 Oct 2018 23:25:49 GMT
CMD ["bash"]
# Mon, 15 Oct 2018 23:27:05 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:8bcabf193e3c9361ea2ddb9d0b9350bd3c496549db4376b79d57c8a22743ffb5`  
		Last Modified: Mon, 15 Oct 2018 23:36:18 GMT  
		Size: 49.1 MB (49107888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f478cfbe88bcb0a11c4ae68d01813ea5ea4694a13ac096a8296e20792673520`  
		Last Modified: Mon, 15 Oct 2018 23:38:24 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental` - linux; arm variant v5

```console
$ docker pull debian@sha256:b9857b7fca4b678e525cc49f04f874541a8f74e9062e6e0a5b8458b28b48f801
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.8 MB (46817340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c01915d71d7537b4560f8b8f71637f3856296b8c6b368a98482b1e54cf5d4cb4`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 08:56:28 GMT
ADD file:b76f17d03e855daec4d3d5161f143f8d25f63ea277a21fe9d7f83e9c170d6ed1 in / 
# Wed, 05 Sep 2018 08:56:29 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 08:57:47 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:40569bf9622b9e9ded8bb8077eadc8433728cb9ab1f51d5dd934f9fab6352328`  
		Last Modified: Wed, 05 Sep 2018 09:05:59 GMT  
		Size: 46.8 MB (46817118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae2335d78ad212c4a6c30be126e00899cf02be287305be5397b3021297a7e024`  
		Last Modified: Wed, 05 Sep 2018 09:07:40 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental` - linux; arm variant v7

```console
$ docker pull debian@sha256:13dfa4b54dff926e9b1c1fe63f26ba85ddee498b8b2aa22bcbd774836279e54d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.7 MB (44660725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5068b43923c3bd09c4fc69a825910ba7b6133160e98c5825143687965b3cd059`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 12:05:41 GMT
ADD file:da73e99c3cafcb2308b8342ca1efa632803c1d286ffdfabf39bde297dad77fb4 in / 
# Wed, 05 Sep 2018 12:05:41 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:07:00 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:bd948b436409072b360e9015b42556fc8ced65ec552581068542f9f6f99d918a`  
		Last Modified: Wed, 05 Sep 2018 12:14:55 GMT  
		Size: 44.7 MB (44660506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49a579f2fac9905c406d54c796f55fff50b8b7e7eaf2c289f478a8817da000b0`  
		Last Modified: Wed, 05 Sep 2018 12:16:34 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:b0ed6b66879be1314a0a5cbcaa6deb30f6c9f453cce42873b15cfcf2561adb7d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.2 MB (47246446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49f3305e69c3e41f2eb865711569c91178a85772d75f7e4946380043c2ac6888`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 08:55:53 GMT
ADD file:8dbe962a72b1b084d03ff9fe312ac0d8bcad4999399fc3c33dd70574bf6e71e5 in / 
# Wed, 05 Sep 2018 08:56:07 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 08:58:21 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:32e699d0305c6c7cff89c3d359e0369b30045ae1cc32eba2cc8ed032895b5826`  
		Last Modified: Wed, 05 Sep 2018 09:12:52 GMT  
		Size: 47.2 MB (47246223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e0caa392f5615d9cd2fa1efd96e4f0e76e7e2aaccac88539c47355c65d1201d`  
		Last Modified: Wed, 05 Sep 2018 09:14:21 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental` - linux; 386

```console
$ docker pull debian@sha256:5a5695c555b5cfd965e707c7629ff662333717aa32b73de4dcb9ef6a5ba78b50
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.8 MB (49764660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ffffb21822785c952b0f9d264813c9c6d252c1d92d05dd1ae97298423c0314d`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 10:45:07 GMT
ADD file:92c77999acebc24b271b442bbc8d4a6efdcec6b3b0a255ffb903ef7c25e1f7ab in / 
# Wed, 05 Sep 2018 10:45:08 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 10:46:16 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:de858e423cf8c9b83ac81cfa33080a64aad296c92932242a2c2f2d7891cdb645`  
		Last Modified: Wed, 05 Sep 2018 10:53:28 GMT  
		Size: 49.8 MB (49764436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:796dbd66c19a9269767ee20048051566ffcf335ad1daf0ec32ff6b351a4ca311`  
		Last Modified: Wed, 05 Sep 2018 10:54:35 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental` - linux; ppc64le

```console
$ docker pull debian@sha256:b0a15fa25b07275f64eaf0877f1e4531b4a95d93a1119b928128574c7f0fc80a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.8 MB (51844184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:085510551de2e6d6b4c43282f27c7e908b60823691f9d2475f606940ebd58d71`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 08:20:54 GMT
ADD file:dab3685924cdb43666b6e39dc445874c7abc0fce00209fdd3ed6fdf195bbdfaa in / 
# Wed, 05 Sep 2018 08:20:58 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 08:21:27 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:3b4f2e3f1a30f6f07ee836598d7d5f1f3640fa1946369d90db0f640954f2ab5e`  
		Last Modified: Wed, 05 Sep 2018 08:28:16 GMT  
		Size: 51.8 MB (51843961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec8f429f44b85fdd814debf2443e3f3523a4b6c6efa66a81c5cf5c119eb5f77e`  
		Last Modified: Wed, 05 Sep 2018 08:29:03 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental` - linux; s390x

```console
$ docker pull debian@sha256:79cc870ae243f4e1a09f44be13508a52314fe1c0032a8178dc276269bd9ebb52
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.7 MB (47670621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1694d89407c23168f5d4040202ab25554f4e85f7f8d3f94c5838cde53e24bca9`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 11:45:37 GMT
ADD file:626186cb6b99408ee7019b36323b87afcd580f8bc88da5d2c216055ec53b2fd2 in / 
# Wed, 05 Sep 2018 11:45:37 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:46:07 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:1a57d7c93a84307fdca02a9382202d1bb1a6bb0f83fa590292dcbb3cb9ba1d6a`  
		Last Modified: Wed, 05 Sep 2018 11:50:23 GMT  
		Size: 47.7 MB (47670400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64c48e503730520755835d59a931f0e57e3feb5946ac217c733c6df2ba37d193`  
		Last Modified: Wed, 05 Sep 2018 11:50:50 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
