## `buildpack-deps:wheezy-scm`

```console
$ docker pull buildpack-deps@sha256:ee1c9ff9f71d8c186762dea711ed9666bbb2af9b982cd96bf915ef39fda4a33f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `buildpack-deps:wheezy-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:46b813f8cb8c2c2f29378f14eb27e78208ff4fafb67e448d4ba6be3919537f0e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.0 MB (83019375 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2300c7623500299ffad54ba6b4b1cb8c0220f3abb511658e232214390f1477d7`
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

### `buildpack-deps:wheezy-scm` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:c15881c4c3b41559c6d9d2688e332614169de6c5f72701e2694105a9c8f014e8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.4 MB (79362747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:343d8a655995a899bc2b797691956f59d2865dfb9583d63e484b23c7e06091b8`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 08:55:07 GMT
ADD file:f14c9bf141bd73b0d286332a29b3c4fa49008071a0fda1f875d7e19ada3513d1 in / 
# Sat, 28 Apr 2018 08:55:07 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 09:34:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 09:34:28 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 09:35:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bce7db7e77372ce5131c53a5f46570bad58af7c504ef2aff30a102963cc0e28f`  
		Last Modified: Sat, 28 Apr 2018 09:04:20 GMT  
		Size: 38.0 MB (37992896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76e56abcdbdb80f5c5f51eaf783994835f3876b15ba46b018e4d4f16625b8e7e`  
		Last Modified: Sat, 28 Apr 2018 09:44:04 GMT  
		Size: 5.5 MB (5476750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55ef24159432ce63f19f4521578f8d74f8546b40c787f57373537588032ce3ba`  
		Last Modified: Sat, 28 Apr 2018 09:44:33 GMT  
		Size: 35.9 MB (35893101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:wheezy-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:a716818f6d0b402555a85f2132ebce3db82b3515c96e36b4a225e4d13f0aeadf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.8 MB (76814421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c05c1fa25e8352de9fc45426ebb966d4075a60d0a29c1f8045a1c2f9d3b66be`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 12:07:34 GMT
ADD file:5a45a86b5b17c03113098c8a7a1ee7ebc9c02afa3e33bd3d852c28b6e261697a in / 
# Sat, 28 Apr 2018 12:07:34 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:49:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:50:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 12:51:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:797f0254107c711da2219d2a3c71bb8815ad9b4e665a165c707561344f88a777`  
		Last Modified: Sat, 28 Apr 2018 12:18:06 GMT  
		Size: 36.6 MB (36620143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcbddbbaf331c5cd4c7b0ea190608ccade0c17649efedb47464de50472a4c94b`  
		Last Modified: Sat, 28 Apr 2018 13:11:08 GMT  
		Size: 5.3 MB (5323244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f294e7d3bd89552f6e34d58e55638d1468f3ccef1d0be25c2b03d58675f2de3`  
		Last Modified: Sat, 28 Apr 2018 13:11:44 GMT  
		Size: 34.9 MB (34871034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:wheezy-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:0cc6987d21bf06b3e3e5f35c1a2b3d587f143fac15719068a2f9dc1c492334db
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.2 MB (83199714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:949653385a1315ec8b16650befc7854ba69485d720951656bc7981b7ced5b75f`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 10:42:43 GMT
ADD file:46c1e0ad2476e944db1cd766469ee6c1f4bcef29abf00562395dea73d0a9c282 in / 
# Sat, 28 Apr 2018 10:42:43 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:22:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:22:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 12:23:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:06ea38c8ea05c1dd3cdd1bec6729595bee93baafa39d15ae21be62c9ed53f40a`  
		Last Modified: Sat, 28 Apr 2018 10:51:33 GMT  
		Size: 40.5 MB (40532120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3cb17e559c7c9eadcee85fdd25d7aa19613e943a78e3a6ded33f5e527fb6220`  
		Last Modified: Sat, 28 Apr 2018 12:49:55 GMT  
		Size: 5.6 MB (5619449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a662e61da0c6d9b18ce3ff7c98dea1bda06d42e89e5af284f0207490fc4fdbe8`  
		Last Modified: Sat, 28 Apr 2018 12:50:23 GMT  
		Size: 37.0 MB (37048145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
