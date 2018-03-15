<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `traefik`

-	[`traefik:1.5`](#traefik15)
-	[`traefik:1.5.4`](#traefik154)
-	[`traefik:1.5.4-alpine`](#traefik154-alpine)
-	[`traefik:1.5-alpine`](#traefik15-alpine)
-	[`traefik:alpine`](#traefikalpine)
-	[`traefik:cancoillotte`](#traefikcancoillotte)
-	[`traefik:cancoillotte-alpine`](#traefikcancoillotte-alpine)
-	[`traefik:latest`](#traefiklatest)
-	[`traefik:v1.5`](#traefikv15)
-	[`traefik:v1.5.4`](#traefikv154)
-	[`traefik:v1.5.4-alpine`](#traefikv154-alpine)
-	[`traefik:v1.5-alpine`](#traefikv15-alpine)

## `traefik:1.5`

```console
$ docker pull traefik@sha256:d277007b55a8a8d972b1983ef11387d05f719821a2d2e23e8fa06ac5081a302f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.5` - linux; amd64

```console
$ docker pull traefik@sha256:d1264267935f35aa1070a840d24bfc6bb7f55efb49949589b049f82a4c5967f4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13997457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c72b944d56909f092c54c2b0804002f5501a61b7f4444e03574c0ff3455d657`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:11:40 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 27 Feb 2018 21:48:56 GMT
COPY file:68d00d06bb04655a18820cb006fa04b6914699d0fb4ebdc604e76ba2fed172ef in / 
# Tue, 27 Feb 2018 21:48:56 GMT
EXPOSE 80/tcp
# Tue, 27 Feb 2018 21:48:57 GMT
ENTRYPOINT ["/traefik"]
# Tue, 27 Feb 2018 21:48:57 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5d3835484afecc78dccfa2f7d4fcf273aacfe0c7600b957314e38488f3942045`  
		Last Modified: Fri, 03 Nov 2017 22:12:12 GMT  
		Size: 155.2 KB (155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0feefa6e9e49547c30d8edd85bbe6116ad1107ec138af7b22af9e087d759de0c`  
		Last Modified: Tue, 27 Feb 2018 21:49:57 GMT  
		Size: 13.8 MB (13842305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.5` - linux; arm variant v6

```console
$ docker pull traefik@sha256:ab398c448e71c4fe535bb021c527e60da030922e32b6d2fac8d8a48405b0509c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13140069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d48bbcc02a1bd50c760114102f5d5acfe5d1facf15cda6bb1e043e73fc5e3af`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 28 Feb 2018 00:48:33 GMT
COPY file:19d293a9ca8720d9cb11b4ee11fdad11e91ad1c4f6a5629c361e8aca9d575636 in / 
# Wed, 28 Feb 2018 00:48:33 GMT
EXPOSE 80/tcp
# Wed, 28 Feb 2018 00:48:33 GMT
ENTRYPOINT ["/traefik"]
# Wed, 28 Feb 2018 00:48:33 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da32d827133bcf24a68e16b35206f11e65eec922478674597e3e13f3a254d8a2`  
		Last Modified: Wed, 28 Feb 2018 00:48:57 GMT  
		Size: 13.0 MB (12984885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.5` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:456da62bf3f54f1a2da316a31e3ec4c997f19a7ec3a1a7fe058acf215479d9d7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.8 MB (12801078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:152080e23b3cebb1ebc4e615e127018166118ff4120d90a02832313d8da06acd`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 28 Feb 2018 05:55:18 GMT
COPY file:a60b02e0c487d865b58e418679698c1b0ce9e1b6630514eca924b2d1360e9122 in / 
# Wed, 28 Feb 2018 05:55:19 GMT
EXPOSE 80/tcp
# Wed, 28 Feb 2018 05:55:20 GMT
ENTRYPOINT ["/traefik"]
# Wed, 28 Feb 2018 05:55:20 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4867dc295a727f7ec46e18fae0096d175ebc69630cc6f5278b954475609f028d`  
		Last Modified: Wed, 28 Feb 2018 05:56:31 GMT  
		Size: 12.6 MB (12645927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.5.4`

**does not exist** (yet?)

## `traefik:1.5.4-alpine`

**does not exist** (yet?)

## `traefik:1.5-alpine`

```console
$ docker pull traefik@sha256:86cf91225ce172c33e1e1a365c581b3e9acc1dc0bb9acfb56af222861ed1cbdb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.5-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:86bb008c876629d2d91c9ae155634d373ec58faa1172823411a71658860051bb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.4 MB (16352590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74a524a9fe293719fb406a0a953913ebdc653562c0c130ffaa24e5fa54873b16`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 01:28:51 GMT
RUN apk --no-cache add ca-certificates
# Tue, 27 Feb 2018 21:49:21 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.5.3/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Tue, 27 Feb 2018 21:49:21 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Tue, 27 Feb 2018 21:49:21 GMT
EXPOSE 80/tcp
# Tue, 27 Feb 2018 21:49:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 27 Feb 2018 21:49:22 GMT
CMD ["traefik"]
# Tue, 27 Feb 2018 21:49:22 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.3 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:24bde664178def52dbcc07ccbba6f73b44f42b759b9817385b00b836d4417d54`  
		Last Modified: Tue, 27 Feb 2018 21:51:41 GMT  
		Size: 14.0 MB (14009512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a36196b5b02133e949a54625a696eb62ce0015adf54fd8999988161bc3aa62fc`  
		Last Modified: Tue, 27 Feb 2018 21:51:32 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.5-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:2eb2c7e4a3b332fb9b2c684b6d508c540115018db4f33a9909e587242501e669
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 MB (15471111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d46f6c45bfa5b129f93a41d02289dbba72cce6d65d1d4396fe07af0c7fe731e2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Mon, 26 Feb 2018 23:48:26 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Mon, 26 Feb 2018 23:48:27 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Mon, 26 Feb 2018 23:48:28 GMT
CMD ["/bin/sh"]
# Tue, 27 Feb 2018 18:02:37 GMT
RUN apk --no-cache add ca-certificates
# Wed, 28 Feb 2018 00:48:43 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.5.3/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 28 Feb 2018 00:48:43 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 28 Feb 2018 00:48:43 GMT
EXPOSE 80/tcp
# Wed, 28 Feb 2018 00:48:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 28 Feb 2018 00:48:44 GMT
CMD ["traefik"]
# Wed, 28 Feb 2018 00:48:44 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:448db471625a0828399cd99cb762a514458df032a36e5a23df975081ab87bc41`  
		Last Modified: Mon, 26 Feb 2018 23:49:11 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dacf7725132f7dfebb9d4f9956e103b93820ea07b89ac6b4676874f2ae3b9d9d`  
		Last Modified: Tue, 27 Feb 2018 18:02:53 GMT  
		Size: 352.2 KB (352159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78e28ce65f2607d2fe82143f846cc2ee9c317a12036beb489d1e4376055a4b33`  
		Last Modified: Wed, 28 Feb 2018 00:49:17 GMT  
		Size: 13.2 MB (13152446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e649c1179b9b25462175a6690c6d4cb354add50165ef29a13cfef1e884c90e38`  
		Last Modified: Wed, 28 Feb 2018 00:49:12 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.5-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:936174375ffd857c3ceb714e7baad3ffdf1ea725d84e3fd56fff16b76a279ed0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.1 MB (15079405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54f7dcbc24300cafc16dadec6a21d1bcb1edf01fb17ee65cdaa3e1f9547d6cb2`
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
# Wed, 28 Feb 2018 05:55:59 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.5.3/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 28 Feb 2018 05:56:00 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 28 Feb 2018 05:56:00 GMT
EXPOSE 80/tcp
# Wed, 28 Feb 2018 05:56:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 28 Feb 2018 05:56:02 GMT
CMD ["traefik"]
# Wed, 28 Feb 2018 05:56:02 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.3 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:a8106ce3023a3060823f4438adfcdca20c6b26fd95f55be1ab200a0841c9542c`  
		Last Modified: Wed, 28 Feb 2018 05:58:06 GMT  
		Size: 12.8 MB (12812646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b67841a44b9cb7f5abb8423926a170829f32f5f0e4911276b57cfa01ac4be411`  
		Last Modified: Wed, 28 Feb 2018 05:58:02 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:alpine`

```console
$ docker pull traefik@sha256:86cf91225ce172c33e1e1a365c581b3e9acc1dc0bb9acfb56af222861ed1cbdb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:alpine` - linux; amd64

```console
$ docker pull traefik@sha256:86bb008c876629d2d91c9ae155634d373ec58faa1172823411a71658860051bb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.4 MB (16352590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74a524a9fe293719fb406a0a953913ebdc653562c0c130ffaa24e5fa54873b16`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 01:28:51 GMT
RUN apk --no-cache add ca-certificates
# Tue, 27 Feb 2018 21:49:21 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.5.3/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Tue, 27 Feb 2018 21:49:21 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Tue, 27 Feb 2018 21:49:21 GMT
EXPOSE 80/tcp
# Tue, 27 Feb 2018 21:49:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 27 Feb 2018 21:49:22 GMT
CMD ["traefik"]
# Tue, 27 Feb 2018 21:49:22 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.3 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:24bde664178def52dbcc07ccbba6f73b44f42b759b9817385b00b836d4417d54`  
		Last Modified: Tue, 27 Feb 2018 21:51:41 GMT  
		Size: 14.0 MB (14009512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a36196b5b02133e949a54625a696eb62ce0015adf54fd8999988161bc3aa62fc`  
		Last Modified: Tue, 27 Feb 2018 21:51:32 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:2eb2c7e4a3b332fb9b2c684b6d508c540115018db4f33a9909e587242501e669
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 MB (15471111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d46f6c45bfa5b129f93a41d02289dbba72cce6d65d1d4396fe07af0c7fe731e2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Mon, 26 Feb 2018 23:48:26 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Mon, 26 Feb 2018 23:48:27 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Mon, 26 Feb 2018 23:48:28 GMT
CMD ["/bin/sh"]
# Tue, 27 Feb 2018 18:02:37 GMT
RUN apk --no-cache add ca-certificates
# Wed, 28 Feb 2018 00:48:43 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.5.3/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 28 Feb 2018 00:48:43 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 28 Feb 2018 00:48:43 GMT
EXPOSE 80/tcp
# Wed, 28 Feb 2018 00:48:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 28 Feb 2018 00:48:44 GMT
CMD ["traefik"]
# Wed, 28 Feb 2018 00:48:44 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:448db471625a0828399cd99cb762a514458df032a36e5a23df975081ab87bc41`  
		Last Modified: Mon, 26 Feb 2018 23:49:11 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dacf7725132f7dfebb9d4f9956e103b93820ea07b89ac6b4676874f2ae3b9d9d`  
		Last Modified: Tue, 27 Feb 2018 18:02:53 GMT  
		Size: 352.2 KB (352159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78e28ce65f2607d2fe82143f846cc2ee9c317a12036beb489d1e4376055a4b33`  
		Last Modified: Wed, 28 Feb 2018 00:49:17 GMT  
		Size: 13.2 MB (13152446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e649c1179b9b25462175a6690c6d4cb354add50165ef29a13cfef1e884c90e38`  
		Last Modified: Wed, 28 Feb 2018 00:49:12 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:936174375ffd857c3ceb714e7baad3ffdf1ea725d84e3fd56fff16b76a279ed0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.1 MB (15079405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54f7dcbc24300cafc16dadec6a21d1bcb1edf01fb17ee65cdaa3e1f9547d6cb2`
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
# Wed, 28 Feb 2018 05:55:59 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.5.3/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 28 Feb 2018 05:56:00 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 28 Feb 2018 05:56:00 GMT
EXPOSE 80/tcp
# Wed, 28 Feb 2018 05:56:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 28 Feb 2018 05:56:02 GMT
CMD ["traefik"]
# Wed, 28 Feb 2018 05:56:02 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.3 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:a8106ce3023a3060823f4438adfcdca20c6b26fd95f55be1ab200a0841c9542c`  
		Last Modified: Wed, 28 Feb 2018 05:58:06 GMT  
		Size: 12.8 MB (12812646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b67841a44b9cb7f5abb8423926a170829f32f5f0e4911276b57cfa01ac4be411`  
		Last Modified: Wed, 28 Feb 2018 05:58:02 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:cancoillotte`

```console
$ docker pull traefik@sha256:d277007b55a8a8d972b1983ef11387d05f719821a2d2e23e8fa06ac5081a302f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:cancoillotte` - linux; amd64

```console
$ docker pull traefik@sha256:d1264267935f35aa1070a840d24bfc6bb7f55efb49949589b049f82a4c5967f4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13997457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c72b944d56909f092c54c2b0804002f5501a61b7f4444e03574c0ff3455d657`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:11:40 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 27 Feb 2018 21:48:56 GMT
COPY file:68d00d06bb04655a18820cb006fa04b6914699d0fb4ebdc604e76ba2fed172ef in / 
# Tue, 27 Feb 2018 21:48:56 GMT
EXPOSE 80/tcp
# Tue, 27 Feb 2018 21:48:57 GMT
ENTRYPOINT ["/traefik"]
# Tue, 27 Feb 2018 21:48:57 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5d3835484afecc78dccfa2f7d4fcf273aacfe0c7600b957314e38488f3942045`  
		Last Modified: Fri, 03 Nov 2017 22:12:12 GMT  
		Size: 155.2 KB (155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0feefa6e9e49547c30d8edd85bbe6116ad1107ec138af7b22af9e087d759de0c`  
		Last Modified: Tue, 27 Feb 2018 21:49:57 GMT  
		Size: 13.8 MB (13842305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:cancoillotte` - linux; arm variant v6

```console
$ docker pull traefik@sha256:ab398c448e71c4fe535bb021c527e60da030922e32b6d2fac8d8a48405b0509c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13140069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d48bbcc02a1bd50c760114102f5d5acfe5d1facf15cda6bb1e043e73fc5e3af`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 28 Feb 2018 00:48:33 GMT
COPY file:19d293a9ca8720d9cb11b4ee11fdad11e91ad1c4f6a5629c361e8aca9d575636 in / 
# Wed, 28 Feb 2018 00:48:33 GMT
EXPOSE 80/tcp
# Wed, 28 Feb 2018 00:48:33 GMT
ENTRYPOINT ["/traefik"]
# Wed, 28 Feb 2018 00:48:33 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da32d827133bcf24a68e16b35206f11e65eec922478674597e3e13f3a254d8a2`  
		Last Modified: Wed, 28 Feb 2018 00:48:57 GMT  
		Size: 13.0 MB (12984885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:cancoillotte` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:456da62bf3f54f1a2da316a31e3ec4c997f19a7ec3a1a7fe058acf215479d9d7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.8 MB (12801078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:152080e23b3cebb1ebc4e615e127018166118ff4120d90a02832313d8da06acd`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 28 Feb 2018 05:55:18 GMT
COPY file:a60b02e0c487d865b58e418679698c1b0ce9e1b6630514eca924b2d1360e9122 in / 
# Wed, 28 Feb 2018 05:55:19 GMT
EXPOSE 80/tcp
# Wed, 28 Feb 2018 05:55:20 GMT
ENTRYPOINT ["/traefik"]
# Wed, 28 Feb 2018 05:55:20 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4867dc295a727f7ec46e18fae0096d175ebc69630cc6f5278b954475609f028d`  
		Last Modified: Wed, 28 Feb 2018 05:56:31 GMT  
		Size: 12.6 MB (12645927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:cancoillotte-alpine`

```console
$ docker pull traefik@sha256:86cf91225ce172c33e1e1a365c581b3e9acc1dc0bb9acfb56af222861ed1cbdb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:cancoillotte-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:86bb008c876629d2d91c9ae155634d373ec58faa1172823411a71658860051bb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.4 MB (16352590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74a524a9fe293719fb406a0a953913ebdc653562c0c130ffaa24e5fa54873b16`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 01:28:51 GMT
RUN apk --no-cache add ca-certificates
# Tue, 27 Feb 2018 21:49:21 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.5.3/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Tue, 27 Feb 2018 21:49:21 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Tue, 27 Feb 2018 21:49:21 GMT
EXPOSE 80/tcp
# Tue, 27 Feb 2018 21:49:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 27 Feb 2018 21:49:22 GMT
CMD ["traefik"]
# Tue, 27 Feb 2018 21:49:22 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.3 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:24bde664178def52dbcc07ccbba6f73b44f42b759b9817385b00b836d4417d54`  
		Last Modified: Tue, 27 Feb 2018 21:51:41 GMT  
		Size: 14.0 MB (14009512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a36196b5b02133e949a54625a696eb62ce0015adf54fd8999988161bc3aa62fc`  
		Last Modified: Tue, 27 Feb 2018 21:51:32 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:cancoillotte-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:2eb2c7e4a3b332fb9b2c684b6d508c540115018db4f33a9909e587242501e669
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 MB (15471111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d46f6c45bfa5b129f93a41d02289dbba72cce6d65d1d4396fe07af0c7fe731e2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Mon, 26 Feb 2018 23:48:26 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Mon, 26 Feb 2018 23:48:27 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Mon, 26 Feb 2018 23:48:28 GMT
CMD ["/bin/sh"]
# Tue, 27 Feb 2018 18:02:37 GMT
RUN apk --no-cache add ca-certificates
# Wed, 28 Feb 2018 00:48:43 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.5.3/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 28 Feb 2018 00:48:43 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 28 Feb 2018 00:48:43 GMT
EXPOSE 80/tcp
# Wed, 28 Feb 2018 00:48:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 28 Feb 2018 00:48:44 GMT
CMD ["traefik"]
# Wed, 28 Feb 2018 00:48:44 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:448db471625a0828399cd99cb762a514458df032a36e5a23df975081ab87bc41`  
		Last Modified: Mon, 26 Feb 2018 23:49:11 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dacf7725132f7dfebb9d4f9956e103b93820ea07b89ac6b4676874f2ae3b9d9d`  
		Last Modified: Tue, 27 Feb 2018 18:02:53 GMT  
		Size: 352.2 KB (352159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78e28ce65f2607d2fe82143f846cc2ee9c317a12036beb489d1e4376055a4b33`  
		Last Modified: Wed, 28 Feb 2018 00:49:17 GMT  
		Size: 13.2 MB (13152446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e649c1179b9b25462175a6690c6d4cb354add50165ef29a13cfef1e884c90e38`  
		Last Modified: Wed, 28 Feb 2018 00:49:12 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:cancoillotte-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:936174375ffd857c3ceb714e7baad3ffdf1ea725d84e3fd56fff16b76a279ed0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.1 MB (15079405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54f7dcbc24300cafc16dadec6a21d1bcb1edf01fb17ee65cdaa3e1f9547d6cb2`
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
# Wed, 28 Feb 2018 05:55:59 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.5.3/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 28 Feb 2018 05:56:00 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 28 Feb 2018 05:56:00 GMT
EXPOSE 80/tcp
# Wed, 28 Feb 2018 05:56:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 28 Feb 2018 05:56:02 GMT
CMD ["traefik"]
# Wed, 28 Feb 2018 05:56:02 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.3 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:a8106ce3023a3060823f4438adfcdca20c6b26fd95f55be1ab200a0841c9542c`  
		Last Modified: Wed, 28 Feb 2018 05:58:06 GMT  
		Size: 12.8 MB (12812646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b67841a44b9cb7f5abb8423926a170829f32f5f0e4911276b57cfa01ac4be411`  
		Last Modified: Wed, 28 Feb 2018 05:58:02 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:latest`

```console
$ docker pull traefik@sha256:d277007b55a8a8d972b1983ef11387d05f719821a2d2e23e8fa06ac5081a302f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:latest` - linux; amd64

```console
$ docker pull traefik@sha256:d1264267935f35aa1070a840d24bfc6bb7f55efb49949589b049f82a4c5967f4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13997457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c72b944d56909f092c54c2b0804002f5501a61b7f4444e03574c0ff3455d657`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:11:40 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 27 Feb 2018 21:48:56 GMT
COPY file:68d00d06bb04655a18820cb006fa04b6914699d0fb4ebdc604e76ba2fed172ef in / 
# Tue, 27 Feb 2018 21:48:56 GMT
EXPOSE 80/tcp
# Tue, 27 Feb 2018 21:48:57 GMT
ENTRYPOINT ["/traefik"]
# Tue, 27 Feb 2018 21:48:57 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5d3835484afecc78dccfa2f7d4fcf273aacfe0c7600b957314e38488f3942045`  
		Last Modified: Fri, 03 Nov 2017 22:12:12 GMT  
		Size: 155.2 KB (155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0feefa6e9e49547c30d8edd85bbe6116ad1107ec138af7b22af9e087d759de0c`  
		Last Modified: Tue, 27 Feb 2018 21:49:57 GMT  
		Size: 13.8 MB (13842305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:latest` - linux; arm variant v6

```console
$ docker pull traefik@sha256:ab398c448e71c4fe535bb021c527e60da030922e32b6d2fac8d8a48405b0509c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13140069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d48bbcc02a1bd50c760114102f5d5acfe5d1facf15cda6bb1e043e73fc5e3af`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 28 Feb 2018 00:48:33 GMT
COPY file:19d293a9ca8720d9cb11b4ee11fdad11e91ad1c4f6a5629c361e8aca9d575636 in / 
# Wed, 28 Feb 2018 00:48:33 GMT
EXPOSE 80/tcp
# Wed, 28 Feb 2018 00:48:33 GMT
ENTRYPOINT ["/traefik"]
# Wed, 28 Feb 2018 00:48:33 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da32d827133bcf24a68e16b35206f11e65eec922478674597e3e13f3a254d8a2`  
		Last Modified: Wed, 28 Feb 2018 00:48:57 GMT  
		Size: 13.0 MB (12984885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:latest` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:456da62bf3f54f1a2da316a31e3ec4c997f19a7ec3a1a7fe058acf215479d9d7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.8 MB (12801078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:152080e23b3cebb1ebc4e615e127018166118ff4120d90a02832313d8da06acd`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 28 Feb 2018 05:55:18 GMT
COPY file:a60b02e0c487d865b58e418679698c1b0ce9e1b6630514eca924b2d1360e9122 in / 
# Wed, 28 Feb 2018 05:55:19 GMT
EXPOSE 80/tcp
# Wed, 28 Feb 2018 05:55:20 GMT
ENTRYPOINT ["/traefik"]
# Wed, 28 Feb 2018 05:55:20 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4867dc295a727f7ec46e18fae0096d175ebc69630cc6f5278b954475609f028d`  
		Last Modified: Wed, 28 Feb 2018 05:56:31 GMT  
		Size: 12.6 MB (12645927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.5`

```console
$ docker pull traefik@sha256:d277007b55a8a8d972b1983ef11387d05f719821a2d2e23e8fa06ac5081a302f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.5` - linux; amd64

```console
$ docker pull traefik@sha256:d1264267935f35aa1070a840d24bfc6bb7f55efb49949589b049f82a4c5967f4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13997457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c72b944d56909f092c54c2b0804002f5501a61b7f4444e03574c0ff3455d657`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:11:40 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 27 Feb 2018 21:48:56 GMT
COPY file:68d00d06bb04655a18820cb006fa04b6914699d0fb4ebdc604e76ba2fed172ef in / 
# Tue, 27 Feb 2018 21:48:56 GMT
EXPOSE 80/tcp
# Tue, 27 Feb 2018 21:48:57 GMT
ENTRYPOINT ["/traefik"]
# Tue, 27 Feb 2018 21:48:57 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5d3835484afecc78dccfa2f7d4fcf273aacfe0c7600b957314e38488f3942045`  
		Last Modified: Fri, 03 Nov 2017 22:12:12 GMT  
		Size: 155.2 KB (155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0feefa6e9e49547c30d8edd85bbe6116ad1107ec138af7b22af9e087d759de0c`  
		Last Modified: Tue, 27 Feb 2018 21:49:57 GMT  
		Size: 13.8 MB (13842305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.5` - linux; arm variant v6

```console
$ docker pull traefik@sha256:ab398c448e71c4fe535bb021c527e60da030922e32b6d2fac8d8a48405b0509c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13140069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d48bbcc02a1bd50c760114102f5d5acfe5d1facf15cda6bb1e043e73fc5e3af`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 28 Feb 2018 00:48:33 GMT
COPY file:19d293a9ca8720d9cb11b4ee11fdad11e91ad1c4f6a5629c361e8aca9d575636 in / 
# Wed, 28 Feb 2018 00:48:33 GMT
EXPOSE 80/tcp
# Wed, 28 Feb 2018 00:48:33 GMT
ENTRYPOINT ["/traefik"]
# Wed, 28 Feb 2018 00:48:33 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da32d827133bcf24a68e16b35206f11e65eec922478674597e3e13f3a254d8a2`  
		Last Modified: Wed, 28 Feb 2018 00:48:57 GMT  
		Size: 13.0 MB (12984885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.5` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:456da62bf3f54f1a2da316a31e3ec4c997f19a7ec3a1a7fe058acf215479d9d7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.8 MB (12801078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:152080e23b3cebb1ebc4e615e127018166118ff4120d90a02832313d8da06acd`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 28 Feb 2018 05:55:18 GMT
COPY file:a60b02e0c487d865b58e418679698c1b0ce9e1b6630514eca924b2d1360e9122 in / 
# Wed, 28 Feb 2018 05:55:19 GMT
EXPOSE 80/tcp
# Wed, 28 Feb 2018 05:55:20 GMT
ENTRYPOINT ["/traefik"]
# Wed, 28 Feb 2018 05:55:20 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4867dc295a727f7ec46e18fae0096d175ebc69630cc6f5278b954475609f028d`  
		Last Modified: Wed, 28 Feb 2018 05:56:31 GMT  
		Size: 12.6 MB (12645927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.5.4`

**does not exist** (yet?)

## `traefik:v1.5.4-alpine`

**does not exist** (yet?)

## `traefik:v1.5-alpine`

```console
$ docker pull traefik@sha256:86cf91225ce172c33e1e1a365c581b3e9acc1dc0bb9acfb56af222861ed1cbdb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.5-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:86bb008c876629d2d91c9ae155634d373ec58faa1172823411a71658860051bb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.4 MB (16352590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74a524a9fe293719fb406a0a953913ebdc653562c0c130ffaa24e5fa54873b16`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 01:28:51 GMT
RUN apk --no-cache add ca-certificates
# Tue, 27 Feb 2018 21:49:21 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.5.3/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Tue, 27 Feb 2018 21:49:21 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Tue, 27 Feb 2018 21:49:21 GMT
EXPOSE 80/tcp
# Tue, 27 Feb 2018 21:49:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 27 Feb 2018 21:49:22 GMT
CMD ["traefik"]
# Tue, 27 Feb 2018 21:49:22 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.3 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:24bde664178def52dbcc07ccbba6f73b44f42b759b9817385b00b836d4417d54`  
		Last Modified: Tue, 27 Feb 2018 21:51:41 GMT  
		Size: 14.0 MB (14009512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a36196b5b02133e949a54625a696eb62ce0015adf54fd8999988161bc3aa62fc`  
		Last Modified: Tue, 27 Feb 2018 21:51:32 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.5-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:2eb2c7e4a3b332fb9b2c684b6d508c540115018db4f33a9909e587242501e669
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 MB (15471111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d46f6c45bfa5b129f93a41d02289dbba72cce6d65d1d4396fe07af0c7fe731e2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Mon, 26 Feb 2018 23:48:26 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Mon, 26 Feb 2018 23:48:27 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Mon, 26 Feb 2018 23:48:28 GMT
CMD ["/bin/sh"]
# Tue, 27 Feb 2018 18:02:37 GMT
RUN apk --no-cache add ca-certificates
# Wed, 28 Feb 2018 00:48:43 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.5.3/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 28 Feb 2018 00:48:43 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 28 Feb 2018 00:48:43 GMT
EXPOSE 80/tcp
# Wed, 28 Feb 2018 00:48:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 28 Feb 2018 00:48:44 GMT
CMD ["traefik"]
# Wed, 28 Feb 2018 00:48:44 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:448db471625a0828399cd99cb762a514458df032a36e5a23df975081ab87bc41`  
		Last Modified: Mon, 26 Feb 2018 23:49:11 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dacf7725132f7dfebb9d4f9956e103b93820ea07b89ac6b4676874f2ae3b9d9d`  
		Last Modified: Tue, 27 Feb 2018 18:02:53 GMT  
		Size: 352.2 KB (352159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78e28ce65f2607d2fe82143f846cc2ee9c317a12036beb489d1e4376055a4b33`  
		Last Modified: Wed, 28 Feb 2018 00:49:17 GMT  
		Size: 13.2 MB (13152446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e649c1179b9b25462175a6690c6d4cb354add50165ef29a13cfef1e884c90e38`  
		Last Modified: Wed, 28 Feb 2018 00:49:12 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.5-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:936174375ffd857c3ceb714e7baad3ffdf1ea725d84e3fd56fff16b76a279ed0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.1 MB (15079405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54f7dcbc24300cafc16dadec6a21d1bcb1edf01fb17ee65cdaa3e1f9547d6cb2`
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
# Wed, 28 Feb 2018 05:55:59 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.5.3/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 28 Feb 2018 05:56:00 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 28 Feb 2018 05:56:00 GMT
EXPOSE 80/tcp
# Wed, 28 Feb 2018 05:56:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 28 Feb 2018 05:56:02 GMT
CMD ["traefik"]
# Wed, 28 Feb 2018 05:56:02 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.3 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:a8106ce3023a3060823f4438adfcdca20c6b26fd95f55be1ab200a0841c9542c`  
		Last Modified: Wed, 28 Feb 2018 05:58:06 GMT  
		Size: 12.8 MB (12812646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b67841a44b9cb7f5abb8423926a170829f32f5f0e4911276b57cfa01ac4be411`  
		Last Modified: Wed, 28 Feb 2018 05:58:02 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
