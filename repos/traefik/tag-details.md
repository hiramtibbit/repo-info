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
$ docker pull traefik@sha256:b310d46a8b89af2ab8ce55069ee2df51d5bf0f61ba3b7f0a43c32958e6d6e5a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

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

### `traefik:1.7` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:d0ea29c1a7c58587b5d6a591793e1d57013e5d905b13c6172704cd5f1b33d76c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17520979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbdc7fa24aa8d97b3c5d3ad9010f5fa3096e004f7789d2d0b274460b93c69c81`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 21 Aug 2018 08:48:57 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Tue, 02 Oct 2018 09:02:54 GMT
COPY file:1c934f3412dfed94c1f9c2bb4e7ceab2039135121eaa2bce983d02d9af2d93be in / 
# Tue, 02 Oct 2018 09:02:55 GMT
EXPOSE 80/tcp
# Tue, 02 Oct 2018 09:02:55 GMT
ENTRYPOINT ["/traefik"]
# Tue, 02 Oct 2018 09:02:56 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:237f2d395b5468b8fc4fb105187ad5ab71f15a8ae7ddb9042c335afc1d048e22`  
		Last Modified: Tue, 21 Aug 2018 08:50:29 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abb0f47d2d67e59b1be03dae70b025ae6a428fbdc647784f29970d615c61770a`  
		Last Modified: Tue, 02 Oct 2018 09:04:12 GMT  
		Size: 17.4 MB (17385940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7.1`

```console
$ docker pull traefik@sha256:b310d46a8b89af2ab8ce55069ee2df51d5bf0f61ba3b7f0a43c32958e6d6e5a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

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

### `traefik:1.7.1` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:d0ea29c1a7c58587b5d6a591793e1d57013e5d905b13c6172704cd5f1b33d76c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17520979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbdc7fa24aa8d97b3c5d3ad9010f5fa3096e004f7789d2d0b274460b93c69c81`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 21 Aug 2018 08:48:57 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Tue, 02 Oct 2018 09:02:54 GMT
COPY file:1c934f3412dfed94c1f9c2bb4e7ceab2039135121eaa2bce983d02d9af2d93be in / 
# Tue, 02 Oct 2018 09:02:55 GMT
EXPOSE 80/tcp
# Tue, 02 Oct 2018 09:02:55 GMT
ENTRYPOINT ["/traefik"]
# Tue, 02 Oct 2018 09:02:56 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:237f2d395b5468b8fc4fb105187ad5ab71f15a8ae7ddb9042c335afc1d048e22`  
		Last Modified: Tue, 21 Aug 2018 08:50:29 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abb0f47d2d67e59b1be03dae70b025ae6a428fbdc647784f29970d615c61770a`  
		Last Modified: Tue, 02 Oct 2018 09:04:12 GMT  
		Size: 17.4 MB (17385940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7.1-alpine`

