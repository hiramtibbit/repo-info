## `buildpack-deps:oldoldstable-scm`

```console
$ docker pull buildpack-deps@sha256:c772ffa13f79b0eafaab35a244208ec73f6e78a8fde0f01b65bc9f9dd6420e3b
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

### `buildpack-deps:oldoldstable-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:148dddbb5c7c1ed1152d58c7e0d7183d0d677a2692e20c3e90c55282f56c94cd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.8 MB (76836777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0a0fccaf12609c1c0469aa3bfd129b08ef3de889a04e4fedc3b55ab6df61eac`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 12:05:32 GMT
ADD file:145cda1c15a6a0ae66272051773cc09811f4ac3c4c4feea888d966d244bafcae in / 
# Wed, 27 Jun 2018 12:05:33 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:51:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:51:06 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 12:51:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:da52c543045989735e85b13ad74f53f9e93ba8697a71306d397ce81402b287c8`  
		Last Modified: Wed, 27 Jun 2018 12:15:25 GMT  
		Size: 36.6 MB (36620254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ee0ea18ec7bde0eb83ac505ddbcbf84e4709915eb05424fd9bee063dbfa3026`  
		Last Modified: Wed, 27 Jun 2018 13:01:05 GMT  
		Size: 5.3 MB (5343302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80f6ba6b386f810ea2629f253ca8c9c760628d325e9532c9dd136357b31ba3c2`  
		Last Modified: Wed, 27 Jun 2018 13:01:31 GMT  
		Size: 34.9 MB (34873221 bytes)  
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
