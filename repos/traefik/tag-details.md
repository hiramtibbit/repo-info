<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `traefik`

-	[`traefik:1.6`](#traefik16)
-	[`traefik:1.6.5`](#traefik165)
-	[`traefik:1.6.5-alpine`](#traefik165-alpine)
-	[`traefik:1.6-alpine`](#traefik16-alpine)
-	[`traefik:1.7`](#traefik17)
-	[`traefik:1.7.0-rc2`](#traefik170-rc2)
-	[`traefik:1.7.0-rc2-alpine`](#traefik170-rc2-alpine)
-	[`traefik:1.7-alpine`](#traefik17-alpine)
-	[`traefik:alpine`](#traefikalpine)
-	[`traefik:latest`](#traefiklatest)
-	[`traefik:maroilles`](#traefikmaroilles)
-	[`traefik:maroilles-alpine`](#traefikmaroilles-alpine)
-	[`traefik:tetedemoine`](#traefiktetedemoine)
-	[`traefik:tetedemoine-alpine`](#traefiktetedemoine-alpine)
-	[`traefik:v1.6`](#traefikv16)
-	[`traefik:v1.6.5`](#traefikv165)
-	[`traefik:v1.6.5-alpine`](#traefikv165-alpine)
-	[`traefik:v1.6-alpine`](#traefikv16-alpine)
-	[`traefik:v1.7`](#traefikv17)
-	[`traefik:v1.7.0-rc2`](#traefikv170-rc2)
-	[`traefik:v1.7.0-rc2-alpine`](#traefikv170-rc2-alpine)
-	[`traefik:v1.7-alpine`](#traefikv17-alpine)

## `traefik:1.6`

```console
$ docker pull traefik@sha256:eabb39016917bd43e738fb8bada87be076d4553b5617037922b187c0a656f4a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.6` - linux; amd64

```console
$ docker pull traefik@sha256:e65103d16ded975f0193c2357ccf1de13ebb5946894d91cf1c76ea23033d0476
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.9 MB (14888824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11569c00178041f0502a3251a2d33196c9a153c564814bc9f712c704a85200c2`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 16 Jun 2018 06:01:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 10 Jul 2018 21:39:44 GMT
COPY file:ba6114281de19b8e363e82ed5b30471e264464b79049c538a86b7eae309ab46e in / 
# Tue, 10 Jul 2018 21:39:44 GMT
EXPOSE 80/tcp
# Tue, 10 Jul 2018 21:39:44 GMT
ENTRYPOINT ["/traefik"]
# Tue, 10 Jul 2018 21:39:44 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:03732cc4924a93fcbcbed879c4c63aad534a63a64e9919eceddf48d7602407b5`  
		Last Modified: Sat, 16 Jun 2018 06:03:25 GMT  
		Size: 155.2 KB (155150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6023e30b264079307436d6b5d179f0626dde61945e201ef70ab81993d5e7ee15`  
		Last Modified: Tue, 10 Jul 2018 21:40:34 GMT  
		Size: 14.7 MB (14733674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.6` - linux; arm variant v6

```console
$ docker pull traefik@sha256:6cb42aa3a9df510b013db2cfc667f100fa54e728c3f78205f7d9f2b1030e30b2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14269549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94276d023e180d5ce7d2f6ea7fedde4408b5fb1d091caa651dd3580338c40018`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 11 Jul 2018 08:14:05 GMT
COPY file:0f002d1dc12160ff0052e3979265fc542a8a7f6cafcc4d87880ca1762a2b96b0 in / 
# Wed, 11 Jul 2018 08:14:05 GMT
EXPOSE 80/tcp
# Wed, 11 Jul 2018 08:14:05 GMT
ENTRYPOINT ["/traefik"]
# Wed, 11 Jul 2018 08:14:05 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee51eed0bc1f59a26e1d8065820c03f9d7b3239520690b71fea260dfd841fba1`  
		Last Modified: Wed, 11 Jul 2018 08:14:29 GMT  
		Size: 14.1 MB (14114365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.6` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:e12dd92e9ae06784bd17d81bd8b391ff671c8a4f58abc8f8f662060b39140743
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13974469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3781837d3ba28ee967571c3b92d25272c051e47a94c38642cbcf38a517b2f178`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 11 Jul 2018 09:50:55 GMT
COPY file:0f98eaf6cc0ecdc5e0d6e4b4f2ab37f2bee2e08fa7ac8a9d891918cc83673cdd in / 
# Wed, 11 Jul 2018 09:50:56 GMT
EXPOSE 80/tcp
# Wed, 11 Jul 2018 09:50:57 GMT
ENTRYPOINT ["/traefik"]
# Wed, 11 Jul 2018 09:50:57 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c380abe0eadf15052dc9ca02792f1d35e0bd8a2cb1689c7ed60234587e482f0`  
		Last Modified: Wed, 11 Jul 2018 09:52:34 GMT  
		Size: 13.8 MB (13819318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.6.5`

```console
$ docker pull traefik@sha256:eabb39016917bd43e738fb8bada87be076d4553b5617037922b187c0a656f4a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.6.5` - linux; amd64

```console
$ docker pull traefik@sha256:e65103d16ded975f0193c2357ccf1de13ebb5946894d91cf1c76ea23033d0476
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.9 MB (14888824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11569c00178041f0502a3251a2d33196c9a153c564814bc9f712c704a85200c2`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 16 Jun 2018 06:01:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 10 Jul 2018 21:39:44 GMT
COPY file:ba6114281de19b8e363e82ed5b30471e264464b79049c538a86b7eae309ab46e in / 
# Tue, 10 Jul 2018 21:39:44 GMT
EXPOSE 80/tcp
# Tue, 10 Jul 2018 21:39:44 GMT
ENTRYPOINT ["/traefik"]
# Tue, 10 Jul 2018 21:39:44 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:03732cc4924a93fcbcbed879c4c63aad534a63a64e9919eceddf48d7602407b5`  
		Last Modified: Sat, 16 Jun 2018 06:03:25 GMT  
		Size: 155.2 KB (155150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6023e30b264079307436d6b5d179f0626dde61945e201ef70ab81993d5e7ee15`  
		Last Modified: Tue, 10 Jul 2018 21:40:34 GMT  
		Size: 14.7 MB (14733674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.6.5` - linux; arm variant v6

```console
$ docker pull traefik@sha256:6cb42aa3a9df510b013db2cfc667f100fa54e728c3f78205f7d9f2b1030e30b2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14269549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94276d023e180d5ce7d2f6ea7fedde4408b5fb1d091caa651dd3580338c40018`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 11 Jul 2018 08:14:05 GMT
COPY file:0f002d1dc12160ff0052e3979265fc542a8a7f6cafcc4d87880ca1762a2b96b0 in / 
# Wed, 11 Jul 2018 08:14:05 GMT
EXPOSE 80/tcp
# Wed, 11 Jul 2018 08:14:05 GMT
ENTRYPOINT ["/traefik"]
# Wed, 11 Jul 2018 08:14:05 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee51eed0bc1f59a26e1d8065820c03f9d7b3239520690b71fea260dfd841fba1`  
		Last Modified: Wed, 11 Jul 2018 08:14:29 GMT  
		Size: 14.1 MB (14114365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.6.5` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:e12dd92e9ae06784bd17d81bd8b391ff671c8a4f58abc8f8f662060b39140743
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13974469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3781837d3ba28ee967571c3b92d25272c051e47a94c38642cbcf38a517b2f178`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 11 Jul 2018 09:50:55 GMT
COPY file:0f98eaf6cc0ecdc5e0d6e4b4f2ab37f2bee2e08fa7ac8a9d891918cc83673cdd in / 
# Wed, 11 Jul 2018 09:50:56 GMT
EXPOSE 80/tcp
# Wed, 11 Jul 2018 09:50:57 GMT
ENTRYPOINT ["/traefik"]
# Wed, 11 Jul 2018 09:50:57 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c380abe0eadf15052dc9ca02792f1d35e0bd8a2cb1689c7ed60234587e482f0`  
		Last Modified: Wed, 11 Jul 2018 09:52:34 GMT  
		Size: 13.8 MB (13819318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.6.5-alpine`

```console
$ docker pull traefik@sha256:1ead48163fdcc13129e1da073c936d98c36cfb85d740450d2aad65a9f19eae7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.6.5-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:4deef77f1919ac49d92ae1e640fd849b184ef92c2cd116101b85833c2396b141
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17267757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2762fe66f6ce85b43023c568ba77ed98a319e105181625ab0757c3e91e6ff92d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 18:46:58 GMT
RUN apk --no-cache add ca-certificates
# Tue, 10 Jul 2018 21:40:01 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.5/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Tue, 10 Jul 2018 21:40:02 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Tue, 10 Jul 2018 21:40:02 GMT
EXPOSE 80/tcp
# Tue, 10 Jul 2018 21:40:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 10 Jul 2018 21:40:02 GMT
CMD ["traefik"]
# Tue, 10 Jul 2018 21:40:03 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.5 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:3ee9c4cc408948b2dabb958472d3e5ccf47d105bd7a9738bdd95ba954413f3af`  
		Last Modified: Tue, 10 Jul 2018 21:42:04 GMT  
		Size: 14.9 MB (14901481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d49691f3590e5701d4b437625fba1c7bc124d225e740943e081abfe07e99695c`  
		Last Modified: Tue, 10 Jul 2018 21:41:57 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.6.5-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:3724813239e0a7f01b652cf5327bdd97c1e56d0ea9fc3182c87e732695e0023c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.6 MB (16600193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:872e72450ce16793674ced9c0d19351dd73927c19fe071b7d8d9a3ece0c26cdc`
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
# Wed, 11 Jul 2018 08:14:13 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.5/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 11 Jul 2018 08:14:13 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 11 Jul 2018 08:14:13 GMT
EXPOSE 80/tcp
# Wed, 11 Jul 2018 08:14:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Jul 2018 08:14:14 GMT
CMD ["traefik"]
# Wed, 11 Jul 2018 08:14:14 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.5 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:460ff6fb16f3a441230952b50d88364b36232afda7514a0e5c8babe47cd298e5`  
		Last Modified: Wed, 11 Jul 2018 08:14:51 GMT  
		Size: 14.3 MB (14281542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7dec1c21dd9dfd0eba1ed8b069aafd2b7445a049cbe0385bbf02e57ef681c9c`  
		Last Modified: Wed, 11 Jul 2018 08:14:47 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.6.5-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:cf1d6380d94d68e1ca2b08be002cdd26d144d164212e14a59c2e0faf439064d1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.3 MB (16255035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3addbad06b7bdae21ba2fe86322f19df532dcd00cccf5aa843e480d090537642`
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
# Wed, 11 Jul 2018 09:51:30 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.5/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 11 Jul 2018 09:51:37 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 11 Jul 2018 09:51:38 GMT
EXPOSE 80/tcp
# Wed, 11 Jul 2018 09:51:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Jul 2018 09:51:39 GMT
CMD ["traefik"]
# Wed, 11 Jul 2018 09:51:50 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.5 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:c38a1c97f87060fffba6cb042cee602b9401ece9c9ff84e9949f7645ea8be27f`  
		Last Modified: Wed, 11 Jul 2018 09:54:25 GMT  
		Size: 14.0 MB (13988277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3329d98465ee7d7a2647df727b492cad25413b09d030c306627bd7407af4e9cf`  
		Last Modified: Wed, 11 Jul 2018 09:54:19 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.6-alpine`

```console
$ docker pull traefik@sha256:1ead48163fdcc13129e1da073c936d98c36cfb85d740450d2aad65a9f19eae7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.6-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:4deef77f1919ac49d92ae1e640fd849b184ef92c2cd116101b85833c2396b141
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17267757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2762fe66f6ce85b43023c568ba77ed98a319e105181625ab0757c3e91e6ff92d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 18:46:58 GMT
RUN apk --no-cache add ca-certificates
# Tue, 10 Jul 2018 21:40:01 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.5/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Tue, 10 Jul 2018 21:40:02 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Tue, 10 Jul 2018 21:40:02 GMT
EXPOSE 80/tcp
# Tue, 10 Jul 2018 21:40:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 10 Jul 2018 21:40:02 GMT
CMD ["traefik"]
# Tue, 10 Jul 2018 21:40:03 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.5 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:3ee9c4cc408948b2dabb958472d3e5ccf47d105bd7a9738bdd95ba954413f3af`  
		Last Modified: Tue, 10 Jul 2018 21:42:04 GMT  
		Size: 14.9 MB (14901481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d49691f3590e5701d4b437625fba1c7bc124d225e740943e081abfe07e99695c`  
		Last Modified: Tue, 10 Jul 2018 21:41:57 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.6-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:3724813239e0a7f01b652cf5327bdd97c1e56d0ea9fc3182c87e732695e0023c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.6 MB (16600193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:872e72450ce16793674ced9c0d19351dd73927c19fe071b7d8d9a3ece0c26cdc`
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
# Wed, 11 Jul 2018 08:14:13 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.5/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 11 Jul 2018 08:14:13 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 11 Jul 2018 08:14:13 GMT
EXPOSE 80/tcp
# Wed, 11 Jul 2018 08:14:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Jul 2018 08:14:14 GMT
CMD ["traefik"]
# Wed, 11 Jul 2018 08:14:14 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.5 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:460ff6fb16f3a441230952b50d88364b36232afda7514a0e5c8babe47cd298e5`  
		Last Modified: Wed, 11 Jul 2018 08:14:51 GMT  
		Size: 14.3 MB (14281542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7dec1c21dd9dfd0eba1ed8b069aafd2b7445a049cbe0385bbf02e57ef681c9c`  
		Last Modified: Wed, 11 Jul 2018 08:14:47 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.6-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:cf1d6380d94d68e1ca2b08be002cdd26d144d164212e14a59c2e0faf439064d1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.3 MB (16255035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3addbad06b7bdae21ba2fe86322f19df532dcd00cccf5aa843e480d090537642`
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
# Wed, 11 Jul 2018 09:51:30 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.5/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 11 Jul 2018 09:51:37 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 11 Jul 2018 09:51:38 GMT
EXPOSE 80/tcp
# Wed, 11 Jul 2018 09:51:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Jul 2018 09:51:39 GMT
CMD ["traefik"]
# Wed, 11 Jul 2018 09:51:50 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.5 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:c38a1c97f87060fffba6cb042cee602b9401ece9c9ff84e9949f7645ea8be27f`  
		Last Modified: Wed, 11 Jul 2018 09:54:25 GMT  
		Size: 14.0 MB (13988277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3329d98465ee7d7a2647df727b492cad25413b09d030c306627bd7407af4e9cf`  
		Last Modified: Wed, 11 Jul 2018 09:54:19 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7`

```console
$ docker pull traefik@sha256:6bd56652c7e833d2af080825e0b3b45a53e38f63abdebe3ef9c521ab419f5a18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.7` - linux; amd64

```console
$ docker pull traefik@sha256:a684eabb07572780ae26f2128b1d22927cd07a852d88653127894335e8c5d635
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.1 MB (16116024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a053c6ddab18e6f582cd1cdf2d7f4f3c9c5ccb668c39a531fd64d6e74907d26`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 16 Jun 2018 06:01:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 17 Jul 2018 23:29:41 GMT
COPY file:823416be9ca92c00616a43927a1342324ff5b2139a6851ddfa2548b8fe4a63c3 in / 
# Tue, 17 Jul 2018 23:29:42 GMT
EXPOSE 80/tcp
# Tue, 17 Jul 2018 23:29:42 GMT
ENTRYPOINT ["/traefik"]
# Tue, 17 Jul 2018 23:29:43 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:03732cc4924a93fcbcbed879c4c63aad534a63a64e9919eceddf48d7602407b5`  
		Last Modified: Sat, 16 Jun 2018 06:03:25 GMT  
		Size: 155.2 KB (155150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bf755c1d99376372ede988336880c06d371f91044aff02158d9846a458c6b04`  
		Last Modified: Tue, 17 Jul 2018 23:30:43 GMT  
		Size: 16.0 MB (15960874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7` - linux; arm variant v6

```console
$ docker pull traefik@sha256:36156e08b8534b5d6cd34034791e2c143d0dbab4fb346fd4e89ab45764ba4326
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 MB (15459185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f172b5e456286163eacd5611445db7eeb6cbc2a912c07eed9b9103e721379b67`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 18 Jul 2018 08:21:50 GMT
COPY file:7a22ad8b61835c41645746dff419d5d2e706d7023141e9d29e571f1c8ac8c510 in / 
# Wed, 18 Jul 2018 08:21:50 GMT
EXPOSE 80/tcp
# Wed, 18 Jul 2018 08:21:50 GMT
ENTRYPOINT ["/traefik"]
# Wed, 18 Jul 2018 08:21:50 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d66d80e6667c275375d1f6f6147bea10d432c02d7d2a9fe1276371768d28503`  
		Last Modified: Wed, 18 Jul 2018 08:22:21 GMT  
		Size: 15.3 MB (15304001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:c45119b395dfdc87d7311ca2a1ef4a3ac27e1496f53655bc65f6e29ceb1f05ba
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.2 MB (15167838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b686b53cf7e64da6b4055fccd14629c4c14ca4e0fa034c30b90ada3653a08aa`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 18 Jul 2018 08:40:13 GMT
COPY file:ddc5fa85afa58cee09434d7a5b68ee66d826b0fa09bd1595a03c76f85ee84183 in / 
# Wed, 18 Jul 2018 08:40:14 GMT
EXPOSE 80/tcp
# Wed, 18 Jul 2018 08:40:15 GMT
ENTRYPOINT ["/traefik"]
# Wed, 18 Jul 2018 08:40:15 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc839df70f175be3239a573ab6183006b9792db6df97def301ea31382330cafa`  
		Last Modified: Wed, 18 Jul 2018 08:41:35 GMT  
		Size: 15.0 MB (15012687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7.0-rc2`

```console
$ docker pull traefik@sha256:6bd56652c7e833d2af080825e0b3b45a53e38f63abdebe3ef9c521ab419f5a18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.7.0-rc2` - linux; amd64

```console
$ docker pull traefik@sha256:a684eabb07572780ae26f2128b1d22927cd07a852d88653127894335e8c5d635
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.1 MB (16116024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a053c6ddab18e6f582cd1cdf2d7f4f3c9c5ccb668c39a531fd64d6e74907d26`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 16 Jun 2018 06:01:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 17 Jul 2018 23:29:41 GMT
COPY file:823416be9ca92c00616a43927a1342324ff5b2139a6851ddfa2548b8fe4a63c3 in / 
# Tue, 17 Jul 2018 23:29:42 GMT
EXPOSE 80/tcp
# Tue, 17 Jul 2018 23:29:42 GMT
ENTRYPOINT ["/traefik"]
# Tue, 17 Jul 2018 23:29:43 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:03732cc4924a93fcbcbed879c4c63aad534a63a64e9919eceddf48d7602407b5`  
		Last Modified: Sat, 16 Jun 2018 06:03:25 GMT  
		Size: 155.2 KB (155150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bf755c1d99376372ede988336880c06d371f91044aff02158d9846a458c6b04`  
		Last Modified: Tue, 17 Jul 2018 23:30:43 GMT  
		Size: 16.0 MB (15960874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7.0-rc2` - linux; arm variant v6

```console
$ docker pull traefik@sha256:36156e08b8534b5d6cd34034791e2c143d0dbab4fb346fd4e89ab45764ba4326
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 MB (15459185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f172b5e456286163eacd5611445db7eeb6cbc2a912c07eed9b9103e721379b67`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 18 Jul 2018 08:21:50 GMT
COPY file:7a22ad8b61835c41645746dff419d5d2e706d7023141e9d29e571f1c8ac8c510 in / 
# Wed, 18 Jul 2018 08:21:50 GMT
EXPOSE 80/tcp
# Wed, 18 Jul 2018 08:21:50 GMT
ENTRYPOINT ["/traefik"]
# Wed, 18 Jul 2018 08:21:50 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d66d80e6667c275375d1f6f6147bea10d432c02d7d2a9fe1276371768d28503`  
		Last Modified: Wed, 18 Jul 2018 08:22:21 GMT  
		Size: 15.3 MB (15304001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7.0-rc2` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:c45119b395dfdc87d7311ca2a1ef4a3ac27e1496f53655bc65f6e29ceb1f05ba
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.2 MB (15167838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b686b53cf7e64da6b4055fccd14629c4c14ca4e0fa034c30b90ada3653a08aa`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 18 Jul 2018 08:40:13 GMT
COPY file:ddc5fa85afa58cee09434d7a5b68ee66d826b0fa09bd1595a03c76f85ee84183 in / 
# Wed, 18 Jul 2018 08:40:14 GMT
EXPOSE 80/tcp
# Wed, 18 Jul 2018 08:40:15 GMT
ENTRYPOINT ["/traefik"]
# Wed, 18 Jul 2018 08:40:15 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc839df70f175be3239a573ab6183006b9792db6df97def301ea31382330cafa`  
		Last Modified: Wed, 18 Jul 2018 08:41:35 GMT  
		Size: 15.0 MB (15012687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7.0-rc2-alpine`

```console
$ docker pull traefik@sha256:dc01545780ed1794099237be9cb656d2800a431010cab24136900904aefd2abc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.7.0-rc2-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:88b8a270f5fa5c5c04527c0faa52f370c5aca586548d85e1635f0863db1a7e8e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.5 MB (18493416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:822b3ba5e3bf2e54370408c1c6d097d0fcd0c6f636587195c69bd9bf33d059c9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 18:46:58 GMT
RUN apk --no-cache add ca-certificates
# Tue, 17 Jul 2018 23:30:02 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0-rc2/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Tue, 17 Jul 2018 23:30:02 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Tue, 17 Jul 2018 23:30:03 GMT
EXPOSE 80/tcp
# Tue, 17 Jul 2018 23:30:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 23:30:03 GMT
CMD ["traefik"]
# Tue, 17 Jul 2018 23:30:03 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc2 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:f1eaf7bf4e52cd19328a5bd336636410221ae33876e2ceaba978cddabb67fb8e`  
		Last Modified: Tue, 17 Jul 2018 23:32:23 GMT  
		Size: 16.1 MB (16127141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f50fb87983779d6775d549a7523c49734abcc7d3e8f14a5450de448ccca2851`  
		Last Modified: Tue, 17 Jul 2018 23:32:17 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7.0-rc2-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:c7629ab83072f319f189e013421f44d29b022e8b2ad82f680a6ad0f369745626
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17791050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5baaa0a719bf01194d40256add1316f618cfbfce0383879b03d253e16ed5d964`
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
# Wed, 18 Jul 2018 08:21:59 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0-rc2/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 18 Jul 2018 08:21:59 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 18 Jul 2018 08:21:59 GMT
EXPOSE 80/tcp
# Wed, 18 Jul 2018 08:21:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 18 Jul 2018 08:22:00 GMT
CMD ["traefik"]
# Wed, 18 Jul 2018 08:22:00 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc2 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:24075034056caa7543c1633aa9a337fac92147d69138320987f9f8a1b264bb81`  
		Last Modified: Wed, 18 Jul 2018 08:22:44 GMT  
		Size: 15.5 MB (15472399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e873407bc4f24012b9e844568ef3faacfd4c90122da6678fd394ba6aa8ca5d7`  
		Last Modified: Wed, 18 Jul 2018 08:22:39 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7.0-rc2-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:4fe9ec4169d2474c2e772a7763c62491b06f9a2ae3d88a2642272c08ed178b08
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.4 MB (17446677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cce913566be9c3c920ec019ecf21ebcd243f38fe79502292dc736c8bda6ed507`
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
# Wed, 18 Jul 2018 08:40:50 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0-rc2/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 18 Jul 2018 08:40:51 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 18 Jul 2018 08:40:52 GMT
EXPOSE 80/tcp
# Wed, 18 Jul 2018 08:40:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 18 Jul 2018 08:40:53 GMT
CMD ["traefik"]
# Wed, 18 Jul 2018 08:40:54 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc2 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:7d42455e61e5126f0c7a53e2bb871b19918fd1e346057c618f95b97c23a1ec64`  
		Last Modified: Wed, 18 Jul 2018 08:42:58 GMT  
		Size: 15.2 MB (15179916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd4c173c631f649e4826223b04f0c58d48e3394da6a902903668804205f13514`  
		Last Modified: Wed, 18 Jul 2018 08:42:53 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7-alpine`

```console
$ docker pull traefik@sha256:dc01545780ed1794099237be9cb656d2800a431010cab24136900904aefd2abc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.7-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:88b8a270f5fa5c5c04527c0faa52f370c5aca586548d85e1635f0863db1a7e8e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.5 MB (18493416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:822b3ba5e3bf2e54370408c1c6d097d0fcd0c6f636587195c69bd9bf33d059c9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 18:46:58 GMT
RUN apk --no-cache add ca-certificates
# Tue, 17 Jul 2018 23:30:02 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0-rc2/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Tue, 17 Jul 2018 23:30:02 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Tue, 17 Jul 2018 23:30:03 GMT
EXPOSE 80/tcp
# Tue, 17 Jul 2018 23:30:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 23:30:03 GMT
CMD ["traefik"]
# Tue, 17 Jul 2018 23:30:03 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc2 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:f1eaf7bf4e52cd19328a5bd336636410221ae33876e2ceaba978cddabb67fb8e`  
		Last Modified: Tue, 17 Jul 2018 23:32:23 GMT  
		Size: 16.1 MB (16127141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f50fb87983779d6775d549a7523c49734abcc7d3e8f14a5450de448ccca2851`  
		Last Modified: Tue, 17 Jul 2018 23:32:17 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:c7629ab83072f319f189e013421f44d29b022e8b2ad82f680a6ad0f369745626
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17791050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5baaa0a719bf01194d40256add1316f618cfbfce0383879b03d253e16ed5d964`
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
# Wed, 18 Jul 2018 08:21:59 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0-rc2/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 18 Jul 2018 08:21:59 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 18 Jul 2018 08:21:59 GMT
EXPOSE 80/tcp
# Wed, 18 Jul 2018 08:21:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 18 Jul 2018 08:22:00 GMT
CMD ["traefik"]
# Wed, 18 Jul 2018 08:22:00 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc2 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:24075034056caa7543c1633aa9a337fac92147d69138320987f9f8a1b264bb81`  
		Last Modified: Wed, 18 Jul 2018 08:22:44 GMT  
		Size: 15.5 MB (15472399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e873407bc4f24012b9e844568ef3faacfd4c90122da6678fd394ba6aa8ca5d7`  
		Last Modified: Wed, 18 Jul 2018 08:22:39 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:4fe9ec4169d2474c2e772a7763c62491b06f9a2ae3d88a2642272c08ed178b08
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.4 MB (17446677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cce913566be9c3c920ec019ecf21ebcd243f38fe79502292dc736c8bda6ed507`
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
# Wed, 18 Jul 2018 08:40:50 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0-rc2/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 18 Jul 2018 08:40:51 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 18 Jul 2018 08:40:52 GMT
EXPOSE 80/tcp
# Wed, 18 Jul 2018 08:40:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 18 Jul 2018 08:40:53 GMT
CMD ["traefik"]
# Wed, 18 Jul 2018 08:40:54 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc2 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:7d42455e61e5126f0c7a53e2bb871b19918fd1e346057c618f95b97c23a1ec64`  
		Last Modified: Wed, 18 Jul 2018 08:42:58 GMT  
		Size: 15.2 MB (15179916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd4c173c631f649e4826223b04f0c58d48e3394da6a902903668804205f13514`  
		Last Modified: Wed, 18 Jul 2018 08:42:53 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:alpine`

```console
$ docker pull traefik@sha256:1ead48163fdcc13129e1da073c936d98c36cfb85d740450d2aad65a9f19eae7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:alpine` - linux; amd64

```console
$ docker pull traefik@sha256:4deef77f1919ac49d92ae1e640fd849b184ef92c2cd116101b85833c2396b141
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17267757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2762fe66f6ce85b43023c568ba77ed98a319e105181625ab0757c3e91e6ff92d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 18:46:58 GMT
RUN apk --no-cache add ca-certificates
# Tue, 10 Jul 2018 21:40:01 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.5/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Tue, 10 Jul 2018 21:40:02 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Tue, 10 Jul 2018 21:40:02 GMT
EXPOSE 80/tcp
# Tue, 10 Jul 2018 21:40:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 10 Jul 2018 21:40:02 GMT
CMD ["traefik"]
# Tue, 10 Jul 2018 21:40:03 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.5 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:3ee9c4cc408948b2dabb958472d3e5ccf47d105bd7a9738bdd95ba954413f3af`  
		Last Modified: Tue, 10 Jul 2018 21:42:04 GMT  
		Size: 14.9 MB (14901481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d49691f3590e5701d4b437625fba1c7bc124d225e740943e081abfe07e99695c`  
		Last Modified: Tue, 10 Jul 2018 21:41:57 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:3724813239e0a7f01b652cf5327bdd97c1e56d0ea9fc3182c87e732695e0023c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.6 MB (16600193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:872e72450ce16793674ced9c0d19351dd73927c19fe071b7d8d9a3ece0c26cdc`
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
# Wed, 11 Jul 2018 08:14:13 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.5/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 11 Jul 2018 08:14:13 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 11 Jul 2018 08:14:13 GMT
EXPOSE 80/tcp
# Wed, 11 Jul 2018 08:14:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Jul 2018 08:14:14 GMT
CMD ["traefik"]
# Wed, 11 Jul 2018 08:14:14 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.5 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:460ff6fb16f3a441230952b50d88364b36232afda7514a0e5c8babe47cd298e5`  
		Last Modified: Wed, 11 Jul 2018 08:14:51 GMT  
		Size: 14.3 MB (14281542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7dec1c21dd9dfd0eba1ed8b069aafd2b7445a049cbe0385bbf02e57ef681c9c`  
		Last Modified: Wed, 11 Jul 2018 08:14:47 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:cf1d6380d94d68e1ca2b08be002cdd26d144d164212e14a59c2e0faf439064d1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.3 MB (16255035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3addbad06b7bdae21ba2fe86322f19df532dcd00cccf5aa843e480d090537642`
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
# Wed, 11 Jul 2018 09:51:30 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.5/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 11 Jul 2018 09:51:37 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 11 Jul 2018 09:51:38 GMT
EXPOSE 80/tcp
# Wed, 11 Jul 2018 09:51:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Jul 2018 09:51:39 GMT
CMD ["traefik"]
# Wed, 11 Jul 2018 09:51:50 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.5 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:c38a1c97f87060fffba6cb042cee602b9401ece9c9ff84e9949f7645ea8be27f`  
		Last Modified: Wed, 11 Jul 2018 09:54:25 GMT  
		Size: 14.0 MB (13988277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3329d98465ee7d7a2647df727b492cad25413b09d030c306627bd7407af4e9cf`  
		Last Modified: Wed, 11 Jul 2018 09:54:19 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:latest`

```console
$ docker pull traefik@sha256:eabb39016917bd43e738fb8bada87be076d4553b5617037922b187c0a656f4a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:latest` - linux; amd64

```console
$ docker pull traefik@sha256:e65103d16ded975f0193c2357ccf1de13ebb5946894d91cf1c76ea23033d0476
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.9 MB (14888824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11569c00178041f0502a3251a2d33196c9a153c564814bc9f712c704a85200c2`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 16 Jun 2018 06:01:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 10 Jul 2018 21:39:44 GMT
COPY file:ba6114281de19b8e363e82ed5b30471e264464b79049c538a86b7eae309ab46e in / 
# Tue, 10 Jul 2018 21:39:44 GMT
EXPOSE 80/tcp
# Tue, 10 Jul 2018 21:39:44 GMT
ENTRYPOINT ["/traefik"]
# Tue, 10 Jul 2018 21:39:44 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:03732cc4924a93fcbcbed879c4c63aad534a63a64e9919eceddf48d7602407b5`  
		Last Modified: Sat, 16 Jun 2018 06:03:25 GMT  
		Size: 155.2 KB (155150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6023e30b264079307436d6b5d179f0626dde61945e201ef70ab81993d5e7ee15`  
		Last Modified: Tue, 10 Jul 2018 21:40:34 GMT  
		Size: 14.7 MB (14733674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:latest` - linux; arm variant v6

```console
$ docker pull traefik@sha256:6cb42aa3a9df510b013db2cfc667f100fa54e728c3f78205f7d9f2b1030e30b2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14269549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94276d023e180d5ce7d2f6ea7fedde4408b5fb1d091caa651dd3580338c40018`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 11 Jul 2018 08:14:05 GMT
COPY file:0f002d1dc12160ff0052e3979265fc542a8a7f6cafcc4d87880ca1762a2b96b0 in / 
# Wed, 11 Jul 2018 08:14:05 GMT
EXPOSE 80/tcp
# Wed, 11 Jul 2018 08:14:05 GMT
ENTRYPOINT ["/traefik"]
# Wed, 11 Jul 2018 08:14:05 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee51eed0bc1f59a26e1d8065820c03f9d7b3239520690b71fea260dfd841fba1`  
		Last Modified: Wed, 11 Jul 2018 08:14:29 GMT  
		Size: 14.1 MB (14114365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:latest` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:e12dd92e9ae06784bd17d81bd8b391ff671c8a4f58abc8f8f662060b39140743
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13974469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3781837d3ba28ee967571c3b92d25272c051e47a94c38642cbcf38a517b2f178`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 11 Jul 2018 09:50:55 GMT
COPY file:0f98eaf6cc0ecdc5e0d6e4b4f2ab37f2bee2e08fa7ac8a9d891918cc83673cdd in / 
# Wed, 11 Jul 2018 09:50:56 GMT
EXPOSE 80/tcp
# Wed, 11 Jul 2018 09:50:57 GMT
ENTRYPOINT ["/traefik"]
# Wed, 11 Jul 2018 09:50:57 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c380abe0eadf15052dc9ca02792f1d35e0bd8a2cb1689c7ed60234587e482f0`  
		Last Modified: Wed, 11 Jul 2018 09:52:34 GMT  
		Size: 13.8 MB (13819318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:maroilles`

```console
$ docker pull traefik@sha256:6bd56652c7e833d2af080825e0b3b45a53e38f63abdebe3ef9c521ab419f5a18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:maroilles` - linux; amd64

```console
$ docker pull traefik@sha256:a684eabb07572780ae26f2128b1d22927cd07a852d88653127894335e8c5d635
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.1 MB (16116024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a053c6ddab18e6f582cd1cdf2d7f4f3c9c5ccb668c39a531fd64d6e74907d26`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 16 Jun 2018 06:01:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 17 Jul 2018 23:29:41 GMT
COPY file:823416be9ca92c00616a43927a1342324ff5b2139a6851ddfa2548b8fe4a63c3 in / 
# Tue, 17 Jul 2018 23:29:42 GMT
EXPOSE 80/tcp
# Tue, 17 Jul 2018 23:29:42 GMT
ENTRYPOINT ["/traefik"]
# Tue, 17 Jul 2018 23:29:43 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:03732cc4924a93fcbcbed879c4c63aad534a63a64e9919eceddf48d7602407b5`  
		Last Modified: Sat, 16 Jun 2018 06:03:25 GMT  
		Size: 155.2 KB (155150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bf755c1d99376372ede988336880c06d371f91044aff02158d9846a458c6b04`  
		Last Modified: Tue, 17 Jul 2018 23:30:43 GMT  
		Size: 16.0 MB (15960874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:maroilles` - linux; arm variant v6

```console
$ docker pull traefik@sha256:36156e08b8534b5d6cd34034791e2c143d0dbab4fb346fd4e89ab45764ba4326
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 MB (15459185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f172b5e456286163eacd5611445db7eeb6cbc2a912c07eed9b9103e721379b67`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 18 Jul 2018 08:21:50 GMT
COPY file:7a22ad8b61835c41645746dff419d5d2e706d7023141e9d29e571f1c8ac8c510 in / 
# Wed, 18 Jul 2018 08:21:50 GMT
EXPOSE 80/tcp
# Wed, 18 Jul 2018 08:21:50 GMT
ENTRYPOINT ["/traefik"]
# Wed, 18 Jul 2018 08:21:50 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d66d80e6667c275375d1f6f6147bea10d432c02d7d2a9fe1276371768d28503`  
		Last Modified: Wed, 18 Jul 2018 08:22:21 GMT  
		Size: 15.3 MB (15304001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:maroilles` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:c45119b395dfdc87d7311ca2a1ef4a3ac27e1496f53655bc65f6e29ceb1f05ba
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.2 MB (15167838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b686b53cf7e64da6b4055fccd14629c4c14ca4e0fa034c30b90ada3653a08aa`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 18 Jul 2018 08:40:13 GMT
COPY file:ddc5fa85afa58cee09434d7a5b68ee66d826b0fa09bd1595a03c76f85ee84183 in / 
# Wed, 18 Jul 2018 08:40:14 GMT
EXPOSE 80/tcp
# Wed, 18 Jul 2018 08:40:15 GMT
ENTRYPOINT ["/traefik"]
# Wed, 18 Jul 2018 08:40:15 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc839df70f175be3239a573ab6183006b9792db6df97def301ea31382330cafa`  
		Last Modified: Wed, 18 Jul 2018 08:41:35 GMT  
		Size: 15.0 MB (15012687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:maroilles-alpine`

```console
$ docker pull traefik@sha256:dc01545780ed1794099237be9cb656d2800a431010cab24136900904aefd2abc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:maroilles-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:88b8a270f5fa5c5c04527c0faa52f370c5aca586548d85e1635f0863db1a7e8e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.5 MB (18493416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:822b3ba5e3bf2e54370408c1c6d097d0fcd0c6f636587195c69bd9bf33d059c9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 18:46:58 GMT
RUN apk --no-cache add ca-certificates
# Tue, 17 Jul 2018 23:30:02 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0-rc2/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Tue, 17 Jul 2018 23:30:02 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Tue, 17 Jul 2018 23:30:03 GMT
EXPOSE 80/tcp
# Tue, 17 Jul 2018 23:30:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 23:30:03 GMT
CMD ["traefik"]
# Tue, 17 Jul 2018 23:30:03 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc2 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:f1eaf7bf4e52cd19328a5bd336636410221ae33876e2ceaba978cddabb67fb8e`  
		Last Modified: Tue, 17 Jul 2018 23:32:23 GMT  
		Size: 16.1 MB (16127141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f50fb87983779d6775d549a7523c49734abcc7d3e8f14a5450de448ccca2851`  
		Last Modified: Tue, 17 Jul 2018 23:32:17 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:maroilles-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:c7629ab83072f319f189e013421f44d29b022e8b2ad82f680a6ad0f369745626
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17791050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5baaa0a719bf01194d40256add1316f618cfbfce0383879b03d253e16ed5d964`
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
# Wed, 18 Jul 2018 08:21:59 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0-rc2/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 18 Jul 2018 08:21:59 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 18 Jul 2018 08:21:59 GMT
EXPOSE 80/tcp
# Wed, 18 Jul 2018 08:21:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 18 Jul 2018 08:22:00 GMT
CMD ["traefik"]
# Wed, 18 Jul 2018 08:22:00 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc2 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:24075034056caa7543c1633aa9a337fac92147d69138320987f9f8a1b264bb81`  
		Last Modified: Wed, 18 Jul 2018 08:22:44 GMT  
		Size: 15.5 MB (15472399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e873407bc4f24012b9e844568ef3faacfd4c90122da6678fd394ba6aa8ca5d7`  
		Last Modified: Wed, 18 Jul 2018 08:22:39 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:maroilles-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:4fe9ec4169d2474c2e772a7763c62491b06f9a2ae3d88a2642272c08ed178b08
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.4 MB (17446677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cce913566be9c3c920ec019ecf21ebcd243f38fe79502292dc736c8bda6ed507`
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
# Wed, 18 Jul 2018 08:40:50 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0-rc2/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 18 Jul 2018 08:40:51 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 18 Jul 2018 08:40:52 GMT
EXPOSE 80/tcp
# Wed, 18 Jul 2018 08:40:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 18 Jul 2018 08:40:53 GMT
CMD ["traefik"]
# Wed, 18 Jul 2018 08:40:54 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc2 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:7d42455e61e5126f0c7a53e2bb871b19918fd1e346057c618f95b97c23a1ec64`  
		Last Modified: Wed, 18 Jul 2018 08:42:58 GMT  
		Size: 15.2 MB (15179916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd4c173c631f649e4826223b04f0c58d48e3394da6a902903668804205f13514`  
		Last Modified: Wed, 18 Jul 2018 08:42:53 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:tetedemoine`

```console
$ docker pull traefik@sha256:eabb39016917bd43e738fb8bada87be076d4553b5617037922b187c0a656f4a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:tetedemoine` - linux; amd64

```console
$ docker pull traefik@sha256:e65103d16ded975f0193c2357ccf1de13ebb5946894d91cf1c76ea23033d0476
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.9 MB (14888824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11569c00178041f0502a3251a2d33196c9a153c564814bc9f712c704a85200c2`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 16 Jun 2018 06:01:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 10 Jul 2018 21:39:44 GMT
COPY file:ba6114281de19b8e363e82ed5b30471e264464b79049c538a86b7eae309ab46e in / 
# Tue, 10 Jul 2018 21:39:44 GMT
EXPOSE 80/tcp
# Tue, 10 Jul 2018 21:39:44 GMT
ENTRYPOINT ["/traefik"]
# Tue, 10 Jul 2018 21:39:44 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:03732cc4924a93fcbcbed879c4c63aad534a63a64e9919eceddf48d7602407b5`  
		Last Modified: Sat, 16 Jun 2018 06:03:25 GMT  
		Size: 155.2 KB (155150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6023e30b264079307436d6b5d179f0626dde61945e201ef70ab81993d5e7ee15`  
		Last Modified: Tue, 10 Jul 2018 21:40:34 GMT  
		Size: 14.7 MB (14733674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:tetedemoine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:6cb42aa3a9df510b013db2cfc667f100fa54e728c3f78205f7d9f2b1030e30b2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14269549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94276d023e180d5ce7d2f6ea7fedde4408b5fb1d091caa651dd3580338c40018`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 11 Jul 2018 08:14:05 GMT
COPY file:0f002d1dc12160ff0052e3979265fc542a8a7f6cafcc4d87880ca1762a2b96b0 in / 
# Wed, 11 Jul 2018 08:14:05 GMT
EXPOSE 80/tcp
# Wed, 11 Jul 2018 08:14:05 GMT
ENTRYPOINT ["/traefik"]
# Wed, 11 Jul 2018 08:14:05 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee51eed0bc1f59a26e1d8065820c03f9d7b3239520690b71fea260dfd841fba1`  
		Last Modified: Wed, 11 Jul 2018 08:14:29 GMT  
		Size: 14.1 MB (14114365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:tetedemoine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:e12dd92e9ae06784bd17d81bd8b391ff671c8a4f58abc8f8f662060b39140743
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13974469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3781837d3ba28ee967571c3b92d25272c051e47a94c38642cbcf38a517b2f178`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 11 Jul 2018 09:50:55 GMT
COPY file:0f98eaf6cc0ecdc5e0d6e4b4f2ab37f2bee2e08fa7ac8a9d891918cc83673cdd in / 
# Wed, 11 Jul 2018 09:50:56 GMT
EXPOSE 80/tcp
# Wed, 11 Jul 2018 09:50:57 GMT
ENTRYPOINT ["/traefik"]
# Wed, 11 Jul 2018 09:50:57 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c380abe0eadf15052dc9ca02792f1d35e0bd8a2cb1689c7ed60234587e482f0`  
		Last Modified: Wed, 11 Jul 2018 09:52:34 GMT  
		Size: 13.8 MB (13819318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:tetedemoine-alpine`

```console
$ docker pull traefik@sha256:1ead48163fdcc13129e1da073c936d98c36cfb85d740450d2aad65a9f19eae7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:tetedemoine-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:4deef77f1919ac49d92ae1e640fd849b184ef92c2cd116101b85833c2396b141
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17267757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2762fe66f6ce85b43023c568ba77ed98a319e105181625ab0757c3e91e6ff92d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 18:46:58 GMT
RUN apk --no-cache add ca-certificates
# Tue, 10 Jul 2018 21:40:01 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.5/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Tue, 10 Jul 2018 21:40:02 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Tue, 10 Jul 2018 21:40:02 GMT
EXPOSE 80/tcp
# Tue, 10 Jul 2018 21:40:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 10 Jul 2018 21:40:02 GMT
CMD ["traefik"]
# Tue, 10 Jul 2018 21:40:03 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.5 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:3ee9c4cc408948b2dabb958472d3e5ccf47d105bd7a9738bdd95ba954413f3af`  
		Last Modified: Tue, 10 Jul 2018 21:42:04 GMT  
		Size: 14.9 MB (14901481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d49691f3590e5701d4b437625fba1c7bc124d225e740943e081abfe07e99695c`  
		Last Modified: Tue, 10 Jul 2018 21:41:57 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:tetedemoine-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:3724813239e0a7f01b652cf5327bdd97c1e56d0ea9fc3182c87e732695e0023c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.6 MB (16600193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:872e72450ce16793674ced9c0d19351dd73927c19fe071b7d8d9a3ece0c26cdc`
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
# Wed, 11 Jul 2018 08:14:13 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.5/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 11 Jul 2018 08:14:13 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 11 Jul 2018 08:14:13 GMT
EXPOSE 80/tcp
# Wed, 11 Jul 2018 08:14:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Jul 2018 08:14:14 GMT
CMD ["traefik"]
# Wed, 11 Jul 2018 08:14:14 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.5 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:460ff6fb16f3a441230952b50d88364b36232afda7514a0e5c8babe47cd298e5`  
		Last Modified: Wed, 11 Jul 2018 08:14:51 GMT  
		Size: 14.3 MB (14281542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7dec1c21dd9dfd0eba1ed8b069aafd2b7445a049cbe0385bbf02e57ef681c9c`  
		Last Modified: Wed, 11 Jul 2018 08:14:47 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:tetedemoine-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:cf1d6380d94d68e1ca2b08be002cdd26d144d164212e14a59c2e0faf439064d1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.3 MB (16255035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3addbad06b7bdae21ba2fe86322f19df532dcd00cccf5aa843e480d090537642`
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
# Wed, 11 Jul 2018 09:51:30 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.5/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 11 Jul 2018 09:51:37 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 11 Jul 2018 09:51:38 GMT
EXPOSE 80/tcp
# Wed, 11 Jul 2018 09:51:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Jul 2018 09:51:39 GMT
CMD ["traefik"]
# Wed, 11 Jul 2018 09:51:50 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.5 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:c38a1c97f87060fffba6cb042cee602b9401ece9c9ff84e9949f7645ea8be27f`  
		Last Modified: Wed, 11 Jul 2018 09:54:25 GMT  
		Size: 14.0 MB (13988277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3329d98465ee7d7a2647df727b492cad25413b09d030c306627bd7407af4e9cf`  
		Last Modified: Wed, 11 Jul 2018 09:54:19 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.6`

```console
$ docker pull traefik@sha256:eabb39016917bd43e738fb8bada87be076d4553b5617037922b187c0a656f4a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.6` - linux; amd64

```console
$ docker pull traefik@sha256:e65103d16ded975f0193c2357ccf1de13ebb5946894d91cf1c76ea23033d0476
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.9 MB (14888824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11569c00178041f0502a3251a2d33196c9a153c564814bc9f712c704a85200c2`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 16 Jun 2018 06:01:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 10 Jul 2018 21:39:44 GMT
COPY file:ba6114281de19b8e363e82ed5b30471e264464b79049c538a86b7eae309ab46e in / 
# Tue, 10 Jul 2018 21:39:44 GMT
EXPOSE 80/tcp
# Tue, 10 Jul 2018 21:39:44 GMT
ENTRYPOINT ["/traefik"]
# Tue, 10 Jul 2018 21:39:44 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:03732cc4924a93fcbcbed879c4c63aad534a63a64e9919eceddf48d7602407b5`  
		Last Modified: Sat, 16 Jun 2018 06:03:25 GMT  
		Size: 155.2 KB (155150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6023e30b264079307436d6b5d179f0626dde61945e201ef70ab81993d5e7ee15`  
		Last Modified: Tue, 10 Jul 2018 21:40:34 GMT  
		Size: 14.7 MB (14733674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.6` - linux; arm variant v6

```console
$ docker pull traefik@sha256:6cb42aa3a9df510b013db2cfc667f100fa54e728c3f78205f7d9f2b1030e30b2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14269549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94276d023e180d5ce7d2f6ea7fedde4408b5fb1d091caa651dd3580338c40018`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 11 Jul 2018 08:14:05 GMT
COPY file:0f002d1dc12160ff0052e3979265fc542a8a7f6cafcc4d87880ca1762a2b96b0 in / 
# Wed, 11 Jul 2018 08:14:05 GMT
EXPOSE 80/tcp
# Wed, 11 Jul 2018 08:14:05 GMT
ENTRYPOINT ["/traefik"]
# Wed, 11 Jul 2018 08:14:05 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee51eed0bc1f59a26e1d8065820c03f9d7b3239520690b71fea260dfd841fba1`  
		Last Modified: Wed, 11 Jul 2018 08:14:29 GMT  
		Size: 14.1 MB (14114365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.6` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:e12dd92e9ae06784bd17d81bd8b391ff671c8a4f58abc8f8f662060b39140743
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13974469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3781837d3ba28ee967571c3b92d25272c051e47a94c38642cbcf38a517b2f178`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 11 Jul 2018 09:50:55 GMT
COPY file:0f98eaf6cc0ecdc5e0d6e4b4f2ab37f2bee2e08fa7ac8a9d891918cc83673cdd in / 
# Wed, 11 Jul 2018 09:50:56 GMT
EXPOSE 80/tcp
# Wed, 11 Jul 2018 09:50:57 GMT
ENTRYPOINT ["/traefik"]
# Wed, 11 Jul 2018 09:50:57 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c380abe0eadf15052dc9ca02792f1d35e0bd8a2cb1689c7ed60234587e482f0`  
		Last Modified: Wed, 11 Jul 2018 09:52:34 GMT  
		Size: 13.8 MB (13819318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.6.5`

```console
$ docker pull traefik@sha256:eabb39016917bd43e738fb8bada87be076d4553b5617037922b187c0a656f4a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.6.5` - linux; amd64

```console
$ docker pull traefik@sha256:e65103d16ded975f0193c2357ccf1de13ebb5946894d91cf1c76ea23033d0476
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.9 MB (14888824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11569c00178041f0502a3251a2d33196c9a153c564814bc9f712c704a85200c2`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 16 Jun 2018 06:01:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 10 Jul 2018 21:39:44 GMT
COPY file:ba6114281de19b8e363e82ed5b30471e264464b79049c538a86b7eae309ab46e in / 
# Tue, 10 Jul 2018 21:39:44 GMT
EXPOSE 80/tcp
# Tue, 10 Jul 2018 21:39:44 GMT
ENTRYPOINT ["/traefik"]
# Tue, 10 Jul 2018 21:39:44 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:03732cc4924a93fcbcbed879c4c63aad534a63a64e9919eceddf48d7602407b5`  
		Last Modified: Sat, 16 Jun 2018 06:03:25 GMT  
		Size: 155.2 KB (155150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6023e30b264079307436d6b5d179f0626dde61945e201ef70ab81993d5e7ee15`  
		Last Modified: Tue, 10 Jul 2018 21:40:34 GMT  
		Size: 14.7 MB (14733674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.6.5` - linux; arm variant v6

```console
$ docker pull traefik@sha256:6cb42aa3a9df510b013db2cfc667f100fa54e728c3f78205f7d9f2b1030e30b2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14269549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94276d023e180d5ce7d2f6ea7fedde4408b5fb1d091caa651dd3580338c40018`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 11 Jul 2018 08:14:05 GMT
COPY file:0f002d1dc12160ff0052e3979265fc542a8a7f6cafcc4d87880ca1762a2b96b0 in / 
# Wed, 11 Jul 2018 08:14:05 GMT
EXPOSE 80/tcp
# Wed, 11 Jul 2018 08:14:05 GMT
ENTRYPOINT ["/traefik"]
# Wed, 11 Jul 2018 08:14:05 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee51eed0bc1f59a26e1d8065820c03f9d7b3239520690b71fea260dfd841fba1`  
		Last Modified: Wed, 11 Jul 2018 08:14:29 GMT  
		Size: 14.1 MB (14114365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.6.5` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:e12dd92e9ae06784bd17d81bd8b391ff671c8a4f58abc8f8f662060b39140743
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13974469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3781837d3ba28ee967571c3b92d25272c051e47a94c38642cbcf38a517b2f178`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 11 Jul 2018 09:50:55 GMT
COPY file:0f98eaf6cc0ecdc5e0d6e4b4f2ab37f2bee2e08fa7ac8a9d891918cc83673cdd in / 
# Wed, 11 Jul 2018 09:50:56 GMT
EXPOSE 80/tcp
# Wed, 11 Jul 2018 09:50:57 GMT
ENTRYPOINT ["/traefik"]
# Wed, 11 Jul 2018 09:50:57 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c380abe0eadf15052dc9ca02792f1d35e0bd8a2cb1689c7ed60234587e482f0`  
		Last Modified: Wed, 11 Jul 2018 09:52:34 GMT  
		Size: 13.8 MB (13819318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.6.5-alpine`

```console
$ docker pull traefik@sha256:1ead48163fdcc13129e1da073c936d98c36cfb85d740450d2aad65a9f19eae7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.6.5-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:4deef77f1919ac49d92ae1e640fd849b184ef92c2cd116101b85833c2396b141
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17267757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2762fe66f6ce85b43023c568ba77ed98a319e105181625ab0757c3e91e6ff92d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 18:46:58 GMT
RUN apk --no-cache add ca-certificates
# Tue, 10 Jul 2018 21:40:01 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.5/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Tue, 10 Jul 2018 21:40:02 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Tue, 10 Jul 2018 21:40:02 GMT
EXPOSE 80/tcp
# Tue, 10 Jul 2018 21:40:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 10 Jul 2018 21:40:02 GMT
CMD ["traefik"]
# Tue, 10 Jul 2018 21:40:03 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.5 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:3ee9c4cc408948b2dabb958472d3e5ccf47d105bd7a9738bdd95ba954413f3af`  
		Last Modified: Tue, 10 Jul 2018 21:42:04 GMT  
		Size: 14.9 MB (14901481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d49691f3590e5701d4b437625fba1c7bc124d225e740943e081abfe07e99695c`  
		Last Modified: Tue, 10 Jul 2018 21:41:57 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.6.5-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:3724813239e0a7f01b652cf5327bdd97c1e56d0ea9fc3182c87e732695e0023c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.6 MB (16600193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:872e72450ce16793674ced9c0d19351dd73927c19fe071b7d8d9a3ece0c26cdc`
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
# Wed, 11 Jul 2018 08:14:13 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.5/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 11 Jul 2018 08:14:13 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 11 Jul 2018 08:14:13 GMT
EXPOSE 80/tcp
# Wed, 11 Jul 2018 08:14:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Jul 2018 08:14:14 GMT
CMD ["traefik"]
# Wed, 11 Jul 2018 08:14:14 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.5 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:460ff6fb16f3a441230952b50d88364b36232afda7514a0e5c8babe47cd298e5`  
		Last Modified: Wed, 11 Jul 2018 08:14:51 GMT  
		Size: 14.3 MB (14281542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7dec1c21dd9dfd0eba1ed8b069aafd2b7445a049cbe0385bbf02e57ef681c9c`  
		Last Modified: Wed, 11 Jul 2018 08:14:47 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.6.5-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:cf1d6380d94d68e1ca2b08be002cdd26d144d164212e14a59c2e0faf439064d1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.3 MB (16255035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3addbad06b7bdae21ba2fe86322f19df532dcd00cccf5aa843e480d090537642`
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
# Wed, 11 Jul 2018 09:51:30 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.5/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 11 Jul 2018 09:51:37 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 11 Jul 2018 09:51:38 GMT
EXPOSE 80/tcp
# Wed, 11 Jul 2018 09:51:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Jul 2018 09:51:39 GMT
CMD ["traefik"]
# Wed, 11 Jul 2018 09:51:50 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.5 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:c38a1c97f87060fffba6cb042cee602b9401ece9c9ff84e9949f7645ea8be27f`  
		Last Modified: Wed, 11 Jul 2018 09:54:25 GMT  
		Size: 14.0 MB (13988277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3329d98465ee7d7a2647df727b492cad25413b09d030c306627bd7407af4e9cf`  
		Last Modified: Wed, 11 Jul 2018 09:54:19 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.6-alpine`

```console
$ docker pull traefik@sha256:1ead48163fdcc13129e1da073c936d98c36cfb85d740450d2aad65a9f19eae7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.6-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:4deef77f1919ac49d92ae1e640fd849b184ef92c2cd116101b85833c2396b141
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17267757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2762fe66f6ce85b43023c568ba77ed98a319e105181625ab0757c3e91e6ff92d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 18:46:58 GMT
RUN apk --no-cache add ca-certificates
# Tue, 10 Jul 2018 21:40:01 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.5/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Tue, 10 Jul 2018 21:40:02 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Tue, 10 Jul 2018 21:40:02 GMT
EXPOSE 80/tcp
# Tue, 10 Jul 2018 21:40:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 10 Jul 2018 21:40:02 GMT
CMD ["traefik"]
# Tue, 10 Jul 2018 21:40:03 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.5 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:3ee9c4cc408948b2dabb958472d3e5ccf47d105bd7a9738bdd95ba954413f3af`  
		Last Modified: Tue, 10 Jul 2018 21:42:04 GMT  
		Size: 14.9 MB (14901481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d49691f3590e5701d4b437625fba1c7bc124d225e740943e081abfe07e99695c`  
		Last Modified: Tue, 10 Jul 2018 21:41:57 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.6-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:3724813239e0a7f01b652cf5327bdd97c1e56d0ea9fc3182c87e732695e0023c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.6 MB (16600193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:872e72450ce16793674ced9c0d19351dd73927c19fe071b7d8d9a3ece0c26cdc`
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
# Wed, 11 Jul 2018 08:14:13 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.5/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 11 Jul 2018 08:14:13 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 11 Jul 2018 08:14:13 GMT
EXPOSE 80/tcp
# Wed, 11 Jul 2018 08:14:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Jul 2018 08:14:14 GMT
CMD ["traefik"]
# Wed, 11 Jul 2018 08:14:14 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.5 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:460ff6fb16f3a441230952b50d88364b36232afda7514a0e5c8babe47cd298e5`  
		Last Modified: Wed, 11 Jul 2018 08:14:51 GMT  
		Size: 14.3 MB (14281542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7dec1c21dd9dfd0eba1ed8b069aafd2b7445a049cbe0385bbf02e57ef681c9c`  
		Last Modified: Wed, 11 Jul 2018 08:14:47 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.6-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:cf1d6380d94d68e1ca2b08be002cdd26d144d164212e14a59c2e0faf439064d1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.3 MB (16255035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3addbad06b7bdae21ba2fe86322f19df532dcd00cccf5aa843e480d090537642`
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
# Wed, 11 Jul 2018 09:51:30 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.5/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 11 Jul 2018 09:51:37 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 11 Jul 2018 09:51:38 GMT
EXPOSE 80/tcp
# Wed, 11 Jul 2018 09:51:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Jul 2018 09:51:39 GMT
CMD ["traefik"]
# Wed, 11 Jul 2018 09:51:50 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.5 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:c38a1c97f87060fffba6cb042cee602b9401ece9c9ff84e9949f7645ea8be27f`  
		Last Modified: Wed, 11 Jul 2018 09:54:25 GMT  
		Size: 14.0 MB (13988277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3329d98465ee7d7a2647df727b492cad25413b09d030c306627bd7407af4e9cf`  
		Last Modified: Wed, 11 Jul 2018 09:54:19 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7`

```console
$ docker pull traefik@sha256:6bd56652c7e833d2af080825e0b3b45a53e38f63abdebe3ef9c521ab419f5a18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.7` - linux; amd64

```console
$ docker pull traefik@sha256:a684eabb07572780ae26f2128b1d22927cd07a852d88653127894335e8c5d635
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.1 MB (16116024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a053c6ddab18e6f582cd1cdf2d7f4f3c9c5ccb668c39a531fd64d6e74907d26`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 16 Jun 2018 06:01:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 17 Jul 2018 23:29:41 GMT
COPY file:823416be9ca92c00616a43927a1342324ff5b2139a6851ddfa2548b8fe4a63c3 in / 
# Tue, 17 Jul 2018 23:29:42 GMT
EXPOSE 80/tcp
# Tue, 17 Jul 2018 23:29:42 GMT
ENTRYPOINT ["/traefik"]
# Tue, 17 Jul 2018 23:29:43 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:03732cc4924a93fcbcbed879c4c63aad534a63a64e9919eceddf48d7602407b5`  
		Last Modified: Sat, 16 Jun 2018 06:03:25 GMT  
		Size: 155.2 KB (155150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bf755c1d99376372ede988336880c06d371f91044aff02158d9846a458c6b04`  
		Last Modified: Tue, 17 Jul 2018 23:30:43 GMT  
		Size: 16.0 MB (15960874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7` - linux; arm variant v6

```console
$ docker pull traefik@sha256:36156e08b8534b5d6cd34034791e2c143d0dbab4fb346fd4e89ab45764ba4326
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 MB (15459185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f172b5e456286163eacd5611445db7eeb6cbc2a912c07eed9b9103e721379b67`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 18 Jul 2018 08:21:50 GMT
COPY file:7a22ad8b61835c41645746dff419d5d2e706d7023141e9d29e571f1c8ac8c510 in / 
# Wed, 18 Jul 2018 08:21:50 GMT
EXPOSE 80/tcp
# Wed, 18 Jul 2018 08:21:50 GMT
ENTRYPOINT ["/traefik"]
# Wed, 18 Jul 2018 08:21:50 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d66d80e6667c275375d1f6f6147bea10d432c02d7d2a9fe1276371768d28503`  
		Last Modified: Wed, 18 Jul 2018 08:22:21 GMT  
		Size: 15.3 MB (15304001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:c45119b395dfdc87d7311ca2a1ef4a3ac27e1496f53655bc65f6e29ceb1f05ba
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.2 MB (15167838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b686b53cf7e64da6b4055fccd14629c4c14ca4e0fa034c30b90ada3653a08aa`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 18 Jul 2018 08:40:13 GMT
COPY file:ddc5fa85afa58cee09434d7a5b68ee66d826b0fa09bd1595a03c76f85ee84183 in / 
# Wed, 18 Jul 2018 08:40:14 GMT
EXPOSE 80/tcp
# Wed, 18 Jul 2018 08:40:15 GMT
ENTRYPOINT ["/traefik"]
# Wed, 18 Jul 2018 08:40:15 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc839df70f175be3239a573ab6183006b9792db6df97def301ea31382330cafa`  
		Last Modified: Wed, 18 Jul 2018 08:41:35 GMT  
		Size: 15.0 MB (15012687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7.0-rc2`

```console
$ docker pull traefik@sha256:6bd56652c7e833d2af080825e0b3b45a53e38f63abdebe3ef9c521ab419f5a18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.7.0-rc2` - linux; amd64

```console
$ docker pull traefik@sha256:a684eabb07572780ae26f2128b1d22927cd07a852d88653127894335e8c5d635
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.1 MB (16116024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a053c6ddab18e6f582cd1cdf2d7f4f3c9c5ccb668c39a531fd64d6e74907d26`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 16 Jun 2018 06:01:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 17 Jul 2018 23:29:41 GMT
COPY file:823416be9ca92c00616a43927a1342324ff5b2139a6851ddfa2548b8fe4a63c3 in / 
# Tue, 17 Jul 2018 23:29:42 GMT
EXPOSE 80/tcp
# Tue, 17 Jul 2018 23:29:42 GMT
ENTRYPOINT ["/traefik"]
# Tue, 17 Jul 2018 23:29:43 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:03732cc4924a93fcbcbed879c4c63aad534a63a64e9919eceddf48d7602407b5`  
		Last Modified: Sat, 16 Jun 2018 06:03:25 GMT  
		Size: 155.2 KB (155150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bf755c1d99376372ede988336880c06d371f91044aff02158d9846a458c6b04`  
		Last Modified: Tue, 17 Jul 2018 23:30:43 GMT  
		Size: 16.0 MB (15960874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7.0-rc2` - linux; arm variant v6

```console
$ docker pull traefik@sha256:36156e08b8534b5d6cd34034791e2c143d0dbab4fb346fd4e89ab45764ba4326
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 MB (15459185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f172b5e456286163eacd5611445db7eeb6cbc2a912c07eed9b9103e721379b67`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 18 Jul 2018 08:21:50 GMT
COPY file:7a22ad8b61835c41645746dff419d5d2e706d7023141e9d29e571f1c8ac8c510 in / 
# Wed, 18 Jul 2018 08:21:50 GMT
EXPOSE 80/tcp
# Wed, 18 Jul 2018 08:21:50 GMT
ENTRYPOINT ["/traefik"]
# Wed, 18 Jul 2018 08:21:50 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d66d80e6667c275375d1f6f6147bea10d432c02d7d2a9fe1276371768d28503`  
		Last Modified: Wed, 18 Jul 2018 08:22:21 GMT  
		Size: 15.3 MB (15304001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7.0-rc2` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:c45119b395dfdc87d7311ca2a1ef4a3ac27e1496f53655bc65f6e29ceb1f05ba
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.2 MB (15167838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b686b53cf7e64da6b4055fccd14629c4c14ca4e0fa034c30b90ada3653a08aa`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 18 Jul 2018 08:40:13 GMT
COPY file:ddc5fa85afa58cee09434d7a5b68ee66d826b0fa09bd1595a03c76f85ee84183 in / 
# Wed, 18 Jul 2018 08:40:14 GMT
EXPOSE 80/tcp
# Wed, 18 Jul 2018 08:40:15 GMT
ENTRYPOINT ["/traefik"]
# Wed, 18 Jul 2018 08:40:15 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc839df70f175be3239a573ab6183006b9792db6df97def301ea31382330cafa`  
		Last Modified: Wed, 18 Jul 2018 08:41:35 GMT  
		Size: 15.0 MB (15012687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7.0-rc2-alpine`

```console
$ docker pull traefik@sha256:dc01545780ed1794099237be9cb656d2800a431010cab24136900904aefd2abc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.7.0-rc2-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:88b8a270f5fa5c5c04527c0faa52f370c5aca586548d85e1635f0863db1a7e8e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.5 MB (18493416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:822b3ba5e3bf2e54370408c1c6d097d0fcd0c6f636587195c69bd9bf33d059c9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 18:46:58 GMT
RUN apk --no-cache add ca-certificates
# Tue, 17 Jul 2018 23:30:02 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0-rc2/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Tue, 17 Jul 2018 23:30:02 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Tue, 17 Jul 2018 23:30:03 GMT
EXPOSE 80/tcp
# Tue, 17 Jul 2018 23:30:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 23:30:03 GMT
CMD ["traefik"]
# Tue, 17 Jul 2018 23:30:03 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc2 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:f1eaf7bf4e52cd19328a5bd336636410221ae33876e2ceaba978cddabb67fb8e`  
		Last Modified: Tue, 17 Jul 2018 23:32:23 GMT  
		Size: 16.1 MB (16127141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f50fb87983779d6775d549a7523c49734abcc7d3e8f14a5450de448ccca2851`  
		Last Modified: Tue, 17 Jul 2018 23:32:17 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7.0-rc2-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:c7629ab83072f319f189e013421f44d29b022e8b2ad82f680a6ad0f369745626
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17791050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5baaa0a719bf01194d40256add1316f618cfbfce0383879b03d253e16ed5d964`
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
# Wed, 18 Jul 2018 08:21:59 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0-rc2/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 18 Jul 2018 08:21:59 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 18 Jul 2018 08:21:59 GMT
EXPOSE 80/tcp
# Wed, 18 Jul 2018 08:21:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 18 Jul 2018 08:22:00 GMT
CMD ["traefik"]
# Wed, 18 Jul 2018 08:22:00 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc2 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:24075034056caa7543c1633aa9a337fac92147d69138320987f9f8a1b264bb81`  
		Last Modified: Wed, 18 Jul 2018 08:22:44 GMT  
		Size: 15.5 MB (15472399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e873407bc4f24012b9e844568ef3faacfd4c90122da6678fd394ba6aa8ca5d7`  
		Last Modified: Wed, 18 Jul 2018 08:22:39 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7.0-rc2-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:4fe9ec4169d2474c2e772a7763c62491b06f9a2ae3d88a2642272c08ed178b08
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.4 MB (17446677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cce913566be9c3c920ec019ecf21ebcd243f38fe79502292dc736c8bda6ed507`
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
# Wed, 18 Jul 2018 08:40:50 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0-rc2/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 18 Jul 2018 08:40:51 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 18 Jul 2018 08:40:52 GMT
EXPOSE 80/tcp
# Wed, 18 Jul 2018 08:40:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 18 Jul 2018 08:40:53 GMT
CMD ["traefik"]
# Wed, 18 Jul 2018 08:40:54 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc2 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:7d42455e61e5126f0c7a53e2bb871b19918fd1e346057c618f95b97c23a1ec64`  
		Last Modified: Wed, 18 Jul 2018 08:42:58 GMT  
		Size: 15.2 MB (15179916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd4c173c631f649e4826223b04f0c58d48e3394da6a902903668804205f13514`  
		Last Modified: Wed, 18 Jul 2018 08:42:53 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7-alpine`

```console
$ docker pull traefik@sha256:dc01545780ed1794099237be9cb656d2800a431010cab24136900904aefd2abc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.7-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:88b8a270f5fa5c5c04527c0faa52f370c5aca586548d85e1635f0863db1a7e8e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.5 MB (18493416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:822b3ba5e3bf2e54370408c1c6d097d0fcd0c6f636587195c69bd9bf33d059c9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 18:46:58 GMT
RUN apk --no-cache add ca-certificates
# Tue, 17 Jul 2018 23:30:02 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0-rc2/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Tue, 17 Jul 2018 23:30:02 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Tue, 17 Jul 2018 23:30:03 GMT
EXPOSE 80/tcp
# Tue, 17 Jul 2018 23:30:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 23:30:03 GMT
CMD ["traefik"]
# Tue, 17 Jul 2018 23:30:03 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc2 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:f1eaf7bf4e52cd19328a5bd336636410221ae33876e2ceaba978cddabb67fb8e`  
		Last Modified: Tue, 17 Jul 2018 23:32:23 GMT  
		Size: 16.1 MB (16127141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f50fb87983779d6775d549a7523c49734abcc7d3e8f14a5450de448ccca2851`  
		Last Modified: Tue, 17 Jul 2018 23:32:17 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:c7629ab83072f319f189e013421f44d29b022e8b2ad82f680a6ad0f369745626
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17791050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5baaa0a719bf01194d40256add1316f618cfbfce0383879b03d253e16ed5d964`
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
# Wed, 18 Jul 2018 08:21:59 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0-rc2/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 18 Jul 2018 08:21:59 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 18 Jul 2018 08:21:59 GMT
EXPOSE 80/tcp
# Wed, 18 Jul 2018 08:21:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 18 Jul 2018 08:22:00 GMT
CMD ["traefik"]
# Wed, 18 Jul 2018 08:22:00 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc2 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:24075034056caa7543c1633aa9a337fac92147d69138320987f9f8a1b264bb81`  
		Last Modified: Wed, 18 Jul 2018 08:22:44 GMT  
		Size: 15.5 MB (15472399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e873407bc4f24012b9e844568ef3faacfd4c90122da6678fd394ba6aa8ca5d7`  
		Last Modified: Wed, 18 Jul 2018 08:22:39 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:4fe9ec4169d2474c2e772a7763c62491b06f9a2ae3d88a2642272c08ed178b08
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.4 MB (17446677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cce913566be9c3c920ec019ecf21ebcd243f38fe79502292dc736c8bda6ed507`
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
# Wed, 18 Jul 2018 08:40:50 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0-rc2/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 18 Jul 2018 08:40:51 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 18 Jul 2018 08:40:52 GMT
EXPOSE 80/tcp
# Wed, 18 Jul 2018 08:40:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 18 Jul 2018 08:40:53 GMT
CMD ["traefik"]
# Wed, 18 Jul 2018 08:40:54 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc2 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:7d42455e61e5126f0c7a53e2bb871b19918fd1e346057c618f95b97c23a1ec64`  
		Last Modified: Wed, 18 Jul 2018 08:42:58 GMT  
		Size: 15.2 MB (15179916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd4c173c631f649e4826223b04f0c58d48e3394da6a902903668804205f13514`  
		Last Modified: Wed, 18 Jul 2018 08:42:53 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
