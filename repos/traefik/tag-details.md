<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `traefik`

-	[`traefik:1.7`](#traefik17)
-	[`traefik:1.7.11-nanoserver-sac2016`](#traefik1711-nanoserver-sac2016)
-	[`traefik:1.7.12`](#traefik1712)
-	[`traefik:1.7.12-alpine`](#traefik1712-alpine)
-	[`traefik:1.7.12-nanoserver`](#traefik1712-nanoserver)
-	[`traefik:1.7-alpine`](#traefik17-alpine)
-	[`traefik:1.7-nanoserver`](#traefik17-nanoserver)
-	[`traefik:1.7-nanoserver-sac2016`](#traefik17-nanoserver-sac2016)
-	[`traefik:2.0`](#traefik20)
-	[`traefik:2.0.0-alpha6`](#traefik200-alpha6)
-	[`traefik:2.0.0-alpha6-alpine`](#traefik200-alpha6-alpine)
-	[`traefik:2.0.0-alpha6-nanoserver`](#traefik200-alpha6-nanoserver)
-	[`traefik:2.0.0-alpha6-nanoserver-sac2016`](#traefik200-alpha6-nanoserver-sac2016)
-	[`traefik:2.0-alpine`](#traefik20-alpine)
-	[`traefik:2.0-nanoserver`](#traefik20-nanoserver)
-	[`traefik:2.0-nanoserver-sac2016`](#traefik20-nanoserver-sac2016)
-	[`traefik:alpine`](#traefikalpine)
-	[`traefik:faisselle`](#traefikfaisselle)
-	[`traefik:faisselle-alpine`](#traefikfaisselle-alpine)
-	[`traefik:faisselle-nanoserver`](#traefikfaisselle-nanoserver)
-	[`traefik:faisselle-nanoserver-sac2016`](#traefikfaisselle-nanoserver-sac2016)
-	[`traefik:latest`](#traefiklatest)
-	[`traefik:maroilles`](#traefikmaroilles)
-	[`traefik:maroilles-alpine`](#traefikmaroilles-alpine)
-	[`traefik:maroilles-nanoserver`](#traefikmaroilles-nanoserver)
-	[`traefik:maroilles-nanoserver-sac2016`](#traefikmaroilles-nanoserver-sac2016)
-	[`traefik:nanoserver`](#traefiknanoserver)
-	[`traefik:nanoserver-sac2016`](#traefiknanoserver-sac2016)
-	[`traefik:v1.7`](#traefikv17)
-	[`traefik:v1.7.11-nanoserver-sac2016`](#traefikv1711-nanoserver-sac2016)
-	[`traefik:v1.7.12`](#traefikv1712)
-	[`traefik:v1.7.12-alpine`](#traefikv1712-alpine)
-	[`traefik:v1.7.12-nanoserver`](#traefikv1712-nanoserver)
-	[`traefik:v1.7-alpine`](#traefikv17-alpine)
-	[`traefik:v1.7-nanoserver`](#traefikv17-nanoserver)
-	[`traefik:v1.7-nanoserver-sac2016`](#traefikv17-nanoserver-sac2016)
-	[`traefik:v2.0`](#traefikv20)
-	[`traefik:v2.0.0-alpha6`](#traefikv200-alpha6)
-	[`traefik:v2.0.0-alpha6-alpine`](#traefikv200-alpha6-alpine)
-	[`traefik:v2.0.0-alpha6-nanoserver`](#traefikv200-alpha6-nanoserver)
-	[`traefik:v2.0.0-alpha6-nanoserver-sac2016`](#traefikv200-alpha6-nanoserver-sac2016)
-	[`traefik:v2.0-alpine`](#traefikv20-alpine)
-	[`traefik:v2.0-nanoserver`](#traefikv20-nanoserver)
-	[`traefik:v2.0-nanoserver-sac2016`](#traefikv20-nanoserver-sac2016)

## `traefik:1.7`

```console
$ docker pull traefik@sha256:02cfdb77b0cd82d973dffb3dafe498283f82399bd75b335797d7f0fe3ebeccb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.7` - linux; amd64

```console
$ docker pull traefik@sha256:9a77d02ad23622cd85e38eec127a85110ad73ba8258d8b457cf17bd3ad1eeef0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.4 MB (20389452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18471c10e6e4ba7bc20f9783355e98ea3c4314e961a3c78e9bd4ccf0322d2233`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 19 Mar 2019 21:34:26 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Wed, 29 May 2019 22:48:48 GMT
COPY file:7483056399b90b4253ba9b493edfe2f2ccb00a25c0194012e10a9a71699f0b7d in / 
# Wed, 29 May 2019 22:48:48 GMT
EXPOSE 80
# Wed, 29 May 2019 22:48:48 GMT
VOLUME [/tmp]
# Wed, 29 May 2019 22:48:48 GMT
ENTRYPOINT ["/traefik"]
# Wed, 29 May 2019 22:48:49 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.12 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:d572f7c8e98390811ccda70b3cd865d413636517e557d586db244257f25ef6df`  
		Last Modified: Tue, 19 Mar 2019 21:35:04 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d62b0f6adf296e9d9755911a50710773c9672a2c9ebbf094df4650ea98d87d0a`  
		Last Modified: Wed, 29 May 2019 22:49:14 GMT  
		Size: 20.3 MB (20257430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7` - linux; arm variant v6

```console
$ docker pull traefik@sha256:384bf5e4cfdfebcd705e7b2d4f697054b1f0c0a6d0ed5e5c7842e64197b3b0cd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 MB (19134685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0fc65eddfcc8918973eb1ad17b41c14af01a4ab1df47a7b9b308f39a54a2030`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 20 Mar 2019 08:11:08 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Wed, 29 May 2019 22:49:59 GMT
COPY file:87997d6398e61ce0db25407fdabd3d95a1ee9dc75562f6e1d04aed52443a149e in / 
# Wed, 29 May 2019 22:50:00 GMT
EXPOSE 80
# Wed, 29 May 2019 22:50:00 GMT
VOLUME [/tmp]
# Wed, 29 May 2019 22:50:01 GMT
ENTRYPOINT ["/traefik"]
# Wed, 29 May 2019 22:50:01 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.12 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:2b85204ff61918278f159c68b7d115600c72173e7f4db3f92d97b8ef4be1c8e9`  
		Last Modified: Wed, 20 Mar 2019 08:11:50 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abb6c58d427b03c445c7f0c64b6d1587ed86b058bebee04cb7621368def81940`  
		Last Modified: Wed, 29 May 2019 22:50:43 GMT  
		Size: 19.0 MB (19002663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:7d46ac8daf836344a140d2c0d838b6096a8279c74147152d96cafac3298a8a69
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.7 MB (18684996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a74136b4c06290588ea1c841be1799e233c4ddf80b4443cc7a846a2909603dd`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 29 May 2019 22:48:34 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Wed, 29 May 2019 22:48:55 GMT
COPY file:33fed32ab33ccaa01dd62123bc618243a2104e9ab695025999d2fc38f373ff39 in / 
# Wed, 29 May 2019 22:48:56 GMT
EXPOSE 80
# Wed, 29 May 2019 22:48:56 GMT
VOLUME [/tmp]
# Wed, 29 May 2019 22:48:56 GMT
ENTRYPOINT ["/traefik"]
# Wed, 29 May 2019 22:48:57 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.12 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:584016d61c187e4a6e7fe7b278382a810b56900deabfe42918d6ea510fc0cbe7`  
		Last Modified: Wed, 29 May 2019 22:49:25 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63fb5586ac5d2f89d4ac1bf582fd8fc28c662869c242f3d5c3a408ed01795406`  
		Last Modified: Wed, 29 May 2019 22:50:07 GMT  
		Size: 18.6 MB (18552974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7.11-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:74ba53b15ab8902cfbdcd9179a9274b9129498cd125acb909ca7d3eaa0b76408
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:1.7.11-nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:6de709a910adaabc6675736bf29da8a19c2465c752170be213af3f1bfeddcea5
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.7 MB (455662203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4464fd3906bd225e9ae745f8061f5b5795524841ceec3169ce11fccd8323d31c`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Wed, 29 May 2019 22:14:26 GMT
RUN cmd /S /C #(nop) COPY file:aa67ccac383ed7ea406c8c1d7ffbc0672861067b00d6bb66b5fc79cd1fc4abd6 in \traefik.exe 
# Wed, 29 May 2019 22:14:32 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Wed, 29 May 2019 22:14:33 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Wed, 29 May 2019 22:14:34 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.12 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:fe0d4c0f6b2858d0c75a62318bf3080d75c6071401ac23576dc046fe0e74a2ef`  
		Last Modified: Wed, 29 May 2019 22:15:26 GMT  
		Size: 20.3 MB (20262565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f578ae3e1e215beed05ec06469ea5994958a40bcb5776ae03b07ac90be18eeb5`  
		Last Modified: Wed, 29 May 2019 22:15:03 GMT  
		Size: 926.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:935d8dc299349e893457eea58511a3be8ebe601642f11acda2f13f0cc5e08785`  
		Last Modified: Wed, 29 May 2019 22:15:03 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39267f6fbebdddabbd7fb6a1bb5b02aae79dcc9cbc206d588898de4d385747de`  
		Last Modified: Wed, 29 May 2019 22:15:04 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7.12`

```console
$ docker pull traefik@sha256:02cfdb77b0cd82d973dffb3dafe498283f82399bd75b335797d7f0fe3ebeccb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.7.12` - linux; amd64

```console
$ docker pull traefik@sha256:9a77d02ad23622cd85e38eec127a85110ad73ba8258d8b457cf17bd3ad1eeef0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.4 MB (20389452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18471c10e6e4ba7bc20f9783355e98ea3c4314e961a3c78e9bd4ccf0322d2233`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 19 Mar 2019 21:34:26 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Wed, 29 May 2019 22:48:48 GMT
COPY file:7483056399b90b4253ba9b493edfe2f2ccb00a25c0194012e10a9a71699f0b7d in / 
# Wed, 29 May 2019 22:48:48 GMT
EXPOSE 80
# Wed, 29 May 2019 22:48:48 GMT
VOLUME [/tmp]
# Wed, 29 May 2019 22:48:48 GMT
ENTRYPOINT ["/traefik"]
# Wed, 29 May 2019 22:48:49 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.12 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:d572f7c8e98390811ccda70b3cd865d413636517e557d586db244257f25ef6df`  
		Last Modified: Tue, 19 Mar 2019 21:35:04 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d62b0f6adf296e9d9755911a50710773c9672a2c9ebbf094df4650ea98d87d0a`  
		Last Modified: Wed, 29 May 2019 22:49:14 GMT  
		Size: 20.3 MB (20257430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7.12` - linux; arm variant v6

```console
$ docker pull traefik@sha256:384bf5e4cfdfebcd705e7b2d4f697054b1f0c0a6d0ed5e5c7842e64197b3b0cd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 MB (19134685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0fc65eddfcc8918973eb1ad17b41c14af01a4ab1df47a7b9b308f39a54a2030`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 20 Mar 2019 08:11:08 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Wed, 29 May 2019 22:49:59 GMT
COPY file:87997d6398e61ce0db25407fdabd3d95a1ee9dc75562f6e1d04aed52443a149e in / 
# Wed, 29 May 2019 22:50:00 GMT
EXPOSE 80
# Wed, 29 May 2019 22:50:00 GMT
VOLUME [/tmp]
# Wed, 29 May 2019 22:50:01 GMT
ENTRYPOINT ["/traefik"]
# Wed, 29 May 2019 22:50:01 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.12 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:2b85204ff61918278f159c68b7d115600c72173e7f4db3f92d97b8ef4be1c8e9`  
		Last Modified: Wed, 20 Mar 2019 08:11:50 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abb6c58d427b03c445c7f0c64b6d1587ed86b058bebee04cb7621368def81940`  
		Last Modified: Wed, 29 May 2019 22:50:43 GMT  
		Size: 19.0 MB (19002663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7.12` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:7d46ac8daf836344a140d2c0d838b6096a8279c74147152d96cafac3298a8a69
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.7 MB (18684996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a74136b4c06290588ea1c841be1799e233c4ddf80b4443cc7a846a2909603dd`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 29 May 2019 22:48:34 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Wed, 29 May 2019 22:48:55 GMT
COPY file:33fed32ab33ccaa01dd62123bc618243a2104e9ab695025999d2fc38f373ff39 in / 
# Wed, 29 May 2019 22:48:56 GMT
EXPOSE 80
# Wed, 29 May 2019 22:48:56 GMT
VOLUME [/tmp]
# Wed, 29 May 2019 22:48:56 GMT
ENTRYPOINT ["/traefik"]
# Wed, 29 May 2019 22:48:57 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.12 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:584016d61c187e4a6e7fe7b278382a810b56900deabfe42918d6ea510fc0cbe7`  
		Last Modified: Wed, 29 May 2019 22:49:25 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63fb5586ac5d2f89d4ac1bf582fd8fc28c662869c242f3d5c3a408ed01795406`  
		Last Modified: Wed, 29 May 2019 22:50:07 GMT  
		Size: 18.6 MB (18552974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7.12-alpine`

```console
$ docker pull traefik@sha256:2343a4ab0381da512dfb0673d0f02747279d5b4253401e5a2e864ca62058e9e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.7.12-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:7b429dca82c09a93efdbb192e5b71eb1702400b969b81dfc76708b02675575c1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23711131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11f1b77e546ac35a5d14230c5c2014ee45d4e2d5ffc634927bda6481192b8874`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 03:12:07 GMT
RUN apk --no-cache add ca-certificates tzdata
# Wed, 29 May 2019 22:48:55 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.12/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 29 May 2019 22:48:55 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 29 May 2019 22:48:55 GMT
EXPOSE 80
# Wed, 29 May 2019 22:48:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 29 May 2019 22:48:55 GMT
CMD ["traefik"]
# Wed, 29 May 2019 22:48:55 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.12 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68e7f8284806d9f98c0c659038fc7f2498c964e8dfcdff9a661eacc824568fda`  
		Last Modified: Sat, 11 May 2019 03:12:36 GMT  
		Size: 696.1 KB (696144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4bee532dd171ff9a933fa762fe9440d46669c071ced87237efe96043f1aae87`  
		Last Modified: Wed, 29 May 2019 22:49:26 GMT  
		Size: 20.3 MB (20257632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25749e2097662ca70afcbd8aa807ce5a5615ad1674d226a348a5e9f8e3eec1ff`  
		Last Modified: Wed, 29 May 2019 22:49:20 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7.12-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:657dcbd518217fa2627d8f5e51a6b48489906474d18882790b3eae443c048111
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.2 MB (22245489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8beccde92cdcf185c6d16bb45292d431bd4bdc7038fec6b8506fce0d1284c25`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:58:57 GMT
RUN apk --no-cache add ca-certificates tzdata
# Wed, 29 May 2019 22:50:11 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.12/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 29 May 2019 22:50:12 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 29 May 2019 22:50:13 GMT
EXPOSE 80
# Wed, 29 May 2019 22:50:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 29 May 2019 22:50:14 GMT
CMD ["traefik"]
# Wed, 29 May 2019 22:50:14 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.12 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:153b3e2b8588fe422e5874001d4bdddca455c8bca3902b236930cf11191bd0c0`  
		Last Modified: Sat, 11 May 2019 08:59:56 GMT  
		Size: 698.9 KB (698850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b0d4f0c2c8f1e0a83bae1e4eacdf7231adfc6a59deb9f7105339118c5959a1e`  
		Last Modified: Wed, 29 May 2019 22:51:00 GMT  
		Size: 19.0 MB (19002890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aaeb4a8815e693f05ab74b67008204541bcaf0b1ea413a9adfacfab520b0b49`  
		Last Modified: Wed, 29 May 2019 22:50:53 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7.12-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:e5565377ad590c567b81dc72b22fb439f2e59cc665bc2fdf7585bd534b043afc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.9 MB (21941303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b4531f30ef7741996ac7c4d3ea4519c06d73865cd1b7a1c7da4684063658915`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 19 Jun 2019 20:39:47 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Wed, 19 Jun 2019 20:39:47 GMT
CMD ["/bin/sh"]
# Wed, 19 Jun 2019 20:41:05 GMT
RUN apk --no-cache add ca-certificates tzdata
# Wed, 19 Jun 2019 20:41:27 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.12/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 19 Jun 2019 20:41:28 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 19 Jun 2019 20:41:28 GMT
EXPOSE 80
# Wed, 19 Jun 2019 20:41:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 19 Jun 2019 20:41:29 GMT
CMD ["traefik"]
# Wed, 19 Jun 2019 20:41:29 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.12 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec749d99dfc2431e9417aaba2a694ba0d0cf95b50ae26a195182cb96929b306`  
		Last Modified: Wed, 19 Jun 2019 20:41:50 GMT  
		Size: 699.1 KB (699123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:461343555dfef15a6785d810615d43d2285f5e2d93998776ab23c68b0ac68467`  
		Last Modified: Wed, 19 Jun 2019 20:42:13 GMT  
		Size: 18.6 MB (18553080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90560e0f6353e32f8f1117e115972c1c6e8770339b1a414035ad52c451f264b8`  
		Last Modified: Wed, 19 Jun 2019 20:42:06 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7.12-nanoserver`

```console
$ docker pull traefik@sha256:74ba53b15ab8902cfbdcd9179a9274b9129498cd125acb909ca7d3eaa0b76408
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:1.7.12-nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:6de709a910adaabc6675736bf29da8a19c2465c752170be213af3f1bfeddcea5
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.7 MB (455662203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4464fd3906bd225e9ae745f8061f5b5795524841ceec3169ce11fccd8323d31c`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Wed, 29 May 2019 22:14:26 GMT
RUN cmd /S /C #(nop) COPY file:aa67ccac383ed7ea406c8c1d7ffbc0672861067b00d6bb66b5fc79cd1fc4abd6 in \traefik.exe 
# Wed, 29 May 2019 22:14:32 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Wed, 29 May 2019 22:14:33 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Wed, 29 May 2019 22:14:34 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.12 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:fe0d4c0f6b2858d0c75a62318bf3080d75c6071401ac23576dc046fe0e74a2ef`  
		Last Modified: Wed, 29 May 2019 22:15:26 GMT  
		Size: 20.3 MB (20262565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f578ae3e1e215beed05ec06469ea5994958a40bcb5776ae03b07ac90be18eeb5`  
		Last Modified: Wed, 29 May 2019 22:15:03 GMT  
		Size: 926.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:935d8dc299349e893457eea58511a3be8ebe601642f11acda2f13f0cc5e08785`  
		Last Modified: Wed, 29 May 2019 22:15:03 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39267f6fbebdddabbd7fb6a1bb5b02aae79dcc9cbc206d588898de4d385747de`  
		Last Modified: Wed, 29 May 2019 22:15:04 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7-alpine`

```console
$ docker pull traefik@sha256:2343a4ab0381da512dfb0673d0f02747279d5b4253401e5a2e864ca62058e9e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.7-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:7b429dca82c09a93efdbb192e5b71eb1702400b969b81dfc76708b02675575c1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23711131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11f1b77e546ac35a5d14230c5c2014ee45d4e2d5ffc634927bda6481192b8874`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 03:12:07 GMT
RUN apk --no-cache add ca-certificates tzdata
# Wed, 29 May 2019 22:48:55 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.12/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 29 May 2019 22:48:55 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 29 May 2019 22:48:55 GMT
EXPOSE 80
# Wed, 29 May 2019 22:48:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 29 May 2019 22:48:55 GMT
CMD ["traefik"]
# Wed, 29 May 2019 22:48:55 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.12 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68e7f8284806d9f98c0c659038fc7f2498c964e8dfcdff9a661eacc824568fda`  
		Last Modified: Sat, 11 May 2019 03:12:36 GMT  
		Size: 696.1 KB (696144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4bee532dd171ff9a933fa762fe9440d46669c071ced87237efe96043f1aae87`  
		Last Modified: Wed, 29 May 2019 22:49:26 GMT  
		Size: 20.3 MB (20257632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25749e2097662ca70afcbd8aa807ce5a5615ad1674d226a348a5e9f8e3eec1ff`  
		Last Modified: Wed, 29 May 2019 22:49:20 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:657dcbd518217fa2627d8f5e51a6b48489906474d18882790b3eae443c048111
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.2 MB (22245489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8beccde92cdcf185c6d16bb45292d431bd4bdc7038fec6b8506fce0d1284c25`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:58:57 GMT
RUN apk --no-cache add ca-certificates tzdata
# Wed, 29 May 2019 22:50:11 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.12/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 29 May 2019 22:50:12 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 29 May 2019 22:50:13 GMT
EXPOSE 80
# Wed, 29 May 2019 22:50:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 29 May 2019 22:50:14 GMT
CMD ["traefik"]
# Wed, 29 May 2019 22:50:14 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.12 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:153b3e2b8588fe422e5874001d4bdddca455c8bca3902b236930cf11191bd0c0`  
		Last Modified: Sat, 11 May 2019 08:59:56 GMT  
		Size: 698.9 KB (698850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b0d4f0c2c8f1e0a83bae1e4eacdf7231adfc6a59deb9f7105339118c5959a1e`  
		Last Modified: Wed, 29 May 2019 22:51:00 GMT  
		Size: 19.0 MB (19002890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aaeb4a8815e693f05ab74b67008204541bcaf0b1ea413a9adfacfab520b0b49`  
		Last Modified: Wed, 29 May 2019 22:50:53 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:e5565377ad590c567b81dc72b22fb439f2e59cc665bc2fdf7585bd534b043afc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.9 MB (21941303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b4531f30ef7741996ac7c4d3ea4519c06d73865cd1b7a1c7da4684063658915`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 19 Jun 2019 20:39:47 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Wed, 19 Jun 2019 20:39:47 GMT
CMD ["/bin/sh"]
# Wed, 19 Jun 2019 20:41:05 GMT
RUN apk --no-cache add ca-certificates tzdata
# Wed, 19 Jun 2019 20:41:27 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.12/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 19 Jun 2019 20:41:28 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 19 Jun 2019 20:41:28 GMT
EXPOSE 80
# Wed, 19 Jun 2019 20:41:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 19 Jun 2019 20:41:29 GMT
CMD ["traefik"]
# Wed, 19 Jun 2019 20:41:29 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.12 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec749d99dfc2431e9417aaba2a694ba0d0cf95b50ae26a195182cb96929b306`  
		Last Modified: Wed, 19 Jun 2019 20:41:50 GMT  
		Size: 699.1 KB (699123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:461343555dfef15a6785d810615d43d2285f5e2d93998776ab23c68b0ac68467`  
		Last Modified: Wed, 19 Jun 2019 20:42:13 GMT  
		Size: 18.6 MB (18553080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90560e0f6353e32f8f1117e115972c1c6e8770339b1a414035ad52c451f264b8`  
		Last Modified: Wed, 19 Jun 2019 20:42:06 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7-nanoserver`

```console
$ docker pull traefik@sha256:74ba53b15ab8902cfbdcd9179a9274b9129498cd125acb909ca7d3eaa0b76408
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:1.7-nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:6de709a910adaabc6675736bf29da8a19c2465c752170be213af3f1bfeddcea5
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.7 MB (455662203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4464fd3906bd225e9ae745f8061f5b5795524841ceec3169ce11fccd8323d31c`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Wed, 29 May 2019 22:14:26 GMT
RUN cmd /S /C #(nop) COPY file:aa67ccac383ed7ea406c8c1d7ffbc0672861067b00d6bb66b5fc79cd1fc4abd6 in \traefik.exe 
# Wed, 29 May 2019 22:14:32 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Wed, 29 May 2019 22:14:33 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Wed, 29 May 2019 22:14:34 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.12 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:fe0d4c0f6b2858d0c75a62318bf3080d75c6071401ac23576dc046fe0e74a2ef`  
		Last Modified: Wed, 29 May 2019 22:15:26 GMT  
		Size: 20.3 MB (20262565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f578ae3e1e215beed05ec06469ea5994958a40bcb5776ae03b07ac90be18eeb5`  
		Last Modified: Wed, 29 May 2019 22:15:03 GMT  
		Size: 926.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:935d8dc299349e893457eea58511a3be8ebe601642f11acda2f13f0cc5e08785`  
		Last Modified: Wed, 29 May 2019 22:15:03 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39267f6fbebdddabbd7fb6a1bb5b02aae79dcc9cbc206d588898de4d385747de`  
		Last Modified: Wed, 29 May 2019 22:15:04 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:74ba53b15ab8902cfbdcd9179a9274b9129498cd125acb909ca7d3eaa0b76408
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:1.7-nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:6de709a910adaabc6675736bf29da8a19c2465c752170be213af3f1bfeddcea5
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.7 MB (455662203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4464fd3906bd225e9ae745f8061f5b5795524841ceec3169ce11fccd8323d31c`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Wed, 29 May 2019 22:14:26 GMT
RUN cmd /S /C #(nop) COPY file:aa67ccac383ed7ea406c8c1d7ffbc0672861067b00d6bb66b5fc79cd1fc4abd6 in \traefik.exe 
# Wed, 29 May 2019 22:14:32 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Wed, 29 May 2019 22:14:33 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Wed, 29 May 2019 22:14:34 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.12 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:fe0d4c0f6b2858d0c75a62318bf3080d75c6071401ac23576dc046fe0e74a2ef`  
		Last Modified: Wed, 29 May 2019 22:15:26 GMT  
		Size: 20.3 MB (20262565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f578ae3e1e215beed05ec06469ea5994958a40bcb5776ae03b07ac90be18eeb5`  
		Last Modified: Wed, 29 May 2019 22:15:03 GMT  
		Size: 926.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:935d8dc299349e893457eea58511a3be8ebe601642f11acda2f13f0cc5e08785`  
		Last Modified: Wed, 29 May 2019 22:15:03 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39267f6fbebdddabbd7fb6a1bb5b02aae79dcc9cbc206d588898de4d385747de`  
		Last Modified: Wed, 29 May 2019 22:15:04 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:2.0`

```console
$ docker pull traefik@sha256:dbbef4ea626b2cf71a031565eb751f0b62201be62b18c8b1d8f8dd2887af4af9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:2.0` - linux; amd64

```console
$ docker pull traefik@sha256:0bddb7abb119a2426cd59713d79c2cb8aa19e64c0fc416bbc41a9ff075f65abd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.1 MB (18051722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:727669322043e469ef8870c1878f1360405336f72d55cd03fee377647f80c158`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 19 Mar 2019 21:34:26 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Wed, 19 Jun 2019 20:21:19 GMT
COPY file:f993a1cddf39963e59175213be2c37a74f207bfe4ef25841934cf821e5c1d720 in / 
# Wed, 19 Jun 2019 20:21:20 GMT
EXPOSE 80
# Wed, 19 Jun 2019 20:21:20 GMT
VOLUME [/tmp]
# Wed, 19 Jun 2019 20:21:20 GMT
ENTRYPOINT ["/traefik"]
# Wed, 19 Jun 2019 20:21:20 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha6 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:d572f7c8e98390811ccda70b3cd865d413636517e557d586db244257f25ef6df`  
		Last Modified: Tue, 19 Mar 2019 21:35:04 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:265b4f12928a311de2d0539ca376ff1a03889820eda5170e5d4306d7c210b025`  
		Last Modified: Wed, 19 Jun 2019 20:21:53 GMT  
		Size: 17.9 MB (17919700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:2.0` - linux; arm variant v6

```console
$ docker pull traefik@sha256:04d5aad10f730aa1b7a6e527efd6681f448ee71098f694f80b93db2cb9c27832
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16909047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bdb4e18779806341dcd41b13feb228a0a67c4bd592b4081db2d17e336944d75`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 20 Mar 2019 08:11:08 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Wed, 19 Jun 2019 20:24:39 GMT
COPY file:18baec0ca932e9bdf81ea80b7cfe1313995b4fca6a825b667d715c0dbab98b82 in / 
# Wed, 19 Jun 2019 20:24:40 GMT
EXPOSE 80
# Wed, 19 Jun 2019 20:24:41 GMT
VOLUME [/tmp]
# Wed, 19 Jun 2019 20:24:42 GMT
ENTRYPOINT ["/traefik"]
# Wed, 19 Jun 2019 20:24:42 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha6 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:2b85204ff61918278f159c68b7d115600c72173e7f4db3f92d97b8ef4be1c8e9`  
		Last Modified: Wed, 20 Mar 2019 08:11:50 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:055ee6dcdeb330856bce715456ed7c9cc250f75ce88f792f458e95b710f74293`  
		Last Modified: Wed, 19 Jun 2019 20:25:38 GMT  
		Size: 16.8 MB (16777025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:2.0` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:da9ed985e8ee1de7486c9886e0fdcb6fd78edf173fe3e264d97351889060ed8c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.6 MB (16611493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c24e3271a829ab9614c01932fa3cea1f285bfd398f00f86184a93824cf15c126`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 29 May 2019 22:48:34 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Wed, 19 Jun 2019 20:26:25 GMT
COPY file:a5016a7e321ae9e83a45b1ef04cbf615a8d3545d513b440b1fea241f2f518e02 in / 
# Wed, 19 Jun 2019 20:26:26 GMT
EXPOSE 80
# Wed, 19 Jun 2019 20:26:27 GMT
VOLUME [/tmp]
# Wed, 19 Jun 2019 20:26:27 GMT
ENTRYPOINT ["/traefik"]
# Wed, 19 Jun 2019 20:26:27 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha6 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:584016d61c187e4a6e7fe7b278382a810b56900deabfe42918d6ea510fc0cbe7`  
		Last Modified: Wed, 29 May 2019 22:49:25 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deb814019a4bdb8e603c77b6ac11a8ddc2c41131f18879553a7ff6e4bc86af0d`  
		Last Modified: Wed, 19 Jun 2019 20:27:15 GMT  
		Size: 16.5 MB (16479471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:2.0.0-alpha6`

```console
$ docker pull traefik@sha256:dbbef4ea626b2cf71a031565eb751f0b62201be62b18c8b1d8f8dd2887af4af9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:2.0.0-alpha6` - linux; amd64

```console
$ docker pull traefik@sha256:0bddb7abb119a2426cd59713d79c2cb8aa19e64c0fc416bbc41a9ff075f65abd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.1 MB (18051722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:727669322043e469ef8870c1878f1360405336f72d55cd03fee377647f80c158`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 19 Mar 2019 21:34:26 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Wed, 19 Jun 2019 20:21:19 GMT
COPY file:f993a1cddf39963e59175213be2c37a74f207bfe4ef25841934cf821e5c1d720 in / 
# Wed, 19 Jun 2019 20:21:20 GMT
EXPOSE 80
# Wed, 19 Jun 2019 20:21:20 GMT
VOLUME [/tmp]
# Wed, 19 Jun 2019 20:21:20 GMT
ENTRYPOINT ["/traefik"]
# Wed, 19 Jun 2019 20:21:20 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha6 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:d572f7c8e98390811ccda70b3cd865d413636517e557d586db244257f25ef6df`  
		Last Modified: Tue, 19 Mar 2019 21:35:04 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:265b4f12928a311de2d0539ca376ff1a03889820eda5170e5d4306d7c210b025`  
		Last Modified: Wed, 19 Jun 2019 20:21:53 GMT  
		Size: 17.9 MB (17919700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:2.0.0-alpha6` - linux; arm variant v6

```console
$ docker pull traefik@sha256:04d5aad10f730aa1b7a6e527efd6681f448ee71098f694f80b93db2cb9c27832
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16909047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bdb4e18779806341dcd41b13feb228a0a67c4bd592b4081db2d17e336944d75`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 20 Mar 2019 08:11:08 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Wed, 19 Jun 2019 20:24:39 GMT
COPY file:18baec0ca932e9bdf81ea80b7cfe1313995b4fca6a825b667d715c0dbab98b82 in / 
# Wed, 19 Jun 2019 20:24:40 GMT
EXPOSE 80
# Wed, 19 Jun 2019 20:24:41 GMT
VOLUME [/tmp]
# Wed, 19 Jun 2019 20:24:42 GMT
ENTRYPOINT ["/traefik"]
# Wed, 19 Jun 2019 20:24:42 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha6 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:2b85204ff61918278f159c68b7d115600c72173e7f4db3f92d97b8ef4be1c8e9`  
		Last Modified: Wed, 20 Mar 2019 08:11:50 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:055ee6dcdeb330856bce715456ed7c9cc250f75ce88f792f458e95b710f74293`  
		Last Modified: Wed, 19 Jun 2019 20:25:38 GMT  
		Size: 16.8 MB (16777025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:2.0.0-alpha6` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:da9ed985e8ee1de7486c9886e0fdcb6fd78edf173fe3e264d97351889060ed8c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.6 MB (16611493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c24e3271a829ab9614c01932fa3cea1f285bfd398f00f86184a93824cf15c126`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 29 May 2019 22:48:34 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Wed, 19 Jun 2019 20:26:25 GMT
COPY file:a5016a7e321ae9e83a45b1ef04cbf615a8d3545d513b440b1fea241f2f518e02 in / 
# Wed, 19 Jun 2019 20:26:26 GMT
EXPOSE 80
# Wed, 19 Jun 2019 20:26:27 GMT
VOLUME [/tmp]
# Wed, 19 Jun 2019 20:26:27 GMT
ENTRYPOINT ["/traefik"]
# Wed, 19 Jun 2019 20:26:27 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha6 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:584016d61c187e4a6e7fe7b278382a810b56900deabfe42918d6ea510fc0cbe7`  
		Last Modified: Wed, 29 May 2019 22:49:25 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deb814019a4bdb8e603c77b6ac11a8ddc2c41131f18879553a7ff6e4bc86af0d`  
		Last Modified: Wed, 19 Jun 2019 20:27:15 GMT  
		Size: 16.5 MB (16479471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:2.0.0-alpha6-alpine`

```console
$ docker pull traefik@sha256:b60735242f57e9ae43d380d474e6fd56e126c150b7be1f08e04922008bf85ee4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:2.0.0-alpha6-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:0f8824b931799ca093c0ca9ab07eb22629f0d6af7031b79dab1a2426507d15b6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.4 MB (21373302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfe3891f8a0b320b9bc96f64d1122d5314d757c66af8cc935a7754087e4ef865`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 03:12:07 GMT
RUN apk --no-cache add ca-certificates tzdata
# Wed, 19 Jun 2019 20:21:30 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/containous/traefik/releases/download/v2.0.0-alpha6/traefik_v2.0.0-alpha6_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Wed, 19 Jun 2019 20:21:30 GMT
COPY file:34488cf16756639d0b23fe91a33c8606031ffcf600cde1df1b9666b4996f0312 in / 
# Wed, 19 Jun 2019 20:21:31 GMT
EXPOSE 80
# Wed, 19 Jun 2019 20:21:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 19 Jun 2019 20:21:31 GMT
CMD ["traefik"]
# Wed, 19 Jun 2019 20:21:31 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha6 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68e7f8284806d9f98c0c659038fc7f2498c964e8dfcdff9a661eacc824568fda`  
		Last Modified: Sat, 11 May 2019 03:12:36 GMT  
		Size: 696.1 KB (696144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:072b96b0ba3243350217ad9f88c7c61339575ac898997ea31802cfaf9d368680`  
		Last Modified: Wed, 19 Jun 2019 20:22:03 GMT  
		Size: 17.9 MB (17919775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7354c7ca9c7b7f96429110611edff8727c1e79ba38ee1dc42f646a9b80e74e2`  
		Last Modified: Wed, 19 Jun 2019 20:21:59 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:2.0.0-alpha6-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:6abdaf02f7d25c36e2bf323ab3418c86e70358f2a30540cf3d8408a5a8b76b71
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.0 MB (20019710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49e626563136ae46d283c68266e24d68237cd240a52c1ed5020763f8b2d8177c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:58:57 GMT
RUN apk --no-cache add ca-certificates tzdata
# Wed, 19 Jun 2019 20:24:51 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/containous/traefik/releases/download/v2.0.0-alpha6/traefik_v2.0.0-alpha6_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Wed, 19 Jun 2019 20:24:52 GMT
COPY file:34488cf16756639d0b23fe91a33c8606031ffcf600cde1df1b9666b4996f0312 in / 
# Wed, 19 Jun 2019 20:24:52 GMT
EXPOSE 80
# Wed, 19 Jun 2019 20:24:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 19 Jun 2019 20:24:53 GMT
CMD ["traefik"]
# Wed, 19 Jun 2019 20:24:54 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha6 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:153b3e2b8588fe422e5874001d4bdddca455c8bca3902b236930cf11191bd0c0`  
		Last Modified: Sat, 11 May 2019 08:59:56 GMT  
		Size: 698.9 KB (698850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8fa188125b7019f7c6cc8dae651454acab904d6f47f6186bc9d862a16e299fb`  
		Last Modified: Wed, 19 Jun 2019 20:25:52 GMT  
		Size: 16.8 MB (16777084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e54244f8d7cb693d5e6433e1d1bec2e8bd0ee630bb0b259936df75099dcf4e14`  
		Last Modified: Wed, 19 Jun 2019 20:25:47 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:2.0.0-alpha6-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:6e77966cf32896f4e7eb1a8b37c11be112f479318c04472b5d046fe536604b37
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.9 MB (19867922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d21d9d413b8d46fc2f7b6010d9c38548de23dc91c2c580b27c1de54600b53291`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 19 Jun 2019 20:39:47 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Wed, 19 Jun 2019 20:39:47 GMT
CMD ["/bin/sh"]
# Wed, 19 Jun 2019 20:41:05 GMT
RUN apk --no-cache add ca-certificates tzdata
# Wed, 19 Jun 2019 20:41:10 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/containous/traefik/releases/download/v2.0.0-alpha6/traefik_v2.0.0-alpha6_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Wed, 19 Jun 2019 20:41:10 GMT
COPY file:34488cf16756639d0b23fe91a33c8606031ffcf600cde1df1b9666b4996f0312 in / 
# Wed, 19 Jun 2019 20:41:11 GMT
EXPOSE 80
# Wed, 19 Jun 2019 20:41:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 19 Jun 2019 20:41:12 GMT
CMD ["traefik"]
# Wed, 19 Jun 2019 20:41:12 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha6 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec749d99dfc2431e9417aaba2a694ba0d0cf95b50ae26a195182cb96929b306`  
		Last Modified: Wed, 19 Jun 2019 20:41:50 GMT  
		Size: 699.1 KB (699123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26dd99a7b52854a97b888fdaed3fbe75a1f86746745dd148a4be7e78b8b73b03`  
		Last Modified: Wed, 19 Jun 2019 20:41:56 GMT  
		Size: 16.5 MB (16479671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfa189cbe06528e39e67a28953e4401b5e974aae445c73d0f99211186b7201a0`  
		Last Modified: Wed, 19 Jun 2019 20:41:50 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:2.0.0-alpha6-nanoserver`

```console
$ docker pull traefik@sha256:11bb17831dd6b886116d4d9f62957785c5d0501453095b33b81f40a2073f756d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:2.0.0-alpha6-nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:8a9335e2357cb2f121f06ed2068db23aa7e320386041abd905606d20dede8080
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **453.3 MB (453292630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e12500b320f2e822f7d0d6adff806f9d7fc6a9bdbd654de87a8531bdc3199c99`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Wed, 19 Jun 2019 20:14:57 GMT
RUN cmd /S /C #(nop) COPY file:cbef9dc2466d1db4e0f62ba0b7e8f7cc23fa8024ed1fff51b47391f34f64f38c in \traefik.exe 
# Wed, 19 Jun 2019 20:15:04 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Wed, 19 Jun 2019 20:15:05 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Wed, 19 Jun 2019 20:15:06 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha6 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:553bb6ea0d4ffa2707d4003e292f3a860d0605a5d1a1ca1ced120ad69baa6e9c`  
		Last Modified: Wed, 19 Jun 2019 20:15:42 GMT  
		Size: 17.9 MB (17893023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3706ee9dfa84407686e468851f7756a983b5ada9ef31b1a6939b497c43f98ba0`  
		Last Modified: Wed, 19 Jun 2019 20:15:37 GMT  
		Size: 918.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ed4a594d209d40272924ddd32e748085e707e786e245d34cc97c62cdd07b5e`  
		Last Modified: Wed, 19 Jun 2019 20:15:37 GMT  
		Size: 929.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de1b6331fdaeb439d0f634251877786cef56759e2347d2f8c56a97ce39c9029`  
		Last Modified: Wed, 19 Jun 2019 20:15:37 GMT  
		Size: 942.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:2.0.0-alpha6-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:11bb17831dd6b886116d4d9f62957785c5d0501453095b33b81f40a2073f756d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:2.0.0-alpha6-nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:8a9335e2357cb2f121f06ed2068db23aa7e320386041abd905606d20dede8080
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **453.3 MB (453292630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e12500b320f2e822f7d0d6adff806f9d7fc6a9bdbd654de87a8531bdc3199c99`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Wed, 19 Jun 2019 20:14:57 GMT
RUN cmd /S /C #(nop) COPY file:cbef9dc2466d1db4e0f62ba0b7e8f7cc23fa8024ed1fff51b47391f34f64f38c in \traefik.exe 
# Wed, 19 Jun 2019 20:15:04 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Wed, 19 Jun 2019 20:15:05 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Wed, 19 Jun 2019 20:15:06 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha6 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:553bb6ea0d4ffa2707d4003e292f3a860d0605a5d1a1ca1ced120ad69baa6e9c`  
		Last Modified: Wed, 19 Jun 2019 20:15:42 GMT  
		Size: 17.9 MB (17893023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3706ee9dfa84407686e468851f7756a983b5ada9ef31b1a6939b497c43f98ba0`  
		Last Modified: Wed, 19 Jun 2019 20:15:37 GMT  
		Size: 918.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ed4a594d209d40272924ddd32e748085e707e786e245d34cc97c62cdd07b5e`  
		Last Modified: Wed, 19 Jun 2019 20:15:37 GMT  
		Size: 929.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de1b6331fdaeb439d0f634251877786cef56759e2347d2f8c56a97ce39c9029`  
		Last Modified: Wed, 19 Jun 2019 20:15:37 GMT  
		Size: 942.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:2.0-alpine`

```console
$ docker pull traefik@sha256:b60735242f57e9ae43d380d474e6fd56e126c150b7be1f08e04922008bf85ee4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:2.0-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:0f8824b931799ca093c0ca9ab07eb22629f0d6af7031b79dab1a2426507d15b6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.4 MB (21373302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfe3891f8a0b320b9bc96f64d1122d5314d757c66af8cc935a7754087e4ef865`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 03:12:07 GMT
RUN apk --no-cache add ca-certificates tzdata
# Wed, 19 Jun 2019 20:21:30 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/containous/traefik/releases/download/v2.0.0-alpha6/traefik_v2.0.0-alpha6_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Wed, 19 Jun 2019 20:21:30 GMT
COPY file:34488cf16756639d0b23fe91a33c8606031ffcf600cde1df1b9666b4996f0312 in / 
# Wed, 19 Jun 2019 20:21:31 GMT
EXPOSE 80
# Wed, 19 Jun 2019 20:21:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 19 Jun 2019 20:21:31 GMT
CMD ["traefik"]
# Wed, 19 Jun 2019 20:21:31 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha6 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68e7f8284806d9f98c0c659038fc7f2498c964e8dfcdff9a661eacc824568fda`  
		Last Modified: Sat, 11 May 2019 03:12:36 GMT  
		Size: 696.1 KB (696144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:072b96b0ba3243350217ad9f88c7c61339575ac898997ea31802cfaf9d368680`  
		Last Modified: Wed, 19 Jun 2019 20:22:03 GMT  
		Size: 17.9 MB (17919775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7354c7ca9c7b7f96429110611edff8727c1e79ba38ee1dc42f646a9b80e74e2`  
		Last Modified: Wed, 19 Jun 2019 20:21:59 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:2.0-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:6abdaf02f7d25c36e2bf323ab3418c86e70358f2a30540cf3d8408a5a8b76b71
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.0 MB (20019710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49e626563136ae46d283c68266e24d68237cd240a52c1ed5020763f8b2d8177c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:58:57 GMT
RUN apk --no-cache add ca-certificates tzdata
# Wed, 19 Jun 2019 20:24:51 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/containous/traefik/releases/download/v2.0.0-alpha6/traefik_v2.0.0-alpha6_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Wed, 19 Jun 2019 20:24:52 GMT
COPY file:34488cf16756639d0b23fe91a33c8606031ffcf600cde1df1b9666b4996f0312 in / 
# Wed, 19 Jun 2019 20:24:52 GMT
EXPOSE 80
# Wed, 19 Jun 2019 20:24:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 19 Jun 2019 20:24:53 GMT
CMD ["traefik"]
# Wed, 19 Jun 2019 20:24:54 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha6 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:153b3e2b8588fe422e5874001d4bdddca455c8bca3902b236930cf11191bd0c0`  
		Last Modified: Sat, 11 May 2019 08:59:56 GMT  
		Size: 698.9 KB (698850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8fa188125b7019f7c6cc8dae651454acab904d6f47f6186bc9d862a16e299fb`  
		Last Modified: Wed, 19 Jun 2019 20:25:52 GMT  
		Size: 16.8 MB (16777084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e54244f8d7cb693d5e6433e1d1bec2e8bd0ee630bb0b259936df75099dcf4e14`  
		Last Modified: Wed, 19 Jun 2019 20:25:47 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:2.0-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:6e77966cf32896f4e7eb1a8b37c11be112f479318c04472b5d046fe536604b37
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.9 MB (19867922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d21d9d413b8d46fc2f7b6010d9c38548de23dc91c2c580b27c1de54600b53291`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 19 Jun 2019 20:39:47 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Wed, 19 Jun 2019 20:39:47 GMT
CMD ["/bin/sh"]
# Wed, 19 Jun 2019 20:41:05 GMT
RUN apk --no-cache add ca-certificates tzdata
# Wed, 19 Jun 2019 20:41:10 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/containous/traefik/releases/download/v2.0.0-alpha6/traefik_v2.0.0-alpha6_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Wed, 19 Jun 2019 20:41:10 GMT
COPY file:34488cf16756639d0b23fe91a33c8606031ffcf600cde1df1b9666b4996f0312 in / 
# Wed, 19 Jun 2019 20:41:11 GMT
EXPOSE 80
# Wed, 19 Jun 2019 20:41:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 19 Jun 2019 20:41:12 GMT
CMD ["traefik"]
# Wed, 19 Jun 2019 20:41:12 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha6 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec749d99dfc2431e9417aaba2a694ba0d0cf95b50ae26a195182cb96929b306`  
		Last Modified: Wed, 19 Jun 2019 20:41:50 GMT  
		Size: 699.1 KB (699123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26dd99a7b52854a97b888fdaed3fbe75a1f86746745dd148a4be7e78b8b73b03`  
		Last Modified: Wed, 19 Jun 2019 20:41:56 GMT  
		Size: 16.5 MB (16479671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfa189cbe06528e39e67a28953e4401b5e974aae445c73d0f99211186b7201a0`  
		Last Modified: Wed, 19 Jun 2019 20:41:50 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:2.0-nanoserver`

```console
$ docker pull traefik@sha256:11bb17831dd6b886116d4d9f62957785c5d0501453095b33b81f40a2073f756d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:2.0-nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:8a9335e2357cb2f121f06ed2068db23aa7e320386041abd905606d20dede8080
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **453.3 MB (453292630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e12500b320f2e822f7d0d6adff806f9d7fc6a9bdbd654de87a8531bdc3199c99`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Wed, 19 Jun 2019 20:14:57 GMT
RUN cmd /S /C #(nop) COPY file:cbef9dc2466d1db4e0f62ba0b7e8f7cc23fa8024ed1fff51b47391f34f64f38c in \traefik.exe 
# Wed, 19 Jun 2019 20:15:04 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Wed, 19 Jun 2019 20:15:05 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Wed, 19 Jun 2019 20:15:06 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha6 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:553bb6ea0d4ffa2707d4003e292f3a860d0605a5d1a1ca1ced120ad69baa6e9c`  
		Last Modified: Wed, 19 Jun 2019 20:15:42 GMT  
		Size: 17.9 MB (17893023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3706ee9dfa84407686e468851f7756a983b5ada9ef31b1a6939b497c43f98ba0`  
		Last Modified: Wed, 19 Jun 2019 20:15:37 GMT  
		Size: 918.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ed4a594d209d40272924ddd32e748085e707e786e245d34cc97c62cdd07b5e`  
		Last Modified: Wed, 19 Jun 2019 20:15:37 GMT  
		Size: 929.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de1b6331fdaeb439d0f634251877786cef56759e2347d2f8c56a97ce39c9029`  
		Last Modified: Wed, 19 Jun 2019 20:15:37 GMT  
		Size: 942.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:2.0-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:11bb17831dd6b886116d4d9f62957785c5d0501453095b33b81f40a2073f756d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:2.0-nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:8a9335e2357cb2f121f06ed2068db23aa7e320386041abd905606d20dede8080
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **453.3 MB (453292630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e12500b320f2e822f7d0d6adff806f9d7fc6a9bdbd654de87a8531bdc3199c99`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Wed, 19 Jun 2019 20:14:57 GMT
RUN cmd /S /C #(nop) COPY file:cbef9dc2466d1db4e0f62ba0b7e8f7cc23fa8024ed1fff51b47391f34f64f38c in \traefik.exe 
# Wed, 19 Jun 2019 20:15:04 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Wed, 19 Jun 2019 20:15:05 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Wed, 19 Jun 2019 20:15:06 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha6 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:553bb6ea0d4ffa2707d4003e292f3a860d0605a5d1a1ca1ced120ad69baa6e9c`  
		Last Modified: Wed, 19 Jun 2019 20:15:42 GMT  
		Size: 17.9 MB (17893023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3706ee9dfa84407686e468851f7756a983b5ada9ef31b1a6939b497c43f98ba0`  
		Last Modified: Wed, 19 Jun 2019 20:15:37 GMT  
		Size: 918.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ed4a594d209d40272924ddd32e748085e707e786e245d34cc97c62cdd07b5e`  
		Last Modified: Wed, 19 Jun 2019 20:15:37 GMT  
		Size: 929.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de1b6331fdaeb439d0f634251877786cef56759e2347d2f8c56a97ce39c9029`  
		Last Modified: Wed, 19 Jun 2019 20:15:37 GMT  
		Size: 942.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:alpine`

```console
$ docker pull traefik@sha256:2343a4ab0381da512dfb0673d0f02747279d5b4253401e5a2e864ca62058e9e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:alpine` - linux; amd64

```console
$ docker pull traefik@sha256:7b429dca82c09a93efdbb192e5b71eb1702400b969b81dfc76708b02675575c1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23711131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11f1b77e546ac35a5d14230c5c2014ee45d4e2d5ffc634927bda6481192b8874`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 03:12:07 GMT
RUN apk --no-cache add ca-certificates tzdata
# Wed, 29 May 2019 22:48:55 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.12/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 29 May 2019 22:48:55 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 29 May 2019 22:48:55 GMT
EXPOSE 80
# Wed, 29 May 2019 22:48:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 29 May 2019 22:48:55 GMT
CMD ["traefik"]
# Wed, 29 May 2019 22:48:55 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.12 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68e7f8284806d9f98c0c659038fc7f2498c964e8dfcdff9a661eacc824568fda`  
		Last Modified: Sat, 11 May 2019 03:12:36 GMT  
		Size: 696.1 KB (696144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4bee532dd171ff9a933fa762fe9440d46669c071ced87237efe96043f1aae87`  
		Last Modified: Wed, 29 May 2019 22:49:26 GMT  
		Size: 20.3 MB (20257632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25749e2097662ca70afcbd8aa807ce5a5615ad1674d226a348a5e9f8e3eec1ff`  
		Last Modified: Wed, 29 May 2019 22:49:20 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:657dcbd518217fa2627d8f5e51a6b48489906474d18882790b3eae443c048111
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.2 MB (22245489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8beccde92cdcf185c6d16bb45292d431bd4bdc7038fec6b8506fce0d1284c25`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:58:57 GMT
RUN apk --no-cache add ca-certificates tzdata
# Wed, 29 May 2019 22:50:11 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.12/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 29 May 2019 22:50:12 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 29 May 2019 22:50:13 GMT
EXPOSE 80
# Wed, 29 May 2019 22:50:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 29 May 2019 22:50:14 GMT
CMD ["traefik"]
# Wed, 29 May 2019 22:50:14 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.12 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:153b3e2b8588fe422e5874001d4bdddca455c8bca3902b236930cf11191bd0c0`  
		Last Modified: Sat, 11 May 2019 08:59:56 GMT  
		Size: 698.9 KB (698850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b0d4f0c2c8f1e0a83bae1e4eacdf7231adfc6a59deb9f7105339118c5959a1e`  
		Last Modified: Wed, 29 May 2019 22:51:00 GMT  
		Size: 19.0 MB (19002890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aaeb4a8815e693f05ab74b67008204541bcaf0b1ea413a9adfacfab520b0b49`  
		Last Modified: Wed, 29 May 2019 22:50:53 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:e5565377ad590c567b81dc72b22fb439f2e59cc665bc2fdf7585bd534b043afc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.9 MB (21941303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b4531f30ef7741996ac7c4d3ea4519c06d73865cd1b7a1c7da4684063658915`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 19 Jun 2019 20:39:47 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Wed, 19 Jun 2019 20:39:47 GMT
CMD ["/bin/sh"]
# Wed, 19 Jun 2019 20:41:05 GMT
RUN apk --no-cache add ca-certificates tzdata
# Wed, 19 Jun 2019 20:41:27 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.12/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 19 Jun 2019 20:41:28 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 19 Jun 2019 20:41:28 GMT
EXPOSE 80
# Wed, 19 Jun 2019 20:41:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 19 Jun 2019 20:41:29 GMT
CMD ["traefik"]
# Wed, 19 Jun 2019 20:41:29 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.12 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec749d99dfc2431e9417aaba2a694ba0d0cf95b50ae26a195182cb96929b306`  
		Last Modified: Wed, 19 Jun 2019 20:41:50 GMT  
		Size: 699.1 KB (699123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:461343555dfef15a6785d810615d43d2285f5e2d93998776ab23c68b0ac68467`  
		Last Modified: Wed, 19 Jun 2019 20:42:13 GMT  
		Size: 18.6 MB (18553080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90560e0f6353e32f8f1117e115972c1c6e8770339b1a414035ad52c451f264b8`  
		Last Modified: Wed, 19 Jun 2019 20:42:06 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:faisselle`

```console
$ docker pull traefik@sha256:dbbef4ea626b2cf71a031565eb751f0b62201be62b18c8b1d8f8dd2887af4af9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:faisselle` - linux; amd64

```console
$ docker pull traefik@sha256:0bddb7abb119a2426cd59713d79c2cb8aa19e64c0fc416bbc41a9ff075f65abd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.1 MB (18051722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:727669322043e469ef8870c1878f1360405336f72d55cd03fee377647f80c158`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 19 Mar 2019 21:34:26 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Wed, 19 Jun 2019 20:21:19 GMT
COPY file:f993a1cddf39963e59175213be2c37a74f207bfe4ef25841934cf821e5c1d720 in / 
# Wed, 19 Jun 2019 20:21:20 GMT
EXPOSE 80
# Wed, 19 Jun 2019 20:21:20 GMT
VOLUME [/tmp]
# Wed, 19 Jun 2019 20:21:20 GMT
ENTRYPOINT ["/traefik"]
# Wed, 19 Jun 2019 20:21:20 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha6 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:d572f7c8e98390811ccda70b3cd865d413636517e557d586db244257f25ef6df`  
		Last Modified: Tue, 19 Mar 2019 21:35:04 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:265b4f12928a311de2d0539ca376ff1a03889820eda5170e5d4306d7c210b025`  
		Last Modified: Wed, 19 Jun 2019 20:21:53 GMT  
		Size: 17.9 MB (17919700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:faisselle` - linux; arm variant v6

```console
$ docker pull traefik@sha256:04d5aad10f730aa1b7a6e527efd6681f448ee71098f694f80b93db2cb9c27832
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16909047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bdb4e18779806341dcd41b13feb228a0a67c4bd592b4081db2d17e336944d75`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 20 Mar 2019 08:11:08 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Wed, 19 Jun 2019 20:24:39 GMT
COPY file:18baec0ca932e9bdf81ea80b7cfe1313995b4fca6a825b667d715c0dbab98b82 in / 
# Wed, 19 Jun 2019 20:24:40 GMT
EXPOSE 80
# Wed, 19 Jun 2019 20:24:41 GMT
VOLUME [/tmp]
# Wed, 19 Jun 2019 20:24:42 GMT
ENTRYPOINT ["/traefik"]
# Wed, 19 Jun 2019 20:24:42 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha6 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:2b85204ff61918278f159c68b7d115600c72173e7f4db3f92d97b8ef4be1c8e9`  
		Last Modified: Wed, 20 Mar 2019 08:11:50 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:055ee6dcdeb330856bce715456ed7c9cc250f75ce88f792f458e95b710f74293`  
		Last Modified: Wed, 19 Jun 2019 20:25:38 GMT  
		Size: 16.8 MB (16777025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:faisselle` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:da9ed985e8ee1de7486c9886e0fdcb6fd78edf173fe3e264d97351889060ed8c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.6 MB (16611493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c24e3271a829ab9614c01932fa3cea1f285bfd398f00f86184a93824cf15c126`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 29 May 2019 22:48:34 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Wed, 19 Jun 2019 20:26:25 GMT
COPY file:a5016a7e321ae9e83a45b1ef04cbf615a8d3545d513b440b1fea241f2f518e02 in / 
# Wed, 19 Jun 2019 20:26:26 GMT
EXPOSE 80
# Wed, 19 Jun 2019 20:26:27 GMT
VOLUME [/tmp]
# Wed, 19 Jun 2019 20:26:27 GMT
ENTRYPOINT ["/traefik"]
# Wed, 19 Jun 2019 20:26:27 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha6 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:584016d61c187e4a6e7fe7b278382a810b56900deabfe42918d6ea510fc0cbe7`  
		Last Modified: Wed, 29 May 2019 22:49:25 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deb814019a4bdb8e603c77b6ac11a8ddc2c41131f18879553a7ff6e4bc86af0d`  
		Last Modified: Wed, 19 Jun 2019 20:27:15 GMT  
		Size: 16.5 MB (16479471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:faisselle-alpine`

```console
$ docker pull traefik@sha256:b60735242f57e9ae43d380d474e6fd56e126c150b7be1f08e04922008bf85ee4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:faisselle-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:0f8824b931799ca093c0ca9ab07eb22629f0d6af7031b79dab1a2426507d15b6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.4 MB (21373302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfe3891f8a0b320b9bc96f64d1122d5314d757c66af8cc935a7754087e4ef865`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 03:12:07 GMT
RUN apk --no-cache add ca-certificates tzdata
# Wed, 19 Jun 2019 20:21:30 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/containous/traefik/releases/download/v2.0.0-alpha6/traefik_v2.0.0-alpha6_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Wed, 19 Jun 2019 20:21:30 GMT
COPY file:34488cf16756639d0b23fe91a33c8606031ffcf600cde1df1b9666b4996f0312 in / 
# Wed, 19 Jun 2019 20:21:31 GMT
EXPOSE 80
# Wed, 19 Jun 2019 20:21:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 19 Jun 2019 20:21:31 GMT
CMD ["traefik"]
# Wed, 19 Jun 2019 20:21:31 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha6 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68e7f8284806d9f98c0c659038fc7f2498c964e8dfcdff9a661eacc824568fda`  
		Last Modified: Sat, 11 May 2019 03:12:36 GMT  
		Size: 696.1 KB (696144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:072b96b0ba3243350217ad9f88c7c61339575ac898997ea31802cfaf9d368680`  
		Last Modified: Wed, 19 Jun 2019 20:22:03 GMT  
		Size: 17.9 MB (17919775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7354c7ca9c7b7f96429110611edff8727c1e79ba38ee1dc42f646a9b80e74e2`  
		Last Modified: Wed, 19 Jun 2019 20:21:59 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:faisselle-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:6abdaf02f7d25c36e2bf323ab3418c86e70358f2a30540cf3d8408a5a8b76b71
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.0 MB (20019710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49e626563136ae46d283c68266e24d68237cd240a52c1ed5020763f8b2d8177c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:58:57 GMT
RUN apk --no-cache add ca-certificates tzdata
# Wed, 19 Jun 2019 20:24:51 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/containous/traefik/releases/download/v2.0.0-alpha6/traefik_v2.0.0-alpha6_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Wed, 19 Jun 2019 20:24:52 GMT
COPY file:34488cf16756639d0b23fe91a33c8606031ffcf600cde1df1b9666b4996f0312 in / 
# Wed, 19 Jun 2019 20:24:52 GMT
EXPOSE 80
# Wed, 19 Jun 2019 20:24:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 19 Jun 2019 20:24:53 GMT
CMD ["traefik"]
# Wed, 19 Jun 2019 20:24:54 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha6 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:153b3e2b8588fe422e5874001d4bdddca455c8bca3902b236930cf11191bd0c0`  
		Last Modified: Sat, 11 May 2019 08:59:56 GMT  
		Size: 698.9 KB (698850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8fa188125b7019f7c6cc8dae651454acab904d6f47f6186bc9d862a16e299fb`  
		Last Modified: Wed, 19 Jun 2019 20:25:52 GMT  
		Size: 16.8 MB (16777084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e54244f8d7cb693d5e6433e1d1bec2e8bd0ee630bb0b259936df75099dcf4e14`  
		Last Modified: Wed, 19 Jun 2019 20:25:47 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:faisselle-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:6e77966cf32896f4e7eb1a8b37c11be112f479318c04472b5d046fe536604b37
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.9 MB (19867922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d21d9d413b8d46fc2f7b6010d9c38548de23dc91c2c580b27c1de54600b53291`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 19 Jun 2019 20:39:47 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Wed, 19 Jun 2019 20:39:47 GMT
CMD ["/bin/sh"]
# Wed, 19 Jun 2019 20:41:05 GMT
RUN apk --no-cache add ca-certificates tzdata
# Wed, 19 Jun 2019 20:41:10 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/containous/traefik/releases/download/v2.0.0-alpha6/traefik_v2.0.0-alpha6_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Wed, 19 Jun 2019 20:41:10 GMT
COPY file:34488cf16756639d0b23fe91a33c8606031ffcf600cde1df1b9666b4996f0312 in / 
# Wed, 19 Jun 2019 20:41:11 GMT
EXPOSE 80
# Wed, 19 Jun 2019 20:41:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 19 Jun 2019 20:41:12 GMT
CMD ["traefik"]
# Wed, 19 Jun 2019 20:41:12 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha6 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec749d99dfc2431e9417aaba2a694ba0d0cf95b50ae26a195182cb96929b306`  
		Last Modified: Wed, 19 Jun 2019 20:41:50 GMT  
		Size: 699.1 KB (699123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26dd99a7b52854a97b888fdaed3fbe75a1f86746745dd148a4be7e78b8b73b03`  
		Last Modified: Wed, 19 Jun 2019 20:41:56 GMT  
		Size: 16.5 MB (16479671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfa189cbe06528e39e67a28953e4401b5e974aae445c73d0f99211186b7201a0`  
		Last Modified: Wed, 19 Jun 2019 20:41:50 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:faisselle-nanoserver`

```console
$ docker pull traefik@sha256:11bb17831dd6b886116d4d9f62957785c5d0501453095b33b81f40a2073f756d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:faisselle-nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:8a9335e2357cb2f121f06ed2068db23aa7e320386041abd905606d20dede8080
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **453.3 MB (453292630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e12500b320f2e822f7d0d6adff806f9d7fc6a9bdbd654de87a8531bdc3199c99`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Wed, 19 Jun 2019 20:14:57 GMT
RUN cmd /S /C #(nop) COPY file:cbef9dc2466d1db4e0f62ba0b7e8f7cc23fa8024ed1fff51b47391f34f64f38c in \traefik.exe 
# Wed, 19 Jun 2019 20:15:04 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Wed, 19 Jun 2019 20:15:05 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Wed, 19 Jun 2019 20:15:06 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha6 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:553bb6ea0d4ffa2707d4003e292f3a860d0605a5d1a1ca1ced120ad69baa6e9c`  
		Last Modified: Wed, 19 Jun 2019 20:15:42 GMT  
		Size: 17.9 MB (17893023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3706ee9dfa84407686e468851f7756a983b5ada9ef31b1a6939b497c43f98ba0`  
		Last Modified: Wed, 19 Jun 2019 20:15:37 GMT  
		Size: 918.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ed4a594d209d40272924ddd32e748085e707e786e245d34cc97c62cdd07b5e`  
		Last Modified: Wed, 19 Jun 2019 20:15:37 GMT  
		Size: 929.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de1b6331fdaeb439d0f634251877786cef56759e2347d2f8c56a97ce39c9029`  
		Last Modified: Wed, 19 Jun 2019 20:15:37 GMT  
		Size: 942.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:faisselle-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:11bb17831dd6b886116d4d9f62957785c5d0501453095b33b81f40a2073f756d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:faisselle-nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:8a9335e2357cb2f121f06ed2068db23aa7e320386041abd905606d20dede8080
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **453.3 MB (453292630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e12500b320f2e822f7d0d6adff806f9d7fc6a9bdbd654de87a8531bdc3199c99`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Wed, 19 Jun 2019 20:14:57 GMT
RUN cmd /S /C #(nop) COPY file:cbef9dc2466d1db4e0f62ba0b7e8f7cc23fa8024ed1fff51b47391f34f64f38c in \traefik.exe 
# Wed, 19 Jun 2019 20:15:04 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Wed, 19 Jun 2019 20:15:05 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Wed, 19 Jun 2019 20:15:06 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha6 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:553bb6ea0d4ffa2707d4003e292f3a860d0605a5d1a1ca1ced120ad69baa6e9c`  
		Last Modified: Wed, 19 Jun 2019 20:15:42 GMT  
		Size: 17.9 MB (17893023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3706ee9dfa84407686e468851f7756a983b5ada9ef31b1a6939b497c43f98ba0`  
		Last Modified: Wed, 19 Jun 2019 20:15:37 GMT  
		Size: 918.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ed4a594d209d40272924ddd32e748085e707e786e245d34cc97c62cdd07b5e`  
		Last Modified: Wed, 19 Jun 2019 20:15:37 GMT  
		Size: 929.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de1b6331fdaeb439d0f634251877786cef56759e2347d2f8c56a97ce39c9029`  
		Last Modified: Wed, 19 Jun 2019 20:15:37 GMT  
		Size: 942.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:latest`

```console
$ docker pull traefik@sha256:02cfdb77b0cd82d973dffb3dafe498283f82399bd75b335797d7f0fe3ebeccb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:latest` - linux; amd64

```console
$ docker pull traefik@sha256:9a77d02ad23622cd85e38eec127a85110ad73ba8258d8b457cf17bd3ad1eeef0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.4 MB (20389452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18471c10e6e4ba7bc20f9783355e98ea3c4314e961a3c78e9bd4ccf0322d2233`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 19 Mar 2019 21:34:26 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Wed, 29 May 2019 22:48:48 GMT
COPY file:7483056399b90b4253ba9b493edfe2f2ccb00a25c0194012e10a9a71699f0b7d in / 
# Wed, 29 May 2019 22:48:48 GMT
EXPOSE 80
# Wed, 29 May 2019 22:48:48 GMT
VOLUME [/tmp]
# Wed, 29 May 2019 22:48:48 GMT
ENTRYPOINT ["/traefik"]
# Wed, 29 May 2019 22:48:49 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.12 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:d572f7c8e98390811ccda70b3cd865d413636517e557d586db244257f25ef6df`  
		Last Modified: Tue, 19 Mar 2019 21:35:04 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d62b0f6adf296e9d9755911a50710773c9672a2c9ebbf094df4650ea98d87d0a`  
		Last Modified: Wed, 29 May 2019 22:49:14 GMT  
		Size: 20.3 MB (20257430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:latest` - linux; arm variant v6

```console
$ docker pull traefik@sha256:384bf5e4cfdfebcd705e7b2d4f697054b1f0c0a6d0ed5e5c7842e64197b3b0cd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 MB (19134685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0fc65eddfcc8918973eb1ad17b41c14af01a4ab1df47a7b9b308f39a54a2030`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 20 Mar 2019 08:11:08 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Wed, 29 May 2019 22:49:59 GMT
COPY file:87997d6398e61ce0db25407fdabd3d95a1ee9dc75562f6e1d04aed52443a149e in / 
# Wed, 29 May 2019 22:50:00 GMT
EXPOSE 80
# Wed, 29 May 2019 22:50:00 GMT
VOLUME [/tmp]
# Wed, 29 May 2019 22:50:01 GMT
ENTRYPOINT ["/traefik"]
# Wed, 29 May 2019 22:50:01 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.12 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:2b85204ff61918278f159c68b7d115600c72173e7f4db3f92d97b8ef4be1c8e9`  
		Last Modified: Wed, 20 Mar 2019 08:11:50 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abb6c58d427b03c445c7f0c64b6d1587ed86b058bebee04cb7621368def81940`  
		Last Modified: Wed, 29 May 2019 22:50:43 GMT  
		Size: 19.0 MB (19002663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:latest` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:7d46ac8daf836344a140d2c0d838b6096a8279c74147152d96cafac3298a8a69
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.7 MB (18684996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a74136b4c06290588ea1c841be1799e233c4ddf80b4443cc7a846a2909603dd`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 29 May 2019 22:48:34 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Wed, 29 May 2019 22:48:55 GMT
COPY file:33fed32ab33ccaa01dd62123bc618243a2104e9ab695025999d2fc38f373ff39 in / 
# Wed, 29 May 2019 22:48:56 GMT
EXPOSE 80
# Wed, 29 May 2019 22:48:56 GMT
VOLUME [/tmp]
# Wed, 29 May 2019 22:48:56 GMT
ENTRYPOINT ["/traefik"]
# Wed, 29 May 2019 22:48:57 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.12 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:584016d61c187e4a6e7fe7b278382a810b56900deabfe42918d6ea510fc0cbe7`  
		Last Modified: Wed, 29 May 2019 22:49:25 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63fb5586ac5d2f89d4ac1bf582fd8fc28c662869c242f3d5c3a408ed01795406`  
		Last Modified: Wed, 29 May 2019 22:50:07 GMT  
		Size: 18.6 MB (18552974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:maroilles`

```console
$ docker pull traefik@sha256:02cfdb77b0cd82d973dffb3dafe498283f82399bd75b335797d7f0fe3ebeccb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:maroilles` - linux; amd64

```console
$ docker pull traefik@sha256:9a77d02ad23622cd85e38eec127a85110ad73ba8258d8b457cf17bd3ad1eeef0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.4 MB (20389452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18471c10e6e4ba7bc20f9783355e98ea3c4314e961a3c78e9bd4ccf0322d2233`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 19 Mar 2019 21:34:26 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Wed, 29 May 2019 22:48:48 GMT
COPY file:7483056399b90b4253ba9b493edfe2f2ccb00a25c0194012e10a9a71699f0b7d in / 
# Wed, 29 May 2019 22:48:48 GMT
EXPOSE 80
# Wed, 29 May 2019 22:48:48 GMT
VOLUME [/tmp]
# Wed, 29 May 2019 22:48:48 GMT
ENTRYPOINT ["/traefik"]
# Wed, 29 May 2019 22:48:49 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.12 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:d572f7c8e98390811ccda70b3cd865d413636517e557d586db244257f25ef6df`  
		Last Modified: Tue, 19 Mar 2019 21:35:04 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d62b0f6adf296e9d9755911a50710773c9672a2c9ebbf094df4650ea98d87d0a`  
		Last Modified: Wed, 29 May 2019 22:49:14 GMT  
		Size: 20.3 MB (20257430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:maroilles` - linux; arm variant v6

```console
$ docker pull traefik@sha256:384bf5e4cfdfebcd705e7b2d4f697054b1f0c0a6d0ed5e5c7842e64197b3b0cd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 MB (19134685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0fc65eddfcc8918973eb1ad17b41c14af01a4ab1df47a7b9b308f39a54a2030`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 20 Mar 2019 08:11:08 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Wed, 29 May 2019 22:49:59 GMT
COPY file:87997d6398e61ce0db25407fdabd3d95a1ee9dc75562f6e1d04aed52443a149e in / 
# Wed, 29 May 2019 22:50:00 GMT
EXPOSE 80
# Wed, 29 May 2019 22:50:00 GMT
VOLUME [/tmp]
# Wed, 29 May 2019 22:50:01 GMT
ENTRYPOINT ["/traefik"]
# Wed, 29 May 2019 22:50:01 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.12 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:2b85204ff61918278f159c68b7d115600c72173e7f4db3f92d97b8ef4be1c8e9`  
		Last Modified: Wed, 20 Mar 2019 08:11:50 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abb6c58d427b03c445c7f0c64b6d1587ed86b058bebee04cb7621368def81940`  
		Last Modified: Wed, 29 May 2019 22:50:43 GMT  
		Size: 19.0 MB (19002663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:maroilles` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:7d46ac8daf836344a140d2c0d838b6096a8279c74147152d96cafac3298a8a69
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.7 MB (18684996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a74136b4c06290588ea1c841be1799e233c4ddf80b4443cc7a846a2909603dd`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 29 May 2019 22:48:34 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Wed, 29 May 2019 22:48:55 GMT
COPY file:33fed32ab33ccaa01dd62123bc618243a2104e9ab695025999d2fc38f373ff39 in / 
# Wed, 29 May 2019 22:48:56 GMT
EXPOSE 80
# Wed, 29 May 2019 22:48:56 GMT
VOLUME [/tmp]
# Wed, 29 May 2019 22:48:56 GMT
ENTRYPOINT ["/traefik"]
# Wed, 29 May 2019 22:48:57 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.12 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:584016d61c187e4a6e7fe7b278382a810b56900deabfe42918d6ea510fc0cbe7`  
		Last Modified: Wed, 29 May 2019 22:49:25 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63fb5586ac5d2f89d4ac1bf582fd8fc28c662869c242f3d5c3a408ed01795406`  
		Last Modified: Wed, 29 May 2019 22:50:07 GMT  
		Size: 18.6 MB (18552974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:maroilles-alpine`

```console
$ docker pull traefik@sha256:2343a4ab0381da512dfb0673d0f02747279d5b4253401e5a2e864ca62058e9e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:maroilles-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:7b429dca82c09a93efdbb192e5b71eb1702400b969b81dfc76708b02675575c1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23711131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11f1b77e546ac35a5d14230c5c2014ee45d4e2d5ffc634927bda6481192b8874`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 03:12:07 GMT
RUN apk --no-cache add ca-certificates tzdata
# Wed, 29 May 2019 22:48:55 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.12/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 29 May 2019 22:48:55 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 29 May 2019 22:48:55 GMT
EXPOSE 80
# Wed, 29 May 2019 22:48:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 29 May 2019 22:48:55 GMT
CMD ["traefik"]
# Wed, 29 May 2019 22:48:55 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.12 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68e7f8284806d9f98c0c659038fc7f2498c964e8dfcdff9a661eacc824568fda`  
		Last Modified: Sat, 11 May 2019 03:12:36 GMT  
		Size: 696.1 KB (696144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4bee532dd171ff9a933fa762fe9440d46669c071ced87237efe96043f1aae87`  
		Last Modified: Wed, 29 May 2019 22:49:26 GMT  
		Size: 20.3 MB (20257632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25749e2097662ca70afcbd8aa807ce5a5615ad1674d226a348a5e9f8e3eec1ff`  
		Last Modified: Wed, 29 May 2019 22:49:20 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:maroilles-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:657dcbd518217fa2627d8f5e51a6b48489906474d18882790b3eae443c048111
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.2 MB (22245489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8beccde92cdcf185c6d16bb45292d431bd4bdc7038fec6b8506fce0d1284c25`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:58:57 GMT
RUN apk --no-cache add ca-certificates tzdata
# Wed, 29 May 2019 22:50:11 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.12/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 29 May 2019 22:50:12 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 29 May 2019 22:50:13 GMT
EXPOSE 80
# Wed, 29 May 2019 22:50:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 29 May 2019 22:50:14 GMT
CMD ["traefik"]
# Wed, 29 May 2019 22:50:14 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.12 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:153b3e2b8588fe422e5874001d4bdddca455c8bca3902b236930cf11191bd0c0`  
		Last Modified: Sat, 11 May 2019 08:59:56 GMT  
		Size: 698.9 KB (698850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b0d4f0c2c8f1e0a83bae1e4eacdf7231adfc6a59deb9f7105339118c5959a1e`  
		Last Modified: Wed, 29 May 2019 22:51:00 GMT  
		Size: 19.0 MB (19002890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aaeb4a8815e693f05ab74b67008204541bcaf0b1ea413a9adfacfab520b0b49`  
		Last Modified: Wed, 29 May 2019 22:50:53 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:maroilles-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:e5565377ad590c567b81dc72b22fb439f2e59cc665bc2fdf7585bd534b043afc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.9 MB (21941303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b4531f30ef7741996ac7c4d3ea4519c06d73865cd1b7a1c7da4684063658915`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 19 Jun 2019 20:39:47 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Wed, 19 Jun 2019 20:39:47 GMT
CMD ["/bin/sh"]
# Wed, 19 Jun 2019 20:41:05 GMT
RUN apk --no-cache add ca-certificates tzdata
# Wed, 19 Jun 2019 20:41:27 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.12/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 19 Jun 2019 20:41:28 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 19 Jun 2019 20:41:28 GMT
EXPOSE 80
# Wed, 19 Jun 2019 20:41:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 19 Jun 2019 20:41:29 GMT
CMD ["traefik"]
# Wed, 19 Jun 2019 20:41:29 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.12 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec749d99dfc2431e9417aaba2a694ba0d0cf95b50ae26a195182cb96929b306`  
		Last Modified: Wed, 19 Jun 2019 20:41:50 GMT  
		Size: 699.1 KB (699123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:461343555dfef15a6785d810615d43d2285f5e2d93998776ab23c68b0ac68467`  
		Last Modified: Wed, 19 Jun 2019 20:42:13 GMT  
		Size: 18.6 MB (18553080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90560e0f6353e32f8f1117e115972c1c6e8770339b1a414035ad52c451f264b8`  
		Last Modified: Wed, 19 Jun 2019 20:42:06 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:maroilles-nanoserver`

```console
$ docker pull traefik@sha256:74ba53b15ab8902cfbdcd9179a9274b9129498cd125acb909ca7d3eaa0b76408
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:maroilles-nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:6de709a910adaabc6675736bf29da8a19c2465c752170be213af3f1bfeddcea5
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.7 MB (455662203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4464fd3906bd225e9ae745f8061f5b5795524841ceec3169ce11fccd8323d31c`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Wed, 29 May 2019 22:14:26 GMT
RUN cmd /S /C #(nop) COPY file:aa67ccac383ed7ea406c8c1d7ffbc0672861067b00d6bb66b5fc79cd1fc4abd6 in \traefik.exe 
# Wed, 29 May 2019 22:14:32 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Wed, 29 May 2019 22:14:33 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Wed, 29 May 2019 22:14:34 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.12 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:fe0d4c0f6b2858d0c75a62318bf3080d75c6071401ac23576dc046fe0e74a2ef`  
		Last Modified: Wed, 29 May 2019 22:15:26 GMT  
		Size: 20.3 MB (20262565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f578ae3e1e215beed05ec06469ea5994958a40bcb5776ae03b07ac90be18eeb5`  
		Last Modified: Wed, 29 May 2019 22:15:03 GMT  
		Size: 926.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:935d8dc299349e893457eea58511a3be8ebe601642f11acda2f13f0cc5e08785`  
		Last Modified: Wed, 29 May 2019 22:15:03 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39267f6fbebdddabbd7fb6a1bb5b02aae79dcc9cbc206d588898de4d385747de`  
		Last Modified: Wed, 29 May 2019 22:15:04 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:maroilles-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:74ba53b15ab8902cfbdcd9179a9274b9129498cd125acb909ca7d3eaa0b76408
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:maroilles-nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:6de709a910adaabc6675736bf29da8a19c2465c752170be213af3f1bfeddcea5
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.7 MB (455662203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4464fd3906bd225e9ae745f8061f5b5795524841ceec3169ce11fccd8323d31c`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Wed, 29 May 2019 22:14:26 GMT
RUN cmd /S /C #(nop) COPY file:aa67ccac383ed7ea406c8c1d7ffbc0672861067b00d6bb66b5fc79cd1fc4abd6 in \traefik.exe 
# Wed, 29 May 2019 22:14:32 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Wed, 29 May 2019 22:14:33 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Wed, 29 May 2019 22:14:34 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.12 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:fe0d4c0f6b2858d0c75a62318bf3080d75c6071401ac23576dc046fe0e74a2ef`  
		Last Modified: Wed, 29 May 2019 22:15:26 GMT  
		Size: 20.3 MB (20262565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f578ae3e1e215beed05ec06469ea5994958a40bcb5776ae03b07ac90be18eeb5`  
		Last Modified: Wed, 29 May 2019 22:15:03 GMT  
		Size: 926.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:935d8dc299349e893457eea58511a3be8ebe601642f11acda2f13f0cc5e08785`  
		Last Modified: Wed, 29 May 2019 22:15:03 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39267f6fbebdddabbd7fb6a1bb5b02aae79dcc9cbc206d588898de4d385747de`  
		Last Modified: Wed, 29 May 2019 22:15:04 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:nanoserver`

```console
$ docker pull traefik@sha256:74ba53b15ab8902cfbdcd9179a9274b9129498cd125acb909ca7d3eaa0b76408
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:6de709a910adaabc6675736bf29da8a19c2465c752170be213af3f1bfeddcea5
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.7 MB (455662203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4464fd3906bd225e9ae745f8061f5b5795524841ceec3169ce11fccd8323d31c`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Wed, 29 May 2019 22:14:26 GMT
RUN cmd /S /C #(nop) COPY file:aa67ccac383ed7ea406c8c1d7ffbc0672861067b00d6bb66b5fc79cd1fc4abd6 in \traefik.exe 
# Wed, 29 May 2019 22:14:32 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Wed, 29 May 2019 22:14:33 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Wed, 29 May 2019 22:14:34 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.12 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:fe0d4c0f6b2858d0c75a62318bf3080d75c6071401ac23576dc046fe0e74a2ef`  
		Last Modified: Wed, 29 May 2019 22:15:26 GMT  
		Size: 20.3 MB (20262565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f578ae3e1e215beed05ec06469ea5994958a40bcb5776ae03b07ac90be18eeb5`  
		Last Modified: Wed, 29 May 2019 22:15:03 GMT  
		Size: 926.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:935d8dc299349e893457eea58511a3be8ebe601642f11acda2f13f0cc5e08785`  
		Last Modified: Wed, 29 May 2019 22:15:03 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39267f6fbebdddabbd7fb6a1bb5b02aae79dcc9cbc206d588898de4d385747de`  
		Last Modified: Wed, 29 May 2019 22:15:04 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:nanoserver-sac2016`

```console
$ docker pull traefik@sha256:74ba53b15ab8902cfbdcd9179a9274b9129498cd125acb909ca7d3eaa0b76408
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:6de709a910adaabc6675736bf29da8a19c2465c752170be213af3f1bfeddcea5
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.7 MB (455662203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4464fd3906bd225e9ae745f8061f5b5795524841ceec3169ce11fccd8323d31c`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Wed, 29 May 2019 22:14:26 GMT
RUN cmd /S /C #(nop) COPY file:aa67ccac383ed7ea406c8c1d7ffbc0672861067b00d6bb66b5fc79cd1fc4abd6 in \traefik.exe 
# Wed, 29 May 2019 22:14:32 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Wed, 29 May 2019 22:14:33 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Wed, 29 May 2019 22:14:34 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.12 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:fe0d4c0f6b2858d0c75a62318bf3080d75c6071401ac23576dc046fe0e74a2ef`  
		Last Modified: Wed, 29 May 2019 22:15:26 GMT  
		Size: 20.3 MB (20262565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f578ae3e1e215beed05ec06469ea5994958a40bcb5776ae03b07ac90be18eeb5`  
		Last Modified: Wed, 29 May 2019 22:15:03 GMT  
		Size: 926.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:935d8dc299349e893457eea58511a3be8ebe601642f11acda2f13f0cc5e08785`  
		Last Modified: Wed, 29 May 2019 22:15:03 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39267f6fbebdddabbd7fb6a1bb5b02aae79dcc9cbc206d588898de4d385747de`  
		Last Modified: Wed, 29 May 2019 22:15:04 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7`

```console
$ docker pull traefik@sha256:02cfdb77b0cd82d973dffb3dafe498283f82399bd75b335797d7f0fe3ebeccb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.7` - linux; amd64

```console
$ docker pull traefik@sha256:9a77d02ad23622cd85e38eec127a85110ad73ba8258d8b457cf17bd3ad1eeef0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.4 MB (20389452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18471c10e6e4ba7bc20f9783355e98ea3c4314e961a3c78e9bd4ccf0322d2233`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 19 Mar 2019 21:34:26 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Wed, 29 May 2019 22:48:48 GMT
COPY file:7483056399b90b4253ba9b493edfe2f2ccb00a25c0194012e10a9a71699f0b7d in / 
# Wed, 29 May 2019 22:48:48 GMT
EXPOSE 80
# Wed, 29 May 2019 22:48:48 GMT
VOLUME [/tmp]
# Wed, 29 May 2019 22:48:48 GMT
ENTRYPOINT ["/traefik"]
# Wed, 29 May 2019 22:48:49 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.12 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:d572f7c8e98390811ccda70b3cd865d413636517e557d586db244257f25ef6df`  
		Last Modified: Tue, 19 Mar 2019 21:35:04 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d62b0f6adf296e9d9755911a50710773c9672a2c9ebbf094df4650ea98d87d0a`  
		Last Modified: Wed, 29 May 2019 22:49:14 GMT  
		Size: 20.3 MB (20257430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7` - linux; arm variant v6

```console
$ docker pull traefik@sha256:384bf5e4cfdfebcd705e7b2d4f697054b1f0c0a6d0ed5e5c7842e64197b3b0cd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 MB (19134685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0fc65eddfcc8918973eb1ad17b41c14af01a4ab1df47a7b9b308f39a54a2030`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 20 Mar 2019 08:11:08 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Wed, 29 May 2019 22:49:59 GMT
COPY file:87997d6398e61ce0db25407fdabd3d95a1ee9dc75562f6e1d04aed52443a149e in / 
# Wed, 29 May 2019 22:50:00 GMT
EXPOSE 80
# Wed, 29 May 2019 22:50:00 GMT
VOLUME [/tmp]
# Wed, 29 May 2019 22:50:01 GMT
ENTRYPOINT ["/traefik"]
# Wed, 29 May 2019 22:50:01 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.12 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:2b85204ff61918278f159c68b7d115600c72173e7f4db3f92d97b8ef4be1c8e9`  
		Last Modified: Wed, 20 Mar 2019 08:11:50 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abb6c58d427b03c445c7f0c64b6d1587ed86b058bebee04cb7621368def81940`  
		Last Modified: Wed, 29 May 2019 22:50:43 GMT  
		Size: 19.0 MB (19002663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:7d46ac8daf836344a140d2c0d838b6096a8279c74147152d96cafac3298a8a69
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.7 MB (18684996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a74136b4c06290588ea1c841be1799e233c4ddf80b4443cc7a846a2909603dd`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 29 May 2019 22:48:34 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Wed, 29 May 2019 22:48:55 GMT
COPY file:33fed32ab33ccaa01dd62123bc618243a2104e9ab695025999d2fc38f373ff39 in / 
# Wed, 29 May 2019 22:48:56 GMT
EXPOSE 80
# Wed, 29 May 2019 22:48:56 GMT
VOLUME [/tmp]
# Wed, 29 May 2019 22:48:56 GMT
ENTRYPOINT ["/traefik"]
# Wed, 29 May 2019 22:48:57 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.12 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:584016d61c187e4a6e7fe7b278382a810b56900deabfe42918d6ea510fc0cbe7`  
		Last Modified: Wed, 29 May 2019 22:49:25 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63fb5586ac5d2f89d4ac1bf582fd8fc28c662869c242f3d5c3a408ed01795406`  
		Last Modified: Wed, 29 May 2019 22:50:07 GMT  
		Size: 18.6 MB (18552974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7.11-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:74ba53b15ab8902cfbdcd9179a9274b9129498cd125acb909ca7d3eaa0b76408
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:v1.7.11-nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:6de709a910adaabc6675736bf29da8a19c2465c752170be213af3f1bfeddcea5
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.7 MB (455662203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4464fd3906bd225e9ae745f8061f5b5795524841ceec3169ce11fccd8323d31c`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Wed, 29 May 2019 22:14:26 GMT
RUN cmd /S /C #(nop) COPY file:aa67ccac383ed7ea406c8c1d7ffbc0672861067b00d6bb66b5fc79cd1fc4abd6 in \traefik.exe 
# Wed, 29 May 2019 22:14:32 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Wed, 29 May 2019 22:14:33 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Wed, 29 May 2019 22:14:34 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.12 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:fe0d4c0f6b2858d0c75a62318bf3080d75c6071401ac23576dc046fe0e74a2ef`  
		Last Modified: Wed, 29 May 2019 22:15:26 GMT  
		Size: 20.3 MB (20262565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f578ae3e1e215beed05ec06469ea5994958a40bcb5776ae03b07ac90be18eeb5`  
		Last Modified: Wed, 29 May 2019 22:15:03 GMT  
		Size: 926.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:935d8dc299349e893457eea58511a3be8ebe601642f11acda2f13f0cc5e08785`  
		Last Modified: Wed, 29 May 2019 22:15:03 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39267f6fbebdddabbd7fb6a1bb5b02aae79dcc9cbc206d588898de4d385747de`  
		Last Modified: Wed, 29 May 2019 22:15:04 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7.12`

```console
$ docker pull traefik@sha256:02cfdb77b0cd82d973dffb3dafe498283f82399bd75b335797d7f0fe3ebeccb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.7.12` - linux; amd64

```console
$ docker pull traefik@sha256:9a77d02ad23622cd85e38eec127a85110ad73ba8258d8b457cf17bd3ad1eeef0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.4 MB (20389452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18471c10e6e4ba7bc20f9783355e98ea3c4314e961a3c78e9bd4ccf0322d2233`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 19 Mar 2019 21:34:26 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Wed, 29 May 2019 22:48:48 GMT
COPY file:7483056399b90b4253ba9b493edfe2f2ccb00a25c0194012e10a9a71699f0b7d in / 
# Wed, 29 May 2019 22:48:48 GMT
EXPOSE 80
# Wed, 29 May 2019 22:48:48 GMT
VOLUME [/tmp]
# Wed, 29 May 2019 22:48:48 GMT
ENTRYPOINT ["/traefik"]
# Wed, 29 May 2019 22:48:49 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.12 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:d572f7c8e98390811ccda70b3cd865d413636517e557d586db244257f25ef6df`  
		Last Modified: Tue, 19 Mar 2019 21:35:04 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d62b0f6adf296e9d9755911a50710773c9672a2c9ebbf094df4650ea98d87d0a`  
		Last Modified: Wed, 29 May 2019 22:49:14 GMT  
		Size: 20.3 MB (20257430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7.12` - linux; arm variant v6

```console
$ docker pull traefik@sha256:384bf5e4cfdfebcd705e7b2d4f697054b1f0c0a6d0ed5e5c7842e64197b3b0cd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 MB (19134685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0fc65eddfcc8918973eb1ad17b41c14af01a4ab1df47a7b9b308f39a54a2030`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 20 Mar 2019 08:11:08 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Wed, 29 May 2019 22:49:59 GMT
COPY file:87997d6398e61ce0db25407fdabd3d95a1ee9dc75562f6e1d04aed52443a149e in / 
# Wed, 29 May 2019 22:50:00 GMT
EXPOSE 80
# Wed, 29 May 2019 22:50:00 GMT
VOLUME [/tmp]
# Wed, 29 May 2019 22:50:01 GMT
ENTRYPOINT ["/traefik"]
# Wed, 29 May 2019 22:50:01 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.12 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:2b85204ff61918278f159c68b7d115600c72173e7f4db3f92d97b8ef4be1c8e9`  
		Last Modified: Wed, 20 Mar 2019 08:11:50 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abb6c58d427b03c445c7f0c64b6d1587ed86b058bebee04cb7621368def81940`  
		Last Modified: Wed, 29 May 2019 22:50:43 GMT  
		Size: 19.0 MB (19002663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7.12` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:7d46ac8daf836344a140d2c0d838b6096a8279c74147152d96cafac3298a8a69
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.7 MB (18684996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a74136b4c06290588ea1c841be1799e233c4ddf80b4443cc7a846a2909603dd`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 29 May 2019 22:48:34 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Wed, 29 May 2019 22:48:55 GMT
COPY file:33fed32ab33ccaa01dd62123bc618243a2104e9ab695025999d2fc38f373ff39 in / 
# Wed, 29 May 2019 22:48:56 GMT
EXPOSE 80
# Wed, 29 May 2019 22:48:56 GMT
VOLUME [/tmp]
# Wed, 29 May 2019 22:48:56 GMT
ENTRYPOINT ["/traefik"]
# Wed, 29 May 2019 22:48:57 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.12 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:584016d61c187e4a6e7fe7b278382a810b56900deabfe42918d6ea510fc0cbe7`  
		Last Modified: Wed, 29 May 2019 22:49:25 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63fb5586ac5d2f89d4ac1bf582fd8fc28c662869c242f3d5c3a408ed01795406`  
		Last Modified: Wed, 29 May 2019 22:50:07 GMT  
		Size: 18.6 MB (18552974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7.12-alpine`

```console
$ docker pull traefik@sha256:2343a4ab0381da512dfb0673d0f02747279d5b4253401e5a2e864ca62058e9e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.7.12-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:7b429dca82c09a93efdbb192e5b71eb1702400b969b81dfc76708b02675575c1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23711131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11f1b77e546ac35a5d14230c5c2014ee45d4e2d5ffc634927bda6481192b8874`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 03:12:07 GMT
RUN apk --no-cache add ca-certificates tzdata
# Wed, 29 May 2019 22:48:55 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.12/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 29 May 2019 22:48:55 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 29 May 2019 22:48:55 GMT
EXPOSE 80
# Wed, 29 May 2019 22:48:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 29 May 2019 22:48:55 GMT
CMD ["traefik"]
# Wed, 29 May 2019 22:48:55 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.12 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68e7f8284806d9f98c0c659038fc7f2498c964e8dfcdff9a661eacc824568fda`  
		Last Modified: Sat, 11 May 2019 03:12:36 GMT  
		Size: 696.1 KB (696144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4bee532dd171ff9a933fa762fe9440d46669c071ced87237efe96043f1aae87`  
		Last Modified: Wed, 29 May 2019 22:49:26 GMT  
		Size: 20.3 MB (20257632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25749e2097662ca70afcbd8aa807ce5a5615ad1674d226a348a5e9f8e3eec1ff`  
		Last Modified: Wed, 29 May 2019 22:49:20 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7.12-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:657dcbd518217fa2627d8f5e51a6b48489906474d18882790b3eae443c048111
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.2 MB (22245489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8beccde92cdcf185c6d16bb45292d431bd4bdc7038fec6b8506fce0d1284c25`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:58:57 GMT
RUN apk --no-cache add ca-certificates tzdata
# Wed, 29 May 2019 22:50:11 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.12/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 29 May 2019 22:50:12 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 29 May 2019 22:50:13 GMT
EXPOSE 80
# Wed, 29 May 2019 22:50:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 29 May 2019 22:50:14 GMT
CMD ["traefik"]
# Wed, 29 May 2019 22:50:14 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.12 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:153b3e2b8588fe422e5874001d4bdddca455c8bca3902b236930cf11191bd0c0`  
		Last Modified: Sat, 11 May 2019 08:59:56 GMT  
		Size: 698.9 KB (698850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b0d4f0c2c8f1e0a83bae1e4eacdf7231adfc6a59deb9f7105339118c5959a1e`  
		Last Modified: Wed, 29 May 2019 22:51:00 GMT  
		Size: 19.0 MB (19002890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aaeb4a8815e693f05ab74b67008204541bcaf0b1ea413a9adfacfab520b0b49`  
		Last Modified: Wed, 29 May 2019 22:50:53 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7.12-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:e5565377ad590c567b81dc72b22fb439f2e59cc665bc2fdf7585bd534b043afc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.9 MB (21941303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b4531f30ef7741996ac7c4d3ea4519c06d73865cd1b7a1c7da4684063658915`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 19 Jun 2019 20:39:47 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Wed, 19 Jun 2019 20:39:47 GMT
CMD ["/bin/sh"]
# Wed, 19 Jun 2019 20:41:05 GMT
RUN apk --no-cache add ca-certificates tzdata
# Wed, 19 Jun 2019 20:41:27 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.12/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 19 Jun 2019 20:41:28 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 19 Jun 2019 20:41:28 GMT
EXPOSE 80
# Wed, 19 Jun 2019 20:41:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 19 Jun 2019 20:41:29 GMT
CMD ["traefik"]
# Wed, 19 Jun 2019 20:41:29 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.12 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec749d99dfc2431e9417aaba2a694ba0d0cf95b50ae26a195182cb96929b306`  
		Last Modified: Wed, 19 Jun 2019 20:41:50 GMT  
		Size: 699.1 KB (699123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:461343555dfef15a6785d810615d43d2285f5e2d93998776ab23c68b0ac68467`  
		Last Modified: Wed, 19 Jun 2019 20:42:13 GMT  
		Size: 18.6 MB (18553080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90560e0f6353e32f8f1117e115972c1c6e8770339b1a414035ad52c451f264b8`  
		Last Modified: Wed, 19 Jun 2019 20:42:06 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7.12-nanoserver`

```console
$ docker pull traefik@sha256:74ba53b15ab8902cfbdcd9179a9274b9129498cd125acb909ca7d3eaa0b76408
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:v1.7.12-nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:6de709a910adaabc6675736bf29da8a19c2465c752170be213af3f1bfeddcea5
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.7 MB (455662203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4464fd3906bd225e9ae745f8061f5b5795524841ceec3169ce11fccd8323d31c`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Wed, 29 May 2019 22:14:26 GMT
RUN cmd /S /C #(nop) COPY file:aa67ccac383ed7ea406c8c1d7ffbc0672861067b00d6bb66b5fc79cd1fc4abd6 in \traefik.exe 
# Wed, 29 May 2019 22:14:32 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Wed, 29 May 2019 22:14:33 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Wed, 29 May 2019 22:14:34 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.12 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:fe0d4c0f6b2858d0c75a62318bf3080d75c6071401ac23576dc046fe0e74a2ef`  
		Last Modified: Wed, 29 May 2019 22:15:26 GMT  
		Size: 20.3 MB (20262565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f578ae3e1e215beed05ec06469ea5994958a40bcb5776ae03b07ac90be18eeb5`  
		Last Modified: Wed, 29 May 2019 22:15:03 GMT  
		Size: 926.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:935d8dc299349e893457eea58511a3be8ebe601642f11acda2f13f0cc5e08785`  
		Last Modified: Wed, 29 May 2019 22:15:03 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39267f6fbebdddabbd7fb6a1bb5b02aae79dcc9cbc206d588898de4d385747de`  
		Last Modified: Wed, 29 May 2019 22:15:04 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7-alpine`

```console
$ docker pull traefik@sha256:2343a4ab0381da512dfb0673d0f02747279d5b4253401e5a2e864ca62058e9e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.7-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:7b429dca82c09a93efdbb192e5b71eb1702400b969b81dfc76708b02675575c1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23711131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11f1b77e546ac35a5d14230c5c2014ee45d4e2d5ffc634927bda6481192b8874`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 03:12:07 GMT
RUN apk --no-cache add ca-certificates tzdata
# Wed, 29 May 2019 22:48:55 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.12/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 29 May 2019 22:48:55 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 29 May 2019 22:48:55 GMT
EXPOSE 80
# Wed, 29 May 2019 22:48:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 29 May 2019 22:48:55 GMT
CMD ["traefik"]
# Wed, 29 May 2019 22:48:55 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.12 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68e7f8284806d9f98c0c659038fc7f2498c964e8dfcdff9a661eacc824568fda`  
		Last Modified: Sat, 11 May 2019 03:12:36 GMT  
		Size: 696.1 KB (696144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4bee532dd171ff9a933fa762fe9440d46669c071ced87237efe96043f1aae87`  
		Last Modified: Wed, 29 May 2019 22:49:26 GMT  
		Size: 20.3 MB (20257632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25749e2097662ca70afcbd8aa807ce5a5615ad1674d226a348a5e9f8e3eec1ff`  
		Last Modified: Wed, 29 May 2019 22:49:20 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:657dcbd518217fa2627d8f5e51a6b48489906474d18882790b3eae443c048111
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.2 MB (22245489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8beccde92cdcf185c6d16bb45292d431bd4bdc7038fec6b8506fce0d1284c25`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:58:57 GMT
RUN apk --no-cache add ca-certificates tzdata
# Wed, 29 May 2019 22:50:11 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.12/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 29 May 2019 22:50:12 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 29 May 2019 22:50:13 GMT
EXPOSE 80
# Wed, 29 May 2019 22:50:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 29 May 2019 22:50:14 GMT
CMD ["traefik"]
# Wed, 29 May 2019 22:50:14 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.12 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:153b3e2b8588fe422e5874001d4bdddca455c8bca3902b236930cf11191bd0c0`  
		Last Modified: Sat, 11 May 2019 08:59:56 GMT  
		Size: 698.9 KB (698850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b0d4f0c2c8f1e0a83bae1e4eacdf7231adfc6a59deb9f7105339118c5959a1e`  
		Last Modified: Wed, 29 May 2019 22:51:00 GMT  
		Size: 19.0 MB (19002890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aaeb4a8815e693f05ab74b67008204541bcaf0b1ea413a9adfacfab520b0b49`  
		Last Modified: Wed, 29 May 2019 22:50:53 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:e5565377ad590c567b81dc72b22fb439f2e59cc665bc2fdf7585bd534b043afc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.9 MB (21941303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b4531f30ef7741996ac7c4d3ea4519c06d73865cd1b7a1c7da4684063658915`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 19 Jun 2019 20:39:47 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Wed, 19 Jun 2019 20:39:47 GMT
CMD ["/bin/sh"]
# Wed, 19 Jun 2019 20:41:05 GMT
RUN apk --no-cache add ca-certificates tzdata
# Wed, 19 Jun 2019 20:41:27 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.12/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 19 Jun 2019 20:41:28 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 19 Jun 2019 20:41:28 GMT
EXPOSE 80
# Wed, 19 Jun 2019 20:41:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 19 Jun 2019 20:41:29 GMT
CMD ["traefik"]
# Wed, 19 Jun 2019 20:41:29 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.12 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec749d99dfc2431e9417aaba2a694ba0d0cf95b50ae26a195182cb96929b306`  
		Last Modified: Wed, 19 Jun 2019 20:41:50 GMT  
		Size: 699.1 KB (699123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:461343555dfef15a6785d810615d43d2285f5e2d93998776ab23c68b0ac68467`  
		Last Modified: Wed, 19 Jun 2019 20:42:13 GMT  
		Size: 18.6 MB (18553080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90560e0f6353e32f8f1117e115972c1c6e8770339b1a414035ad52c451f264b8`  
		Last Modified: Wed, 19 Jun 2019 20:42:06 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7-nanoserver`

```console
$ docker pull traefik@sha256:74ba53b15ab8902cfbdcd9179a9274b9129498cd125acb909ca7d3eaa0b76408
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:v1.7-nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:6de709a910adaabc6675736bf29da8a19c2465c752170be213af3f1bfeddcea5
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.7 MB (455662203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4464fd3906bd225e9ae745f8061f5b5795524841ceec3169ce11fccd8323d31c`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Wed, 29 May 2019 22:14:26 GMT
RUN cmd /S /C #(nop) COPY file:aa67ccac383ed7ea406c8c1d7ffbc0672861067b00d6bb66b5fc79cd1fc4abd6 in \traefik.exe 
# Wed, 29 May 2019 22:14:32 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Wed, 29 May 2019 22:14:33 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Wed, 29 May 2019 22:14:34 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.12 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:fe0d4c0f6b2858d0c75a62318bf3080d75c6071401ac23576dc046fe0e74a2ef`  
		Last Modified: Wed, 29 May 2019 22:15:26 GMT  
		Size: 20.3 MB (20262565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f578ae3e1e215beed05ec06469ea5994958a40bcb5776ae03b07ac90be18eeb5`  
		Last Modified: Wed, 29 May 2019 22:15:03 GMT  
		Size: 926.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:935d8dc299349e893457eea58511a3be8ebe601642f11acda2f13f0cc5e08785`  
		Last Modified: Wed, 29 May 2019 22:15:03 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39267f6fbebdddabbd7fb6a1bb5b02aae79dcc9cbc206d588898de4d385747de`  
		Last Modified: Wed, 29 May 2019 22:15:04 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:74ba53b15ab8902cfbdcd9179a9274b9129498cd125acb909ca7d3eaa0b76408
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:v1.7-nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:6de709a910adaabc6675736bf29da8a19c2465c752170be213af3f1bfeddcea5
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.7 MB (455662203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4464fd3906bd225e9ae745f8061f5b5795524841ceec3169ce11fccd8323d31c`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Wed, 29 May 2019 22:14:26 GMT
RUN cmd /S /C #(nop) COPY file:aa67ccac383ed7ea406c8c1d7ffbc0672861067b00d6bb66b5fc79cd1fc4abd6 in \traefik.exe 
# Wed, 29 May 2019 22:14:32 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Wed, 29 May 2019 22:14:33 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Wed, 29 May 2019 22:14:34 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.12 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:fe0d4c0f6b2858d0c75a62318bf3080d75c6071401ac23576dc046fe0e74a2ef`  
		Last Modified: Wed, 29 May 2019 22:15:26 GMT  
		Size: 20.3 MB (20262565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f578ae3e1e215beed05ec06469ea5994958a40bcb5776ae03b07ac90be18eeb5`  
		Last Modified: Wed, 29 May 2019 22:15:03 GMT  
		Size: 926.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:935d8dc299349e893457eea58511a3be8ebe601642f11acda2f13f0cc5e08785`  
		Last Modified: Wed, 29 May 2019 22:15:03 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39267f6fbebdddabbd7fb6a1bb5b02aae79dcc9cbc206d588898de4d385747de`  
		Last Modified: Wed, 29 May 2019 22:15:04 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v2.0`

```console
$ docker pull traefik@sha256:dbbef4ea626b2cf71a031565eb751f0b62201be62b18c8b1d8f8dd2887af4af9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v2.0` - linux; amd64

```console
$ docker pull traefik@sha256:0bddb7abb119a2426cd59713d79c2cb8aa19e64c0fc416bbc41a9ff075f65abd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.1 MB (18051722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:727669322043e469ef8870c1878f1360405336f72d55cd03fee377647f80c158`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 19 Mar 2019 21:34:26 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Wed, 19 Jun 2019 20:21:19 GMT
COPY file:f993a1cddf39963e59175213be2c37a74f207bfe4ef25841934cf821e5c1d720 in / 
# Wed, 19 Jun 2019 20:21:20 GMT
EXPOSE 80
# Wed, 19 Jun 2019 20:21:20 GMT
VOLUME [/tmp]
# Wed, 19 Jun 2019 20:21:20 GMT
ENTRYPOINT ["/traefik"]
# Wed, 19 Jun 2019 20:21:20 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha6 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:d572f7c8e98390811ccda70b3cd865d413636517e557d586db244257f25ef6df`  
		Last Modified: Tue, 19 Mar 2019 21:35:04 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:265b4f12928a311de2d0539ca376ff1a03889820eda5170e5d4306d7c210b025`  
		Last Modified: Wed, 19 Jun 2019 20:21:53 GMT  
		Size: 17.9 MB (17919700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v2.0` - linux; arm variant v6

```console
$ docker pull traefik@sha256:04d5aad10f730aa1b7a6e527efd6681f448ee71098f694f80b93db2cb9c27832
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16909047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bdb4e18779806341dcd41b13feb228a0a67c4bd592b4081db2d17e336944d75`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 20 Mar 2019 08:11:08 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Wed, 19 Jun 2019 20:24:39 GMT
COPY file:18baec0ca932e9bdf81ea80b7cfe1313995b4fca6a825b667d715c0dbab98b82 in / 
# Wed, 19 Jun 2019 20:24:40 GMT
EXPOSE 80
# Wed, 19 Jun 2019 20:24:41 GMT
VOLUME [/tmp]
# Wed, 19 Jun 2019 20:24:42 GMT
ENTRYPOINT ["/traefik"]
# Wed, 19 Jun 2019 20:24:42 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha6 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:2b85204ff61918278f159c68b7d115600c72173e7f4db3f92d97b8ef4be1c8e9`  
		Last Modified: Wed, 20 Mar 2019 08:11:50 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:055ee6dcdeb330856bce715456ed7c9cc250f75ce88f792f458e95b710f74293`  
		Last Modified: Wed, 19 Jun 2019 20:25:38 GMT  
		Size: 16.8 MB (16777025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v2.0` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:da9ed985e8ee1de7486c9886e0fdcb6fd78edf173fe3e264d97351889060ed8c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.6 MB (16611493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c24e3271a829ab9614c01932fa3cea1f285bfd398f00f86184a93824cf15c126`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 29 May 2019 22:48:34 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Wed, 19 Jun 2019 20:26:25 GMT
COPY file:a5016a7e321ae9e83a45b1ef04cbf615a8d3545d513b440b1fea241f2f518e02 in / 
# Wed, 19 Jun 2019 20:26:26 GMT
EXPOSE 80
# Wed, 19 Jun 2019 20:26:27 GMT
VOLUME [/tmp]
# Wed, 19 Jun 2019 20:26:27 GMT
ENTRYPOINT ["/traefik"]
# Wed, 19 Jun 2019 20:26:27 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha6 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:584016d61c187e4a6e7fe7b278382a810b56900deabfe42918d6ea510fc0cbe7`  
		Last Modified: Wed, 29 May 2019 22:49:25 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deb814019a4bdb8e603c77b6ac11a8ddc2c41131f18879553a7ff6e4bc86af0d`  
		Last Modified: Wed, 19 Jun 2019 20:27:15 GMT  
		Size: 16.5 MB (16479471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v2.0.0-alpha6`

```console
$ docker pull traefik@sha256:dbbef4ea626b2cf71a031565eb751f0b62201be62b18c8b1d8f8dd2887af4af9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v2.0.0-alpha6` - linux; amd64

```console
$ docker pull traefik@sha256:0bddb7abb119a2426cd59713d79c2cb8aa19e64c0fc416bbc41a9ff075f65abd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.1 MB (18051722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:727669322043e469ef8870c1878f1360405336f72d55cd03fee377647f80c158`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 19 Mar 2019 21:34:26 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Wed, 19 Jun 2019 20:21:19 GMT
COPY file:f993a1cddf39963e59175213be2c37a74f207bfe4ef25841934cf821e5c1d720 in / 
# Wed, 19 Jun 2019 20:21:20 GMT
EXPOSE 80
# Wed, 19 Jun 2019 20:21:20 GMT
VOLUME [/tmp]
# Wed, 19 Jun 2019 20:21:20 GMT
ENTRYPOINT ["/traefik"]
# Wed, 19 Jun 2019 20:21:20 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha6 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:d572f7c8e98390811ccda70b3cd865d413636517e557d586db244257f25ef6df`  
		Last Modified: Tue, 19 Mar 2019 21:35:04 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:265b4f12928a311de2d0539ca376ff1a03889820eda5170e5d4306d7c210b025`  
		Last Modified: Wed, 19 Jun 2019 20:21:53 GMT  
		Size: 17.9 MB (17919700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v2.0.0-alpha6` - linux; arm variant v6

```console
$ docker pull traefik@sha256:04d5aad10f730aa1b7a6e527efd6681f448ee71098f694f80b93db2cb9c27832
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16909047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bdb4e18779806341dcd41b13feb228a0a67c4bd592b4081db2d17e336944d75`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 20 Mar 2019 08:11:08 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Wed, 19 Jun 2019 20:24:39 GMT
COPY file:18baec0ca932e9bdf81ea80b7cfe1313995b4fca6a825b667d715c0dbab98b82 in / 
# Wed, 19 Jun 2019 20:24:40 GMT
EXPOSE 80
# Wed, 19 Jun 2019 20:24:41 GMT
VOLUME [/tmp]
# Wed, 19 Jun 2019 20:24:42 GMT
ENTRYPOINT ["/traefik"]
# Wed, 19 Jun 2019 20:24:42 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha6 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:2b85204ff61918278f159c68b7d115600c72173e7f4db3f92d97b8ef4be1c8e9`  
		Last Modified: Wed, 20 Mar 2019 08:11:50 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:055ee6dcdeb330856bce715456ed7c9cc250f75ce88f792f458e95b710f74293`  
		Last Modified: Wed, 19 Jun 2019 20:25:38 GMT  
		Size: 16.8 MB (16777025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v2.0.0-alpha6` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:da9ed985e8ee1de7486c9886e0fdcb6fd78edf173fe3e264d97351889060ed8c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.6 MB (16611493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c24e3271a829ab9614c01932fa3cea1f285bfd398f00f86184a93824cf15c126`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 29 May 2019 22:48:34 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Wed, 19 Jun 2019 20:26:25 GMT
COPY file:a5016a7e321ae9e83a45b1ef04cbf615a8d3545d513b440b1fea241f2f518e02 in / 
# Wed, 19 Jun 2019 20:26:26 GMT
EXPOSE 80
# Wed, 19 Jun 2019 20:26:27 GMT
VOLUME [/tmp]
# Wed, 19 Jun 2019 20:26:27 GMT
ENTRYPOINT ["/traefik"]
# Wed, 19 Jun 2019 20:26:27 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha6 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:584016d61c187e4a6e7fe7b278382a810b56900deabfe42918d6ea510fc0cbe7`  
		Last Modified: Wed, 29 May 2019 22:49:25 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deb814019a4bdb8e603c77b6ac11a8ddc2c41131f18879553a7ff6e4bc86af0d`  
		Last Modified: Wed, 19 Jun 2019 20:27:15 GMT  
		Size: 16.5 MB (16479471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v2.0.0-alpha6-alpine`

```console
$ docker pull traefik@sha256:b60735242f57e9ae43d380d474e6fd56e126c150b7be1f08e04922008bf85ee4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v2.0.0-alpha6-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:0f8824b931799ca093c0ca9ab07eb22629f0d6af7031b79dab1a2426507d15b6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.4 MB (21373302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfe3891f8a0b320b9bc96f64d1122d5314d757c66af8cc935a7754087e4ef865`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 03:12:07 GMT
RUN apk --no-cache add ca-certificates tzdata
# Wed, 19 Jun 2019 20:21:30 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/containous/traefik/releases/download/v2.0.0-alpha6/traefik_v2.0.0-alpha6_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Wed, 19 Jun 2019 20:21:30 GMT
COPY file:34488cf16756639d0b23fe91a33c8606031ffcf600cde1df1b9666b4996f0312 in / 
# Wed, 19 Jun 2019 20:21:31 GMT
EXPOSE 80
# Wed, 19 Jun 2019 20:21:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 19 Jun 2019 20:21:31 GMT
CMD ["traefik"]
# Wed, 19 Jun 2019 20:21:31 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha6 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68e7f8284806d9f98c0c659038fc7f2498c964e8dfcdff9a661eacc824568fda`  
		Last Modified: Sat, 11 May 2019 03:12:36 GMT  
		Size: 696.1 KB (696144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:072b96b0ba3243350217ad9f88c7c61339575ac898997ea31802cfaf9d368680`  
		Last Modified: Wed, 19 Jun 2019 20:22:03 GMT  
		Size: 17.9 MB (17919775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7354c7ca9c7b7f96429110611edff8727c1e79ba38ee1dc42f646a9b80e74e2`  
		Last Modified: Wed, 19 Jun 2019 20:21:59 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v2.0.0-alpha6-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:6abdaf02f7d25c36e2bf323ab3418c86e70358f2a30540cf3d8408a5a8b76b71
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.0 MB (20019710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49e626563136ae46d283c68266e24d68237cd240a52c1ed5020763f8b2d8177c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:58:57 GMT
RUN apk --no-cache add ca-certificates tzdata
# Wed, 19 Jun 2019 20:24:51 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/containous/traefik/releases/download/v2.0.0-alpha6/traefik_v2.0.0-alpha6_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Wed, 19 Jun 2019 20:24:52 GMT
COPY file:34488cf16756639d0b23fe91a33c8606031ffcf600cde1df1b9666b4996f0312 in / 
# Wed, 19 Jun 2019 20:24:52 GMT
EXPOSE 80
# Wed, 19 Jun 2019 20:24:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 19 Jun 2019 20:24:53 GMT
CMD ["traefik"]
# Wed, 19 Jun 2019 20:24:54 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha6 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:153b3e2b8588fe422e5874001d4bdddca455c8bca3902b236930cf11191bd0c0`  
		Last Modified: Sat, 11 May 2019 08:59:56 GMT  
		Size: 698.9 KB (698850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8fa188125b7019f7c6cc8dae651454acab904d6f47f6186bc9d862a16e299fb`  
		Last Modified: Wed, 19 Jun 2019 20:25:52 GMT  
		Size: 16.8 MB (16777084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e54244f8d7cb693d5e6433e1d1bec2e8bd0ee630bb0b259936df75099dcf4e14`  
		Last Modified: Wed, 19 Jun 2019 20:25:47 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v2.0.0-alpha6-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:6e77966cf32896f4e7eb1a8b37c11be112f479318c04472b5d046fe536604b37
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.9 MB (19867922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d21d9d413b8d46fc2f7b6010d9c38548de23dc91c2c580b27c1de54600b53291`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 19 Jun 2019 20:39:47 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Wed, 19 Jun 2019 20:39:47 GMT
CMD ["/bin/sh"]
# Wed, 19 Jun 2019 20:41:05 GMT
RUN apk --no-cache add ca-certificates tzdata
# Wed, 19 Jun 2019 20:41:10 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/containous/traefik/releases/download/v2.0.0-alpha6/traefik_v2.0.0-alpha6_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Wed, 19 Jun 2019 20:41:10 GMT
COPY file:34488cf16756639d0b23fe91a33c8606031ffcf600cde1df1b9666b4996f0312 in / 
# Wed, 19 Jun 2019 20:41:11 GMT
EXPOSE 80
# Wed, 19 Jun 2019 20:41:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 19 Jun 2019 20:41:12 GMT
CMD ["traefik"]
# Wed, 19 Jun 2019 20:41:12 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha6 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec749d99dfc2431e9417aaba2a694ba0d0cf95b50ae26a195182cb96929b306`  
		Last Modified: Wed, 19 Jun 2019 20:41:50 GMT  
		Size: 699.1 KB (699123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26dd99a7b52854a97b888fdaed3fbe75a1f86746745dd148a4be7e78b8b73b03`  
		Last Modified: Wed, 19 Jun 2019 20:41:56 GMT  
		Size: 16.5 MB (16479671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfa189cbe06528e39e67a28953e4401b5e974aae445c73d0f99211186b7201a0`  
		Last Modified: Wed, 19 Jun 2019 20:41:50 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v2.0.0-alpha6-nanoserver`

```console
$ docker pull traefik@sha256:11bb17831dd6b886116d4d9f62957785c5d0501453095b33b81f40a2073f756d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:v2.0.0-alpha6-nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:8a9335e2357cb2f121f06ed2068db23aa7e320386041abd905606d20dede8080
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **453.3 MB (453292630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e12500b320f2e822f7d0d6adff806f9d7fc6a9bdbd654de87a8531bdc3199c99`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Wed, 19 Jun 2019 20:14:57 GMT
RUN cmd /S /C #(nop) COPY file:cbef9dc2466d1db4e0f62ba0b7e8f7cc23fa8024ed1fff51b47391f34f64f38c in \traefik.exe 
# Wed, 19 Jun 2019 20:15:04 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Wed, 19 Jun 2019 20:15:05 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Wed, 19 Jun 2019 20:15:06 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha6 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:553bb6ea0d4ffa2707d4003e292f3a860d0605a5d1a1ca1ced120ad69baa6e9c`  
		Last Modified: Wed, 19 Jun 2019 20:15:42 GMT  
		Size: 17.9 MB (17893023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3706ee9dfa84407686e468851f7756a983b5ada9ef31b1a6939b497c43f98ba0`  
		Last Modified: Wed, 19 Jun 2019 20:15:37 GMT  
		Size: 918.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ed4a594d209d40272924ddd32e748085e707e786e245d34cc97c62cdd07b5e`  
		Last Modified: Wed, 19 Jun 2019 20:15:37 GMT  
		Size: 929.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de1b6331fdaeb439d0f634251877786cef56759e2347d2f8c56a97ce39c9029`  
		Last Modified: Wed, 19 Jun 2019 20:15:37 GMT  
		Size: 942.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v2.0.0-alpha6-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:11bb17831dd6b886116d4d9f62957785c5d0501453095b33b81f40a2073f756d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:v2.0.0-alpha6-nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:8a9335e2357cb2f121f06ed2068db23aa7e320386041abd905606d20dede8080
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **453.3 MB (453292630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e12500b320f2e822f7d0d6adff806f9d7fc6a9bdbd654de87a8531bdc3199c99`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Wed, 19 Jun 2019 20:14:57 GMT
RUN cmd /S /C #(nop) COPY file:cbef9dc2466d1db4e0f62ba0b7e8f7cc23fa8024ed1fff51b47391f34f64f38c in \traefik.exe 
# Wed, 19 Jun 2019 20:15:04 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Wed, 19 Jun 2019 20:15:05 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Wed, 19 Jun 2019 20:15:06 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha6 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:553bb6ea0d4ffa2707d4003e292f3a860d0605a5d1a1ca1ced120ad69baa6e9c`  
		Last Modified: Wed, 19 Jun 2019 20:15:42 GMT  
		Size: 17.9 MB (17893023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3706ee9dfa84407686e468851f7756a983b5ada9ef31b1a6939b497c43f98ba0`  
		Last Modified: Wed, 19 Jun 2019 20:15:37 GMT  
		Size: 918.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ed4a594d209d40272924ddd32e748085e707e786e245d34cc97c62cdd07b5e`  
		Last Modified: Wed, 19 Jun 2019 20:15:37 GMT  
		Size: 929.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de1b6331fdaeb439d0f634251877786cef56759e2347d2f8c56a97ce39c9029`  
		Last Modified: Wed, 19 Jun 2019 20:15:37 GMT  
		Size: 942.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v2.0-alpine`

```console
$ docker pull traefik@sha256:b60735242f57e9ae43d380d474e6fd56e126c150b7be1f08e04922008bf85ee4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v2.0-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:0f8824b931799ca093c0ca9ab07eb22629f0d6af7031b79dab1a2426507d15b6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.4 MB (21373302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfe3891f8a0b320b9bc96f64d1122d5314d757c66af8cc935a7754087e4ef865`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 03:12:07 GMT
RUN apk --no-cache add ca-certificates tzdata
# Wed, 19 Jun 2019 20:21:30 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/containous/traefik/releases/download/v2.0.0-alpha6/traefik_v2.0.0-alpha6_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Wed, 19 Jun 2019 20:21:30 GMT
COPY file:34488cf16756639d0b23fe91a33c8606031ffcf600cde1df1b9666b4996f0312 in / 
# Wed, 19 Jun 2019 20:21:31 GMT
EXPOSE 80
# Wed, 19 Jun 2019 20:21:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 19 Jun 2019 20:21:31 GMT
CMD ["traefik"]
# Wed, 19 Jun 2019 20:21:31 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha6 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68e7f8284806d9f98c0c659038fc7f2498c964e8dfcdff9a661eacc824568fda`  
		Last Modified: Sat, 11 May 2019 03:12:36 GMT  
		Size: 696.1 KB (696144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:072b96b0ba3243350217ad9f88c7c61339575ac898997ea31802cfaf9d368680`  
		Last Modified: Wed, 19 Jun 2019 20:22:03 GMT  
		Size: 17.9 MB (17919775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7354c7ca9c7b7f96429110611edff8727c1e79ba38ee1dc42f646a9b80e74e2`  
		Last Modified: Wed, 19 Jun 2019 20:21:59 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v2.0-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:6abdaf02f7d25c36e2bf323ab3418c86e70358f2a30540cf3d8408a5a8b76b71
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.0 MB (20019710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49e626563136ae46d283c68266e24d68237cd240a52c1ed5020763f8b2d8177c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:58:57 GMT
RUN apk --no-cache add ca-certificates tzdata
# Wed, 19 Jun 2019 20:24:51 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/containous/traefik/releases/download/v2.0.0-alpha6/traefik_v2.0.0-alpha6_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Wed, 19 Jun 2019 20:24:52 GMT
COPY file:34488cf16756639d0b23fe91a33c8606031ffcf600cde1df1b9666b4996f0312 in / 
# Wed, 19 Jun 2019 20:24:52 GMT
EXPOSE 80
# Wed, 19 Jun 2019 20:24:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 19 Jun 2019 20:24:53 GMT
CMD ["traefik"]
# Wed, 19 Jun 2019 20:24:54 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha6 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:153b3e2b8588fe422e5874001d4bdddca455c8bca3902b236930cf11191bd0c0`  
		Last Modified: Sat, 11 May 2019 08:59:56 GMT  
		Size: 698.9 KB (698850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8fa188125b7019f7c6cc8dae651454acab904d6f47f6186bc9d862a16e299fb`  
		Last Modified: Wed, 19 Jun 2019 20:25:52 GMT  
		Size: 16.8 MB (16777084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e54244f8d7cb693d5e6433e1d1bec2e8bd0ee630bb0b259936df75099dcf4e14`  
		Last Modified: Wed, 19 Jun 2019 20:25:47 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v2.0-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:6e77966cf32896f4e7eb1a8b37c11be112f479318c04472b5d046fe536604b37
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.9 MB (19867922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d21d9d413b8d46fc2f7b6010d9c38548de23dc91c2c580b27c1de54600b53291`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 19 Jun 2019 20:39:47 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Wed, 19 Jun 2019 20:39:47 GMT
CMD ["/bin/sh"]
# Wed, 19 Jun 2019 20:41:05 GMT
RUN apk --no-cache add ca-certificates tzdata
# Wed, 19 Jun 2019 20:41:10 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/containous/traefik/releases/download/v2.0.0-alpha6/traefik_v2.0.0-alpha6_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Wed, 19 Jun 2019 20:41:10 GMT
COPY file:34488cf16756639d0b23fe91a33c8606031ffcf600cde1df1b9666b4996f0312 in / 
# Wed, 19 Jun 2019 20:41:11 GMT
EXPOSE 80
# Wed, 19 Jun 2019 20:41:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 19 Jun 2019 20:41:12 GMT
CMD ["traefik"]
# Wed, 19 Jun 2019 20:41:12 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha6 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec749d99dfc2431e9417aaba2a694ba0d0cf95b50ae26a195182cb96929b306`  
		Last Modified: Wed, 19 Jun 2019 20:41:50 GMT  
		Size: 699.1 KB (699123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26dd99a7b52854a97b888fdaed3fbe75a1f86746745dd148a4be7e78b8b73b03`  
		Last Modified: Wed, 19 Jun 2019 20:41:56 GMT  
		Size: 16.5 MB (16479671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfa189cbe06528e39e67a28953e4401b5e974aae445c73d0f99211186b7201a0`  
		Last Modified: Wed, 19 Jun 2019 20:41:50 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v2.0-nanoserver`

```console
$ docker pull traefik@sha256:11bb17831dd6b886116d4d9f62957785c5d0501453095b33b81f40a2073f756d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:v2.0-nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:8a9335e2357cb2f121f06ed2068db23aa7e320386041abd905606d20dede8080
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **453.3 MB (453292630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e12500b320f2e822f7d0d6adff806f9d7fc6a9bdbd654de87a8531bdc3199c99`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Wed, 19 Jun 2019 20:14:57 GMT
RUN cmd /S /C #(nop) COPY file:cbef9dc2466d1db4e0f62ba0b7e8f7cc23fa8024ed1fff51b47391f34f64f38c in \traefik.exe 
# Wed, 19 Jun 2019 20:15:04 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Wed, 19 Jun 2019 20:15:05 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Wed, 19 Jun 2019 20:15:06 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha6 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:553bb6ea0d4ffa2707d4003e292f3a860d0605a5d1a1ca1ced120ad69baa6e9c`  
		Last Modified: Wed, 19 Jun 2019 20:15:42 GMT  
		Size: 17.9 MB (17893023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3706ee9dfa84407686e468851f7756a983b5ada9ef31b1a6939b497c43f98ba0`  
		Last Modified: Wed, 19 Jun 2019 20:15:37 GMT  
		Size: 918.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ed4a594d209d40272924ddd32e748085e707e786e245d34cc97c62cdd07b5e`  
		Last Modified: Wed, 19 Jun 2019 20:15:37 GMT  
		Size: 929.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de1b6331fdaeb439d0f634251877786cef56759e2347d2f8c56a97ce39c9029`  
		Last Modified: Wed, 19 Jun 2019 20:15:37 GMT  
		Size: 942.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v2.0-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:11bb17831dd6b886116d4d9f62957785c5d0501453095b33b81f40a2073f756d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:v2.0-nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:8a9335e2357cb2f121f06ed2068db23aa7e320386041abd905606d20dede8080
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **453.3 MB (453292630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e12500b320f2e822f7d0d6adff806f9d7fc6a9bdbd654de87a8531bdc3199c99`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Wed, 19 Jun 2019 20:14:57 GMT
RUN cmd /S /C #(nop) COPY file:cbef9dc2466d1db4e0f62ba0b7e8f7cc23fa8024ed1fff51b47391f34f64f38c in \traefik.exe 
# Wed, 19 Jun 2019 20:15:04 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Wed, 19 Jun 2019 20:15:05 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Wed, 19 Jun 2019 20:15:06 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha6 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:553bb6ea0d4ffa2707d4003e292f3a860d0605a5d1a1ca1ced120ad69baa6e9c`  
		Last Modified: Wed, 19 Jun 2019 20:15:42 GMT  
		Size: 17.9 MB (17893023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3706ee9dfa84407686e468851f7756a983b5ada9ef31b1a6939b497c43f98ba0`  
		Last Modified: Wed, 19 Jun 2019 20:15:37 GMT  
		Size: 918.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ed4a594d209d40272924ddd32e748085e707e786e245d34cc97c62cdd07b5e`  
		Last Modified: Wed, 19 Jun 2019 20:15:37 GMT  
		Size: 929.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de1b6331fdaeb439d0f634251877786cef56759e2347d2f8c56a97ce39c9029`  
		Last Modified: Wed, 19 Jun 2019 20:15:37 GMT  
		Size: 942.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
