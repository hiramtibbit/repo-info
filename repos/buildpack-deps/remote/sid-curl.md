## `buildpack-deps:sid-curl`

```console
$ docker pull buildpack-deps@sha256:a270235af2ae0cd9dc4e4e428b8d9f104885a8a79a79793d45f98cc200733665
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
$ docker pull buildpack-deps@sha256:c23e71b2763d27e1a4fb858c19c3337a6d2aabfdbf5b61d6052579b54d764e27
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.6 MB (61577727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61d74d7ac4809f4ecaa802b6036103ab49cf0d46f78d0c29cc46a66be6b7faf0`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 13:02:31 GMT
ADD file:4410480801a6ff66a1068c94456f31359fa9346cc412479929df3ce6cb93e7fb in / 
# Sat, 29 Dec 2018 13:02:32 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:40:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:40:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:a17a606f0d1dbe6a3c0c748e0a1e8f502af3849e9263c3d661120fbd26dc6028`  
		Last Modified: Sat, 29 Dec 2018 13:11:20 GMT  
		Size: 45.3 MB (45260316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42b29bb8e755ba510d79248e3ac60d71a3cb2cc962cc578ce24b325cb486e153`  
		Last Modified: Sat, 29 Dec 2018 14:03:11 GMT  
		Size: 7.0 MB (7001572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fb8412e32af8776dfc9b0fd4d86d3cd2baf2200e9f716a0d8d1a0e24ce7628d`  
		Last Modified: Sat, 29 Dec 2018 14:03:11 GMT  
		Size: 9.3 MB (9315839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-curl` - linux; arm64 variant v8

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

### `buildpack-deps:sid-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:5f4dee61bb8f5113b641396243653981e4ca92c914f60a6a31c4a2911e3f6805
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.7 MB (68716329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b672236523da04764032ac8a9d367a3458501f130bcabaf40208944e5d52076b`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 11:49:49 GMT
ADD file:b879bf0d08d1273e509a19b6ef7111b0ed2dcb1de16a7715dae55f362d2b5efe in / 
# Sat, 29 Dec 2018 11:49:49 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:58:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:58:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:6d9293f359b656b26182f0ec7ff44edb5301074fb77a7fb5baa27ff469b778ce`  
		Last Modified: Sat, 29 Dec 2018 12:08:46 GMT  
		Size: 50.6 MB (50553475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d79ce5d52d79c612f6464b51b32d8850c674cb516d79ca4571f22ee2771e73cc`  
		Last Modified: Sat, 29 Dec 2018 13:26:15 GMT  
		Size: 7.9 MB (7855159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efc669298b75e3618f56a635304728f37b5904a5743e9f188d4c136b249917b2`  
		Last Modified: Sat, 29 Dec 2018 13:26:15 GMT  
		Size: 10.3 MB (10307695 bytes)  
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
$ docker pull buildpack-deps@sha256:4b9ef2e119a15275ad40b3113cf08fb4d38f1fe88346ed1f2901eb87d018f626
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.5 MB (65505804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbeea3f4d160eaa2624a74c4048545aa37dfc210b0d37511f20a64f885a9a03e`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 12:42:41 GMT
ADD file:ea74ad702ee4e4806ae6232378b3387a7e1a47d808be83db391a7d5266cc3450 in / 
# Sat, 29 Dec 2018 12:42:41 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:14:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:14:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:3b95e9248260917e0fbc6d296dfa921cc71782d00d267186d0ba00d2acaeb0d9`  
		Last Modified: Sat, 29 Dec 2018 12:45:53 GMT  
		Size: 48.4 MB (48371149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a407afbf900eb4d1e0a4f909f8c0d352783998773c4b0ad8f409f525697b5f2`  
		Last Modified: Sat, 29 Dec 2018 13:24:02 GMT  
		Size: 7.3 MB (7280243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bf4c88d71ead92959b1be2e334d0a45b93f3edb5530e7f13ce2864c61e666f4`  
		Last Modified: Sat, 29 Dec 2018 13:24:03 GMT  
		Size: 9.9 MB (9854412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
