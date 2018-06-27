## `buildpack-deps:testing-curl`

```console
$ docker pull buildpack-deps@sha256:78f25b5ed0c06c7d954a415e0878558a6e82cdea6fdaa8b8a7f856e1bd5a69e9
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

### `buildpack-deps:testing-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:17068de9df40e3c7985d8560ee7dea06c412c8f88a7dea16c58f20997fa83c0a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.0 MB (64952409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1f2b9f4c7960b8af98f590b99f36bb121f5f2c10e3bef6d87807441f84e665c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Jun 2018 21:19:59 GMT
ADD file:77123e0dee1f75d14c3a803926a54be0174b5d55d798ae1a240adf922685bf81 in / 
# Tue, 26 Jun 2018 21:20:00 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:05:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:06:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:2f2e558a3b7445474755ee176690eb10aba6c1079dd13bd366e0614229f6ba77`  
		Last Modified: Tue, 26 Jun 2018 21:28:36 GMT  
		Size: 48.6 MB (48636993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62bdd5edebef48192e5d30f4d39ab75183b7a7ea0e73fbf0f026f9d787c41a6b`  
		Last Modified: Tue, 26 Jun 2018 22:22:27 GMT  
		Size: 7.1 MB (7070051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b9bf90f37ce025a431f02e706c3e7b357636a52e4fa5100322ddcab7803f334`  
		Last Modified: Tue, 26 Jun 2018 22:22:28 GMT  
		Size: 9.2 MB (9245365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-curl` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:ee05c4a5e983160852f9723f0b818d788085316b79f67d1771589c15ed5b2558
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.2 MB (62240175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a60966095660046a2569c7623eaf43bfa519c115a15cf94745fc491295ef73cc`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 08:48:50 GMT
ADD file:4778697158175a2af51c8cbeaf8bec61efab05c4a6f6b5403b91209f4dc9d655 in / 
# Wed, 27 Jun 2018 08:48:53 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 09:28:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 09:28:28 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:5bfc9cce84e1c346da81ecaef0a7952337712f0f61622a78fbbc12737ad284ee`  
		Last Modified: Wed, 27 Jun 2018 08:57:31 GMT  
		Size: 46.6 MB (46591255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80dd016babef5e799c720090a6fc6b502a103bfb7f86c2d1261c5426cf3860f2`  
		Last Modified: Wed, 27 Jun 2018 09:43:41 GMT  
		Size: 6.7 MB (6661958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe34ab1d5599bd9556ab436e4857202e85e35f6c6340e8f9f73d2d825a18813`  
		Last Modified: Wed, 27 Jun 2018 09:43:41 GMT  
		Size: 9.0 MB (8986962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:b460a59a3dfb69a18fb2620d66392deb31969dbd6956a4e202a01b4f9975522f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.3 MB (60324950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a15f5abac0636c6fc38dd3c5bc3aaeffdde2331b7a10fa19a461980ca8693ab`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 11:58:11 GMT
ADD file:f2876a722dd3fec61e9051a68a520019d6a5c08e33fe8e9e4c9ea2fca23db046 in / 
# Sat, 28 Apr 2018 11:58:12 GMT
CMD ["bash"]
# Sat, 05 May 2018 12:03:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:03:33 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:538e2267e0d08299ff1f9bdc7a7e667616481e0dc6c2902bcae25740b91adb42`  
		Last Modified: Sat, 28 Apr 2018 12:09:39 GMT  
		Size: 44.2 MB (44192112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:002a940fa942ef835ff30908d7e739d52a9680081354a1109c224644f942704e`  
		Last Modified: Sat, 05 May 2018 12:29:30 GMT  
		Size: 7.6 MB (7564613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e65ea37767e19d753eb7d500b6ddc25fd380a50c602d74501a8e4f27125b696`  
		Last Modified: Sat, 05 May 2018 12:29:30 GMT  
		Size: 8.6 MB (8568225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:010111d43ba620959d9ace88ae63f37c90174436359191723bd8cf1d586c207f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.4 MB (62352456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85ab7992ef5922c04581093f4a8f253dbc10fab953939ec3c3f1cd973dbfe6ae`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 30 Apr 2018 23:17:08 GMT
ADD file:5036a242bb6fa4ea561cf86ebf48f2b1a664f2d77cf24b666f81097e1a7b7d16 in / 
# Mon, 30 Apr 2018 23:17:25 GMT
CMD ["bash"]
# Sat, 05 May 2018 09:02:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:03:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:d9305dcbea4d3f6c722c3515486f787b6f5101c0713f49efe747fb5c54a456a3`  
		Last Modified: Mon, 30 Apr 2018 23:39:15 GMT  
		Size: 45.6 MB (45610650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bace1328ae4231253fb361afbfd80f0103d2bc07edaa8fececea36a3878b5bf`  
		Last Modified: Sat, 05 May 2018 10:20:40 GMT  
		Size: 7.9 MB (7894042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95e5ab4f023875d9bd5cbbc9f39a53e779acd7402585aa71262ee2290c2c7945`  
		Last Modified: Sat, 05 May 2018 10:20:39 GMT  
		Size: 8.8 MB (8847764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:2ffe26d3f840e06fd7239dc0772a79b476aa81ae2871e76571555a702283c2b6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.2 MB (66216197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b0cf23686db47a74356b477df3c935bbeb70652a20f061bac5e18b9feaf1628`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:09 GMT
ADD file:c7f45bbb36a6dc2b6b0b33d053bb2770ec06cdb2c900cff5af14d6489490b12e in / 
# Sat, 28 Apr 2018 10:39:09 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 11:27:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 11:27:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:5a8e1be398ceea51bbc9f18e247db10203d8e023e0be4dcf256a6756222e8879`  
		Last Modified: Sat, 28 Apr 2018 10:43:33 GMT  
		Size: 49.1 MB (49088138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ef2dc3dd10934addd8e287550e5c6b3338b49cc5ac3ec02fc0dcc50f0c0793d`  
		Last Modified: Wed, 06 Jun 2018 12:09:36 GMT  
		Size: 7.2 MB (7219988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37d7ab70a893b261bd67725cbf1c30ba8d02b42bf0ba2239c075d542a06b5dda`  
		Last Modified: Wed, 06 Jun 2018 12:09:37 GMT  
		Size: 9.9 MB (9908071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:bc101f80b6a4606e9fe0f325e56829d5b8fc8db26318322c6f9b56b583acbaff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.5 MB (66509680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24002389a0ab9565a452d2822b51914625577b982a7fcae641c173be0046bacf`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 08:16:54 GMT
ADD file:1f6317457e3791b2fabb705b84b7213ace2b230e8804fd9e52ae26d15acf30b0 in / 
# Wed, 27 Jun 2018 08:16:55 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 09:42:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 09:44:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:fb9b99e970f3f978a0c6371622d99d0ec52cdfb55bd979c923b3e553b0d86c23`  
		Last Modified: Wed, 27 Jun 2018 08:24:10 GMT  
		Size: 50.1 MB (50108359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:673f94fe3dc0e7651a07a5307ac8319558f8a2c9dcf7da9209a2f4fce5c8d319`  
		Last Modified: Wed, 27 Jun 2018 10:23:38 GMT  
		Size: 6.9 MB (6907033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9b8ee03424d76a1fe8b3c8444030270ec8653f04a53c5773679d3779447eaaf`  
		Last Modified: Wed, 27 Jun 2018 10:23:38 GMT  
		Size: 9.5 MB (9494288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:6a5bfd4a98a60c0fa2e70c7fdf103d0d5393980427f8e6de7d8591a4209be7b4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.6 MB (64580080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4dbde5f14691909526a0474a9e18c9cdd6609d3c6f75cb02fa7f980434ac22f`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 11:41:56 GMT
ADD file:a585239e7bbf89417d8a69d8397ff18404f3e0baf7c0d648078be548627561b1 in / 
# Sat, 28 Apr 2018 11:41:56 GMT
CMD ["bash"]
# Sat, 05 May 2018 12:27:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:27:35 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:811bf1512e7bc49075b48591994ed3209ccd1ed59f6a9260e4fec18bec422a32`  
		Last Modified: Sat, 28 Apr 2018 11:47:16 GMT  
		Size: 47.3 MB (47336918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc5638d6eb64b30dc68efd35f21f3da998e571384fe8c865d310ffcf6e56c4f5`  
		Last Modified: Sat, 05 May 2018 12:44:01 GMT  
		Size: 8.2 MB (8166660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4de84873a88d576315068a1425e315dc1169f59e806900fc4d47b591369d633f`  
		Last Modified: Sat, 05 May 2018 12:44:01 GMT  
		Size: 9.1 MB (9076502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
