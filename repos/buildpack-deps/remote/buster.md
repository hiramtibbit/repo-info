## `buildpack-deps:buster`

```console
$ docker pull buildpack-deps@sha256:63985796680f75add2d904b3136ffc180375c1e64648efe05a00e73b42332197
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

### `buildpack-deps:buster` - linux; amd64

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

### `buildpack-deps:buster` - linux; arm variant v5

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

### `buildpack-deps:buster` - linux; arm variant v7

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

### `buildpack-deps:buster` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:cb8dbd6b1e921ba657aad1dfb8468abf8670ca9425bc7a2c445c22b423ad01ee
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.8 MB (286817308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd8ff936dd3fef155654e955b4d668d7ceb7f8d74281adc1e70e6bbfce369cdf`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 08:41:17 GMT
ADD file:692294feb32e8b9bf3510dae1c83cdbb869a7a1b7ec24f6ed5fbbabba061a8af in / 
# Wed, 27 Jun 2018 08:41:18 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 10:19:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:19:56 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 10:21:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:33:06 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bef60b6834f761c65eaadb7dc9a039dc0ec9aa7de8ba56a0dded0cd24fb3c8e6`  
		Last Modified: Wed, 27 Jun 2018 08:51:04 GMT  
		Size: 45.9 MB (45919144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef85bbd28706d01060eb47d3a8d21bf1304db3581c942aec142487ee63f5fb77`  
		Last Modified: Wed, 27 Jun 2018 11:01:31 GMT  
		Size: 6.7 MB (6681486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be2655a63e995833173991ab27a2a086306e8d546b67cec82734fd968f2c96b4`  
		Last Modified: Wed, 27 Jun 2018 11:01:33 GMT  
		Size: 9.0 MB (8980551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85d4c68c9c223edf9f2a1af7ae18e5d9f81442257f8494c9abe5dbb5f8c871d6`  
		Last Modified: Wed, 27 Jun 2018 11:02:18 GMT  
		Size: 49.4 MB (49352451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be59d00feb0cd2caf485141a88bc55a38109434d8897904c38d8f2e582f7d61e`  
		Last Modified: Wed, 27 Jun 2018 11:03:38 GMT  
		Size: 175.9 MB (175883676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster` - linux; 386

```console
$ docker pull buildpack-deps@sha256:9feea5e93058afb874c8c5979265f9f158090f96a6e5f02b97b610c7fa629e47
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **312.4 MB (312364202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c233505c470370ab54ba0aa3f0cd7f546e0fbdf396ff3f6bdb97c3d6e3296a74`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 10:39:08 GMT
ADD file:c9cfaa3bdf0b6c449805dc877cca855faf2022cfed63d9b50fb538a41f2a2b3f in / 
# Wed, 27 Jun 2018 10:39:15 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 11:31:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:31:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 11:32:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:35:15 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b386f2fbdc3eb3542f9e09e9332b6238756dfac1e869adfe725fed0167e27eb0`  
		Last Modified: Wed, 27 Jun 2018 10:51:30 GMT  
		Size: 49.4 MB (49412314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34c88e3f5046d9f9be3ed9a5ba692df35560d3e5401ea1d440fd3fbf5852073f`  
		Last Modified: Wed, 27 Jun 2018 11:46:46 GMT  
		Size: 7.2 MB (7222839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acef0ba08e60c66012469719d26ecd9ba41c03da44b2814ee901028d826b85b3`  
		Last Modified: Wed, 27 Jun 2018 11:46:46 GMT  
		Size: 9.5 MB (9527572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039cd317e9e3734d6dbb948316f0f2495d2066a6c574a442c941642f5e24d6ff`  
		Last Modified: Wed, 27 Jun 2018 11:47:22 GMT  
		Size: 52.9 MB (52930210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:937e39e536a3070dcfe9f878b5635cca3a19a34c59cfe846fd07a08249a40771`  
		Last Modified: Wed, 27 Jun 2018 11:48:20 GMT  
		Size: 193.3 MB (193271267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster` - linux; ppc64le

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

### `buildpack-deps:buster` - linux; s390x

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
