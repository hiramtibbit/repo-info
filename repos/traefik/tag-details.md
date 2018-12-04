<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `traefik`

-	[`traefik:1.7`](#traefik17)
-	[`traefik:1.7.5`](#traefik175)
-	[`traefik:1.7.5-alpine`](#traefik175-alpine)
-	[`traefik:1.7.5-nanoserver`](#traefik175-nanoserver)
-	[`traefik:1.7.5-nanoserver-sac2016`](#traefik175-nanoserver-sac2016)
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
-	[`traefik:v1.7.5`](#traefikv175)
-	[`traefik:v1.7.5-alpine`](#traefikv175-alpine)
-	[`traefik:v1.7.5-nanoserver`](#traefikv175-nanoserver)
-	[`traefik:v1.7.5-nanoserver-sac2016`](#traefikv175-nanoserver-sac2016)
-	[`traefik:v1.7-alpine`](#traefikv17-alpine)
-	[`traefik:v1.7-nanoserver`](#traefikv17-nanoserver)
-	[`traefik:v1.7-nanoserver-sac2016`](#traefikv17-nanoserver-sac2016)

## `traefik:1.7`

```console
$ docker pull traefik@sha256:79452ce773b11a63bcd12bfedbbd50f46feb6676431a8c90f6f7265e9ceca432
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.7` - linux; amd64

```console
$ docker pull traefik@sha256:832d581dfcb1bccf441af2b7390c41c124f41e603abbab9826b5d302c7ac9c0a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.5 MB (19504205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d048a102127b599eb8040b43892c2981e43b8b8177963a664094e1e4c3db17d3`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 07 Sep 2018 19:05:07 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Wed, 31 Oct 2018 01:10:58 GMT
COPY file:944c596ebf67e74e565799ab88fc0d009ff5faa7edfd3d6002672a9880959e23 in / 
# Wed, 31 Oct 2018 01:10:58 GMT
EXPOSE 80/tcp
# Wed, 31 Oct 2018 01:10:58 GMT
VOLUME [/tmp]
# Wed, 31 Oct 2018 01:10:58 GMT
ENTRYPOINT ["/traefik"]
# Wed, 31 Oct 2018 01:10:59 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:c6e5aced14a22b72f0fd545bec131cc37ac8382fae12614369232b12bf5cc1bf`  
		Last Modified: Fri, 07 Sep 2018 19:06:05 GMT  
		Size: 135.0 KB (135037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea4512f4e41a6a898aeea1195c05198b632b019469835cea7e58d22527cedd28`  
		Last Modified: Wed, 31 Oct 2018 01:12:08 GMT  
		Size: 19.4 MB (19369168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7` - linux; arm variant v6

```console
$ docker pull traefik@sha256:4bb27d01f21d153699c87873912b5a8840d5c8e093ed684203a80d4176af3c02
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.3 MB (18326581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98a61b657db34c5315db20de77fc60499e7ca65419a5bfcb68e2a1374faaaa58`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 21 Aug 2018 08:15:56 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Wed, 31 Oct 2018 08:11:36 GMT
COPY file:bc4832e403c5e1be509fe88b4fe018bd51f3c9429bb6f31b4dde0e20d7eee2a5 in / 
# Wed, 31 Oct 2018 08:11:36 GMT
EXPOSE 80/tcp
# Wed, 31 Oct 2018 08:11:37 GMT
VOLUME [/tmp]
# Wed, 31 Oct 2018 08:11:37 GMT
ENTRYPOINT ["/traefik"]
# Wed, 31 Oct 2018 08:11:37 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:9dac48e51b2381c7f7a8cbe16e8670b5d4bfcbd991c139ad10d2e46f233def67`  
		Last Modified: Tue, 21 Aug 2018 08:16:23 GMT  
		Size: 135.1 KB (135078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d2b1490a1a38628825ee1095c381c08361a9d04ae0c0858e49830cc16fb004b`  
		Last Modified: Wed, 31 Oct 2018 08:12:17 GMT  
		Size: 18.2 MB (18191503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:b3a2fc8dd98f2cca0abaf05d57281b0723e585d04931443b55c05dc264f69865
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.9 MB (17878617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21b9a0b5f22dcc081206a11e33bfd1a8dd28bfbf355f49aa04441efde49b8636`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 21 Aug 2018 08:48:57 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Wed, 31 Oct 2018 10:07:49 GMT
COPY file:c9e4fbb3b20c47481d125252d478590f87c2d0a9184bed616c9e367de1668d19 in / 
# Wed, 31 Oct 2018 10:07:50 GMT
EXPOSE 80/tcp
# Wed, 31 Oct 2018 10:07:50 GMT
VOLUME [/tmp]
# Wed, 31 Oct 2018 10:07:51 GMT
ENTRYPOINT ["/traefik"]
# Wed, 31 Oct 2018 10:07:52 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:237f2d395b5468b8fc4fb105187ad5ab71f15a8ae7ddb9042c335afc1d048e22`  
		Last Modified: Tue, 21 Aug 2018 08:50:29 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66b1d3f38a9b70a07cf33cee2abb198c842d611248da55bc422c3007620eb176`  
		Last Modified: Wed, 31 Oct 2018 10:08:58 GMT  
		Size: 17.7 MB (17743578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7.5`

**does not exist** (yet?)

## `traefik:1.7.5-alpine`

**does not exist** (yet?)

## `traefik:1.7.5-nanoserver`

**does not exist** (yet?)

## `traefik:1.7.5-nanoserver-sac2016`

**does not exist** (yet?)

## `traefik:1.7-alpine`

```console
$ docker pull traefik@sha256:652c9548e75f581f1fe5a7349cb96ceb3244debc4146cdaba02d61737aadbc1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.7-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:242e98ac5aa251e77b84698c03370e0485c7917f2e1944e9e8f8883adec3dd12
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.9 MB (21885534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f7dcec4702d18964e200bb41541a1215c175ad8bd1e83d0b692c69a00674ef7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 03:37:55 GMT
RUN apk --no-cache add ca-certificates
# Wed, 31 Oct 2018 01:11:24 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.4/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 31 Oct 2018 01:11:24 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Wed, 31 Oct 2018 01:11:24 GMT
EXPOSE 80/tcp
# Wed, 31 Oct 2018 01:11:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 31 Oct 2018 01:11:35 GMT
CMD ["traefik"]
# Wed, 31 Oct 2018 01:11:35 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:ab998c9a71595ba4ea382385d13c8e929726d4a94f0bf765a1800083f2de992b`  
		Last Modified: Wed, 31 Oct 2018 01:14:13 GMT  
		Size: 19.4 MB (19369298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0da39a064137d6743d340d4e64182003b89f5edbd115d06760c3eb4c192b676`  
		Last Modified: Wed, 31 Oct 2018 01:14:08 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:baeff9e7d1b820bd7d83c7674f9020ca0b7e0f93b9e8720b2637ab09ad6bc0e3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 MB (20647680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28b30c2c45f5746fc371c135395167d3528e4d9479c88d04607c2d756a0b8aaf`
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
# Wed, 31 Oct 2018 08:11:50 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.4/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 31 Oct 2018 08:11:51 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Wed, 31 Oct 2018 08:11:51 GMT
EXPOSE 80/tcp
# Wed, 31 Oct 2018 08:11:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 31 Oct 2018 08:11:52 GMT
CMD ["traefik"]
# Wed, 31 Oct 2018 08:11:52 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:e300a2c21e371887378a98ad77f254f976934671b25be7f14cc654a71d4f9571`  
		Last Modified: Wed, 31 Oct 2018 08:12:52 GMT  
		Size: 18.2 MB (18191664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6365bf311f1a6f56e6b3ed2a122abc1402df5f0a4735df3b4050dfeb99f27b0b`  
		Last Modified: Wed, 31 Oct 2018 08:12:46 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:112f0f297d8b2ed7f96f47ea8a39007fd0777a0365580d4e8e07ff5e1699eedd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 MB (20152521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65096f8807c13295c186f1613d60e4fb9ca4ee0eb9df0e9e2ec8c9a6b2d589b9`
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
# Wed, 31 Oct 2018 10:08:22 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.4/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 31 Oct 2018 10:08:23 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Wed, 31 Oct 2018 10:08:23 GMT
EXPOSE 80/tcp
# Wed, 31 Oct 2018 10:08:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 31 Oct 2018 10:08:25 GMT
CMD ["traefik"]
# Wed, 31 Oct 2018 10:08:25 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:74cac30b3820bc1fdfed9cb1368ab833b945d42b88ee8b22e898231981e66b83`  
		Last Modified: Wed, 31 Oct 2018 10:10:27 GMT  
		Size: 17.7 MB (17743730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da5d75773686bd6831724e3736f009e46b44fa334e28524e50502df30a2afde4`  
		Last Modified: Wed, 31 Oct 2018 10:10:19 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7-nanoserver`

```console
$ docker pull traefik@sha256:5d5ab9ccaf527c2184af957be50575dde7c9307f86f4ecd5d4b913d405e58905
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:1.7-nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:1786dd76efb657e58f82f8fdff0986550c260ee9a18b6a234e64e32305938f9c
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **454.8 MB (454787755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e863bde28e00e722c04c6ec0f4e38b2adaadaed1b9b18bca31693885e6239d6`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Wed, 31 Oct 2018 09:17:31 GMT
RUN cmd /S /C #(nop) COPY file:4cae446cac12c264e2c7f736cec2f63337ac1df34b145a4eb6dafe2f6b0a8f7b in \traefik.exe 
# Wed, 31 Oct 2018 09:17:34 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Wed, 31 Oct 2018 09:17:35 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Wed, 31 Oct 2018 09:17:36 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:e675276858861c15f6ec65b897950cd6951872ba3e4172cd969d5f4307d5ae6a`  
		Last Modified: Wed, 31 Oct 2018 09:18:03 GMT  
		Size: 19.4 MB (19388088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f751f3f980b052bbc424f6ccbc16457826d03db8baa6a4f5165c2ba2b7af32bf`  
		Last Modified: Wed, 31 Oct 2018 09:17:56 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53378b4070d0c4628a5ed8afc9f4058d7c08477b982f8fffde16bc2bb6966a1b`  
		Last Modified: Wed, 31 Oct 2018 09:17:57 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39d7469a5ee612378ecdfb83cfa90352631bc29f0bc8e831280dc2e5cbb24032`  
		Last Modified: Wed, 31 Oct 2018 09:17:57 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:5d5ab9ccaf527c2184af957be50575dde7c9307f86f4ecd5d4b913d405e58905
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:1.7-nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:1786dd76efb657e58f82f8fdff0986550c260ee9a18b6a234e64e32305938f9c
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **454.8 MB (454787755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e863bde28e00e722c04c6ec0f4e38b2adaadaed1b9b18bca31693885e6239d6`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Wed, 31 Oct 2018 09:17:31 GMT
RUN cmd /S /C #(nop) COPY file:4cae446cac12c264e2c7f736cec2f63337ac1df34b145a4eb6dafe2f6b0a8f7b in \traefik.exe 
# Wed, 31 Oct 2018 09:17:34 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Wed, 31 Oct 2018 09:17:35 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Wed, 31 Oct 2018 09:17:36 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:e675276858861c15f6ec65b897950cd6951872ba3e4172cd969d5f4307d5ae6a`  
		Last Modified: Wed, 31 Oct 2018 09:18:03 GMT  
		Size: 19.4 MB (19388088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f751f3f980b052bbc424f6ccbc16457826d03db8baa6a4f5165c2ba2b7af32bf`  
		Last Modified: Wed, 31 Oct 2018 09:17:56 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53378b4070d0c4628a5ed8afc9f4058d7c08477b982f8fffde16bc2bb6966a1b`  
		Last Modified: Wed, 31 Oct 2018 09:17:57 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39d7469a5ee612378ecdfb83cfa90352631bc29f0bc8e831280dc2e5cbb24032`  
		Last Modified: Wed, 31 Oct 2018 09:17:57 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:alpine`

```console
$ docker pull traefik@sha256:652c9548e75f581f1fe5a7349cb96ceb3244debc4146cdaba02d61737aadbc1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:alpine` - linux; amd64

```console
$ docker pull traefik@sha256:242e98ac5aa251e77b84698c03370e0485c7917f2e1944e9e8f8883adec3dd12
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.9 MB (21885534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f7dcec4702d18964e200bb41541a1215c175ad8bd1e83d0b692c69a00674ef7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 03:37:55 GMT
RUN apk --no-cache add ca-certificates
# Wed, 31 Oct 2018 01:11:24 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.4/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 31 Oct 2018 01:11:24 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Wed, 31 Oct 2018 01:11:24 GMT
EXPOSE 80/tcp
# Wed, 31 Oct 2018 01:11:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 31 Oct 2018 01:11:35 GMT
CMD ["traefik"]
# Wed, 31 Oct 2018 01:11:35 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:ab998c9a71595ba4ea382385d13c8e929726d4a94f0bf765a1800083f2de992b`  
		Last Modified: Wed, 31 Oct 2018 01:14:13 GMT  
		Size: 19.4 MB (19369298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0da39a064137d6743d340d4e64182003b89f5edbd115d06760c3eb4c192b676`  
		Last Modified: Wed, 31 Oct 2018 01:14:08 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:baeff9e7d1b820bd7d83c7674f9020ca0b7e0f93b9e8720b2637ab09ad6bc0e3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 MB (20647680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28b30c2c45f5746fc371c135395167d3528e4d9479c88d04607c2d756a0b8aaf`
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
# Wed, 31 Oct 2018 08:11:50 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.4/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 31 Oct 2018 08:11:51 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Wed, 31 Oct 2018 08:11:51 GMT
EXPOSE 80/tcp
# Wed, 31 Oct 2018 08:11:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 31 Oct 2018 08:11:52 GMT
CMD ["traefik"]
# Wed, 31 Oct 2018 08:11:52 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:e300a2c21e371887378a98ad77f254f976934671b25be7f14cc654a71d4f9571`  
		Last Modified: Wed, 31 Oct 2018 08:12:52 GMT  
		Size: 18.2 MB (18191664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6365bf311f1a6f56e6b3ed2a122abc1402df5f0a4735df3b4050dfeb99f27b0b`  
		Last Modified: Wed, 31 Oct 2018 08:12:46 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:112f0f297d8b2ed7f96f47ea8a39007fd0777a0365580d4e8e07ff5e1699eedd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 MB (20152521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65096f8807c13295c186f1613d60e4fb9ca4ee0eb9df0e9e2ec8c9a6b2d589b9`
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
# Wed, 31 Oct 2018 10:08:22 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.4/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 31 Oct 2018 10:08:23 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Wed, 31 Oct 2018 10:08:23 GMT
EXPOSE 80/tcp
# Wed, 31 Oct 2018 10:08:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 31 Oct 2018 10:08:25 GMT
CMD ["traefik"]
# Wed, 31 Oct 2018 10:08:25 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:74cac30b3820bc1fdfed9cb1368ab833b945d42b88ee8b22e898231981e66b83`  
		Last Modified: Wed, 31 Oct 2018 10:10:27 GMT  
		Size: 17.7 MB (17743730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da5d75773686bd6831724e3736f009e46b44fa334e28524e50502df30a2afde4`  
		Last Modified: Wed, 31 Oct 2018 10:10:19 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:latest`

```console
$ docker pull traefik@sha256:79452ce773b11a63bcd12bfedbbd50f46feb6676431a8c90f6f7265e9ceca432
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:latest` - linux; amd64

```console
$ docker pull traefik@sha256:832d581dfcb1bccf441af2b7390c41c124f41e603abbab9826b5d302c7ac9c0a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.5 MB (19504205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d048a102127b599eb8040b43892c2981e43b8b8177963a664094e1e4c3db17d3`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 07 Sep 2018 19:05:07 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Wed, 31 Oct 2018 01:10:58 GMT
COPY file:944c596ebf67e74e565799ab88fc0d009ff5faa7edfd3d6002672a9880959e23 in / 
# Wed, 31 Oct 2018 01:10:58 GMT
EXPOSE 80/tcp
# Wed, 31 Oct 2018 01:10:58 GMT
VOLUME [/tmp]
# Wed, 31 Oct 2018 01:10:58 GMT
ENTRYPOINT ["/traefik"]
# Wed, 31 Oct 2018 01:10:59 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:c6e5aced14a22b72f0fd545bec131cc37ac8382fae12614369232b12bf5cc1bf`  
		Last Modified: Fri, 07 Sep 2018 19:06:05 GMT  
		Size: 135.0 KB (135037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea4512f4e41a6a898aeea1195c05198b632b019469835cea7e58d22527cedd28`  
		Last Modified: Wed, 31 Oct 2018 01:12:08 GMT  
		Size: 19.4 MB (19369168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:latest` - linux; arm variant v6

```console
$ docker pull traefik@sha256:4bb27d01f21d153699c87873912b5a8840d5c8e093ed684203a80d4176af3c02
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.3 MB (18326581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98a61b657db34c5315db20de77fc60499e7ca65419a5bfcb68e2a1374faaaa58`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 21 Aug 2018 08:15:56 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Wed, 31 Oct 2018 08:11:36 GMT
COPY file:bc4832e403c5e1be509fe88b4fe018bd51f3c9429bb6f31b4dde0e20d7eee2a5 in / 
# Wed, 31 Oct 2018 08:11:36 GMT
EXPOSE 80/tcp
# Wed, 31 Oct 2018 08:11:37 GMT
VOLUME [/tmp]
# Wed, 31 Oct 2018 08:11:37 GMT
ENTRYPOINT ["/traefik"]
# Wed, 31 Oct 2018 08:11:37 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:9dac48e51b2381c7f7a8cbe16e8670b5d4bfcbd991c139ad10d2e46f233def67`  
		Last Modified: Tue, 21 Aug 2018 08:16:23 GMT  
		Size: 135.1 KB (135078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d2b1490a1a38628825ee1095c381c08361a9d04ae0c0858e49830cc16fb004b`  
		Last Modified: Wed, 31 Oct 2018 08:12:17 GMT  
		Size: 18.2 MB (18191503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:latest` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:b3a2fc8dd98f2cca0abaf05d57281b0723e585d04931443b55c05dc264f69865
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.9 MB (17878617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21b9a0b5f22dcc081206a11e33bfd1a8dd28bfbf355f49aa04441efde49b8636`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 21 Aug 2018 08:48:57 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Wed, 31 Oct 2018 10:07:49 GMT
COPY file:c9e4fbb3b20c47481d125252d478590f87c2d0a9184bed616c9e367de1668d19 in / 
# Wed, 31 Oct 2018 10:07:50 GMT
EXPOSE 80/tcp
# Wed, 31 Oct 2018 10:07:50 GMT
VOLUME [/tmp]
# Wed, 31 Oct 2018 10:07:51 GMT
ENTRYPOINT ["/traefik"]
# Wed, 31 Oct 2018 10:07:52 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:237f2d395b5468b8fc4fb105187ad5ab71f15a8ae7ddb9042c335afc1d048e22`  
		Last Modified: Tue, 21 Aug 2018 08:50:29 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66b1d3f38a9b70a07cf33cee2abb198c842d611248da55bc422c3007620eb176`  
		Last Modified: Wed, 31 Oct 2018 10:08:58 GMT  
		Size: 17.7 MB (17743578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:maroilles`

```console
$ docker pull traefik@sha256:79452ce773b11a63bcd12bfedbbd50f46feb6676431a8c90f6f7265e9ceca432
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:maroilles` - linux; amd64

```console
$ docker pull traefik@sha256:832d581dfcb1bccf441af2b7390c41c124f41e603abbab9826b5d302c7ac9c0a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.5 MB (19504205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d048a102127b599eb8040b43892c2981e43b8b8177963a664094e1e4c3db17d3`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 07 Sep 2018 19:05:07 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Wed, 31 Oct 2018 01:10:58 GMT
COPY file:944c596ebf67e74e565799ab88fc0d009ff5faa7edfd3d6002672a9880959e23 in / 
# Wed, 31 Oct 2018 01:10:58 GMT
EXPOSE 80/tcp
# Wed, 31 Oct 2018 01:10:58 GMT
VOLUME [/tmp]
# Wed, 31 Oct 2018 01:10:58 GMT
ENTRYPOINT ["/traefik"]
# Wed, 31 Oct 2018 01:10:59 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:c6e5aced14a22b72f0fd545bec131cc37ac8382fae12614369232b12bf5cc1bf`  
		Last Modified: Fri, 07 Sep 2018 19:06:05 GMT  
		Size: 135.0 KB (135037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea4512f4e41a6a898aeea1195c05198b632b019469835cea7e58d22527cedd28`  
		Last Modified: Wed, 31 Oct 2018 01:12:08 GMT  
		Size: 19.4 MB (19369168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:maroilles` - linux; arm variant v6

```console
$ docker pull traefik@sha256:4bb27d01f21d153699c87873912b5a8840d5c8e093ed684203a80d4176af3c02
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.3 MB (18326581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98a61b657db34c5315db20de77fc60499e7ca65419a5bfcb68e2a1374faaaa58`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 21 Aug 2018 08:15:56 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Wed, 31 Oct 2018 08:11:36 GMT
COPY file:bc4832e403c5e1be509fe88b4fe018bd51f3c9429bb6f31b4dde0e20d7eee2a5 in / 
# Wed, 31 Oct 2018 08:11:36 GMT
EXPOSE 80/tcp
# Wed, 31 Oct 2018 08:11:37 GMT
VOLUME [/tmp]
# Wed, 31 Oct 2018 08:11:37 GMT
ENTRYPOINT ["/traefik"]
# Wed, 31 Oct 2018 08:11:37 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:9dac48e51b2381c7f7a8cbe16e8670b5d4bfcbd991c139ad10d2e46f233def67`  
		Last Modified: Tue, 21 Aug 2018 08:16:23 GMT  
		Size: 135.1 KB (135078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d2b1490a1a38628825ee1095c381c08361a9d04ae0c0858e49830cc16fb004b`  
		Last Modified: Wed, 31 Oct 2018 08:12:17 GMT  
		Size: 18.2 MB (18191503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:maroilles` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:b3a2fc8dd98f2cca0abaf05d57281b0723e585d04931443b55c05dc264f69865
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.9 MB (17878617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21b9a0b5f22dcc081206a11e33bfd1a8dd28bfbf355f49aa04441efde49b8636`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 21 Aug 2018 08:48:57 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Wed, 31 Oct 2018 10:07:49 GMT
COPY file:c9e4fbb3b20c47481d125252d478590f87c2d0a9184bed616c9e367de1668d19 in / 
# Wed, 31 Oct 2018 10:07:50 GMT
EXPOSE 80/tcp
# Wed, 31 Oct 2018 10:07:50 GMT
VOLUME [/tmp]
# Wed, 31 Oct 2018 10:07:51 GMT
ENTRYPOINT ["/traefik"]
# Wed, 31 Oct 2018 10:07:52 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:237f2d395b5468b8fc4fb105187ad5ab71f15a8ae7ddb9042c335afc1d048e22`  
		Last Modified: Tue, 21 Aug 2018 08:50:29 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66b1d3f38a9b70a07cf33cee2abb198c842d611248da55bc422c3007620eb176`  
		Last Modified: Wed, 31 Oct 2018 10:08:58 GMT  
		Size: 17.7 MB (17743578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:maroilles-alpine`

```console
$ docker pull traefik@sha256:652c9548e75f581f1fe5a7349cb96ceb3244debc4146cdaba02d61737aadbc1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:maroilles-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:242e98ac5aa251e77b84698c03370e0485c7917f2e1944e9e8f8883adec3dd12
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.9 MB (21885534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f7dcec4702d18964e200bb41541a1215c175ad8bd1e83d0b692c69a00674ef7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 03:37:55 GMT
RUN apk --no-cache add ca-certificates
# Wed, 31 Oct 2018 01:11:24 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.4/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 31 Oct 2018 01:11:24 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Wed, 31 Oct 2018 01:11:24 GMT
EXPOSE 80/tcp
# Wed, 31 Oct 2018 01:11:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 31 Oct 2018 01:11:35 GMT
CMD ["traefik"]
# Wed, 31 Oct 2018 01:11:35 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:ab998c9a71595ba4ea382385d13c8e929726d4a94f0bf765a1800083f2de992b`  
		Last Modified: Wed, 31 Oct 2018 01:14:13 GMT  
		Size: 19.4 MB (19369298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0da39a064137d6743d340d4e64182003b89f5edbd115d06760c3eb4c192b676`  
		Last Modified: Wed, 31 Oct 2018 01:14:08 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:maroilles-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:baeff9e7d1b820bd7d83c7674f9020ca0b7e0f93b9e8720b2637ab09ad6bc0e3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 MB (20647680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28b30c2c45f5746fc371c135395167d3528e4d9479c88d04607c2d756a0b8aaf`
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
# Wed, 31 Oct 2018 08:11:50 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.4/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 31 Oct 2018 08:11:51 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Wed, 31 Oct 2018 08:11:51 GMT
EXPOSE 80/tcp
# Wed, 31 Oct 2018 08:11:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 31 Oct 2018 08:11:52 GMT
CMD ["traefik"]
# Wed, 31 Oct 2018 08:11:52 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:e300a2c21e371887378a98ad77f254f976934671b25be7f14cc654a71d4f9571`  
		Last Modified: Wed, 31 Oct 2018 08:12:52 GMT  
		Size: 18.2 MB (18191664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6365bf311f1a6f56e6b3ed2a122abc1402df5f0a4735df3b4050dfeb99f27b0b`  
		Last Modified: Wed, 31 Oct 2018 08:12:46 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:maroilles-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:112f0f297d8b2ed7f96f47ea8a39007fd0777a0365580d4e8e07ff5e1699eedd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 MB (20152521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65096f8807c13295c186f1613d60e4fb9ca4ee0eb9df0e9e2ec8c9a6b2d589b9`
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
# Wed, 31 Oct 2018 10:08:22 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.4/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 31 Oct 2018 10:08:23 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Wed, 31 Oct 2018 10:08:23 GMT
EXPOSE 80/tcp
# Wed, 31 Oct 2018 10:08:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 31 Oct 2018 10:08:25 GMT
CMD ["traefik"]
# Wed, 31 Oct 2018 10:08:25 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:74cac30b3820bc1fdfed9cb1368ab833b945d42b88ee8b22e898231981e66b83`  
		Last Modified: Wed, 31 Oct 2018 10:10:27 GMT  
		Size: 17.7 MB (17743730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da5d75773686bd6831724e3736f009e46b44fa334e28524e50502df30a2afde4`  
		Last Modified: Wed, 31 Oct 2018 10:10:19 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:maroilles-nanoserver`

```console
$ docker pull traefik@sha256:5d5ab9ccaf527c2184af957be50575dde7c9307f86f4ecd5d4b913d405e58905
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:maroilles-nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:1786dd76efb657e58f82f8fdff0986550c260ee9a18b6a234e64e32305938f9c
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **454.8 MB (454787755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e863bde28e00e722c04c6ec0f4e38b2adaadaed1b9b18bca31693885e6239d6`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Wed, 31 Oct 2018 09:17:31 GMT
RUN cmd /S /C #(nop) COPY file:4cae446cac12c264e2c7f736cec2f63337ac1df34b145a4eb6dafe2f6b0a8f7b in \traefik.exe 
# Wed, 31 Oct 2018 09:17:34 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Wed, 31 Oct 2018 09:17:35 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Wed, 31 Oct 2018 09:17:36 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:e675276858861c15f6ec65b897950cd6951872ba3e4172cd969d5f4307d5ae6a`  
		Last Modified: Wed, 31 Oct 2018 09:18:03 GMT  
		Size: 19.4 MB (19388088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f751f3f980b052bbc424f6ccbc16457826d03db8baa6a4f5165c2ba2b7af32bf`  
		Last Modified: Wed, 31 Oct 2018 09:17:56 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53378b4070d0c4628a5ed8afc9f4058d7c08477b982f8fffde16bc2bb6966a1b`  
		Last Modified: Wed, 31 Oct 2018 09:17:57 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39d7469a5ee612378ecdfb83cfa90352631bc29f0bc8e831280dc2e5cbb24032`  
		Last Modified: Wed, 31 Oct 2018 09:17:57 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:maroilles-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:5d5ab9ccaf527c2184af957be50575dde7c9307f86f4ecd5d4b913d405e58905
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:maroilles-nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:1786dd76efb657e58f82f8fdff0986550c260ee9a18b6a234e64e32305938f9c
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **454.8 MB (454787755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e863bde28e00e722c04c6ec0f4e38b2adaadaed1b9b18bca31693885e6239d6`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Wed, 31 Oct 2018 09:17:31 GMT
RUN cmd /S /C #(nop) COPY file:4cae446cac12c264e2c7f736cec2f63337ac1df34b145a4eb6dafe2f6b0a8f7b in \traefik.exe 
# Wed, 31 Oct 2018 09:17:34 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Wed, 31 Oct 2018 09:17:35 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Wed, 31 Oct 2018 09:17:36 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:e675276858861c15f6ec65b897950cd6951872ba3e4172cd969d5f4307d5ae6a`  
		Last Modified: Wed, 31 Oct 2018 09:18:03 GMT  
		Size: 19.4 MB (19388088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f751f3f980b052bbc424f6ccbc16457826d03db8baa6a4f5165c2ba2b7af32bf`  
		Last Modified: Wed, 31 Oct 2018 09:17:56 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53378b4070d0c4628a5ed8afc9f4058d7c08477b982f8fffde16bc2bb6966a1b`  
		Last Modified: Wed, 31 Oct 2018 09:17:57 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39d7469a5ee612378ecdfb83cfa90352631bc29f0bc8e831280dc2e5cbb24032`  
		Last Modified: Wed, 31 Oct 2018 09:17:57 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:nanoserver`

```console
$ docker pull traefik@sha256:5d5ab9ccaf527c2184af957be50575dde7c9307f86f4ecd5d4b913d405e58905
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:1786dd76efb657e58f82f8fdff0986550c260ee9a18b6a234e64e32305938f9c
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **454.8 MB (454787755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e863bde28e00e722c04c6ec0f4e38b2adaadaed1b9b18bca31693885e6239d6`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Wed, 31 Oct 2018 09:17:31 GMT
RUN cmd /S /C #(nop) COPY file:4cae446cac12c264e2c7f736cec2f63337ac1df34b145a4eb6dafe2f6b0a8f7b in \traefik.exe 
# Wed, 31 Oct 2018 09:17:34 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Wed, 31 Oct 2018 09:17:35 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Wed, 31 Oct 2018 09:17:36 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:e675276858861c15f6ec65b897950cd6951872ba3e4172cd969d5f4307d5ae6a`  
		Last Modified: Wed, 31 Oct 2018 09:18:03 GMT  
		Size: 19.4 MB (19388088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f751f3f980b052bbc424f6ccbc16457826d03db8baa6a4f5165c2ba2b7af32bf`  
		Last Modified: Wed, 31 Oct 2018 09:17:56 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53378b4070d0c4628a5ed8afc9f4058d7c08477b982f8fffde16bc2bb6966a1b`  
		Last Modified: Wed, 31 Oct 2018 09:17:57 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39d7469a5ee612378ecdfb83cfa90352631bc29f0bc8e831280dc2e5cbb24032`  
		Last Modified: Wed, 31 Oct 2018 09:17:57 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:nanoserver-sac2016`

```console
$ docker pull traefik@sha256:5d5ab9ccaf527c2184af957be50575dde7c9307f86f4ecd5d4b913d405e58905
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:1786dd76efb657e58f82f8fdff0986550c260ee9a18b6a234e64e32305938f9c
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **454.8 MB (454787755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e863bde28e00e722c04c6ec0f4e38b2adaadaed1b9b18bca31693885e6239d6`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Wed, 31 Oct 2018 09:17:31 GMT
RUN cmd /S /C #(nop) COPY file:4cae446cac12c264e2c7f736cec2f63337ac1df34b145a4eb6dafe2f6b0a8f7b in \traefik.exe 
# Wed, 31 Oct 2018 09:17:34 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Wed, 31 Oct 2018 09:17:35 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Wed, 31 Oct 2018 09:17:36 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:e675276858861c15f6ec65b897950cd6951872ba3e4172cd969d5f4307d5ae6a`  
		Last Modified: Wed, 31 Oct 2018 09:18:03 GMT  
		Size: 19.4 MB (19388088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f751f3f980b052bbc424f6ccbc16457826d03db8baa6a4f5165c2ba2b7af32bf`  
		Last Modified: Wed, 31 Oct 2018 09:17:56 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53378b4070d0c4628a5ed8afc9f4058d7c08477b982f8fffde16bc2bb6966a1b`  
		Last Modified: Wed, 31 Oct 2018 09:17:57 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39d7469a5ee612378ecdfb83cfa90352631bc29f0bc8e831280dc2e5cbb24032`  
		Last Modified: Wed, 31 Oct 2018 09:17:57 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7`

```console
$ docker pull traefik@sha256:79452ce773b11a63bcd12bfedbbd50f46feb6676431a8c90f6f7265e9ceca432
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.7` - linux; amd64

```console
$ docker pull traefik@sha256:832d581dfcb1bccf441af2b7390c41c124f41e603abbab9826b5d302c7ac9c0a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.5 MB (19504205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d048a102127b599eb8040b43892c2981e43b8b8177963a664094e1e4c3db17d3`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 07 Sep 2018 19:05:07 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Wed, 31 Oct 2018 01:10:58 GMT
COPY file:944c596ebf67e74e565799ab88fc0d009ff5faa7edfd3d6002672a9880959e23 in / 
# Wed, 31 Oct 2018 01:10:58 GMT
EXPOSE 80/tcp
# Wed, 31 Oct 2018 01:10:58 GMT
VOLUME [/tmp]
# Wed, 31 Oct 2018 01:10:58 GMT
ENTRYPOINT ["/traefik"]
# Wed, 31 Oct 2018 01:10:59 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:c6e5aced14a22b72f0fd545bec131cc37ac8382fae12614369232b12bf5cc1bf`  
		Last Modified: Fri, 07 Sep 2018 19:06:05 GMT  
		Size: 135.0 KB (135037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea4512f4e41a6a898aeea1195c05198b632b019469835cea7e58d22527cedd28`  
		Last Modified: Wed, 31 Oct 2018 01:12:08 GMT  
		Size: 19.4 MB (19369168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7` - linux; arm variant v6

```console
$ docker pull traefik@sha256:4bb27d01f21d153699c87873912b5a8840d5c8e093ed684203a80d4176af3c02
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.3 MB (18326581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98a61b657db34c5315db20de77fc60499e7ca65419a5bfcb68e2a1374faaaa58`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 21 Aug 2018 08:15:56 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Wed, 31 Oct 2018 08:11:36 GMT
COPY file:bc4832e403c5e1be509fe88b4fe018bd51f3c9429bb6f31b4dde0e20d7eee2a5 in / 
# Wed, 31 Oct 2018 08:11:36 GMT
EXPOSE 80/tcp
# Wed, 31 Oct 2018 08:11:37 GMT
VOLUME [/tmp]
# Wed, 31 Oct 2018 08:11:37 GMT
ENTRYPOINT ["/traefik"]
# Wed, 31 Oct 2018 08:11:37 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:9dac48e51b2381c7f7a8cbe16e8670b5d4bfcbd991c139ad10d2e46f233def67`  
		Last Modified: Tue, 21 Aug 2018 08:16:23 GMT  
		Size: 135.1 KB (135078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d2b1490a1a38628825ee1095c381c08361a9d04ae0c0858e49830cc16fb004b`  
		Last Modified: Wed, 31 Oct 2018 08:12:17 GMT  
		Size: 18.2 MB (18191503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:b3a2fc8dd98f2cca0abaf05d57281b0723e585d04931443b55c05dc264f69865
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.9 MB (17878617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21b9a0b5f22dcc081206a11e33bfd1a8dd28bfbf355f49aa04441efde49b8636`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 21 Aug 2018 08:48:57 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Wed, 31 Oct 2018 10:07:49 GMT
COPY file:c9e4fbb3b20c47481d125252d478590f87c2d0a9184bed616c9e367de1668d19 in / 
# Wed, 31 Oct 2018 10:07:50 GMT
EXPOSE 80/tcp
# Wed, 31 Oct 2018 10:07:50 GMT
VOLUME [/tmp]
# Wed, 31 Oct 2018 10:07:51 GMT
ENTRYPOINT ["/traefik"]
# Wed, 31 Oct 2018 10:07:52 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:237f2d395b5468b8fc4fb105187ad5ab71f15a8ae7ddb9042c335afc1d048e22`  
		Last Modified: Tue, 21 Aug 2018 08:50:29 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66b1d3f38a9b70a07cf33cee2abb198c842d611248da55bc422c3007620eb176`  
		Last Modified: Wed, 31 Oct 2018 10:08:58 GMT  
		Size: 17.7 MB (17743578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7.5`

**does not exist** (yet?)

## `traefik:v1.7.5-alpine`

**does not exist** (yet?)

## `traefik:v1.7.5-nanoserver`

**does not exist** (yet?)

## `traefik:v1.7.5-nanoserver-sac2016`

**does not exist** (yet?)

## `traefik:v1.7-alpine`

```console
$ docker pull traefik@sha256:652c9548e75f581f1fe5a7349cb96ceb3244debc4146cdaba02d61737aadbc1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.7-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:242e98ac5aa251e77b84698c03370e0485c7917f2e1944e9e8f8883adec3dd12
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.9 MB (21885534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f7dcec4702d18964e200bb41541a1215c175ad8bd1e83d0b692c69a00674ef7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 03:37:55 GMT
RUN apk --no-cache add ca-certificates
# Wed, 31 Oct 2018 01:11:24 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.4/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 31 Oct 2018 01:11:24 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Wed, 31 Oct 2018 01:11:24 GMT
EXPOSE 80/tcp
# Wed, 31 Oct 2018 01:11:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 31 Oct 2018 01:11:35 GMT
CMD ["traefik"]
# Wed, 31 Oct 2018 01:11:35 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:ab998c9a71595ba4ea382385d13c8e929726d4a94f0bf765a1800083f2de992b`  
		Last Modified: Wed, 31 Oct 2018 01:14:13 GMT  
		Size: 19.4 MB (19369298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0da39a064137d6743d340d4e64182003b89f5edbd115d06760c3eb4c192b676`  
		Last Modified: Wed, 31 Oct 2018 01:14:08 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:baeff9e7d1b820bd7d83c7674f9020ca0b7e0f93b9e8720b2637ab09ad6bc0e3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 MB (20647680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28b30c2c45f5746fc371c135395167d3528e4d9479c88d04607c2d756a0b8aaf`
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
# Wed, 31 Oct 2018 08:11:50 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.4/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 31 Oct 2018 08:11:51 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Wed, 31 Oct 2018 08:11:51 GMT
EXPOSE 80/tcp
# Wed, 31 Oct 2018 08:11:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 31 Oct 2018 08:11:52 GMT
CMD ["traefik"]
# Wed, 31 Oct 2018 08:11:52 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:e300a2c21e371887378a98ad77f254f976934671b25be7f14cc654a71d4f9571`  
		Last Modified: Wed, 31 Oct 2018 08:12:52 GMT  
		Size: 18.2 MB (18191664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6365bf311f1a6f56e6b3ed2a122abc1402df5f0a4735df3b4050dfeb99f27b0b`  
		Last Modified: Wed, 31 Oct 2018 08:12:46 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:112f0f297d8b2ed7f96f47ea8a39007fd0777a0365580d4e8e07ff5e1699eedd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 MB (20152521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65096f8807c13295c186f1613d60e4fb9ca4ee0eb9df0e9e2ec8c9a6b2d589b9`
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
# Wed, 31 Oct 2018 10:08:22 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.4/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 31 Oct 2018 10:08:23 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Wed, 31 Oct 2018 10:08:23 GMT
EXPOSE 80/tcp
# Wed, 31 Oct 2018 10:08:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 31 Oct 2018 10:08:25 GMT
CMD ["traefik"]
# Wed, 31 Oct 2018 10:08:25 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:74cac30b3820bc1fdfed9cb1368ab833b945d42b88ee8b22e898231981e66b83`  
		Last Modified: Wed, 31 Oct 2018 10:10:27 GMT  
		Size: 17.7 MB (17743730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da5d75773686bd6831724e3736f009e46b44fa334e28524e50502df30a2afde4`  
		Last Modified: Wed, 31 Oct 2018 10:10:19 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7-nanoserver`

```console
$ docker pull traefik@sha256:5d5ab9ccaf527c2184af957be50575dde7c9307f86f4ecd5d4b913d405e58905
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:v1.7-nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:1786dd76efb657e58f82f8fdff0986550c260ee9a18b6a234e64e32305938f9c
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **454.8 MB (454787755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e863bde28e00e722c04c6ec0f4e38b2adaadaed1b9b18bca31693885e6239d6`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Wed, 31 Oct 2018 09:17:31 GMT
RUN cmd /S /C #(nop) COPY file:4cae446cac12c264e2c7f736cec2f63337ac1df34b145a4eb6dafe2f6b0a8f7b in \traefik.exe 
# Wed, 31 Oct 2018 09:17:34 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Wed, 31 Oct 2018 09:17:35 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Wed, 31 Oct 2018 09:17:36 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:e675276858861c15f6ec65b897950cd6951872ba3e4172cd969d5f4307d5ae6a`  
		Last Modified: Wed, 31 Oct 2018 09:18:03 GMT  
		Size: 19.4 MB (19388088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f751f3f980b052bbc424f6ccbc16457826d03db8baa6a4f5165c2ba2b7af32bf`  
		Last Modified: Wed, 31 Oct 2018 09:17:56 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53378b4070d0c4628a5ed8afc9f4058d7c08477b982f8fffde16bc2bb6966a1b`  
		Last Modified: Wed, 31 Oct 2018 09:17:57 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39d7469a5ee612378ecdfb83cfa90352631bc29f0bc8e831280dc2e5cbb24032`  
		Last Modified: Wed, 31 Oct 2018 09:17:57 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:5d5ab9ccaf527c2184af957be50575dde7c9307f86f4ecd5d4b913d405e58905
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:v1.7-nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:1786dd76efb657e58f82f8fdff0986550c260ee9a18b6a234e64e32305938f9c
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **454.8 MB (454787755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e863bde28e00e722c04c6ec0f4e38b2adaadaed1b9b18bca31693885e6239d6`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Wed, 31 Oct 2018 09:17:31 GMT
RUN cmd /S /C #(nop) COPY file:4cae446cac12c264e2c7f736cec2f63337ac1df34b145a4eb6dafe2f6b0a8f7b in \traefik.exe 
# Wed, 31 Oct 2018 09:17:34 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Wed, 31 Oct 2018 09:17:35 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Wed, 31 Oct 2018 09:17:36 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:e675276858861c15f6ec65b897950cd6951872ba3e4172cd969d5f4307d5ae6a`  
		Last Modified: Wed, 31 Oct 2018 09:18:03 GMT  
		Size: 19.4 MB (19388088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f751f3f980b052bbc424f6ccbc16457826d03db8baa6a4f5165c2ba2b7af32bf`  
		Last Modified: Wed, 31 Oct 2018 09:17:56 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53378b4070d0c4628a5ed8afc9f4058d7c08477b982f8fffde16bc2bb6966a1b`  
		Last Modified: Wed, 31 Oct 2018 09:17:57 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39d7469a5ee612378ecdfb83cfa90352631bc29f0bc8e831280dc2e5cbb24032`  
		Last Modified: Wed, 31 Oct 2018 09:17:57 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
