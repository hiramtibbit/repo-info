## `buildpack-deps:buster-curl`

```console
$ docker pull buildpack-deps@sha256:b83a7e701ce40ea5b1c99315bb2354dcf3454d6f56c08489d4c0d83b5d7f3fec
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

### `buildpack-deps:buster-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:1e8a051e7a3a19c2a143020f5284dec135c779f5eedf403b454f855c01c4367b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.9 MB (67881299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3663186e976af60c5a3907286037af61497e5ba70bbd792e6d8efe78f477fb69`
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

### `buildpack-deps:buster-curl` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:e20a39c07e9fd15723656fa0e114fe36e1ce4d8a01fb9d91383691d1cc691f74
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.8 MB (64843360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:224862a28358ead3ba259d0cf0d5103cf2bbdde410fcded09dddd65e5d18dace`
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

### `buildpack-deps:buster-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:1bcad9d8a6d7b8832d5abb66807931b6f9d9622a9818b26171a0d049ad54b2be
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.0 MB (62019175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcd77ece99ef0016e01b0f8a3c74ea4fc64c54cc7fb7a92362b40d3532a3451a`
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

### `buildpack-deps:buster-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:7e50d6e6b9058f6aeacda6135d827adfb9fcbb627e8fd9d902620b5919aa21eb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.7 MB (65704737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38f7ae994876d9192e3b8c4f516693f40a1604878c16ffdb4f76930543319fda`
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

### `buildpack-deps:buster-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:34725fe47df865e77cc99e0391f5db299706f727429833cdb5e241b556856906
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.1 MB (69124125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb1626235b9e1b7c7f57bad3ffb6b0cde25247f17dc76508c3eb809a1d1f870d`
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

### `buildpack-deps:buster-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:b18187985583bf5afdd0b1058e7060c537ea018700ce617bf6a55ee01cca092e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.7 MB (72724564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97c7c8e1f135666b7bc40887b4589bf67ae24ed1e9723a7cb1a820fe748b8396`
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

### `buildpack-deps:buster-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:25c91c25d2b7e565da22bf61c263e5464c8db9dacd77b27056c1767824868392
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.9 MB (65896749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b88370af8d316730cb3c2bdc2d3737b258f229586494468c7f3bf2e940e81cd`
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
