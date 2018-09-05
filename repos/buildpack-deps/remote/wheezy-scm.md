## `buildpack-deps:wheezy-scm`

```console
$ docker pull buildpack-deps@sha256:f0c878416322326ec3672ca28ae9a5a31fee99c0107efe55e7f95f4241d70c64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `buildpack-deps:wheezy-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:4219ca7428ae2be5136a5ef255b959eda49d6997fadce91a2b69455246d7657a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.9 MB (82930663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cab2e535f156f21a0f0775cabfd8127bcfc086bfd7e86d6f5baf3160ad2883b0`
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

### `buildpack-deps:wheezy-scm` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:b85ad98fe6acbfc003e65280bc28ff5776a7a6b3ad30ddb705c7ed9a328fa88f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.4 MB (79361782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16ae8a7beba595772fe5988b0129acfebbc37aadc68f69b7614313428a899991`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 08:59:27 GMT
ADD file:118f69d2224ba46ac27284a61951715599b15536ec67a7c37bffc85458461cfc in / 
# Tue, 17 Jul 2018 08:59:28 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 11:53:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:53:08 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 11:53:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e68d31fb2a9723e10f3faae2ded8811dca04291d0d555713137ce701438ad772`  
		Last Modified: Tue, 17 Jul 2018 09:11:13 GMT  
		Size: 38.0 MB (37992753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eb66de304bbae7859a5cb34196cb40ff0d7723ec3f22ba3eafef0f3bf932610`  
		Last Modified: Tue, 17 Jul 2018 12:04:25 GMT  
		Size: 5.5 MB (5474809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55cb2094f5cb6826c77adbf9f2e6212f3daaeb84515f7df5ec0866b9f4732ef5`  
		Last Modified: Tue, 17 Jul 2018 12:04:57 GMT  
		Size: 35.9 MB (35894220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:wheezy-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:a4e8cc9001a4bfa15e905ae43118b059e240cb16d458a4dcdbc8e6b192d66b8a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.8 MB (76813978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:936ccaa53e99dac00dc361baf8efa7146f01cab235048d931c52b54d782cee2e`
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

### `buildpack-deps:wheezy-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:3a0d8c58e45cc3b9685e07dbbf8340eda3bae9890d6dd5c7a7e108cad4d73309
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.2 MB (83199580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a90bebfce509df921cf1cfc76b1855a8794e55bc2a4605f1eede002fe9b0e1bb`
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
