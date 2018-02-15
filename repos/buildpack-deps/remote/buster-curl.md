## `buildpack-deps:buster-curl`

```console
$ docker pull buildpack-deps@sha256:8c9f09c804c6f6acf76bab4947bf22c6f142e8739050d6d05e93aa047d6b3bf3
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
$ docker pull buildpack-deps@sha256:bf9504e5a56e876d19cdcb252c9500847339c9b4c209f2ace5916f74e84cab9d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.1 MB (66062419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b2912fd250e2ff3465fecedc213fd3853edfa8dfe29e7652c3a3d6b1a551a51`
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

### `buildpack-deps:buster-curl` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:a1d3976c267f2c3a884b14df27c0c99e5e88b13a54cd81bf1a8192e47080d084
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.2 MB (63224268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99e52a78761093926943cf688ad6a1ac813534065ca4173faa39e6e5125067b4`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 20:56:12 GMT
ADD file:3fb7c9bcca661b6b70a0fc99d9641ddd00fbc31521bc93691d7e5c58f261f34a in / 
# Tue, 12 Dec 2017 20:56:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 22:47:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 22:47:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:c023cd017405e1bc808e43f24f4fc346e58fe40603d817ccd61e2f0b772a3068`  
		Last Modified: Tue, 12 Dec 2017 21:05:51 GMT  
		Size: 46.7 MB (46698313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f5e768d0716216395dbe99a7613e04897edd033e011b7b98aefae10ccffc3e2`  
		Last Modified: Tue, 12 Dec 2017 23:05:13 GMT  
		Size: 7.8 MB (7807857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cca15772b372ec531a21e24ed2e9597415bd7d05ea16499bffdc3d788e11a0e`  
		Last Modified: Tue, 12 Dec 2017 23:05:13 GMT  
		Size: 8.7 MB (8718098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:bda5ee2f69407505fb3ecc56560981416ed888c54c5808b0afe512a6baae54e3
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.6 MB (60636959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6a5873c2b877e25c0c20a338f992b4f1b75171d8d81f36a90cf36b682fc7cfd`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 13:26:01 GMT
ADD file:824e862a07b0c06c54a604fb6dfcf3e40ec708d095afc669926cf489817eb376 in / 
# Tue, 12 Dec 2017 13:26:02 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 14:09:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 14:09:31 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:45f200fb8a454e2cd16c63f4443a50e3a0279e0cbec03ad2ee1e42c08a29416d`  
		Last Modified: Tue, 12 Dec 2017 13:37:53 GMT  
		Size: 44.7 MB (44665462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3fdc739f042d2e47979f7375c85991c24b3906d6597d51c51006c97a2340ec9`  
		Last Modified: Tue, 12 Dec 2017 14:28:36 GMT  
		Size: 7.5 MB (7533850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9470041f149bb9c29052f1e1b230b317768da3c3a25e81aa499e94b9c0fec016`  
		Last Modified: Tue, 12 Dec 2017 14:28:36 GMT  
		Size: 8.4 MB (8437647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:c2cc976d4280fbbf3a865e70f62da65f51edb866d21defde67a6fae35eb39311
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.6 MB (62587818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:568661280b1735fb4627d32d76190fa17041b587794e65f90c500c83cd3948bd`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 18:23:33 GMT
ADD file:b4d69ff859e4e742783ef82e67ce762dca4a19b9540203679aa738c55bd83599 in / 
# Tue, 12 Dec 2017 18:23:34 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 15:39:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 15:40:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:128256c79e38044282a50aeb3a24e3befcc4b75fa3a9a39577168578bf912cea`  
		Last Modified: Tue, 12 Dec 2017 18:38:29 GMT  
		Size: 46.0 MB (46019363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80a6ca49eeff77d863252041681a3b317be8cfeebce39756dc803079e11ee56b`  
		Last Modified: Fri, 15 Dec 2017 17:13:32 GMT  
		Size: 7.9 MB (7856377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e378e57928673087e9858195f8ed8279444345c3563acdee2a4b839876e5a006`  
		Last Modified: Fri, 15 Dec 2017 17:13:32 GMT  
		Size: 8.7 MB (8712078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:5260a33af3bc7e7c042c7c4b184bf97dc7c06f39199d4726d27f9f50ef9e53c8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.9 MB (66934117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba6f49e13ec317c611d179833163cc4699704043f930e0427a7db2f4ab65b92c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 14:18:05 GMT
ADD file:d66af381ee054cbf966302cbd3d7a2951dc76e742573be1a7345383bf03fef7c in / 
# Tue, 12 Dec 2017 14:18:05 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 16:39:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 16:39:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:47a3388a2bf1b5237fd656e8726fb339d410d8819ea3dc0a458ee11e9581c30d`  
		Last Modified: Tue, 12 Dec 2017 14:45:17 GMT  
		Size: 49.1 MB (49075014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f722cddb37de44ec7e5362044987c078671be57b50a57e9322f18c5052a251`  
		Last Modified: Tue, 12 Dec 2017 17:18:53 GMT  
		Size: 8.6 MB (8608346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2ea3d09faf48a8ca14d8162b85555e1670cf59ed626850d7681a3e3d0d40068`  
		Last Modified: Tue, 12 Dec 2017 17:18:52 GMT  
		Size: 9.3 MB (9250757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:720ba1b6bc011dd30419f2f89c03405a748134eb1cef2a571fbf55a04e602ae9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.9 MB (66869342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:297068eb363e9a37a78cfcf6d7e343243922ccfe71cdcc17516ba449749e20ff`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 01:32:24 GMT
ADD file:f548d484daf036901c05a4bb640bf30fb33281d3f6e6ac49515f9834e0124ebd in / 
# Tue, 12 Dec 2017 01:32:26 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:31:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:31:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:5ed883c7848b37af1d06533289fca465bd0dac9220f08997ffd5b3e972b78428`  
		Last Modified: Tue, 12 Dec 2017 01:37:28 GMT  
		Size: 49.5 MB (49470433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a246f75881e5b8a04f5f114ad7c21956854cb97c10b218a233d9d1947f2a39c8`  
		Last Modified: Tue, 12 Dec 2017 03:51:30 GMT  
		Size: 8.2 MB (8206737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f81e8a192104eb83fe3639612d4bc8d65f9d90789ba2e6137077c8f542febff8`  
		Last Modified: Tue, 12 Dec 2017 03:51:30 GMT  
		Size: 9.2 MB (9192172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:4b936a997e49dcef4daf61d455621a6bf022583ae1c48d049820d284f774054b
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.1 MB (65070343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44a82e74b4d42fc5ea32d2e53bd70f71730be224761f15847bf022eab1ad2b20`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 06:22:03 GMT
ADD file:e0c885b58cad703e6e38321061addddba78a8034c9570a8b377dd1f25807650a in / 
# Tue, 12 Dec 2017 06:22:04 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 06:49:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 06:49:54 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:a467b96f74dfa80402dcbacf97840b92e0788a086fe92cc4b75eed02e0282726`  
		Last Modified: Tue, 12 Dec 2017 06:27:30 GMT  
		Size: 48.0 MB (47952308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f53be5515a62809ead0a4216d7130db17153189f6e4a106ecb6f214d2e029ba`  
		Last Modified: Tue, 12 Dec 2017 07:01:31 GMT  
		Size: 8.2 MB (8168663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c324424f59e99f3685e95e648c108b4279799ba219f168a85679789281e949c6`  
		Last Modified: Tue, 12 Dec 2017 07:01:29 GMT  
		Size: 8.9 MB (8949372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
