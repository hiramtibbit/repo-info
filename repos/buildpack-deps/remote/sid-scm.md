## `buildpack-deps:sid-scm`

```console
$ docker pull buildpack-deps@sha256:b9f6bac32e50fcb7ad7ea416931efe24befbe91b5c44b2f7b3bbbe4eb89cae75
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

### `buildpack-deps:sid-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:5a14f72372bee9c38ce1df7f818111d9389a6889c6865bd3b5322475726784e4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.8 MB (117794078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87fbebab51a5401ac7ba49e6ae4c8e573b9be4b65c16cc718798e592fbfb81bb`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Oct 2018 23:22:53 GMT
ADD file:12e34cd91f24d3d0c4716498cdd87838722af59e568ba8c18c457c367a53a315 in / 
# Mon, 15 Oct 2018 23:22:53 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 00:58:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 00:58:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 00:59:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:38517b3035164966f7e2b960f3e87e1f9178537d06992e6045fbd375b84cddfa`  
		Last Modified: Mon, 15 Oct 2018 23:31:59 GMT  
		Size: 49.1 MB (49107897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d518e0b86e7ef6483709500f0dc9be4abfd5336b2516ddb335a46601ebabbd3f`  
		Last Modified: Tue, 16 Oct 2018 01:10:56 GMT  
		Size: 7.4 MB (7366348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75323769698f687431e704e4c1f298f8e803cf5a000e24ccb08f94cbf4a7fda8`  
		Last Modified: Tue, 16 Oct 2018 01:10:55 GMT  
		Size: 9.8 MB (9779476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56058d5d210a80427df6a7f06ac6759e9f5b4b1b064101e843857b0cd4774fc4`  
		Last Modified: Tue, 16 Oct 2018 01:11:36 GMT  
		Size: 51.5 MB (51540357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-scm` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:1357c983d35e03f849de735efea37db8a260dbad0a69002e8ab13bb60f60c528
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.1 MB (112133779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44df3ca845a2aaaa65c3e68ed4ad5f86e5d5d6ce779cfbf73bc81d0a28580f0e`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 08:53:12 GMT
ADD file:d204a837dc7c47c406943c2337da21ccd177ea67f346558d9dd6ba518eb5e445 in / 
# Tue, 16 Oct 2018 08:53:15 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 09:57:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:57:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 09:57:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3a2a7cefe87adee1328d1887984c79e8eb71aaaefc97a339601a30fd31866a41`  
		Last Modified: Tue, 16 Oct 2018 09:02:27 GMT  
		Size: 46.9 MB (46860503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60d7aa278f4362b2edbbce821b9f1a65a7261251e406d795abe1de7406022f6e`  
		Last Modified: Tue, 16 Oct 2018 10:07:58 GMT  
		Size: 6.9 MB (6928930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8719d70374582583b66be882a7cbb9628ceb5404972849699d4f2d8ff4b9b1a`  
		Last Modified: Tue, 16 Oct 2018 10:07:58 GMT  
		Size: 9.5 MB (9481567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36a9c33ee17a37fd7e022b0be2efdf422af4924ae617c59a153d82f688846f3b`  
		Last Modified: Tue, 16 Oct 2018 10:08:26 GMT  
		Size: 48.9 MB (48862779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:783e683ebb55b8813a091605c6299461f58c366019eea3f7780035ea58cc2f5c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.7 MB (106669135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5252f355cd329c28202693c5fb30fb8c73bffccfd65d7edf6d34fc238cf007eb`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 12:02:03 GMT
ADD file:6bce3a6eaae154a74bd434bc6087c35774f3ca30b31179bd9d3a8ccc883e6356 in / 
# Wed, 05 Sep 2018 12:02:08 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:41:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:41:56 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 12:42:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:41ac34bbb663ff9b66612cbe07ba88955dbe37f15f0732d7438ed9d75ffef0c9`  
		Last Modified: Wed, 05 Sep 2018 12:11:20 GMT  
		Size: 44.7 MB (44660481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a4a6a41cc4abd0bf494829b7c229c8b0332e0fa15e4070e51e196a72e0e9f8f`  
		Last Modified: Wed, 05 Sep 2018 12:55:10 GMT  
		Size: 6.7 MB (6684465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff85737d1afda4a28ad503d9827b69fbb9a8cb0c387134d95a9099dea0d22d0e`  
		Last Modified: Wed, 05 Sep 2018 12:55:10 GMT  
		Size: 8.8 MB (8752299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67f942d01e599eb3af73eb31be8169a4ea25e5805aad28a71fdb278bc7d3c1ac`  
		Last Modified: Wed, 05 Sep 2018 12:55:38 GMT  
		Size: 46.6 MB (46571890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:f0b76546a3525416099d7c03f8db510cc8a731936857fccedabf506449e7fb37
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.8 MB (115837570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3ae55eff19ddc923c3e9b88ebb938fb9aec05580e0dc371eba9ea2c20d2ebb4`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 08:41:25 GMT
ADD file:993a36018778e74ae6ce1afa2ba4377c60bb69d360987bc158b9081037ec8587 in / 
# Tue, 16 Oct 2018 08:41:26 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 11:49:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 11:50:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 11:51:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:157e3bb7825ebf937e61c4c02ade571002c5e3384dd3ae81d0832ee2d2619b06`  
		Last Modified: Tue, 16 Oct 2018 08:47:21 GMT  
		Size: 47.5 MB (47450464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f83f8de04214fdc4137f7d41d3599d88cf4c390e58bb76896eae9237f093061c`  
		Last Modified: Tue, 16 Oct 2018 12:22:21 GMT  
		Size: 7.2 MB (7224934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6deb5de10153c14c4ffdf7b58fb5870696269f775b23af4750ab252a31b2fbd1`  
		Last Modified: Tue, 16 Oct 2018 12:22:21 GMT  
		Size: 9.8 MB (9760024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c085808a9d5ae5dc447f159d9e8f1139527509fd638cb2cea8dca8d2dfd2332`  
		Last Modified: Tue, 16 Oct 2018 12:23:16 GMT  
		Size: 51.4 MB (51402148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:01e3f8d1cad38f961c4e7f49985026d899bddf6a6bcc8f2bfc9b8549add4c94b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.7 MB (119669629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:677d85215c46a4f43a8ae5d3152dbaee4ae4b2d92e52204725a47f7f807ac28a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 10:42:05 GMT
ADD file:8de67e0fc0d437844f80c43c2040a020c9b920f19c3af0645d06ad1f79099fd9 in / 
# Wed, 05 Sep 2018 10:42:06 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:36:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:36:23 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 11:37:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c5ab6b8677b80e3d03b9cf7f6d60c5ea5e55c3ef5201228d2a1e02348632bc3b`  
		Last Modified: Wed, 05 Sep 2018 10:50:26 GMT  
		Size: 49.8 MB (49764498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3334592e8df26ecd8135ae4d98e26ee5c2152c588781fdbcb617525eab00347d`  
		Last Modified: Wed, 05 Sep 2018 12:05:57 GMT  
		Size: 7.5 MB (7502763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a22424c58e25912b79ad47701b7d26c1644849d325d1095b43486c45357dce9e`  
		Last Modified: Wed, 05 Sep 2018 12:05:57 GMT  
		Size: 9.6 MB (9583883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:606003a3bac6354e2e80ce2f5036fbff540fbcf335b2bd782faa2a3abf25bc7d`  
		Last Modified: Wed, 05 Sep 2018 12:06:47 GMT  
		Size: 52.8 MB (52818485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:54971aa4da70befc8c1b9b8a7cb498ee0d83f6eeca48442b0479e28cac731809
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.4 MB (127407100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ebed082a9dd3e2985e421f936e0b09b34f051871e10bd9a13797f1074d0b6fd`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 08:19:05 GMT
ADD file:d9b7fdbd5284d601c2fa0ac9ef56d94501675e8bb1272b818f990813457dad97 in / 
# Tue, 16 Oct 2018 08:19:08 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 10:32:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 10:33:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 10:34:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:266ba3ea23b4937c573be52c8dbda3ecd61615aa8a826c0f19bd1519b482bc99`  
		Last Modified: Tue, 16 Oct 2018 08:27:28 GMT  
		Size: 52.1 MB (52120737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:266e6f3713eef6a8650ec4bf4167b39cb239334429d5c2733fa67322152e2f75`  
		Last Modified: Tue, 16 Oct 2018 11:03:38 GMT  
		Size: 7.8 MB (7767281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53c1406edfbf4000946a084c99d2dcae8c42613c41d2b8837c867e2f41f42551`  
		Last Modified: Tue, 16 Oct 2018 11:03:38 GMT  
		Size: 10.5 MB (10523368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb6649af4f26043502717dc3f793eef48c195aecea7c6b420c3bdd490bda630`  
		Last Modified: Tue, 16 Oct 2018 11:04:20 GMT  
		Size: 57.0 MB (56995714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:4f8dbc9a7f87c428403da8d202b7b91cd6a8987878502576b51f42e1271def78
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.6 MB (114616804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28c256f8084891826d45ebf7e1e1943051ff4253c05190c4d43a6fff40f59bab`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 11:42:29 GMT
ADD file:832b68a7f8033560aa3536d9163f28d197490633c05d49240dd2bed266d9504e in / 
# Wed, 05 Sep 2018 11:42:30 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:42:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:42:18 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 12:42:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b9886f96c1f9394ba76a75262b09bb6ad6b8100a8d94cf87089d43cb2068efe3`  
		Last Modified: Wed, 05 Sep 2018 11:47:17 GMT  
		Size: 47.7 MB (47670424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:203b1cc1f2b55f95ed71809ae9ea5d67d78156f617f3321574955a3bf2c43e96`  
		Last Modified: Wed, 05 Sep 2018 12:48:44 GMT  
		Size: 7.1 MB (7059600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b11d48b0ceace2a58877479a5838ea5f51cbc6bd1e0b4f5823e44e519817de19`  
		Last Modified: Wed, 05 Sep 2018 12:48:44 GMT  
		Size: 9.2 MB (9222100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:059acf3f028d654702f3596c76e3c5df197bc5c9682b500da63636d224ef5974`  
		Last Modified: Wed, 05 Sep 2018 12:49:08 GMT  
		Size: 50.7 MB (50664680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
