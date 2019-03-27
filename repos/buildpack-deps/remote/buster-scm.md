## `buildpack-deps:buster-scm`

```console
$ docker pull buildpack-deps@sha256:ab3d1bf0941947206d669b235d25074d943e4a21f4a466d4281f15266d78165e
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

### `buildpack-deps:buster-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:34abcc6c97854f4ec126bd2667a0f41187e73307e305d75edb4697e32821d05d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.7 MB (119749283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b87d871c420b940516ced5bbe7342e52323a6a3bbc08d9a1330e3f831cac8f8`
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
# Tue, 26 Mar 2019 23:13:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
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
	-	`sha256:79bc2a39457078373d63f7cc7f96f9b08e24deabc1ea40e3f6d27670fb4688fb`  
		Last Modified: Tue, 26 Mar 2019 23:29:28 GMT  
		Size: 51.8 MB (51761069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-scm` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:f1222ff6e6c5ac8a037acd9b33e790f05b3367255b1f604b89202ce6cde6858d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.6 MB (116615102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b80f895e4c5392ae558d6a9167702748d7fa28db4311a814a278bf9e02c3435`
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
# Wed, 27 Mar 2019 09:23:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
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
	-	`sha256:3b11f27dc400fadef68469da5c311dcee27b33e1cd70c20606ebbe2c6bbf52ba`  
		Last Modified: Wed, 27 Mar 2019 10:06:08 GMT  
		Size: 51.7 MB (51674621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:f95bb099212deb8faf8d6bd9f7c8e74728089663b50d0590e9e8a74d7c932a5d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.3 MB (109337383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d9900b270d5ad9dffb231c306772913e8492c513b34a31653602914a381e385`
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
# Tue, 05 Mar 2019 13:37:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
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
	-	`sha256:ac657404e47abd49b78a31177fd17c8be63325a8bdc36ec9afffcb76edb71741`  
		Last Modified: Tue, 05 Mar 2019 13:59:19 GMT  
		Size: 47.3 MB (47304548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:5d620b236dcc4afb95e377400837d8d6d01c238d5c6799cde19d2f94a21b1c83
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.9 MB (120876282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1140190d8a55a7e822e722232f89460cf051450d8e76bb8e42c8a728945b6a45`
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
# Wed, 27 Mar 2019 09:43:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
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
	-	`sha256:f001e394762edf0d9410b5d39b7602b0a4578e5a711c04b7719b36c6a2b34b98`  
		Last Modified: Wed, 27 Mar 2019 10:32:30 GMT  
		Size: 54.2 MB (54244244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:7795c0411f9ff510a7ef5371c6e25855009857b915e2791f0446c8ba438e91b0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.5 MB (122538968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f78418afa62cd87dc28b28d14f8a4f1578984f3d7cb12525f6bbf9a92ace306`
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
# Tue, 05 Mar 2019 20:54:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
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
	-	`sha256:2230c46aa23eb9506eaa1f5c832e22d2d3e074906f9c0dc2b7e1f343c0cafa83`  
		Last Modified: Tue, 05 Mar 2019 21:14:54 GMT  
		Size: 53.4 MB (53373452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:4ecebebe01a89d130e7713f2df3cf838a84a7215ed2704758b6673738055566b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.6 MB (132602012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ad8bdd7ab4d3a8f367e0c058a940691f3b460a9e7d6ce668638ad33cd7d4a1b`
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
# Wed, 27 Mar 2019 08:56:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
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
	-	`sha256:dd69301347f7a7ffda64b0c611893395c013f32af8193a7a4076862d385ee2bf`  
		Last Modified: Wed, 27 Mar 2019 09:46:56 GMT  
		Size: 59.7 MB (59698998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:c4d170e2da730f8ead34311ba91ee71d8efbce1a65a64625d7ab73325fdcaeab
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.2 MB (117243043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:853bbc85d57dcfbe248def0ab16242c4a9fb19f0f65549bdbbc4438e121ea2f4`
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
# Tue, 05 Mar 2019 13:31:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
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
	-	`sha256:d1f2d0d8c14b4643d3a1eea936fc9175f74300cd403d95b261fc2188d46b1bd4`  
		Last Modified: Tue, 05 Mar 2019 13:38:50 GMT  
		Size: 51.3 MB (51303152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
