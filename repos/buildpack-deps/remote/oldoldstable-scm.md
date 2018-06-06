## `buildpack-deps:oldoldstable-scm`

```console
$ docker pull buildpack-deps@sha256:fb776f9142e3b5d8e9142ee1691b468157d0f5c2ab0d5e0a4210eb20b69b56c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `buildpack-deps:oldoldstable-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:e48daadb98918a40962a04d5a3e6d7540bac4ac840ec88d0c211aa7582e2e32d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.0 MB (82953396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60a938d645faec2c657dbb7af1584f28f9f817130d614245f780e55b512db9c8`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 07:36:32 GMT
ADD file:344df33141429b2c1c775197ce8c8d620acc38617d2a66ce04d81fb4dc6a7a0e in / 
# Sat, 28 Apr 2018 07:36:33 GMT
CMD ["bash"]
# Tue, 05 Jun 2018 23:23:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 23:23:01 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Jun 2018 23:23:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:fbb9e26f3a43e50b0cb6e1d3ece41f31ed4547f268081650b06c636dec569819`  
		Last Modified: Sat, 28 Apr 2018 10:02:44 GMT  
		Size: 39.3 MB (39339142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b109ced4ec440af5aabc55eacdcfb0866cd29065bfc077c5b6f1860b2c1692ac`  
		Last Modified: Tue, 05 Jun 2018 23:46:14 GMT  
		Size: 5.7 MB (5653932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04a3231ddf38ccc9653fa6a82e9ea32da560c8dc6b973ac72db2135fdaa2848b`  
		Last Modified: Tue, 05 Jun 2018 23:46:41 GMT  
		Size: 38.0 MB (37960322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:oldoldstable-scm` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:80a78a45df814410c019f5140f22c99c99c2d83622acc2424e6b472f659e025a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.4 MB (79382075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c018406315187a875744e27e4881edb1dcf2d533b9a8b268ef7f959f72090feb`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 08:55:07 GMT
ADD file:f14c9bf141bd73b0d286332a29b3c4fa49008071a0fda1f875d7e19ada3513d1 in / 
# Sat, 28 Apr 2018 08:55:07 GMT
CMD ["bash"]
# Sat, 05 May 2018 09:05:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:05:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 09:05:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bce7db7e77372ce5131c53a5f46570bad58af7c504ef2aff30a102963cc0e28f`  
		Last Modified: Sat, 28 Apr 2018 09:04:20 GMT  
		Size: 38.0 MB (37992896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ea51743afebb94d828d917bb6e5abe778cdb088264db6f4b57c878874c68a0f`  
		Last Modified: Sat, 05 May 2018 09:15:47 GMT  
		Size: 5.5 MB (5494717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:836c7cc253e52b61b88b5bc8aa5fb1baab8240c00bf2a9ffe217d75c6e442da2`  
		Last Modified: Sat, 05 May 2018 09:16:17 GMT  
		Size: 35.9 MB (35894462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:oldoldstable-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:f764f5166f5b218f714978c9dcfb127fc76c35ca4d97145f86e337b9c608907c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.8 MB (76835108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f9f145a5e3e3fab3c5d418b181acc68be7ab6574c8830df9cc467ec1e58c227`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 12:07:34 GMT
ADD file:5a45a86b5b17c03113098c8a7a1ee7ebc9c02afa3e33bd3d852c28b6e261697a in / 
# Sat, 28 Apr 2018 12:07:34 GMT
CMD ["bash"]
# Sat, 05 May 2018 12:20:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:20:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 12:21:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:797f0254107c711da2219d2a3c71bb8815ad9b4e665a165c707561344f88a777`  
		Last Modified: Sat, 28 Apr 2018 12:18:06 GMT  
		Size: 36.6 MB (36620143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e45123201f154b4531a783795288be95484aaa0ada297a848c302b5818aeda70`  
		Last Modified: Sat, 05 May 2018 12:39:36 GMT  
		Size: 5.3 MB (5342758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e50fbaef56451be23d791fb6ca7f17729155580a10d440cf3fb61638df4a9b6c`  
		Last Modified: Sat, 05 May 2018 12:40:09 GMT  
		Size: 34.9 MB (34872207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:oldoldstable-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:5ce8df859c6b2bc2cee22ed1262ba3201963e958b0fe3cafcf80e02c78c6f3d5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.2 MB (83223335 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f21570156263ccc85f23af8846ccb50b3243c940c16e42f9b9f74e5f10d3551`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 10:42:43 GMT
ADD file:46c1e0ad2476e944db1cd766469ee6c1f4bcef29abf00562395dea73d0a9c282 in / 
# Sat, 28 Apr 2018 10:42:43 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 11:53:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 11:53:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Jun 2018 11:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:06ea38c8ea05c1dd3cdd1bec6729595bee93baafa39d15ae21be62c9ed53f40a`  
		Last Modified: Sat, 28 Apr 2018 10:51:33 GMT  
		Size: 40.5 MB (40532120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd213fc0d60381c5832a4ef7be6890fcbac92550ad9af181df99f94699a5b7d2`  
		Last Modified: Wed, 06 Jun 2018 12:22:56 GMT  
		Size: 5.6 MB (5640710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4364b29d88c68eec978fa9be44896f43552e75731ce8409e8684855c9ae5e601`  
		Last Modified: Wed, 06 Jun 2018 12:23:31 GMT  
		Size: 37.1 MB (37050505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
