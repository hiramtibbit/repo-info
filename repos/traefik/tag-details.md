<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `traefik`

-	[`traefik:1.6`](#traefik16)
-	[`traefik:1.6.3`](#traefik163)
-	[`traefik:1.6.3-alpine`](#traefik163-alpine)
-	[`traefik:1.6-alpine`](#traefik16-alpine)
-	[`traefik:alpine`](#traefikalpine)
-	[`traefik:latest`](#traefiklatest)
-	[`traefik:tetedemoine`](#traefiktetedemoine)
-	[`traefik:tetedemoine-alpine`](#traefiktetedemoine-alpine)
-	[`traefik:v1.6`](#traefikv16)
-	[`traefik:v1.6.3`](#traefikv163)
-	[`traefik:v1.6.3-alpine`](#traefikv163-alpine)
-	[`traefik:v1.6-alpine`](#traefikv16-alpine)

## `traefik:1.6`

```console
$ docker pull traefik@sha256:95057fb8248499b9ddedef139ad7f56169e344cc69fd685a7d0daa8adaa72d01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.6` - linux; amd64

```console
$ docker pull traefik@sha256:a49afa04eab91c5eccef63e1c22560365b16779b17ab404feeed2c4a19b7d696
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.9 MB (14888244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8b7f7e1c8d890faae86dc8f22136d13a322289d75c2c8ce33dcae81947f914c`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:11:40 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 05 Jun 2018 17:53:51 GMT
COPY file:1cf6828b90bf50fe31d45e267baa3d72366e13a44614b5096d61146d90776863 in / 
# Tue, 05 Jun 2018 17:53:51 GMT
EXPOSE 80/tcp
# Tue, 05 Jun 2018 17:53:51 GMT
ENTRYPOINT ["/traefik"]
# Tue, 05 Jun 2018 17:53:51 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5d3835484afecc78dccfa2f7d4fcf273aacfe0c7600b957314e38488f3942045`  
		Last Modified: Fri, 03 Nov 2017 22:12:12 GMT  
		Size: 155.2 KB (155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9956c661348afd49c27bccc1f201ff0b64006f6a79d40b94d660194c55a7cfe`  
		Last Modified: Tue, 05 Jun 2018 17:54:23 GMT  
		Size: 14.7 MB (14733092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.6` - linux; arm variant v6

```console
$ docker pull traefik@sha256:c7c9162710e9814d128f7beba2028b478713e63a88eeb58ee1762337433dbd34
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14268712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3dec8f667d29e1bde0f1ed20e5a053c938216b7e43a2dcc96878a9d4c510914`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 05 Jun 2018 17:47:09 GMT
COPY file:32fbdf8e57d557aad963d8bd9d585745365aa5e1a10014bd09de379a8cfa852a in / 
# Tue, 05 Jun 2018 17:47:09 GMT
EXPOSE 80/tcp
# Tue, 05 Jun 2018 17:47:09 GMT
ENTRYPOINT ["/traefik"]
# Tue, 05 Jun 2018 17:47:10 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f83355cc339d9deb653708b614aa94a58316e0b3def1f5ee9bb0d10e0087c3a`  
		Last Modified: Tue, 05 Jun 2018 17:47:36 GMT  
		Size: 14.1 MB (14113528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.6` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:30f5f623159316dcedbd11463f1f311ce90be1b7b49d144563fadacd267f3d16
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13970156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14549af24dbcd8d63a4d63b66c7f641a2b0d1665dfa67da4abcf80c13e530391`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 05 Jun 2018 17:47:58 GMT
COPY file:a0022dfe017fe2b717fd7f556158fa25f3daf02b436aa1cbe270d3a8f160d238 in / 
# Tue, 05 Jun 2018 17:47:59 GMT
EXPOSE 80/tcp
# Tue, 05 Jun 2018 17:47:59 GMT
ENTRYPOINT ["/traefik"]
# Tue, 05 Jun 2018 17:48:00 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a085d104228aea736e7db0572509c2b5269de957d6818fa4b4c3cd454dde7159`  
		Last Modified: Tue, 05 Jun 2018 17:48:56 GMT  
		Size: 13.8 MB (13815005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.6.3`

```console
$ docker pull traefik@sha256:95057fb8248499b9ddedef139ad7f56169e344cc69fd685a7d0daa8adaa72d01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.6.3` - linux; amd64

```console
$ docker pull traefik@sha256:a49afa04eab91c5eccef63e1c22560365b16779b17ab404feeed2c4a19b7d696
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.9 MB (14888244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8b7f7e1c8d890faae86dc8f22136d13a322289d75c2c8ce33dcae81947f914c`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:11:40 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 05 Jun 2018 17:53:51 GMT
COPY file:1cf6828b90bf50fe31d45e267baa3d72366e13a44614b5096d61146d90776863 in / 
# Tue, 05 Jun 2018 17:53:51 GMT
EXPOSE 80/tcp
# Tue, 05 Jun 2018 17:53:51 GMT
ENTRYPOINT ["/traefik"]
# Tue, 05 Jun 2018 17:53:51 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5d3835484afecc78dccfa2f7d4fcf273aacfe0c7600b957314e38488f3942045`  
		Last Modified: Fri, 03 Nov 2017 22:12:12 GMT  
		Size: 155.2 KB (155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9956c661348afd49c27bccc1f201ff0b64006f6a79d40b94d660194c55a7cfe`  
		Last Modified: Tue, 05 Jun 2018 17:54:23 GMT  
		Size: 14.7 MB (14733092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.6.3` - linux; arm variant v6

```console
$ docker pull traefik@sha256:c7c9162710e9814d128f7beba2028b478713e63a88eeb58ee1762337433dbd34
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14268712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3dec8f667d29e1bde0f1ed20e5a053c938216b7e43a2dcc96878a9d4c510914`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 05 Jun 2018 17:47:09 GMT
COPY file:32fbdf8e57d557aad963d8bd9d585745365aa5e1a10014bd09de379a8cfa852a in / 
# Tue, 05 Jun 2018 17:47:09 GMT
EXPOSE 80/tcp
# Tue, 05 Jun 2018 17:47:09 GMT
ENTRYPOINT ["/traefik"]
# Tue, 05 Jun 2018 17:47:10 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f83355cc339d9deb653708b614aa94a58316e0b3def1f5ee9bb0d10e0087c3a`  
		Last Modified: Tue, 05 Jun 2018 17:47:36 GMT  
		Size: 14.1 MB (14113528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.6.3` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:30f5f623159316dcedbd11463f1f311ce90be1b7b49d144563fadacd267f3d16
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13970156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14549af24dbcd8d63a4d63b66c7f641a2b0d1665dfa67da4abcf80c13e530391`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 05 Jun 2018 17:47:58 GMT
COPY file:a0022dfe017fe2b717fd7f556158fa25f3daf02b436aa1cbe270d3a8f160d238 in / 
# Tue, 05 Jun 2018 17:47:59 GMT
EXPOSE 80/tcp
# Tue, 05 Jun 2018 17:47:59 GMT
ENTRYPOINT ["/traefik"]
# Tue, 05 Jun 2018 17:48:00 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a085d104228aea736e7db0572509c2b5269de957d6818fa4b4c3cd454dde7159`  
		Last Modified: Tue, 05 Jun 2018 17:48:56 GMT  
		Size: 13.8 MB (13815005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.6.3-alpine`

```console
$ docker pull traefik@sha256:3fde9ec7692454d29663e6d16ceb9255bc128f93d9f33fbca17ce1f3bbd9ca19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.6.3-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:807b80b65a4a1f9017744b75298560053aedb89638ab8a683ce22e60c3df92d1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17242783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8a899db400160a1789e817e35ca0801236d8a5d552c94c1a6e31e2144421beb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 01:28:51 GMT
RUN apk --no-cache add ca-certificates
# Tue, 05 Jun 2018 17:54:05 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.3/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Tue, 05 Jun 2018 17:54:06 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Tue, 05 Jun 2018 17:54:06 GMT
EXPOSE 80/tcp
# Tue, 05 Jun 2018 17:54:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Jun 2018 17:54:06 GMT
CMD ["traefik"]
# Tue, 05 Jun 2018 17:54:07 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.3 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:c3e998f85b4abcc8fa11fed5ae0392faf3ad118ca9f294b27a0e643cd31d2fc1`  
		Last Modified: Tue, 05 Jun 2018 17:55:17 GMT  
		Size: 14.9 MB (14899704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0908932c917bc4ce9e3eee542817a93d1e8bbfd18d3d746aa8737d9e9a3e0fef`  
		Last Modified: Tue, 05 Jun 2018 17:55:14 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.6.3-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:3f7b2d19522bbd2dfac71f617af19031a1ac1e90f3ec99bf3d552e6b093ff07c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.6 MB (16599367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb44e1b2caca6c584bd9a11f8a8730d12c0780e3d5afdb8e2ab6b7da73d0e4d4`
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
# Tue, 05 Jun 2018 17:47:17 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.3/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Tue, 05 Jun 2018 17:47:18 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Tue, 05 Jun 2018 17:47:18 GMT
EXPOSE 80/tcp
# Tue, 05 Jun 2018 17:47:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Jun 2018 17:47:18 GMT
CMD ["traefik"]
# Tue, 05 Jun 2018 17:47:18 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.3 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:ca9776e1a6668bb5e9ec9f1d816a599139f424f5fa73029bd73f0bdaf81be60e`  
		Last Modified: Tue, 05 Jun 2018 17:48:00 GMT  
		Size: 14.3 MB (14280715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90528a8f8c5d1f9b4848cc1b831056d718576b1713ea3c66cf96d25ef91f2c57`  
		Last Modified: Tue, 05 Jun 2018 17:47:54 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.6.3-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:4b105f54fcf1f0fcd53727d4812fc941b8cca187c01056c35bacdf9fe2cee6c4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.2 MB (16249142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f570029d1c909082d8ee9deeb825fc40c82336a5604e178f0b1461891875a388`
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
# Tue, 05 Jun 2018 17:48:25 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.3/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Tue, 05 Jun 2018 17:48:26 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Tue, 05 Jun 2018 17:48:27 GMT
EXPOSE 80/tcp
# Tue, 05 Jun 2018 17:48:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Jun 2018 17:48:28 GMT
CMD ["traefik"]
# Tue, 05 Jun 2018 17:48:29 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.3 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:b9997d1ccbe84e4b7b5204de7f6c941ae51ced874754bac98d2c48cedd8d25e5`  
		Last Modified: Tue, 05 Jun 2018 17:50:11 GMT  
		Size: 14.0 MB (13982384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:779ba719bda0992b7418bf54ac1c5aac45919daf7da9bc2c14dda84ed33ddf5d`  
		Last Modified: Tue, 05 Jun 2018 17:50:06 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.6-alpine`

```console
$ docker pull traefik@sha256:3fde9ec7692454d29663e6d16ceb9255bc128f93d9f33fbca17ce1f3bbd9ca19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.6-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:807b80b65a4a1f9017744b75298560053aedb89638ab8a683ce22e60c3df92d1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17242783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8a899db400160a1789e817e35ca0801236d8a5d552c94c1a6e31e2144421beb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 01:28:51 GMT
RUN apk --no-cache add ca-certificates
# Tue, 05 Jun 2018 17:54:05 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.3/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Tue, 05 Jun 2018 17:54:06 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Tue, 05 Jun 2018 17:54:06 GMT
EXPOSE 80/tcp
# Tue, 05 Jun 2018 17:54:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Jun 2018 17:54:06 GMT
CMD ["traefik"]
# Tue, 05 Jun 2018 17:54:07 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.3 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:c3e998f85b4abcc8fa11fed5ae0392faf3ad118ca9f294b27a0e643cd31d2fc1`  
		Last Modified: Tue, 05 Jun 2018 17:55:17 GMT  
		Size: 14.9 MB (14899704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0908932c917bc4ce9e3eee542817a93d1e8bbfd18d3d746aa8737d9e9a3e0fef`  
		Last Modified: Tue, 05 Jun 2018 17:55:14 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.6-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:3f7b2d19522bbd2dfac71f617af19031a1ac1e90f3ec99bf3d552e6b093ff07c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.6 MB (16599367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb44e1b2caca6c584bd9a11f8a8730d12c0780e3d5afdb8e2ab6b7da73d0e4d4`
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
# Tue, 05 Jun 2018 17:47:17 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.3/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Tue, 05 Jun 2018 17:47:18 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Tue, 05 Jun 2018 17:47:18 GMT
EXPOSE 80/tcp
# Tue, 05 Jun 2018 17:47:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Jun 2018 17:47:18 GMT
CMD ["traefik"]
# Tue, 05 Jun 2018 17:47:18 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.3 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:ca9776e1a6668bb5e9ec9f1d816a599139f424f5fa73029bd73f0bdaf81be60e`  
		Last Modified: Tue, 05 Jun 2018 17:48:00 GMT  
		Size: 14.3 MB (14280715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90528a8f8c5d1f9b4848cc1b831056d718576b1713ea3c66cf96d25ef91f2c57`  
		Last Modified: Tue, 05 Jun 2018 17:47:54 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.6-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:4b105f54fcf1f0fcd53727d4812fc941b8cca187c01056c35bacdf9fe2cee6c4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.2 MB (16249142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f570029d1c909082d8ee9deeb825fc40c82336a5604e178f0b1461891875a388`
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
# Tue, 05 Jun 2018 17:48:25 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.3/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Tue, 05 Jun 2018 17:48:26 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Tue, 05 Jun 2018 17:48:27 GMT
EXPOSE 80/tcp
# Tue, 05 Jun 2018 17:48:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Jun 2018 17:48:28 GMT
CMD ["traefik"]
# Tue, 05 Jun 2018 17:48:29 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.3 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:b9997d1ccbe84e4b7b5204de7f6c941ae51ced874754bac98d2c48cedd8d25e5`  
		Last Modified: Tue, 05 Jun 2018 17:50:11 GMT  
		Size: 14.0 MB (13982384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:779ba719bda0992b7418bf54ac1c5aac45919daf7da9bc2c14dda84ed33ddf5d`  
		Last Modified: Tue, 05 Jun 2018 17:50:06 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:alpine`

```console
$ docker pull traefik@sha256:3fde9ec7692454d29663e6d16ceb9255bc128f93d9f33fbca17ce1f3bbd9ca19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:alpine` - linux; amd64

```console
$ docker pull traefik@sha256:807b80b65a4a1f9017744b75298560053aedb89638ab8a683ce22e60c3df92d1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17242783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8a899db400160a1789e817e35ca0801236d8a5d552c94c1a6e31e2144421beb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 01:28:51 GMT
RUN apk --no-cache add ca-certificates
# Tue, 05 Jun 2018 17:54:05 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.3/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Tue, 05 Jun 2018 17:54:06 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Tue, 05 Jun 2018 17:54:06 GMT
EXPOSE 80/tcp
# Tue, 05 Jun 2018 17:54:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Jun 2018 17:54:06 GMT
CMD ["traefik"]
# Tue, 05 Jun 2018 17:54:07 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.3 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:c3e998f85b4abcc8fa11fed5ae0392faf3ad118ca9f294b27a0e643cd31d2fc1`  
		Last Modified: Tue, 05 Jun 2018 17:55:17 GMT  
		Size: 14.9 MB (14899704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0908932c917bc4ce9e3eee542817a93d1e8bbfd18d3d746aa8737d9e9a3e0fef`  
		Last Modified: Tue, 05 Jun 2018 17:55:14 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:3f7b2d19522bbd2dfac71f617af19031a1ac1e90f3ec99bf3d552e6b093ff07c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.6 MB (16599367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb44e1b2caca6c584bd9a11f8a8730d12c0780e3d5afdb8e2ab6b7da73d0e4d4`
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
# Tue, 05 Jun 2018 17:47:17 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.3/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Tue, 05 Jun 2018 17:47:18 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Tue, 05 Jun 2018 17:47:18 GMT
EXPOSE 80/tcp
# Tue, 05 Jun 2018 17:47:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Jun 2018 17:47:18 GMT
CMD ["traefik"]
# Tue, 05 Jun 2018 17:47:18 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.3 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:ca9776e1a6668bb5e9ec9f1d816a599139f424f5fa73029bd73f0bdaf81be60e`  
		Last Modified: Tue, 05 Jun 2018 17:48:00 GMT  
		Size: 14.3 MB (14280715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90528a8f8c5d1f9b4848cc1b831056d718576b1713ea3c66cf96d25ef91f2c57`  
		Last Modified: Tue, 05 Jun 2018 17:47:54 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:4b105f54fcf1f0fcd53727d4812fc941b8cca187c01056c35bacdf9fe2cee6c4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.2 MB (16249142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f570029d1c909082d8ee9deeb825fc40c82336a5604e178f0b1461891875a388`
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
# Tue, 05 Jun 2018 17:48:25 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.3/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Tue, 05 Jun 2018 17:48:26 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Tue, 05 Jun 2018 17:48:27 GMT
EXPOSE 80/tcp
# Tue, 05 Jun 2018 17:48:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Jun 2018 17:48:28 GMT
CMD ["traefik"]
# Tue, 05 Jun 2018 17:48:29 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.3 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:b9997d1ccbe84e4b7b5204de7f6c941ae51ced874754bac98d2c48cedd8d25e5`  
		Last Modified: Tue, 05 Jun 2018 17:50:11 GMT  
		Size: 14.0 MB (13982384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:779ba719bda0992b7418bf54ac1c5aac45919daf7da9bc2c14dda84ed33ddf5d`  
		Last Modified: Tue, 05 Jun 2018 17:50:06 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:latest`

```console
$ docker pull traefik@sha256:95057fb8248499b9ddedef139ad7f56169e344cc69fd685a7d0daa8adaa72d01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:latest` - linux; amd64

```console
$ docker pull traefik@sha256:a49afa04eab91c5eccef63e1c22560365b16779b17ab404feeed2c4a19b7d696
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.9 MB (14888244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8b7f7e1c8d890faae86dc8f22136d13a322289d75c2c8ce33dcae81947f914c`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:11:40 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 05 Jun 2018 17:53:51 GMT
COPY file:1cf6828b90bf50fe31d45e267baa3d72366e13a44614b5096d61146d90776863 in / 
# Tue, 05 Jun 2018 17:53:51 GMT
EXPOSE 80/tcp
# Tue, 05 Jun 2018 17:53:51 GMT
ENTRYPOINT ["/traefik"]
# Tue, 05 Jun 2018 17:53:51 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5d3835484afecc78dccfa2f7d4fcf273aacfe0c7600b957314e38488f3942045`  
		Last Modified: Fri, 03 Nov 2017 22:12:12 GMT  
		Size: 155.2 KB (155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9956c661348afd49c27bccc1f201ff0b64006f6a79d40b94d660194c55a7cfe`  
		Last Modified: Tue, 05 Jun 2018 17:54:23 GMT  
		Size: 14.7 MB (14733092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:latest` - linux; arm variant v6

```console
$ docker pull traefik@sha256:c7c9162710e9814d128f7beba2028b478713e63a88eeb58ee1762337433dbd34
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14268712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3dec8f667d29e1bde0f1ed20e5a053c938216b7e43a2dcc96878a9d4c510914`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 05 Jun 2018 17:47:09 GMT
COPY file:32fbdf8e57d557aad963d8bd9d585745365aa5e1a10014bd09de379a8cfa852a in / 
# Tue, 05 Jun 2018 17:47:09 GMT
EXPOSE 80/tcp
# Tue, 05 Jun 2018 17:47:09 GMT
ENTRYPOINT ["/traefik"]
# Tue, 05 Jun 2018 17:47:10 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f83355cc339d9deb653708b614aa94a58316e0b3def1f5ee9bb0d10e0087c3a`  
		Last Modified: Tue, 05 Jun 2018 17:47:36 GMT  
		Size: 14.1 MB (14113528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:latest` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:30f5f623159316dcedbd11463f1f311ce90be1b7b49d144563fadacd267f3d16
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13970156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14549af24dbcd8d63a4d63b66c7f641a2b0d1665dfa67da4abcf80c13e530391`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 05 Jun 2018 17:47:58 GMT
COPY file:a0022dfe017fe2b717fd7f556158fa25f3daf02b436aa1cbe270d3a8f160d238 in / 
# Tue, 05 Jun 2018 17:47:59 GMT
EXPOSE 80/tcp
# Tue, 05 Jun 2018 17:47:59 GMT
ENTRYPOINT ["/traefik"]
# Tue, 05 Jun 2018 17:48:00 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a085d104228aea736e7db0572509c2b5269de957d6818fa4b4c3cd454dde7159`  
		Last Modified: Tue, 05 Jun 2018 17:48:56 GMT  
		Size: 13.8 MB (13815005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:tetedemoine`

```console
$ docker pull traefik@sha256:95057fb8248499b9ddedef139ad7f56169e344cc69fd685a7d0daa8adaa72d01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:tetedemoine` - linux; amd64

```console
$ docker pull traefik@sha256:a49afa04eab91c5eccef63e1c22560365b16779b17ab404feeed2c4a19b7d696
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.9 MB (14888244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8b7f7e1c8d890faae86dc8f22136d13a322289d75c2c8ce33dcae81947f914c`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:11:40 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 05 Jun 2018 17:53:51 GMT
COPY file:1cf6828b90bf50fe31d45e267baa3d72366e13a44614b5096d61146d90776863 in / 
# Tue, 05 Jun 2018 17:53:51 GMT
EXPOSE 80/tcp
# Tue, 05 Jun 2018 17:53:51 GMT
ENTRYPOINT ["/traefik"]
# Tue, 05 Jun 2018 17:53:51 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5d3835484afecc78dccfa2f7d4fcf273aacfe0c7600b957314e38488f3942045`  
		Last Modified: Fri, 03 Nov 2017 22:12:12 GMT  
		Size: 155.2 KB (155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9956c661348afd49c27bccc1f201ff0b64006f6a79d40b94d660194c55a7cfe`  
		Last Modified: Tue, 05 Jun 2018 17:54:23 GMT  
		Size: 14.7 MB (14733092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:tetedemoine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:c7c9162710e9814d128f7beba2028b478713e63a88eeb58ee1762337433dbd34
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14268712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3dec8f667d29e1bde0f1ed20e5a053c938216b7e43a2dcc96878a9d4c510914`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 05 Jun 2018 17:47:09 GMT
COPY file:32fbdf8e57d557aad963d8bd9d585745365aa5e1a10014bd09de379a8cfa852a in / 
# Tue, 05 Jun 2018 17:47:09 GMT
EXPOSE 80/tcp
# Tue, 05 Jun 2018 17:47:09 GMT
ENTRYPOINT ["/traefik"]
# Tue, 05 Jun 2018 17:47:10 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f83355cc339d9deb653708b614aa94a58316e0b3def1f5ee9bb0d10e0087c3a`  
		Last Modified: Tue, 05 Jun 2018 17:47:36 GMT  
		Size: 14.1 MB (14113528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:tetedemoine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:30f5f623159316dcedbd11463f1f311ce90be1b7b49d144563fadacd267f3d16
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13970156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14549af24dbcd8d63a4d63b66c7f641a2b0d1665dfa67da4abcf80c13e530391`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 05 Jun 2018 17:47:58 GMT
COPY file:a0022dfe017fe2b717fd7f556158fa25f3daf02b436aa1cbe270d3a8f160d238 in / 
# Tue, 05 Jun 2018 17:47:59 GMT
EXPOSE 80/tcp
# Tue, 05 Jun 2018 17:47:59 GMT
ENTRYPOINT ["/traefik"]
# Tue, 05 Jun 2018 17:48:00 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a085d104228aea736e7db0572509c2b5269de957d6818fa4b4c3cd454dde7159`  
		Last Modified: Tue, 05 Jun 2018 17:48:56 GMT  
		Size: 13.8 MB (13815005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:tetedemoine-alpine`

```console
$ docker pull traefik@sha256:3fde9ec7692454d29663e6d16ceb9255bc128f93d9f33fbca17ce1f3bbd9ca19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:tetedemoine-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:807b80b65a4a1f9017744b75298560053aedb89638ab8a683ce22e60c3df92d1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17242783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8a899db400160a1789e817e35ca0801236d8a5d552c94c1a6e31e2144421beb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 01:28:51 GMT
RUN apk --no-cache add ca-certificates
# Tue, 05 Jun 2018 17:54:05 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.3/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Tue, 05 Jun 2018 17:54:06 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Tue, 05 Jun 2018 17:54:06 GMT
EXPOSE 80/tcp
# Tue, 05 Jun 2018 17:54:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Jun 2018 17:54:06 GMT
CMD ["traefik"]
# Tue, 05 Jun 2018 17:54:07 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.3 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:c3e998f85b4abcc8fa11fed5ae0392faf3ad118ca9f294b27a0e643cd31d2fc1`  
		Last Modified: Tue, 05 Jun 2018 17:55:17 GMT  
		Size: 14.9 MB (14899704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0908932c917bc4ce9e3eee542817a93d1e8bbfd18d3d746aa8737d9e9a3e0fef`  
		Last Modified: Tue, 05 Jun 2018 17:55:14 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:tetedemoine-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:3f7b2d19522bbd2dfac71f617af19031a1ac1e90f3ec99bf3d552e6b093ff07c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.6 MB (16599367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb44e1b2caca6c584bd9a11f8a8730d12c0780e3d5afdb8e2ab6b7da73d0e4d4`
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
# Tue, 05 Jun 2018 17:47:17 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.3/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Tue, 05 Jun 2018 17:47:18 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Tue, 05 Jun 2018 17:47:18 GMT
EXPOSE 80/tcp
# Tue, 05 Jun 2018 17:47:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Jun 2018 17:47:18 GMT
CMD ["traefik"]
# Tue, 05 Jun 2018 17:47:18 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.3 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:ca9776e1a6668bb5e9ec9f1d816a599139f424f5fa73029bd73f0bdaf81be60e`  
		Last Modified: Tue, 05 Jun 2018 17:48:00 GMT  
		Size: 14.3 MB (14280715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90528a8f8c5d1f9b4848cc1b831056d718576b1713ea3c66cf96d25ef91f2c57`  
		Last Modified: Tue, 05 Jun 2018 17:47:54 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:tetedemoine-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:4b105f54fcf1f0fcd53727d4812fc941b8cca187c01056c35bacdf9fe2cee6c4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.2 MB (16249142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f570029d1c909082d8ee9deeb825fc40c82336a5604e178f0b1461891875a388`
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
# Tue, 05 Jun 2018 17:48:25 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.3/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Tue, 05 Jun 2018 17:48:26 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Tue, 05 Jun 2018 17:48:27 GMT
EXPOSE 80/tcp
# Tue, 05 Jun 2018 17:48:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Jun 2018 17:48:28 GMT
CMD ["traefik"]
# Tue, 05 Jun 2018 17:48:29 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.3 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:b9997d1ccbe84e4b7b5204de7f6c941ae51ced874754bac98d2c48cedd8d25e5`  
		Last Modified: Tue, 05 Jun 2018 17:50:11 GMT  
		Size: 14.0 MB (13982384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:779ba719bda0992b7418bf54ac1c5aac45919daf7da9bc2c14dda84ed33ddf5d`  
		Last Modified: Tue, 05 Jun 2018 17:50:06 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.6`

```console
$ docker pull traefik@sha256:95057fb8248499b9ddedef139ad7f56169e344cc69fd685a7d0daa8adaa72d01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.6` - linux; amd64

```console
$ docker pull traefik@sha256:a49afa04eab91c5eccef63e1c22560365b16779b17ab404feeed2c4a19b7d696
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.9 MB (14888244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8b7f7e1c8d890faae86dc8f22136d13a322289d75c2c8ce33dcae81947f914c`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:11:40 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 05 Jun 2018 17:53:51 GMT
COPY file:1cf6828b90bf50fe31d45e267baa3d72366e13a44614b5096d61146d90776863 in / 
# Tue, 05 Jun 2018 17:53:51 GMT
EXPOSE 80/tcp
# Tue, 05 Jun 2018 17:53:51 GMT
ENTRYPOINT ["/traefik"]
# Tue, 05 Jun 2018 17:53:51 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5d3835484afecc78dccfa2f7d4fcf273aacfe0c7600b957314e38488f3942045`  
		Last Modified: Fri, 03 Nov 2017 22:12:12 GMT  
		Size: 155.2 KB (155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9956c661348afd49c27bccc1f201ff0b64006f6a79d40b94d660194c55a7cfe`  
		Last Modified: Tue, 05 Jun 2018 17:54:23 GMT  
		Size: 14.7 MB (14733092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.6` - linux; arm variant v6

```console
$ docker pull traefik@sha256:c7c9162710e9814d128f7beba2028b478713e63a88eeb58ee1762337433dbd34
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14268712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3dec8f667d29e1bde0f1ed20e5a053c938216b7e43a2dcc96878a9d4c510914`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 05 Jun 2018 17:47:09 GMT
COPY file:32fbdf8e57d557aad963d8bd9d585745365aa5e1a10014bd09de379a8cfa852a in / 
# Tue, 05 Jun 2018 17:47:09 GMT
EXPOSE 80/tcp
# Tue, 05 Jun 2018 17:47:09 GMT
ENTRYPOINT ["/traefik"]
# Tue, 05 Jun 2018 17:47:10 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f83355cc339d9deb653708b614aa94a58316e0b3def1f5ee9bb0d10e0087c3a`  
		Last Modified: Tue, 05 Jun 2018 17:47:36 GMT  
		Size: 14.1 MB (14113528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.6` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:30f5f623159316dcedbd11463f1f311ce90be1b7b49d144563fadacd267f3d16
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13970156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14549af24dbcd8d63a4d63b66c7f641a2b0d1665dfa67da4abcf80c13e530391`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 05 Jun 2018 17:47:58 GMT
COPY file:a0022dfe017fe2b717fd7f556158fa25f3daf02b436aa1cbe270d3a8f160d238 in / 
# Tue, 05 Jun 2018 17:47:59 GMT
EXPOSE 80/tcp
# Tue, 05 Jun 2018 17:47:59 GMT
ENTRYPOINT ["/traefik"]
# Tue, 05 Jun 2018 17:48:00 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a085d104228aea736e7db0572509c2b5269de957d6818fa4b4c3cd454dde7159`  
		Last Modified: Tue, 05 Jun 2018 17:48:56 GMT  
		Size: 13.8 MB (13815005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.6.3`

```console
$ docker pull traefik@sha256:95057fb8248499b9ddedef139ad7f56169e344cc69fd685a7d0daa8adaa72d01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.6.3` - linux; amd64

```console
$ docker pull traefik@sha256:a49afa04eab91c5eccef63e1c22560365b16779b17ab404feeed2c4a19b7d696
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.9 MB (14888244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8b7f7e1c8d890faae86dc8f22136d13a322289d75c2c8ce33dcae81947f914c`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:11:40 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 05 Jun 2018 17:53:51 GMT
COPY file:1cf6828b90bf50fe31d45e267baa3d72366e13a44614b5096d61146d90776863 in / 
# Tue, 05 Jun 2018 17:53:51 GMT
EXPOSE 80/tcp
# Tue, 05 Jun 2018 17:53:51 GMT
ENTRYPOINT ["/traefik"]
# Tue, 05 Jun 2018 17:53:51 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5d3835484afecc78dccfa2f7d4fcf273aacfe0c7600b957314e38488f3942045`  
		Last Modified: Fri, 03 Nov 2017 22:12:12 GMT  
		Size: 155.2 KB (155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9956c661348afd49c27bccc1f201ff0b64006f6a79d40b94d660194c55a7cfe`  
		Last Modified: Tue, 05 Jun 2018 17:54:23 GMT  
		Size: 14.7 MB (14733092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.6.3` - linux; arm variant v6

```console
$ docker pull traefik@sha256:c7c9162710e9814d128f7beba2028b478713e63a88eeb58ee1762337433dbd34
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14268712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3dec8f667d29e1bde0f1ed20e5a053c938216b7e43a2dcc96878a9d4c510914`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 05 Jun 2018 17:47:09 GMT
COPY file:32fbdf8e57d557aad963d8bd9d585745365aa5e1a10014bd09de379a8cfa852a in / 
# Tue, 05 Jun 2018 17:47:09 GMT
EXPOSE 80/tcp
# Tue, 05 Jun 2018 17:47:09 GMT
ENTRYPOINT ["/traefik"]
# Tue, 05 Jun 2018 17:47:10 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f83355cc339d9deb653708b614aa94a58316e0b3def1f5ee9bb0d10e0087c3a`  
		Last Modified: Tue, 05 Jun 2018 17:47:36 GMT  
		Size: 14.1 MB (14113528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.6.3` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:30f5f623159316dcedbd11463f1f311ce90be1b7b49d144563fadacd267f3d16
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13970156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14549af24dbcd8d63a4d63b66c7f641a2b0d1665dfa67da4abcf80c13e530391`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 05 Jun 2018 17:47:58 GMT
COPY file:a0022dfe017fe2b717fd7f556158fa25f3daf02b436aa1cbe270d3a8f160d238 in / 
# Tue, 05 Jun 2018 17:47:59 GMT
EXPOSE 80/tcp
# Tue, 05 Jun 2018 17:47:59 GMT
ENTRYPOINT ["/traefik"]
# Tue, 05 Jun 2018 17:48:00 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a085d104228aea736e7db0572509c2b5269de957d6818fa4b4c3cd454dde7159`  
		Last Modified: Tue, 05 Jun 2018 17:48:56 GMT  
		Size: 13.8 MB (13815005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.6.3-alpine`

```console
$ docker pull traefik@sha256:3fde9ec7692454d29663e6d16ceb9255bc128f93d9f33fbca17ce1f3bbd9ca19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.6.3-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:807b80b65a4a1f9017744b75298560053aedb89638ab8a683ce22e60c3df92d1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17242783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8a899db400160a1789e817e35ca0801236d8a5d552c94c1a6e31e2144421beb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 01:28:51 GMT
RUN apk --no-cache add ca-certificates
# Tue, 05 Jun 2018 17:54:05 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.3/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Tue, 05 Jun 2018 17:54:06 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Tue, 05 Jun 2018 17:54:06 GMT
EXPOSE 80/tcp
# Tue, 05 Jun 2018 17:54:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Jun 2018 17:54:06 GMT
CMD ["traefik"]
# Tue, 05 Jun 2018 17:54:07 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.3 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:c3e998f85b4abcc8fa11fed5ae0392faf3ad118ca9f294b27a0e643cd31d2fc1`  
		Last Modified: Tue, 05 Jun 2018 17:55:17 GMT  
		Size: 14.9 MB (14899704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0908932c917bc4ce9e3eee542817a93d1e8bbfd18d3d746aa8737d9e9a3e0fef`  
		Last Modified: Tue, 05 Jun 2018 17:55:14 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.6.3-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:3f7b2d19522bbd2dfac71f617af19031a1ac1e90f3ec99bf3d552e6b093ff07c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.6 MB (16599367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb44e1b2caca6c584bd9a11f8a8730d12c0780e3d5afdb8e2ab6b7da73d0e4d4`
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
# Tue, 05 Jun 2018 17:47:17 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.3/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Tue, 05 Jun 2018 17:47:18 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Tue, 05 Jun 2018 17:47:18 GMT
EXPOSE 80/tcp
# Tue, 05 Jun 2018 17:47:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Jun 2018 17:47:18 GMT
CMD ["traefik"]
# Tue, 05 Jun 2018 17:47:18 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.3 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:ca9776e1a6668bb5e9ec9f1d816a599139f424f5fa73029bd73f0bdaf81be60e`  
		Last Modified: Tue, 05 Jun 2018 17:48:00 GMT  
		Size: 14.3 MB (14280715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90528a8f8c5d1f9b4848cc1b831056d718576b1713ea3c66cf96d25ef91f2c57`  
		Last Modified: Tue, 05 Jun 2018 17:47:54 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.6.3-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:4b105f54fcf1f0fcd53727d4812fc941b8cca187c01056c35bacdf9fe2cee6c4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.2 MB (16249142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f570029d1c909082d8ee9deeb825fc40c82336a5604e178f0b1461891875a388`
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
# Tue, 05 Jun 2018 17:48:25 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.3/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Tue, 05 Jun 2018 17:48:26 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Tue, 05 Jun 2018 17:48:27 GMT
EXPOSE 80/tcp
# Tue, 05 Jun 2018 17:48:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Jun 2018 17:48:28 GMT
CMD ["traefik"]
# Tue, 05 Jun 2018 17:48:29 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.3 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:b9997d1ccbe84e4b7b5204de7f6c941ae51ced874754bac98d2c48cedd8d25e5`  
		Last Modified: Tue, 05 Jun 2018 17:50:11 GMT  
		Size: 14.0 MB (13982384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:779ba719bda0992b7418bf54ac1c5aac45919daf7da9bc2c14dda84ed33ddf5d`  
		Last Modified: Tue, 05 Jun 2018 17:50:06 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.6-alpine`

```console
$ docker pull traefik@sha256:3fde9ec7692454d29663e6d16ceb9255bc128f93d9f33fbca17ce1f3bbd9ca19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.6-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:807b80b65a4a1f9017744b75298560053aedb89638ab8a683ce22e60c3df92d1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17242783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8a899db400160a1789e817e35ca0801236d8a5d552c94c1a6e31e2144421beb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 01:28:51 GMT
RUN apk --no-cache add ca-certificates
# Tue, 05 Jun 2018 17:54:05 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.3/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Tue, 05 Jun 2018 17:54:06 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Tue, 05 Jun 2018 17:54:06 GMT
EXPOSE 80/tcp
# Tue, 05 Jun 2018 17:54:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Jun 2018 17:54:06 GMT
CMD ["traefik"]
# Tue, 05 Jun 2018 17:54:07 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.3 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:c3e998f85b4abcc8fa11fed5ae0392faf3ad118ca9f294b27a0e643cd31d2fc1`  
		Last Modified: Tue, 05 Jun 2018 17:55:17 GMT  
		Size: 14.9 MB (14899704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0908932c917bc4ce9e3eee542817a93d1e8bbfd18d3d746aa8737d9e9a3e0fef`  
		Last Modified: Tue, 05 Jun 2018 17:55:14 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.6-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:3f7b2d19522bbd2dfac71f617af19031a1ac1e90f3ec99bf3d552e6b093ff07c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.6 MB (16599367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb44e1b2caca6c584bd9a11f8a8730d12c0780e3d5afdb8e2ab6b7da73d0e4d4`
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
# Tue, 05 Jun 2018 17:47:17 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.3/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Tue, 05 Jun 2018 17:47:18 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Tue, 05 Jun 2018 17:47:18 GMT
EXPOSE 80/tcp
# Tue, 05 Jun 2018 17:47:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Jun 2018 17:47:18 GMT
CMD ["traefik"]
# Tue, 05 Jun 2018 17:47:18 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.3 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:ca9776e1a6668bb5e9ec9f1d816a599139f424f5fa73029bd73f0bdaf81be60e`  
		Last Modified: Tue, 05 Jun 2018 17:48:00 GMT  
		Size: 14.3 MB (14280715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90528a8f8c5d1f9b4848cc1b831056d718576b1713ea3c66cf96d25ef91f2c57`  
		Last Modified: Tue, 05 Jun 2018 17:47:54 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.6-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:4b105f54fcf1f0fcd53727d4812fc941b8cca187c01056c35bacdf9fe2cee6c4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.2 MB (16249142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f570029d1c909082d8ee9deeb825fc40c82336a5604e178f0b1461891875a388`
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
# Tue, 05 Jun 2018 17:48:25 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.3/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Tue, 05 Jun 2018 17:48:26 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Tue, 05 Jun 2018 17:48:27 GMT
EXPOSE 80/tcp
# Tue, 05 Jun 2018 17:48:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Jun 2018 17:48:28 GMT
CMD ["traefik"]
# Tue, 05 Jun 2018 17:48:29 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.3 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:b9997d1ccbe84e4b7b5204de7f6c941ae51ced874754bac98d2c48cedd8d25e5`  
		Last Modified: Tue, 05 Jun 2018 17:50:11 GMT  
		Size: 14.0 MB (13982384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:779ba719bda0992b7418bf54ac1c5aac45919daf7da9bc2c14dda84ed33ddf5d`  
		Last Modified: Tue, 05 Jun 2018 17:50:06 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
