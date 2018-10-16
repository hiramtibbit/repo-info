<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `traefik`

-	[`traefik:1.7`](#traefik17)
-	[`traefik:1.7.3`](#traefik173)
-	[`traefik:1.7.3-alpine`](#traefik173-alpine)
-	[`traefik:1.7.3-nanoserver`](#traefik173-nanoserver)
-	[`traefik:1.7.3-nanoserver-sac2016`](#traefik173-nanoserver-sac2016)
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
-	[`traefik:v1.7.3`](#traefikv173)
-	[`traefik:v1.7.3-alpine`](#traefikv173-alpine)
-	[`traefik:v1.7.3-nanoserver`](#traefikv173-nanoserver)
-	[`traefik:v1.7.3-nanoserver-sac2016`](#traefikv173-nanoserver-sac2016)
-	[`traefik:v1.7-alpine`](#traefikv17-alpine)
-	[`traefik:v1.7-nanoserver`](#traefikv17-nanoserver)
-	[`traefik:v1.7-nanoserver-sac2016`](#traefikv17-nanoserver-sac2016)

## `traefik:1.7`

```console
$ docker pull traefik@sha256:c19302fb4b40407dab44c70e6bde4e1e153a5b1edbd2c3a439681d193656889f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

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

## `traefik:1.7.3`

```console
$ docker pull traefik@sha256:c19302fb4b40407dab44c70e6bde4e1e153a5b1edbd2c3a439681d193656889f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:1.7.3` - linux; amd64

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

### `traefik:1.7.3` - linux; arm variant v6

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

## `traefik:1.7.3-alpine`

```console
$ docker pull traefik@sha256:902966d9258127a2accb373beceeda46ffd7827b534cab662cfd05e9dbfd0199
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:1.7.3-alpine` - linux; amd64

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

### `traefik:1.7.3-alpine` - linux; arm variant v6

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

## `traefik:1.7.3-nanoserver`

**does not exist** (yet?)

## `traefik:1.7.3-nanoserver-sac2016`

**does not exist** (yet?)

## `traefik:1.7-alpine`

```console
$ docker pull traefik@sha256:902966d9258127a2accb373beceeda46ffd7827b534cab662cfd05e9dbfd0199
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

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

## `traefik:1.7-nanoserver`

```console
$ docker pull traefik@sha256:78701cd22d4a4b14f940689d335895f5d6f1d5ca275003f55bf59159b23a80eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2485; amd64

### `traefik:1.7-nanoserver` - windows version 10.0.14393.2485; amd64

```console
$ docker pull traefik@sha256:ae8d47253d9946b5a13834a76dc2c9a00f63b1b58d8c71afde5cf38b5e2110d0
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.2 MB (452243198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86fb0fb0681f244fde38f02de66816c2c8946525c646dec4007fccb0a98e23a7`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 11 Sep 2018 16:53:25 GMT
RUN Install update 10.0.14393.2485
# Fri, 05 Oct 2018 09:18:46 GMT
RUN cmd /S /C #(nop) COPY file:522ea648d0f63127cffe5748802274496b54c0aababd7481b6e088cc8d917df3 in \traefik.exe 
# Fri, 05 Oct 2018 09:18:49 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Fri, 05 Oct 2018 09:18:50 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Fri, 05 Oct 2018 09:18:51 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Mon, 17 Sep 2018 20:04:15 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b1b0c61be11f6d053756595f70211e6044137b150fc1cc23d52ee0852eaf9146`  
		Last Modified: Tue, 11 Sep 2018 16:53:25 GMT  
		Size: 180.5 MB (180533966 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ad3b28bdf7d72126eaf313d85d79f57ef2ff47ba1d7d55db1517ecef11bfb68b`  
		Last Modified: Fri, 05 Oct 2018 09:19:10 GMT  
		Size: 19.0 MB (19015398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e531862fb1a070c8e2b71842cfed87bf512ad7ca7b76083f4ddb23f9c4e7ff2e`  
		Last Modified: Fri, 05 Oct 2018 09:19:04 GMT  
		Size: 939.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a08bec85b2fa2693c6b375158127311636c633fec9c6be756776fd39e9aaaa8`  
		Last Modified: Fri, 05 Oct 2018 09:19:04 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c8289c085c2ce742b4667ad911552d900b2e82f00aeb3df9bf601a3051b246`  
		Last Modified: Fri, 05 Oct 2018 09:19:05 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:78701cd22d4a4b14f940689d335895f5d6f1d5ca275003f55bf59159b23a80eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2485; amd64

### `traefik:1.7-nanoserver-sac2016` - windows version 10.0.14393.2485; amd64

```console
$ docker pull traefik@sha256:ae8d47253d9946b5a13834a76dc2c9a00f63b1b58d8c71afde5cf38b5e2110d0
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.2 MB (452243198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86fb0fb0681f244fde38f02de66816c2c8946525c646dec4007fccb0a98e23a7`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 11 Sep 2018 16:53:25 GMT
RUN Install update 10.0.14393.2485
# Fri, 05 Oct 2018 09:18:46 GMT
RUN cmd /S /C #(nop) COPY file:522ea648d0f63127cffe5748802274496b54c0aababd7481b6e088cc8d917df3 in \traefik.exe 
# Fri, 05 Oct 2018 09:18:49 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Fri, 05 Oct 2018 09:18:50 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Fri, 05 Oct 2018 09:18:51 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Mon, 17 Sep 2018 20:04:15 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b1b0c61be11f6d053756595f70211e6044137b150fc1cc23d52ee0852eaf9146`  
		Last Modified: Tue, 11 Sep 2018 16:53:25 GMT  
		Size: 180.5 MB (180533966 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ad3b28bdf7d72126eaf313d85d79f57ef2ff47ba1d7d55db1517ecef11bfb68b`  
		Last Modified: Fri, 05 Oct 2018 09:19:10 GMT  
		Size: 19.0 MB (19015398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e531862fb1a070c8e2b71842cfed87bf512ad7ca7b76083f4ddb23f9c4e7ff2e`  
		Last Modified: Fri, 05 Oct 2018 09:19:04 GMT  
		Size: 939.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a08bec85b2fa2693c6b375158127311636c633fec9c6be756776fd39e9aaaa8`  
		Last Modified: Fri, 05 Oct 2018 09:19:04 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c8289c085c2ce742b4667ad911552d900b2e82f00aeb3df9bf601a3051b246`  
		Last Modified: Fri, 05 Oct 2018 09:19:05 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:alpine`

```console
$ docker pull traefik@sha256:902966d9258127a2accb373beceeda46ffd7827b534cab662cfd05e9dbfd0199
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

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

## `traefik:latest`

```console
$ docker pull traefik@sha256:c19302fb4b40407dab44c70e6bde4e1e153a5b1edbd2c3a439681d193656889f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

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

## `traefik:maroilles`

```console
$ docker pull traefik@sha256:c19302fb4b40407dab44c70e6bde4e1e153a5b1edbd2c3a439681d193656889f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

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

## `traefik:maroilles-alpine`

```console
$ docker pull traefik@sha256:902966d9258127a2accb373beceeda46ffd7827b534cab662cfd05e9dbfd0199
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

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

## `traefik:maroilles-nanoserver`

```console
$ docker pull traefik@sha256:78701cd22d4a4b14f940689d335895f5d6f1d5ca275003f55bf59159b23a80eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2485; amd64

### `traefik:maroilles-nanoserver` - windows version 10.0.14393.2485; amd64

```console
$ docker pull traefik@sha256:ae8d47253d9946b5a13834a76dc2c9a00f63b1b58d8c71afde5cf38b5e2110d0
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.2 MB (452243198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86fb0fb0681f244fde38f02de66816c2c8946525c646dec4007fccb0a98e23a7`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 11 Sep 2018 16:53:25 GMT
RUN Install update 10.0.14393.2485
# Fri, 05 Oct 2018 09:18:46 GMT
RUN cmd /S /C #(nop) COPY file:522ea648d0f63127cffe5748802274496b54c0aababd7481b6e088cc8d917df3 in \traefik.exe 
# Fri, 05 Oct 2018 09:18:49 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Fri, 05 Oct 2018 09:18:50 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Fri, 05 Oct 2018 09:18:51 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Mon, 17 Sep 2018 20:04:15 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b1b0c61be11f6d053756595f70211e6044137b150fc1cc23d52ee0852eaf9146`  
		Last Modified: Tue, 11 Sep 2018 16:53:25 GMT  
		Size: 180.5 MB (180533966 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ad3b28bdf7d72126eaf313d85d79f57ef2ff47ba1d7d55db1517ecef11bfb68b`  
		Last Modified: Fri, 05 Oct 2018 09:19:10 GMT  
		Size: 19.0 MB (19015398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e531862fb1a070c8e2b71842cfed87bf512ad7ca7b76083f4ddb23f9c4e7ff2e`  
		Last Modified: Fri, 05 Oct 2018 09:19:04 GMT  
		Size: 939.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a08bec85b2fa2693c6b375158127311636c633fec9c6be756776fd39e9aaaa8`  
		Last Modified: Fri, 05 Oct 2018 09:19:04 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c8289c085c2ce742b4667ad911552d900b2e82f00aeb3df9bf601a3051b246`  
		Last Modified: Fri, 05 Oct 2018 09:19:05 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:maroilles-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:78701cd22d4a4b14f940689d335895f5d6f1d5ca275003f55bf59159b23a80eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2485; amd64

### `traefik:maroilles-nanoserver-sac2016` - windows version 10.0.14393.2485; amd64

```console
$ docker pull traefik@sha256:ae8d47253d9946b5a13834a76dc2c9a00f63b1b58d8c71afde5cf38b5e2110d0
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.2 MB (452243198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86fb0fb0681f244fde38f02de66816c2c8946525c646dec4007fccb0a98e23a7`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 11 Sep 2018 16:53:25 GMT
RUN Install update 10.0.14393.2485
# Fri, 05 Oct 2018 09:18:46 GMT
RUN cmd /S /C #(nop) COPY file:522ea648d0f63127cffe5748802274496b54c0aababd7481b6e088cc8d917df3 in \traefik.exe 
# Fri, 05 Oct 2018 09:18:49 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Fri, 05 Oct 2018 09:18:50 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Fri, 05 Oct 2018 09:18:51 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Mon, 17 Sep 2018 20:04:15 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b1b0c61be11f6d053756595f70211e6044137b150fc1cc23d52ee0852eaf9146`  
		Last Modified: Tue, 11 Sep 2018 16:53:25 GMT  
		Size: 180.5 MB (180533966 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ad3b28bdf7d72126eaf313d85d79f57ef2ff47ba1d7d55db1517ecef11bfb68b`  
		Last Modified: Fri, 05 Oct 2018 09:19:10 GMT  
		Size: 19.0 MB (19015398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e531862fb1a070c8e2b71842cfed87bf512ad7ca7b76083f4ddb23f9c4e7ff2e`  
		Last Modified: Fri, 05 Oct 2018 09:19:04 GMT  
		Size: 939.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a08bec85b2fa2693c6b375158127311636c633fec9c6be756776fd39e9aaaa8`  
		Last Modified: Fri, 05 Oct 2018 09:19:04 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c8289c085c2ce742b4667ad911552d900b2e82f00aeb3df9bf601a3051b246`  
		Last Modified: Fri, 05 Oct 2018 09:19:05 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:nanoserver`

```console
$ docker pull traefik@sha256:78701cd22d4a4b14f940689d335895f5d6f1d5ca275003f55bf59159b23a80eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2485; amd64

### `traefik:nanoserver` - windows version 10.0.14393.2485; amd64

```console
$ docker pull traefik@sha256:ae8d47253d9946b5a13834a76dc2c9a00f63b1b58d8c71afde5cf38b5e2110d0
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.2 MB (452243198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86fb0fb0681f244fde38f02de66816c2c8946525c646dec4007fccb0a98e23a7`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 11 Sep 2018 16:53:25 GMT
RUN Install update 10.0.14393.2485
# Fri, 05 Oct 2018 09:18:46 GMT
RUN cmd /S /C #(nop) COPY file:522ea648d0f63127cffe5748802274496b54c0aababd7481b6e088cc8d917df3 in \traefik.exe 
# Fri, 05 Oct 2018 09:18:49 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Fri, 05 Oct 2018 09:18:50 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Fri, 05 Oct 2018 09:18:51 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Mon, 17 Sep 2018 20:04:15 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b1b0c61be11f6d053756595f70211e6044137b150fc1cc23d52ee0852eaf9146`  
		Last Modified: Tue, 11 Sep 2018 16:53:25 GMT  
		Size: 180.5 MB (180533966 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ad3b28bdf7d72126eaf313d85d79f57ef2ff47ba1d7d55db1517ecef11bfb68b`  
		Last Modified: Fri, 05 Oct 2018 09:19:10 GMT  
		Size: 19.0 MB (19015398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e531862fb1a070c8e2b71842cfed87bf512ad7ca7b76083f4ddb23f9c4e7ff2e`  
		Last Modified: Fri, 05 Oct 2018 09:19:04 GMT  
		Size: 939.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a08bec85b2fa2693c6b375158127311636c633fec9c6be756776fd39e9aaaa8`  
		Last Modified: Fri, 05 Oct 2018 09:19:04 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c8289c085c2ce742b4667ad911552d900b2e82f00aeb3df9bf601a3051b246`  
		Last Modified: Fri, 05 Oct 2018 09:19:05 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:nanoserver-sac2016`

```console
$ docker pull traefik@sha256:78701cd22d4a4b14f940689d335895f5d6f1d5ca275003f55bf59159b23a80eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2485; amd64

### `traefik:nanoserver-sac2016` - windows version 10.0.14393.2485; amd64

```console
$ docker pull traefik@sha256:ae8d47253d9946b5a13834a76dc2c9a00f63b1b58d8c71afde5cf38b5e2110d0
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.2 MB (452243198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86fb0fb0681f244fde38f02de66816c2c8946525c646dec4007fccb0a98e23a7`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 11 Sep 2018 16:53:25 GMT
RUN Install update 10.0.14393.2485
# Fri, 05 Oct 2018 09:18:46 GMT
RUN cmd /S /C #(nop) COPY file:522ea648d0f63127cffe5748802274496b54c0aababd7481b6e088cc8d917df3 in \traefik.exe 
# Fri, 05 Oct 2018 09:18:49 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Fri, 05 Oct 2018 09:18:50 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Fri, 05 Oct 2018 09:18:51 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Mon, 17 Sep 2018 20:04:15 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b1b0c61be11f6d053756595f70211e6044137b150fc1cc23d52ee0852eaf9146`  
		Last Modified: Tue, 11 Sep 2018 16:53:25 GMT  
		Size: 180.5 MB (180533966 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ad3b28bdf7d72126eaf313d85d79f57ef2ff47ba1d7d55db1517ecef11bfb68b`  
		Last Modified: Fri, 05 Oct 2018 09:19:10 GMT  
		Size: 19.0 MB (19015398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e531862fb1a070c8e2b71842cfed87bf512ad7ca7b76083f4ddb23f9c4e7ff2e`  
		Last Modified: Fri, 05 Oct 2018 09:19:04 GMT  
		Size: 939.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a08bec85b2fa2693c6b375158127311636c633fec9c6be756776fd39e9aaaa8`  
		Last Modified: Fri, 05 Oct 2018 09:19:04 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c8289c085c2ce742b4667ad911552d900b2e82f00aeb3df9bf601a3051b246`  
		Last Modified: Fri, 05 Oct 2018 09:19:05 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7`

```console
$ docker pull traefik@sha256:c19302fb4b40407dab44c70e6bde4e1e153a5b1edbd2c3a439681d193656889f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

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

## `traefik:v1.7.3`

```console
$ docker pull traefik@sha256:c19302fb4b40407dab44c70e6bde4e1e153a5b1edbd2c3a439681d193656889f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:v1.7.3` - linux; amd64

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

### `traefik:v1.7.3` - linux; arm variant v6

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

## `traefik:v1.7.3-alpine`

```console
$ docker pull traefik@sha256:902966d9258127a2accb373beceeda46ffd7827b534cab662cfd05e9dbfd0199
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:v1.7.3-alpine` - linux; amd64

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

### `traefik:v1.7.3-alpine` - linux; arm variant v6

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

## `traefik:v1.7.3-nanoserver`

**does not exist** (yet?)

## `traefik:v1.7.3-nanoserver-sac2016`

**does not exist** (yet?)

## `traefik:v1.7-alpine`

```console
$ docker pull traefik@sha256:902966d9258127a2accb373beceeda46ffd7827b534cab662cfd05e9dbfd0199
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

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

## `traefik:v1.7-nanoserver`

```console
$ docker pull traefik@sha256:78701cd22d4a4b14f940689d335895f5d6f1d5ca275003f55bf59159b23a80eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2485; amd64

### `traefik:v1.7-nanoserver` - windows version 10.0.14393.2485; amd64

```console
$ docker pull traefik@sha256:ae8d47253d9946b5a13834a76dc2c9a00f63b1b58d8c71afde5cf38b5e2110d0
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.2 MB (452243198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86fb0fb0681f244fde38f02de66816c2c8946525c646dec4007fccb0a98e23a7`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 11 Sep 2018 16:53:25 GMT
RUN Install update 10.0.14393.2485
# Fri, 05 Oct 2018 09:18:46 GMT
RUN cmd /S /C #(nop) COPY file:522ea648d0f63127cffe5748802274496b54c0aababd7481b6e088cc8d917df3 in \traefik.exe 
# Fri, 05 Oct 2018 09:18:49 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Fri, 05 Oct 2018 09:18:50 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Fri, 05 Oct 2018 09:18:51 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Mon, 17 Sep 2018 20:04:15 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b1b0c61be11f6d053756595f70211e6044137b150fc1cc23d52ee0852eaf9146`  
		Last Modified: Tue, 11 Sep 2018 16:53:25 GMT  
		Size: 180.5 MB (180533966 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ad3b28bdf7d72126eaf313d85d79f57ef2ff47ba1d7d55db1517ecef11bfb68b`  
		Last Modified: Fri, 05 Oct 2018 09:19:10 GMT  
		Size: 19.0 MB (19015398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e531862fb1a070c8e2b71842cfed87bf512ad7ca7b76083f4ddb23f9c4e7ff2e`  
		Last Modified: Fri, 05 Oct 2018 09:19:04 GMT  
		Size: 939.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a08bec85b2fa2693c6b375158127311636c633fec9c6be756776fd39e9aaaa8`  
		Last Modified: Fri, 05 Oct 2018 09:19:04 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c8289c085c2ce742b4667ad911552d900b2e82f00aeb3df9bf601a3051b246`  
		Last Modified: Fri, 05 Oct 2018 09:19:05 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:78701cd22d4a4b14f940689d335895f5d6f1d5ca275003f55bf59159b23a80eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2485; amd64

### `traefik:v1.7-nanoserver-sac2016` - windows version 10.0.14393.2485; amd64

```console
$ docker pull traefik@sha256:ae8d47253d9946b5a13834a76dc2c9a00f63b1b58d8c71afde5cf38b5e2110d0
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.2 MB (452243198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86fb0fb0681f244fde38f02de66816c2c8946525c646dec4007fccb0a98e23a7`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 11 Sep 2018 16:53:25 GMT
RUN Install update 10.0.14393.2485
# Fri, 05 Oct 2018 09:18:46 GMT
RUN cmd /S /C #(nop) COPY file:522ea648d0f63127cffe5748802274496b54c0aababd7481b6e088cc8d917df3 in \traefik.exe 
# Fri, 05 Oct 2018 09:18:49 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Fri, 05 Oct 2018 09:18:50 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Fri, 05 Oct 2018 09:18:51 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Mon, 17 Sep 2018 20:04:15 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b1b0c61be11f6d053756595f70211e6044137b150fc1cc23d52ee0852eaf9146`  
		Last Modified: Tue, 11 Sep 2018 16:53:25 GMT  
		Size: 180.5 MB (180533966 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ad3b28bdf7d72126eaf313d85d79f57ef2ff47ba1d7d55db1517ecef11bfb68b`  
		Last Modified: Fri, 05 Oct 2018 09:19:10 GMT  
		Size: 19.0 MB (19015398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e531862fb1a070c8e2b71842cfed87bf512ad7ca7b76083f4ddb23f9c4e7ff2e`  
		Last Modified: Fri, 05 Oct 2018 09:19:04 GMT  
		Size: 939.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a08bec85b2fa2693c6b375158127311636c633fec9c6be756776fd39e9aaaa8`  
		Last Modified: Fri, 05 Oct 2018 09:19:04 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c8289c085c2ce742b4667ad911552d900b2e82f00aeb3df9bf601a3051b246`  
		Last Modified: Fri, 05 Oct 2018 09:19:05 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
