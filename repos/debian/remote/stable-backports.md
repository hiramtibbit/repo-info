## `debian:stable-backports`

```console
$ docker pull debian@sha256:fabef7f86c91a7dd5c5ff819fd3feada4859ebd9883825288f4387d1ed93ba59
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
$ docker pull debian@sha256:bf7aaec2f12fe32e587abcbfd74aad1b165df6ea6569c98d4f7bf7397c952a29
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.3 MB (45339551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ad7378ca931d19d6c796573698e6c7d481f7c2e024f75e93af1124cafba8627`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:23:39 GMT
ADD file:730685ca82959b3770e6b79700f1335c322d8aa561ab184b296a662f578f6e7b in / 
# Mon, 10 Jun 2019 23:23:39 GMT
CMD ["bash"]
# Mon, 10 Jun 2019 23:23:42 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:5ec9f9d751d9543054dd34891b399442150a28a8495b8a0a00a335334cfe683c`  
		Last Modified: Mon, 10 Jun 2019 23:27:30 GMT  
		Size: 45.3 MB (45339327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a32004966ad71f6f879e9d67d652a0188c47dc25aaded82fc6c415a9ff16851e`  
		Last Modified: Mon, 10 Jun 2019 23:27:36 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:f40cb36713a513b0286bd9af7bfff56f1e778eed03b071ca3d19356fd5afdc94
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (44045998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4402a5317aeb0400387a24e6906fc4716ab41fb713a6b0085ce541d34a87b37e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:52:26 GMT
ADD file:33b129c3179b7e1ec23765ab5cf0b357d20a9c7bbfe4cfe3c5864ddcd66e40cf in / 
# Mon, 10 Jun 2019 23:52:27 GMT
CMD ["bash"]
# Mon, 10 Jun 2019 23:52:34 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:0909d4bbe66e1ec57e7775d329ab59426bab2a64edd8f3830ed0f22495c2c1ee`  
		Last Modified: Mon, 10 Jun 2019 23:58:42 GMT  
		Size: 44.0 MB (44045776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07e6838e1c47579110d82d76694d868a55501c6223c9a3a593a10c3fcae40d21`  
		Last Modified: Mon, 10 Jun 2019 23:58:53 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:ecbdc6f190463d4b74934cd714cd3e03d42e23ebddfe8737a51a003d2f163bf3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.1 MB (42082812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4681719493c750e3e9521589ba28bb386337eedda95a470fb2ad9ef52b8a685`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 11 Jun 2019 00:01:44 GMT
ADD file:50bc474f2a92a5f391c98aeffd112383439e886650d1f040f99e28b66bf332a7 in / 
# Tue, 11 Jun 2019 00:01:46 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:01:54 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:209756ea8201434f1b0d20fbf62a036f59f5e5bb25ece0141007b3b8d01f7397`  
		Last Modified: Tue, 11 Jun 2019 00:08:29 GMT  
		Size: 42.1 MB (42082589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33677fd1a20f2adfb87909a182d8840c49bb909cfc134ea0cc05e1163ef16259`  
		Last Modified: Tue, 11 Jun 2019 00:08:36 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:5c428f03534d53e93c5c5fc3e10d02dc2acb910bda00ed973935b20851993d78
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43142173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:513b9ab87f30d312526130b98908cd16c288bdb23661587d6df453c07e4b0e5d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:40:58 GMT
ADD file:f3969f423526032c7f13be120ecc627a01cacdc262f7e6a4c42b3eefd30f867b in / 
# Mon, 10 Jun 2019 23:41:00 GMT
CMD ["bash"]
# Mon, 10 Jun 2019 23:41:05 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:6c46f81a4dc3b0d24f8e71b74c77e19a29379d1a9db254c677fb71647283fe80`  
		Last Modified: Mon, 10 Jun 2019 23:44:26 GMT  
		Size: 43.1 MB (43141954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd9826cbb864d559a87f7fed5bbb177142881f28c5c72f0abdaa9e8f711f2bab`  
		Last Modified: Mon, 10 Jun 2019 23:44:31 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; 386

```console
$ docker pull debian@sha256:c00292a09d8974bf67ed51bd0bc039ef54e539b3e59626c7a4c9b6b69d059445
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.1 MB (46063588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8a9359cc433f86d3c5467ab54ee43c171e02c510b21a6f41a914272acb737ea`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:40:53 GMT
ADD file:b2ee0b244525bd60b28dd085a1fc797a0d8e7446ada8380649585059ae3426ec in / 
# Mon, 10 Jun 2019 23:40:53 GMT
CMD ["bash"]
# Mon, 10 Jun 2019 23:40:57 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:4575589f601207472f210a1239ca6cb502ea68ecb45e1b7514f9e8680def1611`  
		Last Modified: Mon, 10 Jun 2019 23:45:05 GMT  
		Size: 46.1 MB (46063364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1e15a3ac6e38424dad3900ca2fccaec34f3eb45b5fb0d516ed1a11b0a9205f0`  
		Last Modified: Mon, 10 Jun 2019 23:45:10 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:52e0a0e4e1b66bb9ea95367337430c2fe8af3529c7c3f75df866dfccb892d8c9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.6 MB (45603448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d1a4846d3eb15024346e3c844f1a036480673e634e13eaa5921c8251618994c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:18:08 GMT
ADD file:fd7c800fbde8bf4938830ea867c2c8dc26ee4df6076b1fc1d0aad63ffa47f7df in / 
# Mon, 10 Jun 2019 23:18:10 GMT
CMD ["bash"]
# Mon, 10 Jun 2019 23:18:17 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:4de7833a67dff7c283871af942101e36d91ce2bc49a765653756d11262ca6c9f`  
		Last Modified: Mon, 10 Jun 2019 23:22:55 GMT  
		Size: 45.6 MB (45603225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab47817c46f90a075290888d11f127dd899aa58cbd98f16f018af74cdb614b18`  
		Last Modified: Mon, 10 Jun 2019 23:23:06 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; s390x

```console
$ docker pull debian@sha256:eb93e5bc959bb36958028484ebdc6e9575ded37bba92a8df9940e97c22fd3983
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.2 MB (45197850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e2d039adea9264bc791b9a07f870046e216e63abc4b4927ff2b869e7b79ba82`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:43:05 GMT
ADD file:74528d764b2a1a5754ef4b9a3f52f2ff7e1eec76647ac9fc41688d311e9150c7 in / 
# Mon, 10 Jun 2019 23:43:06 GMT
CMD ["bash"]
# Mon, 10 Jun 2019 23:43:11 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:1d6494f26070cb936a1fd20a10af5cc880fc82043e4ab5353ceb90c307cb6b34`  
		Last Modified: Mon, 10 Jun 2019 23:46:02 GMT  
		Size: 45.2 MB (45197626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:463b5728fc65184440d4c6b187cbf4d99b836c35590bca3a9afef6e605136dd0`  
		Last Modified: Mon, 10 Jun 2019 23:46:07 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
