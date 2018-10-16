## `debian:stable-backports`

```console
$ docker pull debian@sha256:0d1cdbb4793f6e04447fce8f06634e2b67d12f7acdd4054935b32cc622ca962d
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
$ docker pull debian@sha256:32e5fab53b50fe71b0f012c96327ebbce7f79d03ae028ab75e222109dde36808
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.3 MB (45310170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ae1d0551bd217bab6907f78c8aa0c45408eeb1e33829097af30cf9546b11368`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Oct 2018 23:23:32 GMT
ADD file:7085adbfd5f9c04b79fa8968b5d80db6edd2c2983b0b73b41f7c7e8a9fffb76b in / 
# Mon, 15 Oct 2018 23:23:32 GMT
CMD ["bash"]
# Mon, 15 Oct 2018 23:23:42 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:70f1e5d4c68e0ff64c60c067f554250917cd3f7fd56490d468db16e1277dd075`  
		Last Modified: Mon, 15 Oct 2018 23:32:48 GMT  
		Size: 45.3 MB (45309946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96b6735b4ec30d797c6140415e1a25cac26546e7a2799633bb18df60aee0d928`  
		Last Modified: Mon, 15 Oct 2018 23:33:07 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:80c49d13980a6048aec3ff9cffc68113a8b02c8a2614bf82ea6924923febcb83
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (44033217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c3095460b154d82a71fc8201373797a0df56fa5f279a022e2c8a24d999c0620`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 08:53:58 GMT
ADD file:86730bd0cd00756824fbd866251ff7e3b6192a7f7e054f92c4707dde97d83707 in / 
# Wed, 05 Sep 2018 08:53:59 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 08:54:16 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:b28a6a264e4a0e864b5a6013e2e4b592730a8a2c4d884339c34f66c2d88eb00d`  
		Last Modified: Wed, 05 Sep 2018 09:03:06 GMT  
		Size: 44.0 MB (44032993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d9782904ed0b93927d3944287bda0ce4739e2abc7732446ba26a1a49122071b`  
		Last Modified: Wed, 05 Sep 2018 09:03:21 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:074d1e4bcd7e64386ec45f51f9890ada33b966dcd410299cfffef527a68b1003
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.1 MB (42062881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0f5927681eb859915cff84ed50b8a29e142cea8aa421f643d7bdb02072dd869`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 12:03:05 GMT
ADD file:ef4c7c43270fbea7c04a0f1c2ea6eb5b90351c6ccbc2719d52eeeeb89c429f21 in / 
# Wed, 05 Sep 2018 12:03:06 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:03:22 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:766cc14f8a116f7325c5d6be33b2f9c244e6c2d5dd5d170ec14c0158acc35df8`  
		Last Modified: Wed, 05 Sep 2018 12:12:04 GMT  
		Size: 42.1 MB (42062658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1d05bda36a7df5b9eb2a70842884e896e4afcc6d4b2a15f18bd6f6de9842c08`  
		Last Modified: Wed, 05 Sep 2018 12:12:21 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:bb3de1977a4e35da6fdc2bf86a718de560e28682b9bb59f8257a627462aea712
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43123846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22819ad770c488bcc032c1787b9f8a902a177e67b5aa118b2d6ee3149a83691c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 08:47:19 GMT
ADD file:e63ca37b3383f13a854380a4de2b1c2eb608a6a047103f8f3ead8ff2fa59b04d in / 
# Wed, 05 Sep 2018 08:47:34 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 08:48:07 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:29ec8c62bd64d0243985c21dcb3b6013cc231c0dbe071bff9f3c66376fe334ca`  
		Last Modified: Wed, 05 Sep 2018 09:04:10 GMT  
		Size: 43.1 MB (43123622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaf7bab7e80c515133a3edad10c13325baa1c3adda5c3fcbd6dd94613d2818dd`  
		Last Modified: Wed, 05 Sep 2018 09:05:28 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; 386

```console
$ docker pull debian@sha256:d82260016aaeb18a042ca7674f02dd9c28c35f81f55ba319da6b61c0c8055679
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.0 MB (46039276 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53a1d3abe7c8fa26f886debf3ff31b7edb419c3b7df2f5352c13d435d127f2fd`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 10:42:49 GMT
ADD file:0527fac686f42e89842c3ed3d2340c29c1b5b2e3747fcef8702bb6f79c51fbba in / 
# Wed, 05 Sep 2018 10:42:50 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 10:42:55 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:548d9ebe418ac9029bd3465fe581ff3a8968994004a82fba52208b0aa4fbe5ba`  
		Last Modified: Wed, 05 Sep 2018 10:51:07 GMT  
		Size: 46.0 MB (46039054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24a5eae07cc2564d62b46ae7558a72a0c50b1bd2b36ff64a1240b1d60cc379aa`  
		Last Modified: Wed, 05 Sep 2018 10:51:14 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:51630255512f7d14cda85cfd696f0f2d9367286428521f85f1d13443c4a27b10
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.6 MB (45595643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0be3685fd9c5dd855dfe8ce45e8be645efba420a39d404e62cfecaf779f87b18`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 08:18:29 GMT
ADD file:c207c700ca82d5a049c93cbb90db9c9fc7799b5833257a0d36d9296e73244875 in / 
# Wed, 05 Sep 2018 08:18:32 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 08:18:42 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:598bd892d8420191040e8a45328ef198efbf5a6b918acced954f824ad3a341db`  
		Last Modified: Wed, 05 Sep 2018 08:24:18 GMT  
		Size: 45.6 MB (45595420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f8824949de1cac38d21e7e8507705769ba3b136f7a99f00eef6d11dcb32555b`  
		Last Modified: Wed, 05 Sep 2018 08:24:42 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; s390x

```console
$ docker pull debian@sha256:18903ba77005b9af0dff385aeea9532d0048fd43463b8ed255032bdbda5db876
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.2 MB (45199822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a16198e840a6b06931738551877263a9278c52915177b892f427ffa66be812c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 11:43:07 GMT
ADD file:d94fb12c03952df95bb5ce1638ed3160d6d9df5e37c12b8878b5d0d36d488e97 in / 
# Wed, 05 Sep 2018 11:43:07 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:43:23 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:e1b92bfa5f119982e1f0e600f5712b213ab851afe7a5d2bb52e89c129be4a71d`  
		Last Modified: Wed, 05 Sep 2018 11:47:54 GMT  
		Size: 45.2 MB (45199599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbc088a47dd1de955a1f0fdef609890c8a7c3bd8bb7061a86be9367f3dbc90ca`  
		Last Modified: Wed, 05 Sep 2018 11:48:07 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
