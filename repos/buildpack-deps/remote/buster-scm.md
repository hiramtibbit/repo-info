## `buildpack-deps:buster-scm`

```console
$ docker pull buildpack-deps@sha256:66170d9f01417039e1f397092f7cc210e2e10cc4f82df083edc561bac5a86f18
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
$ docker pull buildpack-deps@sha256:9aaf7cf1133539fc375db518e05bef6b3ee05934c387f4b3943b154a54ba2f45
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.0 MB (117009552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb8d0463d4e61279e901cb87a246c670c26bcff0730c198b87c6939d1e4b8352`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Nov 2018 22:32:12 GMT
ADD file:0dc58768faa0403918d16823eee1547c7ee299249251e279d3378f8b8522ffac in / 
# Thu, 15 Nov 2018 22:32:13 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:03:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:03:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 11:04:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bac5159b230a9f6ac8aedbb940e99daf2f02c4f92812d766769e555262fbc162`  
		Last Modified: Thu, 15 Nov 2018 00:59:39 GMT  
		Size: 49.2 MB (49205033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6dcb6f1e458a3233a57c16febe4a40e3ae5780b74b94a52bafc9e262933ad85`  
		Last Modified: Fri, 16 Nov 2018 11:26:19 GMT  
		Size: 7.4 MB (7402874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a38df35355b734c6068bc54bfedc04195e3bb3d4f5236a3bc903343dc72e9fcf`  
		Last Modified: Fri, 16 Nov 2018 11:26:19 GMT  
		Size: 9.8 MB (9780199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa1bfad11c9354aad12ce776ee00dced08456611730c5731532adbc87e3f1683`  
		Last Modified: Fri, 16 Nov 2018 11:27:09 GMT  
		Size: 50.6 MB (50621446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-scm` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:bbe8d9195df2dcb5c62ba4f78738625d8125cdd97705c600ac55034434baa930
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.4 MB (114428567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9e2c5a9623d10d503be8a6239ebdfee05a1d3d1c399055bab0e54161e9ec397`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 08:49:06 GMT
ADD file:72c1c9f078b771b572197a5f6e049afcafa13e20f76b817ab1ee48ab5b550d5a in / 
# Tue, 16 Oct 2018 08:49:07 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 09:52:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:53:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 09:53:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:986270a373f7181ef01d64d59559cc759017994335eb7c28c236d9ed58da5c40`  
		Last Modified: Tue, 16 Oct 2018 08:58:47 GMT  
		Size: 46.9 MB (46861990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8432a10db4b2b13a51151e57fa7be15ab4c23b025e9ab66055750fefe2216b06`  
		Last Modified: Tue, 16 Oct 2018 10:06:13 GMT  
		Size: 6.7 MB (6670491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cd1e2b7c3e2043c004c9057863c5978072ba7eb8b3184aa56dd448f3ca2cd62`  
		Last Modified: Tue, 16 Oct 2018 10:06:14 GMT  
		Size: 10.1 MB (10085422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a35c19abd74adb5da440e6ccd5f2e2105373e96c3dc449198914c17bf879fe71`  
		Last Modified: Tue, 16 Oct 2018 10:06:45 GMT  
		Size: 50.8 MB (50810664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:75171a1fc0ee7e28f1dccf2e57826e56453ef1baf4efe9404b74f334552d900b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.4 MB (109354456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2dd2b9da34930e5a67f79523af8ff99f5eceaf49c7c6804d483260fe4058c0ec`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 11:58:32 GMT
ADD file:64680e11a2630130256799de575671c227ea84aa67f9977a246f0c5ba66bfd58 in / 
# Tue, 16 Oct 2018 11:58:33 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:51:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:51:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 12:52:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:84a21cbaec047863415e9c55d951ba1920a36fbf170229c5ad19978251451544`  
		Last Modified: Tue, 16 Oct 2018 12:11:06 GMT  
		Size: 44.7 MB (44693669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94abfa90d33ecb4b1f714bfc8eb986f30be7417a000f219e070bd53ccc5a75a3`  
		Last Modified: Tue, 16 Oct 2018 13:06:20 GMT  
		Size: 6.5 MB (6461811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a4c64601b9d8890881110bb7196d8499c86750a03b09abb0b7de75416d86353`  
		Last Modified: Tue, 16 Oct 2018 13:06:21 GMT  
		Size: 9.7 MB (9726910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c4b61367195c6c6376b39c6f5a983879e192b5ac4fdc8cf43ca225c9660ee1d`  
		Last Modified: Tue, 16 Oct 2018 13:06:49 GMT  
		Size: 48.5 MB (48472066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:d820ca28155cbaed799ba0841b5742cbf8ec78e43944d4ff29a72b8608c1680f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.8 MB (117801306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b2173a5d708cac666fa87fe5a5f8a28063477c9dd6c826bbc3da436a7381061`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 08:40:40 GMT
ADD file:4857face4d6b661dcc7389904203bb3aedcdfeb0ceedc8b362dcc3636ac7459b in / 
# Tue, 16 Oct 2018 08:40:41 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 11:37:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 11:38:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 11:39:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1ed8cd8fb3aa00c426f795dd579c1c7f16ed6d507fb199daa1900248272311ed`  
		Last Modified: Tue, 16 Oct 2018 08:46:20 GMT  
		Size: 47.3 MB (47316581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f263d5e42e5eb9d21509fd326000e0575d3b4e46c546450dc9f165412d014a71`  
		Last Modified: Tue, 16 Oct 2018 12:19:04 GMT  
		Size: 6.8 MB (6788429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:077bd122c26d8eff28bf2faf8d28334884c010a76ab8cf7071fd89e4ba8bc2f9`  
		Last Modified: Tue, 16 Oct 2018 12:19:06 GMT  
		Size: 10.4 MB (10381303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bee7d0b3e80de125fed10d35efc3f29b704275e6667786321e8a69092e3708d`  
		Last Modified: Tue, 16 Oct 2018 12:20:13 GMT  
		Size: 53.3 MB (53314993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:c581b55f2e207a589340f6b33f56eb7eb50a5978147ddb89a2bd2fd5c1296050
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.8 MB (122793995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8abf319a409da9fbbe2cc3be9a88d5fd33969fae3facf15511fd3097eb287b3f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 10:39:53 GMT
ADD file:6d95f34a7a35e94aa5299a896bdf872f905e92932bc7c4d42a4069fc89eca53b in / 
# Tue, 16 Oct 2018 10:39:53 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 21:18:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 21:19:03 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 21:19:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7f8c752f7c0d3f6a123acc3888d30f9321af66fe6e988ab7a317b045e266371c`  
		Last Modified: Tue, 16 Oct 2018 10:54:12 GMT  
		Size: 49.8 MB (49806685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a75c4ad6479c164b84a502482d0ab6ae27f284a4bd2c08d98cf1b06a47803ce`  
		Last Modified: Tue, 16 Oct 2018 21:36:50 GMT  
		Size: 7.2 MB (7234834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7da2715170fd5ce9d58cd4022b0a01cb6fbb7fb58590bf62d6b4eb7758e3c87d`  
		Last Modified: Tue, 16 Oct 2018 21:36:50 GMT  
		Size: 10.8 MB (10756394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91daacc42bf751202163899bc626e708a027764c155b9beda8d7678cd2f6a861`  
		Last Modified: Tue, 16 Oct 2018 21:37:38 GMT  
		Size: 55.0 MB (54996082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:29dc49987bcb638f0bb326bb5dc7b21afe8697cee609d62da0e4b629634dc227
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.3 MB (129328094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca4877df2146aeb4897daee105d463845c6aaa5e924f28434b65fb4a7970b07e`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 08:18:28 GMT
ADD file:5e3e283f6be46586ee3aa52a0eabb62e6df9b0b9671787c071f2242904778293 in / 
# Tue, 16 Oct 2018 08:18:30 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 10:23:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 10:23:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 10:26:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:4235160846e98b63950bdc60bf58b6fe98639d8ce3eccc9fb3db19693e1df9c6`  
		Last Modified: Tue, 16 Oct 2018 08:25:05 GMT  
		Size: 52.0 MB (51955347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d33b4b49c83033b52eebc94bb8e03702ce959a8f1807dd9d7a2e342f1d6f25f`  
		Last Modified: Tue, 16 Oct 2018 10:59:56 GMT  
		Size: 7.1 MB (7076302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fb6581d99e16e9a8d24dea3573e043d600bf5478f636d686180eeea81ee2d1d`  
		Last Modified: Tue, 16 Oct 2018 10:59:56 GMT  
		Size: 11.2 MB (11194082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d29fa910cdc15b9c85e941d19e6e881c0be93889e70211afa4111e7a757611`  
		Last Modified: Tue, 16 Oct 2018 11:00:46 GMT  
		Size: 59.1 MB (59102363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:f2d44ebee35469d7584e13c4843896e4291d08f98ea30a4d9efade4ed73c4971
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.4 MB (117410924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54f5d71aca6872e1adfaffd2a514e4b4bae0b9c4b9a7d7d26ac6f41444f069e8`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 11:41:41 GMT
ADD file:9daec189760e25c2544e1084dbf7197aa29a620b4091da7c9c55ef572167d5aa in / 
# Tue, 16 Oct 2018 11:41:41 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:49:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:49:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 12:50:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:47a977b6dc33ea563dc77c6d42fa21af28ece361f1d2464d4763e172f9a199f3`  
		Last Modified: Tue, 16 Oct 2018 11:44:05 GMT  
		Size: 47.7 MB (47705315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29733cd7ba0daa54bc97f680f6543af2c1846e0e6fb6fb044aeb80b22da4e5cf`  
		Last Modified: Tue, 16 Oct 2018 12:56:03 GMT  
		Size: 6.8 MB (6769342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9e31c151b6eb0d0e80cdd250f93b447678bc61b17623a7e0aae840634633870`  
		Last Modified: Tue, 16 Oct 2018 12:56:03 GMT  
		Size: 10.3 MB (10278673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed12195d06b72fa4edecc77291d1c702defcd277b69f1d6e54ede07efb2565d1`  
		Last Modified: Tue, 16 Oct 2018 12:56:23 GMT  
		Size: 52.7 MB (52657594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
