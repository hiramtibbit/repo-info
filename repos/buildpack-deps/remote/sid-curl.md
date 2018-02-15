## `buildpack-deps:sid-curl`

```console
$ docker pull buildpack-deps@sha256:afdde22a7827570cdae4d15953ddb97b89218fdd5a729f08b2c53f2b38019320
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

### `buildpack-deps:sid-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:f6a6b904f09a3335a87c576f6612cbe7437167756b55aa41b13b8034fffdf9c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.6 MB (65570452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b220a67e6fec2bad442433d391ce93ca9711df7e075a4391f927540ea89537b8`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 01:54:31 GMT
ADD file:8fa9c86e024ea7f184db6b16d250b62a03f4a3a60aaaf2bd8cc033c817e9477e in / 
# Thu, 15 Feb 2018 01:54:32 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 03:35:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 03:36:06 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:5364a50cbd6ed670b0a6d395e61526831db377e95d195e2557b2397af9773ed7`  
		Last Modified: Thu, 15 Feb 2018 02:23:04 GMT  
		Size: 47.9 MB (47869173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88cbcd6d6fb5ba1a29429cabae2b6c93f13bc6ed37d66980ef59f1c307368279`  
		Last Modified: Thu, 15 Feb 2018 04:28:07 GMT  
		Size: 8.6 MB (8633437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:006c5a073a53d8391a783dd8d6b676cd6eb5de13d3cc9bdc71bc7fbda27c5aff`  
		Last Modified: Thu, 15 Feb 2018 04:28:07 GMT  
		Size: 9.1 MB (9067842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-curl` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:6f5d5da5489e4ed1efaf300f6f44a66606fffb766143aadbc640d8b881fcec72
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62734681 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c96ee6d86f0d69cf658d956e554c9c34cabe3d2d4f3d7ceff54cf9f7f908a6c2`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 20:58:33 GMT
ADD file:107983e3364b7c4bbc033bbf794c7e00825550acf2bbe9841c4b84c7c881eccd in / 
# Thu, 15 Feb 2018 20:58:33 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 21:39:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 21:40:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:d01625705202408c94c6dcf3ed17d16b9856be2b48b91c3e700101a2fa56684b`  
		Last Modified: Thu, 15 Feb 2018 21:08:15 GMT  
		Size: 46.1 MB (46118378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1103338ba972f97c075bc5e2ab9b8b03a059f6396c66bc9188aae3817f325660`  
		Last Modified: Thu, 15 Feb 2018 21:52:21 GMT  
		Size: 7.8 MB (7806559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fc2e6e4400952f6a646419a74b5b3482b874dcf5b7b69695588aaac20e11fa4`  
		Last Modified: Thu, 15 Feb 2018 21:52:20 GMT  
		Size: 8.8 MB (8809744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:deb2ff77bc04783062fb40c012ef824a9db6a8f3253890cbc2378b3fb4582eb0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.1 MB (60098836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f505b3cf3aeec0c7646e56d6c1a5adcba8b0a2f0ded5cb52e1041169dc02486`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 13:29:14 GMT
ADD file:2aea859c0a6778b5dda37d88a2950bd3b4a3f064ba80238942f0fd989f2f98a1 in / 
# Thu, 15 Feb 2018 13:29:15 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 14:11:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 14:11:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:edb17d2272ee1f673a566ef1dad82b5718d41ab85bf825afb024696eb25a6c06`  
		Last Modified: Thu, 15 Feb 2018 13:39:11 GMT  
		Size: 44.0 MB (44041846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c73ad90f7c852d25ebf530b4d6d7fb57b5f346d1eab00797d5ea8a95c1c39668`  
		Last Modified: Thu, 15 Feb 2018 14:23:04 GMT  
		Size: 7.5 MB (7530194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a531aa76f39f2767bd533b1565a152fa6ca6579139f7326a264f4cc8d9e8fa5`  
		Last Modified: Thu, 15 Feb 2018 14:23:04 GMT  
		Size: 8.5 MB (8526796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:70ffe43e6ae954c29b2c0074244b894d8645f86c9c6d7f13fb95f162843d1274
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.1 MB (62095976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f145609085008fc690246065127671f13f0a23da2c7799c430e90f4e17a2624`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 18:26:40 GMT
ADD file:5bb6b9865cc630a171f0b1113659e175ff9d2d99b497bdf10932b9121245e61d in / 
# Thu, 15 Feb 2018 18:26:41 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 19:35:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 19:35:56 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:8dab87746e31cd73bc6c6c954d55ed543b9ebddc4d7d6c9d8961e0f0b0bb6696`  
		Last Modified: Thu, 15 Feb 2018 01:01:04 GMT  
		Size: 45.4 MB (45441133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d53592274d741de4c663dc70a37a7bc2a681be612b5580a664d01a567c0c7901`  
		Last Modified: Thu, 15 Feb 2018 20:12:49 GMT  
		Size: 7.9 MB (7852943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e22fd85086b428b96a9700b3efe5d7074813bd2546ae981d697d9ddeceedee1`  
		Last Modified: Thu, 15 Feb 2018 20:12:48 GMT  
		Size: 8.8 MB (8801900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:0ab0cebc22f95164760c5e6cf39a553f0b7e7738368c8f24810b98d04e4df209
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.1 MB (67110954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31a8fe9fe6882659d957963f5fcb9888e91fbe2b29dac75c0d7870204572b07a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 14:24:56 GMT
ADD file:7e72f60be83facf3a36831facc1a26f572f3ae83fc49b2bc4c8de0b6e3321e84 in / 
# Tue, 12 Dec 2017 14:24:56 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 17:02:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 17:02:30 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:c3cf1d3d69aef55e4aef2c1f0a9455d1dfbbb7ae17d15a0d963e8c55e6e61af4`  
		Last Modified: Tue, 12 Dec 2017 14:58:13 GMT  
		Size: 49.3 MB (49250980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e767ba54897a1df6013ec3b06fd1546d3123979a02ac1f8f8eb0f079fd928126`  
		Last Modified: Tue, 12 Dec 2017 17:33:48 GMT  
		Size: 8.6 MB (8608693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:936341216c1a183dced55abc7be29ddca5b53a3fe1a3d85f00538784bd1a090d`  
		Last Modified: Tue, 12 Dec 2017 17:33:48 GMT  
		Size: 9.3 MB (9251281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:f50f1a8469b0f99b5be760edb461c82a217971055a36b079233e48c36bc02dab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.0 MB (66968697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01a4d429a028f8265340ae480d10120d09d18d72564ea204261f0927b1f9d725`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 01:35:38 GMT
ADD file:47880b96018a20d461394bfee9f42022392b5a715ce6caa05668c81d22bd4348 in / 
# Thu, 15 Feb 2018 01:35:48 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:26:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:28:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:bb0115828b7c31e86fe8af9c575640d37b7fda139063b888abc6d9e3918927cb`  
		Last Modified: Thu, 15 Feb 2018 01:44:12 GMT  
		Size: 49.5 MB (49452997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19b4ca0e4957fe813d9111b3f330183b278dd8533c9283aa11d1304a4305bd6e`  
		Last Modified: Thu, 15 Feb 2018 08:24:47 GMT  
		Size: 8.2 MB (8210641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3705860163816dcaecf267ec2e4ef10cf0abefeeb33cd4678d0c86d79ac89ed4`  
		Last Modified: Thu, 15 Feb 2018 08:24:50 GMT  
		Size: 9.3 MB (9305059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:710322855e4423c5a0652e356874b0acc1e561db88b7ebb4d054985038bd8fff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.4 MB (64445249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:584e01ba7e792f3a85d3e28e1c84e866efe110e60e95f7409d9ec8b52196bf3d`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 06:23:25 GMT
ADD file:044e96e222c822455babaf357ef8db0795de4149889cb81364204dca02b492ce in / 
# Thu, 15 Feb 2018 06:23:26 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 06:52:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 06:52:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:2c81921a603ec79dabbd4e8cddf60c1d80b67ca921cfc969b21b2e2786d10aa8`  
		Last Modified: Thu, 15 Feb 2018 01:14:13 GMT  
		Size: 47.2 MB (47237963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91819694b4f3f99b68e351dce6412264a13c403c821302391b468b46a939bdea`  
		Last Modified: Thu, 15 Feb 2018 06:59:38 GMT  
		Size: 8.2 MB (8167378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2b1294664ef6e52571bc28e685c8bc665f53866e0616d602895c953f3b7946a`  
		Last Modified: Thu, 15 Feb 2018 06:59:39 GMT  
		Size: 9.0 MB (9039908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
