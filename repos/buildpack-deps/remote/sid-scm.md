## `buildpack-deps:sid-scm`

```console
$ docker pull buildpack-deps@sha256:1cf2bc8ebaddd6bc443ce2d91f74bff5bdc237ddb54b1d253a18ba1378a06bd2
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

### `buildpack-deps:sid-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:72056605a63662753452bd5548134dc1667026791d6de5d9b5fd358dee78102e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.3 MB (120270162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3765f6d21ae31ec817292b28ebb266057bdb93e8012f7a71d606c2a2dc640a44`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:23:11 GMT
ADD file:dd0986a5b74404f77d300a1f66ca28f1d810b9563bb0ad60166c42c86a3951a3 in / 
# Mon, 10 Jun 2019 23:23:12 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:26:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:27:06 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 00:27:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:26a3de69c889cd62b7ca9d1a2acfcd53ec6a80624f14b8ac06f623e5e4cd3a83`  
		Last Modified: Mon, 10 Jun 2019 23:27:10 GMT  
		Size: 50.4 MB (50416288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6493fd7de50953fa5b404cfae2364c5ff138cb9192465cac0e40706d8b2042e`  
		Last Modified: Tue, 11 Jun 2019 00:36:22 GMT  
		Size: 7.8 MB (7802781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee800df4f2de854aeb7d62550801c93e12dc2a11e6a763361db7d88c20651319`  
		Last Modified: Tue, 11 Jun 2019 00:36:22 GMT  
		Size: 10.1 MB (10052757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21ca703c0ec03140a4d00b8661ef09017a6a6c8e4d03d851f4f55f5afe8b928a`  
		Last Modified: Tue, 11 Jun 2019 00:36:46 GMT  
		Size: 52.0 MB (51998336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-scm` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:7ce605dfb85f499a02d8ff5f305c5bd9177da1645510738f16ed1a72c63fbe96
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (114964232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:882dbce705ff9b9db680fe5f58c19b3c7dac1dc9c37f1d7275da05a35c57a0ff`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:51:39 GMT
ADD file:5f8cd1843f0af74cc337fee41fb8a27c05328ba7b4a3bafba58f5e536f529f08 in / 
# Mon, 10 Jun 2019 23:51:40 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:26:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:27:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 00:27:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1c264d4806521431a7eb41380bbd57ec7719e567e4c180ac833eb83c4c6ca788`  
		Last Modified: Mon, 10 Jun 2019 23:58:03 GMT  
		Size: 48.1 MB (48133931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02b2114760c34b1f3d97c6b8cbac971e2888b078338d4378ece274f373864e6c`  
		Last Modified: Tue, 11 Jun 2019 00:36:58 GMT  
		Size: 7.3 MB (7344359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b7d6b6e7ff207583df1146f0ef9b4c677aa2bc733147fd7e82636adf1400712`  
		Last Modified: Tue, 11 Jun 2019 00:36:58 GMT  
		Size: 9.7 MB (9742449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d92fae5be1f8202b445946bb8b15932431e278f639a38cd0b7bc334b1794d7df`  
		Last Modified: Tue, 11 Jun 2019 00:37:21 GMT  
		Size: 49.7 MB (49743493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:c568081f27d9a964d960f2c0ef1ea68c7a115897c11e4e8a7956c576bb0eef3d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.9 MB (109902853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eee0bfe6d7b8c7bdcfa8b8d74330b272dc727d0006405148116477a9166ddef6`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 11 Jun 2019 00:00:53 GMT
ADD file:7d67e93cad2e9cf97ccb5ccea431d24a0d9542dddf05cd63187fa9d62b4bcb3e in / 
# Tue, 11 Jun 2019 00:00:54 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 01:05:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 01:06:01 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 01:06:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3ab8e76dd11aca2600e6ee2ee15515d8c054e337b5b731bbe393d6fbe778e5fa`  
		Last Modified: Tue, 11 Jun 2019 00:07:56 GMT  
		Size: 45.9 MB (45891294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64a6ec1ae5787190a16008b977426b2596eb790ef8f702359e24b562174caeef`  
		Last Modified: Tue, 11 Jun 2019 01:15:59 GMT  
		Size: 7.1 MB (7090942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:787a622c44e3de782ec7399057f4cec4eead2bd90324049d1cc952cabd882691`  
		Last Modified: Tue, 11 Jun 2019 01:15:59 GMT  
		Size: 9.4 MB (9398901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed471363a1dae15ca3046e8b87de7ffb49848cb750441236a722652b89e2d3c0`  
		Last Modified: Tue, 11 Jun 2019 01:16:24 GMT  
		Size: 47.5 MB (47521716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:c7cfa8a010b82a63bb0858ddd512c8b03709fd4dea664d382ad9fa008d15a49b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.2 MB (119232017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:729997f04a3ffd6f3dd30fa2b5ce68f887c3435d2903fee9d776ebf56c0473cf`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:40:35 GMT
ADD file:68b10e662aced8b803f6c9bd363289416da46c92903fb76bbfa649a85b7d8ab2 in / 
# Mon, 10 Jun 2019 23:40:36 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:16:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:16:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 00:17:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:4ff0b6eff82f60ec8e5a22c5610424c7c50c25da3f3290acff23fdafea091921`  
		Last Modified: Mon, 10 Jun 2019 23:43:55 GMT  
		Size: 49.2 MB (49193137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2af56acdc1f965b792cf19e86eaab158c5998fa15982c03f3a30f1df429d6b5`  
		Last Modified: Tue, 11 Jun 2019 00:35:08 GMT  
		Size: 7.7 MB (7669448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77cb37e9d0aff1a89d21497dbec3845624e5d13afb929effca495457880a2a4a`  
		Last Modified: Tue, 11 Jun 2019 00:35:05 GMT  
		Size: 10.0 MB (10041779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f24352ba4d1e02e7841be6a3559f4e9ce396a72078f85e88bc50db8ad4a22bb`  
		Last Modified: Tue, 11 Jun 2019 00:35:32 GMT  
		Size: 52.3 MB (52327653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:dad8cdfeb9a7b3cf32ea7730cb138ade6cfc3fe9347ed21c3c69afd4b973d95e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.0 MB (123040577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd8c821ebabea42fc7b5f95b31ccf3aac45d99731165519acf8304a7888a9cf2`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 10:46:20 GMT
ADD file:01b1b621497a25dbcd8a794271b6979630b82c4a01c1df08118866023a64c031 in / 
# Wed, 08 May 2019 10:46:21 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:06:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 19:06:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 19:06:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:5803c24863e6f717e210ea0fe0693c839f73e56f77d8eb4eff1c13e0b1f91412`  
		Last Modified: Wed, 08 May 2019 10:55:49 GMT  
		Size: 51.1 MB (51098329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67024b274725b3f954ad4b1317e8e447443d12b263402410cc207e31c8b9d0aa`  
		Last Modified: Wed, 08 May 2019 19:12:56 GMT  
		Size: 8.0 MB (7955912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a491c323605496d62a0a2d65e3e02c422146d8ae628b5b9f0d772e101e721cc8`  
		Last Modified: Wed, 08 May 2019 19:12:57 GMT  
		Size: 10.4 MB (10395800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6473e1a5423741c9955a4366ba140a7ac25ead8d5fb5aa5d1c2dd508481f66fb`  
		Last Modified: Wed, 08 May 2019 19:13:14 GMT  
		Size: 53.6 MB (53590536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:798cacb510c14c8a94541aa178791269566b2ff94883a2e7d4806f8f85a060a6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.7 MB (130722873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6171af744f9755546eb3965a6675c3a97867dae5c9bbff8485ea2ec380a1fd0`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 08:42:47 GMT
ADD file:c99dbe1b73c7a35a3f4e74bbef02cab9950a1c98285237d8928d02383222cff8 in / 
# Wed, 08 May 2019 08:42:54 GMT
CMD ["bash"]
# Wed, 08 May 2019 11:53:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 11:53:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 11:55:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:63baec0b4ca333a8d154c08de08e8645347b16b8f6a5efb1ba682884b2dba2a3`  
		Last Modified: Wed, 08 May 2019 09:23:27 GMT  
		Size: 54.1 MB (54088145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7adb323188816da0a1566a00fa2d090853cd88a50221cf05ce564abb18707f71`  
		Last Modified: Wed, 08 May 2019 12:21:31 GMT  
		Size: 8.2 MB (8236503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c31b8a22dd3919c0690f6948466c7b8d00c13731fbbed17792c3c48e3933660`  
		Last Modified: Wed, 08 May 2019 12:21:31 GMT  
		Size: 10.8 MB (10793266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd4b80df1a72979920b14a9d71cb491adca6f6ba712c0992e27d5c2bb897f49f`  
		Last Modified: Wed, 08 May 2019 12:22:35 GMT  
		Size: 57.6 MB (57604959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:3c3fdadc31d6d1dec11edd20902e6f8adc5c9bd90da6c67b79efbf118454ae3d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.8 MB (117835913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2715322234c99a6eb2d8423eb819d14a8190a2009aae065851272b4a4de69166`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:42:46 GMT
ADD file:28077e50828d6774a43958ba5a5e3dedc98f956b3e14ea7d505aa4968f5603f5 in / 
# Mon, 10 Jun 2019 23:42:47 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 01:42:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 01:42:47 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 01:43:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:61701f4be07d298ce1009eaf03d90fea9c4f19d146a7badc0e34e63e4c3df580`  
		Last Modified: Mon, 10 Jun 2019 23:45:41 GMT  
		Size: 49.0 MB (48985461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0add1daa1e4badde1e715d2dbd34a7172d241ddf7a438741b265ce7b6b4f3c0`  
		Last Modified: Tue, 11 Jun 2019 01:49:13 GMT  
		Size: 7.4 MB (7369590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d023522355acf85a67cc5b20a3c62e3000552f9e6def8d3ef91fdeb74a670e03`  
		Last Modified: Tue, 11 Jun 2019 01:49:13 GMT  
		Size: 9.9 MB (9939866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e19542962c0c2ffa4a2f211062c0920e45d09c4c3e8d9bcb4257e5153b14347`  
		Last Modified: Tue, 11 Jun 2019 01:49:33 GMT  
		Size: 51.5 MB (51540996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
