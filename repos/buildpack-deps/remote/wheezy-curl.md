## `buildpack-deps:wheezy-curl`

```console
$ docker pull buildpack-deps@sha256:bb609417ef1e83a092e90bdd53cff4dacd2853a5f8ca09fc68147053d23aa7a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `buildpack-deps:wheezy-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:9a22ec1171d2c23cda463da52088767d143bf0b8f6304ddccc018884cc8123b3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45057784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75e56210459a0bbe67fe999a7cf5e51f7e13a4a9496fc33300e571b947ad81e0`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 22:31:05 GMT
ADD file:fc9ba15f087e646a9d3b72e742eb1233132a118ecfa998e2497b724f3ff84061 in / 
# Tue, 13 Mar 2018 22:31:06 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 00:09:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 00:09:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:4269eaa217cc08668f088a9719d43c993c4644a73eda4eb55921f031a4311060`  
		Last Modified: Tue, 13 Mar 2018 22:58:14 GMT  
		Size: 38.1 MB (38111490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5e3abccec87d1665b2b7a65c3fd2b53a5cf4e73e808cea60407e89a3f1359b`  
		Last Modified: Wed, 14 Mar 2018 00:52:07 GMT  
		Size: 6.9 MB (6946294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:wheezy-curl` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:f2cc325646500f68412010f787c58f6f38750bf5e32be6b3d9681b819f1f64b1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.5 MB (43533819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53bc3871274f2963effaebf8eb10afaa1f62ba14f1e75ac9a82a7dd35c41a27b`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 21:02:18 GMT
ADD file:e3460ef36ebae417896a335577e126f2c0d24f4cb8198a71796ffe6c76a67112 in / 
# Thu, 15 Feb 2018 21:02:19 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 21:46:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 21:46:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:d3ea6a702aef7af84624d9a907b843ad1ee298df0f9a10cb81e49c92219e5250`  
		Last Modified: Thu, 15 Feb 2018 21:13:31 GMT  
		Size: 36.9 MB (36948528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67b4c5dadc81c8d5f3371d39eb5779a62a372c4188a634511b1aa3c769b48d4e`  
		Last Modified: Thu, 15 Feb 2018 21:56:38 GMT  
		Size: 6.6 MB (6585291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:wheezy-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:f16e2d1282b0ab2d0a11dd3748d043402818b8aedc2af3be6a076aa6bdb1d4c0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.0 MB (42033325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30d624f974cf98b0084f6ed833f5382b4a5c5e33540b92181dcc516925aaf99b`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 13:33:22 GMT
ADD file:a50a330be301772af9a57fd8a118d5d28183fb0a269c71582ad0b29f253e9324 in / 
# Thu, 15 Feb 2018 13:33:22 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 14:17:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 14:17:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:70b4dcd52c8138ab81006e9e28a6184f34d87223285221ed4735e7e9a66043b4`  
		Last Modified: Thu, 15 Feb 2018 13:44:04 GMT  
		Size: 35.7 MB (35661844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e85c92cb6053fa732437cad5ea092c8d9c13587c4a38f6bf1616853cec2d339`  
		Last Modified: Thu, 15 Feb 2018 14:27:42 GMT  
		Size: 6.4 MB (6371481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:wheezy-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:b5dd3ac22251b07fa04424fd247767d3931a53ebd0c8dacaf10f0b0269e48614
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.2 MB (46239508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c05795f311742a0a59b8e45951dd45a296765d3ef42bfb015d4a1a5afd0c4df4`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 20:34:29 GMT
ADD file:b269dd25aa5a2b39f29e341376ca9f2b8aded8f1327c01024b96a2eaa5c3a142 in / 
# Thu, 15 Feb 2018 20:34:29 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 09:59:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 10:06:49 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:f10fe2356c6af971fa6e4de75405f5f2c0a1b4dd473c5da5cca0dc476bf491f8`  
		Last Modified: Thu, 15 Feb 2018 01:29:03 GMT  
		Size: 37.4 MB (37439124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5df981eaf35fe345ce7b712d5b1bddc4ced59b18662b0c71a0c0d85330a16556`  
		Last Modified: Fri, 16 Feb 2018 12:36:00 GMT  
		Size: 8.8 MB (8800384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
