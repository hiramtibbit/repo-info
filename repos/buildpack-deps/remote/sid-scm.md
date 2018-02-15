## `buildpack-deps:sid-scm`

```console
$ docker pull buildpack-deps@sha256:e82064e37fb9ecae22f4ef787294b887caf835dd9d1cd7bc066bd1c447cad686
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
$ docker pull buildpack-deps@sha256:ee49fe323e45b9b3c6c22ac515e1b34b347e5dd2d65d1e630a7dde7f194d0889
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.7 MB (114724554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13222d1492ce2b5b7ff417a12bfb9db5fb8c4248843617293d554b04d47f9a40`
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
# Thu, 15 Feb 2018 03:36:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
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
	-	`sha256:4518366658c8bd7a59f6273c316b46162e0979f5e42d4782326e0947aaf1900b`  
		Last Modified: Thu, 15 Feb 2018 04:28:47 GMT  
		Size: 49.2 MB (49154102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-scm` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:882f2e21f03fe28721a9eb1c0c486fb741130ae71f1b0677f8c0fd1a662f419d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.7 MB (109704970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e2a6d86b31883bad2c9a9dbc6e0e7f9d96d5a1bd5915d3f47db994710990eb0`
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
# Thu, 15 Feb 2018 21:40:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
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
	-	`sha256:b0aa7eb9a0a27ecfb1e071729afa545af667d355a34e2a1ff23980928400eb55`  
		Last Modified: Thu, 15 Feb 2018 21:52:48 GMT  
		Size: 47.0 MB (46970289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:e7e8394404487161fa032530876d0d719a10836797769a738015ae50ca900f2b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.1 MB (105068847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:233ee0f9244665075ae467e8925651bb95aa87f054715894016597c9cec7f3bd`
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
# Thu, 15 Feb 2018 14:12:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
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
	-	`sha256:6d25c78e3af744565a709949cf449c4a7cddf89eee25cfba16d7dc0b755e154e`  
		Last Modified: Thu, 15 Feb 2018 14:23:33 GMT  
		Size: 45.0 MB (44970011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:4cd2b8c27103db6d54455b6f16d0e47e07126b2daaae528d708a03ab569a3c43
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.5 MB (109538731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74f7aa2a8a2facfd5b7dc2d597b4e75aad997586b6db0682d0af9f0b8aecb9ff`
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
# Thu, 15 Feb 2018 19:37:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
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
	-	`sha256:e68c454e2cd7dd07919afab7476126c8504b78f11c02a5d53f8fb7041ab96425`  
		Last Modified: Thu, 15 Feb 2018 20:13:34 GMT  
		Size: 47.4 MB (47442755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:98fc22f5d2f2a73ce6e1e7c788ceef82d898ca05abcc06224b2e14c4efe71a5e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.3 MB (117339926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac35ccf23c678518c658ff01b3d73a40d3bbfbdac294c3235c88c9016c2c4836`
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
# Tue, 12 Dec 2017 17:03:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
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
	-	`sha256:fbf1165f2ef33ed9e795182bb0912cf7dd9ac26b5bd6e12fb53b9c469c2f832b`  
		Last Modified: Tue, 12 Dec 2017 17:34:24 GMT  
		Size: 50.2 MB (50228972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:9466a6eb8e70f742ad0df9299ffe2e5ddc6142698d49888ef37402320876171d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.0 MB (119018743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05c85d5a2fa0cc0a928b233f33bf930fe66da0241a9ccf4435f49d4c1a79704b`
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
# Thu, 15 Feb 2018 07:31:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
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
	-	`sha256:6ded6b910a7220eb72b1522521396a04bfcbbadec60d0c5248cd8029cb13de1b`  
		Last Modified: Thu, 15 Feb 2018 08:25:24 GMT  
		Size: 52.1 MB (52050046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:554804d5da5da20d128cd757cca675a273eba29f916f3e2876e4dbe4c0b64696
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.6 MB (113568048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2774ed4752da2aad4fc38bb8ffdeddacbefbae59672ec6bc48b38008d7a9a98`
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
# Thu, 15 Feb 2018 06:53:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
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
	-	`sha256:07fad9e70f14aaa60a609ae652863369ab260bc319dc6853fa496c9d22f54fa5`  
		Last Modified: Thu, 15 Feb 2018 06:59:55 GMT  
		Size: 49.1 MB (49122799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
