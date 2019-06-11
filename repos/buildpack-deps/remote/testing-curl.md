## `buildpack-deps:testing-curl`

```console
$ docker pull buildpack-deps@sha256:dcf4cc868eabfdd67a26cb07b1f4b647fbe1fc89406b89e5b8a9cb76c65bfe14
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

### `buildpack-deps:testing-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:639187d2231560ac4873f6eb13dc39260cb30b6e1e2c5b0af415d78e2333de5b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.1 MB (68148621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00fba1f13fff926393b1b3725cccea35569867dcb3b79fd67b2104ae6ab56ff0`
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

### `buildpack-deps:testing-curl` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:5e806830192021d30aadbaad2912adb9fb12261aee1cb4aa3c2491cb3831bdfe
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.1 MB (65094215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0e22ad25029d05fcfb6e532eb2b415ba543d92e044514c5507290e7941cf971`
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

### `buildpack-deps:testing-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:e0e68d2a0eb797ad64d3d0987d5e012aad8e35b035d0931190e8fe7c2653dc39
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.3 MB (62273765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b422bc6a9afd41003d400eac82714c3335075b07694f45b987e626a54bf1df64`
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

### `buildpack-deps:testing-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:8e77b67f2589cb51352177e7a5675907af022943dfab7933ecd786320e6472c1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.8 MB (66793291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e78403381450a4d150b5438bc904e9ec5f046c749c7a4d3eaec881a42fe4c5a3`
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

### `buildpack-deps:testing-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:72e528a920aa4e12b75214bd20df26da7d2b5ecaf7fd644fc4828ea1530e9d59
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.4 MB (69417941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94ac444a228bdcd9a5c530489884d09afaa37005b6d3bb3a50987518a7322c75`
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

### `buildpack-deps:testing-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:6ab37d2edbae8a52b2e2c7ec501276b9a2c172f696f994866612be74b72e1b0e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.1 MB (73079680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b9b2b2d661971004c128763e66425a9b26d56e2b3055ef14a6aa096841fc387`
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

### `buildpack-deps:testing-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:39e54902b8c5d58906bf834a23a713f4fde8e6da5014e7cc19e1b1a60f976eaa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.2 MB (66182270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48c0e3f0d864ab8f3fc543ea39355b2776621f7e32a0cced92ac1dd2ff6f571d`
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
