## `buildpack-deps:wheezy`

```console
$ docker pull buildpack-deps@sha256:7263e1ef542cb1162f79c7ab861839311f56eadc01e2b024db4a12415340d3b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `buildpack-deps:wheezy` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:624ba7dba349ebc9828fcbce35543427d1a61e6af399f97f0d0caac28b18cb10
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.5 MB (182541392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d49eddf8ac5ec4a44f50c9a4427570f3b0128875d872fd400b30aaba7711f41`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 04 Sep 2018 21:22:11 GMT
ADD file:1d0d47b9e887adff2328eeb380e2cc47982a572942a29d7ed26bcf6291219302 in / 
# Tue, 04 Sep 2018 21:22:11 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:40:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:40:37 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 04 Sep 2018 22:41:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:42:22 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:703d6f3fb41c45d33d1e6358aba66a774c9ebc11a21bc5dfef74f20d043d3933`  
		Last Modified: Tue, 04 Sep 2018 21:26:45 GMT  
		Size: 39.3 MB (39339633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdfedc5d9f30acf2accab4930da435ec172c85c8a8324da5f9f1b71ebdcb8a8d`  
		Last Modified: Tue, 04 Sep 2018 22:54:56 GMT  
		Size: 5.6 MB (5630923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4379296bf31eb4243bd32003d97433c0d9ba99babdaed037ad32cf8b4e330d92`  
		Last Modified: Tue, 04 Sep 2018 22:55:13 GMT  
		Size: 38.0 MB (37960107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0a7043f3d60777bbc57a62a7045f6dbb2386344b7d780fed10276bab3c91660`  
		Last Modified: Tue, 04 Sep 2018 22:55:40 GMT  
		Size: 99.6 MB (99610729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:wheezy` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:dcebef72103fc94a698f57492799afb463c5920641851a2444c2cad16fb41370
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.0 MB (169046467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c006dc6b9b7f32716d71a4a38b8439ef911d4c53ee977e8876330d1847a9c95`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 08:57:09 GMT
ADD file:61853f14d9d4d56ef0e2310ac18fc7f6767ffe6dadb735b828ae69d950bdcdbc in / 
# Wed, 05 Sep 2018 08:57:09 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 10:03:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:03:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 10:04:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:06:03 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bcbcf7840b6fa343c8f47838ff17667fd75c164d83025f6a65d6533dd4f1512c`  
		Last Modified: Wed, 05 Sep 2018 09:06:40 GMT  
		Size: 38.0 MB (37993571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c632033ff40912ca3eb56a29e49cdbc90a7aefe7dadb54591f7f3b3ad133f0b1`  
		Last Modified: Wed, 05 Sep 2018 10:14:12 GMT  
		Size: 5.5 MB (5474824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f0e0e452a2bbb4378f00cb13bab46d59a9b01b2b50fd6dcfaea16bbc15cdf36`  
		Last Modified: Wed, 05 Sep 2018 10:14:42 GMT  
		Size: 35.9 MB (35894155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc8918e1f1289ca7066f670b61c992b6a216cc5c0cf2ca198366bceba8fc163b`  
		Last Modified: Wed, 05 Sep 2018 10:15:24 GMT  
		Size: 89.7 MB (89683917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:wheezy` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:5f5d1be65d00c9656815c282e05606e357e9d2512b8d0e55be646b512266c959
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.6 MB (162556267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c49d731215df33d6aec8718b5a93fbad62b6a0b1fd8815a87825e9589fb2cf7`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 12:08:23 GMT
ADD file:712816e22e280cc54e0b214bacd8b514c6de7d71f07b8c63b3306f7adc2bdc05 in / 
# Tue, 17 Jul 2018 12:08:23 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 13:53:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:53:01 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 13:53:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:55:40 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b4fdbe1026b8cccda2040976484f19e27515a68623a1e6b1439ae0029d5934d9`  
		Last Modified: Tue, 17 Jul 2018 12:20:59 GMT  
		Size: 36.6 MB (36619508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a8ac959b42bebb3bc8ef012afa4796dc6c2512b201e04af78cf09df894c6f7a`  
		Last Modified: Tue, 17 Jul 2018 14:14:05 GMT  
		Size: 5.3 MB (5321855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70dd413b4f10b3fae62383f2da614758a2e66687753e68ccf33442907925c942`  
		Last Modified: Tue, 17 Jul 2018 14:14:41 GMT  
		Size: 34.9 MB (34872615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f68dd66e15f8d250b3fd49c738aa21be0358262c9a778b816c761ba3f76a82b`  
		Last Modified: Tue, 17 Jul 2018 14:15:22 GMT  
		Size: 85.7 MB (85742289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:wheezy` - linux; 386

```console
$ docker pull buildpack-deps@sha256:9db3de61fae7193b4b5577da9c623701f89d5c501852855b79ed291e6a700cfa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.6 MB (183634439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ef8c739f1caea30824c521bde002006d6849d06f48ac105155f99a5bb83c7fd`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 10:52:53 GMT
ADD file:2b0fab8ddd7d2f359f307fc659f958ad8a6e2a86a6a23ad77572c20f1d5aef12 in / 
# Tue, 17 Jul 2018 10:52:54 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:46:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:46:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 14:47:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:49:09 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7c59d17a85b1db041ae2f8db1bccfc071f1e66c58fe8a43087c34557aa910719`  
		Last Modified: Tue, 17 Jul 2018 11:12:53 GMT  
		Size: 40.5 MB (40532149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:203ffa63f8e493549b151d4475e7fa725eb493a3439e4c803063fb271db6b5b1`  
		Last Modified: Tue, 17 Jul 2018 15:22:18 GMT  
		Size: 5.6 MB (5617066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eade15c8f3100e425b5b0dfaafe8772e89aca3cf93b81e369413002fe63d5938`  
		Last Modified: Tue, 17 Jul 2018 15:23:09 GMT  
		Size: 37.1 MB (37050365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:714bd013473e295f8214914585429f402600ec873babb92656e5a66941650239`  
		Last Modified: Tue, 17 Jul 2018 15:24:27 GMT  
		Size: 100.4 MB (100434859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
