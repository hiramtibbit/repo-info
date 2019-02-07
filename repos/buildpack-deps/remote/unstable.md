## `buildpack-deps:unstable`

```console
$ docker pull buildpack-deps@sha256:16e1af325f3394ecbaebaf5d6987150622cdb669f79c6d70ad4016f97800198e
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

### `buildpack-deps:unstable` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:1abec8a732539fb74bb469c952b68d7a5ea84e05cb0d0df3ffc5a2fa1c8d5cc3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **312.4 MB (312412595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfa65fe4e614e8947c600459483d53943e9e04159c9cfcf4f742ea4e75569111`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 03:28:59 GMT
ADD file:9c6a8e35fb0a355b15c531885f92b45f2a8f4a102a8fdb351280826b1dc8a455 in / 
# Wed, 06 Feb 2019 03:28:59 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 05:49:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:49:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 05:49:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:50:34 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7c225361587bd702b61e38248f9c9566e1150260cbc201bb504e523904acde83`  
		Last Modified: Wed, 06 Feb 2019 03:34:53 GMT  
		Size: 50.1 MB (50076371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:884747bf56324a09bf5275ace52fa6d996febb1385364fb72eda5c1c0fa391f5`  
		Last Modified: Wed, 06 Feb 2019 06:00:55 GMT  
		Size: 7.8 MB (7766219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14250846160cad4f9b13fbefb0eb5dd31cab2d6cfa17dca1582204cb82a18903`  
		Last Modified: Wed, 06 Feb 2019 06:00:56 GMT  
		Size: 10.0 MB (9965935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de4d616c0f9a7f23c5be9418fd016c5e0d735d807f2c64a1a9c6c619196be83c`  
		Last Modified: Wed, 06 Feb 2019 06:01:12 GMT  
		Size: 51.8 MB (51766568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ffbe3788f80160a509e6abd70295d5879af776c8872409b7bde38738952ec82`  
		Last Modified: Wed, 06 Feb 2019 06:01:51 GMT  
		Size: 192.8 MB (192837502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:unstable` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:d67a702840d5c53d6e72963f6fc9fa92571e7cf04532b0d3a932e89396e3a62c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.4 MB (280380628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d713dccc6f69a6bddcfcc6ee7ac78def3703fb2be88386a2df85ee6004bcaf3`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 09:52:49 GMT
ADD file:3cf7a3febf73a64743197e788ae0c4cbac2910591e7309af2b64c6711b5a11ab in / 
# Wed, 23 Jan 2019 09:52:50 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:35:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:36:01 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 10:36:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:38:07 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3b276ad85512834c81c9b2f95f5b5ea289977d77c9c5631f51025db927c73b71`  
		Last Modified: Wed, 23 Jan 2019 10:00:59 GMT  
		Size: 47.8 MB (47834554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:607b85f5609cee649928f4ca0cc560417fb6b08a4da3716106da703f89559c8b`  
		Last Modified: Wed, 23 Jan 2019 10:48:00 GMT  
		Size: 7.3 MB (7321619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1ddf4bb64a17fec2cdee97ac34cf930e2cd0382e11335fddbe888258225f9c1`  
		Last Modified: Wed, 23 Jan 2019 10:48:02 GMT  
		Size: 9.7 MB (9658970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a3ac1e3be8a27189d256f8ac11697c42571878a3603f5b44dabe9ac2cb2900`  
		Last Modified: Wed, 23 Jan 2019 10:48:25 GMT  
		Size: 49.5 MB (49509921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b50780eea5a103ddaf2a9f8c46f087f659d5824b22677ab0ffcec6ce17c249`  
		Last Modified: Wed, 23 Jan 2019 10:49:16 GMT  
		Size: 166.1 MB (166055564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:unstable` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:a6854eceb96c6ffd037386b9dd815d3e55ac4b12706ed90f91012bf84f2b7ea4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.3 MB (268275495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc97f1e015c57015d46fde51bf1f905086b77925c1dbc67e991f5d1629ea41c1`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 13:02:34 GMT
ADD file:547d53792a57ce6ff63351b170c574a64a1f3879da9da1d784f1bc3ce581c4d6 in / 
# Wed, 23 Jan 2019 13:02:35 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:41:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:41:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 13:41:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:43:47 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:288ce18ba4ebcc42443c496b55fcdfac3c2e3adca52487bd34a8f33e12ea6b63`  
		Last Modified: Wed, 23 Jan 2019 13:11:04 GMT  
		Size: 45.6 MB (45626061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0860558ec7ad9472c5482b842aa9a40735f76cf005fa2cc721b75037700e2c5`  
		Last Modified: Wed, 23 Jan 2019 14:04:19 GMT  
		Size: 7.1 MB (7063097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a6b22840608ef5c41847bb5d2a8b05b591b43b2de352dc5ee70c494da88be63`  
		Last Modified: Wed, 23 Jan 2019 14:04:19 GMT  
		Size: 9.3 MB (9315803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f859e62232d2a3c7ed786a4088baafab4eefdf6d69552a3cbe927d25942ed207`  
		Last Modified: Wed, 23 Jan 2019 14:04:43 GMT  
		Size: 47.3 MB (47298641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:979ccd53a961c19581a420604f0dc2f82bbd65c1ebd4800d8697347627bc35a8`  
		Last Modified: Wed, 23 Jan 2019 14:05:34 GMT  
		Size: 159.0 MB (158971893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:unstable` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:923cbf3219971a307eac95fbcf09eb214523a9af1b40e7acd9437d775f2fba61
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.0 MB (301958627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b91a07b198fe35bb595c9e6c98e697db34c60a2086b0cd575b51dfca9d18fe26`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 10:07:17 GMT
ADD file:7b42d90311ba4721000b061ce5688b7617c00f357746b95a1001654a8305cf2e in / 
# Wed, 06 Feb 2019 10:07:20 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 10:26:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 10:27:01 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 10:28:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 10:36:56 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:f20511bfb9032422f9398607efa0d22ecc98b39ed90a1905a9bdf23e4a9fac4d`  
		Last Modified: Wed, 06 Feb 2019 10:13:03 GMT  
		Size: 48.8 MB (48820697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0e7af22c8a8d91244e5d3dc8314423b1f51c571e552b3ca769fc46d670e1496`  
		Last Modified: Wed, 06 Feb 2019 11:17:02 GMT  
		Size: 7.6 MB (7630486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:208e8fded67b605a465c7d15c4bd287883a27bb75b849b6671f4fd6e7f0b9bfc`  
		Last Modified: Wed, 06 Feb 2019 11:17:02 GMT  
		Size: 10.0 MB (9953764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39dfd1320b7ef0a90c0a6c2798a9b874a1938a5eaf852d97121bb14a8f7de33c`  
		Last Modified: Wed, 06 Feb 2019 11:17:49 GMT  
		Size: 52.1 MB (52095396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74228b30c5cae05ebe77e5b28746804d12c3ea381445f266ca81097b3700922b`  
		Last Modified: Wed, 06 Feb 2019 11:20:02 GMT  
		Size: 183.5 MB (183458284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:unstable` - linux; 386

```console
$ docker pull buildpack-deps@sha256:0ad3eb9953b96fa2876e3d3cc32b83e1a6552500f5607f7005425dbd98e2f554
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.4 MB (321425101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1648453d320aee8c798826cadf5e45a9dfe9467649a434e9cdf49285b58b073`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 12:00:13 GMT
ADD file:ce7c45fff0d74bfe603a7138b818751de070b078ca0721b047e8567c30f61cf0 in / 
# Wed, 06 Feb 2019 12:00:13 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 01:46:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:46:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Feb 2019 01:47:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:48:55 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7f5d83ecefd7c06c9ad1f3c8e31a16ca0808dd67c4c337ffd67e9a10a97d7675`  
		Last Modified: Wed, 06 Feb 2019 12:06:14 GMT  
		Size: 50.8 MB (50829933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8bcf4f56465b45cfe5620cbd28fc67621aec9ed3ef1ff3a6e4e9a9e3b6b18cc`  
		Last Modified: Thu, 07 Feb 2019 02:01:48 GMT  
		Size: 7.9 MB (7924724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb1e77e887de2c62af9e946eeb3bdc7df911c334d8daa540671d5a51ab4ed6f5`  
		Last Modified: Thu, 07 Feb 2019 02:01:48 GMT  
		Size: 10.3 MB (10307727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e205e8f133e3f2038b72fd52f79e44f82aa495a5bbdf20f14f65a833b2a31d48`  
		Last Modified: Thu, 07 Feb 2019 02:02:08 GMT  
		Size: 53.6 MB (53592354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:623f7bb8f9b38b93a9572c5e57ad332cfb2496effcb3389f5b7307f0d8837d6c`  
		Last Modified: Thu, 07 Feb 2019 02:02:56 GMT  
		Size: 198.8 MB (198770363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:unstable` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:72ca723ee8bfdc10d39a5174e64d5a5dd5ee6c9bae25481dd12dba01185b97cb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.4 MB (334442951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e66a9d72aed6473b9db410234b873cdde96e7cff284380bcf211707cb407f7bb`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 09:25:27 GMT
ADD file:a2cf5ae39385f7b927131248a493d2e950537da2b4a33c9a1623275b4c1f37cb in / 
# Wed, 06 Feb 2019 09:25:29 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 18:58:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 18:58:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 19:00:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 19:07:22 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7ca445fe7afd63ed9c58b670083df50dbc0ebbb9cb6206ca9bbdafb0f88349e3`  
		Last Modified: Wed, 06 Feb 2019 09:29:35 GMT  
		Size: 53.8 MB (53768634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf0296a85176e72ceec71f4feb9fdf9312f2c705cf9b52811fbc848609e8f04e`  
		Last Modified: Wed, 06 Feb 2019 19:26:05 GMT  
		Size: 8.2 MB (8206996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93cbc85de1461ac3cf707a9fdbb5ecc41c5b5483b6b97cac621fb2fc71d6dd1c`  
		Last Modified: Wed, 06 Feb 2019 19:26:05 GMT  
		Size: 10.7 MB (10703067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:926f4427aa3b5fb290c166744852d2effa6a484370bc96ce67fbec077e412571`  
		Last Modified: Wed, 06 Feb 2019 19:26:43 GMT  
		Size: 57.6 MB (57596968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:230a600479f8d0bda331e02db6c3e1ed415e9608b1fcc725baa4dd5c0b6b6b17`  
		Last Modified: Wed, 06 Feb 2019 19:28:11 GMT  
		Size: 204.2 MB (204167286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:unstable` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:6225d1f1ff9c6deba06568ec63dbd822cb392108c26edd4ebe7081b85ec2037d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.4 MB (294358734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9caf31adb7ac5a2bb04be4580cf10f950a85cc39e155b917b34aa5cf6cd4fdd1`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 12:42:20 GMT
ADD file:a5ee680799f2f7c5bc6b342acbeccd9b53fcb4c9ead7369f835dd85be5ca3fa7 in / 
# Wed, 06 Feb 2019 12:42:21 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 15:26:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 15:26:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 15:26:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 15:27:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:fa45b08f2a9797c6d1f48741b3f2096e45b319e1a52f713f1eac8b8e472e3521`  
		Last Modified: Wed, 06 Feb 2019 12:45:51 GMT  
		Size: 48.6 MB (48643552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a83968d34fc41fa766d950210772d5f50c78a26b8549f3feb79c444ad6e78e44`  
		Last Modified: Wed, 06 Feb 2019 15:33:25 GMT  
		Size: 7.3 MB (7342529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca21562c0cbec64a6c6ea7bd50fd01a3cfff5ca91c8ffe3f6d9469380792b856`  
		Last Modified: Wed, 06 Feb 2019 15:33:25 GMT  
		Size: 9.9 MB (9854411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5022d8c606419ad4ccc73a028c144bf5597dda5f7abb151fd5a4dcdb2571e6a0`  
		Last Modified: Wed, 06 Feb 2019 15:33:39 GMT  
		Size: 51.5 MB (51529172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20c74d21605595bb42120ab25462c443691b90828e1831dbb16e88f89f7058bd`  
		Last Modified: Wed, 06 Feb 2019 15:34:14 GMT  
		Size: 177.0 MB (176989070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
