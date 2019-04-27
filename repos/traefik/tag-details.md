<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `traefik`

-	[`traefik:1.7`](#traefik17)
-	[`traefik:1.7.11`](#traefik1711)
-	[`traefik:1.7.11-alpine`](#traefik1711-alpine)
-	[`traefik:1.7.11-nanoserver`](#traefik1711-nanoserver)
-	[`traefik:1.7.11-nanoserver-sac2016`](#traefik1711-nanoserver-sac2016)
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
-	[`traefik:v1.7.11`](#traefikv1711)
-	[`traefik:v1.7.11-alpine`](#traefikv1711-alpine)
-	[`traefik:v1.7.11-nanoserver`](#traefikv1711-nanoserver)
-	[`traefik:v1.7.11-nanoserver-sac2016`](#traefikv1711-nanoserver-sac2016)
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
$ docker pull traefik@sha256:4463af670ef828ec9e7d60111add356130b7394b94971b53ad12d298607a2167
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

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

## `traefik:1.7.11`

```console
$ docker pull traefik@sha256:4463af670ef828ec9e7d60111add356130b7394b94971b53ad12d298607a2167
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:1.7.11` - linux; amd64

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

### `traefik:1.7.11` - linux; arm variant v6

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

## `traefik:1.7.11-alpine`

```console
$ docker pull traefik@sha256:8ae2ab6a976fba9bec02c38bea43e099ea252921faccd5b855d28c8df763ee76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:1.7.11-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:ab2b6b2ba8991b646b4d51ded18e4d661fa120ac21f3c1771939072afbdd396d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23667152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2761899631d036000b3b6a8c5e3138b645da8bef3cf44cecef641292254a3a58`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 02:01:13 GMT
RUN apk --no-cache add ca-certificates tzdata
# Fri, 26 Apr 2019 22:24:05 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.11/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Fri, 26 Apr 2019 22:24:05 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Fri, 26 Apr 2019 22:24:05 GMT
EXPOSE 80
# Fri, 26 Apr 2019 22:24:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 26 Apr 2019 22:24:06 GMT
CMD ["traefik"]
# Fri, 26 Apr 2019 22:24:06 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.11 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dfd896cc066730f98b1aefc2de088832b91f007ec2c2f53ef92d5001ddb3edf`  
		Last Modified: Wed, 10 Apr 2019 02:02:00 GMT  
		Size: 695.6 KB (695613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a324f69cab073d2702bd42aa0c5a70ed798788ef78ba48686907ee207cabffa`  
		Last Modified: Fri, 26 Apr 2019 22:24:34 GMT  
		Size: 20.2 MB (20214209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b36ca2c57253a686aa7e10509ac2d72407f3fd26a8d71f181bf0df94f6b7ff5`  
		Last Modified: Fri, 26 Apr 2019 22:24:29 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7.11-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:4aff5cd7ef2e508a44f791aef195b6b5e7feec510013434040fb4b6cc82293e2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.2 MB (22210995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e16eeb8e5e777d87c2e661afe880d84c9113f1919ad232846c16ca9a5541fdc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 09:15:52 GMT
RUN apk --no-cache add ca-certificates tzdata
# Sat, 27 Apr 2019 07:53:31 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.11/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Sat, 27 Apr 2019 07:53:32 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Sat, 27 Apr 2019 07:53:32 GMT
EXPOSE 80
# Sat, 27 Apr 2019 07:53:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 27 Apr 2019 07:53:33 GMT
CMD ["traefik"]
# Sat, 27 Apr 2019 07:53:34 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.11 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b90ce778eff7cd2e5d262717e5e338956cfbf92843a587a31645f1cec1b5536`  
		Last Modified: Wed, 10 Apr 2019 09:16:33 GMT  
		Size: 697.8 KB (697833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1272d3f6a8a05a700db5a626859396b43de0416937000a85477708f5f7f62b4b`  
		Last Modified: Sat, 27 Apr 2019 07:54:20 GMT  
		Size: 19.0 MB (18969400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:712758bf62084de69122504e2d743809f80df17b7d122cb0af8bf6dab9dd4ad3`  
		Last Modified: Sat, 27 Apr 2019 07:54:12 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7.11-nanoserver`

**does not exist** (yet?)

## `traefik:1.7.11-nanoserver-sac2016`

**does not exist** (yet?)

## `traefik:1.7-alpine`

```console
$ docker pull traefik@sha256:8ae2ab6a976fba9bec02c38bea43e099ea252921faccd5b855d28c8df763ee76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:1.7-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:ab2b6b2ba8991b646b4d51ded18e4d661fa120ac21f3c1771939072afbdd396d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23667152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2761899631d036000b3b6a8c5e3138b645da8bef3cf44cecef641292254a3a58`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 02:01:13 GMT
RUN apk --no-cache add ca-certificates tzdata
# Fri, 26 Apr 2019 22:24:05 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.11/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Fri, 26 Apr 2019 22:24:05 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Fri, 26 Apr 2019 22:24:05 GMT
EXPOSE 80
# Fri, 26 Apr 2019 22:24:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 26 Apr 2019 22:24:06 GMT
CMD ["traefik"]
# Fri, 26 Apr 2019 22:24:06 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.11 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dfd896cc066730f98b1aefc2de088832b91f007ec2c2f53ef92d5001ddb3edf`  
		Last Modified: Wed, 10 Apr 2019 02:02:00 GMT  
		Size: 695.6 KB (695613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a324f69cab073d2702bd42aa0c5a70ed798788ef78ba48686907ee207cabffa`  
		Last Modified: Fri, 26 Apr 2019 22:24:34 GMT  
		Size: 20.2 MB (20214209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b36ca2c57253a686aa7e10509ac2d72407f3fd26a8d71f181bf0df94f6b7ff5`  
		Last Modified: Fri, 26 Apr 2019 22:24:29 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:4aff5cd7ef2e508a44f791aef195b6b5e7feec510013434040fb4b6cc82293e2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.2 MB (22210995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e16eeb8e5e777d87c2e661afe880d84c9113f1919ad232846c16ca9a5541fdc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 09:15:52 GMT
RUN apk --no-cache add ca-certificates tzdata
# Sat, 27 Apr 2019 07:53:31 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.11/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Sat, 27 Apr 2019 07:53:32 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Sat, 27 Apr 2019 07:53:32 GMT
EXPOSE 80
# Sat, 27 Apr 2019 07:53:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 27 Apr 2019 07:53:33 GMT
CMD ["traefik"]
# Sat, 27 Apr 2019 07:53:34 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.11 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b90ce778eff7cd2e5d262717e5e338956cfbf92843a587a31645f1cec1b5536`  
		Last Modified: Wed, 10 Apr 2019 09:16:33 GMT  
		Size: 697.8 KB (697833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1272d3f6a8a05a700db5a626859396b43de0416937000a85477708f5f7f62b4b`  
		Last Modified: Sat, 27 Apr 2019 07:54:20 GMT  
		Size: 19.0 MB (18969400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:712758bf62084de69122504e2d743809f80df17b7d122cb0af8bf6dab9dd4ad3`  
		Last Modified: Sat, 27 Apr 2019 07:54:12 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7-nanoserver`

```console
$ docker pull traefik@sha256:20f42ab8772342c9f534987e2fcd6f43004562f46d51ef74a5565591075e073a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:1.7-nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:add0a056a5a371a2836e9b9dd24e45551213af45a2267da62e27feec1c9e3249
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.4 MB (455435633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9d57a27979fe63e900eeddf405608e7d040ba2640d1ae0a7a02fdb05abd1aae`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Tue, 02 Apr 2019 09:17:35 GMT
RUN cmd /S /C #(nop) COPY file:0bbc8a39c96d8e5a4f5c12a7b29e48fec0a673e5d2147b1835e67fe2240b10c4 in \traefik.exe 
# Tue, 02 Apr 2019 09:17:45 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Tue, 02 Apr 2019 09:17:46 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 02 Apr 2019 09:17:47 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.10 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:16be2745a9e19c356c3d0e39205eedd69978836f322c08de9227398c31130071`  
		Last Modified: Tue, 02 Apr 2019 09:19:08 GMT  
		Size: 20.0 MB (20035980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:792624ef3958595dd24291208f96e11a26771b72ade6c7b317fdc52030ea50bb`  
		Last Modified: Tue, 02 Apr 2019 09:19:00 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d28053dd6f94d43497c1a86f7b1c003bbdb90eb4112ebc8779d94a0fa4335e`  
		Last Modified: Tue, 02 Apr 2019 09:19:00 GMT  
		Size: 942.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23404f6a8ee12360687ee599f80402846e7e8116dcefeee764413a92c1eaca60`  
		Last Modified: Tue, 02 Apr 2019 09:19:00 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:20f42ab8772342c9f534987e2fcd6f43004562f46d51ef74a5565591075e073a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:1.7-nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:add0a056a5a371a2836e9b9dd24e45551213af45a2267da62e27feec1c9e3249
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.4 MB (455435633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9d57a27979fe63e900eeddf405608e7d040ba2640d1ae0a7a02fdb05abd1aae`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Tue, 02 Apr 2019 09:17:35 GMT
RUN cmd /S /C #(nop) COPY file:0bbc8a39c96d8e5a4f5c12a7b29e48fec0a673e5d2147b1835e67fe2240b10c4 in \traefik.exe 
# Tue, 02 Apr 2019 09:17:45 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Tue, 02 Apr 2019 09:17:46 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 02 Apr 2019 09:17:47 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.10 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:16be2745a9e19c356c3d0e39205eedd69978836f322c08de9227398c31130071`  
		Last Modified: Tue, 02 Apr 2019 09:19:08 GMT  
		Size: 20.0 MB (20035980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:792624ef3958595dd24291208f96e11a26771b72ade6c7b317fdc52030ea50bb`  
		Last Modified: Tue, 02 Apr 2019 09:19:00 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d28053dd6f94d43497c1a86f7b1c003bbdb90eb4112ebc8779d94a0fa4335e`  
		Last Modified: Tue, 02 Apr 2019 09:19:00 GMT  
		Size: 942.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23404f6a8ee12360687ee599f80402846e7e8116dcefeee764413a92c1eaca60`  
		Last Modified: Tue, 02 Apr 2019 09:19:00 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:2.0`

```console
$ docker pull traefik@sha256:96977a25d1093b8ad9889c9d595f21fea4544746f7713ada3e3db11f8f744ba5
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
$ docker pull traefik@sha256:96977a25d1093b8ad9889c9d595f21fea4544746f7713ada3e3db11f8f744ba5
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
$ docker pull traefik@sha256:f9776946fa0cf33959265c6c2e02e0dfc8e389803a6a220e7ca223954c7ceeef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:2.0.0-alpha4-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:13aac7a3b7eb7dcab2ec161d7716fb6955df786d07748eb98ff9e51a5f4aa5b2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 MB (20769403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e6e45ed43e7beed7f0a9b098f06ac3d84795cf5a84a5a9ab7b0d379aec43d5b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 02:01:13 GMT
RUN apk --no-cache add ca-certificates tzdata
# Thu, 18 Apr 2019 00:00:31 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/containous/traefik/releases/download/v2.0.0-alpha4/traefik_v2.0.0-alpha4_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Thu, 18 Apr 2019 00:00:31 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Thu, 18 Apr 2019 00:00:31 GMT
EXPOSE 80
# Thu, 18 Apr 2019 00:00:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 18 Apr 2019 00:00:31 GMT
CMD ["traefik"]
# Thu, 18 Apr 2019 00:00:31 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha4 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dfd896cc066730f98b1aefc2de088832b91f007ec2c2f53ef92d5001ddb3edf`  
		Last Modified: Wed, 10 Apr 2019 02:02:00 GMT  
		Size: 695.6 KB (695613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3365942d1f6222d33908578b295a7bfd26ef91502febfae8ba024d260f9d48da`  
		Last Modified: Thu, 18 Apr 2019 00:01:07 GMT  
		Size: 17.3 MB (17316460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8198b15db7e0f1b7164cb35d175795a9f395d1f33b9ab8006971d91ff815f130`  
		Last Modified: Thu, 18 Apr 2019 00:01:04 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:2.0.0-alpha4-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:ad6375d899c02498ebffbc49149e71c7b5795833aa8e70637936a29b2916f9da
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.4 MB (19448468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0498884157fac3022dd98650986acfc1417e0aa383ae9a7ea9fbd97a705f5afb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 09:15:52 GMT
RUN apk --no-cache add ca-certificates tzdata
# Thu, 18 Apr 2019 08:32:59 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/containous/traefik/releases/download/v2.0.0-alpha4/traefik_v2.0.0-alpha4_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Thu, 18 Apr 2019 08:33:00 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Thu, 18 Apr 2019 08:33:01 GMT
EXPOSE 80
# Thu, 18 Apr 2019 08:33:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 18 Apr 2019 08:33:01 GMT
CMD ["traefik"]
# Thu, 18 Apr 2019 08:33:02 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha4 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b90ce778eff7cd2e5d262717e5e338956cfbf92843a587a31645f1cec1b5536`  
		Last Modified: Wed, 10 Apr 2019 09:16:33 GMT  
		Size: 697.8 KB (697833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec3070869560d3f2ce061eebf47aeeb24292fc7fe086027e9b16691600091aa3`  
		Last Modified: Thu, 18 Apr 2019 08:34:17 GMT  
		Size: 16.2 MB (16206872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8ef16a0239fc7797039c7bf07b17b30978dcb50671b2112a1fc98c5aa16403d`  
		Last Modified: Thu, 18 Apr 2019 08:34:11 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:2.0.0-alpha4-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:4715eaf357eaae161ff228705b3536a69cb10732be4a2e7b01b1a5d73b32ead4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.3 MB (19320599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7400d59a65ddbdd92f0432593277cc99a1cbcfdba096c861b785cea3054ecd1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 10 Apr 2019 08:49:11 GMT
ADD file:30e0a8ccdca70b20b8ce637f0ba5108157f4ba491447d20aafbe45d82392bd81 in / 
# Wed, 10 Apr 2019 08:49:12 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 09:36:07 GMT
RUN apk --no-cache add ca-certificates tzdata
# Thu, 18 Apr 2019 10:20:39 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/containous/traefik/releases/download/v2.0.0-alpha4/traefik_v2.0.0-alpha4_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Thu, 18 Apr 2019 10:20:40 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Thu, 18 Apr 2019 10:20:41 GMT
EXPOSE 80
# Thu, 18 Apr 2019 10:20:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 18 Apr 2019 10:20:44 GMT
CMD ["traefik"]
# Thu, 18 Apr 2019 10:20:45 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha4 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:6f37394be673296a0fdc21b819c5df40431baf7d3af121bee451726dd1457493`  
		Last Modified: Wed, 10 Apr 2019 08:50:38 GMT  
		Size: 2.7 MB (2688778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6b6a9317b7c02cc788a6ba35551c6123602739f7084d0dc6d7727dcedc4a84a`  
		Last Modified: Wed, 10 Apr 2019 09:37:07 GMT  
		Size: 697.7 KB (697724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1885457f15ecbc67afd4599b9cafab0978ab02c321643254d4c06e674793985`  
		Last Modified: Thu, 18 Apr 2019 10:22:37 GMT  
		Size: 15.9 MB (15933778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eeec3c14db02f827726a027e33f5d66cdefb45348f11950879f31a766591a0a`  
		Last Modified: Thu, 18 Apr 2019 10:22:31 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:2.0.0-alpha4-nanoserver`

```console
$ docker pull traefik@sha256:3e58963fe20afc73d4f3af533233f03d22166812bc4b1e5678e4c71375567c4a
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
$ docker pull traefik@sha256:3e58963fe20afc73d4f3af533233f03d22166812bc4b1e5678e4c71375567c4a
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
$ docker pull traefik@sha256:f9776946fa0cf33959265c6c2e02e0dfc8e389803a6a220e7ca223954c7ceeef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:2.0-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:13aac7a3b7eb7dcab2ec161d7716fb6955df786d07748eb98ff9e51a5f4aa5b2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 MB (20769403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e6e45ed43e7beed7f0a9b098f06ac3d84795cf5a84a5a9ab7b0d379aec43d5b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 02:01:13 GMT
RUN apk --no-cache add ca-certificates tzdata
# Thu, 18 Apr 2019 00:00:31 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/containous/traefik/releases/download/v2.0.0-alpha4/traefik_v2.0.0-alpha4_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Thu, 18 Apr 2019 00:00:31 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Thu, 18 Apr 2019 00:00:31 GMT
EXPOSE 80
# Thu, 18 Apr 2019 00:00:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 18 Apr 2019 00:00:31 GMT
CMD ["traefik"]
# Thu, 18 Apr 2019 00:00:31 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha4 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dfd896cc066730f98b1aefc2de088832b91f007ec2c2f53ef92d5001ddb3edf`  
		Last Modified: Wed, 10 Apr 2019 02:02:00 GMT  
		Size: 695.6 KB (695613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3365942d1f6222d33908578b295a7bfd26ef91502febfae8ba024d260f9d48da`  
		Last Modified: Thu, 18 Apr 2019 00:01:07 GMT  
		Size: 17.3 MB (17316460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8198b15db7e0f1b7164cb35d175795a9f395d1f33b9ab8006971d91ff815f130`  
		Last Modified: Thu, 18 Apr 2019 00:01:04 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:2.0-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:ad6375d899c02498ebffbc49149e71c7b5795833aa8e70637936a29b2916f9da
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.4 MB (19448468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0498884157fac3022dd98650986acfc1417e0aa383ae9a7ea9fbd97a705f5afb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 09:15:52 GMT
RUN apk --no-cache add ca-certificates tzdata
# Thu, 18 Apr 2019 08:32:59 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/containous/traefik/releases/download/v2.0.0-alpha4/traefik_v2.0.0-alpha4_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Thu, 18 Apr 2019 08:33:00 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Thu, 18 Apr 2019 08:33:01 GMT
EXPOSE 80
# Thu, 18 Apr 2019 08:33:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 18 Apr 2019 08:33:01 GMT
CMD ["traefik"]
# Thu, 18 Apr 2019 08:33:02 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha4 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b90ce778eff7cd2e5d262717e5e338956cfbf92843a587a31645f1cec1b5536`  
		Last Modified: Wed, 10 Apr 2019 09:16:33 GMT  
		Size: 697.8 KB (697833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec3070869560d3f2ce061eebf47aeeb24292fc7fe086027e9b16691600091aa3`  
		Last Modified: Thu, 18 Apr 2019 08:34:17 GMT  
		Size: 16.2 MB (16206872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8ef16a0239fc7797039c7bf07b17b30978dcb50671b2112a1fc98c5aa16403d`  
		Last Modified: Thu, 18 Apr 2019 08:34:11 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:2.0-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:4715eaf357eaae161ff228705b3536a69cb10732be4a2e7b01b1a5d73b32ead4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.3 MB (19320599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7400d59a65ddbdd92f0432593277cc99a1cbcfdba096c861b785cea3054ecd1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 10 Apr 2019 08:49:11 GMT
ADD file:30e0a8ccdca70b20b8ce637f0ba5108157f4ba491447d20aafbe45d82392bd81 in / 
# Wed, 10 Apr 2019 08:49:12 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 09:36:07 GMT
RUN apk --no-cache add ca-certificates tzdata
# Thu, 18 Apr 2019 10:20:39 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/containous/traefik/releases/download/v2.0.0-alpha4/traefik_v2.0.0-alpha4_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Thu, 18 Apr 2019 10:20:40 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Thu, 18 Apr 2019 10:20:41 GMT
EXPOSE 80
# Thu, 18 Apr 2019 10:20:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 18 Apr 2019 10:20:44 GMT
CMD ["traefik"]
# Thu, 18 Apr 2019 10:20:45 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha4 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:6f37394be673296a0fdc21b819c5df40431baf7d3af121bee451726dd1457493`  
		Last Modified: Wed, 10 Apr 2019 08:50:38 GMT  
		Size: 2.7 MB (2688778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6b6a9317b7c02cc788a6ba35551c6123602739f7084d0dc6d7727dcedc4a84a`  
		Last Modified: Wed, 10 Apr 2019 09:37:07 GMT  
		Size: 697.7 KB (697724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1885457f15ecbc67afd4599b9cafab0978ab02c321643254d4c06e674793985`  
		Last Modified: Thu, 18 Apr 2019 10:22:37 GMT  
		Size: 15.9 MB (15933778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eeec3c14db02f827726a027e33f5d66cdefb45348f11950879f31a766591a0a`  
		Last Modified: Thu, 18 Apr 2019 10:22:31 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:2.0-nanoserver`

```console
$ docker pull traefik@sha256:3e58963fe20afc73d4f3af533233f03d22166812bc4b1e5678e4c71375567c4a
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
$ docker pull traefik@sha256:3e58963fe20afc73d4f3af533233f03d22166812bc4b1e5678e4c71375567c4a
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
$ docker pull traefik@sha256:8ae2ab6a976fba9bec02c38bea43e099ea252921faccd5b855d28c8df763ee76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:alpine` - linux; amd64

```console
$ docker pull traefik@sha256:ab2b6b2ba8991b646b4d51ded18e4d661fa120ac21f3c1771939072afbdd396d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23667152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2761899631d036000b3b6a8c5e3138b645da8bef3cf44cecef641292254a3a58`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 02:01:13 GMT
RUN apk --no-cache add ca-certificates tzdata
# Fri, 26 Apr 2019 22:24:05 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.11/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Fri, 26 Apr 2019 22:24:05 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Fri, 26 Apr 2019 22:24:05 GMT
EXPOSE 80
# Fri, 26 Apr 2019 22:24:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 26 Apr 2019 22:24:06 GMT
CMD ["traefik"]
# Fri, 26 Apr 2019 22:24:06 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.11 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dfd896cc066730f98b1aefc2de088832b91f007ec2c2f53ef92d5001ddb3edf`  
		Last Modified: Wed, 10 Apr 2019 02:02:00 GMT  
		Size: 695.6 KB (695613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a324f69cab073d2702bd42aa0c5a70ed798788ef78ba48686907ee207cabffa`  
		Last Modified: Fri, 26 Apr 2019 22:24:34 GMT  
		Size: 20.2 MB (20214209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b36ca2c57253a686aa7e10509ac2d72407f3fd26a8d71f181bf0df94f6b7ff5`  
		Last Modified: Fri, 26 Apr 2019 22:24:29 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:4aff5cd7ef2e508a44f791aef195b6b5e7feec510013434040fb4b6cc82293e2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.2 MB (22210995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e16eeb8e5e777d87c2e661afe880d84c9113f1919ad232846c16ca9a5541fdc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 09:15:52 GMT
RUN apk --no-cache add ca-certificates tzdata
# Sat, 27 Apr 2019 07:53:31 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.11/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Sat, 27 Apr 2019 07:53:32 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Sat, 27 Apr 2019 07:53:32 GMT
EXPOSE 80
# Sat, 27 Apr 2019 07:53:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 27 Apr 2019 07:53:33 GMT
CMD ["traefik"]
# Sat, 27 Apr 2019 07:53:34 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.11 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b90ce778eff7cd2e5d262717e5e338956cfbf92843a587a31645f1cec1b5536`  
		Last Modified: Wed, 10 Apr 2019 09:16:33 GMT  
		Size: 697.8 KB (697833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1272d3f6a8a05a700db5a626859396b43de0416937000a85477708f5f7f62b4b`  
		Last Modified: Sat, 27 Apr 2019 07:54:20 GMT  
		Size: 19.0 MB (18969400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:712758bf62084de69122504e2d743809f80df17b7d122cb0af8bf6dab9dd4ad3`  
		Last Modified: Sat, 27 Apr 2019 07:54:12 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:faisselle`

```console
$ docker pull traefik@sha256:96977a25d1093b8ad9889c9d595f21fea4544746f7713ada3e3db11f8f744ba5
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
$ docker pull traefik@sha256:f9776946fa0cf33959265c6c2e02e0dfc8e389803a6a220e7ca223954c7ceeef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:faisselle-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:13aac7a3b7eb7dcab2ec161d7716fb6955df786d07748eb98ff9e51a5f4aa5b2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 MB (20769403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e6e45ed43e7beed7f0a9b098f06ac3d84795cf5a84a5a9ab7b0d379aec43d5b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 02:01:13 GMT
RUN apk --no-cache add ca-certificates tzdata
# Thu, 18 Apr 2019 00:00:31 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/containous/traefik/releases/download/v2.0.0-alpha4/traefik_v2.0.0-alpha4_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Thu, 18 Apr 2019 00:00:31 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Thu, 18 Apr 2019 00:00:31 GMT
EXPOSE 80
# Thu, 18 Apr 2019 00:00:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 18 Apr 2019 00:00:31 GMT
CMD ["traefik"]
# Thu, 18 Apr 2019 00:00:31 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha4 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dfd896cc066730f98b1aefc2de088832b91f007ec2c2f53ef92d5001ddb3edf`  
		Last Modified: Wed, 10 Apr 2019 02:02:00 GMT  
		Size: 695.6 KB (695613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3365942d1f6222d33908578b295a7bfd26ef91502febfae8ba024d260f9d48da`  
		Last Modified: Thu, 18 Apr 2019 00:01:07 GMT  
		Size: 17.3 MB (17316460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8198b15db7e0f1b7164cb35d175795a9f395d1f33b9ab8006971d91ff815f130`  
		Last Modified: Thu, 18 Apr 2019 00:01:04 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:faisselle-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:ad6375d899c02498ebffbc49149e71c7b5795833aa8e70637936a29b2916f9da
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.4 MB (19448468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0498884157fac3022dd98650986acfc1417e0aa383ae9a7ea9fbd97a705f5afb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 09:15:52 GMT
RUN apk --no-cache add ca-certificates tzdata
# Thu, 18 Apr 2019 08:32:59 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/containous/traefik/releases/download/v2.0.0-alpha4/traefik_v2.0.0-alpha4_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Thu, 18 Apr 2019 08:33:00 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Thu, 18 Apr 2019 08:33:01 GMT
EXPOSE 80
# Thu, 18 Apr 2019 08:33:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 18 Apr 2019 08:33:01 GMT
CMD ["traefik"]
# Thu, 18 Apr 2019 08:33:02 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha4 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b90ce778eff7cd2e5d262717e5e338956cfbf92843a587a31645f1cec1b5536`  
		Last Modified: Wed, 10 Apr 2019 09:16:33 GMT  
		Size: 697.8 KB (697833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec3070869560d3f2ce061eebf47aeeb24292fc7fe086027e9b16691600091aa3`  
		Last Modified: Thu, 18 Apr 2019 08:34:17 GMT  
		Size: 16.2 MB (16206872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8ef16a0239fc7797039c7bf07b17b30978dcb50671b2112a1fc98c5aa16403d`  
		Last Modified: Thu, 18 Apr 2019 08:34:11 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:faisselle-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:4715eaf357eaae161ff228705b3536a69cb10732be4a2e7b01b1a5d73b32ead4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.3 MB (19320599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7400d59a65ddbdd92f0432593277cc99a1cbcfdba096c861b785cea3054ecd1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 10 Apr 2019 08:49:11 GMT
ADD file:30e0a8ccdca70b20b8ce637f0ba5108157f4ba491447d20aafbe45d82392bd81 in / 
# Wed, 10 Apr 2019 08:49:12 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 09:36:07 GMT
RUN apk --no-cache add ca-certificates tzdata
# Thu, 18 Apr 2019 10:20:39 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/containous/traefik/releases/download/v2.0.0-alpha4/traefik_v2.0.0-alpha4_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Thu, 18 Apr 2019 10:20:40 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Thu, 18 Apr 2019 10:20:41 GMT
EXPOSE 80
# Thu, 18 Apr 2019 10:20:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 18 Apr 2019 10:20:44 GMT
CMD ["traefik"]
# Thu, 18 Apr 2019 10:20:45 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha4 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:6f37394be673296a0fdc21b819c5df40431baf7d3af121bee451726dd1457493`  
		Last Modified: Wed, 10 Apr 2019 08:50:38 GMT  
		Size: 2.7 MB (2688778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6b6a9317b7c02cc788a6ba35551c6123602739f7084d0dc6d7727dcedc4a84a`  
		Last Modified: Wed, 10 Apr 2019 09:37:07 GMT  
		Size: 697.7 KB (697724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1885457f15ecbc67afd4599b9cafab0978ab02c321643254d4c06e674793985`  
		Last Modified: Thu, 18 Apr 2019 10:22:37 GMT  
		Size: 15.9 MB (15933778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eeec3c14db02f827726a027e33f5d66cdefb45348f11950879f31a766591a0a`  
		Last Modified: Thu, 18 Apr 2019 10:22:31 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:faisselle-nanoserver`

```console
$ docker pull traefik@sha256:3e58963fe20afc73d4f3af533233f03d22166812bc4b1e5678e4c71375567c4a
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
$ docker pull traefik@sha256:3e58963fe20afc73d4f3af533233f03d22166812bc4b1e5678e4c71375567c4a
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
$ docker pull traefik@sha256:4463af670ef828ec9e7d60111add356130b7394b94971b53ad12d298607a2167
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

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

## `traefik:maroilles`

```console
$ docker pull traefik@sha256:4463af670ef828ec9e7d60111add356130b7394b94971b53ad12d298607a2167
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

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

## `traefik:maroilles-alpine`

```console
$ docker pull traefik@sha256:8ae2ab6a976fba9bec02c38bea43e099ea252921faccd5b855d28c8df763ee76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:maroilles-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:ab2b6b2ba8991b646b4d51ded18e4d661fa120ac21f3c1771939072afbdd396d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23667152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2761899631d036000b3b6a8c5e3138b645da8bef3cf44cecef641292254a3a58`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 02:01:13 GMT
RUN apk --no-cache add ca-certificates tzdata
# Fri, 26 Apr 2019 22:24:05 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.11/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Fri, 26 Apr 2019 22:24:05 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Fri, 26 Apr 2019 22:24:05 GMT
EXPOSE 80
# Fri, 26 Apr 2019 22:24:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 26 Apr 2019 22:24:06 GMT
CMD ["traefik"]
# Fri, 26 Apr 2019 22:24:06 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.11 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dfd896cc066730f98b1aefc2de088832b91f007ec2c2f53ef92d5001ddb3edf`  
		Last Modified: Wed, 10 Apr 2019 02:02:00 GMT  
		Size: 695.6 KB (695613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a324f69cab073d2702bd42aa0c5a70ed798788ef78ba48686907ee207cabffa`  
		Last Modified: Fri, 26 Apr 2019 22:24:34 GMT  
		Size: 20.2 MB (20214209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b36ca2c57253a686aa7e10509ac2d72407f3fd26a8d71f181bf0df94f6b7ff5`  
		Last Modified: Fri, 26 Apr 2019 22:24:29 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:maroilles-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:4aff5cd7ef2e508a44f791aef195b6b5e7feec510013434040fb4b6cc82293e2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.2 MB (22210995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e16eeb8e5e777d87c2e661afe880d84c9113f1919ad232846c16ca9a5541fdc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 09:15:52 GMT
RUN apk --no-cache add ca-certificates tzdata
# Sat, 27 Apr 2019 07:53:31 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.11/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Sat, 27 Apr 2019 07:53:32 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Sat, 27 Apr 2019 07:53:32 GMT
EXPOSE 80
# Sat, 27 Apr 2019 07:53:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 27 Apr 2019 07:53:33 GMT
CMD ["traefik"]
# Sat, 27 Apr 2019 07:53:34 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.11 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b90ce778eff7cd2e5d262717e5e338956cfbf92843a587a31645f1cec1b5536`  
		Last Modified: Wed, 10 Apr 2019 09:16:33 GMT  
		Size: 697.8 KB (697833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1272d3f6a8a05a700db5a626859396b43de0416937000a85477708f5f7f62b4b`  
		Last Modified: Sat, 27 Apr 2019 07:54:20 GMT  
		Size: 19.0 MB (18969400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:712758bf62084de69122504e2d743809f80df17b7d122cb0af8bf6dab9dd4ad3`  
		Last Modified: Sat, 27 Apr 2019 07:54:12 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:maroilles-nanoserver`

```console
$ docker pull traefik@sha256:20f42ab8772342c9f534987e2fcd6f43004562f46d51ef74a5565591075e073a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:maroilles-nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:add0a056a5a371a2836e9b9dd24e45551213af45a2267da62e27feec1c9e3249
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.4 MB (455435633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9d57a27979fe63e900eeddf405608e7d040ba2640d1ae0a7a02fdb05abd1aae`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Tue, 02 Apr 2019 09:17:35 GMT
RUN cmd /S /C #(nop) COPY file:0bbc8a39c96d8e5a4f5c12a7b29e48fec0a673e5d2147b1835e67fe2240b10c4 in \traefik.exe 
# Tue, 02 Apr 2019 09:17:45 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Tue, 02 Apr 2019 09:17:46 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 02 Apr 2019 09:17:47 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.10 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:16be2745a9e19c356c3d0e39205eedd69978836f322c08de9227398c31130071`  
		Last Modified: Tue, 02 Apr 2019 09:19:08 GMT  
		Size: 20.0 MB (20035980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:792624ef3958595dd24291208f96e11a26771b72ade6c7b317fdc52030ea50bb`  
		Last Modified: Tue, 02 Apr 2019 09:19:00 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d28053dd6f94d43497c1a86f7b1c003bbdb90eb4112ebc8779d94a0fa4335e`  
		Last Modified: Tue, 02 Apr 2019 09:19:00 GMT  
		Size: 942.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23404f6a8ee12360687ee599f80402846e7e8116dcefeee764413a92c1eaca60`  
		Last Modified: Tue, 02 Apr 2019 09:19:00 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:maroilles-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:20f42ab8772342c9f534987e2fcd6f43004562f46d51ef74a5565591075e073a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:maroilles-nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:add0a056a5a371a2836e9b9dd24e45551213af45a2267da62e27feec1c9e3249
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.4 MB (455435633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9d57a27979fe63e900eeddf405608e7d040ba2640d1ae0a7a02fdb05abd1aae`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Tue, 02 Apr 2019 09:17:35 GMT
RUN cmd /S /C #(nop) COPY file:0bbc8a39c96d8e5a4f5c12a7b29e48fec0a673e5d2147b1835e67fe2240b10c4 in \traefik.exe 
# Tue, 02 Apr 2019 09:17:45 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Tue, 02 Apr 2019 09:17:46 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 02 Apr 2019 09:17:47 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.10 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:16be2745a9e19c356c3d0e39205eedd69978836f322c08de9227398c31130071`  
		Last Modified: Tue, 02 Apr 2019 09:19:08 GMT  
		Size: 20.0 MB (20035980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:792624ef3958595dd24291208f96e11a26771b72ade6c7b317fdc52030ea50bb`  
		Last Modified: Tue, 02 Apr 2019 09:19:00 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d28053dd6f94d43497c1a86f7b1c003bbdb90eb4112ebc8779d94a0fa4335e`  
		Last Modified: Tue, 02 Apr 2019 09:19:00 GMT  
		Size: 942.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23404f6a8ee12360687ee599f80402846e7e8116dcefeee764413a92c1eaca60`  
		Last Modified: Tue, 02 Apr 2019 09:19:00 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:nanoserver`

```console
$ docker pull traefik@sha256:20f42ab8772342c9f534987e2fcd6f43004562f46d51ef74a5565591075e073a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:add0a056a5a371a2836e9b9dd24e45551213af45a2267da62e27feec1c9e3249
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.4 MB (455435633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9d57a27979fe63e900eeddf405608e7d040ba2640d1ae0a7a02fdb05abd1aae`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Tue, 02 Apr 2019 09:17:35 GMT
RUN cmd /S /C #(nop) COPY file:0bbc8a39c96d8e5a4f5c12a7b29e48fec0a673e5d2147b1835e67fe2240b10c4 in \traefik.exe 
# Tue, 02 Apr 2019 09:17:45 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Tue, 02 Apr 2019 09:17:46 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 02 Apr 2019 09:17:47 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.10 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:16be2745a9e19c356c3d0e39205eedd69978836f322c08de9227398c31130071`  
		Last Modified: Tue, 02 Apr 2019 09:19:08 GMT  
		Size: 20.0 MB (20035980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:792624ef3958595dd24291208f96e11a26771b72ade6c7b317fdc52030ea50bb`  
		Last Modified: Tue, 02 Apr 2019 09:19:00 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d28053dd6f94d43497c1a86f7b1c003bbdb90eb4112ebc8779d94a0fa4335e`  
		Last Modified: Tue, 02 Apr 2019 09:19:00 GMT  
		Size: 942.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23404f6a8ee12360687ee599f80402846e7e8116dcefeee764413a92c1eaca60`  
		Last Modified: Tue, 02 Apr 2019 09:19:00 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:nanoserver-sac2016`

```console
$ docker pull traefik@sha256:20f42ab8772342c9f534987e2fcd6f43004562f46d51ef74a5565591075e073a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:add0a056a5a371a2836e9b9dd24e45551213af45a2267da62e27feec1c9e3249
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.4 MB (455435633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9d57a27979fe63e900eeddf405608e7d040ba2640d1ae0a7a02fdb05abd1aae`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Tue, 02 Apr 2019 09:17:35 GMT
RUN cmd /S /C #(nop) COPY file:0bbc8a39c96d8e5a4f5c12a7b29e48fec0a673e5d2147b1835e67fe2240b10c4 in \traefik.exe 
# Tue, 02 Apr 2019 09:17:45 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Tue, 02 Apr 2019 09:17:46 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 02 Apr 2019 09:17:47 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.10 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:16be2745a9e19c356c3d0e39205eedd69978836f322c08de9227398c31130071`  
		Last Modified: Tue, 02 Apr 2019 09:19:08 GMT  
		Size: 20.0 MB (20035980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:792624ef3958595dd24291208f96e11a26771b72ade6c7b317fdc52030ea50bb`  
		Last Modified: Tue, 02 Apr 2019 09:19:00 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d28053dd6f94d43497c1a86f7b1c003bbdb90eb4112ebc8779d94a0fa4335e`  
		Last Modified: Tue, 02 Apr 2019 09:19:00 GMT  
		Size: 942.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23404f6a8ee12360687ee599f80402846e7e8116dcefeee764413a92c1eaca60`  
		Last Modified: Tue, 02 Apr 2019 09:19:00 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7`

```console
$ docker pull traefik@sha256:4463af670ef828ec9e7d60111add356130b7394b94971b53ad12d298607a2167
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

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

## `traefik:v1.7.11`

```console
$ docker pull traefik@sha256:4463af670ef828ec9e7d60111add356130b7394b94971b53ad12d298607a2167
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:v1.7.11` - linux; amd64

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

### `traefik:v1.7.11` - linux; arm variant v6

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

## `traefik:v1.7.11-alpine`

```console
$ docker pull traefik@sha256:8ae2ab6a976fba9bec02c38bea43e099ea252921faccd5b855d28c8df763ee76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:v1.7.11-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:ab2b6b2ba8991b646b4d51ded18e4d661fa120ac21f3c1771939072afbdd396d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23667152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2761899631d036000b3b6a8c5e3138b645da8bef3cf44cecef641292254a3a58`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 02:01:13 GMT
RUN apk --no-cache add ca-certificates tzdata
# Fri, 26 Apr 2019 22:24:05 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.11/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Fri, 26 Apr 2019 22:24:05 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Fri, 26 Apr 2019 22:24:05 GMT
EXPOSE 80
# Fri, 26 Apr 2019 22:24:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 26 Apr 2019 22:24:06 GMT
CMD ["traefik"]
# Fri, 26 Apr 2019 22:24:06 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.11 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dfd896cc066730f98b1aefc2de088832b91f007ec2c2f53ef92d5001ddb3edf`  
		Last Modified: Wed, 10 Apr 2019 02:02:00 GMT  
		Size: 695.6 KB (695613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a324f69cab073d2702bd42aa0c5a70ed798788ef78ba48686907ee207cabffa`  
		Last Modified: Fri, 26 Apr 2019 22:24:34 GMT  
		Size: 20.2 MB (20214209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b36ca2c57253a686aa7e10509ac2d72407f3fd26a8d71f181bf0df94f6b7ff5`  
		Last Modified: Fri, 26 Apr 2019 22:24:29 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7.11-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:4aff5cd7ef2e508a44f791aef195b6b5e7feec510013434040fb4b6cc82293e2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.2 MB (22210995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e16eeb8e5e777d87c2e661afe880d84c9113f1919ad232846c16ca9a5541fdc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 09:15:52 GMT
RUN apk --no-cache add ca-certificates tzdata
# Sat, 27 Apr 2019 07:53:31 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.11/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Sat, 27 Apr 2019 07:53:32 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Sat, 27 Apr 2019 07:53:32 GMT
EXPOSE 80
# Sat, 27 Apr 2019 07:53:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 27 Apr 2019 07:53:33 GMT
CMD ["traefik"]
# Sat, 27 Apr 2019 07:53:34 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.11 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b90ce778eff7cd2e5d262717e5e338956cfbf92843a587a31645f1cec1b5536`  
		Last Modified: Wed, 10 Apr 2019 09:16:33 GMT  
		Size: 697.8 KB (697833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1272d3f6a8a05a700db5a626859396b43de0416937000a85477708f5f7f62b4b`  
		Last Modified: Sat, 27 Apr 2019 07:54:20 GMT  
		Size: 19.0 MB (18969400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:712758bf62084de69122504e2d743809f80df17b7d122cb0af8bf6dab9dd4ad3`  
		Last Modified: Sat, 27 Apr 2019 07:54:12 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7.11-nanoserver`

**does not exist** (yet?)

## `traefik:v1.7.11-nanoserver-sac2016`

**does not exist** (yet?)

## `traefik:v1.7-alpine`

```console
$ docker pull traefik@sha256:8ae2ab6a976fba9bec02c38bea43e099ea252921faccd5b855d28c8df763ee76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:v1.7-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:ab2b6b2ba8991b646b4d51ded18e4d661fa120ac21f3c1771939072afbdd396d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23667152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2761899631d036000b3b6a8c5e3138b645da8bef3cf44cecef641292254a3a58`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 02:01:13 GMT
RUN apk --no-cache add ca-certificates tzdata
# Fri, 26 Apr 2019 22:24:05 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.11/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Fri, 26 Apr 2019 22:24:05 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Fri, 26 Apr 2019 22:24:05 GMT
EXPOSE 80
# Fri, 26 Apr 2019 22:24:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 26 Apr 2019 22:24:06 GMT
CMD ["traefik"]
# Fri, 26 Apr 2019 22:24:06 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.11 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dfd896cc066730f98b1aefc2de088832b91f007ec2c2f53ef92d5001ddb3edf`  
		Last Modified: Wed, 10 Apr 2019 02:02:00 GMT  
		Size: 695.6 KB (695613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a324f69cab073d2702bd42aa0c5a70ed798788ef78ba48686907ee207cabffa`  
		Last Modified: Fri, 26 Apr 2019 22:24:34 GMT  
		Size: 20.2 MB (20214209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b36ca2c57253a686aa7e10509ac2d72407f3fd26a8d71f181bf0df94f6b7ff5`  
		Last Modified: Fri, 26 Apr 2019 22:24:29 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:4aff5cd7ef2e508a44f791aef195b6b5e7feec510013434040fb4b6cc82293e2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.2 MB (22210995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e16eeb8e5e777d87c2e661afe880d84c9113f1919ad232846c16ca9a5541fdc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 09:15:52 GMT
RUN apk --no-cache add ca-certificates tzdata
# Sat, 27 Apr 2019 07:53:31 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.11/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Sat, 27 Apr 2019 07:53:32 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Sat, 27 Apr 2019 07:53:32 GMT
EXPOSE 80
# Sat, 27 Apr 2019 07:53:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 27 Apr 2019 07:53:33 GMT
CMD ["traefik"]
# Sat, 27 Apr 2019 07:53:34 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.11 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b90ce778eff7cd2e5d262717e5e338956cfbf92843a587a31645f1cec1b5536`  
		Last Modified: Wed, 10 Apr 2019 09:16:33 GMT  
		Size: 697.8 KB (697833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1272d3f6a8a05a700db5a626859396b43de0416937000a85477708f5f7f62b4b`  
		Last Modified: Sat, 27 Apr 2019 07:54:20 GMT  
		Size: 19.0 MB (18969400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:712758bf62084de69122504e2d743809f80df17b7d122cb0af8bf6dab9dd4ad3`  
		Last Modified: Sat, 27 Apr 2019 07:54:12 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7-nanoserver`

```console
$ docker pull traefik@sha256:20f42ab8772342c9f534987e2fcd6f43004562f46d51ef74a5565591075e073a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:v1.7-nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:add0a056a5a371a2836e9b9dd24e45551213af45a2267da62e27feec1c9e3249
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.4 MB (455435633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9d57a27979fe63e900eeddf405608e7d040ba2640d1ae0a7a02fdb05abd1aae`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Tue, 02 Apr 2019 09:17:35 GMT
RUN cmd /S /C #(nop) COPY file:0bbc8a39c96d8e5a4f5c12a7b29e48fec0a673e5d2147b1835e67fe2240b10c4 in \traefik.exe 
# Tue, 02 Apr 2019 09:17:45 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Tue, 02 Apr 2019 09:17:46 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 02 Apr 2019 09:17:47 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.10 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:16be2745a9e19c356c3d0e39205eedd69978836f322c08de9227398c31130071`  
		Last Modified: Tue, 02 Apr 2019 09:19:08 GMT  
		Size: 20.0 MB (20035980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:792624ef3958595dd24291208f96e11a26771b72ade6c7b317fdc52030ea50bb`  
		Last Modified: Tue, 02 Apr 2019 09:19:00 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d28053dd6f94d43497c1a86f7b1c003bbdb90eb4112ebc8779d94a0fa4335e`  
		Last Modified: Tue, 02 Apr 2019 09:19:00 GMT  
		Size: 942.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23404f6a8ee12360687ee599f80402846e7e8116dcefeee764413a92c1eaca60`  
		Last Modified: Tue, 02 Apr 2019 09:19:00 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:20f42ab8772342c9f534987e2fcd6f43004562f46d51ef74a5565591075e073a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:v1.7-nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:add0a056a5a371a2836e9b9dd24e45551213af45a2267da62e27feec1c9e3249
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.4 MB (455435633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9d57a27979fe63e900eeddf405608e7d040ba2640d1ae0a7a02fdb05abd1aae`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Tue, 02 Apr 2019 09:17:35 GMT
RUN cmd /S /C #(nop) COPY file:0bbc8a39c96d8e5a4f5c12a7b29e48fec0a673e5d2147b1835e67fe2240b10c4 in \traefik.exe 
# Tue, 02 Apr 2019 09:17:45 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Tue, 02 Apr 2019 09:17:46 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 02 Apr 2019 09:17:47 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.10 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:16be2745a9e19c356c3d0e39205eedd69978836f322c08de9227398c31130071`  
		Last Modified: Tue, 02 Apr 2019 09:19:08 GMT  
		Size: 20.0 MB (20035980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:792624ef3958595dd24291208f96e11a26771b72ade6c7b317fdc52030ea50bb`  
		Last Modified: Tue, 02 Apr 2019 09:19:00 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d28053dd6f94d43497c1a86f7b1c003bbdb90eb4112ebc8779d94a0fa4335e`  
		Last Modified: Tue, 02 Apr 2019 09:19:00 GMT  
		Size: 942.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23404f6a8ee12360687ee599f80402846e7e8116dcefeee764413a92c1eaca60`  
		Last Modified: Tue, 02 Apr 2019 09:19:00 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v2.0`

```console
$ docker pull traefik@sha256:96977a25d1093b8ad9889c9d595f21fea4544746f7713ada3e3db11f8f744ba5
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
$ docker pull traefik@sha256:96977a25d1093b8ad9889c9d595f21fea4544746f7713ada3e3db11f8f744ba5
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
$ docker pull traefik@sha256:f9776946fa0cf33959265c6c2e02e0dfc8e389803a6a220e7ca223954c7ceeef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v2.0.0-alpha4-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:13aac7a3b7eb7dcab2ec161d7716fb6955df786d07748eb98ff9e51a5f4aa5b2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 MB (20769403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e6e45ed43e7beed7f0a9b098f06ac3d84795cf5a84a5a9ab7b0d379aec43d5b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 02:01:13 GMT
RUN apk --no-cache add ca-certificates tzdata
# Thu, 18 Apr 2019 00:00:31 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/containous/traefik/releases/download/v2.0.0-alpha4/traefik_v2.0.0-alpha4_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Thu, 18 Apr 2019 00:00:31 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Thu, 18 Apr 2019 00:00:31 GMT
EXPOSE 80
# Thu, 18 Apr 2019 00:00:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 18 Apr 2019 00:00:31 GMT
CMD ["traefik"]
# Thu, 18 Apr 2019 00:00:31 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha4 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dfd896cc066730f98b1aefc2de088832b91f007ec2c2f53ef92d5001ddb3edf`  
		Last Modified: Wed, 10 Apr 2019 02:02:00 GMT  
		Size: 695.6 KB (695613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3365942d1f6222d33908578b295a7bfd26ef91502febfae8ba024d260f9d48da`  
		Last Modified: Thu, 18 Apr 2019 00:01:07 GMT  
		Size: 17.3 MB (17316460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8198b15db7e0f1b7164cb35d175795a9f395d1f33b9ab8006971d91ff815f130`  
		Last Modified: Thu, 18 Apr 2019 00:01:04 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v2.0.0-alpha4-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:ad6375d899c02498ebffbc49149e71c7b5795833aa8e70637936a29b2916f9da
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.4 MB (19448468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0498884157fac3022dd98650986acfc1417e0aa383ae9a7ea9fbd97a705f5afb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 09:15:52 GMT
RUN apk --no-cache add ca-certificates tzdata
# Thu, 18 Apr 2019 08:32:59 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/containous/traefik/releases/download/v2.0.0-alpha4/traefik_v2.0.0-alpha4_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Thu, 18 Apr 2019 08:33:00 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Thu, 18 Apr 2019 08:33:01 GMT
EXPOSE 80
# Thu, 18 Apr 2019 08:33:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 18 Apr 2019 08:33:01 GMT
CMD ["traefik"]
# Thu, 18 Apr 2019 08:33:02 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha4 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b90ce778eff7cd2e5d262717e5e338956cfbf92843a587a31645f1cec1b5536`  
		Last Modified: Wed, 10 Apr 2019 09:16:33 GMT  
		Size: 697.8 KB (697833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec3070869560d3f2ce061eebf47aeeb24292fc7fe086027e9b16691600091aa3`  
		Last Modified: Thu, 18 Apr 2019 08:34:17 GMT  
		Size: 16.2 MB (16206872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8ef16a0239fc7797039c7bf07b17b30978dcb50671b2112a1fc98c5aa16403d`  
		Last Modified: Thu, 18 Apr 2019 08:34:11 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v2.0.0-alpha4-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:4715eaf357eaae161ff228705b3536a69cb10732be4a2e7b01b1a5d73b32ead4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.3 MB (19320599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7400d59a65ddbdd92f0432593277cc99a1cbcfdba096c861b785cea3054ecd1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 10 Apr 2019 08:49:11 GMT
ADD file:30e0a8ccdca70b20b8ce637f0ba5108157f4ba491447d20aafbe45d82392bd81 in / 
# Wed, 10 Apr 2019 08:49:12 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 09:36:07 GMT
RUN apk --no-cache add ca-certificates tzdata
# Thu, 18 Apr 2019 10:20:39 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/containous/traefik/releases/download/v2.0.0-alpha4/traefik_v2.0.0-alpha4_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Thu, 18 Apr 2019 10:20:40 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Thu, 18 Apr 2019 10:20:41 GMT
EXPOSE 80
# Thu, 18 Apr 2019 10:20:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 18 Apr 2019 10:20:44 GMT
CMD ["traefik"]
# Thu, 18 Apr 2019 10:20:45 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha4 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:6f37394be673296a0fdc21b819c5df40431baf7d3af121bee451726dd1457493`  
		Last Modified: Wed, 10 Apr 2019 08:50:38 GMT  
		Size: 2.7 MB (2688778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6b6a9317b7c02cc788a6ba35551c6123602739f7084d0dc6d7727dcedc4a84a`  
		Last Modified: Wed, 10 Apr 2019 09:37:07 GMT  
		Size: 697.7 KB (697724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1885457f15ecbc67afd4599b9cafab0978ab02c321643254d4c06e674793985`  
		Last Modified: Thu, 18 Apr 2019 10:22:37 GMT  
		Size: 15.9 MB (15933778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eeec3c14db02f827726a027e33f5d66cdefb45348f11950879f31a766591a0a`  
		Last Modified: Thu, 18 Apr 2019 10:22:31 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v2.0.0-alpha4-nanoserver`

```console
$ docker pull traefik@sha256:3e58963fe20afc73d4f3af533233f03d22166812bc4b1e5678e4c71375567c4a
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
$ docker pull traefik@sha256:3e58963fe20afc73d4f3af533233f03d22166812bc4b1e5678e4c71375567c4a
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
$ docker pull traefik@sha256:f9776946fa0cf33959265c6c2e02e0dfc8e389803a6a220e7ca223954c7ceeef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v2.0-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:13aac7a3b7eb7dcab2ec161d7716fb6955df786d07748eb98ff9e51a5f4aa5b2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 MB (20769403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e6e45ed43e7beed7f0a9b098f06ac3d84795cf5a84a5a9ab7b0d379aec43d5b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 02:01:13 GMT
RUN apk --no-cache add ca-certificates tzdata
# Thu, 18 Apr 2019 00:00:31 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/containous/traefik/releases/download/v2.0.0-alpha4/traefik_v2.0.0-alpha4_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Thu, 18 Apr 2019 00:00:31 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Thu, 18 Apr 2019 00:00:31 GMT
EXPOSE 80
# Thu, 18 Apr 2019 00:00:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 18 Apr 2019 00:00:31 GMT
CMD ["traefik"]
# Thu, 18 Apr 2019 00:00:31 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha4 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dfd896cc066730f98b1aefc2de088832b91f007ec2c2f53ef92d5001ddb3edf`  
		Last Modified: Wed, 10 Apr 2019 02:02:00 GMT  
		Size: 695.6 KB (695613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3365942d1f6222d33908578b295a7bfd26ef91502febfae8ba024d260f9d48da`  
		Last Modified: Thu, 18 Apr 2019 00:01:07 GMT  
		Size: 17.3 MB (17316460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8198b15db7e0f1b7164cb35d175795a9f395d1f33b9ab8006971d91ff815f130`  
		Last Modified: Thu, 18 Apr 2019 00:01:04 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v2.0-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:ad6375d899c02498ebffbc49149e71c7b5795833aa8e70637936a29b2916f9da
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.4 MB (19448468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0498884157fac3022dd98650986acfc1417e0aa383ae9a7ea9fbd97a705f5afb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 09:15:52 GMT
RUN apk --no-cache add ca-certificates tzdata
# Thu, 18 Apr 2019 08:32:59 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/containous/traefik/releases/download/v2.0.0-alpha4/traefik_v2.0.0-alpha4_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Thu, 18 Apr 2019 08:33:00 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Thu, 18 Apr 2019 08:33:01 GMT
EXPOSE 80
# Thu, 18 Apr 2019 08:33:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 18 Apr 2019 08:33:01 GMT
CMD ["traefik"]
# Thu, 18 Apr 2019 08:33:02 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha4 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b90ce778eff7cd2e5d262717e5e338956cfbf92843a587a31645f1cec1b5536`  
		Last Modified: Wed, 10 Apr 2019 09:16:33 GMT  
		Size: 697.8 KB (697833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec3070869560d3f2ce061eebf47aeeb24292fc7fe086027e9b16691600091aa3`  
		Last Modified: Thu, 18 Apr 2019 08:34:17 GMT  
		Size: 16.2 MB (16206872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8ef16a0239fc7797039c7bf07b17b30978dcb50671b2112a1fc98c5aa16403d`  
		Last Modified: Thu, 18 Apr 2019 08:34:11 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v2.0-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:4715eaf357eaae161ff228705b3536a69cb10732be4a2e7b01b1a5d73b32ead4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.3 MB (19320599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7400d59a65ddbdd92f0432593277cc99a1cbcfdba096c861b785cea3054ecd1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 10 Apr 2019 08:49:11 GMT
ADD file:30e0a8ccdca70b20b8ce637f0ba5108157f4ba491447d20aafbe45d82392bd81 in / 
# Wed, 10 Apr 2019 08:49:12 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 09:36:07 GMT
RUN apk --no-cache add ca-certificates tzdata
# Thu, 18 Apr 2019 10:20:39 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/containous/traefik/releases/download/v2.0.0-alpha4/traefik_v2.0.0-alpha4_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Thu, 18 Apr 2019 10:20:40 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Thu, 18 Apr 2019 10:20:41 GMT
EXPOSE 80
# Thu, 18 Apr 2019 10:20:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 18 Apr 2019 10:20:44 GMT
CMD ["traefik"]
# Thu, 18 Apr 2019 10:20:45 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha4 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:6f37394be673296a0fdc21b819c5df40431baf7d3af121bee451726dd1457493`  
		Last Modified: Wed, 10 Apr 2019 08:50:38 GMT  
		Size: 2.7 MB (2688778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6b6a9317b7c02cc788a6ba35551c6123602739f7084d0dc6d7727dcedc4a84a`  
		Last Modified: Wed, 10 Apr 2019 09:37:07 GMT  
		Size: 697.7 KB (697724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1885457f15ecbc67afd4599b9cafab0978ab02c321643254d4c06e674793985`  
		Last Modified: Thu, 18 Apr 2019 10:22:37 GMT  
		Size: 15.9 MB (15933778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eeec3c14db02f827726a027e33f5d66cdefb45348f11950879f31a766591a0a`  
		Last Modified: Thu, 18 Apr 2019 10:22:31 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v2.0-nanoserver`

```console
$ docker pull traefik@sha256:3e58963fe20afc73d4f3af533233f03d22166812bc4b1e5678e4c71375567c4a
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
$ docker pull traefik@sha256:3e58963fe20afc73d4f3af533233f03d22166812bc4b1e5678e4c71375567c4a
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
