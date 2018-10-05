<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `traefik`

-	[`traefik:1.7`](#traefik17)
-	[`traefik:1.7.2`](#traefik172)
-	[`traefik:1.7.2-alpine`](#traefik172-alpine)
-	[`traefik:1.7.2-nanoserver`](#traefik172-nanoserver)
-	[`traefik:1.7.2-nanoserver-sac2016`](#traefik172-nanoserver-sac2016)
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
-	[`traefik:v1.7`](#traefikv17)
-	[`traefik:v1.7.2`](#traefikv172)
-	[`traefik:v1.7.2-alpine`](#traefikv172-alpine)
-	[`traefik:v1.7.2-nanoserver`](#traefikv172-nanoserver)
-	[`traefik:v1.7.2-nanoserver-sac2016`](#traefikv172-nanoserver-sac2016)
-	[`traefik:v1.7-alpine`](#traefikv17-alpine)
-	[`traefik:v1.7-nanoserver`](#traefikv17-nanoserver)
-	[`traefik:v1.7-nanoserver-sac2016`](#traefikv17-nanoserver-sac2016)

## `traefik:1.7`

```console
$ docker pull traefik@sha256:ac49adabeb668cbf95f440dc3da8fe0d3329d514835171058c91917ce893c682
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:1.7` - linux; amd64

```console
$ docker pull traefik@sha256:031b9f43e22083f82df947311ecf63c46a80b58308387dae8139fd69bb746e93
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 MB (19123913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8953801567ee89e3f92372f6a72f4e828ecd29689a6eb15684281813c8bacaf`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 07 Sep 2018 19:05:07 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Thu, 04 Oct 2018 18:23:33 GMT
COPY file:cd6535f7fd8622a0a277c83141ba62ca771a4540f8eaa4a9aeac82de3d487910 in / 
# Thu, 04 Oct 2018 18:23:33 GMT
EXPOSE 80/tcp
# Thu, 04 Oct 2018 18:23:33 GMT
ENTRYPOINT ["/traefik"]
# Thu, 04 Oct 2018 18:23:34 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:c6e5aced14a22b72f0fd545bec131cc37ac8382fae12614369232b12bf5cc1bf`  
		Last Modified: Fri, 07 Sep 2018 19:06:05 GMT  
		Size: 135.0 KB (135037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:305b857005b5464a3b0aa77dfb73364d297b92c3b58df9731b2744ac0470c74e`  
		Last Modified: Thu, 04 Oct 2018 18:24:16 GMT  
		Size: 19.0 MB (18988876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7` - linux; arm variant v6

```console
$ docker pull traefik@sha256:f8fa0dfb26f554349d0d4e34e506c5c455bd85ddd0a6da557b355df4ba63d579
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.0 MB (17978578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7a3ea8a3de0ae551d3845fe3ea5691f7fe160a9d2550f836f430fd15bf0557e`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 21 Aug 2018 08:15:56 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Fri, 05 Oct 2018 07:56:12 GMT
COPY file:def8de189561acc18cb94900302a80f3fe09a78365de43c62cf3d031fbb124ad in / 
# Fri, 05 Oct 2018 07:56:13 GMT
EXPOSE 80/tcp
# Fri, 05 Oct 2018 07:56:13 GMT
ENTRYPOINT ["/traefik"]
# Fri, 05 Oct 2018 07:56:13 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:9dac48e51b2381c7f7a8cbe16e8670b5d4bfcbd991c139ad10d2e46f233def67`  
		Last Modified: Tue, 21 Aug 2018 08:16:23 GMT  
		Size: 135.1 KB (135078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64789d8f2b8f916b049c3b47d6efcd7a53da82b4a9f875f7fb592fd3d7686d6f`  
		Last Modified: Fri, 05 Oct 2018 07:56:45 GMT  
		Size: 17.8 MB (17843500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7.2`

```console
$ docker pull traefik@sha256:ac49adabeb668cbf95f440dc3da8fe0d3329d514835171058c91917ce893c682
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:1.7.2` - linux; amd64

```console
$ docker pull traefik@sha256:031b9f43e22083f82df947311ecf63c46a80b58308387dae8139fd69bb746e93
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 MB (19123913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8953801567ee89e3f92372f6a72f4e828ecd29689a6eb15684281813c8bacaf`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 07 Sep 2018 19:05:07 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Thu, 04 Oct 2018 18:23:33 GMT
COPY file:cd6535f7fd8622a0a277c83141ba62ca771a4540f8eaa4a9aeac82de3d487910 in / 
# Thu, 04 Oct 2018 18:23:33 GMT
EXPOSE 80/tcp
# Thu, 04 Oct 2018 18:23:33 GMT
ENTRYPOINT ["/traefik"]
# Thu, 04 Oct 2018 18:23:34 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:c6e5aced14a22b72f0fd545bec131cc37ac8382fae12614369232b12bf5cc1bf`  
		Last Modified: Fri, 07 Sep 2018 19:06:05 GMT  
		Size: 135.0 KB (135037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:305b857005b5464a3b0aa77dfb73364d297b92c3b58df9731b2744ac0470c74e`  
		Last Modified: Thu, 04 Oct 2018 18:24:16 GMT  
		Size: 19.0 MB (18988876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7.2` - linux; arm variant v6

```console
$ docker pull traefik@sha256:f8fa0dfb26f554349d0d4e34e506c5c455bd85ddd0a6da557b355df4ba63d579
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.0 MB (17978578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7a3ea8a3de0ae551d3845fe3ea5691f7fe160a9d2550f836f430fd15bf0557e`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 21 Aug 2018 08:15:56 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Fri, 05 Oct 2018 07:56:12 GMT
COPY file:def8de189561acc18cb94900302a80f3fe09a78365de43c62cf3d031fbb124ad in / 
# Fri, 05 Oct 2018 07:56:13 GMT
EXPOSE 80/tcp
# Fri, 05 Oct 2018 07:56:13 GMT
ENTRYPOINT ["/traefik"]
# Fri, 05 Oct 2018 07:56:13 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:9dac48e51b2381c7f7a8cbe16e8670b5d4bfcbd991c139ad10d2e46f233def67`  
		Last Modified: Tue, 21 Aug 2018 08:16:23 GMT  
		Size: 135.1 KB (135078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64789d8f2b8f916b049c3b47d6efcd7a53da82b4a9f875f7fb592fd3d7686d6f`  
		Last Modified: Fri, 05 Oct 2018 07:56:45 GMT  
		Size: 17.8 MB (17843500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7.2-alpine`

```console
$ docker pull traefik@sha256:8fb8e7fe803d285c2ba65e54d380cf0be4ce1688e0658361c31500e853403501
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:1.7.2-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:6115155b261707b642341b065cd3fac2b546559ba035d0262650b3b3bbdd10ea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.5 MB (21505166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:add5fac61ae5d0d0a51dadc4d545d195801bc0f39c78c1c939008e577881db75`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 03:37:55 GMT
RUN apk --no-cache add ca-certificates
# Thu, 04 Oct 2018 18:23:45 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.2/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Thu, 04 Oct 2018 18:23:46 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Thu, 04 Oct 2018 18:23:46 GMT
EXPOSE 80/tcp
# Thu, 04 Oct 2018 18:23:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 04 Oct 2018 18:23:52 GMT
CMD ["traefik"]
# Thu, 04 Oct 2018 18:23:53 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.2 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:5d09ab10efbd183824a61fb0c8567fb4488c5beac36dd5735dc07ec29321b1cb`  
		Last Modified: Thu, 04 Oct 2018 18:25:35 GMT  
		Size: 19.0 MB (18988931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37b796c58adcf2e3c8a81afb304268f1e520d3a65258623100157612a9cd46ad`  
		Last Modified: Thu, 04 Oct 2018 18:25:30 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7.2-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:c08150a232b1dd9f510bec1d88f28b192df23b221d156526932268a5e4b6eb3a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.3 MB (20299632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a843a903ac21e606ca0eee08a243a1e1523ba5c7a983c4b7eae7f9e11c5c1388`
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
# Fri, 05 Oct 2018 07:56:27 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.2/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Fri, 05 Oct 2018 07:56:27 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Fri, 05 Oct 2018 07:56:28 GMT
EXPOSE 80/tcp
# Fri, 05 Oct 2018 07:56:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 05 Oct 2018 07:56:28 GMT
CMD ["traefik"]
# Fri, 05 Oct 2018 07:56:28 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.2 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:15d49e2bad7a3e4a8eaa1514f7e513b88d1128acbbe62b0dff519e73c09fc0f9`  
		Last Modified: Fri, 05 Oct 2018 07:57:21 GMT  
		Size: 17.8 MB (17843615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ef286bd8e19ab03a407d4ee1342f76644337fe94328f21f35834860cc04dd14`  
		Last Modified: Fri, 05 Oct 2018 07:57:15 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7.2-nanoserver`

**does not exist** (yet?)

## `traefik:1.7.2-nanoserver-sac2016`

**does not exist** (yet?)

## `traefik:1.7-alpine`

```console
$ docker pull traefik@sha256:8fb8e7fe803d285c2ba65e54d380cf0be4ce1688e0658361c31500e853403501
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:1.7-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:6115155b261707b642341b065cd3fac2b546559ba035d0262650b3b3bbdd10ea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.5 MB (21505166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:add5fac61ae5d0d0a51dadc4d545d195801bc0f39c78c1c939008e577881db75`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 03:37:55 GMT
RUN apk --no-cache add ca-certificates
# Thu, 04 Oct 2018 18:23:45 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.2/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Thu, 04 Oct 2018 18:23:46 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Thu, 04 Oct 2018 18:23:46 GMT
EXPOSE 80/tcp
# Thu, 04 Oct 2018 18:23:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 04 Oct 2018 18:23:52 GMT
CMD ["traefik"]
# Thu, 04 Oct 2018 18:23:53 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.2 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:5d09ab10efbd183824a61fb0c8567fb4488c5beac36dd5735dc07ec29321b1cb`  
		Last Modified: Thu, 04 Oct 2018 18:25:35 GMT  
		Size: 19.0 MB (18988931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37b796c58adcf2e3c8a81afb304268f1e520d3a65258623100157612a9cd46ad`  
		Last Modified: Thu, 04 Oct 2018 18:25:30 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:c08150a232b1dd9f510bec1d88f28b192df23b221d156526932268a5e4b6eb3a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.3 MB (20299632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a843a903ac21e606ca0eee08a243a1e1523ba5c7a983c4b7eae7f9e11c5c1388`
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
# Fri, 05 Oct 2018 07:56:27 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.2/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Fri, 05 Oct 2018 07:56:27 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Fri, 05 Oct 2018 07:56:28 GMT
EXPOSE 80/tcp
# Fri, 05 Oct 2018 07:56:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 05 Oct 2018 07:56:28 GMT
CMD ["traefik"]
# Fri, 05 Oct 2018 07:56:28 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.2 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:15d49e2bad7a3e4a8eaa1514f7e513b88d1128acbbe62b0dff519e73c09fc0f9`  
		Last Modified: Fri, 05 Oct 2018 07:57:21 GMT  
		Size: 17.8 MB (17843615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ef286bd8e19ab03a407d4ee1342f76644337fe94328f21f35834860cc04dd14`  
		Last Modified: Fri, 05 Oct 2018 07:57:15 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7-nanoserver`

```console
$ docker pull traefik@sha256:f292708df1aaa25d882e383b5ddebe5b1755bec7eadc605a7e0d66cf7ce1e3bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2485; amd64

### `traefik:1.7-nanoserver` - windows version 10.0.14393.2485; amd64

```console
$ docker pull traefik@sha256:085d447b30ee77254df872902889cf651b07408a8af5e343084d7867e8be7f75
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.2 MB (452234544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a9dfbf7f5d1c4c00428e89dc0e08c66bb05e3d05b3076b8af5a11921f43b2d8`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 11 Sep 2018 16:53:25 GMT
RUN Install update 10.0.14393.2485
# Tue, 02 Oct 2018 09:15:54 GMT
RUN cmd /S /C #(nop) COPY file:1915325a14783c34932aaf2fbe9ff8219bcd8ebb5b15986082ff6949742a0724 in \traefik.exe 
# Tue, 02 Oct 2018 09:15:57 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Tue, 02 Oct 2018 09:15:58 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 02 Oct 2018 09:15:59 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Mon, 17 Sep 2018 20:04:15 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b1b0c61be11f6d053756595f70211e6044137b150fc1cc23d52ee0852eaf9146`  
		Last Modified: Tue, 11 Sep 2018 16:53:25 GMT  
		Size: 180.5 MB (180533966 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0ed41c06570459d8cdeaa4041c99c14b42f7d4ce28afe8d826372d5d39d1ed3f`  
		Last Modified: Tue, 02 Oct 2018 09:16:19 GMT  
		Size: 19.0 MB (19006739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d4f8e77aa340bc4d9271ef28c529d822decffd2a8a5d7955a16764b75ac9bc`  
		Last Modified: Tue, 02 Oct 2018 09:16:13 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da7994d798c07650e5bc401ddfd0565d6428573f839f798a4e851754b565339e`  
		Last Modified: Tue, 02 Oct 2018 09:16:14 GMT  
		Size: 943.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f92a7926b8df569ac0f2e630b0f44e9f62a00496ddb7af93b2b5e046212d563`  
		Last Modified: Tue, 02 Oct 2018 09:16:13 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:f292708df1aaa25d882e383b5ddebe5b1755bec7eadc605a7e0d66cf7ce1e3bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2485; amd64

### `traefik:1.7-nanoserver-sac2016` - windows version 10.0.14393.2485; amd64

```console
$ docker pull traefik@sha256:085d447b30ee77254df872902889cf651b07408a8af5e343084d7867e8be7f75
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.2 MB (452234544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a9dfbf7f5d1c4c00428e89dc0e08c66bb05e3d05b3076b8af5a11921f43b2d8`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 11 Sep 2018 16:53:25 GMT
RUN Install update 10.0.14393.2485
# Tue, 02 Oct 2018 09:15:54 GMT
RUN cmd /S /C #(nop) COPY file:1915325a14783c34932aaf2fbe9ff8219bcd8ebb5b15986082ff6949742a0724 in \traefik.exe 
# Tue, 02 Oct 2018 09:15:57 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Tue, 02 Oct 2018 09:15:58 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 02 Oct 2018 09:15:59 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Mon, 17 Sep 2018 20:04:15 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b1b0c61be11f6d053756595f70211e6044137b150fc1cc23d52ee0852eaf9146`  
		Last Modified: Tue, 11 Sep 2018 16:53:25 GMT  
		Size: 180.5 MB (180533966 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0ed41c06570459d8cdeaa4041c99c14b42f7d4ce28afe8d826372d5d39d1ed3f`  
		Last Modified: Tue, 02 Oct 2018 09:16:19 GMT  
		Size: 19.0 MB (19006739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d4f8e77aa340bc4d9271ef28c529d822decffd2a8a5d7955a16764b75ac9bc`  
		Last Modified: Tue, 02 Oct 2018 09:16:13 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da7994d798c07650e5bc401ddfd0565d6428573f839f798a4e851754b565339e`  
		Last Modified: Tue, 02 Oct 2018 09:16:14 GMT  
		Size: 943.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f92a7926b8df569ac0f2e630b0f44e9f62a00496ddb7af93b2b5e046212d563`  
		Last Modified: Tue, 02 Oct 2018 09:16:13 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:alpine`

```console
$ docker pull traefik@sha256:8fb8e7fe803d285c2ba65e54d380cf0be4ce1688e0658361c31500e853403501
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:alpine` - linux; amd64

```console
$ docker pull traefik@sha256:6115155b261707b642341b065cd3fac2b546559ba035d0262650b3b3bbdd10ea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.5 MB (21505166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:add5fac61ae5d0d0a51dadc4d545d195801bc0f39c78c1c939008e577881db75`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 03:37:55 GMT
RUN apk --no-cache add ca-certificates
# Thu, 04 Oct 2018 18:23:45 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.2/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Thu, 04 Oct 2018 18:23:46 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Thu, 04 Oct 2018 18:23:46 GMT
EXPOSE 80/tcp
# Thu, 04 Oct 2018 18:23:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 04 Oct 2018 18:23:52 GMT
CMD ["traefik"]
# Thu, 04 Oct 2018 18:23:53 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.2 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:5d09ab10efbd183824a61fb0c8567fb4488c5beac36dd5735dc07ec29321b1cb`  
		Last Modified: Thu, 04 Oct 2018 18:25:35 GMT  
		Size: 19.0 MB (18988931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37b796c58adcf2e3c8a81afb304268f1e520d3a65258623100157612a9cd46ad`  
		Last Modified: Thu, 04 Oct 2018 18:25:30 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:c08150a232b1dd9f510bec1d88f28b192df23b221d156526932268a5e4b6eb3a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.3 MB (20299632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a843a903ac21e606ca0eee08a243a1e1523ba5c7a983c4b7eae7f9e11c5c1388`
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
# Fri, 05 Oct 2018 07:56:27 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.2/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Fri, 05 Oct 2018 07:56:27 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Fri, 05 Oct 2018 07:56:28 GMT
EXPOSE 80/tcp
# Fri, 05 Oct 2018 07:56:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 05 Oct 2018 07:56:28 GMT
CMD ["traefik"]
# Fri, 05 Oct 2018 07:56:28 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.2 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:15d49e2bad7a3e4a8eaa1514f7e513b88d1128acbbe62b0dff519e73c09fc0f9`  
		Last Modified: Fri, 05 Oct 2018 07:57:21 GMT  
		Size: 17.8 MB (17843615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ef286bd8e19ab03a407d4ee1342f76644337fe94328f21f35834860cc04dd14`  
		Last Modified: Fri, 05 Oct 2018 07:57:15 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:latest`

```console
$ docker pull traefik@sha256:b4567eab24b56fe680e10ef451984a5994a572b792bcfeaf24dd78ef0a50a123
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:latest` - linux; amd64

```console
$ docker pull traefik@sha256:031b9f43e22083f82df947311ecf63c46a80b58308387dae8139fd69bb746e93
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 MB (19123913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8953801567ee89e3f92372f6a72f4e828ecd29689a6eb15684281813c8bacaf`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 07 Sep 2018 19:05:07 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Thu, 04 Oct 2018 18:23:33 GMT
COPY file:cd6535f7fd8622a0a277c83141ba62ca771a4540f8eaa4a9aeac82de3d487910 in / 
# Thu, 04 Oct 2018 18:23:33 GMT
EXPOSE 80/tcp
# Thu, 04 Oct 2018 18:23:33 GMT
ENTRYPOINT ["/traefik"]
# Thu, 04 Oct 2018 18:23:34 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:c6e5aced14a22b72f0fd545bec131cc37ac8382fae12614369232b12bf5cc1bf`  
		Last Modified: Fri, 07 Sep 2018 19:06:05 GMT  
		Size: 135.0 KB (135037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:305b857005b5464a3b0aa77dfb73364d297b92c3b58df9731b2744ac0470c74e`  
		Last Modified: Thu, 04 Oct 2018 18:24:16 GMT  
		Size: 19.0 MB (18988876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:maroilles`

```console
$ docker pull traefik@sha256:ac49adabeb668cbf95f440dc3da8fe0d3329d514835171058c91917ce893c682
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:maroilles` - linux; amd64

```console
$ docker pull traefik@sha256:031b9f43e22083f82df947311ecf63c46a80b58308387dae8139fd69bb746e93
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 MB (19123913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8953801567ee89e3f92372f6a72f4e828ecd29689a6eb15684281813c8bacaf`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 07 Sep 2018 19:05:07 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Thu, 04 Oct 2018 18:23:33 GMT
COPY file:cd6535f7fd8622a0a277c83141ba62ca771a4540f8eaa4a9aeac82de3d487910 in / 
# Thu, 04 Oct 2018 18:23:33 GMT
EXPOSE 80/tcp
# Thu, 04 Oct 2018 18:23:33 GMT
ENTRYPOINT ["/traefik"]
# Thu, 04 Oct 2018 18:23:34 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:c6e5aced14a22b72f0fd545bec131cc37ac8382fae12614369232b12bf5cc1bf`  
		Last Modified: Fri, 07 Sep 2018 19:06:05 GMT  
		Size: 135.0 KB (135037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:305b857005b5464a3b0aa77dfb73364d297b92c3b58df9731b2744ac0470c74e`  
		Last Modified: Thu, 04 Oct 2018 18:24:16 GMT  
		Size: 19.0 MB (18988876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:maroilles` - linux; arm variant v6

```console
$ docker pull traefik@sha256:f8fa0dfb26f554349d0d4e34e506c5c455bd85ddd0a6da557b355df4ba63d579
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.0 MB (17978578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7a3ea8a3de0ae551d3845fe3ea5691f7fe160a9d2550f836f430fd15bf0557e`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 21 Aug 2018 08:15:56 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Fri, 05 Oct 2018 07:56:12 GMT
COPY file:def8de189561acc18cb94900302a80f3fe09a78365de43c62cf3d031fbb124ad in / 
# Fri, 05 Oct 2018 07:56:13 GMT
EXPOSE 80/tcp
# Fri, 05 Oct 2018 07:56:13 GMT
ENTRYPOINT ["/traefik"]
# Fri, 05 Oct 2018 07:56:13 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:9dac48e51b2381c7f7a8cbe16e8670b5d4bfcbd991c139ad10d2e46f233def67`  
		Last Modified: Tue, 21 Aug 2018 08:16:23 GMT  
		Size: 135.1 KB (135078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64789d8f2b8f916b049c3b47d6efcd7a53da82b4a9f875f7fb592fd3d7686d6f`  
		Last Modified: Fri, 05 Oct 2018 07:56:45 GMT  
		Size: 17.8 MB (17843500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:maroilles-alpine`

```console
$ docker pull traefik@sha256:8fb8e7fe803d285c2ba65e54d380cf0be4ce1688e0658361c31500e853403501
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:maroilles-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:6115155b261707b642341b065cd3fac2b546559ba035d0262650b3b3bbdd10ea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.5 MB (21505166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:add5fac61ae5d0d0a51dadc4d545d195801bc0f39c78c1c939008e577881db75`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 03:37:55 GMT
RUN apk --no-cache add ca-certificates
# Thu, 04 Oct 2018 18:23:45 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.2/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Thu, 04 Oct 2018 18:23:46 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Thu, 04 Oct 2018 18:23:46 GMT
EXPOSE 80/tcp
# Thu, 04 Oct 2018 18:23:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 04 Oct 2018 18:23:52 GMT
CMD ["traefik"]
# Thu, 04 Oct 2018 18:23:53 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.2 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:5d09ab10efbd183824a61fb0c8567fb4488c5beac36dd5735dc07ec29321b1cb`  
		Last Modified: Thu, 04 Oct 2018 18:25:35 GMT  
		Size: 19.0 MB (18988931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37b796c58adcf2e3c8a81afb304268f1e520d3a65258623100157612a9cd46ad`  
		Last Modified: Thu, 04 Oct 2018 18:25:30 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:maroilles-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:c08150a232b1dd9f510bec1d88f28b192df23b221d156526932268a5e4b6eb3a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.3 MB (20299632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a843a903ac21e606ca0eee08a243a1e1523ba5c7a983c4b7eae7f9e11c5c1388`
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
# Fri, 05 Oct 2018 07:56:27 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.2/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Fri, 05 Oct 2018 07:56:27 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Fri, 05 Oct 2018 07:56:28 GMT
EXPOSE 80/tcp
# Fri, 05 Oct 2018 07:56:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 05 Oct 2018 07:56:28 GMT
CMD ["traefik"]
# Fri, 05 Oct 2018 07:56:28 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.2 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:15d49e2bad7a3e4a8eaa1514f7e513b88d1128acbbe62b0dff519e73c09fc0f9`  
		Last Modified: Fri, 05 Oct 2018 07:57:21 GMT  
		Size: 17.8 MB (17843615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ef286bd8e19ab03a407d4ee1342f76644337fe94328f21f35834860cc04dd14`  
		Last Modified: Fri, 05 Oct 2018 07:57:15 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:maroilles-nanoserver`

```console
$ docker pull traefik@sha256:f292708df1aaa25d882e383b5ddebe5b1755bec7eadc605a7e0d66cf7ce1e3bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2485; amd64

### `traefik:maroilles-nanoserver` - windows version 10.0.14393.2485; amd64

```console
$ docker pull traefik@sha256:085d447b30ee77254df872902889cf651b07408a8af5e343084d7867e8be7f75
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.2 MB (452234544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a9dfbf7f5d1c4c00428e89dc0e08c66bb05e3d05b3076b8af5a11921f43b2d8`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 11 Sep 2018 16:53:25 GMT
RUN Install update 10.0.14393.2485
# Tue, 02 Oct 2018 09:15:54 GMT
RUN cmd /S /C #(nop) COPY file:1915325a14783c34932aaf2fbe9ff8219bcd8ebb5b15986082ff6949742a0724 in \traefik.exe 
# Tue, 02 Oct 2018 09:15:57 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Tue, 02 Oct 2018 09:15:58 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 02 Oct 2018 09:15:59 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Mon, 17 Sep 2018 20:04:15 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b1b0c61be11f6d053756595f70211e6044137b150fc1cc23d52ee0852eaf9146`  
		Last Modified: Tue, 11 Sep 2018 16:53:25 GMT  
		Size: 180.5 MB (180533966 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0ed41c06570459d8cdeaa4041c99c14b42f7d4ce28afe8d826372d5d39d1ed3f`  
		Last Modified: Tue, 02 Oct 2018 09:16:19 GMT  
		Size: 19.0 MB (19006739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d4f8e77aa340bc4d9271ef28c529d822decffd2a8a5d7955a16764b75ac9bc`  
		Last Modified: Tue, 02 Oct 2018 09:16:13 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da7994d798c07650e5bc401ddfd0565d6428573f839f798a4e851754b565339e`  
		Last Modified: Tue, 02 Oct 2018 09:16:14 GMT  
		Size: 943.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f92a7926b8df569ac0f2e630b0f44e9f62a00496ddb7af93b2b5e046212d563`  
		Last Modified: Tue, 02 Oct 2018 09:16:13 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:maroilles-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:f292708df1aaa25d882e383b5ddebe5b1755bec7eadc605a7e0d66cf7ce1e3bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2485; amd64

### `traefik:maroilles-nanoserver-sac2016` - windows version 10.0.14393.2485; amd64

```console
$ docker pull traefik@sha256:085d447b30ee77254df872902889cf651b07408a8af5e343084d7867e8be7f75
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.2 MB (452234544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a9dfbf7f5d1c4c00428e89dc0e08c66bb05e3d05b3076b8af5a11921f43b2d8`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 11 Sep 2018 16:53:25 GMT
RUN Install update 10.0.14393.2485
# Tue, 02 Oct 2018 09:15:54 GMT
RUN cmd /S /C #(nop) COPY file:1915325a14783c34932aaf2fbe9ff8219bcd8ebb5b15986082ff6949742a0724 in \traefik.exe 
# Tue, 02 Oct 2018 09:15:57 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Tue, 02 Oct 2018 09:15:58 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 02 Oct 2018 09:15:59 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Mon, 17 Sep 2018 20:04:15 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b1b0c61be11f6d053756595f70211e6044137b150fc1cc23d52ee0852eaf9146`  
		Last Modified: Tue, 11 Sep 2018 16:53:25 GMT  
		Size: 180.5 MB (180533966 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0ed41c06570459d8cdeaa4041c99c14b42f7d4ce28afe8d826372d5d39d1ed3f`  
		Last Modified: Tue, 02 Oct 2018 09:16:19 GMT  
		Size: 19.0 MB (19006739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d4f8e77aa340bc4d9271ef28c529d822decffd2a8a5d7955a16764b75ac9bc`  
		Last Modified: Tue, 02 Oct 2018 09:16:13 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da7994d798c07650e5bc401ddfd0565d6428573f839f798a4e851754b565339e`  
		Last Modified: Tue, 02 Oct 2018 09:16:14 GMT  
		Size: 943.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f92a7926b8df569ac0f2e630b0f44e9f62a00496ddb7af93b2b5e046212d563`  
		Last Modified: Tue, 02 Oct 2018 09:16:13 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:nanoserver`

```console
$ docker pull traefik@sha256:f292708df1aaa25d882e383b5ddebe5b1755bec7eadc605a7e0d66cf7ce1e3bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2485; amd64

### `traefik:nanoserver` - windows version 10.0.14393.2485; amd64

```console
$ docker pull traefik@sha256:085d447b30ee77254df872902889cf651b07408a8af5e343084d7867e8be7f75
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.2 MB (452234544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a9dfbf7f5d1c4c00428e89dc0e08c66bb05e3d05b3076b8af5a11921f43b2d8`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 11 Sep 2018 16:53:25 GMT
RUN Install update 10.0.14393.2485
# Tue, 02 Oct 2018 09:15:54 GMT
RUN cmd /S /C #(nop) COPY file:1915325a14783c34932aaf2fbe9ff8219bcd8ebb5b15986082ff6949742a0724 in \traefik.exe 
# Tue, 02 Oct 2018 09:15:57 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Tue, 02 Oct 2018 09:15:58 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 02 Oct 2018 09:15:59 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Mon, 17 Sep 2018 20:04:15 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b1b0c61be11f6d053756595f70211e6044137b150fc1cc23d52ee0852eaf9146`  
		Last Modified: Tue, 11 Sep 2018 16:53:25 GMT  
		Size: 180.5 MB (180533966 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0ed41c06570459d8cdeaa4041c99c14b42f7d4ce28afe8d826372d5d39d1ed3f`  
		Last Modified: Tue, 02 Oct 2018 09:16:19 GMT  
		Size: 19.0 MB (19006739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d4f8e77aa340bc4d9271ef28c529d822decffd2a8a5d7955a16764b75ac9bc`  
		Last Modified: Tue, 02 Oct 2018 09:16:13 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da7994d798c07650e5bc401ddfd0565d6428573f839f798a4e851754b565339e`  
		Last Modified: Tue, 02 Oct 2018 09:16:14 GMT  
		Size: 943.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f92a7926b8df569ac0f2e630b0f44e9f62a00496ddb7af93b2b5e046212d563`  
		Last Modified: Tue, 02 Oct 2018 09:16:13 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:nanoserver-sac2016`

```console
$ docker pull traefik@sha256:f292708df1aaa25d882e383b5ddebe5b1755bec7eadc605a7e0d66cf7ce1e3bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2485; amd64

### `traefik:nanoserver-sac2016` - windows version 10.0.14393.2485; amd64

```console
$ docker pull traefik@sha256:085d447b30ee77254df872902889cf651b07408a8af5e343084d7867e8be7f75
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.2 MB (452234544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a9dfbf7f5d1c4c00428e89dc0e08c66bb05e3d05b3076b8af5a11921f43b2d8`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 11 Sep 2018 16:53:25 GMT
RUN Install update 10.0.14393.2485
# Tue, 02 Oct 2018 09:15:54 GMT
RUN cmd /S /C #(nop) COPY file:1915325a14783c34932aaf2fbe9ff8219bcd8ebb5b15986082ff6949742a0724 in \traefik.exe 
# Tue, 02 Oct 2018 09:15:57 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Tue, 02 Oct 2018 09:15:58 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 02 Oct 2018 09:15:59 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Mon, 17 Sep 2018 20:04:15 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b1b0c61be11f6d053756595f70211e6044137b150fc1cc23d52ee0852eaf9146`  
		Last Modified: Tue, 11 Sep 2018 16:53:25 GMT  
		Size: 180.5 MB (180533966 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0ed41c06570459d8cdeaa4041c99c14b42f7d4ce28afe8d826372d5d39d1ed3f`  
		Last Modified: Tue, 02 Oct 2018 09:16:19 GMT  
		Size: 19.0 MB (19006739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d4f8e77aa340bc4d9271ef28c529d822decffd2a8a5d7955a16764b75ac9bc`  
		Last Modified: Tue, 02 Oct 2018 09:16:13 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da7994d798c07650e5bc401ddfd0565d6428573f839f798a4e851754b565339e`  
		Last Modified: Tue, 02 Oct 2018 09:16:14 GMT  
		Size: 943.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f92a7926b8df569ac0f2e630b0f44e9f62a00496ddb7af93b2b5e046212d563`  
		Last Modified: Tue, 02 Oct 2018 09:16:13 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7`

```console
$ docker pull traefik@sha256:ac49adabeb668cbf95f440dc3da8fe0d3329d514835171058c91917ce893c682
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:v1.7` - linux; amd64

```console
$ docker pull traefik@sha256:031b9f43e22083f82df947311ecf63c46a80b58308387dae8139fd69bb746e93
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 MB (19123913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8953801567ee89e3f92372f6a72f4e828ecd29689a6eb15684281813c8bacaf`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 07 Sep 2018 19:05:07 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Thu, 04 Oct 2018 18:23:33 GMT
COPY file:cd6535f7fd8622a0a277c83141ba62ca771a4540f8eaa4a9aeac82de3d487910 in / 
# Thu, 04 Oct 2018 18:23:33 GMT
EXPOSE 80/tcp
# Thu, 04 Oct 2018 18:23:33 GMT
ENTRYPOINT ["/traefik"]
# Thu, 04 Oct 2018 18:23:34 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:c6e5aced14a22b72f0fd545bec131cc37ac8382fae12614369232b12bf5cc1bf`  
		Last Modified: Fri, 07 Sep 2018 19:06:05 GMT  
		Size: 135.0 KB (135037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:305b857005b5464a3b0aa77dfb73364d297b92c3b58df9731b2744ac0470c74e`  
		Last Modified: Thu, 04 Oct 2018 18:24:16 GMT  
		Size: 19.0 MB (18988876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7` - linux; arm variant v6

```console
$ docker pull traefik@sha256:f8fa0dfb26f554349d0d4e34e506c5c455bd85ddd0a6da557b355df4ba63d579
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.0 MB (17978578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7a3ea8a3de0ae551d3845fe3ea5691f7fe160a9d2550f836f430fd15bf0557e`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 21 Aug 2018 08:15:56 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Fri, 05 Oct 2018 07:56:12 GMT
COPY file:def8de189561acc18cb94900302a80f3fe09a78365de43c62cf3d031fbb124ad in / 
# Fri, 05 Oct 2018 07:56:13 GMT
EXPOSE 80/tcp
# Fri, 05 Oct 2018 07:56:13 GMT
ENTRYPOINT ["/traefik"]
# Fri, 05 Oct 2018 07:56:13 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:9dac48e51b2381c7f7a8cbe16e8670b5d4bfcbd991c139ad10d2e46f233def67`  
		Last Modified: Tue, 21 Aug 2018 08:16:23 GMT  
		Size: 135.1 KB (135078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64789d8f2b8f916b049c3b47d6efcd7a53da82b4a9f875f7fb592fd3d7686d6f`  
		Last Modified: Fri, 05 Oct 2018 07:56:45 GMT  
		Size: 17.8 MB (17843500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7.2`

```console
$ docker pull traefik@sha256:ac49adabeb668cbf95f440dc3da8fe0d3329d514835171058c91917ce893c682
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:v1.7.2` - linux; amd64

```console
$ docker pull traefik@sha256:031b9f43e22083f82df947311ecf63c46a80b58308387dae8139fd69bb746e93
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 MB (19123913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8953801567ee89e3f92372f6a72f4e828ecd29689a6eb15684281813c8bacaf`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 07 Sep 2018 19:05:07 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Thu, 04 Oct 2018 18:23:33 GMT
COPY file:cd6535f7fd8622a0a277c83141ba62ca771a4540f8eaa4a9aeac82de3d487910 in / 
# Thu, 04 Oct 2018 18:23:33 GMT
EXPOSE 80/tcp
# Thu, 04 Oct 2018 18:23:33 GMT
ENTRYPOINT ["/traefik"]
# Thu, 04 Oct 2018 18:23:34 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:c6e5aced14a22b72f0fd545bec131cc37ac8382fae12614369232b12bf5cc1bf`  
		Last Modified: Fri, 07 Sep 2018 19:06:05 GMT  
		Size: 135.0 KB (135037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:305b857005b5464a3b0aa77dfb73364d297b92c3b58df9731b2744ac0470c74e`  
		Last Modified: Thu, 04 Oct 2018 18:24:16 GMT  
		Size: 19.0 MB (18988876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7.2` - linux; arm variant v6

```console
$ docker pull traefik@sha256:f8fa0dfb26f554349d0d4e34e506c5c455bd85ddd0a6da557b355df4ba63d579
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.0 MB (17978578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7a3ea8a3de0ae551d3845fe3ea5691f7fe160a9d2550f836f430fd15bf0557e`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 21 Aug 2018 08:15:56 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Fri, 05 Oct 2018 07:56:12 GMT
COPY file:def8de189561acc18cb94900302a80f3fe09a78365de43c62cf3d031fbb124ad in / 
# Fri, 05 Oct 2018 07:56:13 GMT
EXPOSE 80/tcp
# Fri, 05 Oct 2018 07:56:13 GMT
ENTRYPOINT ["/traefik"]
# Fri, 05 Oct 2018 07:56:13 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:9dac48e51b2381c7f7a8cbe16e8670b5d4bfcbd991c139ad10d2e46f233def67`  
		Last Modified: Tue, 21 Aug 2018 08:16:23 GMT  
		Size: 135.1 KB (135078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64789d8f2b8f916b049c3b47d6efcd7a53da82b4a9f875f7fb592fd3d7686d6f`  
		Last Modified: Fri, 05 Oct 2018 07:56:45 GMT  
		Size: 17.8 MB (17843500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7.2-alpine`

```console
$ docker pull traefik@sha256:8fb8e7fe803d285c2ba65e54d380cf0be4ce1688e0658361c31500e853403501
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:v1.7.2-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:6115155b261707b642341b065cd3fac2b546559ba035d0262650b3b3bbdd10ea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.5 MB (21505166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:add5fac61ae5d0d0a51dadc4d545d195801bc0f39c78c1c939008e577881db75`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 03:37:55 GMT
RUN apk --no-cache add ca-certificates
# Thu, 04 Oct 2018 18:23:45 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.2/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Thu, 04 Oct 2018 18:23:46 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Thu, 04 Oct 2018 18:23:46 GMT
EXPOSE 80/tcp
# Thu, 04 Oct 2018 18:23:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 04 Oct 2018 18:23:52 GMT
CMD ["traefik"]
# Thu, 04 Oct 2018 18:23:53 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.2 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:5d09ab10efbd183824a61fb0c8567fb4488c5beac36dd5735dc07ec29321b1cb`  
		Last Modified: Thu, 04 Oct 2018 18:25:35 GMT  
		Size: 19.0 MB (18988931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37b796c58adcf2e3c8a81afb304268f1e520d3a65258623100157612a9cd46ad`  
		Last Modified: Thu, 04 Oct 2018 18:25:30 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7.2-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:c08150a232b1dd9f510bec1d88f28b192df23b221d156526932268a5e4b6eb3a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.3 MB (20299632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a843a903ac21e606ca0eee08a243a1e1523ba5c7a983c4b7eae7f9e11c5c1388`
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
# Fri, 05 Oct 2018 07:56:27 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.2/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Fri, 05 Oct 2018 07:56:27 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Fri, 05 Oct 2018 07:56:28 GMT
EXPOSE 80/tcp
# Fri, 05 Oct 2018 07:56:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 05 Oct 2018 07:56:28 GMT
CMD ["traefik"]
# Fri, 05 Oct 2018 07:56:28 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.2 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:15d49e2bad7a3e4a8eaa1514f7e513b88d1128acbbe62b0dff519e73c09fc0f9`  
		Last Modified: Fri, 05 Oct 2018 07:57:21 GMT  
		Size: 17.8 MB (17843615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ef286bd8e19ab03a407d4ee1342f76644337fe94328f21f35834860cc04dd14`  
		Last Modified: Fri, 05 Oct 2018 07:57:15 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7.2-nanoserver`

**does not exist** (yet?)

## `traefik:v1.7.2-nanoserver-sac2016`

**does not exist** (yet?)

## `traefik:v1.7-alpine`

```console
$ docker pull traefik@sha256:8fb8e7fe803d285c2ba65e54d380cf0be4ce1688e0658361c31500e853403501
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:v1.7-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:6115155b261707b642341b065cd3fac2b546559ba035d0262650b3b3bbdd10ea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.5 MB (21505166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:add5fac61ae5d0d0a51dadc4d545d195801bc0f39c78c1c939008e577881db75`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 03:37:55 GMT
RUN apk --no-cache add ca-certificates
# Thu, 04 Oct 2018 18:23:45 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.2/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Thu, 04 Oct 2018 18:23:46 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Thu, 04 Oct 2018 18:23:46 GMT
EXPOSE 80/tcp
# Thu, 04 Oct 2018 18:23:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 04 Oct 2018 18:23:52 GMT
CMD ["traefik"]
# Thu, 04 Oct 2018 18:23:53 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.2 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:5d09ab10efbd183824a61fb0c8567fb4488c5beac36dd5735dc07ec29321b1cb`  
		Last Modified: Thu, 04 Oct 2018 18:25:35 GMT  
		Size: 19.0 MB (18988931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37b796c58adcf2e3c8a81afb304268f1e520d3a65258623100157612a9cd46ad`  
		Last Modified: Thu, 04 Oct 2018 18:25:30 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:c08150a232b1dd9f510bec1d88f28b192df23b221d156526932268a5e4b6eb3a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.3 MB (20299632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a843a903ac21e606ca0eee08a243a1e1523ba5c7a983c4b7eae7f9e11c5c1388`
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
# Fri, 05 Oct 2018 07:56:27 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.2/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Fri, 05 Oct 2018 07:56:27 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Fri, 05 Oct 2018 07:56:28 GMT
EXPOSE 80/tcp
# Fri, 05 Oct 2018 07:56:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 05 Oct 2018 07:56:28 GMT
CMD ["traefik"]
# Fri, 05 Oct 2018 07:56:28 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.2 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:15d49e2bad7a3e4a8eaa1514f7e513b88d1128acbbe62b0dff519e73c09fc0f9`  
		Last Modified: Fri, 05 Oct 2018 07:57:21 GMT  
		Size: 17.8 MB (17843615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ef286bd8e19ab03a407d4ee1342f76644337fe94328f21f35834860cc04dd14`  
		Last Modified: Fri, 05 Oct 2018 07:57:15 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7-nanoserver`

```console
$ docker pull traefik@sha256:f292708df1aaa25d882e383b5ddebe5b1755bec7eadc605a7e0d66cf7ce1e3bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2485; amd64

### `traefik:v1.7-nanoserver` - windows version 10.0.14393.2485; amd64

```console
$ docker pull traefik@sha256:085d447b30ee77254df872902889cf651b07408a8af5e343084d7867e8be7f75
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.2 MB (452234544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a9dfbf7f5d1c4c00428e89dc0e08c66bb05e3d05b3076b8af5a11921f43b2d8`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 11 Sep 2018 16:53:25 GMT
RUN Install update 10.0.14393.2485
# Tue, 02 Oct 2018 09:15:54 GMT
RUN cmd /S /C #(nop) COPY file:1915325a14783c34932aaf2fbe9ff8219bcd8ebb5b15986082ff6949742a0724 in \traefik.exe 
# Tue, 02 Oct 2018 09:15:57 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Tue, 02 Oct 2018 09:15:58 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 02 Oct 2018 09:15:59 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Mon, 17 Sep 2018 20:04:15 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b1b0c61be11f6d053756595f70211e6044137b150fc1cc23d52ee0852eaf9146`  
		Last Modified: Tue, 11 Sep 2018 16:53:25 GMT  
		Size: 180.5 MB (180533966 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0ed41c06570459d8cdeaa4041c99c14b42f7d4ce28afe8d826372d5d39d1ed3f`  
		Last Modified: Tue, 02 Oct 2018 09:16:19 GMT  
		Size: 19.0 MB (19006739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d4f8e77aa340bc4d9271ef28c529d822decffd2a8a5d7955a16764b75ac9bc`  
		Last Modified: Tue, 02 Oct 2018 09:16:13 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da7994d798c07650e5bc401ddfd0565d6428573f839f798a4e851754b565339e`  
		Last Modified: Tue, 02 Oct 2018 09:16:14 GMT  
		Size: 943.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f92a7926b8df569ac0f2e630b0f44e9f62a00496ddb7af93b2b5e046212d563`  
		Last Modified: Tue, 02 Oct 2018 09:16:13 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:f292708df1aaa25d882e383b5ddebe5b1755bec7eadc605a7e0d66cf7ce1e3bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2485; amd64

### `traefik:v1.7-nanoserver-sac2016` - windows version 10.0.14393.2485; amd64

```console
$ docker pull traefik@sha256:085d447b30ee77254df872902889cf651b07408a8af5e343084d7867e8be7f75
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.2 MB (452234544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a9dfbf7f5d1c4c00428e89dc0e08c66bb05e3d05b3076b8af5a11921f43b2d8`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 11 Sep 2018 16:53:25 GMT
RUN Install update 10.0.14393.2485
# Tue, 02 Oct 2018 09:15:54 GMT
RUN cmd /S /C #(nop) COPY file:1915325a14783c34932aaf2fbe9ff8219bcd8ebb5b15986082ff6949742a0724 in \traefik.exe 
# Tue, 02 Oct 2018 09:15:57 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Tue, 02 Oct 2018 09:15:58 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 02 Oct 2018 09:15:59 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Mon, 17 Sep 2018 20:04:15 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b1b0c61be11f6d053756595f70211e6044137b150fc1cc23d52ee0852eaf9146`  
		Last Modified: Tue, 11 Sep 2018 16:53:25 GMT  
		Size: 180.5 MB (180533966 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0ed41c06570459d8cdeaa4041c99c14b42f7d4ce28afe8d826372d5d39d1ed3f`  
		Last Modified: Tue, 02 Oct 2018 09:16:19 GMT  
		Size: 19.0 MB (19006739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d4f8e77aa340bc4d9271ef28c529d822decffd2a8a5d7955a16764b75ac9bc`  
		Last Modified: Tue, 02 Oct 2018 09:16:13 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da7994d798c07650e5bc401ddfd0565d6428573f839f798a4e851754b565339e`  
		Last Modified: Tue, 02 Oct 2018 09:16:14 GMT  
		Size: 943.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f92a7926b8df569ac0f2e630b0f44e9f62a00496ddb7af93b2b5e046212d563`  
		Last Modified: Tue, 02 Oct 2018 09:16:13 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
