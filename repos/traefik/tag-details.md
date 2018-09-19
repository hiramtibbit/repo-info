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
-	[`traefik:1.7.0-rc5`](#traefik170-rc5)
-	[`traefik:1.7.0-rc5-alpine`](#traefik170-rc5-alpine)
-	[`traefik:1.7.0-rc5-nanoserver`](#traefik170-rc5-nanoserver)
-	[`traefik:1.7.0-rc5-nanoserver-sac2016`](#traefik170-rc5-nanoserver-sac2016)
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
-	[`traefik:v1.7.0-rc5`](#traefikv170-rc5)
-	[`traefik:v1.7.0-rc5-alpine`](#traefikv170-rc5-alpine)
-	[`traefik:v1.7.0-rc5-nanoserver`](#traefikv170-rc5-nanoserver)
-	[`traefik:v1.7.0-rc5-nanoserver-sac2016`](#traefikv170-rc5-nanoserver-sac2016)
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
$ docker pull traefik@sha256:765271e0ed47f9360c877b184a5b61288edcd92e6b0303a91b5e7606be4e3766
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.6.6-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:f0101c41eac2ff634b87fe1489c02e78cd5f91b8f23f0c179e5959fa3571e256
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17263450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93613ddb0e25ddb4f99031fa628bf112722f86281855cc39ac7efffc3395be1c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 03:37:55 GMT
RUN apk --no-cache add ca-certificates
# Wed, 12 Sep 2018 03:38:09 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 12 Sep 2018 03:38:09 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Wed, 12 Sep 2018 03:38:09 GMT
EXPOSE 80/tcp
# Wed, 12 Sep 2018 03:38:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 12 Sep 2018 03:38:10 GMT
CMD ["traefik"]
# Wed, 12 Sep 2018 03:38:10 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d9593d002f462333c2d2b049c0e43267d2f25e7031617d7951e483cfe6fceef`  
		Last Modified: Wed, 12 Sep 2018 03:38:22 GMT  
		Size: 309.0 KB (308983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c85326782b5d035a27b842bb16349fa48b704cc94161f8973c8a97a5abd6c546`  
		Last Modified: Wed, 12 Sep 2018 03:39:01 GMT  
		Size: 14.7 MB (14747215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c9b2016abc54550090a1073ca098d008383b626cdfe8ace1448b888eeb783f4`  
		Last Modified: Wed, 12 Sep 2018 03:38:58 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.6.6-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:9d6f8e7fd8ec81db2d700b2ec83621ca95de94015e0b0b9e8a47e988561c5351
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.6 MB (16576094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a01adfd2572523b2bf72bb6224ffb46597f02acea50d42ad137d9b20ebdf213`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:31:22 GMT
RUN apk --no-cache add ca-certificates
# Wed, 12 Sep 2018 08:31:38 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 12 Sep 2018 08:31:38 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Wed, 12 Sep 2018 08:31:38 GMT
EXPOSE 80/tcp
# Wed, 12 Sep 2018 08:31:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 12 Sep 2018 08:31:40 GMT
CMD ["traefik"]
# Wed, 12 Sep 2018 08:31:41 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:905674ea9d9448b14f15ae82e3c34138680bac1ef4fc29088aae8c9639b502fe`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 2.1 MB (2146453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91fe322e1690c8fb3f2b684fd85335d36a45e509b1568683232aede6d8a5e2b`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74a65db53aaa0cc4ab0232b1e179456b46fe0f6c04a77b387b9d4bdc2efd62c9`  
		Last Modified: Wed, 12 Sep 2018 08:31:52 GMT  
		Size: 309.1 KB (309068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08b9d225734e72e18e54cfe219c45734f7ebda8e12f9c507bc9edaf73874250`  
		Last Modified: Wed, 12 Sep 2018 08:32:23 GMT  
		Size: 14.1 MB (14120079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f147683d6b4012117dcfce23001d9474f334a34509cadaca310dee6bb32a93f`  
		Last Modified: Wed, 12 Sep 2018 08:32:17 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.6.6-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:908d0bc7186aab126f76d990f358bbe9db62cf5b8fcd7e5ab864830f31e8bfe7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.2 MB (16242998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5996557958cf1a79e9d9ae91d71f8627175aaedd6a0a327e50e61aacc38658e4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 12 Sep 2018 08:42:24 GMT
ADD file:a4b53e2a2e207c5107a76c16d91b99cb1ed4ecb90b363913798e663426137d45 in / 
# Wed, 12 Sep 2018 08:42:24 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:42:25 GMT
CMD ["/bin/sh"]
# Wed, 19 Sep 2018 08:43:28 GMT
RUN apk --no-cache add ca-certificates
# Wed, 19 Sep 2018 08:44:55 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 19 Sep 2018 08:44:56 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Wed, 19 Sep 2018 08:44:57 GMT
EXPOSE 80/tcp
# Wed, 19 Sep 2018 08:44:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 19 Sep 2018 08:44:58 GMT
CMD ["traefik"]
# Wed, 19 Sep 2018 08:45:00 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:9941776d74c9129fd585b6f0434ba48bd3a7112d6736bc02e6d12f41153cab26`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 2.1 MB (2099762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae94b3cb7a1b2cef0ceffe3303cd03f83434d283aab43389e586b42bea00b358`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c9f8de84abb1c0426abc9f58b577b1536c16e87bcd8b0170be82c4f0ae8e4de`  
		Last Modified: Wed, 19 Sep 2018 08:46:35 GMT  
		Size: 308.5 KB (308531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:117877260e54ea5a540c4cb0c22a8bb4563afce08e2611de37cd3e2bc9cd6467`  
		Last Modified: Wed, 19 Sep 2018 08:47:54 GMT  
		Size: 13.8 MB (13834207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3166c1159ab9e56ababf2746bc391ed13eb289b1c0600e4bb75bfdc979d6292`  
		Last Modified: Wed, 19 Sep 2018 08:47:48 GMT  
		Size: 322.0 B  
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
$ docker pull traefik@sha256:765271e0ed47f9360c877b184a5b61288edcd92e6b0303a91b5e7606be4e3766
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.6-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:f0101c41eac2ff634b87fe1489c02e78cd5f91b8f23f0c179e5959fa3571e256
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17263450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93613ddb0e25ddb4f99031fa628bf112722f86281855cc39ac7efffc3395be1c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 03:37:55 GMT
RUN apk --no-cache add ca-certificates
# Wed, 12 Sep 2018 03:38:09 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 12 Sep 2018 03:38:09 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Wed, 12 Sep 2018 03:38:09 GMT
EXPOSE 80/tcp
# Wed, 12 Sep 2018 03:38:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 12 Sep 2018 03:38:10 GMT
CMD ["traefik"]
# Wed, 12 Sep 2018 03:38:10 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d9593d002f462333c2d2b049c0e43267d2f25e7031617d7951e483cfe6fceef`  
		Last Modified: Wed, 12 Sep 2018 03:38:22 GMT  
		Size: 309.0 KB (308983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c85326782b5d035a27b842bb16349fa48b704cc94161f8973c8a97a5abd6c546`  
		Last Modified: Wed, 12 Sep 2018 03:39:01 GMT  
		Size: 14.7 MB (14747215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c9b2016abc54550090a1073ca098d008383b626cdfe8ace1448b888eeb783f4`  
		Last Modified: Wed, 12 Sep 2018 03:38:58 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.6-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:9d6f8e7fd8ec81db2d700b2ec83621ca95de94015e0b0b9e8a47e988561c5351
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.6 MB (16576094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a01adfd2572523b2bf72bb6224ffb46597f02acea50d42ad137d9b20ebdf213`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:31:22 GMT
RUN apk --no-cache add ca-certificates
# Wed, 12 Sep 2018 08:31:38 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 12 Sep 2018 08:31:38 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Wed, 12 Sep 2018 08:31:38 GMT
EXPOSE 80/tcp
# Wed, 12 Sep 2018 08:31:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 12 Sep 2018 08:31:40 GMT
CMD ["traefik"]
# Wed, 12 Sep 2018 08:31:41 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:905674ea9d9448b14f15ae82e3c34138680bac1ef4fc29088aae8c9639b502fe`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 2.1 MB (2146453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91fe322e1690c8fb3f2b684fd85335d36a45e509b1568683232aede6d8a5e2b`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74a65db53aaa0cc4ab0232b1e179456b46fe0f6c04a77b387b9d4bdc2efd62c9`  
		Last Modified: Wed, 12 Sep 2018 08:31:52 GMT  
		Size: 309.1 KB (309068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08b9d225734e72e18e54cfe219c45734f7ebda8e12f9c507bc9edaf73874250`  
		Last Modified: Wed, 12 Sep 2018 08:32:23 GMT  
		Size: 14.1 MB (14120079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f147683d6b4012117dcfce23001d9474f334a34509cadaca310dee6bb32a93f`  
		Last Modified: Wed, 12 Sep 2018 08:32:17 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.6-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:908d0bc7186aab126f76d990f358bbe9db62cf5b8fcd7e5ab864830f31e8bfe7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.2 MB (16242998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5996557958cf1a79e9d9ae91d71f8627175aaedd6a0a327e50e61aacc38658e4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 12 Sep 2018 08:42:24 GMT
ADD file:a4b53e2a2e207c5107a76c16d91b99cb1ed4ecb90b363913798e663426137d45 in / 
# Wed, 12 Sep 2018 08:42:24 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:42:25 GMT
CMD ["/bin/sh"]
# Wed, 19 Sep 2018 08:43:28 GMT
RUN apk --no-cache add ca-certificates
# Wed, 19 Sep 2018 08:44:55 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 19 Sep 2018 08:44:56 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Wed, 19 Sep 2018 08:44:57 GMT
EXPOSE 80/tcp
# Wed, 19 Sep 2018 08:44:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 19 Sep 2018 08:44:58 GMT
CMD ["traefik"]
# Wed, 19 Sep 2018 08:45:00 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:9941776d74c9129fd585b6f0434ba48bd3a7112d6736bc02e6d12f41153cab26`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 2.1 MB (2099762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae94b3cb7a1b2cef0ceffe3303cd03f83434d283aab43389e586b42bea00b358`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c9f8de84abb1c0426abc9f58b577b1536c16e87bcd8b0170be82c4f0ae8e4de`  
		Last Modified: Wed, 19 Sep 2018 08:46:35 GMT  
		Size: 308.5 KB (308531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:117877260e54ea5a540c4cb0c22a8bb4563afce08e2611de37cd3e2bc9cd6467`  
		Last Modified: Wed, 19 Sep 2018 08:47:54 GMT  
		Size: 13.8 MB (13834207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3166c1159ab9e56ababf2746bc391ed13eb289b1c0600e4bb75bfdc979d6292`  
		Last Modified: Wed, 19 Sep 2018 08:47:48 GMT  
		Size: 322.0 B  
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
$ docker pull traefik@sha256:33f69051f380715c21e4f699989b8d66d7029b3dccfa44196c8712aef56150a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.7` - linux; amd64

```console
$ docker pull traefik@sha256:7b660d0784f622f43f0cb8411f6bac5d5d795c63bd65d57497c0fc2a40c1a9c0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 MB (19113915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffd25f303561ffa880b96bad42edb59c5ea67e2d485f084f57ab35b5f9283254`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 07 Sep 2018 19:05:07 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Tue, 18 Sep 2018 22:20:20 GMT
COPY file:b8e7b8331eb251d2111e59e6955827319d749c0cc7f1c645c594f6cce2767772 in / 
# Tue, 18 Sep 2018 22:20:20 GMT
EXPOSE 80/tcp
# Tue, 18 Sep 2018 22:20:21 GMT
ENTRYPOINT ["/traefik"]
# Tue, 18 Sep 2018 22:20:21 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:c6e5aced14a22b72f0fd545bec131cc37ac8382fae12614369232b12bf5cc1bf`  
		Last Modified: Fri, 07 Sep 2018 19:06:05 GMT  
		Size: 135.0 KB (135037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b14c8e8b82b25669f321edfce4adc1671b68693161ad2cdf3efb160a087a015e`  
		Last Modified: Tue, 18 Sep 2018 22:21:00 GMT  
		Size: 19.0 MB (18978878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7` - linux; arm variant v6

```console
$ docker pull traefik@sha256:82adf677db893703f736e8f0c3e2b414b7c98b814dda49ace8121f8a419178b8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.0 MB (17961826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbc44c1873060f42aee55460f2f0988b39539e520e31e37f878fec6041fcad24`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 21 Aug 2018 08:15:56 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Wed, 19 Sep 2018 07:50:08 GMT
COPY file:5377da670a8a194a164d90c6d3bab2862db88c5ae4f2539d8977304f455b7039 in / 
# Wed, 19 Sep 2018 07:50:09 GMT
EXPOSE 80/tcp
# Wed, 19 Sep 2018 07:50:09 GMT
ENTRYPOINT ["/traefik"]
# Wed, 19 Sep 2018 07:50:09 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:9dac48e51b2381c7f7a8cbe16e8670b5d4bfcbd991c139ad10d2e46f233def67`  
		Last Modified: Tue, 21 Aug 2018 08:16:23 GMT  
		Size: 135.1 KB (135078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8821c929a53be928748e44d01cb1ef70f2f24f5127486fbd24d4465765e9de`  
		Last Modified: Wed, 19 Sep 2018 07:50:49 GMT  
		Size: 17.8 MB (17826748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:134d5588d08a0660bbd0b04e81908e2a95cf57195dafced1dbef2e6b8b64cfe4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17522697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c1534c0098242aa5bd27909815c623dbf4bfb989dd3ab178d797c933e6071be`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 21 Aug 2018 08:48:57 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Wed, 19 Sep 2018 08:43:01 GMT
COPY file:8002ce1e5624236d64575acb2f9f52434ce8d8a212f6834bca9b6ff046fc5afb in / 
# Wed, 19 Sep 2018 08:43:02 GMT
EXPOSE 80/tcp
# Wed, 19 Sep 2018 08:43:05 GMT
ENTRYPOINT ["/traefik"]
# Wed, 19 Sep 2018 08:43:05 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:237f2d395b5468b8fc4fb105187ad5ab71f15a8ae7ddb9042c335afc1d048e22`  
		Last Modified: Tue, 21 Aug 2018 08:50:29 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20d640109f9bf1a5fd38b3041935e824e1368c856c4a2c7205ff7d81e1b23946`  
		Last Modified: Wed, 19 Sep 2018 08:45:31 GMT  
		Size: 17.4 MB (17387658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7.0-rc5`

```console
$ docker pull traefik@sha256:33f69051f380715c21e4f699989b8d66d7029b3dccfa44196c8712aef56150a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.7.0-rc5` - linux; amd64

```console
$ docker pull traefik@sha256:7b660d0784f622f43f0cb8411f6bac5d5d795c63bd65d57497c0fc2a40c1a9c0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 MB (19113915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffd25f303561ffa880b96bad42edb59c5ea67e2d485f084f57ab35b5f9283254`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 07 Sep 2018 19:05:07 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Tue, 18 Sep 2018 22:20:20 GMT
COPY file:b8e7b8331eb251d2111e59e6955827319d749c0cc7f1c645c594f6cce2767772 in / 
# Tue, 18 Sep 2018 22:20:20 GMT
EXPOSE 80/tcp
# Tue, 18 Sep 2018 22:20:21 GMT
ENTRYPOINT ["/traefik"]
# Tue, 18 Sep 2018 22:20:21 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:c6e5aced14a22b72f0fd545bec131cc37ac8382fae12614369232b12bf5cc1bf`  
		Last Modified: Fri, 07 Sep 2018 19:06:05 GMT  
		Size: 135.0 KB (135037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b14c8e8b82b25669f321edfce4adc1671b68693161ad2cdf3efb160a087a015e`  
		Last Modified: Tue, 18 Sep 2018 22:21:00 GMT  
		Size: 19.0 MB (18978878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7.0-rc5` - linux; arm variant v6

```console
$ docker pull traefik@sha256:82adf677db893703f736e8f0c3e2b414b7c98b814dda49ace8121f8a419178b8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.0 MB (17961826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbc44c1873060f42aee55460f2f0988b39539e520e31e37f878fec6041fcad24`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 21 Aug 2018 08:15:56 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Wed, 19 Sep 2018 07:50:08 GMT
COPY file:5377da670a8a194a164d90c6d3bab2862db88c5ae4f2539d8977304f455b7039 in / 
# Wed, 19 Sep 2018 07:50:09 GMT
EXPOSE 80/tcp
# Wed, 19 Sep 2018 07:50:09 GMT
ENTRYPOINT ["/traefik"]
# Wed, 19 Sep 2018 07:50:09 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:9dac48e51b2381c7f7a8cbe16e8670b5d4bfcbd991c139ad10d2e46f233def67`  
		Last Modified: Tue, 21 Aug 2018 08:16:23 GMT  
		Size: 135.1 KB (135078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8821c929a53be928748e44d01cb1ef70f2f24f5127486fbd24d4465765e9de`  
		Last Modified: Wed, 19 Sep 2018 07:50:49 GMT  
		Size: 17.8 MB (17826748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7.0-rc5` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:134d5588d08a0660bbd0b04e81908e2a95cf57195dafced1dbef2e6b8b64cfe4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17522697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c1534c0098242aa5bd27909815c623dbf4bfb989dd3ab178d797c933e6071be`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 21 Aug 2018 08:48:57 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Wed, 19 Sep 2018 08:43:01 GMT
COPY file:8002ce1e5624236d64575acb2f9f52434ce8d8a212f6834bca9b6ff046fc5afb in / 
# Wed, 19 Sep 2018 08:43:02 GMT
EXPOSE 80/tcp
# Wed, 19 Sep 2018 08:43:05 GMT
ENTRYPOINT ["/traefik"]
# Wed, 19 Sep 2018 08:43:05 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:237f2d395b5468b8fc4fb105187ad5ab71f15a8ae7ddb9042c335afc1d048e22`  
		Last Modified: Tue, 21 Aug 2018 08:50:29 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20d640109f9bf1a5fd38b3041935e824e1368c856c4a2c7205ff7d81e1b23946`  
		Last Modified: Wed, 19 Sep 2018 08:45:31 GMT  
		Size: 17.4 MB (17387658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7.0-rc5-alpine`

```console
$ docker pull traefik@sha256:7151173b0ae73dcae5b641e053ecc1cdfdee4f153541ddd6667320c038c0baf0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.7.0-rc5-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:3550c592d0cd5b3e2c4fd633d0e25494787a642a202a43910260b34fcb7e337c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.5 MB (21495270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:266a4bad7efe29c8daa067debd05287b2841b0696e3c1207d3e2203d65815379`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 03:37:55 GMT
RUN apk --no-cache add ca-certificates
# Tue, 18 Sep 2018 22:20:31 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0-rc5/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 18 Sep 2018 22:20:31 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Tue, 18 Sep 2018 22:20:31 GMT
EXPOSE 80/tcp
# Tue, 18 Sep 2018 22:20:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Sep 2018 22:20:32 GMT
CMD ["traefik"]
# Tue, 18 Sep 2018 22:20:32 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d9593d002f462333c2d2b049c0e43267d2f25e7031617d7951e483cfe6fceef`  
		Last Modified: Wed, 12 Sep 2018 03:38:22 GMT  
		Size: 309.0 KB (308983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dde5b64bb3bd65041dea2a46f4644c14631a39e89aa34db3c108665a448bf47b`  
		Last Modified: Tue, 18 Sep 2018 22:21:48 GMT  
		Size: 19.0 MB (18979036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f327565861ba2c09ccb360e5c4c265dc9bde62652873ef20fad31cc67e8b5f4`  
		Last Modified: Tue, 18 Sep 2018 22:21:43 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7.0-rc5-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:4d180c4684cf67108fb968c96091dd7fc00ddeb96b76a4be46a7aa8a45fcba74
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.3 MB (20282982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a22051d966fd6c46adfd12cf1ba53d8a83e2ea68eca1e8cec07dbc8d5fa50e7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:31:22 GMT
RUN apk --no-cache add ca-certificates
# Wed, 19 Sep 2018 07:50:21 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0-rc5/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 19 Sep 2018 07:50:22 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Wed, 19 Sep 2018 07:50:22 GMT
EXPOSE 80/tcp
# Wed, 19 Sep 2018 07:50:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 19 Sep 2018 07:50:23 GMT
CMD ["traefik"]
# Wed, 19 Sep 2018 07:50:23 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:905674ea9d9448b14f15ae82e3c34138680bac1ef4fc29088aae8c9639b502fe`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 2.1 MB (2146453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91fe322e1690c8fb3f2b684fd85335d36a45e509b1568683232aede6d8a5e2b`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74a65db53aaa0cc4ab0232b1e179456b46fe0f6c04a77b387b9d4bdc2efd62c9`  
		Last Modified: Wed, 12 Sep 2018 08:31:52 GMT  
		Size: 309.1 KB (309068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff31fe66ec67225c8ef016fde7361367fea1590e54ccfcdf1bad956cc9fe0bab`  
		Last Modified: Wed, 19 Sep 2018 07:51:16 GMT  
		Size: 17.8 MB (17826965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82dd13afb94bca3e81b7450393ea7d74601032fcc5374283105108abf3973997`  
		Last Modified: Wed, 19 Sep 2018 07:51:11 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7.0-rc5-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:7767cc3ffb9692825802b3846eace582f3daf3460acc9842aba0c44ff902a424
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.8 MB (19796409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c78f207565ed46c5a8354b3abd4446be0e3fb1360180e3bb196854fdfd28a811`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 12 Sep 2018 08:42:24 GMT
ADD file:a4b53e2a2e207c5107a76c16d91b99cb1ed4ecb90b363913798e663426137d45 in / 
# Wed, 12 Sep 2018 08:42:24 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:42:25 GMT
CMD ["/bin/sh"]
# Wed, 19 Sep 2018 08:43:28 GMT
RUN apk --no-cache add ca-certificates
# Wed, 19 Sep 2018 08:43:45 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0-rc5/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 19 Sep 2018 08:43:49 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Wed, 19 Sep 2018 08:43:50 GMT
EXPOSE 80/tcp
# Wed, 19 Sep 2018 08:43:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 19 Sep 2018 08:43:51 GMT
CMD ["traefik"]
# Wed, 19 Sep 2018 08:43:52 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:9941776d74c9129fd585b6f0434ba48bd3a7112d6736bc02e6d12f41153cab26`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 2.1 MB (2099762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae94b3cb7a1b2cef0ceffe3303cd03f83434d283aab43389e586b42bea00b358`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c9f8de84abb1c0426abc9f58b577b1536c16e87bcd8b0170be82c4f0ae8e4de`  
		Last Modified: Wed, 19 Sep 2018 08:46:35 GMT  
		Size: 308.5 KB (308531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a70bbecbd6fc03c9f8193733d14453a1696e5c5f4a1f1428628c452694bcf6f2`  
		Last Modified: Wed, 19 Sep 2018 08:46:42 GMT  
		Size: 17.4 MB (17387619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67487e1bcb7d85f52fc079bd3860675e3500a2e21d7e5cd5258407503303f876`  
		Last Modified: Wed, 19 Sep 2018 08:46:35 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7.0-rc5-nanoserver`

**does not exist** (yet?)

## `traefik:1.7.0-rc5-nanoserver-sac2016`

**does not exist** (yet?)

## `traefik:1.7-alpine`

```console
$ docker pull traefik@sha256:7151173b0ae73dcae5b641e053ecc1cdfdee4f153541ddd6667320c038c0baf0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.7-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:3550c592d0cd5b3e2c4fd633d0e25494787a642a202a43910260b34fcb7e337c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.5 MB (21495270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:266a4bad7efe29c8daa067debd05287b2841b0696e3c1207d3e2203d65815379`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 03:37:55 GMT
RUN apk --no-cache add ca-certificates
# Tue, 18 Sep 2018 22:20:31 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0-rc5/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 18 Sep 2018 22:20:31 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Tue, 18 Sep 2018 22:20:31 GMT
EXPOSE 80/tcp
# Tue, 18 Sep 2018 22:20:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Sep 2018 22:20:32 GMT
CMD ["traefik"]
# Tue, 18 Sep 2018 22:20:32 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d9593d002f462333c2d2b049c0e43267d2f25e7031617d7951e483cfe6fceef`  
		Last Modified: Wed, 12 Sep 2018 03:38:22 GMT  
		Size: 309.0 KB (308983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dde5b64bb3bd65041dea2a46f4644c14631a39e89aa34db3c108665a448bf47b`  
		Last Modified: Tue, 18 Sep 2018 22:21:48 GMT  
		Size: 19.0 MB (18979036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f327565861ba2c09ccb360e5c4c265dc9bde62652873ef20fad31cc67e8b5f4`  
		Last Modified: Tue, 18 Sep 2018 22:21:43 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:4d180c4684cf67108fb968c96091dd7fc00ddeb96b76a4be46a7aa8a45fcba74
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.3 MB (20282982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a22051d966fd6c46adfd12cf1ba53d8a83e2ea68eca1e8cec07dbc8d5fa50e7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:31:22 GMT
RUN apk --no-cache add ca-certificates
# Wed, 19 Sep 2018 07:50:21 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0-rc5/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 19 Sep 2018 07:50:22 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Wed, 19 Sep 2018 07:50:22 GMT
EXPOSE 80/tcp
# Wed, 19 Sep 2018 07:50:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 19 Sep 2018 07:50:23 GMT
CMD ["traefik"]
# Wed, 19 Sep 2018 07:50:23 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:905674ea9d9448b14f15ae82e3c34138680bac1ef4fc29088aae8c9639b502fe`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 2.1 MB (2146453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91fe322e1690c8fb3f2b684fd85335d36a45e509b1568683232aede6d8a5e2b`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74a65db53aaa0cc4ab0232b1e179456b46fe0f6c04a77b387b9d4bdc2efd62c9`  
		Last Modified: Wed, 12 Sep 2018 08:31:52 GMT  
		Size: 309.1 KB (309068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff31fe66ec67225c8ef016fde7361367fea1590e54ccfcdf1bad956cc9fe0bab`  
		Last Modified: Wed, 19 Sep 2018 07:51:16 GMT  
		Size: 17.8 MB (17826965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82dd13afb94bca3e81b7450393ea7d74601032fcc5374283105108abf3973997`  
		Last Modified: Wed, 19 Sep 2018 07:51:11 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:7767cc3ffb9692825802b3846eace582f3daf3460acc9842aba0c44ff902a424
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.8 MB (19796409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c78f207565ed46c5a8354b3abd4446be0e3fb1360180e3bb196854fdfd28a811`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 12 Sep 2018 08:42:24 GMT
ADD file:a4b53e2a2e207c5107a76c16d91b99cb1ed4ecb90b363913798e663426137d45 in / 
# Wed, 12 Sep 2018 08:42:24 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:42:25 GMT
CMD ["/bin/sh"]
# Wed, 19 Sep 2018 08:43:28 GMT
RUN apk --no-cache add ca-certificates
# Wed, 19 Sep 2018 08:43:45 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0-rc5/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 19 Sep 2018 08:43:49 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Wed, 19 Sep 2018 08:43:50 GMT
EXPOSE 80/tcp
# Wed, 19 Sep 2018 08:43:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 19 Sep 2018 08:43:51 GMT
CMD ["traefik"]
# Wed, 19 Sep 2018 08:43:52 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:9941776d74c9129fd585b6f0434ba48bd3a7112d6736bc02e6d12f41153cab26`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 2.1 MB (2099762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae94b3cb7a1b2cef0ceffe3303cd03f83434d283aab43389e586b42bea00b358`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c9f8de84abb1c0426abc9f58b577b1536c16e87bcd8b0170be82c4f0ae8e4de`  
		Last Modified: Wed, 19 Sep 2018 08:46:35 GMT  
		Size: 308.5 KB (308531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a70bbecbd6fc03c9f8193733d14453a1696e5c5f4a1f1428628c452694bcf6f2`  
		Last Modified: Wed, 19 Sep 2018 08:46:42 GMT  
		Size: 17.4 MB (17387619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67487e1bcb7d85f52fc079bd3860675e3500a2e21d7e5cd5258407503303f876`  
		Last Modified: Wed, 19 Sep 2018 08:46:35 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7-nanoserver`

```console
$ docker pull traefik@sha256:f4661975ee2210ccc33d1e66145347fafdd8212027a98e07e003de7558b850e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2430; amd64

### `traefik:1.7-nanoserver` - windows version 10.0.14393.2430; amd64

```console
$ docker pull traefik@sha256:1f13fac982b6de04cab0e90402b0082074b84a0db5b4af46185c9f89bebdc6db
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **439.0 MB (439017932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:605b3b1f1e68bfd439c68ad3986cf36acd7dd9e69b3b09e9651cacd2dbbeddab`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Aug 2018 17:51:52 GMT
RUN Install update 10.0.14393.2430
# Sat, 08 Sep 2018 09:43:42 GMT
RUN cmd /S /C #(nop) COPY file:3fbc2596fb308aef96ca943a5cee430837de4f5f0828611c9787d42a42459a97 in \traefik.exe 
# Sat, 08 Sep 2018 09:43:45 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Sat, 08 Sep 2018 09:43:47 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Sat, 08 Sep 2018 09:43:48 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:e739d905e720aed821f43a2032f6c001b4f8aef1b3dae8be4294b12e2e39713d`  
		Last Modified: Sat, 08 Sep 2018 09:44:14 GMT  
		Size: 18.5 MB (18540055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b7b65eb910fd11570b5105876d6da53161f057e1cf2ef5c4c422af29309c7c5`  
		Last Modified: Sat, 08 Sep 2018 09:44:09 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88093c83177eaab007ac4dc901ce2afd2b5c2e0558d826cdc44f012c76ffe6c8`  
		Last Modified: Sat, 08 Sep 2018 09:44:09 GMT  
		Size: 943.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f07002d7f12134399339c372c7cef1a8c9a9d4de805e6986a298d09cc4c204f`  
		Last Modified: Sat, 08 Sep 2018 09:44:09 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:f4661975ee2210ccc33d1e66145347fafdd8212027a98e07e003de7558b850e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2430; amd64

### `traefik:1.7-nanoserver-sac2016` - windows version 10.0.14393.2430; amd64

```console
$ docker pull traefik@sha256:1f13fac982b6de04cab0e90402b0082074b84a0db5b4af46185c9f89bebdc6db
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **439.0 MB (439017932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:605b3b1f1e68bfd439c68ad3986cf36acd7dd9e69b3b09e9651cacd2dbbeddab`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Aug 2018 17:51:52 GMT
RUN Install update 10.0.14393.2430
# Sat, 08 Sep 2018 09:43:42 GMT
RUN cmd /S /C #(nop) COPY file:3fbc2596fb308aef96ca943a5cee430837de4f5f0828611c9787d42a42459a97 in \traefik.exe 
# Sat, 08 Sep 2018 09:43:45 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Sat, 08 Sep 2018 09:43:47 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Sat, 08 Sep 2018 09:43:48 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:e739d905e720aed821f43a2032f6c001b4f8aef1b3dae8be4294b12e2e39713d`  
		Last Modified: Sat, 08 Sep 2018 09:44:14 GMT  
		Size: 18.5 MB (18540055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b7b65eb910fd11570b5105876d6da53161f057e1cf2ef5c4c422af29309c7c5`  
		Last Modified: Sat, 08 Sep 2018 09:44:09 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88093c83177eaab007ac4dc901ce2afd2b5c2e0558d826cdc44f012c76ffe6c8`  
		Last Modified: Sat, 08 Sep 2018 09:44:09 GMT  
		Size: 943.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f07002d7f12134399339c372c7cef1a8c9a9d4de805e6986a298d09cc4c204f`  
		Last Modified: Sat, 08 Sep 2018 09:44:09 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:alpine`

```console
$ docker pull traefik@sha256:765271e0ed47f9360c877b184a5b61288edcd92e6b0303a91b5e7606be4e3766
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:alpine` - linux; amd64

```console
$ docker pull traefik@sha256:f0101c41eac2ff634b87fe1489c02e78cd5f91b8f23f0c179e5959fa3571e256
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17263450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93613ddb0e25ddb4f99031fa628bf112722f86281855cc39ac7efffc3395be1c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 03:37:55 GMT
RUN apk --no-cache add ca-certificates
# Wed, 12 Sep 2018 03:38:09 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 12 Sep 2018 03:38:09 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Wed, 12 Sep 2018 03:38:09 GMT
EXPOSE 80/tcp
# Wed, 12 Sep 2018 03:38:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 12 Sep 2018 03:38:10 GMT
CMD ["traefik"]
# Wed, 12 Sep 2018 03:38:10 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d9593d002f462333c2d2b049c0e43267d2f25e7031617d7951e483cfe6fceef`  
		Last Modified: Wed, 12 Sep 2018 03:38:22 GMT  
		Size: 309.0 KB (308983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c85326782b5d035a27b842bb16349fa48b704cc94161f8973c8a97a5abd6c546`  
		Last Modified: Wed, 12 Sep 2018 03:39:01 GMT  
		Size: 14.7 MB (14747215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c9b2016abc54550090a1073ca098d008383b626cdfe8ace1448b888eeb783f4`  
		Last Modified: Wed, 12 Sep 2018 03:38:58 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:9d6f8e7fd8ec81db2d700b2ec83621ca95de94015e0b0b9e8a47e988561c5351
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.6 MB (16576094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a01adfd2572523b2bf72bb6224ffb46597f02acea50d42ad137d9b20ebdf213`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:31:22 GMT
RUN apk --no-cache add ca-certificates
# Wed, 12 Sep 2018 08:31:38 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 12 Sep 2018 08:31:38 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Wed, 12 Sep 2018 08:31:38 GMT
EXPOSE 80/tcp
# Wed, 12 Sep 2018 08:31:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 12 Sep 2018 08:31:40 GMT
CMD ["traefik"]
# Wed, 12 Sep 2018 08:31:41 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:905674ea9d9448b14f15ae82e3c34138680bac1ef4fc29088aae8c9639b502fe`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 2.1 MB (2146453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91fe322e1690c8fb3f2b684fd85335d36a45e509b1568683232aede6d8a5e2b`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74a65db53aaa0cc4ab0232b1e179456b46fe0f6c04a77b387b9d4bdc2efd62c9`  
		Last Modified: Wed, 12 Sep 2018 08:31:52 GMT  
		Size: 309.1 KB (309068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08b9d225734e72e18e54cfe219c45734f7ebda8e12f9c507bc9edaf73874250`  
		Last Modified: Wed, 12 Sep 2018 08:32:23 GMT  
		Size: 14.1 MB (14120079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f147683d6b4012117dcfce23001d9474f334a34509cadaca310dee6bb32a93f`  
		Last Modified: Wed, 12 Sep 2018 08:32:17 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:908d0bc7186aab126f76d990f358bbe9db62cf5b8fcd7e5ab864830f31e8bfe7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.2 MB (16242998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5996557958cf1a79e9d9ae91d71f8627175aaedd6a0a327e50e61aacc38658e4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 12 Sep 2018 08:42:24 GMT
ADD file:a4b53e2a2e207c5107a76c16d91b99cb1ed4ecb90b363913798e663426137d45 in / 
# Wed, 12 Sep 2018 08:42:24 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:42:25 GMT
CMD ["/bin/sh"]
# Wed, 19 Sep 2018 08:43:28 GMT
RUN apk --no-cache add ca-certificates
# Wed, 19 Sep 2018 08:44:55 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 19 Sep 2018 08:44:56 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Wed, 19 Sep 2018 08:44:57 GMT
EXPOSE 80/tcp
# Wed, 19 Sep 2018 08:44:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 19 Sep 2018 08:44:58 GMT
CMD ["traefik"]
# Wed, 19 Sep 2018 08:45:00 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:9941776d74c9129fd585b6f0434ba48bd3a7112d6736bc02e6d12f41153cab26`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 2.1 MB (2099762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae94b3cb7a1b2cef0ceffe3303cd03f83434d283aab43389e586b42bea00b358`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c9f8de84abb1c0426abc9f58b577b1536c16e87bcd8b0170be82c4f0ae8e4de`  
		Last Modified: Wed, 19 Sep 2018 08:46:35 GMT  
		Size: 308.5 KB (308531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:117877260e54ea5a540c4cb0c22a8bb4563afce08e2611de37cd3e2bc9cd6467`  
		Last Modified: Wed, 19 Sep 2018 08:47:54 GMT  
		Size: 13.8 MB (13834207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3166c1159ab9e56ababf2746bc391ed13eb289b1c0600e4bb75bfdc979d6292`  
		Last Modified: Wed, 19 Sep 2018 08:47:48 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:latest`

```console
$ docker pull traefik@sha256:9569c56e8b7353c9c4e5d4f00177b0b7c523db6926a42a148e04a6fa4b6f9f8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:latest` - linux; amd64

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
$ docker pull traefik@sha256:33f69051f380715c21e4f699989b8d66d7029b3dccfa44196c8712aef56150a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:maroilles` - linux; amd64

```console
$ docker pull traefik@sha256:7b660d0784f622f43f0cb8411f6bac5d5d795c63bd65d57497c0fc2a40c1a9c0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 MB (19113915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffd25f303561ffa880b96bad42edb59c5ea67e2d485f084f57ab35b5f9283254`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 07 Sep 2018 19:05:07 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Tue, 18 Sep 2018 22:20:20 GMT
COPY file:b8e7b8331eb251d2111e59e6955827319d749c0cc7f1c645c594f6cce2767772 in / 
# Tue, 18 Sep 2018 22:20:20 GMT
EXPOSE 80/tcp
# Tue, 18 Sep 2018 22:20:21 GMT
ENTRYPOINT ["/traefik"]
# Tue, 18 Sep 2018 22:20:21 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:c6e5aced14a22b72f0fd545bec131cc37ac8382fae12614369232b12bf5cc1bf`  
		Last Modified: Fri, 07 Sep 2018 19:06:05 GMT  
		Size: 135.0 KB (135037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b14c8e8b82b25669f321edfce4adc1671b68693161ad2cdf3efb160a087a015e`  
		Last Modified: Tue, 18 Sep 2018 22:21:00 GMT  
		Size: 19.0 MB (18978878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:maroilles` - linux; arm variant v6

```console
$ docker pull traefik@sha256:82adf677db893703f736e8f0c3e2b414b7c98b814dda49ace8121f8a419178b8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.0 MB (17961826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbc44c1873060f42aee55460f2f0988b39539e520e31e37f878fec6041fcad24`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 21 Aug 2018 08:15:56 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Wed, 19 Sep 2018 07:50:08 GMT
COPY file:5377da670a8a194a164d90c6d3bab2862db88c5ae4f2539d8977304f455b7039 in / 
# Wed, 19 Sep 2018 07:50:09 GMT
EXPOSE 80/tcp
# Wed, 19 Sep 2018 07:50:09 GMT
ENTRYPOINT ["/traefik"]
# Wed, 19 Sep 2018 07:50:09 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:9dac48e51b2381c7f7a8cbe16e8670b5d4bfcbd991c139ad10d2e46f233def67`  
		Last Modified: Tue, 21 Aug 2018 08:16:23 GMT  
		Size: 135.1 KB (135078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8821c929a53be928748e44d01cb1ef70f2f24f5127486fbd24d4465765e9de`  
		Last Modified: Wed, 19 Sep 2018 07:50:49 GMT  
		Size: 17.8 MB (17826748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:maroilles` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:134d5588d08a0660bbd0b04e81908e2a95cf57195dafced1dbef2e6b8b64cfe4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17522697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c1534c0098242aa5bd27909815c623dbf4bfb989dd3ab178d797c933e6071be`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 21 Aug 2018 08:48:57 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Wed, 19 Sep 2018 08:43:01 GMT
COPY file:8002ce1e5624236d64575acb2f9f52434ce8d8a212f6834bca9b6ff046fc5afb in / 
# Wed, 19 Sep 2018 08:43:02 GMT
EXPOSE 80/tcp
# Wed, 19 Sep 2018 08:43:05 GMT
ENTRYPOINT ["/traefik"]
# Wed, 19 Sep 2018 08:43:05 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:237f2d395b5468b8fc4fb105187ad5ab71f15a8ae7ddb9042c335afc1d048e22`  
		Last Modified: Tue, 21 Aug 2018 08:50:29 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20d640109f9bf1a5fd38b3041935e824e1368c856c4a2c7205ff7d81e1b23946`  
		Last Modified: Wed, 19 Sep 2018 08:45:31 GMT  
		Size: 17.4 MB (17387658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:maroilles-alpine`

```console
$ docker pull traefik@sha256:7151173b0ae73dcae5b641e053ecc1cdfdee4f153541ddd6667320c038c0baf0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:maroilles-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:3550c592d0cd5b3e2c4fd633d0e25494787a642a202a43910260b34fcb7e337c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.5 MB (21495270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:266a4bad7efe29c8daa067debd05287b2841b0696e3c1207d3e2203d65815379`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 03:37:55 GMT
RUN apk --no-cache add ca-certificates
# Tue, 18 Sep 2018 22:20:31 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0-rc5/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 18 Sep 2018 22:20:31 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Tue, 18 Sep 2018 22:20:31 GMT
EXPOSE 80/tcp
# Tue, 18 Sep 2018 22:20:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Sep 2018 22:20:32 GMT
CMD ["traefik"]
# Tue, 18 Sep 2018 22:20:32 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d9593d002f462333c2d2b049c0e43267d2f25e7031617d7951e483cfe6fceef`  
		Last Modified: Wed, 12 Sep 2018 03:38:22 GMT  
		Size: 309.0 KB (308983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dde5b64bb3bd65041dea2a46f4644c14631a39e89aa34db3c108665a448bf47b`  
		Last Modified: Tue, 18 Sep 2018 22:21:48 GMT  
		Size: 19.0 MB (18979036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f327565861ba2c09ccb360e5c4c265dc9bde62652873ef20fad31cc67e8b5f4`  
		Last Modified: Tue, 18 Sep 2018 22:21:43 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:maroilles-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:4d180c4684cf67108fb968c96091dd7fc00ddeb96b76a4be46a7aa8a45fcba74
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.3 MB (20282982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a22051d966fd6c46adfd12cf1ba53d8a83e2ea68eca1e8cec07dbc8d5fa50e7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:31:22 GMT
RUN apk --no-cache add ca-certificates
# Wed, 19 Sep 2018 07:50:21 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0-rc5/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 19 Sep 2018 07:50:22 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Wed, 19 Sep 2018 07:50:22 GMT
EXPOSE 80/tcp
# Wed, 19 Sep 2018 07:50:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 19 Sep 2018 07:50:23 GMT
CMD ["traefik"]
# Wed, 19 Sep 2018 07:50:23 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:905674ea9d9448b14f15ae82e3c34138680bac1ef4fc29088aae8c9639b502fe`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 2.1 MB (2146453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91fe322e1690c8fb3f2b684fd85335d36a45e509b1568683232aede6d8a5e2b`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74a65db53aaa0cc4ab0232b1e179456b46fe0f6c04a77b387b9d4bdc2efd62c9`  
		Last Modified: Wed, 12 Sep 2018 08:31:52 GMT  
		Size: 309.1 KB (309068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff31fe66ec67225c8ef016fde7361367fea1590e54ccfcdf1bad956cc9fe0bab`  
		Last Modified: Wed, 19 Sep 2018 07:51:16 GMT  
		Size: 17.8 MB (17826965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82dd13afb94bca3e81b7450393ea7d74601032fcc5374283105108abf3973997`  
		Last Modified: Wed, 19 Sep 2018 07:51:11 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:maroilles-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:7767cc3ffb9692825802b3846eace582f3daf3460acc9842aba0c44ff902a424
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.8 MB (19796409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c78f207565ed46c5a8354b3abd4446be0e3fb1360180e3bb196854fdfd28a811`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 12 Sep 2018 08:42:24 GMT
ADD file:a4b53e2a2e207c5107a76c16d91b99cb1ed4ecb90b363913798e663426137d45 in / 
# Wed, 12 Sep 2018 08:42:24 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:42:25 GMT
CMD ["/bin/sh"]
# Wed, 19 Sep 2018 08:43:28 GMT
RUN apk --no-cache add ca-certificates
# Wed, 19 Sep 2018 08:43:45 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0-rc5/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 19 Sep 2018 08:43:49 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Wed, 19 Sep 2018 08:43:50 GMT
EXPOSE 80/tcp
# Wed, 19 Sep 2018 08:43:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 19 Sep 2018 08:43:51 GMT
CMD ["traefik"]
# Wed, 19 Sep 2018 08:43:52 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:9941776d74c9129fd585b6f0434ba48bd3a7112d6736bc02e6d12f41153cab26`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 2.1 MB (2099762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae94b3cb7a1b2cef0ceffe3303cd03f83434d283aab43389e586b42bea00b358`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c9f8de84abb1c0426abc9f58b577b1536c16e87bcd8b0170be82c4f0ae8e4de`  
		Last Modified: Wed, 19 Sep 2018 08:46:35 GMT  
		Size: 308.5 KB (308531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a70bbecbd6fc03c9f8193733d14453a1696e5c5f4a1f1428628c452694bcf6f2`  
		Last Modified: Wed, 19 Sep 2018 08:46:42 GMT  
		Size: 17.4 MB (17387619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67487e1bcb7d85f52fc079bd3860675e3500a2e21d7e5cd5258407503303f876`  
		Last Modified: Wed, 19 Sep 2018 08:46:35 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:maroilles-nanoserver`

```console
$ docker pull traefik@sha256:f4661975ee2210ccc33d1e66145347fafdd8212027a98e07e003de7558b850e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2430; amd64

### `traefik:maroilles-nanoserver` - windows version 10.0.14393.2430; amd64

```console
$ docker pull traefik@sha256:1f13fac982b6de04cab0e90402b0082074b84a0db5b4af46185c9f89bebdc6db
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **439.0 MB (439017932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:605b3b1f1e68bfd439c68ad3986cf36acd7dd9e69b3b09e9651cacd2dbbeddab`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Aug 2018 17:51:52 GMT
RUN Install update 10.0.14393.2430
# Sat, 08 Sep 2018 09:43:42 GMT
RUN cmd /S /C #(nop) COPY file:3fbc2596fb308aef96ca943a5cee430837de4f5f0828611c9787d42a42459a97 in \traefik.exe 
# Sat, 08 Sep 2018 09:43:45 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Sat, 08 Sep 2018 09:43:47 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Sat, 08 Sep 2018 09:43:48 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:e739d905e720aed821f43a2032f6c001b4f8aef1b3dae8be4294b12e2e39713d`  
		Last Modified: Sat, 08 Sep 2018 09:44:14 GMT  
		Size: 18.5 MB (18540055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b7b65eb910fd11570b5105876d6da53161f057e1cf2ef5c4c422af29309c7c5`  
		Last Modified: Sat, 08 Sep 2018 09:44:09 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88093c83177eaab007ac4dc901ce2afd2b5c2e0558d826cdc44f012c76ffe6c8`  
		Last Modified: Sat, 08 Sep 2018 09:44:09 GMT  
		Size: 943.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f07002d7f12134399339c372c7cef1a8c9a9d4de805e6986a298d09cc4c204f`  
		Last Modified: Sat, 08 Sep 2018 09:44:09 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:maroilles-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:f4661975ee2210ccc33d1e66145347fafdd8212027a98e07e003de7558b850e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2430; amd64

### `traefik:maroilles-nanoserver-sac2016` - windows version 10.0.14393.2430; amd64

```console
$ docker pull traefik@sha256:1f13fac982b6de04cab0e90402b0082074b84a0db5b4af46185c9f89bebdc6db
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **439.0 MB (439017932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:605b3b1f1e68bfd439c68ad3986cf36acd7dd9e69b3b09e9651cacd2dbbeddab`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Aug 2018 17:51:52 GMT
RUN Install update 10.0.14393.2430
# Sat, 08 Sep 2018 09:43:42 GMT
RUN cmd /S /C #(nop) COPY file:3fbc2596fb308aef96ca943a5cee430837de4f5f0828611c9787d42a42459a97 in \traefik.exe 
# Sat, 08 Sep 2018 09:43:45 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Sat, 08 Sep 2018 09:43:47 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Sat, 08 Sep 2018 09:43:48 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:e739d905e720aed821f43a2032f6c001b4f8aef1b3dae8be4294b12e2e39713d`  
		Last Modified: Sat, 08 Sep 2018 09:44:14 GMT  
		Size: 18.5 MB (18540055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b7b65eb910fd11570b5105876d6da53161f057e1cf2ef5c4c422af29309c7c5`  
		Last Modified: Sat, 08 Sep 2018 09:44:09 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88093c83177eaab007ac4dc901ce2afd2b5c2e0558d826cdc44f012c76ffe6c8`  
		Last Modified: Sat, 08 Sep 2018 09:44:09 GMT  
		Size: 943.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f07002d7f12134399339c372c7cef1a8c9a9d4de805e6986a298d09cc4c204f`  
		Last Modified: Sat, 08 Sep 2018 09:44:09 GMT  
		Size: 952.0 B  
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
$ docker pull traefik@sha256:765271e0ed47f9360c877b184a5b61288edcd92e6b0303a91b5e7606be4e3766
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:tetedemoine-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:f0101c41eac2ff634b87fe1489c02e78cd5f91b8f23f0c179e5959fa3571e256
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17263450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93613ddb0e25ddb4f99031fa628bf112722f86281855cc39ac7efffc3395be1c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 03:37:55 GMT
RUN apk --no-cache add ca-certificates
# Wed, 12 Sep 2018 03:38:09 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 12 Sep 2018 03:38:09 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Wed, 12 Sep 2018 03:38:09 GMT
EXPOSE 80/tcp
# Wed, 12 Sep 2018 03:38:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 12 Sep 2018 03:38:10 GMT
CMD ["traefik"]
# Wed, 12 Sep 2018 03:38:10 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d9593d002f462333c2d2b049c0e43267d2f25e7031617d7951e483cfe6fceef`  
		Last Modified: Wed, 12 Sep 2018 03:38:22 GMT  
		Size: 309.0 KB (308983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c85326782b5d035a27b842bb16349fa48b704cc94161f8973c8a97a5abd6c546`  
		Last Modified: Wed, 12 Sep 2018 03:39:01 GMT  
		Size: 14.7 MB (14747215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c9b2016abc54550090a1073ca098d008383b626cdfe8ace1448b888eeb783f4`  
		Last Modified: Wed, 12 Sep 2018 03:38:58 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:tetedemoine-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:9d6f8e7fd8ec81db2d700b2ec83621ca95de94015e0b0b9e8a47e988561c5351
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.6 MB (16576094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a01adfd2572523b2bf72bb6224ffb46597f02acea50d42ad137d9b20ebdf213`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:31:22 GMT
RUN apk --no-cache add ca-certificates
# Wed, 12 Sep 2018 08:31:38 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 12 Sep 2018 08:31:38 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Wed, 12 Sep 2018 08:31:38 GMT
EXPOSE 80/tcp
# Wed, 12 Sep 2018 08:31:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 12 Sep 2018 08:31:40 GMT
CMD ["traefik"]
# Wed, 12 Sep 2018 08:31:41 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:905674ea9d9448b14f15ae82e3c34138680bac1ef4fc29088aae8c9639b502fe`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 2.1 MB (2146453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91fe322e1690c8fb3f2b684fd85335d36a45e509b1568683232aede6d8a5e2b`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74a65db53aaa0cc4ab0232b1e179456b46fe0f6c04a77b387b9d4bdc2efd62c9`  
		Last Modified: Wed, 12 Sep 2018 08:31:52 GMT  
		Size: 309.1 KB (309068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08b9d225734e72e18e54cfe219c45734f7ebda8e12f9c507bc9edaf73874250`  
		Last Modified: Wed, 12 Sep 2018 08:32:23 GMT  
		Size: 14.1 MB (14120079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f147683d6b4012117dcfce23001d9474f334a34509cadaca310dee6bb32a93f`  
		Last Modified: Wed, 12 Sep 2018 08:32:17 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:tetedemoine-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:908d0bc7186aab126f76d990f358bbe9db62cf5b8fcd7e5ab864830f31e8bfe7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.2 MB (16242998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5996557958cf1a79e9d9ae91d71f8627175aaedd6a0a327e50e61aacc38658e4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 12 Sep 2018 08:42:24 GMT
ADD file:a4b53e2a2e207c5107a76c16d91b99cb1ed4ecb90b363913798e663426137d45 in / 
# Wed, 12 Sep 2018 08:42:24 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:42:25 GMT
CMD ["/bin/sh"]
# Wed, 19 Sep 2018 08:43:28 GMT
RUN apk --no-cache add ca-certificates
# Wed, 19 Sep 2018 08:44:55 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 19 Sep 2018 08:44:56 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Wed, 19 Sep 2018 08:44:57 GMT
EXPOSE 80/tcp
# Wed, 19 Sep 2018 08:44:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 19 Sep 2018 08:44:58 GMT
CMD ["traefik"]
# Wed, 19 Sep 2018 08:45:00 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:9941776d74c9129fd585b6f0434ba48bd3a7112d6736bc02e6d12f41153cab26`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 2.1 MB (2099762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae94b3cb7a1b2cef0ceffe3303cd03f83434d283aab43389e586b42bea00b358`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c9f8de84abb1c0426abc9f58b577b1536c16e87bcd8b0170be82c4f0ae8e4de`  
		Last Modified: Wed, 19 Sep 2018 08:46:35 GMT  
		Size: 308.5 KB (308531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:117877260e54ea5a540c4cb0c22a8bb4563afce08e2611de37cd3e2bc9cd6467`  
		Last Modified: Wed, 19 Sep 2018 08:47:54 GMT  
		Size: 13.8 MB (13834207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3166c1159ab9e56ababf2746bc391ed13eb289b1c0600e4bb75bfdc979d6292`  
		Last Modified: Wed, 19 Sep 2018 08:47:48 GMT  
		Size: 322.0 B  
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
$ docker pull traefik@sha256:765271e0ed47f9360c877b184a5b61288edcd92e6b0303a91b5e7606be4e3766
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.6.6-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:f0101c41eac2ff634b87fe1489c02e78cd5f91b8f23f0c179e5959fa3571e256
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17263450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93613ddb0e25ddb4f99031fa628bf112722f86281855cc39ac7efffc3395be1c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 03:37:55 GMT
RUN apk --no-cache add ca-certificates
# Wed, 12 Sep 2018 03:38:09 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 12 Sep 2018 03:38:09 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Wed, 12 Sep 2018 03:38:09 GMT
EXPOSE 80/tcp
# Wed, 12 Sep 2018 03:38:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 12 Sep 2018 03:38:10 GMT
CMD ["traefik"]
# Wed, 12 Sep 2018 03:38:10 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d9593d002f462333c2d2b049c0e43267d2f25e7031617d7951e483cfe6fceef`  
		Last Modified: Wed, 12 Sep 2018 03:38:22 GMT  
		Size: 309.0 KB (308983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c85326782b5d035a27b842bb16349fa48b704cc94161f8973c8a97a5abd6c546`  
		Last Modified: Wed, 12 Sep 2018 03:39:01 GMT  
		Size: 14.7 MB (14747215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c9b2016abc54550090a1073ca098d008383b626cdfe8ace1448b888eeb783f4`  
		Last Modified: Wed, 12 Sep 2018 03:38:58 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.6.6-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:9d6f8e7fd8ec81db2d700b2ec83621ca95de94015e0b0b9e8a47e988561c5351
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.6 MB (16576094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a01adfd2572523b2bf72bb6224ffb46597f02acea50d42ad137d9b20ebdf213`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:31:22 GMT
RUN apk --no-cache add ca-certificates
# Wed, 12 Sep 2018 08:31:38 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 12 Sep 2018 08:31:38 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Wed, 12 Sep 2018 08:31:38 GMT
EXPOSE 80/tcp
# Wed, 12 Sep 2018 08:31:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 12 Sep 2018 08:31:40 GMT
CMD ["traefik"]
# Wed, 12 Sep 2018 08:31:41 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:905674ea9d9448b14f15ae82e3c34138680bac1ef4fc29088aae8c9639b502fe`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 2.1 MB (2146453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91fe322e1690c8fb3f2b684fd85335d36a45e509b1568683232aede6d8a5e2b`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74a65db53aaa0cc4ab0232b1e179456b46fe0f6c04a77b387b9d4bdc2efd62c9`  
		Last Modified: Wed, 12 Sep 2018 08:31:52 GMT  
		Size: 309.1 KB (309068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08b9d225734e72e18e54cfe219c45734f7ebda8e12f9c507bc9edaf73874250`  
		Last Modified: Wed, 12 Sep 2018 08:32:23 GMT  
		Size: 14.1 MB (14120079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f147683d6b4012117dcfce23001d9474f334a34509cadaca310dee6bb32a93f`  
		Last Modified: Wed, 12 Sep 2018 08:32:17 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.6.6-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:908d0bc7186aab126f76d990f358bbe9db62cf5b8fcd7e5ab864830f31e8bfe7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.2 MB (16242998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5996557958cf1a79e9d9ae91d71f8627175aaedd6a0a327e50e61aacc38658e4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 12 Sep 2018 08:42:24 GMT
ADD file:a4b53e2a2e207c5107a76c16d91b99cb1ed4ecb90b363913798e663426137d45 in / 
# Wed, 12 Sep 2018 08:42:24 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:42:25 GMT
CMD ["/bin/sh"]
# Wed, 19 Sep 2018 08:43:28 GMT
RUN apk --no-cache add ca-certificates
# Wed, 19 Sep 2018 08:44:55 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 19 Sep 2018 08:44:56 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Wed, 19 Sep 2018 08:44:57 GMT
EXPOSE 80/tcp
# Wed, 19 Sep 2018 08:44:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 19 Sep 2018 08:44:58 GMT
CMD ["traefik"]
# Wed, 19 Sep 2018 08:45:00 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:9941776d74c9129fd585b6f0434ba48bd3a7112d6736bc02e6d12f41153cab26`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 2.1 MB (2099762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae94b3cb7a1b2cef0ceffe3303cd03f83434d283aab43389e586b42bea00b358`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c9f8de84abb1c0426abc9f58b577b1536c16e87bcd8b0170be82c4f0ae8e4de`  
		Last Modified: Wed, 19 Sep 2018 08:46:35 GMT  
		Size: 308.5 KB (308531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:117877260e54ea5a540c4cb0c22a8bb4563afce08e2611de37cd3e2bc9cd6467`  
		Last Modified: Wed, 19 Sep 2018 08:47:54 GMT  
		Size: 13.8 MB (13834207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3166c1159ab9e56ababf2746bc391ed13eb289b1c0600e4bb75bfdc979d6292`  
		Last Modified: Wed, 19 Sep 2018 08:47:48 GMT  
		Size: 322.0 B  
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
$ docker pull traefik@sha256:765271e0ed47f9360c877b184a5b61288edcd92e6b0303a91b5e7606be4e3766
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.6-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:f0101c41eac2ff634b87fe1489c02e78cd5f91b8f23f0c179e5959fa3571e256
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17263450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93613ddb0e25ddb4f99031fa628bf112722f86281855cc39ac7efffc3395be1c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 03:37:55 GMT
RUN apk --no-cache add ca-certificates
# Wed, 12 Sep 2018 03:38:09 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 12 Sep 2018 03:38:09 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Wed, 12 Sep 2018 03:38:09 GMT
EXPOSE 80/tcp
# Wed, 12 Sep 2018 03:38:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 12 Sep 2018 03:38:10 GMT
CMD ["traefik"]
# Wed, 12 Sep 2018 03:38:10 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d9593d002f462333c2d2b049c0e43267d2f25e7031617d7951e483cfe6fceef`  
		Last Modified: Wed, 12 Sep 2018 03:38:22 GMT  
		Size: 309.0 KB (308983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c85326782b5d035a27b842bb16349fa48b704cc94161f8973c8a97a5abd6c546`  
		Last Modified: Wed, 12 Sep 2018 03:39:01 GMT  
		Size: 14.7 MB (14747215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c9b2016abc54550090a1073ca098d008383b626cdfe8ace1448b888eeb783f4`  
		Last Modified: Wed, 12 Sep 2018 03:38:58 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.6-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:9d6f8e7fd8ec81db2d700b2ec83621ca95de94015e0b0b9e8a47e988561c5351
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.6 MB (16576094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a01adfd2572523b2bf72bb6224ffb46597f02acea50d42ad137d9b20ebdf213`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:31:22 GMT
RUN apk --no-cache add ca-certificates
# Wed, 12 Sep 2018 08:31:38 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 12 Sep 2018 08:31:38 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Wed, 12 Sep 2018 08:31:38 GMT
EXPOSE 80/tcp
# Wed, 12 Sep 2018 08:31:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 12 Sep 2018 08:31:40 GMT
CMD ["traefik"]
# Wed, 12 Sep 2018 08:31:41 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:905674ea9d9448b14f15ae82e3c34138680bac1ef4fc29088aae8c9639b502fe`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 2.1 MB (2146453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91fe322e1690c8fb3f2b684fd85335d36a45e509b1568683232aede6d8a5e2b`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74a65db53aaa0cc4ab0232b1e179456b46fe0f6c04a77b387b9d4bdc2efd62c9`  
		Last Modified: Wed, 12 Sep 2018 08:31:52 GMT  
		Size: 309.1 KB (309068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08b9d225734e72e18e54cfe219c45734f7ebda8e12f9c507bc9edaf73874250`  
		Last Modified: Wed, 12 Sep 2018 08:32:23 GMT  
		Size: 14.1 MB (14120079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f147683d6b4012117dcfce23001d9474f334a34509cadaca310dee6bb32a93f`  
		Last Modified: Wed, 12 Sep 2018 08:32:17 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.6-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:908d0bc7186aab126f76d990f358bbe9db62cf5b8fcd7e5ab864830f31e8bfe7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.2 MB (16242998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5996557958cf1a79e9d9ae91d71f8627175aaedd6a0a327e50e61aacc38658e4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 12 Sep 2018 08:42:24 GMT
ADD file:a4b53e2a2e207c5107a76c16d91b99cb1ed4ecb90b363913798e663426137d45 in / 
# Wed, 12 Sep 2018 08:42:24 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:42:25 GMT
CMD ["/bin/sh"]
# Wed, 19 Sep 2018 08:43:28 GMT
RUN apk --no-cache add ca-certificates
# Wed, 19 Sep 2018 08:44:55 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 19 Sep 2018 08:44:56 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Wed, 19 Sep 2018 08:44:57 GMT
EXPOSE 80/tcp
# Wed, 19 Sep 2018 08:44:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 19 Sep 2018 08:44:58 GMT
CMD ["traefik"]
# Wed, 19 Sep 2018 08:45:00 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:9941776d74c9129fd585b6f0434ba48bd3a7112d6736bc02e6d12f41153cab26`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 2.1 MB (2099762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae94b3cb7a1b2cef0ceffe3303cd03f83434d283aab43389e586b42bea00b358`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c9f8de84abb1c0426abc9f58b577b1536c16e87bcd8b0170be82c4f0ae8e4de`  
		Last Modified: Wed, 19 Sep 2018 08:46:35 GMT  
		Size: 308.5 KB (308531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:117877260e54ea5a540c4cb0c22a8bb4563afce08e2611de37cd3e2bc9cd6467`  
		Last Modified: Wed, 19 Sep 2018 08:47:54 GMT  
		Size: 13.8 MB (13834207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3166c1159ab9e56ababf2746bc391ed13eb289b1c0600e4bb75bfdc979d6292`  
		Last Modified: Wed, 19 Sep 2018 08:47:48 GMT  
		Size: 322.0 B  
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
$ docker pull traefik@sha256:33f69051f380715c21e4f699989b8d66d7029b3dccfa44196c8712aef56150a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.7` - linux; amd64

```console
$ docker pull traefik@sha256:7b660d0784f622f43f0cb8411f6bac5d5d795c63bd65d57497c0fc2a40c1a9c0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 MB (19113915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffd25f303561ffa880b96bad42edb59c5ea67e2d485f084f57ab35b5f9283254`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 07 Sep 2018 19:05:07 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Tue, 18 Sep 2018 22:20:20 GMT
COPY file:b8e7b8331eb251d2111e59e6955827319d749c0cc7f1c645c594f6cce2767772 in / 
# Tue, 18 Sep 2018 22:20:20 GMT
EXPOSE 80/tcp
# Tue, 18 Sep 2018 22:20:21 GMT
ENTRYPOINT ["/traefik"]
# Tue, 18 Sep 2018 22:20:21 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:c6e5aced14a22b72f0fd545bec131cc37ac8382fae12614369232b12bf5cc1bf`  
		Last Modified: Fri, 07 Sep 2018 19:06:05 GMT  
		Size: 135.0 KB (135037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b14c8e8b82b25669f321edfce4adc1671b68693161ad2cdf3efb160a087a015e`  
		Last Modified: Tue, 18 Sep 2018 22:21:00 GMT  
		Size: 19.0 MB (18978878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7` - linux; arm variant v6

```console
$ docker pull traefik@sha256:82adf677db893703f736e8f0c3e2b414b7c98b814dda49ace8121f8a419178b8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.0 MB (17961826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbc44c1873060f42aee55460f2f0988b39539e520e31e37f878fec6041fcad24`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 21 Aug 2018 08:15:56 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Wed, 19 Sep 2018 07:50:08 GMT
COPY file:5377da670a8a194a164d90c6d3bab2862db88c5ae4f2539d8977304f455b7039 in / 
# Wed, 19 Sep 2018 07:50:09 GMT
EXPOSE 80/tcp
# Wed, 19 Sep 2018 07:50:09 GMT
ENTRYPOINT ["/traefik"]
# Wed, 19 Sep 2018 07:50:09 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:9dac48e51b2381c7f7a8cbe16e8670b5d4bfcbd991c139ad10d2e46f233def67`  
		Last Modified: Tue, 21 Aug 2018 08:16:23 GMT  
		Size: 135.1 KB (135078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8821c929a53be928748e44d01cb1ef70f2f24f5127486fbd24d4465765e9de`  
		Last Modified: Wed, 19 Sep 2018 07:50:49 GMT  
		Size: 17.8 MB (17826748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:134d5588d08a0660bbd0b04e81908e2a95cf57195dafced1dbef2e6b8b64cfe4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17522697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c1534c0098242aa5bd27909815c623dbf4bfb989dd3ab178d797c933e6071be`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 21 Aug 2018 08:48:57 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Wed, 19 Sep 2018 08:43:01 GMT
COPY file:8002ce1e5624236d64575acb2f9f52434ce8d8a212f6834bca9b6ff046fc5afb in / 
# Wed, 19 Sep 2018 08:43:02 GMT
EXPOSE 80/tcp
# Wed, 19 Sep 2018 08:43:05 GMT
ENTRYPOINT ["/traefik"]
# Wed, 19 Sep 2018 08:43:05 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:237f2d395b5468b8fc4fb105187ad5ab71f15a8ae7ddb9042c335afc1d048e22`  
		Last Modified: Tue, 21 Aug 2018 08:50:29 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20d640109f9bf1a5fd38b3041935e824e1368c856c4a2c7205ff7d81e1b23946`  
		Last Modified: Wed, 19 Sep 2018 08:45:31 GMT  
		Size: 17.4 MB (17387658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7.0-rc5`

```console
$ docker pull traefik@sha256:33f69051f380715c21e4f699989b8d66d7029b3dccfa44196c8712aef56150a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.7.0-rc5` - linux; amd64

```console
$ docker pull traefik@sha256:7b660d0784f622f43f0cb8411f6bac5d5d795c63bd65d57497c0fc2a40c1a9c0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 MB (19113915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffd25f303561ffa880b96bad42edb59c5ea67e2d485f084f57ab35b5f9283254`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 07 Sep 2018 19:05:07 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Tue, 18 Sep 2018 22:20:20 GMT
COPY file:b8e7b8331eb251d2111e59e6955827319d749c0cc7f1c645c594f6cce2767772 in / 
# Tue, 18 Sep 2018 22:20:20 GMT
EXPOSE 80/tcp
# Tue, 18 Sep 2018 22:20:21 GMT
ENTRYPOINT ["/traefik"]
# Tue, 18 Sep 2018 22:20:21 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:c6e5aced14a22b72f0fd545bec131cc37ac8382fae12614369232b12bf5cc1bf`  
		Last Modified: Fri, 07 Sep 2018 19:06:05 GMT  
		Size: 135.0 KB (135037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b14c8e8b82b25669f321edfce4adc1671b68693161ad2cdf3efb160a087a015e`  
		Last Modified: Tue, 18 Sep 2018 22:21:00 GMT  
		Size: 19.0 MB (18978878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7.0-rc5` - linux; arm variant v6

```console
$ docker pull traefik@sha256:82adf677db893703f736e8f0c3e2b414b7c98b814dda49ace8121f8a419178b8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.0 MB (17961826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbc44c1873060f42aee55460f2f0988b39539e520e31e37f878fec6041fcad24`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 21 Aug 2018 08:15:56 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Wed, 19 Sep 2018 07:50:08 GMT
COPY file:5377da670a8a194a164d90c6d3bab2862db88c5ae4f2539d8977304f455b7039 in / 
# Wed, 19 Sep 2018 07:50:09 GMT
EXPOSE 80/tcp
# Wed, 19 Sep 2018 07:50:09 GMT
ENTRYPOINT ["/traefik"]
# Wed, 19 Sep 2018 07:50:09 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:9dac48e51b2381c7f7a8cbe16e8670b5d4bfcbd991c139ad10d2e46f233def67`  
		Last Modified: Tue, 21 Aug 2018 08:16:23 GMT  
		Size: 135.1 KB (135078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8821c929a53be928748e44d01cb1ef70f2f24f5127486fbd24d4465765e9de`  
		Last Modified: Wed, 19 Sep 2018 07:50:49 GMT  
		Size: 17.8 MB (17826748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7.0-rc5` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:134d5588d08a0660bbd0b04e81908e2a95cf57195dafced1dbef2e6b8b64cfe4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17522697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c1534c0098242aa5bd27909815c623dbf4bfb989dd3ab178d797c933e6071be`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 21 Aug 2018 08:48:57 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Wed, 19 Sep 2018 08:43:01 GMT
COPY file:8002ce1e5624236d64575acb2f9f52434ce8d8a212f6834bca9b6ff046fc5afb in / 
# Wed, 19 Sep 2018 08:43:02 GMT
EXPOSE 80/tcp
# Wed, 19 Sep 2018 08:43:05 GMT
ENTRYPOINT ["/traefik"]
# Wed, 19 Sep 2018 08:43:05 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:237f2d395b5468b8fc4fb105187ad5ab71f15a8ae7ddb9042c335afc1d048e22`  
		Last Modified: Tue, 21 Aug 2018 08:50:29 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20d640109f9bf1a5fd38b3041935e824e1368c856c4a2c7205ff7d81e1b23946`  
		Last Modified: Wed, 19 Sep 2018 08:45:31 GMT  
		Size: 17.4 MB (17387658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7.0-rc5-alpine`

```console
$ docker pull traefik@sha256:7151173b0ae73dcae5b641e053ecc1cdfdee4f153541ddd6667320c038c0baf0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.7.0-rc5-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:3550c592d0cd5b3e2c4fd633d0e25494787a642a202a43910260b34fcb7e337c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.5 MB (21495270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:266a4bad7efe29c8daa067debd05287b2841b0696e3c1207d3e2203d65815379`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 03:37:55 GMT
RUN apk --no-cache add ca-certificates
# Tue, 18 Sep 2018 22:20:31 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0-rc5/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 18 Sep 2018 22:20:31 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Tue, 18 Sep 2018 22:20:31 GMT
EXPOSE 80/tcp
# Tue, 18 Sep 2018 22:20:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Sep 2018 22:20:32 GMT
CMD ["traefik"]
# Tue, 18 Sep 2018 22:20:32 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d9593d002f462333c2d2b049c0e43267d2f25e7031617d7951e483cfe6fceef`  
		Last Modified: Wed, 12 Sep 2018 03:38:22 GMT  
		Size: 309.0 KB (308983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dde5b64bb3bd65041dea2a46f4644c14631a39e89aa34db3c108665a448bf47b`  
		Last Modified: Tue, 18 Sep 2018 22:21:48 GMT  
		Size: 19.0 MB (18979036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f327565861ba2c09ccb360e5c4c265dc9bde62652873ef20fad31cc67e8b5f4`  
		Last Modified: Tue, 18 Sep 2018 22:21:43 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7.0-rc5-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:4d180c4684cf67108fb968c96091dd7fc00ddeb96b76a4be46a7aa8a45fcba74
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.3 MB (20282982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a22051d966fd6c46adfd12cf1ba53d8a83e2ea68eca1e8cec07dbc8d5fa50e7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:31:22 GMT
RUN apk --no-cache add ca-certificates
# Wed, 19 Sep 2018 07:50:21 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0-rc5/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 19 Sep 2018 07:50:22 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Wed, 19 Sep 2018 07:50:22 GMT
EXPOSE 80/tcp
# Wed, 19 Sep 2018 07:50:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 19 Sep 2018 07:50:23 GMT
CMD ["traefik"]
# Wed, 19 Sep 2018 07:50:23 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:905674ea9d9448b14f15ae82e3c34138680bac1ef4fc29088aae8c9639b502fe`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 2.1 MB (2146453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91fe322e1690c8fb3f2b684fd85335d36a45e509b1568683232aede6d8a5e2b`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74a65db53aaa0cc4ab0232b1e179456b46fe0f6c04a77b387b9d4bdc2efd62c9`  
		Last Modified: Wed, 12 Sep 2018 08:31:52 GMT  
		Size: 309.1 KB (309068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff31fe66ec67225c8ef016fde7361367fea1590e54ccfcdf1bad956cc9fe0bab`  
		Last Modified: Wed, 19 Sep 2018 07:51:16 GMT  
		Size: 17.8 MB (17826965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82dd13afb94bca3e81b7450393ea7d74601032fcc5374283105108abf3973997`  
		Last Modified: Wed, 19 Sep 2018 07:51:11 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7.0-rc5-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:7767cc3ffb9692825802b3846eace582f3daf3460acc9842aba0c44ff902a424
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.8 MB (19796409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c78f207565ed46c5a8354b3abd4446be0e3fb1360180e3bb196854fdfd28a811`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 12 Sep 2018 08:42:24 GMT
ADD file:a4b53e2a2e207c5107a76c16d91b99cb1ed4ecb90b363913798e663426137d45 in / 
# Wed, 12 Sep 2018 08:42:24 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:42:25 GMT
CMD ["/bin/sh"]
# Wed, 19 Sep 2018 08:43:28 GMT
RUN apk --no-cache add ca-certificates
# Wed, 19 Sep 2018 08:43:45 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0-rc5/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 19 Sep 2018 08:43:49 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Wed, 19 Sep 2018 08:43:50 GMT
EXPOSE 80/tcp
# Wed, 19 Sep 2018 08:43:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 19 Sep 2018 08:43:51 GMT
CMD ["traefik"]
# Wed, 19 Sep 2018 08:43:52 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:9941776d74c9129fd585b6f0434ba48bd3a7112d6736bc02e6d12f41153cab26`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 2.1 MB (2099762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae94b3cb7a1b2cef0ceffe3303cd03f83434d283aab43389e586b42bea00b358`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c9f8de84abb1c0426abc9f58b577b1536c16e87bcd8b0170be82c4f0ae8e4de`  
		Last Modified: Wed, 19 Sep 2018 08:46:35 GMT  
		Size: 308.5 KB (308531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a70bbecbd6fc03c9f8193733d14453a1696e5c5f4a1f1428628c452694bcf6f2`  
		Last Modified: Wed, 19 Sep 2018 08:46:42 GMT  
		Size: 17.4 MB (17387619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67487e1bcb7d85f52fc079bd3860675e3500a2e21d7e5cd5258407503303f876`  
		Last Modified: Wed, 19 Sep 2018 08:46:35 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7.0-rc5-nanoserver`

**does not exist** (yet?)

## `traefik:v1.7.0-rc5-nanoserver-sac2016`

**does not exist** (yet?)

## `traefik:v1.7-alpine`

```console
$ docker pull traefik@sha256:7151173b0ae73dcae5b641e053ecc1cdfdee4f153541ddd6667320c038c0baf0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.7-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:3550c592d0cd5b3e2c4fd633d0e25494787a642a202a43910260b34fcb7e337c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.5 MB (21495270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:266a4bad7efe29c8daa067debd05287b2841b0696e3c1207d3e2203d65815379`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 03:37:55 GMT
RUN apk --no-cache add ca-certificates
# Tue, 18 Sep 2018 22:20:31 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0-rc5/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 18 Sep 2018 22:20:31 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Tue, 18 Sep 2018 22:20:31 GMT
EXPOSE 80/tcp
# Tue, 18 Sep 2018 22:20:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Sep 2018 22:20:32 GMT
CMD ["traefik"]
# Tue, 18 Sep 2018 22:20:32 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d9593d002f462333c2d2b049c0e43267d2f25e7031617d7951e483cfe6fceef`  
		Last Modified: Wed, 12 Sep 2018 03:38:22 GMT  
		Size: 309.0 KB (308983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dde5b64bb3bd65041dea2a46f4644c14631a39e89aa34db3c108665a448bf47b`  
		Last Modified: Tue, 18 Sep 2018 22:21:48 GMT  
		Size: 19.0 MB (18979036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f327565861ba2c09ccb360e5c4c265dc9bde62652873ef20fad31cc67e8b5f4`  
		Last Modified: Tue, 18 Sep 2018 22:21:43 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:4d180c4684cf67108fb968c96091dd7fc00ddeb96b76a4be46a7aa8a45fcba74
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.3 MB (20282982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a22051d966fd6c46adfd12cf1ba53d8a83e2ea68eca1e8cec07dbc8d5fa50e7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:31:22 GMT
RUN apk --no-cache add ca-certificates
# Wed, 19 Sep 2018 07:50:21 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0-rc5/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 19 Sep 2018 07:50:22 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Wed, 19 Sep 2018 07:50:22 GMT
EXPOSE 80/tcp
# Wed, 19 Sep 2018 07:50:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 19 Sep 2018 07:50:23 GMT
CMD ["traefik"]
# Wed, 19 Sep 2018 07:50:23 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:905674ea9d9448b14f15ae82e3c34138680bac1ef4fc29088aae8c9639b502fe`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 2.1 MB (2146453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91fe322e1690c8fb3f2b684fd85335d36a45e509b1568683232aede6d8a5e2b`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74a65db53aaa0cc4ab0232b1e179456b46fe0f6c04a77b387b9d4bdc2efd62c9`  
		Last Modified: Wed, 12 Sep 2018 08:31:52 GMT  
		Size: 309.1 KB (309068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff31fe66ec67225c8ef016fde7361367fea1590e54ccfcdf1bad956cc9fe0bab`  
		Last Modified: Wed, 19 Sep 2018 07:51:16 GMT  
		Size: 17.8 MB (17826965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82dd13afb94bca3e81b7450393ea7d74601032fcc5374283105108abf3973997`  
		Last Modified: Wed, 19 Sep 2018 07:51:11 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:7767cc3ffb9692825802b3846eace582f3daf3460acc9842aba0c44ff902a424
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.8 MB (19796409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c78f207565ed46c5a8354b3abd4446be0e3fb1360180e3bb196854fdfd28a811`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 12 Sep 2018 08:42:24 GMT
ADD file:a4b53e2a2e207c5107a76c16d91b99cb1ed4ecb90b363913798e663426137d45 in / 
# Wed, 12 Sep 2018 08:42:24 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:42:25 GMT
CMD ["/bin/sh"]
# Wed, 19 Sep 2018 08:43:28 GMT
RUN apk --no-cache add ca-certificates
# Wed, 19 Sep 2018 08:43:45 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0-rc5/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 19 Sep 2018 08:43:49 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Wed, 19 Sep 2018 08:43:50 GMT
EXPOSE 80/tcp
# Wed, 19 Sep 2018 08:43:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 19 Sep 2018 08:43:51 GMT
CMD ["traefik"]
# Wed, 19 Sep 2018 08:43:52 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:9941776d74c9129fd585b6f0434ba48bd3a7112d6736bc02e6d12f41153cab26`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 2.1 MB (2099762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae94b3cb7a1b2cef0ceffe3303cd03f83434d283aab43389e586b42bea00b358`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c9f8de84abb1c0426abc9f58b577b1536c16e87bcd8b0170be82c4f0ae8e4de`  
		Last Modified: Wed, 19 Sep 2018 08:46:35 GMT  
		Size: 308.5 KB (308531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a70bbecbd6fc03c9f8193733d14453a1696e5c5f4a1f1428628c452694bcf6f2`  
		Last Modified: Wed, 19 Sep 2018 08:46:42 GMT  
		Size: 17.4 MB (17387619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67487e1bcb7d85f52fc079bd3860675e3500a2e21d7e5cd5258407503303f876`  
		Last Modified: Wed, 19 Sep 2018 08:46:35 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7-nanoserver`

```console
$ docker pull traefik@sha256:f4661975ee2210ccc33d1e66145347fafdd8212027a98e07e003de7558b850e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2430; amd64

### `traefik:v1.7-nanoserver` - windows version 10.0.14393.2430; amd64

```console
$ docker pull traefik@sha256:1f13fac982b6de04cab0e90402b0082074b84a0db5b4af46185c9f89bebdc6db
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **439.0 MB (439017932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:605b3b1f1e68bfd439c68ad3986cf36acd7dd9e69b3b09e9651cacd2dbbeddab`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Aug 2018 17:51:52 GMT
RUN Install update 10.0.14393.2430
# Sat, 08 Sep 2018 09:43:42 GMT
RUN cmd /S /C #(nop) COPY file:3fbc2596fb308aef96ca943a5cee430837de4f5f0828611c9787d42a42459a97 in \traefik.exe 
# Sat, 08 Sep 2018 09:43:45 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Sat, 08 Sep 2018 09:43:47 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Sat, 08 Sep 2018 09:43:48 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:e739d905e720aed821f43a2032f6c001b4f8aef1b3dae8be4294b12e2e39713d`  
		Last Modified: Sat, 08 Sep 2018 09:44:14 GMT  
		Size: 18.5 MB (18540055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b7b65eb910fd11570b5105876d6da53161f057e1cf2ef5c4c422af29309c7c5`  
		Last Modified: Sat, 08 Sep 2018 09:44:09 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88093c83177eaab007ac4dc901ce2afd2b5c2e0558d826cdc44f012c76ffe6c8`  
		Last Modified: Sat, 08 Sep 2018 09:44:09 GMT  
		Size: 943.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f07002d7f12134399339c372c7cef1a8c9a9d4de805e6986a298d09cc4c204f`  
		Last Modified: Sat, 08 Sep 2018 09:44:09 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:f4661975ee2210ccc33d1e66145347fafdd8212027a98e07e003de7558b850e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2430; amd64

### `traefik:v1.7-nanoserver-sac2016` - windows version 10.0.14393.2430; amd64

```console
$ docker pull traefik@sha256:1f13fac982b6de04cab0e90402b0082074b84a0db5b4af46185c9f89bebdc6db
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **439.0 MB (439017932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:605b3b1f1e68bfd439c68ad3986cf36acd7dd9e69b3b09e9651cacd2dbbeddab`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Aug 2018 17:51:52 GMT
RUN Install update 10.0.14393.2430
# Sat, 08 Sep 2018 09:43:42 GMT
RUN cmd /S /C #(nop) COPY file:3fbc2596fb308aef96ca943a5cee430837de4f5f0828611c9787d42a42459a97 in \traefik.exe 
# Sat, 08 Sep 2018 09:43:45 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Sat, 08 Sep 2018 09:43:47 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Sat, 08 Sep 2018 09:43:48 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:e739d905e720aed821f43a2032f6c001b4f8aef1b3dae8be4294b12e2e39713d`  
		Last Modified: Sat, 08 Sep 2018 09:44:14 GMT  
		Size: 18.5 MB (18540055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b7b65eb910fd11570b5105876d6da53161f057e1cf2ef5c4c422af29309c7c5`  
		Last Modified: Sat, 08 Sep 2018 09:44:09 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88093c83177eaab007ac4dc901ce2afd2b5c2e0558d826cdc44f012c76ffe6c8`  
		Last Modified: Sat, 08 Sep 2018 09:44:09 GMT  
		Size: 943.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f07002d7f12134399339c372c7cef1a8c9a9d4de805e6986a298d09cc4c204f`  
		Last Modified: Sat, 08 Sep 2018 09:44:09 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
