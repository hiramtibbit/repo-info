## `buildpack-deps:testing-scm`

```console
$ docker pull buildpack-deps@sha256:4996911b743268245176fdb15a8259a0e21228e1728a159131acffe4c13d871a
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

### `buildpack-deps:testing-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:b165a96cee18cf9abc2ac89bdd656fa1c0baedb6d2c581b376162c293a6276cd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.7 MB (119673438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1208b7cff717921fa13fada8b2320fb10161977dd536481b289583b3efdf414`
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
# Tue, 05 Mar 2019 02:22:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
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
	-	`sha256:c66baacf7b04a87ece03dc2610807249438410410ad789f0af691459db07bdb4`  
		Last Modified: Tue, 05 Mar 2019 02:41:04 GMT  
		Size: 51.8 MB (51779614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-scm` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:19162b8c14d9c105a7da1bb79f23903d37f7566715e61d755b73c57541d15b4c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.5 MB (116523955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd7577ae3e2bbf68f6f46d75d0f3efcac6335ecfed0f4ed81ddc3f855220c309`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 09:49:17 GMT
ADD file:1768b3abf0763e218f968fba9be15246796c7b853d0736f6482b2b0ac1b9a61a in / 
# Wed, 06 Feb 2019 09:49:18 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 10:39:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 10:39:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 10:40:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3468ac313ee1f62b7f5c9878dfdd6145895b5206baf04ebac908170061f1e782`  
		Last Modified: Wed, 06 Feb 2019 09:59:42 GMT  
		Size: 47.9 MB (47875389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc51499be2f6ca4736e2751761a4d7953c3bb17cf80b7c220a4300eb6d11e24d`  
		Last Modified: Sat, 02 Mar 2019 10:04:38 GMT  
		Size: 7.3 MB (7323965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73ba5569655f0f51604ed81c71a0b67a22057c6e248b4abe5209e2e1c3c59dbe`  
		Last Modified: Sat, 02 Mar 2019 10:04:38 GMT  
		Size: 9.7 MB (9658966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:767a7dd6cc93f2902c271d640bbd426bded47c515cdf7d721544190d6536c786`  
		Last Modified: Sat, 02 Mar 2019 10:05:03 GMT  
		Size: 51.7 MB (51665635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:11f2462e92b149ec85f314e1f76df4ae062852f41bdee2b5f5c94336712454ee
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.4 MB (111354827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da0a9322d92ab35204a70ead9acafa9cf3fda7fcdd35ebb306be543bf5bff779`
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
# Thu, 07 Feb 2019 15:18:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
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
	-	`sha256:a44a65972da21e6ddd87b8f62855907f3352d4e39ebcaf2ea7173ba7f5635385`  
		Last Modified: Thu, 07 Feb 2019 15:45:46 GMT  
		Size: 49.3 MB (49320186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:5e589661fd5e719b6ba680542697a84a26cb9ad48faca2bde97935e889ec07c4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.7 MB (120721371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1076e94658522fc1cf6e8faeaa941f793b8325e737e43c2b72119d89578be1e0`
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
# Thu, 07 Feb 2019 03:22:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
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
	-	`sha256:35c7b606ab107fbdabfff6c7bdcc81e0e12edb4df5ea09580ba1412132229bb6`  
		Last Modified: Thu, 07 Feb 2019 03:56:13 GMT  
		Size: 54.2 MB (54242871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:652dec8b2c6829e328b0b7d52250bbb42d4f99fab27409c52cf302cdb54b8ac2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.8 MB (124820037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc1a6dce35a699ba51af40046023bae8417f71d453deccfbcbfcc93a6f4834bc`
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
# Thu, 07 Feb 2019 01:22:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
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
	-	`sha256:f965c67877c936a90d7cbcfaf33dbed0d77ccb055b4e075ef6f63cef2b7b49da`  
		Last Modified: Thu, 07 Feb 2019 01:57:03 GMT  
		Size: 55.7 MB (55673533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:ccbadffc268fb321331313ad803e477eb2296ddbf2255a13ea96843d437ad4c3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.4 MB (132447589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:119af312fb2b6b5678e630945c0b6b2e491de6029294eeea17b5621f089806e0`
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
# Wed, 06 Feb 2019 18:30:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
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
	-	`sha256:642cd9d9c66f41630a046a16ffc841fd6b52cfd65496bfa776c881609dcef314`  
		Last Modified: Wed, 06 Feb 2019 19:21:09 GMT  
		Size: 59.7 MB (59702664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:e6ed1ee68f2eec7d53aaa370b7998d0293523ef4487519c75dcdc05e8bb77c38
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.4 MB (119389179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce3ff4152a86d9b9f89689365212d96697981a83c2d7615c5e5a73124244e90e`
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
# Wed, 06 Feb 2019 15:21:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
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
	-	`sha256:f23add4d7f5e52883020cc6b30cfd18850b2e2f823fdb9b7b33f20cad00513cb`  
		Last Modified: Wed, 06 Feb 2019 15:31:09 GMT  
		Size: 53.5 MB (53469476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
