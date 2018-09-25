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
$ docker pull traefik@sha256:257a45cfef110e8e0e75b2fb7d113c680032e65ec2c3ddcd5da305ddaac17da1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

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

### `traefik:1.7` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:3649bb8781c00bfca185fcba6edae7fcb5b1aa8a47b596c6516402cb4d85c985
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17522380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff72a5fdaf7f47b5258927242a3eff54b4292c7d2026dcb8c75dcd24a517c666`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 21 Aug 2018 08:48:57 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Tue, 25 Sep 2018 08:53:03 GMT
COPY file:cffc09fcf36aba71b02d39518cf3b9d12dcbb58e14de869f3c85e7277886adbb in / 
# Tue, 25 Sep 2018 08:53:03 GMT
EXPOSE 80/tcp
# Tue, 25 Sep 2018 08:53:04 GMT
ENTRYPOINT ["/traefik"]
# Tue, 25 Sep 2018 08:53:05 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:237f2d395b5468b8fc4fb105187ad5ab71f15a8ae7ddb9042c335afc1d048e22`  
		Last Modified: Tue, 21 Aug 2018 08:50:29 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7341f6c1b573c0dbda02c408c1c7234dae641e1092d6f4c9fd8ae7eeab38d2e`  
		Last Modified: Tue, 25 Sep 2018 08:54:10 GMT  
		Size: 17.4 MB (17387341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7.0`

```console
$ docker pull traefik@sha256:257a45cfef110e8e0e75b2fb7d113c680032e65ec2c3ddcd5da305ddaac17da1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

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

### `traefik:1.7.0` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:3649bb8781c00bfca185fcba6edae7fcb5b1aa8a47b596c6516402cb4d85c985
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17522380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff72a5fdaf7f47b5258927242a3eff54b4292c7d2026dcb8c75dcd24a517c666`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 21 Aug 2018 08:48:57 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Tue, 25 Sep 2018 08:53:03 GMT
COPY file:cffc09fcf36aba71b02d39518cf3b9d12dcbb58e14de869f3c85e7277886adbb in / 
# Tue, 25 Sep 2018 08:53:03 GMT
EXPOSE 80/tcp
# Tue, 25 Sep 2018 08:53:04 GMT
ENTRYPOINT ["/traefik"]
# Tue, 25 Sep 2018 08:53:05 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:237f2d395b5468b8fc4fb105187ad5ab71f15a8ae7ddb9042c335afc1d048e22`  
		Last Modified: Tue, 21 Aug 2018 08:50:29 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7341f6c1b573c0dbda02c408c1c7234dae641e1092d6f4c9fd8ae7eeab38d2e`  
		Last Modified: Tue, 25 Sep 2018 08:54:10 GMT  
		Size: 17.4 MB (17387341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7.0-alpine`

