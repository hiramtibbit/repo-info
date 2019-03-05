## `buildpack-deps:sid-scm`

```console
$ docker pull buildpack-deps@sha256:84222bc1e7bee7e673d455cb42c0673234d8aec2768fae72994e19f81bfaee75
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
$ docker pull buildpack-deps@sha256:98bc65178a18228203ae77b1508a2981eea78b2924f3242baa99acfa3f0c02dc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.7 MB (120664098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:413680cb17047a06387699deba0939cfe143543e0ecfd047b076cb0bdb2f2f71`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 04 Mar 2019 23:21:27 GMT
ADD file:dca5a20f97013b9a80952784924ca7f3820f99958ad080344fe8445a67c2ca92 in / 
# Mon, 04 Mar 2019 23:21:27 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 02:32:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 02:33:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 02:33:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9785490dff12d73b09ebaeb9dfa12d32bc61a107039000030ea3d9da0db5f77a`  
		Last Modified: Mon, 04 Mar 2019 23:25:37 GMT  
		Size: 50.2 MB (50217046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81298de37ef3a5fa4733f0841b968e44cf8a8e3c50d4c2e14c599ef4066a4083`  
		Last Modified: Tue, 05 Mar 2019 02:42:40 GMT  
		Size: 7.8 MB (7785176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aae9f220b3fb2f6292283f3afdfbc148c506980841df909b63b2faf289cd618a`  
		Last Modified: Tue, 05 Mar 2019 02:42:40 GMT  
		Size: 10.7 MB (10670055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ad2ed23090f3baa71334a3f4b8ff9f2c744437018bd612321cb5bd4c1a15c3e`  
		Last Modified: Tue, 05 Mar 2019 02:42:56 GMT  
		Size: 52.0 MB (51991821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-scm` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:26ef133a42e1c032c08078f7af9902793dd53f2e856eb971cc1e0bc9bdb1050c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.3 MB (115349537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa1f29c9e68a9b8f492f84b8fcb5a802191afec93083259659b3734d4c3488cf`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:52:57 GMT
ADD file:408a135a9a2b4df4beece5b2de3301cfa0e45a7a062eb63e9a0e7e9192bd5f99 in / 
# Tue, 05 Mar 2019 09:52:58 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 10:29:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 10:29:41 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 10:30:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3f835cac0c7da48ab45ed34e7fa9323dc275f7e955809e476af719eca0844a82`  
		Last Modified: Tue, 05 Mar 2019 10:01:18 GMT  
		Size: 47.9 MB (47927091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20a13c1b08400ad8c370949bdf50dd9e9beb876d921502e30bf1b5fd309b9ac`  
		Last Modified: Tue, 05 Mar 2019 10:41:47 GMT  
		Size: 7.3 MB (7336165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ddae599fbb72dbcdfff564e64d55467d131f4ef12a46081715d0f6e05b06ce8`  
		Last Modified: Tue, 05 Mar 2019 10:41:48 GMT  
		Size: 10.3 MB (10343335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62acf10d86111f3f76514640e45a2242318ec4c77631d4393551a7d24a509b11`  
		Last Modified: Tue, 05 Mar 2019 10:42:10 GMT  
		Size: 49.7 MB (49742946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:2dbf03cdb1114bb16eead020563cc212a3ce94989e1591f838211855ffd5b96e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.3 MB (110275864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e990194f52569da89deb775451c760ed12694ecc43a03cb5590714b0f8c88359`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 13:08:38 GMT
ADD file:b72300898197970109a36b5e6d6d7a6bb43e7b98f2031ae4e0209656631a1896 in / 
# Tue, 05 Mar 2019 13:08:40 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 13:47:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 13:47:28 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 13:48:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:4d624d22f7bf6fc6089b3a8dad99963dba88224793cf4fd6e125d78127c11b12`  
		Last Modified: Tue, 05 Mar 2019 13:17:19 GMT  
		Size: 45.7 MB (45702215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1efd7518521f31fa10a388738bf1f88c27ca903200f6142f6a055cf36cde6e0c`  
		Last Modified: Tue, 05 Mar 2019 14:01:34 GMT  
		Size: 7.1 MB (7082522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7401310a12e54a641edd646e202ab8fc761837c53b172213c67d172f3ae3a985`  
		Last Modified: Tue, 05 Mar 2019 14:01:34 GMT  
		Size: 10.0 MB (9975606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:360b4a90ff4dea06f06d32a0b67f8e935b2b0026f481d570b65db22061de52a4`  
		Last Modified: Tue, 05 Mar 2019 14:01:56 GMT  
		Size: 47.5 MB (47515521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:c286d973376e914fd8a31de3dea743aef4b9e9960d51d2d790484506e0ade9cb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.6 MB (119638161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8553278530e94fffbce2fbd8dcc3af36d9ee26ec3dde8da1a2702ee756729ff4`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:58:23 GMT
ADD file:90460bfea8197db08228883344f54de9af9e181235af744b6ced1c92c9232c0e in / 
# Tue, 05 Mar 2019 09:58:25 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 11:20:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 11:21:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 11:23:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:144b366f7c016e373caca8c07d7f49863e1f58cd34df77dd477c040ad69a0834`  
		Last Modified: Tue, 05 Mar 2019 10:04:44 GMT  
		Size: 49.0 MB (49013519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b38aff23d039c17ce98ae2f6276035844062b76a9cb6721e48c87767550993c0`  
		Last Modified: Tue, 05 Mar 2019 11:44:40 GMT  
		Size: 7.6 MB (7648958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51426802a8ba0dd98b6e4c8ab18780ce139927b80caa959bf3e47c6cefe81324`  
		Last Modified: Tue, 05 Mar 2019 11:44:40 GMT  
		Size: 10.7 MB (10659343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1017ae7728a2b2c5a5117b15f92dd4b4de518047a6a48e8fcb1536f222a13154`  
		Last Modified: Tue, 05 Mar 2019 11:45:09 GMT  
		Size: 52.3 MB (52316341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:10ef8715cfb71892fd8c91d5ccf0d1e251a30ec5f044e96656b06373b3d19384
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.7 MB (122654738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c060e1e1b4f00286eb7ebca03530fcfaa4789af80e83cf0ac8e5b79b3b52199`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 12:00:13 GMT
ADD file:ce7c45fff0d74bfe603a7138b818751de070b078ca0721b047e8567c30f61cf0 in / 
# Wed, 06 Feb 2019 12:00:13 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 01:46:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:46:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Feb 2019 01:47:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7f5d83ecefd7c06c9ad1f3c8e31a16ca0808dd67c4c337ffd67e9a10a97d7675`  
		Last Modified: Wed, 06 Feb 2019 12:06:14 GMT  
		Size: 50.8 MB (50829933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8bcf4f56465b45cfe5620cbd28fc67621aec9ed3ef1ff3a6e4e9a9e3b6b18cc`  
		Last Modified: Thu, 07 Feb 2019 02:01:48 GMT  
		Size: 7.9 MB (7924724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb1e77e887de2c62af9e946eeb3bdc7df911c334d8daa540671d5a51ab4ed6f5`  
		Last Modified: Thu, 07 Feb 2019 02:01:48 GMT  
		Size: 10.3 MB (10307727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e205e8f133e3f2038b72fd52f79e44f82aa495a5bbdf20f14f65a833b2a31d48`  
		Last Modified: Thu, 07 Feb 2019 02:02:08 GMT  
		Size: 53.6 MB (53592354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:7f7cce013d6eb589f00fb890471c113e22e7bcc2437f2cb29ebcec5c99aef81a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.2 MB (131246953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:998884cac74c5a7d72ba506ce8105e52451cc77039687fd9bebbbdacc65e6bd0`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:24:04 GMT
ADD file:40f652d32e0b76ec071fd9402a46baf708b4a93a447746fa2c6a983037783a9e in / 
# Tue, 05 Mar 2019 09:24:08 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 12:33:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 12:34:08 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 12:35:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:2592b3cdddbd90d7ba646742ad2e42d88b7ff2e928a2409bcaaa0e0b3a57313c`  
		Last Modified: Tue, 05 Mar 2019 09:29:29 GMT  
		Size: 54.0 MB (53964088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35ea9ab9e821963916336b853e74d8c29cc094b1d40d76c3ed5a818eddc133b4`  
		Last Modified: Tue, 05 Mar 2019 13:00:10 GMT  
		Size: 8.2 MB (8219458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfaab8d8f558ef22051e46a930446f1691e01632a550283553b40931dcd1bac9`  
		Last Modified: Tue, 05 Mar 2019 13:00:09 GMT  
		Size: 11.5 MB (11459503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd622d196dc7958c0e3bb4dfe26e29e523f55977eb38bc7fe47c296c7d48f547`  
		Last Modified: Tue, 05 Mar 2019 13:00:49 GMT  
		Size: 57.6 MB (57603904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:a4ec53847289c613b67ed5b1fb5de4efff757606626bac5fa1fb6eae8667d478
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.2 MB (118229375 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58a47fa6ebeee7d535730b703f8564cef44d475a8574ec175e603ecfa411f0c3`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 12:42:17 GMT
ADD file:1f39bab5b8349914aec5d4d7288d3789725c246ce0f265333d09a89c90440aed in / 
# Tue, 05 Mar 2019 12:42:17 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 13:33:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 13:33:41 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 13:34:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:536f0d4b71a17b5b6bc1c252fc284b7fc8706b9e795c0e4d2deea17eba78a0ad`  
		Last Modified: Tue, 05 Mar 2019 12:44:44 GMT  
		Size: 48.8 MB (48790038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8403a183fbdbe6a15804cab9423acd790ec2a65a956e4737c2180da831e9fa9`  
		Last Modified: Tue, 05 Mar 2019 13:39:31 GMT  
		Size: 7.4 MB (7359778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04c076f27a63a721173e5f70a226c82d25b5bb5d02641c41bce852d28f8142bd`  
		Last Modified: Tue, 05 Mar 2019 13:39:31 GMT  
		Size: 10.5 MB (10546789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:177ef8ea8182d28ac43b37353281ce935ec2313b9770e4a1d90ff9b56d5c0c3c`  
		Last Modified: Tue, 05 Mar 2019 13:39:45 GMT  
		Size: 51.5 MB (51532770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
