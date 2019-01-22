## `buildpack-deps:testing-scm`

```console
$ docker pull buildpack-deps@sha256:41ddc0f7e2fe465dc2d945d00d0576b745a418a789bb0583ee8785ef84c19bc4
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

### `buildpack-deps:testing-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:dc22583dddf8adf843afb032fa6b19fc52fc2988385d6b16c5e437e20d879ca8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.6 MB (119621884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03fd995788d6c501bed213fb92aba4db069899c22b829c6775d129d135263545`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 19:21:09 GMT
ADD file:a115ae9594d00c4e30cd53dc533d6ff73497df07db2fc8c2be475a520021fdbe in / 
# Tue, 22 Jan 2019 19:21:10 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 19:54:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 19:54:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 22 Jan 2019 19:54:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:28a5848cd0d3a3c70f45dcd97a5eb29c40559b3cc0cf9e7c1ab839cf23f55034`  
		Last Modified: Tue, 22 Jan 2019 19:34:10 GMT  
		Size: 50.1 MB (50087426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95960608af26d099a4dcc779a2f1a4ae92679c2f05048c17c04bf1404670f8b1`  
		Last Modified: Tue, 22 Jan 2019 20:10:11 GMT  
		Size: 7.8 MB (7802403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b7d24a9aad2a63dd099c044fdf94de4254bc2d3d17bca727995aea2008db610`  
		Last Modified: Tue, 22 Jan 2019 20:10:12 GMT  
		Size: 10.0 MB (9966116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30ed341093834585814427030329d1ff8ad99b022887e76ec5cbe1f78e2fd248`  
		Last Modified: Tue, 22 Jan 2019 20:10:28 GMT  
		Size: 51.8 MB (51765939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-scm` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:56c63ec7986b83f6508b2df780fe26f8f224f659609ad9e737b3a7fb282967a0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.7 MB (112720966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf851a69cecdf5d7ed6056a108a0132071e0c54bc4d7806d88aa84ded0f8c0cb`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 09:49:09 GMT
ADD file:527782f81b2cdaa7fe8ca73877015dc24b1f39b81cc058bbe612951c6d4db6b9 in / 
# Sat, 29 Dec 2018 09:49:10 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 10:20:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:21:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 10:21:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:35f77895ee9a6ccd0991d1a079764c1e0777e66a2cedb268252991c107536afd`  
		Last Modified: Sat, 29 Dec 2018 09:59:19 GMT  
		Size: 47.2 MB (47191401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2aa3ab7ab6977e77ddb108c16946c1635234f10fd3608909b58d817be0eaf62`  
		Last Modified: Sat, 29 Dec 2018 10:39:39 GMT  
		Size: 7.3 MB (7291594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4752256e8b15143f87ba231474c7f1d1229dfd1f797ceb91fca1b9645306525`  
		Last Modified: Sat, 29 Dec 2018 10:39:41 GMT  
		Size: 9.7 MB (9662214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86a8b87373a24487f5f288b1dfc7e3471fa9adfc2a71ebc40a375a3ca4a62b1a`  
		Last Modified: Sat, 29 Dec 2018 10:40:04 GMT  
		Size: 48.6 MB (48575757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:d9389e044cc44a09ee0483f97335b4d019d29c0d9c293adf48b03a442e34e0cc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.8 MB (107769996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ac758f02d4f0bff0399d17a6b586efbe93f49976172595017781d60b6fde479`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 12:58:06 GMT
ADD file:7545bfdc8164196c74f5a9b89bf90bdc289896c35fedebcd70dfa20697523258 in / 
# Sat, 29 Dec 2018 12:58:12 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:22:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:23:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 13:23:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:076ec5e52590bea3da2fc3268ef35580750b2645bee5651aeb6e1dafec22d2e6`  
		Last Modified: Sat, 29 Dec 2018 13:09:01 GMT  
		Size: 45.0 MB (44990109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a1a6c8210ec144d056aa2b662c68b44718bb596836438fc8b577e5359086b97`  
		Last Modified: Sat, 29 Dec 2018 13:58:18 GMT  
		Size: 7.0 MB (7037532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d998ce338a6512143ad82706781ac2c77325baf4c7fe9cd1c2f09630900e8db2`  
		Last Modified: Sat, 29 Dec 2018 13:58:18 GMT  
		Size: 9.3 MB (9319014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:833b66e79005eaf0bfabf5fef8c3b889a8cc8be75bc874e5731fb1fa268b3d16`  
		Last Modified: Sat, 29 Dec 2018 13:58:41 GMT  
		Size: 46.4 MB (46423341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:b09ea92d50b98e5be5d2b13e1e7f6c7e69bb5c92bb708239185338cb124e4177
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.8 MB (116836704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d79150cd579417af986f5bc77b35c6127794224d5177ca4b55bd4c16b57b2af4`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:04:33 GMT
ADD file:6458136999602806c92db4944fc08c7faf3443c54c332169082f6fdee66da894 in / 
# Sat, 29 Dec 2018 10:04:35 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 11:11:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 11:12:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 11:14:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:fbf13c7901572a3b768b8b17d0b180c68b5cc18cc38b18bc03085795c54306b2`  
		Last Modified: Sat, 29 Dec 2018 10:12:23 GMT  
		Size: 48.1 MB (48142292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8586c0aa3df61b03d3d55e529bd2fa251383ddd7818f84ce81baadb0bf1cce0c`  
		Last Modified: Sat, 29 Dec 2018 13:04:49 GMT  
		Size: 7.6 MB (7605516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5be9dd83a37ec8a95fc616190c20934ba275ed6a83854458d18e25e6292ab261`  
		Last Modified: Sat, 29 Dec 2018 13:04:46 GMT  
		Size: 10.0 MB (9956929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca0af33c27d96f0bffcb3e5a1a7d6002233d6fe4d2abb6078ac50fb8cdcee639`  
		Last Modified: Sat, 29 Dec 2018 13:07:39 GMT  
		Size: 51.1 MB (51131967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:7f8d572471e1b896c98c13658856c23dbec50b283eeee6b81f27686f85496eec
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.8 MB (120765853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10e1bac34c5854d972978047e67f58b8a847bc912b106cf9a2af105029e19dc6`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 11:40:32 GMT
ADD file:a8a6a48a118b132465dbf485a64c9299f1fe4b027ba2a5217493ad3ff35f04ce in / 
# Sat, 29 Dec 2018 11:40:32 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:33:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:33:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 12:34:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e0906beaed8ec04694fd7fb581653f35c472ccf1d754ee6a2b2d54346f145ff6`  
		Last Modified: Sat, 29 Dec 2018 12:05:22 GMT  
		Size: 50.2 MB (50221713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:360041f955b3bff9bde4900a8b2c1986be70d8264e2fb836bf33a2a604520f5e`  
		Last Modified: Sat, 29 Dec 2018 13:18:49 GMT  
		Size: 7.9 MB (7890256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:202275563a679edcc99558d9374587d2814e39a6405992dc962bfd4c845f672e`  
		Last Modified: Sat, 29 Dec 2018 13:18:49 GMT  
		Size: 10.3 MB (10311294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e6e72abfe5d96447775b1cf5900fe4fd72d46129966ca81ac594913f3c0882e`  
		Last Modified: Sat, 29 Dec 2018 13:19:20 GMT  
		Size: 52.3 MB (52342590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:aaa756ba8ac1ce95211cebdcb8ab34e8d903cd90fdd64702799cca12e7b3ae55
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.6 MB (128572783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c301d933a8682756fb0a16d206549cab8b8db111d3a3df60fa3ab09bcf51b8af`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 09:19:57 GMT
ADD file:68cd6aa21cf032f213919e34cc194b6f56f4039abd641d1884e1817c86577aa5 in / 
# Sat, 29 Dec 2018 09:19:59 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 09:52:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 09:52:31 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 09:53:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6a234d5b011b611a5e107e05783cc2efc888e32736d4aa633c4979482b072057`  
		Last Modified: Sat, 29 Dec 2018 09:25:00 GMT  
		Size: 53.1 MB (53121205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daaa9411429ea78e548f22f5dcffad1364f8bb7487f8608c8f28e368165f6e42`  
		Last Modified: Sat, 29 Dec 2018 11:09:39 GMT  
		Size: 8.2 MB (8175130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:412eaef05026dcf2e7739ba15f745788b42607405b99800f98da68b4bf1245f5`  
		Last Modified: Sat, 29 Dec 2018 11:09:42 GMT  
		Size: 10.7 MB (10706851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e29e8cba5d38983f4eb5548d52ea193db04c30ef87a63b172ee511157ac23dc`  
		Last Modified: Sat, 29 Dec 2018 11:10:15 GMT  
		Size: 56.6 MB (56569597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:32d875b57e9b320b358aea56c15bdf5d63f6e4060950c61f7448971f8d62a75c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.6 MB (115640497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5a9e35acf72a83e08b67abdfb352ed4333a6ffcb7e3aa518f85b0a1755b0040`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 12:42:12 GMT
ADD file:4dfd7162a3ec550c299eec90235e80fb74afe67d7503bf81d82fb49414ab61b2 in / 
# Sat, 29 Dec 2018 12:42:13 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:06:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:06:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 13:07:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c1142172c864f81f165113d1cab7bcd7334e0f6697efc430ea6889856b7720c8`  
		Last Modified: Sat, 29 Dec 2018 12:45:30 GMT  
		Size: 48.1 MB (48077897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b5350945a5ea31287ae1e3f4658bf31598cdbde73396e0191fb98aff39f17ad`  
		Last Modified: Sat, 29 Dec 2018 13:21:20 GMT  
		Size: 7.3 MB (7314381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad6efa2ed42a7cd80fa7e1640e130bb29915be0b326c4a16bcea7559592c0bc4`  
		Last Modified: Sat, 29 Dec 2018 13:21:20 GMT  
		Size: 9.9 MB (9857603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a338d9429ed8a6a8cbdef1eaf331b7460fe4793d1e1d65e3311be7257831fad`  
		Last Modified: Sat, 29 Dec 2018 13:21:37 GMT  
		Size: 50.4 MB (50390616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
