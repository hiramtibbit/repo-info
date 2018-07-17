## `buildpack-deps:testing`

```console
$ docker pull buildpack-deps@sha256:e5f9f9f4416ebcd467d6a3a5f0836a848aeace83960f52e9a94f07971746cfea
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

### `buildpack-deps:testing` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:584e49ee94acb319da6d39583a7c756ef738772523913f891d4c9356bb97c7cc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.6 MB (302628432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10af6615a6e308f34388560ad86cab433a78135284a9bcc3655b408f73f2244d`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:19:46 GMT
ADD file:e0eb7fd196a77a8c01b8187e5b032570504c8a8298b9b1ece3e14d9b33d55118 in / 
# Tue, 17 Jul 2018 00:19:47 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 02:55:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 02:55:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 02:56:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 02:58:53 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6e8f29bc2816888d5c4a1a83baae3048b6d32a16b8f2ce62d9a93d7a37eb976e`  
		Last Modified: Tue, 17 Jul 2018 00:32:47 GMT  
		Size: 48.9 MB (48859152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17c836e8cd81925e40e141878ff917d917616d5e81c215f50797c21bc58cb38d`  
		Last Modified: Tue, 17 Jul 2018 03:40:24 GMT  
		Size: 7.1 MB (7072731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ad16217db4929382b1d06480d7250beb19c3cac7f4c3328cffb58e248965eee`  
		Last Modified: Tue, 17 Jul 2018 03:40:26 GMT  
		Size: 9.2 MB (9246605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1bd205fbc0bb439d900a058e8c0cc510334db4debf26b5aab45b2c24fddd424`  
		Last Modified: Tue, 17 Jul 2018 03:41:31 GMT  
		Size: 51.4 MB (51433669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d79adfa80b839ec7c7fa11ac063258083196614a916af3609a30d6272bb0f6c`  
		Last Modified: Tue, 17 Jul 2018 03:43:20 GMT  
		Size: 186.0 MB (186016275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:55f4d2d9867445a2b667077700669988763e7f1841b62eb1f368066d0a0a18d8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.7 MB (285674568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad35838d3e568ff38aa6484aa24af092cb0b47045fe319aab48d60964694f1b6`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 08:48:51 GMT
ADD file:41ba433a05f6f3decf730b6ecf28c9d728da257c5cbef4edd46ad18dbd6feecd in / 
# Tue, 17 Jul 2018 08:48:58 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 11:36:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:36:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 11:37:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:40:22 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:de426355529ff2db32424f3016ce9751275f19dc857c55cc607079f4acb9f87c`  
		Last Modified: Tue, 17 Jul 2018 09:01:42 GMT  
		Size: 46.8 MB (46795713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af31179da93974ac8a4b9d83776984c007eb196f00da29af50733a36c12e84dd`  
		Last Modified: Tue, 17 Jul 2018 11:56:06 GMT  
		Size: 6.7 MB (6664473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aae0a7bcd9370f8de4c071f4abe6ffde78f89aae66945193207e12f67bad6654`  
		Last Modified: Tue, 17 Jul 2018 11:56:07 GMT  
		Size: 9.0 MB (8988634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cca421a851701afbbaba72ad04eb05f2ffa880ab54ad8aaa8e6c97d513d3410e`  
		Last Modified: Tue, 17 Jul 2018 11:56:49 GMT  
		Size: 48.7 MB (48707918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78ed454f07e0157008fcb1ce15b828106ea5984dbdc7d276db8c5f2eea9e9fd4`  
		Last Modified: Tue, 17 Jul 2018 11:57:59 GMT  
		Size: 174.5 MB (174517830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:4d9ff048bb0014e6c285c08253bcc4a5a2c14f4b37a2990c53a2bb7701873499
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.3 MB (274335504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d1547b29f6de05bb20d6e93e6a814b80ca50dddcb61d02040865721f7684bed`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 11:58:16 GMT
ADD file:cc226c714fd87a8d8245fe4ee250645827c939771c43726bfee439d9410e0681 in / 
# Tue, 17 Jul 2018 11:58:17 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 13:33:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:33:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 13:34:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:37:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c1527ffc49aed4bcd81120e0b3877f7d2558c50f41a63a452d74e6060802ea75`  
		Last Modified: Tue, 17 Jul 2018 12:09:57 GMT  
		Size: 44.7 MB (44666680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d49641e095e0e37b790e407cb61be989c6228c6d683bd794873b2ae2a314f912`  
		Last Modified: Tue, 17 Jul 2018 14:02:12 GMT  
		Size: 6.5 MB (6455998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8322b804a049a0f6d7f2e709cec61fc3ef97534e72ad3c85af53cbeb0a9dca94`  
		Last Modified: Tue, 17 Jul 2018 14:02:16 GMT  
		Size: 8.7 MB (8704266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:952f46eb697bc791422ae1a581c31592b65c11f77c99aed4a8c34f77e82993cd`  
		Last Modified: Tue, 17 Jul 2018 14:02:48 GMT  
		Size: 46.6 MB (46581091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f5b316538dfd6231d329b79c03c1d54103fb3b0f16fa58d25c00897ff251fe`  
		Last Modified: Tue, 17 Jul 2018 14:03:50 GMT  
		Size: 167.9 MB (167927469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:cb89b9540ff1d670b5b6c0b3f9cd2cfb02842b50e02012b0c4e9c19439533698
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.2 MB (288158537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b4a8859f23824566c9501b7051170547f3fda133dcd050392ac68c22aaaa351`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 08:41:59 GMT
ADD file:50e6644465ae7d1de0b9421371bed7b92a9c7fc31bd97a5942482ca5b19420d3 in / 
# Tue, 17 Jul 2018 08:42:00 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:24:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:24:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 14:26:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:38:34 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:676a49a4c98c6fb9b8face32e4f911216f7f5676131c7a74fa19eaea6aabd490`  
		Last Modified: Tue, 17 Jul 2018 08:51:55 GMT  
		Size: 46.1 MB (46117577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:976f371da80d0656f97e09b79fa615fc0f6965fffccfbf2a589704d3fd25d507`  
		Last Modified: Tue, 17 Jul 2018 15:03:40 GMT  
		Size: 6.7 MB (6684446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a26122c58d2d064213fb96052a91bb8d9a607df65f3de526e7b106f6b5209c5`  
		Last Modified: Tue, 17 Jul 2018 15:03:41 GMT  
		Size: 9.0 MB (8982264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e63c4ae4cba52d289709059174c4245b0563fa142dc2fdb8885f4b92d5df39f6`  
		Last Modified: Tue, 17 Jul 2018 15:05:21 GMT  
		Size: 49.4 MB (49355320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c8e8929b215ec82fbf7b1876141e6fd38525a7e96c1eefd8ef57cd4d9b2354e`  
		Last Modified: Tue, 17 Jul 2018 15:07:26 GMT  
		Size: 177.0 MB (177018930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing` - linux; 386

```console
$ docker pull buildpack-deps@sha256:9dd24b51878ab54f235079c1435c160e3fdfb28f3c74933319c2058a7dbe3088
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.7 MB (313722599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b8c5815d703d7cc89be059be14146f9affb42a244ac1ab432f38b044435032c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 10:39:36 GMT
ADD file:43fdced830e4e180f0f86b158bbdc62358f7179645e7a082bdf1168d7efc3e0f in / 
# Tue, 17 Jul 2018 10:39:39 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:13:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:13:54 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 14:14:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:18:05 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1e553b82081a55d71148b2efe6cf89aa4d2ee3cd275d7e6471e85d606fb52b1e`  
		Last Modified: Tue, 17 Jul 2018 10:55:13 GMT  
		Size: 49.6 MB (49644475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1653eb5c6029be943fb36cb7d56b2e7674938a8ee7ad5decc9c3e637db691294`  
		Last Modified: Tue, 17 Jul 2018 15:02:54 GMT  
		Size: 7.2 MB (7225514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11027ab4c0fe5ac8ee975a2d557aedc3b52c8520f72fe77fa3d523a6c36b8d3c`  
		Last Modified: Tue, 17 Jul 2018 15:02:54 GMT  
		Size: 9.5 MB (9528817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3404dac707590f65c0c15cf1352a0f74570f57a3d6d1ee1331765b127f73cc8c`  
		Last Modified: Tue, 17 Jul 2018 15:03:44 GMT  
		Size: 52.9 MB (52941263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a401ba0e7b3443f94401d0e0e501c2d56e75b254ccceaff8cae67b583bf8087`  
		Last Modified: Tue, 17 Jul 2018 15:05:21 GMT  
		Size: 194.4 MB (194382530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:d4c7528557d7ba799860428e941976d05ac092df17b42685a8ff5f5b94709690
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **310.4 MB (310428218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:475d29c4d4bcaf808bc702ace80565a6fa546852e1bdc693f4113ae0add3e085`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 08:17:44 GMT
ADD file:3cd0ebc6ec0d6a5058e733ebd166dab448d3d3da8e24b4be77b4ac0963dcabaf in / 
# Tue, 17 Jul 2018 08:17:49 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 12:29:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 12:29:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 12:32:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 12:43:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b9943e4943de8a062eff21e85d00df2552f8ab13344336de83416c2607e9d91e`  
		Last Modified: Tue, 17 Jul 2018 08:22:49 GMT  
		Size: 50.3 MB (50335300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87bb631636c0c2135253c8af2c034e413e543a7508a2bd2c154e697e3af8563c`  
		Last Modified: Tue, 17 Jul 2018 14:07:42 GMT  
		Size: 6.9 MB (6909888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2622bb337aa455416fd8dc88df761ef4ea3fcae9eb5dd2abcb71383cac606a4`  
		Last Modified: Tue, 17 Jul 2018 14:07:41 GMT  
		Size: 9.5 MB (9495599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf48a201b7d8a04bafee4113d91588f8d3693c2334c6e4084c120079d67b2b9c`  
		Last Modified: Tue, 17 Jul 2018 14:08:33 GMT  
		Size: 54.1 MB (54099949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f319a36b61f51158773459b9fffeee415d39da5f79de51db40b2fa607eda73bc`  
		Last Modified: Tue, 17 Jul 2018 14:10:16 GMT  
		Size: 189.6 MB (189587482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:bf9cafbf1517bbbdb045408f44adf45ed3f8e35687fab1ee8c8c4a89a9fc579f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.4 MB (289414778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1588843745ed004542d636808c99c587bbc4d9abe9589a7175fa60bb4e5dcfe8`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 11:41:43 GMT
ADD file:bef24f5a7022c532ee4e83c06a45f245cea83795b0560dabfa96b15f9e414051 in / 
# Tue, 17 Jul 2018 11:41:45 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 13:14:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:14:47 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 13:15:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:16:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:85656be978556b52b57e8f832bc69e6a1dfb567d599423c2ea6eb590c1c2112c`  
		Last Modified: Tue, 17 Jul 2018 11:45:03 GMT  
		Size: 47.8 MB (47831178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f3cdae5a2252db542bdab47d4eb4949e8d8dce97e4b345cd45c0a33fcf2acb9`  
		Last Modified: Tue, 17 Jul 2018 13:27:06 GMT  
		Size: 6.8 MB (6799513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4f98dc18255b0fa76868d327cec1baf287cd6ca8f3720e85f6a1722ceff31ea`  
		Last Modified: Tue, 17 Jul 2018 13:27:06 GMT  
		Size: 9.2 MB (9183783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ff5a46ca2a003bdc97dfa16deae6e05c22bf515d417df298a0a8643d5f8893d`  
		Last Modified: Tue, 17 Jul 2018 13:27:27 GMT  
		Size: 50.8 MB (50783027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef5b95463004f4ee9c392b265b4949d81610ef5a38413b9ce64d247d046756a5`  
		Last Modified: Tue, 17 Jul 2018 13:28:04 GMT  
		Size: 174.8 MB (174817277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
