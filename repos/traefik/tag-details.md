<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `traefik`

-	[`traefik:1.7`](#traefik17)
-	[`traefik:1.7.8`](#traefik178)
-	[`traefik:1.7.8-alpine`](#traefik178-alpine)
-	[`traefik:1.7.8-nanoserver`](#traefik178-nanoserver)
-	[`traefik:1.7.8-nanoserver-sac2016`](#traefik178-nanoserver-sac2016)
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
-	[`traefik:v1.7.8`](#traefikv178)
-	[`traefik:v1.7.8-alpine`](#traefikv178-alpine)
-	[`traefik:v1.7.8-nanoserver`](#traefikv178-nanoserver)
-	[`traefik:v1.7.8-nanoserver-sac2016`](#traefikv178-nanoserver-sac2016)
-	[`traefik:v1.7-alpine`](#traefikv17-alpine)
-	[`traefik:v1.7-nanoserver`](#traefikv17-nanoserver)
-	[`traefik:v1.7-nanoserver-sac2016`](#traefikv17-nanoserver-sac2016)

## `traefik:1.7`

```console
$ docker pull traefik@sha256:79a9b27986068895c5deb438099fbd3072ed645cdcabc72af24e229f868c4cf2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.7` - linux; amd64

```console
$ docker pull traefik@sha256:06d0760286000a3dc0c27ea2ad63c99801b7b8e1698d022299e0fd301f79919a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.7 MB (19745881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d16ca31c674f0ba0e41a03f2e6856542468818a30eea44e198f237fd6acc40db`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 14 Dec 2018 18:21:56 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Tue, 29 Jan 2019 22:20:49 GMT
COPY file:3fd4ec8c6e7da5198af7aa439dd6bb38d010ccfdd83ac2fac4732802d87e6760 in / 
# Tue, 29 Jan 2019 22:20:49 GMT
EXPOSE 80
# Tue, 29 Jan 2019 22:20:50 GMT
VOLUME [/tmp]
# Tue, 29 Jan 2019 22:20:50 GMT
ENTRYPOINT ["/traefik"]
# Tue, 29 Jan 2019 22:20:50 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.8 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:7a433ecdf92bfc5080060a97efa862edf0deca55fcfa76a6a01b911c431695fd`  
		Last Modified: Fri, 14 Dec 2018 18:22:18 GMT  
		Size: 135.0 KB (135043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24cee597890351be642b7f154fdb6302cf584a02c101b402d83fb09107cec319`  
		Last Modified: Tue, 29 Jan 2019 22:21:12 GMT  
		Size: 19.6 MB (19610838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7` - linux; arm variant v6

```console
$ docker pull traefik@sha256:6b3d0436558cce7241e1860dab2b17f7a5e84ef6e8430be148c58d08d5a0202f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18550408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ded4319c31103d91429c4c85d2934b8d2ac111822371b24ca6ab9451a3eff3c`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 15 Dec 2018 08:49:55 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Wed, 30 Jan 2019 09:02:45 GMT
COPY file:02b0d578d66143ec04017a27858fa769cdf4cc8bfab653c80031b85bf0ae7e27 in / 
# Wed, 30 Jan 2019 09:02:46 GMT
EXPOSE 80
# Wed, 30 Jan 2019 09:02:46 GMT
VOLUME [/tmp]
# Wed, 30 Jan 2019 09:02:46 GMT
ENTRYPOINT ["/traefik"]
# Wed, 30 Jan 2019 09:02:47 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.8 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5527833b12791749e5c8242af5e3795dc1e6b2fe58811c452979252cf978fce9`  
		Last Modified: Sat, 15 Dec 2018 08:50:23 GMT  
		Size: 135.0 KB (135038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0c8bb2d3bac660d7ffd06fc27f9d8d5f42b10edbf1d2b0f0c836e91984c59a4`  
		Last Modified: Wed, 30 Jan 2019 09:03:20 GMT  
		Size: 18.4 MB (18415370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:4af83948be1f5631212ae67c329a01ef68e07eaf264868e77679705b4961ca47
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.1 MB (18107047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56bc2797e58fab66c2face4d8363f261ace53f8996a30145c15de9c98f06435e`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 18 Dec 2018 10:37:13 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Wed, 30 Jan 2019 10:55:18 GMT
COPY file:9114873939479e1f73f172733f33ef1665a1c682f58ed7f4b2742138edf124bd in / 
# Wed, 30 Jan 2019 10:55:18 GMT
EXPOSE 80
# Wed, 30 Jan 2019 10:55:19 GMT
VOLUME [/tmp]
# Wed, 30 Jan 2019 10:55:20 GMT
ENTRYPOINT ["/traefik"]
# Wed, 30 Jan 2019 10:55:20 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.8 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:93231411b7777ed5066dad65f929b35b680bfac1ea1fc2ff0c9fb935cc83d75a`  
		Last Modified: Tue, 18 Dec 2018 10:37:58 GMT  
		Size: 135.0 KB (135036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6ba36d286ee82175e3279001644c9cf686aa25659147d7b879920a478ae9f37`  
		Last Modified: Wed, 30 Jan 2019 10:56:10 GMT  
		Size: 18.0 MB (17972011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7.8`

```console
$ docker pull traefik@sha256:79a9b27986068895c5deb438099fbd3072ed645cdcabc72af24e229f868c4cf2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.7.8` - linux; amd64

```console
$ docker pull traefik@sha256:06d0760286000a3dc0c27ea2ad63c99801b7b8e1698d022299e0fd301f79919a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.7 MB (19745881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d16ca31c674f0ba0e41a03f2e6856542468818a30eea44e198f237fd6acc40db`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 14 Dec 2018 18:21:56 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Tue, 29 Jan 2019 22:20:49 GMT
COPY file:3fd4ec8c6e7da5198af7aa439dd6bb38d010ccfdd83ac2fac4732802d87e6760 in / 
# Tue, 29 Jan 2019 22:20:49 GMT
EXPOSE 80
# Tue, 29 Jan 2019 22:20:50 GMT
VOLUME [/tmp]
# Tue, 29 Jan 2019 22:20:50 GMT
ENTRYPOINT ["/traefik"]
# Tue, 29 Jan 2019 22:20:50 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.8 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:7a433ecdf92bfc5080060a97efa862edf0deca55fcfa76a6a01b911c431695fd`  
		Last Modified: Fri, 14 Dec 2018 18:22:18 GMT  
		Size: 135.0 KB (135043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24cee597890351be642b7f154fdb6302cf584a02c101b402d83fb09107cec319`  
		Last Modified: Tue, 29 Jan 2019 22:21:12 GMT  
		Size: 19.6 MB (19610838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7.8` - linux; arm variant v6

```console
$ docker pull traefik@sha256:6b3d0436558cce7241e1860dab2b17f7a5e84ef6e8430be148c58d08d5a0202f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18550408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ded4319c31103d91429c4c85d2934b8d2ac111822371b24ca6ab9451a3eff3c`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 15 Dec 2018 08:49:55 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Wed, 30 Jan 2019 09:02:45 GMT
COPY file:02b0d578d66143ec04017a27858fa769cdf4cc8bfab653c80031b85bf0ae7e27 in / 
# Wed, 30 Jan 2019 09:02:46 GMT
EXPOSE 80
# Wed, 30 Jan 2019 09:02:46 GMT
VOLUME [/tmp]
# Wed, 30 Jan 2019 09:02:46 GMT
ENTRYPOINT ["/traefik"]
# Wed, 30 Jan 2019 09:02:47 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.8 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5527833b12791749e5c8242af5e3795dc1e6b2fe58811c452979252cf978fce9`  
		Last Modified: Sat, 15 Dec 2018 08:50:23 GMT  
		Size: 135.0 KB (135038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0c8bb2d3bac660d7ffd06fc27f9d8d5f42b10edbf1d2b0f0c836e91984c59a4`  
		Last Modified: Wed, 30 Jan 2019 09:03:20 GMT  
		Size: 18.4 MB (18415370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7.8` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:4af83948be1f5631212ae67c329a01ef68e07eaf264868e77679705b4961ca47
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.1 MB (18107047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56bc2797e58fab66c2face4d8363f261ace53f8996a30145c15de9c98f06435e`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 18 Dec 2018 10:37:13 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Wed, 30 Jan 2019 10:55:18 GMT
COPY file:9114873939479e1f73f172733f33ef1665a1c682f58ed7f4b2742138edf124bd in / 
# Wed, 30 Jan 2019 10:55:18 GMT
EXPOSE 80
# Wed, 30 Jan 2019 10:55:19 GMT
VOLUME [/tmp]
# Wed, 30 Jan 2019 10:55:20 GMT
ENTRYPOINT ["/traefik"]
# Wed, 30 Jan 2019 10:55:20 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.8 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:93231411b7777ed5066dad65f929b35b680bfac1ea1fc2ff0c9fb935cc83d75a`  
		Last Modified: Tue, 18 Dec 2018 10:37:58 GMT  
		Size: 135.0 KB (135036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6ba36d286ee82175e3279001644c9cf686aa25659147d7b879920a478ae9f37`  
		Last Modified: Wed, 30 Jan 2019 10:56:10 GMT  
		Size: 18.0 MB (17972011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7.8-alpine`

```console
$ docker pull traefik@sha256:cefbe749e5cdb82b681aa4dc2410889eec5b13e90a87c1ad4ee59d149f0394e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.7.8-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:25352654e13c39c16da77d760cce6cf637b7a28304a64ec38607b2c8668ac408
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.1 MB (22127439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49549b1de79f49791fe9f9a24a22d1e3b81a86373322657e1b0a172af6e5bb3e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 04:53:58 GMT
RUN apk --no-cache add ca-certificates
# Tue, 29 Jan 2019 22:20:58 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.8/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 29 Jan 2019 22:20:58 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Tue, 29 Jan 2019 22:20:58 GMT
EXPOSE 80
# Tue, 29 Jan 2019 22:20:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 29 Jan 2019 22:20:58 GMT
CMD ["traefik"]
# Tue, 29 Jan 2019 22:20:58 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.8 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:e76466c193c5ded69bb0c4af6430106bd3877f4fcb4e00c156d06fbc6289d584`  
		Last Modified: Tue, 29 Jan 2019 22:21:23 GMT  
		Size: 19.6 MB (19610928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94d1244f6fa5826679e3595be6a20ac510e61d68926e3a468401fd4d6c1f2d93`  
		Last Modified: Tue, 29 Jan 2019 22:21:18 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7.8-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:a66ee4228378934c64af840dff577682e98f90289829932011cc972631a0ddd9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 MB (20871072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f785fea382cee7a3df06595b8b8f4883fe42ff8786592b7b107f8984766dd71`
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
# Wed, 30 Jan 2019 09:02:58 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.8/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 30 Jan 2019 09:02:59 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 30 Jan 2019 09:02:59 GMT
EXPOSE 80
# Wed, 30 Jan 2019 09:02:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 30 Jan 2019 09:03:00 GMT
CMD ["traefik"]
# Wed, 30 Jan 2019 09:03:00 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.8 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:14598f513b839471e6d882af09ef6ba48dafa54c2f2f7d75907771105fe17b85`  
		Last Modified: Wed, 30 Jan 2019 09:03:37 GMT  
		Size: 18.4 MB (18415566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e23fa311876639d4a2637c54650c7a621c2b0e47c503356865328ca68cbb44`  
		Last Modified: Wed, 30 Jan 2019 09:03:30 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7.8-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:e6982d995eb7739917b704b9bec357969bcbf5b16f8f9b04d6147444cf091416
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.4 MB (20381062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a73b08b0805c4c36ee065388db1bebbf540e929def55688105d7bbfb31f241a7`
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
# Wed, 30 Jan 2019 10:55:38 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.8/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 30 Jan 2019 10:55:39 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 30 Jan 2019 10:55:39 GMT
EXPOSE 80
# Wed, 30 Jan 2019 10:55:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 30 Jan 2019 10:55:40 GMT
CMD ["traefik"]
# Wed, 30 Jan 2019 10:55:42 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.8 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:d22bb59f46bcf8f73c997b2013b8ee43e41aabda8b12fc63780adc03d49aa2f3`  
		Last Modified: Wed, 30 Jan 2019 10:56:33 GMT  
		Size: 18.0 MB (17972047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd0821180a005eaa0a51bf991b774abfa10dd8a3bd5aaf5968377ca79e2cb50d`  
		Last Modified: Wed, 30 Jan 2019 10:56:25 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7.8-nanoserver`

```console
$ docker pull traefik@sha256:e438ba45ede866c4f300a41afe728c49b74579d4c0063e5144373526135f30d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:1.7.8-nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:2c3ce9bbfd3cc1e6489e0cae0c46ed6543914ac8f08762c1d34be9866c6224c4
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.0 MB (455018858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:758d483a87536bd8bbcd784d9e90d2bc780bc6f99dc063f7aa1604e43717acf6`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Wed, 30 Jan 2019 10:15:08 GMT
RUN cmd /S /C #(nop) COPY file:002a6821d280a323184edc6749041fb992796e93ab16e626ce660fd362bb1335 in \traefik.exe 
# Wed, 30 Jan 2019 10:15:13 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Wed, 30 Jan 2019 10:15:14 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Wed, 30 Jan 2019 10:15:15 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.8 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:a7474d58cbd98c13e22fec68746783aa77ec24d0798be886b43e2fd4fd9a9966`  
		Last Modified: Wed, 30 Jan 2019 10:15:38 GMT  
		Size: 19.6 MB (19619190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c2e4f73dcd273b531a92fa4e95715592a51c99cfa9e81f36500d81d92be3962`  
		Last Modified: Wed, 30 Jan 2019 10:15:33 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bc8d15d9b36fd1b2fe1ed5f648f9708f424bbc3a07845f9609e1d235b3242d5`  
		Last Modified: Wed, 30 Jan 2019 10:15:33 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0db7939fa2c193a399423987e891e6e6bf051a5316677bb5b83f6b1b306ce1cc`  
		Last Modified: Wed, 30 Jan 2019 10:15:33 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7.8-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:e438ba45ede866c4f300a41afe728c49b74579d4c0063e5144373526135f30d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:1.7.8-nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:2c3ce9bbfd3cc1e6489e0cae0c46ed6543914ac8f08762c1d34be9866c6224c4
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.0 MB (455018858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:758d483a87536bd8bbcd784d9e90d2bc780bc6f99dc063f7aa1604e43717acf6`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Wed, 30 Jan 2019 10:15:08 GMT
RUN cmd /S /C #(nop) COPY file:002a6821d280a323184edc6749041fb992796e93ab16e626ce660fd362bb1335 in \traefik.exe 
# Wed, 30 Jan 2019 10:15:13 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Wed, 30 Jan 2019 10:15:14 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Wed, 30 Jan 2019 10:15:15 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.8 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:a7474d58cbd98c13e22fec68746783aa77ec24d0798be886b43e2fd4fd9a9966`  
		Last Modified: Wed, 30 Jan 2019 10:15:38 GMT  
		Size: 19.6 MB (19619190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c2e4f73dcd273b531a92fa4e95715592a51c99cfa9e81f36500d81d92be3962`  
		Last Modified: Wed, 30 Jan 2019 10:15:33 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bc8d15d9b36fd1b2fe1ed5f648f9708f424bbc3a07845f9609e1d235b3242d5`  
		Last Modified: Wed, 30 Jan 2019 10:15:33 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0db7939fa2c193a399423987e891e6e6bf051a5316677bb5b83f6b1b306ce1cc`  
		Last Modified: Wed, 30 Jan 2019 10:15:33 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7-alpine`

```console
$ docker pull traefik@sha256:cefbe749e5cdb82b681aa4dc2410889eec5b13e90a87c1ad4ee59d149f0394e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.7-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:25352654e13c39c16da77d760cce6cf637b7a28304a64ec38607b2c8668ac408
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.1 MB (22127439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49549b1de79f49791fe9f9a24a22d1e3b81a86373322657e1b0a172af6e5bb3e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 04:53:58 GMT
RUN apk --no-cache add ca-certificates
# Tue, 29 Jan 2019 22:20:58 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.8/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 29 Jan 2019 22:20:58 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Tue, 29 Jan 2019 22:20:58 GMT
EXPOSE 80
# Tue, 29 Jan 2019 22:20:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 29 Jan 2019 22:20:58 GMT
CMD ["traefik"]
# Tue, 29 Jan 2019 22:20:58 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.8 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:e76466c193c5ded69bb0c4af6430106bd3877f4fcb4e00c156d06fbc6289d584`  
		Last Modified: Tue, 29 Jan 2019 22:21:23 GMT  
		Size: 19.6 MB (19610928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94d1244f6fa5826679e3595be6a20ac510e61d68926e3a468401fd4d6c1f2d93`  
		Last Modified: Tue, 29 Jan 2019 22:21:18 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:a66ee4228378934c64af840dff577682e98f90289829932011cc972631a0ddd9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 MB (20871072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f785fea382cee7a3df06595b8b8f4883fe42ff8786592b7b107f8984766dd71`
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
# Wed, 30 Jan 2019 09:02:58 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.8/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 30 Jan 2019 09:02:59 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 30 Jan 2019 09:02:59 GMT
EXPOSE 80
# Wed, 30 Jan 2019 09:02:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 30 Jan 2019 09:03:00 GMT
CMD ["traefik"]
# Wed, 30 Jan 2019 09:03:00 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.8 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:14598f513b839471e6d882af09ef6ba48dafa54c2f2f7d75907771105fe17b85`  
		Last Modified: Wed, 30 Jan 2019 09:03:37 GMT  
		Size: 18.4 MB (18415566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e23fa311876639d4a2637c54650c7a621c2b0e47c503356865328ca68cbb44`  
		Last Modified: Wed, 30 Jan 2019 09:03:30 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:e6982d995eb7739917b704b9bec357969bcbf5b16f8f9b04d6147444cf091416
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.4 MB (20381062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a73b08b0805c4c36ee065388db1bebbf540e929def55688105d7bbfb31f241a7`
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
# Wed, 30 Jan 2019 10:55:38 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.8/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 30 Jan 2019 10:55:39 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 30 Jan 2019 10:55:39 GMT
EXPOSE 80
# Wed, 30 Jan 2019 10:55:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 30 Jan 2019 10:55:40 GMT
CMD ["traefik"]
# Wed, 30 Jan 2019 10:55:42 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.8 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:d22bb59f46bcf8f73c997b2013b8ee43e41aabda8b12fc63780adc03d49aa2f3`  
		Last Modified: Wed, 30 Jan 2019 10:56:33 GMT  
		Size: 18.0 MB (17972047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd0821180a005eaa0a51bf991b774abfa10dd8a3bd5aaf5968377ca79e2cb50d`  
		Last Modified: Wed, 30 Jan 2019 10:56:25 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7-nanoserver`

```console
$ docker pull traefik@sha256:e438ba45ede866c4f300a41afe728c49b74579d4c0063e5144373526135f30d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:1.7-nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:2c3ce9bbfd3cc1e6489e0cae0c46ed6543914ac8f08762c1d34be9866c6224c4
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.0 MB (455018858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:758d483a87536bd8bbcd784d9e90d2bc780bc6f99dc063f7aa1604e43717acf6`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Wed, 30 Jan 2019 10:15:08 GMT
RUN cmd /S /C #(nop) COPY file:002a6821d280a323184edc6749041fb992796e93ab16e626ce660fd362bb1335 in \traefik.exe 
# Wed, 30 Jan 2019 10:15:13 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Wed, 30 Jan 2019 10:15:14 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Wed, 30 Jan 2019 10:15:15 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.8 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:a7474d58cbd98c13e22fec68746783aa77ec24d0798be886b43e2fd4fd9a9966`  
		Last Modified: Wed, 30 Jan 2019 10:15:38 GMT  
		Size: 19.6 MB (19619190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c2e4f73dcd273b531a92fa4e95715592a51c99cfa9e81f36500d81d92be3962`  
		Last Modified: Wed, 30 Jan 2019 10:15:33 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bc8d15d9b36fd1b2fe1ed5f648f9708f424bbc3a07845f9609e1d235b3242d5`  
		Last Modified: Wed, 30 Jan 2019 10:15:33 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0db7939fa2c193a399423987e891e6e6bf051a5316677bb5b83f6b1b306ce1cc`  
		Last Modified: Wed, 30 Jan 2019 10:15:33 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:e438ba45ede866c4f300a41afe728c49b74579d4c0063e5144373526135f30d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:1.7-nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:2c3ce9bbfd3cc1e6489e0cae0c46ed6543914ac8f08762c1d34be9866c6224c4
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.0 MB (455018858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:758d483a87536bd8bbcd784d9e90d2bc780bc6f99dc063f7aa1604e43717acf6`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Wed, 30 Jan 2019 10:15:08 GMT
RUN cmd /S /C #(nop) COPY file:002a6821d280a323184edc6749041fb992796e93ab16e626ce660fd362bb1335 in \traefik.exe 
# Wed, 30 Jan 2019 10:15:13 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Wed, 30 Jan 2019 10:15:14 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Wed, 30 Jan 2019 10:15:15 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.8 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:a7474d58cbd98c13e22fec68746783aa77ec24d0798be886b43e2fd4fd9a9966`  
		Last Modified: Wed, 30 Jan 2019 10:15:38 GMT  
		Size: 19.6 MB (19619190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c2e4f73dcd273b531a92fa4e95715592a51c99cfa9e81f36500d81d92be3962`  
		Last Modified: Wed, 30 Jan 2019 10:15:33 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bc8d15d9b36fd1b2fe1ed5f648f9708f424bbc3a07845f9609e1d235b3242d5`  
		Last Modified: Wed, 30 Jan 2019 10:15:33 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0db7939fa2c193a399423987e891e6e6bf051a5316677bb5b83f6b1b306ce1cc`  
		Last Modified: Wed, 30 Jan 2019 10:15:33 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:alpine`

```console
$ docker pull traefik@sha256:cefbe749e5cdb82b681aa4dc2410889eec5b13e90a87c1ad4ee59d149f0394e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:alpine` - linux; amd64

```console
$ docker pull traefik@sha256:25352654e13c39c16da77d760cce6cf637b7a28304a64ec38607b2c8668ac408
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.1 MB (22127439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49549b1de79f49791fe9f9a24a22d1e3b81a86373322657e1b0a172af6e5bb3e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 04:53:58 GMT
RUN apk --no-cache add ca-certificates
# Tue, 29 Jan 2019 22:20:58 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.8/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 29 Jan 2019 22:20:58 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Tue, 29 Jan 2019 22:20:58 GMT
EXPOSE 80
# Tue, 29 Jan 2019 22:20:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 29 Jan 2019 22:20:58 GMT
CMD ["traefik"]
# Tue, 29 Jan 2019 22:20:58 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.8 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:e76466c193c5ded69bb0c4af6430106bd3877f4fcb4e00c156d06fbc6289d584`  
		Last Modified: Tue, 29 Jan 2019 22:21:23 GMT  
		Size: 19.6 MB (19610928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94d1244f6fa5826679e3595be6a20ac510e61d68926e3a468401fd4d6c1f2d93`  
		Last Modified: Tue, 29 Jan 2019 22:21:18 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:a66ee4228378934c64af840dff577682e98f90289829932011cc972631a0ddd9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 MB (20871072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f785fea382cee7a3df06595b8b8f4883fe42ff8786592b7b107f8984766dd71`
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
# Wed, 30 Jan 2019 09:02:58 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.8/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 30 Jan 2019 09:02:59 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 30 Jan 2019 09:02:59 GMT
EXPOSE 80
# Wed, 30 Jan 2019 09:02:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 30 Jan 2019 09:03:00 GMT
CMD ["traefik"]
# Wed, 30 Jan 2019 09:03:00 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.8 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:14598f513b839471e6d882af09ef6ba48dafa54c2f2f7d75907771105fe17b85`  
		Last Modified: Wed, 30 Jan 2019 09:03:37 GMT  
		Size: 18.4 MB (18415566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e23fa311876639d4a2637c54650c7a621c2b0e47c503356865328ca68cbb44`  
		Last Modified: Wed, 30 Jan 2019 09:03:30 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:e6982d995eb7739917b704b9bec357969bcbf5b16f8f9b04d6147444cf091416
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.4 MB (20381062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a73b08b0805c4c36ee065388db1bebbf540e929def55688105d7bbfb31f241a7`
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
# Wed, 30 Jan 2019 10:55:38 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.8/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 30 Jan 2019 10:55:39 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 30 Jan 2019 10:55:39 GMT
EXPOSE 80
# Wed, 30 Jan 2019 10:55:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 30 Jan 2019 10:55:40 GMT
CMD ["traefik"]
# Wed, 30 Jan 2019 10:55:42 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.8 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:d22bb59f46bcf8f73c997b2013b8ee43e41aabda8b12fc63780adc03d49aa2f3`  
		Last Modified: Wed, 30 Jan 2019 10:56:33 GMT  
		Size: 18.0 MB (17972047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd0821180a005eaa0a51bf991b774abfa10dd8a3bd5aaf5968377ca79e2cb50d`  
		Last Modified: Wed, 30 Jan 2019 10:56:25 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:latest`

```console
$ docker pull traefik@sha256:1d8902e6b57f904e8b0d3972a24668bfbb2d726a852aeed960e889c7ea8cead9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:latest` - linux; amd64

```console
$ docker pull traefik@sha256:06d0760286000a3dc0c27ea2ad63c99801b7b8e1698d022299e0fd301f79919a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.7 MB (19745881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d16ca31c674f0ba0e41a03f2e6856542468818a30eea44e198f237fd6acc40db`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 14 Dec 2018 18:21:56 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Tue, 29 Jan 2019 22:20:49 GMT
COPY file:3fd4ec8c6e7da5198af7aa439dd6bb38d010ccfdd83ac2fac4732802d87e6760 in / 
# Tue, 29 Jan 2019 22:20:49 GMT
EXPOSE 80
# Tue, 29 Jan 2019 22:20:50 GMT
VOLUME [/tmp]
# Tue, 29 Jan 2019 22:20:50 GMT
ENTRYPOINT ["/traefik"]
# Tue, 29 Jan 2019 22:20:50 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.8 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:7a433ecdf92bfc5080060a97efa862edf0deca55fcfa76a6a01b911c431695fd`  
		Last Modified: Fri, 14 Dec 2018 18:22:18 GMT  
		Size: 135.0 KB (135043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24cee597890351be642b7f154fdb6302cf584a02c101b402d83fb09107cec319`  
		Last Modified: Tue, 29 Jan 2019 22:21:12 GMT  
		Size: 19.6 MB (19610838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:latest` - linux; arm variant v6

```console
$ docker pull traefik@sha256:6b3d0436558cce7241e1860dab2b17f7a5e84ef6e8430be148c58d08d5a0202f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18550408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ded4319c31103d91429c4c85d2934b8d2ac111822371b24ca6ab9451a3eff3c`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 15 Dec 2018 08:49:55 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Wed, 30 Jan 2019 09:02:45 GMT
COPY file:02b0d578d66143ec04017a27858fa769cdf4cc8bfab653c80031b85bf0ae7e27 in / 
# Wed, 30 Jan 2019 09:02:46 GMT
EXPOSE 80
# Wed, 30 Jan 2019 09:02:46 GMT
VOLUME [/tmp]
# Wed, 30 Jan 2019 09:02:46 GMT
ENTRYPOINT ["/traefik"]
# Wed, 30 Jan 2019 09:02:47 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.8 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5527833b12791749e5c8242af5e3795dc1e6b2fe58811c452979252cf978fce9`  
		Last Modified: Sat, 15 Dec 2018 08:50:23 GMT  
		Size: 135.0 KB (135038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0c8bb2d3bac660d7ffd06fc27f9d8d5f42b10edbf1d2b0f0c836e91984c59a4`  
		Last Modified: Wed, 30 Jan 2019 09:03:20 GMT  
		Size: 18.4 MB (18415370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:maroilles`

```console
$ docker pull traefik@sha256:79a9b27986068895c5deb438099fbd3072ed645cdcabc72af24e229f868c4cf2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:maroilles` - linux; amd64

```console
$ docker pull traefik@sha256:06d0760286000a3dc0c27ea2ad63c99801b7b8e1698d022299e0fd301f79919a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.7 MB (19745881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d16ca31c674f0ba0e41a03f2e6856542468818a30eea44e198f237fd6acc40db`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 14 Dec 2018 18:21:56 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Tue, 29 Jan 2019 22:20:49 GMT
COPY file:3fd4ec8c6e7da5198af7aa439dd6bb38d010ccfdd83ac2fac4732802d87e6760 in / 
# Tue, 29 Jan 2019 22:20:49 GMT
EXPOSE 80
# Tue, 29 Jan 2019 22:20:50 GMT
VOLUME [/tmp]
# Tue, 29 Jan 2019 22:20:50 GMT
ENTRYPOINT ["/traefik"]
# Tue, 29 Jan 2019 22:20:50 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.8 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:7a433ecdf92bfc5080060a97efa862edf0deca55fcfa76a6a01b911c431695fd`  
		Last Modified: Fri, 14 Dec 2018 18:22:18 GMT  
		Size: 135.0 KB (135043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24cee597890351be642b7f154fdb6302cf584a02c101b402d83fb09107cec319`  
		Last Modified: Tue, 29 Jan 2019 22:21:12 GMT  
		Size: 19.6 MB (19610838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:maroilles` - linux; arm variant v6

```console
$ docker pull traefik@sha256:6b3d0436558cce7241e1860dab2b17f7a5e84ef6e8430be148c58d08d5a0202f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18550408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ded4319c31103d91429c4c85d2934b8d2ac111822371b24ca6ab9451a3eff3c`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 15 Dec 2018 08:49:55 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Wed, 30 Jan 2019 09:02:45 GMT
COPY file:02b0d578d66143ec04017a27858fa769cdf4cc8bfab653c80031b85bf0ae7e27 in / 
# Wed, 30 Jan 2019 09:02:46 GMT
EXPOSE 80
# Wed, 30 Jan 2019 09:02:46 GMT
VOLUME [/tmp]
# Wed, 30 Jan 2019 09:02:46 GMT
ENTRYPOINT ["/traefik"]
# Wed, 30 Jan 2019 09:02:47 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.8 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5527833b12791749e5c8242af5e3795dc1e6b2fe58811c452979252cf978fce9`  
		Last Modified: Sat, 15 Dec 2018 08:50:23 GMT  
		Size: 135.0 KB (135038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0c8bb2d3bac660d7ffd06fc27f9d8d5f42b10edbf1d2b0f0c836e91984c59a4`  
		Last Modified: Wed, 30 Jan 2019 09:03:20 GMT  
		Size: 18.4 MB (18415370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:maroilles` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:4af83948be1f5631212ae67c329a01ef68e07eaf264868e77679705b4961ca47
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.1 MB (18107047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56bc2797e58fab66c2face4d8363f261ace53f8996a30145c15de9c98f06435e`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 18 Dec 2018 10:37:13 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Wed, 30 Jan 2019 10:55:18 GMT
COPY file:9114873939479e1f73f172733f33ef1665a1c682f58ed7f4b2742138edf124bd in / 
# Wed, 30 Jan 2019 10:55:18 GMT
EXPOSE 80
# Wed, 30 Jan 2019 10:55:19 GMT
VOLUME [/tmp]
# Wed, 30 Jan 2019 10:55:20 GMT
ENTRYPOINT ["/traefik"]
# Wed, 30 Jan 2019 10:55:20 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.8 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:93231411b7777ed5066dad65f929b35b680bfac1ea1fc2ff0c9fb935cc83d75a`  
		Last Modified: Tue, 18 Dec 2018 10:37:58 GMT  
		Size: 135.0 KB (135036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6ba36d286ee82175e3279001644c9cf686aa25659147d7b879920a478ae9f37`  
		Last Modified: Wed, 30 Jan 2019 10:56:10 GMT  
		Size: 18.0 MB (17972011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:maroilles-alpine`

```console
$ docker pull traefik@sha256:cefbe749e5cdb82b681aa4dc2410889eec5b13e90a87c1ad4ee59d149f0394e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:maroilles-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:25352654e13c39c16da77d760cce6cf637b7a28304a64ec38607b2c8668ac408
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.1 MB (22127439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49549b1de79f49791fe9f9a24a22d1e3b81a86373322657e1b0a172af6e5bb3e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 04:53:58 GMT
RUN apk --no-cache add ca-certificates
# Tue, 29 Jan 2019 22:20:58 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.8/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 29 Jan 2019 22:20:58 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Tue, 29 Jan 2019 22:20:58 GMT
EXPOSE 80
# Tue, 29 Jan 2019 22:20:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 29 Jan 2019 22:20:58 GMT
CMD ["traefik"]
# Tue, 29 Jan 2019 22:20:58 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.8 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:e76466c193c5ded69bb0c4af6430106bd3877f4fcb4e00c156d06fbc6289d584`  
		Last Modified: Tue, 29 Jan 2019 22:21:23 GMT  
		Size: 19.6 MB (19610928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94d1244f6fa5826679e3595be6a20ac510e61d68926e3a468401fd4d6c1f2d93`  
		Last Modified: Tue, 29 Jan 2019 22:21:18 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:maroilles-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:a66ee4228378934c64af840dff577682e98f90289829932011cc972631a0ddd9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 MB (20871072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f785fea382cee7a3df06595b8b8f4883fe42ff8786592b7b107f8984766dd71`
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
# Wed, 30 Jan 2019 09:02:58 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.8/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 30 Jan 2019 09:02:59 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 30 Jan 2019 09:02:59 GMT
EXPOSE 80
# Wed, 30 Jan 2019 09:02:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 30 Jan 2019 09:03:00 GMT
CMD ["traefik"]
# Wed, 30 Jan 2019 09:03:00 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.8 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:14598f513b839471e6d882af09ef6ba48dafa54c2f2f7d75907771105fe17b85`  
		Last Modified: Wed, 30 Jan 2019 09:03:37 GMT  
		Size: 18.4 MB (18415566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e23fa311876639d4a2637c54650c7a621c2b0e47c503356865328ca68cbb44`  
		Last Modified: Wed, 30 Jan 2019 09:03:30 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:maroilles-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:e6982d995eb7739917b704b9bec357969bcbf5b16f8f9b04d6147444cf091416
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.4 MB (20381062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a73b08b0805c4c36ee065388db1bebbf540e929def55688105d7bbfb31f241a7`
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
# Wed, 30 Jan 2019 10:55:38 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.8/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 30 Jan 2019 10:55:39 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 30 Jan 2019 10:55:39 GMT
EXPOSE 80
# Wed, 30 Jan 2019 10:55:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 30 Jan 2019 10:55:40 GMT
CMD ["traefik"]
# Wed, 30 Jan 2019 10:55:42 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.8 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:d22bb59f46bcf8f73c997b2013b8ee43e41aabda8b12fc63780adc03d49aa2f3`  
		Last Modified: Wed, 30 Jan 2019 10:56:33 GMT  
		Size: 18.0 MB (17972047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd0821180a005eaa0a51bf991b774abfa10dd8a3bd5aaf5968377ca79e2cb50d`  
		Last Modified: Wed, 30 Jan 2019 10:56:25 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:maroilles-nanoserver`

```console
$ docker pull traefik@sha256:e438ba45ede866c4f300a41afe728c49b74579d4c0063e5144373526135f30d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:maroilles-nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:2c3ce9bbfd3cc1e6489e0cae0c46ed6543914ac8f08762c1d34be9866c6224c4
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.0 MB (455018858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:758d483a87536bd8bbcd784d9e90d2bc780bc6f99dc063f7aa1604e43717acf6`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Wed, 30 Jan 2019 10:15:08 GMT
RUN cmd /S /C #(nop) COPY file:002a6821d280a323184edc6749041fb992796e93ab16e626ce660fd362bb1335 in \traefik.exe 
# Wed, 30 Jan 2019 10:15:13 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Wed, 30 Jan 2019 10:15:14 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Wed, 30 Jan 2019 10:15:15 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.8 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:a7474d58cbd98c13e22fec68746783aa77ec24d0798be886b43e2fd4fd9a9966`  
		Last Modified: Wed, 30 Jan 2019 10:15:38 GMT  
		Size: 19.6 MB (19619190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c2e4f73dcd273b531a92fa4e95715592a51c99cfa9e81f36500d81d92be3962`  
		Last Modified: Wed, 30 Jan 2019 10:15:33 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bc8d15d9b36fd1b2fe1ed5f648f9708f424bbc3a07845f9609e1d235b3242d5`  
		Last Modified: Wed, 30 Jan 2019 10:15:33 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0db7939fa2c193a399423987e891e6e6bf051a5316677bb5b83f6b1b306ce1cc`  
		Last Modified: Wed, 30 Jan 2019 10:15:33 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:maroilles-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:e438ba45ede866c4f300a41afe728c49b74579d4c0063e5144373526135f30d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:maroilles-nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:2c3ce9bbfd3cc1e6489e0cae0c46ed6543914ac8f08762c1d34be9866c6224c4
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.0 MB (455018858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:758d483a87536bd8bbcd784d9e90d2bc780bc6f99dc063f7aa1604e43717acf6`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Wed, 30 Jan 2019 10:15:08 GMT
RUN cmd /S /C #(nop) COPY file:002a6821d280a323184edc6749041fb992796e93ab16e626ce660fd362bb1335 in \traefik.exe 
# Wed, 30 Jan 2019 10:15:13 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Wed, 30 Jan 2019 10:15:14 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Wed, 30 Jan 2019 10:15:15 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.8 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:a7474d58cbd98c13e22fec68746783aa77ec24d0798be886b43e2fd4fd9a9966`  
		Last Modified: Wed, 30 Jan 2019 10:15:38 GMT  
		Size: 19.6 MB (19619190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c2e4f73dcd273b531a92fa4e95715592a51c99cfa9e81f36500d81d92be3962`  
		Last Modified: Wed, 30 Jan 2019 10:15:33 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bc8d15d9b36fd1b2fe1ed5f648f9708f424bbc3a07845f9609e1d235b3242d5`  
		Last Modified: Wed, 30 Jan 2019 10:15:33 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0db7939fa2c193a399423987e891e6e6bf051a5316677bb5b83f6b1b306ce1cc`  
		Last Modified: Wed, 30 Jan 2019 10:15:33 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:nanoserver`

```console
$ docker pull traefik@sha256:e438ba45ede866c4f300a41afe728c49b74579d4c0063e5144373526135f30d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:2c3ce9bbfd3cc1e6489e0cae0c46ed6543914ac8f08762c1d34be9866c6224c4
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.0 MB (455018858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:758d483a87536bd8bbcd784d9e90d2bc780bc6f99dc063f7aa1604e43717acf6`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Wed, 30 Jan 2019 10:15:08 GMT
RUN cmd /S /C #(nop) COPY file:002a6821d280a323184edc6749041fb992796e93ab16e626ce660fd362bb1335 in \traefik.exe 
# Wed, 30 Jan 2019 10:15:13 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Wed, 30 Jan 2019 10:15:14 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Wed, 30 Jan 2019 10:15:15 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.8 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:a7474d58cbd98c13e22fec68746783aa77ec24d0798be886b43e2fd4fd9a9966`  
		Last Modified: Wed, 30 Jan 2019 10:15:38 GMT  
		Size: 19.6 MB (19619190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c2e4f73dcd273b531a92fa4e95715592a51c99cfa9e81f36500d81d92be3962`  
		Last Modified: Wed, 30 Jan 2019 10:15:33 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bc8d15d9b36fd1b2fe1ed5f648f9708f424bbc3a07845f9609e1d235b3242d5`  
		Last Modified: Wed, 30 Jan 2019 10:15:33 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0db7939fa2c193a399423987e891e6e6bf051a5316677bb5b83f6b1b306ce1cc`  
		Last Modified: Wed, 30 Jan 2019 10:15:33 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:nanoserver-sac2016`

```console
$ docker pull traefik@sha256:e438ba45ede866c4f300a41afe728c49b74579d4c0063e5144373526135f30d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:2c3ce9bbfd3cc1e6489e0cae0c46ed6543914ac8f08762c1d34be9866c6224c4
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.0 MB (455018858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:758d483a87536bd8bbcd784d9e90d2bc780bc6f99dc063f7aa1604e43717acf6`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Wed, 30 Jan 2019 10:15:08 GMT
RUN cmd /S /C #(nop) COPY file:002a6821d280a323184edc6749041fb992796e93ab16e626ce660fd362bb1335 in \traefik.exe 
# Wed, 30 Jan 2019 10:15:13 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Wed, 30 Jan 2019 10:15:14 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Wed, 30 Jan 2019 10:15:15 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.8 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:a7474d58cbd98c13e22fec68746783aa77ec24d0798be886b43e2fd4fd9a9966`  
		Last Modified: Wed, 30 Jan 2019 10:15:38 GMT  
		Size: 19.6 MB (19619190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c2e4f73dcd273b531a92fa4e95715592a51c99cfa9e81f36500d81d92be3962`  
		Last Modified: Wed, 30 Jan 2019 10:15:33 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bc8d15d9b36fd1b2fe1ed5f648f9708f424bbc3a07845f9609e1d235b3242d5`  
		Last Modified: Wed, 30 Jan 2019 10:15:33 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0db7939fa2c193a399423987e891e6e6bf051a5316677bb5b83f6b1b306ce1cc`  
		Last Modified: Wed, 30 Jan 2019 10:15:33 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7`

```console
$ docker pull traefik@sha256:79a9b27986068895c5deb438099fbd3072ed645cdcabc72af24e229f868c4cf2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.7` - linux; amd64

```console
$ docker pull traefik@sha256:06d0760286000a3dc0c27ea2ad63c99801b7b8e1698d022299e0fd301f79919a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.7 MB (19745881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d16ca31c674f0ba0e41a03f2e6856542468818a30eea44e198f237fd6acc40db`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 14 Dec 2018 18:21:56 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Tue, 29 Jan 2019 22:20:49 GMT
COPY file:3fd4ec8c6e7da5198af7aa439dd6bb38d010ccfdd83ac2fac4732802d87e6760 in / 
# Tue, 29 Jan 2019 22:20:49 GMT
EXPOSE 80
# Tue, 29 Jan 2019 22:20:50 GMT
VOLUME [/tmp]
# Tue, 29 Jan 2019 22:20:50 GMT
ENTRYPOINT ["/traefik"]
# Tue, 29 Jan 2019 22:20:50 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.8 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:7a433ecdf92bfc5080060a97efa862edf0deca55fcfa76a6a01b911c431695fd`  
		Last Modified: Fri, 14 Dec 2018 18:22:18 GMT  
		Size: 135.0 KB (135043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24cee597890351be642b7f154fdb6302cf584a02c101b402d83fb09107cec319`  
		Last Modified: Tue, 29 Jan 2019 22:21:12 GMT  
		Size: 19.6 MB (19610838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7` - linux; arm variant v6

```console
$ docker pull traefik@sha256:6b3d0436558cce7241e1860dab2b17f7a5e84ef6e8430be148c58d08d5a0202f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18550408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ded4319c31103d91429c4c85d2934b8d2ac111822371b24ca6ab9451a3eff3c`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 15 Dec 2018 08:49:55 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Wed, 30 Jan 2019 09:02:45 GMT
COPY file:02b0d578d66143ec04017a27858fa769cdf4cc8bfab653c80031b85bf0ae7e27 in / 
# Wed, 30 Jan 2019 09:02:46 GMT
EXPOSE 80
# Wed, 30 Jan 2019 09:02:46 GMT
VOLUME [/tmp]
# Wed, 30 Jan 2019 09:02:46 GMT
ENTRYPOINT ["/traefik"]
# Wed, 30 Jan 2019 09:02:47 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.8 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5527833b12791749e5c8242af5e3795dc1e6b2fe58811c452979252cf978fce9`  
		Last Modified: Sat, 15 Dec 2018 08:50:23 GMT  
		Size: 135.0 KB (135038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0c8bb2d3bac660d7ffd06fc27f9d8d5f42b10edbf1d2b0f0c836e91984c59a4`  
		Last Modified: Wed, 30 Jan 2019 09:03:20 GMT  
		Size: 18.4 MB (18415370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:4af83948be1f5631212ae67c329a01ef68e07eaf264868e77679705b4961ca47
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.1 MB (18107047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56bc2797e58fab66c2face4d8363f261ace53f8996a30145c15de9c98f06435e`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 18 Dec 2018 10:37:13 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Wed, 30 Jan 2019 10:55:18 GMT
COPY file:9114873939479e1f73f172733f33ef1665a1c682f58ed7f4b2742138edf124bd in / 
# Wed, 30 Jan 2019 10:55:18 GMT
EXPOSE 80
# Wed, 30 Jan 2019 10:55:19 GMT
VOLUME [/tmp]
# Wed, 30 Jan 2019 10:55:20 GMT
ENTRYPOINT ["/traefik"]
# Wed, 30 Jan 2019 10:55:20 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.8 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:93231411b7777ed5066dad65f929b35b680bfac1ea1fc2ff0c9fb935cc83d75a`  
		Last Modified: Tue, 18 Dec 2018 10:37:58 GMT  
		Size: 135.0 KB (135036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6ba36d286ee82175e3279001644c9cf686aa25659147d7b879920a478ae9f37`  
		Last Modified: Wed, 30 Jan 2019 10:56:10 GMT  
		Size: 18.0 MB (17972011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7.8`

```console
$ docker pull traefik@sha256:79a9b27986068895c5deb438099fbd3072ed645cdcabc72af24e229f868c4cf2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.7.8` - linux; amd64

```console
$ docker pull traefik@sha256:06d0760286000a3dc0c27ea2ad63c99801b7b8e1698d022299e0fd301f79919a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.7 MB (19745881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d16ca31c674f0ba0e41a03f2e6856542468818a30eea44e198f237fd6acc40db`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 14 Dec 2018 18:21:56 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Tue, 29 Jan 2019 22:20:49 GMT
COPY file:3fd4ec8c6e7da5198af7aa439dd6bb38d010ccfdd83ac2fac4732802d87e6760 in / 
# Tue, 29 Jan 2019 22:20:49 GMT
EXPOSE 80
# Tue, 29 Jan 2019 22:20:50 GMT
VOLUME [/tmp]
# Tue, 29 Jan 2019 22:20:50 GMT
ENTRYPOINT ["/traefik"]
# Tue, 29 Jan 2019 22:20:50 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.8 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:7a433ecdf92bfc5080060a97efa862edf0deca55fcfa76a6a01b911c431695fd`  
		Last Modified: Fri, 14 Dec 2018 18:22:18 GMT  
		Size: 135.0 KB (135043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24cee597890351be642b7f154fdb6302cf584a02c101b402d83fb09107cec319`  
		Last Modified: Tue, 29 Jan 2019 22:21:12 GMT  
		Size: 19.6 MB (19610838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7.8` - linux; arm variant v6

```console
$ docker pull traefik@sha256:6b3d0436558cce7241e1860dab2b17f7a5e84ef6e8430be148c58d08d5a0202f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18550408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ded4319c31103d91429c4c85d2934b8d2ac111822371b24ca6ab9451a3eff3c`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 15 Dec 2018 08:49:55 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Wed, 30 Jan 2019 09:02:45 GMT
COPY file:02b0d578d66143ec04017a27858fa769cdf4cc8bfab653c80031b85bf0ae7e27 in / 
# Wed, 30 Jan 2019 09:02:46 GMT
EXPOSE 80
# Wed, 30 Jan 2019 09:02:46 GMT
VOLUME [/tmp]
# Wed, 30 Jan 2019 09:02:46 GMT
ENTRYPOINT ["/traefik"]
# Wed, 30 Jan 2019 09:02:47 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.8 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5527833b12791749e5c8242af5e3795dc1e6b2fe58811c452979252cf978fce9`  
		Last Modified: Sat, 15 Dec 2018 08:50:23 GMT  
		Size: 135.0 KB (135038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0c8bb2d3bac660d7ffd06fc27f9d8d5f42b10edbf1d2b0f0c836e91984c59a4`  
		Last Modified: Wed, 30 Jan 2019 09:03:20 GMT  
		Size: 18.4 MB (18415370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7.8` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:4af83948be1f5631212ae67c329a01ef68e07eaf264868e77679705b4961ca47
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.1 MB (18107047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56bc2797e58fab66c2face4d8363f261ace53f8996a30145c15de9c98f06435e`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 18 Dec 2018 10:37:13 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Wed, 30 Jan 2019 10:55:18 GMT
COPY file:9114873939479e1f73f172733f33ef1665a1c682f58ed7f4b2742138edf124bd in / 
# Wed, 30 Jan 2019 10:55:18 GMT
EXPOSE 80
# Wed, 30 Jan 2019 10:55:19 GMT
VOLUME [/tmp]
# Wed, 30 Jan 2019 10:55:20 GMT
ENTRYPOINT ["/traefik"]
# Wed, 30 Jan 2019 10:55:20 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.8 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:93231411b7777ed5066dad65f929b35b680bfac1ea1fc2ff0c9fb935cc83d75a`  
		Last Modified: Tue, 18 Dec 2018 10:37:58 GMT  
		Size: 135.0 KB (135036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6ba36d286ee82175e3279001644c9cf686aa25659147d7b879920a478ae9f37`  
		Last Modified: Wed, 30 Jan 2019 10:56:10 GMT  
		Size: 18.0 MB (17972011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7.8-alpine`

```console
$ docker pull traefik@sha256:cefbe749e5cdb82b681aa4dc2410889eec5b13e90a87c1ad4ee59d149f0394e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.7.8-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:25352654e13c39c16da77d760cce6cf637b7a28304a64ec38607b2c8668ac408
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.1 MB (22127439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49549b1de79f49791fe9f9a24a22d1e3b81a86373322657e1b0a172af6e5bb3e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 04:53:58 GMT
RUN apk --no-cache add ca-certificates
# Tue, 29 Jan 2019 22:20:58 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.8/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 29 Jan 2019 22:20:58 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Tue, 29 Jan 2019 22:20:58 GMT
EXPOSE 80
# Tue, 29 Jan 2019 22:20:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 29 Jan 2019 22:20:58 GMT
CMD ["traefik"]
# Tue, 29 Jan 2019 22:20:58 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.8 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:e76466c193c5ded69bb0c4af6430106bd3877f4fcb4e00c156d06fbc6289d584`  
		Last Modified: Tue, 29 Jan 2019 22:21:23 GMT  
		Size: 19.6 MB (19610928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94d1244f6fa5826679e3595be6a20ac510e61d68926e3a468401fd4d6c1f2d93`  
		Last Modified: Tue, 29 Jan 2019 22:21:18 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7.8-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:a66ee4228378934c64af840dff577682e98f90289829932011cc972631a0ddd9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 MB (20871072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f785fea382cee7a3df06595b8b8f4883fe42ff8786592b7b107f8984766dd71`
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
# Wed, 30 Jan 2019 09:02:58 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.8/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 30 Jan 2019 09:02:59 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 30 Jan 2019 09:02:59 GMT
EXPOSE 80
# Wed, 30 Jan 2019 09:02:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 30 Jan 2019 09:03:00 GMT
CMD ["traefik"]
# Wed, 30 Jan 2019 09:03:00 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.8 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:14598f513b839471e6d882af09ef6ba48dafa54c2f2f7d75907771105fe17b85`  
		Last Modified: Wed, 30 Jan 2019 09:03:37 GMT  
		Size: 18.4 MB (18415566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e23fa311876639d4a2637c54650c7a621c2b0e47c503356865328ca68cbb44`  
		Last Modified: Wed, 30 Jan 2019 09:03:30 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7.8-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:e6982d995eb7739917b704b9bec357969bcbf5b16f8f9b04d6147444cf091416
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.4 MB (20381062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a73b08b0805c4c36ee065388db1bebbf540e929def55688105d7bbfb31f241a7`
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
# Wed, 30 Jan 2019 10:55:38 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.8/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 30 Jan 2019 10:55:39 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 30 Jan 2019 10:55:39 GMT
EXPOSE 80
# Wed, 30 Jan 2019 10:55:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 30 Jan 2019 10:55:40 GMT
CMD ["traefik"]
# Wed, 30 Jan 2019 10:55:42 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.8 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:d22bb59f46bcf8f73c997b2013b8ee43e41aabda8b12fc63780adc03d49aa2f3`  
		Last Modified: Wed, 30 Jan 2019 10:56:33 GMT  
		Size: 18.0 MB (17972047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd0821180a005eaa0a51bf991b774abfa10dd8a3bd5aaf5968377ca79e2cb50d`  
		Last Modified: Wed, 30 Jan 2019 10:56:25 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7.8-nanoserver`

```console
$ docker pull traefik@sha256:e438ba45ede866c4f300a41afe728c49b74579d4c0063e5144373526135f30d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:v1.7.8-nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:2c3ce9bbfd3cc1e6489e0cae0c46ed6543914ac8f08762c1d34be9866c6224c4
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.0 MB (455018858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:758d483a87536bd8bbcd784d9e90d2bc780bc6f99dc063f7aa1604e43717acf6`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Wed, 30 Jan 2019 10:15:08 GMT
RUN cmd /S /C #(nop) COPY file:002a6821d280a323184edc6749041fb992796e93ab16e626ce660fd362bb1335 in \traefik.exe 
# Wed, 30 Jan 2019 10:15:13 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Wed, 30 Jan 2019 10:15:14 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Wed, 30 Jan 2019 10:15:15 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.8 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:a7474d58cbd98c13e22fec68746783aa77ec24d0798be886b43e2fd4fd9a9966`  
		Last Modified: Wed, 30 Jan 2019 10:15:38 GMT  
		Size: 19.6 MB (19619190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c2e4f73dcd273b531a92fa4e95715592a51c99cfa9e81f36500d81d92be3962`  
		Last Modified: Wed, 30 Jan 2019 10:15:33 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bc8d15d9b36fd1b2fe1ed5f648f9708f424bbc3a07845f9609e1d235b3242d5`  
		Last Modified: Wed, 30 Jan 2019 10:15:33 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0db7939fa2c193a399423987e891e6e6bf051a5316677bb5b83f6b1b306ce1cc`  
		Last Modified: Wed, 30 Jan 2019 10:15:33 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7.8-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:e438ba45ede866c4f300a41afe728c49b74579d4c0063e5144373526135f30d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:v1.7.8-nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:2c3ce9bbfd3cc1e6489e0cae0c46ed6543914ac8f08762c1d34be9866c6224c4
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.0 MB (455018858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:758d483a87536bd8bbcd784d9e90d2bc780bc6f99dc063f7aa1604e43717acf6`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Wed, 30 Jan 2019 10:15:08 GMT
RUN cmd /S /C #(nop) COPY file:002a6821d280a323184edc6749041fb992796e93ab16e626ce660fd362bb1335 in \traefik.exe 
# Wed, 30 Jan 2019 10:15:13 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Wed, 30 Jan 2019 10:15:14 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Wed, 30 Jan 2019 10:15:15 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.8 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:a7474d58cbd98c13e22fec68746783aa77ec24d0798be886b43e2fd4fd9a9966`  
		Last Modified: Wed, 30 Jan 2019 10:15:38 GMT  
		Size: 19.6 MB (19619190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c2e4f73dcd273b531a92fa4e95715592a51c99cfa9e81f36500d81d92be3962`  
		Last Modified: Wed, 30 Jan 2019 10:15:33 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bc8d15d9b36fd1b2fe1ed5f648f9708f424bbc3a07845f9609e1d235b3242d5`  
		Last Modified: Wed, 30 Jan 2019 10:15:33 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0db7939fa2c193a399423987e891e6e6bf051a5316677bb5b83f6b1b306ce1cc`  
		Last Modified: Wed, 30 Jan 2019 10:15:33 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7-alpine`

```console
$ docker pull traefik@sha256:cefbe749e5cdb82b681aa4dc2410889eec5b13e90a87c1ad4ee59d149f0394e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.7-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:25352654e13c39c16da77d760cce6cf637b7a28304a64ec38607b2c8668ac408
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.1 MB (22127439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49549b1de79f49791fe9f9a24a22d1e3b81a86373322657e1b0a172af6e5bb3e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 04:53:58 GMT
RUN apk --no-cache add ca-certificates
# Tue, 29 Jan 2019 22:20:58 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.8/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 29 Jan 2019 22:20:58 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Tue, 29 Jan 2019 22:20:58 GMT
EXPOSE 80
# Tue, 29 Jan 2019 22:20:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 29 Jan 2019 22:20:58 GMT
CMD ["traefik"]
# Tue, 29 Jan 2019 22:20:58 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.8 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:e76466c193c5ded69bb0c4af6430106bd3877f4fcb4e00c156d06fbc6289d584`  
		Last Modified: Tue, 29 Jan 2019 22:21:23 GMT  
		Size: 19.6 MB (19610928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94d1244f6fa5826679e3595be6a20ac510e61d68926e3a468401fd4d6c1f2d93`  
		Last Modified: Tue, 29 Jan 2019 22:21:18 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:a66ee4228378934c64af840dff577682e98f90289829932011cc972631a0ddd9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 MB (20871072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f785fea382cee7a3df06595b8b8f4883fe42ff8786592b7b107f8984766dd71`
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
# Wed, 30 Jan 2019 09:02:58 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.8/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 30 Jan 2019 09:02:59 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 30 Jan 2019 09:02:59 GMT
EXPOSE 80
# Wed, 30 Jan 2019 09:02:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 30 Jan 2019 09:03:00 GMT
CMD ["traefik"]
# Wed, 30 Jan 2019 09:03:00 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.8 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:14598f513b839471e6d882af09ef6ba48dafa54c2f2f7d75907771105fe17b85`  
		Last Modified: Wed, 30 Jan 2019 09:03:37 GMT  
		Size: 18.4 MB (18415566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e23fa311876639d4a2637c54650c7a621c2b0e47c503356865328ca68cbb44`  
		Last Modified: Wed, 30 Jan 2019 09:03:30 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:e6982d995eb7739917b704b9bec357969bcbf5b16f8f9b04d6147444cf091416
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.4 MB (20381062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a73b08b0805c4c36ee065388db1bebbf540e929def55688105d7bbfb31f241a7`
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
# Wed, 30 Jan 2019 10:55:38 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.8/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 30 Jan 2019 10:55:39 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 30 Jan 2019 10:55:39 GMT
EXPOSE 80
# Wed, 30 Jan 2019 10:55:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 30 Jan 2019 10:55:40 GMT
CMD ["traefik"]
# Wed, 30 Jan 2019 10:55:42 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.8 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:d22bb59f46bcf8f73c997b2013b8ee43e41aabda8b12fc63780adc03d49aa2f3`  
		Last Modified: Wed, 30 Jan 2019 10:56:33 GMT  
		Size: 18.0 MB (17972047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd0821180a005eaa0a51bf991b774abfa10dd8a3bd5aaf5968377ca79e2cb50d`  
		Last Modified: Wed, 30 Jan 2019 10:56:25 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7-nanoserver`

```console
$ docker pull traefik@sha256:e438ba45ede866c4f300a41afe728c49b74579d4c0063e5144373526135f30d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:v1.7-nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:2c3ce9bbfd3cc1e6489e0cae0c46ed6543914ac8f08762c1d34be9866c6224c4
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.0 MB (455018858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:758d483a87536bd8bbcd784d9e90d2bc780bc6f99dc063f7aa1604e43717acf6`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Wed, 30 Jan 2019 10:15:08 GMT
RUN cmd /S /C #(nop) COPY file:002a6821d280a323184edc6749041fb992796e93ab16e626ce660fd362bb1335 in \traefik.exe 
# Wed, 30 Jan 2019 10:15:13 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Wed, 30 Jan 2019 10:15:14 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Wed, 30 Jan 2019 10:15:15 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.8 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:a7474d58cbd98c13e22fec68746783aa77ec24d0798be886b43e2fd4fd9a9966`  
		Last Modified: Wed, 30 Jan 2019 10:15:38 GMT  
		Size: 19.6 MB (19619190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c2e4f73dcd273b531a92fa4e95715592a51c99cfa9e81f36500d81d92be3962`  
		Last Modified: Wed, 30 Jan 2019 10:15:33 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bc8d15d9b36fd1b2fe1ed5f648f9708f424bbc3a07845f9609e1d235b3242d5`  
		Last Modified: Wed, 30 Jan 2019 10:15:33 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0db7939fa2c193a399423987e891e6e6bf051a5316677bb5b83f6b1b306ce1cc`  
		Last Modified: Wed, 30 Jan 2019 10:15:33 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:e438ba45ede866c4f300a41afe728c49b74579d4c0063e5144373526135f30d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:v1.7-nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:2c3ce9bbfd3cc1e6489e0cae0c46ed6543914ac8f08762c1d34be9866c6224c4
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.0 MB (455018858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:758d483a87536bd8bbcd784d9e90d2bc780bc6f99dc063f7aa1604e43717acf6`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Wed, 30 Jan 2019 10:15:08 GMT
RUN cmd /S /C #(nop) COPY file:002a6821d280a323184edc6749041fb992796e93ab16e626ce660fd362bb1335 in \traefik.exe 
# Wed, 30 Jan 2019 10:15:13 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Wed, 30 Jan 2019 10:15:14 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Wed, 30 Jan 2019 10:15:15 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.8 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:a7474d58cbd98c13e22fec68746783aa77ec24d0798be886b43e2fd4fd9a9966`  
		Last Modified: Wed, 30 Jan 2019 10:15:38 GMT  
		Size: 19.6 MB (19619190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c2e4f73dcd273b531a92fa4e95715592a51c99cfa9e81f36500d81d92be3962`  
		Last Modified: Wed, 30 Jan 2019 10:15:33 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bc8d15d9b36fd1b2fe1ed5f648f9708f424bbc3a07845f9609e1d235b3242d5`  
		Last Modified: Wed, 30 Jan 2019 10:15:33 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0db7939fa2c193a399423987e891e6e6bf051a5316677bb5b83f6b1b306ce1cc`  
		Last Modified: Wed, 30 Jan 2019 10:15:33 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