```console
$ docker pull traefik@sha256:deb93c1fbf43b7b77bd4e9647e10dc3977cfa487221b23b0d52286a921896cea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

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

### `traefik:1.7.0-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:8db66ab84612c9e0ac930f67a94a0cc0849b5860eb4b477b0281152df96bf2a6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.8 MB (19796008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58b6c1cee49233dbd80da26f60fd81f51a2b15d7e84cd46199b6dc5ed7eef727`
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
# Tue, 25 Sep 2018 08:53:37 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 25 Sep 2018 08:53:38 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Tue, 25 Sep 2018 08:53:39 GMT
EXPOSE 80/tcp
# Tue, 25 Sep 2018 08:53:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Sep 2018 08:53:40 GMT
CMD ["traefik"]
# Tue, 25 Sep 2018 08:53:40 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:54b771c0cd4cedb6e9095b32b63487ad488579aa4ca67d031e44dd3843e62bcd`  
		Last Modified: Tue, 25 Sep 2018 08:55:28 GMT  
		Size: 17.4 MB (17387219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08f0733cb825251bd3cc0fe7114903d6bf3e9f9608923587344a9d1a5b91d3c4`  
		Last Modified: Tue, 25 Sep 2018 08:55:20 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7.0-nanoserver`

```console
$ docker pull traefik@sha256:d138c4812f324465c45e8a7b81fc9f29af7a8fc5455c481add813ad4cb1f9b58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2485; amd64

### `traefik:1.7.0-nanoserver` - windows version 10.0.14393.2485; amd64

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

## `traefik:1.7.0-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:d138c4812f324465c45e8a7b81fc9f29af7a8fc5455c481add813ad4cb1f9b58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2485; amd64

### `traefik:1.7.0-nanoserver-sac2016` - windows version 10.0.14393.2485; amd64

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

## `traefik:1.7-alpine`

```console
$ docker pull traefik@sha256:deb93c1fbf43b7b77bd4e9647e10dc3977cfa487221b23b0d52286a921896cea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

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

### `traefik:1.7-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:8db66ab84612c9e0ac930f67a94a0cc0849b5860eb4b477b0281152df96bf2a6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.8 MB (19796008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58b6c1cee49233dbd80da26f60fd81f51a2b15d7e84cd46199b6dc5ed7eef727`
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
# Tue, 25 Sep 2018 08:53:37 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 25 Sep 2018 08:53:38 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Tue, 25 Sep 2018 08:53:39 GMT
EXPOSE 80/tcp
# Tue, 25 Sep 2018 08:53:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Sep 2018 08:53:40 GMT
CMD ["traefik"]
# Tue, 25 Sep 2018 08:53:40 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:54b771c0cd4cedb6e9095b32b63487ad488579aa4ca67d031e44dd3843e62bcd`  
		Last Modified: Tue, 25 Sep 2018 08:55:28 GMT  
		Size: 17.4 MB (17387219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08f0733cb825251bd3cc0fe7114903d6bf3e9f9608923587344a9d1a5b91d3c4`  
		Last Modified: Tue, 25 Sep 2018 08:55:20 GMT  
		Size: 320.0 B  
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
$ docker pull traefik@sha256:deb93c1fbf43b7b77bd4e9647e10dc3977cfa487221b23b0d52286a921896cea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

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

### `traefik:alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:8db66ab84612c9e0ac930f67a94a0cc0849b5860eb4b477b0281152df96bf2a6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.8 MB (19796008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58b6c1cee49233dbd80da26f60fd81f51a2b15d7e84cd46199b6dc5ed7eef727`
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
# Tue, 25 Sep 2018 08:53:37 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 25 Sep 2018 08:53:38 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Tue, 25 Sep 2018 08:53:39 GMT
EXPOSE 80/tcp
# Tue, 25 Sep 2018 08:53:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Sep 2018 08:53:40 GMT
CMD ["traefik"]
# Tue, 25 Sep 2018 08:53:40 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:54b771c0cd4cedb6e9095b32b63487ad488579aa4ca67d031e44dd3843e62bcd`  
		Last Modified: Tue, 25 Sep 2018 08:55:28 GMT  
		Size: 17.4 MB (17387219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08f0733cb825251bd3cc0fe7114903d6bf3e9f9608923587344a9d1a5b91d3c4`  
		Last Modified: Tue, 25 Sep 2018 08:55:20 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:latest`

```console
$ docker pull traefik@sha256:257a45cfef110e8e0e75b2fb7d113c680032e65ec2c3ddcd5da305ddaac17da1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

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

### `traefik:latest` - linux; arm variant v6

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

### `traefik:latest` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:3649bb8781c00bfca185fcba6edae7fcb5b1aa8a47b596c6516402cb4d85c985
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17522380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff72a5fdaf7f47b5258927242a3eff54b4292c7d2026dcb8c75dcd24a517c666`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 21 Aug 2018 08:48:57 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Tue, 25 Sep 2018 08:53:03 GMT
COPY file:cffc09fcf36aba71b02d39518cf3b9d12dcbb58e14de869f3c85e7277886adbb in / 
# Tue, 25 Sep 2018 08:53:03 GMT
EXPOSE 80/tcp
# Tue, 25 Sep 2018 08:53:04 GMT
ENTRYPOINT ["/traefik"]
# Tue, 25 Sep 2018 08:53:05 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:237f2d395b5468b8fc4fb105187ad5ab71f15a8ae7ddb9042c335afc1d048e22`  
		Last Modified: Tue, 21 Aug 2018 08:50:29 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7341f6c1b573c0dbda02c408c1c7234dae641e1092d6f4c9fd8ae7eeab38d2e`  
		Last Modified: Tue, 25 Sep 2018 08:54:10 GMT  
		Size: 17.4 MB (17387341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:maroilles`

```console
$ docker pull traefik@sha256:257a45cfef110e8e0e75b2fb7d113c680032e65ec2c3ddcd5da305ddaac17da1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

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

### `traefik:maroilles` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:3649bb8781c00bfca185fcba6edae7fcb5b1aa8a47b596c6516402cb4d85c985
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17522380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff72a5fdaf7f47b5258927242a3eff54b4292c7d2026dcb8c75dcd24a517c666`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 21 Aug 2018 08:48:57 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Tue, 25 Sep 2018 08:53:03 GMT
COPY file:cffc09fcf36aba71b02d39518cf3b9d12dcbb58e14de869f3c85e7277886adbb in / 
# Tue, 25 Sep 2018 08:53:03 GMT
EXPOSE 80/tcp
# Tue, 25 Sep 2018 08:53:04 GMT
ENTRYPOINT ["/traefik"]
# Tue, 25 Sep 2018 08:53:05 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:237f2d395b5468b8fc4fb105187ad5ab71f15a8ae7ddb9042c335afc1d048e22`  
		Last Modified: Tue, 21 Aug 2018 08:50:29 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7341f6c1b573c0dbda02c408c1c7234dae641e1092d6f4c9fd8ae7eeab38d2e`  
		Last Modified: Tue, 25 Sep 2018 08:54:10 GMT  
		Size: 17.4 MB (17387341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:maroilles-alpine`

```console
$ docker pull traefik@sha256:deb93c1fbf43b7b77bd4e9647e10dc3977cfa487221b23b0d52286a921896cea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

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

### `traefik:maroilles-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:8db66ab84612c9e0ac930f67a94a0cc0849b5860eb4b477b0281152df96bf2a6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.8 MB (19796008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58b6c1cee49233dbd80da26f60fd81f51a2b15d7e84cd46199b6dc5ed7eef727`
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
# Tue, 25 Sep 2018 08:53:37 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 25 Sep 2018 08:53:38 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Tue, 25 Sep 2018 08:53:39 GMT
EXPOSE 80/tcp
# Tue, 25 Sep 2018 08:53:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Sep 2018 08:53:40 GMT
CMD ["traefik"]
# Tue, 25 Sep 2018 08:53:40 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:54b771c0cd4cedb6e9095b32b63487ad488579aa4ca67d031e44dd3843e62bcd`  
		Last Modified: Tue, 25 Sep 2018 08:55:28 GMT  
		Size: 17.4 MB (17387219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08f0733cb825251bd3cc0fe7114903d6bf3e9f9608923587344a9d1a5b91d3c4`  
		Last Modified: Tue, 25 Sep 2018 08:55:20 GMT  
		Size: 320.0 B  
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
$ docker pull traefik@sha256:257a45cfef110e8e0e75b2fb7d113c680032e65ec2c3ddcd5da305ddaac17da1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

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

### `traefik:v1.7` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:3649bb8781c00bfca185fcba6edae7fcb5b1aa8a47b596c6516402cb4d85c985
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17522380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff72a5fdaf7f47b5258927242a3eff54b4292c7d2026dcb8c75dcd24a517c666`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 21 Aug 2018 08:48:57 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Tue, 25 Sep 2018 08:53:03 GMT
COPY file:cffc09fcf36aba71b02d39518cf3b9d12dcbb58e14de869f3c85e7277886adbb in / 
# Tue, 25 Sep 2018 08:53:03 GMT
EXPOSE 80/tcp
# Tue, 25 Sep 2018 08:53:04 GMT
ENTRYPOINT ["/traefik"]
# Tue, 25 Sep 2018 08:53:05 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:237f2d395b5468b8fc4fb105187ad5ab71f15a8ae7ddb9042c335afc1d048e22`  
		Last Modified: Tue, 21 Aug 2018 08:50:29 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7341f6c1b573c0dbda02c408c1c7234dae641e1092d6f4c9fd8ae7eeab38d2e`  
		Last Modified: Tue, 25 Sep 2018 08:54:10 GMT  
		Size: 17.4 MB (17387341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7.0`

```console
$ docker pull traefik@sha256:257a45cfef110e8e0e75b2fb7d113c680032e65ec2c3ddcd5da305ddaac17da1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

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

### `traefik:v1.7.0` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:3649bb8781c00bfca185fcba6edae7fcb5b1aa8a47b596c6516402cb4d85c985
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17522380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff72a5fdaf7f47b5258927242a3eff54b4292c7d2026dcb8c75dcd24a517c666`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 21 Aug 2018 08:48:57 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Tue, 25 Sep 2018 08:53:03 GMT
COPY file:cffc09fcf36aba71b02d39518cf3b9d12dcbb58e14de869f3c85e7277886adbb in / 
# Tue, 25 Sep 2018 08:53:03 GMT
EXPOSE 80/tcp
# Tue, 25 Sep 2018 08:53:04 GMT
ENTRYPOINT ["/traefik"]
# Tue, 25 Sep 2018 08:53:05 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:237f2d395b5468b8fc4fb105187ad5ab71f15a8ae7ddb9042c335afc1d048e22`  
		Last Modified: Tue, 21 Aug 2018 08:50:29 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7341f6c1b573c0dbda02c408c1c7234dae641e1092d6f4c9fd8ae7eeab38d2e`  
		Last Modified: Tue, 25 Sep 2018 08:54:10 GMT  
		Size: 17.4 MB (17387341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7.0-alpine`

```console
$ docker pull traefik@sha256:deb93c1fbf43b7b77bd4e9647e10dc3977cfa487221b23b0d52286a921896cea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

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

### `traefik:v1.7.0-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:8db66ab84612c9e0ac930f67a94a0cc0849b5860eb4b477b0281152df96bf2a6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.8 MB (19796008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58b6c1cee49233dbd80da26f60fd81f51a2b15d7e84cd46199b6dc5ed7eef727`
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
# Tue, 25 Sep 2018 08:53:37 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 25 Sep 2018 08:53:38 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Tue, 25 Sep 2018 08:53:39 GMT
EXPOSE 80/tcp
# Tue, 25 Sep 2018 08:53:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Sep 2018 08:53:40 GMT
CMD ["traefik"]
# Tue, 25 Sep 2018 08:53:40 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:54b771c0cd4cedb6e9095b32b63487ad488579aa4ca67d031e44dd3843e62bcd`  
		Last Modified: Tue, 25 Sep 2018 08:55:28 GMT  
		Size: 17.4 MB (17387219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08f0733cb825251bd3cc0fe7114903d6bf3e9f9608923587344a9d1a5b91d3c4`  
		Last Modified: Tue, 25 Sep 2018 08:55:20 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7.0-nanoserver`

```console
$ docker pull traefik@sha256:d138c4812f324465c45e8a7b81fc9f29af7a8fc5455c481add813ad4cb1f9b58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2485; amd64

### `traefik:v1.7.0-nanoserver` - windows version 10.0.14393.2485; amd64

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

## `traefik:v1.7.0-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:d138c4812f324465c45e8a7b81fc9f29af7a8fc5455c481add813ad4cb1f9b58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2485; amd64

### `traefik:v1.7.0-nanoserver-sac2016` - windows version 10.0.14393.2485; amd64

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

## `traefik:v1.7-alpine`

```console
$ docker pull traefik@sha256:deb93c1fbf43b7b77bd4e9647e10dc3977cfa487221b23b0d52286a921896cea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

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

### `traefik:v1.7-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:8db66ab84612c9e0ac930f67a94a0cc0849b5860eb4b477b0281152df96bf2a6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.8 MB (19796008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58b6c1cee49233dbd80da26f60fd81f51a2b15d7e84cd46199b6dc5ed7eef727`
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
# Tue, 25 Sep 2018 08:53:37 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 25 Sep 2018 08:53:38 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Tue, 25 Sep 2018 08:53:39 GMT
EXPOSE 80/tcp
# Tue, 25 Sep 2018 08:53:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Sep 2018 08:53:40 GMT
CMD ["traefik"]
# Tue, 25 Sep 2018 08:53:40 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:54b771c0cd4cedb6e9095b32b63487ad488579aa4ca67d031e44dd3843e62bcd`  
		Last Modified: Tue, 25 Sep 2018 08:55:28 GMT  
		Size: 17.4 MB (17387219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08f0733cb825251bd3cc0fe7114903d6bf3e9f9608923587344a9d1a5b91d3c4`  
		Last Modified: Tue, 25 Sep 2018 08:55:20 GMT  
		Size: 320.0 B  
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
