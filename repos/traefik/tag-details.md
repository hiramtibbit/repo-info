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
-	[`traefik:1.7.0-rc4`](#traefik170-rc4)
-	[`traefik:1.7.0-rc4-alpine`](#traefik170-rc4-alpine)
-	[`traefik:1.7.0-rc4-nanoserver`](#traefik170-rc4-nanoserver)
-	[`traefik:1.7.0-rc4-nanoserver-sac2016`](#traefik170-rc4-nanoserver-sac2016)
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
-	[`traefik:v1.7.0-rc4`](#traefikv170-rc4)
-	[`traefik:v1.7.0-rc4-alpine`](#traefikv170-rc4-alpine)
-	[`traefik:v1.7.0-rc4-nanoserver`](#traefikv170-rc4-nanoserver)
-	[`traefik:v1.7.0-rc4-nanoserver-sac2016`](#traefikv170-rc4-nanoserver-sac2016)
-	[`traefik:v1.7-alpine`](#traefikv17-alpine)
-	[`traefik:v1.7-nanoserver`](#traefikv17-nanoserver)
-	[`traefik:v1.7-nanoserver-sac2016`](#traefikv17-nanoserver-sac2016)

## `traefik:1.6`

```console
$ docker pull traefik@sha256:9569c56e8b7353c9c4e5d4f00177b0b7c523db6926a42a148e04a6fa4b6f9f8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.6` - linux; amd64

```console
$ docker pull traefik@sha256:7ab9001bce40d391d979c7646c6e738db4faef5f0a9b9c2452030c5ac19b4517
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.9 MB (14882236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8970cfa7a3352dbb31050beb3fc531937d74f261eefa883b5d39db44fb8ea7f6`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 07 Sep 2018 19:05:07 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Fri, 07 Sep 2018 19:05:37 GMT
COPY file:9c03fadf31c7f4799d64e85e747e1236d2937b6d6224d8b23c9b30c354b9edd0 in / 
# Fri, 07 Sep 2018 19:05:38 GMT
EXPOSE 80/tcp
# Fri, 07 Sep 2018 19:05:38 GMT
ENTRYPOINT ["/traefik"]
# Fri, 07 Sep 2018 19:05:38 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:c6e5aced14a22b72f0fd545bec131cc37ac8382fae12614369232b12bf5cc1bf`  
		Last Modified: Fri, 07 Sep 2018 19:06:05 GMT  
		Size: 135.0 KB (135037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cfc751ed1530070a70f8b1ce4c878668be2f515403808abc7cf5dd57a4a6bf6`  
		Last Modified: Fri, 07 Sep 2018 19:07:28 GMT  
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
$ docker pull traefik@sha256:9569c56e8b7353c9c4e5d4f00177b0b7c523db6926a42a148e04a6fa4b6f9f8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.6.6` - linux; amd64

```console
$ docker pull traefik@sha256:7ab9001bce40d391d979c7646c6e738db4faef5f0a9b9c2452030c5ac19b4517
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.9 MB (14882236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8970cfa7a3352dbb31050beb3fc531937d74f261eefa883b5d39db44fb8ea7f6`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 07 Sep 2018 19:05:07 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Fri, 07 Sep 2018 19:05:37 GMT
COPY file:9c03fadf31c7f4799d64e85e747e1236d2937b6d6224d8b23c9b30c354b9edd0 in / 
# Fri, 07 Sep 2018 19:05:38 GMT
EXPOSE 80/tcp
# Fri, 07 Sep 2018 19:05:38 GMT
ENTRYPOINT ["/traefik"]
# Fri, 07 Sep 2018 19:05:38 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:c6e5aced14a22b72f0fd545bec131cc37ac8382fae12614369232b12bf5cc1bf`  
		Last Modified: Fri, 07 Sep 2018 19:06:05 GMT  
		Size: 135.0 KB (135037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cfc751ed1530070a70f8b1ce4c878668be2f515403808abc7cf5dd57a4a6bf6`  
		Last Modified: Fri, 07 Sep 2018 19:07:28 GMT  
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
$ docker pull traefik@sha256:2f14705932256d8ac7ade7686c3fcce950a9d279ddaf533642ce60d88ee3b2ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.6.6-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:4ae4f4a666153052b4eb9837f36f9b24b8eaf7108f67c75cdc2fc013b3d41aa4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17263094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46a2d0f0ffc5d62ba6aefe9590a0041923ff7bb9e680516e197ff3c9f43405ae`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Fri, 07 Sep 2018 19:05:18 GMT
RUN apk --no-cache add ca-certificates
# Fri, 07 Sep 2018 19:05:49 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Fri, 07 Sep 2018 19:05:49 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Fri, 07 Sep 2018 19:05:50 GMT
EXPOSE 80/tcp
# Fri, 07 Sep 2018 19:05:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 07 Sep 2018 19:05:50 GMT
CMD ["traefik"]
# Fri, 07 Sep 2018 19:05:50 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8d4712d1be358e9c3e60fd8a65c71e6c209a7d53c238f635ba114b54d930aa6`  
		Last Modified: Fri, 07 Sep 2018 19:06:45 GMT  
		Size: 309.0 KB (308994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e523320589e5b2ec42d9a051030cfd0bee9a6339ff7a23e03f7772e4bbd570cb`  
		Last Modified: Fri, 07 Sep 2018 19:08:11 GMT  
		Size: 14.7 MB (14747236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11c48cd1bd32b9e6e7175c1971b7d208d116cf6c6e5e4b5c7ff060da43ccf0e7`  
		Last Modified: Fri, 07 Sep 2018 19:08:07 GMT  
		Size: 322.0 B  
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
$ docker pull traefik@sha256:2f14705932256d8ac7ade7686c3fcce950a9d279ddaf533642ce60d88ee3b2ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.6-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:4ae4f4a666153052b4eb9837f36f9b24b8eaf7108f67c75cdc2fc013b3d41aa4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17263094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46a2d0f0ffc5d62ba6aefe9590a0041923ff7bb9e680516e197ff3c9f43405ae`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Fri, 07 Sep 2018 19:05:18 GMT
RUN apk --no-cache add ca-certificates
# Fri, 07 Sep 2018 19:05:49 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Fri, 07 Sep 2018 19:05:49 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Fri, 07 Sep 2018 19:05:50 GMT
EXPOSE 80/tcp
# Fri, 07 Sep 2018 19:05:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 07 Sep 2018 19:05:50 GMT
CMD ["traefik"]
# Fri, 07 Sep 2018 19:05:50 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8d4712d1be358e9c3e60fd8a65c71e6c209a7d53c238f635ba114b54d930aa6`  
		Last Modified: Fri, 07 Sep 2018 19:06:45 GMT  
		Size: 309.0 KB (308994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e523320589e5b2ec42d9a051030cfd0bee9a6339ff7a23e03f7772e4bbd570cb`  
		Last Modified: Fri, 07 Sep 2018 19:08:11 GMT  
		Size: 14.7 MB (14747236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11c48cd1bd32b9e6e7175c1971b7d208d116cf6c6e5e4b5c7ff060da43ccf0e7`  
		Last Modified: Fri, 07 Sep 2018 19:08:07 GMT  
		Size: 322.0 B  
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
$ docker pull traefik@sha256:67b68d48d040cce81472f456fef7b61d1f7cdfc3fe3680f2696650cb070bf765
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:1.7` - linux; amd64

```console
$ docker pull traefik@sha256:0aec82f4c68c8e375ff6cfe564e1fb4d4658f0cb119ecfecff1ad765a32313b0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18648337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adb1466e94c9dffb1d124af6bd860f48d7551d6e9b1aae7573ec2c59d897ac04`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 07 Sep 2018 19:05:07 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Fri, 07 Sep 2018 19:05:08 GMT
COPY file:08dd86cdb381793be91a15a72bc957028f3276e45e6125097fd81da6dd6baccd in / 
# Fri, 07 Sep 2018 19:05:08 GMT
EXPOSE 80/tcp
# Fri, 07 Sep 2018 19:05:08 GMT
ENTRYPOINT ["/traefik"]
# Fri, 07 Sep 2018 19:05:09 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:c6e5aced14a22b72f0fd545bec131cc37ac8382fae12614369232b12bf5cc1bf`  
		Last Modified: Fri, 07 Sep 2018 19:06:05 GMT  
		Size: 135.0 KB (135037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b5b09e2ef652c8871587cae534864eff5f62824acf867f533a3a2e37621c2d8`  
		Last Modified: Fri, 07 Sep 2018 19:06:11 GMT  
		Size: 18.5 MB (18513300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7.0-rc4`

```console
$ docker pull traefik@sha256:67b68d48d040cce81472f456fef7b61d1f7cdfc3fe3680f2696650cb070bf765
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:1.7.0-rc4` - linux; amd64

```console
$ docker pull traefik@sha256:0aec82f4c68c8e375ff6cfe564e1fb4d4658f0cb119ecfecff1ad765a32313b0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18648337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adb1466e94c9dffb1d124af6bd860f48d7551d6e9b1aae7573ec2c59d897ac04`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 07 Sep 2018 19:05:07 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Fri, 07 Sep 2018 19:05:08 GMT
COPY file:08dd86cdb381793be91a15a72bc957028f3276e45e6125097fd81da6dd6baccd in / 
# Fri, 07 Sep 2018 19:05:08 GMT
EXPOSE 80/tcp
# Fri, 07 Sep 2018 19:05:08 GMT
ENTRYPOINT ["/traefik"]
# Fri, 07 Sep 2018 19:05:09 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:c6e5aced14a22b72f0fd545bec131cc37ac8382fae12614369232b12bf5cc1bf`  
		Last Modified: Fri, 07 Sep 2018 19:06:05 GMT  
		Size: 135.0 KB (135037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b5b09e2ef652c8871587cae534864eff5f62824acf867f533a3a2e37621c2d8`  
		Last Modified: Fri, 07 Sep 2018 19:06:11 GMT  
		Size: 18.5 MB (18513300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7.0-rc4-alpine`

```console
$ docker pull traefik@sha256:eb527f6070c571161c529bdea22c70079e69ab5b85a2382dd3f86fc441bb767c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:1.7.0-rc4-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:fe58fdb5d1c4640c907044927f2abac71296bb180364d4bbb2fecf5fdc2c40bc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.0 MB (21029261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a7d503b841f7758177af414af8fbda8e927427b5454caeabe92fb5f19e8eebb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Fri, 07 Sep 2018 19:05:18 GMT
RUN apk --no-cache add ca-certificates
# Fri, 07 Sep 2018 19:05:21 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0-rc4/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Fri, 07 Sep 2018 19:05:21 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Fri, 07 Sep 2018 19:05:21 GMT
EXPOSE 80/tcp
# Fri, 07 Sep 2018 19:05:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 07 Sep 2018 19:05:22 GMT
CMD ["traefik"]
# Fri, 07 Sep 2018 19:05:22 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8d4712d1be358e9c3e60fd8a65c71e6c209a7d53c238f635ba114b54d930aa6`  
		Last Modified: Fri, 07 Sep 2018 19:06:45 GMT  
		Size: 309.0 KB (308994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46d6357cd8b8f399f0a724ae78bdfb57ad17bd76bd1b416c6a6f8133869c19b3`  
		Last Modified: Fri, 07 Sep 2018 19:06:51 GMT  
		Size: 18.5 MB (18513406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e5ff3ae9e09caf3178da96e2279c7597608df02397e9c50800ec307d73b2045`  
		Last Modified: Fri, 07 Sep 2018 19:06:45 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7.0-rc4-nanoserver`

**does not exist** (yet?)

## `traefik:1.7.0-rc4-nanoserver-sac2016`

**does not exist** (yet?)

## `traefik:1.7-alpine`

```console
$ docker pull traefik@sha256:eb527f6070c571161c529bdea22c70079e69ab5b85a2382dd3f86fc441bb767c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:1.7-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:fe58fdb5d1c4640c907044927f2abac71296bb180364d4bbb2fecf5fdc2c40bc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.0 MB (21029261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a7d503b841f7758177af414af8fbda8e927427b5454caeabe92fb5f19e8eebb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Fri, 07 Sep 2018 19:05:18 GMT
RUN apk --no-cache add ca-certificates
# Fri, 07 Sep 2018 19:05:21 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0-rc4/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Fri, 07 Sep 2018 19:05:21 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Fri, 07 Sep 2018 19:05:21 GMT
EXPOSE 80/tcp
# Fri, 07 Sep 2018 19:05:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 07 Sep 2018 19:05:22 GMT
CMD ["traefik"]
# Fri, 07 Sep 2018 19:05:22 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8d4712d1be358e9c3e60fd8a65c71e6c209a7d53c238f635ba114b54d930aa6`  
		Last Modified: Fri, 07 Sep 2018 19:06:45 GMT  
		Size: 309.0 KB (308994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46d6357cd8b8f399f0a724ae78bdfb57ad17bd76bd1b416c6a6f8133869c19b3`  
		Last Modified: Fri, 07 Sep 2018 19:06:51 GMT  
		Size: 18.5 MB (18513406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e5ff3ae9e09caf3178da96e2279c7597608df02397e9c50800ec307d73b2045`  
		Last Modified: Fri, 07 Sep 2018 19:06:45 GMT  
		Size: 319.0 B  
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
$ docker pull traefik@sha256:2f14705932256d8ac7ade7686c3fcce950a9d279ddaf533642ce60d88ee3b2ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:alpine` - linux; amd64

```console
$ docker pull traefik@sha256:4ae4f4a666153052b4eb9837f36f9b24b8eaf7108f67c75cdc2fc013b3d41aa4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17263094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46a2d0f0ffc5d62ba6aefe9590a0041923ff7bb9e680516e197ff3c9f43405ae`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Fri, 07 Sep 2018 19:05:18 GMT
RUN apk --no-cache add ca-certificates
# Fri, 07 Sep 2018 19:05:49 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Fri, 07 Sep 2018 19:05:49 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Fri, 07 Sep 2018 19:05:50 GMT
EXPOSE 80/tcp
# Fri, 07 Sep 2018 19:05:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 07 Sep 2018 19:05:50 GMT
CMD ["traefik"]
# Fri, 07 Sep 2018 19:05:50 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8d4712d1be358e9c3e60fd8a65c71e6c209a7d53c238f635ba114b54d930aa6`  
		Last Modified: Fri, 07 Sep 2018 19:06:45 GMT  
		Size: 309.0 KB (308994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e523320589e5b2ec42d9a051030cfd0bee9a6339ff7a23e03f7772e4bbd570cb`  
		Last Modified: Fri, 07 Sep 2018 19:08:11 GMT  
		Size: 14.7 MB (14747236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11c48cd1bd32b9e6e7175c1971b7d208d116cf6c6e5e4b5c7ff060da43ccf0e7`  
		Last Modified: Fri, 07 Sep 2018 19:08:07 GMT  
		Size: 322.0 B  
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
$ docker pull traefik@sha256:0250cc8f026366f76ada1acd378b3a5c68892bfd30e99845043f3a798503d2c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

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

### `traefik:latest` - linux; arm64 variant v8

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

## `traefik:maroilles`

```console
$ docker pull traefik@sha256:67b68d48d040cce81472f456fef7b61d1f7cdfc3fe3680f2696650cb070bf765
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:maroilles` - linux; amd64

```console
$ docker pull traefik@sha256:0aec82f4c68c8e375ff6cfe564e1fb4d4658f0cb119ecfecff1ad765a32313b0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18648337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adb1466e94c9dffb1d124af6bd860f48d7551d6e9b1aae7573ec2c59d897ac04`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 07 Sep 2018 19:05:07 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Fri, 07 Sep 2018 19:05:08 GMT
COPY file:08dd86cdb381793be91a15a72bc957028f3276e45e6125097fd81da6dd6baccd in / 
# Fri, 07 Sep 2018 19:05:08 GMT
EXPOSE 80/tcp
# Fri, 07 Sep 2018 19:05:08 GMT
ENTRYPOINT ["/traefik"]
# Fri, 07 Sep 2018 19:05:09 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:c6e5aced14a22b72f0fd545bec131cc37ac8382fae12614369232b12bf5cc1bf`  
		Last Modified: Fri, 07 Sep 2018 19:06:05 GMT  
		Size: 135.0 KB (135037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b5b09e2ef652c8871587cae534864eff5f62824acf867f533a3a2e37621c2d8`  
		Last Modified: Fri, 07 Sep 2018 19:06:11 GMT  
		Size: 18.5 MB (18513300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:maroilles-alpine`

```console
$ docker pull traefik@sha256:eb527f6070c571161c529bdea22c70079e69ab5b85a2382dd3f86fc441bb767c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:maroilles-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:fe58fdb5d1c4640c907044927f2abac71296bb180364d4bbb2fecf5fdc2c40bc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.0 MB (21029261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a7d503b841f7758177af414af8fbda8e927427b5454caeabe92fb5f19e8eebb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Fri, 07 Sep 2018 19:05:18 GMT
RUN apk --no-cache add ca-certificates
# Fri, 07 Sep 2018 19:05:21 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0-rc4/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Fri, 07 Sep 2018 19:05:21 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Fri, 07 Sep 2018 19:05:21 GMT
EXPOSE 80/tcp
# Fri, 07 Sep 2018 19:05:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 07 Sep 2018 19:05:22 GMT
CMD ["traefik"]
# Fri, 07 Sep 2018 19:05:22 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8d4712d1be358e9c3e60fd8a65c71e6c209a7d53c238f635ba114b54d930aa6`  
		Last Modified: Fri, 07 Sep 2018 19:06:45 GMT  
		Size: 309.0 KB (308994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46d6357cd8b8f399f0a724ae78bdfb57ad17bd76bd1b416c6a6f8133869c19b3`  
		Last Modified: Fri, 07 Sep 2018 19:06:51 GMT  
		Size: 18.5 MB (18513406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e5ff3ae9e09caf3178da96e2279c7597608df02397e9c50800ec307d73b2045`  
		Last Modified: Fri, 07 Sep 2018 19:06:45 GMT  
		Size: 319.0 B  
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
$ docker pull traefik@sha256:9569c56e8b7353c9c4e5d4f00177b0b7c523db6926a42a148e04a6fa4b6f9f8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:tetedemoine` - linux; amd64

```console
$ docker pull traefik@sha256:7ab9001bce40d391d979c7646c6e738db4faef5f0a9b9c2452030c5ac19b4517
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.9 MB (14882236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8970cfa7a3352dbb31050beb3fc531937d74f261eefa883b5d39db44fb8ea7f6`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 07 Sep 2018 19:05:07 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Fri, 07 Sep 2018 19:05:37 GMT
COPY file:9c03fadf31c7f4799d64e85e747e1236d2937b6d6224d8b23c9b30c354b9edd0 in / 
# Fri, 07 Sep 2018 19:05:38 GMT
EXPOSE 80/tcp
# Fri, 07 Sep 2018 19:05:38 GMT
ENTRYPOINT ["/traefik"]
# Fri, 07 Sep 2018 19:05:38 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:c6e5aced14a22b72f0fd545bec131cc37ac8382fae12614369232b12bf5cc1bf`  
		Last Modified: Fri, 07 Sep 2018 19:06:05 GMT  
		Size: 135.0 KB (135037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cfc751ed1530070a70f8b1ce4c878668be2f515403808abc7cf5dd57a4a6bf6`  
		Last Modified: Fri, 07 Sep 2018 19:07:28 GMT  
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
$ docker pull traefik@sha256:2f14705932256d8ac7ade7686c3fcce950a9d279ddaf533642ce60d88ee3b2ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:tetedemoine-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:4ae4f4a666153052b4eb9837f36f9b24b8eaf7108f67c75cdc2fc013b3d41aa4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17263094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46a2d0f0ffc5d62ba6aefe9590a0041923ff7bb9e680516e197ff3c9f43405ae`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Fri, 07 Sep 2018 19:05:18 GMT
RUN apk --no-cache add ca-certificates
# Fri, 07 Sep 2018 19:05:49 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Fri, 07 Sep 2018 19:05:49 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Fri, 07 Sep 2018 19:05:50 GMT
EXPOSE 80/tcp
# Fri, 07 Sep 2018 19:05:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 07 Sep 2018 19:05:50 GMT
CMD ["traefik"]
# Fri, 07 Sep 2018 19:05:50 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8d4712d1be358e9c3e60fd8a65c71e6c209a7d53c238f635ba114b54d930aa6`  
		Last Modified: Fri, 07 Sep 2018 19:06:45 GMT  
		Size: 309.0 KB (308994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e523320589e5b2ec42d9a051030cfd0bee9a6339ff7a23e03f7772e4bbd570cb`  
		Last Modified: Fri, 07 Sep 2018 19:08:11 GMT  
		Size: 14.7 MB (14747236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11c48cd1bd32b9e6e7175c1971b7d208d116cf6c6e5e4b5c7ff060da43ccf0e7`  
		Last Modified: Fri, 07 Sep 2018 19:08:07 GMT  
		Size: 322.0 B  
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
$ docker pull traefik@sha256:9569c56e8b7353c9c4e5d4f00177b0b7c523db6926a42a148e04a6fa4b6f9f8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.6` - linux; amd64

```console
$ docker pull traefik@sha256:7ab9001bce40d391d979c7646c6e738db4faef5f0a9b9c2452030c5ac19b4517
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.9 MB (14882236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8970cfa7a3352dbb31050beb3fc531937d74f261eefa883b5d39db44fb8ea7f6`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 07 Sep 2018 19:05:07 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Fri, 07 Sep 2018 19:05:37 GMT
COPY file:9c03fadf31c7f4799d64e85e747e1236d2937b6d6224d8b23c9b30c354b9edd0 in / 
# Fri, 07 Sep 2018 19:05:38 GMT
EXPOSE 80/tcp
# Fri, 07 Sep 2018 19:05:38 GMT
ENTRYPOINT ["/traefik"]
# Fri, 07 Sep 2018 19:05:38 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:c6e5aced14a22b72f0fd545bec131cc37ac8382fae12614369232b12bf5cc1bf`  
		Last Modified: Fri, 07 Sep 2018 19:06:05 GMT  
		Size: 135.0 KB (135037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cfc751ed1530070a70f8b1ce4c878668be2f515403808abc7cf5dd57a4a6bf6`  
		Last Modified: Fri, 07 Sep 2018 19:07:28 GMT  
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
$ docker pull traefik@sha256:9569c56e8b7353c9c4e5d4f00177b0b7c523db6926a42a148e04a6fa4b6f9f8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.6.6` - linux; amd64

```console
$ docker pull traefik@sha256:7ab9001bce40d391d979c7646c6e738db4faef5f0a9b9c2452030c5ac19b4517
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.9 MB (14882236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8970cfa7a3352dbb31050beb3fc531937d74f261eefa883b5d39db44fb8ea7f6`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 07 Sep 2018 19:05:07 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Fri, 07 Sep 2018 19:05:37 GMT
COPY file:9c03fadf31c7f4799d64e85e747e1236d2937b6d6224d8b23c9b30c354b9edd0 in / 
# Fri, 07 Sep 2018 19:05:38 GMT
EXPOSE 80/tcp
# Fri, 07 Sep 2018 19:05:38 GMT
ENTRYPOINT ["/traefik"]
# Fri, 07 Sep 2018 19:05:38 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:c6e5aced14a22b72f0fd545bec131cc37ac8382fae12614369232b12bf5cc1bf`  
		Last Modified: Fri, 07 Sep 2018 19:06:05 GMT  
		Size: 135.0 KB (135037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cfc751ed1530070a70f8b1ce4c878668be2f515403808abc7cf5dd57a4a6bf6`  
		Last Modified: Fri, 07 Sep 2018 19:07:28 GMT  
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
$ docker pull traefik@sha256:2f14705932256d8ac7ade7686c3fcce950a9d279ddaf533642ce60d88ee3b2ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.6.6-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:4ae4f4a666153052b4eb9837f36f9b24b8eaf7108f67c75cdc2fc013b3d41aa4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17263094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46a2d0f0ffc5d62ba6aefe9590a0041923ff7bb9e680516e197ff3c9f43405ae`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Fri, 07 Sep 2018 19:05:18 GMT
RUN apk --no-cache add ca-certificates
# Fri, 07 Sep 2018 19:05:49 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Fri, 07 Sep 2018 19:05:49 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Fri, 07 Sep 2018 19:05:50 GMT
EXPOSE 80/tcp
# Fri, 07 Sep 2018 19:05:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 07 Sep 2018 19:05:50 GMT
CMD ["traefik"]
# Fri, 07 Sep 2018 19:05:50 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8d4712d1be358e9c3e60fd8a65c71e6c209a7d53c238f635ba114b54d930aa6`  
		Last Modified: Fri, 07 Sep 2018 19:06:45 GMT  
		Size: 309.0 KB (308994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e523320589e5b2ec42d9a051030cfd0bee9a6339ff7a23e03f7772e4bbd570cb`  
		Last Modified: Fri, 07 Sep 2018 19:08:11 GMT  
		Size: 14.7 MB (14747236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11c48cd1bd32b9e6e7175c1971b7d208d116cf6c6e5e4b5c7ff060da43ccf0e7`  
		Last Modified: Fri, 07 Sep 2018 19:08:07 GMT  
		Size: 322.0 B  
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
$ docker pull traefik@sha256:2f14705932256d8ac7ade7686c3fcce950a9d279ddaf533642ce60d88ee3b2ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.6-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:4ae4f4a666153052b4eb9837f36f9b24b8eaf7108f67c75cdc2fc013b3d41aa4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17263094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46a2d0f0ffc5d62ba6aefe9590a0041923ff7bb9e680516e197ff3c9f43405ae`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Fri, 07 Sep 2018 19:05:18 GMT
RUN apk --no-cache add ca-certificates
# Fri, 07 Sep 2018 19:05:49 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Fri, 07 Sep 2018 19:05:49 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Fri, 07 Sep 2018 19:05:50 GMT
EXPOSE 80/tcp
# Fri, 07 Sep 2018 19:05:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 07 Sep 2018 19:05:50 GMT
CMD ["traefik"]
# Fri, 07 Sep 2018 19:05:50 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8d4712d1be358e9c3e60fd8a65c71e6c209a7d53c238f635ba114b54d930aa6`  
		Last Modified: Fri, 07 Sep 2018 19:06:45 GMT  
		Size: 309.0 KB (308994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e523320589e5b2ec42d9a051030cfd0bee9a6339ff7a23e03f7772e4bbd570cb`  
		Last Modified: Fri, 07 Sep 2018 19:08:11 GMT  
		Size: 14.7 MB (14747236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11c48cd1bd32b9e6e7175c1971b7d208d116cf6c6e5e4b5c7ff060da43ccf0e7`  
		Last Modified: Fri, 07 Sep 2018 19:08:07 GMT  
		Size: 322.0 B  
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
$ docker pull traefik@sha256:67b68d48d040cce81472f456fef7b61d1f7cdfc3fe3680f2696650cb070bf765
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:v1.7` - linux; amd64

```console
$ docker pull traefik@sha256:0aec82f4c68c8e375ff6cfe564e1fb4d4658f0cb119ecfecff1ad765a32313b0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18648337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adb1466e94c9dffb1d124af6bd860f48d7551d6e9b1aae7573ec2c59d897ac04`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 07 Sep 2018 19:05:07 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Fri, 07 Sep 2018 19:05:08 GMT
COPY file:08dd86cdb381793be91a15a72bc957028f3276e45e6125097fd81da6dd6baccd in / 
# Fri, 07 Sep 2018 19:05:08 GMT
EXPOSE 80/tcp
# Fri, 07 Sep 2018 19:05:08 GMT
ENTRYPOINT ["/traefik"]
# Fri, 07 Sep 2018 19:05:09 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:c6e5aced14a22b72f0fd545bec131cc37ac8382fae12614369232b12bf5cc1bf`  
		Last Modified: Fri, 07 Sep 2018 19:06:05 GMT  
		Size: 135.0 KB (135037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b5b09e2ef652c8871587cae534864eff5f62824acf867f533a3a2e37621c2d8`  
		Last Modified: Fri, 07 Sep 2018 19:06:11 GMT  
		Size: 18.5 MB (18513300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7.0-rc4`

```console
$ docker pull traefik@sha256:67b68d48d040cce81472f456fef7b61d1f7cdfc3fe3680f2696650cb070bf765
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:v1.7.0-rc4` - linux; amd64

```console
$ docker pull traefik@sha256:0aec82f4c68c8e375ff6cfe564e1fb4d4658f0cb119ecfecff1ad765a32313b0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18648337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adb1466e94c9dffb1d124af6bd860f48d7551d6e9b1aae7573ec2c59d897ac04`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 07 Sep 2018 19:05:07 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Fri, 07 Sep 2018 19:05:08 GMT
COPY file:08dd86cdb381793be91a15a72bc957028f3276e45e6125097fd81da6dd6baccd in / 
# Fri, 07 Sep 2018 19:05:08 GMT
EXPOSE 80/tcp
# Fri, 07 Sep 2018 19:05:08 GMT
ENTRYPOINT ["/traefik"]
# Fri, 07 Sep 2018 19:05:09 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:c6e5aced14a22b72f0fd545bec131cc37ac8382fae12614369232b12bf5cc1bf`  
		Last Modified: Fri, 07 Sep 2018 19:06:05 GMT  
		Size: 135.0 KB (135037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b5b09e2ef652c8871587cae534864eff5f62824acf867f533a3a2e37621c2d8`  
		Last Modified: Fri, 07 Sep 2018 19:06:11 GMT  
		Size: 18.5 MB (18513300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7.0-rc4-alpine`

```console
$ docker pull traefik@sha256:eb527f6070c571161c529bdea22c70079e69ab5b85a2382dd3f86fc441bb767c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:v1.7.0-rc4-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:fe58fdb5d1c4640c907044927f2abac71296bb180364d4bbb2fecf5fdc2c40bc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.0 MB (21029261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a7d503b841f7758177af414af8fbda8e927427b5454caeabe92fb5f19e8eebb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Fri, 07 Sep 2018 19:05:18 GMT
RUN apk --no-cache add ca-certificates
# Fri, 07 Sep 2018 19:05:21 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0-rc4/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Fri, 07 Sep 2018 19:05:21 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Fri, 07 Sep 2018 19:05:21 GMT
EXPOSE 80/tcp
# Fri, 07 Sep 2018 19:05:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 07 Sep 2018 19:05:22 GMT
CMD ["traefik"]
# Fri, 07 Sep 2018 19:05:22 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8d4712d1be358e9c3e60fd8a65c71e6c209a7d53c238f635ba114b54d930aa6`  
		Last Modified: Fri, 07 Sep 2018 19:06:45 GMT  
		Size: 309.0 KB (308994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46d6357cd8b8f399f0a724ae78bdfb57ad17bd76bd1b416c6a6f8133869c19b3`  
		Last Modified: Fri, 07 Sep 2018 19:06:51 GMT  
		Size: 18.5 MB (18513406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e5ff3ae9e09caf3178da96e2279c7597608df02397e9c50800ec307d73b2045`  
		Last Modified: Fri, 07 Sep 2018 19:06:45 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7.0-rc4-nanoserver`

**does not exist** (yet?)

## `traefik:v1.7.0-rc4-nanoserver-sac2016`

**does not exist** (yet?)

## `traefik:v1.7-alpine`

```console
$ docker pull traefik@sha256:eb527f6070c571161c529bdea22c70079e69ab5b85a2382dd3f86fc441bb767c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:v1.7-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:fe58fdb5d1c4640c907044927f2abac71296bb180364d4bbb2fecf5fdc2c40bc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.0 MB (21029261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a7d503b841f7758177af414af8fbda8e927427b5454caeabe92fb5f19e8eebb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Fri, 07 Sep 2018 19:05:18 GMT
RUN apk --no-cache add ca-certificates
# Fri, 07 Sep 2018 19:05:21 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0-rc4/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Fri, 07 Sep 2018 19:05:21 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Fri, 07 Sep 2018 19:05:21 GMT
EXPOSE 80/tcp
# Fri, 07 Sep 2018 19:05:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 07 Sep 2018 19:05:22 GMT
CMD ["traefik"]
# Fri, 07 Sep 2018 19:05:22 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8d4712d1be358e9c3e60fd8a65c71e6c209a7d53c238f635ba114b54d930aa6`  
		Last Modified: Fri, 07 Sep 2018 19:06:45 GMT  
		Size: 309.0 KB (308994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46d6357cd8b8f399f0a724ae78bdfb57ad17bd76bd1b416c6a6f8133869c19b3`  
		Last Modified: Fri, 07 Sep 2018 19:06:51 GMT  
		Size: 18.5 MB (18513406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e5ff3ae9e09caf3178da96e2279c7597608df02397e9c50800ec307d73b2045`  
		Last Modified: Fri, 07 Sep 2018 19:06:45 GMT  
		Size: 319.0 B  
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
