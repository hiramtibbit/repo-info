## `buildpack-deps:testing-curl`

```console
$ docker pull buildpack-deps@sha256:f1ea070bd62c85b65220449b27fd1103c4c4f036498f6cf375a3e314d2fd0bf5
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
$ docker pull buildpack-deps@sha256:88c479565b8a23b3ca46e1d437b7f0fc5f657054ef3702880040eafc45960a04
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.0 MB (67988214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c45b27609e566a09730fba7e838a2b2778426e397e612de10e3c1a54f62e9415`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Mar 2019 22:39:10 GMT
ADD file:76176cc6a94815c82ed8b377f8be206dafafdd7656196edce1f3acbf8762b522 in / 
# Tue, 26 Mar 2019 22:39:11 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:13:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:13:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:8ee468effd219ecb1753308b8b7435b236ea041486108ab102e6f1f7443b892f`  
		Last Modified: Tue, 26 Mar 2019 22:42:44 GMT  
		Size: 50.2 MB (50229764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba055e9cefd1529a52a28e24a0e75e071c7568d5c609fdf0394ad6afc26471b9`  
		Last Modified: Tue, 26 Mar 2019 23:29:11 GMT  
		Size: 7.8 MB (7785603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99cfb1e76ef4c0f2b08b124f240a27ac45d72d215e73f378075ded1e2e8fff4e`  
		Last Modified: Tue, 26 Mar 2019 23:29:11 GMT  
		Size: 10.0 MB (9972847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-curl` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:16f77c8ea93a5b86d8bde8e8157e59d8ac0da0e52bf5546f34a44a2e6de32903
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.9 MB (64940481 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1aaf00fcd9acdf8aa737106ef1307c8b04beebc167d5e48ec64a9f724560b49b`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:49:29 GMT
ADD file:ddb75e8b8e9c5b8098708ceb9869c9ea25f7394921fc8f569eeb754a777da554 in / 
# Wed, 27 Mar 2019 08:49:30 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:17:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:18:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:a3a3fca888d0dad8f4d55cdd346e99c4ba5d7cba92d5c48d66d4f9b00391c738`  
		Last Modified: Wed, 27 Mar 2019 08:56:19 GMT  
		Size: 47.9 MB (47935308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05c8984ac3b681c03150d9945d2253c3f42a3b4586c43b3c390b5c7e9166f743`  
		Last Modified: Wed, 27 Mar 2019 10:05:45 GMT  
		Size: 7.3 MB (7336821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60b328cd142d9d00a9fc90f0ad794cbf2c4f196f0542149781c22710ea731162`  
		Last Modified: Wed, 27 Mar 2019 10:05:45 GMT  
		Size: 9.7 MB (9668352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:f3e9152be7061d13300e49f82420649fd315d2d76dd562a4009628d059719121
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.1 MB (62116840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16202147da6d38aad6e7148f8158f30ca173c1bf36f3163d9e1cbd356714b494`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 12:03:01 GMT
ADD file:9ea8b1eaf7df65831f45d26aeac613288e975bb3de0402f2fb67620fa4073ade in / 
# Wed, 27 Mar 2019 12:03:03 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:58:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:58:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:029cf51a83d447de52cef0ffab80221ba6a4f49c0a5dd803f9a80b58ab2d2b72`  
		Last Modified: Wed, 27 Mar 2019 12:10:17 GMT  
		Size: 45.7 MB (45709457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:468280e41ec0f2b8a9cfda166f27dc50bbc402a26d099d9910c3ab7cf75d761a`  
		Last Modified: Wed, 27 Mar 2019 13:17:45 GMT  
		Size: 7.1 MB (7083063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58e2b2ba3f981d88992647688be409dbbaf46bf46f3960d2f67c48c32d086001`  
		Last Modified: Wed, 27 Mar 2019 13:17:37 GMT  
		Size: 9.3 MB (9324320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:838b7fd27be8ae2bc8a5c6852c2e67147cb45df3b93c0bbdef6f6fac977bdffd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.6 MB (66632038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3d37bab345f9cf97329b6b7465eaa6e85c86586f9f613feb0aa276639347c6b`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:44:48 GMT
ADD file:efdad40bd88daf011b7ec9e7c3bf62f934bcb8f2e84321dcf5b519af553c8be2 in / 
# Wed, 27 Mar 2019 08:44:49 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:38:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:38:47 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:83128e932c2f242170e54dd01950ab9384a9fb68c814a77c1632b9fb6a007661`  
		Last Modified: Wed, 27 Mar 2019 08:50:27 GMT  
		Size: 49.0 MB (49022969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea80f3ad9712797dccb9be63a9f07b097495de62f956980d0d2369dfa244cc13`  
		Last Modified: Wed, 27 Mar 2019 10:31:54 GMT  
		Size: 7.6 MB (7649554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:223575240873e37aa2265ea9e7b80eb3b7b52bf4e3ee6a95e4fc614db50faa96`  
		Last Modified: Wed, 27 Mar 2019 10:31:55 GMT  
		Size: 10.0 MB (9959515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:53dba150a91603876dea66d4357851e2f01582c40ad98b2e9a6f36aefb1f95df
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.3 MB (69259390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fbcbfa4f42c113f98624e8073f6bc984c7e4aaa1f0d39e36728b81a05e30d6f`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 10:39:29 GMT
ADD file:e559a18019b869d561ce9206554ab0f0d70d2f0b5524ea6b6e98e94bf1ac2c09 in / 
# Wed, 27 Mar 2019 10:39:30 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 13:36:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 13:39:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:a19caaf6f7524a9023673e7fe943eb4aeb990ad49b202bb21ebd76af7b2d6013`  
		Last Modified: Wed, 27 Mar 2019 10:46:01 GMT  
		Size: 51.0 MB (50992741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25c29554f6331ff982085dae0958e8d8b9f765f1a1d8321674db501de13de268`  
		Last Modified: Wed, 27 Mar 2019 14:06:43 GMT  
		Size: 7.9 MB (7948658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab48bc7a278fad7787facadc0eb1a55fe885b9cfe370f688312cf9c8421afef6`  
		Last Modified: Wed, 27 Mar 2019 14:06:43 GMT  
		Size: 10.3 MB (10317991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:4ec464ef68a9403d6d1f4ff103813df89364e74a648f513ed210188f6e044e42
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.9 MB (72903014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adfc582a346b59536df2fc4f0e86cccb268069ea016370927c7e7d24011a644c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:22:41 GMT
ADD file:aa7dc9cdae0cf7507369fae7d6118dcd3d999e00e3ef21068695fe6648ac20ca in / 
# Wed, 27 Mar 2019 08:22:45 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 08:52:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 08:53:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:1bb6234125526f51a6b0bfb06f13173fcd77203e03fd3ea331c9bf5b8b9fd9a8`  
		Last Modified: Wed, 27 Mar 2019 08:28:51 GMT  
		Size: 54.0 MB (53972187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f57cdc447a7a0169ef80f47a0c1720252005fef375ead499d25d52a1cf711ce`  
		Last Modified: Wed, 27 Mar 2019 09:46:17 GMT  
		Size: 8.2 MB (8220179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24a73c130df883fca60855727b95f93bac30bf0d5df50fee10997cff4dffe61b`  
		Last Modified: Wed, 27 Mar 2019 09:46:18 GMT  
		Size: 10.7 MB (10710648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:71055d8bde97285ea400e6b38d16d107eb6e39bf237e7efe1e59187fbf38529f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.0 MB (66019426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed98da0d7a91ce15985b1fdd3795bc92c8c2bb53d21c09eca24b69af57fba25b`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 11:42:12 GMT
ADD file:b91f4c9de51b195c8d4d540393591ec9025b5fafaab3be78636d24216fe7b04e in / 
# Wed, 27 Mar 2019 11:42:13 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:33:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:34:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:c26d5718bd8ed95e77d7925c874534f3358d019637f944f35a70fdc0aeed7217`  
		Last Modified: Wed, 27 Mar 2019 11:45:22 GMT  
		Size: 48.8 MB (48798574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48fb7c4fa0951f9c55f07e80dd1012a24f7d9ad9816ef34f42c8afa5119da878`  
		Last Modified: Wed, 27 Mar 2019 12:51:44 GMT  
		Size: 7.4 MB (7360192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42e9703f04fe30fb4e0aff17d80fab29ebedc97a22be2a976cf13ae585c5c185`  
		Last Modified: Wed, 27 Mar 2019 12:51:42 GMT  
		Size: 9.9 MB (9860660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
