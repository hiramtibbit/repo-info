<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `traefik`

-	[`traefik:1.7`](#traefik17)
-	[`traefik:1.7.1`](#traefik171)
-	[`traefik:1.7.1-alpine`](#traefik171-alpine)
-	[`traefik:1.7.1-nanoserver`](#traefik171-nanoserver)
-	[`traefik:1.7.1-nanoserver-sac2016`](#traefik171-nanoserver-sac2016)
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
-	[`traefik:v1.7.1`](#traefikv171)
-	[`traefik:v1.7.1-alpine`](#traefikv171-alpine)
-	[`traefik:v1.7.1-nanoserver`](#traefikv171-nanoserver)
-	[`traefik:v1.7.1-nanoserver-sac2016`](#traefikv171-nanoserver-sac2016)
-	[`traefik:v1.7-alpine`](#traefikv17-alpine)
-	[`traefik:v1.7-nanoserver`](#traefikv17-nanoserver)
-	[`traefik:v1.7-nanoserver-sac2016`](#traefikv17-nanoserver-sac2016)

## `traefik:1.7`

```console
$ docker pull traefik@sha256:bfdb516861ab9e54e4af3d151f5e25a04ea3d0e7147be2ce8a6f33723874413d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:1.7` - linux; amd64

```console
$ docker pull traefik@sha256:1ad308ad1bf633599ebc2083af47f4bf9d8ca40d4144d63f124d36de7ac0d75a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 MB (19119634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e6dd75ac04756e1a94f16f4643a03a0218561111c6a381e26f16113c3b7aa17`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 07 Sep 2018 19:05:07 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Mon, 01 Oct 2018 19:20:09 GMT
COPY file:fb54f3e478b7f28053f85c19581a65576d881edfbe24517582d390b0e92fbc1d in / 
# Mon, 01 Oct 2018 19:20:15 GMT
EXPOSE 80/tcp
# Mon, 01 Oct 2018 19:20:15 GMT
ENTRYPOINT ["/traefik"]
# Mon, 01 Oct 2018 19:20:16 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:c6e5aced14a22b72f0fd545bec131cc37ac8382fae12614369232b12bf5cc1bf`  
		Last Modified: Fri, 07 Sep 2018 19:06:05 GMT  
		Size: 135.0 KB (135037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02c2ae24fba36db0f766e9d854c22ad91fb1548da17db59ec78e7f9701ac7952`  
		Last Modified: Mon, 01 Oct 2018 19:20:50 GMT  
		Size: 19.0 MB (18984597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7` - linux; arm variant v6

```console
$ docker pull traefik@sha256:1af76ce94edb2c03564c6662444289da7a888a1091177b44b0d0b6a59e7bbaae
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.0 MB (17969850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09bcac16cae70d0f6bd328ac299999387fd82856ea6cb544f5c5c4f908f9f12b`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 21 Aug 2018 08:15:56 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Tue, 02 Oct 2018 07:50:30 GMT
COPY file:30f4b7a9b040953f993951ae6783c530a57eb379ef4ae907de11ce9034b76019 in / 
# Tue, 02 Oct 2018 07:50:31 GMT
EXPOSE 80/tcp
# Tue, 02 Oct 2018 07:50:31 GMT
ENTRYPOINT ["/traefik"]
# Tue, 02 Oct 2018 07:50:31 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:9dac48e51b2381c7f7a8cbe16e8670b5d4bfcbd991c139ad10d2e46f233def67`  
		Last Modified: Tue, 21 Aug 2018 08:16:23 GMT  
		Size: 135.1 KB (135078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d01d583353367de518a9965980c7ade3262f055b561b54d5ac97b4d5b4ab2c25`  
		Last Modified: Tue, 02 Oct 2018 07:51:01 GMT  
		Size: 17.8 MB (17834772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7.1`

```console
$ docker pull traefik@sha256:bfdb516861ab9e54e4af3d151f5e25a04ea3d0e7147be2ce8a6f33723874413d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:1.7.1` - linux; amd64

```console
$ docker pull traefik@sha256:1ad308ad1bf633599ebc2083af47f4bf9d8ca40d4144d63f124d36de7ac0d75a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 MB (19119634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e6dd75ac04756e1a94f16f4643a03a0218561111c6a381e26f16113c3b7aa17`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 07 Sep 2018 19:05:07 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Mon, 01 Oct 2018 19:20:09 GMT
COPY file:fb54f3e478b7f28053f85c19581a65576d881edfbe24517582d390b0e92fbc1d in / 
# Mon, 01 Oct 2018 19:20:15 GMT
EXPOSE 80/tcp
# Mon, 01 Oct 2018 19:20:15 GMT
ENTRYPOINT ["/traefik"]
# Mon, 01 Oct 2018 19:20:16 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:c6e5aced14a22b72f0fd545bec131cc37ac8382fae12614369232b12bf5cc1bf`  
		Last Modified: Fri, 07 Sep 2018 19:06:05 GMT  
		Size: 135.0 KB (135037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02c2ae24fba36db0f766e9d854c22ad91fb1548da17db59ec78e7f9701ac7952`  
		Last Modified: Mon, 01 Oct 2018 19:20:50 GMT  
		Size: 19.0 MB (18984597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7.1` - linux; arm variant v6

```console
$ docker pull traefik@sha256:1af76ce94edb2c03564c6662444289da7a888a1091177b44b0d0b6a59e7bbaae
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.0 MB (17969850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09bcac16cae70d0f6bd328ac299999387fd82856ea6cb544f5c5c4f908f9f12b`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 21 Aug 2018 08:15:56 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Tue, 02 Oct 2018 07:50:30 GMT
COPY file:30f4b7a9b040953f993951ae6783c530a57eb379ef4ae907de11ce9034b76019 in / 
# Tue, 02 Oct 2018 07:50:31 GMT
EXPOSE 80/tcp
# Tue, 02 Oct 2018 07:50:31 GMT
ENTRYPOINT ["/traefik"]
# Tue, 02 Oct 2018 07:50:31 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:9dac48e51b2381c7f7a8cbe16e8670b5d4bfcbd991c139ad10d2e46f233def67`  
		Last Modified: Tue, 21 Aug 2018 08:16:23 GMT  
		Size: 135.1 KB (135078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d01d583353367de518a9965980c7ade3262f055b561b54d5ac97b4d5b4ab2c25`  
		Last Modified: Tue, 02 Oct 2018 07:51:01 GMT  
		Size: 17.8 MB (17834772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7.1-alpine`

```console
$ docker pull traefik@sha256:2b1fb46aee2f6e5d87208b14cbb6a9d1d5eda4a7f1a4a17ab8f832de0759c585
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:1.7.1-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:1e0f4d722318ac705441be193f6965019a3eee846f3aa40d48dfa56c6d9798c4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.5 MB (21500798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57542fff505e4d985798c5ed4b173a7f0a5b3e2ed10672429bfc0e1683be415f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 03:37:55 GMT
RUN apk --no-cache add ca-certificates
# Mon, 01 Oct 2018 19:20:27 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.1/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Mon, 01 Oct 2018 19:20:27 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Mon, 01 Oct 2018 19:20:28 GMT
EXPOSE 80/tcp
# Mon, 01 Oct 2018 19:20:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 01 Oct 2018 19:20:28 GMT
CMD ["traefik"]
# Mon, 01 Oct 2018 19:20:28 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.1 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:28e7e52160677b87880b5897ce81c2352b11944c633dd1fb403ee5a3ff49d9d5`  
		Last Modified: Mon, 01 Oct 2018 19:21:57 GMT  
		Size: 19.0 MB (18984564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8510aeb5ff7fd39186bfe325ce771cde621ea6c667ed11dbbe1b0355be4e4449`  
		Last Modified: Mon, 01 Oct 2018 19:21:53 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7.1-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:37820a014bd3869905c890ad028452feab94a19d0b745207912d4f942f3d88c7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.3 MB (20290933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6710efd1204343c84b09283ac4897f4f5cba1fa15de40c517ae566c34bff3b6b`
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
# Tue, 02 Oct 2018 07:50:42 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.1/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 02 Oct 2018 07:50:43 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Tue, 02 Oct 2018 07:50:43 GMT
EXPOSE 80/tcp
# Tue, 02 Oct 2018 07:50:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 02 Oct 2018 07:50:44 GMT
CMD ["traefik"]
# Tue, 02 Oct 2018 07:50:44 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.1 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:b08a9ebae1f8d9dedc3337c8840296faccec121b6511aadfd531f7ea70eab031`  
		Last Modified: Tue, 02 Oct 2018 07:51:37 GMT  
		Size: 17.8 MB (17834915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720f6090836af4d55b453c92df751bb01ed9466903b58f4861cf99d0b1e1c7c2`  
		Last Modified: Tue, 02 Oct 2018 07:51:31 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7.1-nanoserver`

**does not exist** (yet?)

## `traefik:1.7.1-nanoserver-sac2016`

**does not exist** (yet?)

## `traefik:1.7-alpine`

```console
$ docker pull traefik@sha256:2b1fb46aee2f6e5d87208b14cbb6a9d1d5eda4a7f1a4a17ab8f832de0759c585
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:1.7-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:1e0f4d722318ac705441be193f6965019a3eee846f3aa40d48dfa56c6d9798c4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.5 MB (21500798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57542fff505e4d985798c5ed4b173a7f0a5b3e2ed10672429bfc0e1683be415f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 03:37:55 GMT
RUN apk --no-cache add ca-certificates
# Mon, 01 Oct 2018 19:20:27 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.1/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Mon, 01 Oct 2018 19:20:27 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Mon, 01 Oct 2018 19:20:28 GMT
EXPOSE 80/tcp
# Mon, 01 Oct 2018 19:20:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 01 Oct 2018 19:20:28 GMT
CMD ["traefik"]
# Mon, 01 Oct 2018 19:20:28 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.1 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:28e7e52160677b87880b5897ce81c2352b11944c633dd1fb403ee5a3ff49d9d5`  
		Last Modified: Mon, 01 Oct 2018 19:21:57 GMT  
		Size: 19.0 MB (18984564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8510aeb5ff7fd39186bfe325ce771cde621ea6c667ed11dbbe1b0355be4e4449`  
		Last Modified: Mon, 01 Oct 2018 19:21:53 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:37820a014bd3869905c890ad028452feab94a19d0b745207912d4f942f3d88c7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.3 MB (20290933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6710efd1204343c84b09283ac4897f4f5cba1fa15de40c517ae566c34bff3b6b`
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
# Tue, 02 Oct 2018 07:50:42 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.1/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 02 Oct 2018 07:50:43 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Tue, 02 Oct 2018 07:50:43 GMT
EXPOSE 80/tcp
# Tue, 02 Oct 2018 07:50:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 02 Oct 2018 07:50:44 GMT
CMD ["traefik"]
# Tue, 02 Oct 2018 07:50:44 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.1 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:b08a9ebae1f8d9dedc3337c8840296faccec121b6511aadfd531f7ea70eab031`  
		Last Modified: Tue, 02 Oct 2018 07:51:37 GMT  
		Size: 17.8 MB (17834915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720f6090836af4d55b453c92df751bb01ed9466903b58f4861cf99d0b1e1c7c2`  
		Last Modified: Tue, 02 Oct 2018 07:51:31 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7-nanoserver`

```console
$ docker pull traefik@sha256:d138c4812f324465c45e8a7b81fc9f29af7a8fc5455c481add813ad4cb1f9b58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2485; amd64

### `traefik:1.7-nanoserver` - windows version 10.0.14393.2485; amd64

```console
$ docker pull traefik@sha256:2aa1b3e8cf27cdd4ad29278ce3ddef7970b773bdfb8c92d74980c241f88cf2e9
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.2 MB (452231768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac2dc54b2e6151d8298cc57adc0183f05596e4f3dae21f7938919ec43816c2a7`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 11 Sep 2018 16:53:25 GMT
RUN Install update 10.0.14393.2485
# Tue, 25 Sep 2018 09:16:06 GMT
RUN cmd /S /C #(nop) COPY file:9cea0f646012d174ebf75b6fce9717e7e54f1be8351f7d32004f71fe9884e736 in \traefik.exe 
# Tue, 25 Sep 2018 09:16:09 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Tue, 25 Sep 2018 09:16:10 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 25 Sep 2018 09:16:12 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:209df75c819f9748a77b840dec5fdddf07d6bc797b250197d2ee03e49387013f`  
		Last Modified: Tue, 25 Sep 2018 09:16:34 GMT  
		Size: 19.0 MB (19003966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7bf1b828f5a63000df15676af7e4e7b92e583dc9f734a2d9013aa9ab31ef125`  
		Last Modified: Tue, 25 Sep 2018 09:16:29 GMT  
		Size: 942.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09f58ab4ac17e4c99f0f43fa093c02b4ed7def82e24012b93468c237c5599872`  
		Last Modified: Tue, 25 Sep 2018 09:16:28 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6b7324ba9494198b85200b687c0a63c4937c0a56d275f23aeaef7d9394a06d6`  
		Last Modified: Tue, 25 Sep 2018 09:16:28 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:d138c4812f324465c45e8a7b81fc9f29af7a8fc5455c481add813ad4cb1f9b58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2485; amd64

### `traefik:1.7-nanoserver-sac2016` - windows version 10.0.14393.2485; amd64

```console
$ docker pull traefik@sha256:2aa1b3e8cf27cdd4ad29278ce3ddef7970b773bdfb8c92d74980c241f88cf2e9
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.2 MB (452231768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac2dc54b2e6151d8298cc57adc0183f05596e4f3dae21f7938919ec43816c2a7`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 11 Sep 2018 16:53:25 GMT
RUN Install update 10.0.14393.2485
# Tue, 25 Sep 2018 09:16:06 GMT
RUN cmd /S /C #(nop) COPY file:9cea0f646012d174ebf75b6fce9717e7e54f1be8351f7d32004f71fe9884e736 in \traefik.exe 
# Tue, 25 Sep 2018 09:16:09 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Tue, 25 Sep 2018 09:16:10 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 25 Sep 2018 09:16:12 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:209df75c819f9748a77b840dec5fdddf07d6bc797b250197d2ee03e49387013f`  
		Last Modified: Tue, 25 Sep 2018 09:16:34 GMT  
		Size: 19.0 MB (19003966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7bf1b828f5a63000df15676af7e4e7b92e583dc9f734a2d9013aa9ab31ef125`  
		Last Modified: Tue, 25 Sep 2018 09:16:29 GMT  
		Size: 942.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09f58ab4ac17e4c99f0f43fa093c02b4ed7def82e24012b93468c237c5599872`  
		Last Modified: Tue, 25 Sep 2018 09:16:28 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6b7324ba9494198b85200b687c0a63c4937c0a56d275f23aeaef7d9394a06d6`  
		Last Modified: Tue, 25 Sep 2018 09:16:28 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:alpine`

```console
$ docker pull traefik@sha256:2b1fb46aee2f6e5d87208b14cbb6a9d1d5eda4a7f1a4a17ab8f832de0759c585
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:alpine` - linux; amd64

```console
$ docker pull traefik@sha256:1e0f4d722318ac705441be193f6965019a3eee846f3aa40d48dfa56c6d9798c4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.5 MB (21500798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57542fff505e4d985798c5ed4b173a7f0a5b3e2ed10672429bfc0e1683be415f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 03:37:55 GMT
RUN apk --no-cache add ca-certificates
# Mon, 01 Oct 2018 19:20:27 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.1/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Mon, 01 Oct 2018 19:20:27 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Mon, 01 Oct 2018 19:20:28 GMT
EXPOSE 80/tcp
# Mon, 01 Oct 2018 19:20:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 01 Oct 2018 19:20:28 GMT
CMD ["traefik"]
# Mon, 01 Oct 2018 19:20:28 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.1 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:28e7e52160677b87880b5897ce81c2352b11944c633dd1fb403ee5a3ff49d9d5`  
		Last Modified: Mon, 01 Oct 2018 19:21:57 GMT  
		Size: 19.0 MB (18984564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8510aeb5ff7fd39186bfe325ce771cde621ea6c667ed11dbbe1b0355be4e4449`  
		Last Modified: Mon, 01 Oct 2018 19:21:53 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:37820a014bd3869905c890ad028452feab94a19d0b745207912d4f942f3d88c7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.3 MB (20290933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6710efd1204343c84b09283ac4897f4f5cba1fa15de40c517ae566c34bff3b6b`
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
# Tue, 02 Oct 2018 07:50:42 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.1/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 02 Oct 2018 07:50:43 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Tue, 02 Oct 2018 07:50:43 GMT
EXPOSE 80/tcp
# Tue, 02 Oct 2018 07:50:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 02 Oct 2018 07:50:44 GMT
CMD ["traefik"]
# Tue, 02 Oct 2018 07:50:44 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.1 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:b08a9ebae1f8d9dedc3337c8840296faccec121b6511aadfd531f7ea70eab031`  
		Last Modified: Tue, 02 Oct 2018 07:51:37 GMT  
		Size: 17.8 MB (17834915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720f6090836af4d55b453c92df751bb01ed9466903b58f4861cf99d0b1e1c7c2`  
		Last Modified: Tue, 02 Oct 2018 07:51:31 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:latest`

```console
$ docker pull traefik@sha256:748a2f11ff2ac1d9f6ee35bcb02b2cec4c6f84b33aeb1e1eaa4101f2a9d9a2a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:latest` - linux; amd64

```console
$ docker pull traefik@sha256:1ad308ad1bf633599ebc2083af47f4bf9d8ca40d4144d63f124d36de7ac0d75a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 MB (19119634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e6dd75ac04756e1a94f16f4643a03a0218561111c6a381e26f16113c3b7aa17`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 07 Sep 2018 19:05:07 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Mon, 01 Oct 2018 19:20:09 GMT
COPY file:fb54f3e478b7f28053f85c19581a65576d881edfbe24517582d390b0e92fbc1d in / 
# Mon, 01 Oct 2018 19:20:15 GMT
EXPOSE 80/tcp
# Mon, 01 Oct 2018 19:20:15 GMT
ENTRYPOINT ["/traefik"]
# Mon, 01 Oct 2018 19:20:16 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:c6e5aced14a22b72f0fd545bec131cc37ac8382fae12614369232b12bf5cc1bf`  
		Last Modified: Fri, 07 Sep 2018 19:06:05 GMT  
		Size: 135.0 KB (135037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02c2ae24fba36db0f766e9d854c22ad91fb1548da17db59ec78e7f9701ac7952`  
		Last Modified: Mon, 01 Oct 2018 19:20:50 GMT  
		Size: 19.0 MB (18984597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:maroilles`

```console
$ docker pull traefik@sha256:bfdb516861ab9e54e4af3d151f5e25a04ea3d0e7147be2ce8a6f33723874413d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:maroilles` - linux; amd64

```console
$ docker pull traefik@sha256:1ad308ad1bf633599ebc2083af47f4bf9d8ca40d4144d63f124d36de7ac0d75a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 MB (19119634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e6dd75ac04756e1a94f16f4643a03a0218561111c6a381e26f16113c3b7aa17`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 07 Sep 2018 19:05:07 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Mon, 01 Oct 2018 19:20:09 GMT
COPY file:fb54f3e478b7f28053f85c19581a65576d881edfbe24517582d390b0e92fbc1d in / 
# Mon, 01 Oct 2018 19:20:15 GMT
EXPOSE 80/tcp
# Mon, 01 Oct 2018 19:20:15 GMT
ENTRYPOINT ["/traefik"]
# Mon, 01 Oct 2018 19:20:16 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:c6e5aced14a22b72f0fd545bec131cc37ac8382fae12614369232b12bf5cc1bf`  
		Last Modified: Fri, 07 Sep 2018 19:06:05 GMT  
		Size: 135.0 KB (135037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02c2ae24fba36db0f766e9d854c22ad91fb1548da17db59ec78e7f9701ac7952`  
		Last Modified: Mon, 01 Oct 2018 19:20:50 GMT  
		Size: 19.0 MB (18984597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:maroilles` - linux; arm variant v6

```console
$ docker pull traefik@sha256:1af76ce94edb2c03564c6662444289da7a888a1091177b44b0d0b6a59e7bbaae
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.0 MB (17969850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09bcac16cae70d0f6bd328ac299999387fd82856ea6cb544f5c5c4f908f9f12b`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 21 Aug 2018 08:15:56 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Tue, 02 Oct 2018 07:50:30 GMT
COPY file:30f4b7a9b040953f993951ae6783c530a57eb379ef4ae907de11ce9034b76019 in / 
# Tue, 02 Oct 2018 07:50:31 GMT
EXPOSE 80/tcp
# Tue, 02 Oct 2018 07:50:31 GMT
ENTRYPOINT ["/traefik"]
# Tue, 02 Oct 2018 07:50:31 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:9dac48e51b2381c7f7a8cbe16e8670b5d4bfcbd991c139ad10d2e46f233def67`  
		Last Modified: Tue, 21 Aug 2018 08:16:23 GMT  
		Size: 135.1 KB (135078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d01d583353367de518a9965980c7ade3262f055b561b54d5ac97b4d5b4ab2c25`  
		Last Modified: Tue, 02 Oct 2018 07:51:01 GMT  
		Size: 17.8 MB (17834772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:maroilles-alpine`

```console
$ docker pull traefik@sha256:2b1fb46aee2f6e5d87208b14cbb6a9d1d5eda4a7f1a4a17ab8f832de0759c585
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:maroilles-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:1e0f4d722318ac705441be193f6965019a3eee846f3aa40d48dfa56c6d9798c4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.5 MB (21500798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57542fff505e4d985798c5ed4b173a7f0a5b3e2ed10672429bfc0e1683be415f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 03:37:55 GMT
RUN apk --no-cache add ca-certificates
# Mon, 01 Oct 2018 19:20:27 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.1/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Mon, 01 Oct 2018 19:20:27 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Mon, 01 Oct 2018 19:20:28 GMT
EXPOSE 80/tcp
# Mon, 01 Oct 2018 19:20:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 01 Oct 2018 19:20:28 GMT
CMD ["traefik"]
# Mon, 01 Oct 2018 19:20:28 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.1 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:28e7e52160677b87880b5897ce81c2352b11944c633dd1fb403ee5a3ff49d9d5`  
		Last Modified: Mon, 01 Oct 2018 19:21:57 GMT  
		Size: 19.0 MB (18984564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8510aeb5ff7fd39186bfe325ce771cde621ea6c667ed11dbbe1b0355be4e4449`  
		Last Modified: Mon, 01 Oct 2018 19:21:53 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:maroilles-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:37820a014bd3869905c890ad028452feab94a19d0b745207912d4f942f3d88c7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.3 MB (20290933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6710efd1204343c84b09283ac4897f4f5cba1fa15de40c517ae566c34bff3b6b`
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
# Tue, 02 Oct 2018 07:50:42 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.1/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 02 Oct 2018 07:50:43 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Tue, 02 Oct 2018 07:50:43 GMT
EXPOSE 80/tcp
# Tue, 02 Oct 2018 07:50:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 02 Oct 2018 07:50:44 GMT
CMD ["traefik"]
# Tue, 02 Oct 2018 07:50:44 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.1 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:b08a9ebae1f8d9dedc3337c8840296faccec121b6511aadfd531f7ea70eab031`  
		Last Modified: Tue, 02 Oct 2018 07:51:37 GMT  
		Size: 17.8 MB (17834915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720f6090836af4d55b453c92df751bb01ed9466903b58f4861cf99d0b1e1c7c2`  
		Last Modified: Tue, 02 Oct 2018 07:51:31 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:maroilles-nanoserver`

```console
$ docker pull traefik@sha256:d138c4812f324465c45e8a7b81fc9f29af7a8fc5455c481add813ad4cb1f9b58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2485; amd64

### `traefik:maroilles-nanoserver` - windows version 10.0.14393.2485; amd64

```console
$ docker pull traefik@sha256:2aa1b3e8cf27cdd4ad29278ce3ddef7970b773bdfb8c92d74980c241f88cf2e9
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.2 MB (452231768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac2dc54b2e6151d8298cc57adc0183f05596e4f3dae21f7938919ec43816c2a7`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 11 Sep 2018 16:53:25 GMT
RUN Install update 10.0.14393.2485
# Tue, 25 Sep 2018 09:16:06 GMT
RUN cmd /S /C #(nop) COPY file:9cea0f646012d174ebf75b6fce9717e7e54f1be8351f7d32004f71fe9884e736 in \traefik.exe 
# Tue, 25 Sep 2018 09:16:09 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Tue, 25 Sep 2018 09:16:10 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 25 Sep 2018 09:16:12 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:209df75c819f9748a77b840dec5fdddf07d6bc797b250197d2ee03e49387013f`  
		Last Modified: Tue, 25 Sep 2018 09:16:34 GMT  
		Size: 19.0 MB (19003966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7bf1b828f5a63000df15676af7e4e7b92e583dc9f734a2d9013aa9ab31ef125`  
		Last Modified: Tue, 25 Sep 2018 09:16:29 GMT  
		Size: 942.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09f58ab4ac17e4c99f0f43fa093c02b4ed7def82e24012b93468c237c5599872`  
		Last Modified: Tue, 25 Sep 2018 09:16:28 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6b7324ba9494198b85200b687c0a63c4937c0a56d275f23aeaef7d9394a06d6`  
		Last Modified: Tue, 25 Sep 2018 09:16:28 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:maroilles-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:d138c4812f324465c45e8a7b81fc9f29af7a8fc5455c481add813ad4cb1f9b58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2485; amd64

### `traefik:maroilles-nanoserver-sac2016` - windows version 10.0.14393.2485; amd64

```console
$ docker pull traefik@sha256:2aa1b3e8cf27cdd4ad29278ce3ddef7970b773bdfb8c92d74980c241f88cf2e9
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.2 MB (452231768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac2dc54b2e6151d8298cc57adc0183f05596e4f3dae21f7938919ec43816c2a7`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 11 Sep 2018 16:53:25 GMT
RUN Install update 10.0.14393.2485
# Tue, 25 Sep 2018 09:16:06 GMT
RUN cmd /S /C #(nop) COPY file:9cea0f646012d174ebf75b6fce9717e7e54f1be8351f7d32004f71fe9884e736 in \traefik.exe 
# Tue, 25 Sep 2018 09:16:09 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Tue, 25 Sep 2018 09:16:10 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 25 Sep 2018 09:16:12 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:209df75c819f9748a77b840dec5fdddf07d6bc797b250197d2ee03e49387013f`  
		Last Modified: Tue, 25 Sep 2018 09:16:34 GMT  
		Size: 19.0 MB (19003966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7bf1b828f5a63000df15676af7e4e7b92e583dc9f734a2d9013aa9ab31ef125`  
		Last Modified: Tue, 25 Sep 2018 09:16:29 GMT  
		Size: 942.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09f58ab4ac17e4c99f0f43fa093c02b4ed7def82e24012b93468c237c5599872`  
		Last Modified: Tue, 25 Sep 2018 09:16:28 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6b7324ba9494198b85200b687c0a63c4937c0a56d275f23aeaef7d9394a06d6`  
		Last Modified: Tue, 25 Sep 2018 09:16:28 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:nanoserver`

```console
$ docker pull traefik@sha256:d138c4812f324465c45e8a7b81fc9f29af7a8fc5455c481add813ad4cb1f9b58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2485; amd64

### `traefik:nanoserver` - windows version 10.0.14393.2485; amd64

```console
$ docker pull traefik@sha256:2aa1b3e8cf27cdd4ad29278ce3ddef7970b773bdfb8c92d74980c241f88cf2e9
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.2 MB (452231768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac2dc54b2e6151d8298cc57adc0183f05596e4f3dae21f7938919ec43816c2a7`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 11 Sep 2018 16:53:25 GMT
RUN Install update 10.0.14393.2485
# Tue, 25 Sep 2018 09:16:06 GMT
RUN cmd /S /C #(nop) COPY file:9cea0f646012d174ebf75b6fce9717e7e54f1be8351f7d32004f71fe9884e736 in \traefik.exe 
# Tue, 25 Sep 2018 09:16:09 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Tue, 25 Sep 2018 09:16:10 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 25 Sep 2018 09:16:12 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:209df75c819f9748a77b840dec5fdddf07d6bc797b250197d2ee03e49387013f`  
		Last Modified: Tue, 25 Sep 2018 09:16:34 GMT  
		Size: 19.0 MB (19003966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7bf1b828f5a63000df15676af7e4e7b92e583dc9f734a2d9013aa9ab31ef125`  
		Last Modified: Tue, 25 Sep 2018 09:16:29 GMT  
		Size: 942.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09f58ab4ac17e4c99f0f43fa093c02b4ed7def82e24012b93468c237c5599872`  
		Last Modified: Tue, 25 Sep 2018 09:16:28 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6b7324ba9494198b85200b687c0a63c4937c0a56d275f23aeaef7d9394a06d6`  
		Last Modified: Tue, 25 Sep 2018 09:16:28 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:nanoserver-sac2016`

```console
$ docker pull traefik@sha256:d138c4812f324465c45e8a7b81fc9f29af7a8fc5455c481add813ad4cb1f9b58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2485; amd64

### `traefik:nanoserver-sac2016` - windows version 10.0.14393.2485; amd64

```console
$ docker pull traefik@sha256:2aa1b3e8cf27cdd4ad29278ce3ddef7970b773bdfb8c92d74980c241f88cf2e9
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.2 MB (452231768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac2dc54b2e6151d8298cc57adc0183f05596e4f3dae21f7938919ec43816c2a7`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 11 Sep 2018 16:53:25 GMT
RUN Install update 10.0.14393.2485
# Tue, 25 Sep 2018 09:16:06 GMT
RUN cmd /S /C #(nop) COPY file:9cea0f646012d174ebf75b6fce9717e7e54f1be8351f7d32004f71fe9884e736 in \traefik.exe 
# Tue, 25 Sep 2018 09:16:09 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Tue, 25 Sep 2018 09:16:10 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 25 Sep 2018 09:16:12 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:209df75c819f9748a77b840dec5fdddf07d6bc797b250197d2ee03e49387013f`  
		Last Modified: Tue, 25 Sep 2018 09:16:34 GMT  
		Size: 19.0 MB (19003966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7bf1b828f5a63000df15676af7e4e7b92e583dc9f734a2d9013aa9ab31ef125`  
		Last Modified: Tue, 25 Sep 2018 09:16:29 GMT  
		Size: 942.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09f58ab4ac17e4c99f0f43fa093c02b4ed7def82e24012b93468c237c5599872`  
		Last Modified: Tue, 25 Sep 2018 09:16:28 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6b7324ba9494198b85200b687c0a63c4937c0a56d275f23aeaef7d9394a06d6`  
		Last Modified: Tue, 25 Sep 2018 09:16:28 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7`

```console
$ docker pull traefik@sha256:bfdb516861ab9e54e4af3d151f5e25a04ea3d0e7147be2ce8a6f33723874413d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:v1.7` - linux; amd64

```console
$ docker pull traefik@sha256:1ad308ad1bf633599ebc2083af47f4bf9d8ca40d4144d63f124d36de7ac0d75a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 MB (19119634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e6dd75ac04756e1a94f16f4643a03a0218561111c6a381e26f16113c3b7aa17`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 07 Sep 2018 19:05:07 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Mon, 01 Oct 2018 19:20:09 GMT
COPY file:fb54f3e478b7f28053f85c19581a65576d881edfbe24517582d390b0e92fbc1d in / 
# Mon, 01 Oct 2018 19:20:15 GMT
EXPOSE 80/tcp
# Mon, 01 Oct 2018 19:20:15 GMT
ENTRYPOINT ["/traefik"]
# Mon, 01 Oct 2018 19:20:16 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:c6e5aced14a22b72f0fd545bec131cc37ac8382fae12614369232b12bf5cc1bf`  
		Last Modified: Fri, 07 Sep 2018 19:06:05 GMT  
		Size: 135.0 KB (135037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02c2ae24fba36db0f766e9d854c22ad91fb1548da17db59ec78e7f9701ac7952`  
		Last Modified: Mon, 01 Oct 2018 19:20:50 GMT  
		Size: 19.0 MB (18984597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7` - linux; arm variant v6

```console
$ docker pull traefik@sha256:1af76ce94edb2c03564c6662444289da7a888a1091177b44b0d0b6a59e7bbaae
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.0 MB (17969850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09bcac16cae70d0f6bd328ac299999387fd82856ea6cb544f5c5c4f908f9f12b`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 21 Aug 2018 08:15:56 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Tue, 02 Oct 2018 07:50:30 GMT
COPY file:30f4b7a9b040953f993951ae6783c530a57eb379ef4ae907de11ce9034b76019 in / 
# Tue, 02 Oct 2018 07:50:31 GMT
EXPOSE 80/tcp
# Tue, 02 Oct 2018 07:50:31 GMT
ENTRYPOINT ["/traefik"]
# Tue, 02 Oct 2018 07:50:31 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:9dac48e51b2381c7f7a8cbe16e8670b5d4bfcbd991c139ad10d2e46f233def67`  
		Last Modified: Tue, 21 Aug 2018 08:16:23 GMT  
		Size: 135.1 KB (135078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d01d583353367de518a9965980c7ade3262f055b561b54d5ac97b4d5b4ab2c25`  
		Last Modified: Tue, 02 Oct 2018 07:51:01 GMT  
		Size: 17.8 MB (17834772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7.1`

```console
$ docker pull traefik@sha256:bfdb516861ab9e54e4af3d151f5e25a04ea3d0e7147be2ce8a6f33723874413d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:v1.7.1` - linux; amd64

```console
$ docker pull traefik@sha256:1ad308ad1bf633599ebc2083af47f4bf9d8ca40d4144d63f124d36de7ac0d75a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 MB (19119634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e6dd75ac04756e1a94f16f4643a03a0218561111c6a381e26f16113c3b7aa17`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 07 Sep 2018 19:05:07 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Mon, 01 Oct 2018 19:20:09 GMT
COPY file:fb54f3e478b7f28053f85c19581a65576d881edfbe24517582d390b0e92fbc1d in / 
# Mon, 01 Oct 2018 19:20:15 GMT
EXPOSE 80/tcp
# Mon, 01 Oct 2018 19:20:15 GMT
ENTRYPOINT ["/traefik"]
# Mon, 01 Oct 2018 19:20:16 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:c6e5aced14a22b72f0fd545bec131cc37ac8382fae12614369232b12bf5cc1bf`  
		Last Modified: Fri, 07 Sep 2018 19:06:05 GMT  
		Size: 135.0 KB (135037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02c2ae24fba36db0f766e9d854c22ad91fb1548da17db59ec78e7f9701ac7952`  
		Last Modified: Mon, 01 Oct 2018 19:20:50 GMT  
		Size: 19.0 MB (18984597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7.1` - linux; arm variant v6

```console
$ docker pull traefik@sha256:1af76ce94edb2c03564c6662444289da7a888a1091177b44b0d0b6a59e7bbaae
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.0 MB (17969850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09bcac16cae70d0f6bd328ac299999387fd82856ea6cb544f5c5c4f908f9f12b`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 21 Aug 2018 08:15:56 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Tue, 02 Oct 2018 07:50:30 GMT
COPY file:30f4b7a9b040953f993951ae6783c530a57eb379ef4ae907de11ce9034b76019 in / 
# Tue, 02 Oct 2018 07:50:31 GMT
EXPOSE 80/tcp
# Tue, 02 Oct 2018 07:50:31 GMT
ENTRYPOINT ["/traefik"]
# Tue, 02 Oct 2018 07:50:31 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:9dac48e51b2381c7f7a8cbe16e8670b5d4bfcbd991c139ad10d2e46f233def67`  
		Last Modified: Tue, 21 Aug 2018 08:16:23 GMT  
		Size: 135.1 KB (135078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d01d583353367de518a9965980c7ade3262f055b561b54d5ac97b4d5b4ab2c25`  
		Last Modified: Tue, 02 Oct 2018 07:51:01 GMT  
		Size: 17.8 MB (17834772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7.1-alpine`

```console
$ docker pull traefik@sha256:2b1fb46aee2f6e5d87208b14cbb6a9d1d5eda4a7f1a4a17ab8f832de0759c585
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:v1.7.1-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:1e0f4d722318ac705441be193f6965019a3eee846f3aa40d48dfa56c6d9798c4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.5 MB (21500798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57542fff505e4d985798c5ed4b173a7f0a5b3e2ed10672429bfc0e1683be415f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 03:37:55 GMT
RUN apk --no-cache add ca-certificates
# Mon, 01 Oct 2018 19:20:27 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.1/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Mon, 01 Oct 2018 19:20:27 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Mon, 01 Oct 2018 19:20:28 GMT
EXPOSE 80/tcp
# Mon, 01 Oct 2018 19:20:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 01 Oct 2018 19:20:28 GMT
CMD ["traefik"]
# Mon, 01 Oct 2018 19:20:28 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.1 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:28e7e52160677b87880b5897ce81c2352b11944c633dd1fb403ee5a3ff49d9d5`  
		Last Modified: Mon, 01 Oct 2018 19:21:57 GMT  
		Size: 19.0 MB (18984564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8510aeb5ff7fd39186bfe325ce771cde621ea6c667ed11dbbe1b0355be4e4449`  
		Last Modified: Mon, 01 Oct 2018 19:21:53 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7.1-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:37820a014bd3869905c890ad028452feab94a19d0b745207912d4f942f3d88c7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.3 MB (20290933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6710efd1204343c84b09283ac4897f4f5cba1fa15de40c517ae566c34bff3b6b`
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
# Tue, 02 Oct 2018 07:50:42 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.1/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 02 Oct 2018 07:50:43 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Tue, 02 Oct 2018 07:50:43 GMT
EXPOSE 80/tcp
# Tue, 02 Oct 2018 07:50:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 02 Oct 2018 07:50:44 GMT
CMD ["traefik"]
# Tue, 02 Oct 2018 07:50:44 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.1 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:b08a9ebae1f8d9dedc3337c8840296faccec121b6511aadfd531f7ea70eab031`  
		Last Modified: Tue, 02 Oct 2018 07:51:37 GMT  
		Size: 17.8 MB (17834915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720f6090836af4d55b453c92df751bb01ed9466903b58f4861cf99d0b1e1c7c2`  
		Last Modified: Tue, 02 Oct 2018 07:51:31 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7.1-nanoserver`

**does not exist** (yet?)

## `traefik:v1.7.1-nanoserver-sac2016`

**does not exist** (yet?)

## `traefik:v1.7-alpine`

```console
$ docker pull traefik@sha256:2b1fb46aee2f6e5d87208b14cbb6a9d1d5eda4a7f1a4a17ab8f832de0759c585
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:v1.7-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:1e0f4d722318ac705441be193f6965019a3eee846f3aa40d48dfa56c6d9798c4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.5 MB (21500798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57542fff505e4d985798c5ed4b173a7f0a5b3e2ed10672429bfc0e1683be415f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 03:37:55 GMT
RUN apk --no-cache add ca-certificates
# Mon, 01 Oct 2018 19:20:27 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.1/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Mon, 01 Oct 2018 19:20:27 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Mon, 01 Oct 2018 19:20:28 GMT
EXPOSE 80/tcp
# Mon, 01 Oct 2018 19:20:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 01 Oct 2018 19:20:28 GMT
CMD ["traefik"]
# Mon, 01 Oct 2018 19:20:28 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.1 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:28e7e52160677b87880b5897ce81c2352b11944c633dd1fb403ee5a3ff49d9d5`  
		Last Modified: Mon, 01 Oct 2018 19:21:57 GMT  
		Size: 19.0 MB (18984564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8510aeb5ff7fd39186bfe325ce771cde621ea6c667ed11dbbe1b0355be4e4449`  
		Last Modified: Mon, 01 Oct 2018 19:21:53 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:37820a014bd3869905c890ad028452feab94a19d0b745207912d4f942f3d88c7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.3 MB (20290933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6710efd1204343c84b09283ac4897f4f5cba1fa15de40c517ae566c34bff3b6b`
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
# Tue, 02 Oct 2018 07:50:42 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.1/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 02 Oct 2018 07:50:43 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Tue, 02 Oct 2018 07:50:43 GMT
EXPOSE 80/tcp
# Tue, 02 Oct 2018 07:50:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 02 Oct 2018 07:50:44 GMT
CMD ["traefik"]
# Tue, 02 Oct 2018 07:50:44 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.1 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:b08a9ebae1f8d9dedc3337c8840296faccec121b6511aadfd531f7ea70eab031`  
		Last Modified: Tue, 02 Oct 2018 07:51:37 GMT  
		Size: 17.8 MB (17834915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720f6090836af4d55b453c92df751bb01ed9466903b58f4861cf99d0b1e1c7c2`  
		Last Modified: Tue, 02 Oct 2018 07:51:31 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7-nanoserver`

```console
$ docker pull traefik@sha256:d138c4812f324465c45e8a7b81fc9f29af7a8fc5455c481add813ad4cb1f9b58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2485; amd64

### `traefik:v1.7-nanoserver` - windows version 10.0.14393.2485; amd64

```console
$ docker pull traefik@sha256:2aa1b3e8cf27cdd4ad29278ce3ddef7970b773bdfb8c92d74980c241f88cf2e9
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.2 MB (452231768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac2dc54b2e6151d8298cc57adc0183f05596e4f3dae21f7938919ec43816c2a7`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 11 Sep 2018 16:53:25 GMT
RUN Install update 10.0.14393.2485
# Tue, 25 Sep 2018 09:16:06 GMT
RUN cmd /S /C #(nop) COPY file:9cea0f646012d174ebf75b6fce9717e7e54f1be8351f7d32004f71fe9884e736 in \traefik.exe 
# Tue, 25 Sep 2018 09:16:09 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Tue, 25 Sep 2018 09:16:10 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 25 Sep 2018 09:16:12 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:209df75c819f9748a77b840dec5fdddf07d6bc797b250197d2ee03e49387013f`  
		Last Modified: Tue, 25 Sep 2018 09:16:34 GMT  
		Size: 19.0 MB (19003966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7bf1b828f5a63000df15676af7e4e7b92e583dc9f734a2d9013aa9ab31ef125`  
		Last Modified: Tue, 25 Sep 2018 09:16:29 GMT  
		Size: 942.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09f58ab4ac17e4c99f0f43fa093c02b4ed7def82e24012b93468c237c5599872`  
		Last Modified: Tue, 25 Sep 2018 09:16:28 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6b7324ba9494198b85200b687c0a63c4937c0a56d275f23aeaef7d9394a06d6`  
		Last Modified: Tue, 25 Sep 2018 09:16:28 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:d138c4812f324465c45e8a7b81fc9f29af7a8fc5455c481add813ad4cb1f9b58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2485; amd64

### `traefik:v1.7-nanoserver-sac2016` - windows version 10.0.14393.2485; amd64

```console
$ docker pull traefik@sha256:2aa1b3e8cf27cdd4ad29278ce3ddef7970b773bdfb8c92d74980c241f88cf2e9
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.2 MB (452231768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac2dc54b2e6151d8298cc57adc0183f05596e4f3dae21f7938919ec43816c2a7`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 11 Sep 2018 16:53:25 GMT
RUN Install update 10.0.14393.2485
# Tue, 25 Sep 2018 09:16:06 GMT
RUN cmd /S /C #(nop) COPY file:9cea0f646012d174ebf75b6fce9717e7e54f1be8351f7d32004f71fe9884e736 in \traefik.exe 
# Tue, 25 Sep 2018 09:16:09 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Tue, 25 Sep 2018 09:16:10 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 25 Sep 2018 09:16:12 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:209df75c819f9748a77b840dec5fdddf07d6bc797b250197d2ee03e49387013f`  
		Last Modified: Tue, 25 Sep 2018 09:16:34 GMT  
		Size: 19.0 MB (19003966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7bf1b828f5a63000df15676af7e4e7b92e583dc9f734a2d9013aa9ab31ef125`  
		Last Modified: Tue, 25 Sep 2018 09:16:29 GMT  
		Size: 942.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09f58ab4ac17e4c99f0f43fa093c02b4ed7def82e24012b93468c237c5599872`  
		Last Modified: Tue, 25 Sep 2018 09:16:28 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6b7324ba9494198b85200b687c0a63c4937c0a56d275f23aeaef7d9394a06d6`  
		Last Modified: Tue, 25 Sep 2018 09:16:28 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
