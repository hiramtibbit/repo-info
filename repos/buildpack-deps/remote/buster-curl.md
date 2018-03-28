## `buildpack-deps:buster-curl`

```console
$ docker pull buildpack-deps@sha256:3dd0f11d4bd7427c206ba936e230c866929e0da8436e72fe2b64c324c5d4d2ee
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
$ docker pull buildpack-deps@sha256:66411aa55ce6269330b921d4002d9bbf99127f98de5d9d11cd90ecd6bf872454
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.9 MB (65895918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5db9d4cc14173ddc01811a5f9bf71f13a4446fb798f99445a036b73b4f08877`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 21:56:10 GMT
ADD file:2219cecc89ed69975239dfc7c181d32ca55b272939b08410f4213d61a0281f82 in / 
# Tue, 13 Mar 2018 21:56:10 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:23:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:23:08 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:18969b622956cb8bc2c2e169be10942a74c07098134954db39e745d704631ec0`  
		Last Modified: Tue, 13 Mar 2018 22:35:27 GMT  
		Size: 48.2 MB (48158970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:902ef9bb40cf26af0ca5b4e59394ef05874342e7b0fdab3709f6d81db2e1dd74`  
		Last Modified: Wed, 14 Mar 2018 00:18:52 GMT  
		Size: 8.6 MB (8633494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e66d443de451643ebfc61b107549a8ec674a3ccacea1df51ae8db332f882913`  
		Last Modified: Wed, 14 Mar 2018 00:18:53 GMT  
		Size: 9.1 MB (9103454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-curl` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:f00553f9a3234c2ec1d68e544cad02113a46fe7f6a2e068fe8d00123914206d6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.8 MB (62808271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c0c3b7d8ed6d9bb7d46247fe17554728b52760891c3fcadc019c112736c954b`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 19:54:44 GMT
ADD file:d2d295ccc43cef52084ca0ba28f30b5bdcf84c56606e9584a277238f11689cbe in / 
# Wed, 14 Mar 2018 19:54:44 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 20:34:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:34:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:944025c4ab4f6da4a6f4cd84c23ced4cc2c71f0e649c6dc4983806bf127c1717`  
		Last Modified: Wed, 14 Mar 2018 20:05:42 GMT  
		Size: 46.2 MB (46152089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea07882965a49e43efe695a54d988276ac6c1cb348a0f05e9694633f27649349`  
		Last Modified: Wed, 14 Mar 2018 20:52:11 GMT  
		Size: 7.8 MB (7806768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:969fa20fe5cb6d353fe6212536953e33b47635d6f818f9bd6201cbadb68a3d5e`  
		Last Modified: Wed, 14 Mar 2018 20:52:11 GMT  
		Size: 8.8 MB (8849414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:6b5c77f7622f6f7294069222ec1e22402ccd1bc75982f6a813ca2b8255285832
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.2 MB (60172096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7dd3b822251890ef5ea49b8c0e82cdc7d544f7ad6aaa7f5a29a2c9f9b461bd4`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 12:25:46 GMT
ADD file:6208a77a3fff4a68790f06b1b3a3e0fcb563724a9d1485d8e10592e2cf32b190 in / 
# Wed, 14 Mar 2018 12:25:46 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 13:08:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:08:13 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:8c1aa76b118f0b6f588a119501660e6c6984f1c8af222f2b04be33b64cada0c2`  
		Last Modified: Wed, 14 Mar 2018 12:37:22 GMT  
		Size: 44.1 MB (44078135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e9ef25c18e0f09d74347d03f695e4b2ca6892d40380d17d5e72a7990176d9ca`  
		Last Modified: Wed, 14 Mar 2018 13:25:25 GMT  
		Size: 7.5 MB (7530275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b0a23b0574822c6b7f8d5086f3f20914e914e7cc95644c971f578832516698c`  
		Last Modified: Wed, 14 Mar 2018 13:25:25 GMT  
		Size: 8.6 MB (8563686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:512fc37b4f57e430fcad80859990acad0fa328103e461e9d4070c468cfbad6a5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.2 MB (62154520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4861ac1bdfac1742f6e081dd46de58421b630c6ed9b19daf5488d6bc17da9202`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 17:23:02 GMT
ADD file:4d06cc781e9fabadda4327717b9e858e087a533b952ce4c62c6903392b4e76ce in / 
# Wed, 14 Mar 2018 17:23:03 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 18:10:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:11:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:5f4421c3a5683a5815aa38bb9e5b6d9900c1fdead4046af0aa2e60a21ca2db9e`  
		Last Modified: Wed, 14 Mar 2018 17:36:30 GMT  
		Size: 45.5 MB (45463739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4adc8930e784e1fdda85378c52f6f208653e7fb05f762bb8e7f429be32ead022`  
		Last Modified: Wed, 14 Mar 2018 18:57:39 GMT  
		Size: 7.9 MB (7852846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:870315f2036e8576f26842c96366fa568ab0156a2a2e17b8eb5e0e5b44f6b9b6`  
		Last Modified: Wed, 14 Mar 2018 18:57:39 GMT  
		Size: 8.8 MB (8837935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:cefe5999918db412d7f4037db407dff2eab95e609d60ea4cc84796590e8f6f98
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.9 MB (66913928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f664a1ff3a42027e2f36ec4e1c82f515d2ac7bb016cc69c3cb61ca6a9c55b947`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Mar 2018 13:37:25 GMT
ADD file:bfb9ad908672d1fb0f454b1773bd0d56a2ef024f07179e570a361b6b2e77e90e in / 
# Tue, 27 Mar 2018 13:37:26 GMT
CMD ["bash"]
# Wed, 28 Mar 2018 07:49:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Mar 2018 07:49:41 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:b1c4e2135548f37bc829a715cb260e01768bdfb16003a8aaa3bbf67c1ab41306`  
		Last Modified: Thu, 15 Mar 2018 00:45:40 GMT  
		Size: 48.9 MB (48927049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc2fe953acb38af2dcde728e6638c44002b1fe0ec5e861ad9e9989b280b8a1e5`  
		Last Modified: Wed, 28 Mar 2018 10:20:28 GMT  
		Size: 8.6 MB (8608118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b45732696cd532a3c77c8ce7b02466d70bf49d1a5abdf342ee3ae0b7142c5bf8`  
		Last Modified: Wed, 28 Mar 2018 10:20:28 GMT  
		Size: 9.4 MB (9378761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:b61010004d248d1872e5cf03bb4794710453a6904aba638edc8a6d564651810c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.1 MB (67111108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f63ada85c4402664ce7cb23cee81bcfdde7df3122a246921013f5d4abad05868`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 00:31:43 GMT
ADD file:04ae5de245ffb9dbfd27912d890db10dc909b586e3d500130e2885d1f3c095c2 in / 
# Wed, 14 Mar 2018 00:31:45 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 01:13:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 01:15:01 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:2b2963dd0429a4b00d9fabcbfa40f0cd89eb0d08a0d517051d81782f0a6248ba`  
		Last Modified: Wed, 14 Mar 2018 00:37:44 GMT  
		Size: 49.6 MB (49560566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f82e6418b7f0e6a05245fae45fc4a2519fcc5938208be5b3627df385f120dd4`  
		Last Modified: Thu, 15 Mar 2018 02:27:48 GMT  
		Size: 8.2 MB (8210891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:568277d30e9372795dc30b603c291ae586bedea422f47885369dfea9c1779be0`  
		Last Modified: Thu, 15 Mar 2018 02:27:48 GMT  
		Size: 9.3 MB (9339651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:e190a731142fdda65ea904ef117f0dc78511b9d3b3f534b033d8f58d42a946f6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.6 MB (64584020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dc502331660826a3c96ea73ee9f6f2624c52a7ea7b64837039f78449ed1479c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 05:21:31 GMT
ADD file:8d3dda58905073b30d5dc7024667b795f7d4a69c2343682083583478415ef303 in / 
# Wed, 14 Mar 2018 05:21:31 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 05:46:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 05:46:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:f93a691cf870e13a2c95b73a495fd6e7444fb8fc891b02bf8bdab7a1e76016f2`  
		Last Modified: Wed, 14 Mar 2018 05:25:38 GMT  
		Size: 47.3 MB (47341756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a03124b87d86a7936f701b2593a938660b1cde782c41c2bb93e48c1b93d0b1f`  
		Last Modified: Wed, 14 Mar 2018 05:57:54 GMT  
		Size: 8.2 MB (8166947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d65c633f97f1be69a472eefe993e1dcc889444a3acafe05b6857a9e1d2c9eb`  
		Last Modified: Wed, 14 Mar 2018 05:57:53 GMT  
		Size: 9.1 MB (9075317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
