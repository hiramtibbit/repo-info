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
-	[`traefik:2.0.0-alpha4`](#traefik200-alpha4)
-	[`traefik:2.0.0-alpha4-alpine`](#traefik200-alpha4-alpine)
-	[`traefik:2.0.0-alpha4-nanoserver`](#traefik200-alpha4-nanoserver)
-	[`traefik:2.0.0-alpha4-nanoserver-sac2016`](#traefik200-alpha4-nanoserver-sac2016)
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
-	[`traefik:v2.0.0-alpha4`](#traefikv200-alpha4)
-	[`traefik:v2.0.0-alpha4-alpine`](#traefikv200-alpha4-alpine)
-	[`traefik:v2.0.0-alpha4-nanoserver`](#traefikv200-alpha4-nanoserver)
-	[`traefik:v2.0.0-alpha4-nanoserver-sac2016`](#traefikv200-alpha4-nanoserver-sac2016)
-	[`traefik:v2.0-alpine`](#traefikv20-alpine)
-	[`traefik:v2.0-nanoserver`](#traefikv20-nanoserver)
-	[`traefik:v2.0-nanoserver-sac2016`](#traefikv20-nanoserver-sac2016)

## `traefik:1.7`

```console
$ docker pull traefik@sha256:d590b5ef1278809b8809025eba2bd67afc2fdfe1926d87e67fcada14deb38652
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.7` - linux; amd64

```console
$ docker pull traefik@sha256:e5ab2366d797bbe0e376189150b551b1f7fc4a3ee26d069c64b7ef9669e0028c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.3 MB (20346170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d2f1c7902c773164cfa4afba0af881fe47b399b930f6ae92b5eea3cb7ee81cc`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 19 Mar 2019 21:34:26 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Fri, 26 Apr 2019 22:23:59 GMT
COPY file:ad5a10c4cb0f93b074b68e3cd7c5359cdd071f222035954a2bc273552178e519 in / 
# Fri, 26 Apr 2019 22:23:59 GMT
EXPOSE 80
# Fri, 26 Apr 2019 22:23:59 GMT
VOLUME [/tmp]
# Fri, 26 Apr 2019 22:23:59 GMT
ENTRYPOINT ["/traefik"]
# Fri, 26 Apr 2019 22:24:00 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.11 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:d572f7c8e98390811ccda70b3cd865d413636517e557d586db244257f25ef6df`  
		Last Modified: Tue, 19 Mar 2019 21:35:04 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7049637f2a99de315b8bbd3cbd7db196aae2287df6e7a41c02e86be4f162a45`  
		Last Modified: Fri, 26 Apr 2019 22:24:23 GMT  
		Size: 20.2 MB (20214148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7` - linux; arm variant v6

```console
$ docker pull traefik@sha256:873f025afff0ae8ca7ecab0a21e1bfa41c8b3a5b6612483641e646547b6da0a3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 MB (19101313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd2133e0c6de639eb2f24ab42601e4a6724e754768e5409c87eb3c0844ca27f0`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 20 Mar 2019 08:11:08 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Sat, 27 Apr 2019 07:53:18 GMT
COPY file:02a889279a97ef9ca78eca3e8a037c8941adb309ca9666cc8ced8e3f7c237384 in / 
# Sat, 27 Apr 2019 07:53:19 GMT
EXPOSE 80
# Sat, 27 Apr 2019 07:53:19 GMT
VOLUME [/tmp]
# Sat, 27 Apr 2019 07:53:19 GMT
ENTRYPOINT ["/traefik"]
# Sat, 27 Apr 2019 07:53:20 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.11 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:2b85204ff61918278f159c68b7d115600c72173e7f4db3f92d97b8ef4be1c8e9`  
		Last Modified: Wed, 20 Mar 2019 08:11:50 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceda96c01b0e04b20b68642353a6c4f7f6a09d7783a74b496cd7edddd7106239`  
		Last Modified: Sat, 27 Apr 2019 07:54:00 GMT  
		Size: 19.0 MB (18969291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:37912e9140096ea40c61dd24dfbb12a8fb6ea181f73408466aa038a318ea73e7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18649414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89a2b40ae1060553b788b90096b08051b6ed05417c2dfa79186cd39594c18a71`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 20 Mar 2019 10:26:00 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Sat, 27 Apr 2019 09:33:09 GMT
COPY file:e38be2d19848bc2ca5ccf824dd9afe93240777dd142803facbbd2603743ef037 in / 
# Sat, 27 Apr 2019 09:33:10 GMT
EXPOSE 80
# Sat, 27 Apr 2019 09:33:11 GMT
VOLUME [/tmp]
# Sat, 27 Apr 2019 09:33:12 GMT
ENTRYPOINT ["/traefik"]
# Sat, 27 Apr 2019 09:33:13 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.11 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:4e8329e705d7c968f3a066e73302387c1fa99df2d2bd76c27312b2522e19eccc`  
		Last Modified: Wed, 20 Mar 2019 10:27:32 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5761ea9625109aedd8895c33149765e21933b2149467ecc2656c5d065dc6ba0e`  
		Last Modified: Sat, 27 Apr 2019 09:34:10 GMT  
		Size: 18.5 MB (18517392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7.11-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:8e85531216f6eee7fb4130fec14fc2ad97c8fc9c97c38827c514b69275d28049
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:1.7.11-nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:3d67d3912d0f8772683ed030d859080dca04b1aed8201411cda3daf09e5e3653
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.6 MB (455628573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c83c6546ef879c3009de9454f49ef0f894fb29537d5d81a970a89ac9ca58841b`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Sat, 27 Apr 2019 09:19:19 GMT
RUN cmd /S /C #(nop) COPY file:aef7d71cd65e4c54c24f02f752c59dabf6f4a61fd66b56c9e96568c65ae6639f in \traefik.exe 
# Sat, 27 Apr 2019 09:19:26 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Sat, 27 Apr 2019 09:19:27 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Sat, 27 Apr 2019 09:19:28 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.11 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:b1a83fe910cee56fdcaf663bae82c8185c86fb4bef00deb1d4c77dbc991ff681`  
		Last Modified: Sat, 27 Apr 2019 09:19:59 GMT  
		Size: 20.2 MB (20228904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d1f62665ce6d5f095495a6064cc31452b9752e32ff88a89f2dccbeb48b05a41`  
		Last Modified: Sat, 27 Apr 2019 09:19:54 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1794352ceb532647071e3a59d0d9ab9d2dd818e238b0820cc9b2569fed275ed6`  
		Last Modified: Sat, 27 Apr 2019 09:19:54 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8151a72b46e6fd691d2a58fc83be0c72e309c737d38e1fa8b0dff6a21e404531`  
		Last Modified: Sat, 27 Apr 2019 09:19:54 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7.12`

**does not exist** (yet?)

## `traefik:1.7.12-alpine`

**does not exist** (yet?)

## `traefik:1.7.12-nanoserver`

**does not exist** (yet?)

## `traefik:1.7-alpine`

```console
$ docker pull traefik@sha256:2d3763c9c89ce9081a0df872ea573a4f60277f1b8e4f6efda0ef600fd1ecf3bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.7-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:fdc64c28afc2f12e69187658210ce58754e0fad74513bf260e1a35cec262121f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23667735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9b5d6f8e6c9802e8006a1249b77d0fc6d7458d7003b7645554ba80d870ed83e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 03:12:07 GMT
RUN apk --no-cache add ca-certificates tzdata
# Sat, 11 May 2019 03:12:22 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.11/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Sat, 11 May 2019 03:12:22 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Sat, 11 May 2019 03:12:23 GMT
EXPOSE 80
# Sat, 11 May 2019 03:12:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 11 May 2019 03:12:23 GMT
CMD ["traefik"]
# Sat, 11 May 2019 03:12:23 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.11 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:3e9bec2a3be7fa3bb0311a1e8ec28f8f2dce0c0dd9ed5cf045e026038320c499`  
		Last Modified: Sat, 11 May 2019 03:12:49 GMT  
		Size: 20.2 MB (20214235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb9ee31df38b0f99652b34b7a97d11e40d2e52fe9ecda069e0eab6337c094670`  
		Last Modified: Sat, 11 May 2019 03:12:45 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:e27b0ea20a690ac03b615b309d8b8c1aadbdf4b03b517bd8872a8f50586438cc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.2 MB (22212009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e4c6526f3d99d832ee96798da5b344f5eb83121eb944c971bc93b409cb673ad`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:58:57 GMT
RUN apk --no-cache add ca-certificates tzdata
# Sat, 11 May 2019 08:59:35 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.11/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Sat, 11 May 2019 08:59:36 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Sat, 11 May 2019 08:59:36 GMT
EXPOSE 80
# Sat, 11 May 2019 08:59:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 11 May 2019 08:59:37 GMT
CMD ["traefik"]
# Sat, 11 May 2019 08:59:38 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.11 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:b9db9a3f29b4085ee77635193da5d010f2d2b760773d8ea430519da6d8ac237c`  
		Last Modified: Sat, 11 May 2019 09:00:23 GMT  
		Size: 19.0 MB (18969413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad71bfb0a3c8c5170a257dc06df6d508db1ffe1175fcbb20fe53666cf4406f5c`  
		Last Modified: Sat, 11 May 2019 09:00:16 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:0f8afed10abf02c535882dc8bac649eee68cc6d5173464060ffcd6dad67a6677
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.9 MB (21905640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e47bcae282aa69b9b4d8a87130ee1a9492ef3ed12ad1441366b3b56c213b000`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 15:30:57 GMT
RUN apk --no-cache add ca-certificates tzdata
# Sat, 11 May 2019 15:31:46 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.11/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Sat, 11 May 2019 15:31:47 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Sat, 11 May 2019 15:31:48 GMT
EXPOSE 80
# Sat, 11 May 2019 15:31:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 11 May 2019 15:31:49 GMT
CMD ["traefik"]
# Sat, 11 May 2019 15:31:50 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.11 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdf31db76b1b4cad40c87848daa820f431bfab4a5242dca17c130f2bae973ef5`  
		Last Modified: Sat, 11 May 2019 15:32:17 GMT  
		Size: 699.0 KB (698953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35509aed6643654a6e5ee9dff253bfb70b812f7fb1840c82155ed0ff273194ed`  
		Last Modified: Sat, 11 May 2019 15:32:46 GMT  
		Size: 18.5 MB (18517589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c01c729de253acb15059a19461ca15783ac260687bede336c6ce8eaefe4068f0`  
		Last Modified: Sat, 11 May 2019 15:32:38 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7-nanoserver`

```console
$ docker pull traefik@sha256:8e85531216f6eee7fb4130fec14fc2ad97c8fc9c97c38827c514b69275d28049
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:1.7-nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:3d67d3912d0f8772683ed030d859080dca04b1aed8201411cda3daf09e5e3653
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.6 MB (455628573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c83c6546ef879c3009de9454f49ef0f894fb29537d5d81a970a89ac9ca58841b`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Sat, 27 Apr 2019 09:19:19 GMT
RUN cmd /S /C #(nop) COPY file:aef7d71cd65e4c54c24f02f752c59dabf6f4a61fd66b56c9e96568c65ae6639f in \traefik.exe 
# Sat, 27 Apr 2019 09:19:26 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Sat, 27 Apr 2019 09:19:27 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Sat, 27 Apr 2019 09:19:28 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.11 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:b1a83fe910cee56fdcaf663bae82c8185c86fb4bef00deb1d4c77dbc991ff681`  
		Last Modified: Sat, 27 Apr 2019 09:19:59 GMT  
		Size: 20.2 MB (20228904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d1f62665ce6d5f095495a6064cc31452b9752e32ff88a89f2dccbeb48b05a41`  
		Last Modified: Sat, 27 Apr 2019 09:19:54 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1794352ceb532647071e3a59d0d9ab9d2dd818e238b0820cc9b2569fed275ed6`  
		Last Modified: Sat, 27 Apr 2019 09:19:54 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8151a72b46e6fd691d2a58fc83be0c72e309c737d38e1fa8b0dff6a21e404531`  
		Last Modified: Sat, 27 Apr 2019 09:19:54 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:8e85531216f6eee7fb4130fec14fc2ad97c8fc9c97c38827c514b69275d28049
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:1.7-nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:3d67d3912d0f8772683ed030d859080dca04b1aed8201411cda3daf09e5e3653
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.6 MB (455628573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c83c6546ef879c3009de9454f49ef0f894fb29537d5d81a970a89ac9ca58841b`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Sat, 27 Apr 2019 09:19:19 GMT
RUN cmd /S /C #(nop) COPY file:aef7d71cd65e4c54c24f02f752c59dabf6f4a61fd66b56c9e96568c65ae6639f in \traefik.exe 
# Sat, 27 Apr 2019 09:19:26 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Sat, 27 Apr 2019 09:19:27 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Sat, 27 Apr 2019 09:19:28 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.11 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:b1a83fe910cee56fdcaf663bae82c8185c86fb4bef00deb1d4c77dbc991ff681`  
		Last Modified: Sat, 27 Apr 2019 09:19:59 GMT  
		Size: 20.2 MB (20228904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d1f62665ce6d5f095495a6064cc31452b9752e32ff88a89f2dccbeb48b05a41`  
		Last Modified: Sat, 27 Apr 2019 09:19:54 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1794352ceb532647071e3a59d0d9ab9d2dd818e238b0820cc9b2569fed275ed6`  
		Last Modified: Sat, 27 Apr 2019 09:19:54 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8151a72b46e6fd691d2a58fc83be0c72e309c737d38e1fa8b0dff6a21e404531`  
		Last Modified: Sat, 27 Apr 2019 09:19:54 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:2.0`

```console
$ docker pull traefik@sha256:96c4ec30e14f7500af9275565b541149c8f4e4f6c600071de1e623af69776c82
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
$ docker pull traefik@sha256:c5d8dc3f329e14a19b8d1bdaafbf4edc6b66a2b89fd1cc1aa1b849752f44e1dd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.1 MB (16065721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29da70bae65ccb4fdab21418f32d234753eff29aad7e0d49814694c58efbf681`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 20 Mar 2019 10:26:00 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Thu, 18 Apr 2019 10:20:24 GMT
COPY file:665d568ab7445f17c732648ccfe25c5ebc4eaf632bbdee649d81725a57bc884d in / 
# Thu, 18 Apr 2019 10:20:25 GMT
EXPOSE 80
# Thu, 18 Apr 2019 10:20:25 GMT
VOLUME [/tmp]
# Thu, 18 Apr 2019 10:20:26 GMT
ENTRYPOINT ["/traefik"]
# Thu, 18 Apr 2019 10:20:26 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha4 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:4e8329e705d7c968f3a066e73302387c1fa99df2d2bd76c27312b2522e19eccc`  
		Last Modified: Wed, 20 Mar 2019 10:27:32 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2874f0ea86fbc231a1419cc4e62063aaffc323a80166097f86974df9182fed4b`  
		Last Modified: Thu, 18 Apr 2019 10:22:17 GMT  
		Size: 15.9 MB (15933699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:2.0.0-alpha4`

```console
$ docker pull traefik@sha256:96c4ec30e14f7500af9275565b541149c8f4e4f6c600071de1e623af69776c82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:2.0.0-alpha4` - linux; amd64

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

### `traefik:2.0.0-alpha4` - linux; arm variant v6

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

### `traefik:2.0.0-alpha4` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:c5d8dc3f329e14a19b8d1bdaafbf4edc6b66a2b89fd1cc1aa1b849752f44e1dd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.1 MB (16065721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29da70bae65ccb4fdab21418f32d234753eff29aad7e0d49814694c58efbf681`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 20 Mar 2019 10:26:00 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Thu, 18 Apr 2019 10:20:24 GMT
COPY file:665d568ab7445f17c732648ccfe25c5ebc4eaf632bbdee649d81725a57bc884d in / 
# Thu, 18 Apr 2019 10:20:25 GMT
EXPOSE 80
# Thu, 18 Apr 2019 10:20:25 GMT
VOLUME [/tmp]
# Thu, 18 Apr 2019 10:20:26 GMT
ENTRYPOINT ["/traefik"]
# Thu, 18 Apr 2019 10:20:26 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha4 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:4e8329e705d7c968f3a066e73302387c1fa99df2d2bd76c27312b2522e19eccc`  
		Last Modified: Wed, 20 Mar 2019 10:27:32 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2874f0ea86fbc231a1419cc4e62063aaffc323a80166097f86974df9182fed4b`  
		Last Modified: Thu, 18 Apr 2019 10:22:17 GMT  
		Size: 15.9 MB (15933699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:2.0.0-alpha4-alpine`

```console
$ docker pull traefik@sha256:960a876812ece166c1d6457b8649d106bbcd06bee957629ab226f570dc4b1abd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:2.0.0-alpha4-alpine` - linux; amd64

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

### `traefik:2.0.0-alpha4-alpine` - linux; arm variant v6

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

### `traefik:2.0.0-alpha4-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:d135460847b7981712f00041d0c1d1bee2ef6113e923a67f4aff1d71494d04c3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.3 MB (19321835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57ca34bc8c1683680be74e3752ba64f632eedbf5209d405e104c6204b0eec55c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 15:30:57 GMT
RUN apk --no-cache add ca-certificates tzdata
# Sat, 11 May 2019 15:31:08 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/containous/traefik/releases/download/v2.0.0-alpha4/traefik_v2.0.0-alpha4_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Sat, 11 May 2019 15:31:10 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Sat, 11 May 2019 15:31:11 GMT
EXPOSE 80
# Sat, 11 May 2019 15:31:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 11 May 2019 15:31:13 GMT
CMD ["traefik"]
# Sat, 11 May 2019 15:31:15 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha4 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdf31db76b1b4cad40c87848daa820f431bfab4a5242dca17c130f2bae973ef5`  
		Last Modified: Sat, 11 May 2019 15:32:17 GMT  
		Size: 699.0 KB (698953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45bf7ffa48b533dda6e13abea61b2443bbb48bd72a2c2a607bc027079c72f600`  
		Last Modified: Sat, 11 May 2019 15:32:23 GMT  
		Size: 15.9 MB (15933784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9538c6dc4c9e16c5919cddc4398e8756995a006027b292044605b0ae0e0aa6f7`  
		Last Modified: Sat, 11 May 2019 15:32:17 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:2.0.0-alpha4-nanoserver`

```console
$ docker pull traefik@sha256:393568f3853a2509d49361957e9d5f12541ee385f0b0a616355037f15b454d81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:2.0.0-alpha4-nanoserver` - windows version 10.0.14393.2551; amd64

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

## `traefik:2.0.0-alpha4-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:393568f3853a2509d49361957e9d5f12541ee385f0b0a616355037f15b454d81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:2.0.0-alpha4-nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

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

## `traefik:2.0-alpine`

```console
$ docker pull traefik@sha256:960a876812ece166c1d6457b8649d106bbcd06bee957629ab226f570dc4b1abd
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
$ docker pull traefik@sha256:d135460847b7981712f00041d0c1d1bee2ef6113e923a67f4aff1d71494d04c3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.3 MB (19321835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57ca34bc8c1683680be74e3752ba64f632eedbf5209d405e104c6204b0eec55c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 15:30:57 GMT
RUN apk --no-cache add ca-certificates tzdata
# Sat, 11 May 2019 15:31:08 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/containous/traefik/releases/download/v2.0.0-alpha4/traefik_v2.0.0-alpha4_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Sat, 11 May 2019 15:31:10 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Sat, 11 May 2019 15:31:11 GMT
EXPOSE 80
# Sat, 11 May 2019 15:31:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 11 May 2019 15:31:13 GMT
CMD ["traefik"]
# Sat, 11 May 2019 15:31:15 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha4 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdf31db76b1b4cad40c87848daa820f431bfab4a5242dca17c130f2bae973ef5`  
		Last Modified: Sat, 11 May 2019 15:32:17 GMT  
		Size: 699.0 KB (698953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45bf7ffa48b533dda6e13abea61b2443bbb48bd72a2c2a607bc027079c72f600`  
		Last Modified: Sat, 11 May 2019 15:32:23 GMT  
		Size: 15.9 MB (15933784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9538c6dc4c9e16c5919cddc4398e8756995a006027b292044605b0ae0e0aa6f7`  
		Last Modified: Sat, 11 May 2019 15:32:17 GMT  
		Size: 319.0 B  
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
$ docker pull traefik@sha256:2d3763c9c89ce9081a0df872ea573a4f60277f1b8e4f6efda0ef600fd1ecf3bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:alpine` - linux; amd64

```console
$ docker pull traefik@sha256:fdc64c28afc2f12e69187658210ce58754e0fad74513bf260e1a35cec262121f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23667735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9b5d6f8e6c9802e8006a1249b77d0fc6d7458d7003b7645554ba80d870ed83e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 03:12:07 GMT
RUN apk --no-cache add ca-certificates tzdata
# Sat, 11 May 2019 03:12:22 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.11/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Sat, 11 May 2019 03:12:22 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Sat, 11 May 2019 03:12:23 GMT
EXPOSE 80
# Sat, 11 May 2019 03:12:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 11 May 2019 03:12:23 GMT
CMD ["traefik"]
# Sat, 11 May 2019 03:12:23 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.11 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:3e9bec2a3be7fa3bb0311a1e8ec28f8f2dce0c0dd9ed5cf045e026038320c499`  
		Last Modified: Sat, 11 May 2019 03:12:49 GMT  
		Size: 20.2 MB (20214235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb9ee31df38b0f99652b34b7a97d11e40d2e52fe9ecda069e0eab6337c094670`  
		Last Modified: Sat, 11 May 2019 03:12:45 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:e27b0ea20a690ac03b615b309d8b8c1aadbdf4b03b517bd8872a8f50586438cc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.2 MB (22212009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e4c6526f3d99d832ee96798da5b344f5eb83121eb944c971bc93b409cb673ad`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:58:57 GMT
RUN apk --no-cache add ca-certificates tzdata
# Sat, 11 May 2019 08:59:35 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.11/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Sat, 11 May 2019 08:59:36 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Sat, 11 May 2019 08:59:36 GMT
EXPOSE 80
# Sat, 11 May 2019 08:59:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 11 May 2019 08:59:37 GMT
CMD ["traefik"]
# Sat, 11 May 2019 08:59:38 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.11 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:b9db9a3f29b4085ee77635193da5d010f2d2b760773d8ea430519da6d8ac237c`  
		Last Modified: Sat, 11 May 2019 09:00:23 GMT  
		Size: 19.0 MB (18969413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad71bfb0a3c8c5170a257dc06df6d508db1ffe1175fcbb20fe53666cf4406f5c`  
		Last Modified: Sat, 11 May 2019 09:00:16 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:0f8afed10abf02c535882dc8bac649eee68cc6d5173464060ffcd6dad67a6677
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.9 MB (21905640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e47bcae282aa69b9b4d8a87130ee1a9492ef3ed12ad1441366b3b56c213b000`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 15:30:57 GMT
RUN apk --no-cache add ca-certificates tzdata
# Sat, 11 May 2019 15:31:46 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.11/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Sat, 11 May 2019 15:31:47 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Sat, 11 May 2019 15:31:48 GMT
EXPOSE 80
# Sat, 11 May 2019 15:31:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 11 May 2019 15:31:49 GMT
CMD ["traefik"]
# Sat, 11 May 2019 15:31:50 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.11 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdf31db76b1b4cad40c87848daa820f431bfab4a5242dca17c130f2bae973ef5`  
		Last Modified: Sat, 11 May 2019 15:32:17 GMT  
		Size: 699.0 KB (698953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35509aed6643654a6e5ee9dff253bfb70b812f7fb1840c82155ed0ff273194ed`  
		Last Modified: Sat, 11 May 2019 15:32:46 GMT  
		Size: 18.5 MB (18517589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c01c729de253acb15059a19461ca15783ac260687bede336c6ce8eaefe4068f0`  
		Last Modified: Sat, 11 May 2019 15:32:38 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:faisselle`

```console
$ docker pull traefik@sha256:96c4ec30e14f7500af9275565b541149c8f4e4f6c600071de1e623af69776c82
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
$ docker pull traefik@sha256:c5d8dc3f329e14a19b8d1bdaafbf4edc6b66a2b89fd1cc1aa1b849752f44e1dd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.1 MB (16065721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29da70bae65ccb4fdab21418f32d234753eff29aad7e0d49814694c58efbf681`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 20 Mar 2019 10:26:00 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Thu, 18 Apr 2019 10:20:24 GMT
COPY file:665d568ab7445f17c732648ccfe25c5ebc4eaf632bbdee649d81725a57bc884d in / 
# Thu, 18 Apr 2019 10:20:25 GMT
EXPOSE 80
# Thu, 18 Apr 2019 10:20:25 GMT
VOLUME [/tmp]
# Thu, 18 Apr 2019 10:20:26 GMT
ENTRYPOINT ["/traefik"]
# Thu, 18 Apr 2019 10:20:26 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha4 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:4e8329e705d7c968f3a066e73302387c1fa99df2d2bd76c27312b2522e19eccc`  
		Last Modified: Wed, 20 Mar 2019 10:27:32 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2874f0ea86fbc231a1419cc4e62063aaffc323a80166097f86974df9182fed4b`  
		Last Modified: Thu, 18 Apr 2019 10:22:17 GMT  
		Size: 15.9 MB (15933699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:faisselle-alpine`

```console
$ docker pull traefik@sha256:960a876812ece166c1d6457b8649d106bbcd06bee957629ab226f570dc4b1abd
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
$ docker pull traefik@sha256:d135460847b7981712f00041d0c1d1bee2ef6113e923a67f4aff1d71494d04c3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.3 MB (19321835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57ca34bc8c1683680be74e3752ba64f632eedbf5209d405e104c6204b0eec55c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 15:30:57 GMT
RUN apk --no-cache add ca-certificates tzdata
# Sat, 11 May 2019 15:31:08 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/containous/traefik/releases/download/v2.0.0-alpha4/traefik_v2.0.0-alpha4_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Sat, 11 May 2019 15:31:10 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Sat, 11 May 2019 15:31:11 GMT
EXPOSE 80
# Sat, 11 May 2019 15:31:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 11 May 2019 15:31:13 GMT
CMD ["traefik"]
# Sat, 11 May 2019 15:31:15 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha4 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdf31db76b1b4cad40c87848daa820f431bfab4a5242dca17c130f2bae973ef5`  
		Last Modified: Sat, 11 May 2019 15:32:17 GMT  
		Size: 699.0 KB (698953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45bf7ffa48b533dda6e13abea61b2443bbb48bd72a2c2a607bc027079c72f600`  
		Last Modified: Sat, 11 May 2019 15:32:23 GMT  
		Size: 15.9 MB (15933784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9538c6dc4c9e16c5919cddc4398e8756995a006027b292044605b0ae0e0aa6f7`  
		Last Modified: Sat, 11 May 2019 15:32:17 GMT  
		Size: 319.0 B  
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
$ docker pull traefik@sha256:d590b5ef1278809b8809025eba2bd67afc2fdfe1926d87e67fcada14deb38652
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:latest` - linux; amd64

```console
$ docker pull traefik@sha256:e5ab2366d797bbe0e376189150b551b1f7fc4a3ee26d069c64b7ef9669e0028c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.3 MB (20346170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d2f1c7902c773164cfa4afba0af881fe47b399b930f6ae92b5eea3cb7ee81cc`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 19 Mar 2019 21:34:26 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Fri, 26 Apr 2019 22:23:59 GMT
COPY file:ad5a10c4cb0f93b074b68e3cd7c5359cdd071f222035954a2bc273552178e519 in / 
# Fri, 26 Apr 2019 22:23:59 GMT
EXPOSE 80
# Fri, 26 Apr 2019 22:23:59 GMT
VOLUME [/tmp]
# Fri, 26 Apr 2019 22:23:59 GMT
ENTRYPOINT ["/traefik"]
# Fri, 26 Apr 2019 22:24:00 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.11 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:d572f7c8e98390811ccda70b3cd865d413636517e557d586db244257f25ef6df`  
		Last Modified: Tue, 19 Mar 2019 21:35:04 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7049637f2a99de315b8bbd3cbd7db196aae2287df6e7a41c02e86be4f162a45`  
		Last Modified: Fri, 26 Apr 2019 22:24:23 GMT  
		Size: 20.2 MB (20214148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:latest` - linux; arm variant v6

```console
$ docker pull traefik@sha256:873f025afff0ae8ca7ecab0a21e1bfa41c8b3a5b6612483641e646547b6da0a3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 MB (19101313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd2133e0c6de639eb2f24ab42601e4a6724e754768e5409c87eb3c0844ca27f0`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 20 Mar 2019 08:11:08 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Sat, 27 Apr 2019 07:53:18 GMT
COPY file:02a889279a97ef9ca78eca3e8a037c8941adb309ca9666cc8ced8e3f7c237384 in / 
# Sat, 27 Apr 2019 07:53:19 GMT
EXPOSE 80
# Sat, 27 Apr 2019 07:53:19 GMT
VOLUME [/tmp]
# Sat, 27 Apr 2019 07:53:19 GMT
ENTRYPOINT ["/traefik"]
# Sat, 27 Apr 2019 07:53:20 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.11 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:2b85204ff61918278f159c68b7d115600c72173e7f4db3f92d97b8ef4be1c8e9`  
		Last Modified: Wed, 20 Mar 2019 08:11:50 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceda96c01b0e04b20b68642353a6c4f7f6a09d7783a74b496cd7edddd7106239`  
		Last Modified: Sat, 27 Apr 2019 07:54:00 GMT  
		Size: 19.0 MB (18969291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:latest` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:37912e9140096ea40c61dd24dfbb12a8fb6ea181f73408466aa038a318ea73e7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18649414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89a2b40ae1060553b788b90096b08051b6ed05417c2dfa79186cd39594c18a71`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 20 Mar 2019 10:26:00 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Sat, 27 Apr 2019 09:33:09 GMT
COPY file:e38be2d19848bc2ca5ccf824dd9afe93240777dd142803facbbd2603743ef037 in / 
# Sat, 27 Apr 2019 09:33:10 GMT
EXPOSE 80
# Sat, 27 Apr 2019 09:33:11 GMT
VOLUME [/tmp]
# Sat, 27 Apr 2019 09:33:12 GMT
ENTRYPOINT ["/traefik"]
# Sat, 27 Apr 2019 09:33:13 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.11 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:4e8329e705d7c968f3a066e73302387c1fa99df2d2bd76c27312b2522e19eccc`  
		Last Modified: Wed, 20 Mar 2019 10:27:32 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5761ea9625109aedd8895c33149765e21933b2149467ecc2656c5d065dc6ba0e`  
		Last Modified: Sat, 27 Apr 2019 09:34:10 GMT  
		Size: 18.5 MB (18517392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:maroilles`

```console
$ docker pull traefik@sha256:d590b5ef1278809b8809025eba2bd67afc2fdfe1926d87e67fcada14deb38652
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:maroilles` - linux; amd64

```console
$ docker pull traefik@sha256:e5ab2366d797bbe0e376189150b551b1f7fc4a3ee26d069c64b7ef9669e0028c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.3 MB (20346170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d2f1c7902c773164cfa4afba0af881fe47b399b930f6ae92b5eea3cb7ee81cc`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 19 Mar 2019 21:34:26 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Fri, 26 Apr 2019 22:23:59 GMT
COPY file:ad5a10c4cb0f93b074b68e3cd7c5359cdd071f222035954a2bc273552178e519 in / 
# Fri, 26 Apr 2019 22:23:59 GMT
EXPOSE 80
# Fri, 26 Apr 2019 22:23:59 GMT
VOLUME [/tmp]
# Fri, 26 Apr 2019 22:23:59 GMT
ENTRYPOINT ["/traefik"]
# Fri, 26 Apr 2019 22:24:00 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.11 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:d572f7c8e98390811ccda70b3cd865d413636517e557d586db244257f25ef6df`  
		Last Modified: Tue, 19 Mar 2019 21:35:04 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7049637f2a99de315b8bbd3cbd7db196aae2287df6e7a41c02e86be4f162a45`  
		Last Modified: Fri, 26 Apr 2019 22:24:23 GMT  
		Size: 20.2 MB (20214148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:maroilles` - linux; arm variant v6

```console
$ docker pull traefik@sha256:873f025afff0ae8ca7ecab0a21e1bfa41c8b3a5b6612483641e646547b6da0a3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 MB (19101313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd2133e0c6de639eb2f24ab42601e4a6724e754768e5409c87eb3c0844ca27f0`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 20 Mar 2019 08:11:08 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Sat, 27 Apr 2019 07:53:18 GMT
COPY file:02a889279a97ef9ca78eca3e8a037c8941adb309ca9666cc8ced8e3f7c237384 in / 
# Sat, 27 Apr 2019 07:53:19 GMT
EXPOSE 80
# Sat, 27 Apr 2019 07:53:19 GMT
VOLUME [/tmp]
# Sat, 27 Apr 2019 07:53:19 GMT
ENTRYPOINT ["/traefik"]
# Sat, 27 Apr 2019 07:53:20 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.11 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:2b85204ff61918278f159c68b7d115600c72173e7f4db3f92d97b8ef4be1c8e9`  
		Last Modified: Wed, 20 Mar 2019 08:11:50 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceda96c01b0e04b20b68642353a6c4f7f6a09d7783a74b496cd7edddd7106239`  
		Last Modified: Sat, 27 Apr 2019 07:54:00 GMT  
		Size: 19.0 MB (18969291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:maroilles` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:37912e9140096ea40c61dd24dfbb12a8fb6ea181f73408466aa038a318ea73e7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18649414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89a2b40ae1060553b788b90096b08051b6ed05417c2dfa79186cd39594c18a71`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 20 Mar 2019 10:26:00 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Sat, 27 Apr 2019 09:33:09 GMT
COPY file:e38be2d19848bc2ca5ccf824dd9afe93240777dd142803facbbd2603743ef037 in / 
# Sat, 27 Apr 2019 09:33:10 GMT
EXPOSE 80
# Sat, 27 Apr 2019 09:33:11 GMT
VOLUME [/tmp]
# Sat, 27 Apr 2019 09:33:12 GMT
ENTRYPOINT ["/traefik"]
# Sat, 27 Apr 2019 09:33:13 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.11 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:4e8329e705d7c968f3a066e73302387c1fa99df2d2bd76c27312b2522e19eccc`  
		Last Modified: Wed, 20 Mar 2019 10:27:32 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5761ea9625109aedd8895c33149765e21933b2149467ecc2656c5d065dc6ba0e`  
		Last Modified: Sat, 27 Apr 2019 09:34:10 GMT  
		Size: 18.5 MB (18517392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:maroilles-alpine`

```console
$ docker pull traefik@sha256:2d3763c9c89ce9081a0df872ea573a4f60277f1b8e4f6efda0ef600fd1ecf3bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:maroilles-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:fdc64c28afc2f12e69187658210ce58754e0fad74513bf260e1a35cec262121f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23667735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9b5d6f8e6c9802e8006a1249b77d0fc6d7458d7003b7645554ba80d870ed83e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 03:12:07 GMT
RUN apk --no-cache add ca-certificates tzdata
# Sat, 11 May 2019 03:12:22 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.11/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Sat, 11 May 2019 03:12:22 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Sat, 11 May 2019 03:12:23 GMT
EXPOSE 80
# Sat, 11 May 2019 03:12:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 11 May 2019 03:12:23 GMT
CMD ["traefik"]
# Sat, 11 May 2019 03:12:23 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.11 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:3e9bec2a3be7fa3bb0311a1e8ec28f8f2dce0c0dd9ed5cf045e026038320c499`  
		Last Modified: Sat, 11 May 2019 03:12:49 GMT  
		Size: 20.2 MB (20214235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb9ee31df38b0f99652b34b7a97d11e40d2e52fe9ecda069e0eab6337c094670`  
		Last Modified: Sat, 11 May 2019 03:12:45 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:maroilles-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:e27b0ea20a690ac03b615b309d8b8c1aadbdf4b03b517bd8872a8f50586438cc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.2 MB (22212009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e4c6526f3d99d832ee96798da5b344f5eb83121eb944c971bc93b409cb673ad`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:58:57 GMT
RUN apk --no-cache add ca-certificates tzdata
# Sat, 11 May 2019 08:59:35 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.11/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Sat, 11 May 2019 08:59:36 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Sat, 11 May 2019 08:59:36 GMT
EXPOSE 80
# Sat, 11 May 2019 08:59:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 11 May 2019 08:59:37 GMT
CMD ["traefik"]
# Sat, 11 May 2019 08:59:38 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.11 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:b9db9a3f29b4085ee77635193da5d010f2d2b760773d8ea430519da6d8ac237c`  
		Last Modified: Sat, 11 May 2019 09:00:23 GMT  
		Size: 19.0 MB (18969413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad71bfb0a3c8c5170a257dc06df6d508db1ffe1175fcbb20fe53666cf4406f5c`  
		Last Modified: Sat, 11 May 2019 09:00:16 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:maroilles-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:0f8afed10abf02c535882dc8bac649eee68cc6d5173464060ffcd6dad67a6677
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.9 MB (21905640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e47bcae282aa69b9b4d8a87130ee1a9492ef3ed12ad1441366b3b56c213b000`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 15:30:57 GMT
RUN apk --no-cache add ca-certificates tzdata
# Sat, 11 May 2019 15:31:46 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.11/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Sat, 11 May 2019 15:31:47 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Sat, 11 May 2019 15:31:48 GMT
EXPOSE 80
# Sat, 11 May 2019 15:31:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 11 May 2019 15:31:49 GMT
CMD ["traefik"]
# Sat, 11 May 2019 15:31:50 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.11 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdf31db76b1b4cad40c87848daa820f431bfab4a5242dca17c130f2bae973ef5`  
		Last Modified: Sat, 11 May 2019 15:32:17 GMT  
		Size: 699.0 KB (698953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35509aed6643654a6e5ee9dff253bfb70b812f7fb1840c82155ed0ff273194ed`  
		Last Modified: Sat, 11 May 2019 15:32:46 GMT  
		Size: 18.5 MB (18517589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c01c729de253acb15059a19461ca15783ac260687bede336c6ce8eaefe4068f0`  
		Last Modified: Sat, 11 May 2019 15:32:38 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:maroilles-nanoserver`

```console
$ docker pull traefik@sha256:8e85531216f6eee7fb4130fec14fc2ad97c8fc9c97c38827c514b69275d28049
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:maroilles-nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:3d67d3912d0f8772683ed030d859080dca04b1aed8201411cda3daf09e5e3653
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.6 MB (455628573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c83c6546ef879c3009de9454f49ef0f894fb29537d5d81a970a89ac9ca58841b`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Sat, 27 Apr 2019 09:19:19 GMT
RUN cmd /S /C #(nop) COPY file:aef7d71cd65e4c54c24f02f752c59dabf6f4a61fd66b56c9e96568c65ae6639f in \traefik.exe 
# Sat, 27 Apr 2019 09:19:26 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Sat, 27 Apr 2019 09:19:27 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Sat, 27 Apr 2019 09:19:28 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.11 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:b1a83fe910cee56fdcaf663bae82c8185c86fb4bef00deb1d4c77dbc991ff681`  
		Last Modified: Sat, 27 Apr 2019 09:19:59 GMT  
		Size: 20.2 MB (20228904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d1f62665ce6d5f095495a6064cc31452b9752e32ff88a89f2dccbeb48b05a41`  
		Last Modified: Sat, 27 Apr 2019 09:19:54 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1794352ceb532647071e3a59d0d9ab9d2dd818e238b0820cc9b2569fed275ed6`  
		Last Modified: Sat, 27 Apr 2019 09:19:54 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8151a72b46e6fd691d2a58fc83be0c72e309c737d38e1fa8b0dff6a21e404531`  
		Last Modified: Sat, 27 Apr 2019 09:19:54 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:maroilles-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:8e85531216f6eee7fb4130fec14fc2ad97c8fc9c97c38827c514b69275d28049
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:maroilles-nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:3d67d3912d0f8772683ed030d859080dca04b1aed8201411cda3daf09e5e3653
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.6 MB (455628573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c83c6546ef879c3009de9454f49ef0f894fb29537d5d81a970a89ac9ca58841b`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Sat, 27 Apr 2019 09:19:19 GMT
RUN cmd /S /C #(nop) COPY file:aef7d71cd65e4c54c24f02f752c59dabf6f4a61fd66b56c9e96568c65ae6639f in \traefik.exe 
# Sat, 27 Apr 2019 09:19:26 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Sat, 27 Apr 2019 09:19:27 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Sat, 27 Apr 2019 09:19:28 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.11 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:b1a83fe910cee56fdcaf663bae82c8185c86fb4bef00deb1d4c77dbc991ff681`  
		Last Modified: Sat, 27 Apr 2019 09:19:59 GMT  
		Size: 20.2 MB (20228904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d1f62665ce6d5f095495a6064cc31452b9752e32ff88a89f2dccbeb48b05a41`  
		Last Modified: Sat, 27 Apr 2019 09:19:54 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1794352ceb532647071e3a59d0d9ab9d2dd818e238b0820cc9b2569fed275ed6`  
		Last Modified: Sat, 27 Apr 2019 09:19:54 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8151a72b46e6fd691d2a58fc83be0c72e309c737d38e1fa8b0dff6a21e404531`  
		Last Modified: Sat, 27 Apr 2019 09:19:54 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:nanoserver`

```console
$ docker pull traefik@sha256:8e85531216f6eee7fb4130fec14fc2ad97c8fc9c97c38827c514b69275d28049
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:3d67d3912d0f8772683ed030d859080dca04b1aed8201411cda3daf09e5e3653
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.6 MB (455628573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c83c6546ef879c3009de9454f49ef0f894fb29537d5d81a970a89ac9ca58841b`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Sat, 27 Apr 2019 09:19:19 GMT
RUN cmd /S /C #(nop) COPY file:aef7d71cd65e4c54c24f02f752c59dabf6f4a61fd66b56c9e96568c65ae6639f in \traefik.exe 
# Sat, 27 Apr 2019 09:19:26 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Sat, 27 Apr 2019 09:19:27 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Sat, 27 Apr 2019 09:19:28 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.11 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:b1a83fe910cee56fdcaf663bae82c8185c86fb4bef00deb1d4c77dbc991ff681`  
		Last Modified: Sat, 27 Apr 2019 09:19:59 GMT  
		Size: 20.2 MB (20228904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d1f62665ce6d5f095495a6064cc31452b9752e32ff88a89f2dccbeb48b05a41`  
		Last Modified: Sat, 27 Apr 2019 09:19:54 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1794352ceb532647071e3a59d0d9ab9d2dd818e238b0820cc9b2569fed275ed6`  
		Last Modified: Sat, 27 Apr 2019 09:19:54 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8151a72b46e6fd691d2a58fc83be0c72e309c737d38e1fa8b0dff6a21e404531`  
		Last Modified: Sat, 27 Apr 2019 09:19:54 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:nanoserver-sac2016`

```console
$ docker pull traefik@sha256:8e85531216f6eee7fb4130fec14fc2ad97c8fc9c97c38827c514b69275d28049
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:3d67d3912d0f8772683ed030d859080dca04b1aed8201411cda3daf09e5e3653
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.6 MB (455628573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c83c6546ef879c3009de9454f49ef0f894fb29537d5d81a970a89ac9ca58841b`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Sat, 27 Apr 2019 09:19:19 GMT
RUN cmd /S /C #(nop) COPY file:aef7d71cd65e4c54c24f02f752c59dabf6f4a61fd66b56c9e96568c65ae6639f in \traefik.exe 
# Sat, 27 Apr 2019 09:19:26 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Sat, 27 Apr 2019 09:19:27 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Sat, 27 Apr 2019 09:19:28 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.11 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:b1a83fe910cee56fdcaf663bae82c8185c86fb4bef00deb1d4c77dbc991ff681`  
		Last Modified: Sat, 27 Apr 2019 09:19:59 GMT  
		Size: 20.2 MB (20228904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d1f62665ce6d5f095495a6064cc31452b9752e32ff88a89f2dccbeb48b05a41`  
		Last Modified: Sat, 27 Apr 2019 09:19:54 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1794352ceb532647071e3a59d0d9ab9d2dd818e238b0820cc9b2569fed275ed6`  
		Last Modified: Sat, 27 Apr 2019 09:19:54 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8151a72b46e6fd691d2a58fc83be0c72e309c737d38e1fa8b0dff6a21e404531`  
		Last Modified: Sat, 27 Apr 2019 09:19:54 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7`

```console
$ docker pull traefik@sha256:d590b5ef1278809b8809025eba2bd67afc2fdfe1926d87e67fcada14deb38652
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.7` - linux; amd64

```console
$ docker pull traefik@sha256:e5ab2366d797bbe0e376189150b551b1f7fc4a3ee26d069c64b7ef9669e0028c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.3 MB (20346170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d2f1c7902c773164cfa4afba0af881fe47b399b930f6ae92b5eea3cb7ee81cc`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 19 Mar 2019 21:34:26 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Fri, 26 Apr 2019 22:23:59 GMT
COPY file:ad5a10c4cb0f93b074b68e3cd7c5359cdd071f222035954a2bc273552178e519 in / 
# Fri, 26 Apr 2019 22:23:59 GMT
EXPOSE 80
# Fri, 26 Apr 2019 22:23:59 GMT
VOLUME [/tmp]
# Fri, 26 Apr 2019 22:23:59 GMT
ENTRYPOINT ["/traefik"]
# Fri, 26 Apr 2019 22:24:00 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.11 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:d572f7c8e98390811ccda70b3cd865d413636517e557d586db244257f25ef6df`  
		Last Modified: Tue, 19 Mar 2019 21:35:04 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7049637f2a99de315b8bbd3cbd7db196aae2287df6e7a41c02e86be4f162a45`  
		Last Modified: Fri, 26 Apr 2019 22:24:23 GMT  
		Size: 20.2 MB (20214148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7` - linux; arm variant v6

```console
$ docker pull traefik@sha256:873f025afff0ae8ca7ecab0a21e1bfa41c8b3a5b6612483641e646547b6da0a3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 MB (19101313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd2133e0c6de639eb2f24ab42601e4a6724e754768e5409c87eb3c0844ca27f0`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 20 Mar 2019 08:11:08 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Sat, 27 Apr 2019 07:53:18 GMT
COPY file:02a889279a97ef9ca78eca3e8a037c8941adb309ca9666cc8ced8e3f7c237384 in / 
# Sat, 27 Apr 2019 07:53:19 GMT
EXPOSE 80
# Sat, 27 Apr 2019 07:53:19 GMT
VOLUME [/tmp]
# Sat, 27 Apr 2019 07:53:19 GMT
ENTRYPOINT ["/traefik"]
# Sat, 27 Apr 2019 07:53:20 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.11 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:2b85204ff61918278f159c68b7d115600c72173e7f4db3f92d97b8ef4be1c8e9`  
		Last Modified: Wed, 20 Mar 2019 08:11:50 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceda96c01b0e04b20b68642353a6c4f7f6a09d7783a74b496cd7edddd7106239`  
		Last Modified: Sat, 27 Apr 2019 07:54:00 GMT  
		Size: 19.0 MB (18969291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:37912e9140096ea40c61dd24dfbb12a8fb6ea181f73408466aa038a318ea73e7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18649414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89a2b40ae1060553b788b90096b08051b6ed05417c2dfa79186cd39594c18a71`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 20 Mar 2019 10:26:00 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Sat, 27 Apr 2019 09:33:09 GMT
COPY file:e38be2d19848bc2ca5ccf824dd9afe93240777dd142803facbbd2603743ef037 in / 
# Sat, 27 Apr 2019 09:33:10 GMT
EXPOSE 80
# Sat, 27 Apr 2019 09:33:11 GMT
VOLUME [/tmp]
# Sat, 27 Apr 2019 09:33:12 GMT
ENTRYPOINT ["/traefik"]
# Sat, 27 Apr 2019 09:33:13 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.11 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:4e8329e705d7c968f3a066e73302387c1fa99df2d2bd76c27312b2522e19eccc`  
		Last Modified: Wed, 20 Mar 2019 10:27:32 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5761ea9625109aedd8895c33149765e21933b2149467ecc2656c5d065dc6ba0e`  
		Last Modified: Sat, 27 Apr 2019 09:34:10 GMT  
		Size: 18.5 MB (18517392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7.11-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:8e85531216f6eee7fb4130fec14fc2ad97c8fc9c97c38827c514b69275d28049
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:v1.7.11-nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:3d67d3912d0f8772683ed030d859080dca04b1aed8201411cda3daf09e5e3653
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.6 MB (455628573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c83c6546ef879c3009de9454f49ef0f894fb29537d5d81a970a89ac9ca58841b`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Sat, 27 Apr 2019 09:19:19 GMT
RUN cmd /S /C #(nop) COPY file:aef7d71cd65e4c54c24f02f752c59dabf6f4a61fd66b56c9e96568c65ae6639f in \traefik.exe 
# Sat, 27 Apr 2019 09:19:26 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Sat, 27 Apr 2019 09:19:27 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Sat, 27 Apr 2019 09:19:28 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.11 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:b1a83fe910cee56fdcaf663bae82c8185c86fb4bef00deb1d4c77dbc991ff681`  
		Last Modified: Sat, 27 Apr 2019 09:19:59 GMT  
		Size: 20.2 MB (20228904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d1f62665ce6d5f095495a6064cc31452b9752e32ff88a89f2dccbeb48b05a41`  
		Last Modified: Sat, 27 Apr 2019 09:19:54 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1794352ceb532647071e3a59d0d9ab9d2dd818e238b0820cc9b2569fed275ed6`  
		Last Modified: Sat, 27 Apr 2019 09:19:54 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8151a72b46e6fd691d2a58fc83be0c72e309c737d38e1fa8b0dff6a21e404531`  
		Last Modified: Sat, 27 Apr 2019 09:19:54 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7.12`

**does not exist** (yet?)

## `traefik:v1.7.12-alpine`

**does not exist** (yet?)

## `traefik:v1.7.12-nanoserver`

**does not exist** (yet?)

## `traefik:v1.7-alpine`

```console
$ docker pull traefik@sha256:2d3763c9c89ce9081a0df872ea573a4f60277f1b8e4f6efda0ef600fd1ecf3bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.7-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:fdc64c28afc2f12e69187658210ce58754e0fad74513bf260e1a35cec262121f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23667735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9b5d6f8e6c9802e8006a1249b77d0fc6d7458d7003b7645554ba80d870ed83e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 03:12:07 GMT
RUN apk --no-cache add ca-certificates tzdata
# Sat, 11 May 2019 03:12:22 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.11/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Sat, 11 May 2019 03:12:22 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Sat, 11 May 2019 03:12:23 GMT
EXPOSE 80
# Sat, 11 May 2019 03:12:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 11 May 2019 03:12:23 GMT
CMD ["traefik"]
# Sat, 11 May 2019 03:12:23 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.11 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:3e9bec2a3be7fa3bb0311a1e8ec28f8f2dce0c0dd9ed5cf045e026038320c499`  
		Last Modified: Sat, 11 May 2019 03:12:49 GMT  
		Size: 20.2 MB (20214235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb9ee31df38b0f99652b34b7a97d11e40d2e52fe9ecda069e0eab6337c094670`  
		Last Modified: Sat, 11 May 2019 03:12:45 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:e27b0ea20a690ac03b615b309d8b8c1aadbdf4b03b517bd8872a8f50586438cc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.2 MB (22212009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e4c6526f3d99d832ee96798da5b344f5eb83121eb944c971bc93b409cb673ad`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:58:57 GMT
RUN apk --no-cache add ca-certificates tzdata
# Sat, 11 May 2019 08:59:35 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.11/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Sat, 11 May 2019 08:59:36 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Sat, 11 May 2019 08:59:36 GMT
EXPOSE 80
# Sat, 11 May 2019 08:59:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 11 May 2019 08:59:37 GMT
CMD ["traefik"]
# Sat, 11 May 2019 08:59:38 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.11 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:b9db9a3f29b4085ee77635193da5d010f2d2b760773d8ea430519da6d8ac237c`  
		Last Modified: Sat, 11 May 2019 09:00:23 GMT  
		Size: 19.0 MB (18969413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad71bfb0a3c8c5170a257dc06df6d508db1ffe1175fcbb20fe53666cf4406f5c`  
		Last Modified: Sat, 11 May 2019 09:00:16 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:0f8afed10abf02c535882dc8bac649eee68cc6d5173464060ffcd6dad67a6677
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.9 MB (21905640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e47bcae282aa69b9b4d8a87130ee1a9492ef3ed12ad1441366b3b56c213b000`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 15:30:57 GMT
RUN apk --no-cache add ca-certificates tzdata
# Sat, 11 May 2019 15:31:46 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.11/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Sat, 11 May 2019 15:31:47 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Sat, 11 May 2019 15:31:48 GMT
EXPOSE 80
# Sat, 11 May 2019 15:31:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 11 May 2019 15:31:49 GMT
CMD ["traefik"]
# Sat, 11 May 2019 15:31:50 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.11 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdf31db76b1b4cad40c87848daa820f431bfab4a5242dca17c130f2bae973ef5`  
		Last Modified: Sat, 11 May 2019 15:32:17 GMT  
		Size: 699.0 KB (698953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35509aed6643654a6e5ee9dff253bfb70b812f7fb1840c82155ed0ff273194ed`  
		Last Modified: Sat, 11 May 2019 15:32:46 GMT  
		Size: 18.5 MB (18517589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c01c729de253acb15059a19461ca15783ac260687bede336c6ce8eaefe4068f0`  
		Last Modified: Sat, 11 May 2019 15:32:38 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7-nanoserver`

```console
$ docker pull traefik@sha256:8e85531216f6eee7fb4130fec14fc2ad97c8fc9c97c38827c514b69275d28049
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:v1.7-nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:3d67d3912d0f8772683ed030d859080dca04b1aed8201411cda3daf09e5e3653
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.6 MB (455628573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c83c6546ef879c3009de9454f49ef0f894fb29537d5d81a970a89ac9ca58841b`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Sat, 27 Apr 2019 09:19:19 GMT
RUN cmd /S /C #(nop) COPY file:aef7d71cd65e4c54c24f02f752c59dabf6f4a61fd66b56c9e96568c65ae6639f in \traefik.exe 
# Sat, 27 Apr 2019 09:19:26 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Sat, 27 Apr 2019 09:19:27 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Sat, 27 Apr 2019 09:19:28 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.11 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:b1a83fe910cee56fdcaf663bae82c8185c86fb4bef00deb1d4c77dbc991ff681`  
		Last Modified: Sat, 27 Apr 2019 09:19:59 GMT  
		Size: 20.2 MB (20228904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d1f62665ce6d5f095495a6064cc31452b9752e32ff88a89f2dccbeb48b05a41`  
		Last Modified: Sat, 27 Apr 2019 09:19:54 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1794352ceb532647071e3a59d0d9ab9d2dd818e238b0820cc9b2569fed275ed6`  
		Last Modified: Sat, 27 Apr 2019 09:19:54 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8151a72b46e6fd691d2a58fc83be0c72e309c737d38e1fa8b0dff6a21e404531`  
		Last Modified: Sat, 27 Apr 2019 09:19:54 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:8e85531216f6eee7fb4130fec14fc2ad97c8fc9c97c38827c514b69275d28049
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:v1.7-nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:3d67d3912d0f8772683ed030d859080dca04b1aed8201411cda3daf09e5e3653
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.6 MB (455628573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c83c6546ef879c3009de9454f49ef0f894fb29537d5d81a970a89ac9ca58841b`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Sat, 27 Apr 2019 09:19:19 GMT
RUN cmd /S /C #(nop) COPY file:aef7d71cd65e4c54c24f02f752c59dabf6f4a61fd66b56c9e96568c65ae6639f in \traefik.exe 
# Sat, 27 Apr 2019 09:19:26 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Sat, 27 Apr 2019 09:19:27 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Sat, 27 Apr 2019 09:19:28 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.11 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:b1a83fe910cee56fdcaf663bae82c8185c86fb4bef00deb1d4c77dbc991ff681`  
		Last Modified: Sat, 27 Apr 2019 09:19:59 GMT  
		Size: 20.2 MB (20228904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d1f62665ce6d5f095495a6064cc31452b9752e32ff88a89f2dccbeb48b05a41`  
		Last Modified: Sat, 27 Apr 2019 09:19:54 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1794352ceb532647071e3a59d0d9ab9d2dd818e238b0820cc9b2569fed275ed6`  
		Last Modified: Sat, 27 Apr 2019 09:19:54 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8151a72b46e6fd691d2a58fc83be0c72e309c737d38e1fa8b0dff6a21e404531`  
		Last Modified: Sat, 27 Apr 2019 09:19:54 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v2.0`

```console
$ docker pull traefik@sha256:96c4ec30e14f7500af9275565b541149c8f4e4f6c600071de1e623af69776c82
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
$ docker pull traefik@sha256:c5d8dc3f329e14a19b8d1bdaafbf4edc6b66a2b89fd1cc1aa1b849752f44e1dd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.1 MB (16065721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29da70bae65ccb4fdab21418f32d234753eff29aad7e0d49814694c58efbf681`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 20 Mar 2019 10:26:00 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Thu, 18 Apr 2019 10:20:24 GMT
COPY file:665d568ab7445f17c732648ccfe25c5ebc4eaf632bbdee649d81725a57bc884d in / 
# Thu, 18 Apr 2019 10:20:25 GMT
EXPOSE 80
# Thu, 18 Apr 2019 10:20:25 GMT
VOLUME [/tmp]
# Thu, 18 Apr 2019 10:20:26 GMT
ENTRYPOINT ["/traefik"]
# Thu, 18 Apr 2019 10:20:26 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha4 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:4e8329e705d7c968f3a066e73302387c1fa99df2d2bd76c27312b2522e19eccc`  
		Last Modified: Wed, 20 Mar 2019 10:27:32 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2874f0ea86fbc231a1419cc4e62063aaffc323a80166097f86974df9182fed4b`  
		Last Modified: Thu, 18 Apr 2019 10:22:17 GMT  
		Size: 15.9 MB (15933699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v2.0.0-alpha4`

```console
$ docker pull traefik@sha256:96c4ec30e14f7500af9275565b541149c8f4e4f6c600071de1e623af69776c82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v2.0.0-alpha4` - linux; amd64

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

### `traefik:v2.0.0-alpha4` - linux; arm variant v6

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

### `traefik:v2.0.0-alpha4` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:c5d8dc3f329e14a19b8d1bdaafbf4edc6b66a2b89fd1cc1aa1b849752f44e1dd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.1 MB (16065721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29da70bae65ccb4fdab21418f32d234753eff29aad7e0d49814694c58efbf681`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 20 Mar 2019 10:26:00 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Thu, 18 Apr 2019 10:20:24 GMT
COPY file:665d568ab7445f17c732648ccfe25c5ebc4eaf632bbdee649d81725a57bc884d in / 
# Thu, 18 Apr 2019 10:20:25 GMT
EXPOSE 80
# Thu, 18 Apr 2019 10:20:25 GMT
VOLUME [/tmp]
# Thu, 18 Apr 2019 10:20:26 GMT
ENTRYPOINT ["/traefik"]
# Thu, 18 Apr 2019 10:20:26 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha4 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:4e8329e705d7c968f3a066e73302387c1fa99df2d2bd76c27312b2522e19eccc`  
		Last Modified: Wed, 20 Mar 2019 10:27:32 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2874f0ea86fbc231a1419cc4e62063aaffc323a80166097f86974df9182fed4b`  
		Last Modified: Thu, 18 Apr 2019 10:22:17 GMT  
		Size: 15.9 MB (15933699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v2.0.0-alpha4-alpine`

```console
$ docker pull traefik@sha256:960a876812ece166c1d6457b8649d106bbcd06bee957629ab226f570dc4b1abd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v2.0.0-alpha4-alpine` - linux; amd64

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

### `traefik:v2.0.0-alpha4-alpine` - linux; arm variant v6

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

### `traefik:v2.0.0-alpha4-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:d135460847b7981712f00041d0c1d1bee2ef6113e923a67f4aff1d71494d04c3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.3 MB (19321835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57ca34bc8c1683680be74e3752ba64f632eedbf5209d405e104c6204b0eec55c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 15:30:57 GMT
RUN apk --no-cache add ca-certificates tzdata
# Sat, 11 May 2019 15:31:08 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/containous/traefik/releases/download/v2.0.0-alpha4/traefik_v2.0.0-alpha4_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Sat, 11 May 2019 15:31:10 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Sat, 11 May 2019 15:31:11 GMT
EXPOSE 80
# Sat, 11 May 2019 15:31:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 11 May 2019 15:31:13 GMT
CMD ["traefik"]
# Sat, 11 May 2019 15:31:15 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha4 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdf31db76b1b4cad40c87848daa820f431bfab4a5242dca17c130f2bae973ef5`  
		Last Modified: Sat, 11 May 2019 15:32:17 GMT  
		Size: 699.0 KB (698953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45bf7ffa48b533dda6e13abea61b2443bbb48bd72a2c2a607bc027079c72f600`  
		Last Modified: Sat, 11 May 2019 15:32:23 GMT  
		Size: 15.9 MB (15933784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9538c6dc4c9e16c5919cddc4398e8756995a006027b292044605b0ae0e0aa6f7`  
		Last Modified: Sat, 11 May 2019 15:32:17 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v2.0.0-alpha4-nanoserver`

```console
$ docker pull traefik@sha256:393568f3853a2509d49361957e9d5f12541ee385f0b0a616355037f15b454d81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:v2.0.0-alpha4-nanoserver` - windows version 10.0.14393.2551; amd64

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

## `traefik:v2.0.0-alpha4-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:393568f3853a2509d49361957e9d5f12541ee385f0b0a616355037f15b454d81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:v2.0.0-alpha4-nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

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

## `traefik:v2.0-alpine`

```console
$ docker pull traefik@sha256:960a876812ece166c1d6457b8649d106bbcd06bee957629ab226f570dc4b1abd
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
$ docker pull traefik@sha256:d135460847b7981712f00041d0c1d1bee2ef6113e923a67f4aff1d71494d04c3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.3 MB (19321835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57ca34bc8c1683680be74e3752ba64f632eedbf5209d405e104c6204b0eec55c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 15:30:57 GMT
RUN apk --no-cache add ca-certificates tzdata
# Sat, 11 May 2019 15:31:08 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/containous/traefik/releases/download/v2.0.0-alpha4/traefik_v2.0.0-alpha4_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Sat, 11 May 2019 15:31:10 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Sat, 11 May 2019 15:31:11 GMT
EXPOSE 80
# Sat, 11 May 2019 15:31:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 11 May 2019 15:31:13 GMT
CMD ["traefik"]
# Sat, 11 May 2019 15:31:15 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha4 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdf31db76b1b4cad40c87848daa820f431bfab4a5242dca17c130f2bae973ef5`  
		Last Modified: Sat, 11 May 2019 15:32:17 GMT  
		Size: 699.0 KB (698953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45bf7ffa48b533dda6e13abea61b2443bbb48bd72a2c2a607bc027079c72f600`  
		Last Modified: Sat, 11 May 2019 15:32:23 GMT  
		Size: 15.9 MB (15933784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9538c6dc4c9e16c5919cddc4398e8756995a006027b292044605b0ae0e0aa6f7`  
		Last Modified: Sat, 11 May 2019 15:32:17 GMT  
		Size: 319.0 B  
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
