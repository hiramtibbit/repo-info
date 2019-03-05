## `buildpack-deps:buster`

```console
$ docker pull buildpack-deps@sha256:ba09e7ff920a20e955fa415f14a7fcfdbb01303a43d4465f37376d5b3b713ff2
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
$ docker pull buildpack-deps@sha256:83eea311a66cba36b2a08bddf2726e1b41dc8c1bf44bd1124f8290a41fe44951
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.4 MB (307411107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:544c9ffede9436cc9782f23c51a9bfd72a4be1de980d6ad0c5ca9d16cabdf0d0`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 04 Mar 2019 23:19:56 GMT
ADD file:d272c1d83c768286bee82c0583c289bbc64661c4b528db2217208623331689d8 in / 
# Mon, 04 Mar 2019 23:19:56 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 02:21:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 02:21:24 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 02:22:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 02:23:31 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a5e86c41ccba20f8cc620ba9905a566083b6659ea5212c4ef78fdcc1a5d9ab32`  
		Last Modified: Mon, 04 Mar 2019 23:24:04 GMT  
		Size: 50.2 MB (50154948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61c073c9472fd3c1fa81088409b15f977b5701e40777e49f421f56d1c9e132af`  
		Last Modified: Tue, 05 Mar 2019 02:40:48 GMT  
		Size: 7.8 MB (7772500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:536125220d87c6f26705675f2d1f297043e0868397ea501e0db897da1b34d4f6`  
		Last Modified: Tue, 05 Mar 2019 02:40:49 GMT  
		Size: 10.0 MB (9966376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c66baacf7b04a87ece03dc2610807249438410410ad789f0af691459db07bdb4`  
		Last Modified: Tue, 05 Mar 2019 02:41:04 GMT  
		Size: 51.8 MB (51779614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:461eeee7f3d9dce637ad681cb2d6ea118d7908b9fda739e15982643c6e5ad125`  
		Last Modified: Tue, 05 Mar 2019 02:41:44 GMT  
		Size: 187.7 MB (187737669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:669712894bfe8f142c4ce9776247e03cb3c74d4ef9d817fa6e736ae758dd8054
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.1 MB (281136702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8569d5eb3d58ac126ff53ab6038acfa37e55137814daaa18d29e1ddf3dce6320`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:49:05 GMT
ADD file:4998fef42e86a8ef1cf1f73a98240a0b9b2dcd1b390cc60d462fbcdad67e1618 in / 
# Tue, 05 Mar 2019 09:49:06 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 10:20:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 10:20:35 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 10:21:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 10:23:20 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:2105c83f20696340f66a60f463e0934c7bae680b26c03ae56fe09cea8290d5ac`  
		Last Modified: Tue, 05 Mar 2019 09:58:45 GMT  
		Size: 47.9 MB (47881139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f283aab1647112fcff4ff09f98ffe57352fa3551a2a3a25aa1a263a5735088d8`  
		Last Modified: Tue, 05 Mar 2019 10:39:13 GMT  
		Size: 7.3 MB (7330435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:363a132a46f590b8eb2ca0be47d560cdd0dcc4629e0af4f85e7cd428620edcc2`  
		Last Modified: Tue, 05 Mar 2019 10:39:14 GMT  
		Size: 9.7 MB (9660984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71876fb202cde1f900d86818f03e7c8305f0765f98773f915f6a9b8cf70c1815`  
		Last Modified: Tue, 05 Mar 2019 10:39:36 GMT  
		Size: 49.5 MB (49516896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6018b94f5624f30540a1ac9c2d49dd86305dffffc269275b3cd9228c09293ef8`  
		Last Modified: Tue, 05 Mar 2019 10:40:27 GMT  
		Size: 166.7 MB (166747248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:999eeaf11b0a67f119404645e928ad65c36af159fd0319b79e6947de15631237
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.5 MB (282538908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6ddeadb6aabadfd1511e3136afcaeeed44f062923e870312d7e52100461fb53`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Feb 2019 12:58:25 GMT
ADD file:65d59ecfea4b8d57715e5859d63ba3cc9fee5929aa7767f83a4aa9d162ab6dc2 in / 
# Thu, 07 Feb 2019 12:58:28 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:17:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 15:17:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Feb 2019 15:18:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 02 Mar 2019 13:03:40 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d91b8c8018cf8d6d07c5879ee569d02c4f41253ad5e91059a81037474ffc3aeb`  
		Last Modified: Thu, 07 Feb 2019 01:09:01 GMT  
		Size: 45.7 MB (45652173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa2bf9464350b08e6f4012bdfe10e887091758e45ae8908d9f112e7bdece0314`  
		Last Modified: Thu, 07 Feb 2019 15:45:20 GMT  
		Size: 7.1 MB (7066690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b419603c750ccd73490a71502612c209dacb3a6d195aac914060e8073ef91f1`  
		Last Modified: Thu, 07 Feb 2019 15:45:24 GMT  
		Size: 9.3 MB (9315778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a44a65972da21e6ddd87b8f62855907f3352d4e39ebcaf2ea7173ba7f5635385`  
		Last Modified: Thu, 07 Feb 2019 15:45:46 GMT  
		Size: 49.3 MB (49320186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e47410fee49f28ce82c3cd6c54c67a55517ec3a721050d3005ba50bf1ac8f0a5`  
		Last Modified: Sat, 02 Mar 2019 13:24:01 GMT  
		Size: 171.2 MB (171184081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:26a2a7c3cd153c8e37e4941a19ca1426fcf12ee7656bd797c896bebabcff4403
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **297.7 MB (297677436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53e63511d698da0521d3a0cd7d85966d1fc6f30858f27bf0da564f45a7750886`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:57:24 GMT
ADD file:12ef091554862fcbcdfa6327ef937066a1a7b188c75475358ec6dd86d0887b82 in / 
# Tue, 05 Mar 2019 09:57:25 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 11:08:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 11:09:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 11:10:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 11:19:16 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:2d5fe5a6667213b6265017ede7ed1288bfe048a96cd0fa39e416bd3c78de87ae`  
		Last Modified: Tue, 05 Mar 2019 10:04:04 GMT  
		Size: 48.9 MB (48921399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ade1480732fda91b38a1cd397faa752bfb69568e804d8e345551f464cee20f4c`  
		Last Modified: Tue, 05 Mar 2019 11:42:45 GMT  
		Size: 7.6 MB (7642249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d02f9c2f0ce2f5f79f2fb6ce0626d6237464867e913fd78350f847241b1b3a37`  
		Last Modified: Tue, 05 Mar 2019 11:42:46 GMT  
		Size: 10.0 MB (9954167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c7d0d69f0d0bf023d3b517a2e6137a7ca432042a41f2175624df16f0ad1c67`  
		Last Modified: Tue, 05 Mar 2019 11:43:15 GMT  
		Size: 52.1 MB (52101929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96828f1ab8e92b29132ebaa73cfac11cf776a95d273026d086c4823c0d110e19`  
		Last Modified: Tue, 05 Mar 2019 11:44:23 GMT  
		Size: 179.1 MB (179057692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster` - linux; 386

```console
$ docker pull buildpack-deps@sha256:e13573a425fd19bd4ae4c083f43b9f9884ad6576d67e4d977b4799fb40076d7e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **327.1 MB (327091944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75a25d57873c95abc0d47257cc2c14375fe0822c4df7f92b604d6ccd77018579`
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
# Sat, 02 Mar 2019 11:42:21 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
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
	-	`sha256:d599cc670563d10228f02d5459c6f0d7200073be49ee411d69223526bbbc3341`  
		Last Modified: Sat, 02 Mar 2019 12:03:09 GMT  
		Size: 202.3 MB (202271907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:f2b02b96e7a1fe4bb0afe44d211335e2896433dc72185c9a602bc99f57d0c193
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **340.2 MB (340245915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03ff2620e57d7e0155dc4f6628303f42577832e0c9e7a33cf019746724630670`
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
# Sat, 02 Mar 2019 09:37:49 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
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
	-	`sha256:4cb1677cbb6eed680b23f9851ec74a876f4a45bac99010e9ba1bf15767ec2199`  
		Last Modified: Sat, 02 Mar 2019 10:37:28 GMT  
		Size: 207.8 MB (207798326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:5546371e06e72935dec4f1105274dfa3a0ad6ff15056bcc243feecf9809e1953
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.6 MB (299640914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3043b1967598f78d572844ee10910e0081e56386e7d36e5ff869bcaf3a679829`
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
# Sat, 02 Mar 2019 12:44:11 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
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
	-	`sha256:7cbc02d7f988098584371ba61b4a13a985771777e96f6a0787c788cf1fc9353f`  
		Last Modified: Sat, 02 Mar 2019 12:52:29 GMT  
		Size: 180.3 MB (180251735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
