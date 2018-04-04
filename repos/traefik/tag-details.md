<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `traefik`

-	[`traefik:1.5`](#traefik15)
-	[`traefik:1.5.4`](#traefik154)
-	[`traefik:1.5.4-alpine`](#traefik154-alpine)
-	[`traefik:1.5-alpine`](#traefik15-alpine)
-	[`traefik:1.6`](#traefik16)
-	[`traefik:1.6.0-rc4`](#traefik160-rc4)
-	[`traefik:1.6.0-rc4-alpine`](#traefik160-rc4-alpine)
-	[`traefik:1.6-alpine`](#traefik16-alpine)
-	[`traefik:alpine`](#traefikalpine)
-	[`traefik:cancoillotte`](#traefikcancoillotte)
-	[`traefik:cancoillotte-alpine`](#traefikcancoillotte-alpine)
-	[`traefik:latest`](#traefiklatest)
-	[`traefik:tetedemoine`](#traefiktetedemoine)
-	[`traefik:tetedemoine-alpine`](#traefiktetedemoine-alpine)
-	[`traefik:v1.5`](#traefikv15)
-	[`traefik:v1.5.4`](#traefikv154)
-	[`traefik:v1.5.4-alpine`](#traefikv154-alpine)
-	[`traefik:v1.5-alpine`](#traefikv15-alpine)
-	[`traefik:v1.6`](#traefikv16)
-	[`traefik:v1.6.0-rc4`](#traefikv160-rc4)
-	[`traefik:v1.6.0-rc4-alpine`](#traefikv160-rc4-alpine)
-	[`traefik:v1.6-alpine`](#traefikv16-alpine)

## `traefik:1.5`

```console
$ docker pull traefik@sha256:96fe09a867c29dfd5ecf240c955ae104dc7d3422bcc3d42b74a0d0fcc5a2377f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.5` - linux; amd64

```console
$ docker pull traefik@sha256:38b4cc2a487fed23fbe7e4c71b91a4b33453e76032c50082b98bd56bfe8e4c78
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 MB (14084670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fde722950ccf89bb7c565f1bcbd2e29650fd7cb3a857757d3a449e8c4cbe1f4b`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:11:40 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Fri, 16 Mar 2018 07:18:39 GMT
COPY file:20cda123cabf7f473fee9210e5017818ed36fbd0ffe781e06277259f4f4446a6 in / 
# Fri, 16 Mar 2018 07:18:39 GMT
EXPOSE 80/tcp
# Fri, 16 Mar 2018 07:18:40 GMT
ENTRYPOINT ["/traefik"]
# Fri, 16 Mar 2018 07:18:40 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5d3835484afecc78dccfa2f7d4fcf273aacfe0c7600b957314e38488f3942045`  
		Last Modified: Fri, 03 Nov 2017 22:12:12 GMT  
		Size: 155.2 KB (155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a34d9cadf285e2c0efbb9c81f3d9cf9403ad8b9b000bc4dbc579d5351a89b3c0`  
		Last Modified: Fri, 16 Mar 2018 07:20:02 GMT  
		Size: 13.9 MB (13929518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.5` - linux; arm variant v6

```console
$ docker pull traefik@sha256:c4c82baf7e74162fdc3e59981214236c211c956177036be59420de692520ec53
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 MB (13235381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35432e6ca8a0c5f31fe7deb875dd7fc1a3a5121520e9c0d6e898e20b9d651d3a`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 15 Mar 2018 23:48:25 GMT
COPY file:81a8c5cbebf4ec1b8f794eed3a8bbfb963571825cc8917de6db828f7abe03c67 in / 
# Thu, 15 Mar 2018 23:48:25 GMT
EXPOSE 80/tcp
# Thu, 15 Mar 2018 23:48:26 GMT
ENTRYPOINT ["/traefik"]
# Thu, 15 Mar 2018 23:48:26 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a2b5589619111002fd55cff1b55cbf9363e5d6f3cf677ed11af800a50ac09d4`  
		Last Modified: Thu, 15 Mar 2018 23:48:50 GMT  
		Size: 13.1 MB (13080197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.5` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:af362c3e2aba2258f0b4357a32f86c9f508985153c1f645da264f9964440b6e3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 MB (12882648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0006c2d4ff90f49f68264a3dc0ff87ca104f5ebb2cb2d8b833db89ad01ddd67a`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Fri, 16 Mar 2018 04:55:17 GMT
COPY file:07fc6a89166180ca7f38065f1f3f1001b8300f17d3f31791ec092d253ec8f3e6 in / 
# Fri, 16 Mar 2018 04:55:18 GMT
EXPOSE 80/tcp
# Fri, 16 Mar 2018 04:55:18 GMT
ENTRYPOINT ["/traefik"]
# Fri, 16 Mar 2018 04:55:19 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d32d3f00ec48c5e6d1d0aad98cb0dc99e9860c1794079af113d6f096db21cc13`  
		Last Modified: Fri, 16 Mar 2018 04:56:33 GMT  
		Size: 12.7 MB (12727497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.5.4`

```console
$ docker pull traefik@sha256:96fe09a867c29dfd5ecf240c955ae104dc7d3422bcc3d42b74a0d0fcc5a2377f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.5.4` - linux; amd64

```console
$ docker pull traefik@sha256:38b4cc2a487fed23fbe7e4c71b91a4b33453e76032c50082b98bd56bfe8e4c78
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 MB (14084670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fde722950ccf89bb7c565f1bcbd2e29650fd7cb3a857757d3a449e8c4cbe1f4b`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:11:40 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Fri, 16 Mar 2018 07:18:39 GMT
COPY file:20cda123cabf7f473fee9210e5017818ed36fbd0ffe781e06277259f4f4446a6 in / 
# Fri, 16 Mar 2018 07:18:39 GMT
EXPOSE 80/tcp
# Fri, 16 Mar 2018 07:18:40 GMT
ENTRYPOINT ["/traefik"]
# Fri, 16 Mar 2018 07:18:40 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5d3835484afecc78dccfa2f7d4fcf273aacfe0c7600b957314e38488f3942045`  
		Last Modified: Fri, 03 Nov 2017 22:12:12 GMT  
		Size: 155.2 KB (155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a34d9cadf285e2c0efbb9c81f3d9cf9403ad8b9b000bc4dbc579d5351a89b3c0`  
		Last Modified: Fri, 16 Mar 2018 07:20:02 GMT  
		Size: 13.9 MB (13929518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.5.4` - linux; arm variant v6

```console
$ docker pull traefik@sha256:c4c82baf7e74162fdc3e59981214236c211c956177036be59420de692520ec53
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 MB (13235381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35432e6ca8a0c5f31fe7deb875dd7fc1a3a5121520e9c0d6e898e20b9d651d3a`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 15 Mar 2018 23:48:25 GMT
COPY file:81a8c5cbebf4ec1b8f794eed3a8bbfb963571825cc8917de6db828f7abe03c67 in / 
# Thu, 15 Mar 2018 23:48:25 GMT
EXPOSE 80/tcp
# Thu, 15 Mar 2018 23:48:26 GMT
ENTRYPOINT ["/traefik"]
# Thu, 15 Mar 2018 23:48:26 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a2b5589619111002fd55cff1b55cbf9363e5d6f3cf677ed11af800a50ac09d4`  
		Last Modified: Thu, 15 Mar 2018 23:48:50 GMT  
		Size: 13.1 MB (13080197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.5.4` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:af362c3e2aba2258f0b4357a32f86c9f508985153c1f645da264f9964440b6e3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 MB (12882648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0006c2d4ff90f49f68264a3dc0ff87ca104f5ebb2cb2d8b833db89ad01ddd67a`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Fri, 16 Mar 2018 04:55:17 GMT
COPY file:07fc6a89166180ca7f38065f1f3f1001b8300f17d3f31791ec092d253ec8f3e6 in / 
# Fri, 16 Mar 2018 04:55:18 GMT
EXPOSE 80/tcp
# Fri, 16 Mar 2018 04:55:18 GMT
ENTRYPOINT ["/traefik"]
# Fri, 16 Mar 2018 04:55:19 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d32d3f00ec48c5e6d1d0aad98cb0dc99e9860c1794079af113d6f096db21cc13`  
		Last Modified: Fri, 16 Mar 2018 04:56:33 GMT  
		Size: 12.7 MB (12727497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.5.4-alpine`

```console
$ docker pull traefik@sha256:5c45266c0394d74f4e55ecc3bc7f223ff34656bfa0891d4abc53bdb88b8f69bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.5.4-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:a23c7a367ec7c2c393e5beea0f870fd2251d6352b697d1414b7991dcc5d8dd62
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.4 MB (16439702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adb52c73636ca298f308971a1163641169256d5084d3ec639c255620d4bcd9eb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 01:28:51 GMT
RUN apk --no-cache add ca-certificates
# Fri, 16 Mar 2018 07:19:05 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.5.4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Fri, 16 Mar 2018 07:19:06 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Fri, 16 Mar 2018 07:19:06 GMT
EXPOSE 80/tcp
# Fri, 16 Mar 2018 07:19:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Mar 2018 07:19:07 GMT
CMD ["traefik"]
# Fri, 16 Mar 2018 07:19:07 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:d0993fa6d68be32db4245a1478c59a52017069fa0f127acaf75cffd0b06d2546`  
		Last Modified: Fri, 16 Mar 2018 07:36:18 GMT  
		Size: 14.1 MB (14096624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caa004eb906b265c9cad367574d57eef2925cce583ec2370d5083b0cc575473a`  
		Last Modified: Fri, 16 Mar 2018 07:36:14 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.5.4-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:63b7c7fd1aba7fbecd8dc6e37a6d7ed62fd4d2c4f7f253f8f03bb49e32782082
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 MB (15567566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2f53bc311ef3567f45a329c808cbe93ca56bc9b802f7947eb10efa058a37a43`
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
# Tue, 27 Mar 2018 23:48:49 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.5.4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Tue, 27 Mar 2018 23:48:49 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Tue, 27 Mar 2018 23:48:50 GMT
EXPOSE 80/tcp
# Tue, 27 Mar 2018 23:48:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 27 Mar 2018 23:48:50 GMT
CMD ["traefik"]
# Tue, 27 Mar 2018 23:48:50 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:a4fd8e99b76705c22a5f52015d1e223561e3e7d17a7a8a72b42493ed100382b4`  
		Last Modified: Tue, 27 Mar 2018 23:49:34 GMT  
		Size: 13.2 MB (13248913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4f76c174f8879e3587bb8b77a600f046a2b76056377c99e5fc68db2ffe93728`  
		Last Modified: Tue, 27 Mar 2018 23:49:30 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.5.4-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:cc4e442cece8db3502f2a94d93b28723c27b1922485827526a7cf0231db0eb65
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.2 MB (15162369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a0dc2e38b34426d4066971076be3a6178f08413040cf363feee80250880f293`
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
# Fri, 16 Mar 2018 04:55:57 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.5.4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Fri, 16 Mar 2018 04:55:58 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Fri, 16 Mar 2018 04:55:59 GMT
EXPOSE 80/tcp
# Fri, 16 Mar 2018 04:55:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Mar 2018 04:56:00 GMT
CMD ["traefik"]
# Fri, 16 Mar 2018 04:56:01 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:570e2b9952fc571e6809bc8839fafecf856f0c5ee83d3588679a3a4d5ac63c3e`  
		Last Modified: Fri, 16 Mar 2018 04:58:29 GMT  
		Size: 12.9 MB (12895609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5e29b5b5bdced39fa905d02326dbf79771fc670686491a864f8e273d7066da0`  
		Last Modified: Fri, 16 Mar 2018 04:58:24 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.5-alpine`

```console
$ docker pull traefik@sha256:5c45266c0394d74f4e55ecc3bc7f223ff34656bfa0891d4abc53bdb88b8f69bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.5-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:a23c7a367ec7c2c393e5beea0f870fd2251d6352b697d1414b7991dcc5d8dd62
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.4 MB (16439702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adb52c73636ca298f308971a1163641169256d5084d3ec639c255620d4bcd9eb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 01:28:51 GMT
RUN apk --no-cache add ca-certificates
# Fri, 16 Mar 2018 07:19:05 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.5.4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Fri, 16 Mar 2018 07:19:06 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Fri, 16 Mar 2018 07:19:06 GMT
EXPOSE 80/tcp
# Fri, 16 Mar 2018 07:19:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Mar 2018 07:19:07 GMT
CMD ["traefik"]
# Fri, 16 Mar 2018 07:19:07 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:d0993fa6d68be32db4245a1478c59a52017069fa0f127acaf75cffd0b06d2546`  
		Last Modified: Fri, 16 Mar 2018 07:36:18 GMT  
		Size: 14.1 MB (14096624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caa004eb906b265c9cad367574d57eef2925cce583ec2370d5083b0cc575473a`  
		Last Modified: Fri, 16 Mar 2018 07:36:14 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.5-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:63b7c7fd1aba7fbecd8dc6e37a6d7ed62fd4d2c4f7f253f8f03bb49e32782082
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 MB (15567566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2f53bc311ef3567f45a329c808cbe93ca56bc9b802f7947eb10efa058a37a43`
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
# Tue, 27 Mar 2018 23:48:49 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.5.4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Tue, 27 Mar 2018 23:48:49 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Tue, 27 Mar 2018 23:48:50 GMT
EXPOSE 80/tcp
# Tue, 27 Mar 2018 23:48:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 27 Mar 2018 23:48:50 GMT
CMD ["traefik"]
# Tue, 27 Mar 2018 23:48:50 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:a4fd8e99b76705c22a5f52015d1e223561e3e7d17a7a8a72b42493ed100382b4`  
		Last Modified: Tue, 27 Mar 2018 23:49:34 GMT  
		Size: 13.2 MB (13248913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4f76c174f8879e3587bb8b77a600f046a2b76056377c99e5fc68db2ffe93728`  
		Last Modified: Tue, 27 Mar 2018 23:49:30 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.5-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:cc4e442cece8db3502f2a94d93b28723c27b1922485827526a7cf0231db0eb65
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.2 MB (15162369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a0dc2e38b34426d4066971076be3a6178f08413040cf363feee80250880f293`
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
# Fri, 16 Mar 2018 04:55:57 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.5.4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Fri, 16 Mar 2018 04:55:58 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Fri, 16 Mar 2018 04:55:59 GMT
EXPOSE 80/tcp
# Fri, 16 Mar 2018 04:55:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Mar 2018 04:56:00 GMT
CMD ["traefik"]
# Fri, 16 Mar 2018 04:56:01 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:570e2b9952fc571e6809bc8839fafecf856f0c5ee83d3588679a3a4d5ac63c3e`  
		Last Modified: Fri, 16 Mar 2018 04:58:29 GMT  
		Size: 12.9 MB (12895609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5e29b5b5bdced39fa905d02326dbf79771fc670686491a864f8e273d7066da0`  
		Last Modified: Fri, 16 Mar 2018 04:58:24 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.6`

```console
$ docker pull traefik@sha256:d425b98e4efd420043c715dc5c1b9391da34b3c5e9ba452e8d22008ad8fa8fdb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.6` - linux; amd64

```console
$ docker pull traefik@sha256:e2dd5efd281fd16ea6188024b85450c7b4e116b680a6475a5c4175511e1a0c88
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14303369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43f8d8b30157796f0febb1b8db1f1ef36ffc8d8a1676e8838dda11fa6e7b2872`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:11:40 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 04 Apr 2018 17:18:27 GMT
COPY file:e27a325022d3a1ad5dce031a07a8a34185dc6276fa385f56c19ad938940b4843 in / 
# Wed, 04 Apr 2018 17:18:27 GMT
EXPOSE 80/tcp
# Wed, 04 Apr 2018 17:18:27 GMT
ENTRYPOINT ["/traefik"]
# Wed, 04 Apr 2018 17:18:28 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5d3835484afecc78dccfa2f7d4fcf273aacfe0c7600b957314e38488f3942045`  
		Last Modified: Fri, 03 Nov 2017 22:12:12 GMT  
		Size: 155.2 KB (155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76bb1e0f91d383335863c2fd20f888585c911bce0cc67a6e514212490f0af765`  
		Last Modified: Wed, 04 Apr 2018 17:19:32 GMT  
		Size: 14.1 MB (14148217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.6` - linux; arm variant v6

```console
$ docker pull traefik@sha256:19d5d9e2ef545a7328e7181566e4ebd796327d8da1a131f95cfcbb05d917b9ca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 MB (13703028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d27b0ee9b4bc26fdfd03e533ef7e48aa0f52e03f649717a56186a144130c09c`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 04 Apr 2018 20:02:15 GMT
COPY file:e0f908d0300dd19378a5a9baded68d9e445f20a1f205e9bdebf0d39f61c7ff09 in / 
# Wed, 04 Apr 2018 20:02:15 GMT
EXPOSE 80/tcp
# Wed, 04 Apr 2018 20:02:16 GMT
ENTRYPOINT ["/traefik"]
# Wed, 04 Apr 2018 20:02:16 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd17961175a502563e2f45ac8121a4586e44ede1f715c11dae88b8ffcb24f6f4`  
		Last Modified: Wed, 04 Apr 2018 20:02:50 GMT  
		Size: 13.5 MB (13547844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.6` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:978516c6bc46d3103c950ffa92e087bbb91387c473b402c1582edd915064e6dd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 MB (13414652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6aaa9d407d9ab23c769241e17c82b6ddc30940c59450327f829cc323112ab703`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 04 Apr 2018 20:03:41 GMT
COPY file:71c1d97f35ff1301829326ecce36640daf0cae8623e07ef6ee5a342aacc2f421 in / 
# Wed, 04 Apr 2018 20:03:42 GMT
EXPOSE 80/tcp
# Wed, 04 Apr 2018 20:03:43 GMT
ENTRYPOINT ["/traefik"]
# Wed, 04 Apr 2018 20:03:45 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35eaed942a46ae3a4efcb109cccb36c83cb0c38798864ea0c0c9ea189571ac35`  
		Last Modified: Wed, 04 Apr 2018 20:05:19 GMT  
		Size: 13.3 MB (13259501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.6.0-rc4`

```console
$ docker pull traefik@sha256:d425b98e4efd420043c715dc5c1b9391da34b3c5e9ba452e8d22008ad8fa8fdb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.6.0-rc4` - linux; amd64

```console
$ docker pull traefik@sha256:e2dd5efd281fd16ea6188024b85450c7b4e116b680a6475a5c4175511e1a0c88
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14303369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43f8d8b30157796f0febb1b8db1f1ef36ffc8d8a1676e8838dda11fa6e7b2872`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:11:40 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 04 Apr 2018 17:18:27 GMT
COPY file:e27a325022d3a1ad5dce031a07a8a34185dc6276fa385f56c19ad938940b4843 in / 
# Wed, 04 Apr 2018 17:18:27 GMT
EXPOSE 80/tcp
# Wed, 04 Apr 2018 17:18:27 GMT
ENTRYPOINT ["/traefik"]
# Wed, 04 Apr 2018 17:18:28 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5d3835484afecc78dccfa2f7d4fcf273aacfe0c7600b957314e38488f3942045`  
		Last Modified: Fri, 03 Nov 2017 22:12:12 GMT  
		Size: 155.2 KB (155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76bb1e0f91d383335863c2fd20f888585c911bce0cc67a6e514212490f0af765`  
		Last Modified: Wed, 04 Apr 2018 17:19:32 GMT  
		Size: 14.1 MB (14148217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.6.0-rc4` - linux; arm variant v6

```console
$ docker pull traefik@sha256:19d5d9e2ef545a7328e7181566e4ebd796327d8da1a131f95cfcbb05d917b9ca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 MB (13703028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d27b0ee9b4bc26fdfd03e533ef7e48aa0f52e03f649717a56186a144130c09c`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 04 Apr 2018 20:02:15 GMT
COPY file:e0f908d0300dd19378a5a9baded68d9e445f20a1f205e9bdebf0d39f61c7ff09 in / 
# Wed, 04 Apr 2018 20:02:15 GMT
EXPOSE 80/tcp
# Wed, 04 Apr 2018 20:02:16 GMT
ENTRYPOINT ["/traefik"]
# Wed, 04 Apr 2018 20:02:16 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd17961175a502563e2f45ac8121a4586e44ede1f715c11dae88b8ffcb24f6f4`  
		Last Modified: Wed, 04 Apr 2018 20:02:50 GMT  
		Size: 13.5 MB (13547844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.6.0-rc4` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:978516c6bc46d3103c950ffa92e087bbb91387c473b402c1582edd915064e6dd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 MB (13414652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6aaa9d407d9ab23c769241e17c82b6ddc30940c59450327f829cc323112ab703`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 04 Apr 2018 20:03:41 GMT
COPY file:71c1d97f35ff1301829326ecce36640daf0cae8623e07ef6ee5a342aacc2f421 in / 
# Wed, 04 Apr 2018 20:03:42 GMT
EXPOSE 80/tcp
# Wed, 04 Apr 2018 20:03:43 GMT
ENTRYPOINT ["/traefik"]
# Wed, 04 Apr 2018 20:03:45 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35eaed942a46ae3a4efcb109cccb36c83cb0c38798864ea0c0c9ea189571ac35`  
		Last Modified: Wed, 04 Apr 2018 20:05:19 GMT  
		Size: 13.3 MB (13259501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.6.0-rc4-alpine`

```console
$ docker pull traefik@sha256:6e06cabe455d9a18b099715d7b51a2f6dce6e09e0ca2481a9fda81401e10675a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.6.0-rc4-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:b30941d6c61ec13cb4f2ee86aff9db238d5eeb03b9958372237ec1400f476564
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16658490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7d19f78a20fe87b7d4ec31725a2f405b324e83a87ff2a873f75303ce5697df7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 01:28:51 GMT
RUN apk --no-cache add ca-certificates
# Wed, 04 Apr 2018 17:18:58 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.0-rc4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 04 Apr 2018 17:18:59 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 04 Apr 2018 17:18:59 GMT
EXPOSE 80/tcp
# Wed, 04 Apr 2018 17:18:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 04 Apr 2018 17:19:00 GMT
CMD ["traefik"]
# Wed, 04 Apr 2018 17:19:00 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:e4395b57c801fefb4e920c2932f7f75fab0de6f19fd49febcd962ca6f05afbc3`  
		Last Modified: Wed, 04 Apr 2018 17:21:17 GMT  
		Size: 14.3 MB (14315410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7112b5d9f3cf768efff7add4bb912335c6bbcd29ba50464631102a2106e21f0a`  
		Last Modified: Wed, 04 Apr 2018 17:21:14 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.6.0-rc4-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:b912f2091ba2b2114f2e9ce10a4cc94e585c0da01198913311e71500c5d33c63
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.0 MB (16033032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55437f9e4a87206956c8b459781d394142dce77a6679e26e608067418b8b52a3`
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
# Wed, 04 Apr 2018 20:02:27 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.0-rc4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 04 Apr 2018 20:02:27 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 04 Apr 2018 20:02:27 GMT
EXPOSE 80/tcp
# Wed, 04 Apr 2018 20:02:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 04 Apr 2018 20:02:28 GMT
CMD ["traefik"]
# Wed, 04 Apr 2018 20:02:28 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:0648f9924143ee84684b87a7507906c8a98f16fe75eacde59d88cc954fc49508`  
		Last Modified: Wed, 04 Apr 2018 20:03:06 GMT  
		Size: 13.7 MB (13714380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04c9bc758c9ef7b8f083d4a8e8edd61c52d8d47043f2759dcac2831cece6fab8`  
		Last Modified: Wed, 04 Apr 2018 20:03:02 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.6.0-rc4-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:a50a4304d106fd7dca003f3ae5fc62587885071d4c05bd62bb187d4a063693f0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15694881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4c2fbe58f3ab6f18f6da038c203b862f21a838490e18302895cb7790d148957`
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
# Wed, 04 Apr 2018 20:04:23 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.0-rc4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 04 Apr 2018 20:04:24 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 04 Apr 2018 20:04:24 GMT
EXPOSE 80/tcp
# Wed, 04 Apr 2018 20:04:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 04 Apr 2018 20:04:26 GMT
CMD ["traefik"]
# Wed, 04 Apr 2018 20:04:26 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:aa90db5a0fc869264c112438e34a5480d6112cd941dc7e8bdd24bbd105765882`  
		Last Modified: Wed, 04 Apr 2018 20:07:13 GMT  
		Size: 13.4 MB (13428122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d7dd9ddee39799664aafbe13c15990f4211f933dc5d3918bacef4988317a98f`  
		Last Modified: Wed, 04 Apr 2018 20:07:09 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.6-alpine`

```console
$ docker pull traefik@sha256:6e06cabe455d9a18b099715d7b51a2f6dce6e09e0ca2481a9fda81401e10675a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.6-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:b30941d6c61ec13cb4f2ee86aff9db238d5eeb03b9958372237ec1400f476564
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16658490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7d19f78a20fe87b7d4ec31725a2f405b324e83a87ff2a873f75303ce5697df7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 01:28:51 GMT
RUN apk --no-cache add ca-certificates
# Wed, 04 Apr 2018 17:18:58 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.0-rc4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 04 Apr 2018 17:18:59 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 04 Apr 2018 17:18:59 GMT
EXPOSE 80/tcp
# Wed, 04 Apr 2018 17:18:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 04 Apr 2018 17:19:00 GMT
CMD ["traefik"]
# Wed, 04 Apr 2018 17:19:00 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:e4395b57c801fefb4e920c2932f7f75fab0de6f19fd49febcd962ca6f05afbc3`  
		Last Modified: Wed, 04 Apr 2018 17:21:17 GMT  
		Size: 14.3 MB (14315410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7112b5d9f3cf768efff7add4bb912335c6bbcd29ba50464631102a2106e21f0a`  
		Last Modified: Wed, 04 Apr 2018 17:21:14 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.6-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:b912f2091ba2b2114f2e9ce10a4cc94e585c0da01198913311e71500c5d33c63
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.0 MB (16033032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55437f9e4a87206956c8b459781d394142dce77a6679e26e608067418b8b52a3`
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
# Wed, 04 Apr 2018 20:02:27 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.0-rc4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 04 Apr 2018 20:02:27 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 04 Apr 2018 20:02:27 GMT
EXPOSE 80/tcp
# Wed, 04 Apr 2018 20:02:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 04 Apr 2018 20:02:28 GMT
CMD ["traefik"]
# Wed, 04 Apr 2018 20:02:28 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:0648f9924143ee84684b87a7507906c8a98f16fe75eacde59d88cc954fc49508`  
		Last Modified: Wed, 04 Apr 2018 20:03:06 GMT  
		Size: 13.7 MB (13714380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04c9bc758c9ef7b8f083d4a8e8edd61c52d8d47043f2759dcac2831cece6fab8`  
		Last Modified: Wed, 04 Apr 2018 20:03:02 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.6-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:a50a4304d106fd7dca003f3ae5fc62587885071d4c05bd62bb187d4a063693f0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15694881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4c2fbe58f3ab6f18f6da038c203b862f21a838490e18302895cb7790d148957`
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
# Wed, 04 Apr 2018 20:04:23 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.0-rc4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 04 Apr 2018 20:04:24 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 04 Apr 2018 20:04:24 GMT
EXPOSE 80/tcp
# Wed, 04 Apr 2018 20:04:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 04 Apr 2018 20:04:26 GMT
CMD ["traefik"]
# Wed, 04 Apr 2018 20:04:26 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:aa90db5a0fc869264c112438e34a5480d6112cd941dc7e8bdd24bbd105765882`  
		Last Modified: Wed, 04 Apr 2018 20:07:13 GMT  
		Size: 13.4 MB (13428122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d7dd9ddee39799664aafbe13c15990f4211f933dc5d3918bacef4988317a98f`  
		Last Modified: Wed, 04 Apr 2018 20:07:09 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:alpine`

```console
$ docker pull traefik@sha256:5c45266c0394d74f4e55ecc3bc7f223ff34656bfa0891d4abc53bdb88b8f69bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:alpine` - linux; amd64

```console
$ docker pull traefik@sha256:a23c7a367ec7c2c393e5beea0f870fd2251d6352b697d1414b7991dcc5d8dd62
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.4 MB (16439702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adb52c73636ca298f308971a1163641169256d5084d3ec639c255620d4bcd9eb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 01:28:51 GMT
RUN apk --no-cache add ca-certificates
# Fri, 16 Mar 2018 07:19:05 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.5.4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Fri, 16 Mar 2018 07:19:06 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Fri, 16 Mar 2018 07:19:06 GMT
EXPOSE 80/tcp
# Fri, 16 Mar 2018 07:19:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Mar 2018 07:19:07 GMT
CMD ["traefik"]
# Fri, 16 Mar 2018 07:19:07 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:d0993fa6d68be32db4245a1478c59a52017069fa0f127acaf75cffd0b06d2546`  
		Last Modified: Fri, 16 Mar 2018 07:36:18 GMT  
		Size: 14.1 MB (14096624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caa004eb906b265c9cad367574d57eef2925cce583ec2370d5083b0cc575473a`  
		Last Modified: Fri, 16 Mar 2018 07:36:14 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:63b7c7fd1aba7fbecd8dc6e37a6d7ed62fd4d2c4f7f253f8f03bb49e32782082
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 MB (15567566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2f53bc311ef3567f45a329c808cbe93ca56bc9b802f7947eb10efa058a37a43`
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
# Tue, 27 Mar 2018 23:48:49 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.5.4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Tue, 27 Mar 2018 23:48:49 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Tue, 27 Mar 2018 23:48:50 GMT
EXPOSE 80/tcp
# Tue, 27 Mar 2018 23:48:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 27 Mar 2018 23:48:50 GMT
CMD ["traefik"]
# Tue, 27 Mar 2018 23:48:50 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:a4fd8e99b76705c22a5f52015d1e223561e3e7d17a7a8a72b42493ed100382b4`  
		Last Modified: Tue, 27 Mar 2018 23:49:34 GMT  
		Size: 13.2 MB (13248913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4f76c174f8879e3587bb8b77a600f046a2b76056377c99e5fc68db2ffe93728`  
		Last Modified: Tue, 27 Mar 2018 23:49:30 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:cc4e442cece8db3502f2a94d93b28723c27b1922485827526a7cf0231db0eb65
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.2 MB (15162369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a0dc2e38b34426d4066971076be3a6178f08413040cf363feee80250880f293`
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
# Fri, 16 Mar 2018 04:55:57 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.5.4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Fri, 16 Mar 2018 04:55:58 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Fri, 16 Mar 2018 04:55:59 GMT
EXPOSE 80/tcp
# Fri, 16 Mar 2018 04:55:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Mar 2018 04:56:00 GMT
CMD ["traefik"]
# Fri, 16 Mar 2018 04:56:01 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:570e2b9952fc571e6809bc8839fafecf856f0c5ee83d3588679a3a4d5ac63c3e`  
		Last Modified: Fri, 16 Mar 2018 04:58:29 GMT  
		Size: 12.9 MB (12895609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5e29b5b5bdced39fa905d02326dbf79771fc670686491a864f8e273d7066da0`  
		Last Modified: Fri, 16 Mar 2018 04:58:24 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:cancoillotte`

```console
$ docker pull traefik@sha256:96fe09a867c29dfd5ecf240c955ae104dc7d3422bcc3d42b74a0d0fcc5a2377f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:cancoillotte` - linux; amd64

```console
$ docker pull traefik@sha256:38b4cc2a487fed23fbe7e4c71b91a4b33453e76032c50082b98bd56bfe8e4c78
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 MB (14084670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fde722950ccf89bb7c565f1bcbd2e29650fd7cb3a857757d3a449e8c4cbe1f4b`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:11:40 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Fri, 16 Mar 2018 07:18:39 GMT
COPY file:20cda123cabf7f473fee9210e5017818ed36fbd0ffe781e06277259f4f4446a6 in / 
# Fri, 16 Mar 2018 07:18:39 GMT
EXPOSE 80/tcp
# Fri, 16 Mar 2018 07:18:40 GMT
ENTRYPOINT ["/traefik"]
# Fri, 16 Mar 2018 07:18:40 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5d3835484afecc78dccfa2f7d4fcf273aacfe0c7600b957314e38488f3942045`  
		Last Modified: Fri, 03 Nov 2017 22:12:12 GMT  
		Size: 155.2 KB (155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a34d9cadf285e2c0efbb9c81f3d9cf9403ad8b9b000bc4dbc579d5351a89b3c0`  
		Last Modified: Fri, 16 Mar 2018 07:20:02 GMT  
		Size: 13.9 MB (13929518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:cancoillotte` - linux; arm variant v6

```console
$ docker pull traefik@sha256:c4c82baf7e74162fdc3e59981214236c211c956177036be59420de692520ec53
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 MB (13235381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35432e6ca8a0c5f31fe7deb875dd7fc1a3a5121520e9c0d6e898e20b9d651d3a`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 15 Mar 2018 23:48:25 GMT
COPY file:81a8c5cbebf4ec1b8f794eed3a8bbfb963571825cc8917de6db828f7abe03c67 in / 
# Thu, 15 Mar 2018 23:48:25 GMT
EXPOSE 80/tcp
# Thu, 15 Mar 2018 23:48:26 GMT
ENTRYPOINT ["/traefik"]
# Thu, 15 Mar 2018 23:48:26 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a2b5589619111002fd55cff1b55cbf9363e5d6f3cf677ed11af800a50ac09d4`  
		Last Modified: Thu, 15 Mar 2018 23:48:50 GMT  
		Size: 13.1 MB (13080197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:cancoillotte` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:af362c3e2aba2258f0b4357a32f86c9f508985153c1f645da264f9964440b6e3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 MB (12882648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0006c2d4ff90f49f68264a3dc0ff87ca104f5ebb2cb2d8b833db89ad01ddd67a`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Fri, 16 Mar 2018 04:55:17 GMT
COPY file:07fc6a89166180ca7f38065f1f3f1001b8300f17d3f31791ec092d253ec8f3e6 in / 
# Fri, 16 Mar 2018 04:55:18 GMT
EXPOSE 80/tcp
# Fri, 16 Mar 2018 04:55:18 GMT
ENTRYPOINT ["/traefik"]
# Fri, 16 Mar 2018 04:55:19 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d32d3f00ec48c5e6d1d0aad98cb0dc99e9860c1794079af113d6f096db21cc13`  
		Last Modified: Fri, 16 Mar 2018 04:56:33 GMT  
		Size: 12.7 MB (12727497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:cancoillotte-alpine`

```console
$ docker pull traefik@sha256:5c45266c0394d74f4e55ecc3bc7f223ff34656bfa0891d4abc53bdb88b8f69bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:cancoillotte-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:a23c7a367ec7c2c393e5beea0f870fd2251d6352b697d1414b7991dcc5d8dd62
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.4 MB (16439702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adb52c73636ca298f308971a1163641169256d5084d3ec639c255620d4bcd9eb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 01:28:51 GMT
RUN apk --no-cache add ca-certificates
# Fri, 16 Mar 2018 07:19:05 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.5.4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Fri, 16 Mar 2018 07:19:06 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Fri, 16 Mar 2018 07:19:06 GMT
EXPOSE 80/tcp
# Fri, 16 Mar 2018 07:19:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Mar 2018 07:19:07 GMT
CMD ["traefik"]
# Fri, 16 Mar 2018 07:19:07 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:d0993fa6d68be32db4245a1478c59a52017069fa0f127acaf75cffd0b06d2546`  
		Last Modified: Fri, 16 Mar 2018 07:36:18 GMT  
		Size: 14.1 MB (14096624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caa004eb906b265c9cad367574d57eef2925cce583ec2370d5083b0cc575473a`  
		Last Modified: Fri, 16 Mar 2018 07:36:14 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:cancoillotte-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:63b7c7fd1aba7fbecd8dc6e37a6d7ed62fd4d2c4f7f253f8f03bb49e32782082
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 MB (15567566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2f53bc311ef3567f45a329c808cbe93ca56bc9b802f7947eb10efa058a37a43`
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
# Tue, 27 Mar 2018 23:48:49 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.5.4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Tue, 27 Mar 2018 23:48:49 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Tue, 27 Mar 2018 23:48:50 GMT
EXPOSE 80/tcp
# Tue, 27 Mar 2018 23:48:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 27 Mar 2018 23:48:50 GMT
CMD ["traefik"]
# Tue, 27 Mar 2018 23:48:50 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:a4fd8e99b76705c22a5f52015d1e223561e3e7d17a7a8a72b42493ed100382b4`  
		Last Modified: Tue, 27 Mar 2018 23:49:34 GMT  
		Size: 13.2 MB (13248913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4f76c174f8879e3587bb8b77a600f046a2b76056377c99e5fc68db2ffe93728`  
		Last Modified: Tue, 27 Mar 2018 23:49:30 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:cancoillotte-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:cc4e442cece8db3502f2a94d93b28723c27b1922485827526a7cf0231db0eb65
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.2 MB (15162369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a0dc2e38b34426d4066971076be3a6178f08413040cf363feee80250880f293`
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
# Fri, 16 Mar 2018 04:55:57 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.5.4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Fri, 16 Mar 2018 04:55:58 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Fri, 16 Mar 2018 04:55:59 GMT
EXPOSE 80/tcp
# Fri, 16 Mar 2018 04:55:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Mar 2018 04:56:00 GMT
CMD ["traefik"]
# Fri, 16 Mar 2018 04:56:01 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:570e2b9952fc571e6809bc8839fafecf856f0c5ee83d3588679a3a4d5ac63c3e`  
		Last Modified: Fri, 16 Mar 2018 04:58:29 GMT  
		Size: 12.9 MB (12895609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5e29b5b5bdced39fa905d02326dbf79771fc670686491a864f8e273d7066da0`  
		Last Modified: Fri, 16 Mar 2018 04:58:24 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:latest`

```console
$ docker pull traefik@sha256:96fe09a867c29dfd5ecf240c955ae104dc7d3422bcc3d42b74a0d0fcc5a2377f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:latest` - linux; amd64

```console
$ docker pull traefik@sha256:38b4cc2a487fed23fbe7e4c71b91a4b33453e76032c50082b98bd56bfe8e4c78
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 MB (14084670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fde722950ccf89bb7c565f1bcbd2e29650fd7cb3a857757d3a449e8c4cbe1f4b`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:11:40 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Fri, 16 Mar 2018 07:18:39 GMT
COPY file:20cda123cabf7f473fee9210e5017818ed36fbd0ffe781e06277259f4f4446a6 in / 
# Fri, 16 Mar 2018 07:18:39 GMT
EXPOSE 80/tcp
# Fri, 16 Mar 2018 07:18:40 GMT
ENTRYPOINT ["/traefik"]
# Fri, 16 Mar 2018 07:18:40 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5d3835484afecc78dccfa2f7d4fcf273aacfe0c7600b957314e38488f3942045`  
		Last Modified: Fri, 03 Nov 2017 22:12:12 GMT  
		Size: 155.2 KB (155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a34d9cadf285e2c0efbb9c81f3d9cf9403ad8b9b000bc4dbc579d5351a89b3c0`  
		Last Modified: Fri, 16 Mar 2018 07:20:02 GMT  
		Size: 13.9 MB (13929518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:latest` - linux; arm variant v6

```console
$ docker pull traefik@sha256:c4c82baf7e74162fdc3e59981214236c211c956177036be59420de692520ec53
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 MB (13235381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35432e6ca8a0c5f31fe7deb875dd7fc1a3a5121520e9c0d6e898e20b9d651d3a`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 15 Mar 2018 23:48:25 GMT
COPY file:81a8c5cbebf4ec1b8f794eed3a8bbfb963571825cc8917de6db828f7abe03c67 in / 
# Thu, 15 Mar 2018 23:48:25 GMT
EXPOSE 80/tcp
# Thu, 15 Mar 2018 23:48:26 GMT
ENTRYPOINT ["/traefik"]
# Thu, 15 Mar 2018 23:48:26 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a2b5589619111002fd55cff1b55cbf9363e5d6f3cf677ed11af800a50ac09d4`  
		Last Modified: Thu, 15 Mar 2018 23:48:50 GMT  
		Size: 13.1 MB (13080197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:latest` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:af362c3e2aba2258f0b4357a32f86c9f508985153c1f645da264f9964440b6e3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 MB (12882648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0006c2d4ff90f49f68264a3dc0ff87ca104f5ebb2cb2d8b833db89ad01ddd67a`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Fri, 16 Mar 2018 04:55:17 GMT
COPY file:07fc6a89166180ca7f38065f1f3f1001b8300f17d3f31791ec092d253ec8f3e6 in / 
# Fri, 16 Mar 2018 04:55:18 GMT
EXPOSE 80/tcp
# Fri, 16 Mar 2018 04:55:18 GMT
ENTRYPOINT ["/traefik"]
# Fri, 16 Mar 2018 04:55:19 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d32d3f00ec48c5e6d1d0aad98cb0dc99e9860c1794079af113d6f096db21cc13`  
		Last Modified: Fri, 16 Mar 2018 04:56:33 GMT  
		Size: 12.7 MB (12727497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:tetedemoine`

```console
$ docker pull traefik@sha256:d425b98e4efd420043c715dc5c1b9391da34b3c5e9ba452e8d22008ad8fa8fdb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:tetedemoine` - linux; amd64

```console
$ docker pull traefik@sha256:e2dd5efd281fd16ea6188024b85450c7b4e116b680a6475a5c4175511e1a0c88
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14303369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43f8d8b30157796f0febb1b8db1f1ef36ffc8d8a1676e8838dda11fa6e7b2872`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:11:40 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 04 Apr 2018 17:18:27 GMT
COPY file:e27a325022d3a1ad5dce031a07a8a34185dc6276fa385f56c19ad938940b4843 in / 
# Wed, 04 Apr 2018 17:18:27 GMT
EXPOSE 80/tcp
# Wed, 04 Apr 2018 17:18:27 GMT
ENTRYPOINT ["/traefik"]
# Wed, 04 Apr 2018 17:18:28 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5d3835484afecc78dccfa2f7d4fcf273aacfe0c7600b957314e38488f3942045`  
		Last Modified: Fri, 03 Nov 2017 22:12:12 GMT  
		Size: 155.2 KB (155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76bb1e0f91d383335863c2fd20f888585c911bce0cc67a6e514212490f0af765`  
		Last Modified: Wed, 04 Apr 2018 17:19:32 GMT  
		Size: 14.1 MB (14148217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:tetedemoine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:19d5d9e2ef545a7328e7181566e4ebd796327d8da1a131f95cfcbb05d917b9ca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 MB (13703028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d27b0ee9b4bc26fdfd03e533ef7e48aa0f52e03f649717a56186a144130c09c`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 04 Apr 2018 20:02:15 GMT
COPY file:e0f908d0300dd19378a5a9baded68d9e445f20a1f205e9bdebf0d39f61c7ff09 in / 
# Wed, 04 Apr 2018 20:02:15 GMT
EXPOSE 80/tcp
# Wed, 04 Apr 2018 20:02:16 GMT
ENTRYPOINT ["/traefik"]
# Wed, 04 Apr 2018 20:02:16 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd17961175a502563e2f45ac8121a4586e44ede1f715c11dae88b8ffcb24f6f4`  
		Last Modified: Wed, 04 Apr 2018 20:02:50 GMT  
		Size: 13.5 MB (13547844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:tetedemoine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:978516c6bc46d3103c950ffa92e087bbb91387c473b402c1582edd915064e6dd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 MB (13414652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6aaa9d407d9ab23c769241e17c82b6ddc30940c59450327f829cc323112ab703`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 04 Apr 2018 20:03:41 GMT
COPY file:71c1d97f35ff1301829326ecce36640daf0cae8623e07ef6ee5a342aacc2f421 in / 
# Wed, 04 Apr 2018 20:03:42 GMT
EXPOSE 80/tcp
# Wed, 04 Apr 2018 20:03:43 GMT
ENTRYPOINT ["/traefik"]
# Wed, 04 Apr 2018 20:03:45 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35eaed942a46ae3a4efcb109cccb36c83cb0c38798864ea0c0c9ea189571ac35`  
		Last Modified: Wed, 04 Apr 2018 20:05:19 GMT  
		Size: 13.3 MB (13259501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:tetedemoine-alpine`

```console
$ docker pull traefik@sha256:6e06cabe455d9a18b099715d7b51a2f6dce6e09e0ca2481a9fda81401e10675a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:tetedemoine-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:b30941d6c61ec13cb4f2ee86aff9db238d5eeb03b9958372237ec1400f476564
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16658490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7d19f78a20fe87b7d4ec31725a2f405b324e83a87ff2a873f75303ce5697df7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 01:28:51 GMT
RUN apk --no-cache add ca-certificates
# Wed, 04 Apr 2018 17:18:58 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.0-rc4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 04 Apr 2018 17:18:59 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 04 Apr 2018 17:18:59 GMT
EXPOSE 80/tcp
# Wed, 04 Apr 2018 17:18:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 04 Apr 2018 17:19:00 GMT
CMD ["traefik"]
# Wed, 04 Apr 2018 17:19:00 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:e4395b57c801fefb4e920c2932f7f75fab0de6f19fd49febcd962ca6f05afbc3`  
		Last Modified: Wed, 04 Apr 2018 17:21:17 GMT  
		Size: 14.3 MB (14315410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7112b5d9f3cf768efff7add4bb912335c6bbcd29ba50464631102a2106e21f0a`  
		Last Modified: Wed, 04 Apr 2018 17:21:14 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:tetedemoine-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:b912f2091ba2b2114f2e9ce10a4cc94e585c0da01198913311e71500c5d33c63
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.0 MB (16033032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55437f9e4a87206956c8b459781d394142dce77a6679e26e608067418b8b52a3`
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
# Wed, 04 Apr 2018 20:02:27 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.0-rc4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 04 Apr 2018 20:02:27 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 04 Apr 2018 20:02:27 GMT
EXPOSE 80/tcp
# Wed, 04 Apr 2018 20:02:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 04 Apr 2018 20:02:28 GMT
CMD ["traefik"]
# Wed, 04 Apr 2018 20:02:28 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:0648f9924143ee84684b87a7507906c8a98f16fe75eacde59d88cc954fc49508`  
		Last Modified: Wed, 04 Apr 2018 20:03:06 GMT  
		Size: 13.7 MB (13714380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04c9bc758c9ef7b8f083d4a8e8edd61c52d8d47043f2759dcac2831cece6fab8`  
		Last Modified: Wed, 04 Apr 2018 20:03:02 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:tetedemoine-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:a50a4304d106fd7dca003f3ae5fc62587885071d4c05bd62bb187d4a063693f0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15694881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4c2fbe58f3ab6f18f6da038c203b862f21a838490e18302895cb7790d148957`
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
# Wed, 04 Apr 2018 20:04:23 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.0-rc4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 04 Apr 2018 20:04:24 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 04 Apr 2018 20:04:24 GMT
EXPOSE 80/tcp
# Wed, 04 Apr 2018 20:04:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 04 Apr 2018 20:04:26 GMT
CMD ["traefik"]
# Wed, 04 Apr 2018 20:04:26 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:aa90db5a0fc869264c112438e34a5480d6112cd941dc7e8bdd24bbd105765882`  
		Last Modified: Wed, 04 Apr 2018 20:07:13 GMT  
		Size: 13.4 MB (13428122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d7dd9ddee39799664aafbe13c15990f4211f933dc5d3918bacef4988317a98f`  
		Last Modified: Wed, 04 Apr 2018 20:07:09 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.5`

```console
$ docker pull traefik@sha256:96fe09a867c29dfd5ecf240c955ae104dc7d3422bcc3d42b74a0d0fcc5a2377f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.5` - linux; amd64

```console
$ docker pull traefik@sha256:38b4cc2a487fed23fbe7e4c71b91a4b33453e76032c50082b98bd56bfe8e4c78
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 MB (14084670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fde722950ccf89bb7c565f1bcbd2e29650fd7cb3a857757d3a449e8c4cbe1f4b`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:11:40 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Fri, 16 Mar 2018 07:18:39 GMT
COPY file:20cda123cabf7f473fee9210e5017818ed36fbd0ffe781e06277259f4f4446a6 in / 
# Fri, 16 Mar 2018 07:18:39 GMT
EXPOSE 80/tcp
# Fri, 16 Mar 2018 07:18:40 GMT
ENTRYPOINT ["/traefik"]
# Fri, 16 Mar 2018 07:18:40 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5d3835484afecc78dccfa2f7d4fcf273aacfe0c7600b957314e38488f3942045`  
		Last Modified: Fri, 03 Nov 2017 22:12:12 GMT  
		Size: 155.2 KB (155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a34d9cadf285e2c0efbb9c81f3d9cf9403ad8b9b000bc4dbc579d5351a89b3c0`  
		Last Modified: Fri, 16 Mar 2018 07:20:02 GMT  
		Size: 13.9 MB (13929518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.5` - linux; arm variant v6

```console
$ docker pull traefik@sha256:c4c82baf7e74162fdc3e59981214236c211c956177036be59420de692520ec53
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 MB (13235381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35432e6ca8a0c5f31fe7deb875dd7fc1a3a5121520e9c0d6e898e20b9d651d3a`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 15 Mar 2018 23:48:25 GMT
COPY file:81a8c5cbebf4ec1b8f794eed3a8bbfb963571825cc8917de6db828f7abe03c67 in / 
# Thu, 15 Mar 2018 23:48:25 GMT
EXPOSE 80/tcp
# Thu, 15 Mar 2018 23:48:26 GMT
ENTRYPOINT ["/traefik"]
# Thu, 15 Mar 2018 23:48:26 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a2b5589619111002fd55cff1b55cbf9363e5d6f3cf677ed11af800a50ac09d4`  
		Last Modified: Thu, 15 Mar 2018 23:48:50 GMT  
		Size: 13.1 MB (13080197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.5` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:af362c3e2aba2258f0b4357a32f86c9f508985153c1f645da264f9964440b6e3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 MB (12882648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0006c2d4ff90f49f68264a3dc0ff87ca104f5ebb2cb2d8b833db89ad01ddd67a`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Fri, 16 Mar 2018 04:55:17 GMT
COPY file:07fc6a89166180ca7f38065f1f3f1001b8300f17d3f31791ec092d253ec8f3e6 in / 
# Fri, 16 Mar 2018 04:55:18 GMT
EXPOSE 80/tcp
# Fri, 16 Mar 2018 04:55:18 GMT
ENTRYPOINT ["/traefik"]
# Fri, 16 Mar 2018 04:55:19 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d32d3f00ec48c5e6d1d0aad98cb0dc99e9860c1794079af113d6f096db21cc13`  
		Last Modified: Fri, 16 Mar 2018 04:56:33 GMT  
		Size: 12.7 MB (12727497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.5.4`

```console
$ docker pull traefik@sha256:96fe09a867c29dfd5ecf240c955ae104dc7d3422bcc3d42b74a0d0fcc5a2377f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.5.4` - linux; amd64

```console
$ docker pull traefik@sha256:38b4cc2a487fed23fbe7e4c71b91a4b33453e76032c50082b98bd56bfe8e4c78
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 MB (14084670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fde722950ccf89bb7c565f1bcbd2e29650fd7cb3a857757d3a449e8c4cbe1f4b`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:11:40 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Fri, 16 Mar 2018 07:18:39 GMT
COPY file:20cda123cabf7f473fee9210e5017818ed36fbd0ffe781e06277259f4f4446a6 in / 
# Fri, 16 Mar 2018 07:18:39 GMT
EXPOSE 80/tcp
# Fri, 16 Mar 2018 07:18:40 GMT
ENTRYPOINT ["/traefik"]
# Fri, 16 Mar 2018 07:18:40 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5d3835484afecc78dccfa2f7d4fcf273aacfe0c7600b957314e38488f3942045`  
		Last Modified: Fri, 03 Nov 2017 22:12:12 GMT  
		Size: 155.2 KB (155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a34d9cadf285e2c0efbb9c81f3d9cf9403ad8b9b000bc4dbc579d5351a89b3c0`  
		Last Modified: Fri, 16 Mar 2018 07:20:02 GMT  
		Size: 13.9 MB (13929518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.5.4` - linux; arm variant v6

```console
$ docker pull traefik@sha256:c4c82baf7e74162fdc3e59981214236c211c956177036be59420de692520ec53
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 MB (13235381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35432e6ca8a0c5f31fe7deb875dd7fc1a3a5121520e9c0d6e898e20b9d651d3a`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 15 Mar 2018 23:48:25 GMT
COPY file:81a8c5cbebf4ec1b8f794eed3a8bbfb963571825cc8917de6db828f7abe03c67 in / 
# Thu, 15 Mar 2018 23:48:25 GMT
EXPOSE 80/tcp
# Thu, 15 Mar 2018 23:48:26 GMT
ENTRYPOINT ["/traefik"]
# Thu, 15 Mar 2018 23:48:26 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a2b5589619111002fd55cff1b55cbf9363e5d6f3cf677ed11af800a50ac09d4`  
		Last Modified: Thu, 15 Mar 2018 23:48:50 GMT  
		Size: 13.1 MB (13080197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.5.4` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:af362c3e2aba2258f0b4357a32f86c9f508985153c1f645da264f9964440b6e3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 MB (12882648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0006c2d4ff90f49f68264a3dc0ff87ca104f5ebb2cb2d8b833db89ad01ddd67a`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Fri, 16 Mar 2018 04:55:17 GMT
COPY file:07fc6a89166180ca7f38065f1f3f1001b8300f17d3f31791ec092d253ec8f3e6 in / 
# Fri, 16 Mar 2018 04:55:18 GMT
EXPOSE 80/tcp
# Fri, 16 Mar 2018 04:55:18 GMT
ENTRYPOINT ["/traefik"]
# Fri, 16 Mar 2018 04:55:19 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d32d3f00ec48c5e6d1d0aad98cb0dc99e9860c1794079af113d6f096db21cc13`  
		Last Modified: Fri, 16 Mar 2018 04:56:33 GMT  
		Size: 12.7 MB (12727497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.5.4-alpine`

```console
$ docker pull traefik@sha256:5c45266c0394d74f4e55ecc3bc7f223ff34656bfa0891d4abc53bdb88b8f69bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.5.4-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:a23c7a367ec7c2c393e5beea0f870fd2251d6352b697d1414b7991dcc5d8dd62
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.4 MB (16439702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adb52c73636ca298f308971a1163641169256d5084d3ec639c255620d4bcd9eb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 01:28:51 GMT
RUN apk --no-cache add ca-certificates
# Fri, 16 Mar 2018 07:19:05 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.5.4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Fri, 16 Mar 2018 07:19:06 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Fri, 16 Mar 2018 07:19:06 GMT
EXPOSE 80/tcp
# Fri, 16 Mar 2018 07:19:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Mar 2018 07:19:07 GMT
CMD ["traefik"]
# Fri, 16 Mar 2018 07:19:07 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:d0993fa6d68be32db4245a1478c59a52017069fa0f127acaf75cffd0b06d2546`  
		Last Modified: Fri, 16 Mar 2018 07:36:18 GMT  
		Size: 14.1 MB (14096624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caa004eb906b265c9cad367574d57eef2925cce583ec2370d5083b0cc575473a`  
		Last Modified: Fri, 16 Mar 2018 07:36:14 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.5.4-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:63b7c7fd1aba7fbecd8dc6e37a6d7ed62fd4d2c4f7f253f8f03bb49e32782082
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 MB (15567566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2f53bc311ef3567f45a329c808cbe93ca56bc9b802f7947eb10efa058a37a43`
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
# Tue, 27 Mar 2018 23:48:49 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.5.4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Tue, 27 Mar 2018 23:48:49 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Tue, 27 Mar 2018 23:48:50 GMT
EXPOSE 80/tcp
# Tue, 27 Mar 2018 23:48:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 27 Mar 2018 23:48:50 GMT
CMD ["traefik"]
# Tue, 27 Mar 2018 23:48:50 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:a4fd8e99b76705c22a5f52015d1e223561e3e7d17a7a8a72b42493ed100382b4`  
		Last Modified: Tue, 27 Mar 2018 23:49:34 GMT  
		Size: 13.2 MB (13248913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4f76c174f8879e3587bb8b77a600f046a2b76056377c99e5fc68db2ffe93728`  
		Last Modified: Tue, 27 Mar 2018 23:49:30 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.5.4-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:cc4e442cece8db3502f2a94d93b28723c27b1922485827526a7cf0231db0eb65
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.2 MB (15162369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a0dc2e38b34426d4066971076be3a6178f08413040cf363feee80250880f293`
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
# Fri, 16 Mar 2018 04:55:57 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.5.4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Fri, 16 Mar 2018 04:55:58 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Fri, 16 Mar 2018 04:55:59 GMT
EXPOSE 80/tcp
# Fri, 16 Mar 2018 04:55:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Mar 2018 04:56:00 GMT
CMD ["traefik"]
# Fri, 16 Mar 2018 04:56:01 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:570e2b9952fc571e6809bc8839fafecf856f0c5ee83d3588679a3a4d5ac63c3e`  
		Last Modified: Fri, 16 Mar 2018 04:58:29 GMT  
		Size: 12.9 MB (12895609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5e29b5b5bdced39fa905d02326dbf79771fc670686491a864f8e273d7066da0`  
		Last Modified: Fri, 16 Mar 2018 04:58:24 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.5-alpine`

```console
$ docker pull traefik@sha256:5c45266c0394d74f4e55ecc3bc7f223ff34656bfa0891d4abc53bdb88b8f69bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.5-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:a23c7a367ec7c2c393e5beea0f870fd2251d6352b697d1414b7991dcc5d8dd62
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.4 MB (16439702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adb52c73636ca298f308971a1163641169256d5084d3ec639c255620d4bcd9eb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 01:28:51 GMT
RUN apk --no-cache add ca-certificates
# Fri, 16 Mar 2018 07:19:05 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.5.4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Fri, 16 Mar 2018 07:19:06 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Fri, 16 Mar 2018 07:19:06 GMT
EXPOSE 80/tcp
# Fri, 16 Mar 2018 07:19:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Mar 2018 07:19:07 GMT
CMD ["traefik"]
# Fri, 16 Mar 2018 07:19:07 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:d0993fa6d68be32db4245a1478c59a52017069fa0f127acaf75cffd0b06d2546`  
		Last Modified: Fri, 16 Mar 2018 07:36:18 GMT  
		Size: 14.1 MB (14096624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caa004eb906b265c9cad367574d57eef2925cce583ec2370d5083b0cc575473a`  
		Last Modified: Fri, 16 Mar 2018 07:36:14 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.5-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:63b7c7fd1aba7fbecd8dc6e37a6d7ed62fd4d2c4f7f253f8f03bb49e32782082
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 MB (15567566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2f53bc311ef3567f45a329c808cbe93ca56bc9b802f7947eb10efa058a37a43`
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
# Tue, 27 Mar 2018 23:48:49 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.5.4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Tue, 27 Mar 2018 23:48:49 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Tue, 27 Mar 2018 23:48:50 GMT
EXPOSE 80/tcp
# Tue, 27 Mar 2018 23:48:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 27 Mar 2018 23:48:50 GMT
CMD ["traefik"]
# Tue, 27 Mar 2018 23:48:50 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:a4fd8e99b76705c22a5f52015d1e223561e3e7d17a7a8a72b42493ed100382b4`  
		Last Modified: Tue, 27 Mar 2018 23:49:34 GMT  
		Size: 13.2 MB (13248913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4f76c174f8879e3587bb8b77a600f046a2b76056377c99e5fc68db2ffe93728`  
		Last Modified: Tue, 27 Mar 2018 23:49:30 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.5-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:cc4e442cece8db3502f2a94d93b28723c27b1922485827526a7cf0231db0eb65
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.2 MB (15162369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a0dc2e38b34426d4066971076be3a6178f08413040cf363feee80250880f293`
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
# Fri, 16 Mar 2018 04:55:57 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.5.4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Fri, 16 Mar 2018 04:55:58 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Fri, 16 Mar 2018 04:55:59 GMT
EXPOSE 80/tcp
# Fri, 16 Mar 2018 04:55:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Mar 2018 04:56:00 GMT
CMD ["traefik"]
# Fri, 16 Mar 2018 04:56:01 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:570e2b9952fc571e6809bc8839fafecf856f0c5ee83d3588679a3a4d5ac63c3e`  
		Last Modified: Fri, 16 Mar 2018 04:58:29 GMT  
		Size: 12.9 MB (12895609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5e29b5b5bdced39fa905d02326dbf79771fc670686491a864f8e273d7066da0`  
		Last Modified: Fri, 16 Mar 2018 04:58:24 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.6`

```console
$ docker pull traefik@sha256:d425b98e4efd420043c715dc5c1b9391da34b3c5e9ba452e8d22008ad8fa8fdb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.6` - linux; amd64

```console
$ docker pull traefik@sha256:e2dd5efd281fd16ea6188024b85450c7b4e116b680a6475a5c4175511e1a0c88
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14303369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43f8d8b30157796f0febb1b8db1f1ef36ffc8d8a1676e8838dda11fa6e7b2872`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:11:40 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 04 Apr 2018 17:18:27 GMT
COPY file:e27a325022d3a1ad5dce031a07a8a34185dc6276fa385f56c19ad938940b4843 in / 
# Wed, 04 Apr 2018 17:18:27 GMT
EXPOSE 80/tcp
# Wed, 04 Apr 2018 17:18:27 GMT
ENTRYPOINT ["/traefik"]
# Wed, 04 Apr 2018 17:18:28 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5d3835484afecc78dccfa2f7d4fcf273aacfe0c7600b957314e38488f3942045`  
		Last Modified: Fri, 03 Nov 2017 22:12:12 GMT  
		Size: 155.2 KB (155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76bb1e0f91d383335863c2fd20f888585c911bce0cc67a6e514212490f0af765`  
		Last Modified: Wed, 04 Apr 2018 17:19:32 GMT  
		Size: 14.1 MB (14148217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.6` - linux; arm variant v6

```console
$ docker pull traefik@sha256:19d5d9e2ef545a7328e7181566e4ebd796327d8da1a131f95cfcbb05d917b9ca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 MB (13703028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d27b0ee9b4bc26fdfd03e533ef7e48aa0f52e03f649717a56186a144130c09c`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 04 Apr 2018 20:02:15 GMT
COPY file:e0f908d0300dd19378a5a9baded68d9e445f20a1f205e9bdebf0d39f61c7ff09 in / 
# Wed, 04 Apr 2018 20:02:15 GMT
EXPOSE 80/tcp
# Wed, 04 Apr 2018 20:02:16 GMT
ENTRYPOINT ["/traefik"]
# Wed, 04 Apr 2018 20:02:16 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd17961175a502563e2f45ac8121a4586e44ede1f715c11dae88b8ffcb24f6f4`  
		Last Modified: Wed, 04 Apr 2018 20:02:50 GMT  
		Size: 13.5 MB (13547844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.6` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:978516c6bc46d3103c950ffa92e087bbb91387c473b402c1582edd915064e6dd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 MB (13414652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6aaa9d407d9ab23c769241e17c82b6ddc30940c59450327f829cc323112ab703`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 04 Apr 2018 20:03:41 GMT
COPY file:71c1d97f35ff1301829326ecce36640daf0cae8623e07ef6ee5a342aacc2f421 in / 
# Wed, 04 Apr 2018 20:03:42 GMT
EXPOSE 80/tcp
# Wed, 04 Apr 2018 20:03:43 GMT
ENTRYPOINT ["/traefik"]
# Wed, 04 Apr 2018 20:03:45 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35eaed942a46ae3a4efcb109cccb36c83cb0c38798864ea0c0c9ea189571ac35`  
		Last Modified: Wed, 04 Apr 2018 20:05:19 GMT  
		Size: 13.3 MB (13259501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.6.0-rc4`

```console
$ docker pull traefik@sha256:d425b98e4efd420043c715dc5c1b9391da34b3c5e9ba452e8d22008ad8fa8fdb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.6.0-rc4` - linux; amd64

```console
$ docker pull traefik@sha256:e2dd5efd281fd16ea6188024b85450c7b4e116b680a6475a5c4175511e1a0c88
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14303369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43f8d8b30157796f0febb1b8db1f1ef36ffc8d8a1676e8838dda11fa6e7b2872`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:11:40 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 04 Apr 2018 17:18:27 GMT
COPY file:e27a325022d3a1ad5dce031a07a8a34185dc6276fa385f56c19ad938940b4843 in / 
# Wed, 04 Apr 2018 17:18:27 GMT
EXPOSE 80/tcp
# Wed, 04 Apr 2018 17:18:27 GMT
ENTRYPOINT ["/traefik"]
# Wed, 04 Apr 2018 17:18:28 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5d3835484afecc78dccfa2f7d4fcf273aacfe0c7600b957314e38488f3942045`  
		Last Modified: Fri, 03 Nov 2017 22:12:12 GMT  
		Size: 155.2 KB (155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76bb1e0f91d383335863c2fd20f888585c911bce0cc67a6e514212490f0af765`  
		Last Modified: Wed, 04 Apr 2018 17:19:32 GMT  
		Size: 14.1 MB (14148217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.6.0-rc4` - linux; arm variant v6

```console
$ docker pull traefik@sha256:19d5d9e2ef545a7328e7181566e4ebd796327d8da1a131f95cfcbb05d917b9ca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 MB (13703028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d27b0ee9b4bc26fdfd03e533ef7e48aa0f52e03f649717a56186a144130c09c`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 04 Apr 2018 20:02:15 GMT
COPY file:e0f908d0300dd19378a5a9baded68d9e445f20a1f205e9bdebf0d39f61c7ff09 in / 
# Wed, 04 Apr 2018 20:02:15 GMT
EXPOSE 80/tcp
# Wed, 04 Apr 2018 20:02:16 GMT
ENTRYPOINT ["/traefik"]
# Wed, 04 Apr 2018 20:02:16 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd17961175a502563e2f45ac8121a4586e44ede1f715c11dae88b8ffcb24f6f4`  
		Last Modified: Wed, 04 Apr 2018 20:02:50 GMT  
		Size: 13.5 MB (13547844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.6.0-rc4` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:978516c6bc46d3103c950ffa92e087bbb91387c473b402c1582edd915064e6dd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 MB (13414652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6aaa9d407d9ab23c769241e17c82b6ddc30940c59450327f829cc323112ab703`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 04 Apr 2018 20:03:41 GMT
COPY file:71c1d97f35ff1301829326ecce36640daf0cae8623e07ef6ee5a342aacc2f421 in / 
# Wed, 04 Apr 2018 20:03:42 GMT
EXPOSE 80/tcp
# Wed, 04 Apr 2018 20:03:43 GMT
ENTRYPOINT ["/traefik"]
# Wed, 04 Apr 2018 20:03:45 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35eaed942a46ae3a4efcb109cccb36c83cb0c38798864ea0c0c9ea189571ac35`  
		Last Modified: Wed, 04 Apr 2018 20:05:19 GMT  
		Size: 13.3 MB (13259501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.6.0-rc4-alpine`

```console
$ docker pull traefik@sha256:6e06cabe455d9a18b099715d7b51a2f6dce6e09e0ca2481a9fda81401e10675a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.6.0-rc4-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:b30941d6c61ec13cb4f2ee86aff9db238d5eeb03b9958372237ec1400f476564
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16658490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7d19f78a20fe87b7d4ec31725a2f405b324e83a87ff2a873f75303ce5697df7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 01:28:51 GMT
RUN apk --no-cache add ca-certificates
# Wed, 04 Apr 2018 17:18:58 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.0-rc4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 04 Apr 2018 17:18:59 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 04 Apr 2018 17:18:59 GMT
EXPOSE 80/tcp
# Wed, 04 Apr 2018 17:18:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 04 Apr 2018 17:19:00 GMT
CMD ["traefik"]
# Wed, 04 Apr 2018 17:19:00 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:e4395b57c801fefb4e920c2932f7f75fab0de6f19fd49febcd962ca6f05afbc3`  
		Last Modified: Wed, 04 Apr 2018 17:21:17 GMT  
		Size: 14.3 MB (14315410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7112b5d9f3cf768efff7add4bb912335c6bbcd29ba50464631102a2106e21f0a`  
		Last Modified: Wed, 04 Apr 2018 17:21:14 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.6.0-rc4-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:b912f2091ba2b2114f2e9ce10a4cc94e585c0da01198913311e71500c5d33c63
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.0 MB (16033032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55437f9e4a87206956c8b459781d394142dce77a6679e26e608067418b8b52a3`
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
# Wed, 04 Apr 2018 20:02:27 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.0-rc4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 04 Apr 2018 20:02:27 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 04 Apr 2018 20:02:27 GMT
EXPOSE 80/tcp
# Wed, 04 Apr 2018 20:02:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 04 Apr 2018 20:02:28 GMT
CMD ["traefik"]
# Wed, 04 Apr 2018 20:02:28 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:0648f9924143ee84684b87a7507906c8a98f16fe75eacde59d88cc954fc49508`  
		Last Modified: Wed, 04 Apr 2018 20:03:06 GMT  
		Size: 13.7 MB (13714380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04c9bc758c9ef7b8f083d4a8e8edd61c52d8d47043f2759dcac2831cece6fab8`  
		Last Modified: Wed, 04 Apr 2018 20:03:02 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.6.0-rc4-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:a50a4304d106fd7dca003f3ae5fc62587885071d4c05bd62bb187d4a063693f0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15694881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4c2fbe58f3ab6f18f6da038c203b862f21a838490e18302895cb7790d148957`
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
# Wed, 04 Apr 2018 20:04:23 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.0-rc4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 04 Apr 2018 20:04:24 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 04 Apr 2018 20:04:24 GMT
EXPOSE 80/tcp
# Wed, 04 Apr 2018 20:04:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 04 Apr 2018 20:04:26 GMT
CMD ["traefik"]
# Wed, 04 Apr 2018 20:04:26 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:aa90db5a0fc869264c112438e34a5480d6112cd941dc7e8bdd24bbd105765882`  
		Last Modified: Wed, 04 Apr 2018 20:07:13 GMT  
		Size: 13.4 MB (13428122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d7dd9ddee39799664aafbe13c15990f4211f933dc5d3918bacef4988317a98f`  
		Last Modified: Wed, 04 Apr 2018 20:07:09 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.6-alpine`

```console
$ docker pull traefik@sha256:6e06cabe455d9a18b099715d7b51a2f6dce6e09e0ca2481a9fda81401e10675a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.6-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:b30941d6c61ec13cb4f2ee86aff9db238d5eeb03b9958372237ec1400f476564
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16658490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7d19f78a20fe87b7d4ec31725a2f405b324e83a87ff2a873f75303ce5697df7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 01:28:51 GMT
RUN apk --no-cache add ca-certificates
# Wed, 04 Apr 2018 17:18:58 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.0-rc4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 04 Apr 2018 17:18:59 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 04 Apr 2018 17:18:59 GMT
EXPOSE 80/tcp
# Wed, 04 Apr 2018 17:18:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 04 Apr 2018 17:19:00 GMT
CMD ["traefik"]
# Wed, 04 Apr 2018 17:19:00 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:e4395b57c801fefb4e920c2932f7f75fab0de6f19fd49febcd962ca6f05afbc3`  
		Last Modified: Wed, 04 Apr 2018 17:21:17 GMT  
		Size: 14.3 MB (14315410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7112b5d9f3cf768efff7add4bb912335c6bbcd29ba50464631102a2106e21f0a`  
		Last Modified: Wed, 04 Apr 2018 17:21:14 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.6-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:b912f2091ba2b2114f2e9ce10a4cc94e585c0da01198913311e71500c5d33c63
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.0 MB (16033032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55437f9e4a87206956c8b459781d394142dce77a6679e26e608067418b8b52a3`
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
# Wed, 04 Apr 2018 20:02:27 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.0-rc4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 04 Apr 2018 20:02:27 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 04 Apr 2018 20:02:27 GMT
EXPOSE 80/tcp
# Wed, 04 Apr 2018 20:02:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 04 Apr 2018 20:02:28 GMT
CMD ["traefik"]
# Wed, 04 Apr 2018 20:02:28 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:0648f9924143ee84684b87a7507906c8a98f16fe75eacde59d88cc954fc49508`  
		Last Modified: Wed, 04 Apr 2018 20:03:06 GMT  
		Size: 13.7 MB (13714380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04c9bc758c9ef7b8f083d4a8e8edd61c52d8d47043f2759dcac2831cece6fab8`  
		Last Modified: Wed, 04 Apr 2018 20:03:02 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.6-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:a50a4304d106fd7dca003f3ae5fc62587885071d4c05bd62bb187d4a063693f0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15694881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4c2fbe58f3ab6f18f6da038c203b862f21a838490e18302895cb7790d148957`
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
# Wed, 04 Apr 2018 20:04:23 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.0-rc4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 04 Apr 2018 20:04:24 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 04 Apr 2018 20:04:24 GMT
EXPOSE 80/tcp
# Wed, 04 Apr 2018 20:04:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 04 Apr 2018 20:04:26 GMT
CMD ["traefik"]
# Wed, 04 Apr 2018 20:04:26 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:aa90db5a0fc869264c112438e34a5480d6112cd941dc7e8bdd24bbd105765882`  
		Last Modified: Wed, 04 Apr 2018 20:07:13 GMT  
		Size: 13.4 MB (13428122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d7dd9ddee39799664aafbe13c15990f4211f933dc5d3918bacef4988317a98f`  
		Last Modified: Wed, 04 Apr 2018 20:07:09 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
