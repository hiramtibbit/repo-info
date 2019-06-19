## `buildpack-deps:jessie`

```console
$ docker pull buildpack-deps@sha256:ec4341510397f0aba7fac2649cace5cbf68572e979e3668bb8f3f060fcb89ec8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `buildpack-deps:jessie` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:aff2de210c262b06e592a4f4a7ec07c72b9b4c6cc48098c42f088ff6bc6eebcb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.5 MB (247522897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c6dcde503bd3a201d2c4a8c1c57238f1c8ebb31d92d76c42b41e2d6d4202ab6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:22:09 GMT
ADD file:6f4dbeacd2c7a48941d1b7aacc0e881df9cd6e3c2bcc54665038e0f2e29c7ac1 in / 
# Mon, 10 Jun 2019 23:22:14 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:19:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:19:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 00:22:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:26:31 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9811207f4ebad5e666eddf6e1684e4eabe16efc94008f77fc6fd17f02c583d17`  
		Last Modified: Mon, 10 Jun 2019 23:26:18 GMT  
		Size: 54.4 MB (54385835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c8f4d0494dc910e90a45519fd46ead7a76c43073a36a726ddcedbdfafbd80cf`  
		Last Modified: Tue, 11 Jun 2019 00:35:12 GMT  
		Size: 17.6 MB (17572182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1954412987c0e1cf159da814c1b3207d08c9251c518b5d44e06e79e9c9cde7cd`  
		Last Modified: Tue, 11 Jun 2019 00:35:34 GMT  
		Size: 43.3 MB (43336512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1801b5eaa295cbf3bf82923331e3cc54cb72528fb005dbb2f561613c835a737e`  
		Last Modified: Tue, 11 Jun 2019 00:36:15 GMT  
		Size: 132.2 MB (132228368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:jessie` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:66488ded9d025a1f785a5feccfff5bed7586748b7b6e2309ebb4e899f26df5e7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.5 MB (227481122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9af046a916ac8ccbb3274e911ece95f26dfde2b8dc1f757d2d173612eb768fe`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:49:59 GMT
ADD file:7f8109dd37b2c20302f7a90e042e3dca781757478e499034c546fb898e6fc96e in / 
# Mon, 10 Jun 2019 23:50:00 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:21:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:21:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 00:23:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:26:19 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:5d91a8f5de0e5f384568f40fe9ac89414f2afbdb38d7744ff944cead02827c60`  
		Last Modified: Mon, 10 Jun 2019 23:56:45 GMT  
		Size: 52.6 MB (52575080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac0dec262b7c726fae31a74bd90e247b518c277ca6a002ff602d64dc6155b6bb`  
		Last Modified: Tue, 11 Jun 2019 00:35:42 GMT  
		Size: 17.0 MB (17032638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6dacb207d51051ee37677f5c407bb85a3fdc5abb0defbf13f5a65a2b825625f`  
		Last Modified: Tue, 11 Jun 2019 00:36:02 GMT  
		Size: 41.2 MB (41156372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:308c39a989aed4e08cb94b68eb37bec307f07ae04d1351f81c7e3ea758bf2f59`  
		Last Modified: Tue, 11 Jun 2019 00:36:42 GMT  
		Size: 116.7 MB (116717032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:jessie` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:a3972c09c1a15ad273a6bc7e159513d7ad18ee6a9f754ac74b616bd233cb4be8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.8 MB (221772557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60efc8933440b3c5d742e765e79f0f6134f293619cf05ca1c9a0eb7e9c6cec5c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:58:52 GMT
ADD file:fd38fec1d1ecba98d40ef09479860aea406e5721e9752fa0c1d231944306c438 in / 
# Mon, 10 Jun 2019 23:58:53 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 01:00:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 01:00:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 01:02:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 01:05:05 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ad656537a00a24adfe5e93daf249c9dad7f6db57aacfc13bacd0416aa3f5199e`  
		Last Modified: Tue, 11 Jun 2019 00:06:42 GMT  
		Size: 50.3 MB (50297275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3c0f42b2bf8f8b361bf0098ee7a640f6f7180ffbf3de0f2095ffdabc3eed02f`  
		Last Modified: Tue, 11 Jun 2019 01:14:55 GMT  
		Size: 16.7 MB (16718940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:618d721683e919ce8bc587b61b28f5500da44bad1b157f852ccad82502ed9810`  
		Last Modified: Tue, 11 Jun 2019 01:15:16 GMT  
		Size: 39.8 MB (39766909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10be139376ceb52daf9cbee79cdb416d5d79bd613acb77c034615be1f39dfd5d`  
		Last Modified: Tue, 11 Jun 2019 01:15:51 GMT  
		Size: 115.0 MB (114989433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:jessie` - linux; 386

```console
$ docker pull buildpack-deps@sha256:2c00eefa89aaca83fbd49e492daaedb8c0e5aa14358b2179561540e0628dc763
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.6 MB (254617008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:162c2037fa652c46d73fe74eaa437955dcb64688706e886b5d332b4b2e60ed20`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:39:31 GMT
ADD file:262f4293ed178c11f8c64854276cb136c09ea3739d168a680c82be9d87caa99e in / 
# Mon, 10 Jun 2019 23:39:32 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 02:47:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 02:47:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 02:51:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 02:56:56 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:94e5a6c6976290c52800f8923e6a09c3c489f135c16b6112e5af439a1b55477c`  
		Last Modified: Mon, 10 Jun 2019 23:43:37 GMT  
		Size: 54.6 MB (54605215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf9f96e642caa8c6c308eba7bfea58ba6454f6b7034b2f369b839d06e3195ff1`  
		Last Modified: Tue, 11 Jun 2019 03:07:37 GMT  
		Size: 19.9 MB (19850010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38bc0252de1798744d259c4d9f9916ca06d8def06e20f75eeb9e08bee54c364d`  
		Last Modified: Tue, 11 Jun 2019 03:08:03 GMT  
		Size: 44.0 MB (43964941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12ded05844534ac5b6f4be4b4aaafde06eb1301032519bf48c9cfc42572c3a5f`  
		Last Modified: Tue, 11 Jun 2019 03:09:03 GMT  
		Size: 136.2 MB (136196842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
