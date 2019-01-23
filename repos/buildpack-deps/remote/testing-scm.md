## `buildpack-deps:testing-scm`

```console
$ docker pull buildpack-deps@sha256:419a279c3863961aac56f00451c372fc2655c17a0514f4cf0c60c0e0ceaaf9f0
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
$ docker pull buildpack-deps@sha256:2a43f192f8ae26a2fb0f11907d4117eb329be9b4a41d24bb17d483fc42405347
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.4 MB (114354232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:818b34b0611b52d4ea6818cb1af2e156cd48462db1022a57a9aa491f77e5e4c1`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 09:49:13 GMT
ADD file:c3146035282b35fe27cce084f779cbb3b1bd27f8623702e7ac3ace0b2c557c08 in / 
# Wed, 23 Jan 2019 09:49:14 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:25:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:25:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 10:26:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:acfbacb976032d6478a3cbae68f099dd228cd965704acf935125f5c46c75addd`  
		Last Modified: Wed, 23 Jan 2019 09:58:28 GMT  
		Size: 47.8 MB (47814683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3643fb2667a20e5204038b85ad3e68c882d1cf1ef161a1c4637fe1fd9a8591f2`  
		Last Modified: Wed, 23 Jan 2019 10:45:23 GMT  
		Size: 7.4 MB (7369419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0efdd320d26739e1ab91d52be9711beadf721e92efdb7ec257a07b626be16be7`  
		Last Modified: Wed, 23 Jan 2019 10:45:23 GMT  
		Size: 9.7 MB (9659258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e7fba7c46061ab789c0762096ecddeeb2f0e109d86d3dd5a0ad513510e81671`  
		Last Modified: Wed, 23 Jan 2019 10:45:47 GMT  
		Size: 49.5 MB (49510872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:6a5267b2eb948a25e249d6e444ec51f03ecdad1a16f06fb1b0b082cc39055407
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.3 MB (109316221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99614daa9c38731c5761d77347b355489563ce3d71e455ab10a9522b86efab27`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 12:58:26 GMT
ADD file:6e26d67c6d5e56d70d3182b96e702cab7a5b508464c306070415c34873ad6fb8 in / 
# Wed, 23 Jan 2019 12:58:27 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:22:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:22:35 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 13:23:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:113a2a0ca0c4438d49ad9ab131ca8f711a05653cc8206b28f4379d57a2879d06`  
		Last Modified: Wed, 23 Jan 2019 13:08:43 GMT  
		Size: 45.6 MB (45604050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66d0d431c0377a44575996c8454039d1a447d9841046dc65c71d2a24ec10b06e`  
		Last Modified: Wed, 23 Jan 2019 13:59:16 GMT  
		Size: 7.1 MB (7098922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cabbe9adfa2fec73f837466325769904931a6dd46161b24c230161889a47dc08`  
		Last Modified: Wed, 23 Jan 2019 13:59:16 GMT  
		Size: 9.3 MB (9316203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:300a7e435bccd9ecdd6895dda15b6000012b6f518b26f0229103cbd950481bf2`  
		Last Modified: Wed, 23 Jan 2019 13:59:38 GMT  
		Size: 47.3 MB (47297046 bytes)  
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
$ docker pull buildpack-deps@sha256:e0590f6d0ffc7ee8eff5d67a65c3705c3e1a121fe74324d707f882ee33604d3c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.5 MB (122479114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f1a2c5b7f8e7b8a6af5ce7976362b536e37cb8e770a8ada0f46c0007d96d731`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 11:40:40 GMT
ADD file:64229010ae71e09d79b282aa12cc430685001ffd0efcfb210878c8f4888df7f2 in / 
# Wed, 23 Jan 2019 11:40:41 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 12:25:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:25:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 12:25:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:2b467a59050715adbbc041de2a92a81998f86fbb5ac386bb55f334e6c3c086c5`  
		Last Modified: Wed, 23 Jan 2019 11:58:39 GMT  
		Size: 50.8 MB (50844934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d675ad36ab7050f0ec92b0d5c7e2c975b7520aa1810fbc49f128062d4daf086`  
		Last Modified: Wed, 23 Jan 2019 13:03:30 GMT  
		Size: 8.0 MB (7971071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5291ff0e5d3540b55d24f9666b86c1f8c9e7959a1ae5feaceff2786c54d75a7d`  
		Last Modified: Wed, 23 Jan 2019 13:03:30 GMT  
		Size: 10.3 MB (10308120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c7a52285dbd65ced5148eb825928aff16b8aae2174851477467310e17524f84`  
		Last Modified: Wed, 23 Jan 2019 13:03:54 GMT  
		Size: 53.4 MB (53354989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:ba3c14b9259ebd16a47349e3a3ca07c0eeccb8d3f11d2b580fd2382c6a7ff689
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.1 MB (130128799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72cd4faf487ce6a7b5284f38a09f7c66abe9fc9425c9ea178a8736a897cadb82`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 09:24:34 GMT
ADD file:b390a917c54897d78560426f903bcf5df5f025b287732cdee42e2bfb14b0eba1 in / 
# Wed, 23 Jan 2019 09:24:39 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:11:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:12:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 10:13:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:f832d2277eb811715e4c0b06e94263b6ffbf34e10d430f8bb0d5a282458ad628`  
		Last Modified: Wed, 23 Jan 2019 09:30:03 GMT  
		Size: 53.8 MB (53771388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74e48cf25dd622353832796eeaff3856d96284a7680bd288f051ef21e9b3a8c2`  
		Last Modified: Wed, 23 Jan 2019 11:40:22 GMT  
		Size: 8.2 MB (8249522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:060a4c9f0772ae0e4e258c1c7456dcfd5f2e8cff247abe1cca2d61fb01ffe742`  
		Last Modified: Wed, 23 Jan 2019 11:40:22 GMT  
		Size: 10.7 MB (10703654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:159fbca256f584a8b8ee68e4370b27c328f2f7c0ff5624ff914c3c1c671c4eba`  
		Last Modified: Wed, 23 Jan 2019 11:41:03 GMT  
		Size: 57.4 MB (57404235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:c0f26ff225648d2950e644fd9880779ca9c66e6a77fd928ad37d3a21b99fc963
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.2 MB (117193652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee41d08361707a38e93cf52766ca97d56cd1079a3dbe61d05cf1a2f49282eb6f`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 12:42:02 GMT
ADD file:bdc76b22c07c260353373f1e6e8b3f6dc2a66dad82f632ef7e1280484a2879b2 in / 
# Wed, 23 Jan 2019 12:42:02 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:08:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:08:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 13:08:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1b09b57cead63b706408d9ab5b5693cc5c709c58b188ab8e5aa2e2bfb9adc7b7`  
		Last Modified: Wed, 23 Jan 2019 12:47:18 GMT  
		Size: 48.7 MB (48657839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1f391350ffa4c5d74a795d4316246a45e4d610bc5b0181d3eb4de34c55a8384`  
		Last Modified: Wed, 23 Jan 2019 13:23:03 GMT  
		Size: 7.4 MB (7384130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:062c2a675fb86c972a8374511aef4567344b13eaaa25a16ec178bb3767fbefd1`  
		Last Modified: Wed, 23 Jan 2019 13:23:03 GMT  
		Size: 9.9 MB (9854780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50d54e29142dbc5f2e295ffb1f6f01c69b6e5cce3ffc08443ba986583e0bb58b`  
		Last Modified: Wed, 23 Jan 2019 13:23:20 GMT  
		Size: 51.3 MB (51296903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
