## `buildpack-deps:oldoldstable-scm`

```console
$ docker pull buildpack-deps@sha256:1d2efab74cc3130cf720e958b66616684519717fed0fc0045b1a8a34f93e5211
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `buildpack-deps:oldoldstable-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:9c060319d70d9ced156bd2c9f307759379937703fd8c9cb1274594e5bc7feb77
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.9 MB (82930921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0c69bcb73be31c4642e97756a94a2424746746eeeb11a4025050fd552ac5dac`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 03:31:30 GMT
ADD file:8cf36f5c76ea3119278e91016148dd680311000ba59b5fa986b707f000a40906 in / 
# Wed, 06 Feb 2019 03:31:30 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 05:54:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:54:23 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 05:54:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:2eaed095b90d08fb6a1870ea73a7bff5cd989c5969dd5ed3be88483796869559`  
		Last Modified: Wed, 06 Feb 2019 03:36:56 GMT  
		Size: 39.3 MB (39339703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f264f3025467da5cd3ec491ece816f7ef4ccf594c76983be21583079ea66d819`  
		Last Modified: Wed, 06 Feb 2019 06:03:11 GMT  
		Size: 5.6 MB (5630918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ab1300d9c9af8afbcc74112dce265fd9bd1ca13b3d6adabcc431d73dca36fd2`  
		Last Modified: Wed, 06 Feb 2019 06:03:27 GMT  
		Size: 38.0 MB (37960300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:oldoldstable-scm` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:60647ef88a1f11f9d85735f66ace752d7f2092aff76865ab14dc2e1c334d4249
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.4 MB (79361494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e6874c5ffc3ba95df2068c5d9e6ffe4bde21ffb1917a0d34d4d35780cb78157`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 09:57:04 GMT
ADD file:5db8265128cc6f9de34a940ba6318ea3567aae52b29fe6c0c5941ed6e43adfd1 in / 
# Wed, 23 Jan 2019 09:57:05 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:42:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:42:30 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 10:43:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b9282fffe21aff109811dbcca73fb778b30eaac4a389b4cfbfe8c02b1ac5202d`  
		Last Modified: Wed, 23 Jan 2019 10:03:42 GMT  
		Size: 38.0 MB (37992343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ddae2efc3670f393a73004af5cbc8cd2dfbef685e8c7d81728ab9d3592133f`  
		Last Modified: Wed, 23 Jan 2019 10:51:01 GMT  
		Size: 5.5 MB (5474953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:827fb68fc0ffd619697e55a33bc7a9f7f816b717afc28c73eada67ca0f09e964`  
		Last Modified: Wed, 23 Jan 2019 10:51:19 GMT  
		Size: 35.9 MB (35894198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:oldoldstable-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:617444bce8b67dd04fec32dabcdfba6e5eab351990bba92ca6131b1821f6f71c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.8 MB (76815304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44d16479e75a55b3cedb3152dcd5b25224ae4324d960838d1186e7e655ff351a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 13:07:15 GMT
ADD file:7d9aad6f799a97cd501266efa4ab42054317783776b828b81c34db3db1e5e1bb in / 
# Wed, 23 Jan 2019 13:07:16 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:51:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:51:08 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 13:51:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c65553b75dbe6d4ce3a95ea4c52c0cfe2e8c6ef00067b6527b4efece00329f55`  
		Last Modified: Wed, 23 Jan 2019 13:13:43 GMT  
		Size: 36.6 MB (36620004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb656d8feea4a9242a115887e1ebcd99dcb6137637ef4b821e0f5efe0e85bb57`  
		Last Modified: Wed, 23 Jan 2019 14:08:19 GMT  
		Size: 5.3 MB (5322069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae4d0e37463cc5b5de0ce13f4237d3410aef8910a1afffff710ab0a43a81e02a`  
		Last Modified: Wed, 23 Jan 2019 14:08:38 GMT  
		Size: 34.9 MB (34873231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:oldoldstable-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:9e8f89b1decdf2435af38cbdc921f1141e9c28743d135faa9e7e16174ccddacf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.2 MB (83200093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d72a754b87c0b27b9d0608dd920b1dacdd37d3f5bcc13a11a6ad840ce9449282`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 12:02:25 GMT
ADD file:910d045517957d8359d9bcd1985d7df82d86a3cb0e46982c4cfa6b23d2dce71a in / 
# Wed, 06 Feb 2019 12:02:25 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 01:53:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:53:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Feb 2019 01:53:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ba276270fbef4fd9e0a45784fac937998003a61036beee7edac67441ee2c0d66`  
		Last Modified: Wed, 06 Feb 2019 12:09:27 GMT  
		Size: 40.5 MB (40532776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b6c6f9c54ff97785e18abd891b58cba86023f9f602d2b8e38c28ead86494c72`  
		Last Modified: Thu, 07 Feb 2019 02:04:29 GMT  
		Size: 5.6 MB (5617050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:effeff986bd306527e4361f4810023b2d8149cd5802a7a3f50bdc86461450606`  
		Last Modified: Thu, 07 Feb 2019 02:04:48 GMT  
		Size: 37.1 MB (37050267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
