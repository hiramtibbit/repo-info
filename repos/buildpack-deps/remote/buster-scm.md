## `buildpack-deps:buster-scm`

```console
$ docker pull buildpack-deps@sha256:be73f146da9251309b4d0c0f71618f86c9f170adece053ba144e3a8c4fed2c3d
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

### `buildpack-deps:buster-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:7a007042bab30953fff78065d0506bbdbe850797663c32737e417544746caf08
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.6 MB (114637959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:235176e143743c13f2dde2e9a01ce7b9d4dd252969ee9f24dd7df8468d6033a5`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 01:40:56 GMT
ADD file:e67b507f884b4af477ee927373c5138566e09b4ced5131bf4ad6017cfe300eaf in / 
# Thu, 15 Feb 2018 01:40:56 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 03:21:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 03:21:49 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 03:22:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:727adeec79df0f1e56f928e5762e52c324beb4d7f9abdd5be910b59f8eb6fc9a`  
		Last Modified: Thu, 15 Feb 2018 00:44:09 GMT  
		Size: 47.8 MB (47761075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc38bd31422b360d6bab03fb95942a6743c7caf1bab907f4cddfcb4bec48b722`  
		Last Modified: Thu, 15 Feb 2018 04:20:21 GMT  
		Size: 8.6 MB (8633258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0a928e393c3189de478d306210f61b19abd50c4b35486ffe7c64fc6311a8fa6`  
		Last Modified: Thu, 15 Feb 2018 04:20:20 GMT  
		Size: 9.7 MB (9668086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:108d2181a16c5dc9f1dbbefb2d3ba1517f5ebf8ec8407b37aca926c5bd80fb98`  
		Last Modified: Thu, 15 Feb 2018 04:20:57 GMT  
		Size: 48.6 MB (48575540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-scm` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:febfe75de9f572d7b45d3ca46efcfb18781c15800226fb1dc8b92f9ce33f1fa3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.6 MB (109641022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ba1a6f69c030d208ede2186699c5d58462e1c01a0382ee0b3c83b026fdb0f91`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 20:55:16 GMT
ADD file:537e06628ea028f52021a9aad51720850dc94d2a86621b2fb6a53d5bbd6f6fa5 in / 
# Thu, 15 Feb 2018 20:55:16 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 21:31:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 21:31:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 21:32:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:4a624312c2db7430c9bb92ed09f45fa96e0a937496b9d3534a7abaacfd9b9b21`  
		Last Modified: Thu, 15 Feb 2018 21:03:36 GMT  
		Size: 46.0 MB (46009547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:772905dc01a504ecb4b55afc2a9002cfb66d11901323cd85b039c07fa9c36239`  
		Last Modified: Thu, 15 Feb 2018 21:48:47 GMT  
		Size: 7.8 MB (7806228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:760344f39f0af9481ebd2a12ab9dd05271cf9464278e17baa373c3a127a34c15`  
		Last Modified: Thu, 15 Feb 2018 21:48:47 GMT  
		Size: 9.4 MB (9393988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cc04da9b702fbb79809e9aa4f210271e7f766d4ddce4fa4b2f22c484a57bde9`  
		Last Modified: Thu, 15 Feb 2018 21:49:14 GMT  
		Size: 46.4 MB (46431259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:f94b4f17a0384ed25fc9acfc8bbce6fc04705b040c73ca7f54c1875d7986adfa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.0 MB (105008082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7050abcf5a057ca54369f09363e6abc63de3e69198c84d5973caf8702a5e5d46`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 13:25:43 GMT
ADD file:d4387231caa2bf24063b6d2af3c587e0b166f296c09c90285387b8f06b0d9f09 in / 
# Thu, 15 Feb 2018 13:25:44 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 14:03:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 14:03:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 14:04:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:271e44b698072b80a2cebfd4e5c4c5781feb43ce99488c09553b71463b7333e5`  
		Last Modified: Thu, 15 Feb 2018 13:34:45 GMT  
		Size: 43.9 MB (43947835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37a238f4ae9df4d90d98b0618ffd716b2245153ad370e9d892a1b586660e7db1`  
		Last Modified: Thu, 15 Feb 2018 14:19:59 GMT  
		Size: 7.5 MB (7530059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4e354da6a28268c5db70af7c20c8fe1ec30a4a1d2bd663c3752b0d966389af4`  
		Last Modified: Thu, 15 Feb 2018 14:19:56 GMT  
		Size: 9.1 MB (9084344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccda853d4a99e70eb14fcc2f52455dbbb99ad66dac60198b28aeed3e5c896734`  
		Last Modified: Thu, 15 Feb 2018 14:20:24 GMT  
		Size: 44.4 MB (44445844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:033c65d8bb9b44e3eddee4df39eb44e4e11d29364d9ae050692d5af34b1919ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.4 MB (109420561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d654fa1a4c31c666493ebe85e57bdded37d68383be15d746e38d8521a7b9b22`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 18:22:51 GMT
ADD file:d842c4bf90faf7b91eeae1616165088f1009889ef762a9838550fca545c07069 in / 
# Thu, 15 Feb 2018 18:22:52 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 19:05:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 19:05:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 19:07:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:433260e5c2bba1495fa97c880311afc6e532fb5eb07fc14303eadd4c29aa9e14`  
		Last Modified: Thu, 15 Feb 2018 00:44:03 GMT  
		Size: 45.4 MB (45360936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b049914fbc673d288eceb2ca12c7c036db64dbeec4e9c3ee1cb2fdcc1c425f`  
		Last Modified: Thu, 15 Feb 2018 20:08:34 GMT  
		Size: 7.9 MB (7852698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7807614e85c6969ba002a4f3099c44f8379c5feaf2110699371cf730edb9adae`  
		Last Modified: Thu, 15 Feb 2018 20:08:34 GMT  
		Size: 9.4 MB (9380735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6043373551e16331500d1bafcb9ffe3fdd145105e97a5bf87623ca9379a3d3c`  
		Last Modified: Thu, 15 Feb 2018 20:09:11 GMT  
		Size: 46.8 MB (46826192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:98bc23dc0afff5e2ceeb7f641e85cb9af9e84d87d1e7024033fda7aa081db25f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.1 MB (120141588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa7ea702eae6b15a5b4b97d31bc98458b5ed52eb1de0395097faa548ee51201f`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 14:32:40 GMT
ADD file:3c01fc209b7f339c808191aa480867f0b99e4accf7ef1462f8349f440a20ab7f in / 
# Thu, 15 Feb 2018 14:32:41 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 06:51:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 07:03:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Feb 2018 07:40:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6f1e2ef09ccab2284fed00608cbd492f1b548c36e40555caeb9fc07f55ccb93b`  
		Last Modified: Thu, 15 Feb 2018 00:43:51 GMT  
		Size: 48.7 MB (48716336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b20316313277691ccc8b35bbd735daf23d96848633d4716f31640518fd2d32f3`  
		Last Modified: Fri, 16 Feb 2018 10:39:14 GMT  
		Size: 8.6 MB (8607086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed9135cebb062a71fb97e6aa68c8a1795b667f7ec722ee92ecd70210a629e20`  
		Last Modified: Fri, 16 Feb 2018 10:39:14 GMT  
		Size: 10.0 MB (9969430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e9da33a3c575a8da04806e82b5c5350f3c6794d1d7b67fc42b86f012b27f647`  
		Last Modified: Fri, 16 Feb 2018 10:39:54 GMT  
		Size: 52.8 MB (52848736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:bb4e5d73865ea27084e743b8ea9b9f9d2a8e9959aceffe518955dbc736e5366e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.8 MB (118755644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74739443673f92e7892440a8c4140015e57dcd95f22a68821040c495c945c5a9`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 01:32:27 GMT
ADD file:b0bdf0f99b98a611eba542b83ea499fcfbdb86e6c0530dda9eb3a4df46a9796d in / 
# Thu, 15 Feb 2018 01:32:31 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 06:50:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 06:50:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 06:53:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:4236a71a9b358d4c1cbcd9fe43305ed6f0f87f83d8f20dc40805dc14010034e0`  
		Last Modified: Thu, 15 Feb 2018 01:41:05 GMT  
		Size: 49.4 MB (49396845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29817c82e70c75aefdef135d7dfd6647c16b3af74c5a2a46b7e7a849755dd059`  
		Last Modified: Thu, 15 Feb 2018 08:20:20 GMT  
		Size: 8.2 MB (8210379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4ae402dae824819ae434a25840f5b483329048af4cde754e291e8ee28b96ca7`  
		Last Modified: Thu, 15 Feb 2018 08:20:20 GMT  
		Size: 9.9 MB (9919464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baab155cd3230efe7325635fc8a6a94e326f968254f3c8d5177f3f3d6f7c89b4`  
		Last Modified: Thu, 15 Feb 2018 08:21:00 GMT  
		Size: 51.2 MB (51228956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:0e3d1f6a3ce5e1c584326335ae6cd3a2963f097d2132c78f82da1da426b59d89
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.6 MB (113558815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c095a09c270ae1fbddf6d777bd0ba02e3ee08df4c850853db9a01a8cef6da7e`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 06:22:18 GMT
ADD file:027cdb314217d87072a8fd61b4384442a010441729e00f3efbf19f5a928f2f4e in / 
# Thu, 15 Feb 2018 06:22:19 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 06:46:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 06:46:56 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 06:47:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8977dea778d7efc503906ac6521c5695778a9b68ef99acdf1fc99f26f3902463`  
		Last Modified: Thu, 15 Feb 2018 00:47:54 GMT  
		Size: 47.2 MB (47225669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78d107f87215307e36c89cd96da89dc083df29a6e0a0a505179de07a3c15f3b2`  
		Last Modified: Thu, 15 Feb 2018 06:57:31 GMT  
		Size: 8.2 MB (8167319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b0b55fb49d6abcd0b8ef2e3790c7bf62fabd9079020a16031cee8e00a0eb83e`  
		Last Modified: Thu, 15 Feb 2018 06:57:31 GMT  
		Size: 9.6 MB (9633342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:704a7c20119af8a8b123aa0e80665de7ae1cdaa6a9ff981e89aeacbb6a5020bb`  
		Last Modified: Thu, 15 Feb 2018 06:57:50 GMT  
		Size: 48.5 MB (48532485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
