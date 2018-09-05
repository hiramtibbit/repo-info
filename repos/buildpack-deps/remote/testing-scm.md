## `buildpack-deps:testing-scm`

```console
$ docker pull buildpack-deps@sha256:746e9d345434829bf0483616f4d05af1951a202ac5f77d8708477fd6731d415a
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

### `buildpack-deps:testing-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:79361a0f8111100cdc78e18aa7115c4d08f1fda4ae295fcc707f85a248a7549a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.5 MB (117526147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e92bb03d1b1e82b2ed6314b7c63a03873f2d7ff1f86422e4fd055bd61e116e3`
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

### `buildpack-deps:testing-scm` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:f2a07384183091f793265cc43fabd3bb2a592e18287a2bb203d7f4a816176b72
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.9 MB (111948043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0011787346aea358319059d0478e7c914dbf868d213af8259355abf9fd59025`
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

### `buildpack-deps:testing-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:a43b8b683ea5357a27e7517396f04c7c33f84a154492883a6c618f8c8f0d73ac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.4 MB (106408035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72623d36a1dcb6fb6049e5e5bb632be366daf6ccd1791952bebd8470248f2921`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 11:58:16 GMT
ADD file:cc226c714fd87a8d8245fe4ee250645827c939771c43726bfee439d9410e0681 in / 
# Tue, 17 Jul 2018 11:58:17 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 13:33:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:33:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 13:34:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c1527ffc49aed4bcd81120e0b3877f7d2558c50f41a63a452d74e6060802ea75`  
		Last Modified: Tue, 17 Jul 2018 12:09:57 GMT  
		Size: 44.7 MB (44666680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d49641e095e0e37b790e407cb61be989c6228c6d683bd794873b2ae2a314f912`  
		Last Modified: Tue, 17 Jul 2018 14:02:12 GMT  
		Size: 6.5 MB (6455998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8322b804a049a0f6d7f2e709cec61fc3ef97534e72ad3c85af53cbeb0a9dca94`  
		Last Modified: Tue, 17 Jul 2018 14:02:16 GMT  
		Size: 8.7 MB (8704266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:952f46eb697bc791422ae1a581c31592b65c11f77c99aed4a8c34f77e82993cd`  
		Last Modified: Tue, 17 Jul 2018 14:02:48 GMT  
		Size: 46.6 MB (46581091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:1e4d248fc1677132cde49ca52ba2aaf8b3159d47d56b3caaa77e7c8d251fd0f2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.4 MB (113426322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f0c1c27c9a739b786008b0661f51af6a35620fa8ccbca26977e1ff89af67526`
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

### `buildpack-deps:testing-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:287d6293a040dd88e9c00ac7cac00eb5a86acd6328ebfe8bf5d6bed1a66c3b6d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.3 MB (119340069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82203796451c58e528cebfaf12a574c7cad7608f4f4351c4ad6951d913ebd065`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 10:39:36 GMT
ADD file:43fdced830e4e180f0f86b158bbdc62358f7179645e7a082bdf1168d7efc3e0f in / 
# Tue, 17 Jul 2018 10:39:39 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:13:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:13:54 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 14:14:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1e553b82081a55d71148b2efe6cf89aa4d2ee3cd275d7e6471e85d606fb52b1e`  
		Last Modified: Tue, 17 Jul 2018 10:55:13 GMT  
		Size: 49.6 MB (49644475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1653eb5c6029be943fb36cb7d56b2e7674938a8ee7ad5decc9c3e637db691294`  
		Last Modified: Tue, 17 Jul 2018 15:02:54 GMT  
		Size: 7.2 MB (7225514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11027ab4c0fe5ac8ee975a2d557aedc3b52c8520f72fe77fa3d523a6c36b8d3c`  
		Last Modified: Tue, 17 Jul 2018 15:02:54 GMT  
		Size: 9.5 MB (9528817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3404dac707590f65c0c15cf1352a0f74570f57a3d6d1ee1331765b127f73cc8c`  
		Last Modified: Tue, 17 Jul 2018 15:03:44 GMT  
		Size: 52.9 MB (52941263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:c29771323162681ac7953c3f6a9066f1d6163f1bcce495751fadad9cc9dae020
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.8 MB (123768588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd5deeb1d0a57963d715299da8af618486c32330cde1f109734d095f89693052`
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

### `buildpack-deps:testing-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:3511cf70c04e26fc83104079e2f938d08bb44b0dfe0421a93636c9edb2bb0b48
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.6 MB (114597501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d48773ab5fe871be02af87433d8597511cad2783f1377b532de1afee1b93c35`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 11:41:43 GMT
ADD file:bef24f5a7022c532ee4e83c06a45f245cea83795b0560dabfa96b15f9e414051 in / 
# Tue, 17 Jul 2018 11:41:45 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 13:14:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:14:47 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 13:15:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:85656be978556b52b57e8f832bc69e6a1dfb567d599423c2ea6eb590c1c2112c`  
		Last Modified: Tue, 17 Jul 2018 11:45:03 GMT  
		Size: 47.8 MB (47831178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f3cdae5a2252db542bdab47d4eb4949e8d8dce97e4b345cd45c0a33fcf2acb9`  
		Last Modified: Tue, 17 Jul 2018 13:27:06 GMT  
		Size: 6.8 MB (6799513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4f98dc18255b0fa76868d327cec1baf287cd6ca8f3720e85f6a1722ceff31ea`  
		Last Modified: Tue, 17 Jul 2018 13:27:06 GMT  
		Size: 9.2 MB (9183783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ff5a46ca2a003bdc97dfa16deae6e05c22bf515d417df298a0a8643d5f8893d`  
		Last Modified: Tue, 17 Jul 2018 13:27:27 GMT  
		Size: 50.8 MB (50783027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
