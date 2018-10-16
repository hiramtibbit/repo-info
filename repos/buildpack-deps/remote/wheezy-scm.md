## `buildpack-deps:wheezy-scm`

```console
$ docker pull buildpack-deps@sha256:664b0fa9e551eb4a570cfd430117faf748c605d97e14af85be5fdead1fe00ded
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `buildpack-deps:wheezy-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:ed52189837a00d5d66852c68a68f146603b92b6831ac834e9b4bd2a8d60a4bdc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.9 MB (82930838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c1aeafd6980d423f8b2e63af69fa1f5373613710b73bab613b11f8dbd967692`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Oct 2018 23:26:28 GMT
ADD file:5163482b7e1bd84981ddd31e96b6909dc030ab66fc6fe9f35882cdbe6eaba287 in / 
# Mon, 15 Oct 2018 23:26:28 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:03:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:03:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 01:04:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bd7a7b0b72f4cd60a822a63b8700fb137ad3ec30a83eccba111b3a726c02efeb`  
		Last Modified: Mon, 15 Oct 2018 23:37:05 GMT  
		Size: 39.3 MB (39339774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de91dbcf54a318b72e46b4260799a2062f444dbca8d6a5da7a1f19aaa0b0d8ff`  
		Last Modified: Tue, 16 Oct 2018 01:16:41 GMT  
		Size: 5.6 MB (5630806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85f18cedeeed742edc640e0e9a19a6fc1fb27d3f2c61135558b3bb68375ded27`  
		Last Modified: Tue, 16 Oct 2018 01:17:13 GMT  
		Size: 38.0 MB (37960258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:wheezy-scm` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:76f8b67d0f95e056d40dcc13bb594bbf39a3edfd26b2e8d9a713d3f3cd8876f8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.4 MB (79362889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5d5c3015c3c4f7e51ffebf7b65505b3587a89262b4c07c37a7383ad32a80b69`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 08:57:27 GMT
ADD file:a9547253621c5e98ced338e1642b75814f0a522a1c3c2450209e6ecc86dcf865 in / 
# Tue, 16 Oct 2018 08:57:29 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 10:03:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 10:03:23 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 10:04:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6a0053223045d511a3aeec9d8c41fee58a3e0832612eaf45036ed25b30ffc51d`  
		Last Modified: Tue, 16 Oct 2018 09:07:09 GMT  
		Size: 38.0 MB (37993627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d16d5ade59992a3e1982a9e9afc87c36e969d9d4a040ba7ecd9b4920c5b3e0c2`  
		Last Modified: Tue, 16 Oct 2018 10:12:41 GMT  
		Size: 5.5 MB (5474924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e08e3b693e026aa51b9c4297c7147a7b83a22bac773617af9ed75dc69029ee27`  
		Last Modified: Tue, 16 Oct 2018 10:13:05 GMT  
		Size: 35.9 MB (35894338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:wheezy-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:246a90217cd512e22973bb728e2bd16cca18a6d316f3df2e8ca3c4a74a7f82c4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.8 MB (76815785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5059d606fb9fc2a793a6cbef4c59cf0a5f494c08755b9a0178b4264937e64d4a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 12:09:26 GMT
ADD file:8935227f32a3e91c86efa1305b607c27bdd98b340fdd6ad7342366363999a514 in / 
# Tue, 16 Oct 2018 12:09:30 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 13:03:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 13:03:06 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 13:03:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ec8fef9acc449b28b0c87a81f00dd797c93892b15c350b9cd5f042f27f80de6d`  
		Last Modified: Tue, 16 Oct 2018 12:18:26 GMT  
		Size: 36.6 MB (36620330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:423d0dae488769f63153501873f6501152ca0aa3df6f5980522d7808fcd67edd`  
		Last Modified: Tue, 16 Oct 2018 13:12:18 GMT  
		Size: 5.3 MB (5322000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1008a2c2856869995b73aa6aa38b87dfb2c6a537668746ca6f59d420e0a2d09`  
		Last Modified: Tue, 16 Oct 2018 13:12:41 GMT  
		Size: 34.9 MB (34873455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:wheezy-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:f103bce43e5f7253c7e89771fdd371b4b64d1e69cd35f1ac2f55e73201b65c8c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.2 MB (83200496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90a98fa98c8f799cb5d32ef787a0e7f46c95018c33b256004b5d9e008508fa0c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 10:45:49 GMT
ADD file:f270dc2a82d00313de1f792ee286405bcb5fa0e79dbfa44cf9cb0abc3c42221d in / 
# Wed, 05 Sep 2018 10:45:50 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:48:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:48:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 11:49:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ffdb7073d93a02815a69b2a5396cb5bb86c592de0ac9fa593b1c71b964d536cd`  
		Last Modified: Wed, 05 Sep 2018 10:54:06 GMT  
		Size: 40.5 MB (40532872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8acd7c05e040cecb47dc01599f198cf50fb5360f56dd47d15f7f3593ef86423d`  
		Last Modified: Wed, 05 Sep 2018 12:13:25 GMT  
		Size: 5.6 MB (5617111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e26b7e9156c95df0f1661a78bc6992d35b6f70dbd35e2014ec38f91460b5a7eb`  
		Last Modified: Wed, 05 Sep 2018 12:14:00 GMT  
		Size: 37.1 MB (37050513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
