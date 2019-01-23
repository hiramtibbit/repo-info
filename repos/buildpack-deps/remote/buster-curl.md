## `buildpack-deps:buster-curl`

```console
$ docker pull buildpack-deps@sha256:433625ea117c20848519dab5fb85466fe0b99176aeb8c854f9d9c06a611810d8
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
$ docker pull buildpack-deps@sha256:bce1a7d771a9c3a10f0963647180c0f05ca9a16f2f0b83cdcc831d916fb0c757
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.9 MB (67855945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43b3cec9c6d9b6ccbbcf1e21a7b9eada35cb1d2be8111ac012e0c29a7013916b`
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
$ docker pull buildpack-deps@sha256:2f0b3bba0e69f1fa2d14dab7e342314f8d66c72a9c4d8b22675737735354aa56
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.3 MB (61346655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39fec02d691479222ecbb295eb1b2d8943c1d1e45b799379bd3d7d8daf1aff0f`
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
$ docker pull buildpack-deps@sha256:3318dc0c38fffeefc5767432096736b9cb1b134d774e73cdb66b46c3fd4768cd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.4 MB (68423263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50f822dedebb4b4df8eec7560af53145120fa18e844d3e24adbf30fdf64f59b4`
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
$ docker pull buildpack-deps@sha256:bf8e285da7c9ce09bbc5de7fcdbaad5881f2186726c4292ce4c4c30239504b2a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.2 MB (65249881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9eaa0ae0278b494e25f69baf9498553ea7898c1df22dbb402351d9ad75289135`
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
