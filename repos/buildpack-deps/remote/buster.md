## `buildpack-deps:buster`

```console
$ docker pull buildpack-deps@sha256:9e371dc5c46861f5e162a9531831214039192dd749e1aadf6164fbef046653e3
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
$ docker pull buildpack-deps@sha256:8c4bb9d7c81df527a940578f4dee7406439d9e0c76f0cb513b6935b34c8c1d61
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **310.4 MB (310407197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8b3c5455c2842942f979df76cd999d46ad2880fffd5097096e091820257754a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 03:27:09 GMT
ADD file:22a69a330913adf5521ab0515a373a657cf7ba89e853b6d6ec43a808e489e481 in / 
# Wed, 06 Feb 2019 03:27:09 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 05:29:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:30:08 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 05:30:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:32:13 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:53d9d89325e47abb437613a43f7bd8bcb841e8bd580d9482cc9ade612504e52c`  
		Last Modified: Wed, 06 Feb 2019 03:32:56 GMT  
		Size: 50.1 MB (50149457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67ee418c4e3f4112a069e2c42269aec17fc9eaeec5106c428dddef60c835a505`  
		Last Modified: Wed, 06 Feb 2019 05:57:08 GMT  
		Size: 7.8 MB (7765814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a3c3f5bcc57e9c96a6346e63335ff34ad6bd17adfb0a8a875477b462be60a32`  
		Last Modified: Wed, 06 Feb 2019 05:57:08 GMT  
		Size: 10.0 MB (9966028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28c262b37bd6197cf2180ae8123fe9335d71e4039b5927fe85390eb7274fc2e6`  
		Last Modified: Wed, 06 Feb 2019 05:57:28 GMT  
		Size: 54.0 MB (53961584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:948ebaaba539e7408e1b5899c547cbac0e36aae5c843f5d4d16061ed8495981b`  
		Last Modified: Wed, 06 Feb 2019 05:58:06 GMT  
		Size: 188.6 MB (188564314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:4405157f406bca563eb3d52799fd88c0b4e9969f443720d72440301b8ff484ef
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.4 MB (282377468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:845902d12130a7415ac2fe71b2f68178080f55012fca6db8d3ad81d97943ffca`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 09:49:13 GMT
ADD file:c3146035282b35fe27cce084f779cbb3b1bd27f8623702e7ac3ace0b2c557c08 in / 
# Wed, 23 Jan 2019 09:49:14 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:25:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:25:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 10:26:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:29:07 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:acfbacb976032d6478a3cbae68f099dd228cd965704acf935125f5c46c75addd`  
		Last Modified: Wed, 23 Jan 2019 09:58:28 GMT  
		Size: 47.8 MB (47814683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3643fb2667a20e5204038b85ad3e68c882d1cf1ef161a1c4637fe1fd9a8591f2`  
		Last Modified: Wed, 23 Jan 2019 10:45:23 GMT  
		Size: 7.4 MB (7369419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0efdd320d26739e1ab91d52be9711beadf721e92efdb7ec257a07b626be16be7`  
		Last Modified: Wed, 23 Jan 2019 10:45:23 GMT  
		Size: 9.7 MB (9659258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e7fba7c46061ab789c0762096ecddeeb2f0e109d86d3dd5a0ad513510e81671`  
		Last Modified: Wed, 23 Jan 2019 10:45:47 GMT  
		Size: 49.5 MB (49510872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acb886ed172eeea54802e56596923814b78a679977e3250408886b31eea51942`  
		Last Modified: Wed, 23 Jan 2019 10:46:42 GMT  
		Size: 168.0 MB (168023236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:bd4250d590c3977c2daafdd06d4e6b401ab0f37c3da123cbfb65384ea41bdd96
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.2 MB (270215310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:202c7ed3c232484daccac4ede921b6a10200ef4478ed9b8b5dadf33b00111a4f`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 12:58:26 GMT
ADD file:6e26d67c6d5e56d70d3182b96e702cab7a5b508464c306070415c34873ad6fb8 in / 
# Wed, 23 Jan 2019 12:58:27 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:22:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:22:35 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 13:23:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:25:59 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:113a2a0ca0c4438d49ad9ab131ca8f711a05653cc8206b28f4379d57a2879d06`  
		Last Modified: Wed, 23 Jan 2019 13:08:43 GMT  
		Size: 45.6 MB (45604050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66d0d431c0377a44575996c8454039d1a447d9841046dc65c71d2a24ec10b06e`  
		Last Modified: Wed, 23 Jan 2019 13:59:16 GMT  
		Size: 7.1 MB (7098922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cabbe9adfa2fec73f837466325769904931a6dd46161b24c230161889a47dc08`  
		Last Modified: Wed, 23 Jan 2019 13:59:16 GMT  
		Size: 9.3 MB (9316203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:300a7e435bccd9ecdd6895dda15b6000012b6f518b26f0229103cbd950481bf2`  
		Last Modified: Wed, 23 Jan 2019 13:59:38 GMT  
		Size: 47.3 MB (47297046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e991333d427e7db5f3ac8a2d12d91064322fcb0b5f4a9ae0b98292a255fa5522`  
		Last Modified: Wed, 23 Jan 2019 14:00:29 GMT  
		Size: 160.9 MB (160899089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:bdc510f1b3a3907dfe79bcb396e70e257a00840c56e4dc69d3a3c25eebeecc70
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **300.5 MB (300547093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2137e83a20d83e6d455be2bf183757c7eb2acc5651418ad27f1d0ebdb465265d`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 09:59:31 GMT
ADD file:c05bdf46fa7bf19d32c7d5624914903b6c60a42f2534010f4a2026391a6acf7a in / 
# Wed, 23 Jan 2019 09:59:33 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 09:49:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 09:50:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 09:52:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 09:59:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:fa2a7548f74d568c78ca01c20326894734b4f42abdd478e63665af53f5ba29cc`  
		Last Modified: Wed, 23 Jan 2019 10:08:57 GMT  
		Size: 48.8 MB (48847278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7b3242b1da590d45341490e43d4e2f5c38a944c584fe9b1d959ae30ebe63619`  
		Last Modified: Wed, 06 Feb 2019 11:04:21 GMT  
		Size: 7.6 MB (7630105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7305898c111048ddba68d58a13f8c62a2cd0310740fbfcf8f1ffd6fdbe58eb8c`  
		Last Modified: Wed, 06 Feb 2019 11:04:20 GMT  
		Size: 10.0 MB (9953831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1f2608d565d478d5d133361e8289e223d15b3b0d2b9cb0938af5f2609068ff`  
		Last Modified: Wed, 06 Feb 2019 11:05:06 GMT  
		Size: 54.2 MB (54242723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aa2542c278787e71a1df66a478108266716f299295091896c86d7ad4dfb1f4d`  
		Last Modified: Wed, 06 Feb 2019 11:07:51 GMT  
		Size: 179.9 MB (179873156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster` - linux; 386

```console
$ docker pull buildpack-deps@sha256:d1f9ea668b1c34745cf471c555b3e9bfafa54f606ae0171747b46948ce94a1b5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.9 MB (319866504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecbec78e54601482d534918ef48b9bdfcb23d075002655d9ab0222a347c3f686`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 11:58:07 GMT
ADD file:032ae36fc70b5e896838c38d33968573979a147ac7aeb7bad89a2a03a1e2ce6d in / 
# Wed, 06 Feb 2019 11:58:07 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 01:21:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:22:01 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Feb 2019 01:22:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:25:00 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:31428505a106aac9ed272a273932a2e2470eddd3ab51e27001cd15df87d8785c`  
		Last Modified: Wed, 06 Feb 2019 12:03:46 GMT  
		Size: 50.9 MB (50914560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8e546259cf7294fafe876629da13ebfd2a9e00da5753c2e2433fa1b9cf410b3`  
		Last Modified: Thu, 07 Feb 2019 01:56:38 GMT  
		Size: 7.9 MB (7924159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65700808c80368a80cea344ecdb5c0807bf86820adcc744d8f0f7d46311cbd7a`  
		Last Modified: Thu, 07 Feb 2019 01:56:40 GMT  
		Size: 10.3 MB (10307785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f965c67877c936a90d7cbcfaf33dbed0d77ccb055b4e075ef6f63cef2b7b49da`  
		Last Modified: Thu, 07 Feb 2019 01:57:03 GMT  
		Size: 55.7 MB (55673533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d88167218c9dbea4bb1bbd638ed8bf1802e285e1f6e1a9b47a64dd47771b4058`  
		Last Modified: Thu, 07 Feb 2019 01:58:05 GMT  
		Size: 195.0 MB (195046467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:e9d3e26bba88e3fac954c506e1d3d56cf73f532ca0a34bcf8e503096de02c3a1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.7 MB (331688352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa7128f10bee9d659bd8482deec2c659bf9edff7710977d5014f44eb47dac616`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 09:24:48 GMT
ADD file:7be4c855690678b0cfbd827b9e93ed43f69a5b569cf1193ed7d2ba2caad35a77 in / 
# Wed, 06 Feb 2019 09:24:53 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 18:28:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 18:29:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 18:30:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 18:37:00 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:dd2a5d8f0124ac97988443d7139fdc4d9d7c4bd1a52d143af4cce9b66ec4620d`  
		Last Modified: Wed, 06 Feb 2019 09:28:55 GMT  
		Size: 53.8 MB (53834796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12184f77440f8f6e54dbde8caa7010f2a297e0ba23e8c1bb3e2be824c461fb33`  
		Last Modified: Wed, 06 Feb 2019 19:20:35 GMT  
		Size: 8.2 MB (8206910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38db29c791048259a3a4728d47dfaf8841b82b88e3ff8fb9c4f1605bffce1bc8`  
		Last Modified: Wed, 06 Feb 2019 19:20:35 GMT  
		Size: 10.7 MB (10703219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:642cd9d9c66f41630a046a16ffc841fd6b52cfd65496bfa776c881609dcef314`  
		Last Modified: Wed, 06 Feb 2019 19:21:09 GMT  
		Size: 59.7 MB (59702664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91f31512479c15621ff8d892c2a4dfc018d3a71f7c92551e7c0cc1fb4987d881`  
		Last Modified: Wed, 06 Feb 2019 19:22:15 GMT  
		Size: 199.2 MB (199240763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:a7147406e6140be1766ba428e7c9f25545310931a1b156dfa91db26932b552c3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.7 MB (292720907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d83ade0d72ededda8e80c32dd3966e7cea59fe1588f7e1738681d2942be615d1`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 12:41:58 GMT
ADD file:e2a3cb384d018539bcbc5c806ff9335dfd5f0350d306c3ebc34b3b80372e0e90 in / 
# Wed, 06 Feb 2019 12:41:58 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 15:21:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 15:21:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 15:21:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 15:23:10 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:2c08b1e350860cec8128ec4b0b314d72bfdc79c79a17e6f55aa0c9cc1ec4abb6`  
		Last Modified: Wed, 06 Feb 2019 12:45:15 GMT  
		Size: 48.7 MB (48722687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e42845847bfc11dbcc1afc9b8532e40621f4ecd46e80ccedd68d4c5d990ed8c`  
		Last Modified: Wed, 06 Feb 2019 15:30:49 GMT  
		Size: 7.3 MB (7342466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea60ade3a6734a2fdb20b80850c0c96661cb38d25c56c23ad746a426f795b29`  
		Last Modified: Wed, 06 Feb 2019 15:30:49 GMT  
		Size: 9.9 MB (9854550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f23add4d7f5e52883020cc6b30cfd18850b2e2f823fdb9b7b33f20cad00513cb`  
		Last Modified: Wed, 06 Feb 2019 15:31:09 GMT  
		Size: 53.5 MB (53469476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11cc4767e696cbcc9a4a66d06cbfca1b67424c4d91ea71923650ee4bb8d68127`  
		Last Modified: Wed, 06 Feb 2019 15:31:39 GMT  
		Size: 173.3 MB (173331728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
