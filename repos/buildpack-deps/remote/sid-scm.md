## `buildpack-deps:sid-scm`

```console
$ docker pull buildpack-deps@sha256:2747968a8989d2d53df13b4f71cb103f1998bf18943c3485003a4bd60a9750ff
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
$ docker pull buildpack-deps@sha256:284c8baa81a8472657f9bac0f627685391741c35113910e3e86188596db58b74
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.2 MB (120176774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:260d4b95ae4bb63a4a11d2ccf7b68f1f0200528f2e905c592c71da35977e83e2`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 00:31:47 GMT
ADD file:fb47fe44d1e6b6b670253c11516570b51b7f0fb8b982c3f5d384146343df5f5b in / 
# Wed, 08 May 2019 00:31:47 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:38:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:38:13 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 01:38:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:0e46e397f892870613903a2484edb209778048886e5d00b27f9d4393280c94f8`  
		Last Modified: Wed, 08 May 2019 00:36:58 GMT  
		Size: 50.3 MB (50340155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9be41ac19f89ce322172dc112b6a1a0e0874c0e56225e16d4c79b68fdb1594d5`  
		Last Modified: Wed, 08 May 2019 01:44:41 GMT  
		Size: 7.8 MB (7789405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dedd06bdcacea2c0c2aa629225a58be0efcb08d2fdedf0ec094945fb41311f02`  
		Last Modified: Wed, 08 May 2019 01:44:41 GMT  
		Size: 10.0 MB (10049566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52000ffc362737d9851dc59aab00cf522489bc7bdf203c20bda7e88eded290fa`  
		Last Modified: Wed, 08 May 2019 01:44:55 GMT  
		Size: 52.0 MB (51997648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-scm` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:934a8c5931c8e79f840f02e54c9390b68eda86270b4fd341c82ebef753d616ce
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 MB (114872488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:117099ade7c1f29799fa6f96af5ed14619e3c6f319427dbdaf6d4d703d648327`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 08:51:39 GMT
ADD file:9413922e0450a981af5b854fd02d6462ae98edbc50dd0c86aa6b3a8980832488 in / 
# Wed, 08 May 2019 08:51:40 GMT
CMD ["bash"]
# Wed, 08 May 2019 09:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 09:58:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 09:58:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9496df20a2df40133d2e133f1a23a2da3ac7d28df6d3546c7c2c7472da72acb9`  
		Last Modified: Wed, 08 May 2019 08:58:06 GMT  
		Size: 48.1 MB (48050033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5417c06ad026ad3d801aa2995bbc998beffb64bf2ab86ce2cbe85d7f2edb1a19`  
		Last Modified: Wed, 08 May 2019 10:07:58 GMT  
		Size: 7.3 MB (7339557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74c8f2b8abd7e42d4b50c64e06937eda45e7f2ccd07a12ebf83d769652259b7b`  
		Last Modified: Wed, 08 May 2019 10:07:58 GMT  
		Size: 9.7 MB (9739478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb2809155b98a8495f028596c678a80d30371f423abf4a9150814733a173e586`  
		Last Modified: Wed, 08 May 2019 10:08:21 GMT  
		Size: 49.7 MB (49743420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:84132d8146d7d05b97241f12c334a965708f0733075643d2ab0a557ff60892ce
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.8 MB (109778750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1a819afa4ad3ea7e22352fed9a5e75136d1930becf9a6b41410cfdc0030653b`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 12:05:39 GMT
ADD file:a03e2558b36105c53a68a3064a22313273ed3d28e338785fc91b482aafc646ce in / 
# Wed, 27 Mar 2019 12:05:41 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 13:09:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 13:09:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 13:10:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:10b13a095ef589d26e82bbb83fae57a71c62e84dac2b1fb806528f2b9b7632e0`  
		Last Modified: Wed, 27 Mar 2019 12:11:57 GMT  
		Size: 45.8 MB (45774821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:377969bb0947ea163bd219fa06e75dc143b5b1eb11721c90bd236e08c2b8164c`  
		Last Modified: Wed, 27 Mar 2019 13:20:18 GMT  
		Size: 7.1 MB (7085635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65db9a37d70af034179accf5dc26b6bfe918264fce2bfb7d3d1faafcd803fb81`  
		Last Modified: Wed, 27 Mar 2019 13:20:18 GMT  
		Size: 9.4 MB (9396874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1339bb8746b529bbd50a4ed7f94643d7e336324518d1acad0022097c5c0ac2c3`  
		Last Modified: Wed, 27 Mar 2019 13:20:42 GMT  
		Size: 47.5 MB (47521420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:b94c0870eceb35be1b3906fb3b49ba1186d987efce67b398511f45108e4c0325
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.1 MB (119082314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5517f515d2843b819a849b429f28246a1b3f572cd64e35a87582cbf8db9cef50`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:45:41 GMT
ADD file:68cb85d4af7b927b8543f3786f7ca7100ac3b9c18b420b47dac25daf5799832b in / 
# Wed, 27 Mar 2019 08:45:42 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 10:05:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 10:06:18 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 10:07:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ec45e1f43eaad20885a807eff4b048b1dcf620827bffc3e1060a75bb358a1c7a`  
		Last Modified: Wed, 27 Mar 2019 08:51:07 GMT  
		Size: 49.1 MB (49075641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba7d470ff2f1e2e1bcb47aa4cd6dd5490bc5d3c4e107dca4f28c486928335e6c`  
		Last Modified: Wed, 27 Mar 2019 10:34:03 GMT  
		Size: 7.7 MB (7652313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b807aee712d82fec33d798a7daf3c4aa366089bde485475e5050b45c0d85aad`  
		Last Modified: Wed, 27 Mar 2019 10:34:03 GMT  
		Size: 10.0 MB (10036065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91ddc8f79b5c5880232ee330ebe0bff7d6c8b10b609069c7d175fd5ea8acc613`  
		Last Modified: Wed, 27 Mar 2019 10:34:40 GMT  
		Size: 52.3 MB (52318295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:5e9b909e8081a3e79f01c5815bf235d3a05f6749a8bfa659f1204fe8a97575b2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.0 MB (122975033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37da8a684e3e515c01f6a51e81687510e7a08b9acfbad11f768cf59f01ba5f0b`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 10:41:58 GMT
ADD file:35788f1e7dcbb1ec1f7f2defd3659b41f24da20c68bfeab196967df87fc8e51c in / 
# Wed, 27 Mar 2019 10:41:58 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 13:53:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 13:53:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 13:54:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:4a9b095f08b70612fc43d5a6994ce29ec5bf30a08f4d667c9001e554c1087a6b`  
		Last Modified: Wed, 27 Mar 2019 10:48:02 GMT  
		Size: 51.0 MB (51036251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ac3f749258c84adbc388b501b458b24b72c90c3cf1af139bea2bebaeaf42599`  
		Last Modified: Wed, 27 Mar 2019 14:08:42 GMT  
		Size: 8.0 MB (7953730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08ce019039fc3caacd4821deda7e87d1571f28280ec42c867bba2a563d2c8288`  
		Last Modified: Wed, 27 Mar 2019 14:08:43 GMT  
		Size: 10.4 MB (10395856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e192895cb0b8de5cfcddef41f1b20fe685861e57251c1c0e030154421dfa4b2`  
		Last Modified: Wed, 27 Mar 2019 14:09:00 GMT  
		Size: 53.6 MB (53589196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:f63b38184bd4f12fcaeef8f010f642ea5b239d154f36dee6242f6f03f3101436
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.6 MB (130649957 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:680f10b8c66347b754be0b8f33ec1ff1ca281943dfc41dec4711f3cfc4974350`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:23:25 GMT
ADD file:a95861734bc310e50b882d74e42d04bbd062e0e399fad88a4514440fa4d6c983 in / 
# Wed, 27 Mar 2019 08:23:29 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:18:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:19:47 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 09:21:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:de010fce00f5a67d16b84c1807875f16c577630cf29414a47d72c806e1dd7fdb`  
		Last Modified: Wed, 27 Mar 2019 08:29:58 GMT  
		Size: 54.0 MB (54027867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc8973a9087cce195d08df0036cbd4ad7947844d92995a1c5a4715d7f60fc6f2`  
		Last Modified: Wed, 27 Mar 2019 09:48:50 GMT  
		Size: 8.2 MB (8222691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e5c4202494b5950b1fb154e8321cc6aaf924e6142ba18ebfb4d8cc7c4a39aa9`  
		Last Modified: Wed, 27 Mar 2019 09:48:50 GMT  
		Size: 10.8 MB (10790123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:495276f2465298f87734c773315403a25fb3e8d4da090ee345e2b281f2d9cb28`  
		Last Modified: Wed, 27 Mar 2019 09:49:41 GMT  
		Size: 57.6 MB (57609276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:ff7f6a99d89f390618c00be72258d071fdef15e8165b55c30a6c81b963d34fa0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.7 MB (117688595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a0ceeef37cdb4984a1b44ecb4b7af0a3501e1cbba18ba88e60738354a71dd8b`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 11:42:38 GMT
ADD file:36dcfde5a08a63c13bc857704c7de28a5770bc391a4ba334cc504fa9b2e753d6 in / 
# Wed, 27 Mar 2019 11:42:39 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:37:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:37:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 12:39:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c261d71864e6171524f880b50b73807b618879f2c3f338e41e3a336f232a2e71`  
		Last Modified: Wed, 27 Mar 2019 11:45:45 GMT  
		Size: 48.8 MB (48849433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c271e6f477e8d30f77c6925e6b7912cd008a15591d93a621303a9390904980`  
		Last Modified: Wed, 27 Mar 2019 12:52:47 GMT  
		Size: 7.4 MB (7362642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1faea0f9c5c2a8a91eae3a15ca714a9f294010a20d4ecc89261f4b365654c48`  
		Last Modified: Wed, 27 Mar 2019 12:52:48 GMT  
		Size: 9.9 MB (9935745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b56a34cfbe3059ab341477c94aa9fc058c5f790d530260aa7bbd14f259b465ff`  
		Last Modified: Wed, 27 Mar 2019 12:53:04 GMT  
		Size: 51.5 MB (51540775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
