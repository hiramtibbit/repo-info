<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `traefik`

-	[`traefik:1.7`](#traefik17)
-	[`traefik:1.7.7`](#traefik177)
-	[`traefik:1.7.7-alpine`](#traefik177-alpine)
-	[`traefik:1.7.7-nanoserver`](#traefik177-nanoserver)
-	[`traefik:1.7.7-nanoserver-sac2016`](#traefik177-nanoserver-sac2016)
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
-	[`traefik:v1.7.7`](#traefikv177)
-	[`traefik:v1.7.7-alpine`](#traefikv177-alpine)
-	[`traefik:v1.7.7-nanoserver`](#traefikv177-nanoserver)
-	[`traefik:v1.7.7-nanoserver-sac2016`](#traefikv177-nanoserver-sac2016)
-	[`traefik:v1.7-alpine`](#traefikv17-alpine)
-	[`traefik:v1.7-nanoserver`](#traefikv17-nanoserver)
-	[`traefik:v1.7-nanoserver-sac2016`](#traefikv17-nanoserver-sac2016)

## `traefik:1.7`

```console
$ docker pull traefik@sha256:dffc34eb70092fe566380e7ff13ef1fbe6892389306430d4e9427935f2fac21c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.7` - linux; amd64

```console
$ docker pull traefik@sha256:b576755c1a42dc2b8ca90a868b7a8647c5a050a2b1fe97dbbdbda75bb48a507a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.7 MB (19740419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5836e9f6c9646af98f931775acf094accb60eb17151c17adc42991fb3080c267`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 14 Dec 2018 18:21:56 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Tue, 08 Jan 2019 23:52:47 GMT
COPY file:23a51aad526bb41d3f6b944f54dd4742f125d1e04aa637f7170d84cd0709aba0 in / 
# Tue, 08 Jan 2019 23:52:47 GMT
EXPOSE 80
# Tue, 08 Jan 2019 23:52:48 GMT
VOLUME [/tmp]
# Tue, 08 Jan 2019 23:52:48 GMT
ENTRYPOINT ["/traefik"]
# Tue, 08 Jan 2019 23:52:48 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.7 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:7a433ecdf92bfc5080060a97efa862edf0deca55fcfa76a6a01b911c431695fd`  
		Last Modified: Fri, 14 Dec 2018 18:22:18 GMT  
		Size: 135.0 KB (135043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c63ad623dc38e84c464215edd8c849abd451680b9df80445a204d1745b5364c`  
		Last Modified: Tue, 08 Jan 2019 23:53:14 GMT  
		Size: 19.6 MB (19605376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7` - linux; arm variant v6

```console
$ docker pull traefik@sha256:afcaa9af39bc1e0abf599ea8261e29d3c5c456cba24cfb39a72df2334e72211d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.5 MB (18536407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7304d9d83bff55fd3f490176422727fb7ea54522e141e72866d01d62bf3469b`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 15 Dec 2018 08:49:55 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Wed, 09 Jan 2019 08:57:40 GMT
COPY file:439260d797e62b82ff995d407d9b6df920243417283426dcf00bc125f27cd21c in / 
# Wed, 09 Jan 2019 08:57:41 GMT
EXPOSE 80
# Wed, 09 Jan 2019 08:57:42 GMT
VOLUME [/tmp]
# Wed, 09 Jan 2019 08:57:42 GMT
ENTRYPOINT ["/traefik"]
# Wed, 09 Jan 2019 08:57:42 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.7 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5527833b12791749e5c8242af5e3795dc1e6b2fe58811c452979252cf978fce9`  
		Last Modified: Sat, 15 Dec 2018 08:50:23 GMT  
		Size: 135.0 KB (135038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77de36fc580eb7bf895dc92d63e83b536c708f1c5a6e2782e26fd36e2a569915`  
		Last Modified: Wed, 09 Jan 2019 08:58:13 GMT  
		Size: 18.4 MB (18401369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:57835d3ec954ad58072dce55e778841a40e7aa5d75f10d110e03285bf99709bc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.1 MB (18092705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25f4e98982b27de33fded0e028d55ac09e1c87e0f1b9fa8ed9ea4ac9e52742f2`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 18 Dec 2018 10:37:13 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Wed, 09 Jan 2019 11:45:53 GMT
COPY file:7f5b3eb4282a5c47e5c6ada70ce065a5254fb162b6a8d24eaf89d0dea52fb2d5 in / 
# Wed, 09 Jan 2019 11:45:56 GMT
EXPOSE 80
# Wed, 09 Jan 2019 11:45:57 GMT
VOLUME [/tmp]
# Wed, 09 Jan 2019 11:45:59 GMT
ENTRYPOINT ["/traefik"]
# Wed, 09 Jan 2019 11:46:00 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.7 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:93231411b7777ed5066dad65f929b35b680bfac1ea1fc2ff0c9fb935cc83d75a`  
		Last Modified: Tue, 18 Dec 2018 10:37:58 GMT  
		Size: 135.0 KB (135036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b928aac7083cda762a452dd65ce1b15a7a47bc1103882c7b734d8f282fdfe31`  
		Last Modified: Wed, 09 Jan 2019 11:46:57 GMT  
		Size: 18.0 MB (17957669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7.7`

```console
$ docker pull traefik@sha256:dffc34eb70092fe566380e7ff13ef1fbe6892389306430d4e9427935f2fac21c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.7.7` - linux; amd64

```console
$ docker pull traefik@sha256:b576755c1a42dc2b8ca90a868b7a8647c5a050a2b1fe97dbbdbda75bb48a507a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.7 MB (19740419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5836e9f6c9646af98f931775acf094accb60eb17151c17adc42991fb3080c267`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 14 Dec 2018 18:21:56 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Tue, 08 Jan 2019 23:52:47 GMT
COPY file:23a51aad526bb41d3f6b944f54dd4742f125d1e04aa637f7170d84cd0709aba0 in / 
# Tue, 08 Jan 2019 23:52:47 GMT
EXPOSE 80
# Tue, 08 Jan 2019 23:52:48 GMT
VOLUME [/tmp]
# Tue, 08 Jan 2019 23:52:48 GMT
ENTRYPOINT ["/traefik"]
# Tue, 08 Jan 2019 23:52:48 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.7 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:7a433ecdf92bfc5080060a97efa862edf0deca55fcfa76a6a01b911c431695fd`  
		Last Modified: Fri, 14 Dec 2018 18:22:18 GMT  
		Size: 135.0 KB (135043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c63ad623dc38e84c464215edd8c849abd451680b9df80445a204d1745b5364c`  
		Last Modified: Tue, 08 Jan 2019 23:53:14 GMT  
		Size: 19.6 MB (19605376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7.7` - linux; arm variant v6

```console
$ docker pull traefik@sha256:afcaa9af39bc1e0abf599ea8261e29d3c5c456cba24cfb39a72df2334e72211d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.5 MB (18536407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7304d9d83bff55fd3f490176422727fb7ea54522e141e72866d01d62bf3469b`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 15 Dec 2018 08:49:55 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Wed, 09 Jan 2019 08:57:40 GMT
COPY file:439260d797e62b82ff995d407d9b6df920243417283426dcf00bc125f27cd21c in / 
# Wed, 09 Jan 2019 08:57:41 GMT
EXPOSE 80
# Wed, 09 Jan 2019 08:57:42 GMT
VOLUME [/tmp]
# Wed, 09 Jan 2019 08:57:42 GMT
ENTRYPOINT ["/traefik"]
# Wed, 09 Jan 2019 08:57:42 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.7 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5527833b12791749e5c8242af5e3795dc1e6b2fe58811c452979252cf978fce9`  
		Last Modified: Sat, 15 Dec 2018 08:50:23 GMT  
		Size: 135.0 KB (135038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77de36fc580eb7bf895dc92d63e83b536c708f1c5a6e2782e26fd36e2a569915`  
		Last Modified: Wed, 09 Jan 2019 08:58:13 GMT  
		Size: 18.4 MB (18401369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7.7` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:57835d3ec954ad58072dce55e778841a40e7aa5d75f10d110e03285bf99709bc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.1 MB (18092705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25f4e98982b27de33fded0e028d55ac09e1c87e0f1b9fa8ed9ea4ac9e52742f2`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 18 Dec 2018 10:37:13 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Wed, 09 Jan 2019 11:45:53 GMT
COPY file:7f5b3eb4282a5c47e5c6ada70ce065a5254fb162b6a8d24eaf89d0dea52fb2d5 in / 
# Wed, 09 Jan 2019 11:45:56 GMT
EXPOSE 80
# Wed, 09 Jan 2019 11:45:57 GMT
VOLUME [/tmp]
# Wed, 09 Jan 2019 11:45:59 GMT
ENTRYPOINT ["/traefik"]
# Wed, 09 Jan 2019 11:46:00 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.7 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:93231411b7777ed5066dad65f929b35b680bfac1ea1fc2ff0c9fb935cc83d75a`  
		Last Modified: Tue, 18 Dec 2018 10:37:58 GMT  
		Size: 135.0 KB (135036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b928aac7083cda762a452dd65ce1b15a7a47bc1103882c7b734d8f282fdfe31`  
		Last Modified: Wed, 09 Jan 2019 11:46:57 GMT  
		Size: 18.0 MB (17957669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7.7-alpine`

```console
$ docker pull traefik@sha256:5bfdac060499d6f400f9a8464392d64db34333ce3f219245508e320d3fb200e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.7.7-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:18b9010d897db13626938ae83b9a4e5893a7f238a3f855730368f99b4c009c53
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.1 MB (22121933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8958b0d04475d47aa79c687daf3c384a9aedc9cd7ccfaf8125b7f1626c4805b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 04:53:58 GMT
RUN apk --no-cache add ca-certificates
# Tue, 08 Jan 2019 23:52:58 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.7/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 08 Jan 2019 23:52:58 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Tue, 08 Jan 2019 23:52:59 GMT
EXPOSE 80
# Tue, 08 Jan 2019 23:52:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 08 Jan 2019 23:52:59 GMT
CMD ["traefik"]
# Tue, 08 Jan 2019 23:52:59 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.7 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:50cd2a96573dae37cb6f90347a4ea6a28746f03b35a43b10f74a194b920e4104`  
		Last Modified: Tue, 08 Jan 2019 23:53:24 GMT  
		Size: 19.6 MB (19605420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9b3bbabfe45ac023af782fd938cf2a86ed67752ce9e168677105549976647ed`  
		Last Modified: Tue, 08 Jan 2019 23:53:20 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7.7-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:eb4e143f857c96d10d7226f9df1d3607847a02e023d87725f4ab4e82db8308b3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 MB (20856832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9f3385158594c1abe972fc97c121440bba159162b9a709181ae07516b296f3c`
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
# Wed, 09 Jan 2019 08:57:52 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.7/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 09 Jan 2019 08:57:52 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 09 Jan 2019 08:57:53 GMT
EXPOSE 80
# Wed, 09 Jan 2019 08:57:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 09 Jan 2019 08:57:53 GMT
CMD ["traefik"]
# Wed, 09 Jan 2019 08:57:54 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.7 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:fc3bcc92037368d8f1d56819a18788ea17741fe3f1a25f74b9e9b9f78ff2f35f`  
		Last Modified: Wed, 09 Jan 2019 08:58:30 GMT  
		Size: 18.4 MB (18401326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02eb2e0b727229e23fce225bca3a768423bd2b1e3179b24a0367c9c91e0f88f1`  
		Last Modified: Wed, 09 Jan 2019 08:58:23 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7.7-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:9fc741f6b99526a960967e756cc08428accfc77b5380a55cec30108fcdd2c6f7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.4 MB (20366770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abeb00662aef2c35644640aa73e116f481db8d69d67daa64b5e376b14d8fca51`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 13:43:36 GMT
RUN apk --no-cache add ca-certificates
# Wed, 09 Jan 2019 11:46:24 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.7/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 09 Jan 2019 11:46:26 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 09 Jan 2019 11:46:27 GMT
EXPOSE 80
# Wed, 09 Jan 2019 11:46:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 09 Jan 2019 11:46:28 GMT
CMD ["traefik"]
# Wed, 09 Jan 2019 11:46:29 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.7 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a2b17ded4e203e2a62b383c829dcb8886b0dcb120aed18a8b522e09b42ad404`  
		Last Modified: Fri, 21 Dec 2018 13:44:24 GMT  
		Size: 308.7 KB (308679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37aba876c5adb2dfed079254df8c1b8038a60e0292a734e9e1f484bb88b320db`  
		Last Modified: Wed, 09 Jan 2019 11:47:20 GMT  
		Size: 18.0 MB (17957757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00b036c89e31ca759c210c898cea16f4160841b075795fe43e5afba39a72c453`  
		Last Modified: Wed, 09 Jan 2019 11:47:12 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7.7-nanoserver`

```console
$ docker pull traefik@sha256:fd5bac940e6fa7e61a1e2ab6aa4a2c942d3475f183b37eea834562f343c2e635
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:1.7.7-nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:a5635814a54d7a2bb54993de3b4187750f7bf0fd93be9d321aac016631dd7352
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.0 MB (455010298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e1c1adceed7a2616845b7b2856d3f99ff311d0b49886d1f056e9a8777d23c7a`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Wed, 09 Jan 2019 10:15:10 GMT
RUN cmd /S /C #(nop) COPY file:d34f6774032471ee8fa4cd6a17bd5491d55cca72f0ab205550ae876ebac69724 in \traefik.exe 
# Wed, 09 Jan 2019 10:15:16 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Wed, 09 Jan 2019 10:15:17 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Wed, 09 Jan 2019 10:15:19 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.7 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:8950bebf844fafab1de8168af7f8ecbcdcfedc734699a868bb7d02cd734dd678`  
		Last Modified: Wed, 09 Jan 2019 10:15:44 GMT  
		Size: 19.6 MB (19610651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b44d545ce93906322337bcd38d64d3ca8b596def27a33683ba16d040c6486777`  
		Last Modified: Wed, 09 Jan 2019 10:15:38 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3581cbb7e621618c2dcef9728e732916c9a85e53f3c6b99bd08565edfb289ef5`  
		Last Modified: Wed, 09 Jan 2019 10:15:38 GMT  
		Size: 940.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af6866ddd3af631ab3dba92ea403cb1513f5fff3103bba1fa45d215f6216f761`  
		Last Modified: Wed, 09 Jan 2019 10:15:38 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7.7-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:fd5bac940e6fa7e61a1e2ab6aa4a2c942d3475f183b37eea834562f343c2e635
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:1.7.7-nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:a5635814a54d7a2bb54993de3b4187750f7bf0fd93be9d321aac016631dd7352
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.0 MB (455010298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e1c1adceed7a2616845b7b2856d3f99ff311d0b49886d1f056e9a8777d23c7a`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Wed, 09 Jan 2019 10:15:10 GMT
RUN cmd /S /C #(nop) COPY file:d34f6774032471ee8fa4cd6a17bd5491d55cca72f0ab205550ae876ebac69724 in \traefik.exe 
# Wed, 09 Jan 2019 10:15:16 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Wed, 09 Jan 2019 10:15:17 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Wed, 09 Jan 2019 10:15:19 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.7 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:8950bebf844fafab1de8168af7f8ecbcdcfedc734699a868bb7d02cd734dd678`  
		Last Modified: Wed, 09 Jan 2019 10:15:44 GMT  
		Size: 19.6 MB (19610651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b44d545ce93906322337bcd38d64d3ca8b596def27a33683ba16d040c6486777`  
		Last Modified: Wed, 09 Jan 2019 10:15:38 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3581cbb7e621618c2dcef9728e732916c9a85e53f3c6b99bd08565edfb289ef5`  
		Last Modified: Wed, 09 Jan 2019 10:15:38 GMT  
		Size: 940.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af6866ddd3af631ab3dba92ea403cb1513f5fff3103bba1fa45d215f6216f761`  
		Last Modified: Wed, 09 Jan 2019 10:15:38 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7-alpine`

```console
$ docker pull traefik@sha256:5bfdac060499d6f400f9a8464392d64db34333ce3f219245508e320d3fb200e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.7-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:18b9010d897db13626938ae83b9a4e5893a7f238a3f855730368f99b4c009c53
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.1 MB (22121933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8958b0d04475d47aa79c687daf3c384a9aedc9cd7ccfaf8125b7f1626c4805b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 04:53:58 GMT
RUN apk --no-cache add ca-certificates
# Tue, 08 Jan 2019 23:52:58 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.7/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 08 Jan 2019 23:52:58 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Tue, 08 Jan 2019 23:52:59 GMT
EXPOSE 80
# Tue, 08 Jan 2019 23:52:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 08 Jan 2019 23:52:59 GMT
CMD ["traefik"]
# Tue, 08 Jan 2019 23:52:59 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.7 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:50cd2a96573dae37cb6f90347a4ea6a28746f03b35a43b10f74a194b920e4104`  
		Last Modified: Tue, 08 Jan 2019 23:53:24 GMT  
		Size: 19.6 MB (19605420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9b3bbabfe45ac023af782fd938cf2a86ed67752ce9e168677105549976647ed`  
		Last Modified: Tue, 08 Jan 2019 23:53:20 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:eb4e143f857c96d10d7226f9df1d3607847a02e023d87725f4ab4e82db8308b3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 MB (20856832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9f3385158594c1abe972fc97c121440bba159162b9a709181ae07516b296f3c`
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
# Wed, 09 Jan 2019 08:57:52 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.7/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 09 Jan 2019 08:57:52 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 09 Jan 2019 08:57:53 GMT
EXPOSE 80
# Wed, 09 Jan 2019 08:57:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 09 Jan 2019 08:57:53 GMT
CMD ["traefik"]
# Wed, 09 Jan 2019 08:57:54 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.7 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:fc3bcc92037368d8f1d56819a18788ea17741fe3f1a25f74b9e9b9f78ff2f35f`  
		Last Modified: Wed, 09 Jan 2019 08:58:30 GMT  
		Size: 18.4 MB (18401326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02eb2e0b727229e23fce225bca3a768423bd2b1e3179b24a0367c9c91e0f88f1`  
		Last Modified: Wed, 09 Jan 2019 08:58:23 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:9fc741f6b99526a960967e756cc08428accfc77b5380a55cec30108fcdd2c6f7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.4 MB (20366770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abeb00662aef2c35644640aa73e116f481db8d69d67daa64b5e376b14d8fca51`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 13:43:36 GMT
RUN apk --no-cache add ca-certificates
# Wed, 09 Jan 2019 11:46:24 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.7/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 09 Jan 2019 11:46:26 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 09 Jan 2019 11:46:27 GMT
EXPOSE 80
# Wed, 09 Jan 2019 11:46:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 09 Jan 2019 11:46:28 GMT
CMD ["traefik"]
# Wed, 09 Jan 2019 11:46:29 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.7 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a2b17ded4e203e2a62b383c829dcb8886b0dcb120aed18a8b522e09b42ad404`  
		Last Modified: Fri, 21 Dec 2018 13:44:24 GMT  
		Size: 308.7 KB (308679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37aba876c5adb2dfed079254df8c1b8038a60e0292a734e9e1f484bb88b320db`  
		Last Modified: Wed, 09 Jan 2019 11:47:20 GMT  
		Size: 18.0 MB (17957757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00b036c89e31ca759c210c898cea16f4160841b075795fe43e5afba39a72c453`  
		Last Modified: Wed, 09 Jan 2019 11:47:12 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7-nanoserver`

```console
$ docker pull traefik@sha256:fd5bac940e6fa7e61a1e2ab6aa4a2c942d3475f183b37eea834562f343c2e635
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:1.7-nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:a5635814a54d7a2bb54993de3b4187750f7bf0fd93be9d321aac016631dd7352
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.0 MB (455010298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e1c1adceed7a2616845b7b2856d3f99ff311d0b49886d1f056e9a8777d23c7a`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Wed, 09 Jan 2019 10:15:10 GMT
RUN cmd /S /C #(nop) COPY file:d34f6774032471ee8fa4cd6a17bd5491d55cca72f0ab205550ae876ebac69724 in \traefik.exe 
# Wed, 09 Jan 2019 10:15:16 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Wed, 09 Jan 2019 10:15:17 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Wed, 09 Jan 2019 10:15:19 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.7 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:8950bebf844fafab1de8168af7f8ecbcdcfedc734699a868bb7d02cd734dd678`  
		Last Modified: Wed, 09 Jan 2019 10:15:44 GMT  
		Size: 19.6 MB (19610651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b44d545ce93906322337bcd38d64d3ca8b596def27a33683ba16d040c6486777`  
		Last Modified: Wed, 09 Jan 2019 10:15:38 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3581cbb7e621618c2dcef9728e732916c9a85e53f3c6b99bd08565edfb289ef5`  
		Last Modified: Wed, 09 Jan 2019 10:15:38 GMT  
		Size: 940.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af6866ddd3af631ab3dba92ea403cb1513f5fff3103bba1fa45d215f6216f761`  
		Last Modified: Wed, 09 Jan 2019 10:15:38 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:fd5bac940e6fa7e61a1e2ab6aa4a2c942d3475f183b37eea834562f343c2e635
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:1.7-nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:a5635814a54d7a2bb54993de3b4187750f7bf0fd93be9d321aac016631dd7352
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.0 MB (455010298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e1c1adceed7a2616845b7b2856d3f99ff311d0b49886d1f056e9a8777d23c7a`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Wed, 09 Jan 2019 10:15:10 GMT
RUN cmd /S /C #(nop) COPY file:d34f6774032471ee8fa4cd6a17bd5491d55cca72f0ab205550ae876ebac69724 in \traefik.exe 
# Wed, 09 Jan 2019 10:15:16 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Wed, 09 Jan 2019 10:15:17 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Wed, 09 Jan 2019 10:15:19 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.7 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:8950bebf844fafab1de8168af7f8ecbcdcfedc734699a868bb7d02cd734dd678`  
		Last Modified: Wed, 09 Jan 2019 10:15:44 GMT  
		Size: 19.6 MB (19610651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b44d545ce93906322337bcd38d64d3ca8b596def27a33683ba16d040c6486777`  
		Last Modified: Wed, 09 Jan 2019 10:15:38 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3581cbb7e621618c2dcef9728e732916c9a85e53f3c6b99bd08565edfb289ef5`  
		Last Modified: Wed, 09 Jan 2019 10:15:38 GMT  
		Size: 940.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af6866ddd3af631ab3dba92ea403cb1513f5fff3103bba1fa45d215f6216f761`  
		Last Modified: Wed, 09 Jan 2019 10:15:38 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:alpine`

```console
$ docker pull traefik@sha256:5bfdac060499d6f400f9a8464392d64db34333ce3f219245508e320d3fb200e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:alpine` - linux; amd64

```console
$ docker pull traefik@sha256:18b9010d897db13626938ae83b9a4e5893a7f238a3f855730368f99b4c009c53
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.1 MB (22121933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8958b0d04475d47aa79c687daf3c384a9aedc9cd7ccfaf8125b7f1626c4805b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 04:53:58 GMT
RUN apk --no-cache add ca-certificates
# Tue, 08 Jan 2019 23:52:58 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.7/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 08 Jan 2019 23:52:58 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Tue, 08 Jan 2019 23:52:59 GMT
EXPOSE 80
# Tue, 08 Jan 2019 23:52:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 08 Jan 2019 23:52:59 GMT
CMD ["traefik"]
# Tue, 08 Jan 2019 23:52:59 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.7 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:50cd2a96573dae37cb6f90347a4ea6a28746f03b35a43b10f74a194b920e4104`  
		Last Modified: Tue, 08 Jan 2019 23:53:24 GMT  
		Size: 19.6 MB (19605420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9b3bbabfe45ac023af782fd938cf2a86ed67752ce9e168677105549976647ed`  
		Last Modified: Tue, 08 Jan 2019 23:53:20 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:eb4e143f857c96d10d7226f9df1d3607847a02e023d87725f4ab4e82db8308b3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 MB (20856832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9f3385158594c1abe972fc97c121440bba159162b9a709181ae07516b296f3c`
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
# Wed, 09 Jan 2019 08:57:52 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.7/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 09 Jan 2019 08:57:52 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 09 Jan 2019 08:57:53 GMT
EXPOSE 80
# Wed, 09 Jan 2019 08:57:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 09 Jan 2019 08:57:53 GMT
CMD ["traefik"]
# Wed, 09 Jan 2019 08:57:54 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.7 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:fc3bcc92037368d8f1d56819a18788ea17741fe3f1a25f74b9e9b9f78ff2f35f`  
		Last Modified: Wed, 09 Jan 2019 08:58:30 GMT  
		Size: 18.4 MB (18401326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02eb2e0b727229e23fce225bca3a768423bd2b1e3179b24a0367c9c91e0f88f1`  
		Last Modified: Wed, 09 Jan 2019 08:58:23 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:9fc741f6b99526a960967e756cc08428accfc77b5380a55cec30108fcdd2c6f7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.4 MB (20366770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abeb00662aef2c35644640aa73e116f481db8d69d67daa64b5e376b14d8fca51`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 13:43:36 GMT
RUN apk --no-cache add ca-certificates
# Wed, 09 Jan 2019 11:46:24 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.7/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 09 Jan 2019 11:46:26 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 09 Jan 2019 11:46:27 GMT
EXPOSE 80
# Wed, 09 Jan 2019 11:46:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 09 Jan 2019 11:46:28 GMT
CMD ["traefik"]
# Wed, 09 Jan 2019 11:46:29 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.7 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a2b17ded4e203e2a62b383c829dcb8886b0dcb120aed18a8b522e09b42ad404`  
		Last Modified: Fri, 21 Dec 2018 13:44:24 GMT  
		Size: 308.7 KB (308679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37aba876c5adb2dfed079254df8c1b8038a60e0292a734e9e1f484bb88b320db`  
		Last Modified: Wed, 09 Jan 2019 11:47:20 GMT  
		Size: 18.0 MB (17957757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00b036c89e31ca759c210c898cea16f4160841b075795fe43e5afba39a72c453`  
		Last Modified: Wed, 09 Jan 2019 11:47:12 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:latest`

```console
$ docker pull traefik@sha256:dffc34eb70092fe566380e7ff13ef1fbe6892389306430d4e9427935f2fac21c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:latest` - linux; amd64

```console
$ docker pull traefik@sha256:b576755c1a42dc2b8ca90a868b7a8647c5a050a2b1fe97dbbdbda75bb48a507a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.7 MB (19740419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5836e9f6c9646af98f931775acf094accb60eb17151c17adc42991fb3080c267`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 14 Dec 2018 18:21:56 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Tue, 08 Jan 2019 23:52:47 GMT
COPY file:23a51aad526bb41d3f6b944f54dd4742f125d1e04aa637f7170d84cd0709aba0 in / 
# Tue, 08 Jan 2019 23:52:47 GMT
EXPOSE 80
# Tue, 08 Jan 2019 23:52:48 GMT
VOLUME [/tmp]
# Tue, 08 Jan 2019 23:52:48 GMT
ENTRYPOINT ["/traefik"]
# Tue, 08 Jan 2019 23:52:48 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.7 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:7a433ecdf92bfc5080060a97efa862edf0deca55fcfa76a6a01b911c431695fd`  
		Last Modified: Fri, 14 Dec 2018 18:22:18 GMT  
		Size: 135.0 KB (135043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c63ad623dc38e84c464215edd8c849abd451680b9df80445a204d1745b5364c`  
		Last Modified: Tue, 08 Jan 2019 23:53:14 GMT  
		Size: 19.6 MB (19605376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:latest` - linux; arm variant v6

```console
$ docker pull traefik@sha256:afcaa9af39bc1e0abf599ea8261e29d3c5c456cba24cfb39a72df2334e72211d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.5 MB (18536407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7304d9d83bff55fd3f490176422727fb7ea54522e141e72866d01d62bf3469b`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 15 Dec 2018 08:49:55 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Wed, 09 Jan 2019 08:57:40 GMT
COPY file:439260d797e62b82ff995d407d9b6df920243417283426dcf00bc125f27cd21c in / 
# Wed, 09 Jan 2019 08:57:41 GMT
EXPOSE 80
# Wed, 09 Jan 2019 08:57:42 GMT
VOLUME [/tmp]
# Wed, 09 Jan 2019 08:57:42 GMT
ENTRYPOINT ["/traefik"]
# Wed, 09 Jan 2019 08:57:42 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.7 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5527833b12791749e5c8242af5e3795dc1e6b2fe58811c452979252cf978fce9`  
		Last Modified: Sat, 15 Dec 2018 08:50:23 GMT  
		Size: 135.0 KB (135038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77de36fc580eb7bf895dc92d63e83b536c708f1c5a6e2782e26fd36e2a569915`  
		Last Modified: Wed, 09 Jan 2019 08:58:13 GMT  
		Size: 18.4 MB (18401369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:latest` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:57835d3ec954ad58072dce55e778841a40e7aa5d75f10d110e03285bf99709bc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.1 MB (18092705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25f4e98982b27de33fded0e028d55ac09e1c87e0f1b9fa8ed9ea4ac9e52742f2`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 18 Dec 2018 10:37:13 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Wed, 09 Jan 2019 11:45:53 GMT
COPY file:7f5b3eb4282a5c47e5c6ada70ce065a5254fb162b6a8d24eaf89d0dea52fb2d5 in / 
# Wed, 09 Jan 2019 11:45:56 GMT
EXPOSE 80
# Wed, 09 Jan 2019 11:45:57 GMT
VOLUME [/tmp]
# Wed, 09 Jan 2019 11:45:59 GMT
ENTRYPOINT ["/traefik"]
# Wed, 09 Jan 2019 11:46:00 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.7 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:93231411b7777ed5066dad65f929b35b680bfac1ea1fc2ff0c9fb935cc83d75a`  
		Last Modified: Tue, 18 Dec 2018 10:37:58 GMT  
		Size: 135.0 KB (135036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b928aac7083cda762a452dd65ce1b15a7a47bc1103882c7b734d8f282fdfe31`  
		Last Modified: Wed, 09 Jan 2019 11:46:57 GMT  
		Size: 18.0 MB (17957669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:maroilles`

```console
$ docker pull traefik@sha256:dffc34eb70092fe566380e7ff13ef1fbe6892389306430d4e9427935f2fac21c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:maroilles` - linux; amd64

```console
$ docker pull traefik@sha256:b576755c1a42dc2b8ca90a868b7a8647c5a050a2b1fe97dbbdbda75bb48a507a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.7 MB (19740419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5836e9f6c9646af98f931775acf094accb60eb17151c17adc42991fb3080c267`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 14 Dec 2018 18:21:56 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Tue, 08 Jan 2019 23:52:47 GMT
COPY file:23a51aad526bb41d3f6b944f54dd4742f125d1e04aa637f7170d84cd0709aba0 in / 
# Tue, 08 Jan 2019 23:52:47 GMT
EXPOSE 80
# Tue, 08 Jan 2019 23:52:48 GMT
VOLUME [/tmp]
# Tue, 08 Jan 2019 23:52:48 GMT
ENTRYPOINT ["/traefik"]
# Tue, 08 Jan 2019 23:52:48 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.7 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:7a433ecdf92bfc5080060a97efa862edf0deca55fcfa76a6a01b911c431695fd`  
		Last Modified: Fri, 14 Dec 2018 18:22:18 GMT  
		Size: 135.0 KB (135043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c63ad623dc38e84c464215edd8c849abd451680b9df80445a204d1745b5364c`  
		Last Modified: Tue, 08 Jan 2019 23:53:14 GMT  
		Size: 19.6 MB (19605376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:maroilles` - linux; arm variant v6

```console
$ docker pull traefik@sha256:afcaa9af39bc1e0abf599ea8261e29d3c5c456cba24cfb39a72df2334e72211d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.5 MB (18536407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7304d9d83bff55fd3f490176422727fb7ea54522e141e72866d01d62bf3469b`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 15 Dec 2018 08:49:55 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Wed, 09 Jan 2019 08:57:40 GMT
COPY file:439260d797e62b82ff995d407d9b6df920243417283426dcf00bc125f27cd21c in / 
# Wed, 09 Jan 2019 08:57:41 GMT
EXPOSE 80
# Wed, 09 Jan 2019 08:57:42 GMT
VOLUME [/tmp]
# Wed, 09 Jan 2019 08:57:42 GMT
ENTRYPOINT ["/traefik"]
# Wed, 09 Jan 2019 08:57:42 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.7 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5527833b12791749e5c8242af5e3795dc1e6b2fe58811c452979252cf978fce9`  
		Last Modified: Sat, 15 Dec 2018 08:50:23 GMT  
		Size: 135.0 KB (135038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77de36fc580eb7bf895dc92d63e83b536c708f1c5a6e2782e26fd36e2a569915`  
		Last Modified: Wed, 09 Jan 2019 08:58:13 GMT  
		Size: 18.4 MB (18401369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:maroilles` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:57835d3ec954ad58072dce55e778841a40e7aa5d75f10d110e03285bf99709bc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.1 MB (18092705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25f4e98982b27de33fded0e028d55ac09e1c87e0f1b9fa8ed9ea4ac9e52742f2`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 18 Dec 2018 10:37:13 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Wed, 09 Jan 2019 11:45:53 GMT
COPY file:7f5b3eb4282a5c47e5c6ada70ce065a5254fb162b6a8d24eaf89d0dea52fb2d5 in / 
# Wed, 09 Jan 2019 11:45:56 GMT
EXPOSE 80
# Wed, 09 Jan 2019 11:45:57 GMT
VOLUME [/tmp]
# Wed, 09 Jan 2019 11:45:59 GMT
ENTRYPOINT ["/traefik"]
# Wed, 09 Jan 2019 11:46:00 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.7 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:93231411b7777ed5066dad65f929b35b680bfac1ea1fc2ff0c9fb935cc83d75a`  
		Last Modified: Tue, 18 Dec 2018 10:37:58 GMT  
		Size: 135.0 KB (135036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b928aac7083cda762a452dd65ce1b15a7a47bc1103882c7b734d8f282fdfe31`  
		Last Modified: Wed, 09 Jan 2019 11:46:57 GMT  
		Size: 18.0 MB (17957669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:maroilles-alpine`

```console
$ docker pull traefik@sha256:5bfdac060499d6f400f9a8464392d64db34333ce3f219245508e320d3fb200e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:maroilles-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:18b9010d897db13626938ae83b9a4e5893a7f238a3f855730368f99b4c009c53
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.1 MB (22121933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8958b0d04475d47aa79c687daf3c384a9aedc9cd7ccfaf8125b7f1626c4805b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 04:53:58 GMT
RUN apk --no-cache add ca-certificates
# Tue, 08 Jan 2019 23:52:58 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.7/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 08 Jan 2019 23:52:58 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Tue, 08 Jan 2019 23:52:59 GMT
EXPOSE 80
# Tue, 08 Jan 2019 23:52:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 08 Jan 2019 23:52:59 GMT
CMD ["traefik"]
# Tue, 08 Jan 2019 23:52:59 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.7 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:50cd2a96573dae37cb6f90347a4ea6a28746f03b35a43b10f74a194b920e4104`  
		Last Modified: Tue, 08 Jan 2019 23:53:24 GMT  
		Size: 19.6 MB (19605420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9b3bbabfe45ac023af782fd938cf2a86ed67752ce9e168677105549976647ed`  
		Last Modified: Tue, 08 Jan 2019 23:53:20 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:maroilles-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:eb4e143f857c96d10d7226f9df1d3607847a02e023d87725f4ab4e82db8308b3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 MB (20856832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9f3385158594c1abe972fc97c121440bba159162b9a709181ae07516b296f3c`
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
# Wed, 09 Jan 2019 08:57:52 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.7/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 09 Jan 2019 08:57:52 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 09 Jan 2019 08:57:53 GMT
EXPOSE 80
# Wed, 09 Jan 2019 08:57:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 09 Jan 2019 08:57:53 GMT
CMD ["traefik"]
# Wed, 09 Jan 2019 08:57:54 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.7 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:fc3bcc92037368d8f1d56819a18788ea17741fe3f1a25f74b9e9b9f78ff2f35f`  
		Last Modified: Wed, 09 Jan 2019 08:58:30 GMT  
		Size: 18.4 MB (18401326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02eb2e0b727229e23fce225bca3a768423bd2b1e3179b24a0367c9c91e0f88f1`  
		Last Modified: Wed, 09 Jan 2019 08:58:23 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:maroilles-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:9fc741f6b99526a960967e756cc08428accfc77b5380a55cec30108fcdd2c6f7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.4 MB (20366770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abeb00662aef2c35644640aa73e116f481db8d69d67daa64b5e376b14d8fca51`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 13:43:36 GMT
RUN apk --no-cache add ca-certificates
# Wed, 09 Jan 2019 11:46:24 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.7/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 09 Jan 2019 11:46:26 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 09 Jan 2019 11:46:27 GMT
EXPOSE 80
# Wed, 09 Jan 2019 11:46:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 09 Jan 2019 11:46:28 GMT
CMD ["traefik"]
# Wed, 09 Jan 2019 11:46:29 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.7 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a2b17ded4e203e2a62b383c829dcb8886b0dcb120aed18a8b522e09b42ad404`  
		Last Modified: Fri, 21 Dec 2018 13:44:24 GMT  
		Size: 308.7 KB (308679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37aba876c5adb2dfed079254df8c1b8038a60e0292a734e9e1f484bb88b320db`  
		Last Modified: Wed, 09 Jan 2019 11:47:20 GMT  
		Size: 18.0 MB (17957757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00b036c89e31ca759c210c898cea16f4160841b075795fe43e5afba39a72c453`  
		Last Modified: Wed, 09 Jan 2019 11:47:12 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:maroilles-nanoserver`

```console
$ docker pull traefik@sha256:fd5bac940e6fa7e61a1e2ab6aa4a2c942d3475f183b37eea834562f343c2e635
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:maroilles-nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:a5635814a54d7a2bb54993de3b4187750f7bf0fd93be9d321aac016631dd7352
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.0 MB (455010298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e1c1adceed7a2616845b7b2856d3f99ff311d0b49886d1f056e9a8777d23c7a`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Wed, 09 Jan 2019 10:15:10 GMT
RUN cmd /S /C #(nop) COPY file:d34f6774032471ee8fa4cd6a17bd5491d55cca72f0ab205550ae876ebac69724 in \traefik.exe 
# Wed, 09 Jan 2019 10:15:16 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Wed, 09 Jan 2019 10:15:17 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Wed, 09 Jan 2019 10:15:19 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.7 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:8950bebf844fafab1de8168af7f8ecbcdcfedc734699a868bb7d02cd734dd678`  
		Last Modified: Wed, 09 Jan 2019 10:15:44 GMT  
		Size: 19.6 MB (19610651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b44d545ce93906322337bcd38d64d3ca8b596def27a33683ba16d040c6486777`  
		Last Modified: Wed, 09 Jan 2019 10:15:38 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3581cbb7e621618c2dcef9728e732916c9a85e53f3c6b99bd08565edfb289ef5`  
		Last Modified: Wed, 09 Jan 2019 10:15:38 GMT  
		Size: 940.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af6866ddd3af631ab3dba92ea403cb1513f5fff3103bba1fa45d215f6216f761`  
		Last Modified: Wed, 09 Jan 2019 10:15:38 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:maroilles-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:fd5bac940e6fa7e61a1e2ab6aa4a2c942d3475f183b37eea834562f343c2e635
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:maroilles-nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:a5635814a54d7a2bb54993de3b4187750f7bf0fd93be9d321aac016631dd7352
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.0 MB (455010298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e1c1adceed7a2616845b7b2856d3f99ff311d0b49886d1f056e9a8777d23c7a`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Wed, 09 Jan 2019 10:15:10 GMT
RUN cmd /S /C #(nop) COPY file:d34f6774032471ee8fa4cd6a17bd5491d55cca72f0ab205550ae876ebac69724 in \traefik.exe 
# Wed, 09 Jan 2019 10:15:16 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Wed, 09 Jan 2019 10:15:17 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Wed, 09 Jan 2019 10:15:19 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.7 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:8950bebf844fafab1de8168af7f8ecbcdcfedc734699a868bb7d02cd734dd678`  
		Last Modified: Wed, 09 Jan 2019 10:15:44 GMT  
		Size: 19.6 MB (19610651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b44d545ce93906322337bcd38d64d3ca8b596def27a33683ba16d040c6486777`  
		Last Modified: Wed, 09 Jan 2019 10:15:38 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3581cbb7e621618c2dcef9728e732916c9a85e53f3c6b99bd08565edfb289ef5`  
		Last Modified: Wed, 09 Jan 2019 10:15:38 GMT  
		Size: 940.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af6866ddd3af631ab3dba92ea403cb1513f5fff3103bba1fa45d215f6216f761`  
		Last Modified: Wed, 09 Jan 2019 10:15:38 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:nanoserver`

```console
$ docker pull traefik@sha256:fd5bac940e6fa7e61a1e2ab6aa4a2c942d3475f183b37eea834562f343c2e635
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:a5635814a54d7a2bb54993de3b4187750f7bf0fd93be9d321aac016631dd7352
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.0 MB (455010298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e1c1adceed7a2616845b7b2856d3f99ff311d0b49886d1f056e9a8777d23c7a`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Wed, 09 Jan 2019 10:15:10 GMT
RUN cmd /S /C #(nop) COPY file:d34f6774032471ee8fa4cd6a17bd5491d55cca72f0ab205550ae876ebac69724 in \traefik.exe 
# Wed, 09 Jan 2019 10:15:16 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Wed, 09 Jan 2019 10:15:17 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Wed, 09 Jan 2019 10:15:19 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.7 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:8950bebf844fafab1de8168af7f8ecbcdcfedc734699a868bb7d02cd734dd678`  
		Last Modified: Wed, 09 Jan 2019 10:15:44 GMT  
		Size: 19.6 MB (19610651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b44d545ce93906322337bcd38d64d3ca8b596def27a33683ba16d040c6486777`  
		Last Modified: Wed, 09 Jan 2019 10:15:38 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3581cbb7e621618c2dcef9728e732916c9a85e53f3c6b99bd08565edfb289ef5`  
		Last Modified: Wed, 09 Jan 2019 10:15:38 GMT  
		Size: 940.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af6866ddd3af631ab3dba92ea403cb1513f5fff3103bba1fa45d215f6216f761`  
		Last Modified: Wed, 09 Jan 2019 10:15:38 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:nanoserver-sac2016`

```console
$ docker pull traefik@sha256:fd5bac940e6fa7e61a1e2ab6aa4a2c942d3475f183b37eea834562f343c2e635
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:a5635814a54d7a2bb54993de3b4187750f7bf0fd93be9d321aac016631dd7352
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.0 MB (455010298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e1c1adceed7a2616845b7b2856d3f99ff311d0b49886d1f056e9a8777d23c7a`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Wed, 09 Jan 2019 10:15:10 GMT
RUN cmd /S /C #(nop) COPY file:d34f6774032471ee8fa4cd6a17bd5491d55cca72f0ab205550ae876ebac69724 in \traefik.exe 
# Wed, 09 Jan 2019 10:15:16 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Wed, 09 Jan 2019 10:15:17 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Wed, 09 Jan 2019 10:15:19 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.7 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:8950bebf844fafab1de8168af7f8ecbcdcfedc734699a868bb7d02cd734dd678`  
		Last Modified: Wed, 09 Jan 2019 10:15:44 GMT  
		Size: 19.6 MB (19610651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b44d545ce93906322337bcd38d64d3ca8b596def27a33683ba16d040c6486777`  
		Last Modified: Wed, 09 Jan 2019 10:15:38 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3581cbb7e621618c2dcef9728e732916c9a85e53f3c6b99bd08565edfb289ef5`  
		Last Modified: Wed, 09 Jan 2019 10:15:38 GMT  
		Size: 940.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af6866ddd3af631ab3dba92ea403cb1513f5fff3103bba1fa45d215f6216f761`  
		Last Modified: Wed, 09 Jan 2019 10:15:38 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7`

```console
$ docker pull traefik@sha256:dffc34eb70092fe566380e7ff13ef1fbe6892389306430d4e9427935f2fac21c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.7` - linux; amd64

```console
$ docker pull traefik@sha256:b576755c1a42dc2b8ca90a868b7a8647c5a050a2b1fe97dbbdbda75bb48a507a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.7 MB (19740419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5836e9f6c9646af98f931775acf094accb60eb17151c17adc42991fb3080c267`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 14 Dec 2018 18:21:56 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Tue, 08 Jan 2019 23:52:47 GMT
COPY file:23a51aad526bb41d3f6b944f54dd4742f125d1e04aa637f7170d84cd0709aba0 in / 
# Tue, 08 Jan 2019 23:52:47 GMT
EXPOSE 80
# Tue, 08 Jan 2019 23:52:48 GMT
VOLUME [/tmp]
# Tue, 08 Jan 2019 23:52:48 GMT
ENTRYPOINT ["/traefik"]
# Tue, 08 Jan 2019 23:52:48 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.7 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:7a433ecdf92bfc5080060a97efa862edf0deca55fcfa76a6a01b911c431695fd`  
		Last Modified: Fri, 14 Dec 2018 18:22:18 GMT  
		Size: 135.0 KB (135043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c63ad623dc38e84c464215edd8c849abd451680b9df80445a204d1745b5364c`  
		Last Modified: Tue, 08 Jan 2019 23:53:14 GMT  
		Size: 19.6 MB (19605376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7` - linux; arm variant v6

```console
$ docker pull traefik@sha256:afcaa9af39bc1e0abf599ea8261e29d3c5c456cba24cfb39a72df2334e72211d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.5 MB (18536407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7304d9d83bff55fd3f490176422727fb7ea54522e141e72866d01d62bf3469b`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 15 Dec 2018 08:49:55 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Wed, 09 Jan 2019 08:57:40 GMT
COPY file:439260d797e62b82ff995d407d9b6df920243417283426dcf00bc125f27cd21c in / 
# Wed, 09 Jan 2019 08:57:41 GMT
EXPOSE 80
# Wed, 09 Jan 2019 08:57:42 GMT
VOLUME [/tmp]
# Wed, 09 Jan 2019 08:57:42 GMT
ENTRYPOINT ["/traefik"]
# Wed, 09 Jan 2019 08:57:42 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.7 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5527833b12791749e5c8242af5e3795dc1e6b2fe58811c452979252cf978fce9`  
		Last Modified: Sat, 15 Dec 2018 08:50:23 GMT  
		Size: 135.0 KB (135038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77de36fc580eb7bf895dc92d63e83b536c708f1c5a6e2782e26fd36e2a569915`  
		Last Modified: Wed, 09 Jan 2019 08:58:13 GMT  
		Size: 18.4 MB (18401369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:57835d3ec954ad58072dce55e778841a40e7aa5d75f10d110e03285bf99709bc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.1 MB (18092705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25f4e98982b27de33fded0e028d55ac09e1c87e0f1b9fa8ed9ea4ac9e52742f2`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 18 Dec 2018 10:37:13 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Wed, 09 Jan 2019 11:45:53 GMT
COPY file:7f5b3eb4282a5c47e5c6ada70ce065a5254fb162b6a8d24eaf89d0dea52fb2d5 in / 
# Wed, 09 Jan 2019 11:45:56 GMT
EXPOSE 80
# Wed, 09 Jan 2019 11:45:57 GMT
VOLUME [/tmp]
# Wed, 09 Jan 2019 11:45:59 GMT
ENTRYPOINT ["/traefik"]
# Wed, 09 Jan 2019 11:46:00 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.7 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:93231411b7777ed5066dad65f929b35b680bfac1ea1fc2ff0c9fb935cc83d75a`  
		Last Modified: Tue, 18 Dec 2018 10:37:58 GMT  
		Size: 135.0 KB (135036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b928aac7083cda762a452dd65ce1b15a7a47bc1103882c7b734d8f282fdfe31`  
		Last Modified: Wed, 09 Jan 2019 11:46:57 GMT  
		Size: 18.0 MB (17957669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7.7`

```console
$ docker pull traefik@sha256:dffc34eb70092fe566380e7ff13ef1fbe6892389306430d4e9427935f2fac21c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.7.7` - linux; amd64

```console
$ docker pull traefik@sha256:b576755c1a42dc2b8ca90a868b7a8647c5a050a2b1fe97dbbdbda75bb48a507a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.7 MB (19740419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5836e9f6c9646af98f931775acf094accb60eb17151c17adc42991fb3080c267`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 14 Dec 2018 18:21:56 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Tue, 08 Jan 2019 23:52:47 GMT
COPY file:23a51aad526bb41d3f6b944f54dd4742f125d1e04aa637f7170d84cd0709aba0 in / 
# Tue, 08 Jan 2019 23:52:47 GMT
EXPOSE 80
# Tue, 08 Jan 2019 23:52:48 GMT
VOLUME [/tmp]
# Tue, 08 Jan 2019 23:52:48 GMT
ENTRYPOINT ["/traefik"]
# Tue, 08 Jan 2019 23:52:48 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.7 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:7a433ecdf92bfc5080060a97efa862edf0deca55fcfa76a6a01b911c431695fd`  
		Last Modified: Fri, 14 Dec 2018 18:22:18 GMT  
		Size: 135.0 KB (135043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c63ad623dc38e84c464215edd8c849abd451680b9df80445a204d1745b5364c`  
		Last Modified: Tue, 08 Jan 2019 23:53:14 GMT  
		Size: 19.6 MB (19605376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7.7` - linux; arm variant v6

```console
$ docker pull traefik@sha256:afcaa9af39bc1e0abf599ea8261e29d3c5c456cba24cfb39a72df2334e72211d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.5 MB (18536407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7304d9d83bff55fd3f490176422727fb7ea54522e141e72866d01d62bf3469b`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 15 Dec 2018 08:49:55 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Wed, 09 Jan 2019 08:57:40 GMT
COPY file:439260d797e62b82ff995d407d9b6df920243417283426dcf00bc125f27cd21c in / 
# Wed, 09 Jan 2019 08:57:41 GMT
EXPOSE 80
# Wed, 09 Jan 2019 08:57:42 GMT
VOLUME [/tmp]
# Wed, 09 Jan 2019 08:57:42 GMT
ENTRYPOINT ["/traefik"]
# Wed, 09 Jan 2019 08:57:42 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.7 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5527833b12791749e5c8242af5e3795dc1e6b2fe58811c452979252cf978fce9`  
		Last Modified: Sat, 15 Dec 2018 08:50:23 GMT  
		Size: 135.0 KB (135038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77de36fc580eb7bf895dc92d63e83b536c708f1c5a6e2782e26fd36e2a569915`  
		Last Modified: Wed, 09 Jan 2019 08:58:13 GMT  
		Size: 18.4 MB (18401369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7.7` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:57835d3ec954ad58072dce55e778841a40e7aa5d75f10d110e03285bf99709bc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.1 MB (18092705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25f4e98982b27de33fded0e028d55ac09e1c87e0f1b9fa8ed9ea4ac9e52742f2`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 18 Dec 2018 10:37:13 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Wed, 09 Jan 2019 11:45:53 GMT
COPY file:7f5b3eb4282a5c47e5c6ada70ce065a5254fb162b6a8d24eaf89d0dea52fb2d5 in / 
# Wed, 09 Jan 2019 11:45:56 GMT
EXPOSE 80
# Wed, 09 Jan 2019 11:45:57 GMT
VOLUME [/tmp]
# Wed, 09 Jan 2019 11:45:59 GMT
ENTRYPOINT ["/traefik"]
# Wed, 09 Jan 2019 11:46:00 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.7 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:93231411b7777ed5066dad65f929b35b680bfac1ea1fc2ff0c9fb935cc83d75a`  
		Last Modified: Tue, 18 Dec 2018 10:37:58 GMT  
		Size: 135.0 KB (135036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b928aac7083cda762a452dd65ce1b15a7a47bc1103882c7b734d8f282fdfe31`  
		Last Modified: Wed, 09 Jan 2019 11:46:57 GMT  
		Size: 18.0 MB (17957669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7.7-alpine`

```console
$ docker pull traefik@sha256:5bfdac060499d6f400f9a8464392d64db34333ce3f219245508e320d3fb200e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.7.7-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:18b9010d897db13626938ae83b9a4e5893a7f238a3f855730368f99b4c009c53
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.1 MB (22121933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8958b0d04475d47aa79c687daf3c384a9aedc9cd7ccfaf8125b7f1626c4805b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 04:53:58 GMT
RUN apk --no-cache add ca-certificates
# Tue, 08 Jan 2019 23:52:58 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.7/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 08 Jan 2019 23:52:58 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Tue, 08 Jan 2019 23:52:59 GMT
EXPOSE 80
# Tue, 08 Jan 2019 23:52:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 08 Jan 2019 23:52:59 GMT
CMD ["traefik"]
# Tue, 08 Jan 2019 23:52:59 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.7 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:50cd2a96573dae37cb6f90347a4ea6a28746f03b35a43b10f74a194b920e4104`  
		Last Modified: Tue, 08 Jan 2019 23:53:24 GMT  
		Size: 19.6 MB (19605420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9b3bbabfe45ac023af782fd938cf2a86ed67752ce9e168677105549976647ed`  
		Last Modified: Tue, 08 Jan 2019 23:53:20 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7.7-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:eb4e143f857c96d10d7226f9df1d3607847a02e023d87725f4ab4e82db8308b3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 MB (20856832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9f3385158594c1abe972fc97c121440bba159162b9a709181ae07516b296f3c`
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
# Wed, 09 Jan 2019 08:57:52 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.7/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 09 Jan 2019 08:57:52 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 09 Jan 2019 08:57:53 GMT
EXPOSE 80
# Wed, 09 Jan 2019 08:57:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 09 Jan 2019 08:57:53 GMT
CMD ["traefik"]
# Wed, 09 Jan 2019 08:57:54 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.7 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:fc3bcc92037368d8f1d56819a18788ea17741fe3f1a25f74b9e9b9f78ff2f35f`  
		Last Modified: Wed, 09 Jan 2019 08:58:30 GMT  
		Size: 18.4 MB (18401326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02eb2e0b727229e23fce225bca3a768423bd2b1e3179b24a0367c9c91e0f88f1`  
		Last Modified: Wed, 09 Jan 2019 08:58:23 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7.7-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:9fc741f6b99526a960967e756cc08428accfc77b5380a55cec30108fcdd2c6f7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.4 MB (20366770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abeb00662aef2c35644640aa73e116f481db8d69d67daa64b5e376b14d8fca51`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 13:43:36 GMT
RUN apk --no-cache add ca-certificates
# Wed, 09 Jan 2019 11:46:24 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.7/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 09 Jan 2019 11:46:26 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 09 Jan 2019 11:46:27 GMT
EXPOSE 80
# Wed, 09 Jan 2019 11:46:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 09 Jan 2019 11:46:28 GMT
CMD ["traefik"]
# Wed, 09 Jan 2019 11:46:29 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.7 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a2b17ded4e203e2a62b383c829dcb8886b0dcb120aed18a8b522e09b42ad404`  
		Last Modified: Fri, 21 Dec 2018 13:44:24 GMT  
		Size: 308.7 KB (308679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37aba876c5adb2dfed079254df8c1b8038a60e0292a734e9e1f484bb88b320db`  
		Last Modified: Wed, 09 Jan 2019 11:47:20 GMT  
		Size: 18.0 MB (17957757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00b036c89e31ca759c210c898cea16f4160841b075795fe43e5afba39a72c453`  
		Last Modified: Wed, 09 Jan 2019 11:47:12 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7.7-nanoserver`

```console
$ docker pull traefik@sha256:fd5bac940e6fa7e61a1e2ab6aa4a2c942d3475f183b37eea834562f343c2e635
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:v1.7.7-nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:a5635814a54d7a2bb54993de3b4187750f7bf0fd93be9d321aac016631dd7352
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.0 MB (455010298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e1c1adceed7a2616845b7b2856d3f99ff311d0b49886d1f056e9a8777d23c7a`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Wed, 09 Jan 2019 10:15:10 GMT
RUN cmd /S /C #(nop) COPY file:d34f6774032471ee8fa4cd6a17bd5491d55cca72f0ab205550ae876ebac69724 in \traefik.exe 
# Wed, 09 Jan 2019 10:15:16 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Wed, 09 Jan 2019 10:15:17 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Wed, 09 Jan 2019 10:15:19 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.7 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:8950bebf844fafab1de8168af7f8ecbcdcfedc734699a868bb7d02cd734dd678`  
		Last Modified: Wed, 09 Jan 2019 10:15:44 GMT  
		Size: 19.6 MB (19610651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b44d545ce93906322337bcd38d64d3ca8b596def27a33683ba16d040c6486777`  
		Last Modified: Wed, 09 Jan 2019 10:15:38 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3581cbb7e621618c2dcef9728e732916c9a85e53f3c6b99bd08565edfb289ef5`  
		Last Modified: Wed, 09 Jan 2019 10:15:38 GMT  
		Size: 940.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af6866ddd3af631ab3dba92ea403cb1513f5fff3103bba1fa45d215f6216f761`  
		Last Modified: Wed, 09 Jan 2019 10:15:38 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7.7-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:fd5bac940e6fa7e61a1e2ab6aa4a2c942d3475f183b37eea834562f343c2e635
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:v1.7.7-nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:a5635814a54d7a2bb54993de3b4187750f7bf0fd93be9d321aac016631dd7352
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.0 MB (455010298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e1c1adceed7a2616845b7b2856d3f99ff311d0b49886d1f056e9a8777d23c7a`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Wed, 09 Jan 2019 10:15:10 GMT
RUN cmd /S /C #(nop) COPY file:d34f6774032471ee8fa4cd6a17bd5491d55cca72f0ab205550ae876ebac69724 in \traefik.exe 
# Wed, 09 Jan 2019 10:15:16 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Wed, 09 Jan 2019 10:15:17 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Wed, 09 Jan 2019 10:15:19 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.7 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:8950bebf844fafab1de8168af7f8ecbcdcfedc734699a868bb7d02cd734dd678`  
		Last Modified: Wed, 09 Jan 2019 10:15:44 GMT  
		Size: 19.6 MB (19610651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b44d545ce93906322337bcd38d64d3ca8b596def27a33683ba16d040c6486777`  
		Last Modified: Wed, 09 Jan 2019 10:15:38 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3581cbb7e621618c2dcef9728e732916c9a85e53f3c6b99bd08565edfb289ef5`  
		Last Modified: Wed, 09 Jan 2019 10:15:38 GMT  
		Size: 940.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af6866ddd3af631ab3dba92ea403cb1513f5fff3103bba1fa45d215f6216f761`  
		Last Modified: Wed, 09 Jan 2019 10:15:38 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7-alpine`

```console
$ docker pull traefik@sha256:5bfdac060499d6f400f9a8464392d64db34333ce3f219245508e320d3fb200e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.7-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:18b9010d897db13626938ae83b9a4e5893a7f238a3f855730368f99b4c009c53
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.1 MB (22121933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8958b0d04475d47aa79c687daf3c384a9aedc9cd7ccfaf8125b7f1626c4805b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 04:53:58 GMT
RUN apk --no-cache add ca-certificates
# Tue, 08 Jan 2019 23:52:58 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.7/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 08 Jan 2019 23:52:58 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Tue, 08 Jan 2019 23:52:59 GMT
EXPOSE 80
# Tue, 08 Jan 2019 23:52:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 08 Jan 2019 23:52:59 GMT
CMD ["traefik"]
# Tue, 08 Jan 2019 23:52:59 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.7 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:50cd2a96573dae37cb6f90347a4ea6a28746f03b35a43b10f74a194b920e4104`  
		Last Modified: Tue, 08 Jan 2019 23:53:24 GMT  
		Size: 19.6 MB (19605420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9b3bbabfe45ac023af782fd938cf2a86ed67752ce9e168677105549976647ed`  
		Last Modified: Tue, 08 Jan 2019 23:53:20 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:eb4e143f857c96d10d7226f9df1d3607847a02e023d87725f4ab4e82db8308b3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 MB (20856832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9f3385158594c1abe972fc97c121440bba159162b9a709181ae07516b296f3c`
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
# Wed, 09 Jan 2019 08:57:52 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.7/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 09 Jan 2019 08:57:52 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 09 Jan 2019 08:57:53 GMT
EXPOSE 80
# Wed, 09 Jan 2019 08:57:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 09 Jan 2019 08:57:53 GMT
CMD ["traefik"]
# Wed, 09 Jan 2019 08:57:54 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.7 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:fc3bcc92037368d8f1d56819a18788ea17741fe3f1a25f74b9e9b9f78ff2f35f`  
		Last Modified: Wed, 09 Jan 2019 08:58:30 GMT  
		Size: 18.4 MB (18401326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02eb2e0b727229e23fce225bca3a768423bd2b1e3179b24a0367c9c91e0f88f1`  
		Last Modified: Wed, 09 Jan 2019 08:58:23 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:9fc741f6b99526a960967e756cc08428accfc77b5380a55cec30108fcdd2c6f7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.4 MB (20366770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abeb00662aef2c35644640aa73e116f481db8d69d67daa64b5e376b14d8fca51`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 13:43:36 GMT
RUN apk --no-cache add ca-certificates
# Wed, 09 Jan 2019 11:46:24 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.7/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 09 Jan 2019 11:46:26 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 09 Jan 2019 11:46:27 GMT
EXPOSE 80
# Wed, 09 Jan 2019 11:46:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 09 Jan 2019 11:46:28 GMT
CMD ["traefik"]
# Wed, 09 Jan 2019 11:46:29 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.7 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a2b17ded4e203e2a62b383c829dcb8886b0dcb120aed18a8b522e09b42ad404`  
		Last Modified: Fri, 21 Dec 2018 13:44:24 GMT  
		Size: 308.7 KB (308679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37aba876c5adb2dfed079254df8c1b8038a60e0292a734e9e1f484bb88b320db`  
		Last Modified: Wed, 09 Jan 2019 11:47:20 GMT  
		Size: 18.0 MB (17957757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00b036c89e31ca759c210c898cea16f4160841b075795fe43e5afba39a72c453`  
		Last Modified: Wed, 09 Jan 2019 11:47:12 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7-nanoserver`

```console
$ docker pull traefik@sha256:fd5bac940e6fa7e61a1e2ab6aa4a2c942d3475f183b37eea834562f343c2e635
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:v1.7-nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:a5635814a54d7a2bb54993de3b4187750f7bf0fd93be9d321aac016631dd7352
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.0 MB (455010298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e1c1adceed7a2616845b7b2856d3f99ff311d0b49886d1f056e9a8777d23c7a`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Wed, 09 Jan 2019 10:15:10 GMT
RUN cmd /S /C #(nop) COPY file:d34f6774032471ee8fa4cd6a17bd5491d55cca72f0ab205550ae876ebac69724 in \traefik.exe 
# Wed, 09 Jan 2019 10:15:16 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Wed, 09 Jan 2019 10:15:17 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Wed, 09 Jan 2019 10:15:19 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.7 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:8950bebf844fafab1de8168af7f8ecbcdcfedc734699a868bb7d02cd734dd678`  
		Last Modified: Wed, 09 Jan 2019 10:15:44 GMT  
		Size: 19.6 MB (19610651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b44d545ce93906322337bcd38d64d3ca8b596def27a33683ba16d040c6486777`  
		Last Modified: Wed, 09 Jan 2019 10:15:38 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3581cbb7e621618c2dcef9728e732916c9a85e53f3c6b99bd08565edfb289ef5`  
		Last Modified: Wed, 09 Jan 2019 10:15:38 GMT  
		Size: 940.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af6866ddd3af631ab3dba92ea403cb1513f5fff3103bba1fa45d215f6216f761`  
		Last Modified: Wed, 09 Jan 2019 10:15:38 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:fd5bac940e6fa7e61a1e2ab6aa4a2c942d3475f183b37eea834562f343c2e635
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:v1.7-nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:a5635814a54d7a2bb54993de3b4187750f7bf0fd93be9d321aac016631dd7352
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.0 MB (455010298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e1c1adceed7a2616845b7b2856d3f99ff311d0b49886d1f056e9a8777d23c7a`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Wed, 09 Jan 2019 10:15:10 GMT
RUN cmd /S /C #(nop) COPY file:d34f6774032471ee8fa4cd6a17bd5491d55cca72f0ab205550ae876ebac69724 in \traefik.exe 
# Wed, 09 Jan 2019 10:15:16 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Wed, 09 Jan 2019 10:15:17 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Wed, 09 Jan 2019 10:15:19 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.7 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:8950bebf844fafab1de8168af7f8ecbcdcfedc734699a868bb7d02cd734dd678`  
		Last Modified: Wed, 09 Jan 2019 10:15:44 GMT  
		Size: 19.6 MB (19610651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b44d545ce93906322337bcd38d64d3ca8b596def27a33683ba16d040c6486777`  
		Last Modified: Wed, 09 Jan 2019 10:15:38 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3581cbb7e621618c2dcef9728e732916c9a85e53f3c6b99bd08565edfb289ef5`  
		Last Modified: Wed, 09 Jan 2019 10:15:38 GMT  
		Size: 940.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af6866ddd3af631ab3dba92ea403cb1513f5fff3103bba1fa45d215f6216f761`  
		Last Modified: Wed, 09 Jan 2019 10:15:38 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
