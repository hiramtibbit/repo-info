## `debian:stable-backports`

```console
$ docker pull debian@sha256:a376714ab9e95f8da81fdd130e492a9b3c57251760dbd072e4d2d08ee0d9dac7
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
$ docker pull debian@sha256:b2077c3173f7f193f8df98d4dd6673e00a55bba69c9e2774ece0e2497ceeaaf2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (44045982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3be7c0f350b2c846020537061209b8ecd9f86ce56fc5fc9b13f8285dd2c150c0`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 08:52:29 GMT
ADD file:e4346b233f0cbae53995f9ffb99526f7121f885dc3a9b28a5259eb972d94c36f in / 
# Wed, 08 May 2019 08:52:30 GMT
CMD ["bash"]
# Wed, 08 May 2019 08:52:36 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:d8c493cbf5ae01a3b3d1c08bbb2ed6438ed7f3dbbdeec6adff0ab7af91db2a46`  
		Last Modified: Wed, 08 May 2019 08:58:36 GMT  
		Size: 44.0 MB (44045757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c09eeb904a4357743a84967fdbccfc01e675312c0b4adb56755b70c97b32825`  
		Last Modified: Wed, 08 May 2019 08:58:41 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:f11745d93f92d7690b1ca9756b1c75cf40d75d4a3b2b18ffa98c17a7f4094ae1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.1 MB (42082831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:102c83838c894114b9afa8b5aa6d3b342835f7dd1c77568956467b674c781bd8`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 12:02:28 GMT
ADD file:4da7954046dc6d8b454a462db1a3ddfbfd52545ba46388283fbd29bdf7aec006 in / 
# Wed, 08 May 2019 12:02:29 GMT
CMD ["bash"]
# Wed, 08 May 2019 12:02:37 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:08d322e824d855eeb98972c32e12193d7435591486bddd0b851718d66c1df242`  
		Last Modified: Wed, 08 May 2019 12:09:01 GMT  
		Size: 42.1 MB (42082607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e025d8c81a0f54d8b9014ccbb3dbbe9e096ea5bdc59e21b36f073bb1201be46`  
		Last Modified: Wed, 08 May 2019 12:09:11 GMT  
		Size: 224.0 B  
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
