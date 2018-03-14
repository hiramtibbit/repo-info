## `buildpack-deps:buster-curl`

```console
$ docker pull buildpack-deps@sha256:8ded43bc69eeac8398f2d4f37c0b4bd4538d99b99aebbd5ad630fa1a80146b48
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
$ docker pull buildpack-deps@sha256:d31044cb2c2d76d53727730fcd45bfedbc51c01c6f4cd5478d765d9189a7f329
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.2 MB (63209763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c38205e3bc9db8ece092dd6a7723389a905a7683f4628cb95f3693b98f5a81d9`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 20:55:16 GMT
ADD file:537e06628ea028f52021a9aad51720850dc94d2a86621b2fb6a53d5bbd6f6fa5 in / 
# Thu, 15 Feb 2018 20:55:16 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 21:31:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 21:31:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:4a624312c2db7430c9bb92ed09f45fa96e0a937496b9d3534a7abaacfd9b9b21`  
		Last Modified: Thu, 15 Feb 2018 21:03:36 GMT  
		Size: 46.0 MB (46009547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:772905dc01a504ecb4b55afc2a9002cfb66d11901323cd85b039c07fa9c36239`  
		Last Modified: Thu, 15 Feb 2018 21:48:47 GMT  
		Size: 7.8 MB (7806228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:760344f39f0af9481ebd2a12ab9dd05271cf9464278e17baa373c3a127a34c15`  
		Last Modified: Thu, 15 Feb 2018 21:48:47 GMT  
		Size: 9.4 MB (9393988 bytes)  
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
$ docker pull buildpack-deps@sha256:1307efbce08f28eb98cfc7dfc49fbc5cee370cb8d80323834955d6fd17974507
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.3 MB (67292852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d38992901580186949d5bc55920865848ee2744bb99c2ce5de203c0b15dcfe66`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 14:32:40 GMT
ADD file:3c01fc209b7f339c808191aa480867f0b99e4accf7ef1462f8349f440a20ab7f in / 
# Thu, 15 Feb 2018 14:32:41 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 06:51:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 07:03:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:6f1e2ef09ccab2284fed00608cbd492f1b548c36e40555caeb9fc07f55ccb93b`  
		Last Modified: Thu, 15 Feb 2018 00:43:51 GMT  
		Size: 48.7 MB (48716336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b20316313277691ccc8b35bbd735daf23d96848633d4716f31640518fd2d32f3`  
		Last Modified: Fri, 16 Feb 2018 10:39:14 GMT  
		Size: 8.6 MB (8607086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed9135cebb062a71fb97e6aa68c8a1795b667f7ec722ee92ecd70210a629e20`  
		Last Modified: Fri, 16 Feb 2018 10:39:14 GMT  
		Size: 10.0 MB (9969430 bytes)  
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
