## `buildpack-deps:testing`

```console
$ docker pull buildpack-deps@sha256:3ad1558f789062940738c9e447e3061dfbc227f41f0ee9052dd3184e77f05d1f
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
$ docker pull buildpack-deps@sha256:546344c485bf30150d429f9f7c5ebb091e73d9c6d24ae16c7e84c4f01f5010ef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **300.4 MB (300362928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89415a1dafac783fa5889f674ea706a61aadc5e85045f61050b48c0753a46d51`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Oct 2018 23:19:46 GMT
ADD file:383d98905fbb0760c147b202cce1e9faf1a79022d01444216df307f52a461c13 in / 
# Mon, 15 Oct 2018 23:19:46 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 00:51:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 00:51:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 00:52:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 00:53:45 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:2cf2dc2b7cf341d06ddd2b70430cd0009e470a0a9f4b0eb06936df0cfe0992bf`  
		Last Modified: Mon, 15 Oct 2018 23:27:41 GMT  
		Size: 49.1 MB (49111873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa025c1eb1cda467ec34f848a5afdee5159e29a824bcb546fe67fab7a5140453`  
		Last Modified: Tue, 16 Oct 2018 01:06:37 GMT  
		Size: 7.1 MB (7086378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ca6a4b5953515431f3e21a5eaef5277dbe946ccf26fd4eccde33227ecaf81ec`  
		Last Modified: Tue, 16 Oct 2018 01:06:37 GMT  
		Size: 10.4 MB (10398104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9e5c1e01ad499102b092ea724035f4cdf8998d28710ebb0d609e74da61a86a6`  
		Last Modified: Tue, 16 Oct 2018 01:07:26 GMT  
		Size: 53.5 MB (53500420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a0cb5886a1c22072ae7bc5e406838faf406b119ffedb2e29d4d3825b58a0b86`  
		Last Modified: Tue, 16 Oct 2018 01:08:47 GMT  
		Size: 180.3 MB (180266153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:d3a8d116aa95e3e850dc7a7b39e73db4e05e3175082c42419bcaecd61061cd60
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.8 MB (281809127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62b77731062ed8940f840d36748fec8d6c21c03f62f3f418eb7f78cc7919f7f3`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 08:49:06 GMT
ADD file:72c1c9f078b771b572197a5f6e049afcafa13e20f76b817ab1ee48ab5b550d5a in / 
# Tue, 16 Oct 2018 08:49:07 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 09:52:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:53:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 09:53:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:56:27 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:986270a373f7181ef01d64d59559cc759017994335eb7c28c236d9ed58da5c40`  
		Last Modified: Tue, 16 Oct 2018 08:58:47 GMT  
		Size: 46.9 MB (46861990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8432a10db4b2b13a51151e57fa7be15ab4c23b025e9ab66055750fefe2216b06`  
		Last Modified: Tue, 16 Oct 2018 10:06:13 GMT  
		Size: 6.7 MB (6670491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cd1e2b7c3e2043c004c9057863c5978072ba7eb8b3184aa56dd448f3ca2cd62`  
		Last Modified: Tue, 16 Oct 2018 10:06:14 GMT  
		Size: 10.1 MB (10085422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a35c19abd74adb5da440e6ccd5f2e2105373e96c3dc449198914c17bf879fe71`  
		Last Modified: Tue, 16 Oct 2018 10:06:45 GMT  
		Size: 50.8 MB (50810664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ceac767c40814a7f48fed79953d1bbea5cc5913590c69457c0711a871221383`  
		Last Modified: Tue, 16 Oct 2018 10:07:43 GMT  
		Size: 167.4 MB (167380560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing` - linux; arm variant v7

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

### `buildpack-deps:testing` - linux; arm64 variant v8

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

### `buildpack-deps:testing` - linux; 386

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

### `buildpack-deps:testing` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:b3b84c0cd49134784ee75736365f9b2373ca1d36833a4c7226e84154c563c07e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.4 MB (315395788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4700925bf6248de9e9ed8b24be5336f96e5e9a52f3d5a4964383756f706fc1f9`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 08:18:28 GMT
ADD file:5e3e283f6be46586ee3aa52a0eabb62e6df9b0b9671787c071f2242904778293 in / 
# Tue, 16 Oct 2018 08:18:30 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 10:23:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 10:23:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 10:26:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 10:31:49 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:4235160846e98b63950bdc60bf58b6fe98639d8ce3eccc9fb3db19693e1df9c6`  
		Last Modified: Tue, 16 Oct 2018 08:25:05 GMT  
		Size: 52.0 MB (51955347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d33b4b49c83033b52eebc94bb8e03702ce959a8f1807dd9d7a2e342f1d6f25f`  
		Last Modified: Tue, 16 Oct 2018 10:59:56 GMT  
		Size: 7.1 MB (7076302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fb6581d99e16e9a8d24dea3573e043d600bf5478f636d686180eeea81ee2d1d`  
		Last Modified: Tue, 16 Oct 2018 10:59:56 GMT  
		Size: 11.2 MB (11194082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d29fa910cdc15b9c85e941d19e6e881c0be93889e70211afa4111e7a757611`  
		Last Modified: Tue, 16 Oct 2018 11:00:46 GMT  
		Size: 59.1 MB (59102363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b705a4032f54643a61645f8af9ab9d66bb205bc1df88f97f53ae35cf0c04da8`  
		Last Modified: Tue, 16 Oct 2018 11:03:12 GMT  
		Size: 186.1 MB (186067694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing` - linux; s390x

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
