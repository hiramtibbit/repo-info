## `debian:stretch-backports`

```console
$ docker pull debian@sha256:79e180d31a3d134f8df429b165fcc4d1feda42cabcbfe78eed41ecfedd707503
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

### `debian:stretch-backports` - linux; amd64

```console
$ docker pull debian@sha256:91f8e6e86ccf76f27bf3672ec16b80e9308ff0a75fb6cbc20b7c4000f0b1df21
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.3 MB (45344514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f5f7f19aad804285f0ba8472c7453693ca6cd4a89603f6eab897144c865cd71`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:01 GMT
ADD file:4fec879fdca802d6920b8981b409b19ded75aff693eaaba1ba4cf5ecb7594fdb in / 
# Wed, 06 Feb 2019 03:30:02 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 03:30:08 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:741437d97401b83849ccbfe4ed8964049b752081647d7f1ea8aea29d989f8968`  
		Last Modified: Wed, 06 Feb 2019 03:35:41 GMT  
		Size: 45.3 MB (45344292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bd97b804117707536c6eb461a3830492808a0a052ba595636cb89f811440e66`  
		Last Modified: Wed, 06 Feb 2019 03:35:47 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stretch-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:fed112f96c4aaec727a01b431c9c2056d54ca8422262fc68c3d238ab62b8fe47
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44051104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f837da2b6ae22e44fb4b40b0b74bbf15065082c41816a34b7a2c113f8688e49`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 09:55:21 GMT
ADD file:cde688211f1222c7310b330ab44ca3a7040b0f81757aa06eb186f342f9002e9e in / 
# Wed, 06 Feb 2019 09:55:23 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 09:55:29 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:64cbc7a69a80c9845c477fed607dbdc662a2e90c861ea5e3ede337e672e7235a`  
		Last Modified: Wed, 06 Feb 2019 10:03:29 GMT  
		Size: 44.1 MB (44050880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a7cf09b649f7fb53cae52f2ba27f0cd84593eab80413707ae7d04da6791b445`  
		Last Modified: Wed, 06 Feb 2019 10:03:39 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stretch-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:94332ba61cd06a8941a82cde69aad739383510b24bcbf44e8d726afc7687fd9e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.1 MB (42087958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da5623687b85cd7e9e6429fedc8ff3aed883355e7b919c285379dfcd3fa6f0c1`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:29 GMT
ADD file:f58fcfcac4bd31e03fe733b7c850ff7f67728d2532fc54252c02a91c66445c88 in / 
# Wed, 23 Jan 2019 13:04:29 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:04:37 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:d9d6acb4f2f3e6ab798235f9f094d5e343bad5a702bac8cf38e2569dfec4e284`  
		Last Modified: Wed, 23 Jan 2019 13:12:06 GMT  
		Size: 42.1 MB (42087731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c26f7097094f27e7602fb2658dc49c33c7a82802bae9cb98186876b43f871eb6`  
		Last Modified: Wed, 23 Jan 2019 13:12:16 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stretch-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:b948601c7bdd5a012a1767df9440632d87ecf148d44b3699c3059cc0f5d39aab
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43125203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d58c233ac1122b11cd988e520c561e6db5daaa97c1fdb7cb2ce3a114a797d0d0`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 10:08:56 GMT
ADD file:4c7b5bcb5c347fb36236917e364936a9762b8bd6e8585c33379120f01c3a8d85 in / 
# Wed, 06 Feb 2019 10:08:58 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 10:09:08 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:12bb1c82b086301ca1c22eabf3add7cd229f27b63ca4b0924e2356051d9e7194`  
		Last Modified: Wed, 06 Feb 2019 10:14:28 GMT  
		Size: 43.1 MB (43124977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f6db4607640832223cb297543f86b12cdaecc9871493e1be51b4020f5b9d3c9`  
		Last Modified: Wed, 06 Feb 2019 10:14:44 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stretch-backports` - linux; 386

```console
$ docker pull debian@sha256:4604b48fb8c1dd2d6774fa31a477eb112cf38ca6f68510376802cf8f434c1513
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.1 MB (46069681 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6af63a1debb1fd2b42bfeb02a6c5604fc6793a2dbdeb9d83e20747596b2cf6f1`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 11:52:21 GMT
ADD file:a1b4934a559144838b98b09b06112a85c3f348fe479aa3c06de45ad4d3924f84 in / 
# Wed, 23 Jan 2019 11:52:22 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 11:52:32 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:e7605ade44a5672398d8a60ec13ddeae3204795d746eafc908b8c1103fa8fa35`  
		Last Modified: Wed, 23 Jan 2019 12:02:23 GMT  
		Size: 46.1 MB (46069455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76393bfdb07865b361e5f0b65fa814f2ea768b68cf0f40367b19783d9ea26f5f`  
		Last Modified: Wed, 23 Jan 2019 12:02:30 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stretch-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:9b4c5e1b2f25cd8ee4980f00020a1feeb046f56b74b3522b0353a9ff982d3e98
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.6 MB (45617169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1579292889e5b10ba87d1e5c92053412cac5bcf2d35624ed213f58872368b807`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 09:26:33 GMT
ADD file:dbc825fea111271dd16d8443e8df30f00e4bfb82365f49430e4b697866955e25 in / 
# Wed, 06 Feb 2019 09:26:35 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 09:26:42 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:3c6e73e1f3f727588bd1de44f5524879a3591bba13b256a67f0a03adbb788322`  
		Last Modified: Wed, 06 Feb 2019 09:30:55 GMT  
		Size: 45.6 MB (45616945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82aa5770c2744571625f8b6eeebe91f2a1be8f6cb70536d83c14fea3943695e7`  
		Last Modified: Wed, 06 Feb 2019 09:31:12 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stretch-backports` - linux; s390x

```console
$ docker pull debian@sha256:65d5eca2d6e4083d4b04706ba34005e3ad7564e349068e4738030b25e9a7cc39
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.2 MB (45215032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:091a4b3bb7c0cc1cd458dee0ceb72384887167e393d34a255592b733f9a40aea`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 12:44:08 GMT
ADD file:5e4330c56c117138f24d32dcf0203d5180ce1e87ab43fd7f0523579c1dbc18ab in / 
# Wed, 23 Jan 2019 12:44:09 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 12:44:18 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:722537c8945eeebf26115a6c640dee5654f86f4895040cc1bd0657fb4e130bed`  
		Last Modified: Wed, 23 Jan 2019 12:48:36 GMT  
		Size: 45.2 MB (45214806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb20a6966eb63efa8efb5e0c339beae1c83d2bf8d71d40b134c682eca1b7005a`  
		Last Modified: Wed, 23 Jan 2019 12:48:45 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
