<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `traefik`

-	[`traefik:1.5`](#traefik15)
-	[`traefik:1.5.4`](#traefik154)
-	[`traefik:1.5.4-alpine`](#traefik154-alpine)
-	[`traefik:1.5-alpine`](#traefik15-alpine)
-	[`traefik:1.6`](#traefik16)
-	[`traefik:1.6.0-rc6`](#traefik160-rc6)
-	[`traefik:1.6.0-rc6-alpine`](#traefik160-rc6-alpine)
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
-	[`traefik:v1.6.0-rc6`](#traefikv160-rc6)
-	[`traefik:v1.6.0-rc6-alpine`](#traefikv160-rc6-alpine)
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
$ docker pull traefik@sha256:bc9ca0aa50c72094fb00a2f1d3ae4cbfe65a0d082ca0e10b9d7f57de7a2716ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.6` - linux; amd64

```console
$ docker pull traefik@sha256:29bf9c2bf03295974a5f0d7c40de8482851fff052805f26751fcdd9750549b86
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 MB (14585745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d9e771506d92e69f3ae785fc7f35752af7d4925a4d725abc4e92b3b4499bcc5`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:11:40 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 18 Apr 2018 01:00:48 GMT
COPY file:46586aa1379f413b932316cdcf61909d77a2ae441f3ed57259d92571aa8e4e32 in / 
# Wed, 18 Apr 2018 01:00:48 GMT
EXPOSE 80/tcp
# Wed, 18 Apr 2018 01:00:48 GMT
ENTRYPOINT ["/traefik"]
# Wed, 18 Apr 2018 01:00:48 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5d3835484afecc78dccfa2f7d4fcf273aacfe0c7600b957314e38488f3942045`  
		Last Modified: Fri, 03 Nov 2017 22:12:12 GMT  
		Size: 155.2 KB (155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de216640819140493d227298e292100648dc8240f329d53645675ee35969f9f3`  
		Last Modified: Wed, 18 Apr 2018 01:11:52 GMT  
		Size: 14.4 MB (14430593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.6` - linux; arm variant v6

```console
$ docker pull traefik@sha256:8ca4be4ab06b65f89dfef57d091d53ee424074a979220e94c07254126b9c519c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13971175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f00c78736594dac3dc9bd13661d480e03213bbb8bb4b5cf4ea5cbf4536ff7ef1`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 18 Apr 2018 07:58:53 GMT
COPY file:394ddd12c389c1335b284801adb3c50d6e7229fb6c4eb69a789510fd7bbbb1a4 in / 
# Wed, 18 Apr 2018 07:58:54 GMT
EXPOSE 80/tcp
# Wed, 18 Apr 2018 07:58:54 GMT
ENTRYPOINT ["/traefik"]
# Wed, 18 Apr 2018 07:58:54 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:865bdc3b0b32dbc6f559aca65472329e9445eccb1cc54985e3b676ad3d80cf38`  
		Last Modified: Wed, 18 Apr 2018 07:59:24 GMT  
		Size: 13.8 MB (13815991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.6` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:753caf974665547bd4e3bbcfe61865bc6d5076604708904e23dca6be8dddccf7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 MB (13680377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de387d1c092861351169ff0737879974b303c142a0f3ed9c1d56694b0f5241a4`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 18 Apr 2018 08:41:34 GMT
COPY file:55619f888a02098c45395b14a567657cc98b496184191be9b49f0a23b6e5a6c5 in / 
# Wed, 18 Apr 2018 08:41:34 GMT
EXPOSE 80/tcp
# Wed, 18 Apr 2018 08:41:35 GMT
ENTRYPOINT ["/traefik"]
# Wed, 18 Apr 2018 08:41:36 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b27a93063ef44ee3971e9fe2638f0b2a32b50855a00c18a89f53ae558327ed33`  
		Last Modified: Wed, 18 Apr 2018 08:43:21 GMT  
		Size: 13.5 MB (13525226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.6.0-rc6`

```console
$ docker pull traefik@sha256:bc9ca0aa50c72094fb00a2f1d3ae4cbfe65a0d082ca0e10b9d7f57de7a2716ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.6.0-rc6` - linux; amd64

```console
$ docker pull traefik@sha256:29bf9c2bf03295974a5f0d7c40de8482851fff052805f26751fcdd9750549b86
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 MB (14585745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d9e771506d92e69f3ae785fc7f35752af7d4925a4d725abc4e92b3b4499bcc5`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:11:40 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 18 Apr 2018 01:00:48 GMT
COPY file:46586aa1379f413b932316cdcf61909d77a2ae441f3ed57259d92571aa8e4e32 in / 
# Wed, 18 Apr 2018 01:00:48 GMT
EXPOSE 80/tcp
# Wed, 18 Apr 2018 01:00:48 GMT
ENTRYPOINT ["/traefik"]
# Wed, 18 Apr 2018 01:00:48 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5d3835484afecc78dccfa2f7d4fcf273aacfe0c7600b957314e38488f3942045`  
		Last Modified: Fri, 03 Nov 2017 22:12:12 GMT  
		Size: 155.2 KB (155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de216640819140493d227298e292100648dc8240f329d53645675ee35969f9f3`  
		Last Modified: Wed, 18 Apr 2018 01:11:52 GMT  
		Size: 14.4 MB (14430593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.6.0-rc6` - linux; arm variant v6

```console
$ docker pull traefik@sha256:8ca4be4ab06b65f89dfef57d091d53ee424074a979220e94c07254126b9c519c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13971175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f00c78736594dac3dc9bd13661d480e03213bbb8bb4b5cf4ea5cbf4536ff7ef1`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 18 Apr 2018 07:58:53 GMT
COPY file:394ddd12c389c1335b284801adb3c50d6e7229fb6c4eb69a789510fd7bbbb1a4 in / 
# Wed, 18 Apr 2018 07:58:54 GMT
EXPOSE 80/tcp
# Wed, 18 Apr 2018 07:58:54 GMT
ENTRYPOINT ["/traefik"]
# Wed, 18 Apr 2018 07:58:54 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:865bdc3b0b32dbc6f559aca65472329e9445eccb1cc54985e3b676ad3d80cf38`  
		Last Modified: Wed, 18 Apr 2018 07:59:24 GMT  
		Size: 13.8 MB (13815991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.6.0-rc6` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:753caf974665547bd4e3bbcfe61865bc6d5076604708904e23dca6be8dddccf7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 MB (13680377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de387d1c092861351169ff0737879974b303c142a0f3ed9c1d56694b0f5241a4`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 18 Apr 2018 08:41:34 GMT
COPY file:55619f888a02098c45395b14a567657cc98b496184191be9b49f0a23b6e5a6c5 in / 
# Wed, 18 Apr 2018 08:41:34 GMT
EXPOSE 80/tcp
# Wed, 18 Apr 2018 08:41:35 GMT
ENTRYPOINT ["/traefik"]
# Wed, 18 Apr 2018 08:41:36 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b27a93063ef44ee3971e9fe2638f0b2a32b50855a00c18a89f53ae558327ed33`  
		Last Modified: Wed, 18 Apr 2018 08:43:21 GMT  
		Size: 13.5 MB (13525226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.6.0-rc6-alpine`

```console
$ docker pull traefik@sha256:9e80f805717e1924b711b619c69cfa55ac7c74ae5f27a0e1e41a5df0f3379d41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:1.6.0-rc6-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:15989a5491aa0f1d4c1d73c53f91918386887c725df29d9b4fa4fff12402dbdc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16940713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55b08e24558a294752e8e16c24962f900cc5d1282a9d4483b3d3cc7f7fd8d2a4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 01:28:51 GMT
RUN apk --no-cache add ca-certificates
# Wed, 18 Apr 2018 01:01:18 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.0-rc6/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 18 Apr 2018 01:01:18 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 18 Apr 2018 01:01:19 GMT
EXPOSE 80/tcp
# Wed, 18 Apr 2018 01:01:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 18 Apr 2018 01:01:19 GMT
CMD ["traefik"]
# Wed, 18 Apr 2018 01:01:19 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc6 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:405a4ff0d24b81bec5dac6fed8beea35dfc3e2d558ddedc0d1eb2d7a82e0d1dd`  
		Last Modified: Wed, 18 Apr 2018 01:24:18 GMT  
		Size: 14.6 MB (14597633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b09160593b967ee8b9b78c7f602c16bc09934ba709259e176df99aff35c60e58`  
		Last Modified: Wed, 18 Apr 2018 01:24:15 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.6.0-rc6-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:10e739669796231a330f03ae5bb551999ea4c2302e919ac191846467ad34ed07
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.3 MB (16302383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5c4d4977d05ef16e661b8fd520cb46def560e826f6df16d9fa77a5dce893967`
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
# Wed, 18 Apr 2018 07:59:03 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.0-rc6/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 18 Apr 2018 07:59:03 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 18 Apr 2018 07:59:04 GMT
EXPOSE 80/tcp
# Wed, 18 Apr 2018 07:59:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 18 Apr 2018 07:59:04 GMT
CMD ["traefik"]
# Wed, 18 Apr 2018 07:59:04 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc6 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:e724029f7a83bcafa1e38dd0a7204027e747c573ed2adf95845eb7e8886c0fc6`  
		Last Modified: Wed, 18 Apr 2018 07:59:40 GMT  
		Size: 14.0 MB (13983733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d5ac7f025f5bda3c57514963ed293dab9f53ac9c4f4c85daa9a865f61c35aa2`  
		Last Modified: Wed, 18 Apr 2018 07:59:35 GMT  
		Size: 339.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.6-alpine`

```console
$ docker pull traefik@sha256:9e80f805717e1924b711b619c69cfa55ac7c74ae5f27a0e1e41a5df0f3379d41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:1.6-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:15989a5491aa0f1d4c1d73c53f91918386887c725df29d9b4fa4fff12402dbdc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16940713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55b08e24558a294752e8e16c24962f900cc5d1282a9d4483b3d3cc7f7fd8d2a4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 01:28:51 GMT
RUN apk --no-cache add ca-certificates
# Wed, 18 Apr 2018 01:01:18 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.0-rc6/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 18 Apr 2018 01:01:18 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 18 Apr 2018 01:01:19 GMT
EXPOSE 80/tcp
# Wed, 18 Apr 2018 01:01:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 18 Apr 2018 01:01:19 GMT
CMD ["traefik"]
# Wed, 18 Apr 2018 01:01:19 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc6 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:405a4ff0d24b81bec5dac6fed8beea35dfc3e2d558ddedc0d1eb2d7a82e0d1dd`  
		Last Modified: Wed, 18 Apr 2018 01:24:18 GMT  
		Size: 14.6 MB (14597633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b09160593b967ee8b9b78c7f602c16bc09934ba709259e176df99aff35c60e58`  
		Last Modified: Wed, 18 Apr 2018 01:24:15 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.6-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:10e739669796231a330f03ae5bb551999ea4c2302e919ac191846467ad34ed07
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.3 MB (16302383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5c4d4977d05ef16e661b8fd520cb46def560e826f6df16d9fa77a5dce893967`
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
# Wed, 18 Apr 2018 07:59:03 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.0-rc6/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 18 Apr 2018 07:59:03 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 18 Apr 2018 07:59:04 GMT
EXPOSE 80/tcp
# Wed, 18 Apr 2018 07:59:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 18 Apr 2018 07:59:04 GMT
CMD ["traefik"]
# Wed, 18 Apr 2018 07:59:04 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc6 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:e724029f7a83bcafa1e38dd0a7204027e747c573ed2adf95845eb7e8886c0fc6`  
		Last Modified: Wed, 18 Apr 2018 07:59:40 GMT  
		Size: 14.0 MB (13983733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d5ac7f025f5bda3c57514963ed293dab9f53ac9c4f4c85daa9a865f61c35aa2`  
		Last Modified: Wed, 18 Apr 2018 07:59:35 GMT  
		Size: 339.0 B  
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
$ docker pull traefik@sha256:bc9ca0aa50c72094fb00a2f1d3ae4cbfe65a0d082ca0e10b9d7f57de7a2716ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:tetedemoine` - linux; amd64

```console
$ docker pull traefik@sha256:29bf9c2bf03295974a5f0d7c40de8482851fff052805f26751fcdd9750549b86
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 MB (14585745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d9e771506d92e69f3ae785fc7f35752af7d4925a4d725abc4e92b3b4499bcc5`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:11:40 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 18 Apr 2018 01:00:48 GMT
COPY file:46586aa1379f413b932316cdcf61909d77a2ae441f3ed57259d92571aa8e4e32 in / 
# Wed, 18 Apr 2018 01:00:48 GMT
EXPOSE 80/tcp
# Wed, 18 Apr 2018 01:00:48 GMT
ENTRYPOINT ["/traefik"]
# Wed, 18 Apr 2018 01:00:48 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5d3835484afecc78dccfa2f7d4fcf273aacfe0c7600b957314e38488f3942045`  
		Last Modified: Fri, 03 Nov 2017 22:12:12 GMT  
		Size: 155.2 KB (155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de216640819140493d227298e292100648dc8240f329d53645675ee35969f9f3`  
		Last Modified: Wed, 18 Apr 2018 01:11:52 GMT  
		Size: 14.4 MB (14430593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:tetedemoine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:8ca4be4ab06b65f89dfef57d091d53ee424074a979220e94c07254126b9c519c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13971175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f00c78736594dac3dc9bd13661d480e03213bbb8bb4b5cf4ea5cbf4536ff7ef1`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 18 Apr 2018 07:58:53 GMT
COPY file:394ddd12c389c1335b284801adb3c50d6e7229fb6c4eb69a789510fd7bbbb1a4 in / 
# Wed, 18 Apr 2018 07:58:54 GMT
EXPOSE 80/tcp
# Wed, 18 Apr 2018 07:58:54 GMT
ENTRYPOINT ["/traefik"]
# Wed, 18 Apr 2018 07:58:54 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:865bdc3b0b32dbc6f559aca65472329e9445eccb1cc54985e3b676ad3d80cf38`  
		Last Modified: Wed, 18 Apr 2018 07:59:24 GMT  
		Size: 13.8 MB (13815991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:tetedemoine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:753caf974665547bd4e3bbcfe61865bc6d5076604708904e23dca6be8dddccf7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 MB (13680377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de387d1c092861351169ff0737879974b303c142a0f3ed9c1d56694b0f5241a4`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 18 Apr 2018 08:41:34 GMT
COPY file:55619f888a02098c45395b14a567657cc98b496184191be9b49f0a23b6e5a6c5 in / 
# Wed, 18 Apr 2018 08:41:34 GMT
EXPOSE 80/tcp
# Wed, 18 Apr 2018 08:41:35 GMT
ENTRYPOINT ["/traefik"]
# Wed, 18 Apr 2018 08:41:36 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b27a93063ef44ee3971e9fe2638f0b2a32b50855a00c18a89f53ae558327ed33`  
		Last Modified: Wed, 18 Apr 2018 08:43:21 GMT  
		Size: 13.5 MB (13525226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:tetedemoine-alpine`

```console
$ docker pull traefik@sha256:9e80f805717e1924b711b619c69cfa55ac7c74ae5f27a0e1e41a5df0f3379d41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:tetedemoine-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:15989a5491aa0f1d4c1d73c53f91918386887c725df29d9b4fa4fff12402dbdc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16940713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55b08e24558a294752e8e16c24962f900cc5d1282a9d4483b3d3cc7f7fd8d2a4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 01:28:51 GMT
RUN apk --no-cache add ca-certificates
# Wed, 18 Apr 2018 01:01:18 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.0-rc6/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 18 Apr 2018 01:01:18 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 18 Apr 2018 01:01:19 GMT
EXPOSE 80/tcp
# Wed, 18 Apr 2018 01:01:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 18 Apr 2018 01:01:19 GMT
CMD ["traefik"]
# Wed, 18 Apr 2018 01:01:19 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc6 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:405a4ff0d24b81bec5dac6fed8beea35dfc3e2d558ddedc0d1eb2d7a82e0d1dd`  
		Last Modified: Wed, 18 Apr 2018 01:24:18 GMT  
		Size: 14.6 MB (14597633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b09160593b967ee8b9b78c7f602c16bc09934ba709259e176df99aff35c60e58`  
		Last Modified: Wed, 18 Apr 2018 01:24:15 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:tetedemoine-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:10e739669796231a330f03ae5bb551999ea4c2302e919ac191846467ad34ed07
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.3 MB (16302383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5c4d4977d05ef16e661b8fd520cb46def560e826f6df16d9fa77a5dce893967`
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
# Wed, 18 Apr 2018 07:59:03 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.0-rc6/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 18 Apr 2018 07:59:03 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 18 Apr 2018 07:59:04 GMT
EXPOSE 80/tcp
# Wed, 18 Apr 2018 07:59:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 18 Apr 2018 07:59:04 GMT
CMD ["traefik"]
# Wed, 18 Apr 2018 07:59:04 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc6 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:e724029f7a83bcafa1e38dd0a7204027e747c573ed2adf95845eb7e8886c0fc6`  
		Last Modified: Wed, 18 Apr 2018 07:59:40 GMT  
		Size: 14.0 MB (13983733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d5ac7f025f5bda3c57514963ed293dab9f53ac9c4f4c85daa9a865f61c35aa2`  
		Last Modified: Wed, 18 Apr 2018 07:59:35 GMT  
		Size: 339.0 B  
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
$ docker pull traefik@sha256:bc9ca0aa50c72094fb00a2f1d3ae4cbfe65a0d082ca0e10b9d7f57de7a2716ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.6` - linux; amd64

```console
$ docker pull traefik@sha256:29bf9c2bf03295974a5f0d7c40de8482851fff052805f26751fcdd9750549b86
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 MB (14585745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d9e771506d92e69f3ae785fc7f35752af7d4925a4d725abc4e92b3b4499bcc5`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:11:40 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 18 Apr 2018 01:00:48 GMT
COPY file:46586aa1379f413b932316cdcf61909d77a2ae441f3ed57259d92571aa8e4e32 in / 
# Wed, 18 Apr 2018 01:00:48 GMT
EXPOSE 80/tcp
# Wed, 18 Apr 2018 01:00:48 GMT
ENTRYPOINT ["/traefik"]
# Wed, 18 Apr 2018 01:00:48 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5d3835484afecc78dccfa2f7d4fcf273aacfe0c7600b957314e38488f3942045`  
		Last Modified: Fri, 03 Nov 2017 22:12:12 GMT  
		Size: 155.2 KB (155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de216640819140493d227298e292100648dc8240f329d53645675ee35969f9f3`  
		Last Modified: Wed, 18 Apr 2018 01:11:52 GMT  
		Size: 14.4 MB (14430593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.6` - linux; arm variant v6

```console
$ docker pull traefik@sha256:8ca4be4ab06b65f89dfef57d091d53ee424074a979220e94c07254126b9c519c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13971175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f00c78736594dac3dc9bd13661d480e03213bbb8bb4b5cf4ea5cbf4536ff7ef1`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 18 Apr 2018 07:58:53 GMT
COPY file:394ddd12c389c1335b284801adb3c50d6e7229fb6c4eb69a789510fd7bbbb1a4 in / 
# Wed, 18 Apr 2018 07:58:54 GMT
EXPOSE 80/tcp
# Wed, 18 Apr 2018 07:58:54 GMT
ENTRYPOINT ["/traefik"]
# Wed, 18 Apr 2018 07:58:54 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:865bdc3b0b32dbc6f559aca65472329e9445eccb1cc54985e3b676ad3d80cf38`  
		Last Modified: Wed, 18 Apr 2018 07:59:24 GMT  
		Size: 13.8 MB (13815991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.6` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:753caf974665547bd4e3bbcfe61865bc6d5076604708904e23dca6be8dddccf7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 MB (13680377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de387d1c092861351169ff0737879974b303c142a0f3ed9c1d56694b0f5241a4`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 18 Apr 2018 08:41:34 GMT
COPY file:55619f888a02098c45395b14a567657cc98b496184191be9b49f0a23b6e5a6c5 in / 
# Wed, 18 Apr 2018 08:41:34 GMT
EXPOSE 80/tcp
# Wed, 18 Apr 2018 08:41:35 GMT
ENTRYPOINT ["/traefik"]
# Wed, 18 Apr 2018 08:41:36 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b27a93063ef44ee3971e9fe2638f0b2a32b50855a00c18a89f53ae558327ed33`  
		Last Modified: Wed, 18 Apr 2018 08:43:21 GMT  
		Size: 13.5 MB (13525226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.6.0-rc6`

```console
$ docker pull traefik@sha256:bc9ca0aa50c72094fb00a2f1d3ae4cbfe65a0d082ca0e10b9d7f57de7a2716ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.6.0-rc6` - linux; amd64

```console
$ docker pull traefik@sha256:29bf9c2bf03295974a5f0d7c40de8482851fff052805f26751fcdd9750549b86
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 MB (14585745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d9e771506d92e69f3ae785fc7f35752af7d4925a4d725abc4e92b3b4499bcc5`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:11:40 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 18 Apr 2018 01:00:48 GMT
COPY file:46586aa1379f413b932316cdcf61909d77a2ae441f3ed57259d92571aa8e4e32 in / 
# Wed, 18 Apr 2018 01:00:48 GMT
EXPOSE 80/tcp
# Wed, 18 Apr 2018 01:00:48 GMT
ENTRYPOINT ["/traefik"]
# Wed, 18 Apr 2018 01:00:48 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5d3835484afecc78dccfa2f7d4fcf273aacfe0c7600b957314e38488f3942045`  
		Last Modified: Fri, 03 Nov 2017 22:12:12 GMT  
		Size: 155.2 KB (155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de216640819140493d227298e292100648dc8240f329d53645675ee35969f9f3`  
		Last Modified: Wed, 18 Apr 2018 01:11:52 GMT  
		Size: 14.4 MB (14430593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.6.0-rc6` - linux; arm variant v6

```console
$ docker pull traefik@sha256:8ca4be4ab06b65f89dfef57d091d53ee424074a979220e94c07254126b9c519c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13971175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f00c78736594dac3dc9bd13661d480e03213bbb8bb4b5cf4ea5cbf4536ff7ef1`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 18 Apr 2018 07:58:53 GMT
COPY file:394ddd12c389c1335b284801adb3c50d6e7229fb6c4eb69a789510fd7bbbb1a4 in / 
# Wed, 18 Apr 2018 07:58:54 GMT
EXPOSE 80/tcp
# Wed, 18 Apr 2018 07:58:54 GMT
ENTRYPOINT ["/traefik"]
# Wed, 18 Apr 2018 07:58:54 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:865bdc3b0b32dbc6f559aca65472329e9445eccb1cc54985e3b676ad3d80cf38`  
		Last Modified: Wed, 18 Apr 2018 07:59:24 GMT  
		Size: 13.8 MB (13815991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.6.0-rc6` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:753caf974665547bd4e3bbcfe61865bc6d5076604708904e23dca6be8dddccf7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 MB (13680377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de387d1c092861351169ff0737879974b303c142a0f3ed9c1d56694b0f5241a4`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 18 Apr 2018 08:41:34 GMT
COPY file:55619f888a02098c45395b14a567657cc98b496184191be9b49f0a23b6e5a6c5 in / 
# Wed, 18 Apr 2018 08:41:34 GMT
EXPOSE 80/tcp
# Wed, 18 Apr 2018 08:41:35 GMT
ENTRYPOINT ["/traefik"]
# Wed, 18 Apr 2018 08:41:36 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b27a93063ef44ee3971e9fe2638f0b2a32b50855a00c18a89f53ae558327ed33`  
		Last Modified: Wed, 18 Apr 2018 08:43:21 GMT  
		Size: 13.5 MB (13525226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.6.0-rc6-alpine`

```console
$ docker pull traefik@sha256:9e80f805717e1924b711b619c69cfa55ac7c74ae5f27a0e1e41a5df0f3379d41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:v1.6.0-rc6-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:15989a5491aa0f1d4c1d73c53f91918386887c725df29d9b4fa4fff12402dbdc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16940713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55b08e24558a294752e8e16c24962f900cc5d1282a9d4483b3d3cc7f7fd8d2a4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 01:28:51 GMT
RUN apk --no-cache add ca-certificates
# Wed, 18 Apr 2018 01:01:18 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.0-rc6/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 18 Apr 2018 01:01:18 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 18 Apr 2018 01:01:19 GMT
EXPOSE 80/tcp
# Wed, 18 Apr 2018 01:01:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 18 Apr 2018 01:01:19 GMT
CMD ["traefik"]
# Wed, 18 Apr 2018 01:01:19 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc6 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:405a4ff0d24b81bec5dac6fed8beea35dfc3e2d558ddedc0d1eb2d7a82e0d1dd`  
		Last Modified: Wed, 18 Apr 2018 01:24:18 GMT  
		Size: 14.6 MB (14597633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b09160593b967ee8b9b78c7f602c16bc09934ba709259e176df99aff35c60e58`  
		Last Modified: Wed, 18 Apr 2018 01:24:15 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.6.0-rc6-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:10e739669796231a330f03ae5bb551999ea4c2302e919ac191846467ad34ed07
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.3 MB (16302383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5c4d4977d05ef16e661b8fd520cb46def560e826f6df16d9fa77a5dce893967`
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
# Wed, 18 Apr 2018 07:59:03 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.0-rc6/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 18 Apr 2018 07:59:03 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 18 Apr 2018 07:59:04 GMT
EXPOSE 80/tcp
# Wed, 18 Apr 2018 07:59:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 18 Apr 2018 07:59:04 GMT
CMD ["traefik"]
# Wed, 18 Apr 2018 07:59:04 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc6 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:e724029f7a83bcafa1e38dd0a7204027e747c573ed2adf95845eb7e8886c0fc6`  
		Last Modified: Wed, 18 Apr 2018 07:59:40 GMT  
		Size: 14.0 MB (13983733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d5ac7f025f5bda3c57514963ed293dab9f53ac9c4f4c85daa9a865f61c35aa2`  
		Last Modified: Wed, 18 Apr 2018 07:59:35 GMT  
		Size: 339.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.6-alpine`

```console
$ docker pull traefik@sha256:9e80f805717e1924b711b619c69cfa55ac7c74ae5f27a0e1e41a5df0f3379d41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:v1.6-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:15989a5491aa0f1d4c1d73c53f91918386887c725df29d9b4fa4fff12402dbdc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16940713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55b08e24558a294752e8e16c24962f900cc5d1282a9d4483b3d3cc7f7fd8d2a4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 01:28:51 GMT
RUN apk --no-cache add ca-certificates
# Wed, 18 Apr 2018 01:01:18 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.0-rc6/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 18 Apr 2018 01:01:18 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 18 Apr 2018 01:01:19 GMT
EXPOSE 80/tcp
# Wed, 18 Apr 2018 01:01:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 18 Apr 2018 01:01:19 GMT
CMD ["traefik"]
# Wed, 18 Apr 2018 01:01:19 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc6 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:405a4ff0d24b81bec5dac6fed8beea35dfc3e2d558ddedc0d1eb2d7a82e0d1dd`  
		Last Modified: Wed, 18 Apr 2018 01:24:18 GMT  
		Size: 14.6 MB (14597633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b09160593b967ee8b9b78c7f602c16bc09934ba709259e176df99aff35c60e58`  
		Last Modified: Wed, 18 Apr 2018 01:24:15 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.6-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:10e739669796231a330f03ae5bb551999ea4c2302e919ac191846467ad34ed07
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.3 MB (16302383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5c4d4977d05ef16e661b8fd520cb46def560e826f6df16d9fa77a5dce893967`
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
# Wed, 18 Apr 2018 07:59:03 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.0-rc6/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 18 Apr 2018 07:59:03 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 18 Apr 2018 07:59:04 GMT
EXPOSE 80/tcp
# Wed, 18 Apr 2018 07:59:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 18 Apr 2018 07:59:04 GMT
CMD ["traefik"]
# Wed, 18 Apr 2018 07:59:04 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc6 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:e724029f7a83bcafa1e38dd0a7204027e747c573ed2adf95845eb7e8886c0fc6`  
		Last Modified: Wed, 18 Apr 2018 07:59:40 GMT  
		Size: 14.0 MB (13983733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d5ac7f025f5bda3c57514963ed293dab9f53ac9c4f4c85daa9a865f61c35aa2`  
		Last Modified: Wed, 18 Apr 2018 07:59:35 GMT  
		Size: 339.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
