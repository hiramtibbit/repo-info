## `buildpack-deps:wheezy`

```console
$ docker pull buildpack-deps@sha256:6ff21e099840b4004880ab1b13f0edaa7d3e7d7c7c21daed6c050ca47c6ff6a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `buildpack-deps:wheezy` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:809725314eca6506675b31f20ead0bc2266bb886e96e391322b0a96fc95fbff6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.6 MB (182635131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2148a6b4d2dc91ae9af9880c51fe29fe6c737b653157de5c7ea3e7d0ecb6296`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 22:31:05 GMT
ADD file:fc9ba15f087e646a9d3b72e742eb1233132a118ecfa998e2497b724f3ff84061 in / 
# Tue, 13 Mar 2018 22:31:06 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 00:09:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 00:09:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 00:17:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 00:18:17 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:4269eaa217cc08668f088a9719d43c993c4644a73eda4eb55921f031a4311060`  
		Last Modified: Tue, 13 Mar 2018 22:58:14 GMT  
		Size: 38.1 MB (38111490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5e3abccec87d1665b2b7a65c3fd2b53a5cf4e73e808cea60407e89a3f1359b`  
		Last Modified: Wed, 14 Mar 2018 00:52:07 GMT  
		Size: 6.9 MB (6946294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21d8a86572779f0439d6370a912d951dc8cb6592562a873a92ee60e256fa35c1`  
		Last Modified: Wed, 14 Mar 2018 00:58:07 GMT  
		Size: 38.0 MB (37961591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d4090146af16defc92c42c3d10655739d13fc684fa34e586588690c6c3dca28`  
		Last Modified: Wed, 14 Mar 2018 01:07:16 GMT  
		Size: 99.6 MB (99615756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:wheezy` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:51abb71f94d0c6c25432d72bc8e2adfeb22495980a65a44f04ffb538dd0a928d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.1 MB (169109421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:603c613cdd5c9e311308ea76bbeaca66d13a144ab619afcfb171d147befe921b`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 20:03:57 GMT
ADD file:1fdf1946f816fc31d9b70835fe5cc0346daccdfa3c06a8420b30437b9df12c84 in / 
# Wed, 14 Mar 2018 20:03:58 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 20:49:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:49:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 20:50:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:51:53 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9eca8126fa4f329bd1cee13672696279c82dfd169dc81a68a03ac5f1c2174cb2`  
		Last Modified: Wed, 14 Mar 2018 20:15:44 GMT  
		Size: 36.9 MB (36949682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbfab7c44de1825601e46defa7742303e126b2bfd1b749a006567f074cb2a63b`  
		Last Modified: Wed, 14 Mar 2018 20:58:29 GMT  
		Size: 6.6 MB (6585617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4f47232d7c597caaf7fd3c3f6bea69f99dd32708134db1c923547e3f08741ec`  
		Last Modified: Wed, 14 Mar 2018 20:58:54 GMT  
		Size: 35.9 MB (35893423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d90d3bad66aafc016f308d36ad1c8c71603bbbd8cf4484b12b6b3243a5fa3fdc`  
		Last Modified: Wed, 14 Mar 2018 20:59:29 GMT  
		Size: 89.7 MB (89680699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:wheezy` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:8da00324e31c8571885132b8f04ea5ac225cbe67fcfe6124979d4a3f36377a3e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.6 MB (162647829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9296ed2701b09b36f00e51dbeb2f89316b24fbbd13b480ce5a37e60a3659976`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 12:35:41 GMT
ADD file:ea4bfcd96c3bd6a1a47a17ab35e33799b93ff57ff9bb2c44284fc54d63b51234 in / 
# Wed, 14 Mar 2018 12:35:41 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 13:22:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:22:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 13:23:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:24:43 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bfc8f8e5a275b7e0bf9f677a7d237447e73a3145fecb7ae7f6c0c4ee73bc284c`  
		Last Modified: Wed, 14 Mar 2018 12:47:39 GMT  
		Size: 35.7 MB (35662536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5071a15ce20e8fbc132b7ad0ab056ae34c101c1dfaed3006e7eb6e78c234a66e`  
		Last Modified: Wed, 14 Mar 2018 13:32:36 GMT  
		Size: 6.4 MB (6371895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85ad47a318a5615ce757b7c8daa1f098cb07d534976866b29e76eba0a44c9bae`  
		Last Modified: Wed, 14 Mar 2018 13:33:02 GMT  
		Size: 34.9 MB (34869355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e830b706b38dcf8ed252608a36b5160bacb0d55b3490ffa4686cfbc393e840b4`  
		Last Modified: Wed, 14 Mar 2018 13:33:35 GMT  
		Size: 85.7 MB (85744043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:wheezy` - linux; 386

```console
$ docker pull buildpack-deps@sha256:93a706878ede4041f54894fd2ba9ae766ea2d9a2ac378be201a04c4bc84acc1f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.7 MB (183724507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94b9b8736e54d6475c3936695e28147a7e471f21f422ad5ff1940c139179427c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Mar 2018 16:47:22 GMT
ADD file:f0c71075c423e62807de9c20f681b444f33a6004df3e1253ffd82fce1354b945 in / 
# Tue, 27 Mar 2018 16:47:23 GMT
CMD ["bash"]
# Fri, 13 Apr 2018 22:18:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 22:18:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 13 Apr 2018 22:19:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 22:20:19 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d54bd45717ea57850c8c560d8a60560da144e91a151c5bdbafda94cd591959e9`  
		Last Modified: Thu, 15 Mar 2018 01:42:03 GMT  
		Size: 37.4 MB (37440725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcb0f6345ed71f3534fbe8d6a2bb94dca5bc8cc92de43213d4d6030f8614696b`  
		Last Modified: Fri, 13 Apr 2018 22:35:13 GMT  
		Size: 8.8 MB (8801531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d65e81999a32f10576b8935a41dc5f3218f6b3d050d0a3c4da931bf5f5166a32`  
		Last Modified: Fri, 13 Apr 2018 22:35:39 GMT  
		Size: 37.0 MB (37049355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32ecedbff0b032574b8c894d43d983ca169c17c069583e24534aa830a33994d9`  
		Last Modified: Fri, 13 Apr 2018 22:36:18 GMT  
		Size: 100.4 MB (100432896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
