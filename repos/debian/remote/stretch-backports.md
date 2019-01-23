## `debian:stretch-backports`

```console
$ docker pull debian@sha256:d4278848ea091f8ce3e81de4df732863932743afaaa4773ba02d1f953c9bf8d4
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
$ docker pull debian@sha256:7ece6ecb42203ad7d36882141cbdf72ca539e468e24362da58fd63ee14788185
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.3 MB (45344970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34d0a58ab5713b051d5f5a026293ad4733fe4f16bc44e7e5aff450972119b265`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:03 GMT
ADD file:feb9fd29475961253e3449db036bbf56bf6f4d02f2df1202209e393a9e7e95f5 in / 
# Tue, 22 Jan 2019 19:30:04 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 19:30:07 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:ab1fc7e4bf9195e554669fafa47f69befe22053d7100f5f7002cb9254a36f37c`  
		Last Modified: Tue, 22 Jan 2019 19:36:49 GMT  
		Size: 45.3 MB (45344749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016d32c96173ac5442922dc94911d2b3626268bba776f10e7a4c2cfbfa34cea7`  
		Last Modified: Tue, 22 Jan 2019 19:36:55 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stretch-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:43fac6dd612412f0f922244dc6d4f2819bc843dff8bf42e2dbefdfdc8390bba7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44053842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc91c485555f587fe13053bce00ba7054826a5154cf2fba5ef0340411b387647`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 09:54:27 GMT
ADD file:8ba047ef6412ca91461f1c03e2571c0760c1e7ce294814ec3523055f0b453994 in / 
# Wed, 23 Jan 2019 09:54:28 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 09:54:37 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:4fa85838ca92a72d64f970f6d43c23ad625e644e7d2d6088bfccfc6b05f2ce41`  
		Last Modified: Wed, 23 Jan 2019 10:02:01 GMT  
		Size: 44.1 MB (44053619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bbd336cdb4d68988e7a0b844b9a8413ed3da2b367a2101eb92e3b7b416abccf`  
		Last Modified: Wed, 23 Jan 2019 10:02:11 GMT  
		Size: 223.0 B  
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
$ docker pull debian@sha256:a5c45e22447b2f3e4ce885c11c993502f8cfa947af1134a5b1f84ab46b5d667b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43125859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75194a56253f49f04b51c7141f96606d1215a59e62f3ba0ce78fd7dcdc8a7471`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 10:03:54 GMT
ADD file:8e97108c1e48b9197ff71d26fbf0d9c12372f7197eace7801dd05a1b34e56e65 in / 
# Wed, 23 Jan 2019 10:03:55 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:04:06 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:8c20612220f39dab58625e39fe6985d91acf6a5359517e82621d51d28bf82e05`  
		Last Modified: Wed, 23 Jan 2019 10:11:07 GMT  
		Size: 43.1 MB (43125634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01ec9efbde29dc2f11b699a48dd0aec645bbf28813d64fe784858c4d792e25f4`  
		Last Modified: Wed, 23 Jan 2019 10:11:23 GMT  
		Size: 225.0 B  
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
$ docker pull debian@sha256:9ac18c83f1e685378943bf9d5bf986a7f8d85ebd28a5283d2725af0d5fb83bb2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.6 MB (45617120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32ed4b323290428744b9b990b34a6cf08d420cd6d55d5a69ad4ce3a55cf83bb7`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 09:26:55 GMT
ADD file:607fec07098dd44504d39967b200ef4c80d3c31eb3524c99a522d779f8a48785 in / 
# Wed, 23 Jan 2019 09:26:58 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 09:27:08 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:ce16bf3279cca6ab2d1b46a272b57d4c1e11cbe13e3a52148fceb9cc07eb0b37`  
		Last Modified: Wed, 23 Jan 2019 09:33:00 GMT  
		Size: 45.6 MB (45616894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c86bbdd0d076f9d38467f78f42c8cbf9c9d63c4a92e2bbdb75b6cfad695ad91`  
		Last Modified: Wed, 23 Jan 2019 09:33:17 GMT  
		Size: 226.0 B  
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
