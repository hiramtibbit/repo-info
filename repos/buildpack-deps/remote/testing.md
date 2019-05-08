## `buildpack-deps:testing`

```console
$ docker pull buildpack-deps@sha256:f45f62d8e844dcce1328d0c0caea42c334d960752b12677aec113929b176d12c
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
$ docker pull buildpack-deps@sha256:1872430173a6d42050c5b31fe0c9fc97476ffb2f56a04552aa2cf6af3c0e2150
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **312.0 MB (311987536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f76ff3afe7e10aa86a854f410c4d23a40475f12125d5745766930f22d5d16af`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 00:28:53 GMT
ADD file:1206af08b0982cf51772ede1bb826b30be8426cadc52014207fcddd1dce1a006 in / 
# Wed, 08 May 2019 00:28:54 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:27:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:27:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 01:27:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:29:29 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:78496f898f92b99fe2e84608b2142ab03f43c7f16be3ef2e394b7c61b0ae4f7f`  
		Last Modified: Wed, 08 May 2019 00:35:29 GMT  
		Size: 50.3 MB (50281451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:371585a4d994e5e2a109f054c6b4f262cebc609dc5b8dfae60d3f469c0dbf9bc`  
		Last Modified: Wed, 08 May 2019 01:42:50 GMT  
		Size: 7.8 MB (7791309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40646915b45440e6e81e9db964eaf8634250379b3dc4a4ad6f89ebbd437af4dd`  
		Last Modified: Wed, 08 May 2019 01:42:50 GMT  
		Size: 10.0 MB (9977692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f367f315d31e672cc89f8ce78e8220d1eba1bc429b350d84a537592677676486`  
		Last Modified: Wed, 08 May 2019 01:43:07 GMT  
		Size: 51.8 MB (51767857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:789d1b21040082c4c1d60ab23df9811b089a1dcd1a11459a4175ebcca7c6dfd9`  
		Last Modified: Wed, 08 May 2019 01:43:49 GMT  
		Size: 192.2 MB (192169227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:d623c95999bea67f25d52075a27337b7718d551ef8b6a78d9a4fd8e2de3785ba
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.7 MB (285656921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:132b017a7cd4f0281eef51aff7a8e566408744f738de280b4b0f79dd9373f413`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 08:49:07 GMT
ADD file:32322c35d043b12b15eabfa71c7e1f7ee0a9aa0da843563ae0071b2734f64e02 in / 
# Wed, 08 May 2019 08:49:08 GMT
CMD ["bash"]
# Wed, 08 May 2019 09:48:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 09:48:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 09:49:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 09:51:47 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ec2a6987ecd7db01af5a6962ce511e10d30c11c3ec6500e3c2b48150bb874308`  
		Last Modified: Wed, 08 May 2019 08:56:06 GMT  
		Size: 48.0 MB (47991337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57e09a6c0b2c2732cbc7a0798a062fb05a5da94cededd18b2c1ee906b90fb0a0`  
		Last Modified: Wed, 08 May 2019 10:05:22 GMT  
		Size: 7.3 MB (7340262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:693b1cab3ce5f22f4b85020bf480b5b15266f54ace8a928cc08ab0e3e56c8c7b`  
		Last Modified: Wed, 08 May 2019 10:05:23 GMT  
		Size: 9.7 MB (9672420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d2c4fd6787a7877877295e37cb51d56e3e499a38db9c74bb62e8fe830090ae6`  
		Last Modified: Wed, 08 May 2019 10:05:46 GMT  
		Size: 49.5 MB (49508270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e6418cfbd93ede756d57be27ccf3818a39a235ea28a533be8379d1290806f2d`  
		Last Modified: Wed, 08 May 2019 10:06:40 GMT  
		Size: 171.1 MB (171144632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:18fc66c02512535615141417ee4365153b78b0292613b7e5c60ee726c886de51
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.8 MB (279772148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cbae2331f508af0b40152784a7559a5bb294746a4ebdc03e48337518015f834`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 12:03:01 GMT
ADD file:9ea8b1eaf7df65831f45d26aeac613288e975bb3de0402f2fb67620fa4073ade in / 
# Wed, 27 Mar 2019 12:03:03 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:58:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:58:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 12:59:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 13:02:21 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:029cf51a83d447de52cef0ffab80221ba6a4f49c0a5dd803f9a80b58ab2d2b72`  
		Last Modified: Wed, 27 Mar 2019 12:10:17 GMT  
		Size: 45.7 MB (45709457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:468280e41ec0f2b8a9cfda166f27dc50bbc402a26d099d9910c3ab7cf75d761a`  
		Last Modified: Wed, 27 Mar 2019 13:17:45 GMT  
		Size: 7.1 MB (7083063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58e2b2ba3f981d88992647688be409dbbaf46bf46f3960d2f67c48c32d086001`  
		Last Modified: Wed, 27 Mar 2019 13:17:37 GMT  
		Size: 9.3 MB (9324320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4126e5e1857f84500b1a5716ca66a61192e6cd92d30d96dd494bea19b4151092`  
		Last Modified: Wed, 27 Mar 2019 13:18:06 GMT  
		Size: 49.3 MB (49309197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:037779cd272e5e4742bbbdb5500c75ea274bfa35569d558f61a5e5507b755a4b`  
		Last Modified: Wed, 27 Mar 2019 13:18:59 GMT  
		Size: 168.3 MB (168346111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:5d1d47caec2ec63e9a34575c1ee139dbf997e564bde8de34cb9adcc0a8141cd7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.5 MB (302475894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb3df88666265d7fc48149926dbb6a7437b36b030f7ecbf0c606ab7d66eb6551`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 08:45:01 GMT
ADD file:4ac330b79160164d8baf8c9927dd9364c8efae6551ddaf507dbf46315abdb184 in / 
# Wed, 08 May 2019 08:45:02 GMT
CMD ["bash"]
# Wed, 08 May 2019 11:24:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 11:25:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 11:28:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 11:37:49 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:f6fb23aad628a3be4a2fe2611a079b21a896b677f5e511e4beb479ebdceae480`  
		Last Modified: Wed, 08 May 2019 08:52:20 GMT  
		Size: 49.1 MB (49073023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:436e1a6ed939345c0dbaab47321bf6369971e85f497ab234c7eb5c88d34f6008`  
		Last Modified: Wed, 08 May 2019 12:03:24 GMT  
		Size: 7.7 MB (7665993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac3fd216a2c6eb54be003e3b8362a53fe01a3a6bc89d48dd4ec3df088fc87e79`  
		Last Modified: Wed, 08 May 2019 12:03:24 GMT  
		Size: 10.0 MB (9967042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91d39c87d3d92b3a0c74963daa339c8bcbebf83fa90b9b958cdedbe3e3ce7fa5`  
		Last Modified: Wed, 08 May 2019 12:03:53 GMT  
		Size: 52.1 MB (52104771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b738500fb0bea2b9d5053adf082897db4bbbc8d34c8e9fcf6147f8b2cb076c6`  
		Last Modified: Wed, 08 May 2019 12:05:00 GMT  
		Size: 183.7 MB (183665065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing` - linux; 386

```console
$ docker pull buildpack-deps@sha256:586af975f71944607fe6e71f915028c133783d6c22a9b356d94278a83c72fb2c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **323.6 MB (323556716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9025cbf475973189d0ac40230e7ab701ab76f8141e5ffa54b794aeea886ad446`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 10:39:29 GMT
ADD file:e559a18019b869d561ce9206554ab0f0d70d2f0b5524ea6b6e98e94bf1ac2c09 in / 
# Wed, 27 Mar 2019 10:39:30 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 13:36:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 13:39:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 13:40:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 13:42:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a19caaf6f7524a9023673e7fe943eb4aeb990ad49b202bb21ebd76af7b2d6013`  
		Last Modified: Wed, 27 Mar 2019 10:46:01 GMT  
		Size: 51.0 MB (50992741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25c29554f6331ff982085dae0958e8d8b9f765f1a1d8321674db501de13de268`  
		Last Modified: Wed, 27 Mar 2019 14:06:43 GMT  
		Size: 7.9 MB (7948658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab48bc7a278fad7787facadc0eb1a55fe885b9cfe370f688312cf9c8421afef6`  
		Last Modified: Wed, 27 Mar 2019 14:06:43 GMT  
		Size: 10.3 MB (10317991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d47f2794fe4db08a46d5a6c5e4840ff62d6e1aeeeee7c181bde47c53f614513b`  
		Last Modified: Wed, 27 Mar 2019 14:07:01 GMT  
		Size: 55.7 MB (55661322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e75c822651c98f752c5c123198dd1d126057fb20ae2e5dfd76740c02d6d99a0`  
		Last Modified: Wed, 27 Mar 2019 14:07:45 GMT  
		Size: 198.6 MB (198636004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:c826484c621ee3a9aa906a885b31bbe98d08ae76b6ef89309d33bcab9a5476a1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **333.3 MB (333319386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b600db324ffcc6b9f4be2b343abd04c103a805c11dd54e84756dca65aedfca05`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 08:37:11 GMT
ADD file:860c3e54b1361dc72471f0b2d2a052c0c4a02df3bd46462099169ec6ad3057a3 in / 
# Wed, 08 May 2019 08:37:14 GMT
CMD ["bash"]
# Wed, 08 May 2019 11:42:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 11:42:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 11:44:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 11:51:58 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bcb4d3ba89e937d3c22cda2d7f5c8305b83bd698e18972597f0f1db8b53d11fd`  
		Last Modified: Wed, 08 May 2019 09:22:07 GMT  
		Size: 54.0 MB (54033662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f371eaf7c8481ba01d5dfa0535f00c0d88fa7e5d05188180aaefb895a35cdd2a`  
		Last Modified: Wed, 08 May 2019 12:18:29 GMT  
		Size: 8.2 MB (8238049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0e3c4da4391c552eea2eea69767b126eb5fb636a5b520d88f8a40f30b20fc29`  
		Last Modified: Wed, 08 May 2019 12:18:29 GMT  
		Size: 10.7 MB (10718272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5418d1aa27f4dd01ed31db146ba3995c573deb579a5f71b57ce8e19cb79ba79`  
		Last Modified: Wed, 08 May 2019 12:19:20 GMT  
		Size: 57.4 MB (57367902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d50da2fd2e7fe1ec8f0ec7aeb3b5b6ccef9ffb8a468a3b902b40c9c52f5fe945`  
		Last Modified: Wed, 08 May 2019 12:21:11 GMT  
		Size: 203.0 MB (202961501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:3ddf018bd95cd6aa9d6dc00fe5a91332d7ab61e23b60794a9b9a8e0860992534
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.2 MB (296220307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc9487605d22eb3fbb6649d56672c49fa08c186b6bb8a7ee2f91a0af3d77b785`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 11:42:12 GMT
ADD file:b91f4c9de51b195c8d4d540393591ec9025b5fafaab3be78636d24216fe7b04e in / 
# Wed, 27 Mar 2019 11:42:13 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:33:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:34:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 12:34:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:36:35 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c26d5718bd8ed95e77d7925c874534f3358d019637f944f35a70fdc0aeed7217`  
		Last Modified: Wed, 27 Mar 2019 11:45:22 GMT  
		Size: 48.8 MB (48798574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48fb7c4fa0951f9c55f07e80dd1012a24f7d9ad9816ef34f42c8afa5119da878`  
		Last Modified: Wed, 27 Mar 2019 12:51:44 GMT  
		Size: 7.4 MB (7360192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42e9703f04fe30fb4e0aff17d80fab29ebedc97a22be2a976cf13ae585c5c185`  
		Last Modified: Wed, 27 Mar 2019 12:51:42 GMT  
		Size: 9.9 MB (9860660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5516d720011e1bd08a080478dc0c00169a82740ed00a1c922dadf4e118bb5aa`  
		Last Modified: Wed, 27 Mar 2019 12:52:02 GMT  
		Size: 53.5 MB (53477267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8ec2e7f26a45dafeee42c088a9f4a3fb9c3c8d937cdb0c848f6d0c37a3d4b58`  
		Last Modified: Wed, 27 Mar 2019 12:52:39 GMT  
		Size: 176.7 MB (176723614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
