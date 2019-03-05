## `buildpack-deps:buster-curl`

```console
$ docker pull buildpack-deps@sha256:6556d360f79acc29bb0dc9479a7f58a1869cf2de6d459849f9edb4f0d16b1aa6
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
$ docker pull buildpack-deps@sha256:3e889f2c3f0b13fab8a81de6efc7bb8aefb8e48131b088c00d377ffd6ec7079d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.9 MB (67893824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63b9f6c8fdabd67d1998fdb1e0468257f0f20d5473e45c97fcd3ef5dbb0bd52d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 04 Mar 2019 23:19:56 GMT
ADD file:d272c1d83c768286bee82c0583c289bbc64661c4b528db2217208623331689d8 in / 
# Mon, 04 Mar 2019 23:19:56 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 02:21:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 02:21:24 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:a5e86c41ccba20f8cc620ba9905a566083b6659ea5212c4ef78fdcc1a5d9ab32`  
		Last Modified: Mon, 04 Mar 2019 23:24:04 GMT  
		Size: 50.2 MB (50154948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61c073c9472fd3c1fa81088409b15f977b5701e40777e49f421f56d1c9e132af`  
		Last Modified: Tue, 05 Mar 2019 02:40:48 GMT  
		Size: 7.8 MB (7772500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:536125220d87c6f26705675f2d1f297043e0868397ea501e0db897da1b34d4f6`  
		Last Modified: Tue, 05 Mar 2019 02:40:49 GMT  
		Size: 10.0 MB (9966376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-curl` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:d71c1581815d8f1588d06eac1e389f62037fb75f2f3f6a1db4026f89aa76e025
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.9 MB (64872558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0b7e49f639b4499e49a8e3c5064f2a25ecf12f80bb0b0381386f2f846633c3d`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:49:05 GMT
ADD file:4998fef42e86a8ef1cf1f73a98240a0b9b2dcd1b390cc60d462fbcdad67e1618 in / 
# Tue, 05 Mar 2019 09:49:06 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 10:20:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 10:20:35 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:2105c83f20696340f66a60f463e0934c7bae680b26c03ae56fe09cea8290d5ac`  
		Last Modified: Tue, 05 Mar 2019 09:58:45 GMT  
		Size: 47.9 MB (47881139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f283aab1647112fcff4ff09f98ffe57352fa3551a2a3a25aa1a263a5735088d8`  
		Last Modified: Tue, 05 Mar 2019 10:39:13 GMT  
		Size: 7.3 MB (7330435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:363a132a46f590b8eb2ca0be47d560cdd0dcc4629e0af4f85e7cd428620edcc2`  
		Last Modified: Tue, 05 Mar 2019 10:39:14 GMT  
		Size: 9.7 MB (9660984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:070e8e029064fe53e05471ae06a959b71eb4c0e3915089028035cda793eff1d0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.0 MB (62034641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aee5043cff80e249d9e46067d09913ae5941e43e5534dbfcd5a4681937759f0f`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Feb 2019 12:58:25 GMT
ADD file:65d59ecfea4b8d57715e5859d63ba3cc9fee5929aa7767f83a4aa9d162ab6dc2 in / 
# Thu, 07 Feb 2019 12:58:28 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:17:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 15:17:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:d91b8c8018cf8d6d07c5879ee569d02c4f41253ad5e91059a81037474ffc3aeb`  
		Last Modified: Thu, 07 Feb 2019 01:09:01 GMT  
		Size: 45.7 MB (45652173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa2bf9464350b08e6f4012bdfe10e887091758e45ae8908d9f112e7bdece0314`  
		Last Modified: Thu, 07 Feb 2019 15:45:20 GMT  
		Size: 7.1 MB (7066690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b419603c750ccd73490a71502612c209dacb3a6d195aac914060e8073ef91f1`  
		Last Modified: Thu, 07 Feb 2019 15:45:24 GMT  
		Size: 9.3 MB (9315778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:96136c0215fcdff1b74e76d3e3cbd72c74eefc8f16ca32c4c04fc96d3cc63568
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.5 MB (66478500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10f6038b671a387befc39986ed3c477ca84ae4e63a21c00d8829013c6b9da5e7`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 10:06:35 GMT
ADD file:7f32b3fe595eec6cba45248ed6b83b4463a3fc169e4965f28418f3230d3f815f in / 
# Wed, 06 Feb 2019 10:06:37 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 03:18:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 03:19:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:978bca48cb174649e2e7e534686070a107899afce4e4c4ec872cf3e71a92b89c`  
		Last Modified: Wed, 06 Feb 2019 10:12:15 GMT  
		Size: 48.9 MB (48894795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b691ddabaa5e283e9ad02ed30f51c1bcd01d4990bc0d53cdb51ec40637e94eed`  
		Last Modified: Thu, 07 Feb 2019 03:55:40 GMT  
		Size: 7.6 MB (7629953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5297d46e2e7d9579569e7c30d2633eae4ab7bc09adad624a49df94115d1444f`  
		Last Modified: Thu, 07 Feb 2019 03:55:40 GMT  
		Size: 10.0 MB (9953752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:2ce15f667467725409744c449d89575d833b684e545deb8389af4bab14d78083
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.1 MB (69146504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b5d7520d08129c73a19ccfecbe588df50e3043edb1639e18c42192c5205ac4c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 11:58:07 GMT
ADD file:032ae36fc70b5e896838c38d33968573979a147ac7aeb7bad89a2a03a1e2ce6d in / 
# Wed, 06 Feb 2019 11:58:07 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 01:21:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:22:01 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:31428505a106aac9ed272a273932a2e2470eddd3ab51e27001cd15df87d8785c`  
		Last Modified: Wed, 06 Feb 2019 12:03:46 GMT  
		Size: 50.9 MB (50914560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8e546259cf7294fafe876629da13ebfd2a9e00da5753c2e2433fa1b9cf410b3`  
		Last Modified: Thu, 07 Feb 2019 01:56:38 GMT  
		Size: 7.9 MB (7924159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65700808c80368a80cea344ecdb5c0807bf86820adcc744d8f0f7d46311cbd7a`  
		Last Modified: Thu, 07 Feb 2019 01:56:40 GMT  
		Size: 10.3 MB (10307785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:c747de20ca30d4f2d75456dd0e5fc8625737eaf3b7460cbf1ab0c29aff70b54b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.7 MB (72744925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfd74f9a8adc969870f149d78089102c7e1ac0e9ef572203f31e3f996c31a2c5`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 09:24:48 GMT
ADD file:7be4c855690678b0cfbd827b9e93ed43f69a5b569cf1193ed7d2ba2caad35a77 in / 
# Wed, 06 Feb 2019 09:24:53 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 18:28:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 18:29:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:dd2a5d8f0124ac97988443d7139fdc4d9d7c4bd1a52d143af4cce9b66ec4620d`  
		Last Modified: Wed, 06 Feb 2019 09:28:55 GMT  
		Size: 53.8 MB (53834796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12184f77440f8f6e54dbde8caa7010f2a297e0ba23e8c1bb3e2be824c461fb33`  
		Last Modified: Wed, 06 Feb 2019 19:20:35 GMT  
		Size: 8.2 MB (8206910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38db29c791048259a3a4728d47dfaf8841b82b88e3ff8fb9c4f1605bffce1bc8`  
		Last Modified: Wed, 06 Feb 2019 19:20:35 GMT  
		Size: 10.7 MB (10703219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:1b1963203ab1a0d2a0ede4732d7e2e6f28285318f47b71d811042dae8fc32afb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.9 MB (65919703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea7d19fda84cdf2f39ebe599a994c0bf36e12a34d5cb6a8f30a6bcd3b486da79`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 12:41:58 GMT
ADD file:e2a3cb384d018539bcbc5c806ff9335dfd5f0350d306c3ebc34b3b80372e0e90 in / 
# Wed, 06 Feb 2019 12:41:58 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 15:21:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 15:21:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:2c08b1e350860cec8128ec4b0b314d72bfdc79c79a17e6f55aa0c9cc1ec4abb6`  
		Last Modified: Wed, 06 Feb 2019 12:45:15 GMT  
		Size: 48.7 MB (48722687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e42845847bfc11dbcc1afc9b8532e40621f4ecd46e80ccedd68d4c5d990ed8c`  
		Last Modified: Wed, 06 Feb 2019 15:30:49 GMT  
		Size: 7.3 MB (7342466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea60ade3a6734a2fdb20b80850c0c96661cb38d25c56c23ad746a426f795b29`  
		Last Modified: Wed, 06 Feb 2019 15:30:49 GMT  
		Size: 9.9 MB (9854550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
