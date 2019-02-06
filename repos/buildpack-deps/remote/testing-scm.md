## `buildpack-deps:testing-scm`

```console
$ docker pull buildpack-deps@sha256:5ba7284efe18a8c41d080daab7dd4e0174050b1c4756fc0b9df771812d5a4290
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
$ docker pull buildpack-deps@sha256:6af7bed87d43c6fc362fb88432cb55fe44abd0372cf443e43ac619a846946a83
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.8 MB (121842883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f750982258fc476276ea91b06748ecbb806332acad11bb1ff082ecc27ffa2f67`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 03:27:09 GMT
ADD file:22a69a330913adf5521ab0515a373a657cf7ba89e853b6d6ec43a808e489e481 in / 
# Wed, 06 Feb 2019 03:27:09 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 05:29:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:30:08 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 05:30:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:53d9d89325e47abb437613a43f7bd8bcb841e8bd580d9482cc9ade612504e52c`  
		Last Modified: Wed, 06 Feb 2019 03:32:56 GMT  
		Size: 50.1 MB (50149457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67ee418c4e3f4112a069e2c42269aec17fc9eaeec5106c428dddef60c835a505`  
		Last Modified: Wed, 06 Feb 2019 05:57:08 GMT  
		Size: 7.8 MB (7765814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a3c3f5bcc57e9c96a6346e63335ff34ad6bd17adfb0a8a875477b462be60a32`  
		Last Modified: Wed, 06 Feb 2019 05:57:08 GMT  
		Size: 10.0 MB (9966028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28c262b37bd6197cf2180ae8123fe9335d71e4039b5927fe85390eb7274fc2e6`  
		Last Modified: Wed, 06 Feb 2019 05:57:28 GMT  
		Size: 54.0 MB (53961584 bytes)  
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
$ docker pull buildpack-deps@sha256:9834c5bea88f13d3cf72e06b6998931537d615b3276836a2bc037fc7b31524a0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.7 MB (120673937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27fb7b9eba8ef439966b89be9101c570895639d09b9e3a70ed601869190fc1b9`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 09:59:31 GMT
ADD file:c05bdf46fa7bf19d32c7d5624914903b6c60a42f2534010f4a2026391a6acf7a in / 
# Wed, 23 Jan 2019 09:59:33 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 09:49:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 09:50:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 09:52:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:fa2a7548f74d568c78ca01c20326894734b4f42abdd478e63665af53f5ba29cc`  
		Last Modified: Wed, 23 Jan 2019 10:08:57 GMT  
		Size: 48.8 MB (48847278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7b3242b1da590d45341490e43d4e2f5c38a944c584fe9b1d959ae30ebe63619`  
		Last Modified: Wed, 06 Feb 2019 11:04:21 GMT  
		Size: 7.6 MB (7630105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7305898c111048ddba68d58a13f8c62a2cd0310740fbfcf8f1ffd6fdbe58eb8c`  
		Last Modified: Wed, 06 Feb 2019 11:04:20 GMT  
		Size: 10.0 MB (9953831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1f2608d565d478d5d133361e8289e223d15b3b0d2b9cb0938af5f2609068ff`  
		Last Modified: Wed, 06 Feb 2019 11:05:06 GMT  
		Size: 54.2 MB (54242723 bytes)  
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
