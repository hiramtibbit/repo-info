<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `traefik`

-	[`traefik:1.6`](#traefik16)
-	[`traefik:1.6.1`](#traefik161)
-	[`traefik:1.6.1-alpine`](#traefik161-alpine)
-	[`traefik:1.6-alpine`](#traefik16-alpine)
-	[`traefik:alpine`](#traefikalpine)
-	[`traefik:latest`](#traefiklatest)
-	[`traefik:tetedemoine`](#traefiktetedemoine)
-	[`traefik:tetedemoine-alpine`](#traefiktetedemoine-alpine)
-	[`traefik:v1.6`](#traefikv16)
-	[`traefik:v1.6.1`](#traefikv161)
-	[`traefik:v1.6.1-alpine`](#traefikv161-alpine)
-	[`traefik:v1.6-alpine`](#traefikv16-alpine)

## `traefik:1.6`

```console
$ docker pull traefik@sha256:2a9da62973c54cf6f68bfb7ddc8f936db5c831451fab6bf158a6202d9e2d5252
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.6` - linux; amd64

```console
$ docker pull traefik@sha256:9ca34f270de8c49fe611d9e778bdf5bed68522cdc92448bffcfccb56a71c5180
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.8 MB (14848372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:deeeb64f56362644344ed2696d20d08ee9ef1a6a31da4309939b453b3b23a058`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:11:40 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Mon, 14 May 2018 23:50:08 GMT
COPY file:51b2288d9cdd0fb718d983ff64560f88b0cb43fbc39cbf0d8c75ad6643985d03 in / 
# Mon, 14 May 2018 23:50:08 GMT
EXPOSE 80/tcp
# Mon, 14 May 2018 23:50:08 GMT
ENTRYPOINT ["/traefik"]
# Mon, 14 May 2018 23:50:08 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5d3835484afecc78dccfa2f7d4fcf273aacfe0c7600b957314e38488f3942045`  
		Last Modified: Fri, 03 Nov 2017 22:12:12 GMT  
		Size: 155.2 KB (155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3defc93798f2d5db853d5537f73597239756060b700e65e59ae321a12b308d`  
		Last Modified: Mon, 14 May 2018 23:50:37 GMT  
		Size: 14.7 MB (14693220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.6` - linux; arm variant v6

```console
$ docker pull traefik@sha256:b37cb00a28980d44b615fcbeebf3433dd423a14a2135ba8dc6f77256b8af6ef3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 MB (14231672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dabc6e00614f0d2817f79f2ea425063f623d0d60f65ef9c4c4c7e88b529417ed`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 15 May 2018 07:59:44 GMT
COPY file:ab12052fad4e554fd3eee4955a5137934b521f1e18cd1e1b33f51b3c5445f2d1 in / 
# Tue, 15 May 2018 07:59:44 GMT
EXPOSE 80/tcp
# Tue, 15 May 2018 07:59:44 GMT
ENTRYPOINT ["/traefik"]
# Tue, 15 May 2018 07:59:44 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccdaa53fbd0d780666bd946bfcea46778eb44299c8ef5beff4f6844ce40a592e`  
		Last Modified: Tue, 15 May 2018 08:00:10 GMT  
		Size: 14.1 MB (14076488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.6` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:eaa391ea3ad1a601680bc875d39553e1d825e60681e830c9516fde17371cca86
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 MB (13937610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afd5dd7f972f4e4a035765d2b84319106e590b877f809ab2a8eec58d811c7a90`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 15 May 2018 13:46:05 GMT
COPY file:cf4deff64d8671ac4636e12ddcae74cde4a2efb1d1eab8ffa843c28aa36a8958 in / 
# Tue, 15 May 2018 13:46:06 GMT
EXPOSE 80/tcp
# Tue, 15 May 2018 13:46:13 GMT
ENTRYPOINT ["/traefik"]
# Tue, 15 May 2018 13:46:14 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28722174cac1c82a9ca302218c6e0bf04f309677c9490ab3712e72a79f689364`  
		Last Modified: Tue, 15 May 2018 13:47:30 GMT  
		Size: 13.8 MB (13782459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.6.1`

```console
$ docker pull traefik@sha256:2a9da62973c54cf6f68bfb7ddc8f936db5c831451fab6bf158a6202d9e2d5252
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.6.1` - linux; amd64

```console
$ docker pull traefik@sha256:9ca34f270de8c49fe611d9e778bdf5bed68522cdc92448bffcfccb56a71c5180
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.8 MB (14848372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:deeeb64f56362644344ed2696d20d08ee9ef1a6a31da4309939b453b3b23a058`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:11:40 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Mon, 14 May 2018 23:50:08 GMT
COPY file:51b2288d9cdd0fb718d983ff64560f88b0cb43fbc39cbf0d8c75ad6643985d03 in / 
# Mon, 14 May 2018 23:50:08 GMT
EXPOSE 80/tcp
# Mon, 14 May 2018 23:50:08 GMT
ENTRYPOINT ["/traefik"]
# Mon, 14 May 2018 23:50:08 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5d3835484afecc78dccfa2f7d4fcf273aacfe0c7600b957314e38488f3942045`  
		Last Modified: Fri, 03 Nov 2017 22:12:12 GMT  
		Size: 155.2 KB (155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3defc93798f2d5db853d5537f73597239756060b700e65e59ae321a12b308d`  
		Last Modified: Mon, 14 May 2018 23:50:37 GMT  
		Size: 14.7 MB (14693220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.6.1` - linux; arm variant v6

```console
$ docker pull traefik@sha256:b37cb00a28980d44b615fcbeebf3433dd423a14a2135ba8dc6f77256b8af6ef3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 MB (14231672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dabc6e00614f0d2817f79f2ea425063f623d0d60f65ef9c4c4c7e88b529417ed`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 15 May 2018 07:59:44 GMT
COPY file:ab12052fad4e554fd3eee4955a5137934b521f1e18cd1e1b33f51b3c5445f2d1 in / 
# Tue, 15 May 2018 07:59:44 GMT
EXPOSE 80/tcp
# Tue, 15 May 2018 07:59:44 GMT
ENTRYPOINT ["/traefik"]
# Tue, 15 May 2018 07:59:44 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccdaa53fbd0d780666bd946bfcea46778eb44299c8ef5beff4f6844ce40a592e`  
		Last Modified: Tue, 15 May 2018 08:00:10 GMT  
		Size: 14.1 MB (14076488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.6.1` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:eaa391ea3ad1a601680bc875d39553e1d825e60681e830c9516fde17371cca86
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 MB (13937610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afd5dd7f972f4e4a035765d2b84319106e590b877f809ab2a8eec58d811c7a90`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 15 May 2018 13:46:05 GMT
COPY file:cf4deff64d8671ac4636e12ddcae74cde4a2efb1d1eab8ffa843c28aa36a8958 in / 
# Tue, 15 May 2018 13:46:06 GMT
EXPOSE 80/tcp
# Tue, 15 May 2018 13:46:13 GMT
ENTRYPOINT ["/traefik"]
# Tue, 15 May 2018 13:46:14 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28722174cac1c82a9ca302218c6e0bf04f309677c9490ab3712e72a79f689364`  
		Last Modified: Tue, 15 May 2018 13:47:30 GMT  
		Size: 13.8 MB (13782459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.6.1-alpine`

```console
$ docker pull traefik@sha256:3961a9cdcd206af3f11861bd88884f03463840bf9f69e85ccb68f17b40885953
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.6.1-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:bef32cd708f717dab1d9bcffa799e59fb20e12d34232da1ec4598036bd574c5a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17203748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd72d082423657d21db14616a1da6d46c50c7cb5c8a6b1e2b149c9b7021dbe5a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 01:28:51 GMT
RUN apk --no-cache add ca-certificates
# Mon, 14 May 2018 23:50:21 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.1/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Mon, 14 May 2018 23:50:21 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Mon, 14 May 2018 23:50:21 GMT
EXPOSE 80/tcp
# Mon, 14 May 2018 23:50:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 14 May 2018 23:50:22 GMT
CMD ["traefik"]
# Mon, 14 May 2018 23:50:22 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e3eb27e4ab8454370b50d5b8d9c153713bebe12c43d63dac2ae368fcce7d6d4`  
		Last Modified: Wed, 10 Jan 2018 01:30:19 GMT  
		Size: 351.0 KB (350991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:746f76ded55fe8c0ddac0efcdb1d69f4ef70a127d72095c7bd9f3a1aed7d1643`  
		Last Modified: Mon, 14 May 2018 23:51:19 GMT  
		Size: 14.9 MB (14860670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c71910b0557fea766e255650d5d7bdc9795dbed1a1380ae8e0067e81a2170a07`  
		Last Modified: Mon, 14 May 2018 23:51:17 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.6.1-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:9841c91e9e1bfda008148c7a428119c01cea88f55e7124bf7cddf63efa29dc6c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.6 MB (16563472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01e14345f0830cc314db2832e60a226d31940599acc956e7151238ea10190a9f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:35 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Wed, 25 Oct 2017 23:28:36 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:36 GMT
CMD ["/bin/sh"]
# Tue, 27 Mar 2018 23:48:29 GMT
RUN apk --no-cache add ca-certificates
# Tue, 15 May 2018 07:59:54 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.1/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Tue, 15 May 2018 07:59:55 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Tue, 15 May 2018 07:59:55 GMT
EXPOSE 80/tcp
# Tue, 15 May 2018 07:59:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 15 May 2018 07:59:55 GMT
CMD ["traefik"]
# Tue, 15 May 2018 07:59:55 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cda69762aee1588fa82aeabf1af6d6ad24f737cce1451fab2e0199849b1e12e`  
		Last Modified: Wed, 25 Oct 2017 23:28:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fb8d1c03fc58c04041b17fe9ed11a9273389da04d65602bb6c6a65845a88161`  
		Last Modified: Tue, 27 Mar 2018 23:49:15 GMT  
		Size: 352.2 KB (352153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fa5e09e6c5ddd0128a6315d19f5fa27ba54d95a48adfa629ddd47503f5e3b7`  
		Last Modified: Tue, 15 May 2018 08:00:37 GMT  
		Size: 14.2 MB (14244820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:473e774b54e9918d67ff6b3e1c421498b298454fa6c8b5a5861bf41f3bdec73c`  
		Last Modified: Tue, 15 May 2018 08:00:32 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.6.1-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:8d711f012b59b479f8e2f61cde1078484d68b1a23f9de40130c22a58ff20830d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.2 MB (16218287 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dc38bd0ba1070ceff7d196e132fa23963482eb661e32880a2f26ff7010af884`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:58 GMT
ADD file:45b5d3b8d5490ba7edfca2cf6f54cdcf49c772b0b3a2302ce69a7af061007aa4 in / 
# Wed, 25 Oct 2017 23:28:59 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:59 GMT
CMD ["/bin/sh"]
# Wed, 15 Nov 2017 05:55:26 GMT
RUN apk --no-cache add ca-certificates
# Tue, 15 May 2018 13:46:47 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.1/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Tue, 15 May 2018 13:46:52 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Tue, 15 May 2018 13:46:52 GMT
EXPOSE 80/tcp
# Tue, 15 May 2018 13:46:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 15 May 2018 13:46:54 GMT
CMD ["traefik"]
# Tue, 15 May 2018 13:47:00 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ff6b7ff3a208b8399e701e7ea1b7edbdc654c8c60d33c6f09a7803e2dda776`  
		Last Modified: Wed, 25 Oct 2017 23:29:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fcc5af9467e49f936c4812ee156fc62e6efaa954ca3165d15b03ae39805932f`  
		Last Modified: Wed, 15 Nov 2017 05:58:01 GMT  
		Size: 351.5 KB (351494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cf2ee7c772691bbf9d0f6527d546cc6d4b699f40d56d78a3e9221566f83e231`  
		Last Modified: Tue, 15 May 2018 13:48:47 GMT  
		Size: 14.0 MB (13951528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7c7a36614f714d0322dfed56be6e922d278028a0145aa809a2be9cba454b2fd`  
		Last Modified: Tue, 15 May 2018 13:48:41 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.6-alpine`

```console
$ docker pull traefik@sha256:3961a9cdcd206af3f11861bd88884f03463840bf9f69e85ccb68f17b40885953
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.6-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:bef32cd708f717dab1d9bcffa799e59fb20e12d34232da1ec4598036bd574c5a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17203748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd72d082423657d21db14616a1da6d46c50c7cb5c8a6b1e2b149c9b7021dbe5a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 01:28:51 GMT
RUN apk --no-cache add ca-certificates
# Mon, 14 May 2018 23:50:21 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.1/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Mon, 14 May 2018 23:50:21 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Mon, 14 May 2018 23:50:21 GMT
EXPOSE 80/tcp
# Mon, 14 May 2018 23:50:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 14 May 2018 23:50:22 GMT
CMD ["traefik"]
# Mon, 14 May 2018 23:50:22 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e3eb27e4ab8454370b50d5b8d9c153713bebe12c43d63dac2ae368fcce7d6d4`  
		Last Modified: Wed, 10 Jan 2018 01:30:19 GMT  
		Size: 351.0 KB (350991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:746f76ded55fe8c0ddac0efcdb1d69f4ef70a127d72095c7bd9f3a1aed7d1643`  
		Last Modified: Mon, 14 May 2018 23:51:19 GMT  
		Size: 14.9 MB (14860670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c71910b0557fea766e255650d5d7bdc9795dbed1a1380ae8e0067e81a2170a07`  
		Last Modified: Mon, 14 May 2018 23:51:17 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.6-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:9841c91e9e1bfda008148c7a428119c01cea88f55e7124bf7cddf63efa29dc6c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.6 MB (16563472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01e14345f0830cc314db2832e60a226d31940599acc956e7151238ea10190a9f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:35 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Wed, 25 Oct 2017 23:28:36 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:36 GMT
CMD ["/bin/sh"]
# Tue, 27 Mar 2018 23:48:29 GMT
RUN apk --no-cache add ca-certificates
# Tue, 15 May 2018 07:59:54 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.1/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Tue, 15 May 2018 07:59:55 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Tue, 15 May 2018 07:59:55 GMT
EXPOSE 80/tcp
# Tue, 15 May 2018 07:59:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 15 May 2018 07:59:55 GMT
CMD ["traefik"]
# Tue, 15 May 2018 07:59:55 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cda69762aee1588fa82aeabf1af6d6ad24f737cce1451fab2e0199849b1e12e`  
		Last Modified: Wed, 25 Oct 2017 23:28:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fb8d1c03fc58c04041b17fe9ed11a9273389da04d65602bb6c6a65845a88161`  
		Last Modified: Tue, 27 Mar 2018 23:49:15 GMT  
		Size: 352.2 KB (352153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fa5e09e6c5ddd0128a6315d19f5fa27ba54d95a48adfa629ddd47503f5e3b7`  
		Last Modified: Tue, 15 May 2018 08:00:37 GMT  
		Size: 14.2 MB (14244820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:473e774b54e9918d67ff6b3e1c421498b298454fa6c8b5a5861bf41f3bdec73c`  
		Last Modified: Tue, 15 May 2018 08:00:32 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.6-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:8d711f012b59b479f8e2f61cde1078484d68b1a23f9de40130c22a58ff20830d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.2 MB (16218287 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dc38bd0ba1070ceff7d196e132fa23963482eb661e32880a2f26ff7010af884`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:58 GMT
ADD file:45b5d3b8d5490ba7edfca2cf6f54cdcf49c772b0b3a2302ce69a7af061007aa4 in / 
# Wed, 25 Oct 2017 23:28:59 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:59 GMT
CMD ["/bin/sh"]
# Wed, 15 Nov 2017 05:55:26 GMT
RUN apk --no-cache add ca-certificates
# Tue, 15 May 2018 13:46:47 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.1/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Tue, 15 May 2018 13:46:52 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Tue, 15 May 2018 13:46:52 GMT
EXPOSE 80/tcp
# Tue, 15 May 2018 13:46:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 15 May 2018 13:46:54 GMT
CMD ["traefik"]
# Tue, 15 May 2018 13:47:00 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ff6b7ff3a208b8399e701e7ea1b7edbdc654c8c60d33c6f09a7803e2dda776`  
		Last Modified: Wed, 25 Oct 2017 23:29:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fcc5af9467e49f936c4812ee156fc62e6efaa954ca3165d15b03ae39805932f`  
		Last Modified: Wed, 15 Nov 2017 05:58:01 GMT  
		Size: 351.5 KB (351494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cf2ee7c772691bbf9d0f6527d546cc6d4b699f40d56d78a3e9221566f83e231`  
		Last Modified: Tue, 15 May 2018 13:48:47 GMT  
		Size: 14.0 MB (13951528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7c7a36614f714d0322dfed56be6e922d278028a0145aa809a2be9cba454b2fd`  
		Last Modified: Tue, 15 May 2018 13:48:41 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:alpine`

```console
$ docker pull traefik@sha256:3961a9cdcd206af3f11861bd88884f03463840bf9f69e85ccb68f17b40885953
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:alpine` - linux; amd64

```console
$ docker pull traefik@sha256:bef32cd708f717dab1d9bcffa799e59fb20e12d34232da1ec4598036bd574c5a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17203748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd72d082423657d21db14616a1da6d46c50c7cb5c8a6b1e2b149c9b7021dbe5a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 01:28:51 GMT
RUN apk --no-cache add ca-certificates
# Mon, 14 May 2018 23:50:21 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.1/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Mon, 14 May 2018 23:50:21 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Mon, 14 May 2018 23:50:21 GMT
EXPOSE 80/tcp
# Mon, 14 May 2018 23:50:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 14 May 2018 23:50:22 GMT
CMD ["traefik"]
# Mon, 14 May 2018 23:50:22 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e3eb27e4ab8454370b50d5b8d9c153713bebe12c43d63dac2ae368fcce7d6d4`  
		Last Modified: Wed, 10 Jan 2018 01:30:19 GMT  
		Size: 351.0 KB (350991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:746f76ded55fe8c0ddac0efcdb1d69f4ef70a127d72095c7bd9f3a1aed7d1643`  
		Last Modified: Mon, 14 May 2018 23:51:19 GMT  
		Size: 14.9 MB (14860670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c71910b0557fea766e255650d5d7bdc9795dbed1a1380ae8e0067e81a2170a07`  
		Last Modified: Mon, 14 May 2018 23:51:17 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:9841c91e9e1bfda008148c7a428119c01cea88f55e7124bf7cddf63efa29dc6c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.6 MB (16563472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01e14345f0830cc314db2832e60a226d31940599acc956e7151238ea10190a9f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:35 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Wed, 25 Oct 2017 23:28:36 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:36 GMT
CMD ["/bin/sh"]
# Tue, 27 Mar 2018 23:48:29 GMT
RUN apk --no-cache add ca-certificates
# Tue, 15 May 2018 07:59:54 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.1/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Tue, 15 May 2018 07:59:55 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Tue, 15 May 2018 07:59:55 GMT
EXPOSE 80/tcp
# Tue, 15 May 2018 07:59:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 15 May 2018 07:59:55 GMT
CMD ["traefik"]
# Tue, 15 May 2018 07:59:55 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cda69762aee1588fa82aeabf1af6d6ad24f737cce1451fab2e0199849b1e12e`  
		Last Modified: Wed, 25 Oct 2017 23:28:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fb8d1c03fc58c04041b17fe9ed11a9273389da04d65602bb6c6a65845a88161`  
		Last Modified: Tue, 27 Mar 2018 23:49:15 GMT  
		Size: 352.2 KB (352153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fa5e09e6c5ddd0128a6315d19f5fa27ba54d95a48adfa629ddd47503f5e3b7`  
		Last Modified: Tue, 15 May 2018 08:00:37 GMT  
		Size: 14.2 MB (14244820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:473e774b54e9918d67ff6b3e1c421498b298454fa6c8b5a5861bf41f3bdec73c`  
		Last Modified: Tue, 15 May 2018 08:00:32 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:8d711f012b59b479f8e2f61cde1078484d68b1a23f9de40130c22a58ff20830d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.2 MB (16218287 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dc38bd0ba1070ceff7d196e132fa23963482eb661e32880a2f26ff7010af884`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:58 GMT
ADD file:45b5d3b8d5490ba7edfca2cf6f54cdcf49c772b0b3a2302ce69a7af061007aa4 in / 
# Wed, 25 Oct 2017 23:28:59 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:59 GMT
CMD ["/bin/sh"]
# Wed, 15 Nov 2017 05:55:26 GMT
RUN apk --no-cache add ca-certificates
# Tue, 15 May 2018 13:46:47 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.1/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Tue, 15 May 2018 13:46:52 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Tue, 15 May 2018 13:46:52 GMT
EXPOSE 80/tcp
# Tue, 15 May 2018 13:46:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 15 May 2018 13:46:54 GMT
CMD ["traefik"]
# Tue, 15 May 2018 13:47:00 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ff6b7ff3a208b8399e701e7ea1b7edbdc654c8c60d33c6f09a7803e2dda776`  
		Last Modified: Wed, 25 Oct 2017 23:29:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fcc5af9467e49f936c4812ee156fc62e6efaa954ca3165d15b03ae39805932f`  
		Last Modified: Wed, 15 Nov 2017 05:58:01 GMT  
		Size: 351.5 KB (351494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cf2ee7c772691bbf9d0f6527d546cc6d4b699f40d56d78a3e9221566f83e231`  
		Last Modified: Tue, 15 May 2018 13:48:47 GMT  
		Size: 14.0 MB (13951528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7c7a36614f714d0322dfed56be6e922d278028a0145aa809a2be9cba454b2fd`  
		Last Modified: Tue, 15 May 2018 13:48:41 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:latest`

```console
$ docker pull traefik@sha256:2a9da62973c54cf6f68bfb7ddc8f936db5c831451fab6bf158a6202d9e2d5252
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:latest` - linux; amd64

```console
$ docker pull traefik@sha256:9ca34f270de8c49fe611d9e778bdf5bed68522cdc92448bffcfccb56a71c5180
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.8 MB (14848372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:deeeb64f56362644344ed2696d20d08ee9ef1a6a31da4309939b453b3b23a058`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:11:40 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Mon, 14 May 2018 23:50:08 GMT
COPY file:51b2288d9cdd0fb718d983ff64560f88b0cb43fbc39cbf0d8c75ad6643985d03 in / 
# Mon, 14 May 2018 23:50:08 GMT
EXPOSE 80/tcp
# Mon, 14 May 2018 23:50:08 GMT
ENTRYPOINT ["/traefik"]
# Mon, 14 May 2018 23:50:08 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5d3835484afecc78dccfa2f7d4fcf273aacfe0c7600b957314e38488f3942045`  
		Last Modified: Fri, 03 Nov 2017 22:12:12 GMT  
		Size: 155.2 KB (155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3defc93798f2d5db853d5537f73597239756060b700e65e59ae321a12b308d`  
		Last Modified: Mon, 14 May 2018 23:50:37 GMT  
		Size: 14.7 MB (14693220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:latest` - linux; arm variant v6

```console
$ docker pull traefik@sha256:b37cb00a28980d44b615fcbeebf3433dd423a14a2135ba8dc6f77256b8af6ef3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 MB (14231672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dabc6e00614f0d2817f79f2ea425063f623d0d60f65ef9c4c4c7e88b529417ed`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 15 May 2018 07:59:44 GMT
COPY file:ab12052fad4e554fd3eee4955a5137934b521f1e18cd1e1b33f51b3c5445f2d1 in / 
# Tue, 15 May 2018 07:59:44 GMT
EXPOSE 80/tcp
# Tue, 15 May 2018 07:59:44 GMT
ENTRYPOINT ["/traefik"]
# Tue, 15 May 2018 07:59:44 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccdaa53fbd0d780666bd946bfcea46778eb44299c8ef5beff4f6844ce40a592e`  
		Last Modified: Tue, 15 May 2018 08:00:10 GMT  
		Size: 14.1 MB (14076488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:latest` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:eaa391ea3ad1a601680bc875d39553e1d825e60681e830c9516fde17371cca86
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 MB (13937610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afd5dd7f972f4e4a035765d2b84319106e590b877f809ab2a8eec58d811c7a90`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 15 May 2018 13:46:05 GMT
COPY file:cf4deff64d8671ac4636e12ddcae74cde4a2efb1d1eab8ffa843c28aa36a8958 in / 
# Tue, 15 May 2018 13:46:06 GMT
EXPOSE 80/tcp
# Tue, 15 May 2018 13:46:13 GMT
ENTRYPOINT ["/traefik"]
# Tue, 15 May 2018 13:46:14 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28722174cac1c82a9ca302218c6e0bf04f309677c9490ab3712e72a79f689364`  
		Last Modified: Tue, 15 May 2018 13:47:30 GMT  
		Size: 13.8 MB (13782459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:tetedemoine`

```console
$ docker pull traefik@sha256:2a9da62973c54cf6f68bfb7ddc8f936db5c831451fab6bf158a6202d9e2d5252
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:tetedemoine` - linux; amd64

```console
$ docker pull traefik@sha256:9ca34f270de8c49fe611d9e778bdf5bed68522cdc92448bffcfccb56a71c5180
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.8 MB (14848372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:deeeb64f56362644344ed2696d20d08ee9ef1a6a31da4309939b453b3b23a058`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:11:40 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Mon, 14 May 2018 23:50:08 GMT
COPY file:51b2288d9cdd0fb718d983ff64560f88b0cb43fbc39cbf0d8c75ad6643985d03 in / 
# Mon, 14 May 2018 23:50:08 GMT
EXPOSE 80/tcp
# Mon, 14 May 2018 23:50:08 GMT
ENTRYPOINT ["/traefik"]
# Mon, 14 May 2018 23:50:08 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5d3835484afecc78dccfa2f7d4fcf273aacfe0c7600b957314e38488f3942045`  
		Last Modified: Fri, 03 Nov 2017 22:12:12 GMT  
		Size: 155.2 KB (155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3defc93798f2d5db853d5537f73597239756060b700e65e59ae321a12b308d`  
		Last Modified: Mon, 14 May 2018 23:50:37 GMT  
		Size: 14.7 MB (14693220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:tetedemoine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:b37cb00a28980d44b615fcbeebf3433dd423a14a2135ba8dc6f77256b8af6ef3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 MB (14231672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dabc6e00614f0d2817f79f2ea425063f623d0d60f65ef9c4c4c7e88b529417ed`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 15 May 2018 07:59:44 GMT
COPY file:ab12052fad4e554fd3eee4955a5137934b521f1e18cd1e1b33f51b3c5445f2d1 in / 
# Tue, 15 May 2018 07:59:44 GMT
EXPOSE 80/tcp
# Tue, 15 May 2018 07:59:44 GMT
ENTRYPOINT ["/traefik"]
# Tue, 15 May 2018 07:59:44 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccdaa53fbd0d780666bd946bfcea46778eb44299c8ef5beff4f6844ce40a592e`  
		Last Modified: Tue, 15 May 2018 08:00:10 GMT  
		Size: 14.1 MB (14076488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:tetedemoine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:eaa391ea3ad1a601680bc875d39553e1d825e60681e830c9516fde17371cca86
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 MB (13937610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afd5dd7f972f4e4a035765d2b84319106e590b877f809ab2a8eec58d811c7a90`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 15 May 2018 13:46:05 GMT
COPY file:cf4deff64d8671ac4636e12ddcae74cde4a2efb1d1eab8ffa843c28aa36a8958 in / 
# Tue, 15 May 2018 13:46:06 GMT
EXPOSE 80/tcp
# Tue, 15 May 2018 13:46:13 GMT
ENTRYPOINT ["/traefik"]
# Tue, 15 May 2018 13:46:14 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28722174cac1c82a9ca302218c6e0bf04f309677c9490ab3712e72a79f689364`  
		Last Modified: Tue, 15 May 2018 13:47:30 GMT  
		Size: 13.8 MB (13782459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:tetedemoine-alpine`

```console
$ docker pull traefik@sha256:3961a9cdcd206af3f11861bd88884f03463840bf9f69e85ccb68f17b40885953
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:tetedemoine-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:bef32cd708f717dab1d9bcffa799e59fb20e12d34232da1ec4598036bd574c5a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17203748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd72d082423657d21db14616a1da6d46c50c7cb5c8a6b1e2b149c9b7021dbe5a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 01:28:51 GMT
RUN apk --no-cache add ca-certificates
# Mon, 14 May 2018 23:50:21 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.1/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Mon, 14 May 2018 23:50:21 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Mon, 14 May 2018 23:50:21 GMT
EXPOSE 80/tcp
# Mon, 14 May 2018 23:50:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 14 May 2018 23:50:22 GMT
CMD ["traefik"]
# Mon, 14 May 2018 23:50:22 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e3eb27e4ab8454370b50d5b8d9c153713bebe12c43d63dac2ae368fcce7d6d4`  
		Last Modified: Wed, 10 Jan 2018 01:30:19 GMT  
		Size: 351.0 KB (350991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:746f76ded55fe8c0ddac0efcdb1d69f4ef70a127d72095c7bd9f3a1aed7d1643`  
		Last Modified: Mon, 14 May 2018 23:51:19 GMT  
		Size: 14.9 MB (14860670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c71910b0557fea766e255650d5d7bdc9795dbed1a1380ae8e0067e81a2170a07`  
		Last Modified: Mon, 14 May 2018 23:51:17 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:tetedemoine-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:9841c91e9e1bfda008148c7a428119c01cea88f55e7124bf7cddf63efa29dc6c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.6 MB (16563472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01e14345f0830cc314db2832e60a226d31940599acc956e7151238ea10190a9f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:35 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Wed, 25 Oct 2017 23:28:36 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:36 GMT
CMD ["/bin/sh"]
# Tue, 27 Mar 2018 23:48:29 GMT
RUN apk --no-cache add ca-certificates
# Tue, 15 May 2018 07:59:54 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.1/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Tue, 15 May 2018 07:59:55 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Tue, 15 May 2018 07:59:55 GMT
EXPOSE 80/tcp
# Tue, 15 May 2018 07:59:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 15 May 2018 07:59:55 GMT
CMD ["traefik"]
# Tue, 15 May 2018 07:59:55 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cda69762aee1588fa82aeabf1af6d6ad24f737cce1451fab2e0199849b1e12e`  
		Last Modified: Wed, 25 Oct 2017 23:28:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fb8d1c03fc58c04041b17fe9ed11a9273389da04d65602bb6c6a65845a88161`  
		Last Modified: Tue, 27 Mar 2018 23:49:15 GMT  
		Size: 352.2 KB (352153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fa5e09e6c5ddd0128a6315d19f5fa27ba54d95a48adfa629ddd47503f5e3b7`  
		Last Modified: Tue, 15 May 2018 08:00:37 GMT  
		Size: 14.2 MB (14244820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:473e774b54e9918d67ff6b3e1c421498b298454fa6c8b5a5861bf41f3bdec73c`  
		Last Modified: Tue, 15 May 2018 08:00:32 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:tetedemoine-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:8d711f012b59b479f8e2f61cde1078484d68b1a23f9de40130c22a58ff20830d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.2 MB (16218287 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dc38bd0ba1070ceff7d196e132fa23963482eb661e32880a2f26ff7010af884`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:58 GMT
ADD file:45b5d3b8d5490ba7edfca2cf6f54cdcf49c772b0b3a2302ce69a7af061007aa4 in / 
# Wed, 25 Oct 2017 23:28:59 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:59 GMT
CMD ["/bin/sh"]
# Wed, 15 Nov 2017 05:55:26 GMT
RUN apk --no-cache add ca-certificates
# Tue, 15 May 2018 13:46:47 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.1/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Tue, 15 May 2018 13:46:52 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Tue, 15 May 2018 13:46:52 GMT
EXPOSE 80/tcp
# Tue, 15 May 2018 13:46:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 15 May 2018 13:46:54 GMT
CMD ["traefik"]
# Tue, 15 May 2018 13:47:00 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ff6b7ff3a208b8399e701e7ea1b7edbdc654c8c60d33c6f09a7803e2dda776`  
		Last Modified: Wed, 25 Oct 2017 23:29:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fcc5af9467e49f936c4812ee156fc62e6efaa954ca3165d15b03ae39805932f`  
		Last Modified: Wed, 15 Nov 2017 05:58:01 GMT  
		Size: 351.5 KB (351494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cf2ee7c772691bbf9d0f6527d546cc6d4b699f40d56d78a3e9221566f83e231`  
		Last Modified: Tue, 15 May 2018 13:48:47 GMT  
		Size: 14.0 MB (13951528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7c7a36614f714d0322dfed56be6e922d278028a0145aa809a2be9cba454b2fd`  
		Last Modified: Tue, 15 May 2018 13:48:41 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.6`

```console
$ docker pull traefik@sha256:2a9da62973c54cf6f68bfb7ddc8f936db5c831451fab6bf158a6202d9e2d5252
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.6` - linux; amd64

```console
$ docker pull traefik@sha256:9ca34f270de8c49fe611d9e778bdf5bed68522cdc92448bffcfccb56a71c5180
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.8 MB (14848372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:deeeb64f56362644344ed2696d20d08ee9ef1a6a31da4309939b453b3b23a058`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:11:40 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Mon, 14 May 2018 23:50:08 GMT
COPY file:51b2288d9cdd0fb718d983ff64560f88b0cb43fbc39cbf0d8c75ad6643985d03 in / 
# Mon, 14 May 2018 23:50:08 GMT
EXPOSE 80/tcp
# Mon, 14 May 2018 23:50:08 GMT
ENTRYPOINT ["/traefik"]
# Mon, 14 May 2018 23:50:08 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5d3835484afecc78dccfa2f7d4fcf273aacfe0c7600b957314e38488f3942045`  
		Last Modified: Fri, 03 Nov 2017 22:12:12 GMT  
		Size: 155.2 KB (155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3defc93798f2d5db853d5537f73597239756060b700e65e59ae321a12b308d`  
		Last Modified: Mon, 14 May 2018 23:50:37 GMT  
		Size: 14.7 MB (14693220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.6` - linux; arm variant v6

```console
$ docker pull traefik@sha256:b37cb00a28980d44b615fcbeebf3433dd423a14a2135ba8dc6f77256b8af6ef3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 MB (14231672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dabc6e00614f0d2817f79f2ea425063f623d0d60f65ef9c4c4c7e88b529417ed`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 15 May 2018 07:59:44 GMT
COPY file:ab12052fad4e554fd3eee4955a5137934b521f1e18cd1e1b33f51b3c5445f2d1 in / 
# Tue, 15 May 2018 07:59:44 GMT
EXPOSE 80/tcp
# Tue, 15 May 2018 07:59:44 GMT
ENTRYPOINT ["/traefik"]
# Tue, 15 May 2018 07:59:44 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccdaa53fbd0d780666bd946bfcea46778eb44299c8ef5beff4f6844ce40a592e`  
		Last Modified: Tue, 15 May 2018 08:00:10 GMT  
		Size: 14.1 MB (14076488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.6` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:eaa391ea3ad1a601680bc875d39553e1d825e60681e830c9516fde17371cca86
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 MB (13937610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afd5dd7f972f4e4a035765d2b84319106e590b877f809ab2a8eec58d811c7a90`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 15 May 2018 13:46:05 GMT
COPY file:cf4deff64d8671ac4636e12ddcae74cde4a2efb1d1eab8ffa843c28aa36a8958 in / 
# Tue, 15 May 2018 13:46:06 GMT
EXPOSE 80/tcp
# Tue, 15 May 2018 13:46:13 GMT
ENTRYPOINT ["/traefik"]
# Tue, 15 May 2018 13:46:14 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28722174cac1c82a9ca302218c6e0bf04f309677c9490ab3712e72a79f689364`  
		Last Modified: Tue, 15 May 2018 13:47:30 GMT  
		Size: 13.8 MB (13782459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.6.1`

```console
$ docker pull traefik@sha256:2a9da62973c54cf6f68bfb7ddc8f936db5c831451fab6bf158a6202d9e2d5252
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.6.1` - linux; amd64

```console
$ docker pull traefik@sha256:9ca34f270de8c49fe611d9e778bdf5bed68522cdc92448bffcfccb56a71c5180
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.8 MB (14848372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:deeeb64f56362644344ed2696d20d08ee9ef1a6a31da4309939b453b3b23a058`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:11:40 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Mon, 14 May 2018 23:50:08 GMT
COPY file:51b2288d9cdd0fb718d983ff64560f88b0cb43fbc39cbf0d8c75ad6643985d03 in / 
# Mon, 14 May 2018 23:50:08 GMT
EXPOSE 80/tcp
# Mon, 14 May 2018 23:50:08 GMT
ENTRYPOINT ["/traefik"]
# Mon, 14 May 2018 23:50:08 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5d3835484afecc78dccfa2f7d4fcf273aacfe0c7600b957314e38488f3942045`  
		Last Modified: Fri, 03 Nov 2017 22:12:12 GMT  
		Size: 155.2 KB (155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3defc93798f2d5db853d5537f73597239756060b700e65e59ae321a12b308d`  
		Last Modified: Mon, 14 May 2018 23:50:37 GMT  
		Size: 14.7 MB (14693220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.6.1` - linux; arm variant v6

```console
$ docker pull traefik@sha256:b37cb00a28980d44b615fcbeebf3433dd423a14a2135ba8dc6f77256b8af6ef3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 MB (14231672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dabc6e00614f0d2817f79f2ea425063f623d0d60f65ef9c4c4c7e88b529417ed`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 15 May 2018 07:59:44 GMT
COPY file:ab12052fad4e554fd3eee4955a5137934b521f1e18cd1e1b33f51b3c5445f2d1 in / 
# Tue, 15 May 2018 07:59:44 GMT
EXPOSE 80/tcp
# Tue, 15 May 2018 07:59:44 GMT
ENTRYPOINT ["/traefik"]
# Tue, 15 May 2018 07:59:44 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccdaa53fbd0d780666bd946bfcea46778eb44299c8ef5beff4f6844ce40a592e`  
		Last Modified: Tue, 15 May 2018 08:00:10 GMT  
		Size: 14.1 MB (14076488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.6.1` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:eaa391ea3ad1a601680bc875d39553e1d825e60681e830c9516fde17371cca86
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 MB (13937610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afd5dd7f972f4e4a035765d2b84319106e590b877f809ab2a8eec58d811c7a90`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 15 May 2018 13:46:05 GMT
COPY file:cf4deff64d8671ac4636e12ddcae74cde4a2efb1d1eab8ffa843c28aa36a8958 in / 
# Tue, 15 May 2018 13:46:06 GMT
EXPOSE 80/tcp
# Tue, 15 May 2018 13:46:13 GMT
ENTRYPOINT ["/traefik"]
# Tue, 15 May 2018 13:46:14 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28722174cac1c82a9ca302218c6e0bf04f309677c9490ab3712e72a79f689364`  
		Last Modified: Tue, 15 May 2018 13:47:30 GMT  
		Size: 13.8 MB (13782459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.6.1-alpine`

```console
$ docker pull traefik@sha256:3961a9cdcd206af3f11861bd88884f03463840bf9f69e85ccb68f17b40885953
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.6.1-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:bef32cd708f717dab1d9bcffa799e59fb20e12d34232da1ec4598036bd574c5a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17203748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd72d082423657d21db14616a1da6d46c50c7cb5c8a6b1e2b149c9b7021dbe5a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 01:28:51 GMT
RUN apk --no-cache add ca-certificates
# Mon, 14 May 2018 23:50:21 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.1/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Mon, 14 May 2018 23:50:21 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Mon, 14 May 2018 23:50:21 GMT
EXPOSE 80/tcp
# Mon, 14 May 2018 23:50:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 14 May 2018 23:50:22 GMT
CMD ["traefik"]
# Mon, 14 May 2018 23:50:22 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e3eb27e4ab8454370b50d5b8d9c153713bebe12c43d63dac2ae368fcce7d6d4`  
		Last Modified: Wed, 10 Jan 2018 01:30:19 GMT  
		Size: 351.0 KB (350991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:746f76ded55fe8c0ddac0efcdb1d69f4ef70a127d72095c7bd9f3a1aed7d1643`  
		Last Modified: Mon, 14 May 2018 23:51:19 GMT  
		Size: 14.9 MB (14860670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c71910b0557fea766e255650d5d7bdc9795dbed1a1380ae8e0067e81a2170a07`  
		Last Modified: Mon, 14 May 2018 23:51:17 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.6.1-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:9841c91e9e1bfda008148c7a428119c01cea88f55e7124bf7cddf63efa29dc6c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.6 MB (16563472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01e14345f0830cc314db2832e60a226d31940599acc956e7151238ea10190a9f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:35 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Wed, 25 Oct 2017 23:28:36 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:36 GMT
CMD ["/bin/sh"]
# Tue, 27 Mar 2018 23:48:29 GMT
RUN apk --no-cache add ca-certificates
# Tue, 15 May 2018 07:59:54 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.1/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Tue, 15 May 2018 07:59:55 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Tue, 15 May 2018 07:59:55 GMT
EXPOSE 80/tcp
# Tue, 15 May 2018 07:59:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 15 May 2018 07:59:55 GMT
CMD ["traefik"]
# Tue, 15 May 2018 07:59:55 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cda69762aee1588fa82aeabf1af6d6ad24f737cce1451fab2e0199849b1e12e`  
		Last Modified: Wed, 25 Oct 2017 23:28:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fb8d1c03fc58c04041b17fe9ed11a9273389da04d65602bb6c6a65845a88161`  
		Last Modified: Tue, 27 Mar 2018 23:49:15 GMT  
		Size: 352.2 KB (352153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fa5e09e6c5ddd0128a6315d19f5fa27ba54d95a48adfa629ddd47503f5e3b7`  
		Last Modified: Tue, 15 May 2018 08:00:37 GMT  
		Size: 14.2 MB (14244820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:473e774b54e9918d67ff6b3e1c421498b298454fa6c8b5a5861bf41f3bdec73c`  
		Last Modified: Tue, 15 May 2018 08:00:32 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.6.1-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:8d711f012b59b479f8e2f61cde1078484d68b1a23f9de40130c22a58ff20830d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.2 MB (16218287 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dc38bd0ba1070ceff7d196e132fa23963482eb661e32880a2f26ff7010af884`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:58 GMT
ADD file:45b5d3b8d5490ba7edfca2cf6f54cdcf49c772b0b3a2302ce69a7af061007aa4 in / 
# Wed, 25 Oct 2017 23:28:59 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:59 GMT
CMD ["/bin/sh"]
# Wed, 15 Nov 2017 05:55:26 GMT
RUN apk --no-cache add ca-certificates
# Tue, 15 May 2018 13:46:47 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.1/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Tue, 15 May 2018 13:46:52 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Tue, 15 May 2018 13:46:52 GMT
EXPOSE 80/tcp
# Tue, 15 May 2018 13:46:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 15 May 2018 13:46:54 GMT
CMD ["traefik"]
# Tue, 15 May 2018 13:47:00 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ff6b7ff3a208b8399e701e7ea1b7edbdc654c8c60d33c6f09a7803e2dda776`  
		Last Modified: Wed, 25 Oct 2017 23:29:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fcc5af9467e49f936c4812ee156fc62e6efaa954ca3165d15b03ae39805932f`  
		Last Modified: Wed, 15 Nov 2017 05:58:01 GMT  
		Size: 351.5 KB (351494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cf2ee7c772691bbf9d0f6527d546cc6d4b699f40d56d78a3e9221566f83e231`  
		Last Modified: Tue, 15 May 2018 13:48:47 GMT  
		Size: 14.0 MB (13951528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7c7a36614f714d0322dfed56be6e922d278028a0145aa809a2be9cba454b2fd`  
		Last Modified: Tue, 15 May 2018 13:48:41 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.6-alpine`

```console
$ docker pull traefik@sha256:3961a9cdcd206af3f11861bd88884f03463840bf9f69e85ccb68f17b40885953
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.6-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:bef32cd708f717dab1d9bcffa799e59fb20e12d34232da1ec4598036bd574c5a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17203748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd72d082423657d21db14616a1da6d46c50c7cb5c8a6b1e2b149c9b7021dbe5a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 01:28:51 GMT
RUN apk --no-cache add ca-certificates
# Mon, 14 May 2018 23:50:21 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.1/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Mon, 14 May 2018 23:50:21 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Mon, 14 May 2018 23:50:21 GMT
EXPOSE 80/tcp
# Mon, 14 May 2018 23:50:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 14 May 2018 23:50:22 GMT
CMD ["traefik"]
# Mon, 14 May 2018 23:50:22 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e3eb27e4ab8454370b50d5b8d9c153713bebe12c43d63dac2ae368fcce7d6d4`  
		Last Modified: Wed, 10 Jan 2018 01:30:19 GMT  
		Size: 351.0 KB (350991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:746f76ded55fe8c0ddac0efcdb1d69f4ef70a127d72095c7bd9f3a1aed7d1643`  
		Last Modified: Mon, 14 May 2018 23:51:19 GMT  
		Size: 14.9 MB (14860670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c71910b0557fea766e255650d5d7bdc9795dbed1a1380ae8e0067e81a2170a07`  
		Last Modified: Mon, 14 May 2018 23:51:17 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.6-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:9841c91e9e1bfda008148c7a428119c01cea88f55e7124bf7cddf63efa29dc6c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.6 MB (16563472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01e14345f0830cc314db2832e60a226d31940599acc956e7151238ea10190a9f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:35 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Wed, 25 Oct 2017 23:28:36 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:36 GMT
CMD ["/bin/sh"]
# Tue, 27 Mar 2018 23:48:29 GMT
RUN apk --no-cache add ca-certificates
# Tue, 15 May 2018 07:59:54 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.1/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Tue, 15 May 2018 07:59:55 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Tue, 15 May 2018 07:59:55 GMT
EXPOSE 80/tcp
# Tue, 15 May 2018 07:59:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 15 May 2018 07:59:55 GMT
CMD ["traefik"]
# Tue, 15 May 2018 07:59:55 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cda69762aee1588fa82aeabf1af6d6ad24f737cce1451fab2e0199849b1e12e`  
		Last Modified: Wed, 25 Oct 2017 23:28:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fb8d1c03fc58c04041b17fe9ed11a9273389da04d65602bb6c6a65845a88161`  
		Last Modified: Tue, 27 Mar 2018 23:49:15 GMT  
		Size: 352.2 KB (352153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fa5e09e6c5ddd0128a6315d19f5fa27ba54d95a48adfa629ddd47503f5e3b7`  
		Last Modified: Tue, 15 May 2018 08:00:37 GMT  
		Size: 14.2 MB (14244820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:473e774b54e9918d67ff6b3e1c421498b298454fa6c8b5a5861bf41f3bdec73c`  
		Last Modified: Tue, 15 May 2018 08:00:32 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.6-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:8d711f012b59b479f8e2f61cde1078484d68b1a23f9de40130c22a58ff20830d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.2 MB (16218287 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dc38bd0ba1070ceff7d196e132fa23963482eb661e32880a2f26ff7010af884`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:58 GMT
ADD file:45b5d3b8d5490ba7edfca2cf6f54cdcf49c772b0b3a2302ce69a7af061007aa4 in / 
# Wed, 25 Oct 2017 23:28:59 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:59 GMT
CMD ["/bin/sh"]
# Wed, 15 Nov 2017 05:55:26 GMT
RUN apk --no-cache add ca-certificates
# Tue, 15 May 2018 13:46:47 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.1/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Tue, 15 May 2018 13:46:52 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Tue, 15 May 2018 13:46:52 GMT
EXPOSE 80/tcp
# Tue, 15 May 2018 13:46:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 15 May 2018 13:46:54 GMT
CMD ["traefik"]
# Tue, 15 May 2018 13:47:00 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ff6b7ff3a208b8399e701e7ea1b7edbdc654c8c60d33c6f09a7803e2dda776`  
		Last Modified: Wed, 25 Oct 2017 23:29:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fcc5af9467e49f936c4812ee156fc62e6efaa954ca3165d15b03ae39805932f`  
		Last Modified: Wed, 15 Nov 2017 05:58:01 GMT  
		Size: 351.5 KB (351494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cf2ee7c772691bbf9d0f6527d546cc6d4b699f40d56d78a3e9221566f83e231`  
		Last Modified: Tue, 15 May 2018 13:48:47 GMT  
		Size: 14.0 MB (13951528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7c7a36614f714d0322dfed56be6e922d278028a0145aa809a2be9cba454b2fd`  
		Last Modified: Tue, 15 May 2018 13:48:41 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
