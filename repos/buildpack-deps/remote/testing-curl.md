## `buildpack-deps:testing-curl`

```console
$ docker pull buildpack-deps@sha256:abe509a0015f42cdb44f65617ee9fc49f91d4ac0884be773c4ea0e14cbea5742
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

### `buildpack-deps:testing-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:58ded833c151c628991d6e63a1bd36b77341848892a6cf2c9261354f13585e9d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.1 MB (66098687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e9f0564e8a40eaf423969e5a054d6a9cda8a2fe9fcd5834ce3bf1d84f450c56`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 06:42:45 GMT
ADD file:3e44dc3efd4691d66535df49a5a805cae024578f150d8a17b801624a5b9703b5 in / 
# Sat, 28 Apr 2018 06:42:45 GMT
CMD ["bash"]
# Fri, 04 May 2018 17:28:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 04 May 2018 17:29:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:669cd012b9c151a1111764e66f8edf390cfc1d5c37c41f0268fa241837086cd0`  
		Last Modified: Sat, 28 Apr 2018 08:20:05 GMT  
		Size: 48.3 MB (48310892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f102b372f908c8b822d972176f8f360ce6d14f3e7b778cace8410a95c8db6ce3`  
		Last Modified: Fri, 04 May 2018 18:14:43 GMT  
		Size: 8.7 MB (8674616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59335fe4363af1a2d195c79eee83caca7c8c9de9c3441feb98a949379774a098`  
		Last Modified: Fri, 04 May 2018 18:14:43 GMT  
		Size: 9.1 MB (9113179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-curl` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:384ecd52628731f150952a9a1c9197e8cc8a0858d4f4a4060aad9304f3ab944a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.0 MB (62985413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d8ff853d757e2e09d97d1d5f4d6e72d3c07fbcae3e730ef62c19173db4fff70`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 08:48:43 GMT
ADD file:66d920f27af34778b859ff44ac2f690b2f57a54a25e51a1186bfc8c8227115e0 in / 
# Sat, 28 Apr 2018 08:48:43 GMT
CMD ["bash"]
# Sat, 05 May 2018 08:49:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 08:49:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:c18fafa90d726e357067435541360e188b0202897339c69c0ec6942c58fe23a7`  
		Last Modified: Sat, 28 Apr 2018 08:56:22 GMT  
		Size: 46.3 MB (46285529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a5820562fc4968838851b12ea1fb01c7c0bd7dc73a66a95e6c57ce3da8cf8b7`  
		Last Modified: Sat, 05 May 2018 09:07:50 GMT  
		Size: 7.8 MB (7843302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83b8da604e242e2a0eb181149354ba063240ac08d4a310930d4c3a611dadf1d5`  
		Last Modified: Sat, 05 May 2018 09:07:50 GMT  
		Size: 8.9 MB (8856582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:4d20ee251f98f70f29c25725c5e54b2ca7da66bb44762d55d2352ecd495fd5bc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.3 MB (60309584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1ca326766189a76465299a721c241b71e3c15cf51000a9ad79fdcc4303df321`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 11:58:11 GMT
ADD file:f2876a722dd3fec61e9051a68a520019d6a5c08e33fe8e9e4c9ea2fca23db046 in / 
# Sat, 28 Apr 2018 11:58:12 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:32:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:33:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:538e2267e0d08299ff1f9bdc7a7e667616481e0dc6c2902bcae25740b91adb42`  
		Last Modified: Sat, 28 Apr 2018 12:09:39 GMT  
		Size: 44.2 MB (44192112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bce1a26d78a3172d27023c0939115a1d39982d6ba175290977201de30367f52`  
		Last Modified: Sat, 28 Apr 2018 13:00:57 GMT  
		Size: 7.5 MB (7549685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29439b1ee635f3aa9096db0ddaaa07a28fbc35539c942509a0298f49facc141e`  
		Last Modified: Sat, 28 Apr 2018 13:00:56 GMT  
		Size: 8.6 MB (8567787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:010111d43ba620959d9ace88ae63f37c90174436359191723bd8cf1d586c207f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.4 MB (62352456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85ab7992ef5922c04581093f4a8f253dbc10fab953939ec3c3f1cd973dbfe6ae`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 30 Apr 2018 23:17:08 GMT
ADD file:5036a242bb6fa4ea561cf86ebf48f2b1a664f2d77cf24b666f81097e1a7b7d16 in / 
# Mon, 30 Apr 2018 23:17:25 GMT
CMD ["bash"]
# Sat, 05 May 2018 09:02:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:03:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:d9305dcbea4d3f6c722c3515486f787b6f5101c0713f49efe747fb5c54a456a3`  
		Last Modified: Mon, 30 Apr 2018 23:39:15 GMT  
		Size: 45.6 MB (45610650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bace1328ae4231253fb361afbfd80f0103d2bc07edaa8fececea36a3878b5bf`  
		Last Modified: Sat, 05 May 2018 10:20:40 GMT  
		Size: 7.9 MB (7894042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95e5ab4f023875d9bd5cbbc9f39a53e779acd7402585aa71262ee2290c2c7945`  
		Last Modified: Sat, 05 May 2018 10:20:39 GMT  
		Size: 8.8 MB (8847764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:8ab52844a7fa7b70e2646aa73aac0c0b63090a2c8edab768f2ee61ce900183ea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.1 MB (67103634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc3bd292ab2d6b8f418a6686d736c98401672dfde8e054cec488b54ce5d74fc1`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:09 GMT
ADD file:c7f45bbb36a6dc2b6b0b33d053bb2770ec06cdb2c900cff5af14d6489490b12e in / 
# Sat, 28 Apr 2018 10:39:09 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 11:59:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 11:59:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:5a8e1be398ceea51bbc9f18e247db10203d8e023e0be4dcf256a6756222e8879`  
		Last Modified: Sat, 28 Apr 2018 10:43:33 GMT  
		Size: 49.1 MB (49088138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae62e68633437ec13ff029590331cf457580af13f358ab1f78b7eefc16bb3d6c`  
		Last Modified: Sat, 28 Apr 2018 12:35:54 GMT  
		Size: 8.6 MB (8626683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffd2336fb888c8f08a3f8caa7ad332ecc5f6472f1b15fb1925f97457e16e4e96`  
		Last Modified: Sat, 28 Apr 2018 12:35:54 GMT  
		Size: 9.4 MB (9388813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:3b0ae4efc063e54e3f4fc3f1652d365ba7cbda02b690ab28ee39e1a63b510534
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.4 MB (67362201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53f91d5edb01ed3b7748e9b485d520cd7c8f5bea161e3ef62b1db4bebdfe803a`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 08:17:10 GMT
ADD file:d3657c1f223127301379ac9ded23ac24fa9725bd9f8bc3e66ef79572f768815d in / 
# Sat, 28 Apr 2018 08:17:10 GMT
CMD ["bash"]
# Sat, 05 May 2018 08:38:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 08:39:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:20d66f98ebb4d14ec30708a8ce75b4004164b1164afd9734a7fa623b2d1b9b77`  
		Last Modified: Sat, 28 Apr 2018 08:23:26 GMT  
		Size: 49.7 MB (49746693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b2153a1377e49b7a8227707cd9cf8d48360b37d0a2f1606eea978bf0c96360e`  
		Last Modified: Sat, 05 May 2018 10:41:13 GMT  
		Size: 8.3 MB (8266268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:121c636b399604342dcb5656f4bad42debb05fbb19b63c6293c1a9046953be19`  
		Last Modified: Sat, 05 May 2018 10:41:13 GMT  
		Size: 9.3 MB (9349240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:2cce50d31d00c5703be4bb8cd6d3f14ec1ef77de585a54821d6faf6a2c753eba
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.6 MB (64554241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:258584e5a0a723b3803049e7552a7a16702911212f00d7f76e7593de350266ed`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 11:41:56 GMT
ADD file:a585239e7bbf89417d8a69d8397ff18404f3e0baf7c0d648078be548627561b1 in / 
# Sat, 28 Apr 2018 11:41:56 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 13:09:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 13:09:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:811bf1512e7bc49075b48591994ed3209ccd1ed59f6a9260e4fec18bec422a32`  
		Last Modified: Sat, 28 Apr 2018 11:47:16 GMT  
		Size: 47.3 MB (47336918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed70b61bb98b750e30c9fa7d121d9ebee2dbc4ed926e11d9ef9ac20e6dc65ff0`  
		Last Modified: Sat, 28 Apr 2018 13:27:52 GMT  
		Size: 8.1 MB (8141185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:106a49ac3473f99426565cd694c0dbd98065dc41fad72c18ec40a9dac38ce3b3`  
		Last Modified: Sat, 28 Apr 2018 13:27:51 GMT  
		Size: 9.1 MB (9076138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
