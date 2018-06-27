## `buildpack-deps:testing-scm`

```console
$ docker pull buildpack-deps@sha256:57e7376c013f3f392855d151ebb1fa3be87a8adb99be42e082e6e932dbc1d039
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
$ docker pull buildpack-deps@sha256:2b6a572e64bbd428cc495284896f79d3017741eda1a305486741537a023d7743
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.4 MB (116382846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1fc4e4cc03191660cdb192ed25e434ca4cb13c1a8beb07897eb6941e64ec391`
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
# Tue, 26 Jun 2018 22:06:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
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
	-	`sha256:3b142a5380cdd7b4baa4886d490e10b34d5a0fcccf075df14ce93df2a7130580`  
		Last Modified: Tue, 26 Jun 2018 22:23:11 GMT  
		Size: 51.4 MB (51430437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-scm` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:09fa130019aac1e806a56e7e6ea2de504a967bbbddec2859d56ac3eec639472c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.9 MB (110947686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edf07d9c34efe70fc6de2fe15a66bc82a932fdc7227c998e5a02c56235c91158`
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
# Wed, 27 Jun 2018 09:29:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
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
	-	`sha256:1f821d619291c18cde82b62b20cab4d666d6b8eaaf9a9250f47e09894d6c0af1`  
		Last Modified: Wed, 27 Jun 2018 09:44:08 GMT  
		Size: 48.7 MB (48707511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:8339256623099389369cee9e3c51f0621b8be86477223ce0c8ef9c0a940cee7d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.2 MB (106199110 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de0392e8f3b35fbc3038b0a3673631045cb197dbe4d964e1f167af411fdf8fc0`
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
# Wed, 27 Jun 2018 12:39:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
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
	-	`sha256:5a1bb677f067f2cb41b4df43063b4e5f8d98528a4eb6d907011c6b16b72a0fe1`  
		Last Modified: Wed, 27 Jun 2018 12:54:23 GMT  
		Size: 46.6 MB (46570482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:9ee4320004e676a7bf5fa49ea982f89714f9318adc755283f13bd8e7605f3993
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.9 MB (110933632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3782b67caeb675518232da8d1ba53bef4dd778791bd8e195566a67f974dfbf0a`
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
# Wed, 27 Jun 2018 10:21:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
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
	-	`sha256:85d4c68c9c223edf9f2a1af7ae18e5d9f81442257f8494c9abe5dbb5f8c871d6`  
		Last Modified: Wed, 27 Jun 2018 11:02:18 GMT  
		Size: 49.4 MB (49352451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:ca318ca3e0aaa6a82129cbcd2ac4269b4742dc531f598f565cac43727f58dcec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.1 MB (119092935 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c7a29e4b1cba769cb4672edc429161346adc069c49dfdb0fe193b81e861bf2e`
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
# Wed, 27 Jun 2018 11:32:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
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
	-	`sha256:039cd317e9e3734d6dbb948316f0f2495d2066a6c574a442c941642f5e24d6ff`  
		Last Modified: Wed, 27 Jun 2018 11:47:22 GMT  
		Size: 52.9 MB (52930210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:4096a2027412adbe29783c5e2d4a4c965a11125e33f5a4db67ffcffa16069ce0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.6 MB (120601782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81239c59e2ff9a6f96bf144b696336cf0dbe4d05a910ddfc83737e0a2394c0b5`
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
# Wed, 27 Jun 2018 09:49:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
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
	-	`sha256:91c63e000d6c0438f79e3905685815b33d2b9b9ffae4b91f9901770119e6d5a7`  
		Last Modified: Wed, 27 Jun 2018 10:24:28 GMT  
		Size: 54.1 MB (54092102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:9eca29c38945737059d3a8e2b1606cbf6c262a2842b496a36beaa1051ee16d1f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.4 MB (114365657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbc33761ed5a7216abaddf8d1c4f1b744b55c2ba0d5463b84371625d65117b91`
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
# Wed, 27 Jun 2018 12:16:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
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
	-	`sha256:4d78f82aaaeb26187a44403a3c94f374241f7649b43ce6db1625a48a8decc45e`  
		Last Modified: Wed, 27 Jun 2018 12:23:17 GMT  
		Size: 50.8 MB (50771394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
