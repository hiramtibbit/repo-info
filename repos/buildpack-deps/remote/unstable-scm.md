## `buildpack-deps:unstable-scm`

```console
$ docker pull buildpack-deps@sha256:db315454172572d73080bb3816513af3a44fabe841b9b902b46b1867e0184e16
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
$ docker pull buildpack-deps@sha256:66499fce75b37516d55c51f8bf09aac0546b3056667078c1ddc3f02e87b5c46d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.1 MB (120110146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:843b66d429b8292250f2dc1cab9ae13884e6cc8c9c583658b8a5a5731c4bfd61`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Mar 2019 22:40:23 GMT
ADD file:ae997b4827aa33b5d2a8d031fee7fd4a7f0d7839e72d2cd38977fdf806b1e21c in / 
# Tue, 26 Mar 2019 22:40:23 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:24:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:24:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Mar 2019 23:24:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:f747399e18307cd4cfb6e3aa0f45160b5c14d6b14f60316342b9f37bac4e7a2d`  
		Last Modified: Tue, 26 Mar 2019 22:43:49 GMT  
		Size: 50.3 MB (50280305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ed3f0fd634fcec3c6557dd8bca5f8eac4f290cce090459ec6d0515d5fb76e13`  
		Last Modified: Tue, 26 Mar 2019 23:31:09 GMT  
		Size: 7.8 MB (7787505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32446fe911be1a551426461c98ca9b48b5bb404064850c52997183fa960325c0`  
		Last Modified: Tue, 26 Mar 2019 23:31:09 GMT  
		Size: 10.0 MB (10049263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4349b85ee2affafe0e68ec8d715d14adcbf7326e47cabe649f48847542d91c1d`  
		Last Modified: Tue, 26 Mar 2019 23:31:24 GMT  
		Size: 52.0 MB (51993073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:unstable-scm` - linux; arm variant v5

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

### `buildpack-deps:unstable-scm` - linux; arm variant v7

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

### `buildpack-deps:unstable-scm` - linux; arm64 variant v8

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

### `buildpack-deps:unstable-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:bb42b480b62daf25a039d7c19526c94f670964178a5a67efe34a69bafba00acd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.6 MB (123559748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:003bf27f0066e083ed3d1d5dbd7f57f366657f2d360b94adec6efac35048efce`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 11:43:40 GMT
ADD file:aabddc8503779289fa215ba4c8cedd2315637c37836b974d0cd854497316f3f6 in / 
# Tue, 05 Mar 2019 11:43:40 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 21:07:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 21:08:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 21:08:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ac3a27f255b7ba1504a24556064a0ff04577e55ba608928511824b9082daf96d`  
		Last Modified: Tue, 05 Mar 2019 11:53:28 GMT  
		Size: 51.0 MB (50983496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36bc0d170f107a8a8fd0c413158849c3b7ee2c0cd150567e7cbf6c80dca37b24`  
		Last Modified: Tue, 05 Mar 2019 21:16:37 GMT  
		Size: 7.9 MB (7948271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34bc50443f43bb98bad15dc3986ff01968f8482cb3aa13a58e5d7461a4113097`  
		Last Modified: Tue, 05 Mar 2019 21:16:37 GMT  
		Size: 11.0 MB (11042772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7740780869cb7c84831c01dbfcffda0848807e717fed57048110485da5666a8e`  
		Last Modified: Tue, 05 Mar 2019 21:17:03 GMT  
		Size: 53.6 MB (53585209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:unstable-scm` - linux; ppc64le

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

### `buildpack-deps:unstable-scm` - linux; s390x

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
