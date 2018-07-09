<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `traefik`

-	[`traefik:1.6`](#traefik16)
-	[`traefik:1.6.4`](#traefik164)
-	[`traefik:1.6.4-alpine`](#traefik164-alpine)
-	[`traefik:1.6-alpine`](#traefik16-alpine)
-	[`traefik:1.7`](#traefik17)
-	[`traefik:1.7.0-rc1`](#traefik170-rc1)
-	[`traefik:1.7.0-rc1-alpine`](#traefik170-rc1-alpine)
-	[`traefik:1.7-alpine`](#traefik17-alpine)
-	[`traefik:alpine`](#traefikalpine)
-	[`traefik:latest`](#traefiklatest)
-	[`traefik:maroilles`](#traefikmaroilles)
-	[`traefik:maroilles-alpine`](#traefikmaroilles-alpine)
-	[`traefik:tetedemoine`](#traefiktetedemoine)
-	[`traefik:tetedemoine-alpine`](#traefiktetedemoine-alpine)
-	[`traefik:v1.6`](#traefikv16)
-	[`traefik:v1.6.4`](#traefikv164)
-	[`traefik:v1.6.4-alpine`](#traefikv164-alpine)
-	[`traefik:v1.6-alpine`](#traefikv16-alpine)
-	[`traefik:v1.7`](#traefikv17)
-	[`traefik:v1.7.0-rc1`](#traefikv170-rc1)
-	[`traefik:v1.7.0-rc1-alpine`](#traefikv170-rc1-alpine)
-	[`traefik:v1.7-alpine`](#traefikv17-alpine)

## `traefik:1.6`

```console
$ docker pull traefik@sha256:98d82a5fa9a27382de1666ecd385d32fdaa89266a8426b378b040c68c345bf85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.6` - linux; amd64

```console
$ docker pull traefik@sha256:36df85f84cb73e6eee07767eaad2b3b4ff3f0a9dcf5e9ca222f1f700cb4abc88
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.9 MB (14887623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec7c9759c1c81893df479d97dabf737c56fc5d59b0e82b6a1e680c98090e7e22`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 16 Jun 2018 06:01:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Sat, 16 Jun 2018 06:01:28 GMT
COPY file:cc15050a9f9bed5e01e1d60502355e8c53c60b7351addcabb0c0c482ea58c352 in / 
# Sat, 16 Jun 2018 06:01:28 GMT
EXPOSE 80/tcp
# Sat, 16 Jun 2018 06:01:28 GMT
ENTRYPOINT ["/traefik"]
# Sat, 16 Jun 2018 06:01:28 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:03732cc4924a93fcbcbed879c4c63aad534a63a64e9919eceddf48d7602407b5`  
		Last Modified: Sat, 16 Jun 2018 06:03:25 GMT  
		Size: 155.2 KB (155150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a29083ad5e13555380ebdebe336e07e77b9d5fd7586b1ff15c196001e119abb`  
		Last Modified: Sat, 16 Jun 2018 06:03:32 GMT  
		Size: 14.7 MB (14732473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.6` - linux; arm variant v6

```console
$ docker pull traefik@sha256:f98492734ef1d8f78cbcf2037c8b75be77b014496c637e2395a2eacbe91e25bb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14266482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2d21f7d36aea92b4ab0c33ee8506f92ceec15afc4205c7314f0b755f60169e5`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Sat, 16 Jun 2018 06:01:01 GMT
COPY file:b7d8e7ae8f95e17f07c4ee67298015eea26f5c348add4a1dd84b79d05fa3c56d in / 
# Sat, 16 Jun 2018 06:01:01 GMT
EXPOSE 80/tcp
# Sat, 16 Jun 2018 06:01:01 GMT
ENTRYPOINT ["/traefik"]
# Sat, 16 Jun 2018 06:01:01 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:580cc0ad5c9a597ca5731710e232eb1884d85b4b69f1617833ea864ab0ee7e04`  
		Last Modified: Sat, 16 Jun 2018 06:01:24 GMT  
		Size: 14.1 MB (14111298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.6` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:7221080406536c12abc08b7e38e4aebd811747696a10836feb4265d8b2830bc6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13973987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ed3bfa5f161e51e1f34597ff441714d65be566f7a51d71c9aaa399c11a391a5`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Sat, 16 Jun 2018 06:01:43 GMT
COPY file:46d58f267ebf1364fbc81466fabcf25ee0d52d83bf461871b66705e5f4cd9241 in / 
# Sat, 16 Jun 2018 06:01:44 GMT
EXPOSE 80/tcp
# Sat, 16 Jun 2018 06:01:45 GMT
ENTRYPOINT ["/traefik"]
# Sat, 16 Jun 2018 06:01:45 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:408ce2769f45475df85991eca2090edc80c73561db1ea10358a433ce745a0697`  
		Last Modified: Sat, 16 Jun 2018 06:02:36 GMT  
		Size: 13.8 MB (13818836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.6.4`

```console
$ docker pull traefik@sha256:98d82a5fa9a27382de1666ecd385d32fdaa89266a8426b378b040c68c345bf85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.6.4` - linux; amd64

```console
$ docker pull traefik@sha256:36df85f84cb73e6eee07767eaad2b3b4ff3f0a9dcf5e9ca222f1f700cb4abc88
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.9 MB (14887623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec7c9759c1c81893df479d97dabf737c56fc5d59b0e82b6a1e680c98090e7e22`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 16 Jun 2018 06:01:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Sat, 16 Jun 2018 06:01:28 GMT
COPY file:cc15050a9f9bed5e01e1d60502355e8c53c60b7351addcabb0c0c482ea58c352 in / 
# Sat, 16 Jun 2018 06:01:28 GMT
EXPOSE 80/tcp
# Sat, 16 Jun 2018 06:01:28 GMT
ENTRYPOINT ["/traefik"]
# Sat, 16 Jun 2018 06:01:28 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:03732cc4924a93fcbcbed879c4c63aad534a63a64e9919eceddf48d7602407b5`  
		Last Modified: Sat, 16 Jun 2018 06:03:25 GMT  
		Size: 155.2 KB (155150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a29083ad5e13555380ebdebe336e07e77b9d5fd7586b1ff15c196001e119abb`  
		Last Modified: Sat, 16 Jun 2018 06:03:32 GMT  
		Size: 14.7 MB (14732473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.6.4` - linux; arm variant v6

```console
$ docker pull traefik@sha256:f98492734ef1d8f78cbcf2037c8b75be77b014496c637e2395a2eacbe91e25bb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14266482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2d21f7d36aea92b4ab0c33ee8506f92ceec15afc4205c7314f0b755f60169e5`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Sat, 16 Jun 2018 06:01:01 GMT
COPY file:b7d8e7ae8f95e17f07c4ee67298015eea26f5c348add4a1dd84b79d05fa3c56d in / 
# Sat, 16 Jun 2018 06:01:01 GMT
EXPOSE 80/tcp
# Sat, 16 Jun 2018 06:01:01 GMT
ENTRYPOINT ["/traefik"]
# Sat, 16 Jun 2018 06:01:01 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:580cc0ad5c9a597ca5731710e232eb1884d85b4b69f1617833ea864ab0ee7e04`  
		Last Modified: Sat, 16 Jun 2018 06:01:24 GMT  
		Size: 14.1 MB (14111298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.6.4` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:7221080406536c12abc08b7e38e4aebd811747696a10836feb4265d8b2830bc6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13973987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ed3bfa5f161e51e1f34597ff441714d65be566f7a51d71c9aaa399c11a391a5`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Sat, 16 Jun 2018 06:01:43 GMT
COPY file:46d58f267ebf1364fbc81466fabcf25ee0d52d83bf461871b66705e5f4cd9241 in / 
# Sat, 16 Jun 2018 06:01:44 GMT
EXPOSE 80/tcp
# Sat, 16 Jun 2018 06:01:45 GMT
ENTRYPOINT ["/traefik"]
# Sat, 16 Jun 2018 06:01:45 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:408ce2769f45475df85991eca2090edc80c73561db1ea10358a433ce745a0697`  
		Last Modified: Sat, 16 Jun 2018 06:02:36 GMT  
		Size: 13.8 MB (13818836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.6.4-alpine`

```console
$ docker pull traefik@sha256:764e4548f24cdeb0e768df56ffe94e8aade16d94cd806637da669a7eeda2e9d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.6.4-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:d599e197f13b74764be88ce79dbeb8cab65501a87530d475e49da54477ad75d2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17266274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c639633adae6784b831617f6d5f686ded09ceca553c0ad12c1f7e31fd0ff0d56`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 18:46:58 GMT
RUN apk --no-cache add ca-certificates
# Fri, 06 Jul 2018 18:47:04 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Fri, 06 Jul 2018 18:47:11 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Fri, 06 Jul 2018 18:47:11 GMT
EXPOSE 80/tcp
# Fri, 06 Jul 2018 18:47:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 06 Jul 2018 18:47:11 GMT
CMD ["traefik"]
# Fri, 06 Jul 2018 18:47:12 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:a073c86ecf9e0f29180e80e9638d4c741970695851ea48247276c32c57e40282`  
		Last Modified: Fri, 06 Jul 2018 14:16:26 GMT  
		Size: 2.0 MB (2014658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0c55a74f9d93e30b92f7faffc5770afb8e8d803a8cf3e9e5a3c5a9482dc60a4`  
		Last Modified: Fri, 06 Jul 2018 18:47:37 GMT  
		Size: 351.3 KB (351276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce0972cb8d2c4731fe306e926854ae2a8de73653d89f1c3d19711a5f42994d3`  
		Last Modified: Fri, 06 Jul 2018 18:47:43 GMT  
		Size: 14.9 MB (14899999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a8f0aaf3480aef1eff572364e580e665624ce9a74a3c23cfbaecdeafb7ba3f0`  
		Last Modified: Fri, 06 Jul 2018 18:47:35 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.6.4-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:42b7511b3704a0238cf7fcc4c98e8444f1e705d55036cd73283b9e342d2ea33e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.6 MB (16598019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d57f94d9c963e675b1da4a9048f4a27060d1a92eff8280bcd2a0b0548647e94`
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
# Sat, 16 Jun 2018 06:01:09 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Sat, 16 Jun 2018 06:01:09 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Sat, 16 Jun 2018 06:01:09 GMT
EXPOSE 80/tcp
# Sat, 16 Jun 2018 06:01:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 16 Jun 2018 06:01:10 GMT
CMD ["traefik"]
# Sat, 16 Jun 2018 06:01:10 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:5695cf70559012cd99bd1e5d8fd73647896f745f674b3bbe5b0a0ffcc8c1498a`  
		Last Modified: Sat, 16 Jun 2018 06:01:42 GMT  
		Size: 14.3 MB (14279368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6cb533e9248876d72547f3c78c5571d938a4b9c3b41db4a0f88fcb05084827f`  
		Last Modified: Sat, 16 Jun 2018 06:01:37 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.6.4-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:139bcfa6bbf99646884ec168648797ad0d2bec57375a1f67bc6e032db641aa72
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.3 MB (16253468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01662d9728840df0fb307c64ea38369514e51933fccf4517b26f6959e0025583`
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
# Sat, 16 Jun 2018 06:02:10 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Sat, 16 Jun 2018 06:02:12 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Sat, 16 Jun 2018 06:02:12 GMT
EXPOSE 80/tcp
# Sat, 16 Jun 2018 06:02:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 16 Jun 2018 06:02:13 GMT
CMD ["traefik"]
# Sat, 16 Jun 2018 06:02:14 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:eacb3f270326d1ba5a269a1ea0adf076e6bbb60d74a7856d0839885130842be2`  
		Last Modified: Sat, 16 Jun 2018 06:03:25 GMT  
		Size: 14.0 MB (13986711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60c86ae8cc7faa9a20f172422a4b5efbd6e6a3375f987615f36a22bad11073f0`  
		Last Modified: Sat, 16 Jun 2018 06:03:19 GMT  
		Size: 339.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.6-alpine`

```console
$ docker pull traefik@sha256:764e4548f24cdeb0e768df56ffe94e8aade16d94cd806637da669a7eeda2e9d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.6-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:d599e197f13b74764be88ce79dbeb8cab65501a87530d475e49da54477ad75d2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17266274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c639633adae6784b831617f6d5f686ded09ceca553c0ad12c1f7e31fd0ff0d56`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 18:46:58 GMT
RUN apk --no-cache add ca-certificates
# Fri, 06 Jul 2018 18:47:04 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Fri, 06 Jul 2018 18:47:11 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Fri, 06 Jul 2018 18:47:11 GMT
EXPOSE 80/tcp
# Fri, 06 Jul 2018 18:47:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 06 Jul 2018 18:47:11 GMT
CMD ["traefik"]
# Fri, 06 Jul 2018 18:47:12 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:a073c86ecf9e0f29180e80e9638d4c741970695851ea48247276c32c57e40282`  
		Last Modified: Fri, 06 Jul 2018 14:16:26 GMT  
		Size: 2.0 MB (2014658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0c55a74f9d93e30b92f7faffc5770afb8e8d803a8cf3e9e5a3c5a9482dc60a4`  
		Last Modified: Fri, 06 Jul 2018 18:47:37 GMT  
		Size: 351.3 KB (351276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce0972cb8d2c4731fe306e926854ae2a8de73653d89f1c3d19711a5f42994d3`  
		Last Modified: Fri, 06 Jul 2018 18:47:43 GMT  
		Size: 14.9 MB (14899999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a8f0aaf3480aef1eff572364e580e665624ce9a74a3c23cfbaecdeafb7ba3f0`  
		Last Modified: Fri, 06 Jul 2018 18:47:35 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.6-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:42b7511b3704a0238cf7fcc4c98e8444f1e705d55036cd73283b9e342d2ea33e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.6 MB (16598019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d57f94d9c963e675b1da4a9048f4a27060d1a92eff8280bcd2a0b0548647e94`
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
# Sat, 16 Jun 2018 06:01:09 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Sat, 16 Jun 2018 06:01:09 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Sat, 16 Jun 2018 06:01:09 GMT
EXPOSE 80/tcp
# Sat, 16 Jun 2018 06:01:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 16 Jun 2018 06:01:10 GMT
CMD ["traefik"]
# Sat, 16 Jun 2018 06:01:10 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:5695cf70559012cd99bd1e5d8fd73647896f745f674b3bbe5b0a0ffcc8c1498a`  
		Last Modified: Sat, 16 Jun 2018 06:01:42 GMT  
		Size: 14.3 MB (14279368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6cb533e9248876d72547f3c78c5571d938a4b9c3b41db4a0f88fcb05084827f`  
		Last Modified: Sat, 16 Jun 2018 06:01:37 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.6-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:139bcfa6bbf99646884ec168648797ad0d2bec57375a1f67bc6e032db641aa72
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.3 MB (16253468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01662d9728840df0fb307c64ea38369514e51933fccf4517b26f6959e0025583`
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
# Sat, 16 Jun 2018 06:02:10 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Sat, 16 Jun 2018 06:02:12 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Sat, 16 Jun 2018 06:02:12 GMT
EXPOSE 80/tcp
# Sat, 16 Jun 2018 06:02:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 16 Jun 2018 06:02:13 GMT
CMD ["traefik"]
# Sat, 16 Jun 2018 06:02:14 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:eacb3f270326d1ba5a269a1ea0adf076e6bbb60d74a7856d0839885130842be2`  
		Last Modified: Sat, 16 Jun 2018 06:03:25 GMT  
		Size: 14.0 MB (13986711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60c86ae8cc7faa9a20f172422a4b5efbd6e6a3375f987615f36a22bad11073f0`  
		Last Modified: Sat, 16 Jun 2018 06:03:19 GMT  
		Size: 339.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7`

```console
$ docker pull traefik@sha256:96fdda85a7d2b78f4e18b125766f6618e5db518c995dfe951ec116e9f0f5ae62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.7` - linux; amd64

```console
$ docker pull traefik@sha256:691d7e42caa2acd9a5d345b184d520cb2c123c68cd305431cd3a05212a4a1712
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.1 MB (16065760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee9981468308bf3b226f09eb995b4cf7ccedbd95428fbef5ead93bbf68dd9dc3`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 16 Jun 2018 06:01:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Mon, 09 Jul 2018 20:27:44 GMT
COPY file:9b1408023ea2f3c134a52dd09288e3085e202068adee702a21097b1e2c671bc1 in / 
# Mon, 09 Jul 2018 20:27:44 GMT
EXPOSE 80/tcp
# Mon, 09 Jul 2018 20:27:44 GMT
ENTRYPOINT ["/traefik"]
# Mon, 09 Jul 2018 20:27:45 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:03732cc4924a93fcbcbed879c4c63aad534a63a64e9919eceddf48d7602407b5`  
		Last Modified: Sat, 16 Jun 2018 06:03:25 GMT  
		Size: 155.2 KB (155150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:352e40814c4f731dcedbdf25bcc7b0b556525c9dc46bacc8025bf0b78a827c33`  
		Last Modified: Mon, 09 Jul 2018 20:28:55 GMT  
		Size: 15.9 MB (15910610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7` - linux; arm variant v6

```console
$ docker pull traefik@sha256:ca85f5babca632760c09136c283548495d096c2639115e8ce0ee39aa17f657e5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 MB (15409504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba5fe7a70388ecbb3fa583491d2f63cded6198202bfce2bf648ee05306d9746a`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Mon, 09 Jul 2018 21:43:24 GMT
COPY file:71383cd05a0ee9f71305cbd667ce6edac2a194ce64677a0e8ef68097fcd9e181 in / 
# Mon, 09 Jul 2018 21:43:24 GMT
EXPOSE 80/tcp
# Mon, 09 Jul 2018 21:43:24 GMT
ENTRYPOINT ["/traefik"]
# Mon, 09 Jul 2018 21:43:25 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c020c7b945f84af3e2a57af6da04a9806271c79777608b36bdc669f29bde271`  
		Last Modified: Mon, 09 Jul 2018 21:43:57 GMT  
		Size: 15.3 MB (15254320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:6ae45c41cc0f5701b52764e90a2e6017610e9ecf20eef007136fd8ba174c353d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.1 MB (15122453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28e2ae6097c86cec25a16d622b23f17fef6d87fc3c6cb104b746c17e5758a633`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Mon, 09 Jul 2018 21:43:06 GMT
COPY file:a74582378f872557ea509f8729ef17eeffee5ba69e9cb72544e48bf011e9f1ab in / 
# Mon, 09 Jul 2018 21:43:07 GMT
EXPOSE 80/tcp
# Mon, 09 Jul 2018 21:43:08 GMT
ENTRYPOINT ["/traefik"]
# Mon, 09 Jul 2018 21:43:08 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc33a79bee9249a4f3e4c16ec38b1b5bed8835b2b59902697f16b4908f9a0fa`  
		Last Modified: Mon, 09 Jul 2018 21:44:19 GMT  
		Size: 15.0 MB (14967302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7.0-rc1`

```console
$ docker pull traefik@sha256:96fdda85a7d2b78f4e18b125766f6618e5db518c995dfe951ec116e9f0f5ae62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.7.0-rc1` - linux; amd64

```console
$ docker pull traefik@sha256:691d7e42caa2acd9a5d345b184d520cb2c123c68cd305431cd3a05212a4a1712
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.1 MB (16065760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee9981468308bf3b226f09eb995b4cf7ccedbd95428fbef5ead93bbf68dd9dc3`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 16 Jun 2018 06:01:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Mon, 09 Jul 2018 20:27:44 GMT
COPY file:9b1408023ea2f3c134a52dd09288e3085e202068adee702a21097b1e2c671bc1 in / 
# Mon, 09 Jul 2018 20:27:44 GMT
EXPOSE 80/tcp
# Mon, 09 Jul 2018 20:27:44 GMT
ENTRYPOINT ["/traefik"]
# Mon, 09 Jul 2018 20:27:45 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:03732cc4924a93fcbcbed879c4c63aad534a63a64e9919eceddf48d7602407b5`  
		Last Modified: Sat, 16 Jun 2018 06:03:25 GMT  
		Size: 155.2 KB (155150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:352e40814c4f731dcedbdf25bcc7b0b556525c9dc46bacc8025bf0b78a827c33`  
		Last Modified: Mon, 09 Jul 2018 20:28:55 GMT  
		Size: 15.9 MB (15910610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7.0-rc1` - linux; arm variant v6

```console
$ docker pull traefik@sha256:ca85f5babca632760c09136c283548495d096c2639115e8ce0ee39aa17f657e5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 MB (15409504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba5fe7a70388ecbb3fa583491d2f63cded6198202bfce2bf648ee05306d9746a`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Mon, 09 Jul 2018 21:43:24 GMT
COPY file:71383cd05a0ee9f71305cbd667ce6edac2a194ce64677a0e8ef68097fcd9e181 in / 
# Mon, 09 Jul 2018 21:43:24 GMT
EXPOSE 80/tcp
# Mon, 09 Jul 2018 21:43:24 GMT
ENTRYPOINT ["/traefik"]
# Mon, 09 Jul 2018 21:43:25 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c020c7b945f84af3e2a57af6da04a9806271c79777608b36bdc669f29bde271`  
		Last Modified: Mon, 09 Jul 2018 21:43:57 GMT  
		Size: 15.3 MB (15254320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7.0-rc1` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:6ae45c41cc0f5701b52764e90a2e6017610e9ecf20eef007136fd8ba174c353d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.1 MB (15122453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28e2ae6097c86cec25a16d622b23f17fef6d87fc3c6cb104b746c17e5758a633`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Mon, 09 Jul 2018 21:43:06 GMT
COPY file:a74582378f872557ea509f8729ef17eeffee5ba69e9cb72544e48bf011e9f1ab in / 
# Mon, 09 Jul 2018 21:43:07 GMT
EXPOSE 80/tcp
# Mon, 09 Jul 2018 21:43:08 GMT
ENTRYPOINT ["/traefik"]
# Mon, 09 Jul 2018 21:43:08 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc33a79bee9249a4f3e4c16ec38b1b5bed8835b2b59902697f16b4908f9a0fa`  
		Last Modified: Mon, 09 Jul 2018 21:44:19 GMT  
		Size: 15.0 MB (14967302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7.0-rc1-alpine`

```console
$ docker pull traefik@sha256:cbac47693857e231e51a5e9045ccddc179a3093bb066c695aaa01aa28edc832f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.7.0-rc1-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:009e64dd6326f25842c6ec5b66ccbda4969be918994c10f78d8aba256fe04e31
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.4 MB (18442322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73305e7fac9450028da3f0dde36ab29e7e116aaa63abd3cc06cb1b6cae198ebe`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 18:46:58 GMT
RUN apk --no-cache add ca-certificates
# Mon, 09 Jul 2018 20:28:15 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0-rc1/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Mon, 09 Jul 2018 20:28:15 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Mon, 09 Jul 2018 20:28:16 GMT
EXPOSE 80/tcp
# Mon, 09 Jul 2018 20:28:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 09 Jul 2018 20:28:16 GMT
CMD ["traefik"]
# Mon, 09 Jul 2018 20:28:16 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:a073c86ecf9e0f29180e80e9638d4c741970695851ea48247276c32c57e40282`  
		Last Modified: Fri, 06 Jul 2018 14:16:26 GMT  
		Size: 2.0 MB (2014658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0c55a74f9d93e30b92f7faffc5770afb8e8d803a8cf3e9e5a3c5a9482dc60a4`  
		Last Modified: Fri, 06 Jul 2018 18:47:37 GMT  
		Size: 351.3 KB (351276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:599120177877a275d6f34fb50be2fccf0d85dbb352ceb855f6d52345cd87a938`  
		Last Modified: Mon, 09 Jul 2018 20:30:22 GMT  
		Size: 16.1 MB (16076047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9412cad0b6d95728b8e02ed2271b2dee5a0a894d369f3b7cc7d91499b4ad174f`  
		Last Modified: Mon, 09 Jul 2018 20:30:15 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7.0-rc1-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:1c0480561f232f0d3f95fce1c36de27fa9e24d64419e2d5afe7b8acb354b5bda
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.7 MB (17741606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c173bb27a5d1eedbe59b9331a154cdc385b3903a0e51812e9edabbe96e787c5`
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
# Mon, 09 Jul 2018 21:43:32 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0-rc1/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Mon, 09 Jul 2018 21:43:33 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Mon, 09 Jul 2018 21:43:33 GMT
EXPOSE 80/tcp
# Mon, 09 Jul 2018 21:43:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 09 Jul 2018 21:43:33 GMT
CMD ["traefik"]
# Mon, 09 Jul 2018 21:43:33 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc1 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:d53addaafe9a7fb23c31f6c63884eba60f7387a721b24a82ad5a72e1b7780fa2`  
		Last Modified: Mon, 09 Jul 2018 21:44:16 GMT  
		Size: 15.4 MB (15422954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bd96e5b7cb5c67582722eced79c2383b44f3a9b8704d491e7e0e4db96789cff`  
		Last Modified: Mon, 09 Jul 2018 21:44:11 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7.0-rc1-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:ef1fea30cc70b7d60fcf0999cd8d2e5df8cf9af688b3fd97484100779a4af73b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.4 MB (17403317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26144c664e438248fd4335f0912095cfaf48e907e941159e3703f769bd841083`
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
# Mon, 09 Jul 2018 21:43:34 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0-rc1/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Mon, 09 Jul 2018 21:43:35 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Mon, 09 Jul 2018 21:43:36 GMT
EXPOSE 80/tcp
# Mon, 09 Jul 2018 21:43:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 09 Jul 2018 21:43:37 GMT
CMD ["traefik"]
# Mon, 09 Jul 2018 21:43:38 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc1 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:b875e1f3a2418fa40b21cfc0cbe2daf150fb2cc4bbc343b3fcb1d4437503df49`  
		Last Modified: Mon, 09 Jul 2018 21:45:31 GMT  
		Size: 15.1 MB (15136560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:789c888fb76a49649f18e42ab7bada1edecd6038e2aac3eeb6e3bf06656c4820`  
		Last Modified: Mon, 09 Jul 2018 21:45:24 GMT  
		Size: 339.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7-alpine`

```console
$ docker pull traefik@sha256:cbac47693857e231e51a5e9045ccddc179a3093bb066c695aaa01aa28edc832f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.7-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:009e64dd6326f25842c6ec5b66ccbda4969be918994c10f78d8aba256fe04e31
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.4 MB (18442322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73305e7fac9450028da3f0dde36ab29e7e116aaa63abd3cc06cb1b6cae198ebe`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 18:46:58 GMT
RUN apk --no-cache add ca-certificates
# Mon, 09 Jul 2018 20:28:15 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0-rc1/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Mon, 09 Jul 2018 20:28:15 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Mon, 09 Jul 2018 20:28:16 GMT
EXPOSE 80/tcp
# Mon, 09 Jul 2018 20:28:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 09 Jul 2018 20:28:16 GMT
CMD ["traefik"]
# Mon, 09 Jul 2018 20:28:16 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:a073c86ecf9e0f29180e80e9638d4c741970695851ea48247276c32c57e40282`  
		Last Modified: Fri, 06 Jul 2018 14:16:26 GMT  
		Size: 2.0 MB (2014658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0c55a74f9d93e30b92f7faffc5770afb8e8d803a8cf3e9e5a3c5a9482dc60a4`  
		Last Modified: Fri, 06 Jul 2018 18:47:37 GMT  
		Size: 351.3 KB (351276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:599120177877a275d6f34fb50be2fccf0d85dbb352ceb855f6d52345cd87a938`  
		Last Modified: Mon, 09 Jul 2018 20:30:22 GMT  
		Size: 16.1 MB (16076047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9412cad0b6d95728b8e02ed2271b2dee5a0a894d369f3b7cc7d91499b4ad174f`  
		Last Modified: Mon, 09 Jul 2018 20:30:15 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:1c0480561f232f0d3f95fce1c36de27fa9e24d64419e2d5afe7b8acb354b5bda
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.7 MB (17741606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c173bb27a5d1eedbe59b9331a154cdc385b3903a0e51812e9edabbe96e787c5`
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
# Mon, 09 Jul 2018 21:43:32 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0-rc1/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Mon, 09 Jul 2018 21:43:33 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Mon, 09 Jul 2018 21:43:33 GMT
EXPOSE 80/tcp
# Mon, 09 Jul 2018 21:43:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 09 Jul 2018 21:43:33 GMT
CMD ["traefik"]
# Mon, 09 Jul 2018 21:43:33 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc1 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:d53addaafe9a7fb23c31f6c63884eba60f7387a721b24a82ad5a72e1b7780fa2`  
		Last Modified: Mon, 09 Jul 2018 21:44:16 GMT  
		Size: 15.4 MB (15422954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bd96e5b7cb5c67582722eced79c2383b44f3a9b8704d491e7e0e4db96789cff`  
		Last Modified: Mon, 09 Jul 2018 21:44:11 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:ef1fea30cc70b7d60fcf0999cd8d2e5df8cf9af688b3fd97484100779a4af73b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.4 MB (17403317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26144c664e438248fd4335f0912095cfaf48e907e941159e3703f769bd841083`
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
# Mon, 09 Jul 2018 21:43:34 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0-rc1/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Mon, 09 Jul 2018 21:43:35 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Mon, 09 Jul 2018 21:43:36 GMT
EXPOSE 80/tcp
# Mon, 09 Jul 2018 21:43:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 09 Jul 2018 21:43:37 GMT
CMD ["traefik"]
# Mon, 09 Jul 2018 21:43:38 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc1 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:b875e1f3a2418fa40b21cfc0cbe2daf150fb2cc4bbc343b3fcb1d4437503df49`  
		Last Modified: Mon, 09 Jul 2018 21:45:31 GMT  
		Size: 15.1 MB (15136560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:789c888fb76a49649f18e42ab7bada1edecd6038e2aac3eeb6e3bf06656c4820`  
		Last Modified: Mon, 09 Jul 2018 21:45:24 GMT  
		Size: 339.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:alpine`

```console
$ docker pull traefik@sha256:764e4548f24cdeb0e768df56ffe94e8aade16d94cd806637da669a7eeda2e9d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:alpine` - linux; amd64

```console
$ docker pull traefik@sha256:d599e197f13b74764be88ce79dbeb8cab65501a87530d475e49da54477ad75d2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17266274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c639633adae6784b831617f6d5f686ded09ceca553c0ad12c1f7e31fd0ff0d56`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 18:46:58 GMT
RUN apk --no-cache add ca-certificates
# Fri, 06 Jul 2018 18:47:04 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Fri, 06 Jul 2018 18:47:11 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Fri, 06 Jul 2018 18:47:11 GMT
EXPOSE 80/tcp
# Fri, 06 Jul 2018 18:47:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 06 Jul 2018 18:47:11 GMT
CMD ["traefik"]
# Fri, 06 Jul 2018 18:47:12 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:a073c86ecf9e0f29180e80e9638d4c741970695851ea48247276c32c57e40282`  
		Last Modified: Fri, 06 Jul 2018 14:16:26 GMT  
		Size: 2.0 MB (2014658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0c55a74f9d93e30b92f7faffc5770afb8e8d803a8cf3e9e5a3c5a9482dc60a4`  
		Last Modified: Fri, 06 Jul 2018 18:47:37 GMT  
		Size: 351.3 KB (351276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce0972cb8d2c4731fe306e926854ae2a8de73653d89f1c3d19711a5f42994d3`  
		Last Modified: Fri, 06 Jul 2018 18:47:43 GMT  
		Size: 14.9 MB (14899999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a8f0aaf3480aef1eff572364e580e665624ce9a74a3c23cfbaecdeafb7ba3f0`  
		Last Modified: Fri, 06 Jul 2018 18:47:35 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:42b7511b3704a0238cf7fcc4c98e8444f1e705d55036cd73283b9e342d2ea33e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.6 MB (16598019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d57f94d9c963e675b1da4a9048f4a27060d1a92eff8280bcd2a0b0548647e94`
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
# Sat, 16 Jun 2018 06:01:09 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Sat, 16 Jun 2018 06:01:09 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Sat, 16 Jun 2018 06:01:09 GMT
EXPOSE 80/tcp
# Sat, 16 Jun 2018 06:01:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 16 Jun 2018 06:01:10 GMT
CMD ["traefik"]
# Sat, 16 Jun 2018 06:01:10 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:5695cf70559012cd99bd1e5d8fd73647896f745f674b3bbe5b0a0ffcc8c1498a`  
		Last Modified: Sat, 16 Jun 2018 06:01:42 GMT  
		Size: 14.3 MB (14279368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6cb533e9248876d72547f3c78c5571d938a4b9c3b41db4a0f88fcb05084827f`  
		Last Modified: Sat, 16 Jun 2018 06:01:37 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:139bcfa6bbf99646884ec168648797ad0d2bec57375a1f67bc6e032db641aa72
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.3 MB (16253468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01662d9728840df0fb307c64ea38369514e51933fccf4517b26f6959e0025583`
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
# Sat, 16 Jun 2018 06:02:10 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Sat, 16 Jun 2018 06:02:12 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Sat, 16 Jun 2018 06:02:12 GMT
EXPOSE 80/tcp
# Sat, 16 Jun 2018 06:02:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 16 Jun 2018 06:02:13 GMT
CMD ["traefik"]
# Sat, 16 Jun 2018 06:02:14 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:eacb3f270326d1ba5a269a1ea0adf076e6bbb60d74a7856d0839885130842be2`  
		Last Modified: Sat, 16 Jun 2018 06:03:25 GMT  
		Size: 14.0 MB (13986711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60c86ae8cc7faa9a20f172422a4b5efbd6e6a3375f987615f36a22bad11073f0`  
		Last Modified: Sat, 16 Jun 2018 06:03:19 GMT  
		Size: 339.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:latest`

```console
$ docker pull traefik@sha256:98d82a5fa9a27382de1666ecd385d32fdaa89266a8426b378b040c68c345bf85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:latest` - linux; amd64

```console
$ docker pull traefik@sha256:36df85f84cb73e6eee07767eaad2b3b4ff3f0a9dcf5e9ca222f1f700cb4abc88
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.9 MB (14887623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec7c9759c1c81893df479d97dabf737c56fc5d59b0e82b6a1e680c98090e7e22`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 16 Jun 2018 06:01:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Sat, 16 Jun 2018 06:01:28 GMT
COPY file:cc15050a9f9bed5e01e1d60502355e8c53c60b7351addcabb0c0c482ea58c352 in / 
# Sat, 16 Jun 2018 06:01:28 GMT
EXPOSE 80/tcp
# Sat, 16 Jun 2018 06:01:28 GMT
ENTRYPOINT ["/traefik"]
# Sat, 16 Jun 2018 06:01:28 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:03732cc4924a93fcbcbed879c4c63aad534a63a64e9919eceddf48d7602407b5`  
		Last Modified: Sat, 16 Jun 2018 06:03:25 GMT  
		Size: 155.2 KB (155150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a29083ad5e13555380ebdebe336e07e77b9d5fd7586b1ff15c196001e119abb`  
		Last Modified: Sat, 16 Jun 2018 06:03:32 GMT  
		Size: 14.7 MB (14732473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:latest` - linux; arm variant v6

```console
$ docker pull traefik@sha256:f98492734ef1d8f78cbcf2037c8b75be77b014496c637e2395a2eacbe91e25bb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14266482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2d21f7d36aea92b4ab0c33ee8506f92ceec15afc4205c7314f0b755f60169e5`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Sat, 16 Jun 2018 06:01:01 GMT
COPY file:b7d8e7ae8f95e17f07c4ee67298015eea26f5c348add4a1dd84b79d05fa3c56d in / 
# Sat, 16 Jun 2018 06:01:01 GMT
EXPOSE 80/tcp
# Sat, 16 Jun 2018 06:01:01 GMT
ENTRYPOINT ["/traefik"]
# Sat, 16 Jun 2018 06:01:01 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:580cc0ad5c9a597ca5731710e232eb1884d85b4b69f1617833ea864ab0ee7e04`  
		Last Modified: Sat, 16 Jun 2018 06:01:24 GMT  
		Size: 14.1 MB (14111298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:latest` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:7221080406536c12abc08b7e38e4aebd811747696a10836feb4265d8b2830bc6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13973987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ed3bfa5f161e51e1f34597ff441714d65be566f7a51d71c9aaa399c11a391a5`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Sat, 16 Jun 2018 06:01:43 GMT
COPY file:46d58f267ebf1364fbc81466fabcf25ee0d52d83bf461871b66705e5f4cd9241 in / 
# Sat, 16 Jun 2018 06:01:44 GMT
EXPOSE 80/tcp
# Sat, 16 Jun 2018 06:01:45 GMT
ENTRYPOINT ["/traefik"]
# Sat, 16 Jun 2018 06:01:45 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:408ce2769f45475df85991eca2090edc80c73561db1ea10358a433ce745a0697`  
		Last Modified: Sat, 16 Jun 2018 06:02:36 GMT  
		Size: 13.8 MB (13818836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:maroilles`

```console
$ docker pull traefik@sha256:96fdda85a7d2b78f4e18b125766f6618e5db518c995dfe951ec116e9f0f5ae62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:maroilles` - linux; amd64

```console
$ docker pull traefik@sha256:691d7e42caa2acd9a5d345b184d520cb2c123c68cd305431cd3a05212a4a1712
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.1 MB (16065760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee9981468308bf3b226f09eb995b4cf7ccedbd95428fbef5ead93bbf68dd9dc3`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 16 Jun 2018 06:01:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Mon, 09 Jul 2018 20:27:44 GMT
COPY file:9b1408023ea2f3c134a52dd09288e3085e202068adee702a21097b1e2c671bc1 in / 
# Mon, 09 Jul 2018 20:27:44 GMT
EXPOSE 80/tcp
# Mon, 09 Jul 2018 20:27:44 GMT
ENTRYPOINT ["/traefik"]
# Mon, 09 Jul 2018 20:27:45 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:03732cc4924a93fcbcbed879c4c63aad534a63a64e9919eceddf48d7602407b5`  
		Last Modified: Sat, 16 Jun 2018 06:03:25 GMT  
		Size: 155.2 KB (155150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:352e40814c4f731dcedbdf25bcc7b0b556525c9dc46bacc8025bf0b78a827c33`  
		Last Modified: Mon, 09 Jul 2018 20:28:55 GMT  
		Size: 15.9 MB (15910610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:maroilles` - linux; arm variant v6

```console
$ docker pull traefik@sha256:ca85f5babca632760c09136c283548495d096c2639115e8ce0ee39aa17f657e5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 MB (15409504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba5fe7a70388ecbb3fa583491d2f63cded6198202bfce2bf648ee05306d9746a`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Mon, 09 Jul 2018 21:43:24 GMT
COPY file:71383cd05a0ee9f71305cbd667ce6edac2a194ce64677a0e8ef68097fcd9e181 in / 
# Mon, 09 Jul 2018 21:43:24 GMT
EXPOSE 80/tcp
# Mon, 09 Jul 2018 21:43:24 GMT
ENTRYPOINT ["/traefik"]
# Mon, 09 Jul 2018 21:43:25 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c020c7b945f84af3e2a57af6da04a9806271c79777608b36bdc669f29bde271`  
		Last Modified: Mon, 09 Jul 2018 21:43:57 GMT  
		Size: 15.3 MB (15254320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:maroilles` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:6ae45c41cc0f5701b52764e90a2e6017610e9ecf20eef007136fd8ba174c353d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.1 MB (15122453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28e2ae6097c86cec25a16d622b23f17fef6d87fc3c6cb104b746c17e5758a633`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Mon, 09 Jul 2018 21:43:06 GMT
COPY file:a74582378f872557ea509f8729ef17eeffee5ba69e9cb72544e48bf011e9f1ab in / 
# Mon, 09 Jul 2018 21:43:07 GMT
EXPOSE 80/tcp
# Mon, 09 Jul 2018 21:43:08 GMT
ENTRYPOINT ["/traefik"]
# Mon, 09 Jul 2018 21:43:08 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc33a79bee9249a4f3e4c16ec38b1b5bed8835b2b59902697f16b4908f9a0fa`  
		Last Modified: Mon, 09 Jul 2018 21:44:19 GMT  
		Size: 15.0 MB (14967302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:maroilles-alpine`

```console
$ docker pull traefik@sha256:cbac47693857e231e51a5e9045ccddc179a3093bb066c695aaa01aa28edc832f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:maroilles-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:009e64dd6326f25842c6ec5b66ccbda4969be918994c10f78d8aba256fe04e31
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.4 MB (18442322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73305e7fac9450028da3f0dde36ab29e7e116aaa63abd3cc06cb1b6cae198ebe`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 18:46:58 GMT
RUN apk --no-cache add ca-certificates
# Mon, 09 Jul 2018 20:28:15 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0-rc1/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Mon, 09 Jul 2018 20:28:15 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Mon, 09 Jul 2018 20:28:16 GMT
EXPOSE 80/tcp
# Mon, 09 Jul 2018 20:28:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 09 Jul 2018 20:28:16 GMT
CMD ["traefik"]
# Mon, 09 Jul 2018 20:28:16 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:a073c86ecf9e0f29180e80e9638d4c741970695851ea48247276c32c57e40282`  
		Last Modified: Fri, 06 Jul 2018 14:16:26 GMT  
		Size: 2.0 MB (2014658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0c55a74f9d93e30b92f7faffc5770afb8e8d803a8cf3e9e5a3c5a9482dc60a4`  
		Last Modified: Fri, 06 Jul 2018 18:47:37 GMT  
		Size: 351.3 KB (351276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:599120177877a275d6f34fb50be2fccf0d85dbb352ceb855f6d52345cd87a938`  
		Last Modified: Mon, 09 Jul 2018 20:30:22 GMT  
		Size: 16.1 MB (16076047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9412cad0b6d95728b8e02ed2271b2dee5a0a894d369f3b7cc7d91499b4ad174f`  
		Last Modified: Mon, 09 Jul 2018 20:30:15 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:maroilles-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:1c0480561f232f0d3f95fce1c36de27fa9e24d64419e2d5afe7b8acb354b5bda
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.7 MB (17741606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c173bb27a5d1eedbe59b9331a154cdc385b3903a0e51812e9edabbe96e787c5`
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
# Mon, 09 Jul 2018 21:43:32 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0-rc1/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Mon, 09 Jul 2018 21:43:33 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Mon, 09 Jul 2018 21:43:33 GMT
EXPOSE 80/tcp
# Mon, 09 Jul 2018 21:43:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 09 Jul 2018 21:43:33 GMT
CMD ["traefik"]
# Mon, 09 Jul 2018 21:43:33 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc1 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:d53addaafe9a7fb23c31f6c63884eba60f7387a721b24a82ad5a72e1b7780fa2`  
		Last Modified: Mon, 09 Jul 2018 21:44:16 GMT  
		Size: 15.4 MB (15422954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bd96e5b7cb5c67582722eced79c2383b44f3a9b8704d491e7e0e4db96789cff`  
		Last Modified: Mon, 09 Jul 2018 21:44:11 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:maroilles-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:ef1fea30cc70b7d60fcf0999cd8d2e5df8cf9af688b3fd97484100779a4af73b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.4 MB (17403317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26144c664e438248fd4335f0912095cfaf48e907e941159e3703f769bd841083`
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
# Mon, 09 Jul 2018 21:43:34 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0-rc1/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Mon, 09 Jul 2018 21:43:35 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Mon, 09 Jul 2018 21:43:36 GMT
EXPOSE 80/tcp
# Mon, 09 Jul 2018 21:43:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 09 Jul 2018 21:43:37 GMT
CMD ["traefik"]
# Mon, 09 Jul 2018 21:43:38 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc1 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:b875e1f3a2418fa40b21cfc0cbe2daf150fb2cc4bbc343b3fcb1d4437503df49`  
		Last Modified: Mon, 09 Jul 2018 21:45:31 GMT  
		Size: 15.1 MB (15136560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:789c888fb76a49649f18e42ab7bada1edecd6038e2aac3eeb6e3bf06656c4820`  
		Last Modified: Mon, 09 Jul 2018 21:45:24 GMT  
		Size: 339.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:tetedemoine`

```console
$ docker pull traefik@sha256:98d82a5fa9a27382de1666ecd385d32fdaa89266a8426b378b040c68c345bf85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:tetedemoine` - linux; amd64

```console
$ docker pull traefik@sha256:36df85f84cb73e6eee07767eaad2b3b4ff3f0a9dcf5e9ca222f1f700cb4abc88
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.9 MB (14887623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec7c9759c1c81893df479d97dabf737c56fc5d59b0e82b6a1e680c98090e7e22`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 16 Jun 2018 06:01:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Sat, 16 Jun 2018 06:01:28 GMT
COPY file:cc15050a9f9bed5e01e1d60502355e8c53c60b7351addcabb0c0c482ea58c352 in / 
# Sat, 16 Jun 2018 06:01:28 GMT
EXPOSE 80/tcp
# Sat, 16 Jun 2018 06:01:28 GMT
ENTRYPOINT ["/traefik"]
# Sat, 16 Jun 2018 06:01:28 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:03732cc4924a93fcbcbed879c4c63aad534a63a64e9919eceddf48d7602407b5`  
		Last Modified: Sat, 16 Jun 2018 06:03:25 GMT  
		Size: 155.2 KB (155150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a29083ad5e13555380ebdebe336e07e77b9d5fd7586b1ff15c196001e119abb`  
		Last Modified: Sat, 16 Jun 2018 06:03:32 GMT  
		Size: 14.7 MB (14732473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:tetedemoine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:f98492734ef1d8f78cbcf2037c8b75be77b014496c637e2395a2eacbe91e25bb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14266482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2d21f7d36aea92b4ab0c33ee8506f92ceec15afc4205c7314f0b755f60169e5`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Sat, 16 Jun 2018 06:01:01 GMT
COPY file:b7d8e7ae8f95e17f07c4ee67298015eea26f5c348add4a1dd84b79d05fa3c56d in / 
# Sat, 16 Jun 2018 06:01:01 GMT
EXPOSE 80/tcp
# Sat, 16 Jun 2018 06:01:01 GMT
ENTRYPOINT ["/traefik"]
# Sat, 16 Jun 2018 06:01:01 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:580cc0ad5c9a597ca5731710e232eb1884d85b4b69f1617833ea864ab0ee7e04`  
		Last Modified: Sat, 16 Jun 2018 06:01:24 GMT  
		Size: 14.1 MB (14111298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:tetedemoine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:7221080406536c12abc08b7e38e4aebd811747696a10836feb4265d8b2830bc6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13973987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ed3bfa5f161e51e1f34597ff441714d65be566f7a51d71c9aaa399c11a391a5`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Sat, 16 Jun 2018 06:01:43 GMT
COPY file:46d58f267ebf1364fbc81466fabcf25ee0d52d83bf461871b66705e5f4cd9241 in / 
# Sat, 16 Jun 2018 06:01:44 GMT
EXPOSE 80/tcp
# Sat, 16 Jun 2018 06:01:45 GMT
ENTRYPOINT ["/traefik"]
# Sat, 16 Jun 2018 06:01:45 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:408ce2769f45475df85991eca2090edc80c73561db1ea10358a433ce745a0697`  
		Last Modified: Sat, 16 Jun 2018 06:02:36 GMT  
		Size: 13.8 MB (13818836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:tetedemoine-alpine`

```console
$ docker pull traefik@sha256:764e4548f24cdeb0e768df56ffe94e8aade16d94cd806637da669a7eeda2e9d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:tetedemoine-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:d599e197f13b74764be88ce79dbeb8cab65501a87530d475e49da54477ad75d2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17266274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c639633adae6784b831617f6d5f686ded09ceca553c0ad12c1f7e31fd0ff0d56`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 18:46:58 GMT
RUN apk --no-cache add ca-certificates
# Fri, 06 Jul 2018 18:47:04 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Fri, 06 Jul 2018 18:47:11 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Fri, 06 Jul 2018 18:47:11 GMT
EXPOSE 80/tcp
# Fri, 06 Jul 2018 18:47:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 06 Jul 2018 18:47:11 GMT
CMD ["traefik"]
# Fri, 06 Jul 2018 18:47:12 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:a073c86ecf9e0f29180e80e9638d4c741970695851ea48247276c32c57e40282`  
		Last Modified: Fri, 06 Jul 2018 14:16:26 GMT  
		Size: 2.0 MB (2014658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0c55a74f9d93e30b92f7faffc5770afb8e8d803a8cf3e9e5a3c5a9482dc60a4`  
		Last Modified: Fri, 06 Jul 2018 18:47:37 GMT  
		Size: 351.3 KB (351276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce0972cb8d2c4731fe306e926854ae2a8de73653d89f1c3d19711a5f42994d3`  
		Last Modified: Fri, 06 Jul 2018 18:47:43 GMT  
		Size: 14.9 MB (14899999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a8f0aaf3480aef1eff572364e580e665624ce9a74a3c23cfbaecdeafb7ba3f0`  
		Last Modified: Fri, 06 Jul 2018 18:47:35 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:tetedemoine-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:42b7511b3704a0238cf7fcc4c98e8444f1e705d55036cd73283b9e342d2ea33e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.6 MB (16598019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d57f94d9c963e675b1da4a9048f4a27060d1a92eff8280bcd2a0b0548647e94`
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
# Sat, 16 Jun 2018 06:01:09 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Sat, 16 Jun 2018 06:01:09 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Sat, 16 Jun 2018 06:01:09 GMT
EXPOSE 80/tcp
# Sat, 16 Jun 2018 06:01:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 16 Jun 2018 06:01:10 GMT
CMD ["traefik"]
# Sat, 16 Jun 2018 06:01:10 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:5695cf70559012cd99bd1e5d8fd73647896f745f674b3bbe5b0a0ffcc8c1498a`  
		Last Modified: Sat, 16 Jun 2018 06:01:42 GMT  
		Size: 14.3 MB (14279368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6cb533e9248876d72547f3c78c5571d938a4b9c3b41db4a0f88fcb05084827f`  
		Last Modified: Sat, 16 Jun 2018 06:01:37 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:tetedemoine-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:139bcfa6bbf99646884ec168648797ad0d2bec57375a1f67bc6e032db641aa72
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.3 MB (16253468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01662d9728840df0fb307c64ea38369514e51933fccf4517b26f6959e0025583`
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
# Sat, 16 Jun 2018 06:02:10 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Sat, 16 Jun 2018 06:02:12 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Sat, 16 Jun 2018 06:02:12 GMT
EXPOSE 80/tcp
# Sat, 16 Jun 2018 06:02:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 16 Jun 2018 06:02:13 GMT
CMD ["traefik"]
# Sat, 16 Jun 2018 06:02:14 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:eacb3f270326d1ba5a269a1ea0adf076e6bbb60d74a7856d0839885130842be2`  
		Last Modified: Sat, 16 Jun 2018 06:03:25 GMT  
		Size: 14.0 MB (13986711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60c86ae8cc7faa9a20f172422a4b5efbd6e6a3375f987615f36a22bad11073f0`  
		Last Modified: Sat, 16 Jun 2018 06:03:19 GMT  
		Size: 339.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.6`

```console
$ docker pull traefik@sha256:98d82a5fa9a27382de1666ecd385d32fdaa89266a8426b378b040c68c345bf85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.6` - linux; amd64

```console
$ docker pull traefik@sha256:36df85f84cb73e6eee07767eaad2b3b4ff3f0a9dcf5e9ca222f1f700cb4abc88
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.9 MB (14887623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec7c9759c1c81893df479d97dabf737c56fc5d59b0e82b6a1e680c98090e7e22`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 16 Jun 2018 06:01:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Sat, 16 Jun 2018 06:01:28 GMT
COPY file:cc15050a9f9bed5e01e1d60502355e8c53c60b7351addcabb0c0c482ea58c352 in / 
# Sat, 16 Jun 2018 06:01:28 GMT
EXPOSE 80/tcp
# Sat, 16 Jun 2018 06:01:28 GMT
ENTRYPOINT ["/traefik"]
# Sat, 16 Jun 2018 06:01:28 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:03732cc4924a93fcbcbed879c4c63aad534a63a64e9919eceddf48d7602407b5`  
		Last Modified: Sat, 16 Jun 2018 06:03:25 GMT  
		Size: 155.2 KB (155150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a29083ad5e13555380ebdebe336e07e77b9d5fd7586b1ff15c196001e119abb`  
		Last Modified: Sat, 16 Jun 2018 06:03:32 GMT  
		Size: 14.7 MB (14732473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.6` - linux; arm variant v6

```console
$ docker pull traefik@sha256:f98492734ef1d8f78cbcf2037c8b75be77b014496c637e2395a2eacbe91e25bb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14266482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2d21f7d36aea92b4ab0c33ee8506f92ceec15afc4205c7314f0b755f60169e5`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Sat, 16 Jun 2018 06:01:01 GMT
COPY file:b7d8e7ae8f95e17f07c4ee67298015eea26f5c348add4a1dd84b79d05fa3c56d in / 
# Sat, 16 Jun 2018 06:01:01 GMT
EXPOSE 80/tcp
# Sat, 16 Jun 2018 06:01:01 GMT
ENTRYPOINT ["/traefik"]
# Sat, 16 Jun 2018 06:01:01 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:580cc0ad5c9a597ca5731710e232eb1884d85b4b69f1617833ea864ab0ee7e04`  
		Last Modified: Sat, 16 Jun 2018 06:01:24 GMT  
		Size: 14.1 MB (14111298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.6` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:7221080406536c12abc08b7e38e4aebd811747696a10836feb4265d8b2830bc6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13973987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ed3bfa5f161e51e1f34597ff441714d65be566f7a51d71c9aaa399c11a391a5`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Sat, 16 Jun 2018 06:01:43 GMT
COPY file:46d58f267ebf1364fbc81466fabcf25ee0d52d83bf461871b66705e5f4cd9241 in / 
# Sat, 16 Jun 2018 06:01:44 GMT
EXPOSE 80/tcp
# Sat, 16 Jun 2018 06:01:45 GMT
ENTRYPOINT ["/traefik"]
# Sat, 16 Jun 2018 06:01:45 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:408ce2769f45475df85991eca2090edc80c73561db1ea10358a433ce745a0697`  
		Last Modified: Sat, 16 Jun 2018 06:02:36 GMT  
		Size: 13.8 MB (13818836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.6.4`

```console
$ docker pull traefik@sha256:98d82a5fa9a27382de1666ecd385d32fdaa89266a8426b378b040c68c345bf85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.6.4` - linux; amd64

```console
$ docker pull traefik@sha256:36df85f84cb73e6eee07767eaad2b3b4ff3f0a9dcf5e9ca222f1f700cb4abc88
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.9 MB (14887623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec7c9759c1c81893df479d97dabf737c56fc5d59b0e82b6a1e680c98090e7e22`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 16 Jun 2018 06:01:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Sat, 16 Jun 2018 06:01:28 GMT
COPY file:cc15050a9f9bed5e01e1d60502355e8c53c60b7351addcabb0c0c482ea58c352 in / 
# Sat, 16 Jun 2018 06:01:28 GMT
EXPOSE 80/tcp
# Sat, 16 Jun 2018 06:01:28 GMT
ENTRYPOINT ["/traefik"]
# Sat, 16 Jun 2018 06:01:28 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:03732cc4924a93fcbcbed879c4c63aad534a63a64e9919eceddf48d7602407b5`  
		Last Modified: Sat, 16 Jun 2018 06:03:25 GMT  
		Size: 155.2 KB (155150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a29083ad5e13555380ebdebe336e07e77b9d5fd7586b1ff15c196001e119abb`  
		Last Modified: Sat, 16 Jun 2018 06:03:32 GMT  
		Size: 14.7 MB (14732473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.6.4` - linux; arm variant v6

```console
$ docker pull traefik@sha256:f98492734ef1d8f78cbcf2037c8b75be77b014496c637e2395a2eacbe91e25bb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14266482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2d21f7d36aea92b4ab0c33ee8506f92ceec15afc4205c7314f0b755f60169e5`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Sat, 16 Jun 2018 06:01:01 GMT
COPY file:b7d8e7ae8f95e17f07c4ee67298015eea26f5c348add4a1dd84b79d05fa3c56d in / 
# Sat, 16 Jun 2018 06:01:01 GMT
EXPOSE 80/tcp
# Sat, 16 Jun 2018 06:01:01 GMT
ENTRYPOINT ["/traefik"]
# Sat, 16 Jun 2018 06:01:01 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:580cc0ad5c9a597ca5731710e232eb1884d85b4b69f1617833ea864ab0ee7e04`  
		Last Modified: Sat, 16 Jun 2018 06:01:24 GMT  
		Size: 14.1 MB (14111298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.6.4` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:7221080406536c12abc08b7e38e4aebd811747696a10836feb4265d8b2830bc6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13973987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ed3bfa5f161e51e1f34597ff441714d65be566f7a51d71c9aaa399c11a391a5`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Sat, 16 Jun 2018 06:01:43 GMT
COPY file:46d58f267ebf1364fbc81466fabcf25ee0d52d83bf461871b66705e5f4cd9241 in / 
# Sat, 16 Jun 2018 06:01:44 GMT
EXPOSE 80/tcp
# Sat, 16 Jun 2018 06:01:45 GMT
ENTRYPOINT ["/traefik"]
# Sat, 16 Jun 2018 06:01:45 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:408ce2769f45475df85991eca2090edc80c73561db1ea10358a433ce745a0697`  
		Last Modified: Sat, 16 Jun 2018 06:02:36 GMT  
		Size: 13.8 MB (13818836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.6.4-alpine`

```console
$ docker pull traefik@sha256:764e4548f24cdeb0e768df56ffe94e8aade16d94cd806637da669a7eeda2e9d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.6.4-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:d599e197f13b74764be88ce79dbeb8cab65501a87530d475e49da54477ad75d2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17266274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c639633adae6784b831617f6d5f686ded09ceca553c0ad12c1f7e31fd0ff0d56`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 18:46:58 GMT
RUN apk --no-cache add ca-certificates
# Fri, 06 Jul 2018 18:47:04 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Fri, 06 Jul 2018 18:47:11 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Fri, 06 Jul 2018 18:47:11 GMT
EXPOSE 80/tcp
# Fri, 06 Jul 2018 18:47:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 06 Jul 2018 18:47:11 GMT
CMD ["traefik"]
# Fri, 06 Jul 2018 18:47:12 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:a073c86ecf9e0f29180e80e9638d4c741970695851ea48247276c32c57e40282`  
		Last Modified: Fri, 06 Jul 2018 14:16:26 GMT  
		Size: 2.0 MB (2014658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0c55a74f9d93e30b92f7faffc5770afb8e8d803a8cf3e9e5a3c5a9482dc60a4`  
		Last Modified: Fri, 06 Jul 2018 18:47:37 GMT  
		Size: 351.3 KB (351276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce0972cb8d2c4731fe306e926854ae2a8de73653d89f1c3d19711a5f42994d3`  
		Last Modified: Fri, 06 Jul 2018 18:47:43 GMT  
		Size: 14.9 MB (14899999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a8f0aaf3480aef1eff572364e580e665624ce9a74a3c23cfbaecdeafb7ba3f0`  
		Last Modified: Fri, 06 Jul 2018 18:47:35 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.6.4-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:42b7511b3704a0238cf7fcc4c98e8444f1e705d55036cd73283b9e342d2ea33e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.6 MB (16598019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d57f94d9c963e675b1da4a9048f4a27060d1a92eff8280bcd2a0b0548647e94`
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
# Sat, 16 Jun 2018 06:01:09 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Sat, 16 Jun 2018 06:01:09 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Sat, 16 Jun 2018 06:01:09 GMT
EXPOSE 80/tcp
# Sat, 16 Jun 2018 06:01:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 16 Jun 2018 06:01:10 GMT
CMD ["traefik"]
# Sat, 16 Jun 2018 06:01:10 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:5695cf70559012cd99bd1e5d8fd73647896f745f674b3bbe5b0a0ffcc8c1498a`  
		Last Modified: Sat, 16 Jun 2018 06:01:42 GMT  
		Size: 14.3 MB (14279368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6cb533e9248876d72547f3c78c5571d938a4b9c3b41db4a0f88fcb05084827f`  
		Last Modified: Sat, 16 Jun 2018 06:01:37 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.6.4-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:139bcfa6bbf99646884ec168648797ad0d2bec57375a1f67bc6e032db641aa72
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.3 MB (16253468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01662d9728840df0fb307c64ea38369514e51933fccf4517b26f6959e0025583`
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
# Sat, 16 Jun 2018 06:02:10 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Sat, 16 Jun 2018 06:02:12 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Sat, 16 Jun 2018 06:02:12 GMT
EXPOSE 80/tcp
# Sat, 16 Jun 2018 06:02:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 16 Jun 2018 06:02:13 GMT
CMD ["traefik"]
# Sat, 16 Jun 2018 06:02:14 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:eacb3f270326d1ba5a269a1ea0adf076e6bbb60d74a7856d0839885130842be2`  
		Last Modified: Sat, 16 Jun 2018 06:03:25 GMT  
		Size: 14.0 MB (13986711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60c86ae8cc7faa9a20f172422a4b5efbd6e6a3375f987615f36a22bad11073f0`  
		Last Modified: Sat, 16 Jun 2018 06:03:19 GMT  
		Size: 339.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.6-alpine`

```console
$ docker pull traefik@sha256:764e4548f24cdeb0e768df56ffe94e8aade16d94cd806637da669a7eeda2e9d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.6-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:d599e197f13b74764be88ce79dbeb8cab65501a87530d475e49da54477ad75d2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17266274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c639633adae6784b831617f6d5f686ded09ceca553c0ad12c1f7e31fd0ff0d56`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 18:46:58 GMT
RUN apk --no-cache add ca-certificates
# Fri, 06 Jul 2018 18:47:04 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Fri, 06 Jul 2018 18:47:11 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Fri, 06 Jul 2018 18:47:11 GMT
EXPOSE 80/tcp
# Fri, 06 Jul 2018 18:47:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 06 Jul 2018 18:47:11 GMT
CMD ["traefik"]
# Fri, 06 Jul 2018 18:47:12 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:a073c86ecf9e0f29180e80e9638d4c741970695851ea48247276c32c57e40282`  
		Last Modified: Fri, 06 Jul 2018 14:16:26 GMT  
		Size: 2.0 MB (2014658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0c55a74f9d93e30b92f7faffc5770afb8e8d803a8cf3e9e5a3c5a9482dc60a4`  
		Last Modified: Fri, 06 Jul 2018 18:47:37 GMT  
		Size: 351.3 KB (351276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce0972cb8d2c4731fe306e926854ae2a8de73653d89f1c3d19711a5f42994d3`  
		Last Modified: Fri, 06 Jul 2018 18:47:43 GMT  
		Size: 14.9 MB (14899999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a8f0aaf3480aef1eff572364e580e665624ce9a74a3c23cfbaecdeafb7ba3f0`  
		Last Modified: Fri, 06 Jul 2018 18:47:35 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.6-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:42b7511b3704a0238cf7fcc4c98e8444f1e705d55036cd73283b9e342d2ea33e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.6 MB (16598019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d57f94d9c963e675b1da4a9048f4a27060d1a92eff8280bcd2a0b0548647e94`
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
# Sat, 16 Jun 2018 06:01:09 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Sat, 16 Jun 2018 06:01:09 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Sat, 16 Jun 2018 06:01:09 GMT
EXPOSE 80/tcp
# Sat, 16 Jun 2018 06:01:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 16 Jun 2018 06:01:10 GMT
CMD ["traefik"]
# Sat, 16 Jun 2018 06:01:10 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:5695cf70559012cd99bd1e5d8fd73647896f745f674b3bbe5b0a0ffcc8c1498a`  
		Last Modified: Sat, 16 Jun 2018 06:01:42 GMT  
		Size: 14.3 MB (14279368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6cb533e9248876d72547f3c78c5571d938a4b9c3b41db4a0f88fcb05084827f`  
		Last Modified: Sat, 16 Jun 2018 06:01:37 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.6-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:139bcfa6bbf99646884ec168648797ad0d2bec57375a1f67bc6e032db641aa72
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.3 MB (16253468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01662d9728840df0fb307c64ea38369514e51933fccf4517b26f6959e0025583`
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
# Sat, 16 Jun 2018 06:02:10 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Sat, 16 Jun 2018 06:02:12 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Sat, 16 Jun 2018 06:02:12 GMT
EXPOSE 80/tcp
# Sat, 16 Jun 2018 06:02:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 16 Jun 2018 06:02:13 GMT
CMD ["traefik"]
# Sat, 16 Jun 2018 06:02:14 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:eacb3f270326d1ba5a269a1ea0adf076e6bbb60d74a7856d0839885130842be2`  
		Last Modified: Sat, 16 Jun 2018 06:03:25 GMT  
		Size: 14.0 MB (13986711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60c86ae8cc7faa9a20f172422a4b5efbd6e6a3375f987615f36a22bad11073f0`  
		Last Modified: Sat, 16 Jun 2018 06:03:19 GMT  
		Size: 339.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7`

```console
$ docker pull traefik@sha256:96fdda85a7d2b78f4e18b125766f6618e5db518c995dfe951ec116e9f0f5ae62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.7` - linux; amd64

```console
$ docker pull traefik@sha256:691d7e42caa2acd9a5d345b184d520cb2c123c68cd305431cd3a05212a4a1712
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.1 MB (16065760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee9981468308bf3b226f09eb995b4cf7ccedbd95428fbef5ead93bbf68dd9dc3`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 16 Jun 2018 06:01:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Mon, 09 Jul 2018 20:27:44 GMT
COPY file:9b1408023ea2f3c134a52dd09288e3085e202068adee702a21097b1e2c671bc1 in / 
# Mon, 09 Jul 2018 20:27:44 GMT
EXPOSE 80/tcp
# Mon, 09 Jul 2018 20:27:44 GMT
ENTRYPOINT ["/traefik"]
# Mon, 09 Jul 2018 20:27:45 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:03732cc4924a93fcbcbed879c4c63aad534a63a64e9919eceddf48d7602407b5`  
		Last Modified: Sat, 16 Jun 2018 06:03:25 GMT  
		Size: 155.2 KB (155150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:352e40814c4f731dcedbdf25bcc7b0b556525c9dc46bacc8025bf0b78a827c33`  
		Last Modified: Mon, 09 Jul 2018 20:28:55 GMT  
		Size: 15.9 MB (15910610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7` - linux; arm variant v6

```console
$ docker pull traefik@sha256:ca85f5babca632760c09136c283548495d096c2639115e8ce0ee39aa17f657e5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 MB (15409504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba5fe7a70388ecbb3fa583491d2f63cded6198202bfce2bf648ee05306d9746a`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Mon, 09 Jul 2018 21:43:24 GMT
COPY file:71383cd05a0ee9f71305cbd667ce6edac2a194ce64677a0e8ef68097fcd9e181 in / 
# Mon, 09 Jul 2018 21:43:24 GMT
EXPOSE 80/tcp
# Mon, 09 Jul 2018 21:43:24 GMT
ENTRYPOINT ["/traefik"]
# Mon, 09 Jul 2018 21:43:25 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c020c7b945f84af3e2a57af6da04a9806271c79777608b36bdc669f29bde271`  
		Last Modified: Mon, 09 Jul 2018 21:43:57 GMT  
		Size: 15.3 MB (15254320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:6ae45c41cc0f5701b52764e90a2e6017610e9ecf20eef007136fd8ba174c353d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.1 MB (15122453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28e2ae6097c86cec25a16d622b23f17fef6d87fc3c6cb104b746c17e5758a633`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Mon, 09 Jul 2018 21:43:06 GMT
COPY file:a74582378f872557ea509f8729ef17eeffee5ba69e9cb72544e48bf011e9f1ab in / 
# Mon, 09 Jul 2018 21:43:07 GMT
EXPOSE 80/tcp
# Mon, 09 Jul 2018 21:43:08 GMT
ENTRYPOINT ["/traefik"]
# Mon, 09 Jul 2018 21:43:08 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc33a79bee9249a4f3e4c16ec38b1b5bed8835b2b59902697f16b4908f9a0fa`  
		Last Modified: Mon, 09 Jul 2018 21:44:19 GMT  
		Size: 15.0 MB (14967302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7.0-rc1`

```console
$ docker pull traefik@sha256:96fdda85a7d2b78f4e18b125766f6618e5db518c995dfe951ec116e9f0f5ae62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.7.0-rc1` - linux; amd64

```console
$ docker pull traefik@sha256:691d7e42caa2acd9a5d345b184d520cb2c123c68cd305431cd3a05212a4a1712
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.1 MB (16065760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee9981468308bf3b226f09eb995b4cf7ccedbd95428fbef5ead93bbf68dd9dc3`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 16 Jun 2018 06:01:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Mon, 09 Jul 2018 20:27:44 GMT
COPY file:9b1408023ea2f3c134a52dd09288e3085e202068adee702a21097b1e2c671bc1 in / 
# Mon, 09 Jul 2018 20:27:44 GMT
EXPOSE 80/tcp
# Mon, 09 Jul 2018 20:27:44 GMT
ENTRYPOINT ["/traefik"]
# Mon, 09 Jul 2018 20:27:45 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:03732cc4924a93fcbcbed879c4c63aad534a63a64e9919eceddf48d7602407b5`  
		Last Modified: Sat, 16 Jun 2018 06:03:25 GMT  
		Size: 155.2 KB (155150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:352e40814c4f731dcedbdf25bcc7b0b556525c9dc46bacc8025bf0b78a827c33`  
		Last Modified: Mon, 09 Jul 2018 20:28:55 GMT  
		Size: 15.9 MB (15910610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7.0-rc1` - linux; arm variant v6

```console
$ docker pull traefik@sha256:ca85f5babca632760c09136c283548495d096c2639115e8ce0ee39aa17f657e5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 MB (15409504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba5fe7a70388ecbb3fa583491d2f63cded6198202bfce2bf648ee05306d9746a`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Mon, 09 Jul 2018 21:43:24 GMT
COPY file:71383cd05a0ee9f71305cbd667ce6edac2a194ce64677a0e8ef68097fcd9e181 in / 
# Mon, 09 Jul 2018 21:43:24 GMT
EXPOSE 80/tcp
# Mon, 09 Jul 2018 21:43:24 GMT
ENTRYPOINT ["/traefik"]
# Mon, 09 Jul 2018 21:43:25 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c020c7b945f84af3e2a57af6da04a9806271c79777608b36bdc669f29bde271`  
		Last Modified: Mon, 09 Jul 2018 21:43:57 GMT  
		Size: 15.3 MB (15254320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7.0-rc1` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:6ae45c41cc0f5701b52764e90a2e6017610e9ecf20eef007136fd8ba174c353d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.1 MB (15122453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28e2ae6097c86cec25a16d622b23f17fef6d87fc3c6cb104b746c17e5758a633`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Mon, 09 Jul 2018 21:43:06 GMT
COPY file:a74582378f872557ea509f8729ef17eeffee5ba69e9cb72544e48bf011e9f1ab in / 
# Mon, 09 Jul 2018 21:43:07 GMT
EXPOSE 80/tcp
# Mon, 09 Jul 2018 21:43:08 GMT
ENTRYPOINT ["/traefik"]
# Mon, 09 Jul 2018 21:43:08 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc33a79bee9249a4f3e4c16ec38b1b5bed8835b2b59902697f16b4908f9a0fa`  
		Last Modified: Mon, 09 Jul 2018 21:44:19 GMT  
		Size: 15.0 MB (14967302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7.0-rc1-alpine`

```console
$ docker pull traefik@sha256:cbac47693857e231e51a5e9045ccddc179a3093bb066c695aaa01aa28edc832f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.7.0-rc1-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:009e64dd6326f25842c6ec5b66ccbda4969be918994c10f78d8aba256fe04e31
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.4 MB (18442322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73305e7fac9450028da3f0dde36ab29e7e116aaa63abd3cc06cb1b6cae198ebe`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 18:46:58 GMT
RUN apk --no-cache add ca-certificates
# Mon, 09 Jul 2018 20:28:15 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0-rc1/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Mon, 09 Jul 2018 20:28:15 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Mon, 09 Jul 2018 20:28:16 GMT
EXPOSE 80/tcp
# Mon, 09 Jul 2018 20:28:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 09 Jul 2018 20:28:16 GMT
CMD ["traefik"]
# Mon, 09 Jul 2018 20:28:16 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:a073c86ecf9e0f29180e80e9638d4c741970695851ea48247276c32c57e40282`  
		Last Modified: Fri, 06 Jul 2018 14:16:26 GMT  
		Size: 2.0 MB (2014658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0c55a74f9d93e30b92f7faffc5770afb8e8d803a8cf3e9e5a3c5a9482dc60a4`  
		Last Modified: Fri, 06 Jul 2018 18:47:37 GMT  
		Size: 351.3 KB (351276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:599120177877a275d6f34fb50be2fccf0d85dbb352ceb855f6d52345cd87a938`  
		Last Modified: Mon, 09 Jul 2018 20:30:22 GMT  
		Size: 16.1 MB (16076047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9412cad0b6d95728b8e02ed2271b2dee5a0a894d369f3b7cc7d91499b4ad174f`  
		Last Modified: Mon, 09 Jul 2018 20:30:15 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7.0-rc1-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:1c0480561f232f0d3f95fce1c36de27fa9e24d64419e2d5afe7b8acb354b5bda
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.7 MB (17741606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c173bb27a5d1eedbe59b9331a154cdc385b3903a0e51812e9edabbe96e787c5`
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
# Mon, 09 Jul 2018 21:43:32 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0-rc1/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Mon, 09 Jul 2018 21:43:33 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Mon, 09 Jul 2018 21:43:33 GMT
EXPOSE 80/tcp
# Mon, 09 Jul 2018 21:43:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 09 Jul 2018 21:43:33 GMT
CMD ["traefik"]
# Mon, 09 Jul 2018 21:43:33 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc1 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:d53addaafe9a7fb23c31f6c63884eba60f7387a721b24a82ad5a72e1b7780fa2`  
		Last Modified: Mon, 09 Jul 2018 21:44:16 GMT  
		Size: 15.4 MB (15422954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bd96e5b7cb5c67582722eced79c2383b44f3a9b8704d491e7e0e4db96789cff`  
		Last Modified: Mon, 09 Jul 2018 21:44:11 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7.0-rc1-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:ef1fea30cc70b7d60fcf0999cd8d2e5df8cf9af688b3fd97484100779a4af73b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.4 MB (17403317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26144c664e438248fd4335f0912095cfaf48e907e941159e3703f769bd841083`
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
# Mon, 09 Jul 2018 21:43:34 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0-rc1/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Mon, 09 Jul 2018 21:43:35 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Mon, 09 Jul 2018 21:43:36 GMT
EXPOSE 80/tcp
# Mon, 09 Jul 2018 21:43:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 09 Jul 2018 21:43:37 GMT
CMD ["traefik"]
# Mon, 09 Jul 2018 21:43:38 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc1 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:b875e1f3a2418fa40b21cfc0cbe2daf150fb2cc4bbc343b3fcb1d4437503df49`  
		Last Modified: Mon, 09 Jul 2018 21:45:31 GMT  
		Size: 15.1 MB (15136560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:789c888fb76a49649f18e42ab7bada1edecd6038e2aac3eeb6e3bf06656c4820`  
		Last Modified: Mon, 09 Jul 2018 21:45:24 GMT  
		Size: 339.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7-alpine`

```console
$ docker pull traefik@sha256:cbac47693857e231e51a5e9045ccddc179a3093bb066c695aaa01aa28edc832f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.7-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:009e64dd6326f25842c6ec5b66ccbda4969be918994c10f78d8aba256fe04e31
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.4 MB (18442322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73305e7fac9450028da3f0dde36ab29e7e116aaa63abd3cc06cb1b6cae198ebe`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 18:46:58 GMT
RUN apk --no-cache add ca-certificates
# Mon, 09 Jul 2018 20:28:15 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0-rc1/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Mon, 09 Jul 2018 20:28:15 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Mon, 09 Jul 2018 20:28:16 GMT
EXPOSE 80/tcp
# Mon, 09 Jul 2018 20:28:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 09 Jul 2018 20:28:16 GMT
CMD ["traefik"]
# Mon, 09 Jul 2018 20:28:16 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:a073c86ecf9e0f29180e80e9638d4c741970695851ea48247276c32c57e40282`  
		Last Modified: Fri, 06 Jul 2018 14:16:26 GMT  
		Size: 2.0 MB (2014658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0c55a74f9d93e30b92f7faffc5770afb8e8d803a8cf3e9e5a3c5a9482dc60a4`  
		Last Modified: Fri, 06 Jul 2018 18:47:37 GMT  
		Size: 351.3 KB (351276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:599120177877a275d6f34fb50be2fccf0d85dbb352ceb855f6d52345cd87a938`  
		Last Modified: Mon, 09 Jul 2018 20:30:22 GMT  
		Size: 16.1 MB (16076047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9412cad0b6d95728b8e02ed2271b2dee5a0a894d369f3b7cc7d91499b4ad174f`  
		Last Modified: Mon, 09 Jul 2018 20:30:15 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:1c0480561f232f0d3f95fce1c36de27fa9e24d64419e2d5afe7b8acb354b5bda
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.7 MB (17741606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c173bb27a5d1eedbe59b9331a154cdc385b3903a0e51812e9edabbe96e787c5`
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
# Mon, 09 Jul 2018 21:43:32 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0-rc1/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Mon, 09 Jul 2018 21:43:33 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Mon, 09 Jul 2018 21:43:33 GMT
EXPOSE 80/tcp
# Mon, 09 Jul 2018 21:43:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 09 Jul 2018 21:43:33 GMT
CMD ["traefik"]
# Mon, 09 Jul 2018 21:43:33 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc1 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:d53addaafe9a7fb23c31f6c63884eba60f7387a721b24a82ad5a72e1b7780fa2`  
		Last Modified: Mon, 09 Jul 2018 21:44:16 GMT  
		Size: 15.4 MB (15422954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bd96e5b7cb5c67582722eced79c2383b44f3a9b8704d491e7e0e4db96789cff`  
		Last Modified: Mon, 09 Jul 2018 21:44:11 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:ef1fea30cc70b7d60fcf0999cd8d2e5df8cf9af688b3fd97484100779a4af73b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.4 MB (17403317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26144c664e438248fd4335f0912095cfaf48e907e941159e3703f769bd841083`
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
# Mon, 09 Jul 2018 21:43:34 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0-rc1/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Mon, 09 Jul 2018 21:43:35 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Mon, 09 Jul 2018 21:43:36 GMT
EXPOSE 80/tcp
# Mon, 09 Jul 2018 21:43:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 09 Jul 2018 21:43:37 GMT
CMD ["traefik"]
# Mon, 09 Jul 2018 21:43:38 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc1 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:b875e1f3a2418fa40b21cfc0cbe2daf150fb2cc4bbc343b3fcb1d4437503df49`  
		Last Modified: Mon, 09 Jul 2018 21:45:31 GMT  
		Size: 15.1 MB (15136560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:789c888fb76a49649f18e42ab7bada1edecd6038e2aac3eeb6e3bf06656c4820`  
		Last Modified: Mon, 09 Jul 2018 21:45:24 GMT  
		Size: 339.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
