## `buildpack-deps:oldoldstable-curl`

```console
$ docker pull buildpack-deps@sha256:0c6595cb6ce69462e8ecb71b164dcd0212b68e4b93ea77b8226b804fec6a3782
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `buildpack-deps:oldoldstable-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:b43f6918f3aef2c9558156fb5656186353801cd43679a74f57807819d77548b5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.0 MB (44970129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd8454d5ae5191e95aed20fc033fc977d6bbae6b553dfcb9ca1c91a60e4bc20a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:30:45 GMT
ADD file:4c3253aab9345644b963de0904cbc731c05501e6c101d078a25c0ee8452ea018 in / 
# Tue, 17 Jul 2018 00:30:45 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:23:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:23:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:7d9e07670407202c9f5ca38e1c74864757e2902b55ccc081bdfed0dfc88c94d9`  
		Last Modified: Tue, 17 Jul 2018 00:47:43 GMT  
		Size: 39.3 MB (39339295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:092b23bdc1e85ba0edecdfe9aad185a22e2a79286692d6c6d1bfbff8bfeeef28`  
		Last Modified: Tue, 17 Jul 2018 04:01:01 GMT  
		Size: 5.6 MB (5630834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:oldoldstable-curl` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:99199f5c2ec85e33c56a2279a6c117bec291b4720339da80d3fdc5a2347cb180
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.5 MB (43467562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b630d33d690718bdc53283ee8c8885a3efc5750738fc7a27fe989680f4d1da20`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 08:59:27 GMT
ADD file:118f69d2224ba46ac27284a61951715599b15536ec67a7c37bffc85458461cfc in / 
# Tue, 17 Jul 2018 08:59:28 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 11:53:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:53:08 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:e68d31fb2a9723e10f3faae2ded8811dca04291d0d555713137ce701438ad772`  
		Last Modified: Tue, 17 Jul 2018 09:11:13 GMT  
		Size: 38.0 MB (37992753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eb66de304bbae7859a5cb34196cb40ff0d7723ec3f22ba3eafef0f3bf932610`  
		Last Modified: Tue, 17 Jul 2018 12:04:25 GMT  
		Size: 5.5 MB (5474809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:oldoldstable-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:d7b71f76670b314bd0de73a26ed5af8ba8890c620c6c1fb82db0288041a83e04
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.0 MB (41963556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2435997c6c2a06edac02a6e4c3b6c0e2a4c2abb4aa3f5c231baa5d3da3c7de4b`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 12:05:32 GMT
ADD file:145cda1c15a6a0ae66272051773cc09811f4ac3c4c4feea888d966d244bafcae in / 
# Wed, 27 Jun 2018 12:05:33 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:51:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:51:06 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:da52c543045989735e85b13ad74f53f9e93ba8697a71306d397ce81402b287c8`  
		Last Modified: Wed, 27 Jun 2018 12:15:25 GMT  
		Size: 36.6 MB (36620254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ee0ea18ec7bde0eb83ac505ddbcbf84e4709915eb05424fd9bee063dbfa3026`  
		Last Modified: Wed, 27 Jun 2018 13:01:05 GMT  
		Size: 5.3 MB (5343302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:oldoldstable-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:17e309252ab4ca5af95f1156a26f701532fcfcd2cba6b025f7fa72b64d3e534a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.2 MB (46173483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03ef3247ee63a57b4fb46904e5c58da35e288dc09519c7b4b8d2e80d93545671`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 10:49:16 GMT
ADD file:d40801b865e65cc6b87379ebf0411c4eab5e5b94c02de103dd8e75ef16aedb97 in / 
# Wed, 27 Jun 2018 10:49:21 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 11:43:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:43:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:4bf8262684df8a752a20a3e6b45f60585658f70a4dc9110885e7456952812957`  
		Last Modified: Wed, 27 Jun 2018 11:14:00 GMT  
		Size: 40.5 MB (40532864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ae33357922f1eb795a8f57f33a3fcc44ea16d1dd566b0ea598524cd9b3f3661`  
		Last Modified: Wed, 27 Jun 2018 11:52:49 GMT  
		Size: 5.6 MB (5640619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
