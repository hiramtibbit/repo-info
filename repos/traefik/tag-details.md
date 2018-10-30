<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `traefik`

-	[`traefik:1.7`](#traefik17)
-	[`traefik:1.7.4`](#traefik174)
-	[`traefik:1.7.4-alpine`](#traefik174-alpine)
-	[`traefik:1.7.4-nanoserver`](#traefik174-nanoserver)
-	[`traefik:1.7.4-nanoserver-sac2016`](#traefik174-nanoserver-sac2016)
-	[`traefik:1.7-alpine`](#traefik17-alpine)
-	[`traefik:1.7-nanoserver`](#traefik17-nanoserver)
-	[`traefik:1.7-nanoserver-sac2016`](#traefik17-nanoserver-sac2016)
-	[`traefik:alpine`](#traefikalpine)
-	[`traefik:latest`](#traefiklatest)
-	[`traefik:maroilles`](#traefikmaroilles)
-	[`traefik:maroilles-alpine`](#traefikmaroilles-alpine)
-	[`traefik:maroilles-nanoserver`](#traefikmaroilles-nanoserver)
-	[`traefik:maroilles-nanoserver-sac2016`](#traefikmaroilles-nanoserver-sac2016)
-	[`traefik:nanoserver`](#traefiknanoserver)
-	[`traefik:nanoserver-sac2016`](#traefiknanoserver-sac2016)
-	[`traefik:v1.7`](#traefikv17)
-	[`traefik:v1.7.4`](#traefikv174)
-	[`traefik:v1.7.4-alpine`](#traefikv174-alpine)
-	[`traefik:v1.7.4-nanoserver`](#traefikv174-nanoserver)
-	[`traefik:v1.7.4-nanoserver-sac2016`](#traefikv174-nanoserver-sac2016)
-	[`traefik:v1.7-alpine`](#traefikv17-alpine)
-	[`traefik:v1.7-nanoserver`](#traefikv17-nanoserver)
-	[`traefik:v1.7-nanoserver-sac2016`](#traefikv17-nanoserver-sac2016)

## `traefik:1.7`

```console
$ docker pull traefik@sha256:c25ac3c2736dc41b08c6f40ef3393d03dd7640a037cd53d681af459ccfa95c28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.7` - linux; amd64

```console
$ docker pull traefik@sha256:75cdc64272cf0e3ad372342c8809b582ea56ffec454e3a4b80265440bc1f11cc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.5 MB (19456632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99dafcf4b2ebf5ed540bb87561de8737a4c6361d19e4240f853736310096fda0`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 07 Sep 2018 19:05:07 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Mon, 15 Oct 2018 21:13:19 GMT
COPY file:c6a86b500008e2d52fe1b5dfafc3bb5e804b696d37a678643eba9677495cc2c4 in / 
# Mon, 15 Oct 2018 21:13:20 GMT
EXPOSE 80/tcp
# Mon, 15 Oct 2018 21:13:20 GMT
ENTRYPOINT ["/traefik"]
# Mon, 15 Oct 2018 21:13:20 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:c6e5aced14a22b72f0fd545bec131cc37ac8382fae12614369232b12bf5cc1bf`  
		Last Modified: Fri, 07 Sep 2018 19:06:05 GMT  
		Size: 135.0 KB (135037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44f01398393ece48f0eb7fe996782e1b015778623abda9f445d36ea870238767`  
		Last Modified: Mon, 15 Oct 2018 21:13:50 GMT  
		Size: 19.3 MB (19321595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7` - linux; arm variant v6

```console
$ docker pull traefik@sha256:50963e8bf32003047ac68774a093a2fdf7683f9e697aba3d1e469c0bd2f10757
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.3 MB (18284454 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa4267a45adb290eeb64443e0bb9234b61c7a6bb8e652be58a6f19b0a37dd5e8`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 21 Aug 2018 08:15:56 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Tue, 16 Oct 2018 07:54:01 GMT
COPY file:cda2b7429933ff91216f008b18e9a3c499b5a9df8b751c1798491d9626160d9f in / 
# Tue, 16 Oct 2018 07:54:01 GMT
EXPOSE 80/tcp
# Tue, 16 Oct 2018 07:54:02 GMT
ENTRYPOINT ["/traefik"]
# Tue, 16 Oct 2018 07:54:02 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:9dac48e51b2381c7f7a8cbe16e8670b5d4bfcbd991c139ad10d2e46f233def67`  
		Last Modified: Tue, 21 Aug 2018 08:16:23 GMT  
		Size: 135.1 KB (135078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee2168f4f23cf35481a4dbe5827346eb3a1efe68cd11c521e4e042da8224b02`  
		Last Modified: Tue, 16 Oct 2018 07:54:34 GMT  
		Size: 18.1 MB (18149376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:cb16ca0ab45a34af2f8911626e28ac7fbb11e6f5a52ef38a4367bd0106c0b410
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17838456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:523d027a2417c4c435619f18f9fd511418f4c55901e6b1f8464ea8904cac7e22`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 21 Aug 2018 08:48:57 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Tue, 16 Oct 2018 11:33:05 GMT
COPY file:2a7af6054106d6ba72db7de73673215d94ed7e6f631217b7a3270887b824d6cd in / 
# Tue, 16 Oct 2018 11:33:06 GMT
EXPOSE 80/tcp
# Tue, 16 Oct 2018 11:33:07 GMT
ENTRYPOINT ["/traefik"]
# Tue, 16 Oct 2018 11:33:08 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:237f2d395b5468b8fc4fb105187ad5ab71f15a8ae7ddb9042c335afc1d048e22`  
		Last Modified: Tue, 21 Aug 2018 08:50:29 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c42773cc6b31dddc1d05d4637699c67b838f0c5198cc6c9520dcebdd76b4235`  
		Last Modified: Tue, 16 Oct 2018 11:34:14 GMT  
		Size: 17.7 MB (17703417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7.4`

**does not exist** (yet?)

## `traefik:1.7.4-alpine`

**does not exist** (yet?)

## `traefik:1.7.4-nanoserver`

**does not exist** (yet?)

## `traefik:1.7.4-nanoserver-sac2016`

**does not exist** (yet?)

## `traefik:1.7-alpine`

```console
$ docker pull traefik@sha256:930871d5e6e69c5b5d2ea7155a86ffc27d61409be8c87ccc96bc0e7250bc22c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.7-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:8e7d393868ecdcb527366713cb260ac4f5e4e91cde8167e8216293728bc1a39b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.8 MB (21837984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c856088343ab95128284c86be5c67b99418b52f6b5161ddadfbd60ba76ba9758`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 03:37:55 GMT
RUN apk --no-cache add ca-certificates
# Mon, 15 Oct 2018 21:13:31 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.3/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Mon, 15 Oct 2018 21:13:32 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Mon, 15 Oct 2018 21:13:32 GMT
EXPOSE 80/tcp
# Mon, 15 Oct 2018 21:13:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 15 Oct 2018 21:13:32 GMT
CMD ["traefik"]
# Mon, 15 Oct 2018 21:13:32 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d9593d002f462333c2d2b049c0e43267d2f25e7031617d7951e483cfe6fceef`  
		Last Modified: Wed, 12 Sep 2018 03:38:22 GMT  
		Size: 309.0 KB (308983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05e7f84e5f04dd8833f0d5e5c83df26342e69bf6ba750154ed1a72732cca9276`  
		Last Modified: Mon, 15 Oct 2018 21:14:49 GMT  
		Size: 19.3 MB (19321752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2dd5b8dca35db1ace190ed9e1f78ac8895c856bce45d37b9d5a960b8951ca9a`  
		Last Modified: Mon, 15 Oct 2018 21:14:45 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:38edc9f189b767682935b7cc33c110f3a29445809dc92b84f7a162c933a53805
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 MB (20605381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:424e7719461587ad1cdba61f5f06050f38c2262064b17e9d88a033762bbb9903`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:31:22 GMT
RUN apk --no-cache add ca-certificates
# Tue, 16 Oct 2018 07:54:13 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.3/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 16 Oct 2018 07:54:14 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Tue, 16 Oct 2018 07:54:14 GMT
EXPOSE 80/tcp
# Tue, 16 Oct 2018 07:54:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 Oct 2018 07:54:15 GMT
CMD ["traefik"]
# Tue, 16 Oct 2018 07:54:16 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:905674ea9d9448b14f15ae82e3c34138680bac1ef4fc29088aae8c9639b502fe`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 2.1 MB (2146453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91fe322e1690c8fb3f2b684fd85335d36a45e509b1568683232aede6d8a5e2b`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74a65db53aaa0cc4ab0232b1e179456b46fe0f6c04a77b387b9d4bdc2efd62c9`  
		Last Modified: Wed, 12 Sep 2018 08:31:52 GMT  
		Size: 309.1 KB (309068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8865385a397850ffea1e123260b915ebb2885873706644f8c5e87cc235a4f2f7`  
		Last Modified: Tue, 16 Oct 2018 07:55:00 GMT  
		Size: 18.1 MB (18149363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83fc46e6162595ee4b5000797ee9464cadfd341b2411d42e437e1b8cf56dd379`  
		Last Modified: Tue, 16 Oct 2018 07:54:54 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:907f53a1e072f80db24850bf9c9f1b4c3eabbc61ad50bd650199175b937b3c28
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.1 MB (20112145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96178582c6b6c2ae8367a443a9024bda10c7d820c9ee094d5c390fcb4b777c21`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 12 Sep 2018 08:42:24 GMT
ADD file:a4b53e2a2e207c5107a76c16d91b99cb1ed4ecb90b363913798e663426137d45 in / 
# Wed, 12 Sep 2018 08:42:24 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:42:25 GMT
CMD ["/bin/sh"]
# Wed, 19 Sep 2018 08:43:28 GMT
RUN apk --no-cache add ca-certificates
# Tue, 16 Oct 2018 11:33:34 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.3/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 16 Oct 2018 11:33:35 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Tue, 16 Oct 2018 11:33:36 GMT
EXPOSE 80/tcp
# Tue, 16 Oct 2018 11:33:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 Oct 2018 11:33:38 GMT
CMD ["traefik"]
# Tue, 16 Oct 2018 11:33:39 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:9941776d74c9129fd585b6f0434ba48bd3a7112d6736bc02e6d12f41153cab26`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 2.1 MB (2099762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae94b3cb7a1b2cef0ceffe3303cd03f83434d283aab43389e586b42bea00b358`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c9f8de84abb1c0426abc9f58b577b1536c16e87bcd8b0170be82c4f0ae8e4de`  
		Last Modified: Wed, 19 Sep 2018 08:46:35 GMT  
		Size: 308.5 KB (308531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29fb3c623fc9a4b50c4538ce68bb04d3b4daa4d971e54848d92f6dddff8bad91`  
		Last Modified: Tue, 16 Oct 2018 11:35:35 GMT  
		Size: 17.7 MB (17703356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:394792d308ccac3ee1ec0ddc530b5ba4e04aa353fe85de10b1da534441e31b99`  
		Last Modified: Tue, 16 Oct 2018 11:35:21 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7-nanoserver`

```console
$ docker pull traefik@sha256:1ebc065f13e8251515139e8361985a3c80a85691cf93acbe72048b6f0b4a17b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:1.7-nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:3035ee1a55af72f2f62f393fb5401c3c75f34409170eea57348557cc0e49b89c
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **454.7 MB (454743663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1e2b366c3d1b052b6ff23c24bb530bbc480a4b8f984e55702503ba7881a5703`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Tue, 16 Oct 2018 11:03:07 GMT
RUN cmd /S /C #(nop) COPY file:bc48496240f4caa61710b7153793017450dfc9229cbbc02c7ffb8e32877645ff in \traefik.exe 
# Tue, 16 Oct 2018 11:03:09 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Tue, 16 Oct 2018 11:03:11 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 16 Oct 2018 11:03:12 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Mon, 17 Sep 2018 20:04:15 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6f2071dcd7294537bba55b3061704ef1370748e91982193b9e0fa4ebc114589b`  
		Last Modified: Tue, 09 Oct 2018 18:02:39 GMT  
		Size: 182.7 MB (182705816 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8eaca13da83869ace0c10e25d7f7c969d84ce36f0c1d0d757c1ab6c97a4b75c8`  
		Last Modified: Tue, 16 Oct 2018 11:03:32 GMT  
		Size: 19.3 MB (19343996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05773d9c1dbc483daf98518ecd2e65fa52018ce0e12af53444adee8e4c91785b`  
		Last Modified: Tue, 16 Oct 2018 11:03:27 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69680cc7e7a29b3c91cece9b1dd5aaf986ccffe446dab9382f9b88962f52e49a`  
		Last Modified: Tue, 16 Oct 2018 11:03:26 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a755e3f51b5380064da2b89948a1c46d7d39cca194cd86933d291e57964c2d`  
		Last Modified: Tue, 16 Oct 2018 11:03:26 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:1ebc065f13e8251515139e8361985a3c80a85691cf93acbe72048b6f0b4a17b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:1.7-nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:3035ee1a55af72f2f62f393fb5401c3c75f34409170eea57348557cc0e49b89c
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **454.7 MB (454743663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1e2b366c3d1b052b6ff23c24bb530bbc480a4b8f984e55702503ba7881a5703`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Tue, 16 Oct 2018 11:03:07 GMT
RUN cmd /S /C #(nop) COPY file:bc48496240f4caa61710b7153793017450dfc9229cbbc02c7ffb8e32877645ff in \traefik.exe 
# Tue, 16 Oct 2018 11:03:09 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Tue, 16 Oct 2018 11:03:11 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 16 Oct 2018 11:03:12 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Mon, 17 Sep 2018 20:04:15 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6f2071dcd7294537bba55b3061704ef1370748e91982193b9e0fa4ebc114589b`  
		Last Modified: Tue, 09 Oct 2018 18:02:39 GMT  
		Size: 182.7 MB (182705816 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8eaca13da83869ace0c10e25d7f7c969d84ce36f0c1d0d757c1ab6c97a4b75c8`  
		Last Modified: Tue, 16 Oct 2018 11:03:32 GMT  
		Size: 19.3 MB (19343996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05773d9c1dbc483daf98518ecd2e65fa52018ce0e12af53444adee8e4c91785b`  
		Last Modified: Tue, 16 Oct 2018 11:03:27 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69680cc7e7a29b3c91cece9b1dd5aaf986ccffe446dab9382f9b88962f52e49a`  
		Last Modified: Tue, 16 Oct 2018 11:03:26 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a755e3f51b5380064da2b89948a1c46d7d39cca194cd86933d291e57964c2d`  
		Last Modified: Tue, 16 Oct 2018 11:03:26 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:alpine`

```console
$ docker pull traefik@sha256:930871d5e6e69c5b5d2ea7155a86ffc27d61409be8c87ccc96bc0e7250bc22c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:alpine` - linux; amd64

```console
$ docker pull traefik@sha256:8e7d393868ecdcb527366713cb260ac4f5e4e91cde8167e8216293728bc1a39b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.8 MB (21837984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c856088343ab95128284c86be5c67b99418b52f6b5161ddadfbd60ba76ba9758`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 03:37:55 GMT
RUN apk --no-cache add ca-certificates
# Mon, 15 Oct 2018 21:13:31 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.3/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Mon, 15 Oct 2018 21:13:32 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Mon, 15 Oct 2018 21:13:32 GMT
EXPOSE 80/tcp
# Mon, 15 Oct 2018 21:13:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 15 Oct 2018 21:13:32 GMT
CMD ["traefik"]
# Mon, 15 Oct 2018 21:13:32 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d9593d002f462333c2d2b049c0e43267d2f25e7031617d7951e483cfe6fceef`  
		Last Modified: Wed, 12 Sep 2018 03:38:22 GMT  
		Size: 309.0 KB (308983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05e7f84e5f04dd8833f0d5e5c83df26342e69bf6ba750154ed1a72732cca9276`  
		Last Modified: Mon, 15 Oct 2018 21:14:49 GMT  
		Size: 19.3 MB (19321752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2dd5b8dca35db1ace190ed9e1f78ac8895c856bce45d37b9d5a960b8951ca9a`  
		Last Modified: Mon, 15 Oct 2018 21:14:45 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:38edc9f189b767682935b7cc33c110f3a29445809dc92b84f7a162c933a53805
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 MB (20605381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:424e7719461587ad1cdba61f5f06050f38c2262064b17e9d88a033762bbb9903`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:31:22 GMT
RUN apk --no-cache add ca-certificates
# Tue, 16 Oct 2018 07:54:13 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.3/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 16 Oct 2018 07:54:14 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Tue, 16 Oct 2018 07:54:14 GMT
EXPOSE 80/tcp
# Tue, 16 Oct 2018 07:54:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 Oct 2018 07:54:15 GMT
CMD ["traefik"]
# Tue, 16 Oct 2018 07:54:16 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:905674ea9d9448b14f15ae82e3c34138680bac1ef4fc29088aae8c9639b502fe`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 2.1 MB (2146453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91fe322e1690c8fb3f2b684fd85335d36a45e509b1568683232aede6d8a5e2b`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74a65db53aaa0cc4ab0232b1e179456b46fe0f6c04a77b387b9d4bdc2efd62c9`  
		Last Modified: Wed, 12 Sep 2018 08:31:52 GMT  
		Size: 309.1 KB (309068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8865385a397850ffea1e123260b915ebb2885873706644f8c5e87cc235a4f2f7`  
		Last Modified: Tue, 16 Oct 2018 07:55:00 GMT  
		Size: 18.1 MB (18149363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83fc46e6162595ee4b5000797ee9464cadfd341b2411d42e437e1b8cf56dd379`  
		Last Modified: Tue, 16 Oct 2018 07:54:54 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:907f53a1e072f80db24850bf9c9f1b4c3eabbc61ad50bd650199175b937b3c28
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.1 MB (20112145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96178582c6b6c2ae8367a443a9024bda10c7d820c9ee094d5c390fcb4b777c21`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 12 Sep 2018 08:42:24 GMT
ADD file:a4b53e2a2e207c5107a76c16d91b99cb1ed4ecb90b363913798e663426137d45 in / 
# Wed, 12 Sep 2018 08:42:24 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:42:25 GMT
CMD ["/bin/sh"]
# Wed, 19 Sep 2018 08:43:28 GMT
RUN apk --no-cache add ca-certificates
# Tue, 16 Oct 2018 11:33:34 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.3/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 16 Oct 2018 11:33:35 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Tue, 16 Oct 2018 11:33:36 GMT
EXPOSE 80/tcp
# Tue, 16 Oct 2018 11:33:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 Oct 2018 11:33:38 GMT
CMD ["traefik"]
# Tue, 16 Oct 2018 11:33:39 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:9941776d74c9129fd585b6f0434ba48bd3a7112d6736bc02e6d12f41153cab26`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 2.1 MB (2099762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae94b3cb7a1b2cef0ceffe3303cd03f83434d283aab43389e586b42bea00b358`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c9f8de84abb1c0426abc9f58b577b1536c16e87bcd8b0170be82c4f0ae8e4de`  
		Last Modified: Wed, 19 Sep 2018 08:46:35 GMT  
		Size: 308.5 KB (308531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29fb3c623fc9a4b50c4538ce68bb04d3b4daa4d971e54848d92f6dddff8bad91`  
		Last Modified: Tue, 16 Oct 2018 11:35:35 GMT  
		Size: 17.7 MB (17703356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:394792d308ccac3ee1ec0ddc530b5ba4e04aa353fe85de10b1da534441e31b99`  
		Last Modified: Tue, 16 Oct 2018 11:35:21 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:latest`

```console
$ docker pull traefik@sha256:c25ac3c2736dc41b08c6f40ef3393d03dd7640a037cd53d681af459ccfa95c28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:latest` - linux; amd64

```console
$ docker pull traefik@sha256:75cdc64272cf0e3ad372342c8809b582ea56ffec454e3a4b80265440bc1f11cc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.5 MB (19456632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99dafcf4b2ebf5ed540bb87561de8737a4c6361d19e4240f853736310096fda0`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 07 Sep 2018 19:05:07 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Mon, 15 Oct 2018 21:13:19 GMT
COPY file:c6a86b500008e2d52fe1b5dfafc3bb5e804b696d37a678643eba9677495cc2c4 in / 
# Mon, 15 Oct 2018 21:13:20 GMT
EXPOSE 80/tcp
# Mon, 15 Oct 2018 21:13:20 GMT
ENTRYPOINT ["/traefik"]
# Mon, 15 Oct 2018 21:13:20 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:c6e5aced14a22b72f0fd545bec131cc37ac8382fae12614369232b12bf5cc1bf`  
		Last Modified: Fri, 07 Sep 2018 19:06:05 GMT  
		Size: 135.0 KB (135037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44f01398393ece48f0eb7fe996782e1b015778623abda9f445d36ea870238767`  
		Last Modified: Mon, 15 Oct 2018 21:13:50 GMT  
		Size: 19.3 MB (19321595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:latest` - linux; arm variant v6

```console
$ docker pull traefik@sha256:50963e8bf32003047ac68774a093a2fdf7683f9e697aba3d1e469c0bd2f10757
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.3 MB (18284454 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa4267a45adb290eeb64443e0bb9234b61c7a6bb8e652be58a6f19b0a37dd5e8`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 21 Aug 2018 08:15:56 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Tue, 16 Oct 2018 07:54:01 GMT
COPY file:cda2b7429933ff91216f008b18e9a3c499b5a9df8b751c1798491d9626160d9f in / 
# Tue, 16 Oct 2018 07:54:01 GMT
EXPOSE 80/tcp
# Tue, 16 Oct 2018 07:54:02 GMT
ENTRYPOINT ["/traefik"]
# Tue, 16 Oct 2018 07:54:02 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:9dac48e51b2381c7f7a8cbe16e8670b5d4bfcbd991c139ad10d2e46f233def67`  
		Last Modified: Tue, 21 Aug 2018 08:16:23 GMT  
		Size: 135.1 KB (135078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee2168f4f23cf35481a4dbe5827346eb3a1efe68cd11c521e4e042da8224b02`  
		Last Modified: Tue, 16 Oct 2018 07:54:34 GMT  
		Size: 18.1 MB (18149376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:latest` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:cb16ca0ab45a34af2f8911626e28ac7fbb11e6f5a52ef38a4367bd0106c0b410
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17838456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:523d027a2417c4c435619f18f9fd511418f4c55901e6b1f8464ea8904cac7e22`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 21 Aug 2018 08:48:57 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Tue, 16 Oct 2018 11:33:05 GMT
COPY file:2a7af6054106d6ba72db7de73673215d94ed7e6f631217b7a3270887b824d6cd in / 
# Tue, 16 Oct 2018 11:33:06 GMT
EXPOSE 80/tcp
# Tue, 16 Oct 2018 11:33:07 GMT
ENTRYPOINT ["/traefik"]
# Tue, 16 Oct 2018 11:33:08 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:237f2d395b5468b8fc4fb105187ad5ab71f15a8ae7ddb9042c335afc1d048e22`  
		Last Modified: Tue, 21 Aug 2018 08:50:29 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c42773cc6b31dddc1d05d4637699c67b838f0c5198cc6c9520dcebdd76b4235`  
		Last Modified: Tue, 16 Oct 2018 11:34:14 GMT  
		Size: 17.7 MB (17703417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:maroilles`

```console
$ docker pull traefik@sha256:c25ac3c2736dc41b08c6f40ef3393d03dd7640a037cd53d681af459ccfa95c28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:maroilles` - linux; amd64

```console
$ docker pull traefik@sha256:75cdc64272cf0e3ad372342c8809b582ea56ffec454e3a4b80265440bc1f11cc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.5 MB (19456632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99dafcf4b2ebf5ed540bb87561de8737a4c6361d19e4240f853736310096fda0`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 07 Sep 2018 19:05:07 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Mon, 15 Oct 2018 21:13:19 GMT
COPY file:c6a86b500008e2d52fe1b5dfafc3bb5e804b696d37a678643eba9677495cc2c4 in / 
# Mon, 15 Oct 2018 21:13:20 GMT
EXPOSE 80/tcp
# Mon, 15 Oct 2018 21:13:20 GMT
ENTRYPOINT ["/traefik"]
# Mon, 15 Oct 2018 21:13:20 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:c6e5aced14a22b72f0fd545bec131cc37ac8382fae12614369232b12bf5cc1bf`  
		Last Modified: Fri, 07 Sep 2018 19:06:05 GMT  
		Size: 135.0 KB (135037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44f01398393ece48f0eb7fe996782e1b015778623abda9f445d36ea870238767`  
		Last Modified: Mon, 15 Oct 2018 21:13:50 GMT  
		Size: 19.3 MB (19321595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:maroilles` - linux; arm variant v6

```console
$ docker pull traefik@sha256:50963e8bf32003047ac68774a093a2fdf7683f9e697aba3d1e469c0bd2f10757
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.3 MB (18284454 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa4267a45adb290eeb64443e0bb9234b61c7a6bb8e652be58a6f19b0a37dd5e8`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 21 Aug 2018 08:15:56 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Tue, 16 Oct 2018 07:54:01 GMT
COPY file:cda2b7429933ff91216f008b18e9a3c499b5a9df8b751c1798491d9626160d9f in / 
# Tue, 16 Oct 2018 07:54:01 GMT
EXPOSE 80/tcp
# Tue, 16 Oct 2018 07:54:02 GMT
ENTRYPOINT ["/traefik"]
# Tue, 16 Oct 2018 07:54:02 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:9dac48e51b2381c7f7a8cbe16e8670b5d4bfcbd991c139ad10d2e46f233def67`  
		Last Modified: Tue, 21 Aug 2018 08:16:23 GMT  
		Size: 135.1 KB (135078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee2168f4f23cf35481a4dbe5827346eb3a1efe68cd11c521e4e042da8224b02`  
		Last Modified: Tue, 16 Oct 2018 07:54:34 GMT  
		Size: 18.1 MB (18149376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:maroilles` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:cb16ca0ab45a34af2f8911626e28ac7fbb11e6f5a52ef38a4367bd0106c0b410
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17838456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:523d027a2417c4c435619f18f9fd511418f4c55901e6b1f8464ea8904cac7e22`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 21 Aug 2018 08:48:57 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Tue, 16 Oct 2018 11:33:05 GMT
COPY file:2a7af6054106d6ba72db7de73673215d94ed7e6f631217b7a3270887b824d6cd in / 
# Tue, 16 Oct 2018 11:33:06 GMT
EXPOSE 80/tcp
# Tue, 16 Oct 2018 11:33:07 GMT
ENTRYPOINT ["/traefik"]
# Tue, 16 Oct 2018 11:33:08 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:237f2d395b5468b8fc4fb105187ad5ab71f15a8ae7ddb9042c335afc1d048e22`  
		Last Modified: Tue, 21 Aug 2018 08:50:29 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c42773cc6b31dddc1d05d4637699c67b838f0c5198cc6c9520dcebdd76b4235`  
		Last Modified: Tue, 16 Oct 2018 11:34:14 GMT  
		Size: 17.7 MB (17703417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:maroilles-alpine`

```console
$ docker pull traefik@sha256:930871d5e6e69c5b5d2ea7155a86ffc27d61409be8c87ccc96bc0e7250bc22c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:maroilles-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:8e7d393868ecdcb527366713cb260ac4f5e4e91cde8167e8216293728bc1a39b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.8 MB (21837984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c856088343ab95128284c86be5c67b99418b52f6b5161ddadfbd60ba76ba9758`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 03:37:55 GMT
RUN apk --no-cache add ca-certificates
# Mon, 15 Oct 2018 21:13:31 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.3/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Mon, 15 Oct 2018 21:13:32 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Mon, 15 Oct 2018 21:13:32 GMT
EXPOSE 80/tcp
# Mon, 15 Oct 2018 21:13:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 15 Oct 2018 21:13:32 GMT
CMD ["traefik"]
# Mon, 15 Oct 2018 21:13:32 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d9593d002f462333c2d2b049c0e43267d2f25e7031617d7951e483cfe6fceef`  
		Last Modified: Wed, 12 Sep 2018 03:38:22 GMT  
		Size: 309.0 KB (308983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05e7f84e5f04dd8833f0d5e5c83df26342e69bf6ba750154ed1a72732cca9276`  
		Last Modified: Mon, 15 Oct 2018 21:14:49 GMT  
		Size: 19.3 MB (19321752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2dd5b8dca35db1ace190ed9e1f78ac8895c856bce45d37b9d5a960b8951ca9a`  
		Last Modified: Mon, 15 Oct 2018 21:14:45 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:maroilles-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:38edc9f189b767682935b7cc33c110f3a29445809dc92b84f7a162c933a53805
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 MB (20605381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:424e7719461587ad1cdba61f5f06050f38c2262064b17e9d88a033762bbb9903`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:31:22 GMT
RUN apk --no-cache add ca-certificates
# Tue, 16 Oct 2018 07:54:13 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.3/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 16 Oct 2018 07:54:14 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Tue, 16 Oct 2018 07:54:14 GMT
EXPOSE 80/tcp
# Tue, 16 Oct 2018 07:54:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 Oct 2018 07:54:15 GMT
CMD ["traefik"]
# Tue, 16 Oct 2018 07:54:16 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:905674ea9d9448b14f15ae82e3c34138680bac1ef4fc29088aae8c9639b502fe`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 2.1 MB (2146453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91fe322e1690c8fb3f2b684fd85335d36a45e509b1568683232aede6d8a5e2b`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74a65db53aaa0cc4ab0232b1e179456b46fe0f6c04a77b387b9d4bdc2efd62c9`  
		Last Modified: Wed, 12 Sep 2018 08:31:52 GMT  
		Size: 309.1 KB (309068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8865385a397850ffea1e123260b915ebb2885873706644f8c5e87cc235a4f2f7`  
		Last Modified: Tue, 16 Oct 2018 07:55:00 GMT  
		Size: 18.1 MB (18149363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83fc46e6162595ee4b5000797ee9464cadfd341b2411d42e437e1b8cf56dd379`  
		Last Modified: Tue, 16 Oct 2018 07:54:54 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:maroilles-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:907f53a1e072f80db24850bf9c9f1b4c3eabbc61ad50bd650199175b937b3c28
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.1 MB (20112145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96178582c6b6c2ae8367a443a9024bda10c7d820c9ee094d5c390fcb4b777c21`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 12 Sep 2018 08:42:24 GMT
ADD file:a4b53e2a2e207c5107a76c16d91b99cb1ed4ecb90b363913798e663426137d45 in / 
# Wed, 12 Sep 2018 08:42:24 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:42:25 GMT
CMD ["/bin/sh"]
# Wed, 19 Sep 2018 08:43:28 GMT
RUN apk --no-cache add ca-certificates
# Tue, 16 Oct 2018 11:33:34 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.3/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 16 Oct 2018 11:33:35 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Tue, 16 Oct 2018 11:33:36 GMT
EXPOSE 80/tcp
# Tue, 16 Oct 2018 11:33:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 Oct 2018 11:33:38 GMT
CMD ["traefik"]
# Tue, 16 Oct 2018 11:33:39 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:9941776d74c9129fd585b6f0434ba48bd3a7112d6736bc02e6d12f41153cab26`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 2.1 MB (2099762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae94b3cb7a1b2cef0ceffe3303cd03f83434d283aab43389e586b42bea00b358`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c9f8de84abb1c0426abc9f58b577b1536c16e87bcd8b0170be82c4f0ae8e4de`  
		Last Modified: Wed, 19 Sep 2018 08:46:35 GMT  
		Size: 308.5 KB (308531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29fb3c623fc9a4b50c4538ce68bb04d3b4daa4d971e54848d92f6dddff8bad91`  
		Last Modified: Tue, 16 Oct 2018 11:35:35 GMT  
		Size: 17.7 MB (17703356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:394792d308ccac3ee1ec0ddc530b5ba4e04aa353fe85de10b1da534441e31b99`  
		Last Modified: Tue, 16 Oct 2018 11:35:21 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:maroilles-nanoserver`

```console
$ docker pull traefik@sha256:1ebc065f13e8251515139e8361985a3c80a85691cf93acbe72048b6f0b4a17b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:maroilles-nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:3035ee1a55af72f2f62f393fb5401c3c75f34409170eea57348557cc0e49b89c
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **454.7 MB (454743663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1e2b366c3d1b052b6ff23c24bb530bbc480a4b8f984e55702503ba7881a5703`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Tue, 16 Oct 2018 11:03:07 GMT
RUN cmd /S /C #(nop) COPY file:bc48496240f4caa61710b7153793017450dfc9229cbbc02c7ffb8e32877645ff in \traefik.exe 
# Tue, 16 Oct 2018 11:03:09 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Tue, 16 Oct 2018 11:03:11 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 16 Oct 2018 11:03:12 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Mon, 17 Sep 2018 20:04:15 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6f2071dcd7294537bba55b3061704ef1370748e91982193b9e0fa4ebc114589b`  
		Last Modified: Tue, 09 Oct 2018 18:02:39 GMT  
		Size: 182.7 MB (182705816 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8eaca13da83869ace0c10e25d7f7c969d84ce36f0c1d0d757c1ab6c97a4b75c8`  
		Last Modified: Tue, 16 Oct 2018 11:03:32 GMT  
		Size: 19.3 MB (19343996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05773d9c1dbc483daf98518ecd2e65fa52018ce0e12af53444adee8e4c91785b`  
		Last Modified: Tue, 16 Oct 2018 11:03:27 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69680cc7e7a29b3c91cece9b1dd5aaf986ccffe446dab9382f9b88962f52e49a`  
		Last Modified: Tue, 16 Oct 2018 11:03:26 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a755e3f51b5380064da2b89948a1c46d7d39cca194cd86933d291e57964c2d`  
		Last Modified: Tue, 16 Oct 2018 11:03:26 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:maroilles-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:1ebc065f13e8251515139e8361985a3c80a85691cf93acbe72048b6f0b4a17b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:maroilles-nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:3035ee1a55af72f2f62f393fb5401c3c75f34409170eea57348557cc0e49b89c
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **454.7 MB (454743663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1e2b366c3d1b052b6ff23c24bb530bbc480a4b8f984e55702503ba7881a5703`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Tue, 16 Oct 2018 11:03:07 GMT
RUN cmd /S /C #(nop) COPY file:bc48496240f4caa61710b7153793017450dfc9229cbbc02c7ffb8e32877645ff in \traefik.exe 
# Tue, 16 Oct 2018 11:03:09 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Tue, 16 Oct 2018 11:03:11 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 16 Oct 2018 11:03:12 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Mon, 17 Sep 2018 20:04:15 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6f2071dcd7294537bba55b3061704ef1370748e91982193b9e0fa4ebc114589b`  
		Last Modified: Tue, 09 Oct 2018 18:02:39 GMT  
		Size: 182.7 MB (182705816 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8eaca13da83869ace0c10e25d7f7c969d84ce36f0c1d0d757c1ab6c97a4b75c8`  
		Last Modified: Tue, 16 Oct 2018 11:03:32 GMT  
		Size: 19.3 MB (19343996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05773d9c1dbc483daf98518ecd2e65fa52018ce0e12af53444adee8e4c91785b`  
		Last Modified: Tue, 16 Oct 2018 11:03:27 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69680cc7e7a29b3c91cece9b1dd5aaf986ccffe446dab9382f9b88962f52e49a`  
		Last Modified: Tue, 16 Oct 2018 11:03:26 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a755e3f51b5380064da2b89948a1c46d7d39cca194cd86933d291e57964c2d`  
		Last Modified: Tue, 16 Oct 2018 11:03:26 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:nanoserver`

```console
$ docker pull traefik@sha256:1ebc065f13e8251515139e8361985a3c80a85691cf93acbe72048b6f0b4a17b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:3035ee1a55af72f2f62f393fb5401c3c75f34409170eea57348557cc0e49b89c
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **454.7 MB (454743663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1e2b366c3d1b052b6ff23c24bb530bbc480a4b8f984e55702503ba7881a5703`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Tue, 16 Oct 2018 11:03:07 GMT
RUN cmd /S /C #(nop) COPY file:bc48496240f4caa61710b7153793017450dfc9229cbbc02c7ffb8e32877645ff in \traefik.exe 
# Tue, 16 Oct 2018 11:03:09 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Tue, 16 Oct 2018 11:03:11 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 16 Oct 2018 11:03:12 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Mon, 17 Sep 2018 20:04:15 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6f2071dcd7294537bba55b3061704ef1370748e91982193b9e0fa4ebc114589b`  
		Last Modified: Tue, 09 Oct 2018 18:02:39 GMT  
		Size: 182.7 MB (182705816 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8eaca13da83869ace0c10e25d7f7c969d84ce36f0c1d0d757c1ab6c97a4b75c8`  
		Last Modified: Tue, 16 Oct 2018 11:03:32 GMT  
		Size: 19.3 MB (19343996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05773d9c1dbc483daf98518ecd2e65fa52018ce0e12af53444adee8e4c91785b`  
		Last Modified: Tue, 16 Oct 2018 11:03:27 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69680cc7e7a29b3c91cece9b1dd5aaf986ccffe446dab9382f9b88962f52e49a`  
		Last Modified: Tue, 16 Oct 2018 11:03:26 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a755e3f51b5380064da2b89948a1c46d7d39cca194cd86933d291e57964c2d`  
		Last Modified: Tue, 16 Oct 2018 11:03:26 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:nanoserver-sac2016`

```console
$ docker pull traefik@sha256:1ebc065f13e8251515139e8361985a3c80a85691cf93acbe72048b6f0b4a17b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:3035ee1a55af72f2f62f393fb5401c3c75f34409170eea57348557cc0e49b89c
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **454.7 MB (454743663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1e2b366c3d1b052b6ff23c24bb530bbc480a4b8f984e55702503ba7881a5703`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Tue, 16 Oct 2018 11:03:07 GMT
RUN cmd /S /C #(nop) COPY file:bc48496240f4caa61710b7153793017450dfc9229cbbc02c7ffb8e32877645ff in \traefik.exe 
# Tue, 16 Oct 2018 11:03:09 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Tue, 16 Oct 2018 11:03:11 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 16 Oct 2018 11:03:12 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Mon, 17 Sep 2018 20:04:15 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6f2071dcd7294537bba55b3061704ef1370748e91982193b9e0fa4ebc114589b`  
		Last Modified: Tue, 09 Oct 2018 18:02:39 GMT  
		Size: 182.7 MB (182705816 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8eaca13da83869ace0c10e25d7f7c969d84ce36f0c1d0d757c1ab6c97a4b75c8`  
		Last Modified: Tue, 16 Oct 2018 11:03:32 GMT  
		Size: 19.3 MB (19343996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05773d9c1dbc483daf98518ecd2e65fa52018ce0e12af53444adee8e4c91785b`  
		Last Modified: Tue, 16 Oct 2018 11:03:27 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69680cc7e7a29b3c91cece9b1dd5aaf986ccffe446dab9382f9b88962f52e49a`  
		Last Modified: Tue, 16 Oct 2018 11:03:26 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a755e3f51b5380064da2b89948a1c46d7d39cca194cd86933d291e57964c2d`  
		Last Modified: Tue, 16 Oct 2018 11:03:26 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7`

```console
$ docker pull traefik@sha256:c25ac3c2736dc41b08c6f40ef3393d03dd7640a037cd53d681af459ccfa95c28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.7` - linux; amd64

```console
$ docker pull traefik@sha256:75cdc64272cf0e3ad372342c8809b582ea56ffec454e3a4b80265440bc1f11cc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.5 MB (19456632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99dafcf4b2ebf5ed540bb87561de8737a4c6361d19e4240f853736310096fda0`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 07 Sep 2018 19:05:07 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Mon, 15 Oct 2018 21:13:19 GMT
COPY file:c6a86b500008e2d52fe1b5dfafc3bb5e804b696d37a678643eba9677495cc2c4 in / 
# Mon, 15 Oct 2018 21:13:20 GMT
EXPOSE 80/tcp
# Mon, 15 Oct 2018 21:13:20 GMT
ENTRYPOINT ["/traefik"]
# Mon, 15 Oct 2018 21:13:20 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:c6e5aced14a22b72f0fd545bec131cc37ac8382fae12614369232b12bf5cc1bf`  
		Last Modified: Fri, 07 Sep 2018 19:06:05 GMT  
		Size: 135.0 KB (135037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44f01398393ece48f0eb7fe996782e1b015778623abda9f445d36ea870238767`  
		Last Modified: Mon, 15 Oct 2018 21:13:50 GMT  
		Size: 19.3 MB (19321595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7` - linux; arm variant v6

```console
$ docker pull traefik@sha256:50963e8bf32003047ac68774a093a2fdf7683f9e697aba3d1e469c0bd2f10757
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.3 MB (18284454 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa4267a45adb290eeb64443e0bb9234b61c7a6bb8e652be58a6f19b0a37dd5e8`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 21 Aug 2018 08:15:56 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Tue, 16 Oct 2018 07:54:01 GMT
COPY file:cda2b7429933ff91216f008b18e9a3c499b5a9df8b751c1798491d9626160d9f in / 
# Tue, 16 Oct 2018 07:54:01 GMT
EXPOSE 80/tcp
# Tue, 16 Oct 2018 07:54:02 GMT
ENTRYPOINT ["/traefik"]
# Tue, 16 Oct 2018 07:54:02 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:9dac48e51b2381c7f7a8cbe16e8670b5d4bfcbd991c139ad10d2e46f233def67`  
		Last Modified: Tue, 21 Aug 2018 08:16:23 GMT  
		Size: 135.1 KB (135078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee2168f4f23cf35481a4dbe5827346eb3a1efe68cd11c521e4e042da8224b02`  
		Last Modified: Tue, 16 Oct 2018 07:54:34 GMT  
		Size: 18.1 MB (18149376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:cb16ca0ab45a34af2f8911626e28ac7fbb11e6f5a52ef38a4367bd0106c0b410
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17838456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:523d027a2417c4c435619f18f9fd511418f4c55901e6b1f8464ea8904cac7e22`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 21 Aug 2018 08:48:57 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Tue, 16 Oct 2018 11:33:05 GMT
COPY file:2a7af6054106d6ba72db7de73673215d94ed7e6f631217b7a3270887b824d6cd in / 
# Tue, 16 Oct 2018 11:33:06 GMT
EXPOSE 80/tcp
# Tue, 16 Oct 2018 11:33:07 GMT
ENTRYPOINT ["/traefik"]
# Tue, 16 Oct 2018 11:33:08 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:237f2d395b5468b8fc4fb105187ad5ab71f15a8ae7ddb9042c335afc1d048e22`  
		Last Modified: Tue, 21 Aug 2018 08:50:29 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c42773cc6b31dddc1d05d4637699c67b838f0c5198cc6c9520dcebdd76b4235`  
		Last Modified: Tue, 16 Oct 2018 11:34:14 GMT  
		Size: 17.7 MB (17703417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7.4`

**does not exist** (yet?)

## `traefik:v1.7.4-alpine`

**does not exist** (yet?)

## `traefik:v1.7.4-nanoserver`

**does not exist** (yet?)

## `traefik:v1.7.4-nanoserver-sac2016`

**does not exist** (yet?)

## `traefik:v1.7-alpine`

```console
$ docker pull traefik@sha256:930871d5e6e69c5b5d2ea7155a86ffc27d61409be8c87ccc96bc0e7250bc22c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.7-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:8e7d393868ecdcb527366713cb260ac4f5e4e91cde8167e8216293728bc1a39b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.8 MB (21837984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c856088343ab95128284c86be5c67b99418b52f6b5161ddadfbd60ba76ba9758`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 03:37:55 GMT
RUN apk --no-cache add ca-certificates
# Mon, 15 Oct 2018 21:13:31 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.3/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Mon, 15 Oct 2018 21:13:32 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Mon, 15 Oct 2018 21:13:32 GMT
EXPOSE 80/tcp
# Mon, 15 Oct 2018 21:13:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 15 Oct 2018 21:13:32 GMT
CMD ["traefik"]
# Mon, 15 Oct 2018 21:13:32 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d9593d002f462333c2d2b049c0e43267d2f25e7031617d7951e483cfe6fceef`  
		Last Modified: Wed, 12 Sep 2018 03:38:22 GMT  
		Size: 309.0 KB (308983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05e7f84e5f04dd8833f0d5e5c83df26342e69bf6ba750154ed1a72732cca9276`  
		Last Modified: Mon, 15 Oct 2018 21:14:49 GMT  
		Size: 19.3 MB (19321752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2dd5b8dca35db1ace190ed9e1f78ac8895c856bce45d37b9d5a960b8951ca9a`  
		Last Modified: Mon, 15 Oct 2018 21:14:45 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:38edc9f189b767682935b7cc33c110f3a29445809dc92b84f7a162c933a53805
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 MB (20605381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:424e7719461587ad1cdba61f5f06050f38c2262064b17e9d88a033762bbb9903`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:31:22 GMT
RUN apk --no-cache add ca-certificates
# Tue, 16 Oct 2018 07:54:13 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.3/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 16 Oct 2018 07:54:14 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Tue, 16 Oct 2018 07:54:14 GMT
EXPOSE 80/tcp
# Tue, 16 Oct 2018 07:54:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 Oct 2018 07:54:15 GMT
CMD ["traefik"]
# Tue, 16 Oct 2018 07:54:16 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:905674ea9d9448b14f15ae82e3c34138680bac1ef4fc29088aae8c9639b502fe`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 2.1 MB (2146453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91fe322e1690c8fb3f2b684fd85335d36a45e509b1568683232aede6d8a5e2b`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74a65db53aaa0cc4ab0232b1e179456b46fe0f6c04a77b387b9d4bdc2efd62c9`  
		Last Modified: Wed, 12 Sep 2018 08:31:52 GMT  
		Size: 309.1 KB (309068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8865385a397850ffea1e123260b915ebb2885873706644f8c5e87cc235a4f2f7`  
		Last Modified: Tue, 16 Oct 2018 07:55:00 GMT  
		Size: 18.1 MB (18149363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83fc46e6162595ee4b5000797ee9464cadfd341b2411d42e437e1b8cf56dd379`  
		Last Modified: Tue, 16 Oct 2018 07:54:54 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:907f53a1e072f80db24850bf9c9f1b4c3eabbc61ad50bd650199175b937b3c28
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.1 MB (20112145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96178582c6b6c2ae8367a443a9024bda10c7d820c9ee094d5c390fcb4b777c21`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 12 Sep 2018 08:42:24 GMT
ADD file:a4b53e2a2e207c5107a76c16d91b99cb1ed4ecb90b363913798e663426137d45 in / 
# Wed, 12 Sep 2018 08:42:24 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:42:25 GMT
CMD ["/bin/sh"]
# Wed, 19 Sep 2018 08:43:28 GMT
RUN apk --no-cache add ca-certificates
# Tue, 16 Oct 2018 11:33:34 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.3/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 16 Oct 2018 11:33:35 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Tue, 16 Oct 2018 11:33:36 GMT
EXPOSE 80/tcp
# Tue, 16 Oct 2018 11:33:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 Oct 2018 11:33:38 GMT
CMD ["traefik"]
# Tue, 16 Oct 2018 11:33:39 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:9941776d74c9129fd585b6f0434ba48bd3a7112d6736bc02e6d12f41153cab26`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 2.1 MB (2099762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae94b3cb7a1b2cef0ceffe3303cd03f83434d283aab43389e586b42bea00b358`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c9f8de84abb1c0426abc9f58b577b1536c16e87bcd8b0170be82c4f0ae8e4de`  
		Last Modified: Wed, 19 Sep 2018 08:46:35 GMT  
		Size: 308.5 KB (308531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29fb3c623fc9a4b50c4538ce68bb04d3b4daa4d971e54848d92f6dddff8bad91`  
		Last Modified: Tue, 16 Oct 2018 11:35:35 GMT  
		Size: 17.7 MB (17703356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:394792d308ccac3ee1ec0ddc530b5ba4e04aa353fe85de10b1da534441e31b99`  
		Last Modified: Tue, 16 Oct 2018 11:35:21 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7-nanoserver`

```console
$ docker pull traefik@sha256:1ebc065f13e8251515139e8361985a3c80a85691cf93acbe72048b6f0b4a17b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:v1.7-nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:3035ee1a55af72f2f62f393fb5401c3c75f34409170eea57348557cc0e49b89c
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **454.7 MB (454743663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1e2b366c3d1b052b6ff23c24bb530bbc480a4b8f984e55702503ba7881a5703`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Tue, 16 Oct 2018 11:03:07 GMT
RUN cmd /S /C #(nop) COPY file:bc48496240f4caa61710b7153793017450dfc9229cbbc02c7ffb8e32877645ff in \traefik.exe 
# Tue, 16 Oct 2018 11:03:09 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Tue, 16 Oct 2018 11:03:11 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 16 Oct 2018 11:03:12 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Mon, 17 Sep 2018 20:04:15 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6f2071dcd7294537bba55b3061704ef1370748e91982193b9e0fa4ebc114589b`  
		Last Modified: Tue, 09 Oct 2018 18:02:39 GMT  
		Size: 182.7 MB (182705816 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8eaca13da83869ace0c10e25d7f7c969d84ce36f0c1d0d757c1ab6c97a4b75c8`  
		Last Modified: Tue, 16 Oct 2018 11:03:32 GMT  
		Size: 19.3 MB (19343996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05773d9c1dbc483daf98518ecd2e65fa52018ce0e12af53444adee8e4c91785b`  
		Last Modified: Tue, 16 Oct 2018 11:03:27 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69680cc7e7a29b3c91cece9b1dd5aaf986ccffe446dab9382f9b88962f52e49a`  
		Last Modified: Tue, 16 Oct 2018 11:03:26 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a755e3f51b5380064da2b89948a1c46d7d39cca194cd86933d291e57964c2d`  
		Last Modified: Tue, 16 Oct 2018 11:03:26 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:1ebc065f13e8251515139e8361985a3c80a85691cf93acbe72048b6f0b4a17b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:v1.7-nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:3035ee1a55af72f2f62f393fb5401c3c75f34409170eea57348557cc0e49b89c
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **454.7 MB (454743663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1e2b366c3d1b052b6ff23c24bb530bbc480a4b8f984e55702503ba7881a5703`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Tue, 16 Oct 2018 11:03:07 GMT
RUN cmd /S /C #(nop) COPY file:bc48496240f4caa61710b7153793017450dfc9229cbbc02c7ffb8e32877645ff in \traefik.exe 
# Tue, 16 Oct 2018 11:03:09 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Tue, 16 Oct 2018 11:03:11 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 16 Oct 2018 11:03:12 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Mon, 17 Sep 2018 20:04:15 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6f2071dcd7294537bba55b3061704ef1370748e91982193b9e0fa4ebc114589b`  
		Last Modified: Tue, 09 Oct 2018 18:02:39 GMT  
		Size: 182.7 MB (182705816 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8eaca13da83869ace0c10e25d7f7c969d84ce36f0c1d0d757c1ab6c97a4b75c8`  
		Last Modified: Tue, 16 Oct 2018 11:03:32 GMT  
		Size: 19.3 MB (19343996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05773d9c1dbc483daf98518ecd2e65fa52018ce0e12af53444adee8e4c91785b`  
		Last Modified: Tue, 16 Oct 2018 11:03:27 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69680cc7e7a29b3c91cece9b1dd5aaf986ccffe446dab9382f9b88962f52e49a`  
		Last Modified: Tue, 16 Oct 2018 11:03:26 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a755e3f51b5380064da2b89948a1c46d7d39cca194cd86933d291e57964c2d`  
		Last Modified: Tue, 16 Oct 2018 11:03:26 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
