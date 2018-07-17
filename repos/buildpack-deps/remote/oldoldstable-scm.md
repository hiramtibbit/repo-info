## `buildpack-deps:oldoldstable-scm`

```console
$ docker pull buildpack-deps@sha256:2954cd35b8128cb0b4b0b489276dd8d13790be19402e9d25a6e4ba0ccb1fc825
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `buildpack-deps:oldoldstable-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:0514887745347ae1aaba4d826f8964a40777364507905c2bca2665cb3a684ab0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.9 MB (82930134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:947c1ed9fb478db6d97c056be6a99f068f1f7e7d9cabd1f5ee944d9ec0bcb505`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:30:45 GMT
ADD file:4c3253aab9345644b963de0904cbc731c05501e6c101d078a25c0ee8452ea018 in / 
# Tue, 17 Jul 2018 00:30:45 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:23:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:23:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 03:24:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7d9e07670407202c9f5ca38e1c74864757e2902b55ccc081bdfed0dfc88c94d9`  
		Last Modified: Tue, 17 Jul 2018 00:47:43 GMT  
		Size: 39.3 MB (39339295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:092b23bdc1e85ba0edecdfe9aad185a22e2a79286692d6c6d1bfbff8bfeeef28`  
		Last Modified: Tue, 17 Jul 2018 04:01:01 GMT  
		Size: 5.6 MB (5630834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3633f3291536c13388c7a19510a863b965d7b069af4d677f252d455bb25779a`  
		Last Modified: Tue, 17 Jul 2018 04:01:55 GMT  
		Size: 38.0 MB (37960005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:oldoldstable-scm` - linux; arm variant v5

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

### `buildpack-deps:oldoldstable-scm` - linux; arm variant v7

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

### `buildpack-deps:oldoldstable-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:b94588b2c6abd7f3615c5522ba8f1319109dfe84a0b8b43f0e6fa4a404232da9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.2 MB (83223954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28c7f0ebade09c047ea5cb975c5d19753ff6b5dbb94063e8cfc172d7e966ebe5`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 10:49:16 GMT
ADD file:d40801b865e65cc6b87379ebf0411c4eab5e5b94c02de103dd8e75ef16aedb97 in / 
# Wed, 27 Jun 2018 10:49:21 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 11:43:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:43:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 11:44:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:4bf8262684df8a752a20a3e6b45f60585658f70a4dc9110885e7456952812957`  
		Last Modified: Wed, 27 Jun 2018 11:14:00 GMT  
		Size: 40.5 MB (40532864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ae33357922f1eb795a8f57f33a3fcc44ea16d1dd566b0ea598524cd9b3f3661`  
		Last Modified: Wed, 27 Jun 2018 11:52:49 GMT  
		Size: 5.6 MB (5640619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:299d492463021ab07688ff783f53e2a6dbeef5388a7178843a29a309e43d7362`  
		Last Modified: Wed, 27 Jun 2018 11:53:20 GMT  
		Size: 37.1 MB (37050471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
