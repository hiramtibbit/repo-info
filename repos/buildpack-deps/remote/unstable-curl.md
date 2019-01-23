## `buildpack-deps:unstable-curl`

```console
$ docker pull buildpack-deps@sha256:ae5d3c50a27a77d6e9d727719b7130406a688e8a5a6399fe5799f8602b1ddce9
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

### `buildpack-deps:unstable-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:b0b208730d8d599dc976912029e9f1fc332ad92f874aa8d52b540fc7c1d0d8ce
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.9 MB (67857445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84452b7602ee3fbf9894d83ef8b02d0d81e3c542ef55098de65f922e8a088b93`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 19:27:44 GMT
ADD file:10ceb3ed065b964c9332532874322c1278da8bda0c7caa7ea790da93e84d49e7 in / 
# Tue, 22 Jan 2019 19:27:44 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 20:04:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 20:04:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:f695fc1eb490900cdc6224504e9f758820a8d68fb1e4512ed93d354848277d3d`  
		Last Modified: Tue, 22 Jan 2019 19:36:00 GMT  
		Size: 50.1 MB (50121951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4379ad7076713319119d25403f3f64f68f7445157c3f269dad09b6b9b9e04381`  
		Last Modified: Tue, 22 Jan 2019 20:12:08 GMT  
		Size: 7.8 MB (7769464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76e4b42821a5f33436c5c6dc5deb527160238fcab8b6d0538596869ee4fc5c17`  
		Last Modified: Tue, 22 Jan 2019 20:12:08 GMT  
		Size: 10.0 MB (9966030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:unstable-curl` - linux; arm variant v5

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

### `buildpack-deps:unstable-curl` - linux; arm variant v7

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

### `buildpack-deps:unstable-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:a9add0436c785292a2262428866f8e490f7f248a0e4a1c420a6a0a4b49a71cf0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.0 MB (65992334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca92fd94390ca4dfa3e23c4c715869c5c03b8f4cc4379f81b2941061e3b069f4`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:05:53 GMT
ADD file:16f19362d47eec8582d5843c93afec247d55ac90bd3e2351e61cbac163b34c0e in / 
# Sat, 29 Dec 2018 10:05:55 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 11:56:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 11:58:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:c0d52c910d70508104f9c514efede1ce4866075357222288e85fd8962ababf3f`  
		Last Modified: Sat, 29 Dec 2018 10:13:07 GMT  
		Size: 48.5 MB (48472215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:299400b75513a26ee0b2e41cb618ed032e76599ba1eaa1ea85dc39203a221c1f`  
		Last Modified: Sat, 29 Dec 2018 13:31:14 GMT  
		Size: 7.6 MB (7566461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37af55c5fb1ea6a1f3b0966a3001f2f7832ecbf8f96d02c2ff4c114898ed3a4c`  
		Last Modified: Sat, 29 Dec 2018 13:31:03 GMT  
		Size: 10.0 MB (9953658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:unstable-curl` - linux; 386

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

### `buildpack-deps:unstable-curl` - linux; ppc64le

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

### `buildpack-deps:unstable-curl` - linux; s390x

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
