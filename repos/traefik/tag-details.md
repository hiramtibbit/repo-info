<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `traefik`

-	[`traefik:1.5`](#traefik15)
-	[`traefik:1.5.4`](#traefik154)
-	[`traefik:1.5.4-alpine`](#traefik154-alpine)
-	[`traefik:1.5-alpine`](#traefik15-alpine)
-	[`traefik:1.6`](#traefik16)
-	[`traefik:1.6.0-rc5`](#traefik160-rc5)
-	[`traefik:1.6.0-rc5-alpine`](#traefik160-rc5-alpine)
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
-	[`traefik:v1.6.0-rc5`](#traefikv160-rc5)
-	[`traefik:v1.6.0-rc5-alpine`](#traefikv160-rc5-alpine)
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
$ docker pull traefik@sha256:60161bbc27d6d098786f63e318be2d53214e04027f0d1a8f6429d48b15ef21e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.6` - linux; amd64

```console
$ docker pull traefik@sha256:faa8e8cd9f363d6d25fa87d22c21351f8995c836a98dc73baf94977dad4c0a71
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 MB (14578613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:274aeeeeb34dfb5ee76af4a15e9a8e22f1c93a5b67126ea209eff51b07f0154c`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:11:40 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 12 Apr 2018 18:10:32 GMT
COPY file:0bc8123027538011b5b4dca49544b2a4fd3191e4bbea02d98e8e9c7c85cc0721 in / 
# Thu, 12 Apr 2018 18:10:32 GMT
EXPOSE 80/tcp
# Thu, 12 Apr 2018 18:10:33 GMT
ENTRYPOINT ["/traefik"]
# Thu, 12 Apr 2018 18:10:33 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5d3835484afecc78dccfa2f7d4fcf273aacfe0c7600b957314e38488f3942045`  
		Last Modified: Fri, 03 Nov 2017 22:12:12 GMT  
		Size: 155.2 KB (155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b305ecb87a776d07062c053d03bf6c549a3e93d74f7825c62de9f1ff4b310d0a`  
		Last Modified: Thu, 12 Apr 2018 18:14:24 GMT  
		Size: 14.4 MB (14423461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.6` - linux; arm variant v6

```console
$ docker pull traefik@sha256:05f4123fd481dbece5f35a16f0722763d25ac0b408c781f308f5be6a023b1847
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13966504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f64da8d7c0f1e9f45b0f4395c01d6a01fed20ef1efc8dfbd6eabd4a8a814abd`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Fri, 13 Apr 2018 07:59:47 GMT
COPY file:4c140378f06ad8221b925b2cb1be66543007237c63483f9e17704072b2e23895 in / 
# Fri, 13 Apr 2018 07:59:47 GMT
EXPOSE 80/tcp
# Fri, 13 Apr 2018 07:59:48 GMT
ENTRYPOINT ["/traefik"]
# Fri, 13 Apr 2018 07:59:48 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d3e87e7bf2752be7faa348c508c5f4d0460d1671ffbcce3e75a9a5eab9a856c`  
		Last Modified: Fri, 13 Apr 2018 08:00:19 GMT  
		Size: 13.8 MB (13811320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.6` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:9765122dfeb3933dcb63fb20d0c4ad0d747e9294442e1b8363ce092060d4c46d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 MB (13672982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e05182dacac3795517b6716c30b147644514df0a965b07eaa0bbbf9dd5c4b846`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Fri, 13 Apr 2018 08:54:13 GMT
COPY file:14f2457249dd743281d9bd0ff01fa3ffae18a9c142f33d536285e7f1cf879fee in / 
# Fri, 13 Apr 2018 08:54:14 GMT
EXPOSE 80/tcp
# Fri, 13 Apr 2018 08:54:15 GMT
ENTRYPOINT ["/traefik"]
# Fri, 13 Apr 2018 08:54:16 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0c5b5499b3968093b0f78df07c0e4f45c04ddda14f45e72d352e4f05d81c668`  
		Last Modified: Fri, 13 Apr 2018 08:55:47 GMT  
		Size: 13.5 MB (13517831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.6.0-rc5`

```console
$ docker pull traefik@sha256:60161bbc27d6d098786f63e318be2d53214e04027f0d1a8f6429d48b15ef21e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.6.0-rc5` - linux; amd64

```console
$ docker pull traefik@sha256:faa8e8cd9f363d6d25fa87d22c21351f8995c836a98dc73baf94977dad4c0a71
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 MB (14578613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:274aeeeeb34dfb5ee76af4a15e9a8e22f1c93a5b67126ea209eff51b07f0154c`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:11:40 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 12 Apr 2018 18:10:32 GMT
COPY file:0bc8123027538011b5b4dca49544b2a4fd3191e4bbea02d98e8e9c7c85cc0721 in / 
# Thu, 12 Apr 2018 18:10:32 GMT
EXPOSE 80/tcp
# Thu, 12 Apr 2018 18:10:33 GMT
ENTRYPOINT ["/traefik"]
# Thu, 12 Apr 2018 18:10:33 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5d3835484afecc78dccfa2f7d4fcf273aacfe0c7600b957314e38488f3942045`  
		Last Modified: Fri, 03 Nov 2017 22:12:12 GMT  
		Size: 155.2 KB (155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b305ecb87a776d07062c053d03bf6c549a3e93d74f7825c62de9f1ff4b310d0a`  
		Last Modified: Thu, 12 Apr 2018 18:14:24 GMT  
		Size: 14.4 MB (14423461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.6.0-rc5` - linux; arm variant v6

```console
$ docker pull traefik@sha256:05f4123fd481dbece5f35a16f0722763d25ac0b408c781f308f5be6a023b1847
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13966504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f64da8d7c0f1e9f45b0f4395c01d6a01fed20ef1efc8dfbd6eabd4a8a814abd`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Fri, 13 Apr 2018 07:59:47 GMT
COPY file:4c140378f06ad8221b925b2cb1be66543007237c63483f9e17704072b2e23895 in / 
# Fri, 13 Apr 2018 07:59:47 GMT
EXPOSE 80/tcp
# Fri, 13 Apr 2018 07:59:48 GMT
ENTRYPOINT ["/traefik"]
# Fri, 13 Apr 2018 07:59:48 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d3e87e7bf2752be7faa348c508c5f4d0460d1671ffbcce3e75a9a5eab9a856c`  
		Last Modified: Fri, 13 Apr 2018 08:00:19 GMT  
		Size: 13.8 MB (13811320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.6.0-rc5` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:9765122dfeb3933dcb63fb20d0c4ad0d747e9294442e1b8363ce092060d4c46d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 MB (13672982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e05182dacac3795517b6716c30b147644514df0a965b07eaa0bbbf9dd5c4b846`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Fri, 13 Apr 2018 08:54:13 GMT
COPY file:14f2457249dd743281d9bd0ff01fa3ffae18a9c142f33d536285e7f1cf879fee in / 
# Fri, 13 Apr 2018 08:54:14 GMT
EXPOSE 80/tcp
# Fri, 13 Apr 2018 08:54:15 GMT
ENTRYPOINT ["/traefik"]
# Fri, 13 Apr 2018 08:54:16 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0c5b5499b3968093b0f78df07c0e4f45c04ddda14f45e72d352e4f05d81c668`  
		Last Modified: Fri, 13 Apr 2018 08:55:47 GMT  
		Size: 13.5 MB (13517831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.6.0-rc5-alpine`

```console
$ docker pull traefik@sha256:d929e221e669a6877ce6d598594d674a1ffa83c0350791f9dcf156b87df5677e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.6.0-rc5-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:a2e3b7c5cc6ee9ebcd3ed95caab9a842d200aca22f3e3ebbd31854d1b9f25a44
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16933348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9189f1fa5a8c8ecb58521a6042409339779226425b397166f0fa1f523e787ed4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 01:28:51 GMT
RUN apk --no-cache add ca-certificates
# Thu, 12 Apr 2018 18:11:13 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.0-rc5/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Thu, 12 Apr 2018 18:11:13 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Thu, 12 Apr 2018 18:11:13 GMT
EXPOSE 80/tcp
# Thu, 12 Apr 2018 18:11:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 12 Apr 2018 18:11:14 GMT
CMD ["traefik"]
# Thu, 12 Apr 2018 18:11:14 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc5 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:49b9c2b57b675dbaa3ad71bc0353f533766b07215ee9869c778883c1039f7466`  
		Last Modified: Thu, 12 Apr 2018 18:24:07 GMT  
		Size: 14.6 MB (14590269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b24a1eda792a0e80d16c868177d08cdbc290c7702bb46f3e08b940db7ae7bf7`  
		Last Modified: Thu, 12 Apr 2018 18:24:03 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.6.0-rc5-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:7e34d0a559d3df3d8b833066c780f4a7a45b9b646cd6e00b8100abf385863167
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.3 MB (16297015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0b0274762be088d1ad1bde9266d61ae25d80ac48133325c25d5d13840fdcc9d`
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
# Fri, 13 Apr 2018 07:59:58 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.0-rc5/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Fri, 13 Apr 2018 07:59:58 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Fri, 13 Apr 2018 07:59:58 GMT
EXPOSE 80/tcp
# Fri, 13 Apr 2018 07:59:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 13 Apr 2018 07:59:59 GMT
CMD ["traefik"]
# Fri, 13 Apr 2018 07:59:59 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc5 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:a0862469e2f506f4d4f3816140a9d1dd292b64f4accb92c954baf8ef33777fd9`  
		Last Modified: Fri, 13 Apr 2018 08:00:34 GMT  
		Size: 14.0 MB (13978364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47c0bdec6957096047e26e8e58459b799bbf2462cd4147c2dcdd35996809d0f3`  
		Last Modified: Fri, 13 Apr 2018 08:00:29 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.6.0-rc5-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:5d5484728b277c3b9c7097112867b8a7d91bbd81adfd3ec7fab69a49c473de5f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.0 MB (15952845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5bec0cbe7c74d45bf4e370b6751b8e5176a627b1bfc6b9f0c8c7a1fcb7f8d07`
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
# Fri, 13 Apr 2018 08:54:55 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.0-rc5/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Fri, 13 Apr 2018 08:54:56 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Fri, 13 Apr 2018 08:54:57 GMT
EXPOSE 80/tcp
# Fri, 13 Apr 2018 08:54:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 13 Apr 2018 08:54:59 GMT
CMD ["traefik"]
# Fri, 13 Apr 2018 08:54:59 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc5 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:fbf1948455768c82bacf74299b5cf47af5bc1dea853f23b99e83bf63480ff09a`  
		Last Modified: Fri, 13 Apr 2018 08:57:49 GMT  
		Size: 13.7 MB (13686086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25bc34af84be2b1762a0bb44e43924d5fc987c8c79af11111e21c6065face7fc`  
		Last Modified: Fri, 13 Apr 2018 08:57:44 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.6-alpine`

```console
$ docker pull traefik@sha256:d929e221e669a6877ce6d598594d674a1ffa83c0350791f9dcf156b87df5677e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.6-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:a2e3b7c5cc6ee9ebcd3ed95caab9a842d200aca22f3e3ebbd31854d1b9f25a44
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16933348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9189f1fa5a8c8ecb58521a6042409339779226425b397166f0fa1f523e787ed4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 01:28:51 GMT
RUN apk --no-cache add ca-certificates
# Thu, 12 Apr 2018 18:11:13 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.0-rc5/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Thu, 12 Apr 2018 18:11:13 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Thu, 12 Apr 2018 18:11:13 GMT
EXPOSE 80/tcp
# Thu, 12 Apr 2018 18:11:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 12 Apr 2018 18:11:14 GMT
CMD ["traefik"]
# Thu, 12 Apr 2018 18:11:14 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc5 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:49b9c2b57b675dbaa3ad71bc0353f533766b07215ee9869c778883c1039f7466`  
		Last Modified: Thu, 12 Apr 2018 18:24:07 GMT  
		Size: 14.6 MB (14590269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b24a1eda792a0e80d16c868177d08cdbc290c7702bb46f3e08b940db7ae7bf7`  
		Last Modified: Thu, 12 Apr 2018 18:24:03 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.6-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:7e34d0a559d3df3d8b833066c780f4a7a45b9b646cd6e00b8100abf385863167
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.3 MB (16297015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0b0274762be088d1ad1bde9266d61ae25d80ac48133325c25d5d13840fdcc9d`
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
# Fri, 13 Apr 2018 07:59:58 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.0-rc5/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Fri, 13 Apr 2018 07:59:58 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Fri, 13 Apr 2018 07:59:58 GMT
EXPOSE 80/tcp
# Fri, 13 Apr 2018 07:59:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 13 Apr 2018 07:59:59 GMT
CMD ["traefik"]
# Fri, 13 Apr 2018 07:59:59 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc5 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:a0862469e2f506f4d4f3816140a9d1dd292b64f4accb92c954baf8ef33777fd9`  
		Last Modified: Fri, 13 Apr 2018 08:00:34 GMT  
		Size: 14.0 MB (13978364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47c0bdec6957096047e26e8e58459b799bbf2462cd4147c2dcdd35996809d0f3`  
		Last Modified: Fri, 13 Apr 2018 08:00:29 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.6-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:5d5484728b277c3b9c7097112867b8a7d91bbd81adfd3ec7fab69a49c473de5f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.0 MB (15952845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5bec0cbe7c74d45bf4e370b6751b8e5176a627b1bfc6b9f0c8c7a1fcb7f8d07`
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
# Fri, 13 Apr 2018 08:54:55 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.0-rc5/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Fri, 13 Apr 2018 08:54:56 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Fri, 13 Apr 2018 08:54:57 GMT
EXPOSE 80/tcp
# Fri, 13 Apr 2018 08:54:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 13 Apr 2018 08:54:59 GMT
CMD ["traefik"]
# Fri, 13 Apr 2018 08:54:59 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc5 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:fbf1948455768c82bacf74299b5cf47af5bc1dea853f23b99e83bf63480ff09a`  
		Last Modified: Fri, 13 Apr 2018 08:57:49 GMT  
		Size: 13.7 MB (13686086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25bc34af84be2b1762a0bb44e43924d5fc987c8c79af11111e21c6065face7fc`  
		Last Modified: Fri, 13 Apr 2018 08:57:44 GMT  
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
$ docker pull traefik@sha256:60161bbc27d6d098786f63e318be2d53214e04027f0d1a8f6429d48b15ef21e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:tetedemoine` - linux; amd64

```console
$ docker pull traefik@sha256:faa8e8cd9f363d6d25fa87d22c21351f8995c836a98dc73baf94977dad4c0a71
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 MB (14578613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:274aeeeeb34dfb5ee76af4a15e9a8e22f1c93a5b67126ea209eff51b07f0154c`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:11:40 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 12 Apr 2018 18:10:32 GMT
COPY file:0bc8123027538011b5b4dca49544b2a4fd3191e4bbea02d98e8e9c7c85cc0721 in / 
# Thu, 12 Apr 2018 18:10:32 GMT
EXPOSE 80/tcp
# Thu, 12 Apr 2018 18:10:33 GMT
ENTRYPOINT ["/traefik"]
# Thu, 12 Apr 2018 18:10:33 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5d3835484afecc78dccfa2f7d4fcf273aacfe0c7600b957314e38488f3942045`  
		Last Modified: Fri, 03 Nov 2017 22:12:12 GMT  
		Size: 155.2 KB (155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b305ecb87a776d07062c053d03bf6c549a3e93d74f7825c62de9f1ff4b310d0a`  
		Last Modified: Thu, 12 Apr 2018 18:14:24 GMT  
		Size: 14.4 MB (14423461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:tetedemoine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:05f4123fd481dbece5f35a16f0722763d25ac0b408c781f308f5be6a023b1847
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13966504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f64da8d7c0f1e9f45b0f4395c01d6a01fed20ef1efc8dfbd6eabd4a8a814abd`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Fri, 13 Apr 2018 07:59:47 GMT
COPY file:4c140378f06ad8221b925b2cb1be66543007237c63483f9e17704072b2e23895 in / 
# Fri, 13 Apr 2018 07:59:47 GMT
EXPOSE 80/tcp
# Fri, 13 Apr 2018 07:59:48 GMT
ENTRYPOINT ["/traefik"]
# Fri, 13 Apr 2018 07:59:48 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d3e87e7bf2752be7faa348c508c5f4d0460d1671ffbcce3e75a9a5eab9a856c`  
		Last Modified: Fri, 13 Apr 2018 08:00:19 GMT  
		Size: 13.8 MB (13811320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:tetedemoine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:9765122dfeb3933dcb63fb20d0c4ad0d747e9294442e1b8363ce092060d4c46d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 MB (13672982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e05182dacac3795517b6716c30b147644514df0a965b07eaa0bbbf9dd5c4b846`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Fri, 13 Apr 2018 08:54:13 GMT
COPY file:14f2457249dd743281d9bd0ff01fa3ffae18a9c142f33d536285e7f1cf879fee in / 
# Fri, 13 Apr 2018 08:54:14 GMT
EXPOSE 80/tcp
# Fri, 13 Apr 2018 08:54:15 GMT
ENTRYPOINT ["/traefik"]
# Fri, 13 Apr 2018 08:54:16 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0c5b5499b3968093b0f78df07c0e4f45c04ddda14f45e72d352e4f05d81c668`  
		Last Modified: Fri, 13 Apr 2018 08:55:47 GMT  
		Size: 13.5 MB (13517831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:tetedemoine-alpine`

```console
$ docker pull traefik@sha256:d929e221e669a6877ce6d598594d674a1ffa83c0350791f9dcf156b87df5677e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:tetedemoine-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:a2e3b7c5cc6ee9ebcd3ed95caab9a842d200aca22f3e3ebbd31854d1b9f25a44
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16933348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9189f1fa5a8c8ecb58521a6042409339779226425b397166f0fa1f523e787ed4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 01:28:51 GMT
RUN apk --no-cache add ca-certificates
# Thu, 12 Apr 2018 18:11:13 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.0-rc5/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Thu, 12 Apr 2018 18:11:13 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Thu, 12 Apr 2018 18:11:13 GMT
EXPOSE 80/tcp
# Thu, 12 Apr 2018 18:11:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 12 Apr 2018 18:11:14 GMT
CMD ["traefik"]
# Thu, 12 Apr 2018 18:11:14 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc5 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:49b9c2b57b675dbaa3ad71bc0353f533766b07215ee9869c778883c1039f7466`  
		Last Modified: Thu, 12 Apr 2018 18:24:07 GMT  
		Size: 14.6 MB (14590269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b24a1eda792a0e80d16c868177d08cdbc290c7702bb46f3e08b940db7ae7bf7`  
		Last Modified: Thu, 12 Apr 2018 18:24:03 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:tetedemoine-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:7e34d0a559d3df3d8b833066c780f4a7a45b9b646cd6e00b8100abf385863167
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.3 MB (16297015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0b0274762be088d1ad1bde9266d61ae25d80ac48133325c25d5d13840fdcc9d`
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
# Fri, 13 Apr 2018 07:59:58 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.0-rc5/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Fri, 13 Apr 2018 07:59:58 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Fri, 13 Apr 2018 07:59:58 GMT
EXPOSE 80/tcp
# Fri, 13 Apr 2018 07:59:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 13 Apr 2018 07:59:59 GMT
CMD ["traefik"]
# Fri, 13 Apr 2018 07:59:59 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc5 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:a0862469e2f506f4d4f3816140a9d1dd292b64f4accb92c954baf8ef33777fd9`  
		Last Modified: Fri, 13 Apr 2018 08:00:34 GMT  
		Size: 14.0 MB (13978364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47c0bdec6957096047e26e8e58459b799bbf2462cd4147c2dcdd35996809d0f3`  
		Last Modified: Fri, 13 Apr 2018 08:00:29 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:tetedemoine-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:5d5484728b277c3b9c7097112867b8a7d91bbd81adfd3ec7fab69a49c473de5f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.0 MB (15952845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5bec0cbe7c74d45bf4e370b6751b8e5176a627b1bfc6b9f0c8c7a1fcb7f8d07`
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
# Fri, 13 Apr 2018 08:54:55 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.0-rc5/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Fri, 13 Apr 2018 08:54:56 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Fri, 13 Apr 2018 08:54:57 GMT
EXPOSE 80/tcp
# Fri, 13 Apr 2018 08:54:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 13 Apr 2018 08:54:59 GMT
CMD ["traefik"]
# Fri, 13 Apr 2018 08:54:59 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc5 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:fbf1948455768c82bacf74299b5cf47af5bc1dea853f23b99e83bf63480ff09a`  
		Last Modified: Fri, 13 Apr 2018 08:57:49 GMT  
		Size: 13.7 MB (13686086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25bc34af84be2b1762a0bb44e43924d5fc987c8c79af11111e21c6065face7fc`  
		Last Modified: Fri, 13 Apr 2018 08:57:44 GMT  
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
$ docker pull traefik@sha256:60161bbc27d6d098786f63e318be2d53214e04027f0d1a8f6429d48b15ef21e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.6` - linux; amd64

```console
$ docker pull traefik@sha256:faa8e8cd9f363d6d25fa87d22c21351f8995c836a98dc73baf94977dad4c0a71
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 MB (14578613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:274aeeeeb34dfb5ee76af4a15e9a8e22f1c93a5b67126ea209eff51b07f0154c`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:11:40 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 12 Apr 2018 18:10:32 GMT
COPY file:0bc8123027538011b5b4dca49544b2a4fd3191e4bbea02d98e8e9c7c85cc0721 in / 
# Thu, 12 Apr 2018 18:10:32 GMT
EXPOSE 80/tcp
# Thu, 12 Apr 2018 18:10:33 GMT
ENTRYPOINT ["/traefik"]
# Thu, 12 Apr 2018 18:10:33 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5d3835484afecc78dccfa2f7d4fcf273aacfe0c7600b957314e38488f3942045`  
		Last Modified: Fri, 03 Nov 2017 22:12:12 GMT  
		Size: 155.2 KB (155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b305ecb87a776d07062c053d03bf6c549a3e93d74f7825c62de9f1ff4b310d0a`  
		Last Modified: Thu, 12 Apr 2018 18:14:24 GMT  
		Size: 14.4 MB (14423461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.6` - linux; arm variant v6

```console
$ docker pull traefik@sha256:05f4123fd481dbece5f35a16f0722763d25ac0b408c781f308f5be6a023b1847
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13966504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f64da8d7c0f1e9f45b0f4395c01d6a01fed20ef1efc8dfbd6eabd4a8a814abd`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Fri, 13 Apr 2018 07:59:47 GMT
COPY file:4c140378f06ad8221b925b2cb1be66543007237c63483f9e17704072b2e23895 in / 
# Fri, 13 Apr 2018 07:59:47 GMT
EXPOSE 80/tcp
# Fri, 13 Apr 2018 07:59:48 GMT
ENTRYPOINT ["/traefik"]
# Fri, 13 Apr 2018 07:59:48 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d3e87e7bf2752be7faa348c508c5f4d0460d1671ffbcce3e75a9a5eab9a856c`  
		Last Modified: Fri, 13 Apr 2018 08:00:19 GMT  
		Size: 13.8 MB (13811320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.6` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:9765122dfeb3933dcb63fb20d0c4ad0d747e9294442e1b8363ce092060d4c46d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 MB (13672982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e05182dacac3795517b6716c30b147644514df0a965b07eaa0bbbf9dd5c4b846`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Fri, 13 Apr 2018 08:54:13 GMT
COPY file:14f2457249dd743281d9bd0ff01fa3ffae18a9c142f33d536285e7f1cf879fee in / 
# Fri, 13 Apr 2018 08:54:14 GMT
EXPOSE 80/tcp
# Fri, 13 Apr 2018 08:54:15 GMT
ENTRYPOINT ["/traefik"]
# Fri, 13 Apr 2018 08:54:16 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0c5b5499b3968093b0f78df07c0e4f45c04ddda14f45e72d352e4f05d81c668`  
		Last Modified: Fri, 13 Apr 2018 08:55:47 GMT  
		Size: 13.5 MB (13517831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.6.0-rc5`

```console
$ docker pull traefik@sha256:60161bbc27d6d098786f63e318be2d53214e04027f0d1a8f6429d48b15ef21e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.6.0-rc5` - linux; amd64

```console
$ docker pull traefik@sha256:faa8e8cd9f363d6d25fa87d22c21351f8995c836a98dc73baf94977dad4c0a71
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 MB (14578613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:274aeeeeb34dfb5ee76af4a15e9a8e22f1c93a5b67126ea209eff51b07f0154c`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:11:40 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 12 Apr 2018 18:10:32 GMT
COPY file:0bc8123027538011b5b4dca49544b2a4fd3191e4bbea02d98e8e9c7c85cc0721 in / 
# Thu, 12 Apr 2018 18:10:32 GMT
EXPOSE 80/tcp
# Thu, 12 Apr 2018 18:10:33 GMT
ENTRYPOINT ["/traefik"]
# Thu, 12 Apr 2018 18:10:33 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5d3835484afecc78dccfa2f7d4fcf273aacfe0c7600b957314e38488f3942045`  
		Last Modified: Fri, 03 Nov 2017 22:12:12 GMT  
		Size: 155.2 KB (155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b305ecb87a776d07062c053d03bf6c549a3e93d74f7825c62de9f1ff4b310d0a`  
		Last Modified: Thu, 12 Apr 2018 18:14:24 GMT  
		Size: 14.4 MB (14423461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.6.0-rc5` - linux; arm variant v6

```console
$ docker pull traefik@sha256:05f4123fd481dbece5f35a16f0722763d25ac0b408c781f308f5be6a023b1847
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13966504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f64da8d7c0f1e9f45b0f4395c01d6a01fed20ef1efc8dfbd6eabd4a8a814abd`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Fri, 13 Apr 2018 07:59:47 GMT
COPY file:4c140378f06ad8221b925b2cb1be66543007237c63483f9e17704072b2e23895 in / 
# Fri, 13 Apr 2018 07:59:47 GMT
EXPOSE 80/tcp
# Fri, 13 Apr 2018 07:59:48 GMT
ENTRYPOINT ["/traefik"]
# Fri, 13 Apr 2018 07:59:48 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d3e87e7bf2752be7faa348c508c5f4d0460d1671ffbcce3e75a9a5eab9a856c`  
		Last Modified: Fri, 13 Apr 2018 08:00:19 GMT  
		Size: 13.8 MB (13811320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.6.0-rc5` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:9765122dfeb3933dcb63fb20d0c4ad0d747e9294442e1b8363ce092060d4c46d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 MB (13672982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e05182dacac3795517b6716c30b147644514df0a965b07eaa0bbbf9dd5c4b846`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Fri, 13 Apr 2018 08:54:13 GMT
COPY file:14f2457249dd743281d9bd0ff01fa3ffae18a9c142f33d536285e7f1cf879fee in / 
# Fri, 13 Apr 2018 08:54:14 GMT
EXPOSE 80/tcp
# Fri, 13 Apr 2018 08:54:15 GMT
ENTRYPOINT ["/traefik"]
# Fri, 13 Apr 2018 08:54:16 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0c5b5499b3968093b0f78df07c0e4f45c04ddda14f45e72d352e4f05d81c668`  
		Last Modified: Fri, 13 Apr 2018 08:55:47 GMT  
		Size: 13.5 MB (13517831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.6.0-rc5-alpine`

```console
$ docker pull traefik@sha256:d929e221e669a6877ce6d598594d674a1ffa83c0350791f9dcf156b87df5677e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.6.0-rc5-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:a2e3b7c5cc6ee9ebcd3ed95caab9a842d200aca22f3e3ebbd31854d1b9f25a44
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16933348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9189f1fa5a8c8ecb58521a6042409339779226425b397166f0fa1f523e787ed4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 01:28:51 GMT
RUN apk --no-cache add ca-certificates
# Thu, 12 Apr 2018 18:11:13 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.0-rc5/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Thu, 12 Apr 2018 18:11:13 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Thu, 12 Apr 2018 18:11:13 GMT
EXPOSE 80/tcp
# Thu, 12 Apr 2018 18:11:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 12 Apr 2018 18:11:14 GMT
CMD ["traefik"]
# Thu, 12 Apr 2018 18:11:14 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc5 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:49b9c2b57b675dbaa3ad71bc0353f533766b07215ee9869c778883c1039f7466`  
		Last Modified: Thu, 12 Apr 2018 18:24:07 GMT  
		Size: 14.6 MB (14590269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b24a1eda792a0e80d16c868177d08cdbc290c7702bb46f3e08b940db7ae7bf7`  
		Last Modified: Thu, 12 Apr 2018 18:24:03 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.6.0-rc5-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:7e34d0a559d3df3d8b833066c780f4a7a45b9b646cd6e00b8100abf385863167
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.3 MB (16297015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0b0274762be088d1ad1bde9266d61ae25d80ac48133325c25d5d13840fdcc9d`
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
# Fri, 13 Apr 2018 07:59:58 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.0-rc5/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Fri, 13 Apr 2018 07:59:58 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Fri, 13 Apr 2018 07:59:58 GMT
EXPOSE 80/tcp
# Fri, 13 Apr 2018 07:59:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 13 Apr 2018 07:59:59 GMT
CMD ["traefik"]
# Fri, 13 Apr 2018 07:59:59 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc5 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:a0862469e2f506f4d4f3816140a9d1dd292b64f4accb92c954baf8ef33777fd9`  
		Last Modified: Fri, 13 Apr 2018 08:00:34 GMT  
		Size: 14.0 MB (13978364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47c0bdec6957096047e26e8e58459b799bbf2462cd4147c2dcdd35996809d0f3`  
		Last Modified: Fri, 13 Apr 2018 08:00:29 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.6.0-rc5-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:5d5484728b277c3b9c7097112867b8a7d91bbd81adfd3ec7fab69a49c473de5f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.0 MB (15952845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5bec0cbe7c74d45bf4e370b6751b8e5176a627b1bfc6b9f0c8c7a1fcb7f8d07`
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
# Fri, 13 Apr 2018 08:54:55 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.0-rc5/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Fri, 13 Apr 2018 08:54:56 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Fri, 13 Apr 2018 08:54:57 GMT
EXPOSE 80/tcp
# Fri, 13 Apr 2018 08:54:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 13 Apr 2018 08:54:59 GMT
CMD ["traefik"]
# Fri, 13 Apr 2018 08:54:59 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc5 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:fbf1948455768c82bacf74299b5cf47af5bc1dea853f23b99e83bf63480ff09a`  
		Last Modified: Fri, 13 Apr 2018 08:57:49 GMT  
		Size: 13.7 MB (13686086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25bc34af84be2b1762a0bb44e43924d5fc987c8c79af11111e21c6065face7fc`  
		Last Modified: Fri, 13 Apr 2018 08:57:44 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.6-alpine`

```console
$ docker pull traefik@sha256:d929e221e669a6877ce6d598594d674a1ffa83c0350791f9dcf156b87df5677e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.6-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:a2e3b7c5cc6ee9ebcd3ed95caab9a842d200aca22f3e3ebbd31854d1b9f25a44
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16933348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9189f1fa5a8c8ecb58521a6042409339779226425b397166f0fa1f523e787ed4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 01:28:51 GMT
RUN apk --no-cache add ca-certificates
# Thu, 12 Apr 2018 18:11:13 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.0-rc5/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Thu, 12 Apr 2018 18:11:13 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Thu, 12 Apr 2018 18:11:13 GMT
EXPOSE 80/tcp
# Thu, 12 Apr 2018 18:11:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 12 Apr 2018 18:11:14 GMT
CMD ["traefik"]
# Thu, 12 Apr 2018 18:11:14 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc5 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:49b9c2b57b675dbaa3ad71bc0353f533766b07215ee9869c778883c1039f7466`  
		Last Modified: Thu, 12 Apr 2018 18:24:07 GMT  
		Size: 14.6 MB (14590269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b24a1eda792a0e80d16c868177d08cdbc290c7702bb46f3e08b940db7ae7bf7`  
		Last Modified: Thu, 12 Apr 2018 18:24:03 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.6-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:7e34d0a559d3df3d8b833066c780f4a7a45b9b646cd6e00b8100abf385863167
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.3 MB (16297015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0b0274762be088d1ad1bde9266d61ae25d80ac48133325c25d5d13840fdcc9d`
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
# Fri, 13 Apr 2018 07:59:58 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.0-rc5/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Fri, 13 Apr 2018 07:59:58 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Fri, 13 Apr 2018 07:59:58 GMT
EXPOSE 80/tcp
# Fri, 13 Apr 2018 07:59:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 13 Apr 2018 07:59:59 GMT
CMD ["traefik"]
# Fri, 13 Apr 2018 07:59:59 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc5 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:a0862469e2f506f4d4f3816140a9d1dd292b64f4accb92c954baf8ef33777fd9`  
		Last Modified: Fri, 13 Apr 2018 08:00:34 GMT  
		Size: 14.0 MB (13978364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47c0bdec6957096047e26e8e58459b799bbf2462cd4147c2dcdd35996809d0f3`  
		Last Modified: Fri, 13 Apr 2018 08:00:29 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.6-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:5d5484728b277c3b9c7097112867b8a7d91bbd81adfd3ec7fab69a49c473de5f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.0 MB (15952845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5bec0cbe7c74d45bf4e370b6751b8e5176a627b1bfc6b9f0c8c7a1fcb7f8d07`
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
# Fri, 13 Apr 2018 08:54:55 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.0-rc5/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Fri, 13 Apr 2018 08:54:56 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Fri, 13 Apr 2018 08:54:57 GMT
EXPOSE 80/tcp
# Fri, 13 Apr 2018 08:54:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 13 Apr 2018 08:54:59 GMT
CMD ["traefik"]
# Fri, 13 Apr 2018 08:54:59 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc5 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:fbf1948455768c82bacf74299b5cf47af5bc1dea853f23b99e83bf63480ff09a`  
		Last Modified: Fri, 13 Apr 2018 08:57:49 GMT  
		Size: 13.7 MB (13686086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25bc34af84be2b1762a0bb44e43924d5fc987c8c79af11111e21c6065face7fc`  
		Last Modified: Fri, 13 Apr 2018 08:57:44 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
