## `buildpack-deps:testing-scm`

```console
$ docker pull buildpack-deps@sha256:b5ad1d257fe7834dd186bd3f96624376b36d670b928ecd91fa966033fc1837a4
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
$ docker pull buildpack-deps@sha256:0d939561bd7a3a9f97fe34123937a6e70d97b93fb2779aac1f96f2533a51127a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.9 MB (119907753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38eb2db2a707dc1e8eee2e7dc8fe4c940c910e6cba2c9a8f372e29a8a9d9b303`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:21:37 GMT
ADD file:e7b0b4ed23ac0ce3e8c4d65daa6a8896533c92b2dd167ba2c15c7181354d64b6 in / 
# Mon, 10 Jun 2019 23:21:37 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:15:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:15:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 00:15:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:478cd0aa93c0da2489a29b95d43a21a942cece28ecb0ba0f99770f52eb8ee3dc`  
		Last Modified: Mon, 10 Jun 2019 23:25:52 GMT  
		Size: 50.4 MB (50379147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7e87ee23a91fa7c0c19afb429b5a0f3293ceddc584f8f3d9889a83eb6e97ea8`  
		Last Modified: Tue, 11 Jun 2019 00:33:29 GMT  
		Size: 7.8 MB (7791615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4c3ebf254930a8323096e65b35f33db49f8fd72a6f1032ed67b412c25842a39`  
		Last Modified: Tue, 11 Jun 2019 00:33:29 GMT  
		Size: 10.0 MB (9977859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1928340129b14a13cecd45f7a88a0cd79827d158e322ebd07901d0a4602716cf`  
		Last Modified: Tue, 11 Jun 2019 00:33:57 GMT  
		Size: 51.8 MB (51759132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-scm` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:eb9a86756c30e98a424c7f07891ddea8e9793d4e3499d25abcbb25d0cc315c62
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.6 MB (114604215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1e661f131a23b7e7ffa5c2fafb7e2ed6fa7fdc402258eb9f6fa12060c4cc2a6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:49:01 GMT
ADD file:187f1bb7f8cb32f8ee432b6cdcf5f0bce99c3a74da2f3d29d3bb78b6fb9b11e0 in / 
# Mon, 10 Jun 2019 23:49:02 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:17:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:17:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 00:18:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6fed64d2c33a11ff19c06da4b865fad43acb0d621096e90181e25fde31fb34d7`  
		Last Modified: Mon, 10 Jun 2019 23:56:04 GMT  
		Size: 48.1 MB (48081162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff922da61bc37d2c7366ccc61d39beadde95cd3f1117ea074056e34a65bb807`  
		Last Modified: Tue, 11 Jun 2019 00:34:11 GMT  
		Size: 7.3 MB (7340416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9cc9442d04914ecc6bfdb5cf5de5b17a5f1de20b2719e72182563f68fdc5894`  
		Last Modified: Tue, 11 Jun 2019 00:34:11 GMT  
		Size: 9.7 MB (9672637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b1d432c31ecb30c0fddb6236bba156e304770c141603d458a28a65331bd3f9`  
		Last Modified: Tue, 11 Jun 2019 00:34:34 GMT  
		Size: 49.5 MB (49510000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:b35ba886f51ed45873afd637bff84fd53ebda40c03f5b189d622be8d16d06d79
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.6 MB (109564066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d193bac05c27d17da399b171dd5124875334e84c1c93913ff0a7f90ac65d079`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:57:51 GMT
ADD file:ec5a9b69a45f105825461c10b30b9f4047df8e9a713ee7fa9599e32eca5e4002 in / 
# Mon, 10 Jun 2019 23:57:52 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:56:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:56:13 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 00:56:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1a36aa5b88e6314c7ca390b5d4dcdfc92650f48d1e9225c19f82737994f4af83`  
		Last Modified: Tue, 11 Jun 2019 00:05:57 GMT  
		Size: 45.9 MB (45854968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1c86a0f4dc4e42a58e3635217b802a15f0807a11031eebbe0ff9526d1a18286`  
		Last Modified: Tue, 11 Jun 2019 01:13:27 GMT  
		Size: 7.1 MB (7089730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55cf05842122257c22931cdba3923b5bda987d30795269f9d399ae7267ef9013`  
		Last Modified: Tue, 11 Jun 2019 01:13:28 GMT  
		Size: 9.3 MB (9329067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:419bf05b28dd64277c3c8544e35581e883261d6624876b14864a3246a5ac0b62`  
		Last Modified: Tue, 11 Jun 2019 01:13:49 GMT  
		Size: 47.3 MB (47290301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:b3f8e3f584e93093b5764c307c33c2fb088af28840a289a60c136522531e5db8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.9 MB (118899167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94caaa6c4e79c7fe6381950b078f029b624d03e48f1dd9c62b107e6134b3ccf2`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:40:03 GMT
ADD file:d4ed38275e26cfea6aa8a3f6b394ee5f2b0fa641d0630a3d468e28e28ac1884a in / 
# Mon, 10 Jun 2019 23:40:06 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:06:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:06:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 00:06:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8689d9294ba4ec1f0c65b9d464daf20e7a8f23953891113e97383cfe25accb70`  
		Last Modified: Mon, 10 Jun 2019 23:43:20 GMT  
		Size: 49.2 MB (49158860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32f677549a90f69ffb66a8816076ff76f735e26af842855caa48e55fb7a62f10`  
		Last Modified: Tue, 11 Jun 2019 00:30:47 GMT  
		Size: 7.7 MB (7666785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:593cd4266304dac1b4b43236f5c5f19dd80d65ec96916fa7592ac3248aaab076`  
		Last Modified: Tue, 11 Jun 2019 00:30:43 GMT  
		Size: 10.0 MB (9967646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b2aa1260a734d045c13557a51c8248c6904530c33b595a597e0837aaa6166d8`  
		Last Modified: Tue, 11 Jun 2019 00:31:11 GMT  
		Size: 52.1 MB (52105876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:9d32c18645f46afad45cf8c5cd6b36f72aa2335b1718ab961e9b6ce32f7702a3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.8 MB (122775542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5ee4900852f6b763933830c40bc85861be2f2c235e76b43d487b8b114c41f38`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:39:00 GMT
ADD file:8099e0f2099a6ff14323cbb04efb8dd47edfdb270e990aa60e452a3da3356e13 in / 
# Mon, 10 Jun 2019 23:39:00 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 02:40:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 02:41:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 02:41:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e5a6d4b67a8a57652c10b2598a7c16a4a584c8c7ba82ae32f396af13dc1d9f26`  
		Last Modified: Mon, 10 Jun 2019 23:43:06 GMT  
		Size: 51.1 MB (51138475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b9c92844f4fd6f1c2ec6f626aac11cd049da4fde0948c967985caa400da331e`  
		Last Modified: Tue, 11 Jun 2019 03:04:17 GMT  
		Size: 8.0 MB (7956925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268bbbd1ef5d201f04b333e1c232a92ff6e14dfdd594040fd1873ca1df21aefc`  
		Last Modified: Tue, 11 Jun 2019 03:04:17 GMT  
		Size: 10.3 MB (10322541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82a75e4828ffca17afae68d62dd3ffcde5d6ad4e428aaea3b8eb02b5f7bc5348`  
		Last Modified: Tue, 11 Jun 2019 03:04:48 GMT  
		Size: 53.4 MB (53357601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:ca93e0a330a44a7af1c2af1d96bad275dcc4e33df067cb1c292449dde655647b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.5 MB (130454131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cec1c5954812bdeddde7bdc1856aa1dfc29e29164eb953020228aba1388f543`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:17:03 GMT
ADD file:f644ad961f6c2192550d5b0142404f3839fd950b933183534fa7df274aa50a8a in / 
# Mon, 10 Jun 2019 23:17:06 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 01:16:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 01:16:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 01:18:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:decba7e128fed3715df7927e807908c2c45f9a9d72775dc83425f0f7c77be5af`  
		Last Modified: Mon, 10 Jun 2019 23:21:16 GMT  
		Size: 54.1 MB (54121677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b51e5ad038d059df24c04eaff8f83c8f0a72768a1a89fd7ca20894278cc120d3`  
		Last Modified: Tue, 11 Jun 2019 02:46:14 GMT  
		Size: 8.2 MB (8239603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c0cd98b20f2d2164696f9ddce6dc551f06a9168e9873388d05870446aae8dd9`  
		Last Modified: Tue, 11 Jun 2019 02:46:14 GMT  
		Size: 10.7 MB (10718400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24ffa9eb0dbba27d41e8b6ca905a122bfe45ee9bc8cd260b515d134b87e63efd`  
		Last Modified: Tue, 11 Jun 2019 02:46:52 GMT  
		Size: 57.4 MB (57374451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:1933993f41409beae9893c55555b762c7cd0388ab89be6b432be2fd07dc40b0d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.5 MB (117482948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfa1db498b4f259b11b9448259f99c6f4196a8ddfe4cb5e9800609c609ca7de9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:42:10 GMT
ADD file:cbda21300f44d484eac1946e33249ae3c8f18773d5d93d8c4855f52598d3050a in / 
# Mon, 10 Jun 2019 23:42:11 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 01:39:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 01:39:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 01:39:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:88d986d403805e24ab0796e7f62c434170153c30560aef3173415aa30db65340`  
		Last Modified: Mon, 10 Jun 2019 23:45:17 GMT  
		Size: 48.9 MB (48948887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f41623bd2cf7e465fb49ff4be996dd9b60de24840e435481713f2c2a0d527257`  
		Last Modified: Tue, 11 Jun 2019 01:48:19 GMT  
		Size: 7.4 MB (7367731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b67c9ca2bcfb0c67d420ca8b67393e72643e195cb240f2906d37a5c53ed393a`  
		Last Modified: Tue, 11 Jun 2019 01:48:19 GMT  
		Size: 9.9 MB (9865652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4b2cfb084cfb5a9ab0848553804b7b26c01b1d45a8baedcbcb6465d0052ca38`  
		Last Modified: Tue, 11 Jun 2019 01:48:33 GMT  
		Size: 51.3 MB (51300678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
