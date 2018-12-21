<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `traefik`

-	[`traefik:1.7`](#traefik17)
-	[`traefik:1.7.6`](#traefik176)
-	[`traefik:1.7.6-alpine`](#traefik176-alpine)
-	[`traefik:1.7.6-nanoserver`](#traefik176-nanoserver)
-	[`traefik:1.7.6-nanoserver-sac2016`](#traefik176-nanoserver-sac2016)
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
-	[`traefik:v1.7.6`](#traefikv176)
-	[`traefik:v1.7.6-alpine`](#traefikv176-alpine)
-	[`traefik:v1.7.6-nanoserver`](#traefikv176-nanoserver)
-	[`traefik:v1.7.6-nanoserver-sac2016`](#traefikv176-nanoserver-sac2016)
-	[`traefik:v1.7-alpine`](#traefikv17-alpine)
-	[`traefik:v1.7-nanoserver`](#traefikv17-nanoserver)
-	[`traefik:v1.7-nanoserver-sac2016`](#traefikv17-nanoserver-sac2016)

## `traefik:1.7`

```console
$ docker pull traefik@sha256:a9512e9e1d2c0eda3a971926f50e97467fbeecfe07eeeedc4224af4ee5329a4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.7` - linux; amd64

```console
$ docker pull traefik@sha256:efedc4f8419177f5fedc410df2d330795dd1bd140e9c4c8050c897dbee0d3035
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.7 MB (19666751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0a0d72714037f9cf7b958d9e0778693c45b1cc6b0e3c87b69ad2603809027a7`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 14 Dec 2018 18:21:56 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Fri, 14 Dec 2018 18:21:56 GMT
COPY file:4a8df4a19b37dce5a17b4f169910f5dfd9a1bca381e5831a48a0a4742c5b7d6f in / 
# Fri, 14 Dec 2018 18:21:57 GMT
EXPOSE 80
# Fri, 14 Dec 2018 18:21:57 GMT
VOLUME [/tmp]
# Fri, 14 Dec 2018 18:21:57 GMT
ENTRYPOINT ["/traefik"]
# Fri, 14 Dec 2018 18:21:57 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:7a433ecdf92bfc5080060a97efa862edf0deca55fcfa76a6a01b911c431695fd`  
		Last Modified: Fri, 14 Dec 2018 18:22:18 GMT  
		Size: 135.0 KB (135043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fbbd8a41c7fdace4ae19b8bca8a5e98a70b551c8973d0c57ef7c8389f03c0e9`  
		Last Modified: Fri, 14 Dec 2018 18:22:23 GMT  
		Size: 19.5 MB (19531708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7` - linux; arm variant v6

```console
$ docker pull traefik@sha256:f1210218496ff8a5475b723f4ceff810a2366da36ff309c49c9a7f78efd4fa34
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.5 MB (18471740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4779e9c9c1d9455d8d79c3056c6342a48ed1422d37f1ced84823ee3d221cb44c`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 15 Dec 2018 08:49:55 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Sat, 15 Dec 2018 08:49:56 GMT
COPY file:9185d8f3941eead638fba040a9e3ea7e7b70b93c62dc0a41b4541fcc5053804c in / 
# Sat, 15 Dec 2018 08:49:57 GMT
EXPOSE 80
# Sat, 15 Dec 2018 08:49:57 GMT
VOLUME [/tmp]
# Sat, 15 Dec 2018 08:49:58 GMT
ENTRYPOINT ["/traefik"]
# Sat, 15 Dec 2018 08:49:58 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5527833b12791749e5c8242af5e3795dc1e6b2fe58811c452979252cf978fce9`  
		Last Modified: Sat, 15 Dec 2018 08:50:23 GMT  
		Size: 135.0 KB (135038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8881fd196757b28dad27a5c6257832d5470eae25b194a61ddd5ef6edb1a71b3f`  
		Last Modified: Sat, 15 Dec 2018 08:50:30 GMT  
		Size: 18.3 MB (18336702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:69d9d0c99e4805db068be5e560ab72b0e4a70571c54e62cde0f6b1320468fa84
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.0 MB (18027429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:988011f49bae60635adcc34aee6e9cbfff8b9369c942d5e9482d91718631eb76`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 18 Dec 2018 10:37:13 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Tue, 18 Dec 2018 10:37:16 GMT
COPY file:d3135af1d593eef42dba574bcf6e4d9995903f88e4b89c1ba92c26f09393e9cf in / 
# Tue, 18 Dec 2018 10:37:17 GMT
EXPOSE 80
# Tue, 18 Dec 2018 10:37:17 GMT
VOLUME [/tmp]
# Tue, 18 Dec 2018 10:37:18 GMT
ENTRYPOINT ["/traefik"]
# Tue, 18 Dec 2018 10:37:19 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:93231411b7777ed5066dad65f929b35b680bfac1ea1fc2ff0c9fb935cc83d75a`  
		Last Modified: Tue, 18 Dec 2018 10:37:58 GMT  
		Size: 135.0 KB (135036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a85314a8764d5cd30b286d7ef7a7c0066bc00689890fc3bf231a946265f1dd6d`  
		Last Modified: Tue, 18 Dec 2018 10:38:06 GMT  
		Size: 17.9 MB (17892393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7.6`

```console
$ docker pull traefik@sha256:a9512e9e1d2c0eda3a971926f50e97467fbeecfe07eeeedc4224af4ee5329a4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.7.6` - linux; amd64

```console
$ docker pull traefik@sha256:efedc4f8419177f5fedc410df2d330795dd1bd140e9c4c8050c897dbee0d3035
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.7 MB (19666751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0a0d72714037f9cf7b958d9e0778693c45b1cc6b0e3c87b69ad2603809027a7`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 14 Dec 2018 18:21:56 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Fri, 14 Dec 2018 18:21:56 GMT
COPY file:4a8df4a19b37dce5a17b4f169910f5dfd9a1bca381e5831a48a0a4742c5b7d6f in / 
# Fri, 14 Dec 2018 18:21:57 GMT
EXPOSE 80
# Fri, 14 Dec 2018 18:21:57 GMT
VOLUME [/tmp]
# Fri, 14 Dec 2018 18:21:57 GMT
ENTRYPOINT ["/traefik"]
# Fri, 14 Dec 2018 18:21:57 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:7a433ecdf92bfc5080060a97efa862edf0deca55fcfa76a6a01b911c431695fd`  
		Last Modified: Fri, 14 Dec 2018 18:22:18 GMT  
		Size: 135.0 KB (135043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fbbd8a41c7fdace4ae19b8bca8a5e98a70b551c8973d0c57ef7c8389f03c0e9`  
		Last Modified: Fri, 14 Dec 2018 18:22:23 GMT  
		Size: 19.5 MB (19531708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7.6` - linux; arm variant v6

```console
$ docker pull traefik@sha256:f1210218496ff8a5475b723f4ceff810a2366da36ff309c49c9a7f78efd4fa34
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.5 MB (18471740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4779e9c9c1d9455d8d79c3056c6342a48ed1422d37f1ced84823ee3d221cb44c`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 15 Dec 2018 08:49:55 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Sat, 15 Dec 2018 08:49:56 GMT
COPY file:9185d8f3941eead638fba040a9e3ea7e7b70b93c62dc0a41b4541fcc5053804c in / 
# Sat, 15 Dec 2018 08:49:57 GMT
EXPOSE 80
# Sat, 15 Dec 2018 08:49:57 GMT
VOLUME [/tmp]
# Sat, 15 Dec 2018 08:49:58 GMT
ENTRYPOINT ["/traefik"]
# Sat, 15 Dec 2018 08:49:58 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5527833b12791749e5c8242af5e3795dc1e6b2fe58811c452979252cf978fce9`  
		Last Modified: Sat, 15 Dec 2018 08:50:23 GMT  
		Size: 135.0 KB (135038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8881fd196757b28dad27a5c6257832d5470eae25b194a61ddd5ef6edb1a71b3f`  
		Last Modified: Sat, 15 Dec 2018 08:50:30 GMT  
		Size: 18.3 MB (18336702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7.6` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:69d9d0c99e4805db068be5e560ab72b0e4a70571c54e62cde0f6b1320468fa84
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.0 MB (18027429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:988011f49bae60635adcc34aee6e9cbfff8b9369c942d5e9482d91718631eb76`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 18 Dec 2018 10:37:13 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Tue, 18 Dec 2018 10:37:16 GMT
COPY file:d3135af1d593eef42dba574bcf6e4d9995903f88e4b89c1ba92c26f09393e9cf in / 
# Tue, 18 Dec 2018 10:37:17 GMT
EXPOSE 80
# Tue, 18 Dec 2018 10:37:17 GMT
VOLUME [/tmp]
# Tue, 18 Dec 2018 10:37:18 GMT
ENTRYPOINT ["/traefik"]
# Tue, 18 Dec 2018 10:37:19 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:93231411b7777ed5066dad65f929b35b680bfac1ea1fc2ff0c9fb935cc83d75a`  
		Last Modified: Tue, 18 Dec 2018 10:37:58 GMT  
		Size: 135.0 KB (135036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a85314a8764d5cd30b286d7ef7a7c0066bc00689890fc3bf231a946265f1dd6d`  
		Last Modified: Tue, 18 Dec 2018 10:38:06 GMT  
		Size: 17.9 MB (17892393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7.6-alpine`

```console
$ docker pull traefik@sha256:7efc7b04f261c02675d9c3e4f107f6d58d1bcd61cc26a6ad99d38f2ca1a91300
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.7.6-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:e9fe29c1a1d5e1b27b89086a2b27b4b4728a865228eaa496679dd18f2fc07466
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.0 MB (22048186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e8d573a4f30d2e91e9e0f5ca0260df7f68ed3a831a2ea486bf73c6ba85250fc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 04:53:58 GMT
RUN apk --no-cache add ca-certificates
# Fri, 21 Dec 2018 04:54:01 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Fri, 21 Dec 2018 04:54:02 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Fri, 21 Dec 2018 04:54:02 GMT
EXPOSE 80
# Fri, 21 Dec 2018 04:54:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 21 Dec 2018 04:54:02 GMT
CMD ["traefik"]
# Fri, 21 Dec 2018 04:54:03 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c18a9262634964799b67862ee79826ace112ae633d4d8a3b01ea93080cfe58de`  
		Last Modified: Fri, 21 Dec 2018 04:54:21 GMT  
		Size: 309.2 KB (309168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ea78f0fd2ea64375f074c11f660805fe75b5513b8d7022878456a0dd0a73b5c`  
		Last Modified: Fri, 21 Dec 2018 04:54:26 GMT  
		Size: 19.5 MB (19531676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6973c96a131fc651a3207bdd621ff549730560addafdd0fbd3494d179f297ed`  
		Last Modified: Fri, 21 Dec 2018 04:54:21 GMT  
		Size: 317.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7.6-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:85be6587d3f99469caf1b4b41f13578d90f27459de00acdcdaa2551fdd51a8ef
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 MB (20792327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d85acbb641975d58815b784ceb6d225413015570998c1ba405e3f3ec9d97d9d7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 09:53:18 GMT
RUN apk --no-cache add ca-certificates
# Fri, 21 Dec 2018 09:53:23 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Fri, 21 Dec 2018 09:53:24 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Fri, 21 Dec 2018 09:53:24 GMT
EXPOSE 80
# Fri, 21 Dec 2018 09:53:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 21 Dec 2018 09:53:25 GMT
CMD ["traefik"]
# Fri, 21 Dec 2018 09:53:25 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd485441b01cc4ef3ab52710f7201ceb020dc43dc03817910acdb2d3a6353db3`  
		Last Modified: Fri, 21 Dec 2018 09:53:40 GMT  
		Size: 309.2 KB (309228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d05b73c1ba32f257b81784ff3bf792b95be394dbc76ba14e2190d053dbb8903`  
		Last Modified: Fri, 21 Dec 2018 09:53:47 GMT  
		Size: 18.3 MB (18336824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:914d4247e5f4a962e5dbee8a161cd38621a35a76a8528b19b761f3763e579230`  
		Last Modified: Fri, 21 Dec 2018 09:53:40 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7.6-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:70990d0e66eaba1d970e740a3d58cba59e6842c0dcea95a666d654303fb24a64
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.3 MB (20301319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4aaca77971bc00ed3e9a16f243103bc9cf0c3c0c02677e8fc58a8dddfecef07d`
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
# Tue, 18 Dec 2018 10:37:39 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 18 Dec 2018 10:37:39 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Tue, 18 Dec 2018 10:37:40 GMT
EXPOSE 80
# Tue, 18 Dec 2018 10:37:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Dec 2018 10:37:41 GMT
CMD ["traefik"]
# Tue, 18 Dec 2018 10:37:42 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:02971c76063c5060951e838efa67035208583ba50b71afe399e5dcc0bf770465`  
		Last Modified: Tue, 18 Dec 2018 10:38:29 GMT  
		Size: 17.9 MB (17892529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f47cc955e2bc939bce6173ee99e1e6cceae6122bc4f08553a7265ef225f6150`  
		Last Modified: Tue, 18 Dec 2018 10:38:21 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7.6-nanoserver`

```console
$ docker pull traefik@sha256:dab3b3af8657f1f821b2e8947b6799a4bfeff83046e2ea01af30b847d59abdf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:1.7.6-nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:23ade1379d4633b4217492d2ac9cc2ef9ea6276c814837398f03e7198195267c
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **454.9 MB (454949415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:316ca53666594442d6e749fa5e6a995229f74c747622ca376f6a3362c1aefc38`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Sat, 15 Dec 2018 10:17:00 GMT
RUN cmd /S /C #(nop) COPY file:85f0cb8152d40607f362217669e9dac76cec4e13e2c349137c39c6e852dc1d09 in \traefik.exe 
# Sat, 15 Dec 2018 10:17:03 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Sat, 15 Dec 2018 10:17:05 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Sat, 15 Dec 2018 10:17:06 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:82a10a190e0bb25fd837a56e66417602281fbed332a6dcea96cd1db236018db7`  
		Last Modified: Sat, 15 Dec 2018 10:17:30 GMT  
		Size: 19.5 MB (19549736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93d7601634949f2aaa833a6e4231cf0bd8facdab6fc7d04744bc629ef4252d54`  
		Last Modified: Sat, 15 Dec 2018 10:17:23 GMT  
		Size: 956.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed5586dfb26d0277802e1929cf3148676aab39f614c928783f1a4637e3e444bb`  
		Last Modified: Sat, 15 Dec 2018 10:17:23 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9638f01bcff9ff570676885279c4738e8f86640adc6917464bc13e240489c745`  
		Last Modified: Sat, 15 Dec 2018 10:17:23 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7.6-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:dab3b3af8657f1f821b2e8947b6799a4bfeff83046e2ea01af30b847d59abdf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:1.7.6-nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:23ade1379d4633b4217492d2ac9cc2ef9ea6276c814837398f03e7198195267c
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **454.9 MB (454949415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:316ca53666594442d6e749fa5e6a995229f74c747622ca376f6a3362c1aefc38`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Sat, 15 Dec 2018 10:17:00 GMT
RUN cmd /S /C #(nop) COPY file:85f0cb8152d40607f362217669e9dac76cec4e13e2c349137c39c6e852dc1d09 in \traefik.exe 
# Sat, 15 Dec 2018 10:17:03 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Sat, 15 Dec 2018 10:17:05 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Sat, 15 Dec 2018 10:17:06 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:82a10a190e0bb25fd837a56e66417602281fbed332a6dcea96cd1db236018db7`  
		Last Modified: Sat, 15 Dec 2018 10:17:30 GMT  
		Size: 19.5 MB (19549736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93d7601634949f2aaa833a6e4231cf0bd8facdab6fc7d04744bc629ef4252d54`  
		Last Modified: Sat, 15 Dec 2018 10:17:23 GMT  
		Size: 956.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed5586dfb26d0277802e1929cf3148676aab39f614c928783f1a4637e3e444bb`  
		Last Modified: Sat, 15 Dec 2018 10:17:23 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9638f01bcff9ff570676885279c4738e8f86640adc6917464bc13e240489c745`  
		Last Modified: Sat, 15 Dec 2018 10:17:23 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7-alpine`

```console
$ docker pull traefik@sha256:7efc7b04f261c02675d9c3e4f107f6d58d1bcd61cc26a6ad99d38f2ca1a91300
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.7-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:e9fe29c1a1d5e1b27b89086a2b27b4b4728a865228eaa496679dd18f2fc07466
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.0 MB (22048186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e8d573a4f30d2e91e9e0f5ca0260df7f68ed3a831a2ea486bf73c6ba85250fc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 04:53:58 GMT
RUN apk --no-cache add ca-certificates
# Fri, 21 Dec 2018 04:54:01 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Fri, 21 Dec 2018 04:54:02 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Fri, 21 Dec 2018 04:54:02 GMT
EXPOSE 80
# Fri, 21 Dec 2018 04:54:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 21 Dec 2018 04:54:02 GMT
CMD ["traefik"]
# Fri, 21 Dec 2018 04:54:03 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c18a9262634964799b67862ee79826ace112ae633d4d8a3b01ea93080cfe58de`  
		Last Modified: Fri, 21 Dec 2018 04:54:21 GMT  
		Size: 309.2 KB (309168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ea78f0fd2ea64375f074c11f660805fe75b5513b8d7022878456a0dd0a73b5c`  
		Last Modified: Fri, 21 Dec 2018 04:54:26 GMT  
		Size: 19.5 MB (19531676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6973c96a131fc651a3207bdd621ff549730560addafdd0fbd3494d179f297ed`  
		Last Modified: Fri, 21 Dec 2018 04:54:21 GMT  
		Size: 317.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:85be6587d3f99469caf1b4b41f13578d90f27459de00acdcdaa2551fdd51a8ef
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 MB (20792327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d85acbb641975d58815b784ceb6d225413015570998c1ba405e3f3ec9d97d9d7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 09:53:18 GMT
RUN apk --no-cache add ca-certificates
# Fri, 21 Dec 2018 09:53:23 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Fri, 21 Dec 2018 09:53:24 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Fri, 21 Dec 2018 09:53:24 GMT
EXPOSE 80
# Fri, 21 Dec 2018 09:53:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 21 Dec 2018 09:53:25 GMT
CMD ["traefik"]
# Fri, 21 Dec 2018 09:53:25 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd485441b01cc4ef3ab52710f7201ceb020dc43dc03817910acdb2d3a6353db3`  
		Last Modified: Fri, 21 Dec 2018 09:53:40 GMT  
		Size: 309.2 KB (309228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d05b73c1ba32f257b81784ff3bf792b95be394dbc76ba14e2190d053dbb8903`  
		Last Modified: Fri, 21 Dec 2018 09:53:47 GMT  
		Size: 18.3 MB (18336824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:914d4247e5f4a962e5dbee8a161cd38621a35a76a8528b19b761f3763e579230`  
		Last Modified: Fri, 21 Dec 2018 09:53:40 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:70990d0e66eaba1d970e740a3d58cba59e6842c0dcea95a666d654303fb24a64
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.3 MB (20301319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4aaca77971bc00ed3e9a16f243103bc9cf0c3c0c02677e8fc58a8dddfecef07d`
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
# Tue, 18 Dec 2018 10:37:39 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 18 Dec 2018 10:37:39 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Tue, 18 Dec 2018 10:37:40 GMT
EXPOSE 80
# Tue, 18 Dec 2018 10:37:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Dec 2018 10:37:41 GMT
CMD ["traefik"]
# Tue, 18 Dec 2018 10:37:42 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:02971c76063c5060951e838efa67035208583ba50b71afe399e5dcc0bf770465`  
		Last Modified: Tue, 18 Dec 2018 10:38:29 GMT  
		Size: 17.9 MB (17892529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f47cc955e2bc939bce6173ee99e1e6cceae6122bc4f08553a7265ef225f6150`  
		Last Modified: Tue, 18 Dec 2018 10:38:21 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7-nanoserver`

```console
$ docker pull traefik@sha256:dab3b3af8657f1f821b2e8947b6799a4bfeff83046e2ea01af30b847d59abdf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:1.7-nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:23ade1379d4633b4217492d2ac9cc2ef9ea6276c814837398f03e7198195267c
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **454.9 MB (454949415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:316ca53666594442d6e749fa5e6a995229f74c747622ca376f6a3362c1aefc38`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Sat, 15 Dec 2018 10:17:00 GMT
RUN cmd /S /C #(nop) COPY file:85f0cb8152d40607f362217669e9dac76cec4e13e2c349137c39c6e852dc1d09 in \traefik.exe 
# Sat, 15 Dec 2018 10:17:03 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Sat, 15 Dec 2018 10:17:05 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Sat, 15 Dec 2018 10:17:06 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:82a10a190e0bb25fd837a56e66417602281fbed332a6dcea96cd1db236018db7`  
		Last Modified: Sat, 15 Dec 2018 10:17:30 GMT  
		Size: 19.5 MB (19549736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93d7601634949f2aaa833a6e4231cf0bd8facdab6fc7d04744bc629ef4252d54`  
		Last Modified: Sat, 15 Dec 2018 10:17:23 GMT  
		Size: 956.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed5586dfb26d0277802e1929cf3148676aab39f614c928783f1a4637e3e444bb`  
		Last Modified: Sat, 15 Dec 2018 10:17:23 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9638f01bcff9ff570676885279c4738e8f86640adc6917464bc13e240489c745`  
		Last Modified: Sat, 15 Dec 2018 10:17:23 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:dab3b3af8657f1f821b2e8947b6799a4bfeff83046e2ea01af30b847d59abdf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:1.7-nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:23ade1379d4633b4217492d2ac9cc2ef9ea6276c814837398f03e7198195267c
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **454.9 MB (454949415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:316ca53666594442d6e749fa5e6a995229f74c747622ca376f6a3362c1aefc38`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Sat, 15 Dec 2018 10:17:00 GMT
RUN cmd /S /C #(nop) COPY file:85f0cb8152d40607f362217669e9dac76cec4e13e2c349137c39c6e852dc1d09 in \traefik.exe 
# Sat, 15 Dec 2018 10:17:03 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Sat, 15 Dec 2018 10:17:05 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Sat, 15 Dec 2018 10:17:06 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:82a10a190e0bb25fd837a56e66417602281fbed332a6dcea96cd1db236018db7`  
		Last Modified: Sat, 15 Dec 2018 10:17:30 GMT  
		Size: 19.5 MB (19549736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93d7601634949f2aaa833a6e4231cf0bd8facdab6fc7d04744bc629ef4252d54`  
		Last Modified: Sat, 15 Dec 2018 10:17:23 GMT  
		Size: 956.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed5586dfb26d0277802e1929cf3148676aab39f614c928783f1a4637e3e444bb`  
		Last Modified: Sat, 15 Dec 2018 10:17:23 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9638f01bcff9ff570676885279c4738e8f86640adc6917464bc13e240489c745`  
		Last Modified: Sat, 15 Dec 2018 10:17:23 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:alpine`

```console
$ docker pull traefik@sha256:7efc7b04f261c02675d9c3e4f107f6d58d1bcd61cc26a6ad99d38f2ca1a91300
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:alpine` - linux; amd64

```console
$ docker pull traefik@sha256:e9fe29c1a1d5e1b27b89086a2b27b4b4728a865228eaa496679dd18f2fc07466
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.0 MB (22048186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e8d573a4f30d2e91e9e0f5ca0260df7f68ed3a831a2ea486bf73c6ba85250fc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 04:53:58 GMT
RUN apk --no-cache add ca-certificates
# Fri, 21 Dec 2018 04:54:01 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Fri, 21 Dec 2018 04:54:02 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Fri, 21 Dec 2018 04:54:02 GMT
EXPOSE 80
# Fri, 21 Dec 2018 04:54:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 21 Dec 2018 04:54:02 GMT
CMD ["traefik"]
# Fri, 21 Dec 2018 04:54:03 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c18a9262634964799b67862ee79826ace112ae633d4d8a3b01ea93080cfe58de`  
		Last Modified: Fri, 21 Dec 2018 04:54:21 GMT  
		Size: 309.2 KB (309168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ea78f0fd2ea64375f074c11f660805fe75b5513b8d7022878456a0dd0a73b5c`  
		Last Modified: Fri, 21 Dec 2018 04:54:26 GMT  
		Size: 19.5 MB (19531676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6973c96a131fc651a3207bdd621ff549730560addafdd0fbd3494d179f297ed`  
		Last Modified: Fri, 21 Dec 2018 04:54:21 GMT  
		Size: 317.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:85be6587d3f99469caf1b4b41f13578d90f27459de00acdcdaa2551fdd51a8ef
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 MB (20792327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d85acbb641975d58815b784ceb6d225413015570998c1ba405e3f3ec9d97d9d7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 09:53:18 GMT
RUN apk --no-cache add ca-certificates
# Fri, 21 Dec 2018 09:53:23 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Fri, 21 Dec 2018 09:53:24 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Fri, 21 Dec 2018 09:53:24 GMT
EXPOSE 80
# Fri, 21 Dec 2018 09:53:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 21 Dec 2018 09:53:25 GMT
CMD ["traefik"]
# Fri, 21 Dec 2018 09:53:25 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd485441b01cc4ef3ab52710f7201ceb020dc43dc03817910acdb2d3a6353db3`  
		Last Modified: Fri, 21 Dec 2018 09:53:40 GMT  
		Size: 309.2 KB (309228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d05b73c1ba32f257b81784ff3bf792b95be394dbc76ba14e2190d053dbb8903`  
		Last Modified: Fri, 21 Dec 2018 09:53:47 GMT  
		Size: 18.3 MB (18336824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:914d4247e5f4a962e5dbee8a161cd38621a35a76a8528b19b761f3763e579230`  
		Last Modified: Fri, 21 Dec 2018 09:53:40 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:70990d0e66eaba1d970e740a3d58cba59e6842c0dcea95a666d654303fb24a64
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.3 MB (20301319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4aaca77971bc00ed3e9a16f243103bc9cf0c3c0c02677e8fc58a8dddfecef07d`
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
# Tue, 18 Dec 2018 10:37:39 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 18 Dec 2018 10:37:39 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Tue, 18 Dec 2018 10:37:40 GMT
EXPOSE 80
# Tue, 18 Dec 2018 10:37:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Dec 2018 10:37:41 GMT
CMD ["traefik"]
# Tue, 18 Dec 2018 10:37:42 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:02971c76063c5060951e838efa67035208583ba50b71afe399e5dcc0bf770465`  
		Last Modified: Tue, 18 Dec 2018 10:38:29 GMT  
		Size: 17.9 MB (17892529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f47cc955e2bc939bce6173ee99e1e6cceae6122bc4f08553a7265ef225f6150`  
		Last Modified: Tue, 18 Dec 2018 10:38:21 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:latest`

```console
$ docker pull traefik@sha256:a9512e9e1d2c0eda3a971926f50e97467fbeecfe07eeeedc4224af4ee5329a4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:latest` - linux; amd64

```console
$ docker pull traefik@sha256:efedc4f8419177f5fedc410df2d330795dd1bd140e9c4c8050c897dbee0d3035
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.7 MB (19666751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0a0d72714037f9cf7b958d9e0778693c45b1cc6b0e3c87b69ad2603809027a7`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 14 Dec 2018 18:21:56 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Fri, 14 Dec 2018 18:21:56 GMT
COPY file:4a8df4a19b37dce5a17b4f169910f5dfd9a1bca381e5831a48a0a4742c5b7d6f in / 
# Fri, 14 Dec 2018 18:21:57 GMT
EXPOSE 80
# Fri, 14 Dec 2018 18:21:57 GMT
VOLUME [/tmp]
# Fri, 14 Dec 2018 18:21:57 GMT
ENTRYPOINT ["/traefik"]
# Fri, 14 Dec 2018 18:21:57 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:7a433ecdf92bfc5080060a97efa862edf0deca55fcfa76a6a01b911c431695fd`  
		Last Modified: Fri, 14 Dec 2018 18:22:18 GMT  
		Size: 135.0 KB (135043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fbbd8a41c7fdace4ae19b8bca8a5e98a70b551c8973d0c57ef7c8389f03c0e9`  
		Last Modified: Fri, 14 Dec 2018 18:22:23 GMT  
		Size: 19.5 MB (19531708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:latest` - linux; arm variant v6

```console
$ docker pull traefik@sha256:f1210218496ff8a5475b723f4ceff810a2366da36ff309c49c9a7f78efd4fa34
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.5 MB (18471740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4779e9c9c1d9455d8d79c3056c6342a48ed1422d37f1ced84823ee3d221cb44c`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 15 Dec 2018 08:49:55 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Sat, 15 Dec 2018 08:49:56 GMT
COPY file:9185d8f3941eead638fba040a9e3ea7e7b70b93c62dc0a41b4541fcc5053804c in / 
# Sat, 15 Dec 2018 08:49:57 GMT
EXPOSE 80
# Sat, 15 Dec 2018 08:49:57 GMT
VOLUME [/tmp]
# Sat, 15 Dec 2018 08:49:58 GMT
ENTRYPOINT ["/traefik"]
# Sat, 15 Dec 2018 08:49:58 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5527833b12791749e5c8242af5e3795dc1e6b2fe58811c452979252cf978fce9`  
		Last Modified: Sat, 15 Dec 2018 08:50:23 GMT  
		Size: 135.0 KB (135038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8881fd196757b28dad27a5c6257832d5470eae25b194a61ddd5ef6edb1a71b3f`  
		Last Modified: Sat, 15 Dec 2018 08:50:30 GMT  
		Size: 18.3 MB (18336702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:latest` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:69d9d0c99e4805db068be5e560ab72b0e4a70571c54e62cde0f6b1320468fa84
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.0 MB (18027429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:988011f49bae60635adcc34aee6e9cbfff8b9369c942d5e9482d91718631eb76`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 18 Dec 2018 10:37:13 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Tue, 18 Dec 2018 10:37:16 GMT
COPY file:d3135af1d593eef42dba574bcf6e4d9995903f88e4b89c1ba92c26f09393e9cf in / 
# Tue, 18 Dec 2018 10:37:17 GMT
EXPOSE 80
# Tue, 18 Dec 2018 10:37:17 GMT
VOLUME [/tmp]
# Tue, 18 Dec 2018 10:37:18 GMT
ENTRYPOINT ["/traefik"]
# Tue, 18 Dec 2018 10:37:19 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:93231411b7777ed5066dad65f929b35b680bfac1ea1fc2ff0c9fb935cc83d75a`  
		Last Modified: Tue, 18 Dec 2018 10:37:58 GMT  
		Size: 135.0 KB (135036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a85314a8764d5cd30b286d7ef7a7c0066bc00689890fc3bf231a946265f1dd6d`  
		Last Modified: Tue, 18 Dec 2018 10:38:06 GMT  
		Size: 17.9 MB (17892393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:maroilles`

```console
$ docker pull traefik@sha256:a9512e9e1d2c0eda3a971926f50e97467fbeecfe07eeeedc4224af4ee5329a4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:maroilles` - linux; amd64

```console
$ docker pull traefik@sha256:efedc4f8419177f5fedc410df2d330795dd1bd140e9c4c8050c897dbee0d3035
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.7 MB (19666751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0a0d72714037f9cf7b958d9e0778693c45b1cc6b0e3c87b69ad2603809027a7`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 14 Dec 2018 18:21:56 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Fri, 14 Dec 2018 18:21:56 GMT
COPY file:4a8df4a19b37dce5a17b4f169910f5dfd9a1bca381e5831a48a0a4742c5b7d6f in / 
# Fri, 14 Dec 2018 18:21:57 GMT
EXPOSE 80
# Fri, 14 Dec 2018 18:21:57 GMT
VOLUME [/tmp]
# Fri, 14 Dec 2018 18:21:57 GMT
ENTRYPOINT ["/traefik"]
# Fri, 14 Dec 2018 18:21:57 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:7a433ecdf92bfc5080060a97efa862edf0deca55fcfa76a6a01b911c431695fd`  
		Last Modified: Fri, 14 Dec 2018 18:22:18 GMT  
		Size: 135.0 KB (135043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fbbd8a41c7fdace4ae19b8bca8a5e98a70b551c8973d0c57ef7c8389f03c0e9`  
		Last Modified: Fri, 14 Dec 2018 18:22:23 GMT  
		Size: 19.5 MB (19531708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:maroilles` - linux; arm variant v6

```console
$ docker pull traefik@sha256:f1210218496ff8a5475b723f4ceff810a2366da36ff309c49c9a7f78efd4fa34
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.5 MB (18471740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4779e9c9c1d9455d8d79c3056c6342a48ed1422d37f1ced84823ee3d221cb44c`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 15 Dec 2018 08:49:55 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Sat, 15 Dec 2018 08:49:56 GMT
COPY file:9185d8f3941eead638fba040a9e3ea7e7b70b93c62dc0a41b4541fcc5053804c in / 
# Sat, 15 Dec 2018 08:49:57 GMT
EXPOSE 80
# Sat, 15 Dec 2018 08:49:57 GMT
VOLUME [/tmp]
# Sat, 15 Dec 2018 08:49:58 GMT
ENTRYPOINT ["/traefik"]
# Sat, 15 Dec 2018 08:49:58 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5527833b12791749e5c8242af5e3795dc1e6b2fe58811c452979252cf978fce9`  
		Last Modified: Sat, 15 Dec 2018 08:50:23 GMT  
		Size: 135.0 KB (135038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8881fd196757b28dad27a5c6257832d5470eae25b194a61ddd5ef6edb1a71b3f`  
		Last Modified: Sat, 15 Dec 2018 08:50:30 GMT  
		Size: 18.3 MB (18336702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:maroilles` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:69d9d0c99e4805db068be5e560ab72b0e4a70571c54e62cde0f6b1320468fa84
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.0 MB (18027429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:988011f49bae60635adcc34aee6e9cbfff8b9369c942d5e9482d91718631eb76`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 18 Dec 2018 10:37:13 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Tue, 18 Dec 2018 10:37:16 GMT
COPY file:d3135af1d593eef42dba574bcf6e4d9995903f88e4b89c1ba92c26f09393e9cf in / 
# Tue, 18 Dec 2018 10:37:17 GMT
EXPOSE 80
# Tue, 18 Dec 2018 10:37:17 GMT
VOLUME [/tmp]
# Tue, 18 Dec 2018 10:37:18 GMT
ENTRYPOINT ["/traefik"]
# Tue, 18 Dec 2018 10:37:19 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:93231411b7777ed5066dad65f929b35b680bfac1ea1fc2ff0c9fb935cc83d75a`  
		Last Modified: Tue, 18 Dec 2018 10:37:58 GMT  
		Size: 135.0 KB (135036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a85314a8764d5cd30b286d7ef7a7c0066bc00689890fc3bf231a946265f1dd6d`  
		Last Modified: Tue, 18 Dec 2018 10:38:06 GMT  
		Size: 17.9 MB (17892393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:maroilles-alpine`

```console
$ docker pull traefik@sha256:7efc7b04f261c02675d9c3e4f107f6d58d1bcd61cc26a6ad99d38f2ca1a91300
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:maroilles-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:e9fe29c1a1d5e1b27b89086a2b27b4b4728a865228eaa496679dd18f2fc07466
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.0 MB (22048186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e8d573a4f30d2e91e9e0f5ca0260df7f68ed3a831a2ea486bf73c6ba85250fc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 04:53:58 GMT
RUN apk --no-cache add ca-certificates
# Fri, 21 Dec 2018 04:54:01 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Fri, 21 Dec 2018 04:54:02 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Fri, 21 Dec 2018 04:54:02 GMT
EXPOSE 80
# Fri, 21 Dec 2018 04:54:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 21 Dec 2018 04:54:02 GMT
CMD ["traefik"]
# Fri, 21 Dec 2018 04:54:03 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c18a9262634964799b67862ee79826ace112ae633d4d8a3b01ea93080cfe58de`  
		Last Modified: Fri, 21 Dec 2018 04:54:21 GMT  
		Size: 309.2 KB (309168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ea78f0fd2ea64375f074c11f660805fe75b5513b8d7022878456a0dd0a73b5c`  
		Last Modified: Fri, 21 Dec 2018 04:54:26 GMT  
		Size: 19.5 MB (19531676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6973c96a131fc651a3207bdd621ff549730560addafdd0fbd3494d179f297ed`  
		Last Modified: Fri, 21 Dec 2018 04:54:21 GMT  
		Size: 317.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:maroilles-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:85be6587d3f99469caf1b4b41f13578d90f27459de00acdcdaa2551fdd51a8ef
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 MB (20792327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d85acbb641975d58815b784ceb6d225413015570998c1ba405e3f3ec9d97d9d7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 09:53:18 GMT
RUN apk --no-cache add ca-certificates
# Fri, 21 Dec 2018 09:53:23 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Fri, 21 Dec 2018 09:53:24 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Fri, 21 Dec 2018 09:53:24 GMT
EXPOSE 80
# Fri, 21 Dec 2018 09:53:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 21 Dec 2018 09:53:25 GMT
CMD ["traefik"]
# Fri, 21 Dec 2018 09:53:25 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd485441b01cc4ef3ab52710f7201ceb020dc43dc03817910acdb2d3a6353db3`  
		Last Modified: Fri, 21 Dec 2018 09:53:40 GMT  
		Size: 309.2 KB (309228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d05b73c1ba32f257b81784ff3bf792b95be394dbc76ba14e2190d053dbb8903`  
		Last Modified: Fri, 21 Dec 2018 09:53:47 GMT  
		Size: 18.3 MB (18336824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:914d4247e5f4a962e5dbee8a161cd38621a35a76a8528b19b761f3763e579230`  
		Last Modified: Fri, 21 Dec 2018 09:53:40 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:maroilles-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:70990d0e66eaba1d970e740a3d58cba59e6842c0dcea95a666d654303fb24a64
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.3 MB (20301319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4aaca77971bc00ed3e9a16f243103bc9cf0c3c0c02677e8fc58a8dddfecef07d`
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
# Tue, 18 Dec 2018 10:37:39 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 18 Dec 2018 10:37:39 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Tue, 18 Dec 2018 10:37:40 GMT
EXPOSE 80
# Tue, 18 Dec 2018 10:37:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Dec 2018 10:37:41 GMT
CMD ["traefik"]
# Tue, 18 Dec 2018 10:37:42 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:02971c76063c5060951e838efa67035208583ba50b71afe399e5dcc0bf770465`  
		Last Modified: Tue, 18 Dec 2018 10:38:29 GMT  
		Size: 17.9 MB (17892529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f47cc955e2bc939bce6173ee99e1e6cceae6122bc4f08553a7265ef225f6150`  
		Last Modified: Tue, 18 Dec 2018 10:38:21 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:maroilles-nanoserver`

```console
$ docker pull traefik@sha256:dab3b3af8657f1f821b2e8947b6799a4bfeff83046e2ea01af30b847d59abdf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:maroilles-nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:23ade1379d4633b4217492d2ac9cc2ef9ea6276c814837398f03e7198195267c
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **454.9 MB (454949415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:316ca53666594442d6e749fa5e6a995229f74c747622ca376f6a3362c1aefc38`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Sat, 15 Dec 2018 10:17:00 GMT
RUN cmd /S /C #(nop) COPY file:85f0cb8152d40607f362217669e9dac76cec4e13e2c349137c39c6e852dc1d09 in \traefik.exe 
# Sat, 15 Dec 2018 10:17:03 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Sat, 15 Dec 2018 10:17:05 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Sat, 15 Dec 2018 10:17:06 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:82a10a190e0bb25fd837a56e66417602281fbed332a6dcea96cd1db236018db7`  
		Last Modified: Sat, 15 Dec 2018 10:17:30 GMT  
		Size: 19.5 MB (19549736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93d7601634949f2aaa833a6e4231cf0bd8facdab6fc7d04744bc629ef4252d54`  
		Last Modified: Sat, 15 Dec 2018 10:17:23 GMT  
		Size: 956.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed5586dfb26d0277802e1929cf3148676aab39f614c928783f1a4637e3e444bb`  
		Last Modified: Sat, 15 Dec 2018 10:17:23 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9638f01bcff9ff570676885279c4738e8f86640adc6917464bc13e240489c745`  
		Last Modified: Sat, 15 Dec 2018 10:17:23 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:maroilles-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:dab3b3af8657f1f821b2e8947b6799a4bfeff83046e2ea01af30b847d59abdf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:maroilles-nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:23ade1379d4633b4217492d2ac9cc2ef9ea6276c814837398f03e7198195267c
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **454.9 MB (454949415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:316ca53666594442d6e749fa5e6a995229f74c747622ca376f6a3362c1aefc38`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Sat, 15 Dec 2018 10:17:00 GMT
RUN cmd /S /C #(nop) COPY file:85f0cb8152d40607f362217669e9dac76cec4e13e2c349137c39c6e852dc1d09 in \traefik.exe 
# Sat, 15 Dec 2018 10:17:03 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Sat, 15 Dec 2018 10:17:05 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Sat, 15 Dec 2018 10:17:06 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:82a10a190e0bb25fd837a56e66417602281fbed332a6dcea96cd1db236018db7`  
		Last Modified: Sat, 15 Dec 2018 10:17:30 GMT  
		Size: 19.5 MB (19549736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93d7601634949f2aaa833a6e4231cf0bd8facdab6fc7d04744bc629ef4252d54`  
		Last Modified: Sat, 15 Dec 2018 10:17:23 GMT  
		Size: 956.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed5586dfb26d0277802e1929cf3148676aab39f614c928783f1a4637e3e444bb`  
		Last Modified: Sat, 15 Dec 2018 10:17:23 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9638f01bcff9ff570676885279c4738e8f86640adc6917464bc13e240489c745`  
		Last Modified: Sat, 15 Dec 2018 10:17:23 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:nanoserver`

```console
$ docker pull traefik@sha256:dab3b3af8657f1f821b2e8947b6799a4bfeff83046e2ea01af30b847d59abdf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:23ade1379d4633b4217492d2ac9cc2ef9ea6276c814837398f03e7198195267c
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **454.9 MB (454949415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:316ca53666594442d6e749fa5e6a995229f74c747622ca376f6a3362c1aefc38`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Sat, 15 Dec 2018 10:17:00 GMT
RUN cmd /S /C #(nop) COPY file:85f0cb8152d40607f362217669e9dac76cec4e13e2c349137c39c6e852dc1d09 in \traefik.exe 
# Sat, 15 Dec 2018 10:17:03 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Sat, 15 Dec 2018 10:17:05 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Sat, 15 Dec 2018 10:17:06 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:82a10a190e0bb25fd837a56e66417602281fbed332a6dcea96cd1db236018db7`  
		Last Modified: Sat, 15 Dec 2018 10:17:30 GMT  
		Size: 19.5 MB (19549736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93d7601634949f2aaa833a6e4231cf0bd8facdab6fc7d04744bc629ef4252d54`  
		Last Modified: Sat, 15 Dec 2018 10:17:23 GMT  
		Size: 956.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed5586dfb26d0277802e1929cf3148676aab39f614c928783f1a4637e3e444bb`  
		Last Modified: Sat, 15 Dec 2018 10:17:23 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9638f01bcff9ff570676885279c4738e8f86640adc6917464bc13e240489c745`  
		Last Modified: Sat, 15 Dec 2018 10:17:23 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:nanoserver-sac2016`

```console
$ docker pull traefik@sha256:dab3b3af8657f1f821b2e8947b6799a4bfeff83046e2ea01af30b847d59abdf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:23ade1379d4633b4217492d2ac9cc2ef9ea6276c814837398f03e7198195267c
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **454.9 MB (454949415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:316ca53666594442d6e749fa5e6a995229f74c747622ca376f6a3362c1aefc38`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Sat, 15 Dec 2018 10:17:00 GMT
RUN cmd /S /C #(nop) COPY file:85f0cb8152d40607f362217669e9dac76cec4e13e2c349137c39c6e852dc1d09 in \traefik.exe 
# Sat, 15 Dec 2018 10:17:03 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Sat, 15 Dec 2018 10:17:05 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Sat, 15 Dec 2018 10:17:06 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:82a10a190e0bb25fd837a56e66417602281fbed332a6dcea96cd1db236018db7`  
		Last Modified: Sat, 15 Dec 2018 10:17:30 GMT  
		Size: 19.5 MB (19549736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93d7601634949f2aaa833a6e4231cf0bd8facdab6fc7d04744bc629ef4252d54`  
		Last Modified: Sat, 15 Dec 2018 10:17:23 GMT  
		Size: 956.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed5586dfb26d0277802e1929cf3148676aab39f614c928783f1a4637e3e444bb`  
		Last Modified: Sat, 15 Dec 2018 10:17:23 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9638f01bcff9ff570676885279c4738e8f86640adc6917464bc13e240489c745`  
		Last Modified: Sat, 15 Dec 2018 10:17:23 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7`

```console
$ docker pull traefik@sha256:a9512e9e1d2c0eda3a971926f50e97467fbeecfe07eeeedc4224af4ee5329a4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.7` - linux; amd64

```console
$ docker pull traefik@sha256:efedc4f8419177f5fedc410df2d330795dd1bd140e9c4c8050c897dbee0d3035
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.7 MB (19666751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0a0d72714037f9cf7b958d9e0778693c45b1cc6b0e3c87b69ad2603809027a7`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 14 Dec 2018 18:21:56 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Fri, 14 Dec 2018 18:21:56 GMT
COPY file:4a8df4a19b37dce5a17b4f169910f5dfd9a1bca381e5831a48a0a4742c5b7d6f in / 
# Fri, 14 Dec 2018 18:21:57 GMT
EXPOSE 80
# Fri, 14 Dec 2018 18:21:57 GMT
VOLUME [/tmp]
# Fri, 14 Dec 2018 18:21:57 GMT
ENTRYPOINT ["/traefik"]
# Fri, 14 Dec 2018 18:21:57 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:7a433ecdf92bfc5080060a97efa862edf0deca55fcfa76a6a01b911c431695fd`  
		Last Modified: Fri, 14 Dec 2018 18:22:18 GMT  
		Size: 135.0 KB (135043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fbbd8a41c7fdace4ae19b8bca8a5e98a70b551c8973d0c57ef7c8389f03c0e9`  
		Last Modified: Fri, 14 Dec 2018 18:22:23 GMT  
		Size: 19.5 MB (19531708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7` - linux; arm variant v6

```console
$ docker pull traefik@sha256:f1210218496ff8a5475b723f4ceff810a2366da36ff309c49c9a7f78efd4fa34
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.5 MB (18471740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4779e9c9c1d9455d8d79c3056c6342a48ed1422d37f1ced84823ee3d221cb44c`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 15 Dec 2018 08:49:55 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Sat, 15 Dec 2018 08:49:56 GMT
COPY file:9185d8f3941eead638fba040a9e3ea7e7b70b93c62dc0a41b4541fcc5053804c in / 
# Sat, 15 Dec 2018 08:49:57 GMT
EXPOSE 80
# Sat, 15 Dec 2018 08:49:57 GMT
VOLUME [/tmp]
# Sat, 15 Dec 2018 08:49:58 GMT
ENTRYPOINT ["/traefik"]
# Sat, 15 Dec 2018 08:49:58 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5527833b12791749e5c8242af5e3795dc1e6b2fe58811c452979252cf978fce9`  
		Last Modified: Sat, 15 Dec 2018 08:50:23 GMT  
		Size: 135.0 KB (135038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8881fd196757b28dad27a5c6257832d5470eae25b194a61ddd5ef6edb1a71b3f`  
		Last Modified: Sat, 15 Dec 2018 08:50:30 GMT  
		Size: 18.3 MB (18336702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:69d9d0c99e4805db068be5e560ab72b0e4a70571c54e62cde0f6b1320468fa84
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.0 MB (18027429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:988011f49bae60635adcc34aee6e9cbfff8b9369c942d5e9482d91718631eb76`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 18 Dec 2018 10:37:13 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Tue, 18 Dec 2018 10:37:16 GMT
COPY file:d3135af1d593eef42dba574bcf6e4d9995903f88e4b89c1ba92c26f09393e9cf in / 
# Tue, 18 Dec 2018 10:37:17 GMT
EXPOSE 80
# Tue, 18 Dec 2018 10:37:17 GMT
VOLUME [/tmp]
# Tue, 18 Dec 2018 10:37:18 GMT
ENTRYPOINT ["/traefik"]
# Tue, 18 Dec 2018 10:37:19 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:93231411b7777ed5066dad65f929b35b680bfac1ea1fc2ff0c9fb935cc83d75a`  
		Last Modified: Tue, 18 Dec 2018 10:37:58 GMT  
		Size: 135.0 KB (135036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a85314a8764d5cd30b286d7ef7a7c0066bc00689890fc3bf231a946265f1dd6d`  
		Last Modified: Tue, 18 Dec 2018 10:38:06 GMT  
		Size: 17.9 MB (17892393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7.6`

```console
$ docker pull traefik@sha256:a9512e9e1d2c0eda3a971926f50e97467fbeecfe07eeeedc4224af4ee5329a4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.7.6` - linux; amd64

```console
$ docker pull traefik@sha256:efedc4f8419177f5fedc410df2d330795dd1bd140e9c4c8050c897dbee0d3035
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.7 MB (19666751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0a0d72714037f9cf7b958d9e0778693c45b1cc6b0e3c87b69ad2603809027a7`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 14 Dec 2018 18:21:56 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Fri, 14 Dec 2018 18:21:56 GMT
COPY file:4a8df4a19b37dce5a17b4f169910f5dfd9a1bca381e5831a48a0a4742c5b7d6f in / 
# Fri, 14 Dec 2018 18:21:57 GMT
EXPOSE 80
# Fri, 14 Dec 2018 18:21:57 GMT
VOLUME [/tmp]
# Fri, 14 Dec 2018 18:21:57 GMT
ENTRYPOINT ["/traefik"]
# Fri, 14 Dec 2018 18:21:57 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:7a433ecdf92bfc5080060a97efa862edf0deca55fcfa76a6a01b911c431695fd`  
		Last Modified: Fri, 14 Dec 2018 18:22:18 GMT  
		Size: 135.0 KB (135043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fbbd8a41c7fdace4ae19b8bca8a5e98a70b551c8973d0c57ef7c8389f03c0e9`  
		Last Modified: Fri, 14 Dec 2018 18:22:23 GMT  
		Size: 19.5 MB (19531708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7.6` - linux; arm variant v6

```console
$ docker pull traefik@sha256:f1210218496ff8a5475b723f4ceff810a2366da36ff309c49c9a7f78efd4fa34
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.5 MB (18471740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4779e9c9c1d9455d8d79c3056c6342a48ed1422d37f1ced84823ee3d221cb44c`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 15 Dec 2018 08:49:55 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Sat, 15 Dec 2018 08:49:56 GMT
COPY file:9185d8f3941eead638fba040a9e3ea7e7b70b93c62dc0a41b4541fcc5053804c in / 
# Sat, 15 Dec 2018 08:49:57 GMT
EXPOSE 80
# Sat, 15 Dec 2018 08:49:57 GMT
VOLUME [/tmp]
# Sat, 15 Dec 2018 08:49:58 GMT
ENTRYPOINT ["/traefik"]
# Sat, 15 Dec 2018 08:49:58 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5527833b12791749e5c8242af5e3795dc1e6b2fe58811c452979252cf978fce9`  
		Last Modified: Sat, 15 Dec 2018 08:50:23 GMT  
		Size: 135.0 KB (135038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8881fd196757b28dad27a5c6257832d5470eae25b194a61ddd5ef6edb1a71b3f`  
		Last Modified: Sat, 15 Dec 2018 08:50:30 GMT  
		Size: 18.3 MB (18336702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7.6` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:69d9d0c99e4805db068be5e560ab72b0e4a70571c54e62cde0f6b1320468fa84
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.0 MB (18027429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:988011f49bae60635adcc34aee6e9cbfff8b9369c942d5e9482d91718631eb76`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 18 Dec 2018 10:37:13 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Tue, 18 Dec 2018 10:37:16 GMT
COPY file:d3135af1d593eef42dba574bcf6e4d9995903f88e4b89c1ba92c26f09393e9cf in / 
# Tue, 18 Dec 2018 10:37:17 GMT
EXPOSE 80
# Tue, 18 Dec 2018 10:37:17 GMT
VOLUME [/tmp]
# Tue, 18 Dec 2018 10:37:18 GMT
ENTRYPOINT ["/traefik"]
# Tue, 18 Dec 2018 10:37:19 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:93231411b7777ed5066dad65f929b35b680bfac1ea1fc2ff0c9fb935cc83d75a`  
		Last Modified: Tue, 18 Dec 2018 10:37:58 GMT  
		Size: 135.0 KB (135036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a85314a8764d5cd30b286d7ef7a7c0066bc00689890fc3bf231a946265f1dd6d`  
		Last Modified: Tue, 18 Dec 2018 10:38:06 GMT  
		Size: 17.9 MB (17892393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7.6-alpine`

```console
$ docker pull traefik@sha256:7efc7b04f261c02675d9c3e4f107f6d58d1bcd61cc26a6ad99d38f2ca1a91300
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.7.6-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:e9fe29c1a1d5e1b27b89086a2b27b4b4728a865228eaa496679dd18f2fc07466
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.0 MB (22048186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e8d573a4f30d2e91e9e0f5ca0260df7f68ed3a831a2ea486bf73c6ba85250fc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 04:53:58 GMT
RUN apk --no-cache add ca-certificates
# Fri, 21 Dec 2018 04:54:01 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Fri, 21 Dec 2018 04:54:02 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Fri, 21 Dec 2018 04:54:02 GMT
EXPOSE 80
# Fri, 21 Dec 2018 04:54:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 21 Dec 2018 04:54:02 GMT
CMD ["traefik"]
# Fri, 21 Dec 2018 04:54:03 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c18a9262634964799b67862ee79826ace112ae633d4d8a3b01ea93080cfe58de`  
		Last Modified: Fri, 21 Dec 2018 04:54:21 GMT  
		Size: 309.2 KB (309168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ea78f0fd2ea64375f074c11f660805fe75b5513b8d7022878456a0dd0a73b5c`  
		Last Modified: Fri, 21 Dec 2018 04:54:26 GMT  
		Size: 19.5 MB (19531676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6973c96a131fc651a3207bdd621ff549730560addafdd0fbd3494d179f297ed`  
		Last Modified: Fri, 21 Dec 2018 04:54:21 GMT  
		Size: 317.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7.6-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:85be6587d3f99469caf1b4b41f13578d90f27459de00acdcdaa2551fdd51a8ef
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 MB (20792327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d85acbb641975d58815b784ceb6d225413015570998c1ba405e3f3ec9d97d9d7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 09:53:18 GMT
RUN apk --no-cache add ca-certificates
# Fri, 21 Dec 2018 09:53:23 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Fri, 21 Dec 2018 09:53:24 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Fri, 21 Dec 2018 09:53:24 GMT
EXPOSE 80
# Fri, 21 Dec 2018 09:53:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 21 Dec 2018 09:53:25 GMT
CMD ["traefik"]
# Fri, 21 Dec 2018 09:53:25 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd485441b01cc4ef3ab52710f7201ceb020dc43dc03817910acdb2d3a6353db3`  
		Last Modified: Fri, 21 Dec 2018 09:53:40 GMT  
		Size: 309.2 KB (309228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d05b73c1ba32f257b81784ff3bf792b95be394dbc76ba14e2190d053dbb8903`  
		Last Modified: Fri, 21 Dec 2018 09:53:47 GMT  
		Size: 18.3 MB (18336824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:914d4247e5f4a962e5dbee8a161cd38621a35a76a8528b19b761f3763e579230`  
		Last Modified: Fri, 21 Dec 2018 09:53:40 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7.6-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:70990d0e66eaba1d970e740a3d58cba59e6842c0dcea95a666d654303fb24a64
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.3 MB (20301319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4aaca77971bc00ed3e9a16f243103bc9cf0c3c0c02677e8fc58a8dddfecef07d`
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
# Tue, 18 Dec 2018 10:37:39 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 18 Dec 2018 10:37:39 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Tue, 18 Dec 2018 10:37:40 GMT
EXPOSE 80
# Tue, 18 Dec 2018 10:37:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Dec 2018 10:37:41 GMT
CMD ["traefik"]
# Tue, 18 Dec 2018 10:37:42 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:02971c76063c5060951e838efa67035208583ba50b71afe399e5dcc0bf770465`  
		Last Modified: Tue, 18 Dec 2018 10:38:29 GMT  
		Size: 17.9 MB (17892529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f47cc955e2bc939bce6173ee99e1e6cceae6122bc4f08553a7265ef225f6150`  
		Last Modified: Tue, 18 Dec 2018 10:38:21 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7.6-nanoserver`

```console
$ docker pull traefik@sha256:dab3b3af8657f1f821b2e8947b6799a4bfeff83046e2ea01af30b847d59abdf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:v1.7.6-nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:23ade1379d4633b4217492d2ac9cc2ef9ea6276c814837398f03e7198195267c
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **454.9 MB (454949415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:316ca53666594442d6e749fa5e6a995229f74c747622ca376f6a3362c1aefc38`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Sat, 15 Dec 2018 10:17:00 GMT
RUN cmd /S /C #(nop) COPY file:85f0cb8152d40607f362217669e9dac76cec4e13e2c349137c39c6e852dc1d09 in \traefik.exe 
# Sat, 15 Dec 2018 10:17:03 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Sat, 15 Dec 2018 10:17:05 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Sat, 15 Dec 2018 10:17:06 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:82a10a190e0bb25fd837a56e66417602281fbed332a6dcea96cd1db236018db7`  
		Last Modified: Sat, 15 Dec 2018 10:17:30 GMT  
		Size: 19.5 MB (19549736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93d7601634949f2aaa833a6e4231cf0bd8facdab6fc7d04744bc629ef4252d54`  
		Last Modified: Sat, 15 Dec 2018 10:17:23 GMT  
		Size: 956.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed5586dfb26d0277802e1929cf3148676aab39f614c928783f1a4637e3e444bb`  
		Last Modified: Sat, 15 Dec 2018 10:17:23 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9638f01bcff9ff570676885279c4738e8f86640adc6917464bc13e240489c745`  
		Last Modified: Sat, 15 Dec 2018 10:17:23 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7.6-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:dab3b3af8657f1f821b2e8947b6799a4bfeff83046e2ea01af30b847d59abdf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:v1.7.6-nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:23ade1379d4633b4217492d2ac9cc2ef9ea6276c814837398f03e7198195267c
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **454.9 MB (454949415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:316ca53666594442d6e749fa5e6a995229f74c747622ca376f6a3362c1aefc38`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Sat, 15 Dec 2018 10:17:00 GMT
RUN cmd /S /C #(nop) COPY file:85f0cb8152d40607f362217669e9dac76cec4e13e2c349137c39c6e852dc1d09 in \traefik.exe 
# Sat, 15 Dec 2018 10:17:03 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Sat, 15 Dec 2018 10:17:05 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Sat, 15 Dec 2018 10:17:06 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:82a10a190e0bb25fd837a56e66417602281fbed332a6dcea96cd1db236018db7`  
		Last Modified: Sat, 15 Dec 2018 10:17:30 GMT  
		Size: 19.5 MB (19549736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93d7601634949f2aaa833a6e4231cf0bd8facdab6fc7d04744bc629ef4252d54`  
		Last Modified: Sat, 15 Dec 2018 10:17:23 GMT  
		Size: 956.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed5586dfb26d0277802e1929cf3148676aab39f614c928783f1a4637e3e444bb`  
		Last Modified: Sat, 15 Dec 2018 10:17:23 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9638f01bcff9ff570676885279c4738e8f86640adc6917464bc13e240489c745`  
		Last Modified: Sat, 15 Dec 2018 10:17:23 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7-alpine`

```console
$ docker pull traefik@sha256:7efc7b04f261c02675d9c3e4f107f6d58d1bcd61cc26a6ad99d38f2ca1a91300
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.7-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:e9fe29c1a1d5e1b27b89086a2b27b4b4728a865228eaa496679dd18f2fc07466
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.0 MB (22048186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e8d573a4f30d2e91e9e0f5ca0260df7f68ed3a831a2ea486bf73c6ba85250fc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 04:53:58 GMT
RUN apk --no-cache add ca-certificates
# Fri, 21 Dec 2018 04:54:01 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Fri, 21 Dec 2018 04:54:02 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Fri, 21 Dec 2018 04:54:02 GMT
EXPOSE 80
# Fri, 21 Dec 2018 04:54:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 21 Dec 2018 04:54:02 GMT
CMD ["traefik"]
# Fri, 21 Dec 2018 04:54:03 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c18a9262634964799b67862ee79826ace112ae633d4d8a3b01ea93080cfe58de`  
		Last Modified: Fri, 21 Dec 2018 04:54:21 GMT  
		Size: 309.2 KB (309168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ea78f0fd2ea64375f074c11f660805fe75b5513b8d7022878456a0dd0a73b5c`  
		Last Modified: Fri, 21 Dec 2018 04:54:26 GMT  
		Size: 19.5 MB (19531676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6973c96a131fc651a3207bdd621ff549730560addafdd0fbd3494d179f297ed`  
		Last Modified: Fri, 21 Dec 2018 04:54:21 GMT  
		Size: 317.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:85be6587d3f99469caf1b4b41f13578d90f27459de00acdcdaa2551fdd51a8ef
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 MB (20792327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d85acbb641975d58815b784ceb6d225413015570998c1ba405e3f3ec9d97d9d7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 09:53:18 GMT
RUN apk --no-cache add ca-certificates
# Fri, 21 Dec 2018 09:53:23 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Fri, 21 Dec 2018 09:53:24 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Fri, 21 Dec 2018 09:53:24 GMT
EXPOSE 80
# Fri, 21 Dec 2018 09:53:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 21 Dec 2018 09:53:25 GMT
CMD ["traefik"]
# Fri, 21 Dec 2018 09:53:25 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd485441b01cc4ef3ab52710f7201ceb020dc43dc03817910acdb2d3a6353db3`  
		Last Modified: Fri, 21 Dec 2018 09:53:40 GMT  
		Size: 309.2 KB (309228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d05b73c1ba32f257b81784ff3bf792b95be394dbc76ba14e2190d053dbb8903`  
		Last Modified: Fri, 21 Dec 2018 09:53:47 GMT  
		Size: 18.3 MB (18336824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:914d4247e5f4a962e5dbee8a161cd38621a35a76a8528b19b761f3763e579230`  
		Last Modified: Fri, 21 Dec 2018 09:53:40 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:70990d0e66eaba1d970e740a3d58cba59e6842c0dcea95a666d654303fb24a64
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.3 MB (20301319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4aaca77971bc00ed3e9a16f243103bc9cf0c3c0c02677e8fc58a8dddfecef07d`
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
# Tue, 18 Dec 2018 10:37:39 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 18 Dec 2018 10:37:39 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Tue, 18 Dec 2018 10:37:40 GMT
EXPOSE 80
# Tue, 18 Dec 2018 10:37:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Dec 2018 10:37:41 GMT
CMD ["traefik"]
# Tue, 18 Dec 2018 10:37:42 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:02971c76063c5060951e838efa67035208583ba50b71afe399e5dcc0bf770465`  
		Last Modified: Tue, 18 Dec 2018 10:38:29 GMT  
		Size: 17.9 MB (17892529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f47cc955e2bc939bce6173ee99e1e6cceae6122bc4f08553a7265ef225f6150`  
		Last Modified: Tue, 18 Dec 2018 10:38:21 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7-nanoserver`

```console
$ docker pull traefik@sha256:dab3b3af8657f1f821b2e8947b6799a4bfeff83046e2ea01af30b847d59abdf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:v1.7-nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:23ade1379d4633b4217492d2ac9cc2ef9ea6276c814837398f03e7198195267c
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **454.9 MB (454949415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:316ca53666594442d6e749fa5e6a995229f74c747622ca376f6a3362c1aefc38`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Sat, 15 Dec 2018 10:17:00 GMT
RUN cmd /S /C #(nop) COPY file:85f0cb8152d40607f362217669e9dac76cec4e13e2c349137c39c6e852dc1d09 in \traefik.exe 
# Sat, 15 Dec 2018 10:17:03 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Sat, 15 Dec 2018 10:17:05 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Sat, 15 Dec 2018 10:17:06 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:82a10a190e0bb25fd837a56e66417602281fbed332a6dcea96cd1db236018db7`  
		Last Modified: Sat, 15 Dec 2018 10:17:30 GMT  
		Size: 19.5 MB (19549736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93d7601634949f2aaa833a6e4231cf0bd8facdab6fc7d04744bc629ef4252d54`  
		Last Modified: Sat, 15 Dec 2018 10:17:23 GMT  
		Size: 956.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed5586dfb26d0277802e1929cf3148676aab39f614c928783f1a4637e3e444bb`  
		Last Modified: Sat, 15 Dec 2018 10:17:23 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9638f01bcff9ff570676885279c4738e8f86640adc6917464bc13e240489c745`  
		Last Modified: Sat, 15 Dec 2018 10:17:23 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:dab3b3af8657f1f821b2e8947b6799a4bfeff83046e2ea01af30b847d59abdf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:v1.7-nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:23ade1379d4633b4217492d2ac9cc2ef9ea6276c814837398f03e7198195267c
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **454.9 MB (454949415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:316ca53666594442d6e749fa5e6a995229f74c747622ca376f6a3362c1aefc38`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Sat, 15 Dec 2018 10:17:00 GMT
RUN cmd /S /C #(nop) COPY file:85f0cb8152d40607f362217669e9dac76cec4e13e2c349137c39c6e852dc1d09 in \traefik.exe 
# Sat, 15 Dec 2018 10:17:03 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Sat, 15 Dec 2018 10:17:05 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Sat, 15 Dec 2018 10:17:06 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:82a10a190e0bb25fd837a56e66417602281fbed332a6dcea96cd1db236018db7`  
		Last Modified: Sat, 15 Dec 2018 10:17:30 GMT  
		Size: 19.5 MB (19549736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93d7601634949f2aaa833a6e4231cf0bd8facdab6fc7d04744bc629ef4252d54`  
		Last Modified: Sat, 15 Dec 2018 10:17:23 GMT  
		Size: 956.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed5586dfb26d0277802e1929cf3148676aab39f614c928783f1a4637e3e444bb`  
		Last Modified: Sat, 15 Dec 2018 10:17:23 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9638f01bcff9ff570676885279c4738e8f86640adc6917464bc13e240489c745`  
		Last Modified: Sat, 15 Dec 2018 10:17:23 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
