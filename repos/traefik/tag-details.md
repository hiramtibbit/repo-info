<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `traefik`

-	[`traefik:1.6`](#traefik16)
-	[`traefik:1.6.6`](#traefik166)
-	[`traefik:1.6.6-alpine`](#traefik166-alpine)
-	[`traefik:1.6.6-nanoserver`](#traefik166-nanoserver)
-	[`traefik:1.6.6-nanoserver-sac2016`](#traefik166-nanoserver-sac2016)
-	[`traefik:1.6-alpine`](#traefik16-alpine)
-	[`traefik:1.6-nanoserver`](#traefik16-nanoserver)
-	[`traefik:1.6-nanoserver-sac2016`](#traefik16-nanoserver-sac2016)
-	[`traefik:1.7`](#traefik17)
-	[`traefik:1.7.0-rc3`](#traefik170-rc3)
-	[`traefik:1.7.0-rc3-alpine`](#traefik170-rc3-alpine)
-	[`traefik:1.7.0-rc3-nanoserver`](#traefik170-rc3-nanoserver)
-	[`traefik:1.7.0-rc3-nanoserver-sac2016`](#traefik170-rc3-nanoserver-sac2016)
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
-	[`traefik:tetedemoine`](#traefiktetedemoine)
-	[`traefik:tetedemoine-alpine`](#traefiktetedemoine-alpine)
-	[`traefik:tetedemoine-nanoserver`](#traefiktetedemoine-nanoserver)
-	[`traefik:tetedemoine-nanoserver-sac2016`](#traefiktetedemoine-nanoserver-sac2016)
-	[`traefik:v1.6`](#traefikv16)
-	[`traefik:v1.6.6`](#traefikv166)
-	[`traefik:v1.6.6-alpine`](#traefikv166-alpine)
-	[`traefik:v1.6.6-nanoserver`](#traefikv166-nanoserver)
-	[`traefik:v1.6.6-nanoserver-sac2016`](#traefikv166-nanoserver-sac2016)
-	[`traefik:v1.6-alpine`](#traefikv16-alpine)
-	[`traefik:v1.6-nanoserver`](#traefikv16-nanoserver)
-	[`traefik:v1.6-nanoserver-sac2016`](#traefikv16-nanoserver-sac2016)
-	[`traefik:v1.7`](#traefikv17)
-	[`traefik:v1.7.0-rc3`](#traefikv170-rc3)
-	[`traefik:v1.7.0-rc3-alpine`](#traefikv170-rc3-alpine)
-	[`traefik:v1.7.0-rc3-nanoserver`](#traefikv170-rc3-nanoserver)
-	[`traefik:v1.7.0-rc3-nanoserver-sac2016`](#traefikv170-rc3-nanoserver-sac2016)
-	[`traefik:v1.7-alpine`](#traefikv17-alpine)
-	[`traefik:v1.7-nanoserver`](#traefikv17-nanoserver)
-	[`traefik:v1.7-nanoserver-sac2016`](#traefikv17-nanoserver-sac2016)

## `traefik:1.6`

```console
$ docker pull traefik@sha256:0250cc8f026366f76ada1acd378b3a5c68892bfd30e99845043f3a798503d2c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.6` - linux; amd64

```console
$ docker pull traefik@sha256:d129dc2bf31f2aa49e77f6bc1c11515643d6a1ee7d4ac45f10ef4ef6f0b76995
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.9 MB (14882237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7df6f82b88396336202b5d015c371aeae7e9bc6e3409c825cebe42865de21ce5`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 20 Aug 2018 22:21:16 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Mon, 20 Aug 2018 22:21:17 GMT
COPY file:9c03fadf31c7f4799d64e85e747e1236d2937b6d6224d8b23c9b30c354b9edd0 in / 
# Mon, 20 Aug 2018 22:21:18 GMT
EXPOSE 80/tcp
# Mon, 20 Aug 2018 22:21:18 GMT
ENTRYPOINT ["/traefik"]
# Mon, 20 Aug 2018 22:21:18 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:b378cf224f3c34eefed24898b6efba08bd29df113ab478477524ade611bb89a7`  
		Last Modified: Mon, 20 Aug 2018 22:22:19 GMT  
		Size: 135.0 KB (135038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ff319c8a1c5aae4a1ee7c4f897379517dfabfe3024fc0f3f0c34d787b0faf4`  
		Last Modified: Mon, 20 Aug 2018 22:22:26 GMT  
		Size: 14.7 MB (14747199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.6` - linux; arm variant v6

```console
$ docker pull traefik@sha256:b38f10d626cc5292cc4d9ffd326fd8a62f7598b0fc204ef4a806d12850966828
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14255145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e7a0ce24f7035d9cc825ed49b742e0d039a211a7614486ed3246d26fa83c10a`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 21 Aug 2018 08:15:56 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Tue, 21 Aug 2018 08:15:58 GMT
COPY file:89b5804ac827c8bb65194fa5241708c28fc3901352241ca033c9d6b9e666c7a3 in / 
# Tue, 21 Aug 2018 08:15:59 GMT
EXPOSE 80/tcp
# Tue, 21 Aug 2018 08:15:59 GMT
ENTRYPOINT ["/traefik"]
# Tue, 21 Aug 2018 08:16:00 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:9dac48e51b2381c7f7a8cbe16e8670b5d4bfcbd991c139ad10d2e46f233def67`  
		Last Modified: Tue, 21 Aug 2018 08:16:23 GMT  
		Size: 135.1 KB (135078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e73bb104a3aade08115592fac75e717dc649c0a98e03241c3e2bc2fdd6ae0385`  
		Last Modified: Tue, 21 Aug 2018 08:16:27 GMT  
		Size: 14.1 MB (14120067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.6` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:c01ac8ed21f853e2df90b40ff13178fc64870ac7c17480c9b180c20ce6f7d77c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13969154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72108db9f240db73b5fb21bce3bd409b5b1b29f57111afbb122f9a09d5209e39`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 21 Aug 2018 08:48:57 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Tue, 21 Aug 2018 08:48:59 GMT
COPY file:bb2d60a253e94a8451bee54b46e6e8a4a77eec93a0833cb367751b0f7a450c31 in / 
# Tue, 21 Aug 2018 08:49:00 GMT
EXPOSE 80/tcp
# Tue, 21 Aug 2018 08:49:01 GMT
ENTRYPOINT ["/traefik"]
# Tue, 21 Aug 2018 08:49:01 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:237f2d395b5468b8fc4fb105187ad5ab71f15a8ae7ddb9042c335afc1d048e22`  
		Last Modified: Tue, 21 Aug 2018 08:50:29 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c786bd63cc9c27607e6badfadad87d81a31c96b019f5ddfe3498810263a5857`  
		Last Modified: Tue, 21 Aug 2018 08:50:34 GMT  
		Size: 13.8 MB (13834115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.6.6`

```console
$ docker pull traefik@sha256:0250cc8f026366f76ada1acd378b3a5c68892bfd30e99845043f3a798503d2c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.6.6` - linux; amd64

```console
$ docker pull traefik@sha256:d129dc2bf31f2aa49e77f6bc1c11515643d6a1ee7d4ac45f10ef4ef6f0b76995
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.9 MB (14882237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7df6f82b88396336202b5d015c371aeae7e9bc6e3409c825cebe42865de21ce5`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 20 Aug 2018 22:21:16 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Mon, 20 Aug 2018 22:21:17 GMT
COPY file:9c03fadf31c7f4799d64e85e747e1236d2937b6d6224d8b23c9b30c354b9edd0 in / 
# Mon, 20 Aug 2018 22:21:18 GMT
EXPOSE 80/tcp
# Mon, 20 Aug 2018 22:21:18 GMT
ENTRYPOINT ["/traefik"]
# Mon, 20 Aug 2018 22:21:18 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:b378cf224f3c34eefed24898b6efba08bd29df113ab478477524ade611bb89a7`  
		Last Modified: Mon, 20 Aug 2018 22:22:19 GMT  
		Size: 135.0 KB (135038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ff319c8a1c5aae4a1ee7c4f897379517dfabfe3024fc0f3f0c34d787b0faf4`  
		Last Modified: Mon, 20 Aug 2018 22:22:26 GMT  
		Size: 14.7 MB (14747199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.6.6` - linux; arm variant v6

```console
$ docker pull traefik@sha256:b38f10d626cc5292cc4d9ffd326fd8a62f7598b0fc204ef4a806d12850966828
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14255145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e7a0ce24f7035d9cc825ed49b742e0d039a211a7614486ed3246d26fa83c10a`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 21 Aug 2018 08:15:56 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Tue, 21 Aug 2018 08:15:58 GMT
COPY file:89b5804ac827c8bb65194fa5241708c28fc3901352241ca033c9d6b9e666c7a3 in / 
# Tue, 21 Aug 2018 08:15:59 GMT
EXPOSE 80/tcp
# Tue, 21 Aug 2018 08:15:59 GMT
ENTRYPOINT ["/traefik"]
# Tue, 21 Aug 2018 08:16:00 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:9dac48e51b2381c7f7a8cbe16e8670b5d4bfcbd991c139ad10d2e46f233def67`  
		Last Modified: Tue, 21 Aug 2018 08:16:23 GMT  
		Size: 135.1 KB (135078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e73bb104a3aade08115592fac75e717dc649c0a98e03241c3e2bc2fdd6ae0385`  
		Last Modified: Tue, 21 Aug 2018 08:16:27 GMT  
		Size: 14.1 MB (14120067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.6.6` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:c01ac8ed21f853e2df90b40ff13178fc64870ac7c17480c9b180c20ce6f7d77c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13969154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72108db9f240db73b5fb21bce3bd409b5b1b29f57111afbb122f9a09d5209e39`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 21 Aug 2018 08:48:57 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Tue, 21 Aug 2018 08:48:59 GMT
COPY file:bb2d60a253e94a8451bee54b46e6e8a4a77eec93a0833cb367751b0f7a450c31 in / 
# Tue, 21 Aug 2018 08:49:00 GMT
EXPOSE 80/tcp
# Tue, 21 Aug 2018 08:49:01 GMT
ENTRYPOINT ["/traefik"]
# Tue, 21 Aug 2018 08:49:01 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:237f2d395b5468b8fc4fb105187ad5ab71f15a8ae7ddb9042c335afc1d048e22`  
		Last Modified: Tue, 21 Aug 2018 08:50:29 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c786bd63cc9c27607e6badfadad87d81a31c96b019f5ddfe3498810263a5857`  
		Last Modified: Tue, 21 Aug 2018 08:50:34 GMT  
		Size: 13.8 MB (13834115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.6.6-alpine`

```console
$ docker pull traefik@sha256:9fa54b3e9150301b2c7f9ca4a929ccbf0aa9b4ea0b293b0c4d2bd004aa22abf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.6.6-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:684014c8f3cda954bf8dd1c6c443e838548f1bc45e26328c60908dd3d998f861
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17263090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e16f19623050d49219617288fd10a9d3eafe68e2a02a38ac8ec267e2a327817`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Mon, 20 Aug 2018 22:21:39 GMT
RUN apk --no-cache add ca-certificates
# Mon, 20 Aug 2018 22:21:44 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Mon, 20 Aug 2018 22:21:44 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Mon, 20 Aug 2018 22:21:45 GMT
EXPOSE 80/tcp
# Mon, 20 Aug 2018 22:21:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 20 Aug 2018 22:21:45 GMT
CMD ["traefik"]
# Mon, 20 Aug 2018 22:21:45 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:139bbf841d2c70b0767efbc1fca0d0f27471dad1c3c3527db4f46f411c91639d`  
		Last Modified: Mon, 20 Aug 2018 22:24:29 GMT  
		Size: 309.0 KB (309000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efe4f55677aab22c3c37f18e2b3c6d6e47e5f707cab48398fa4d8323fcbd25ea`  
		Last Modified: Mon, 20 Aug 2018 22:24:36 GMT  
		Size: 14.7 MB (14747227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f1331f5a80dba9e4037f2e871969d88e627ac1734be7970e651aa5011883dc`  
		Last Modified: Mon, 20 Aug 2018 22:24:29 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.6.6-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:888b31cd2d071a5273c21abfef38227f91dddd72be8dbf9a93b99debde1a61a1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.6 MB (16575633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3f65ac3b6aa4a4856300d2b316122268e2e2204401139394abddced1fc85809`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 06 Jul 2018 07:53:29 GMT
ADD file:122e3422d9afa971806601812374fdd9d00c8edc8e9a6df7256e2caa85fab6d1 in / 
# Fri, 06 Jul 2018 07:53:30 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 07:53:30 GMT
CMD ["/bin/sh"]
# Tue, 21 Aug 2018 08:16:06 GMT
RUN apk --no-cache add ca-certificates
# Tue, 21 Aug 2018 08:16:09 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 21 Aug 2018 08:16:09 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Tue, 21 Aug 2018 08:16:10 GMT
EXPOSE 80/tcp
# Tue, 21 Aug 2018 08:16:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 21 Aug 2018 08:16:10 GMT
CMD ["traefik"]
# Tue, 21 Aug 2018 08:16:12 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:ee7d700abbf209aa401ef5d53f86af298a25e8154b3259036e9307d08f255c5d`  
		Last Modified: Fri, 06 Jul 2018 07:53:45 GMT  
		Size: 2.1 MB (2145998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1653f4692c1ccea69cd46121d4f1371957f66e97a20141371dd4da10ebaec19`  
		Last Modified: Fri, 06 Jul 2018 07:53:45 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e3741e04b3be7fb453781e203a24158ad61489d212d7b9285d7236fa567f95e`  
		Last Modified: Tue, 21 Aug 2018 08:16:44 GMT  
		Size: 309.1 KB (309060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8236c8b6db9754e75681c4798034c94e52887a29315d296e2336fd8f71dfa0a9`  
		Last Modified: Tue, 21 Aug 2018 08:16:49 GMT  
		Size: 14.1 MB (14120080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22cbf1b6c827beae4a3b8daa3f64ebb27b71c5368494c594a8358a917225df2b`  
		Last Modified: Tue, 21 Aug 2018 08:16:44 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.6.6-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:a8a3b0ac3eaebe991fbb368ea4a283d95c04dbd121669323d2f06837d681ad42
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.2 MB (16242718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:348d2007b8d6fcbfc7d50189505c1d3ef2a5ddbec90c0e963a0c53493ec7d2eb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 06 Jul 2018 08:41:03 GMT
ADD file:199a5a48bddabaf1f649f58f3b17c323a1aa1a50e939dfdea3542e4041e91b7b in / 
# Fri, 06 Jul 2018 08:41:03 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:41:04 GMT
CMD ["/bin/sh"]
# Tue, 21 Aug 2018 08:49:31 GMT
RUN apk --no-cache add ca-certificates
# Tue, 21 Aug 2018 08:49:45 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 21 Aug 2018 08:49:46 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Tue, 21 Aug 2018 08:49:47 GMT
EXPOSE 80/tcp
# Tue, 21 Aug 2018 08:49:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 21 Aug 2018 08:49:49 GMT
CMD ["traefik"]
# Tue, 21 Aug 2018 08:49:50 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:47e04371c99027fae42871b720fdc6cdddcb65062bfa05f0c3bb0a594cb5bbbd`  
		Last Modified: Wed, 27 Jun 2018 19:15:35 GMT  
		Size: 2.1 MB (2099514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4103359e1ecd9a7253d8b8a041d4e81db1ff4a5e1950bc0e02305d221c9e6c2`  
		Last Modified: Fri, 06 Jul 2018 08:42:09 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87a50d65b66d7801cbbcb03c8219cfe5e06020edaabd8d268d626208d994abb6`  
		Last Modified: Tue, 21 Aug 2018 08:52:38 GMT  
		Size: 308.5 KB (308511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c5f94f835bb1a69147d312a8cd3fa5b43276336fa1fd0999dee051b5bdb11e6`  
		Last Modified: Tue, 21 Aug 2018 08:52:44 GMT  
		Size: 13.8 MB (13834198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e7c73973a88f42ad1f51df7c3f84c4fa832c6cdcae92c9eda63ae864a6b8a94`  
		Last Modified: Tue, 21 Aug 2018 08:52:39 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.6.6-nanoserver`

```console
$ docker pull traefik@sha256:3bc3da8aa5fc4e416bdec7feb3056ff7eea4c03169fc330facac280eb7ff187d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2430; amd64

### `traefik:1.6.6-nanoserver` - windows version 10.0.14393.2430; amd64

```console
$ docker pull traefik@sha256:47469e336d071afe4bee7110f5d5cbc7c92ebfbf6d31dd4285c47d97d7ba6936
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **435.3 MB (435277732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba30c98b0a199e4af2d45c981dcd833460531c92f75cd413f54743a5f8ae7e05`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Aug 2018 17:51:52 GMT
RUN Install update 10.0.14393.2430
# Tue, 21 Aug 2018 09:17:16 GMT
RUN cmd /S /C #(nop) COPY file:3c37207c4c4f5157d5993d4ba2fbc672ddd529b3e63b8cd4034206eccc29f7ad in \traefik.exe 
# Tue, 21 Aug 2018 09:17:18 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Tue, 21 Aug 2018 09:17:19 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 21 Aug 2018 09:17:20 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:4a14bdf6da80603aa5007acea8d5ea659958b0bd1b31d31078023ca0d1c8ee05`  
		Last Modified: Mon, 13 Aug 2018 17:51:52 GMT  
		Size: 167.8 MB (167784035 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:dae76d4b7c6f136b9ed04d86366a64948c882f3a5956db82ed7ca6c1d73109f8`  
		Last Modified: Tue, 21 Aug 2018 09:18:29 GMT  
		Size: 14.8 MB (14799843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:396d1aa675cc25b9999c1c96d576fd1656a904ebcdc87605fd14783f8d346aa7`  
		Last Modified: Tue, 21 Aug 2018 09:18:25 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f92a62c67aedb66e794889b77bb26cb80da55ac2fd54eddb38a0fdfc8f4b3b`  
		Last Modified: Tue, 21 Aug 2018 09:18:25 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb24770b9b65ddfa0aa3e65232f875c1d63ea262326cd27e0a9fccddc556c0d`  
		Last Modified: Tue, 21 Aug 2018 09:18:25 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.6.6-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:3bc3da8aa5fc4e416bdec7feb3056ff7eea4c03169fc330facac280eb7ff187d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2430; amd64

### `traefik:1.6.6-nanoserver-sac2016` - windows version 10.0.14393.2430; amd64

```console
$ docker pull traefik@sha256:47469e336d071afe4bee7110f5d5cbc7c92ebfbf6d31dd4285c47d97d7ba6936
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **435.3 MB (435277732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba30c98b0a199e4af2d45c981dcd833460531c92f75cd413f54743a5f8ae7e05`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Aug 2018 17:51:52 GMT
RUN Install update 10.0.14393.2430
# Tue, 21 Aug 2018 09:17:16 GMT
RUN cmd /S /C #(nop) COPY file:3c37207c4c4f5157d5993d4ba2fbc672ddd529b3e63b8cd4034206eccc29f7ad in \traefik.exe 
# Tue, 21 Aug 2018 09:17:18 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Tue, 21 Aug 2018 09:17:19 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 21 Aug 2018 09:17:20 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:4a14bdf6da80603aa5007acea8d5ea659958b0bd1b31d31078023ca0d1c8ee05`  
		Last Modified: Mon, 13 Aug 2018 17:51:52 GMT  
		Size: 167.8 MB (167784035 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:dae76d4b7c6f136b9ed04d86366a64948c882f3a5956db82ed7ca6c1d73109f8`  
		Last Modified: Tue, 21 Aug 2018 09:18:29 GMT  
		Size: 14.8 MB (14799843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:396d1aa675cc25b9999c1c96d576fd1656a904ebcdc87605fd14783f8d346aa7`  
		Last Modified: Tue, 21 Aug 2018 09:18:25 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f92a62c67aedb66e794889b77bb26cb80da55ac2fd54eddb38a0fdfc8f4b3b`  
		Last Modified: Tue, 21 Aug 2018 09:18:25 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb24770b9b65ddfa0aa3e65232f875c1d63ea262326cd27e0a9fccddc556c0d`  
		Last Modified: Tue, 21 Aug 2018 09:18:25 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.6-alpine`

```console
$ docker pull traefik@sha256:9fa54b3e9150301b2c7f9ca4a929ccbf0aa9b4ea0b293b0c4d2bd004aa22abf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.6-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:684014c8f3cda954bf8dd1c6c443e838548f1bc45e26328c60908dd3d998f861
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17263090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e16f19623050d49219617288fd10a9d3eafe68e2a02a38ac8ec267e2a327817`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Mon, 20 Aug 2018 22:21:39 GMT
RUN apk --no-cache add ca-certificates
# Mon, 20 Aug 2018 22:21:44 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Mon, 20 Aug 2018 22:21:44 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Mon, 20 Aug 2018 22:21:45 GMT
EXPOSE 80/tcp
# Mon, 20 Aug 2018 22:21:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 20 Aug 2018 22:21:45 GMT
CMD ["traefik"]
# Mon, 20 Aug 2018 22:21:45 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:139bbf841d2c70b0767efbc1fca0d0f27471dad1c3c3527db4f46f411c91639d`  
		Last Modified: Mon, 20 Aug 2018 22:24:29 GMT  
		Size: 309.0 KB (309000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efe4f55677aab22c3c37f18e2b3c6d6e47e5f707cab48398fa4d8323fcbd25ea`  
		Last Modified: Mon, 20 Aug 2018 22:24:36 GMT  
		Size: 14.7 MB (14747227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f1331f5a80dba9e4037f2e871969d88e627ac1734be7970e651aa5011883dc`  
		Last Modified: Mon, 20 Aug 2018 22:24:29 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.6-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:888b31cd2d071a5273c21abfef38227f91dddd72be8dbf9a93b99debde1a61a1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.6 MB (16575633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3f65ac3b6aa4a4856300d2b316122268e2e2204401139394abddced1fc85809`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 06 Jul 2018 07:53:29 GMT
ADD file:122e3422d9afa971806601812374fdd9d00c8edc8e9a6df7256e2caa85fab6d1 in / 
# Fri, 06 Jul 2018 07:53:30 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 07:53:30 GMT
CMD ["/bin/sh"]
# Tue, 21 Aug 2018 08:16:06 GMT
RUN apk --no-cache add ca-certificates
# Tue, 21 Aug 2018 08:16:09 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 21 Aug 2018 08:16:09 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Tue, 21 Aug 2018 08:16:10 GMT
EXPOSE 80/tcp
# Tue, 21 Aug 2018 08:16:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 21 Aug 2018 08:16:10 GMT
CMD ["traefik"]
# Tue, 21 Aug 2018 08:16:12 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:ee7d700abbf209aa401ef5d53f86af298a25e8154b3259036e9307d08f255c5d`  
		Last Modified: Fri, 06 Jul 2018 07:53:45 GMT  
		Size: 2.1 MB (2145998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1653f4692c1ccea69cd46121d4f1371957f66e97a20141371dd4da10ebaec19`  
		Last Modified: Fri, 06 Jul 2018 07:53:45 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e3741e04b3be7fb453781e203a24158ad61489d212d7b9285d7236fa567f95e`  
		Last Modified: Tue, 21 Aug 2018 08:16:44 GMT  
		Size: 309.1 KB (309060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8236c8b6db9754e75681c4798034c94e52887a29315d296e2336fd8f71dfa0a9`  
		Last Modified: Tue, 21 Aug 2018 08:16:49 GMT  
		Size: 14.1 MB (14120080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22cbf1b6c827beae4a3b8daa3f64ebb27b71c5368494c594a8358a917225df2b`  
		Last Modified: Tue, 21 Aug 2018 08:16:44 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.6-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:a8a3b0ac3eaebe991fbb368ea4a283d95c04dbd121669323d2f06837d681ad42
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.2 MB (16242718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:348d2007b8d6fcbfc7d50189505c1d3ef2a5ddbec90c0e963a0c53493ec7d2eb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 06 Jul 2018 08:41:03 GMT
ADD file:199a5a48bddabaf1f649f58f3b17c323a1aa1a50e939dfdea3542e4041e91b7b in / 
# Fri, 06 Jul 2018 08:41:03 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:41:04 GMT
CMD ["/bin/sh"]
# Tue, 21 Aug 2018 08:49:31 GMT
RUN apk --no-cache add ca-certificates
# Tue, 21 Aug 2018 08:49:45 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 21 Aug 2018 08:49:46 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Tue, 21 Aug 2018 08:49:47 GMT
EXPOSE 80/tcp
# Tue, 21 Aug 2018 08:49:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 21 Aug 2018 08:49:49 GMT
CMD ["traefik"]
# Tue, 21 Aug 2018 08:49:50 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:47e04371c99027fae42871b720fdc6cdddcb65062bfa05f0c3bb0a594cb5bbbd`  
		Last Modified: Wed, 27 Jun 2018 19:15:35 GMT  
		Size: 2.1 MB (2099514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4103359e1ecd9a7253d8b8a041d4e81db1ff4a5e1950bc0e02305d221c9e6c2`  
		Last Modified: Fri, 06 Jul 2018 08:42:09 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87a50d65b66d7801cbbcb03c8219cfe5e06020edaabd8d268d626208d994abb6`  
		Last Modified: Tue, 21 Aug 2018 08:52:38 GMT  
		Size: 308.5 KB (308511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c5f94f835bb1a69147d312a8cd3fa5b43276336fa1fd0999dee051b5bdb11e6`  
		Last Modified: Tue, 21 Aug 2018 08:52:44 GMT  
		Size: 13.8 MB (13834198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e7c73973a88f42ad1f51df7c3f84c4fa832c6cdcae92c9eda63ae864a6b8a94`  
		Last Modified: Tue, 21 Aug 2018 08:52:39 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.6-nanoserver`

```console
$ docker pull traefik@sha256:3bc3da8aa5fc4e416bdec7feb3056ff7eea4c03169fc330facac280eb7ff187d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2430; amd64

### `traefik:1.6-nanoserver` - windows version 10.0.14393.2430; amd64

```console
$ docker pull traefik@sha256:47469e336d071afe4bee7110f5d5cbc7c92ebfbf6d31dd4285c47d97d7ba6936
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **435.3 MB (435277732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba30c98b0a199e4af2d45c981dcd833460531c92f75cd413f54743a5f8ae7e05`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Aug 2018 17:51:52 GMT
RUN Install update 10.0.14393.2430
# Tue, 21 Aug 2018 09:17:16 GMT
RUN cmd /S /C #(nop) COPY file:3c37207c4c4f5157d5993d4ba2fbc672ddd529b3e63b8cd4034206eccc29f7ad in \traefik.exe 
# Tue, 21 Aug 2018 09:17:18 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Tue, 21 Aug 2018 09:17:19 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 21 Aug 2018 09:17:20 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:4a14bdf6da80603aa5007acea8d5ea659958b0bd1b31d31078023ca0d1c8ee05`  
		Last Modified: Mon, 13 Aug 2018 17:51:52 GMT  
		Size: 167.8 MB (167784035 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:dae76d4b7c6f136b9ed04d86366a64948c882f3a5956db82ed7ca6c1d73109f8`  
		Last Modified: Tue, 21 Aug 2018 09:18:29 GMT  
		Size: 14.8 MB (14799843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:396d1aa675cc25b9999c1c96d576fd1656a904ebcdc87605fd14783f8d346aa7`  
		Last Modified: Tue, 21 Aug 2018 09:18:25 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f92a62c67aedb66e794889b77bb26cb80da55ac2fd54eddb38a0fdfc8f4b3b`  
		Last Modified: Tue, 21 Aug 2018 09:18:25 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb24770b9b65ddfa0aa3e65232f875c1d63ea262326cd27e0a9fccddc556c0d`  
		Last Modified: Tue, 21 Aug 2018 09:18:25 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.6-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:3bc3da8aa5fc4e416bdec7feb3056ff7eea4c03169fc330facac280eb7ff187d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2430; amd64

### `traefik:1.6-nanoserver-sac2016` - windows version 10.0.14393.2430; amd64

```console
$ docker pull traefik@sha256:47469e336d071afe4bee7110f5d5cbc7c92ebfbf6d31dd4285c47d97d7ba6936
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **435.3 MB (435277732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba30c98b0a199e4af2d45c981dcd833460531c92f75cd413f54743a5f8ae7e05`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Aug 2018 17:51:52 GMT
RUN Install update 10.0.14393.2430
# Tue, 21 Aug 2018 09:17:16 GMT
RUN cmd /S /C #(nop) COPY file:3c37207c4c4f5157d5993d4ba2fbc672ddd529b3e63b8cd4034206eccc29f7ad in \traefik.exe 
# Tue, 21 Aug 2018 09:17:18 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Tue, 21 Aug 2018 09:17:19 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 21 Aug 2018 09:17:20 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:4a14bdf6da80603aa5007acea8d5ea659958b0bd1b31d31078023ca0d1c8ee05`  
		Last Modified: Mon, 13 Aug 2018 17:51:52 GMT  
		Size: 167.8 MB (167784035 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:dae76d4b7c6f136b9ed04d86366a64948c882f3a5956db82ed7ca6c1d73109f8`  
		Last Modified: Tue, 21 Aug 2018 09:18:29 GMT  
		Size: 14.8 MB (14799843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:396d1aa675cc25b9999c1c96d576fd1656a904ebcdc87605fd14783f8d346aa7`  
		Last Modified: Tue, 21 Aug 2018 09:18:25 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f92a62c67aedb66e794889b77bb26cb80da55ac2fd54eddb38a0fdfc8f4b3b`  
		Last Modified: Tue, 21 Aug 2018 09:18:25 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb24770b9b65ddfa0aa3e65232f875c1d63ea262326cd27e0a9fccddc556c0d`  
		Last Modified: Tue, 21 Aug 2018 09:18:25 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7`

```console
$ docker pull traefik@sha256:eed2738cb7d378dd59ac58a2e606595f6ef10fa61f998d81602c6f94e901c061
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.7` - linux; amd64

```console
$ docker pull traefik@sha256:9930ab57a391a2caaa3b2ec9a7b744c7662aeae4fa2d0877040f9d1e181e2ced
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.1 MB (16136214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3436b23f870373ac90bbf64d1a1d1a4b3efe249f33e1607b562eb8437f096de1`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 16 Jun 2018 06:01:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 02 Aug 2018 21:01:03 GMT
COPY file:3e4a8c66bf6cab4b81a0ba7d70af6e8e6bc9c889dabe0bf8c4fb31d51f80b360 in / 
# Thu, 02 Aug 2018 21:01:04 GMT
EXPOSE 80/tcp
# Thu, 02 Aug 2018 21:01:04 GMT
ENTRYPOINT ["/traefik"]
# Thu, 02 Aug 2018 21:01:04 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:03732cc4924a93fcbcbed879c4c63aad534a63a64e9919eceddf48d7602407b5`  
		Last Modified: Sat, 16 Jun 2018 06:03:25 GMT  
		Size: 155.2 KB (155150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be6f05aec25e7fb3271aa79de5a5c44983fe6b98fa41494ad2c4fa8fafd262c0`  
		Last Modified: Thu, 02 Aug 2018 21:02:08 GMT  
		Size: 16.0 MB (15981064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7` - linux; arm variant v6

```console
$ docker pull traefik@sha256:adfb6b4a1fbc1acf434f6f564e4ceb837b0ebad35b0fcaaeff4b052ac585a714
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 MB (15483538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebd1d2dad93dfa64721792579d44c68c6491f7d6bff53e14ab182f3c8108bbd3`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 02 Aug 2018 21:01:07 GMT
COPY file:9a6275cbbf933759a8b0bb3aec8c60409e659accd36d1fcb5a7444733aac48a3 in / 
# Thu, 02 Aug 2018 21:01:08 GMT
EXPOSE 80/tcp
# Thu, 02 Aug 2018 21:01:08 GMT
ENTRYPOINT ["/traefik"]
# Thu, 02 Aug 2018 21:01:08 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3cb23460c16710e76844f84b329894ece28acf8b7785959d974b94535700bb4`  
		Last Modified: Thu, 02 Aug 2018 21:01:46 GMT  
		Size: 15.3 MB (15328354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:df9b9bfb83ee49ec2658cb664b603f1446c1b48daf46b9b32f895fa608c66096
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.2 MB (15197315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:365837c8cf726a22cb3c8e6dd65e318e998dae9e7697d35a2bed4600664c8444`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 02 Aug 2018 21:01:25 GMT
COPY file:7bd02babd6e9fa2fa8a7dae26577201b3de59fa56101a0a29e0bb895e0bf70e7 in / 
# Thu, 02 Aug 2018 21:01:26 GMT
EXPOSE 80/tcp
# Thu, 02 Aug 2018 21:01:27 GMT
ENTRYPOINT ["/traefik"]
# Thu, 02 Aug 2018 21:01:27 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85fb957fb6aa1179c5a8165f81754e2a526ce1606a3118360cd7071bb9205e4e`  
		Last Modified: Thu, 02 Aug 2018 21:02:45 GMT  
		Size: 15.0 MB (15042164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7.0-rc3`

```console
$ docker pull traefik@sha256:eed2738cb7d378dd59ac58a2e606595f6ef10fa61f998d81602c6f94e901c061
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.7.0-rc3` - linux; amd64

```console
$ docker pull traefik@sha256:9930ab57a391a2caaa3b2ec9a7b744c7662aeae4fa2d0877040f9d1e181e2ced
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.1 MB (16136214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3436b23f870373ac90bbf64d1a1d1a4b3efe249f33e1607b562eb8437f096de1`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 16 Jun 2018 06:01:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 02 Aug 2018 21:01:03 GMT
COPY file:3e4a8c66bf6cab4b81a0ba7d70af6e8e6bc9c889dabe0bf8c4fb31d51f80b360 in / 
# Thu, 02 Aug 2018 21:01:04 GMT
EXPOSE 80/tcp
# Thu, 02 Aug 2018 21:01:04 GMT
ENTRYPOINT ["/traefik"]
# Thu, 02 Aug 2018 21:01:04 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:03732cc4924a93fcbcbed879c4c63aad534a63a64e9919eceddf48d7602407b5`  
		Last Modified: Sat, 16 Jun 2018 06:03:25 GMT  
		Size: 155.2 KB (155150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be6f05aec25e7fb3271aa79de5a5c44983fe6b98fa41494ad2c4fa8fafd262c0`  
		Last Modified: Thu, 02 Aug 2018 21:02:08 GMT  
		Size: 16.0 MB (15981064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7.0-rc3` - linux; arm variant v6

```console
$ docker pull traefik@sha256:adfb6b4a1fbc1acf434f6f564e4ceb837b0ebad35b0fcaaeff4b052ac585a714
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 MB (15483538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebd1d2dad93dfa64721792579d44c68c6491f7d6bff53e14ab182f3c8108bbd3`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 02 Aug 2018 21:01:07 GMT
COPY file:9a6275cbbf933759a8b0bb3aec8c60409e659accd36d1fcb5a7444733aac48a3 in / 
# Thu, 02 Aug 2018 21:01:08 GMT
EXPOSE 80/tcp
# Thu, 02 Aug 2018 21:01:08 GMT
ENTRYPOINT ["/traefik"]
# Thu, 02 Aug 2018 21:01:08 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3cb23460c16710e76844f84b329894ece28acf8b7785959d974b94535700bb4`  
		Last Modified: Thu, 02 Aug 2018 21:01:46 GMT  
		Size: 15.3 MB (15328354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7.0-rc3` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:df9b9bfb83ee49ec2658cb664b603f1446c1b48daf46b9b32f895fa608c66096
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.2 MB (15197315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:365837c8cf726a22cb3c8e6dd65e318e998dae9e7697d35a2bed4600664c8444`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 02 Aug 2018 21:01:25 GMT
COPY file:7bd02babd6e9fa2fa8a7dae26577201b3de59fa56101a0a29e0bb895e0bf70e7 in / 
# Thu, 02 Aug 2018 21:01:26 GMT
EXPOSE 80/tcp
# Thu, 02 Aug 2018 21:01:27 GMT
ENTRYPOINT ["/traefik"]
# Thu, 02 Aug 2018 21:01:27 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85fb957fb6aa1179c5a8165f81754e2a526ce1606a3118360cd7071bb9205e4e`  
		Last Modified: Thu, 02 Aug 2018 21:02:45 GMT  
		Size: 15.0 MB (15042164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7.0-rc3-alpine`

```console
$ docker pull traefik@sha256:d58eec8c88c4680343f403dcef96e64e7e43b30acfea40d123dbe55290e19617
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.7.0-rc3-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:faf79df21ffb6c9ebebbbdc3c7887110c01646306a68bcfcd298d5be703825e9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.5 MB (18514608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d0b25a10da4b1d720ec021af858b663db0d0c7435f7d13a194dd7163181f430`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 18:46:58 GMT
RUN apk --no-cache add ca-certificates
# Thu, 02 Aug 2018 21:01:29 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0-rc3/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Thu, 02 Aug 2018 21:01:29 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Thu, 02 Aug 2018 21:01:30 GMT
EXPOSE 80/tcp
# Thu, 02 Aug 2018 21:01:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 02 Aug 2018 21:01:30 GMT
CMD ["traefik"]
# Thu, 02 Aug 2018 21:01:30 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc3 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:f3fa96f07c2ae65f251d1762a87b5f54a1fad66ba2e4dd529971d0552354c9cd`  
		Last Modified: Thu, 02 Aug 2018 21:03:53 GMT  
		Size: 16.1 MB (16148352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db63b53deddf05b4b32961b2b796884bea83841a0a12a97ce33e1b321c257b74`  
		Last Modified: Thu, 02 Aug 2018 21:03:45 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7.0-rc3-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:6b69267640896f950966914b90d8ba3f163e17332185b83201ac39774182daf7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17815370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c71ddb45196be08ba4cdab673410bfefde29b9f9654cb75bda5009e77e1fa73d`
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
# Thu, 02 Aug 2018 21:01:16 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0-rc3/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Thu, 02 Aug 2018 21:01:17 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Thu, 02 Aug 2018 21:01:17 GMT
EXPOSE 80/tcp
# Thu, 02 Aug 2018 21:01:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 02 Aug 2018 21:01:17 GMT
CMD ["traefik"]
# Thu, 02 Aug 2018 21:01:18 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc3 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:7028d0cac9534c2c7bb7ba9012d5a968a8f7234d5ddef0278f02f239daa57c70`  
		Last Modified: Thu, 02 Aug 2018 21:02:05 GMT  
		Size: 15.5 MB (15496738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de620dfffd9c9a7cd30bf35a373c646389d26e93bc808d00ecab2873033433ec`  
		Last Modified: Thu, 02 Aug 2018 21:01:59 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7.0-rc3-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:f1b6762e9787025962cf98a3bff0fc4f10c54c55783a9757f1038bc777cbad37
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17478208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03375995f9a53f14dcfd5d166e18f4f93ba4e9a455887cc3fc9d3a4e7382ec72`
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
# Thu, 02 Aug 2018 21:02:01 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0-rc3/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Thu, 02 Aug 2018 21:02:02 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Thu, 02 Aug 2018 21:02:02 GMT
EXPOSE 80/tcp
# Thu, 02 Aug 2018 21:02:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 02 Aug 2018 21:02:04 GMT
CMD ["traefik"]
# Thu, 02 Aug 2018 21:02:04 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc3 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:9ec7c467ee0572836d0c952e27d2e3a1566f0fdf6c500df9e8a2b772e6706170`  
		Last Modified: Thu, 02 Aug 2018 21:04:24 GMT  
		Size: 15.2 MB (15211470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4c5527ad157588986306dd27302aa5dcd7ccbbea6c6f39b58ffe5264ff25c16`  
		Last Modified: Thu, 02 Aug 2018 21:04:17 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7.0-rc3-nanoserver`

```console
$ docker pull traefik@sha256:debba1884c044f27861d706adfc4f8106ad2cf814f6bbed2b6272a13979ba41d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2430; amd64

### `traefik:1.7.0-rc3-nanoserver` - windows version 10.0.14393.2430; amd64

```console
$ docker pull traefik@sha256:cadfa1176dd039b361fdadee56a10b7795d9c8f2cae213b826ba03b83de283e3
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **436.5 MB (436517803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eaf162278b4ca0c2ed2defb77f03f7328f3d826b2a1a29e6d09209f39204575d`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Aug 2018 17:51:52 GMT
RUN Install update 10.0.14393.2430
# Tue, 21 Aug 2018 09:16:57 GMT
RUN cmd /S /C #(nop) COPY file:4c94379aa4d378c3412fd0a5ac3edfef56d6836d9638f135e43481fdbadf297c in \traefik.exe 
# Tue, 21 Aug 2018 09:17:00 GMT
RUN cmd /S /C #(nop)  VOLUME [C:/etc/traefik]
# Tue, 21 Aug 2018 09:17:01 GMT
RUN cmd /S /C #(nop)  VOLUME [C:/etc/ssl]
# Tue, 21 Aug 2018 09:17:02 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Tue, 21 Aug 2018 09:17:03 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 21 Aug 2018 09:17:04 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:4a14bdf6da80603aa5007acea8d5ea659958b0bd1b31d31078023ca0d1c8ee05`  
		Last Modified: Mon, 13 Aug 2018 17:51:52 GMT  
		Size: 167.8 MB (167784035 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:46d151ccc57c66b81533f08eac23921137138ab6cbe08ce1ebdd16f53e32c418`  
		Last Modified: Tue, 21 Aug 2018 09:17:49 GMT  
		Size: 16.0 MB (16038019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b4a13815a4bd4125fc9b4f43a991468472e584d829f4826885b302a57487bb9`  
		Last Modified: Tue, 21 Aug 2018 09:17:42 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c18f20c67e0d78856ae46fde0622ca19b8e2eee77950da788adc44bbc9b31a1`  
		Last Modified: Tue, 21 Aug 2018 09:17:42 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a379df6ee7c75f776527876236959161344c2469e9e2ee54dcafe6acb92e198e`  
		Last Modified: Tue, 21 Aug 2018 09:17:42 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5f5df4671a88bd9e59f8952857b56eb0bcf69de947b9dead277bfbbb1a20b6`  
		Last Modified: Tue, 21 Aug 2018 09:17:42 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03bc7fd5919672325eb397a20c966165e54a47b968f38f3faf675c3985095c30`  
		Last Modified: Tue, 21 Aug 2018 09:17:43 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7.0-rc3-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:debba1884c044f27861d706adfc4f8106ad2cf814f6bbed2b6272a13979ba41d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2430; amd64

### `traefik:1.7.0-rc3-nanoserver-sac2016` - windows version 10.0.14393.2430; amd64

```console
$ docker pull traefik@sha256:cadfa1176dd039b361fdadee56a10b7795d9c8f2cae213b826ba03b83de283e3
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **436.5 MB (436517803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eaf162278b4ca0c2ed2defb77f03f7328f3d826b2a1a29e6d09209f39204575d`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Aug 2018 17:51:52 GMT
RUN Install update 10.0.14393.2430
# Tue, 21 Aug 2018 09:16:57 GMT
RUN cmd /S /C #(nop) COPY file:4c94379aa4d378c3412fd0a5ac3edfef56d6836d9638f135e43481fdbadf297c in \traefik.exe 
# Tue, 21 Aug 2018 09:17:00 GMT
RUN cmd /S /C #(nop)  VOLUME [C:/etc/traefik]
# Tue, 21 Aug 2018 09:17:01 GMT
RUN cmd /S /C #(nop)  VOLUME [C:/etc/ssl]
# Tue, 21 Aug 2018 09:17:02 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Tue, 21 Aug 2018 09:17:03 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 21 Aug 2018 09:17:04 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:4a14bdf6da80603aa5007acea8d5ea659958b0bd1b31d31078023ca0d1c8ee05`  
		Last Modified: Mon, 13 Aug 2018 17:51:52 GMT  
		Size: 167.8 MB (167784035 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:46d151ccc57c66b81533f08eac23921137138ab6cbe08ce1ebdd16f53e32c418`  
		Last Modified: Tue, 21 Aug 2018 09:17:49 GMT  
		Size: 16.0 MB (16038019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b4a13815a4bd4125fc9b4f43a991468472e584d829f4826885b302a57487bb9`  
		Last Modified: Tue, 21 Aug 2018 09:17:42 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c18f20c67e0d78856ae46fde0622ca19b8e2eee77950da788adc44bbc9b31a1`  
		Last Modified: Tue, 21 Aug 2018 09:17:42 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a379df6ee7c75f776527876236959161344c2469e9e2ee54dcafe6acb92e198e`  
		Last Modified: Tue, 21 Aug 2018 09:17:42 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5f5df4671a88bd9e59f8952857b56eb0bcf69de947b9dead277bfbbb1a20b6`  
		Last Modified: Tue, 21 Aug 2018 09:17:42 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03bc7fd5919672325eb397a20c966165e54a47b968f38f3faf675c3985095c30`  
		Last Modified: Tue, 21 Aug 2018 09:17:43 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7-alpine`

```console
$ docker pull traefik@sha256:d58eec8c88c4680343f403dcef96e64e7e43b30acfea40d123dbe55290e19617
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.7-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:faf79df21ffb6c9ebebbbdc3c7887110c01646306a68bcfcd298d5be703825e9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.5 MB (18514608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d0b25a10da4b1d720ec021af858b663db0d0c7435f7d13a194dd7163181f430`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 18:46:58 GMT
RUN apk --no-cache add ca-certificates
# Thu, 02 Aug 2018 21:01:29 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0-rc3/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Thu, 02 Aug 2018 21:01:29 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Thu, 02 Aug 2018 21:01:30 GMT
EXPOSE 80/tcp
# Thu, 02 Aug 2018 21:01:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 02 Aug 2018 21:01:30 GMT
CMD ["traefik"]
# Thu, 02 Aug 2018 21:01:30 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc3 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:f3fa96f07c2ae65f251d1762a87b5f54a1fad66ba2e4dd529971d0552354c9cd`  
		Last Modified: Thu, 02 Aug 2018 21:03:53 GMT  
		Size: 16.1 MB (16148352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db63b53deddf05b4b32961b2b796884bea83841a0a12a97ce33e1b321c257b74`  
		Last Modified: Thu, 02 Aug 2018 21:03:45 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:6b69267640896f950966914b90d8ba3f163e17332185b83201ac39774182daf7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17815370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c71ddb45196be08ba4cdab673410bfefde29b9f9654cb75bda5009e77e1fa73d`
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
# Thu, 02 Aug 2018 21:01:16 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0-rc3/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Thu, 02 Aug 2018 21:01:17 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Thu, 02 Aug 2018 21:01:17 GMT
EXPOSE 80/tcp
# Thu, 02 Aug 2018 21:01:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 02 Aug 2018 21:01:17 GMT
CMD ["traefik"]
# Thu, 02 Aug 2018 21:01:18 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc3 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:7028d0cac9534c2c7bb7ba9012d5a968a8f7234d5ddef0278f02f239daa57c70`  
		Last Modified: Thu, 02 Aug 2018 21:02:05 GMT  
		Size: 15.5 MB (15496738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de620dfffd9c9a7cd30bf35a373c646389d26e93bc808d00ecab2873033433ec`  
		Last Modified: Thu, 02 Aug 2018 21:01:59 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:f1b6762e9787025962cf98a3bff0fc4f10c54c55783a9757f1038bc777cbad37
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17478208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03375995f9a53f14dcfd5d166e18f4f93ba4e9a455887cc3fc9d3a4e7382ec72`
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
# Thu, 02 Aug 2018 21:02:01 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0-rc3/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Thu, 02 Aug 2018 21:02:02 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Thu, 02 Aug 2018 21:02:02 GMT
EXPOSE 80/tcp
# Thu, 02 Aug 2018 21:02:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 02 Aug 2018 21:02:04 GMT
CMD ["traefik"]
# Thu, 02 Aug 2018 21:02:04 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc3 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:9ec7c467ee0572836d0c952e27d2e3a1566f0fdf6c500df9e8a2b772e6706170`  
		Last Modified: Thu, 02 Aug 2018 21:04:24 GMT  
		Size: 15.2 MB (15211470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4c5527ad157588986306dd27302aa5dcd7ccbbea6c6f39b58ffe5264ff25c16`  
		Last Modified: Thu, 02 Aug 2018 21:04:17 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7-nanoserver`

```console
$ docker pull traefik@sha256:debba1884c044f27861d706adfc4f8106ad2cf814f6bbed2b6272a13979ba41d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2430; amd64

### `traefik:1.7-nanoserver` - windows version 10.0.14393.2430; amd64

```console
$ docker pull traefik@sha256:cadfa1176dd039b361fdadee56a10b7795d9c8f2cae213b826ba03b83de283e3
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **436.5 MB (436517803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eaf162278b4ca0c2ed2defb77f03f7328f3d826b2a1a29e6d09209f39204575d`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Aug 2018 17:51:52 GMT
RUN Install update 10.0.14393.2430
# Tue, 21 Aug 2018 09:16:57 GMT
RUN cmd /S /C #(nop) COPY file:4c94379aa4d378c3412fd0a5ac3edfef56d6836d9638f135e43481fdbadf297c in \traefik.exe 
# Tue, 21 Aug 2018 09:17:00 GMT
RUN cmd /S /C #(nop)  VOLUME [C:/etc/traefik]
# Tue, 21 Aug 2018 09:17:01 GMT
RUN cmd /S /C #(nop)  VOLUME [C:/etc/ssl]
# Tue, 21 Aug 2018 09:17:02 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Tue, 21 Aug 2018 09:17:03 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 21 Aug 2018 09:17:04 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:4a14bdf6da80603aa5007acea8d5ea659958b0bd1b31d31078023ca0d1c8ee05`  
		Last Modified: Mon, 13 Aug 2018 17:51:52 GMT  
		Size: 167.8 MB (167784035 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:46d151ccc57c66b81533f08eac23921137138ab6cbe08ce1ebdd16f53e32c418`  
		Last Modified: Tue, 21 Aug 2018 09:17:49 GMT  
		Size: 16.0 MB (16038019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b4a13815a4bd4125fc9b4f43a991468472e584d829f4826885b302a57487bb9`  
		Last Modified: Tue, 21 Aug 2018 09:17:42 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c18f20c67e0d78856ae46fde0622ca19b8e2eee77950da788adc44bbc9b31a1`  
		Last Modified: Tue, 21 Aug 2018 09:17:42 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a379df6ee7c75f776527876236959161344c2469e9e2ee54dcafe6acb92e198e`  
		Last Modified: Tue, 21 Aug 2018 09:17:42 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5f5df4671a88bd9e59f8952857b56eb0bcf69de947b9dead277bfbbb1a20b6`  
		Last Modified: Tue, 21 Aug 2018 09:17:42 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03bc7fd5919672325eb397a20c966165e54a47b968f38f3faf675c3985095c30`  
		Last Modified: Tue, 21 Aug 2018 09:17:43 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:debba1884c044f27861d706adfc4f8106ad2cf814f6bbed2b6272a13979ba41d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2430; amd64

### `traefik:1.7-nanoserver-sac2016` - windows version 10.0.14393.2430; amd64

```console
$ docker pull traefik@sha256:cadfa1176dd039b361fdadee56a10b7795d9c8f2cae213b826ba03b83de283e3
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **436.5 MB (436517803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eaf162278b4ca0c2ed2defb77f03f7328f3d826b2a1a29e6d09209f39204575d`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Aug 2018 17:51:52 GMT
RUN Install update 10.0.14393.2430
# Tue, 21 Aug 2018 09:16:57 GMT
RUN cmd /S /C #(nop) COPY file:4c94379aa4d378c3412fd0a5ac3edfef56d6836d9638f135e43481fdbadf297c in \traefik.exe 
# Tue, 21 Aug 2018 09:17:00 GMT
RUN cmd /S /C #(nop)  VOLUME [C:/etc/traefik]
# Tue, 21 Aug 2018 09:17:01 GMT
RUN cmd /S /C #(nop)  VOLUME [C:/etc/ssl]
# Tue, 21 Aug 2018 09:17:02 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Tue, 21 Aug 2018 09:17:03 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 21 Aug 2018 09:17:04 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:4a14bdf6da80603aa5007acea8d5ea659958b0bd1b31d31078023ca0d1c8ee05`  
		Last Modified: Mon, 13 Aug 2018 17:51:52 GMT  
		Size: 167.8 MB (167784035 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:46d151ccc57c66b81533f08eac23921137138ab6cbe08ce1ebdd16f53e32c418`  
		Last Modified: Tue, 21 Aug 2018 09:17:49 GMT  
		Size: 16.0 MB (16038019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b4a13815a4bd4125fc9b4f43a991468472e584d829f4826885b302a57487bb9`  
		Last Modified: Tue, 21 Aug 2018 09:17:42 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c18f20c67e0d78856ae46fde0622ca19b8e2eee77950da788adc44bbc9b31a1`  
		Last Modified: Tue, 21 Aug 2018 09:17:42 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a379df6ee7c75f776527876236959161344c2469e9e2ee54dcafe6acb92e198e`  
		Last Modified: Tue, 21 Aug 2018 09:17:42 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5f5df4671a88bd9e59f8952857b56eb0bcf69de947b9dead277bfbbb1a20b6`  
		Last Modified: Tue, 21 Aug 2018 09:17:42 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03bc7fd5919672325eb397a20c966165e54a47b968f38f3faf675c3985095c30`  
		Last Modified: Tue, 21 Aug 2018 09:17:43 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:alpine`

```console
$ docker pull traefik@sha256:9fa54b3e9150301b2c7f9ca4a929ccbf0aa9b4ea0b293b0c4d2bd004aa22abf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:alpine` - linux; amd64

```console
$ docker pull traefik@sha256:684014c8f3cda954bf8dd1c6c443e838548f1bc45e26328c60908dd3d998f861
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17263090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e16f19623050d49219617288fd10a9d3eafe68e2a02a38ac8ec267e2a327817`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Mon, 20 Aug 2018 22:21:39 GMT
RUN apk --no-cache add ca-certificates
# Mon, 20 Aug 2018 22:21:44 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Mon, 20 Aug 2018 22:21:44 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Mon, 20 Aug 2018 22:21:45 GMT
EXPOSE 80/tcp
# Mon, 20 Aug 2018 22:21:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 20 Aug 2018 22:21:45 GMT
CMD ["traefik"]
# Mon, 20 Aug 2018 22:21:45 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:139bbf841d2c70b0767efbc1fca0d0f27471dad1c3c3527db4f46f411c91639d`  
		Last Modified: Mon, 20 Aug 2018 22:24:29 GMT  
		Size: 309.0 KB (309000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efe4f55677aab22c3c37f18e2b3c6d6e47e5f707cab48398fa4d8323fcbd25ea`  
		Last Modified: Mon, 20 Aug 2018 22:24:36 GMT  
		Size: 14.7 MB (14747227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f1331f5a80dba9e4037f2e871969d88e627ac1734be7970e651aa5011883dc`  
		Last Modified: Mon, 20 Aug 2018 22:24:29 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:888b31cd2d071a5273c21abfef38227f91dddd72be8dbf9a93b99debde1a61a1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.6 MB (16575633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3f65ac3b6aa4a4856300d2b316122268e2e2204401139394abddced1fc85809`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 06 Jul 2018 07:53:29 GMT
ADD file:122e3422d9afa971806601812374fdd9d00c8edc8e9a6df7256e2caa85fab6d1 in / 
# Fri, 06 Jul 2018 07:53:30 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 07:53:30 GMT
CMD ["/bin/sh"]
# Tue, 21 Aug 2018 08:16:06 GMT
RUN apk --no-cache add ca-certificates
# Tue, 21 Aug 2018 08:16:09 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 21 Aug 2018 08:16:09 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Tue, 21 Aug 2018 08:16:10 GMT
EXPOSE 80/tcp
# Tue, 21 Aug 2018 08:16:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 21 Aug 2018 08:16:10 GMT
CMD ["traefik"]
# Tue, 21 Aug 2018 08:16:12 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:ee7d700abbf209aa401ef5d53f86af298a25e8154b3259036e9307d08f255c5d`  
		Last Modified: Fri, 06 Jul 2018 07:53:45 GMT  
		Size: 2.1 MB (2145998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1653f4692c1ccea69cd46121d4f1371957f66e97a20141371dd4da10ebaec19`  
		Last Modified: Fri, 06 Jul 2018 07:53:45 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e3741e04b3be7fb453781e203a24158ad61489d212d7b9285d7236fa567f95e`  
		Last Modified: Tue, 21 Aug 2018 08:16:44 GMT  
		Size: 309.1 KB (309060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8236c8b6db9754e75681c4798034c94e52887a29315d296e2336fd8f71dfa0a9`  
		Last Modified: Tue, 21 Aug 2018 08:16:49 GMT  
		Size: 14.1 MB (14120080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22cbf1b6c827beae4a3b8daa3f64ebb27b71c5368494c594a8358a917225df2b`  
		Last Modified: Tue, 21 Aug 2018 08:16:44 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:a8a3b0ac3eaebe991fbb368ea4a283d95c04dbd121669323d2f06837d681ad42
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.2 MB (16242718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:348d2007b8d6fcbfc7d50189505c1d3ef2a5ddbec90c0e963a0c53493ec7d2eb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 06 Jul 2018 08:41:03 GMT
ADD file:199a5a48bddabaf1f649f58f3b17c323a1aa1a50e939dfdea3542e4041e91b7b in / 
# Fri, 06 Jul 2018 08:41:03 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:41:04 GMT
CMD ["/bin/sh"]
# Tue, 21 Aug 2018 08:49:31 GMT
RUN apk --no-cache add ca-certificates
# Tue, 21 Aug 2018 08:49:45 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 21 Aug 2018 08:49:46 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Tue, 21 Aug 2018 08:49:47 GMT
EXPOSE 80/tcp
# Tue, 21 Aug 2018 08:49:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 21 Aug 2018 08:49:49 GMT
CMD ["traefik"]
# Tue, 21 Aug 2018 08:49:50 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:47e04371c99027fae42871b720fdc6cdddcb65062bfa05f0c3bb0a594cb5bbbd`  
		Last Modified: Wed, 27 Jun 2018 19:15:35 GMT  
		Size: 2.1 MB (2099514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4103359e1ecd9a7253d8b8a041d4e81db1ff4a5e1950bc0e02305d221c9e6c2`  
		Last Modified: Fri, 06 Jul 2018 08:42:09 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87a50d65b66d7801cbbcb03c8219cfe5e06020edaabd8d268d626208d994abb6`  
		Last Modified: Tue, 21 Aug 2018 08:52:38 GMT  
		Size: 308.5 KB (308511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c5f94f835bb1a69147d312a8cd3fa5b43276336fa1fd0999dee051b5bdb11e6`  
		Last Modified: Tue, 21 Aug 2018 08:52:44 GMT  
		Size: 13.8 MB (13834198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e7c73973a88f42ad1f51df7c3f84c4fa832c6cdcae92c9eda63ae864a6b8a94`  
		Last Modified: Tue, 21 Aug 2018 08:52:39 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:latest`

```console
$ docker pull traefik@sha256:da404be1bf1cfe853cf5470494fab8408dd92e60b750b9f6e4acfeaba83498a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:latest` - linux; amd64

```console
$ docker pull traefik@sha256:d129dc2bf31f2aa49e77f6bc1c11515643d6a1ee7d4ac45f10ef4ef6f0b76995
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.9 MB (14882237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7df6f82b88396336202b5d015c371aeae7e9bc6e3409c825cebe42865de21ce5`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 20 Aug 2018 22:21:16 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Mon, 20 Aug 2018 22:21:17 GMT
COPY file:9c03fadf31c7f4799d64e85e747e1236d2937b6d6224d8b23c9b30c354b9edd0 in / 
# Mon, 20 Aug 2018 22:21:18 GMT
EXPOSE 80/tcp
# Mon, 20 Aug 2018 22:21:18 GMT
ENTRYPOINT ["/traefik"]
# Mon, 20 Aug 2018 22:21:18 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:b378cf224f3c34eefed24898b6efba08bd29df113ab478477524ade611bb89a7`  
		Last Modified: Mon, 20 Aug 2018 22:22:19 GMT  
		Size: 135.0 KB (135038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ff319c8a1c5aae4a1ee7c4f897379517dfabfe3024fc0f3f0c34d787b0faf4`  
		Last Modified: Mon, 20 Aug 2018 22:22:26 GMT  
		Size: 14.7 MB (14747199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:latest` - linux; arm variant v6

```console
$ docker pull traefik@sha256:b38f10d626cc5292cc4d9ffd326fd8a62f7598b0fc204ef4a806d12850966828
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14255145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e7a0ce24f7035d9cc825ed49b742e0d039a211a7614486ed3246d26fa83c10a`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 21 Aug 2018 08:15:56 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Tue, 21 Aug 2018 08:15:58 GMT
COPY file:89b5804ac827c8bb65194fa5241708c28fc3901352241ca033c9d6b9e666c7a3 in / 
# Tue, 21 Aug 2018 08:15:59 GMT
EXPOSE 80/tcp
# Tue, 21 Aug 2018 08:15:59 GMT
ENTRYPOINT ["/traefik"]
# Tue, 21 Aug 2018 08:16:00 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:9dac48e51b2381c7f7a8cbe16e8670b5d4bfcbd991c139ad10d2e46f233def67`  
		Last Modified: Tue, 21 Aug 2018 08:16:23 GMT  
		Size: 135.1 KB (135078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e73bb104a3aade08115592fac75e717dc649c0a98e03241c3e2bc2fdd6ae0385`  
		Last Modified: Tue, 21 Aug 2018 08:16:27 GMT  
		Size: 14.1 MB (14120067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:maroilles`

```console
$ docker pull traefik@sha256:eed2738cb7d378dd59ac58a2e606595f6ef10fa61f998d81602c6f94e901c061
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:maroilles` - linux; amd64

```console
$ docker pull traefik@sha256:9930ab57a391a2caaa3b2ec9a7b744c7662aeae4fa2d0877040f9d1e181e2ced
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.1 MB (16136214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3436b23f870373ac90bbf64d1a1d1a4b3efe249f33e1607b562eb8437f096de1`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 16 Jun 2018 06:01:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 02 Aug 2018 21:01:03 GMT
COPY file:3e4a8c66bf6cab4b81a0ba7d70af6e8e6bc9c889dabe0bf8c4fb31d51f80b360 in / 
# Thu, 02 Aug 2018 21:01:04 GMT
EXPOSE 80/tcp
# Thu, 02 Aug 2018 21:01:04 GMT
ENTRYPOINT ["/traefik"]
# Thu, 02 Aug 2018 21:01:04 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:03732cc4924a93fcbcbed879c4c63aad534a63a64e9919eceddf48d7602407b5`  
		Last Modified: Sat, 16 Jun 2018 06:03:25 GMT  
		Size: 155.2 KB (155150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be6f05aec25e7fb3271aa79de5a5c44983fe6b98fa41494ad2c4fa8fafd262c0`  
		Last Modified: Thu, 02 Aug 2018 21:02:08 GMT  
		Size: 16.0 MB (15981064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:maroilles` - linux; arm variant v6

```console
$ docker pull traefik@sha256:adfb6b4a1fbc1acf434f6f564e4ceb837b0ebad35b0fcaaeff4b052ac585a714
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 MB (15483538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebd1d2dad93dfa64721792579d44c68c6491f7d6bff53e14ab182f3c8108bbd3`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 02 Aug 2018 21:01:07 GMT
COPY file:9a6275cbbf933759a8b0bb3aec8c60409e659accd36d1fcb5a7444733aac48a3 in / 
# Thu, 02 Aug 2018 21:01:08 GMT
EXPOSE 80/tcp
# Thu, 02 Aug 2018 21:01:08 GMT
ENTRYPOINT ["/traefik"]
# Thu, 02 Aug 2018 21:01:08 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3cb23460c16710e76844f84b329894ece28acf8b7785959d974b94535700bb4`  
		Last Modified: Thu, 02 Aug 2018 21:01:46 GMT  
		Size: 15.3 MB (15328354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:maroilles` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:df9b9bfb83ee49ec2658cb664b603f1446c1b48daf46b9b32f895fa608c66096
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.2 MB (15197315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:365837c8cf726a22cb3c8e6dd65e318e998dae9e7697d35a2bed4600664c8444`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 02 Aug 2018 21:01:25 GMT
COPY file:7bd02babd6e9fa2fa8a7dae26577201b3de59fa56101a0a29e0bb895e0bf70e7 in / 
# Thu, 02 Aug 2018 21:01:26 GMT
EXPOSE 80/tcp
# Thu, 02 Aug 2018 21:01:27 GMT
ENTRYPOINT ["/traefik"]
# Thu, 02 Aug 2018 21:01:27 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85fb957fb6aa1179c5a8165f81754e2a526ce1606a3118360cd7071bb9205e4e`  
		Last Modified: Thu, 02 Aug 2018 21:02:45 GMT  
		Size: 15.0 MB (15042164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:maroilles-alpine`

```console
$ docker pull traefik@sha256:d58eec8c88c4680343f403dcef96e64e7e43b30acfea40d123dbe55290e19617
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:maroilles-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:faf79df21ffb6c9ebebbbdc3c7887110c01646306a68bcfcd298d5be703825e9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.5 MB (18514608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d0b25a10da4b1d720ec021af858b663db0d0c7435f7d13a194dd7163181f430`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 18:46:58 GMT
RUN apk --no-cache add ca-certificates
# Thu, 02 Aug 2018 21:01:29 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0-rc3/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Thu, 02 Aug 2018 21:01:29 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Thu, 02 Aug 2018 21:01:30 GMT
EXPOSE 80/tcp
# Thu, 02 Aug 2018 21:01:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 02 Aug 2018 21:01:30 GMT
CMD ["traefik"]
# Thu, 02 Aug 2018 21:01:30 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc3 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:f3fa96f07c2ae65f251d1762a87b5f54a1fad66ba2e4dd529971d0552354c9cd`  
		Last Modified: Thu, 02 Aug 2018 21:03:53 GMT  
		Size: 16.1 MB (16148352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db63b53deddf05b4b32961b2b796884bea83841a0a12a97ce33e1b321c257b74`  
		Last Modified: Thu, 02 Aug 2018 21:03:45 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:maroilles-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:6b69267640896f950966914b90d8ba3f163e17332185b83201ac39774182daf7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17815370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c71ddb45196be08ba4cdab673410bfefde29b9f9654cb75bda5009e77e1fa73d`
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
# Thu, 02 Aug 2018 21:01:16 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0-rc3/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Thu, 02 Aug 2018 21:01:17 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Thu, 02 Aug 2018 21:01:17 GMT
EXPOSE 80/tcp
# Thu, 02 Aug 2018 21:01:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 02 Aug 2018 21:01:17 GMT
CMD ["traefik"]
# Thu, 02 Aug 2018 21:01:18 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc3 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:7028d0cac9534c2c7bb7ba9012d5a968a8f7234d5ddef0278f02f239daa57c70`  
		Last Modified: Thu, 02 Aug 2018 21:02:05 GMT  
		Size: 15.5 MB (15496738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de620dfffd9c9a7cd30bf35a373c646389d26e93bc808d00ecab2873033433ec`  
		Last Modified: Thu, 02 Aug 2018 21:01:59 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:maroilles-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:f1b6762e9787025962cf98a3bff0fc4f10c54c55783a9757f1038bc777cbad37
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17478208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03375995f9a53f14dcfd5d166e18f4f93ba4e9a455887cc3fc9d3a4e7382ec72`
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
# Thu, 02 Aug 2018 21:02:01 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0-rc3/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Thu, 02 Aug 2018 21:02:02 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Thu, 02 Aug 2018 21:02:02 GMT
EXPOSE 80/tcp
# Thu, 02 Aug 2018 21:02:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 02 Aug 2018 21:02:04 GMT
CMD ["traefik"]
# Thu, 02 Aug 2018 21:02:04 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc3 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:9ec7c467ee0572836d0c952e27d2e3a1566f0fdf6c500df9e8a2b772e6706170`  
		Last Modified: Thu, 02 Aug 2018 21:04:24 GMT  
		Size: 15.2 MB (15211470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4c5527ad157588986306dd27302aa5dcd7ccbbea6c6f39b58ffe5264ff25c16`  
		Last Modified: Thu, 02 Aug 2018 21:04:17 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:maroilles-nanoserver`

```console
$ docker pull traefik@sha256:debba1884c044f27861d706adfc4f8106ad2cf814f6bbed2b6272a13979ba41d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2430; amd64

### `traefik:maroilles-nanoserver` - windows version 10.0.14393.2430; amd64

```console
$ docker pull traefik@sha256:cadfa1176dd039b361fdadee56a10b7795d9c8f2cae213b826ba03b83de283e3
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **436.5 MB (436517803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eaf162278b4ca0c2ed2defb77f03f7328f3d826b2a1a29e6d09209f39204575d`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Aug 2018 17:51:52 GMT
RUN Install update 10.0.14393.2430
# Tue, 21 Aug 2018 09:16:57 GMT
RUN cmd /S /C #(nop) COPY file:4c94379aa4d378c3412fd0a5ac3edfef56d6836d9638f135e43481fdbadf297c in \traefik.exe 
# Tue, 21 Aug 2018 09:17:00 GMT
RUN cmd /S /C #(nop)  VOLUME [C:/etc/traefik]
# Tue, 21 Aug 2018 09:17:01 GMT
RUN cmd /S /C #(nop)  VOLUME [C:/etc/ssl]
# Tue, 21 Aug 2018 09:17:02 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Tue, 21 Aug 2018 09:17:03 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 21 Aug 2018 09:17:04 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:4a14bdf6da80603aa5007acea8d5ea659958b0bd1b31d31078023ca0d1c8ee05`  
		Last Modified: Mon, 13 Aug 2018 17:51:52 GMT  
		Size: 167.8 MB (167784035 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:46d151ccc57c66b81533f08eac23921137138ab6cbe08ce1ebdd16f53e32c418`  
		Last Modified: Tue, 21 Aug 2018 09:17:49 GMT  
		Size: 16.0 MB (16038019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b4a13815a4bd4125fc9b4f43a991468472e584d829f4826885b302a57487bb9`  
		Last Modified: Tue, 21 Aug 2018 09:17:42 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c18f20c67e0d78856ae46fde0622ca19b8e2eee77950da788adc44bbc9b31a1`  
		Last Modified: Tue, 21 Aug 2018 09:17:42 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a379df6ee7c75f776527876236959161344c2469e9e2ee54dcafe6acb92e198e`  
		Last Modified: Tue, 21 Aug 2018 09:17:42 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5f5df4671a88bd9e59f8952857b56eb0bcf69de947b9dead277bfbbb1a20b6`  
		Last Modified: Tue, 21 Aug 2018 09:17:42 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03bc7fd5919672325eb397a20c966165e54a47b968f38f3faf675c3985095c30`  
		Last Modified: Tue, 21 Aug 2018 09:17:43 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:maroilles-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:debba1884c044f27861d706adfc4f8106ad2cf814f6bbed2b6272a13979ba41d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2430; amd64

### `traefik:maroilles-nanoserver-sac2016` - windows version 10.0.14393.2430; amd64

```console
$ docker pull traefik@sha256:cadfa1176dd039b361fdadee56a10b7795d9c8f2cae213b826ba03b83de283e3
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **436.5 MB (436517803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eaf162278b4ca0c2ed2defb77f03f7328f3d826b2a1a29e6d09209f39204575d`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Aug 2018 17:51:52 GMT
RUN Install update 10.0.14393.2430
# Tue, 21 Aug 2018 09:16:57 GMT
RUN cmd /S /C #(nop) COPY file:4c94379aa4d378c3412fd0a5ac3edfef56d6836d9638f135e43481fdbadf297c in \traefik.exe 
# Tue, 21 Aug 2018 09:17:00 GMT
RUN cmd /S /C #(nop)  VOLUME [C:/etc/traefik]
# Tue, 21 Aug 2018 09:17:01 GMT
RUN cmd /S /C #(nop)  VOLUME [C:/etc/ssl]
# Tue, 21 Aug 2018 09:17:02 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Tue, 21 Aug 2018 09:17:03 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 21 Aug 2018 09:17:04 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:4a14bdf6da80603aa5007acea8d5ea659958b0bd1b31d31078023ca0d1c8ee05`  
		Last Modified: Mon, 13 Aug 2018 17:51:52 GMT  
		Size: 167.8 MB (167784035 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:46d151ccc57c66b81533f08eac23921137138ab6cbe08ce1ebdd16f53e32c418`  
		Last Modified: Tue, 21 Aug 2018 09:17:49 GMT  
		Size: 16.0 MB (16038019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b4a13815a4bd4125fc9b4f43a991468472e584d829f4826885b302a57487bb9`  
		Last Modified: Tue, 21 Aug 2018 09:17:42 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c18f20c67e0d78856ae46fde0622ca19b8e2eee77950da788adc44bbc9b31a1`  
		Last Modified: Tue, 21 Aug 2018 09:17:42 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a379df6ee7c75f776527876236959161344c2469e9e2ee54dcafe6acb92e198e`  
		Last Modified: Tue, 21 Aug 2018 09:17:42 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5f5df4671a88bd9e59f8952857b56eb0bcf69de947b9dead277bfbbb1a20b6`  
		Last Modified: Tue, 21 Aug 2018 09:17:42 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03bc7fd5919672325eb397a20c966165e54a47b968f38f3faf675c3985095c30`  
		Last Modified: Tue, 21 Aug 2018 09:17:43 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:nanoserver`

```console
$ docker pull traefik@sha256:3bc3da8aa5fc4e416bdec7feb3056ff7eea4c03169fc330facac280eb7ff187d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2430; amd64

### `traefik:nanoserver` - windows version 10.0.14393.2430; amd64

```console
$ docker pull traefik@sha256:47469e336d071afe4bee7110f5d5cbc7c92ebfbf6d31dd4285c47d97d7ba6936
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **435.3 MB (435277732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba30c98b0a199e4af2d45c981dcd833460531c92f75cd413f54743a5f8ae7e05`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Aug 2018 17:51:52 GMT
RUN Install update 10.0.14393.2430
# Tue, 21 Aug 2018 09:17:16 GMT
RUN cmd /S /C #(nop) COPY file:3c37207c4c4f5157d5993d4ba2fbc672ddd529b3e63b8cd4034206eccc29f7ad in \traefik.exe 
# Tue, 21 Aug 2018 09:17:18 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Tue, 21 Aug 2018 09:17:19 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 21 Aug 2018 09:17:20 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:4a14bdf6da80603aa5007acea8d5ea659958b0bd1b31d31078023ca0d1c8ee05`  
		Last Modified: Mon, 13 Aug 2018 17:51:52 GMT  
		Size: 167.8 MB (167784035 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:dae76d4b7c6f136b9ed04d86366a64948c882f3a5956db82ed7ca6c1d73109f8`  
		Last Modified: Tue, 21 Aug 2018 09:18:29 GMT  
		Size: 14.8 MB (14799843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:396d1aa675cc25b9999c1c96d576fd1656a904ebcdc87605fd14783f8d346aa7`  
		Last Modified: Tue, 21 Aug 2018 09:18:25 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f92a62c67aedb66e794889b77bb26cb80da55ac2fd54eddb38a0fdfc8f4b3b`  
		Last Modified: Tue, 21 Aug 2018 09:18:25 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb24770b9b65ddfa0aa3e65232f875c1d63ea262326cd27e0a9fccddc556c0d`  
		Last Modified: Tue, 21 Aug 2018 09:18:25 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:nanoserver-sac2016`

```console
$ docker pull traefik@sha256:3bc3da8aa5fc4e416bdec7feb3056ff7eea4c03169fc330facac280eb7ff187d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2430; amd64

### `traefik:nanoserver-sac2016` - windows version 10.0.14393.2430; amd64

```console
$ docker pull traefik@sha256:47469e336d071afe4bee7110f5d5cbc7c92ebfbf6d31dd4285c47d97d7ba6936
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **435.3 MB (435277732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba30c98b0a199e4af2d45c981dcd833460531c92f75cd413f54743a5f8ae7e05`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Aug 2018 17:51:52 GMT
RUN Install update 10.0.14393.2430
# Tue, 21 Aug 2018 09:17:16 GMT
RUN cmd /S /C #(nop) COPY file:3c37207c4c4f5157d5993d4ba2fbc672ddd529b3e63b8cd4034206eccc29f7ad in \traefik.exe 
# Tue, 21 Aug 2018 09:17:18 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Tue, 21 Aug 2018 09:17:19 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 21 Aug 2018 09:17:20 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:4a14bdf6da80603aa5007acea8d5ea659958b0bd1b31d31078023ca0d1c8ee05`  
		Last Modified: Mon, 13 Aug 2018 17:51:52 GMT  
		Size: 167.8 MB (167784035 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:dae76d4b7c6f136b9ed04d86366a64948c882f3a5956db82ed7ca6c1d73109f8`  
		Last Modified: Tue, 21 Aug 2018 09:18:29 GMT  
		Size: 14.8 MB (14799843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:396d1aa675cc25b9999c1c96d576fd1656a904ebcdc87605fd14783f8d346aa7`  
		Last Modified: Tue, 21 Aug 2018 09:18:25 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f92a62c67aedb66e794889b77bb26cb80da55ac2fd54eddb38a0fdfc8f4b3b`  
		Last Modified: Tue, 21 Aug 2018 09:18:25 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb24770b9b65ddfa0aa3e65232f875c1d63ea262326cd27e0a9fccddc556c0d`  
		Last Modified: Tue, 21 Aug 2018 09:18:25 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:tetedemoine`

```console
$ docker pull traefik@sha256:0250cc8f026366f76ada1acd378b3a5c68892bfd30e99845043f3a798503d2c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:tetedemoine` - linux; amd64

```console
$ docker pull traefik@sha256:d129dc2bf31f2aa49e77f6bc1c11515643d6a1ee7d4ac45f10ef4ef6f0b76995
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.9 MB (14882237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7df6f82b88396336202b5d015c371aeae7e9bc6e3409c825cebe42865de21ce5`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 20 Aug 2018 22:21:16 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Mon, 20 Aug 2018 22:21:17 GMT
COPY file:9c03fadf31c7f4799d64e85e747e1236d2937b6d6224d8b23c9b30c354b9edd0 in / 
# Mon, 20 Aug 2018 22:21:18 GMT
EXPOSE 80/tcp
# Mon, 20 Aug 2018 22:21:18 GMT
ENTRYPOINT ["/traefik"]
# Mon, 20 Aug 2018 22:21:18 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:b378cf224f3c34eefed24898b6efba08bd29df113ab478477524ade611bb89a7`  
		Last Modified: Mon, 20 Aug 2018 22:22:19 GMT  
		Size: 135.0 KB (135038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ff319c8a1c5aae4a1ee7c4f897379517dfabfe3024fc0f3f0c34d787b0faf4`  
		Last Modified: Mon, 20 Aug 2018 22:22:26 GMT  
		Size: 14.7 MB (14747199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:tetedemoine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:b38f10d626cc5292cc4d9ffd326fd8a62f7598b0fc204ef4a806d12850966828
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14255145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e7a0ce24f7035d9cc825ed49b742e0d039a211a7614486ed3246d26fa83c10a`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 21 Aug 2018 08:15:56 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Tue, 21 Aug 2018 08:15:58 GMT
COPY file:89b5804ac827c8bb65194fa5241708c28fc3901352241ca033c9d6b9e666c7a3 in / 
# Tue, 21 Aug 2018 08:15:59 GMT
EXPOSE 80/tcp
# Tue, 21 Aug 2018 08:15:59 GMT
ENTRYPOINT ["/traefik"]
# Tue, 21 Aug 2018 08:16:00 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:9dac48e51b2381c7f7a8cbe16e8670b5d4bfcbd991c139ad10d2e46f233def67`  
		Last Modified: Tue, 21 Aug 2018 08:16:23 GMT  
		Size: 135.1 KB (135078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e73bb104a3aade08115592fac75e717dc649c0a98e03241c3e2bc2fdd6ae0385`  
		Last Modified: Tue, 21 Aug 2018 08:16:27 GMT  
		Size: 14.1 MB (14120067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:tetedemoine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:c01ac8ed21f853e2df90b40ff13178fc64870ac7c17480c9b180c20ce6f7d77c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13969154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72108db9f240db73b5fb21bce3bd409b5b1b29f57111afbb122f9a09d5209e39`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 21 Aug 2018 08:48:57 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Tue, 21 Aug 2018 08:48:59 GMT
COPY file:bb2d60a253e94a8451bee54b46e6e8a4a77eec93a0833cb367751b0f7a450c31 in / 
# Tue, 21 Aug 2018 08:49:00 GMT
EXPOSE 80/tcp
# Tue, 21 Aug 2018 08:49:01 GMT
ENTRYPOINT ["/traefik"]
# Tue, 21 Aug 2018 08:49:01 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:237f2d395b5468b8fc4fb105187ad5ab71f15a8ae7ddb9042c335afc1d048e22`  
		Last Modified: Tue, 21 Aug 2018 08:50:29 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c786bd63cc9c27607e6badfadad87d81a31c96b019f5ddfe3498810263a5857`  
		Last Modified: Tue, 21 Aug 2018 08:50:34 GMT  
		Size: 13.8 MB (13834115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:tetedemoine-alpine`

```console
$ docker pull traefik@sha256:9fa54b3e9150301b2c7f9ca4a929ccbf0aa9b4ea0b293b0c4d2bd004aa22abf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:tetedemoine-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:684014c8f3cda954bf8dd1c6c443e838548f1bc45e26328c60908dd3d998f861
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17263090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e16f19623050d49219617288fd10a9d3eafe68e2a02a38ac8ec267e2a327817`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Mon, 20 Aug 2018 22:21:39 GMT
RUN apk --no-cache add ca-certificates
# Mon, 20 Aug 2018 22:21:44 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Mon, 20 Aug 2018 22:21:44 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Mon, 20 Aug 2018 22:21:45 GMT
EXPOSE 80/tcp
# Mon, 20 Aug 2018 22:21:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 20 Aug 2018 22:21:45 GMT
CMD ["traefik"]
# Mon, 20 Aug 2018 22:21:45 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:139bbf841d2c70b0767efbc1fca0d0f27471dad1c3c3527db4f46f411c91639d`  
		Last Modified: Mon, 20 Aug 2018 22:24:29 GMT  
		Size: 309.0 KB (309000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efe4f55677aab22c3c37f18e2b3c6d6e47e5f707cab48398fa4d8323fcbd25ea`  
		Last Modified: Mon, 20 Aug 2018 22:24:36 GMT  
		Size: 14.7 MB (14747227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f1331f5a80dba9e4037f2e871969d88e627ac1734be7970e651aa5011883dc`  
		Last Modified: Mon, 20 Aug 2018 22:24:29 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:tetedemoine-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:888b31cd2d071a5273c21abfef38227f91dddd72be8dbf9a93b99debde1a61a1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.6 MB (16575633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3f65ac3b6aa4a4856300d2b316122268e2e2204401139394abddced1fc85809`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 06 Jul 2018 07:53:29 GMT
ADD file:122e3422d9afa971806601812374fdd9d00c8edc8e9a6df7256e2caa85fab6d1 in / 
# Fri, 06 Jul 2018 07:53:30 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 07:53:30 GMT
CMD ["/bin/sh"]
# Tue, 21 Aug 2018 08:16:06 GMT
RUN apk --no-cache add ca-certificates
# Tue, 21 Aug 2018 08:16:09 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 21 Aug 2018 08:16:09 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Tue, 21 Aug 2018 08:16:10 GMT
EXPOSE 80/tcp
# Tue, 21 Aug 2018 08:16:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 21 Aug 2018 08:16:10 GMT
CMD ["traefik"]
# Tue, 21 Aug 2018 08:16:12 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:ee7d700abbf209aa401ef5d53f86af298a25e8154b3259036e9307d08f255c5d`  
		Last Modified: Fri, 06 Jul 2018 07:53:45 GMT  
		Size: 2.1 MB (2145998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1653f4692c1ccea69cd46121d4f1371957f66e97a20141371dd4da10ebaec19`  
		Last Modified: Fri, 06 Jul 2018 07:53:45 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e3741e04b3be7fb453781e203a24158ad61489d212d7b9285d7236fa567f95e`  
		Last Modified: Tue, 21 Aug 2018 08:16:44 GMT  
		Size: 309.1 KB (309060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8236c8b6db9754e75681c4798034c94e52887a29315d296e2336fd8f71dfa0a9`  
		Last Modified: Tue, 21 Aug 2018 08:16:49 GMT  
		Size: 14.1 MB (14120080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22cbf1b6c827beae4a3b8daa3f64ebb27b71c5368494c594a8358a917225df2b`  
		Last Modified: Tue, 21 Aug 2018 08:16:44 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:tetedemoine-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:a8a3b0ac3eaebe991fbb368ea4a283d95c04dbd121669323d2f06837d681ad42
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.2 MB (16242718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:348d2007b8d6fcbfc7d50189505c1d3ef2a5ddbec90c0e963a0c53493ec7d2eb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 06 Jul 2018 08:41:03 GMT
ADD file:199a5a48bddabaf1f649f58f3b17c323a1aa1a50e939dfdea3542e4041e91b7b in / 
# Fri, 06 Jul 2018 08:41:03 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:41:04 GMT
CMD ["/bin/sh"]
# Tue, 21 Aug 2018 08:49:31 GMT
RUN apk --no-cache add ca-certificates
# Tue, 21 Aug 2018 08:49:45 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 21 Aug 2018 08:49:46 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Tue, 21 Aug 2018 08:49:47 GMT
EXPOSE 80/tcp
# Tue, 21 Aug 2018 08:49:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 21 Aug 2018 08:49:49 GMT
CMD ["traefik"]
# Tue, 21 Aug 2018 08:49:50 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:47e04371c99027fae42871b720fdc6cdddcb65062bfa05f0c3bb0a594cb5bbbd`  
		Last Modified: Wed, 27 Jun 2018 19:15:35 GMT  
		Size: 2.1 MB (2099514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4103359e1ecd9a7253d8b8a041d4e81db1ff4a5e1950bc0e02305d221c9e6c2`  
		Last Modified: Fri, 06 Jul 2018 08:42:09 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87a50d65b66d7801cbbcb03c8219cfe5e06020edaabd8d268d626208d994abb6`  
		Last Modified: Tue, 21 Aug 2018 08:52:38 GMT  
		Size: 308.5 KB (308511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c5f94f835bb1a69147d312a8cd3fa5b43276336fa1fd0999dee051b5bdb11e6`  
		Last Modified: Tue, 21 Aug 2018 08:52:44 GMT  
		Size: 13.8 MB (13834198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e7c73973a88f42ad1f51df7c3f84c4fa832c6cdcae92c9eda63ae864a6b8a94`  
		Last Modified: Tue, 21 Aug 2018 08:52:39 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:tetedemoine-nanoserver`

```console
$ docker pull traefik@sha256:3bc3da8aa5fc4e416bdec7feb3056ff7eea4c03169fc330facac280eb7ff187d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2430; amd64

### `traefik:tetedemoine-nanoserver` - windows version 10.0.14393.2430; amd64

```console
$ docker pull traefik@sha256:47469e336d071afe4bee7110f5d5cbc7c92ebfbf6d31dd4285c47d97d7ba6936
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **435.3 MB (435277732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba30c98b0a199e4af2d45c981dcd833460531c92f75cd413f54743a5f8ae7e05`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Aug 2018 17:51:52 GMT
RUN Install update 10.0.14393.2430
# Tue, 21 Aug 2018 09:17:16 GMT
RUN cmd /S /C #(nop) COPY file:3c37207c4c4f5157d5993d4ba2fbc672ddd529b3e63b8cd4034206eccc29f7ad in \traefik.exe 
# Tue, 21 Aug 2018 09:17:18 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Tue, 21 Aug 2018 09:17:19 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 21 Aug 2018 09:17:20 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:4a14bdf6da80603aa5007acea8d5ea659958b0bd1b31d31078023ca0d1c8ee05`  
		Last Modified: Mon, 13 Aug 2018 17:51:52 GMT  
		Size: 167.8 MB (167784035 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:dae76d4b7c6f136b9ed04d86366a64948c882f3a5956db82ed7ca6c1d73109f8`  
		Last Modified: Tue, 21 Aug 2018 09:18:29 GMT  
		Size: 14.8 MB (14799843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:396d1aa675cc25b9999c1c96d576fd1656a904ebcdc87605fd14783f8d346aa7`  
		Last Modified: Tue, 21 Aug 2018 09:18:25 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f92a62c67aedb66e794889b77bb26cb80da55ac2fd54eddb38a0fdfc8f4b3b`  
		Last Modified: Tue, 21 Aug 2018 09:18:25 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb24770b9b65ddfa0aa3e65232f875c1d63ea262326cd27e0a9fccddc556c0d`  
		Last Modified: Tue, 21 Aug 2018 09:18:25 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:tetedemoine-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:3bc3da8aa5fc4e416bdec7feb3056ff7eea4c03169fc330facac280eb7ff187d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2430; amd64

### `traefik:tetedemoine-nanoserver-sac2016` - windows version 10.0.14393.2430; amd64

```console
$ docker pull traefik@sha256:47469e336d071afe4bee7110f5d5cbc7c92ebfbf6d31dd4285c47d97d7ba6936
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **435.3 MB (435277732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba30c98b0a199e4af2d45c981dcd833460531c92f75cd413f54743a5f8ae7e05`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Aug 2018 17:51:52 GMT
RUN Install update 10.0.14393.2430
# Tue, 21 Aug 2018 09:17:16 GMT
RUN cmd /S /C #(nop) COPY file:3c37207c4c4f5157d5993d4ba2fbc672ddd529b3e63b8cd4034206eccc29f7ad in \traefik.exe 
# Tue, 21 Aug 2018 09:17:18 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Tue, 21 Aug 2018 09:17:19 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 21 Aug 2018 09:17:20 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:4a14bdf6da80603aa5007acea8d5ea659958b0bd1b31d31078023ca0d1c8ee05`  
		Last Modified: Mon, 13 Aug 2018 17:51:52 GMT  
		Size: 167.8 MB (167784035 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:dae76d4b7c6f136b9ed04d86366a64948c882f3a5956db82ed7ca6c1d73109f8`  
		Last Modified: Tue, 21 Aug 2018 09:18:29 GMT  
		Size: 14.8 MB (14799843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:396d1aa675cc25b9999c1c96d576fd1656a904ebcdc87605fd14783f8d346aa7`  
		Last Modified: Tue, 21 Aug 2018 09:18:25 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f92a62c67aedb66e794889b77bb26cb80da55ac2fd54eddb38a0fdfc8f4b3b`  
		Last Modified: Tue, 21 Aug 2018 09:18:25 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb24770b9b65ddfa0aa3e65232f875c1d63ea262326cd27e0a9fccddc556c0d`  
		Last Modified: Tue, 21 Aug 2018 09:18:25 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.6`

```console
$ docker pull traefik@sha256:0250cc8f026366f76ada1acd378b3a5c68892bfd30e99845043f3a798503d2c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.6` - linux; amd64

```console
$ docker pull traefik@sha256:d129dc2bf31f2aa49e77f6bc1c11515643d6a1ee7d4ac45f10ef4ef6f0b76995
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.9 MB (14882237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7df6f82b88396336202b5d015c371aeae7e9bc6e3409c825cebe42865de21ce5`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 20 Aug 2018 22:21:16 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Mon, 20 Aug 2018 22:21:17 GMT
COPY file:9c03fadf31c7f4799d64e85e747e1236d2937b6d6224d8b23c9b30c354b9edd0 in / 
# Mon, 20 Aug 2018 22:21:18 GMT
EXPOSE 80/tcp
# Mon, 20 Aug 2018 22:21:18 GMT
ENTRYPOINT ["/traefik"]
# Mon, 20 Aug 2018 22:21:18 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:b378cf224f3c34eefed24898b6efba08bd29df113ab478477524ade611bb89a7`  
		Last Modified: Mon, 20 Aug 2018 22:22:19 GMT  
		Size: 135.0 KB (135038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ff319c8a1c5aae4a1ee7c4f897379517dfabfe3024fc0f3f0c34d787b0faf4`  
		Last Modified: Mon, 20 Aug 2018 22:22:26 GMT  
		Size: 14.7 MB (14747199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.6` - linux; arm variant v6

```console
$ docker pull traefik@sha256:b38f10d626cc5292cc4d9ffd326fd8a62f7598b0fc204ef4a806d12850966828
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14255145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e7a0ce24f7035d9cc825ed49b742e0d039a211a7614486ed3246d26fa83c10a`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 21 Aug 2018 08:15:56 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Tue, 21 Aug 2018 08:15:58 GMT
COPY file:89b5804ac827c8bb65194fa5241708c28fc3901352241ca033c9d6b9e666c7a3 in / 
# Tue, 21 Aug 2018 08:15:59 GMT
EXPOSE 80/tcp
# Tue, 21 Aug 2018 08:15:59 GMT
ENTRYPOINT ["/traefik"]
# Tue, 21 Aug 2018 08:16:00 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:9dac48e51b2381c7f7a8cbe16e8670b5d4bfcbd991c139ad10d2e46f233def67`  
		Last Modified: Tue, 21 Aug 2018 08:16:23 GMT  
		Size: 135.1 KB (135078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e73bb104a3aade08115592fac75e717dc649c0a98e03241c3e2bc2fdd6ae0385`  
		Last Modified: Tue, 21 Aug 2018 08:16:27 GMT  
		Size: 14.1 MB (14120067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.6` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:c01ac8ed21f853e2df90b40ff13178fc64870ac7c17480c9b180c20ce6f7d77c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13969154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72108db9f240db73b5fb21bce3bd409b5b1b29f57111afbb122f9a09d5209e39`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 21 Aug 2018 08:48:57 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Tue, 21 Aug 2018 08:48:59 GMT
COPY file:bb2d60a253e94a8451bee54b46e6e8a4a77eec93a0833cb367751b0f7a450c31 in / 
# Tue, 21 Aug 2018 08:49:00 GMT
EXPOSE 80/tcp
# Tue, 21 Aug 2018 08:49:01 GMT
ENTRYPOINT ["/traefik"]
# Tue, 21 Aug 2018 08:49:01 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:237f2d395b5468b8fc4fb105187ad5ab71f15a8ae7ddb9042c335afc1d048e22`  
		Last Modified: Tue, 21 Aug 2018 08:50:29 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c786bd63cc9c27607e6badfadad87d81a31c96b019f5ddfe3498810263a5857`  
		Last Modified: Tue, 21 Aug 2018 08:50:34 GMT  
		Size: 13.8 MB (13834115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.6.6`

```console
$ docker pull traefik@sha256:0250cc8f026366f76ada1acd378b3a5c68892bfd30e99845043f3a798503d2c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.6.6` - linux; amd64

```console
$ docker pull traefik@sha256:d129dc2bf31f2aa49e77f6bc1c11515643d6a1ee7d4ac45f10ef4ef6f0b76995
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.9 MB (14882237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7df6f82b88396336202b5d015c371aeae7e9bc6e3409c825cebe42865de21ce5`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 20 Aug 2018 22:21:16 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Mon, 20 Aug 2018 22:21:17 GMT
COPY file:9c03fadf31c7f4799d64e85e747e1236d2937b6d6224d8b23c9b30c354b9edd0 in / 
# Mon, 20 Aug 2018 22:21:18 GMT
EXPOSE 80/tcp
# Mon, 20 Aug 2018 22:21:18 GMT
ENTRYPOINT ["/traefik"]
# Mon, 20 Aug 2018 22:21:18 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:b378cf224f3c34eefed24898b6efba08bd29df113ab478477524ade611bb89a7`  
		Last Modified: Mon, 20 Aug 2018 22:22:19 GMT  
		Size: 135.0 KB (135038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ff319c8a1c5aae4a1ee7c4f897379517dfabfe3024fc0f3f0c34d787b0faf4`  
		Last Modified: Mon, 20 Aug 2018 22:22:26 GMT  
		Size: 14.7 MB (14747199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.6.6` - linux; arm variant v6

```console
$ docker pull traefik@sha256:b38f10d626cc5292cc4d9ffd326fd8a62f7598b0fc204ef4a806d12850966828
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14255145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e7a0ce24f7035d9cc825ed49b742e0d039a211a7614486ed3246d26fa83c10a`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 21 Aug 2018 08:15:56 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Tue, 21 Aug 2018 08:15:58 GMT
COPY file:89b5804ac827c8bb65194fa5241708c28fc3901352241ca033c9d6b9e666c7a3 in / 
# Tue, 21 Aug 2018 08:15:59 GMT
EXPOSE 80/tcp
# Tue, 21 Aug 2018 08:15:59 GMT
ENTRYPOINT ["/traefik"]
# Tue, 21 Aug 2018 08:16:00 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:9dac48e51b2381c7f7a8cbe16e8670b5d4bfcbd991c139ad10d2e46f233def67`  
		Last Modified: Tue, 21 Aug 2018 08:16:23 GMT  
		Size: 135.1 KB (135078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e73bb104a3aade08115592fac75e717dc649c0a98e03241c3e2bc2fdd6ae0385`  
		Last Modified: Tue, 21 Aug 2018 08:16:27 GMT  
		Size: 14.1 MB (14120067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.6.6` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:c01ac8ed21f853e2df90b40ff13178fc64870ac7c17480c9b180c20ce6f7d77c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13969154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72108db9f240db73b5fb21bce3bd409b5b1b29f57111afbb122f9a09d5209e39`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 21 Aug 2018 08:48:57 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Tue, 21 Aug 2018 08:48:59 GMT
COPY file:bb2d60a253e94a8451bee54b46e6e8a4a77eec93a0833cb367751b0f7a450c31 in / 
# Tue, 21 Aug 2018 08:49:00 GMT
EXPOSE 80/tcp
# Tue, 21 Aug 2018 08:49:01 GMT
ENTRYPOINT ["/traefik"]
# Tue, 21 Aug 2018 08:49:01 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:237f2d395b5468b8fc4fb105187ad5ab71f15a8ae7ddb9042c335afc1d048e22`  
		Last Modified: Tue, 21 Aug 2018 08:50:29 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c786bd63cc9c27607e6badfadad87d81a31c96b019f5ddfe3498810263a5857`  
		Last Modified: Tue, 21 Aug 2018 08:50:34 GMT  
		Size: 13.8 MB (13834115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.6.6-alpine`

```console
$ docker pull traefik@sha256:9fa54b3e9150301b2c7f9ca4a929ccbf0aa9b4ea0b293b0c4d2bd004aa22abf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.6.6-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:684014c8f3cda954bf8dd1c6c443e838548f1bc45e26328c60908dd3d998f861
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17263090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e16f19623050d49219617288fd10a9d3eafe68e2a02a38ac8ec267e2a327817`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Mon, 20 Aug 2018 22:21:39 GMT
RUN apk --no-cache add ca-certificates
# Mon, 20 Aug 2018 22:21:44 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Mon, 20 Aug 2018 22:21:44 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Mon, 20 Aug 2018 22:21:45 GMT
EXPOSE 80/tcp
# Mon, 20 Aug 2018 22:21:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 20 Aug 2018 22:21:45 GMT
CMD ["traefik"]
# Mon, 20 Aug 2018 22:21:45 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:139bbf841d2c70b0767efbc1fca0d0f27471dad1c3c3527db4f46f411c91639d`  
		Last Modified: Mon, 20 Aug 2018 22:24:29 GMT  
		Size: 309.0 KB (309000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efe4f55677aab22c3c37f18e2b3c6d6e47e5f707cab48398fa4d8323fcbd25ea`  
		Last Modified: Mon, 20 Aug 2018 22:24:36 GMT  
		Size: 14.7 MB (14747227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f1331f5a80dba9e4037f2e871969d88e627ac1734be7970e651aa5011883dc`  
		Last Modified: Mon, 20 Aug 2018 22:24:29 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.6.6-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:888b31cd2d071a5273c21abfef38227f91dddd72be8dbf9a93b99debde1a61a1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.6 MB (16575633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3f65ac3b6aa4a4856300d2b316122268e2e2204401139394abddced1fc85809`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 06 Jul 2018 07:53:29 GMT
ADD file:122e3422d9afa971806601812374fdd9d00c8edc8e9a6df7256e2caa85fab6d1 in / 
# Fri, 06 Jul 2018 07:53:30 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 07:53:30 GMT
CMD ["/bin/sh"]
# Tue, 21 Aug 2018 08:16:06 GMT
RUN apk --no-cache add ca-certificates
# Tue, 21 Aug 2018 08:16:09 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 21 Aug 2018 08:16:09 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Tue, 21 Aug 2018 08:16:10 GMT
EXPOSE 80/tcp
# Tue, 21 Aug 2018 08:16:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 21 Aug 2018 08:16:10 GMT
CMD ["traefik"]
# Tue, 21 Aug 2018 08:16:12 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:ee7d700abbf209aa401ef5d53f86af298a25e8154b3259036e9307d08f255c5d`  
		Last Modified: Fri, 06 Jul 2018 07:53:45 GMT  
		Size: 2.1 MB (2145998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1653f4692c1ccea69cd46121d4f1371957f66e97a20141371dd4da10ebaec19`  
		Last Modified: Fri, 06 Jul 2018 07:53:45 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e3741e04b3be7fb453781e203a24158ad61489d212d7b9285d7236fa567f95e`  
		Last Modified: Tue, 21 Aug 2018 08:16:44 GMT  
		Size: 309.1 KB (309060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8236c8b6db9754e75681c4798034c94e52887a29315d296e2336fd8f71dfa0a9`  
		Last Modified: Tue, 21 Aug 2018 08:16:49 GMT  
		Size: 14.1 MB (14120080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22cbf1b6c827beae4a3b8daa3f64ebb27b71c5368494c594a8358a917225df2b`  
		Last Modified: Tue, 21 Aug 2018 08:16:44 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.6.6-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:a8a3b0ac3eaebe991fbb368ea4a283d95c04dbd121669323d2f06837d681ad42
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.2 MB (16242718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:348d2007b8d6fcbfc7d50189505c1d3ef2a5ddbec90c0e963a0c53493ec7d2eb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 06 Jul 2018 08:41:03 GMT
ADD file:199a5a48bddabaf1f649f58f3b17c323a1aa1a50e939dfdea3542e4041e91b7b in / 
# Fri, 06 Jul 2018 08:41:03 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:41:04 GMT
CMD ["/bin/sh"]
# Tue, 21 Aug 2018 08:49:31 GMT
RUN apk --no-cache add ca-certificates
# Tue, 21 Aug 2018 08:49:45 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 21 Aug 2018 08:49:46 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Tue, 21 Aug 2018 08:49:47 GMT
EXPOSE 80/tcp
# Tue, 21 Aug 2018 08:49:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 21 Aug 2018 08:49:49 GMT
CMD ["traefik"]
# Tue, 21 Aug 2018 08:49:50 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:47e04371c99027fae42871b720fdc6cdddcb65062bfa05f0c3bb0a594cb5bbbd`  
		Last Modified: Wed, 27 Jun 2018 19:15:35 GMT  
		Size: 2.1 MB (2099514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4103359e1ecd9a7253d8b8a041d4e81db1ff4a5e1950bc0e02305d221c9e6c2`  
		Last Modified: Fri, 06 Jul 2018 08:42:09 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87a50d65b66d7801cbbcb03c8219cfe5e06020edaabd8d268d626208d994abb6`  
		Last Modified: Tue, 21 Aug 2018 08:52:38 GMT  
		Size: 308.5 KB (308511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c5f94f835bb1a69147d312a8cd3fa5b43276336fa1fd0999dee051b5bdb11e6`  
		Last Modified: Tue, 21 Aug 2018 08:52:44 GMT  
		Size: 13.8 MB (13834198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e7c73973a88f42ad1f51df7c3f84c4fa832c6cdcae92c9eda63ae864a6b8a94`  
		Last Modified: Tue, 21 Aug 2018 08:52:39 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.6.6-nanoserver`

```console
$ docker pull traefik@sha256:3bc3da8aa5fc4e416bdec7feb3056ff7eea4c03169fc330facac280eb7ff187d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2430; amd64

### `traefik:v1.6.6-nanoserver` - windows version 10.0.14393.2430; amd64

```console
$ docker pull traefik@sha256:47469e336d071afe4bee7110f5d5cbc7c92ebfbf6d31dd4285c47d97d7ba6936
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **435.3 MB (435277732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba30c98b0a199e4af2d45c981dcd833460531c92f75cd413f54743a5f8ae7e05`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Aug 2018 17:51:52 GMT
RUN Install update 10.0.14393.2430
# Tue, 21 Aug 2018 09:17:16 GMT
RUN cmd /S /C #(nop) COPY file:3c37207c4c4f5157d5993d4ba2fbc672ddd529b3e63b8cd4034206eccc29f7ad in \traefik.exe 
# Tue, 21 Aug 2018 09:17:18 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Tue, 21 Aug 2018 09:17:19 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 21 Aug 2018 09:17:20 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:4a14bdf6da80603aa5007acea8d5ea659958b0bd1b31d31078023ca0d1c8ee05`  
		Last Modified: Mon, 13 Aug 2018 17:51:52 GMT  
		Size: 167.8 MB (167784035 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:dae76d4b7c6f136b9ed04d86366a64948c882f3a5956db82ed7ca6c1d73109f8`  
		Last Modified: Tue, 21 Aug 2018 09:18:29 GMT  
		Size: 14.8 MB (14799843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:396d1aa675cc25b9999c1c96d576fd1656a904ebcdc87605fd14783f8d346aa7`  
		Last Modified: Tue, 21 Aug 2018 09:18:25 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f92a62c67aedb66e794889b77bb26cb80da55ac2fd54eddb38a0fdfc8f4b3b`  
		Last Modified: Tue, 21 Aug 2018 09:18:25 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb24770b9b65ddfa0aa3e65232f875c1d63ea262326cd27e0a9fccddc556c0d`  
		Last Modified: Tue, 21 Aug 2018 09:18:25 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.6.6-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:3bc3da8aa5fc4e416bdec7feb3056ff7eea4c03169fc330facac280eb7ff187d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2430; amd64

### `traefik:v1.6.6-nanoserver-sac2016` - windows version 10.0.14393.2430; amd64

```console
$ docker pull traefik@sha256:47469e336d071afe4bee7110f5d5cbc7c92ebfbf6d31dd4285c47d97d7ba6936
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **435.3 MB (435277732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba30c98b0a199e4af2d45c981dcd833460531c92f75cd413f54743a5f8ae7e05`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Aug 2018 17:51:52 GMT
RUN Install update 10.0.14393.2430
# Tue, 21 Aug 2018 09:17:16 GMT
RUN cmd /S /C #(nop) COPY file:3c37207c4c4f5157d5993d4ba2fbc672ddd529b3e63b8cd4034206eccc29f7ad in \traefik.exe 
# Tue, 21 Aug 2018 09:17:18 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Tue, 21 Aug 2018 09:17:19 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 21 Aug 2018 09:17:20 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:4a14bdf6da80603aa5007acea8d5ea659958b0bd1b31d31078023ca0d1c8ee05`  
		Last Modified: Mon, 13 Aug 2018 17:51:52 GMT  
		Size: 167.8 MB (167784035 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:dae76d4b7c6f136b9ed04d86366a64948c882f3a5956db82ed7ca6c1d73109f8`  
		Last Modified: Tue, 21 Aug 2018 09:18:29 GMT  
		Size: 14.8 MB (14799843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:396d1aa675cc25b9999c1c96d576fd1656a904ebcdc87605fd14783f8d346aa7`  
		Last Modified: Tue, 21 Aug 2018 09:18:25 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f92a62c67aedb66e794889b77bb26cb80da55ac2fd54eddb38a0fdfc8f4b3b`  
		Last Modified: Tue, 21 Aug 2018 09:18:25 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb24770b9b65ddfa0aa3e65232f875c1d63ea262326cd27e0a9fccddc556c0d`  
		Last Modified: Tue, 21 Aug 2018 09:18:25 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.6-alpine`

```console
$ docker pull traefik@sha256:9fa54b3e9150301b2c7f9ca4a929ccbf0aa9b4ea0b293b0c4d2bd004aa22abf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.6-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:684014c8f3cda954bf8dd1c6c443e838548f1bc45e26328c60908dd3d998f861
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17263090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e16f19623050d49219617288fd10a9d3eafe68e2a02a38ac8ec267e2a327817`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Mon, 20 Aug 2018 22:21:39 GMT
RUN apk --no-cache add ca-certificates
# Mon, 20 Aug 2018 22:21:44 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Mon, 20 Aug 2018 22:21:44 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Mon, 20 Aug 2018 22:21:45 GMT
EXPOSE 80/tcp
# Mon, 20 Aug 2018 22:21:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 20 Aug 2018 22:21:45 GMT
CMD ["traefik"]
# Mon, 20 Aug 2018 22:21:45 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:139bbf841d2c70b0767efbc1fca0d0f27471dad1c3c3527db4f46f411c91639d`  
		Last Modified: Mon, 20 Aug 2018 22:24:29 GMT  
		Size: 309.0 KB (309000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efe4f55677aab22c3c37f18e2b3c6d6e47e5f707cab48398fa4d8323fcbd25ea`  
		Last Modified: Mon, 20 Aug 2018 22:24:36 GMT  
		Size: 14.7 MB (14747227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f1331f5a80dba9e4037f2e871969d88e627ac1734be7970e651aa5011883dc`  
		Last Modified: Mon, 20 Aug 2018 22:24:29 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.6-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:888b31cd2d071a5273c21abfef38227f91dddd72be8dbf9a93b99debde1a61a1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.6 MB (16575633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3f65ac3b6aa4a4856300d2b316122268e2e2204401139394abddced1fc85809`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 06 Jul 2018 07:53:29 GMT
ADD file:122e3422d9afa971806601812374fdd9d00c8edc8e9a6df7256e2caa85fab6d1 in / 
# Fri, 06 Jul 2018 07:53:30 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 07:53:30 GMT
CMD ["/bin/sh"]
# Tue, 21 Aug 2018 08:16:06 GMT
RUN apk --no-cache add ca-certificates
# Tue, 21 Aug 2018 08:16:09 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 21 Aug 2018 08:16:09 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Tue, 21 Aug 2018 08:16:10 GMT
EXPOSE 80/tcp
# Tue, 21 Aug 2018 08:16:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 21 Aug 2018 08:16:10 GMT
CMD ["traefik"]
# Tue, 21 Aug 2018 08:16:12 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:ee7d700abbf209aa401ef5d53f86af298a25e8154b3259036e9307d08f255c5d`  
		Last Modified: Fri, 06 Jul 2018 07:53:45 GMT  
		Size: 2.1 MB (2145998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1653f4692c1ccea69cd46121d4f1371957f66e97a20141371dd4da10ebaec19`  
		Last Modified: Fri, 06 Jul 2018 07:53:45 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e3741e04b3be7fb453781e203a24158ad61489d212d7b9285d7236fa567f95e`  
		Last Modified: Tue, 21 Aug 2018 08:16:44 GMT  
		Size: 309.1 KB (309060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8236c8b6db9754e75681c4798034c94e52887a29315d296e2336fd8f71dfa0a9`  
		Last Modified: Tue, 21 Aug 2018 08:16:49 GMT  
		Size: 14.1 MB (14120080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22cbf1b6c827beae4a3b8daa3f64ebb27b71c5368494c594a8358a917225df2b`  
		Last Modified: Tue, 21 Aug 2018 08:16:44 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.6-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:a8a3b0ac3eaebe991fbb368ea4a283d95c04dbd121669323d2f06837d681ad42
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.2 MB (16242718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:348d2007b8d6fcbfc7d50189505c1d3ef2a5ddbec90c0e963a0c53493ec7d2eb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 06 Jul 2018 08:41:03 GMT
ADD file:199a5a48bddabaf1f649f58f3b17c323a1aa1a50e939dfdea3542e4041e91b7b in / 
# Fri, 06 Jul 2018 08:41:03 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:41:04 GMT
CMD ["/bin/sh"]
# Tue, 21 Aug 2018 08:49:31 GMT
RUN apk --no-cache add ca-certificates
# Tue, 21 Aug 2018 08:49:45 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 21 Aug 2018 08:49:46 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Tue, 21 Aug 2018 08:49:47 GMT
EXPOSE 80/tcp
# Tue, 21 Aug 2018 08:49:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 21 Aug 2018 08:49:49 GMT
CMD ["traefik"]
# Tue, 21 Aug 2018 08:49:50 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:47e04371c99027fae42871b720fdc6cdddcb65062bfa05f0c3bb0a594cb5bbbd`  
		Last Modified: Wed, 27 Jun 2018 19:15:35 GMT  
		Size: 2.1 MB (2099514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4103359e1ecd9a7253d8b8a041d4e81db1ff4a5e1950bc0e02305d221c9e6c2`  
		Last Modified: Fri, 06 Jul 2018 08:42:09 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87a50d65b66d7801cbbcb03c8219cfe5e06020edaabd8d268d626208d994abb6`  
		Last Modified: Tue, 21 Aug 2018 08:52:38 GMT  
		Size: 308.5 KB (308511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c5f94f835bb1a69147d312a8cd3fa5b43276336fa1fd0999dee051b5bdb11e6`  
		Last Modified: Tue, 21 Aug 2018 08:52:44 GMT  
		Size: 13.8 MB (13834198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e7c73973a88f42ad1f51df7c3f84c4fa832c6cdcae92c9eda63ae864a6b8a94`  
		Last Modified: Tue, 21 Aug 2018 08:52:39 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.6-nanoserver`

```console
$ docker pull traefik@sha256:3bc3da8aa5fc4e416bdec7feb3056ff7eea4c03169fc330facac280eb7ff187d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2430; amd64

### `traefik:v1.6-nanoserver` - windows version 10.0.14393.2430; amd64

```console
$ docker pull traefik@sha256:47469e336d071afe4bee7110f5d5cbc7c92ebfbf6d31dd4285c47d97d7ba6936
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **435.3 MB (435277732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba30c98b0a199e4af2d45c981dcd833460531c92f75cd413f54743a5f8ae7e05`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Aug 2018 17:51:52 GMT
RUN Install update 10.0.14393.2430
# Tue, 21 Aug 2018 09:17:16 GMT
RUN cmd /S /C #(nop) COPY file:3c37207c4c4f5157d5993d4ba2fbc672ddd529b3e63b8cd4034206eccc29f7ad in \traefik.exe 
# Tue, 21 Aug 2018 09:17:18 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Tue, 21 Aug 2018 09:17:19 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 21 Aug 2018 09:17:20 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:4a14bdf6da80603aa5007acea8d5ea659958b0bd1b31d31078023ca0d1c8ee05`  
		Last Modified: Mon, 13 Aug 2018 17:51:52 GMT  
		Size: 167.8 MB (167784035 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:dae76d4b7c6f136b9ed04d86366a64948c882f3a5956db82ed7ca6c1d73109f8`  
		Last Modified: Tue, 21 Aug 2018 09:18:29 GMT  
		Size: 14.8 MB (14799843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:396d1aa675cc25b9999c1c96d576fd1656a904ebcdc87605fd14783f8d346aa7`  
		Last Modified: Tue, 21 Aug 2018 09:18:25 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f92a62c67aedb66e794889b77bb26cb80da55ac2fd54eddb38a0fdfc8f4b3b`  
		Last Modified: Tue, 21 Aug 2018 09:18:25 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb24770b9b65ddfa0aa3e65232f875c1d63ea262326cd27e0a9fccddc556c0d`  
		Last Modified: Tue, 21 Aug 2018 09:18:25 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.6-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:3bc3da8aa5fc4e416bdec7feb3056ff7eea4c03169fc330facac280eb7ff187d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2430; amd64

### `traefik:v1.6-nanoserver-sac2016` - windows version 10.0.14393.2430; amd64

```console
$ docker pull traefik@sha256:47469e336d071afe4bee7110f5d5cbc7c92ebfbf6d31dd4285c47d97d7ba6936
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **435.3 MB (435277732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba30c98b0a199e4af2d45c981dcd833460531c92f75cd413f54743a5f8ae7e05`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Aug 2018 17:51:52 GMT
RUN Install update 10.0.14393.2430
# Tue, 21 Aug 2018 09:17:16 GMT
RUN cmd /S /C #(nop) COPY file:3c37207c4c4f5157d5993d4ba2fbc672ddd529b3e63b8cd4034206eccc29f7ad in \traefik.exe 
# Tue, 21 Aug 2018 09:17:18 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Tue, 21 Aug 2018 09:17:19 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 21 Aug 2018 09:17:20 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:4a14bdf6da80603aa5007acea8d5ea659958b0bd1b31d31078023ca0d1c8ee05`  
		Last Modified: Mon, 13 Aug 2018 17:51:52 GMT  
		Size: 167.8 MB (167784035 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:dae76d4b7c6f136b9ed04d86366a64948c882f3a5956db82ed7ca6c1d73109f8`  
		Last Modified: Tue, 21 Aug 2018 09:18:29 GMT  
		Size: 14.8 MB (14799843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:396d1aa675cc25b9999c1c96d576fd1656a904ebcdc87605fd14783f8d346aa7`  
		Last Modified: Tue, 21 Aug 2018 09:18:25 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f92a62c67aedb66e794889b77bb26cb80da55ac2fd54eddb38a0fdfc8f4b3b`  
		Last Modified: Tue, 21 Aug 2018 09:18:25 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb24770b9b65ddfa0aa3e65232f875c1d63ea262326cd27e0a9fccddc556c0d`  
		Last Modified: Tue, 21 Aug 2018 09:18:25 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7`

```console
$ docker pull traefik@sha256:eed2738cb7d378dd59ac58a2e606595f6ef10fa61f998d81602c6f94e901c061
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.7` - linux; amd64

```console
$ docker pull traefik@sha256:9930ab57a391a2caaa3b2ec9a7b744c7662aeae4fa2d0877040f9d1e181e2ced
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.1 MB (16136214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3436b23f870373ac90bbf64d1a1d1a4b3efe249f33e1607b562eb8437f096de1`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 16 Jun 2018 06:01:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 02 Aug 2018 21:01:03 GMT
COPY file:3e4a8c66bf6cab4b81a0ba7d70af6e8e6bc9c889dabe0bf8c4fb31d51f80b360 in / 
# Thu, 02 Aug 2018 21:01:04 GMT
EXPOSE 80/tcp
# Thu, 02 Aug 2018 21:01:04 GMT
ENTRYPOINT ["/traefik"]
# Thu, 02 Aug 2018 21:01:04 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:03732cc4924a93fcbcbed879c4c63aad534a63a64e9919eceddf48d7602407b5`  
		Last Modified: Sat, 16 Jun 2018 06:03:25 GMT  
		Size: 155.2 KB (155150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be6f05aec25e7fb3271aa79de5a5c44983fe6b98fa41494ad2c4fa8fafd262c0`  
		Last Modified: Thu, 02 Aug 2018 21:02:08 GMT  
		Size: 16.0 MB (15981064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7` - linux; arm variant v6

```console
$ docker pull traefik@sha256:adfb6b4a1fbc1acf434f6f564e4ceb837b0ebad35b0fcaaeff4b052ac585a714
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 MB (15483538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebd1d2dad93dfa64721792579d44c68c6491f7d6bff53e14ab182f3c8108bbd3`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 02 Aug 2018 21:01:07 GMT
COPY file:9a6275cbbf933759a8b0bb3aec8c60409e659accd36d1fcb5a7444733aac48a3 in / 
# Thu, 02 Aug 2018 21:01:08 GMT
EXPOSE 80/tcp
# Thu, 02 Aug 2018 21:01:08 GMT
ENTRYPOINT ["/traefik"]
# Thu, 02 Aug 2018 21:01:08 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3cb23460c16710e76844f84b329894ece28acf8b7785959d974b94535700bb4`  
		Last Modified: Thu, 02 Aug 2018 21:01:46 GMT  
		Size: 15.3 MB (15328354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:df9b9bfb83ee49ec2658cb664b603f1446c1b48daf46b9b32f895fa608c66096
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.2 MB (15197315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:365837c8cf726a22cb3c8e6dd65e318e998dae9e7697d35a2bed4600664c8444`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 02 Aug 2018 21:01:25 GMT
COPY file:7bd02babd6e9fa2fa8a7dae26577201b3de59fa56101a0a29e0bb895e0bf70e7 in / 
# Thu, 02 Aug 2018 21:01:26 GMT
EXPOSE 80/tcp
# Thu, 02 Aug 2018 21:01:27 GMT
ENTRYPOINT ["/traefik"]
# Thu, 02 Aug 2018 21:01:27 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85fb957fb6aa1179c5a8165f81754e2a526ce1606a3118360cd7071bb9205e4e`  
		Last Modified: Thu, 02 Aug 2018 21:02:45 GMT  
		Size: 15.0 MB (15042164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7.0-rc3`

```console
$ docker pull traefik@sha256:eed2738cb7d378dd59ac58a2e606595f6ef10fa61f998d81602c6f94e901c061
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.7.0-rc3` - linux; amd64

```console
$ docker pull traefik@sha256:9930ab57a391a2caaa3b2ec9a7b744c7662aeae4fa2d0877040f9d1e181e2ced
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.1 MB (16136214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3436b23f870373ac90bbf64d1a1d1a4b3efe249f33e1607b562eb8437f096de1`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 16 Jun 2018 06:01:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 02 Aug 2018 21:01:03 GMT
COPY file:3e4a8c66bf6cab4b81a0ba7d70af6e8e6bc9c889dabe0bf8c4fb31d51f80b360 in / 
# Thu, 02 Aug 2018 21:01:04 GMT
EXPOSE 80/tcp
# Thu, 02 Aug 2018 21:01:04 GMT
ENTRYPOINT ["/traefik"]
# Thu, 02 Aug 2018 21:01:04 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:03732cc4924a93fcbcbed879c4c63aad534a63a64e9919eceddf48d7602407b5`  
		Last Modified: Sat, 16 Jun 2018 06:03:25 GMT  
		Size: 155.2 KB (155150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be6f05aec25e7fb3271aa79de5a5c44983fe6b98fa41494ad2c4fa8fafd262c0`  
		Last Modified: Thu, 02 Aug 2018 21:02:08 GMT  
		Size: 16.0 MB (15981064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7.0-rc3` - linux; arm variant v6

```console
$ docker pull traefik@sha256:adfb6b4a1fbc1acf434f6f564e4ceb837b0ebad35b0fcaaeff4b052ac585a714
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 MB (15483538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebd1d2dad93dfa64721792579d44c68c6491f7d6bff53e14ab182f3c8108bbd3`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 02 Aug 2018 21:01:07 GMT
COPY file:9a6275cbbf933759a8b0bb3aec8c60409e659accd36d1fcb5a7444733aac48a3 in / 
# Thu, 02 Aug 2018 21:01:08 GMT
EXPOSE 80/tcp
# Thu, 02 Aug 2018 21:01:08 GMT
ENTRYPOINT ["/traefik"]
# Thu, 02 Aug 2018 21:01:08 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3cb23460c16710e76844f84b329894ece28acf8b7785959d974b94535700bb4`  
		Last Modified: Thu, 02 Aug 2018 21:01:46 GMT  
		Size: 15.3 MB (15328354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7.0-rc3` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:df9b9bfb83ee49ec2658cb664b603f1446c1b48daf46b9b32f895fa608c66096
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.2 MB (15197315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:365837c8cf726a22cb3c8e6dd65e318e998dae9e7697d35a2bed4600664c8444`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 02 Aug 2018 21:01:25 GMT
COPY file:7bd02babd6e9fa2fa8a7dae26577201b3de59fa56101a0a29e0bb895e0bf70e7 in / 
# Thu, 02 Aug 2018 21:01:26 GMT
EXPOSE 80/tcp
# Thu, 02 Aug 2018 21:01:27 GMT
ENTRYPOINT ["/traefik"]
# Thu, 02 Aug 2018 21:01:27 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85fb957fb6aa1179c5a8165f81754e2a526ce1606a3118360cd7071bb9205e4e`  
		Last Modified: Thu, 02 Aug 2018 21:02:45 GMT  
		Size: 15.0 MB (15042164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7.0-rc3-alpine`

```console
$ docker pull traefik@sha256:d58eec8c88c4680343f403dcef96e64e7e43b30acfea40d123dbe55290e19617
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.7.0-rc3-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:faf79df21ffb6c9ebebbbdc3c7887110c01646306a68bcfcd298d5be703825e9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.5 MB (18514608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d0b25a10da4b1d720ec021af858b663db0d0c7435f7d13a194dd7163181f430`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 18:46:58 GMT
RUN apk --no-cache add ca-certificates
# Thu, 02 Aug 2018 21:01:29 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0-rc3/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Thu, 02 Aug 2018 21:01:29 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Thu, 02 Aug 2018 21:01:30 GMT
EXPOSE 80/tcp
# Thu, 02 Aug 2018 21:01:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 02 Aug 2018 21:01:30 GMT
CMD ["traefik"]
# Thu, 02 Aug 2018 21:01:30 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc3 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:f3fa96f07c2ae65f251d1762a87b5f54a1fad66ba2e4dd529971d0552354c9cd`  
		Last Modified: Thu, 02 Aug 2018 21:03:53 GMT  
		Size: 16.1 MB (16148352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db63b53deddf05b4b32961b2b796884bea83841a0a12a97ce33e1b321c257b74`  
		Last Modified: Thu, 02 Aug 2018 21:03:45 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7.0-rc3-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:6b69267640896f950966914b90d8ba3f163e17332185b83201ac39774182daf7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17815370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c71ddb45196be08ba4cdab673410bfefde29b9f9654cb75bda5009e77e1fa73d`
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
# Thu, 02 Aug 2018 21:01:16 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0-rc3/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Thu, 02 Aug 2018 21:01:17 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Thu, 02 Aug 2018 21:01:17 GMT
EXPOSE 80/tcp
# Thu, 02 Aug 2018 21:01:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 02 Aug 2018 21:01:17 GMT
CMD ["traefik"]
# Thu, 02 Aug 2018 21:01:18 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc3 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:7028d0cac9534c2c7bb7ba9012d5a968a8f7234d5ddef0278f02f239daa57c70`  
		Last Modified: Thu, 02 Aug 2018 21:02:05 GMT  
		Size: 15.5 MB (15496738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de620dfffd9c9a7cd30bf35a373c646389d26e93bc808d00ecab2873033433ec`  
		Last Modified: Thu, 02 Aug 2018 21:01:59 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7.0-rc3-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:f1b6762e9787025962cf98a3bff0fc4f10c54c55783a9757f1038bc777cbad37
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17478208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03375995f9a53f14dcfd5d166e18f4f93ba4e9a455887cc3fc9d3a4e7382ec72`
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
# Thu, 02 Aug 2018 21:02:01 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0-rc3/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Thu, 02 Aug 2018 21:02:02 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Thu, 02 Aug 2018 21:02:02 GMT
EXPOSE 80/tcp
# Thu, 02 Aug 2018 21:02:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 02 Aug 2018 21:02:04 GMT
CMD ["traefik"]
# Thu, 02 Aug 2018 21:02:04 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc3 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:9ec7c467ee0572836d0c952e27d2e3a1566f0fdf6c500df9e8a2b772e6706170`  
		Last Modified: Thu, 02 Aug 2018 21:04:24 GMT  
		Size: 15.2 MB (15211470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4c5527ad157588986306dd27302aa5dcd7ccbbea6c6f39b58ffe5264ff25c16`  
		Last Modified: Thu, 02 Aug 2018 21:04:17 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7.0-rc3-nanoserver`

```console
$ docker pull traefik@sha256:debba1884c044f27861d706adfc4f8106ad2cf814f6bbed2b6272a13979ba41d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2430; amd64

### `traefik:v1.7.0-rc3-nanoserver` - windows version 10.0.14393.2430; amd64

```console
$ docker pull traefik@sha256:cadfa1176dd039b361fdadee56a10b7795d9c8f2cae213b826ba03b83de283e3
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **436.5 MB (436517803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eaf162278b4ca0c2ed2defb77f03f7328f3d826b2a1a29e6d09209f39204575d`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Aug 2018 17:51:52 GMT
RUN Install update 10.0.14393.2430
# Tue, 21 Aug 2018 09:16:57 GMT
RUN cmd /S /C #(nop) COPY file:4c94379aa4d378c3412fd0a5ac3edfef56d6836d9638f135e43481fdbadf297c in \traefik.exe 
# Tue, 21 Aug 2018 09:17:00 GMT
RUN cmd /S /C #(nop)  VOLUME [C:/etc/traefik]
# Tue, 21 Aug 2018 09:17:01 GMT
RUN cmd /S /C #(nop)  VOLUME [C:/etc/ssl]
# Tue, 21 Aug 2018 09:17:02 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Tue, 21 Aug 2018 09:17:03 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 21 Aug 2018 09:17:04 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:4a14bdf6da80603aa5007acea8d5ea659958b0bd1b31d31078023ca0d1c8ee05`  
		Last Modified: Mon, 13 Aug 2018 17:51:52 GMT  
		Size: 167.8 MB (167784035 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:46d151ccc57c66b81533f08eac23921137138ab6cbe08ce1ebdd16f53e32c418`  
		Last Modified: Tue, 21 Aug 2018 09:17:49 GMT  
		Size: 16.0 MB (16038019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b4a13815a4bd4125fc9b4f43a991468472e584d829f4826885b302a57487bb9`  
		Last Modified: Tue, 21 Aug 2018 09:17:42 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c18f20c67e0d78856ae46fde0622ca19b8e2eee77950da788adc44bbc9b31a1`  
		Last Modified: Tue, 21 Aug 2018 09:17:42 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a379df6ee7c75f776527876236959161344c2469e9e2ee54dcafe6acb92e198e`  
		Last Modified: Tue, 21 Aug 2018 09:17:42 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5f5df4671a88bd9e59f8952857b56eb0bcf69de947b9dead277bfbbb1a20b6`  
		Last Modified: Tue, 21 Aug 2018 09:17:42 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03bc7fd5919672325eb397a20c966165e54a47b968f38f3faf675c3985095c30`  
		Last Modified: Tue, 21 Aug 2018 09:17:43 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7.0-rc3-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:debba1884c044f27861d706adfc4f8106ad2cf814f6bbed2b6272a13979ba41d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2430; amd64

### `traefik:v1.7.0-rc3-nanoserver-sac2016` - windows version 10.0.14393.2430; amd64

```console
$ docker pull traefik@sha256:cadfa1176dd039b361fdadee56a10b7795d9c8f2cae213b826ba03b83de283e3
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **436.5 MB (436517803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eaf162278b4ca0c2ed2defb77f03f7328f3d826b2a1a29e6d09209f39204575d`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Aug 2018 17:51:52 GMT
RUN Install update 10.0.14393.2430
# Tue, 21 Aug 2018 09:16:57 GMT
RUN cmd /S /C #(nop) COPY file:4c94379aa4d378c3412fd0a5ac3edfef56d6836d9638f135e43481fdbadf297c in \traefik.exe 
# Tue, 21 Aug 2018 09:17:00 GMT
RUN cmd /S /C #(nop)  VOLUME [C:/etc/traefik]
# Tue, 21 Aug 2018 09:17:01 GMT
RUN cmd /S /C #(nop)  VOLUME [C:/etc/ssl]
# Tue, 21 Aug 2018 09:17:02 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Tue, 21 Aug 2018 09:17:03 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 21 Aug 2018 09:17:04 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:4a14bdf6da80603aa5007acea8d5ea659958b0bd1b31d31078023ca0d1c8ee05`  
		Last Modified: Mon, 13 Aug 2018 17:51:52 GMT  
		Size: 167.8 MB (167784035 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:46d151ccc57c66b81533f08eac23921137138ab6cbe08ce1ebdd16f53e32c418`  
		Last Modified: Tue, 21 Aug 2018 09:17:49 GMT  
		Size: 16.0 MB (16038019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b4a13815a4bd4125fc9b4f43a991468472e584d829f4826885b302a57487bb9`  
		Last Modified: Tue, 21 Aug 2018 09:17:42 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c18f20c67e0d78856ae46fde0622ca19b8e2eee77950da788adc44bbc9b31a1`  
		Last Modified: Tue, 21 Aug 2018 09:17:42 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a379df6ee7c75f776527876236959161344c2469e9e2ee54dcafe6acb92e198e`  
		Last Modified: Tue, 21 Aug 2018 09:17:42 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5f5df4671a88bd9e59f8952857b56eb0bcf69de947b9dead277bfbbb1a20b6`  
		Last Modified: Tue, 21 Aug 2018 09:17:42 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03bc7fd5919672325eb397a20c966165e54a47b968f38f3faf675c3985095c30`  
		Last Modified: Tue, 21 Aug 2018 09:17:43 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7-alpine`

```console
$ docker pull traefik@sha256:d58eec8c88c4680343f403dcef96e64e7e43b30acfea40d123dbe55290e19617
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.7-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:faf79df21ffb6c9ebebbbdc3c7887110c01646306a68bcfcd298d5be703825e9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.5 MB (18514608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d0b25a10da4b1d720ec021af858b663db0d0c7435f7d13a194dd7163181f430`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 18:46:58 GMT
RUN apk --no-cache add ca-certificates
# Thu, 02 Aug 2018 21:01:29 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0-rc3/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Thu, 02 Aug 2018 21:01:29 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Thu, 02 Aug 2018 21:01:30 GMT
EXPOSE 80/tcp
# Thu, 02 Aug 2018 21:01:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 02 Aug 2018 21:01:30 GMT
CMD ["traefik"]
# Thu, 02 Aug 2018 21:01:30 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc3 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:f3fa96f07c2ae65f251d1762a87b5f54a1fad66ba2e4dd529971d0552354c9cd`  
		Last Modified: Thu, 02 Aug 2018 21:03:53 GMT  
		Size: 16.1 MB (16148352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db63b53deddf05b4b32961b2b796884bea83841a0a12a97ce33e1b321c257b74`  
		Last Modified: Thu, 02 Aug 2018 21:03:45 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:6b69267640896f950966914b90d8ba3f163e17332185b83201ac39774182daf7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17815370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c71ddb45196be08ba4cdab673410bfefde29b9f9654cb75bda5009e77e1fa73d`
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
# Thu, 02 Aug 2018 21:01:16 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0-rc3/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Thu, 02 Aug 2018 21:01:17 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Thu, 02 Aug 2018 21:01:17 GMT
EXPOSE 80/tcp
# Thu, 02 Aug 2018 21:01:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 02 Aug 2018 21:01:17 GMT
CMD ["traefik"]
# Thu, 02 Aug 2018 21:01:18 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc3 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:7028d0cac9534c2c7bb7ba9012d5a968a8f7234d5ddef0278f02f239daa57c70`  
		Last Modified: Thu, 02 Aug 2018 21:02:05 GMT  
		Size: 15.5 MB (15496738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de620dfffd9c9a7cd30bf35a373c646389d26e93bc808d00ecab2873033433ec`  
		Last Modified: Thu, 02 Aug 2018 21:01:59 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:f1b6762e9787025962cf98a3bff0fc4f10c54c55783a9757f1038bc777cbad37
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17478208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03375995f9a53f14dcfd5d166e18f4f93ba4e9a455887cc3fc9d3a4e7382ec72`
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
# Thu, 02 Aug 2018 21:02:01 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0-rc3/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Thu, 02 Aug 2018 21:02:02 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Thu, 02 Aug 2018 21:02:02 GMT
EXPOSE 80/tcp
# Thu, 02 Aug 2018 21:02:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 02 Aug 2018 21:02:04 GMT
CMD ["traefik"]
# Thu, 02 Aug 2018 21:02:04 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc3 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:9ec7c467ee0572836d0c952e27d2e3a1566f0fdf6c500df9e8a2b772e6706170`  
		Last Modified: Thu, 02 Aug 2018 21:04:24 GMT  
		Size: 15.2 MB (15211470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4c5527ad157588986306dd27302aa5dcd7ccbbea6c6f39b58ffe5264ff25c16`  
		Last Modified: Thu, 02 Aug 2018 21:04:17 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7-nanoserver`

```console
$ docker pull traefik@sha256:debba1884c044f27861d706adfc4f8106ad2cf814f6bbed2b6272a13979ba41d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2430; amd64

### `traefik:v1.7-nanoserver` - windows version 10.0.14393.2430; amd64

```console
$ docker pull traefik@sha256:cadfa1176dd039b361fdadee56a10b7795d9c8f2cae213b826ba03b83de283e3
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **436.5 MB (436517803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eaf162278b4ca0c2ed2defb77f03f7328f3d826b2a1a29e6d09209f39204575d`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Aug 2018 17:51:52 GMT
RUN Install update 10.0.14393.2430
# Tue, 21 Aug 2018 09:16:57 GMT
RUN cmd /S /C #(nop) COPY file:4c94379aa4d378c3412fd0a5ac3edfef56d6836d9638f135e43481fdbadf297c in \traefik.exe 
# Tue, 21 Aug 2018 09:17:00 GMT
RUN cmd /S /C #(nop)  VOLUME [C:/etc/traefik]
# Tue, 21 Aug 2018 09:17:01 GMT
RUN cmd /S /C #(nop)  VOLUME [C:/etc/ssl]
# Tue, 21 Aug 2018 09:17:02 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Tue, 21 Aug 2018 09:17:03 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 21 Aug 2018 09:17:04 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:4a14bdf6da80603aa5007acea8d5ea659958b0bd1b31d31078023ca0d1c8ee05`  
		Last Modified: Mon, 13 Aug 2018 17:51:52 GMT  
		Size: 167.8 MB (167784035 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:46d151ccc57c66b81533f08eac23921137138ab6cbe08ce1ebdd16f53e32c418`  
		Last Modified: Tue, 21 Aug 2018 09:17:49 GMT  
		Size: 16.0 MB (16038019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b4a13815a4bd4125fc9b4f43a991468472e584d829f4826885b302a57487bb9`  
		Last Modified: Tue, 21 Aug 2018 09:17:42 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c18f20c67e0d78856ae46fde0622ca19b8e2eee77950da788adc44bbc9b31a1`  
		Last Modified: Tue, 21 Aug 2018 09:17:42 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a379df6ee7c75f776527876236959161344c2469e9e2ee54dcafe6acb92e198e`  
		Last Modified: Tue, 21 Aug 2018 09:17:42 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5f5df4671a88bd9e59f8952857b56eb0bcf69de947b9dead277bfbbb1a20b6`  
		Last Modified: Tue, 21 Aug 2018 09:17:42 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03bc7fd5919672325eb397a20c966165e54a47b968f38f3faf675c3985095c30`  
		Last Modified: Tue, 21 Aug 2018 09:17:43 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:debba1884c044f27861d706adfc4f8106ad2cf814f6bbed2b6272a13979ba41d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2430; amd64

### `traefik:v1.7-nanoserver-sac2016` - windows version 10.0.14393.2430; amd64

```console
$ docker pull traefik@sha256:cadfa1176dd039b361fdadee56a10b7795d9c8f2cae213b826ba03b83de283e3
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **436.5 MB (436517803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eaf162278b4ca0c2ed2defb77f03f7328f3d826b2a1a29e6d09209f39204575d`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Aug 2018 17:51:52 GMT
RUN Install update 10.0.14393.2430
# Tue, 21 Aug 2018 09:16:57 GMT
RUN cmd /S /C #(nop) COPY file:4c94379aa4d378c3412fd0a5ac3edfef56d6836d9638f135e43481fdbadf297c in \traefik.exe 
# Tue, 21 Aug 2018 09:17:00 GMT
RUN cmd /S /C #(nop)  VOLUME [C:/etc/traefik]
# Tue, 21 Aug 2018 09:17:01 GMT
RUN cmd /S /C #(nop)  VOLUME [C:/etc/ssl]
# Tue, 21 Aug 2018 09:17:02 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Tue, 21 Aug 2018 09:17:03 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 21 Aug 2018 09:17:04 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:4a14bdf6da80603aa5007acea8d5ea659958b0bd1b31d31078023ca0d1c8ee05`  
		Last Modified: Mon, 13 Aug 2018 17:51:52 GMT  
		Size: 167.8 MB (167784035 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:46d151ccc57c66b81533f08eac23921137138ab6cbe08ce1ebdd16f53e32c418`  
		Last Modified: Tue, 21 Aug 2018 09:17:49 GMT  
		Size: 16.0 MB (16038019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b4a13815a4bd4125fc9b4f43a991468472e584d829f4826885b302a57487bb9`  
		Last Modified: Tue, 21 Aug 2018 09:17:42 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c18f20c67e0d78856ae46fde0622ca19b8e2eee77950da788adc44bbc9b31a1`  
		Last Modified: Tue, 21 Aug 2018 09:17:42 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a379df6ee7c75f776527876236959161344c2469e9e2ee54dcafe6acb92e198e`  
		Last Modified: Tue, 21 Aug 2018 09:17:42 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5f5df4671a88bd9e59f8952857b56eb0bcf69de947b9dead277bfbbb1a20b6`  
		Last Modified: Tue, 21 Aug 2018 09:17:42 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03bc7fd5919672325eb397a20c966165e54a47b968f38f3faf675c3985095c30`  
		Last Modified: Tue, 21 Aug 2018 09:17:43 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
