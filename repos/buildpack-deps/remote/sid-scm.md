## `buildpack-deps:sid-scm`

```console
$ docker pull buildpack-deps@sha256:243b12d6a243a74f53b8203d544e6221dfe4f733893247ee863550c1433e9249
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
$ docker pull buildpack-deps@sha256:ba005c8325121672c756277fa398c843cf37218515d97699b8a4ebf806e9a36f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.6 MB (119623822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:484a4963a29884ab803c42b8be9c5d5eaef04a341b35327ecd1e76c3809b6679`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 19:27:44 GMT
ADD file:10ceb3ed065b964c9332532874322c1278da8bda0c7caa7ea790da93e84d49e7 in / 
# Tue, 22 Jan 2019 19:27:44 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 20:04:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 20:04:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 22 Jan 2019 20:04:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:f695fc1eb490900cdc6224504e9f758820a8d68fb1e4512ed93d354848277d3d`  
		Last Modified: Tue, 22 Jan 2019 19:36:00 GMT  
		Size: 50.1 MB (50121951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4379ad7076713319119d25403f3f64f68f7445157c3f269dad09b6b9b9e04381`  
		Last Modified: Tue, 22 Jan 2019 20:12:08 GMT  
		Size: 7.8 MB (7769464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76e4b42821a5f33436c5c6dc5deb527160238fcab8b6d0538596869ee4fc5c17`  
		Last Modified: Tue, 22 Jan 2019 20:12:08 GMT  
		Size: 10.0 MB (9966030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40ff045938f057ed3c98ff1e1bd0d9fc3284ac448d375ade42c1d11e8e5f737c`  
		Last Modified: Tue, 22 Jan 2019 20:12:25 GMT  
		Size: 51.8 MB (51766377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-scm` - linux; arm variant v5

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

### `buildpack-deps:sid-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:a808489540e4ef634606e2f058cf94580724beec38bc70c0a12322b1a50c506e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.9 MB (108890618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa25001069dfe756b977eb1f94b47b51120ffeda6ca9a625fd915e9eb3857deb`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 13:02:31 GMT
ADD file:4410480801a6ff66a1068c94456f31359fa9346cc412479929df3ce6cb93e7fb in / 
# Sat, 29 Dec 2018 13:02:32 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:40:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:40:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 13:41:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a17a606f0d1dbe6a3c0c748e0a1e8f502af3849e9263c3d661120fbd26dc6028`  
		Last Modified: Sat, 29 Dec 2018 13:11:20 GMT  
		Size: 45.3 MB (45260316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42b29bb8e755ba510d79248e3ac60d71a3cb2cc962cc578ce24b325cb486e153`  
		Last Modified: Sat, 29 Dec 2018 14:03:11 GMT  
		Size: 7.0 MB (7001572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fb8412e32af8776dfc9b0fd4d86d3cd2baf2200e9f716a0d8d1a0e24ce7628d`  
		Last Modified: Sat, 29 Dec 2018 14:03:11 GMT  
		Size: 9.3 MB (9315839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a0341a91c0354da730faa002267d22df5fc309f4461d5d0f17fbf4743287ffc`  
		Last Modified: Sat, 29 Dec 2018 14:03:32 GMT  
		Size: 47.3 MB (47312891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:e09a22990582d09b73b77c26e5128a36503a9c6b0bd6af64ea16df3e2e38a45f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.1 MB (118091294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfeb171e99e4d2c6942887e96bc9fb47bfd66abb17dea44f8b0417d70eafbb24`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:05:53 GMT
ADD file:16f19362d47eec8582d5843c93afec247d55ac90bd3e2351e61cbac163b34c0e in / 
# Sat, 29 Dec 2018 10:05:55 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 11:56:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 11:58:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 12:00:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c0d52c910d70508104f9c514efede1ce4866075357222288e85fd8962ababf3f`  
		Last Modified: Sat, 29 Dec 2018 10:13:07 GMT  
		Size: 48.5 MB (48472215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:299400b75513a26ee0b2e41cb618ed032e76599ba1eaa1ea85dc39203a221c1f`  
		Last Modified: Sat, 29 Dec 2018 13:31:14 GMT  
		Size: 7.6 MB (7566461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37af55c5fb1ea6a1f3b0966a3001f2f7832ecbf8f96d02c2ff4c114898ed3a4c`  
		Last Modified: Sat, 29 Dec 2018 13:31:03 GMT  
		Size: 10.0 MB (9953658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3a34408f761feec62e7ef757b10d6f788719ba9ab7c7f8da75926c2d4f7ee02`  
		Last Modified: Sat, 29 Dec 2018 13:31:45 GMT  
		Size: 52.1 MB (52098960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:4e6ec92f8ab942b99f364ac67ef4d39cf1d9d7d7a6f837f50e81c747a2956d4b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.1 MB (122084512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e86f492311cb8797ad3baacfc250e210b139bb433515dd80a5203f8ea8db0a73`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 11:49:49 GMT
ADD file:b879bf0d08d1273e509a19b6ef7111b0ed2dcb1de16a7715dae55f362d2b5efe in / 
# Sat, 29 Dec 2018 11:49:49 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:58:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:58:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 12:58:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6d9293f359b656b26182f0ec7ff44edb5301074fb77a7fb5baa27ff469b778ce`  
		Last Modified: Sat, 29 Dec 2018 12:08:46 GMT  
		Size: 50.6 MB (50553475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d79ce5d52d79c612f6464b51b32d8850c674cb516d79ca4571f22ee2771e73cc`  
		Last Modified: Sat, 29 Dec 2018 13:26:15 GMT  
		Size: 7.9 MB (7855159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efc669298b75e3618f56a635304728f37b5904a5743e9f188d4c136b249917b2`  
		Last Modified: Sat, 29 Dec 2018 13:26:15 GMT  
		Size: 10.3 MB (10307695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:722e1bfbd0fc0c263917ed306fed808276b6b4bd263ccefa39b2d31838ecebc9`  
		Last Modified: Sat, 29 Dec 2018 13:26:47 GMT  
		Size: 53.4 MB (53368183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:51a65030df89b30d4d1b229e53588c83ba077e3597a3f1a2c04b70970a288aaf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.7 MB (129670152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:005dee0a7afe017232191fee45f5b79071626dffa0c807ad36108dc6a53d53ed`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 09:20:43 GMT
ADD file:2554b79107be415058aa9583ae616c4dbdf53850afe279b6b57c6f4d6cc9b0b1 in / 
# Sat, 29 Dec 2018 09:20:44 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 10:27:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:28:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 10:30:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3e4b2e95f4e41a9cad6c746f1dc0185d059f9b9eacd1287be8d39d0709e4182f`  
		Last Modified: Sat, 29 Dec 2018 09:26:10 GMT  
		Size: 53.4 MB (53407199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d50534b4ae7aac86bc7ccfd4d3cf882820ceaccc4678c0271d9eb539fc55401`  
		Last Modified: Sat, 29 Dec 2018 11:16:08 GMT  
		Size: 8.1 MB (8137820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf43e2e8204d6afcb3f7773107fe0f36295ce802ad9ecf5148a5943555e1ecd0`  
		Last Modified: Sat, 29 Dec 2018 11:16:07 GMT  
		Size: 10.7 MB (10703322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92f24e566940c24024c1617bb230dd55707c1bb7bdb34e39632e09481ede241f`  
		Last Modified: Sat, 29 Dec 2018 11:16:43 GMT  
		Size: 57.4 MB (57421811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:48357e510e44834936cf1322a6b55fec067bb748699d0f8c4ad0d9e7e2188465
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.8 MB (116808580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7baa163d529e3cdfffffd86ac28dc7810013f94416d6dc3dae864541ef8da03`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 12:42:41 GMT
ADD file:ea74ad702ee4e4806ae6232378b3387a7e1a47d808be83db391a7d5266cc3450 in / 
# Sat, 29 Dec 2018 12:42:41 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:14:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:14:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 13:14:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3b95e9248260917e0fbc6d296dfa921cc71782d00d267186d0ba00d2acaeb0d9`  
		Last Modified: Sat, 29 Dec 2018 12:45:53 GMT  
		Size: 48.4 MB (48371149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a407afbf900eb4d1e0a4f909f8c0d352783998773c4b0ad8f409f525697b5f2`  
		Last Modified: Sat, 29 Dec 2018 13:24:02 GMT  
		Size: 7.3 MB (7280243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bf4c88d71ead92959b1be2e334d0a45b93f3edb5530e7f13ce2864c61e666f4`  
		Last Modified: Sat, 29 Dec 2018 13:24:03 GMT  
		Size: 9.9 MB (9854412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:517a37d4e8335908a2075ec64551117531d0c08d570aabc3fe9101dafb041777`  
		Last Modified: Sat, 29 Dec 2018 13:24:18 GMT  
		Size: 51.3 MB (51302776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
