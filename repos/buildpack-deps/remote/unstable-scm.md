## `buildpack-deps:unstable-scm`

```console
$ docker pull buildpack-deps@sha256:eb3a8b810add0d9785b8925b3b27fd38d5218101cd0a8c099bb3c5390d0880c4
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

### `buildpack-deps:unstable-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:14d9c86d585a01f71fbfea36cc58038d3d6a733388fadab570e42f78d7593aa0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.6 MB (119575093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c08b255d87dfcbca146766c4cf9593556110fd45d5ebb942af8293d6aff5342`
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
# Wed, 06 Feb 2019 05:49:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
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
	-	`sha256:de4d616c0f9a7f23c5be9418fd016c5e0d735d807f2c64a1a9c6c619196be83c`  
		Last Modified: Wed, 06 Feb 2019 06:01:12 GMT  
		Size: 51.8 MB (51766568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:unstable-scm` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:ad6500c873682cae48b913345f22980c283631a0fd099dcd0ed07d543506cafb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.3 MB (114325064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7235a6d27ab0f8d18ef3d244fa505a6545923d0556892b55b26fe8e299b9e21`
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
# Wed, 23 Jan 2019 10:36:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
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
	-	`sha256:54a3ac1e3be8a27189d256f8ac11697c42571878a3603f5b44dabe9ac2cb2900`  
		Last Modified: Wed, 23 Jan 2019 10:48:25 GMT  
		Size: 49.5 MB (49509921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:unstable-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:df47fe09b3eaa387ad06450ed09523ec1200757f04a8ed9250a1241fcb056e81
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.3 MB (109303602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff6b5ef17355743b78884cda551120769c505e37fb62d42ca4bbdd05515e4006`
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
# Wed, 23 Jan 2019 13:41:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
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
	-	`sha256:f859e62232d2a3c7ed786a4088baafab4eefdf6d69552a3cbe927d25942ed207`  
		Last Modified: Wed, 23 Jan 2019 14:04:43 GMT  
		Size: 47.3 MB (47298641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:unstable-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:ef95797c667e07aad5ddab1ee229d95a587504436964fb89a46c51e160bcef86
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.5 MB (118500343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a451d0a9e7b0e9661a07bf8fffba018915805496263cfce0202dbcb3cd6f3d4e`
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
# Wed, 06 Feb 2019 10:28:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
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
	-	`sha256:39dfd1320b7ef0a90c0a6c2798a9b874a1938a5eaf852d97121bb14a8f7de33c`  
		Last Modified: Wed, 06 Feb 2019 11:17:49 GMT  
		Size: 52.1 MB (52095396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:unstable-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:b9207111e3c0382656356da6f4b561522a971bc04f45adb85f6877745aac8fc5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.5 MB (122454760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2da98c308fddc192facefa6fe409f8933e2ad45f1db2379f44b18a9ce21b4283`
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
# Wed, 23 Jan 2019 12:47:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
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
	-	`sha256:944a2159327fc9481e47fc526ce58cbd229778e13226a796b725a4f643243981`  
		Last Modified: Wed, 23 Jan 2019 13:09:55 GMT  
		Size: 53.4 MB (53355526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:unstable-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:1a74a7969fcb254f3526b01bd9f73a5d6eddec5ec1b666309763c87548abec3d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.1 MB (130090791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7e98dc8e1ea2176c837d58126605ffa79ee41c7523ab2d3e68a6085177c71f3`
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
# Wed, 23 Jan 2019 10:52:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
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
	-	`sha256:97dffb5c0dff5745a891f8f8269cb8cf871f494fb815a4f058e30a9374b1be10`  
		Last Modified: Wed, 23 Jan 2019 11:47:10 GMT  
		Size: 57.4 MB (57373337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:unstable-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:38c0018eafdff6811aff3d226fb04bb75b4a9d701e09fd038a247365d99bac61
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.2 MB (117174645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e51eb46fc04adb4de4b877f89223702eba737000f532f5c96ca37c74b03ff41`
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
# Wed, 23 Jan 2019 13:15:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
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
	-	`sha256:1a820f9cd50952af466bb03b40c671a2fea9532a2ac03be90601ec22c496dc54`  
		Last Modified: Wed, 23 Jan 2019 13:26:15 GMT  
		Size: 51.3 MB (51291883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
