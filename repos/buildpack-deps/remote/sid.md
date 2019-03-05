## `buildpack-deps:sid`

```console
$ docker pull buildpack-deps@sha256:485919f4290ef278ed52d5077a4465a5760800f92ad9e969e26dd84d7b69aaec
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
$ docker pull buildpack-deps@sha256:6bac30474f7db0ee6a5eaaceada847783b2b65d91f744e92cfeba3194d2eb6b0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.1 MB (318062093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f08555d0400ef1033873837c01633697af875d9a4515de2e29bacf1ceb03477c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 04 Mar 2019 23:21:27 GMT
ADD file:dca5a20f97013b9a80952784924ca7f3820f99958ad080344fe8445a67c2ca92 in / 
# Mon, 04 Mar 2019 23:21:27 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 02:32:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 02:33:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 02:33:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 02:34:47 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9785490dff12d73b09ebaeb9dfa12d32bc61a107039000030ea3d9da0db5f77a`  
		Last Modified: Mon, 04 Mar 2019 23:25:37 GMT  
		Size: 50.2 MB (50217046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81298de37ef3a5fa4733f0841b968e44cf8a8e3c50d4c2e14c599ef4066a4083`  
		Last Modified: Tue, 05 Mar 2019 02:42:40 GMT  
		Size: 7.8 MB (7785176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aae9f220b3fb2f6292283f3afdfbc148c506980841df909b63b2faf289cd618a`  
		Last Modified: Tue, 05 Mar 2019 02:42:40 GMT  
		Size: 10.7 MB (10670055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ad2ed23090f3baa71334a3f4b8ff9f2c744437018bd612321cb5bd4c1a15c3e`  
		Last Modified: Tue, 05 Mar 2019 02:42:56 GMT  
		Size: 52.0 MB (51991821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfde64afa2d9ee964e9f41fd6115e74a2eaa7f412641cb2ed3f6acf52bda3c24`  
		Last Modified: Tue, 05 Mar 2019 02:43:34 GMT  
		Size: 197.4 MB (197397995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:831bd23259193a4da7f204d30ad60e2711267a38379be30ee124fc812fd68c94
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.8 MB (290751298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7545b4adb709094bc25e961f6a48592b09ddcc775d085a5843a7a3dd2999f835`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:52:57 GMT
ADD file:408a135a9a2b4df4beece5b2de3301cfa0e45a7a062eb63e9a0e7e9192bd5f99 in / 
# Tue, 05 Mar 2019 09:52:58 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 10:29:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 10:29:41 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 10:30:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 10:32:25 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3f835cac0c7da48ab45ed34e7fa9323dc275f7e955809e476af719eca0844a82`  
		Last Modified: Tue, 05 Mar 2019 10:01:18 GMT  
		Size: 47.9 MB (47927091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20a13c1b08400ad8c370949bdf50dd9e9beb876d921502e30bf1b5fd309b9ac`  
		Last Modified: Tue, 05 Mar 2019 10:41:47 GMT  
		Size: 7.3 MB (7336165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ddae599fbb72dbcdfff564e64d55467d131f4ef12a46081715d0f6e05b06ce8`  
		Last Modified: Tue, 05 Mar 2019 10:41:48 GMT  
		Size: 10.3 MB (10343335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62acf10d86111f3f76514640e45a2242318ec4c77631d4393551a7d24a509b11`  
		Last Modified: Tue, 05 Mar 2019 10:42:10 GMT  
		Size: 49.7 MB (49742946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab53b4db007503406c6ed4e455bc8f1caaddd028cde73a8fbc6e4308cd4bc71`  
		Last Modified: Tue, 05 Mar 2019 10:43:04 GMT  
		Size: 175.4 MB (175401761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:898f23f0078e4e13bcd17141831436949152364bfe2b39540c88b23059289cdd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.8 MB (282787842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae9ed730bb77c81af3469f4c523c90b30ebfa9dc2a197c9b8b710db4a5637cb7`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 13:08:38 GMT
ADD file:b72300898197970109a36b5e6d6d7a6bb43e7b98f2031ae4e0209656631a1896 in / 
# Tue, 05 Mar 2019 13:08:40 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 13:47:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 13:47:28 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 13:48:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 13:49:53 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:4d624d22f7bf6fc6089b3a8dad99963dba88224793cf4fd6e125d78127c11b12`  
		Last Modified: Tue, 05 Mar 2019 13:17:19 GMT  
		Size: 45.7 MB (45702215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1efd7518521f31fa10a388738bf1f88c27ca903200f6142f6a055cf36cde6e0c`  
		Last Modified: Tue, 05 Mar 2019 14:01:34 GMT  
		Size: 7.1 MB (7082522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7401310a12e54a641edd646e202ab8fc761837c53b172213c67d172f3ae3a985`  
		Last Modified: Tue, 05 Mar 2019 14:01:34 GMT  
		Size: 10.0 MB (9975606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:360b4a90ff4dea06f06d32a0b67f8e935b2b0026f481d570b65db22061de52a4`  
		Last Modified: Tue, 05 Mar 2019 14:01:56 GMT  
		Size: 47.5 MB (47515521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2eda353e18b1957ea256738871fb350a7d8592188ab5cae2bb2aa4982d1ac8b`  
		Last Modified: Tue, 05 Mar 2019 14:02:49 GMT  
		Size: 172.5 MB (172511978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:837c4f75963a20b82a720c2f5481ff37fbbfcabfb46927ee0dd1ac6356dc04a3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.6 MB (307591016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c41a3cba8483e9208d104546cab680f6c637d48fcc5cbfc12334bf0736c66131`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:58:23 GMT
ADD file:90460bfea8197db08228883344f54de9af9e181235af744b6ced1c92c9232c0e in / 
# Tue, 05 Mar 2019 09:58:25 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 11:20:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 11:21:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 11:23:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 11:30:44 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:144b366f7c016e373caca8c07d7f49863e1f58cd34df77dd477c040ad69a0834`  
		Last Modified: Tue, 05 Mar 2019 10:04:44 GMT  
		Size: 49.0 MB (49013519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b38aff23d039c17ce98ae2f6276035844062b76a9cb6721e48c87767550993c0`  
		Last Modified: Tue, 05 Mar 2019 11:44:40 GMT  
		Size: 7.6 MB (7648958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51426802a8ba0dd98b6e4c8ab18780ce139927b80caa959bf3e47c6cefe81324`  
		Last Modified: Tue, 05 Mar 2019 11:44:40 GMT  
		Size: 10.7 MB (10659343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1017ae7728a2b2c5a5117b15f92dd4b4de518047a6a48e8fcb1536f222a13154`  
		Last Modified: Tue, 05 Mar 2019 11:45:09 GMT  
		Size: 52.3 MB (52316341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bca4a83cbc41e49c0184585c69e27d91e34c84771674976844b9d11bc90efc9e`  
		Last Modified: Tue, 05 Mar 2019 11:46:17 GMT  
		Size: 188.0 MB (187952855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid` - linux; 386

```console
$ docker pull buildpack-deps@sha256:e8da864b56409b7ff028ec16d7af7dcc2220ae0954dd05b30ac09c984e7f8bbc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **326.9 MB (326886156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa53a00778d57d940b86ffdc7553cf95315d2856880b7edd4c261ba902634c14`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 11:43:40 GMT
ADD file:aabddc8503779289fa215ba4c8cedd2315637c37836b974d0cd854497316f3f6 in / 
# Tue, 05 Mar 2019 11:43:40 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 21:07:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 21:08:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 21:08:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 21:09:32 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ac3a27f255b7ba1504a24556064a0ff04577e55ba608928511824b9082daf96d`  
		Last Modified: Tue, 05 Mar 2019 11:53:28 GMT  
		Size: 51.0 MB (50983496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36bc0d170f107a8a8fd0c413158849c3b7ee2c0cd150567e7cbf6c80dca37b24`  
		Last Modified: Tue, 05 Mar 2019 21:16:37 GMT  
		Size: 7.9 MB (7948271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34bc50443f43bb98bad15dc3986ff01968f8482cb3aa13a58e5d7461a4113097`  
		Last Modified: Tue, 05 Mar 2019 21:16:37 GMT  
		Size: 11.0 MB (11042772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7740780869cb7c84831c01dbfcffda0848807e717fed57048110485da5666a8e`  
		Last Modified: Tue, 05 Mar 2019 21:17:03 GMT  
		Size: 53.6 MB (53585209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d61cd2236acfe929a7842f9afa57d7b1ea118c228c08c3e2e6e307ca6518aeb3`  
		Last Modified: Tue, 05 Mar 2019 21:17:46 GMT  
		Size: 203.3 MB (203326408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:d5824f6a86581d7e7bc7b7fde7dfb67e69a5f940bd2472e4bd19d83cdccaa56b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **340.1 MB (340127425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0630cadef6b351d7f7e45e253d7ad512a1071e6b9323afce1040250b6c7b8fb`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:24:04 GMT
ADD file:40f652d32e0b76ec071fd9402a46baf708b4a93a447746fa2c6a983037783a9e in / 
# Tue, 05 Mar 2019 09:24:08 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 12:33:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 12:34:08 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 12:35:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 12:44:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:2592b3cdddbd90d7ba646742ad2e42d88b7ff2e928a2409bcaaa0e0b3a57313c`  
		Last Modified: Tue, 05 Mar 2019 09:29:29 GMT  
		Size: 54.0 MB (53964088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35ea9ab9e821963916336b853e74d8c29cc094b1d40d76c3ed5a818eddc133b4`  
		Last Modified: Tue, 05 Mar 2019 13:00:10 GMT  
		Size: 8.2 MB (8219458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfaab8d8f558ef22051e46a930446f1691e01632a550283553b40931dcd1bac9`  
		Last Modified: Tue, 05 Mar 2019 13:00:09 GMT  
		Size: 11.5 MB (11459503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd622d196dc7958c0e3bb4dfe26e29e523f55977eb38bc7fe47c296c7d48f547`  
		Last Modified: Tue, 05 Mar 2019 13:00:49 GMT  
		Size: 57.6 MB (57603904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3019c71e75b6f4b9421b62f968c97ac52df84bfb96f0c529daffb5add5058c83`  
		Last Modified: Tue, 05 Mar 2019 13:02:30 GMT  
		Size: 208.9 MB (208880472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:16c4e82a829fcc5dcc529a07ce9a09398b7e6f30d5648a439cc1917ebd088c0e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.5 MB (299506481 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d0884fcd29e73f9691bd0672d60bea3c9e11203c9179ca0a813593c8af1e457`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 12:42:17 GMT
ADD file:1f39bab5b8349914aec5d4d7288d3789725c246ce0f265333d09a89c90440aed in / 
# Tue, 05 Mar 2019 12:42:17 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 13:33:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 13:33:41 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 13:34:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 13:35:19 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:536f0d4b71a17b5b6bc1c252fc284b7fc8706b9e795c0e4d2deea17eba78a0ad`  
		Last Modified: Tue, 05 Mar 2019 12:44:44 GMT  
		Size: 48.8 MB (48790038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8403a183fbdbe6a15804cab9423acd790ec2a65a956e4737c2180da831e9fa9`  
		Last Modified: Tue, 05 Mar 2019 13:39:31 GMT  
		Size: 7.4 MB (7359778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04c076f27a63a721173e5f70a226c82d25b5bb5d02641c41bce852d28f8142bd`  
		Last Modified: Tue, 05 Mar 2019 13:39:31 GMT  
		Size: 10.5 MB (10546789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:177ef8ea8182d28ac43b37353281ce935ec2313b9770e4a1d90ff9b56d5c0c3c`  
		Last Modified: Tue, 05 Mar 2019 13:39:45 GMT  
		Size: 51.5 MB (51532770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b2812c164e7efb559db0a647fcdc3ee48343f3373c570e9cd7734690e0f41d3`  
		Last Modified: Tue, 05 Mar 2019 13:40:19 GMT  
		Size: 181.3 MB (181277106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
