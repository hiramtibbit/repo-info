## `buildpack-deps:sid-curl`

```console
$ docker pull buildpack-deps@sha256:1540b4e703421c3b02dbb8c3260c1adf841734bbbeb8dbb17605adc178a044ff
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

### `buildpack-deps:sid-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:14b6eb15b285b9afc26b29962b7516f1bbcee698f079bd6a7d63a182c19a1e6b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.8 MB (67808525 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7bfc13545a9116ddb224437c4a20fa76e5ab3452b0d3aaa0e70247a7346b962`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 03:28:59 GMT
ADD file:9c6a8e35fb0a355b15c531885f92b45f2a8f4a102a8fdb351280826b1dc8a455 in / 
# Wed, 06 Feb 2019 03:28:59 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 05:49:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:49:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:7c225361587bd702b61e38248f9c9566e1150260cbc201bb504e523904acde83`  
		Last Modified: Wed, 06 Feb 2019 03:34:53 GMT  
		Size: 50.1 MB (50076371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:884747bf56324a09bf5275ace52fa6d996febb1385364fb72eda5c1c0fa391f5`  
		Last Modified: Wed, 06 Feb 2019 06:00:55 GMT  
		Size: 7.8 MB (7766219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14250846160cad4f9b13fbefb0eb5dd31cab2d6cfa17dca1582204cb82a18903`  
		Last Modified: Wed, 06 Feb 2019 06:00:56 GMT  
		Size: 10.0 MB (9965935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-curl` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:a7c86f1348dd7ec93dd52c2f73f0ed0fea03407acb90aead6185003b15e142c4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.8 MB (64815143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ae124d61a387343ffed514b89518ee7b7b27fe4be7798d1f5ce8919abcbcc4d`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 09:52:49 GMT
ADD file:3cf7a3febf73a64743197e788ae0c4cbac2910591e7309af2b64c6711b5a11ab in / 
# Wed, 23 Jan 2019 09:52:50 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:35:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:36:01 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:3b276ad85512834c81c9b2f95f5b5ea289977d77c9c5631f51025db927c73b71`  
		Last Modified: Wed, 23 Jan 2019 10:00:59 GMT  
		Size: 47.8 MB (47834554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:607b85f5609cee649928f4ca0cc560417fb6b08a4da3716106da703f89559c8b`  
		Last Modified: Wed, 23 Jan 2019 10:48:00 GMT  
		Size: 7.3 MB (7321619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1ddf4bb64a17fec2cdee97ac34cf930e2cd0382e11335fddbe888258225f9c1`  
		Last Modified: Wed, 23 Jan 2019 10:48:02 GMT  
		Size: 9.7 MB (9658970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:c19ff3b052132c9fe2409635e780322736a55f7c4a3fc7aab4d675101f83b96b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.0 MB (62004961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:262c7e4346d2d76bf4755f4890c76db1493c815fe8be9358665aeafbf9f404dd`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 13:02:34 GMT
ADD file:547d53792a57ce6ff63351b170c574a64a1f3879da9da1d784f1bc3ce581c4d6 in / 
# Wed, 23 Jan 2019 13:02:35 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:41:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:41:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:288ce18ba4ebcc42443c496b55fcdfac3c2e3adca52487bd34a8f33e12ea6b63`  
		Last Modified: Wed, 23 Jan 2019 13:11:04 GMT  
		Size: 45.6 MB (45626061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0860558ec7ad9472c5482b842aa9a40735f76cf005fa2cc721b75037700e2c5`  
		Last Modified: Wed, 23 Jan 2019 14:04:19 GMT  
		Size: 7.1 MB (7063097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a6b22840608ef5c41847bb5d2a8b05b591b43b2de352dc5ee70c494da88be63`  
		Last Modified: Wed, 23 Jan 2019 14:04:19 GMT  
		Size: 9.3 MB (9315803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:b842095f72968a6ce3227336733a89e88d1d91b742d61a93a148d11b336dfd1a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.4 MB (66404947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c9e5f08d31cd6e17ddbc62e999b5a5895ee9c8322cb0fd091d47f3916f17b75`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 10:07:17 GMT
ADD file:7b42d90311ba4721000b061ce5688b7617c00f357746b95a1001654a8305cf2e in / 
# Wed, 06 Feb 2019 10:07:20 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 10:26:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 10:27:01 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:f20511bfb9032422f9398607efa0d22ecc98b39ed90a1905a9bdf23e4a9fac4d`  
		Last Modified: Wed, 06 Feb 2019 10:13:03 GMT  
		Size: 48.8 MB (48820697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0e7af22c8a8d91244e5d3dc8314423b1f51c571e552b3ca769fc46d670e1496`  
		Last Modified: Wed, 06 Feb 2019 11:17:02 GMT  
		Size: 7.6 MB (7630486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:208e8fded67b605a465c7d15c4bd287883a27bb75b849b6671f4fd6e7f0b9bfc`  
		Last Modified: Wed, 06 Feb 2019 11:17:02 GMT  
		Size: 10.0 MB (9953764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:3e27d8aaa6f47e5cf44e883dda199a6e63829ca48c9422e017aa37ab7affe081
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.1 MB (69099234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea220fecdc451389dc80f779aab505a56345c173fbc17fce532a6707e8949235`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 11:48:01 GMT
ADD file:60156a4ab549dbfbe647fe6d75c15be3d59c7f78e100b23d7fece33f9987a4a4 in / 
# Wed, 23 Jan 2019 11:48:02 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 12:46:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:46:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:a8187159bf7265f13ac93029826bfe83d3a39efa74759af602cccd661f6c58cd`  
		Last Modified: Wed, 23 Jan 2019 12:01:14 GMT  
		Size: 50.9 MB (50870631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07584d63b599d1f1ef0dafa0d82d0074596bb74153cae9d00316c57df8804862`  
		Last Modified: Wed, 23 Jan 2019 13:09:34 GMT  
		Size: 7.9 MB (7920922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eaa0fb24b52e5fc5b928ccfbfd79237fae3b4dd5b0a5655d3e2a620f94c3305`  
		Last Modified: Wed, 23 Jan 2019 13:09:34 GMT  
		Size: 10.3 MB (10307681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:77c5721b4ea8660ef4554798c2db491b44c9a04af07ee1a0e4e71dc90827cea0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.7 MB (72717454 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d11b5f9765b6b3833d14573fe41f462eaa2d63cf5d3fa2b64fc8f6c56e52f79`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 09:25:21 GMT
ADD file:c381862d77eba21c30de94ac29d9a3662382b745f356c741e2c6aa911117567b in / 
# Wed, 23 Jan 2019 09:25:28 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:50:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:50:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:16c9a23335b4b9488f472a518d41a12e801a47bfaa70248bc6ae0dbf20e9c9ad`  
		Last Modified: Wed, 23 Jan 2019 09:31:00 GMT  
		Size: 53.8 MB (53809819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa3881bd371a09a63fc001a65b56f2c5bcacf7e84215e62913ed84e666dc529a`  
		Last Modified: Wed, 23 Jan 2019 11:46:38 GMT  
		Size: 8.2 MB (8204371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc5aa138cf823e260f81ee1a77d49b90dc8134bc36d11cc46325447ede62c29e`  
		Last Modified: Wed, 23 Jan 2019 11:46:37 GMT  
		Size: 10.7 MB (10703264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:a94ebce64a00d7597b4c75f52339b583b26c65affc55336303b0bbc50c3a7f87
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.9 MB (65882762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b01889a116b4bbbf2fe8022bdf8ad321549ef3bd7d1ad17772ab7ba89271e445`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 12:42:37 GMT
ADD file:e5871bf8cff4f81c448ae9511dbbc13d61c082611aaf1b4ed8fd3d39599d50e3 in / 
# Wed, 23 Jan 2019 12:42:38 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:15:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:15:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:fffe3a591fe99af7dbd591007a2b6abac8ccd06112b230fccf7a91aa94a56b57`  
		Last Modified: Wed, 23 Jan 2019 12:47:44 GMT  
		Size: 48.7 MB (48689293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:075ed0bbd18f4c049ca7f06fe5a055777afa8afcbb1de3e593fc24c54796f668`  
		Last Modified: Wed, 23 Jan 2019 13:25:56 GMT  
		Size: 7.3 MB (7339159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8169e8e34352167397aa433adedecdc056d27ec68c4a7db2ce8e2452c77a0cf`  
		Last Modified: Wed, 23 Jan 2019 13:25:57 GMT  
		Size: 9.9 MB (9854310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
