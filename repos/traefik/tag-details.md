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
$ docker pull traefik@sha256:bb665343b4e0fc42c677a2b66c3f6febf0046b0c73d2d1f26d1178a2a83ff58b
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
$ docker pull traefik@sha256:e76072f5f583394474d7456bbec8b83ca037130c839acae3a3ba0c9673dd9c99
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.9 MB (21941284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8268427b505aeee1a50c353e0c1c27698721532d12108a483ba9a86a7c62b229`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Wed, 29 May 2019 22:48:42 GMT
RUN apk --no-cache add ca-certificates tzdata
# Wed, 29 May 2019 22:49:06 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.12/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 29 May 2019 22:49:07 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 29 May 2019 22:49:07 GMT
EXPOSE 80
# Wed, 29 May 2019 22:49:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 29 May 2019 22:49:08 GMT
CMD ["traefik"]
# Wed, 29 May 2019 22:49:08 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.12 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebac1f5578ad08cba7db45eff4b56b6f8d966b742b341f56c22641b30a459d54`  
		Last Modified: Wed, 29 May 2019 22:49:44 GMT  
		Size: 699.1 KB (699097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11346c2e0d34957827654fa607baef98677e4798c9f12b2ad2962c02346dc018`  
		Last Modified: Wed, 29 May 2019 22:50:26 GMT  
		Size: 18.6 MB (18553089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd8bfb947c2a8eedc1dc6aa73855c89dcf692c638b9377a442c58cc6571950e`  
		Last Modified: Wed, 29 May 2019 22:50:18 GMT  
		Size: 319.0 B  
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
$ docker pull traefik@sha256:bb665343b4e0fc42c677a2b66c3f6febf0046b0c73d2d1f26d1178a2a83ff58b
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
$ docker pull traefik@sha256:e76072f5f583394474d7456bbec8b83ca037130c839acae3a3ba0c9673dd9c99
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.9 MB (21941284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8268427b505aeee1a50c353e0c1c27698721532d12108a483ba9a86a7c62b229`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Wed, 29 May 2019 22:48:42 GMT
RUN apk --no-cache add ca-certificates tzdata
# Wed, 29 May 2019 22:49:06 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.12/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 29 May 2019 22:49:07 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 29 May 2019 22:49:07 GMT
EXPOSE 80
# Wed, 29 May 2019 22:49:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 29 May 2019 22:49:08 GMT
CMD ["traefik"]
# Wed, 29 May 2019 22:49:08 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.12 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebac1f5578ad08cba7db45eff4b56b6f8d966b742b341f56c22641b30a459d54`  
		Last Modified: Wed, 29 May 2019 22:49:44 GMT  
		Size: 699.1 KB (699097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11346c2e0d34957827654fa607baef98677e4798c9f12b2ad2962c02346dc018`  
		Last Modified: Wed, 29 May 2019 22:50:26 GMT  
		Size: 18.6 MB (18553089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd8bfb947c2a8eedc1dc6aa73855c89dcf692c638b9377a442c58cc6571950e`  
		Last Modified: Wed, 29 May 2019 22:50:18 GMT  
		Size: 319.0 B  
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
$ docker pull traefik@sha256:24f368d7a2350b569cd6d9a0937a38b81aa696a3a64111166642e51408ba34e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:2.0` - linux; amd64

```console
$ docker pull traefik@sha256:7e577295f2aefb8b7037c54afbab8e7b29debedd876ae417ab9bb5d704a937df
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.4 MB (17448159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1653dfd3a96b93feafc6eb9ecb00858089161400739d2612aae34aa14b2b4730`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 19 Mar 2019 21:34:26 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Thu, 18 Apr 2019 00:00:20 GMT
COPY file:6276ff2d0f22504d5f2478b52297ca9943316559452df289d0152d650e097a4b in / 
# Thu, 18 Apr 2019 00:00:20 GMT
EXPOSE 80
# Thu, 18 Apr 2019 00:00:20 GMT
VOLUME [/tmp]
# Thu, 18 Apr 2019 00:00:20 GMT
ENTRYPOINT ["/traefik"]
# Thu, 18 Apr 2019 00:00:21 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha4 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:d572f7c8e98390811ccda70b3cd865d413636517e557d586db244257f25ef6df`  
		Last Modified: Tue, 19 Mar 2019 21:35:04 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7b1ec87dccdc3565126b2306fc184b98172237d9130ccf06d962f5accf26c0f`  
		Last Modified: Thu, 18 Apr 2019 00:00:58 GMT  
		Size: 17.3 MB (17316137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:2.0` - linux; arm variant v6

```console
$ docker pull traefik@sha256:1fa40edbee6bf1eec68b5953384c88a131070c4237b295e9162b90f5e756eac0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.3 MB (16338821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4244adcddffe976da1ad1663fc9bedafee308666f91222b06355928788cd4466`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 20 Mar 2019 08:11:08 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Thu, 18 Apr 2019 08:32:49 GMT
COPY file:8de1a468915584ddfd7edc22a7817cf39eee53c48babade63c877651bf72b19d in / 
# Thu, 18 Apr 2019 08:32:50 GMT
EXPOSE 80
# Thu, 18 Apr 2019 08:32:50 GMT
VOLUME [/tmp]
# Thu, 18 Apr 2019 08:32:50 GMT
ENTRYPOINT ["/traefik"]
# Thu, 18 Apr 2019 08:32:51 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha4 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:2b85204ff61918278f159c68b7d115600c72173e7f4db3f92d97b8ef4be1c8e9`  
		Last Modified: Wed, 20 Mar 2019 08:11:50 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f27df8b6bb5a87b7768f01a1d6d74adc5a651dda5490b82b1eefc579abf308bb`  
		Last Modified: Thu, 18 Apr 2019 08:34:02 GMT  
		Size: 16.2 MB (16206799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:2.0` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:b4aaf742cd0fac459fc396d6b33b3838699b18c46b2ae220e577086b5a79a710
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.1 MB (16065721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4a012676de774884155419cc20a507251c6edf4d7814ecdf454ac8a68d2d96d`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 29 May 2019 22:48:34 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Wed, 29 May 2019 22:48:35 GMT
COPY file:665d568ab7445f17c732648ccfe25c5ebc4eaf632bbdee649d81725a57bc884d in / 
# Wed, 29 May 2019 22:48:36 GMT
EXPOSE 80
# Wed, 29 May 2019 22:48:36 GMT
VOLUME [/tmp]
# Wed, 29 May 2019 22:48:36 GMT
ENTRYPOINT ["/traefik"]
# Wed, 29 May 2019 22:48:37 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha4 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:584016d61c187e4a6e7fe7b278382a810b56900deabfe42918d6ea510fc0cbe7`  
		Last Modified: Wed, 29 May 2019 22:49:25 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6e0c926933ac253da1bef2b3059ec89f2498317b17d5c86f0b7a0d6b6851a9`  
		Last Modified: Wed, 29 May 2019 22:49:31 GMT  
		Size: 15.9 MB (15933699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:2.0.0-alpha6`

**does not exist** (yet?)

## `traefik:2.0.0-alpha6-alpine`

**does not exist** (yet?)

## `traefik:2.0.0-alpha6-nanoserver`

**does not exist** (yet?)

## `traefik:2.0.0-alpha6-nanoserver-sac2016`

**does not exist** (yet?)

## `traefik:2.0-alpine`

```console
$ docker pull traefik@sha256:41ecc51c507fe06de87c2836218d8cd80b1fefd3f490110093e860672fc01885
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:2.0-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:e79cf4b355f6f478e27fa7e386007a7d31feba144f466b2f039a7f7614a35b8f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 MB (20769925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72633aca41200240682f3badeca86256e16c24658d3aae684d34c2d782085b2f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 03:12:07 GMT
RUN apk --no-cache add ca-certificates tzdata
# Sat, 11 May 2019 03:12:09 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/containous/traefik/releases/download/v2.0.0-alpha4/traefik_v2.0.0-alpha4_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Sat, 11 May 2019 03:12:09 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Sat, 11 May 2019 03:12:10 GMT
EXPOSE 80
# Sat, 11 May 2019 03:12:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 11 May 2019 03:12:10 GMT
CMD ["traefik"]
# Sat, 11 May 2019 03:12:10 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha4 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:85a881d8573b486547832b581210d9a8e8f9a30ca75ad04ac4ea427f0aa68aa7`  
		Last Modified: Sat, 11 May 2019 03:12:40 GMT  
		Size: 17.3 MB (17316427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f68cb6846d40f2d1135afab269043d9f15d3a851805175fb2855e6b161d2ab78`  
		Last Modified: Sat, 11 May 2019 03:12:36 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:2.0-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:fc688c91f069d8df3a87229cd72200ec7e39618ac2b6e659411014f29067d17f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.4 MB (19449478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36e9f009900eca159fc26371b2d6078032b81d033eefa428e04d85918cdf3f94`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:58:57 GMT
RUN apk --no-cache add ca-certificates tzdata
# Sat, 11 May 2019 08:59:01 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/containous/traefik/releases/download/v2.0.0-alpha4/traefik_v2.0.0-alpha4_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Sat, 11 May 2019 08:59:02 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Sat, 11 May 2019 08:59:02 GMT
EXPOSE 80
# Sat, 11 May 2019 08:59:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 11 May 2019 08:59:03 GMT
CMD ["traefik"]
# Sat, 11 May 2019 08:59:03 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha4 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:aaf7dfd2a7e22d74482516f48cfb75a15131c4a0919cdfb053a8754a8ff183d8`  
		Last Modified: Sat, 11 May 2019 09:00:04 GMT  
		Size: 16.2 MB (16206883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac51cf5f7bdc8efee35852fe1db18bd767acda011ce9cc51b2c976b125ee785`  
		Last Modified: Sat, 11 May 2019 08:59:56 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:2.0-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:355d8bdde2967344d0478586e0d5c18caeca258bcd99ee866f40c43ff19ccdbd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.3 MB (19321981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93f6e37f824540b98f39a79b49c0e8fba3b05da4d40b3f038d76a8de545bbbba`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Wed, 29 May 2019 22:48:42 GMT
RUN apk --no-cache add ca-certificates tzdata
# Wed, 29 May 2019 22:48:46 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/containous/traefik/releases/download/v2.0.0-alpha4/traefik_v2.0.0-alpha4_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Wed, 29 May 2019 22:48:47 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 29 May 2019 22:48:47 GMT
EXPOSE 80
# Wed, 29 May 2019 22:48:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 29 May 2019 22:48:48 GMT
CMD ["traefik"]
# Wed, 29 May 2019 22:48:48 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha4 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebac1f5578ad08cba7db45eff4b56b6f8d966b742b341f56c22641b30a459d54`  
		Last Modified: Wed, 29 May 2019 22:49:44 GMT  
		Size: 699.1 KB (699097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eff65dd00de5c887d1055361353703b0f490f01d48365b5a16c82d6c3185383f`  
		Last Modified: Wed, 29 May 2019 22:49:52 GMT  
		Size: 15.9 MB (15933785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d59b2d3d1598a4bc9d513f89bd20427934f7ecd284aa1777ca71694ea4151a9`  
		Last Modified: Wed, 29 May 2019 22:49:44 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:2.0-nanoserver`

```console
$ docker pull traefik@sha256:393568f3853a2509d49361957e9d5f12541ee385f0b0a616355037f15b454d81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:2.0-nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:282a68de735b8569af06f1b246c2048d20652c74aea25c4dec7a48d89a61102d
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.7 MB (452699359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53af306dc84bf9d777e23b9751a8ebc8828345e13e2849def961e15d6a3483bd`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Thu, 18 Apr 2019 09:31:30 GMT
RUN cmd /S /C #(nop) COPY file:f5d7bc66858ac5145aa17aaf5598825dd7d56948e3d950ea0bedc5d718ec029a in \traefik.exe 
# Thu, 18 Apr 2019 09:31:38 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Thu, 18 Apr 2019 09:31:39 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Thu, 18 Apr 2019 09:31:40 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha4 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:538e5a9cc836f82795394287767591a4b93ae6a1dcd2233a0ba99210816cae9b`  
		Last Modified: Thu, 18 Apr 2019 09:32:13 GMT  
		Size: 17.3 MB (17299694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:492626a8f1da221547e14ae8338c7f9fb59a792c5221ff8dcaf22f44db0437d0`  
		Last Modified: Thu, 18 Apr 2019 09:32:09 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dd5012cac867a3f09f87478eece96a96096eed50c30b9e46144e92c640f1dd9`  
		Last Modified: Thu, 18 Apr 2019 09:32:09 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43f63b6c096f1133f75e4d3a69b639900dc820dc2d9d2578a6dbe58244525042`  
		Last Modified: Thu, 18 Apr 2019 09:32:10 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:2.0-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:393568f3853a2509d49361957e9d5f12541ee385f0b0a616355037f15b454d81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:2.0-nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:282a68de735b8569af06f1b246c2048d20652c74aea25c4dec7a48d89a61102d
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.7 MB (452699359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53af306dc84bf9d777e23b9751a8ebc8828345e13e2849def961e15d6a3483bd`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Thu, 18 Apr 2019 09:31:30 GMT
RUN cmd /S /C #(nop) COPY file:f5d7bc66858ac5145aa17aaf5598825dd7d56948e3d950ea0bedc5d718ec029a in \traefik.exe 
# Thu, 18 Apr 2019 09:31:38 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Thu, 18 Apr 2019 09:31:39 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Thu, 18 Apr 2019 09:31:40 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha4 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:538e5a9cc836f82795394287767591a4b93ae6a1dcd2233a0ba99210816cae9b`  
		Last Modified: Thu, 18 Apr 2019 09:32:13 GMT  
		Size: 17.3 MB (17299694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:492626a8f1da221547e14ae8338c7f9fb59a792c5221ff8dcaf22f44db0437d0`  
		Last Modified: Thu, 18 Apr 2019 09:32:09 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dd5012cac867a3f09f87478eece96a96096eed50c30b9e46144e92c640f1dd9`  
		Last Modified: Thu, 18 Apr 2019 09:32:09 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43f63b6c096f1133f75e4d3a69b639900dc820dc2d9d2578a6dbe58244525042`  
		Last Modified: Thu, 18 Apr 2019 09:32:10 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:alpine`

```console
$ docker pull traefik@sha256:bb665343b4e0fc42c677a2b66c3f6febf0046b0c73d2d1f26d1178a2a83ff58b
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
$ docker pull traefik@sha256:e76072f5f583394474d7456bbec8b83ca037130c839acae3a3ba0c9673dd9c99
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.9 MB (21941284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8268427b505aeee1a50c353e0c1c27698721532d12108a483ba9a86a7c62b229`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Wed, 29 May 2019 22:48:42 GMT
RUN apk --no-cache add ca-certificates tzdata
# Wed, 29 May 2019 22:49:06 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.12/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 29 May 2019 22:49:07 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 29 May 2019 22:49:07 GMT
EXPOSE 80
# Wed, 29 May 2019 22:49:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 29 May 2019 22:49:08 GMT
CMD ["traefik"]
# Wed, 29 May 2019 22:49:08 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.12 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebac1f5578ad08cba7db45eff4b56b6f8d966b742b341f56c22641b30a459d54`  
		Last Modified: Wed, 29 May 2019 22:49:44 GMT  
		Size: 699.1 KB (699097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11346c2e0d34957827654fa607baef98677e4798c9f12b2ad2962c02346dc018`  
		Last Modified: Wed, 29 May 2019 22:50:26 GMT  
		Size: 18.6 MB (18553089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd8bfb947c2a8eedc1dc6aa73855c89dcf692c638b9377a442c58cc6571950e`  
		Last Modified: Wed, 29 May 2019 22:50:18 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:faisselle`

```console
$ docker pull traefik@sha256:24f368d7a2350b569cd6d9a0937a38b81aa696a3a64111166642e51408ba34e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:faisselle` - linux; amd64

```console
$ docker pull traefik@sha256:7e577295f2aefb8b7037c54afbab8e7b29debedd876ae417ab9bb5d704a937df
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.4 MB (17448159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1653dfd3a96b93feafc6eb9ecb00858089161400739d2612aae34aa14b2b4730`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 19 Mar 2019 21:34:26 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Thu, 18 Apr 2019 00:00:20 GMT
COPY file:6276ff2d0f22504d5f2478b52297ca9943316559452df289d0152d650e097a4b in / 
# Thu, 18 Apr 2019 00:00:20 GMT
EXPOSE 80
# Thu, 18 Apr 2019 00:00:20 GMT
VOLUME [/tmp]
# Thu, 18 Apr 2019 00:00:20 GMT
ENTRYPOINT ["/traefik"]
# Thu, 18 Apr 2019 00:00:21 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha4 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:d572f7c8e98390811ccda70b3cd865d413636517e557d586db244257f25ef6df`  
		Last Modified: Tue, 19 Mar 2019 21:35:04 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7b1ec87dccdc3565126b2306fc184b98172237d9130ccf06d962f5accf26c0f`  
		Last Modified: Thu, 18 Apr 2019 00:00:58 GMT  
		Size: 17.3 MB (17316137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:faisselle` - linux; arm variant v6

```console
$ docker pull traefik@sha256:1fa40edbee6bf1eec68b5953384c88a131070c4237b295e9162b90f5e756eac0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.3 MB (16338821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4244adcddffe976da1ad1663fc9bedafee308666f91222b06355928788cd4466`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 20 Mar 2019 08:11:08 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Thu, 18 Apr 2019 08:32:49 GMT
COPY file:8de1a468915584ddfd7edc22a7817cf39eee53c48babade63c877651bf72b19d in / 
# Thu, 18 Apr 2019 08:32:50 GMT
EXPOSE 80
# Thu, 18 Apr 2019 08:32:50 GMT
VOLUME [/tmp]
# Thu, 18 Apr 2019 08:32:50 GMT
ENTRYPOINT ["/traefik"]
# Thu, 18 Apr 2019 08:32:51 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha4 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:2b85204ff61918278f159c68b7d115600c72173e7f4db3f92d97b8ef4be1c8e9`  
		Last Modified: Wed, 20 Mar 2019 08:11:50 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f27df8b6bb5a87b7768f01a1d6d74adc5a651dda5490b82b1eefc579abf308bb`  
		Last Modified: Thu, 18 Apr 2019 08:34:02 GMT  
		Size: 16.2 MB (16206799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:faisselle` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:b4aaf742cd0fac459fc396d6b33b3838699b18c46b2ae220e577086b5a79a710
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.1 MB (16065721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4a012676de774884155419cc20a507251c6edf4d7814ecdf454ac8a68d2d96d`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 29 May 2019 22:48:34 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Wed, 29 May 2019 22:48:35 GMT
COPY file:665d568ab7445f17c732648ccfe25c5ebc4eaf632bbdee649d81725a57bc884d in / 
# Wed, 29 May 2019 22:48:36 GMT
EXPOSE 80
# Wed, 29 May 2019 22:48:36 GMT
VOLUME [/tmp]
# Wed, 29 May 2019 22:48:36 GMT
ENTRYPOINT ["/traefik"]
# Wed, 29 May 2019 22:48:37 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha4 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:584016d61c187e4a6e7fe7b278382a810b56900deabfe42918d6ea510fc0cbe7`  
		Last Modified: Wed, 29 May 2019 22:49:25 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6e0c926933ac253da1bef2b3059ec89f2498317b17d5c86f0b7a0d6b6851a9`  
		Last Modified: Wed, 29 May 2019 22:49:31 GMT  
		Size: 15.9 MB (15933699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:faisselle-alpine`

```console
$ docker pull traefik@sha256:41ecc51c507fe06de87c2836218d8cd80b1fefd3f490110093e860672fc01885
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:faisselle-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:e79cf4b355f6f478e27fa7e386007a7d31feba144f466b2f039a7f7614a35b8f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 MB (20769925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72633aca41200240682f3badeca86256e16c24658d3aae684d34c2d782085b2f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 03:12:07 GMT
RUN apk --no-cache add ca-certificates tzdata
# Sat, 11 May 2019 03:12:09 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/containous/traefik/releases/download/v2.0.0-alpha4/traefik_v2.0.0-alpha4_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Sat, 11 May 2019 03:12:09 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Sat, 11 May 2019 03:12:10 GMT
EXPOSE 80
# Sat, 11 May 2019 03:12:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 11 May 2019 03:12:10 GMT
CMD ["traefik"]
# Sat, 11 May 2019 03:12:10 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha4 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:85a881d8573b486547832b581210d9a8e8f9a30ca75ad04ac4ea427f0aa68aa7`  
		Last Modified: Sat, 11 May 2019 03:12:40 GMT  
		Size: 17.3 MB (17316427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f68cb6846d40f2d1135afab269043d9f15d3a851805175fb2855e6b161d2ab78`  
		Last Modified: Sat, 11 May 2019 03:12:36 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:faisselle-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:fc688c91f069d8df3a87229cd72200ec7e39618ac2b6e659411014f29067d17f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.4 MB (19449478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36e9f009900eca159fc26371b2d6078032b81d033eefa428e04d85918cdf3f94`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:58:57 GMT
RUN apk --no-cache add ca-certificates tzdata
# Sat, 11 May 2019 08:59:01 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/containous/traefik/releases/download/v2.0.0-alpha4/traefik_v2.0.0-alpha4_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Sat, 11 May 2019 08:59:02 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Sat, 11 May 2019 08:59:02 GMT
EXPOSE 80
# Sat, 11 May 2019 08:59:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 11 May 2019 08:59:03 GMT
CMD ["traefik"]
# Sat, 11 May 2019 08:59:03 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha4 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:aaf7dfd2a7e22d74482516f48cfb75a15131c4a0919cdfb053a8754a8ff183d8`  
		Last Modified: Sat, 11 May 2019 09:00:04 GMT  
		Size: 16.2 MB (16206883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac51cf5f7bdc8efee35852fe1db18bd767acda011ce9cc51b2c976b125ee785`  
		Last Modified: Sat, 11 May 2019 08:59:56 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:faisselle-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:355d8bdde2967344d0478586e0d5c18caeca258bcd99ee866f40c43ff19ccdbd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.3 MB (19321981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93f6e37f824540b98f39a79b49c0e8fba3b05da4d40b3f038d76a8de545bbbba`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Wed, 29 May 2019 22:48:42 GMT
RUN apk --no-cache add ca-certificates tzdata
# Wed, 29 May 2019 22:48:46 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/containous/traefik/releases/download/v2.0.0-alpha4/traefik_v2.0.0-alpha4_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Wed, 29 May 2019 22:48:47 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 29 May 2019 22:48:47 GMT
EXPOSE 80
# Wed, 29 May 2019 22:48:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 29 May 2019 22:48:48 GMT
CMD ["traefik"]
# Wed, 29 May 2019 22:48:48 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha4 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebac1f5578ad08cba7db45eff4b56b6f8d966b742b341f56c22641b30a459d54`  
		Last Modified: Wed, 29 May 2019 22:49:44 GMT  
		Size: 699.1 KB (699097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eff65dd00de5c887d1055361353703b0f490f01d48365b5a16c82d6c3185383f`  
		Last Modified: Wed, 29 May 2019 22:49:52 GMT  
		Size: 15.9 MB (15933785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d59b2d3d1598a4bc9d513f89bd20427934f7ecd284aa1777ca71694ea4151a9`  
		Last Modified: Wed, 29 May 2019 22:49:44 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:faisselle-nanoserver`

```console
$ docker pull traefik@sha256:393568f3853a2509d49361957e9d5f12541ee385f0b0a616355037f15b454d81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:faisselle-nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:282a68de735b8569af06f1b246c2048d20652c74aea25c4dec7a48d89a61102d
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.7 MB (452699359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53af306dc84bf9d777e23b9751a8ebc8828345e13e2849def961e15d6a3483bd`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Thu, 18 Apr 2019 09:31:30 GMT
RUN cmd /S /C #(nop) COPY file:f5d7bc66858ac5145aa17aaf5598825dd7d56948e3d950ea0bedc5d718ec029a in \traefik.exe 
# Thu, 18 Apr 2019 09:31:38 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Thu, 18 Apr 2019 09:31:39 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Thu, 18 Apr 2019 09:31:40 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha4 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:538e5a9cc836f82795394287767591a4b93ae6a1dcd2233a0ba99210816cae9b`  
		Last Modified: Thu, 18 Apr 2019 09:32:13 GMT  
		Size: 17.3 MB (17299694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:492626a8f1da221547e14ae8338c7f9fb59a792c5221ff8dcaf22f44db0437d0`  
		Last Modified: Thu, 18 Apr 2019 09:32:09 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dd5012cac867a3f09f87478eece96a96096eed50c30b9e46144e92c640f1dd9`  
		Last Modified: Thu, 18 Apr 2019 09:32:09 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43f63b6c096f1133f75e4d3a69b639900dc820dc2d9d2578a6dbe58244525042`  
		Last Modified: Thu, 18 Apr 2019 09:32:10 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:faisselle-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:393568f3853a2509d49361957e9d5f12541ee385f0b0a616355037f15b454d81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:faisselle-nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:282a68de735b8569af06f1b246c2048d20652c74aea25c4dec7a48d89a61102d
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.7 MB (452699359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53af306dc84bf9d777e23b9751a8ebc8828345e13e2849def961e15d6a3483bd`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Thu, 18 Apr 2019 09:31:30 GMT
RUN cmd /S /C #(nop) COPY file:f5d7bc66858ac5145aa17aaf5598825dd7d56948e3d950ea0bedc5d718ec029a in \traefik.exe 
# Thu, 18 Apr 2019 09:31:38 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Thu, 18 Apr 2019 09:31:39 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Thu, 18 Apr 2019 09:31:40 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha4 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:538e5a9cc836f82795394287767591a4b93ae6a1dcd2233a0ba99210816cae9b`  
		Last Modified: Thu, 18 Apr 2019 09:32:13 GMT  
		Size: 17.3 MB (17299694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:492626a8f1da221547e14ae8338c7f9fb59a792c5221ff8dcaf22f44db0437d0`  
		Last Modified: Thu, 18 Apr 2019 09:32:09 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dd5012cac867a3f09f87478eece96a96096eed50c30b9e46144e92c640f1dd9`  
		Last Modified: Thu, 18 Apr 2019 09:32:09 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43f63b6c096f1133f75e4d3a69b639900dc820dc2d9d2578a6dbe58244525042`  
		Last Modified: Thu, 18 Apr 2019 09:32:10 GMT  
		Size: 947.0 B  
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
$ docker pull traefik@sha256:bb665343b4e0fc42c677a2b66c3f6febf0046b0c73d2d1f26d1178a2a83ff58b
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
$ docker pull traefik@sha256:e76072f5f583394474d7456bbec8b83ca037130c839acae3a3ba0c9673dd9c99
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.9 MB (21941284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8268427b505aeee1a50c353e0c1c27698721532d12108a483ba9a86a7c62b229`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Wed, 29 May 2019 22:48:42 GMT
RUN apk --no-cache add ca-certificates tzdata
# Wed, 29 May 2019 22:49:06 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.12/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 29 May 2019 22:49:07 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 29 May 2019 22:49:07 GMT
EXPOSE 80
# Wed, 29 May 2019 22:49:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 29 May 2019 22:49:08 GMT
CMD ["traefik"]
# Wed, 29 May 2019 22:49:08 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.12 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebac1f5578ad08cba7db45eff4b56b6f8d966b742b341f56c22641b30a459d54`  
		Last Modified: Wed, 29 May 2019 22:49:44 GMT  
		Size: 699.1 KB (699097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11346c2e0d34957827654fa607baef98677e4798c9f12b2ad2962c02346dc018`  
		Last Modified: Wed, 29 May 2019 22:50:26 GMT  
		Size: 18.6 MB (18553089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd8bfb947c2a8eedc1dc6aa73855c89dcf692c638b9377a442c58cc6571950e`  
		Last Modified: Wed, 29 May 2019 22:50:18 GMT  
		Size: 319.0 B  
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
$ docker pull traefik@sha256:bb665343b4e0fc42c677a2b66c3f6febf0046b0c73d2d1f26d1178a2a83ff58b
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
$ docker pull traefik@sha256:e76072f5f583394474d7456bbec8b83ca037130c839acae3a3ba0c9673dd9c99
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.9 MB (21941284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8268427b505aeee1a50c353e0c1c27698721532d12108a483ba9a86a7c62b229`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Wed, 29 May 2019 22:48:42 GMT
RUN apk --no-cache add ca-certificates tzdata
# Wed, 29 May 2019 22:49:06 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.12/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 29 May 2019 22:49:07 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 29 May 2019 22:49:07 GMT
EXPOSE 80
# Wed, 29 May 2019 22:49:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 29 May 2019 22:49:08 GMT
CMD ["traefik"]
# Wed, 29 May 2019 22:49:08 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.12 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebac1f5578ad08cba7db45eff4b56b6f8d966b742b341f56c22641b30a459d54`  
		Last Modified: Wed, 29 May 2019 22:49:44 GMT  
		Size: 699.1 KB (699097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11346c2e0d34957827654fa607baef98677e4798c9f12b2ad2962c02346dc018`  
		Last Modified: Wed, 29 May 2019 22:50:26 GMT  
		Size: 18.6 MB (18553089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd8bfb947c2a8eedc1dc6aa73855c89dcf692c638b9377a442c58cc6571950e`  
		Last Modified: Wed, 29 May 2019 22:50:18 GMT  
		Size: 319.0 B  
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
$ docker pull traefik@sha256:bb665343b4e0fc42c677a2b66c3f6febf0046b0c73d2d1f26d1178a2a83ff58b
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
$ docker pull traefik@sha256:e76072f5f583394474d7456bbec8b83ca037130c839acae3a3ba0c9673dd9c99
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.9 MB (21941284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8268427b505aeee1a50c353e0c1c27698721532d12108a483ba9a86a7c62b229`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Wed, 29 May 2019 22:48:42 GMT
RUN apk --no-cache add ca-certificates tzdata
# Wed, 29 May 2019 22:49:06 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.12/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 29 May 2019 22:49:07 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 29 May 2019 22:49:07 GMT
EXPOSE 80
# Wed, 29 May 2019 22:49:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 29 May 2019 22:49:08 GMT
CMD ["traefik"]
# Wed, 29 May 2019 22:49:08 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.12 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebac1f5578ad08cba7db45eff4b56b6f8d966b742b341f56c22641b30a459d54`  
		Last Modified: Wed, 29 May 2019 22:49:44 GMT  
		Size: 699.1 KB (699097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11346c2e0d34957827654fa607baef98677e4798c9f12b2ad2962c02346dc018`  
		Last Modified: Wed, 29 May 2019 22:50:26 GMT  
		Size: 18.6 MB (18553089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd8bfb947c2a8eedc1dc6aa73855c89dcf692c638b9377a442c58cc6571950e`  
		Last Modified: Wed, 29 May 2019 22:50:18 GMT  
		Size: 319.0 B  
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
$ docker pull traefik@sha256:24f368d7a2350b569cd6d9a0937a38b81aa696a3a64111166642e51408ba34e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v2.0` - linux; amd64

```console
$ docker pull traefik@sha256:7e577295f2aefb8b7037c54afbab8e7b29debedd876ae417ab9bb5d704a937df
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.4 MB (17448159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1653dfd3a96b93feafc6eb9ecb00858089161400739d2612aae34aa14b2b4730`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 19 Mar 2019 21:34:26 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Thu, 18 Apr 2019 00:00:20 GMT
COPY file:6276ff2d0f22504d5f2478b52297ca9943316559452df289d0152d650e097a4b in / 
# Thu, 18 Apr 2019 00:00:20 GMT
EXPOSE 80
# Thu, 18 Apr 2019 00:00:20 GMT
VOLUME [/tmp]
# Thu, 18 Apr 2019 00:00:20 GMT
ENTRYPOINT ["/traefik"]
# Thu, 18 Apr 2019 00:00:21 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha4 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:d572f7c8e98390811ccda70b3cd865d413636517e557d586db244257f25ef6df`  
		Last Modified: Tue, 19 Mar 2019 21:35:04 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7b1ec87dccdc3565126b2306fc184b98172237d9130ccf06d962f5accf26c0f`  
		Last Modified: Thu, 18 Apr 2019 00:00:58 GMT  
		Size: 17.3 MB (17316137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v2.0` - linux; arm variant v6

```console
$ docker pull traefik@sha256:1fa40edbee6bf1eec68b5953384c88a131070c4237b295e9162b90f5e756eac0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.3 MB (16338821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4244adcddffe976da1ad1663fc9bedafee308666f91222b06355928788cd4466`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 20 Mar 2019 08:11:08 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Thu, 18 Apr 2019 08:32:49 GMT
COPY file:8de1a468915584ddfd7edc22a7817cf39eee53c48babade63c877651bf72b19d in / 
# Thu, 18 Apr 2019 08:32:50 GMT
EXPOSE 80
# Thu, 18 Apr 2019 08:32:50 GMT
VOLUME [/tmp]
# Thu, 18 Apr 2019 08:32:50 GMT
ENTRYPOINT ["/traefik"]
# Thu, 18 Apr 2019 08:32:51 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha4 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:2b85204ff61918278f159c68b7d115600c72173e7f4db3f92d97b8ef4be1c8e9`  
		Last Modified: Wed, 20 Mar 2019 08:11:50 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f27df8b6bb5a87b7768f01a1d6d74adc5a651dda5490b82b1eefc579abf308bb`  
		Last Modified: Thu, 18 Apr 2019 08:34:02 GMT  
		Size: 16.2 MB (16206799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v2.0` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:b4aaf742cd0fac459fc396d6b33b3838699b18c46b2ae220e577086b5a79a710
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.1 MB (16065721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4a012676de774884155419cc20a507251c6edf4d7814ecdf454ac8a68d2d96d`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 29 May 2019 22:48:34 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Wed, 29 May 2019 22:48:35 GMT
COPY file:665d568ab7445f17c732648ccfe25c5ebc4eaf632bbdee649d81725a57bc884d in / 
# Wed, 29 May 2019 22:48:36 GMT
EXPOSE 80
# Wed, 29 May 2019 22:48:36 GMT
VOLUME [/tmp]
# Wed, 29 May 2019 22:48:36 GMT
ENTRYPOINT ["/traefik"]
# Wed, 29 May 2019 22:48:37 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha4 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:584016d61c187e4a6e7fe7b278382a810b56900deabfe42918d6ea510fc0cbe7`  
		Last Modified: Wed, 29 May 2019 22:49:25 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6e0c926933ac253da1bef2b3059ec89f2498317b17d5c86f0b7a0d6b6851a9`  
		Last Modified: Wed, 29 May 2019 22:49:31 GMT  
		Size: 15.9 MB (15933699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v2.0.0-alpha6`

**does not exist** (yet?)

## `traefik:v2.0.0-alpha6-alpine`

**does not exist** (yet?)

## `traefik:v2.0.0-alpha6-nanoserver`

**does not exist** (yet?)

## `traefik:v2.0.0-alpha6-nanoserver-sac2016`

**does not exist** (yet?)

## `traefik:v2.0-alpine`

```console
$ docker pull traefik@sha256:41ecc51c507fe06de87c2836218d8cd80b1fefd3f490110093e860672fc01885
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v2.0-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:e79cf4b355f6f478e27fa7e386007a7d31feba144f466b2f039a7f7614a35b8f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 MB (20769925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72633aca41200240682f3badeca86256e16c24658d3aae684d34c2d782085b2f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 03:12:07 GMT
RUN apk --no-cache add ca-certificates tzdata
# Sat, 11 May 2019 03:12:09 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/containous/traefik/releases/download/v2.0.0-alpha4/traefik_v2.0.0-alpha4_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Sat, 11 May 2019 03:12:09 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Sat, 11 May 2019 03:12:10 GMT
EXPOSE 80
# Sat, 11 May 2019 03:12:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 11 May 2019 03:12:10 GMT
CMD ["traefik"]
# Sat, 11 May 2019 03:12:10 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha4 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:85a881d8573b486547832b581210d9a8e8f9a30ca75ad04ac4ea427f0aa68aa7`  
		Last Modified: Sat, 11 May 2019 03:12:40 GMT  
		Size: 17.3 MB (17316427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f68cb6846d40f2d1135afab269043d9f15d3a851805175fb2855e6b161d2ab78`  
		Last Modified: Sat, 11 May 2019 03:12:36 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v2.0-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:fc688c91f069d8df3a87229cd72200ec7e39618ac2b6e659411014f29067d17f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.4 MB (19449478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36e9f009900eca159fc26371b2d6078032b81d033eefa428e04d85918cdf3f94`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:58:57 GMT
RUN apk --no-cache add ca-certificates tzdata
# Sat, 11 May 2019 08:59:01 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/containous/traefik/releases/download/v2.0.0-alpha4/traefik_v2.0.0-alpha4_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Sat, 11 May 2019 08:59:02 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Sat, 11 May 2019 08:59:02 GMT
EXPOSE 80
# Sat, 11 May 2019 08:59:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 11 May 2019 08:59:03 GMT
CMD ["traefik"]
# Sat, 11 May 2019 08:59:03 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha4 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:aaf7dfd2a7e22d74482516f48cfb75a15131c4a0919cdfb053a8754a8ff183d8`  
		Last Modified: Sat, 11 May 2019 09:00:04 GMT  
		Size: 16.2 MB (16206883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac51cf5f7bdc8efee35852fe1db18bd767acda011ce9cc51b2c976b125ee785`  
		Last Modified: Sat, 11 May 2019 08:59:56 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v2.0-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:355d8bdde2967344d0478586e0d5c18caeca258bcd99ee866f40c43ff19ccdbd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.3 MB (19321981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93f6e37f824540b98f39a79b49c0e8fba3b05da4d40b3f038d76a8de545bbbba`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Wed, 29 May 2019 22:48:42 GMT
RUN apk --no-cache add ca-certificates tzdata
# Wed, 29 May 2019 22:48:46 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/containous/traefik/releases/download/v2.0.0-alpha4/traefik_v2.0.0-alpha4_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Wed, 29 May 2019 22:48:47 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 29 May 2019 22:48:47 GMT
EXPOSE 80
# Wed, 29 May 2019 22:48:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 29 May 2019 22:48:48 GMT
CMD ["traefik"]
# Wed, 29 May 2019 22:48:48 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha4 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebac1f5578ad08cba7db45eff4b56b6f8d966b742b341f56c22641b30a459d54`  
		Last Modified: Wed, 29 May 2019 22:49:44 GMT  
		Size: 699.1 KB (699097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eff65dd00de5c887d1055361353703b0f490f01d48365b5a16c82d6c3185383f`  
		Last Modified: Wed, 29 May 2019 22:49:52 GMT  
		Size: 15.9 MB (15933785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d59b2d3d1598a4bc9d513f89bd20427934f7ecd284aa1777ca71694ea4151a9`  
		Last Modified: Wed, 29 May 2019 22:49:44 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v2.0-nanoserver`

```console
$ docker pull traefik@sha256:393568f3853a2509d49361957e9d5f12541ee385f0b0a616355037f15b454d81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:v2.0-nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:282a68de735b8569af06f1b246c2048d20652c74aea25c4dec7a48d89a61102d
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.7 MB (452699359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53af306dc84bf9d777e23b9751a8ebc8828345e13e2849def961e15d6a3483bd`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Thu, 18 Apr 2019 09:31:30 GMT
RUN cmd /S /C #(nop) COPY file:f5d7bc66858ac5145aa17aaf5598825dd7d56948e3d950ea0bedc5d718ec029a in \traefik.exe 
# Thu, 18 Apr 2019 09:31:38 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Thu, 18 Apr 2019 09:31:39 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Thu, 18 Apr 2019 09:31:40 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha4 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:538e5a9cc836f82795394287767591a4b93ae6a1dcd2233a0ba99210816cae9b`  
		Last Modified: Thu, 18 Apr 2019 09:32:13 GMT  
		Size: 17.3 MB (17299694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:492626a8f1da221547e14ae8338c7f9fb59a792c5221ff8dcaf22f44db0437d0`  
		Last Modified: Thu, 18 Apr 2019 09:32:09 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dd5012cac867a3f09f87478eece96a96096eed50c30b9e46144e92c640f1dd9`  
		Last Modified: Thu, 18 Apr 2019 09:32:09 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43f63b6c096f1133f75e4d3a69b639900dc820dc2d9d2578a6dbe58244525042`  
		Last Modified: Thu, 18 Apr 2019 09:32:10 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v2.0-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:393568f3853a2509d49361957e9d5f12541ee385f0b0a616355037f15b454d81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:v2.0-nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:282a68de735b8569af06f1b246c2048d20652c74aea25c4dec7a48d89a61102d
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.7 MB (452699359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53af306dc84bf9d777e23b9751a8ebc8828345e13e2849def961e15d6a3483bd`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Thu, 18 Apr 2019 09:31:30 GMT
RUN cmd /S /C #(nop) COPY file:f5d7bc66858ac5145aa17aaf5598825dd7d56948e3d950ea0bedc5d718ec029a in \traefik.exe 
# Thu, 18 Apr 2019 09:31:38 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Thu, 18 Apr 2019 09:31:39 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Thu, 18 Apr 2019 09:31:40 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha4 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:538e5a9cc836f82795394287767591a4b93ae6a1dcd2233a0ba99210816cae9b`  
		Last Modified: Thu, 18 Apr 2019 09:32:13 GMT  
		Size: 17.3 MB (17299694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:492626a8f1da221547e14ae8338c7f9fb59a792c5221ff8dcaf22f44db0437d0`  
		Last Modified: Thu, 18 Apr 2019 09:32:09 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dd5012cac867a3f09f87478eece96a96096eed50c30b9e46144e92c640f1dd9`  
		Last Modified: Thu, 18 Apr 2019 09:32:09 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43f63b6c096f1133f75e4d3a69b639900dc820dc2d9d2578a6dbe58244525042`  
		Last Modified: Thu, 18 Apr 2019 09:32:10 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
