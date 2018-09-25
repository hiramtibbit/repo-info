<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `traefik`

-	[`traefik:1.7`](#traefik17)
-	[`traefik:1.7.0`](#traefik170)
-	[`traefik:1.7.0-alpine`](#traefik170-alpine)
-	[`traefik:1.7.0-nanoserver`](#traefik170-nanoserver)
-	[`traefik:1.7.0-nanoserver-sac2016`](#traefik170-nanoserver-sac2016)
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
-	[`traefik:v1.7.0`](#traefikv170)
-	[`traefik:v1.7.0-alpine`](#traefikv170-alpine)
-	[`traefik:v1.7.0-nanoserver`](#traefikv170-nanoserver)
-	[`traefik:v1.7.0-nanoserver-sac2016`](#traefikv170-nanoserver-sac2016)
-	[`traefik:v1.7-alpine`](#traefikv17-alpine)
-	[`traefik:v1.7-nanoserver`](#traefikv17-nanoserver)
-	[`traefik:v1.7-nanoserver-sac2016`](#traefikv17-nanoserver-sac2016)

## `traefik:1.7`

```console
$ docker pull traefik@sha256:3968a1e15d68061338a3d7b10004cb1fefd419f36c4c26646bc26744c59fbdd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:1.7` - linux; amd64

```console
$ docker pull traefik@sha256:52ca0c364affd4dbc86438245e3f9b3c219992cab8072383b93fe6d56f327770
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 MB (19118142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f911cf4afc17ff5942ca983d7721bf395da8c601d21f887cbf28a5db1ef0631`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 07 Sep 2018 19:05:07 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Mon, 24 Sep 2018 22:27:39 GMT
COPY file:952ee64e1d1d497ebc2571d78a867d192aaff8e7df49ca293ea4b9edcd010e7a in / 
# Mon, 24 Sep 2018 22:27:39 GMT
EXPOSE 80/tcp
# Mon, 24 Sep 2018 22:27:39 GMT
ENTRYPOINT ["/traefik"]
# Mon, 24 Sep 2018 22:27:39 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:c6e5aced14a22b72f0fd545bec131cc37ac8382fae12614369232b12bf5cc1bf`  
		Last Modified: Fri, 07 Sep 2018 19:06:05 GMT  
		Size: 135.0 KB (135037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20ef1b776dc46d366f793affe8106601719a7976f0fc604b8657b1c2603eeffe`  
		Last Modified: Mon, 24 Sep 2018 22:28:08 GMT  
		Size: 19.0 MB (18983105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7` - linux; arm variant v6

```console
$ docker pull traefik@sha256:e5fc5115933761b2e1a1bed8c04b7bc2ef448f51cb9bf63934193308dcca5ac4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.0 MB (17969268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40b6bff60c4809733b95f4286d35e44bbca534b2f2d863d47aa9897e070307de`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 21 Aug 2018 08:15:56 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Tue, 25 Sep 2018 07:50:09 GMT
COPY file:15b2be162072fdb0fe13383a2fbb1a36d8b6040c045616f0989b2376e355cf0b in / 
# Tue, 25 Sep 2018 07:50:10 GMT
EXPOSE 80/tcp
# Tue, 25 Sep 2018 07:50:10 GMT
ENTRYPOINT ["/traefik"]
# Tue, 25 Sep 2018 07:50:10 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:9dac48e51b2381c7f7a8cbe16e8670b5d4bfcbd991c139ad10d2e46f233def67`  
		Last Modified: Tue, 21 Aug 2018 08:16:23 GMT  
		Size: 135.1 KB (135078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6574aee0ec1492797d795f0aec5c868497dce550b57b05003871fc054f654d2`  
		Last Modified: Tue, 25 Sep 2018 07:50:51 GMT  
		Size: 17.8 MB (17834190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7.0`

```console
$ docker pull traefik@sha256:3968a1e15d68061338a3d7b10004cb1fefd419f36c4c26646bc26744c59fbdd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:1.7.0` - linux; amd64

```console
$ docker pull traefik@sha256:52ca0c364affd4dbc86438245e3f9b3c219992cab8072383b93fe6d56f327770
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 MB (19118142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f911cf4afc17ff5942ca983d7721bf395da8c601d21f887cbf28a5db1ef0631`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 07 Sep 2018 19:05:07 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Mon, 24 Sep 2018 22:27:39 GMT
COPY file:952ee64e1d1d497ebc2571d78a867d192aaff8e7df49ca293ea4b9edcd010e7a in / 
# Mon, 24 Sep 2018 22:27:39 GMT
EXPOSE 80/tcp
# Mon, 24 Sep 2018 22:27:39 GMT
ENTRYPOINT ["/traefik"]
# Mon, 24 Sep 2018 22:27:39 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:c6e5aced14a22b72f0fd545bec131cc37ac8382fae12614369232b12bf5cc1bf`  
		Last Modified: Fri, 07 Sep 2018 19:06:05 GMT  
		Size: 135.0 KB (135037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20ef1b776dc46d366f793affe8106601719a7976f0fc604b8657b1c2603eeffe`  
		Last Modified: Mon, 24 Sep 2018 22:28:08 GMT  
		Size: 19.0 MB (18983105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7.0` - linux; arm variant v6

```console
$ docker pull traefik@sha256:e5fc5115933761b2e1a1bed8c04b7bc2ef448f51cb9bf63934193308dcca5ac4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.0 MB (17969268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40b6bff60c4809733b95f4286d35e44bbca534b2f2d863d47aa9897e070307de`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 21 Aug 2018 08:15:56 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Tue, 25 Sep 2018 07:50:09 GMT
COPY file:15b2be162072fdb0fe13383a2fbb1a36d8b6040c045616f0989b2376e355cf0b in / 
# Tue, 25 Sep 2018 07:50:10 GMT
EXPOSE 80/tcp
# Tue, 25 Sep 2018 07:50:10 GMT
ENTRYPOINT ["/traefik"]
# Tue, 25 Sep 2018 07:50:10 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:9dac48e51b2381c7f7a8cbe16e8670b5d4bfcbd991c139ad10d2e46f233def67`  
		Last Modified: Tue, 21 Aug 2018 08:16:23 GMT  
		Size: 135.1 KB (135078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6574aee0ec1492797d795f0aec5c868497dce550b57b05003871fc054f654d2`  
		Last Modified: Tue, 25 Sep 2018 07:50:51 GMT  
		Size: 17.8 MB (17834190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7.0-alpine`

```console
$ docker pull traefik@sha256:88baf52ab1db23463090d6ca13a9952b008c0013d0b327bdeadede1ae8f855f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:1.7.0-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:ec9fb2b516d761470e92789541de36b987abafbe24545e7327e61b89d6df7284
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.5 MB (21499463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1545aa48563651c9bdec9eae25e37e00ced30734b883c7b48c419d5135b2460f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 03:37:55 GMT
RUN apk --no-cache add ca-certificates
# Mon, 24 Sep 2018 22:27:50 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Mon, 24 Sep 2018 22:27:50 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Mon, 24 Sep 2018 22:27:50 GMT
EXPOSE 80/tcp
# Mon, 24 Sep 2018 22:27:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 24 Sep 2018 22:27:51 GMT
CMD ["traefik"]
# Mon, 24 Sep 2018 22:27:51 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:d0484ee3a46de0900d68d6232665a394e481b32b1163c91a2ce708820ef9b15a`  
		Last Modified: Mon, 24 Sep 2018 22:28:56 GMT  
		Size: 19.0 MB (18983228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f2db0b1be44a7e26429c00b9c3de8ef3dd6d43c69aebbe074b7ab7e0a46f3bb`  
		Last Modified: Mon, 24 Sep 2018 22:28:51 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7.0-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:04d15eb7aa7ddea7701838392ea00095ca8c63d6395fee7e0be25314d5a3a835
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.3 MB (20290266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cbf7a17185682c20d5ad0a1a4e167f785886f921be7c3ad23caae9d3bb5e59a`
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
# Tue, 25 Sep 2018 07:50:25 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 25 Sep 2018 07:50:25 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Tue, 25 Sep 2018 07:50:26 GMT
EXPOSE 80/tcp
# Tue, 25 Sep 2018 07:50:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Sep 2018 07:50:29 GMT
CMD ["traefik"]
# Tue, 25 Sep 2018 07:50:30 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:73374cc1a1a709d3fc2e87c3ebfcca37583f17b8647ece5630e85211e0e336e6`  
		Last Modified: Tue, 25 Sep 2018 07:51:33 GMT  
		Size: 17.8 MB (17834248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97c244d972959c26527a7cde8846395f3c2c38a816e3de5c50d6c4308a14d4f6`  
		Last Modified: Tue, 25 Sep 2018 07:51:27 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7.0-nanoserver`

**does not exist** (yet?)

## `traefik:1.7.0-nanoserver-sac2016`

**does not exist** (yet?)

## `traefik:1.7-alpine`

```console
$ docker pull traefik@sha256:88baf52ab1db23463090d6ca13a9952b008c0013d0b327bdeadede1ae8f855f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:1.7-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:ec9fb2b516d761470e92789541de36b987abafbe24545e7327e61b89d6df7284
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.5 MB (21499463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1545aa48563651c9bdec9eae25e37e00ced30734b883c7b48c419d5135b2460f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 03:37:55 GMT
RUN apk --no-cache add ca-certificates
# Mon, 24 Sep 2018 22:27:50 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Mon, 24 Sep 2018 22:27:50 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Mon, 24 Sep 2018 22:27:50 GMT
EXPOSE 80/tcp
# Mon, 24 Sep 2018 22:27:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 24 Sep 2018 22:27:51 GMT
CMD ["traefik"]
# Mon, 24 Sep 2018 22:27:51 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:d0484ee3a46de0900d68d6232665a394e481b32b1163c91a2ce708820ef9b15a`  
		Last Modified: Mon, 24 Sep 2018 22:28:56 GMT  
		Size: 19.0 MB (18983228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f2db0b1be44a7e26429c00b9c3de8ef3dd6d43c69aebbe074b7ab7e0a46f3bb`  
		Last Modified: Mon, 24 Sep 2018 22:28:51 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:04d15eb7aa7ddea7701838392ea00095ca8c63d6395fee7e0be25314d5a3a835
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.3 MB (20290266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cbf7a17185682c20d5ad0a1a4e167f785886f921be7c3ad23caae9d3bb5e59a`
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
# Tue, 25 Sep 2018 07:50:25 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 25 Sep 2018 07:50:25 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Tue, 25 Sep 2018 07:50:26 GMT
EXPOSE 80/tcp
# Tue, 25 Sep 2018 07:50:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Sep 2018 07:50:29 GMT
CMD ["traefik"]
# Tue, 25 Sep 2018 07:50:30 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:73374cc1a1a709d3fc2e87c3ebfcca37583f17b8647ece5630e85211e0e336e6`  
		Last Modified: Tue, 25 Sep 2018 07:51:33 GMT  
		Size: 17.8 MB (17834248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97c244d972959c26527a7cde8846395f3c2c38a816e3de5c50d6c4308a14d4f6`  
		Last Modified: Tue, 25 Sep 2018 07:51:27 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7-nanoserver`

```console
$ docker pull traefik@sha256:528f885542ce61e8d6d76bdef14c6ec3a4b5f4aeb73530c0361468b5675176da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2485; amd64

### `traefik:1.7-nanoserver` - windows version 10.0.14393.2485; amd64

```console
$ docker pull traefik@sha256:1670810a6dbdf2f531d0f9ad8a9cddd115e2dc90237f662228325b2305b0348d
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.2 MB (452230517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a08a994d3efdf4442000d163629ac61ffb6f897997382328ffcd0b6411965ec2`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 11 Sep 2018 16:53:25 GMT
RUN Install update 10.0.14393.2485
# Wed, 19 Sep 2018 09:51:03 GMT
RUN cmd /S /C #(nop) COPY file:0028429e27f17046e717e6b32c609f344733aab8517f4c8b096248b2aed41bb4 in \traefik.exe 
# Wed, 19 Sep 2018 09:51:06 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Wed, 19 Sep 2018 09:51:07 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Wed, 19 Sep 2018 09:51:09 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc5 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:f700e0301ab1d47c081774bd09f356e6156e331e8255db35897c2e179dc7cd48`  
		Last Modified: Wed, 19 Sep 2018 09:51:51 GMT  
		Size: 19.0 MB (19002705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90ad8224a061ab9fdf2052849b211d2557c8615dbdd0710f347e676986f100c0`  
		Last Modified: Wed, 19 Sep 2018 09:51:45 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:058d9f60af9a3e11df6f04d6deedcd6d160195045c24c5547486a92950f8d721`  
		Last Modified: Wed, 19 Sep 2018 09:51:45 GMT  
		Size: 938.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b05b542418a559cafc30f4d87e44fb19d4c2e035a0825ca925c4e14eaa02f126`  
		Last Modified: Wed, 19 Sep 2018 09:51:46 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:528f885542ce61e8d6d76bdef14c6ec3a4b5f4aeb73530c0361468b5675176da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2485; amd64

### `traefik:1.7-nanoserver-sac2016` - windows version 10.0.14393.2485; amd64

```console
$ docker pull traefik@sha256:1670810a6dbdf2f531d0f9ad8a9cddd115e2dc90237f662228325b2305b0348d
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.2 MB (452230517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a08a994d3efdf4442000d163629ac61ffb6f897997382328ffcd0b6411965ec2`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 11 Sep 2018 16:53:25 GMT
RUN Install update 10.0.14393.2485
# Wed, 19 Sep 2018 09:51:03 GMT
RUN cmd /S /C #(nop) COPY file:0028429e27f17046e717e6b32c609f344733aab8517f4c8b096248b2aed41bb4 in \traefik.exe 
# Wed, 19 Sep 2018 09:51:06 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Wed, 19 Sep 2018 09:51:07 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Wed, 19 Sep 2018 09:51:09 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc5 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:f700e0301ab1d47c081774bd09f356e6156e331e8255db35897c2e179dc7cd48`  
		Last Modified: Wed, 19 Sep 2018 09:51:51 GMT  
		Size: 19.0 MB (19002705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90ad8224a061ab9fdf2052849b211d2557c8615dbdd0710f347e676986f100c0`  
		Last Modified: Wed, 19 Sep 2018 09:51:45 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:058d9f60af9a3e11df6f04d6deedcd6d160195045c24c5547486a92950f8d721`  
		Last Modified: Wed, 19 Sep 2018 09:51:45 GMT  
		Size: 938.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b05b542418a559cafc30f4d87e44fb19d4c2e035a0825ca925c4e14eaa02f126`  
		Last Modified: Wed, 19 Sep 2018 09:51:46 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:alpine`

```console
$ docker pull traefik@sha256:88baf52ab1db23463090d6ca13a9952b008c0013d0b327bdeadede1ae8f855f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:alpine` - linux; amd64

```console
$ docker pull traefik@sha256:ec9fb2b516d761470e92789541de36b987abafbe24545e7327e61b89d6df7284
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.5 MB (21499463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1545aa48563651c9bdec9eae25e37e00ced30734b883c7b48c419d5135b2460f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 03:37:55 GMT
RUN apk --no-cache add ca-certificates
# Mon, 24 Sep 2018 22:27:50 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Mon, 24 Sep 2018 22:27:50 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Mon, 24 Sep 2018 22:27:50 GMT
EXPOSE 80/tcp
# Mon, 24 Sep 2018 22:27:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 24 Sep 2018 22:27:51 GMT
CMD ["traefik"]
# Mon, 24 Sep 2018 22:27:51 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:d0484ee3a46de0900d68d6232665a394e481b32b1163c91a2ce708820ef9b15a`  
		Last Modified: Mon, 24 Sep 2018 22:28:56 GMT  
		Size: 19.0 MB (18983228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f2db0b1be44a7e26429c00b9c3de8ef3dd6d43c69aebbe074b7ab7e0a46f3bb`  
		Last Modified: Mon, 24 Sep 2018 22:28:51 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:04d15eb7aa7ddea7701838392ea00095ca8c63d6395fee7e0be25314d5a3a835
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.3 MB (20290266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cbf7a17185682c20d5ad0a1a4e167f785886f921be7c3ad23caae9d3bb5e59a`
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
# Tue, 25 Sep 2018 07:50:25 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 25 Sep 2018 07:50:25 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Tue, 25 Sep 2018 07:50:26 GMT
EXPOSE 80/tcp
# Tue, 25 Sep 2018 07:50:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Sep 2018 07:50:29 GMT
CMD ["traefik"]
# Tue, 25 Sep 2018 07:50:30 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:73374cc1a1a709d3fc2e87c3ebfcca37583f17b8647ece5630e85211e0e336e6`  
		Last Modified: Tue, 25 Sep 2018 07:51:33 GMT  
		Size: 17.8 MB (17834248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97c244d972959c26527a7cde8846395f3c2c38a816e3de5c50d6c4308a14d4f6`  
		Last Modified: Tue, 25 Sep 2018 07:51:27 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:latest`

```console
$ docker pull traefik@sha256:29ff808b0e58b63c95f216c4e4a96b847dd902e8bcc8b5708f178d0340b7bacd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:latest` - linux; amd64

```console
$ docker pull traefik@sha256:52ca0c364affd4dbc86438245e3f9b3c219992cab8072383b93fe6d56f327770
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 MB (19118142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f911cf4afc17ff5942ca983d7721bf395da8c601d21f887cbf28a5db1ef0631`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 07 Sep 2018 19:05:07 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Mon, 24 Sep 2018 22:27:39 GMT
COPY file:952ee64e1d1d497ebc2571d78a867d192aaff8e7df49ca293ea4b9edcd010e7a in / 
# Mon, 24 Sep 2018 22:27:39 GMT
EXPOSE 80/tcp
# Mon, 24 Sep 2018 22:27:39 GMT
ENTRYPOINT ["/traefik"]
# Mon, 24 Sep 2018 22:27:39 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:c6e5aced14a22b72f0fd545bec131cc37ac8382fae12614369232b12bf5cc1bf`  
		Last Modified: Fri, 07 Sep 2018 19:06:05 GMT  
		Size: 135.0 KB (135037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20ef1b776dc46d366f793affe8106601719a7976f0fc604b8657b1c2603eeffe`  
		Last Modified: Mon, 24 Sep 2018 22:28:08 GMT  
		Size: 19.0 MB (18983105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:maroilles`

```console
$ docker pull traefik@sha256:3968a1e15d68061338a3d7b10004cb1fefd419f36c4c26646bc26744c59fbdd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:maroilles` - linux; amd64

```console
$ docker pull traefik@sha256:52ca0c364affd4dbc86438245e3f9b3c219992cab8072383b93fe6d56f327770
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 MB (19118142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f911cf4afc17ff5942ca983d7721bf395da8c601d21f887cbf28a5db1ef0631`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 07 Sep 2018 19:05:07 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Mon, 24 Sep 2018 22:27:39 GMT
COPY file:952ee64e1d1d497ebc2571d78a867d192aaff8e7df49ca293ea4b9edcd010e7a in / 
# Mon, 24 Sep 2018 22:27:39 GMT
EXPOSE 80/tcp
# Mon, 24 Sep 2018 22:27:39 GMT
ENTRYPOINT ["/traefik"]
# Mon, 24 Sep 2018 22:27:39 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:c6e5aced14a22b72f0fd545bec131cc37ac8382fae12614369232b12bf5cc1bf`  
		Last Modified: Fri, 07 Sep 2018 19:06:05 GMT  
		Size: 135.0 KB (135037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20ef1b776dc46d366f793affe8106601719a7976f0fc604b8657b1c2603eeffe`  
		Last Modified: Mon, 24 Sep 2018 22:28:08 GMT  
		Size: 19.0 MB (18983105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:maroilles` - linux; arm variant v6

```console
$ docker pull traefik@sha256:e5fc5115933761b2e1a1bed8c04b7bc2ef448f51cb9bf63934193308dcca5ac4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.0 MB (17969268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40b6bff60c4809733b95f4286d35e44bbca534b2f2d863d47aa9897e070307de`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 21 Aug 2018 08:15:56 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Tue, 25 Sep 2018 07:50:09 GMT
COPY file:15b2be162072fdb0fe13383a2fbb1a36d8b6040c045616f0989b2376e355cf0b in / 
# Tue, 25 Sep 2018 07:50:10 GMT
EXPOSE 80/tcp
# Tue, 25 Sep 2018 07:50:10 GMT
ENTRYPOINT ["/traefik"]
# Tue, 25 Sep 2018 07:50:10 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:9dac48e51b2381c7f7a8cbe16e8670b5d4bfcbd991c139ad10d2e46f233def67`  
		Last Modified: Tue, 21 Aug 2018 08:16:23 GMT  
		Size: 135.1 KB (135078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6574aee0ec1492797d795f0aec5c868497dce550b57b05003871fc054f654d2`  
		Last Modified: Tue, 25 Sep 2018 07:50:51 GMT  
		Size: 17.8 MB (17834190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:maroilles-alpine`

```console
$ docker pull traefik@sha256:88baf52ab1db23463090d6ca13a9952b008c0013d0b327bdeadede1ae8f855f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:maroilles-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:ec9fb2b516d761470e92789541de36b987abafbe24545e7327e61b89d6df7284
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.5 MB (21499463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1545aa48563651c9bdec9eae25e37e00ced30734b883c7b48c419d5135b2460f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 03:37:55 GMT
RUN apk --no-cache add ca-certificates
# Mon, 24 Sep 2018 22:27:50 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Mon, 24 Sep 2018 22:27:50 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Mon, 24 Sep 2018 22:27:50 GMT
EXPOSE 80/tcp
# Mon, 24 Sep 2018 22:27:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 24 Sep 2018 22:27:51 GMT
CMD ["traefik"]
# Mon, 24 Sep 2018 22:27:51 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:d0484ee3a46de0900d68d6232665a394e481b32b1163c91a2ce708820ef9b15a`  
		Last Modified: Mon, 24 Sep 2018 22:28:56 GMT  
		Size: 19.0 MB (18983228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f2db0b1be44a7e26429c00b9c3de8ef3dd6d43c69aebbe074b7ab7e0a46f3bb`  
		Last Modified: Mon, 24 Sep 2018 22:28:51 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:maroilles-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:04d15eb7aa7ddea7701838392ea00095ca8c63d6395fee7e0be25314d5a3a835
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.3 MB (20290266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cbf7a17185682c20d5ad0a1a4e167f785886f921be7c3ad23caae9d3bb5e59a`
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
# Tue, 25 Sep 2018 07:50:25 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 25 Sep 2018 07:50:25 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Tue, 25 Sep 2018 07:50:26 GMT
EXPOSE 80/tcp
# Tue, 25 Sep 2018 07:50:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Sep 2018 07:50:29 GMT
CMD ["traefik"]
# Tue, 25 Sep 2018 07:50:30 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:73374cc1a1a709d3fc2e87c3ebfcca37583f17b8647ece5630e85211e0e336e6`  
		Last Modified: Tue, 25 Sep 2018 07:51:33 GMT  
		Size: 17.8 MB (17834248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97c244d972959c26527a7cde8846395f3c2c38a816e3de5c50d6c4308a14d4f6`  
		Last Modified: Tue, 25 Sep 2018 07:51:27 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:maroilles-nanoserver`

```console
$ docker pull traefik@sha256:528f885542ce61e8d6d76bdef14c6ec3a4b5f4aeb73530c0361468b5675176da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2485; amd64

### `traefik:maroilles-nanoserver` - windows version 10.0.14393.2485; amd64

```console
$ docker pull traefik@sha256:1670810a6dbdf2f531d0f9ad8a9cddd115e2dc90237f662228325b2305b0348d
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.2 MB (452230517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a08a994d3efdf4442000d163629ac61ffb6f897997382328ffcd0b6411965ec2`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 11 Sep 2018 16:53:25 GMT
RUN Install update 10.0.14393.2485
# Wed, 19 Sep 2018 09:51:03 GMT
RUN cmd /S /C #(nop) COPY file:0028429e27f17046e717e6b32c609f344733aab8517f4c8b096248b2aed41bb4 in \traefik.exe 
# Wed, 19 Sep 2018 09:51:06 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Wed, 19 Sep 2018 09:51:07 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Wed, 19 Sep 2018 09:51:09 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc5 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:f700e0301ab1d47c081774bd09f356e6156e331e8255db35897c2e179dc7cd48`  
		Last Modified: Wed, 19 Sep 2018 09:51:51 GMT  
		Size: 19.0 MB (19002705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90ad8224a061ab9fdf2052849b211d2557c8615dbdd0710f347e676986f100c0`  
		Last Modified: Wed, 19 Sep 2018 09:51:45 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:058d9f60af9a3e11df6f04d6deedcd6d160195045c24c5547486a92950f8d721`  
		Last Modified: Wed, 19 Sep 2018 09:51:45 GMT  
		Size: 938.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b05b542418a559cafc30f4d87e44fb19d4c2e035a0825ca925c4e14eaa02f126`  
		Last Modified: Wed, 19 Sep 2018 09:51:46 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:maroilles-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:528f885542ce61e8d6d76bdef14c6ec3a4b5f4aeb73530c0361468b5675176da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2485; amd64

### `traefik:maroilles-nanoserver-sac2016` - windows version 10.0.14393.2485; amd64

```console
$ docker pull traefik@sha256:1670810a6dbdf2f531d0f9ad8a9cddd115e2dc90237f662228325b2305b0348d
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.2 MB (452230517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a08a994d3efdf4442000d163629ac61ffb6f897997382328ffcd0b6411965ec2`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 11 Sep 2018 16:53:25 GMT
RUN Install update 10.0.14393.2485
# Wed, 19 Sep 2018 09:51:03 GMT
RUN cmd /S /C #(nop) COPY file:0028429e27f17046e717e6b32c609f344733aab8517f4c8b096248b2aed41bb4 in \traefik.exe 
# Wed, 19 Sep 2018 09:51:06 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Wed, 19 Sep 2018 09:51:07 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Wed, 19 Sep 2018 09:51:09 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc5 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:f700e0301ab1d47c081774bd09f356e6156e331e8255db35897c2e179dc7cd48`  
		Last Modified: Wed, 19 Sep 2018 09:51:51 GMT  
		Size: 19.0 MB (19002705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90ad8224a061ab9fdf2052849b211d2557c8615dbdd0710f347e676986f100c0`  
		Last Modified: Wed, 19 Sep 2018 09:51:45 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:058d9f60af9a3e11df6f04d6deedcd6d160195045c24c5547486a92950f8d721`  
		Last Modified: Wed, 19 Sep 2018 09:51:45 GMT  
		Size: 938.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b05b542418a559cafc30f4d87e44fb19d4c2e035a0825ca925c4e14eaa02f126`  
		Last Modified: Wed, 19 Sep 2018 09:51:46 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:nanoserver`

```console
$ docker pull traefik@sha256:6009b3ecf13c36664d9ecb579154fec705a0315e3a466dfec293e1e78a959919
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2485; amd64

### `traefik:nanoserver` - windows version 10.0.14393.2485; amd64

```console
$ docker pull traefik@sha256:998b47a9cc3c4f374d73517941286ea93b7571d5113ef8213845f800bc5ce26d
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **448.0 MB (448027657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:722ba0166c1bf4de5906650c975c666f711775918c49df757bab66805f681a90`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 11 Sep 2018 16:53:25 GMT
RUN Install update 10.0.14393.2485
# Wed, 19 Sep 2018 09:51:22 GMT
RUN cmd /S /C #(nop) COPY file:3c37207c4c4f5157d5993d4ba2fbc672ddd529b3e63b8cd4034206eccc29f7ad in \traefik.exe 
# Wed, 19 Sep 2018 09:51:24 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Wed, 19 Sep 2018 09:51:25 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Wed, 19 Sep 2018 09:51:26 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:31d3bc109ddf351f8e6fa8975cf840a271ccf085dd3d5bde21124f0673419e5e`  
		Last Modified: Wed, 19 Sep 2018 09:52:29 GMT  
		Size: 14.8 MB (14799837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9a939c3813ca044ba9e0a923a78c43c8d8ddb7bfc98b42280e5717e2af7a61`  
		Last Modified: Wed, 19 Sep 2018 09:52:26 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8602200e1f9f8e506beb9ac0529ab4f084561376d2a9dd4a8844e4900ae204e5`  
		Last Modified: Wed, 19 Sep 2018 09:52:24 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:643f36b583132aa1b8386ecf81028642c1cdd37907029f5d7b0b3edeb41a7580`  
		Last Modified: Wed, 19 Sep 2018 09:52:25 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:nanoserver-sac2016`

```console
$ docker pull traefik@sha256:6009b3ecf13c36664d9ecb579154fec705a0315e3a466dfec293e1e78a959919
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2485; amd64

### `traefik:nanoserver-sac2016` - windows version 10.0.14393.2485; amd64

```console
$ docker pull traefik@sha256:998b47a9cc3c4f374d73517941286ea93b7571d5113ef8213845f800bc5ce26d
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **448.0 MB (448027657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:722ba0166c1bf4de5906650c975c666f711775918c49df757bab66805f681a90`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 11 Sep 2018 16:53:25 GMT
RUN Install update 10.0.14393.2485
# Wed, 19 Sep 2018 09:51:22 GMT
RUN cmd /S /C #(nop) COPY file:3c37207c4c4f5157d5993d4ba2fbc672ddd529b3e63b8cd4034206eccc29f7ad in \traefik.exe 
# Wed, 19 Sep 2018 09:51:24 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Wed, 19 Sep 2018 09:51:25 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Wed, 19 Sep 2018 09:51:26 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:31d3bc109ddf351f8e6fa8975cf840a271ccf085dd3d5bde21124f0673419e5e`  
		Last Modified: Wed, 19 Sep 2018 09:52:29 GMT  
		Size: 14.8 MB (14799837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9a939c3813ca044ba9e0a923a78c43c8d8ddb7bfc98b42280e5717e2af7a61`  
		Last Modified: Wed, 19 Sep 2018 09:52:26 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8602200e1f9f8e506beb9ac0529ab4f084561376d2a9dd4a8844e4900ae204e5`  
		Last Modified: Wed, 19 Sep 2018 09:52:24 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:643f36b583132aa1b8386ecf81028642c1cdd37907029f5d7b0b3edeb41a7580`  
		Last Modified: Wed, 19 Sep 2018 09:52:25 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7`

```console
$ docker pull traefik@sha256:3968a1e15d68061338a3d7b10004cb1fefd419f36c4c26646bc26744c59fbdd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:v1.7` - linux; amd64

```console
$ docker pull traefik@sha256:52ca0c364affd4dbc86438245e3f9b3c219992cab8072383b93fe6d56f327770
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 MB (19118142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f911cf4afc17ff5942ca983d7721bf395da8c601d21f887cbf28a5db1ef0631`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 07 Sep 2018 19:05:07 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Mon, 24 Sep 2018 22:27:39 GMT
COPY file:952ee64e1d1d497ebc2571d78a867d192aaff8e7df49ca293ea4b9edcd010e7a in / 
# Mon, 24 Sep 2018 22:27:39 GMT
EXPOSE 80/tcp
# Mon, 24 Sep 2018 22:27:39 GMT
ENTRYPOINT ["/traefik"]
# Mon, 24 Sep 2018 22:27:39 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:c6e5aced14a22b72f0fd545bec131cc37ac8382fae12614369232b12bf5cc1bf`  
		Last Modified: Fri, 07 Sep 2018 19:06:05 GMT  
		Size: 135.0 KB (135037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20ef1b776dc46d366f793affe8106601719a7976f0fc604b8657b1c2603eeffe`  
		Last Modified: Mon, 24 Sep 2018 22:28:08 GMT  
		Size: 19.0 MB (18983105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7` - linux; arm variant v6

```console
$ docker pull traefik@sha256:e5fc5115933761b2e1a1bed8c04b7bc2ef448f51cb9bf63934193308dcca5ac4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.0 MB (17969268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40b6bff60c4809733b95f4286d35e44bbca534b2f2d863d47aa9897e070307de`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 21 Aug 2018 08:15:56 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Tue, 25 Sep 2018 07:50:09 GMT
COPY file:15b2be162072fdb0fe13383a2fbb1a36d8b6040c045616f0989b2376e355cf0b in / 
# Tue, 25 Sep 2018 07:50:10 GMT
EXPOSE 80/tcp
# Tue, 25 Sep 2018 07:50:10 GMT
ENTRYPOINT ["/traefik"]
# Tue, 25 Sep 2018 07:50:10 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:9dac48e51b2381c7f7a8cbe16e8670b5d4bfcbd991c139ad10d2e46f233def67`  
		Last Modified: Tue, 21 Aug 2018 08:16:23 GMT  
		Size: 135.1 KB (135078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6574aee0ec1492797d795f0aec5c868497dce550b57b05003871fc054f654d2`  
		Last Modified: Tue, 25 Sep 2018 07:50:51 GMT  
		Size: 17.8 MB (17834190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7.0`

```console
$ docker pull traefik@sha256:3968a1e15d68061338a3d7b10004cb1fefd419f36c4c26646bc26744c59fbdd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:v1.7.0` - linux; amd64

```console
$ docker pull traefik@sha256:52ca0c364affd4dbc86438245e3f9b3c219992cab8072383b93fe6d56f327770
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 MB (19118142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f911cf4afc17ff5942ca983d7721bf395da8c601d21f887cbf28a5db1ef0631`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 07 Sep 2018 19:05:07 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Mon, 24 Sep 2018 22:27:39 GMT
COPY file:952ee64e1d1d497ebc2571d78a867d192aaff8e7df49ca293ea4b9edcd010e7a in / 
# Mon, 24 Sep 2018 22:27:39 GMT
EXPOSE 80/tcp
# Mon, 24 Sep 2018 22:27:39 GMT
ENTRYPOINT ["/traefik"]
# Mon, 24 Sep 2018 22:27:39 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:c6e5aced14a22b72f0fd545bec131cc37ac8382fae12614369232b12bf5cc1bf`  
		Last Modified: Fri, 07 Sep 2018 19:06:05 GMT  
		Size: 135.0 KB (135037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20ef1b776dc46d366f793affe8106601719a7976f0fc604b8657b1c2603eeffe`  
		Last Modified: Mon, 24 Sep 2018 22:28:08 GMT  
		Size: 19.0 MB (18983105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7.0` - linux; arm variant v6

```console
$ docker pull traefik@sha256:e5fc5115933761b2e1a1bed8c04b7bc2ef448f51cb9bf63934193308dcca5ac4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.0 MB (17969268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40b6bff60c4809733b95f4286d35e44bbca534b2f2d863d47aa9897e070307de`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 21 Aug 2018 08:15:56 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Tue, 25 Sep 2018 07:50:09 GMT
COPY file:15b2be162072fdb0fe13383a2fbb1a36d8b6040c045616f0989b2376e355cf0b in / 
# Tue, 25 Sep 2018 07:50:10 GMT
EXPOSE 80/tcp
# Tue, 25 Sep 2018 07:50:10 GMT
ENTRYPOINT ["/traefik"]
# Tue, 25 Sep 2018 07:50:10 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:9dac48e51b2381c7f7a8cbe16e8670b5d4bfcbd991c139ad10d2e46f233def67`  
		Last Modified: Tue, 21 Aug 2018 08:16:23 GMT  
		Size: 135.1 KB (135078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6574aee0ec1492797d795f0aec5c868497dce550b57b05003871fc054f654d2`  
		Last Modified: Tue, 25 Sep 2018 07:50:51 GMT  
		Size: 17.8 MB (17834190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7.0-alpine`

```console
$ docker pull traefik@sha256:88baf52ab1db23463090d6ca13a9952b008c0013d0b327bdeadede1ae8f855f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:v1.7.0-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:ec9fb2b516d761470e92789541de36b987abafbe24545e7327e61b89d6df7284
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.5 MB (21499463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1545aa48563651c9bdec9eae25e37e00ced30734b883c7b48c419d5135b2460f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 03:37:55 GMT
RUN apk --no-cache add ca-certificates
# Mon, 24 Sep 2018 22:27:50 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Mon, 24 Sep 2018 22:27:50 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Mon, 24 Sep 2018 22:27:50 GMT
EXPOSE 80/tcp
# Mon, 24 Sep 2018 22:27:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 24 Sep 2018 22:27:51 GMT
CMD ["traefik"]
# Mon, 24 Sep 2018 22:27:51 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:d0484ee3a46de0900d68d6232665a394e481b32b1163c91a2ce708820ef9b15a`  
		Last Modified: Mon, 24 Sep 2018 22:28:56 GMT  
		Size: 19.0 MB (18983228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f2db0b1be44a7e26429c00b9c3de8ef3dd6d43c69aebbe074b7ab7e0a46f3bb`  
		Last Modified: Mon, 24 Sep 2018 22:28:51 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7.0-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:04d15eb7aa7ddea7701838392ea00095ca8c63d6395fee7e0be25314d5a3a835
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.3 MB (20290266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cbf7a17185682c20d5ad0a1a4e167f785886f921be7c3ad23caae9d3bb5e59a`
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
# Tue, 25 Sep 2018 07:50:25 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 25 Sep 2018 07:50:25 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Tue, 25 Sep 2018 07:50:26 GMT
EXPOSE 80/tcp
# Tue, 25 Sep 2018 07:50:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Sep 2018 07:50:29 GMT
CMD ["traefik"]
# Tue, 25 Sep 2018 07:50:30 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:73374cc1a1a709d3fc2e87c3ebfcca37583f17b8647ece5630e85211e0e336e6`  
		Last Modified: Tue, 25 Sep 2018 07:51:33 GMT  
		Size: 17.8 MB (17834248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97c244d972959c26527a7cde8846395f3c2c38a816e3de5c50d6c4308a14d4f6`  
		Last Modified: Tue, 25 Sep 2018 07:51:27 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7.0-nanoserver`

**does not exist** (yet?)

## `traefik:v1.7.0-nanoserver-sac2016`

**does not exist** (yet?)

## `traefik:v1.7-alpine`

```console
$ docker pull traefik@sha256:88baf52ab1db23463090d6ca13a9952b008c0013d0b327bdeadede1ae8f855f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:v1.7-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:ec9fb2b516d761470e92789541de36b987abafbe24545e7327e61b89d6df7284
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.5 MB (21499463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1545aa48563651c9bdec9eae25e37e00ced30734b883c7b48c419d5135b2460f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 03:37:55 GMT
RUN apk --no-cache add ca-certificates
# Mon, 24 Sep 2018 22:27:50 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Mon, 24 Sep 2018 22:27:50 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Mon, 24 Sep 2018 22:27:50 GMT
EXPOSE 80/tcp
# Mon, 24 Sep 2018 22:27:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 24 Sep 2018 22:27:51 GMT
CMD ["traefik"]
# Mon, 24 Sep 2018 22:27:51 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:d0484ee3a46de0900d68d6232665a394e481b32b1163c91a2ce708820ef9b15a`  
		Last Modified: Mon, 24 Sep 2018 22:28:56 GMT  
		Size: 19.0 MB (18983228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f2db0b1be44a7e26429c00b9c3de8ef3dd6d43c69aebbe074b7ab7e0a46f3bb`  
		Last Modified: Mon, 24 Sep 2018 22:28:51 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:04d15eb7aa7ddea7701838392ea00095ca8c63d6395fee7e0be25314d5a3a835
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.3 MB (20290266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cbf7a17185682c20d5ad0a1a4e167f785886f921be7c3ad23caae9d3bb5e59a`
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
# Tue, 25 Sep 2018 07:50:25 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 25 Sep 2018 07:50:25 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Tue, 25 Sep 2018 07:50:26 GMT
EXPOSE 80/tcp
# Tue, 25 Sep 2018 07:50:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Sep 2018 07:50:29 GMT
CMD ["traefik"]
# Tue, 25 Sep 2018 07:50:30 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:73374cc1a1a709d3fc2e87c3ebfcca37583f17b8647ece5630e85211e0e336e6`  
		Last Modified: Tue, 25 Sep 2018 07:51:33 GMT  
		Size: 17.8 MB (17834248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97c244d972959c26527a7cde8846395f3c2c38a816e3de5c50d6c4308a14d4f6`  
		Last Modified: Tue, 25 Sep 2018 07:51:27 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7-nanoserver`

```console
$ docker pull traefik@sha256:528f885542ce61e8d6d76bdef14c6ec3a4b5f4aeb73530c0361468b5675176da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2485; amd64

### `traefik:v1.7-nanoserver` - windows version 10.0.14393.2485; amd64

```console
$ docker pull traefik@sha256:1670810a6dbdf2f531d0f9ad8a9cddd115e2dc90237f662228325b2305b0348d
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.2 MB (452230517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a08a994d3efdf4442000d163629ac61ffb6f897997382328ffcd0b6411965ec2`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 11 Sep 2018 16:53:25 GMT
RUN Install update 10.0.14393.2485
# Wed, 19 Sep 2018 09:51:03 GMT
RUN cmd /S /C #(nop) COPY file:0028429e27f17046e717e6b32c609f344733aab8517f4c8b096248b2aed41bb4 in \traefik.exe 
# Wed, 19 Sep 2018 09:51:06 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Wed, 19 Sep 2018 09:51:07 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Wed, 19 Sep 2018 09:51:09 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc5 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:f700e0301ab1d47c081774bd09f356e6156e331e8255db35897c2e179dc7cd48`  
		Last Modified: Wed, 19 Sep 2018 09:51:51 GMT  
		Size: 19.0 MB (19002705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90ad8224a061ab9fdf2052849b211d2557c8615dbdd0710f347e676986f100c0`  
		Last Modified: Wed, 19 Sep 2018 09:51:45 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:058d9f60af9a3e11df6f04d6deedcd6d160195045c24c5547486a92950f8d721`  
		Last Modified: Wed, 19 Sep 2018 09:51:45 GMT  
		Size: 938.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b05b542418a559cafc30f4d87e44fb19d4c2e035a0825ca925c4e14eaa02f126`  
		Last Modified: Wed, 19 Sep 2018 09:51:46 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:528f885542ce61e8d6d76bdef14c6ec3a4b5f4aeb73530c0361468b5675176da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2485; amd64

### `traefik:v1.7-nanoserver-sac2016` - windows version 10.0.14393.2485; amd64

```console
$ docker pull traefik@sha256:1670810a6dbdf2f531d0f9ad8a9cddd115e2dc90237f662228325b2305b0348d
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.2 MB (452230517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a08a994d3efdf4442000d163629ac61ffb6f897997382328ffcd0b6411965ec2`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 11 Sep 2018 16:53:25 GMT
RUN Install update 10.0.14393.2485
# Wed, 19 Sep 2018 09:51:03 GMT
RUN cmd /S /C #(nop) COPY file:0028429e27f17046e717e6b32c609f344733aab8517f4c8b096248b2aed41bb4 in \traefik.exe 
# Wed, 19 Sep 2018 09:51:06 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Wed, 19 Sep 2018 09:51:07 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Wed, 19 Sep 2018 09:51:09 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc5 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:f700e0301ab1d47c081774bd09f356e6156e331e8255db35897c2e179dc7cd48`  
		Last Modified: Wed, 19 Sep 2018 09:51:51 GMT  
		Size: 19.0 MB (19002705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90ad8224a061ab9fdf2052849b211d2557c8615dbdd0710f347e676986f100c0`  
		Last Modified: Wed, 19 Sep 2018 09:51:45 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:058d9f60af9a3e11df6f04d6deedcd6d160195045c24c5547486a92950f8d721`  
		Last Modified: Wed, 19 Sep 2018 09:51:45 GMT  
		Size: 938.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b05b542418a559cafc30f4d87e44fb19d4c2e035a0825ca925c4e14eaa02f126`  
		Last Modified: Wed, 19 Sep 2018 09:51:46 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
