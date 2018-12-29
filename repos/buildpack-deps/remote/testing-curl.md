## `buildpack-deps:testing-curl`

```console
$ docker pull buildpack-deps@sha256:73206160ca608bd5fd4f05df61e9c9871df168d34295eb87483380edfec793bc
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
$ docker pull buildpack-deps@sha256:da64c17ffaf31bc1d77eb745b715372bfdc1a1b0ff9d6730cf7b91a3713939a7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.2 MB (67190648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c618c9f2d27b75f1714d2850dfc467b91cf4f180289c8066192e9c851e696ffc`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:21:14 GMT
ADD file:fdb1ccae627d25ad35d80ed58323977e66535afffab327423f9e05a61d990d55 in / 
# Fri, 28 Dec 2018 23:21:14 GMT
CMD ["bash"]
# Fri, 28 Dec 2018 23:46:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:46:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:2d582acfc057c4ff9898258f2daf24c5e858f9d23287ff61feb2a47ca9862761`  
		Last Modified: Fri, 28 Dec 2018 23:33:21 GMT  
		Size: 49.5 MB (49487369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ce3b070438b24f2d9c39ad41d504a0a5d0f21668080d374c2b4a104e2bafb1`  
		Last Modified: Sat, 29 Dec 2018 00:16:38 GMT  
		Size: 7.7 MB (7734072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76ece9d1ce5efe96fecd5142fb2877e392ad0c1b2df649972734b1f51b749792`  
		Last Modified: Sat, 29 Dec 2018 00:16:36 GMT  
		Size: 10.0 MB (9969207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-curl` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:8cb0bc13295d92e81c2addd4de74546cab1ecde8a17e7d5dae9c9c025a096791
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.4 MB (63378782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09cc004311db054043e170aa94db195d4dcb7a28db0b93f14b9da57311920242`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 09:49:23 GMT
ADD file:55896315b7ef5586d847e7a4c0d5139b8c9531fe2f8332b78bfb636444f271bc in / 
# Fri, 16 Nov 2018 09:49:24 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:23:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:23:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:c4e8885dbda050e61d87d2967be5d4c4210ef4a7a8ff02b3a3dc5cc8a86aa391`  
		Last Modified: Fri, 16 Nov 2018 10:04:31 GMT  
		Size: 46.9 MB (46931179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8f683b85e61bb707af8950a4f7dec4e280cb1d6119ae2bcf46b8fff647e1841`  
		Last Modified: Fri, 16 Nov 2018 18:44:37 GMT  
		Size: 7.0 MB (6965514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a291049214a4981bd0be2125b55ee2901b241a302df6289671b61bac4d5db522`  
		Last Modified: Fri, 16 Nov 2018 18:44:37 GMT  
		Size: 9.5 MB (9482089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:645be4b5c253d48efd27e433b9dc490107a7b085796aba7478b655ea4094a876
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.6 MB (60625870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab834fcd1770047a6e50203c129a6813961ab933656b7b3128e93cff7bd756f9`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 13:00:55 GMT
ADD file:2976046990378ced866255a67ab36afc20274c7b7af11d96300f357ae570d877 in / 
# Fri, 16 Nov 2018 13:00:57 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:03:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:03:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:758d221cc9f1d829545f42705b953283848c2970959d33397947eb388502c740`  
		Last Modified: Fri, 16 Nov 2018 13:14:17 GMT  
		Size: 44.7 MB (44745182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c655f76e646f5b029bea2d42a53f727c7f489243b79e20960371d652c0d86f8`  
		Last Modified: Fri, 16 Nov 2018 18:25:42 GMT  
		Size: 6.7 MB (6732485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74641850b740f2687bcd75eab71f7fd7fc95961f4bd1395bb30a12e302bd9d46`  
		Last Modified: Fri, 16 Nov 2018 18:25:42 GMT  
		Size: 9.1 MB (9148203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:d61f5d1c2205fc57673da1a44619d45154c6750eb9b837b3e7bca525ed774906
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.7 MB (64669923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a13e673230c37f0da80b0a51d86ecfe71c5d911beb64bfa0b4de42375613ae12`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 10:08:19 GMT
ADD file:17a46443af185f1ffdb96f7e603e8b772d04ed05d126175f2093dcc29a74eea0 in / 
# Fri, 16 Nov 2018 10:08:25 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 02:04:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 02:04:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:4d28c915b3a7bae9c64d67fc0a5a1a1798b900b64e3f0f25bf675825a70454eb`  
		Last Modified: Thu, 15 Nov 2018 00:59:46 GMT  
		Size: 47.6 MB (47624454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e578e488fcf1206e2a067804533219b0d4618ce14aede7d768392be9ee33df45`  
		Last Modified: Sat, 17 Nov 2018 02:44:00 GMT  
		Size: 7.3 MB (7285107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d87a6afc06d00de2db6ec766976aed83bd60524698b021f1e54535f05982507`  
		Last Modified: Sat, 17 Nov 2018 02:44:01 GMT  
		Size: 9.8 MB (9760362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:e5668460f02e50ec872f21002ed6ec772844ce00f70e52b3186766c5e2bd2192
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.5 MB (67539608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2547e319a1a328e112e48dc914f2d88b8fbaf99ff24b6549f91616c44da5464`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 12:24:08 GMT
ADD file:81e573bb4763beb949920d054c8e94f5db9d739ac9d690d96a754f305a48c262 in / 
# Fri, 16 Nov 2018 12:24:08 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 11:07:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 11:07:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:edd12c11078a246f15b02e10c20866757bac798f4af691c536ebac0f33109aad`  
		Last Modified: Thu, 15 Nov 2018 00:59:26 GMT  
		Size: 49.9 MB (49878865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c225d8691826d64376013da7d8583a661b16a1c098b188da3371615bfa201f4`  
		Last Modified: Sat, 17 Nov 2018 11:36:53 GMT  
		Size: 7.6 MB (7551290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57e7dedf5f7091804b4044ebc568f82a86a8e6be3e94cc089595715f22cc9f13`  
		Last Modified: Sat, 17 Nov 2018 11:36:53 GMT  
		Size: 10.1 MB (10109453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:c86ba9d2fcecfa7942fd2510a220f755f2761ba6ff5ee28e7b70c101d2b267aa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.7 MB (70679703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba8099f63693fe446d44131886a8034a81750ad021ffbd6d0599958b63512ac7`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 09:28:16 GMT
ADD file:4b38735441c9ecfeb498b5f35e2dce32ce6266641582b4aaefaf26838f579582 in / 
# Fri, 16 Nov 2018 09:28:16 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 19:02:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 19:03:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:4aa2b7aee025832a6b13b63dd84f13be21616514ba164fb085cfb78de7ea6b82`  
		Last Modified: Fri, 16 Nov 2018 09:35:43 GMT  
		Size: 52.3 MB (52323593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43e0b5eec54f4da9dcd938876eb68273f994772ce7ab0564900fbe0192f843cd`  
		Last Modified: Fri, 16 Nov 2018 19:39:57 GMT  
		Size: 7.8 MB (7832689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bd1d81c3f1e0272bd32df2553619029171f52971a00c173fa4fc9d023763c60`  
		Last Modified: Fri, 16 Nov 2018 19:39:57 GMT  
		Size: 10.5 MB (10523421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:9eb4898939826db5d00e426b7e9debfd3f8102b0bd0345eddd8f5e728e0ca549
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.6 MB (64556565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:114d84f6c90218a9eb31210703f7d1997cd6f3709d78c36127c69c91e6fbb054`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 12:41:59 GMT
ADD file:6b181cd03a13119aa2661ac8f21a4233030df509147ee124817130f21194874b in / 
# Fri, 16 Nov 2018 12:41:59 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 20:11:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 20:11:37 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:d474fe63c62712215f3763087125da648177c20c3b603f11bf1667b227629715`  
		Last Modified: Thu, 15 Nov 2018 01:02:23 GMT  
		Size: 47.8 MB (47813893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2ee2695035ffdf7cc2ef4520c2267f5f4f3d758d70ce7dcbfbc2e266b9a7972`  
		Last Modified: Fri, 16 Nov 2018 20:20:55 GMT  
		Size: 7.1 MB (7071601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7434530b0b43f48311e12e2b095c4d593866e98f44ec7f2ae7b6c69086bce18`  
		Last Modified: Fri, 16 Nov 2018 20:20:56 GMT  
		Size: 9.7 MB (9671071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
