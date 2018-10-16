## `buildpack-deps:oldoldstable-curl`

```console
$ docker pull buildpack-deps@sha256:426c4ae269c914f6c15e3c579aa690ec5e5d4f4b5f22c596bed794f377a6ce23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `buildpack-deps:oldoldstable-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:a7afbf5b5527977d6b3c0682bed22732828e768230936bf5c1c771753e05c5aa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.0 MB (44970580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce1072ff8acab48a62f943988424eff6a7969f4629c88aaf42861b420a8f571d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Oct 2018 23:26:28 GMT
ADD file:5163482b7e1bd84981ddd31e96b6909dc030ab66fc6fe9f35882cdbe6eaba287 in / 
# Mon, 15 Oct 2018 23:26:28 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:03:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:03:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:bd7a7b0b72f4cd60a822a63b8700fb137ad3ec30a83eccba111b3a726c02efeb`  
		Last Modified: Mon, 15 Oct 2018 23:37:05 GMT  
		Size: 39.3 MB (39339774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de91dbcf54a318b72e46b4260799a2062f444dbca8d6a5da7a1f19aaa0b0d8ff`  
		Last Modified: Tue, 16 Oct 2018 01:16:41 GMT  
		Size: 5.6 MB (5630806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:oldoldstable-curl` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:5d2e6b58971570e347c0bbb5b4626bd73715492b142850bfe2dc9f5d2085bb3f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.5 MB (43468395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ff851b5cb88819d2b2c575ff13fb7de3574752d77901e8c743c77bf15b3d731`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 08:57:09 GMT
ADD file:61853f14d9d4d56ef0e2310ac18fc7f6767ffe6dadb735b828ae69d950bdcdbc in / 
# Wed, 05 Sep 2018 08:57:09 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 10:03:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:03:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:bcbcf7840b6fa343c8f47838ff17667fd75c164d83025f6a65d6533dd4f1512c`  
		Last Modified: Wed, 05 Sep 2018 09:06:40 GMT  
		Size: 38.0 MB (37993571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c632033ff40912ca3eb56a29e49cdbc90a7aefe7dadb54591f7f3b3ad133f0b1`  
		Last Modified: Wed, 05 Sep 2018 10:14:12 GMT  
		Size: 5.5 MB (5474824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:oldoldstable-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:ec0c3b54b67fd976a4ec5b954e8ddf14b0d454df55edeae5166bc5e1ac9ff7bd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.9 MB (41942155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5abb3dd7110eda066e524cacd7ae2673afe048e8559b57e11ac3c29db6b1cb04`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 12:06:21 GMT
ADD file:0f03b0fad93abdeea4254956f6ebee6e15d3c63c5b64bc6d973a664168700342 in / 
# Wed, 05 Sep 2018 12:06:22 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:48:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:48:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:282e383dda957a59e300c3642bf38cce411c9792f7ea952f837854e3effd85b2`  
		Last Modified: Wed, 05 Sep 2018 12:15:34 GMT  
		Size: 36.6 MB (36620285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee5602377929a728c8d3622051c1c45115191b1cc2bffb8aa2afb1e2914b8e89`  
		Last Modified: Wed, 05 Sep 2018 12:59:04 GMT  
		Size: 5.3 MB (5321870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:oldoldstable-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:6c35d10273bb033cc119302a9facb12dd7265f41a2d4e66eed79ec0770d5856c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.1 MB (46149983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0da1cb7082ac3589da2eb6dc9ba6f96c632a3b872f9d10252709ae4437ef20cd`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 10:45:49 GMT
ADD file:f270dc2a82d00313de1f792ee286405bcb5fa0e79dbfa44cf9cb0abc3c42221d in / 
# Wed, 05 Sep 2018 10:45:50 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:48:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:48:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:ffdb7073d93a02815a69b2a5396cb5bb86c592de0ac9fa593b1c71b964d536cd`  
		Last Modified: Wed, 05 Sep 2018 10:54:06 GMT  
		Size: 40.5 MB (40532872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8acd7c05e040cecb47dc01599f198cf50fb5360f56dd47d15f7f3593ef86423d`  
		Last Modified: Wed, 05 Sep 2018 12:13:25 GMT  
		Size: 5.6 MB (5617111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
