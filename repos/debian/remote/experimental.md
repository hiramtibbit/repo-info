## `debian:experimental`

```console
$ docker pull debian@sha256:8dcc4801b4a987575f47ab77eb0dfd66d27f35a44c649955b702b3d6ddef6c4f
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

### `debian:experimental` - linux; amd64

```console
$ docker pull debian@sha256:2373d18cb193aa94da0b9c1457601d2e162ff5d0127bf90e64c073fe93831b66
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48725742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ca08d45ab0be7fce3226f576da76a00fa9a62c01af4e7544d8fd763efac1659`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:29:33 GMT
ADD file:cda92a0cf83d9355ca9b28461c0b0616e0f49c830e4b22595c95bb81c332d216 in / 
# Tue, 17 Jul 2018 00:29:42 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 00:31:41 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:f61e4508555070fbac5e6baa45609fec40a4b51b272c07c9e37bc31b966ba677`  
		Last Modified: Tue, 17 Jul 2018 00:46:30 GMT  
		Size: 48.7 MB (48725524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d3fa823b1dc8552e2a235ec90a265c6bc15944799d9a9d5d4edf7fd6d2bba4b`  
		Last Modified: Tue, 17 Jul 2018 00:49:52 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental` - linux; arm variant v5

```console
$ docker pull debian@sha256:664d35cc544e54fb94a9c8cf77b79ad38aeff508df3d5f17d6fa9215d10e9856
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.6 MB (46603261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cd14c51e4c9cc916cdf279cb10a11092f5e8f1ef1623aa481dd99120ce90156`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 08:55:05 GMT
ADD file:f879d6459edd52e8817b7c0ba9ea8ab823ae033ac289328d432f9a8f4d37f7e3 in / 
# Wed, 27 Jun 2018 08:55:05 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 08:56:41 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:2b07ce35b7f6d55765858e9b1e9d8d986442591c7e7aa514afb3860596200b2b`  
		Last Modified: Wed, 27 Jun 2018 09:04:33 GMT  
		Size: 46.6 MB (46603039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c5a214ab62b1690adac5e885b8340a3e154fb002e4143c3bfe4bf4384ee8917`  
		Last Modified: Wed, 27 Jun 2018 09:06:23 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental` - linux; arm variant v7

```console
$ docker pull debian@sha256:c4d89c31ceee50c9a22c27752627b8a0eb2ea77d673b13f787bdf3882a042ff7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.5 MB (44475079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c50fad75f1e3ce2357d0df18d95f253ce2a9bc210d3f8183f0cf8f3fc2ea5b9`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 12:04:52 GMT
ADD file:80fbd6770a0d28cf3645337b4180fa094b82abb63001004ff0fb5d67e03b5a3a in / 
# Wed, 27 Jun 2018 12:04:53 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:06:16 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:c9d1267f34126212222412fed43f5c1fb4395630ee7ce91637545f3b5a35da23`  
		Last Modified: Wed, 27 Jun 2018 12:14:44 GMT  
		Size: 44.5 MB (44474858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e51e5115a47e2a1ed2ffcf1d27a0774cb9ae19454452a438d18f0c3616101b3`  
		Last Modified: Wed, 27 Jun 2018 12:16:22 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:866c610ec0587d1a09a86b416bb28015ac41e0ad1ab42c2ff8dc3cb7dff122ed
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.9 MB (45932620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b1adaa48253c628f563ad3998dd294f08d9d8f04c120d8288bc98b7cb955b60`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 08:49:15 GMT
ADD file:aa5577e9851673dd48969812e78c1ce86d027f257eade7d474a87f40a1ab362a in / 
# Wed, 27 Jun 2018 08:49:16 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 08:50:00 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:28c95914a3d5e236efe0ae30072b6625c536d4bee7ac5e4b573a845b4d1db2a1`  
		Last Modified: Wed, 27 Jun 2018 09:00:37 GMT  
		Size: 45.9 MB (45932399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc52a7f9ff5ecfc6fd876e0db587356f5e43caaa36436eceae7509c410002a1d`  
		Last Modified: Wed, 27 Jun 2018 09:01:25 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental` - linux; 386

```console
$ docker pull debian@sha256:bf0c7c73ed8765c71d0a3c8bf08b2aa76f318df61726f30d3f7f6da9aa7b099b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.4 MB (49418010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1499bb045a70fdfc8b665499f7f4cbe55d7a4a38eadd66e13cf11c9b2c9a306`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 10:48:11 GMT
ADD file:7a17f2ed588f5ec82091adc4d78733d3d6f81ba446f0223f46f2d203b381e0e0 in / 
# Wed, 27 Jun 2018 10:48:14 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 10:50:22 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:45a2215f59fa8a11bbc03eca2428518f96372d8c0ac4af36d27ce7f3a44cfac4`  
		Last Modified: Wed, 27 Jun 2018 11:13:03 GMT  
		Size: 49.4 MB (49417793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec0418d05cab6cda05be0788ac38cdd35ba5afd46ce62a8f9ab2564aec5fbe22`  
		Last Modified: Wed, 27 Jun 2018 11:15:16 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental` - linux; ppc64le

```console
$ docker pull debian@sha256:bd7fa6ef432d1c513b7475b93d505413c6cb6d82f7ac33c0055177b6cae1d25f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.2 MB (50185219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cea960435f9b6f91983348c9fe8de37b014e15d825443703ae06744889401e4c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 08:21:30 GMT
ADD file:1130cd32cc62220707c607af2cd6a357b9e431c800977e44687003649251e58f in / 
# Tue, 17 Jul 2018 08:21:32 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 08:21:58 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:f8ec500e0106e58cdef31ca9f52a8864299bd9e6fd158ba115091ba3b7d91fb0`  
		Last Modified: Tue, 17 Jul 2018 08:27:53 GMT  
		Size: 50.2 MB (50184998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1135b94526939be162d14731d8b18a6d993d6cb4b2d6c842c569260134c4b87d`  
		Last Modified: Tue, 17 Jul 2018 08:28:38 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental` - linux; s390x

```console
$ docker pull debian@sha256:622576ea37f16e3a57e873304a748430961f87158dbf27020f116b1fc5871638
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47624359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:743dd107fa5c58da855669656e16827535cd5953659e760a2e650ed796d4613e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 11:49:25 GMT
ADD file:8a77c2ab9c67fc7e2c80deeef815042226e4001e810e42ca683c2f03ede9dd60 in / 
# Wed, 27 Jun 2018 11:49:25 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 11:49:42 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:450ee941b07d8606d702dfb9a4268982a444d34564564de5d6626e0c96a815e7`  
		Last Modified: Wed, 27 Jun 2018 11:54:29 GMT  
		Size: 47.6 MB (47624138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720b72cb5ce462567e88ce878b0ad10efd9e335928a70314b8c15e7ba8cabf35`  
		Last Modified: Wed, 27 Jun 2018 11:54:50 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
