## `buildpack-deps:buster`

```console
$ docker pull buildpack-deps@sha256:6b32a6260682ebad577f0bb4e5c9d9df6f1d7e78b5732adb5501b8b3d459eb76
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
$ docker pull buildpack-deps@sha256:b5094a7f696eda3735cffae909d242093a0c97122359d6b8d0407572fc5beca5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **305.4 MB (305415253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:266e764cefc313ccf96d0f1e3c20723be67a5640ae3a52bd29119fb508951832`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 04 Sep 2018 21:19:38 GMT
ADD file:9a59523584bffb4f021dc93910d62a0895fb3034e1b677cee880bc2c9c7d3cfa in / 
# Tue, 04 Sep 2018 21:19:39 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:20:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:20:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 04 Sep 2018 22:21:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:22:50 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1064a561889d4755937e39513dda622c2ebd16d0e4faeefe499ccb8494ea5176`  
		Last Modified: Tue, 04 Sep 2018 21:22:49 GMT  
		Size: 49.0 MB (48982727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd0147b29a6cde8f1220e1e500835d1a90d5cd8cc58f37a99f8898215cb83a33`  
		Last Modified: Tue, 04 Sep 2018 22:48:23 GMT  
		Size: 7.1 MB (7078979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7176dd0a39ca8bb73073995b4f9e86e703a550bebf075498a90a2e9559cd5fe5`  
		Last Modified: Tue, 04 Sep 2018 22:48:23 GMT  
		Size: 9.9 MB (9921534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e51830d0602755a5326f83ff4a31bbbdc20abbfe6f97c1005af7be2f8cbb28d`  
		Last Modified: Tue, 04 Sep 2018 22:48:47 GMT  
		Size: 51.5 MB (51542907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32a2fd966b96cb4d2fb02b589d1b84bd416f67919826d2ad424331a9b068b80a`  
		Last Modified: Tue, 04 Sep 2018 22:49:31 GMT  
		Size: 187.9 MB (187889106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:319e86d1a2a40fe81c376578a6935362cf8ca86629aa5a8481921d23c5fe5199
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.0 MB (287013178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f56d4e72c1c118bd3982a7b59520a3eea878e6f4bcfb3d90be752ee88cae55b0`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 08:49:19 GMT
ADD file:c77706b2accf4523394f31f6ff81710036bbc455ef10a65d8f63ef3a47cdf4c0 in / 
# Wed, 05 Sep 2018 08:49:19 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 09:46:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:46:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 09:47:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:50:45 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:86f570122e01893521c701d86760d107ca367aaef6d03ca5c49383f626c1df57`  
		Last Modified: Wed, 05 Sep 2018 08:58:29 GMT  
		Size: 46.8 MB (46824422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:890c3e86871bf250fe6d4bb3f3e159ec90bc35fb52ae964132d5778617cfdd27`  
		Last Modified: Wed, 05 Sep 2018 10:06:26 GMT  
		Size: 6.7 MB (6667162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02725ae9a4560fd3b724f26dff4cb0e012223ac16fe38fe373bd5c7192f5d037`  
		Last Modified: Wed, 05 Sep 2018 10:06:27 GMT  
		Size: 9.6 MB (9639206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d25e33a59d4fd55999bc50600739a80a969ff6f465fd31070b15c26f6e8fd62`  
		Last Modified: Wed, 05 Sep 2018 10:07:01 GMT  
		Size: 48.8 MB (48817253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da8d1cf1bfc10141df8fcc0595e2263fa5de07bf5619cec7ae80289569b6f49d`  
		Last Modified: Wed, 05 Sep 2018 10:07:59 GMT  
		Size: 175.1 MB (175065135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:98c2dd0b93ae176a0adcd0e65130b553d8c81919569c1a729b4b8faa49fc4779
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.4 MB (275383187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55ced6a2e6a440c5f7e924a6c439ab16dddcae8e7f5aa9f9af96e41b2b8792e6`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 11:58:11 GMT
ADD file:0ceda11c6c9224d1b7435e8e5e3c23ddd7726ed71b2771e3abca3c38f1837232 in / 
# Wed, 05 Sep 2018 11:58:15 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:32:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:33:06 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 12:33:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:36:30 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9f558322d800ab476d4bbe205c48e9d0a6a1756493b4d73034069d06cf03297a`  
		Last Modified: Wed, 05 Sep 2018 12:07:40 GMT  
		Size: 44.7 MB (44669136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c92cb02b1d3f73d7c4e6ea01fbe27e511e70704c742b297765eaa009d0618730`  
		Last Modified: Wed, 05 Sep 2018 12:51:49 GMT  
		Size: 6.5 MB (6458813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2927f45f6bf438a9a52b830c769dccb7e36c6ec3cf7acc4719f66bd56ab4d56`  
		Last Modified: Wed, 05 Sep 2018 12:51:50 GMT  
		Size: 9.3 MB (9330907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25eeea69650dfc462b13c473fa1fbc6dd8cbac02dc554455978c67324dba18ec`  
		Last Modified: Wed, 05 Sep 2018 12:52:20 GMT  
		Size: 46.7 MB (46671908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7df6cdecbc2952dbeb9bc9a54c29e91e006c7e942212ff61c48ca64145a7b8b3`  
		Last Modified: Wed, 05 Sep 2018 12:53:16 GMT  
		Size: 168.3 MB (168252423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:14709dce701777c9144b28ddc4dd0684180a238258698c5456ef16751324b2ba
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **291.9 MB (291915016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91f981881f4860f8fd8c5f032f8a4266ef5c79cf05367b44ef198d0239d89da7`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 08:42:36 GMT
ADD file:c005128e815646e508e6870720ecbf853251d233235cf4fcce39cb823e4df461 in / 
# Wed, 05 Sep 2018 08:42:38 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 09:33:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:33:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 09:35:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:46:34 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9d16b5715f1810812811848a09d644ca133c55588b89bfbd8679ebcc7a400c89`  
		Last Modified: Wed, 05 Sep 2018 09:00:17 GMT  
		Size: 46.8 MB (46757243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e8237dd19ef8988dc38def8598f7155ac6075cea98e5dce2bcb4f66bca8c545`  
		Last Modified: Wed, 05 Sep 2018 10:17:03 GMT  
		Size: 6.7 MB (6715930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e44dd06feb8e64f814c36a2c528c3e0f0a509e8d60bbac2419e4fc9524ea1b36`  
		Last Modified: Wed, 05 Sep 2018 10:17:04 GMT  
		Size: 9.9 MB (9853358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63c9509d0554128356008a92b670e1f0847d4a26857d772bda7e7a6f900b807e`  
		Last Modified: Wed, 05 Sep 2018 10:18:40 GMT  
		Size: 50.1 MB (50099791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7436e7e24d318dbb37317ab3a96d3e6333b2c98afb6d29074bb3daf25bd4e446`  
		Last Modified: Wed, 05 Sep 2018 10:20:42 GMT  
		Size: 178.5 MB (178488694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster` - linux; 386

```console
$ docker pull buildpack-deps@sha256:d48fd288fab13767613c0a861828c6a08b4cc92279e7788f24b657c10239db48
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.0 MB (315954957 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4e67bedfc94bee4ea3cbaad135e4d41fa73b020522b36a2a8f93ddc6af72f6a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 10:39:13 GMT
ADD file:48a0f1cad5537efcb85c35a04bf729567cb43e4f2933d58f224ea9b6f4ea0d73 in / 
# Wed, 05 Sep 2018 10:39:13 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:16:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:17:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 11:18:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:20:30 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ebad9676aa1aed92d8780b8945e7b41c7d941861b739301055b6d6a4756b5633`  
		Last Modified: Wed, 05 Sep 2018 10:47:06 GMT  
		Size: 49.7 MB (49720982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc16ed0a398e4173a251323e2744088b280e1ab1b08b048a657b3d6c05f6fd21`  
		Last Modified: Wed, 05 Sep 2018 11:58:23 GMT  
		Size: 7.2 MB (7228612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a43a235f8ea65aa76a75ea7f2b30cd85e584474890344a95b66debbaae592a6`  
		Last Modified: Wed, 05 Sep 2018 11:58:23 GMT  
		Size: 10.2 MB (10222270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbbd8a98aa454239b11bd749f1c693dc0321df146444b5db4af7f6b4b0fdd77d`  
		Last Modified: Wed, 05 Sep 2018 11:59:04 GMT  
		Size: 53.0 MB (53019525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c1efd0126a7e589ca01a2fd90bddb9848d3862298b7c8cc2d5408848529092`  
		Last Modified: Wed, 05 Sep 2018 12:00:52 GMT  
		Size: 195.8 MB (195763568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:dd32c9ca5f4a433e82b490ef29bed7df0a44519abe1b3e4da4c423366ad6f9c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.7 MB (316736600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5204ac4da76b90f6c04e15279b1c2b4e39baa29e7c289391b6b000e72a6a710`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 08:17:13 GMT
ADD file:b9a66512c933d368d5bc398be4a8b9b24a3bcac0e5f4df668c507d38e0c129d8 in / 
# Wed, 05 Sep 2018 08:17:14 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 08:45:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 08:46:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 08:48:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 08:55:02 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:cfb56c02f1d048cbcf2da46a46ea3d730ffe6cff0ceb9797f43ec49cc92e044d`  
		Last Modified: Wed, 05 Sep 2018 08:22:15 GMT  
		Size: 51.3 MB (51309580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a0632fa1f08757e79a6036fb135a1b27567cba9865e778c0416906106857357`  
		Last Modified: Wed, 05 Sep 2018 09:12:26 GMT  
		Size: 7.0 MB (6966044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92bf14d1632e22ea0faa87a77b879c49e74241ddabc86edb3c6acf2023030313`  
		Last Modified: Wed, 05 Sep 2018 09:12:29 GMT  
		Size: 10.5 MB (10521872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a20b38e046827346803a8e67964180b4d2b246cbee1b0270bcb7478c8e9515cf`  
		Last Modified: Wed, 05 Sep 2018 09:13:13 GMT  
		Size: 55.0 MB (54971092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22de4bf1a0754cb513ea544ff3648ede01ebaffc21c3a277def5ccb56e7f5ce8`  
		Last Modified: Wed, 05 Sep 2018 09:14:33 GMT  
		Size: 193.0 MB (192968012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:434de480fd931c429b75de5993c3d0bea92097faf625bc0ae9f41f147c82523b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.3 MB (290295711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d70f8a881d8c1b857be6e9030583a314734d45d8c21690abc1620e0fe8c650a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 11:41:54 GMT
ADD file:1698a1fd27f8bd24d1c2d02bf9f3f029a3e885eabe1ef022aabd9e62aa164ebb in / 
# Wed, 05 Sep 2018 11:41:55 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:39:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:39:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 12:40:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:41:40 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:368eafd96dbf007872153dfcde0d76f5211cfb3717b092c482641893abb45b67`  
		Last Modified: Wed, 05 Sep 2018 11:46:40 GMT  
		Size: 47.7 MB (47734880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc6dd5fe20f5a468b38b8c58c0bda71c24866c03897381400eee83774fcb460f`  
		Last Modified: Wed, 05 Sep 2018 12:47:21 GMT  
		Size: 6.8 MB (6798874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5c810a37d442b7a0628fda098b9be716296fee3c3dbbce1f570aaa614060802`  
		Last Modified: Wed, 05 Sep 2018 12:47:22 GMT  
		Size: 9.8 MB (9827758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af4fd026f224944262d5cb6415462a618a63b5e6ed2a256c0e40e14de602a9c3`  
		Last Modified: Wed, 05 Sep 2018 12:47:45 GMT  
		Size: 50.8 MB (50827938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b9c80615d10bdd623c4594186d9a8b3dbdcd10ca65e954f51682ea8a2c696c`  
		Last Modified: Wed, 05 Sep 2018 12:48:28 GMT  
		Size: 175.1 MB (175106261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
