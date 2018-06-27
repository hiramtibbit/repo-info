## `buildpack-deps:wheezy-scm`

```console
$ docker pull buildpack-deps@sha256:fcea782e4c47251d95874ce74d05ab9ba66a47cf8e8c185faf836e9b6e956155
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `buildpack-deps:wheezy-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:0c158ff14c293c1ed2ba682afc376fdc2021e3a4baab546500c662a8d7657e7f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.0 MB (82954170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34be40996aea075e51c596a8fc5be5b59822de3cb457e4f72295caa58e84f5d0`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Jun 2018 21:27:10 GMT
ADD file:0fb413f349ae38e7b6ee45b91e11c24415dc0dc745ddbf28738c0726abe4ff0e in / 
# Tue, 26 Jun 2018 21:27:11 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:19:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:19:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Jun 2018 22:20:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:5d29656a35610f89548ba9ce86485e3223cec0aae2d94325f204a453a3251bdd`  
		Last Modified: Tue, 26 Jun 2018 21:40:36 GMT  
		Size: 39.3 MB (39339692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62ef65cb1043a7d8f6ed7a0c8bda240a0d99d774430cc26c48f29c6ba00e6d03`  
		Last Modified: Tue, 26 Jun 2018 22:33:11 GMT  
		Size: 5.7 MB (5653839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bca2343476828d0b5480815c18503b5c4a0fb5de6c3429ce7867c49cd985af09`  
		Last Modified: Tue, 26 Jun 2018 22:33:47 GMT  
		Size: 38.0 MB (37960639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:wheezy-scm` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:f5681cfde4e561592430af45c46c02623c9c56e6b26d34082f002d17a916a202
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.4 MB (79383242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25d4ae04f9263f2d7e09ce5ade4affc8eac3153eb4cd11cde4b232c4b57f35f8`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 08:55:52 GMT
ADD file:ed02e823bde1bd9dcf3c03d14f842878217130572ff188cbb2d6db34b70a979e in / 
# Wed, 27 Jun 2018 08:55:55 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 09:41:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 09:41:08 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 09:41:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3e2e9eb80c7a243dca0bd760ee64e7490f7c809d350755e29c809283610a49fd`  
		Last Modified: Wed, 27 Jun 2018 09:05:27 GMT  
		Size: 38.0 MB (37993559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ae8917d5a6ff5ae550d84604307c90680735d174a789df8248ccf7f46626309`  
		Last Modified: Wed, 27 Jun 2018 09:50:34 GMT  
		Size: 5.5 MB (5495174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e5eaf3b760fb4517899ede99da0f677e3e20c8df14619830f4c8eb8505b67e2`  
		Last Modified: Wed, 27 Jun 2018 09:50:59 GMT  
		Size: 35.9 MB (35894509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:wheezy-scm` - linux; arm variant v7

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

### `buildpack-deps:wheezy-scm` - linux; 386

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
