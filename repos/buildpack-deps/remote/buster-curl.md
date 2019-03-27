## `buildpack-deps:buster-curl`

```console
$ docker pull buildpack-deps@sha256:f2c5873a02bdacf628f0c3d42cd0bb4905d7c6b719dfdf8d6e60f0763872dd56
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
$ docker pull buildpack-deps@sha256:88c479565b8a23b3ca46e1d437b7f0fc5f657054ef3702880040eafc45960a04
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.0 MB (67988214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c45b27609e566a09730fba7e838a2b2778426e397e612de10e3c1a54f62e9415`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Mar 2019 22:39:10 GMT
ADD file:76176cc6a94815c82ed8b377f8be206dafafdd7656196edce1f3acbf8762b522 in / 
# Tue, 26 Mar 2019 22:39:11 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:13:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:13:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:8ee468effd219ecb1753308b8b7435b236ea041486108ab102e6f1f7443b892f`  
		Last Modified: Tue, 26 Mar 2019 22:42:44 GMT  
		Size: 50.2 MB (50229764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba055e9cefd1529a52a28e24a0e75e071c7568d5c609fdf0394ad6afc26471b9`  
		Last Modified: Tue, 26 Mar 2019 23:29:11 GMT  
		Size: 7.8 MB (7785603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99cfb1e76ef4c0f2b08b124f240a27ac45d72d215e73f378075ded1e2e8fff4e`  
		Last Modified: Tue, 26 Mar 2019 23:29:11 GMT  
		Size: 10.0 MB (9972847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-curl` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:16f77c8ea93a5b86d8bde8e8157e59d8ac0da0e52bf5546f34a44a2e6de32903
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.9 MB (64940481 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1aaf00fcd9acdf8aa737106ef1307c8b04beebc167d5e48ec64a9f724560b49b`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:49:29 GMT
ADD file:ddb75e8b8e9c5b8098708ceb9869c9ea25f7394921fc8f569eeb754a777da554 in / 
# Wed, 27 Mar 2019 08:49:30 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:17:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:18:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:a3a3fca888d0dad8f4d55cdd346e99c4ba5d7cba92d5c48d66d4f9b00391c738`  
		Last Modified: Wed, 27 Mar 2019 08:56:19 GMT  
		Size: 47.9 MB (47935308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05c8984ac3b681c03150d9945d2253c3f42a3b4586c43b3c390b5c7e9166f743`  
		Last Modified: Wed, 27 Mar 2019 10:05:45 GMT  
		Size: 7.3 MB (7336821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60b328cd142d9d00a9fc90f0ad794cbf2c4f196f0542149781c22710ea731162`  
		Last Modified: Wed, 27 Mar 2019 10:05:45 GMT  
		Size: 9.7 MB (9668352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:986b6083f677ccbe5706ded5cdf909437a28f759a1a40f3163c7c31db05de07e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.0 MB (62032835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:872a468fea91374539337833859d380f3501fbacc9f45fe070a5f7d7c7731f03`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 13:04:44 GMT
ADD file:2ba192582fb2c0b337e48196c2698460a194d03e22e4ad12687c4f150d475994 in / 
# Tue, 05 Mar 2019 13:04:46 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 13:36:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 13:36:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:a48c086c5e2001e71f1a2e0fe0dba658a521a7b873e880e45c8f67746a80c546`  
		Last Modified: Tue, 05 Mar 2019 13:14:52 GMT  
		Size: 45.6 MB (45639642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:770db833cb9de91deb8c935b59bcd4866449b397bf7b62de2282c822f11f8abc`  
		Last Modified: Tue, 05 Mar 2019 13:58:57 GMT  
		Size: 7.1 MB (7076114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:470b23df0815f7fcd22463426cfa2cb0dfe492818b404eb8b8f275653a10444d`  
		Last Modified: Tue, 05 Mar 2019 13:58:57 GMT  
		Size: 9.3 MB (9317079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:838b7fd27be8ae2bc8a5c6852c2e67147cb45df3b93c0bbdef6f6fac977bdffd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.6 MB (66632038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3d37bab345f9cf97329b6b7465eaa6e85c86586f9f613feb0aa276639347c6b`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:44:48 GMT
ADD file:efdad40bd88daf011b7ec9e7c3bf62f934bcb8f2e84321dcf5b519af553c8be2 in / 
# Wed, 27 Mar 2019 08:44:49 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:38:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:38:47 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:83128e932c2f242170e54dd01950ab9384a9fb68c814a77c1632b9fb6a007661`  
		Last Modified: Wed, 27 Mar 2019 08:50:27 GMT  
		Size: 49.0 MB (49022969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea80f3ad9712797dccb9be63a9f07b097495de62f956980d0d2369dfa244cc13`  
		Last Modified: Wed, 27 Mar 2019 10:31:54 GMT  
		Size: 7.6 MB (7649554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:223575240873e37aa2265ea9e7b80eb3b7b52bf4e3ee6a95e4fc614db50faa96`  
		Last Modified: Wed, 27 Mar 2019 10:31:55 GMT  
		Size: 10.0 MB (9959515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:52a6fabcdacc01167e3d43adb3bffa7ecde27f467d15f7db8bf65f6acdbf8fb6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.2 MB (69165516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b42b7b870202a727f2f43f2a5a3fa651961cd564e5b700a6bc0a7ef1ee92436`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 11:39:45 GMT
ADD file:13f327af89182501665dd89471b307a8c0b3ae23437ddeb7da2f1bffb908095b in / 
# Tue, 05 Mar 2019 11:39:46 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 20:54:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 20:54:35 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:1b547c12a9a79a6d7efd6e0e99bc0c698e1df51905ed8d34f0fb576a33e69087`  
		Last Modified: Tue, 05 Mar 2019 11:50:22 GMT  
		Size: 50.9 MB (50916845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8097f3a05edb0db816f79d4186a3a1353362dc30c5fd5575ab1b6518fe5a35c1`  
		Last Modified: Tue, 05 Mar 2019 21:14:34 GMT  
		Size: 7.9 MB (7937959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce69f22f8f5b57df149ab1ca3151af16233920955eb20ed6262fb7dbcdd9b269`  
		Last Modified: Tue, 05 Mar 2019 21:14:37 GMT  
		Size: 10.3 MB (10310712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:4ec464ef68a9403d6d1f4ff103813df89364e74a648f513ed210188f6e044e42
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.9 MB (72903014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adfc582a346b59536df2fc4f0e86cccb268069ea016370927c7e7d24011a644c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:22:41 GMT
ADD file:aa7dc9cdae0cf7507369fae7d6118dcd3d999e00e3ef21068695fe6648ac20ca in / 
# Wed, 27 Mar 2019 08:22:45 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 08:52:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 08:53:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:1bb6234125526f51a6b0bfb06f13173fcd77203e03fd3ea331c9bf5b8b9fd9a8`  
		Last Modified: Wed, 27 Mar 2019 08:28:51 GMT  
		Size: 54.0 MB (53972187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f57cdc447a7a0169ef80f47a0c1720252005fef375ead499d25d52a1cf711ce`  
		Last Modified: Wed, 27 Mar 2019 09:46:17 GMT  
		Size: 8.2 MB (8220179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24a73c130df883fca60855727b95f93bac30bf0d5df50fee10997cff4dffe61b`  
		Last Modified: Wed, 27 Mar 2019 09:46:18 GMT  
		Size: 10.7 MB (10710648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:4901d92829b395c98e775f59f15340385055e5e225f1a2735aa204a5441cdb24
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.9 MB (65939891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbc441edf5c5dd3b27585f04c411e4d21a538e756cca981ddc7f78c00d14a61f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 12:41:56 GMT
ADD file:e5027bc6f0310670ee8930b84a7e3ce671be0000267c8b568d7f0d13112b0f2d in / 
# Tue, 05 Mar 2019 12:41:56 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 13:30:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 13:30:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:931b689d4ee3f4f1d7abaf2ce3f02f09f00a2ead1ec2e5ab8150fc5bca993e10`  
		Last Modified: Tue, 05 Mar 2019 12:44:22 GMT  
		Size: 48.7 MB (48733424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:714c460d2e8818aa26138aaedd89c03ff6ad45f951f0440944086630d443b438`  
		Last Modified: Tue, 05 Mar 2019 13:38:35 GMT  
		Size: 7.4 MB (7353931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58747b0755b513c53be17c1fec99456bdd7705d5d22d8d8b73c9eb4ba8946fe0`  
		Last Modified: Tue, 05 Mar 2019 13:38:35 GMT  
		Size: 9.9 MB (9852536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
