## `buildpack-deps:buster-curl`

```console
$ docker pull buildpack-deps@sha256:612c8fb22cb88b393b08ec6476bb83489257f94b63eaddf7ef84ea3afa0d41b0
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
$ docker pull buildpack-deps@sha256:dbb4bb48a2a795c4e3061dfcad62eb1515487f14661b7c8b2d3aa2dc66fb576e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.6 MB (60562238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:add3fb237692c290aa99d94c015152a144087378510243e5d7b4405984d3bff0`
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

### `buildpack-deps:buster-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:acaf8c4e4294333358381fb8f3a0d6fba02afc47e53c349fcbbcb61b8c7adaa8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.6 MB (62594369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b1c4834da1be3d1fb4baad5c6241dc7c1dbe1b067b3b3c66c9eebaaec38e0dc`
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
$ docker pull buildpack-deps@sha256:df847399228db42fc6ae47e93db9a8f2deeb98e8a1f2df5f7980b270807571c5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.5 MB (67526688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ece58dfc3dcfc2ea698975a34ed928e2470e926c1e4cd3b5e9c8d12d2c3b00d5`
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

### `buildpack-deps:buster-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:05bed2a63f9d7513cfdaaff9c24e6ff45291acc95c592ff42faa25b53bfea36c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.0 MB (65026330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:747288f94d738fc1461709b06dbf6da78d083e6e6019d88c634520b883f4f626`
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
