## `buildpack-deps:testing-curl`

```console
$ docker pull buildpack-deps@sha256:6d632b10b2e27fdef1302d6c6a87570700ac3aff9a8b9f28c65bb8924fe9e0c3
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
$ docker pull buildpack-deps@sha256:55762bb4b07d2e2745523b5b93dc6af6f10e16899f79cc85eda8e98e5c2a74ce
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.6 MB (59628628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b09d23c845085de23b0c4d2201582f83b99ee3854623e13e10d05a9ead4021ce`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 11:58:13 GMT
ADD file:a2a48e08765cdd9c5f808d60ba275889292b9e98e5b7edaf08a457e9a96c04e3 in / 
# Wed, 27 Jun 2018 11:58:13 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:38:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:38:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:3d877b299b7ed7651e3b95cf4e713e74b39969a5b8c589d5588e9aaaea00aa54`  
		Last Modified: Wed, 27 Jun 2018 12:07:05 GMT  
		Size: 44.5 MB (44472258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a71925de9ef19b3134c65cb91b143c92fc689bb479506b00de03673847612398`  
		Last Modified: Wed, 27 Jun 2018 12:53:54 GMT  
		Size: 6.5 MB (6453552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c5c92affcaa3fb95a067e8791eb8090db2e3391681c7453dc1935eaf9eb2834`  
		Last Modified: Wed, 27 Jun 2018 12:53:55 GMT  
		Size: 8.7 MB (8702818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:29797a6c0e74db2ea3f7ddbd7bcbbfe0ce96dfd2fac4e3d5ea7e017b4cacfda1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.6 MB (61581181 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5224ce22563b80e1ee9cdd3424d7e99018b9da17241f678220576c131c8d8967`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 08:41:17 GMT
ADD file:692294feb32e8b9bf3510dae1c83cdbb869a7a1b7ec24f6ed5fbbabba061a8af in / 
# Wed, 27 Jun 2018 08:41:18 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 10:19:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:19:56 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:bef60b6834f761c65eaadb7dc9a039dc0ec9aa7de8ba56a0dded0cd24fb3c8e6`  
		Last Modified: Wed, 27 Jun 2018 08:51:04 GMT  
		Size: 45.9 MB (45919144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef85bbd28706d01060eb47d3a8d21bf1304db3581c942aec142487ee63f5fb77`  
		Last Modified: Wed, 27 Jun 2018 11:01:31 GMT  
		Size: 6.7 MB (6681486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be2655a63e995833173991ab27a2a086306e8d546b67cec82734fd968f2c96b4`  
		Last Modified: Wed, 27 Jun 2018 11:01:33 GMT  
		Size: 9.0 MB (8980551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:cb46fb13490da794fb123e421be9184416d12396dd4c6b5973f2fdd49cb0b03f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.2 MB (66162725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a09f4e27db381a8093c29fb64bbf4f3db9709c953e88f69d2b82ab3a56903d01`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 10:39:08 GMT
ADD file:c9cfaa3bdf0b6c449805dc877cca855faf2022cfed63d9b50fb538a41f2a2b3f in / 
# Wed, 27 Jun 2018 10:39:15 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 11:31:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:31:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:b386f2fbdc3eb3542f9e09e9332b6238756dfac1e869adfe725fed0167e27eb0`  
		Last Modified: Wed, 27 Jun 2018 10:51:30 GMT  
		Size: 49.4 MB (49412314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34c88e3f5046d9f9be3ed9a5ba692df35560d3e5401ea1d440fd3fbf5852073f`  
		Last Modified: Wed, 27 Jun 2018 11:46:46 GMT  
		Size: 7.2 MB (7222839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acef0ba08e60c66012469719d26ecd9ba41c03da44b2814ee901028d826b85b3`  
		Last Modified: Wed, 27 Jun 2018 11:46:46 GMT  
		Size: 9.5 MB (9527572 bytes)  
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
$ docker pull buildpack-deps@sha256:6e767eb66da3b23e5631712680e1006cc50ac0e3c84185d5829bd3f1a322fe67
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.6 MB (63594263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a99f6efbbe007324a8529e1f9cd7b1d6b2b735a6b1cc7721adfc3c6ce3028dab`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 11:46:36 GMT
ADD file:52c27ac0968416ea66e9ca1ace44b822682960a6c538a3502dd56025dae4cb7e in / 
# Wed, 27 Jun 2018 11:46:36 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:15:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:15:54 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:41cc591a14aca5fbcef3651f885e7c7906cdf7b6b5ede0bf6012bb5c753e777c`  
		Last Modified: Wed, 27 Jun 2018 11:50:12 GMT  
		Size: 47.6 MB (47614558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e33b4a555974d112fe87667e17924947f5fc629b4c35f7ff7bbbd7e77d90af1`  
		Last Modified: Wed, 27 Jun 2018 12:22:56 GMT  
		Size: 6.8 MB (6797314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6720aa11d231207ba522bda227552e2b971c37920322cbb9c305796741787d8`  
		Last Modified: Wed, 27 Jun 2018 12:22:57 GMT  
		Size: 9.2 MB (9182391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
