## `buildpack-deps:sid`

```console
$ docker pull buildpack-deps@sha256:9f0db8b6457c48424a40fbcd548b0e3c1fed2abcb39a0cf78e2b0215c666833e
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

### `buildpack-deps:sid` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:bb7b511348bda1d674e795c800e9e2613e9176c440d3d225478db424ce01586f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **298.3 MB (298347389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07317caa8d7c10ef23d90df516f72da7927f842a3054609c55fc934545cca055`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Oct 2018 23:22:53 GMT
ADD file:12e34cd91f24d3d0c4716498cdd87838722af59e568ba8c18c457c367a53a315 in / 
# Mon, 15 Oct 2018 23:22:53 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 00:58:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 00:58:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 00:59:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:00:21 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:38517b3035164966f7e2b960f3e87e1f9178537d06992e6045fbd375b84cddfa`  
		Last Modified: Mon, 15 Oct 2018 23:31:59 GMT  
		Size: 49.1 MB (49107897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d518e0b86e7ef6483709500f0dc9be4abfd5336b2516ddb335a46601ebabbd3f`  
		Last Modified: Tue, 16 Oct 2018 01:10:56 GMT  
		Size: 7.4 MB (7366348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75323769698f687431e704e4c1f298f8e803cf5a000e24ccb08f94cbf4a7fda8`  
		Last Modified: Tue, 16 Oct 2018 01:10:55 GMT  
		Size: 9.8 MB (9779476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56058d5d210a80427df6a7f06ac6759e9f5b4b1b064101e843857b0cd4774fc4`  
		Last Modified: Tue, 16 Oct 2018 01:11:36 GMT  
		Size: 51.5 MB (51540357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2efaad4e511ba234c3600e9c90ba82e59845152c16bef86446e188cbc9444ac5`  
		Last Modified: Tue, 16 Oct 2018 01:12:50 GMT  
		Size: 180.6 MB (180553311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:66c4fd74802bcf3ca774bfb6176efa82598a64403e6c2f1ccfeb4efeeb038bd5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.8 MB (279774125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af1444a2eccd9b6e527bfffaa5b91a3cb87b088619c0925a7fc8f4ebf1ff2fd0`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 08:53:12 GMT
ADD file:d204a837dc7c47c406943c2337da21ccd177ea67f346558d9dd6ba518eb5e445 in / 
# Tue, 16 Oct 2018 08:53:15 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 09:57:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:57:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 09:57:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:59:32 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3a2a7cefe87adee1328d1887984c79e8eb71aaaefc97a339601a30fd31866a41`  
		Last Modified: Tue, 16 Oct 2018 09:02:27 GMT  
		Size: 46.9 MB (46860503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60d7aa278f4362b2edbbce821b9f1a65a7261251e406d795abe1de7406022f6e`  
		Last Modified: Tue, 16 Oct 2018 10:07:58 GMT  
		Size: 6.9 MB (6928930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8719d70374582583b66be882a7cbb9628ceb5404972849699d4f2d8ff4b9b1a`  
		Last Modified: Tue, 16 Oct 2018 10:07:58 GMT  
		Size: 9.5 MB (9481567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36a9c33ee17a37fd7e022b0be2efdf422af4924ae617c59a153d82f688846f3b`  
		Last Modified: Tue, 16 Oct 2018 10:08:26 GMT  
		Size: 48.9 MB (48862779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f2c20ed8a98939f0c890e47e2fc910e84a629eb3f0121ffd1e31182587c90b`  
		Last Modified: Tue, 16 Oct 2018 10:09:22 GMT  
		Size: 167.6 MB (167640346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:4422bed2850a730c9a0b6325e0e58e775c3b99c693e4fa14677a8319082a1106
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.9 MB (275895111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2277c9aa7f5e81b454e0f82be02ae18c49104a643fbfb99d53968dee2794333c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 12:02:03 GMT
ADD file:6bce3a6eaae154a74bd434bc6087c35774f3ca30b31179bd9d3a8ccc883e6356 in / 
# Wed, 05 Sep 2018 12:02:08 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:41:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:41:56 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 12:42:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:43:57 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:41ac34bbb663ff9b66612cbe07ba88955dbe37f15f0732d7438ed9d75ffef0c9`  
		Last Modified: Wed, 05 Sep 2018 12:11:20 GMT  
		Size: 44.7 MB (44660481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a4a6a41cc4abd0bf494829b7c229c8b0332e0fa15e4070e51e196a72e0e9f8f`  
		Last Modified: Wed, 05 Sep 2018 12:55:10 GMT  
		Size: 6.7 MB (6684465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff85737d1afda4a28ad503d9827b69fbb9a8cb0c387134d95a9099dea0d22d0e`  
		Last Modified: Wed, 05 Sep 2018 12:55:10 GMT  
		Size: 8.8 MB (8752299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67f942d01e599eb3af73eb31be8169a4ea25e5805aad28a71fdb278bc7d3c1ac`  
		Last Modified: Wed, 05 Sep 2018 12:55:38 GMT  
		Size: 46.6 MB (46571890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39d6844a0bca391b7f609b0d19a9cf04ac540b4d9d8b8ed7cef1e445af10ad53`  
		Last Modified: Wed, 05 Sep 2018 12:56:33 GMT  
		Size: 169.2 MB (169225976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:0076f1da8555b929f77b10c34bf95933ccc09770a77f39c53a3980d99772bcb4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **291.5 MB (291480423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89d0517fc87212065d9e40f76eb4764022449f3226c77905cdbcdd7652e47d76`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 08:44:44 GMT
ADD file:cac51be1621603e67cd0c6a08ff297ca705beef482ba784194fe06790776dda8 in / 
# Wed, 05 Sep 2018 08:44:45 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 09:48:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:48:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 09:51:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:01:01 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ff5ead7611ad86204643cd46d308599be45fefaca7a358aa65ccab791156f31f`  
		Last Modified: Wed, 05 Sep 2018 09:02:06 GMT  
		Size: 47.2 MB (47246205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0b9b5a56863c55df9af02f6c80c86602c59da911f5cae6082cd55967a1e138c`  
		Last Modified: Wed, 05 Sep 2018 10:21:41 GMT  
		Size: 7.1 MB (7127800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6977204ca040a8a731305a3c0e13830646c7649eec3fec0e6cbed16c6de0eb0`  
		Last Modified: Wed, 05 Sep 2018 10:21:41 GMT  
		Size: 9.2 MB (9238554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40a628be1a676dbdde587710d61dd019ae5dacbc3a3d981e7411e4431e83974c`  
		Last Modified: Wed, 05 Sep 2018 10:22:52 GMT  
		Size: 51.3 MB (51290248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa22bb60c78350f1bb315d1f67a1cfcd322076c1399c0c32c72d4d8eade13118`  
		Last Modified: Wed, 05 Sep 2018 10:24:58 GMT  
		Size: 176.6 MB (176577616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid` - linux; 386

```console
$ docker pull buildpack-deps@sha256:25980ff27af6581a09357c43944ca36dd0e9e40230d913f142deb13a6b217cbf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.4 MB (313426619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:080527305aaf806b0760e2ba5e1a45a41d4c55022f74505a7e351202216cb53b`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 10:42:05 GMT
ADD file:8de67e0fc0d437844f80c43c2040a020c9b920f19c3af0645d06ad1f79099fd9 in / 
# Wed, 05 Sep 2018 10:42:06 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:36:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:36:23 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 11:37:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:39:09 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c5ab6b8677b80e3d03b9cf7f6d60c5ea5e55c3ef5201228d2a1e02348632bc3b`  
		Last Modified: Wed, 05 Sep 2018 10:50:26 GMT  
		Size: 49.8 MB (49764498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3334592e8df26ecd8135ae4d98e26ee5c2152c588781fdbcb617525eab00347d`  
		Last Modified: Wed, 05 Sep 2018 12:05:57 GMT  
		Size: 7.5 MB (7502763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a22424c58e25912b79ad47701b7d26c1644849d325d1095b43486c45357dce9e`  
		Last Modified: Wed, 05 Sep 2018 12:05:57 GMT  
		Size: 9.6 MB (9583883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:606003a3bac6354e2e80ce2f5036fbff540fbcf335b2bd782faa2a3abf25bc7d`  
		Last Modified: Wed, 05 Sep 2018 12:06:47 GMT  
		Size: 52.8 MB (52818485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:466454e819c9bb33fa5f4969efe8619783044a49c1f74bad1dccb1340fae4c72`  
		Last Modified: Wed, 05 Sep 2018 12:08:41 GMT  
		Size: 193.8 MB (193756990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:5b199b7d1eb872dd7113aab436a3d3ecb6f3e4d235f5fc00429430983d550220
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **314.1 MB (314136105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c7360fd7ba48d0fa0ac88470c1e414998363412e29f1020a9c479e4ee913f84`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 08:19:05 GMT
ADD file:d9b7fdbd5284d601c2fa0ac9ef56d94501675e8bb1272b818f990813457dad97 in / 
# Tue, 16 Oct 2018 08:19:08 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 10:32:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 10:33:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 10:34:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 10:46:40 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:266ba3ea23b4937c573be52c8dbda3ecd61615aa8a826c0f19bd1519b482bc99`  
		Last Modified: Tue, 16 Oct 2018 08:27:28 GMT  
		Size: 52.1 MB (52120737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:266e6f3713eef6a8650ec4bf4167b39cb239334429d5c2733fa67322152e2f75`  
		Last Modified: Tue, 16 Oct 2018 11:03:38 GMT  
		Size: 7.8 MB (7767281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53c1406edfbf4000946a084c99d2dcae8c42613c41d2b8837c867e2f41f42551`  
		Last Modified: Tue, 16 Oct 2018 11:03:38 GMT  
		Size: 10.5 MB (10523368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb6649af4f26043502717dc3f793eef48c195aecea7c6b420c3bdd490bda630`  
		Last Modified: Tue, 16 Oct 2018 11:04:20 GMT  
		Size: 57.0 MB (56995714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b061702bbd4da65849171513ead0ca8900af8590ee9c543e8eb0c055778520ba`  
		Last Modified: Tue, 16 Oct 2018 11:05:46 GMT  
		Size: 186.7 MB (186729005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:e0b35a50430e10123637b1816a23eff150e8e28873c357c51b84ad81292f177d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.5 MB (287490947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:626be9352f8f35bc83c72b4050ed8421e69483d9c20b17ab3700fb41eee0aacc`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 11:42:29 GMT
ADD file:832b68a7f8033560aa3536d9163f28d197490633c05d49240dd2bed266d9504e in / 
# Wed, 05 Sep 2018 11:42:30 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:42:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:42:18 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 12:42:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:43:52 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b9886f96c1f9394ba76a75262b09bb6ad6b8100a8d94cf87089d43cb2068efe3`  
		Last Modified: Wed, 05 Sep 2018 11:47:17 GMT  
		Size: 47.7 MB (47670424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:203b1cc1f2b55f95ed71809ae9ea5d67d78156f617f3321574955a3bf2c43e96`  
		Last Modified: Wed, 05 Sep 2018 12:48:44 GMT  
		Size: 7.1 MB (7059600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b11d48b0ceace2a58877479a5838ea5f51cbc6bd1e0b4f5823e44e519817de19`  
		Last Modified: Wed, 05 Sep 2018 12:48:44 GMT  
		Size: 9.2 MB (9222100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:059acf3f028d654702f3596c76e3c5df197bc5c9682b500da63636d224ef5974`  
		Last Modified: Wed, 05 Sep 2018 12:49:08 GMT  
		Size: 50.7 MB (50664680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09fe1e0d4efdb13af6b9bc39f744c75a33568e1d62488fdfb3e59a2b86776a59`  
		Last Modified: Wed, 05 Sep 2018 12:49:51 GMT  
		Size: 172.9 MB (172874143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