```console
$ docker pull traefik@sha256:dc54fee510528cef09ae19830d63ba8e7f22da37cf5959c962584221e08dc052
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

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

### `traefik:1.7.1-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:426a16b61d3d7ea8cbdc4c7f214e4a595d8034007d74b90c8953eb774d423bc0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.8 MB (19794768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41a1bdd41bcf72f45d76a7537f279c06bf794402c8991a5bb219cb2b3c654b10`
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
# Tue, 02 Oct 2018 09:03:29 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.1/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 02 Oct 2018 09:03:36 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Tue, 02 Oct 2018 09:03:36 GMT
EXPOSE 80/tcp
# Tue, 02 Oct 2018 09:03:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 02 Oct 2018 09:03:38 GMT
CMD ["traefik"]
# Tue, 02 Oct 2018 09:03:39 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.1 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:dac47edc26824dfd7280eab64ce97e6dc7afaaa6fe56136162b6a004c5d951d9`  
		Last Modified: Tue, 02 Oct 2018 09:05:44 GMT  
		Size: 17.4 MB (17385977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eb3cf6846d9c4195fc28c2a51d60ab012ef010812fca77cf75c6a9e08ac6894`  
		Last Modified: Tue, 02 Oct 2018 09:05:36 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7.1-nanoserver`

```console
$ docker pull traefik@sha256:f292708df1aaa25d882e383b5ddebe5b1755bec7eadc605a7e0d66cf7ce1e3bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2485; amd64

### `traefik:1.7.1-nanoserver` - windows version 10.0.14393.2485; amd64

```console
$ docker pull traefik@sha256:085d447b30ee77254df872902889cf651b07408a8af5e343084d7867e8be7f75
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.2 MB (452234544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a9dfbf7f5d1c4c00428e89dc0e08c66bb05e3d05b3076b8af5a11921f43b2d8`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 11 Sep 2018 16:53:25 GMT
RUN Install update 10.0.14393.2485
# Tue, 02 Oct 2018 09:15:54 GMT
RUN cmd /S /C #(nop) COPY file:1915325a14783c34932aaf2fbe9ff8219bcd8ebb5b15986082ff6949742a0724 in \traefik.exe 
# Tue, 02 Oct 2018 09:15:57 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Tue, 02 Oct 2018 09:15:58 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 02 Oct 2018 09:15:59 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.1 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:0ed41c06570459d8cdeaa4041c99c14b42f7d4ce28afe8d826372d5d39d1ed3f`  
		Last Modified: Tue, 02 Oct 2018 09:16:19 GMT  
		Size: 19.0 MB (19006739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d4f8e77aa340bc4d9271ef28c529d822decffd2a8a5d7955a16764b75ac9bc`  
		Last Modified: Tue, 02 Oct 2018 09:16:13 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da7994d798c07650e5bc401ddfd0565d6428573f839f798a4e851754b565339e`  
		Last Modified: Tue, 02 Oct 2018 09:16:14 GMT  
		Size: 943.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f92a7926b8df569ac0f2e630b0f44e9f62a00496ddb7af93b2b5e046212d563`  
		Last Modified: Tue, 02 Oct 2018 09:16:13 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7.1-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:f292708df1aaa25d882e383b5ddebe5b1755bec7eadc605a7e0d66cf7ce1e3bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2485; amd64

### `traefik:1.7.1-nanoserver-sac2016` - windows version 10.0.14393.2485; amd64

```console
$ docker pull traefik@sha256:085d447b30ee77254df872902889cf651b07408a8af5e343084d7867e8be7f75
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.2 MB (452234544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a9dfbf7f5d1c4c00428e89dc0e08c66bb05e3d05b3076b8af5a11921f43b2d8`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 11 Sep 2018 16:53:25 GMT
RUN Install update 10.0.14393.2485
# Tue, 02 Oct 2018 09:15:54 GMT
RUN cmd /S /C #(nop) COPY file:1915325a14783c34932aaf2fbe9ff8219bcd8ebb5b15986082ff6949742a0724 in \traefik.exe 
# Tue, 02 Oct 2018 09:15:57 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Tue, 02 Oct 2018 09:15:58 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 02 Oct 2018 09:15:59 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.1 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:0ed41c06570459d8cdeaa4041c99c14b42f7d4ce28afe8d826372d5d39d1ed3f`  
		Last Modified: Tue, 02 Oct 2018 09:16:19 GMT  
		Size: 19.0 MB (19006739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d4f8e77aa340bc4d9271ef28c529d822decffd2a8a5d7955a16764b75ac9bc`  
		Last Modified: Tue, 02 Oct 2018 09:16:13 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da7994d798c07650e5bc401ddfd0565d6428573f839f798a4e851754b565339e`  
		Last Modified: Tue, 02 Oct 2018 09:16:14 GMT  
		Size: 943.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f92a7926b8df569ac0f2e630b0f44e9f62a00496ddb7af93b2b5e046212d563`  
		Last Modified: Tue, 02 Oct 2018 09:16:13 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7-alpine`

```console
$ docker pull traefik@sha256:dc54fee510528cef09ae19830d63ba8e7f22da37cf5959c962584221e08dc052
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

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

### `traefik:1.7-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:426a16b61d3d7ea8cbdc4c7f214e4a595d8034007d74b90c8953eb774d423bc0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.8 MB (19794768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41a1bdd41bcf72f45d76a7537f279c06bf794402c8991a5bb219cb2b3c654b10`
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
# Tue, 02 Oct 2018 09:03:29 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.1/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 02 Oct 2018 09:03:36 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Tue, 02 Oct 2018 09:03:36 GMT
EXPOSE 80/tcp
# Tue, 02 Oct 2018 09:03:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 02 Oct 2018 09:03:38 GMT
CMD ["traefik"]
# Tue, 02 Oct 2018 09:03:39 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.1 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:dac47edc26824dfd7280eab64ce97e6dc7afaaa6fe56136162b6a004c5d951d9`  
		Last Modified: Tue, 02 Oct 2018 09:05:44 GMT  
		Size: 17.4 MB (17385977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eb3cf6846d9c4195fc28c2a51d60ab012ef010812fca77cf75c6a9e08ac6894`  
		Last Modified: Tue, 02 Oct 2018 09:05:36 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7-nanoserver`

```console
$ docker pull traefik@sha256:f292708df1aaa25d882e383b5ddebe5b1755bec7eadc605a7e0d66cf7ce1e3bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2485; amd64

### `traefik:1.7-nanoserver` - windows version 10.0.14393.2485; amd64

```console
$ docker pull traefik@sha256:085d447b30ee77254df872902889cf651b07408a8af5e343084d7867e8be7f75
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.2 MB (452234544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a9dfbf7f5d1c4c00428e89dc0e08c66bb05e3d05b3076b8af5a11921f43b2d8`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 11 Sep 2018 16:53:25 GMT
RUN Install update 10.0.14393.2485
# Tue, 02 Oct 2018 09:15:54 GMT
RUN cmd /S /C #(nop) COPY file:1915325a14783c34932aaf2fbe9ff8219bcd8ebb5b15986082ff6949742a0724 in \traefik.exe 
# Tue, 02 Oct 2018 09:15:57 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Tue, 02 Oct 2018 09:15:58 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 02 Oct 2018 09:15:59 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.1 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:0ed41c06570459d8cdeaa4041c99c14b42f7d4ce28afe8d826372d5d39d1ed3f`  
		Last Modified: Tue, 02 Oct 2018 09:16:19 GMT  
		Size: 19.0 MB (19006739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d4f8e77aa340bc4d9271ef28c529d822decffd2a8a5d7955a16764b75ac9bc`  
		Last Modified: Tue, 02 Oct 2018 09:16:13 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da7994d798c07650e5bc401ddfd0565d6428573f839f798a4e851754b565339e`  
		Last Modified: Tue, 02 Oct 2018 09:16:14 GMT  
		Size: 943.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f92a7926b8df569ac0f2e630b0f44e9f62a00496ddb7af93b2b5e046212d563`  
		Last Modified: Tue, 02 Oct 2018 09:16:13 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:f292708df1aaa25d882e383b5ddebe5b1755bec7eadc605a7e0d66cf7ce1e3bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2485; amd64

### `traefik:1.7-nanoserver-sac2016` - windows version 10.0.14393.2485; amd64

```console
$ docker pull traefik@sha256:085d447b30ee77254df872902889cf651b07408a8af5e343084d7867e8be7f75
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.2 MB (452234544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a9dfbf7f5d1c4c00428e89dc0e08c66bb05e3d05b3076b8af5a11921f43b2d8`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 11 Sep 2018 16:53:25 GMT
RUN Install update 10.0.14393.2485
# Tue, 02 Oct 2018 09:15:54 GMT
RUN cmd /S /C #(nop) COPY file:1915325a14783c34932aaf2fbe9ff8219bcd8ebb5b15986082ff6949742a0724 in \traefik.exe 
# Tue, 02 Oct 2018 09:15:57 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Tue, 02 Oct 2018 09:15:58 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 02 Oct 2018 09:15:59 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.1 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:0ed41c06570459d8cdeaa4041c99c14b42f7d4ce28afe8d826372d5d39d1ed3f`  
		Last Modified: Tue, 02 Oct 2018 09:16:19 GMT  
		Size: 19.0 MB (19006739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d4f8e77aa340bc4d9271ef28c529d822decffd2a8a5d7955a16764b75ac9bc`  
		Last Modified: Tue, 02 Oct 2018 09:16:13 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da7994d798c07650e5bc401ddfd0565d6428573f839f798a4e851754b565339e`  
		Last Modified: Tue, 02 Oct 2018 09:16:14 GMT  
		Size: 943.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f92a7926b8df569ac0f2e630b0f44e9f62a00496ddb7af93b2b5e046212d563`  
		Last Modified: Tue, 02 Oct 2018 09:16:13 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:alpine`

```console
$ docker pull traefik@sha256:dc54fee510528cef09ae19830d63ba8e7f22da37cf5959c962584221e08dc052
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

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

### `traefik:alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:426a16b61d3d7ea8cbdc4c7f214e4a595d8034007d74b90c8953eb774d423bc0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.8 MB (19794768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41a1bdd41bcf72f45d76a7537f279c06bf794402c8991a5bb219cb2b3c654b10`
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
# Tue, 02 Oct 2018 09:03:29 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.1/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 02 Oct 2018 09:03:36 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Tue, 02 Oct 2018 09:03:36 GMT
EXPOSE 80/tcp
# Tue, 02 Oct 2018 09:03:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 02 Oct 2018 09:03:38 GMT
CMD ["traefik"]
# Tue, 02 Oct 2018 09:03:39 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.1 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:dac47edc26824dfd7280eab64ce97e6dc7afaaa6fe56136162b6a004c5d951d9`  
		Last Modified: Tue, 02 Oct 2018 09:05:44 GMT  
		Size: 17.4 MB (17385977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eb3cf6846d9c4195fc28c2a51d60ab012ef010812fca77cf75c6a9e08ac6894`  
		Last Modified: Tue, 02 Oct 2018 09:05:36 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:latest`

```console
$ docker pull traefik@sha256:b310d46a8b89af2ab8ce55069ee2df51d5bf0f61ba3b7f0a43c32958e6d6e5a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

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

### `traefik:latest` - linux; arm variant v6

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

### `traefik:latest` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:d0ea29c1a7c58587b5d6a591793e1d57013e5d905b13c6172704cd5f1b33d76c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17520979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbdc7fa24aa8d97b3c5d3ad9010f5fa3096e004f7789d2d0b274460b93c69c81`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 21 Aug 2018 08:48:57 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Tue, 02 Oct 2018 09:02:54 GMT
COPY file:1c934f3412dfed94c1f9c2bb4e7ceab2039135121eaa2bce983d02d9af2d93be in / 
# Tue, 02 Oct 2018 09:02:55 GMT
EXPOSE 80/tcp
# Tue, 02 Oct 2018 09:02:55 GMT
ENTRYPOINT ["/traefik"]
# Tue, 02 Oct 2018 09:02:56 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:237f2d395b5468b8fc4fb105187ad5ab71f15a8ae7ddb9042c335afc1d048e22`  
		Last Modified: Tue, 21 Aug 2018 08:50:29 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abb0f47d2d67e59b1be03dae70b025ae6a428fbdc647784f29970d615c61770a`  
		Last Modified: Tue, 02 Oct 2018 09:04:12 GMT  
		Size: 17.4 MB (17385940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:maroilles`

```console
$ docker pull traefik@sha256:b310d46a8b89af2ab8ce55069ee2df51d5bf0f61ba3b7f0a43c32958e6d6e5a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

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

### `traefik:maroilles` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:d0ea29c1a7c58587b5d6a591793e1d57013e5d905b13c6172704cd5f1b33d76c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17520979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbdc7fa24aa8d97b3c5d3ad9010f5fa3096e004f7789d2d0b274460b93c69c81`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 21 Aug 2018 08:48:57 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Tue, 02 Oct 2018 09:02:54 GMT
COPY file:1c934f3412dfed94c1f9c2bb4e7ceab2039135121eaa2bce983d02d9af2d93be in / 
# Tue, 02 Oct 2018 09:02:55 GMT
EXPOSE 80/tcp
# Tue, 02 Oct 2018 09:02:55 GMT
ENTRYPOINT ["/traefik"]
# Tue, 02 Oct 2018 09:02:56 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:237f2d395b5468b8fc4fb105187ad5ab71f15a8ae7ddb9042c335afc1d048e22`  
		Last Modified: Tue, 21 Aug 2018 08:50:29 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abb0f47d2d67e59b1be03dae70b025ae6a428fbdc647784f29970d615c61770a`  
		Last Modified: Tue, 02 Oct 2018 09:04:12 GMT  
		Size: 17.4 MB (17385940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:maroilles-alpine`

```console
$ docker pull traefik@sha256:dc54fee510528cef09ae19830d63ba8e7f22da37cf5959c962584221e08dc052
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

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

### `traefik:maroilles-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:426a16b61d3d7ea8cbdc4c7f214e4a595d8034007d74b90c8953eb774d423bc0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.8 MB (19794768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41a1bdd41bcf72f45d76a7537f279c06bf794402c8991a5bb219cb2b3c654b10`
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
# Tue, 02 Oct 2018 09:03:29 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.1/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 02 Oct 2018 09:03:36 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Tue, 02 Oct 2018 09:03:36 GMT
EXPOSE 80/tcp
# Tue, 02 Oct 2018 09:03:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 02 Oct 2018 09:03:38 GMT
CMD ["traefik"]
# Tue, 02 Oct 2018 09:03:39 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.1 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:dac47edc26824dfd7280eab64ce97e6dc7afaaa6fe56136162b6a004c5d951d9`  
		Last Modified: Tue, 02 Oct 2018 09:05:44 GMT  
		Size: 17.4 MB (17385977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eb3cf6846d9c4195fc28c2a51d60ab012ef010812fca77cf75c6a9e08ac6894`  
		Last Modified: Tue, 02 Oct 2018 09:05:36 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:maroilles-nanoserver`

```console
$ docker pull traefik@sha256:f292708df1aaa25d882e383b5ddebe5b1755bec7eadc605a7e0d66cf7ce1e3bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2485; amd64

### `traefik:maroilles-nanoserver` - windows version 10.0.14393.2485; amd64

```console
$ docker pull traefik@sha256:085d447b30ee77254df872902889cf651b07408a8af5e343084d7867e8be7f75
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.2 MB (452234544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a9dfbf7f5d1c4c00428e89dc0e08c66bb05e3d05b3076b8af5a11921f43b2d8`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 11 Sep 2018 16:53:25 GMT
RUN Install update 10.0.14393.2485
# Tue, 02 Oct 2018 09:15:54 GMT
RUN cmd /S /C #(nop) COPY file:1915325a14783c34932aaf2fbe9ff8219bcd8ebb5b15986082ff6949742a0724 in \traefik.exe 
# Tue, 02 Oct 2018 09:15:57 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Tue, 02 Oct 2018 09:15:58 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 02 Oct 2018 09:15:59 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.1 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:0ed41c06570459d8cdeaa4041c99c14b42f7d4ce28afe8d826372d5d39d1ed3f`  
		Last Modified: Tue, 02 Oct 2018 09:16:19 GMT  
		Size: 19.0 MB (19006739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d4f8e77aa340bc4d9271ef28c529d822decffd2a8a5d7955a16764b75ac9bc`  
		Last Modified: Tue, 02 Oct 2018 09:16:13 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da7994d798c07650e5bc401ddfd0565d6428573f839f798a4e851754b565339e`  
		Last Modified: Tue, 02 Oct 2018 09:16:14 GMT  
		Size: 943.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f92a7926b8df569ac0f2e630b0f44e9f62a00496ddb7af93b2b5e046212d563`  
		Last Modified: Tue, 02 Oct 2018 09:16:13 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:maroilles-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:f292708df1aaa25d882e383b5ddebe5b1755bec7eadc605a7e0d66cf7ce1e3bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2485; amd64

### `traefik:maroilles-nanoserver-sac2016` - windows version 10.0.14393.2485; amd64

```console
$ docker pull traefik@sha256:085d447b30ee77254df872902889cf651b07408a8af5e343084d7867e8be7f75
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.2 MB (452234544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a9dfbf7f5d1c4c00428e89dc0e08c66bb05e3d05b3076b8af5a11921f43b2d8`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 11 Sep 2018 16:53:25 GMT
RUN Install update 10.0.14393.2485
# Tue, 02 Oct 2018 09:15:54 GMT
RUN cmd /S /C #(nop) COPY file:1915325a14783c34932aaf2fbe9ff8219bcd8ebb5b15986082ff6949742a0724 in \traefik.exe 
# Tue, 02 Oct 2018 09:15:57 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Tue, 02 Oct 2018 09:15:58 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 02 Oct 2018 09:15:59 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.1 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:0ed41c06570459d8cdeaa4041c99c14b42f7d4ce28afe8d826372d5d39d1ed3f`  
		Last Modified: Tue, 02 Oct 2018 09:16:19 GMT  
		Size: 19.0 MB (19006739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d4f8e77aa340bc4d9271ef28c529d822decffd2a8a5d7955a16764b75ac9bc`  
		Last Modified: Tue, 02 Oct 2018 09:16:13 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da7994d798c07650e5bc401ddfd0565d6428573f839f798a4e851754b565339e`  
		Last Modified: Tue, 02 Oct 2018 09:16:14 GMT  
		Size: 943.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f92a7926b8df569ac0f2e630b0f44e9f62a00496ddb7af93b2b5e046212d563`  
		Last Modified: Tue, 02 Oct 2018 09:16:13 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:nanoserver`

```console
$ docker pull traefik@sha256:f292708df1aaa25d882e383b5ddebe5b1755bec7eadc605a7e0d66cf7ce1e3bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2485; amd64

### `traefik:nanoserver` - windows version 10.0.14393.2485; amd64

```console
$ docker pull traefik@sha256:085d447b30ee77254df872902889cf651b07408a8af5e343084d7867e8be7f75
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.2 MB (452234544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a9dfbf7f5d1c4c00428e89dc0e08c66bb05e3d05b3076b8af5a11921f43b2d8`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 11 Sep 2018 16:53:25 GMT
RUN Install update 10.0.14393.2485
# Tue, 02 Oct 2018 09:15:54 GMT
RUN cmd /S /C #(nop) COPY file:1915325a14783c34932aaf2fbe9ff8219bcd8ebb5b15986082ff6949742a0724 in \traefik.exe 
# Tue, 02 Oct 2018 09:15:57 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Tue, 02 Oct 2018 09:15:58 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 02 Oct 2018 09:15:59 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.1 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:0ed41c06570459d8cdeaa4041c99c14b42f7d4ce28afe8d826372d5d39d1ed3f`  
		Last Modified: Tue, 02 Oct 2018 09:16:19 GMT  
		Size: 19.0 MB (19006739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d4f8e77aa340bc4d9271ef28c529d822decffd2a8a5d7955a16764b75ac9bc`  
		Last Modified: Tue, 02 Oct 2018 09:16:13 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da7994d798c07650e5bc401ddfd0565d6428573f839f798a4e851754b565339e`  
		Last Modified: Tue, 02 Oct 2018 09:16:14 GMT  
		Size: 943.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f92a7926b8df569ac0f2e630b0f44e9f62a00496ddb7af93b2b5e046212d563`  
		Last Modified: Tue, 02 Oct 2018 09:16:13 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:nanoserver-sac2016`

```console
$ docker pull traefik@sha256:f292708df1aaa25d882e383b5ddebe5b1755bec7eadc605a7e0d66cf7ce1e3bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2485; amd64

### `traefik:nanoserver-sac2016` - windows version 10.0.14393.2485; amd64

```console
$ docker pull traefik@sha256:085d447b30ee77254df872902889cf651b07408a8af5e343084d7867e8be7f75
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.2 MB (452234544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a9dfbf7f5d1c4c00428e89dc0e08c66bb05e3d05b3076b8af5a11921f43b2d8`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 11 Sep 2018 16:53:25 GMT
RUN Install update 10.0.14393.2485
# Tue, 02 Oct 2018 09:15:54 GMT
RUN cmd /S /C #(nop) COPY file:1915325a14783c34932aaf2fbe9ff8219bcd8ebb5b15986082ff6949742a0724 in \traefik.exe 
# Tue, 02 Oct 2018 09:15:57 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Tue, 02 Oct 2018 09:15:58 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 02 Oct 2018 09:15:59 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.1 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:0ed41c06570459d8cdeaa4041c99c14b42f7d4ce28afe8d826372d5d39d1ed3f`  
		Last Modified: Tue, 02 Oct 2018 09:16:19 GMT  
		Size: 19.0 MB (19006739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d4f8e77aa340bc4d9271ef28c529d822decffd2a8a5d7955a16764b75ac9bc`  
		Last Modified: Tue, 02 Oct 2018 09:16:13 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da7994d798c07650e5bc401ddfd0565d6428573f839f798a4e851754b565339e`  
		Last Modified: Tue, 02 Oct 2018 09:16:14 GMT  
		Size: 943.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f92a7926b8df569ac0f2e630b0f44e9f62a00496ddb7af93b2b5e046212d563`  
		Last Modified: Tue, 02 Oct 2018 09:16:13 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7`

```console
$ docker pull traefik@sha256:b310d46a8b89af2ab8ce55069ee2df51d5bf0f61ba3b7f0a43c32958e6d6e5a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

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

### `traefik:v1.7` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:d0ea29c1a7c58587b5d6a591793e1d57013e5d905b13c6172704cd5f1b33d76c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17520979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbdc7fa24aa8d97b3c5d3ad9010f5fa3096e004f7789d2d0b274460b93c69c81`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 21 Aug 2018 08:48:57 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Tue, 02 Oct 2018 09:02:54 GMT
COPY file:1c934f3412dfed94c1f9c2bb4e7ceab2039135121eaa2bce983d02d9af2d93be in / 
# Tue, 02 Oct 2018 09:02:55 GMT
EXPOSE 80/tcp
# Tue, 02 Oct 2018 09:02:55 GMT
ENTRYPOINT ["/traefik"]
# Tue, 02 Oct 2018 09:02:56 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:237f2d395b5468b8fc4fb105187ad5ab71f15a8ae7ddb9042c335afc1d048e22`  
		Last Modified: Tue, 21 Aug 2018 08:50:29 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abb0f47d2d67e59b1be03dae70b025ae6a428fbdc647784f29970d615c61770a`  
		Last Modified: Tue, 02 Oct 2018 09:04:12 GMT  
		Size: 17.4 MB (17385940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7.1`

```console
$ docker pull traefik@sha256:b310d46a8b89af2ab8ce55069ee2df51d5bf0f61ba3b7f0a43c32958e6d6e5a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

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

### `traefik:v1.7.1` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:d0ea29c1a7c58587b5d6a591793e1d57013e5d905b13c6172704cd5f1b33d76c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17520979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbdc7fa24aa8d97b3c5d3ad9010f5fa3096e004f7789d2d0b274460b93c69c81`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 21 Aug 2018 08:48:57 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Tue, 02 Oct 2018 09:02:54 GMT
COPY file:1c934f3412dfed94c1f9c2bb4e7ceab2039135121eaa2bce983d02d9af2d93be in / 
# Tue, 02 Oct 2018 09:02:55 GMT
EXPOSE 80/tcp
# Tue, 02 Oct 2018 09:02:55 GMT
ENTRYPOINT ["/traefik"]
# Tue, 02 Oct 2018 09:02:56 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:237f2d395b5468b8fc4fb105187ad5ab71f15a8ae7ddb9042c335afc1d048e22`  
		Last Modified: Tue, 21 Aug 2018 08:50:29 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abb0f47d2d67e59b1be03dae70b025ae6a428fbdc647784f29970d615c61770a`  
		Last Modified: Tue, 02 Oct 2018 09:04:12 GMT  
		Size: 17.4 MB (17385940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7.1-alpine`

```console
$ docker pull traefik@sha256:dc54fee510528cef09ae19830d63ba8e7f22da37cf5959c962584221e08dc052
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

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

### `traefik:v1.7.1-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:426a16b61d3d7ea8cbdc4c7f214e4a595d8034007d74b90c8953eb774d423bc0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.8 MB (19794768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41a1bdd41bcf72f45d76a7537f279c06bf794402c8991a5bb219cb2b3c654b10`
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
# Tue, 02 Oct 2018 09:03:29 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.1/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 02 Oct 2018 09:03:36 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Tue, 02 Oct 2018 09:03:36 GMT
EXPOSE 80/tcp
# Tue, 02 Oct 2018 09:03:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 02 Oct 2018 09:03:38 GMT
CMD ["traefik"]
# Tue, 02 Oct 2018 09:03:39 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.1 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:dac47edc26824dfd7280eab64ce97e6dc7afaaa6fe56136162b6a004c5d951d9`  
		Last Modified: Tue, 02 Oct 2018 09:05:44 GMT  
		Size: 17.4 MB (17385977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eb3cf6846d9c4195fc28c2a51d60ab012ef010812fca77cf75c6a9e08ac6894`  
		Last Modified: Tue, 02 Oct 2018 09:05:36 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7.1-nanoserver`

```console
$ docker pull traefik@sha256:f292708df1aaa25d882e383b5ddebe5b1755bec7eadc605a7e0d66cf7ce1e3bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2485; amd64

### `traefik:v1.7.1-nanoserver` - windows version 10.0.14393.2485; amd64

```console
$ docker pull traefik@sha256:085d447b30ee77254df872902889cf651b07408a8af5e343084d7867e8be7f75
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.2 MB (452234544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a9dfbf7f5d1c4c00428e89dc0e08c66bb05e3d05b3076b8af5a11921f43b2d8`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 11 Sep 2018 16:53:25 GMT
RUN Install update 10.0.14393.2485
# Tue, 02 Oct 2018 09:15:54 GMT
RUN cmd /S /C #(nop) COPY file:1915325a14783c34932aaf2fbe9ff8219bcd8ebb5b15986082ff6949742a0724 in \traefik.exe 
# Tue, 02 Oct 2018 09:15:57 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Tue, 02 Oct 2018 09:15:58 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 02 Oct 2018 09:15:59 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.1 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:0ed41c06570459d8cdeaa4041c99c14b42f7d4ce28afe8d826372d5d39d1ed3f`  
		Last Modified: Tue, 02 Oct 2018 09:16:19 GMT  
		Size: 19.0 MB (19006739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d4f8e77aa340bc4d9271ef28c529d822decffd2a8a5d7955a16764b75ac9bc`  
		Last Modified: Tue, 02 Oct 2018 09:16:13 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da7994d798c07650e5bc401ddfd0565d6428573f839f798a4e851754b565339e`  
		Last Modified: Tue, 02 Oct 2018 09:16:14 GMT  
		Size: 943.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f92a7926b8df569ac0f2e630b0f44e9f62a00496ddb7af93b2b5e046212d563`  
		Last Modified: Tue, 02 Oct 2018 09:16:13 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7.1-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:f292708df1aaa25d882e383b5ddebe5b1755bec7eadc605a7e0d66cf7ce1e3bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2485; amd64

### `traefik:v1.7.1-nanoserver-sac2016` - windows version 10.0.14393.2485; amd64

```console
$ docker pull traefik@sha256:085d447b30ee77254df872902889cf651b07408a8af5e343084d7867e8be7f75
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.2 MB (452234544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a9dfbf7f5d1c4c00428e89dc0e08c66bb05e3d05b3076b8af5a11921f43b2d8`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 11 Sep 2018 16:53:25 GMT
RUN Install update 10.0.14393.2485
# Tue, 02 Oct 2018 09:15:54 GMT
RUN cmd /S /C #(nop) COPY file:1915325a14783c34932aaf2fbe9ff8219bcd8ebb5b15986082ff6949742a0724 in \traefik.exe 
# Tue, 02 Oct 2018 09:15:57 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Tue, 02 Oct 2018 09:15:58 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 02 Oct 2018 09:15:59 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.1 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:0ed41c06570459d8cdeaa4041c99c14b42f7d4ce28afe8d826372d5d39d1ed3f`  
		Last Modified: Tue, 02 Oct 2018 09:16:19 GMT  
		Size: 19.0 MB (19006739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d4f8e77aa340bc4d9271ef28c529d822decffd2a8a5d7955a16764b75ac9bc`  
		Last Modified: Tue, 02 Oct 2018 09:16:13 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da7994d798c07650e5bc401ddfd0565d6428573f839f798a4e851754b565339e`  
		Last Modified: Tue, 02 Oct 2018 09:16:14 GMT  
		Size: 943.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f92a7926b8df569ac0f2e630b0f44e9f62a00496ddb7af93b2b5e046212d563`  
		Last Modified: Tue, 02 Oct 2018 09:16:13 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7-alpine`

```console
$ docker pull traefik@sha256:dc54fee510528cef09ae19830d63ba8e7f22da37cf5959c962584221e08dc052
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

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

### `traefik:v1.7-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:426a16b61d3d7ea8cbdc4c7f214e4a595d8034007d74b90c8953eb774d423bc0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.8 MB (19794768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41a1bdd41bcf72f45d76a7537f279c06bf794402c8991a5bb219cb2b3c654b10`
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
# Tue, 02 Oct 2018 09:03:29 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.1/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 02 Oct 2018 09:03:36 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Tue, 02 Oct 2018 09:03:36 GMT
EXPOSE 80/tcp
# Tue, 02 Oct 2018 09:03:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 02 Oct 2018 09:03:38 GMT
CMD ["traefik"]
# Tue, 02 Oct 2018 09:03:39 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.1 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:dac47edc26824dfd7280eab64ce97e6dc7afaaa6fe56136162b6a004c5d951d9`  
		Last Modified: Tue, 02 Oct 2018 09:05:44 GMT  
		Size: 17.4 MB (17385977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eb3cf6846d9c4195fc28c2a51d60ab012ef010812fca77cf75c6a9e08ac6894`  
		Last Modified: Tue, 02 Oct 2018 09:05:36 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7-nanoserver`

```console
$ docker pull traefik@sha256:f292708df1aaa25d882e383b5ddebe5b1755bec7eadc605a7e0d66cf7ce1e3bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2485; amd64

### `traefik:v1.7-nanoserver` - windows version 10.0.14393.2485; amd64

```console
$ docker pull traefik@sha256:085d447b30ee77254df872902889cf651b07408a8af5e343084d7867e8be7f75
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.2 MB (452234544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a9dfbf7f5d1c4c00428e89dc0e08c66bb05e3d05b3076b8af5a11921f43b2d8`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 11 Sep 2018 16:53:25 GMT
RUN Install update 10.0.14393.2485
# Tue, 02 Oct 2018 09:15:54 GMT
RUN cmd /S /C #(nop) COPY file:1915325a14783c34932aaf2fbe9ff8219bcd8ebb5b15986082ff6949742a0724 in \traefik.exe 
# Tue, 02 Oct 2018 09:15:57 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Tue, 02 Oct 2018 09:15:58 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 02 Oct 2018 09:15:59 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.1 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:0ed41c06570459d8cdeaa4041c99c14b42f7d4ce28afe8d826372d5d39d1ed3f`  
		Last Modified: Tue, 02 Oct 2018 09:16:19 GMT  
		Size: 19.0 MB (19006739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d4f8e77aa340bc4d9271ef28c529d822decffd2a8a5d7955a16764b75ac9bc`  
		Last Modified: Tue, 02 Oct 2018 09:16:13 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da7994d798c07650e5bc401ddfd0565d6428573f839f798a4e851754b565339e`  
		Last Modified: Tue, 02 Oct 2018 09:16:14 GMT  
		Size: 943.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f92a7926b8df569ac0f2e630b0f44e9f62a00496ddb7af93b2b5e046212d563`  
		Last Modified: Tue, 02 Oct 2018 09:16:13 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:f292708df1aaa25d882e383b5ddebe5b1755bec7eadc605a7e0d66cf7ce1e3bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2485; amd64

### `traefik:v1.7-nanoserver-sac2016` - windows version 10.0.14393.2485; amd64

```console
$ docker pull traefik@sha256:085d447b30ee77254df872902889cf651b07408a8af5e343084d7867e8be7f75
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.2 MB (452234544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a9dfbf7f5d1c4c00428e89dc0e08c66bb05e3d05b3076b8af5a11921f43b2d8`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 11 Sep 2018 16:53:25 GMT
RUN Install update 10.0.14393.2485
# Tue, 02 Oct 2018 09:15:54 GMT
RUN cmd /S /C #(nop) COPY file:1915325a14783c34932aaf2fbe9ff8219bcd8ebb5b15986082ff6949742a0724 in \traefik.exe 
# Tue, 02 Oct 2018 09:15:57 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Tue, 02 Oct 2018 09:15:58 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 02 Oct 2018 09:15:59 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.1 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:0ed41c06570459d8cdeaa4041c99c14b42f7d4ce28afe8d826372d5d39d1ed3f`  
		Last Modified: Tue, 02 Oct 2018 09:16:19 GMT  
		Size: 19.0 MB (19006739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d4f8e77aa340bc4d9271ef28c529d822decffd2a8a5d7955a16764b75ac9bc`  
		Last Modified: Tue, 02 Oct 2018 09:16:13 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da7994d798c07650e5bc401ddfd0565d6428573f839f798a4e851754b565339e`  
		Last Modified: Tue, 02 Oct 2018 09:16:14 GMT  
		Size: 943.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f92a7926b8df569ac0f2e630b0f44e9f62a00496ddb7af93b2b5e046212d563`  
		Last Modified: Tue, 02 Oct 2018 09:16:13 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
