<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `traefik`

-	[`traefik:1.7`](#traefik17)
-	[`traefik:1.7.6`](#traefik176)
-	[`traefik:1.7.6-alpine`](#traefik176-alpine)
-	[`traefik:1.7.6-nanoserver`](#traefik176-nanoserver)
-	[`traefik:1.7.6-nanoserver-sac2016`](#traefik176-nanoserver-sac2016)
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
-	[`traefik:v1.7.6`](#traefikv176)
-	[`traefik:v1.7.6-alpine`](#traefikv176-alpine)
-	[`traefik:v1.7.6-nanoserver`](#traefikv176-nanoserver)
-	[`traefik:v1.7.6-nanoserver-sac2016`](#traefikv176-nanoserver-sac2016)
-	[`traefik:v1.7-alpine`](#traefikv17-alpine)
-	[`traefik:v1.7-nanoserver`](#traefikv17-nanoserver)
-	[`traefik:v1.7-nanoserver-sac2016`](#traefikv17-nanoserver-sac2016)

## `traefik:1.7`

```console
$ docker pull traefik@sha256:a9512e9e1d2c0eda3a971926f50e97467fbeecfe07eeeedc4224af4ee5329a4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.7` - linux; amd64

```console
$ docker pull traefik@sha256:efedc4f8419177f5fedc410df2d330795dd1bd140e9c4c8050c897dbee0d3035
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.7 MB (19666751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0a0d72714037f9cf7b958d9e0778693c45b1cc6b0e3c87b69ad2603809027a7`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 14 Dec 2018 18:21:56 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Fri, 14 Dec 2018 18:21:56 GMT
COPY file:4a8df4a19b37dce5a17b4f169910f5dfd9a1bca381e5831a48a0a4742c5b7d6f in / 
# Fri, 14 Dec 2018 18:21:57 GMT
EXPOSE 80
# Fri, 14 Dec 2018 18:21:57 GMT
VOLUME [/tmp]
# Fri, 14 Dec 2018 18:21:57 GMT
ENTRYPOINT ["/traefik"]
# Fri, 14 Dec 2018 18:21:57 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:7a433ecdf92bfc5080060a97efa862edf0deca55fcfa76a6a01b911c431695fd`  
		Last Modified: Fri, 14 Dec 2018 18:22:18 GMT  
		Size: 135.0 KB (135043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fbbd8a41c7fdace4ae19b8bca8a5e98a70b551c8973d0c57ef7c8389f03c0e9`  
		Last Modified: Fri, 14 Dec 2018 18:22:23 GMT  
		Size: 19.5 MB (19531708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7` - linux; arm variant v6

```console
$ docker pull traefik@sha256:f1210218496ff8a5475b723f4ceff810a2366da36ff309c49c9a7f78efd4fa34
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.5 MB (18471740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4779e9c9c1d9455d8d79c3056c6342a48ed1422d37f1ced84823ee3d221cb44c`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 15 Dec 2018 08:49:55 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Sat, 15 Dec 2018 08:49:56 GMT
COPY file:9185d8f3941eead638fba040a9e3ea7e7b70b93c62dc0a41b4541fcc5053804c in / 
# Sat, 15 Dec 2018 08:49:57 GMT
EXPOSE 80
# Sat, 15 Dec 2018 08:49:57 GMT
VOLUME [/tmp]
# Sat, 15 Dec 2018 08:49:58 GMT
ENTRYPOINT ["/traefik"]
# Sat, 15 Dec 2018 08:49:58 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5527833b12791749e5c8242af5e3795dc1e6b2fe58811c452979252cf978fce9`  
		Last Modified: Sat, 15 Dec 2018 08:50:23 GMT  
		Size: 135.0 KB (135038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8881fd196757b28dad27a5c6257832d5470eae25b194a61ddd5ef6edb1a71b3f`  
		Last Modified: Sat, 15 Dec 2018 08:50:30 GMT  
		Size: 18.3 MB (18336702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:69d9d0c99e4805db068be5e560ab72b0e4a70571c54e62cde0f6b1320468fa84
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.0 MB (18027429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:988011f49bae60635adcc34aee6e9cbfff8b9369c942d5e9482d91718631eb76`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 18 Dec 2018 10:37:13 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Tue, 18 Dec 2018 10:37:16 GMT
COPY file:d3135af1d593eef42dba574bcf6e4d9995903f88e4b89c1ba92c26f09393e9cf in / 
# Tue, 18 Dec 2018 10:37:17 GMT
EXPOSE 80
# Tue, 18 Dec 2018 10:37:17 GMT
VOLUME [/tmp]
# Tue, 18 Dec 2018 10:37:18 GMT
ENTRYPOINT ["/traefik"]
# Tue, 18 Dec 2018 10:37:19 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:93231411b7777ed5066dad65f929b35b680bfac1ea1fc2ff0c9fb935cc83d75a`  
		Last Modified: Tue, 18 Dec 2018 10:37:58 GMT  
		Size: 135.0 KB (135036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a85314a8764d5cd30b286d7ef7a7c0066bc00689890fc3bf231a946265f1dd6d`  
		Last Modified: Tue, 18 Dec 2018 10:38:06 GMT  
		Size: 17.9 MB (17892393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7.6`

```console
$ docker pull traefik@sha256:a9512e9e1d2c0eda3a971926f50e97467fbeecfe07eeeedc4224af4ee5329a4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.7.6` - linux; amd64

```console
$ docker pull traefik@sha256:efedc4f8419177f5fedc410df2d330795dd1bd140e9c4c8050c897dbee0d3035
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.7 MB (19666751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0a0d72714037f9cf7b958d9e0778693c45b1cc6b0e3c87b69ad2603809027a7`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 14 Dec 2018 18:21:56 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Fri, 14 Dec 2018 18:21:56 GMT
COPY file:4a8df4a19b37dce5a17b4f169910f5dfd9a1bca381e5831a48a0a4742c5b7d6f in / 
# Fri, 14 Dec 2018 18:21:57 GMT
EXPOSE 80
# Fri, 14 Dec 2018 18:21:57 GMT
VOLUME [/tmp]
# Fri, 14 Dec 2018 18:21:57 GMT
ENTRYPOINT ["/traefik"]
# Fri, 14 Dec 2018 18:21:57 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:7a433ecdf92bfc5080060a97efa862edf0deca55fcfa76a6a01b911c431695fd`  
		Last Modified: Fri, 14 Dec 2018 18:22:18 GMT  
		Size: 135.0 KB (135043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fbbd8a41c7fdace4ae19b8bca8a5e98a70b551c8973d0c57ef7c8389f03c0e9`  
		Last Modified: Fri, 14 Dec 2018 18:22:23 GMT  
		Size: 19.5 MB (19531708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7.6` - linux; arm variant v6

```console
$ docker pull traefik@sha256:f1210218496ff8a5475b723f4ceff810a2366da36ff309c49c9a7f78efd4fa34
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.5 MB (18471740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4779e9c9c1d9455d8d79c3056c6342a48ed1422d37f1ced84823ee3d221cb44c`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 15 Dec 2018 08:49:55 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Sat, 15 Dec 2018 08:49:56 GMT
COPY file:9185d8f3941eead638fba040a9e3ea7e7b70b93c62dc0a41b4541fcc5053804c in / 
# Sat, 15 Dec 2018 08:49:57 GMT
EXPOSE 80
# Sat, 15 Dec 2018 08:49:57 GMT
VOLUME [/tmp]
# Sat, 15 Dec 2018 08:49:58 GMT
ENTRYPOINT ["/traefik"]
# Sat, 15 Dec 2018 08:49:58 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5527833b12791749e5c8242af5e3795dc1e6b2fe58811c452979252cf978fce9`  
		Last Modified: Sat, 15 Dec 2018 08:50:23 GMT  
		Size: 135.0 KB (135038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8881fd196757b28dad27a5c6257832d5470eae25b194a61ddd5ef6edb1a71b3f`  
		Last Modified: Sat, 15 Dec 2018 08:50:30 GMT  
		Size: 18.3 MB (18336702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7.6` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:69d9d0c99e4805db068be5e560ab72b0e4a70571c54e62cde0f6b1320468fa84
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.0 MB (18027429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:988011f49bae60635adcc34aee6e9cbfff8b9369c942d5e9482d91718631eb76`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 18 Dec 2018 10:37:13 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Tue, 18 Dec 2018 10:37:16 GMT
COPY file:d3135af1d593eef42dba574bcf6e4d9995903f88e4b89c1ba92c26f09393e9cf in / 
# Tue, 18 Dec 2018 10:37:17 GMT
EXPOSE 80
# Tue, 18 Dec 2018 10:37:17 GMT
VOLUME [/tmp]
# Tue, 18 Dec 2018 10:37:18 GMT
ENTRYPOINT ["/traefik"]
# Tue, 18 Dec 2018 10:37:19 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:93231411b7777ed5066dad65f929b35b680bfac1ea1fc2ff0c9fb935cc83d75a`  
		Last Modified: Tue, 18 Dec 2018 10:37:58 GMT  
		Size: 135.0 KB (135036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a85314a8764d5cd30b286d7ef7a7c0066bc00689890fc3bf231a946265f1dd6d`  
		Last Modified: Tue, 18 Dec 2018 10:38:06 GMT  
		Size: 17.9 MB (17892393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7.6-alpine`

```console
$ docker pull traefik@sha256:4ef3e69079e5f6a982a83811751f643a0650e1a4f71ccc2bab6bb1f5170e7e33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.7.6-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:701b71c4467a5791a68ac569b178be95ac8e2ac1d12850bbccf545da33d8e012
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.0 MB (22047931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f296796f038d615fa323bcee22357938321488c22aad9496d45eb36da2df70d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 03:37:55 GMT
RUN apk --no-cache add ca-certificates
# Fri, 14 Dec 2018 18:22:05 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Fri, 14 Dec 2018 18:22:05 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Fri, 14 Dec 2018 18:22:05 GMT
EXPOSE 80
# Fri, 14 Dec 2018 18:22:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 14 Dec 2018 18:22:06 GMT
CMD ["traefik"]
# Fri, 14 Dec 2018 18:22:06 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:b0a1be82f8cc135d2c9a3d9c9611618e7b89a4503548e28d822c9acb9a8af5d4`  
		Last Modified: Fri, 14 Dec 2018 18:22:34 GMT  
		Size: 19.5 MB (19531698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9482593d974d5f78fa37fe908768d495693671a0913ca34f7631c65097142f3`  
		Last Modified: Fri, 14 Dec 2018 18:22:29 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7.6-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:99b73bff00e816a9ba289e79b3fbc55899a52a4f0b2248d13ccf6defdd49e31c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 MB (20792832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a89f0d360c7d18b078a9a57112a2964afff4e8019dac36f0de85d883e10de69c`
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
# Sat, 15 Dec 2018 08:50:08 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Sat, 15 Dec 2018 08:50:09 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Sat, 15 Dec 2018 08:50:09 GMT
EXPOSE 80
# Sat, 15 Dec 2018 08:50:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 15 Dec 2018 08:50:10 GMT
CMD ["traefik"]
# Sat, 15 Dec 2018 08:50:10 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:bef842f0e3c92ae9a84c199ceb6fc77b92f27133360c311cd575537bc7d148f2`  
		Last Modified: Sat, 15 Dec 2018 08:50:47 GMT  
		Size: 18.3 MB (18336815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20183a4e1446312c844b1c6b2f775e0e62bf141f236f627f1c3f1f40967e3a25`  
		Last Modified: Sat, 15 Dec 2018 08:50:40 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7.6-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:70990d0e66eaba1d970e740a3d58cba59e6842c0dcea95a666d654303fb24a64
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.3 MB (20301319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4aaca77971bc00ed3e9a16f243103bc9cf0c3c0c02677e8fc58a8dddfecef07d`
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
# Tue, 18 Dec 2018 10:37:39 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 18 Dec 2018 10:37:39 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Tue, 18 Dec 2018 10:37:40 GMT
EXPOSE 80
# Tue, 18 Dec 2018 10:37:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Dec 2018 10:37:41 GMT
CMD ["traefik"]
# Tue, 18 Dec 2018 10:37:42 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:02971c76063c5060951e838efa67035208583ba50b71afe399e5dcc0bf770465`  
		Last Modified: Tue, 18 Dec 2018 10:38:29 GMT  
		Size: 17.9 MB (17892529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f47cc955e2bc939bce6173ee99e1e6cceae6122bc4f08553a7265ef225f6150`  
		Last Modified: Tue, 18 Dec 2018 10:38:21 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7.6-nanoserver`

```console
$ docker pull traefik@sha256:dab3b3af8657f1f821b2e8947b6799a4bfeff83046e2ea01af30b847d59abdf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:1.7.6-nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:23ade1379d4633b4217492d2ac9cc2ef9ea6276c814837398f03e7198195267c
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **454.9 MB (454949415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:316ca53666594442d6e749fa5e6a995229f74c747622ca376f6a3362c1aefc38`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Sat, 15 Dec 2018 10:17:00 GMT
RUN cmd /S /C #(nop) COPY file:85f0cb8152d40607f362217669e9dac76cec4e13e2c349137c39c6e852dc1d09 in \traefik.exe 
# Sat, 15 Dec 2018 10:17:03 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Sat, 15 Dec 2018 10:17:05 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Sat, 15 Dec 2018 10:17:06 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Mon, 17 Sep 2018 20:04:15 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6f2071dcd7294537bba55b3061704ef1370748e91982193b9e0fa4ebc114589b`  
		Last Modified: Tue, 09 Oct 2018 18:02:39 GMT  
		Size: 182.7 MB (182705816 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:82a10a190e0bb25fd837a56e66417602281fbed332a6dcea96cd1db236018db7`  
		Last Modified: Sat, 15 Dec 2018 10:17:30 GMT  
		Size: 19.5 MB (19549736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93d7601634949f2aaa833a6e4231cf0bd8facdab6fc7d04744bc629ef4252d54`  
		Last Modified: Sat, 15 Dec 2018 10:17:23 GMT  
		Size: 956.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed5586dfb26d0277802e1929cf3148676aab39f614c928783f1a4637e3e444bb`  
		Last Modified: Sat, 15 Dec 2018 10:17:23 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9638f01bcff9ff570676885279c4738e8f86640adc6917464bc13e240489c745`  
		Last Modified: Sat, 15 Dec 2018 10:17:23 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7.6-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:dab3b3af8657f1f821b2e8947b6799a4bfeff83046e2ea01af30b847d59abdf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:1.7.6-nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:23ade1379d4633b4217492d2ac9cc2ef9ea6276c814837398f03e7198195267c
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **454.9 MB (454949415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:316ca53666594442d6e749fa5e6a995229f74c747622ca376f6a3362c1aefc38`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Sat, 15 Dec 2018 10:17:00 GMT
RUN cmd /S /C #(nop) COPY file:85f0cb8152d40607f362217669e9dac76cec4e13e2c349137c39c6e852dc1d09 in \traefik.exe 
# Sat, 15 Dec 2018 10:17:03 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Sat, 15 Dec 2018 10:17:05 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Sat, 15 Dec 2018 10:17:06 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Mon, 17 Sep 2018 20:04:15 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6f2071dcd7294537bba55b3061704ef1370748e91982193b9e0fa4ebc114589b`  
		Last Modified: Tue, 09 Oct 2018 18:02:39 GMT  
		Size: 182.7 MB (182705816 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:82a10a190e0bb25fd837a56e66417602281fbed332a6dcea96cd1db236018db7`  
		Last Modified: Sat, 15 Dec 2018 10:17:30 GMT  
		Size: 19.5 MB (19549736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93d7601634949f2aaa833a6e4231cf0bd8facdab6fc7d04744bc629ef4252d54`  
		Last Modified: Sat, 15 Dec 2018 10:17:23 GMT  
		Size: 956.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed5586dfb26d0277802e1929cf3148676aab39f614c928783f1a4637e3e444bb`  
		Last Modified: Sat, 15 Dec 2018 10:17:23 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9638f01bcff9ff570676885279c4738e8f86640adc6917464bc13e240489c745`  
		Last Modified: Sat, 15 Dec 2018 10:17:23 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7-alpine`

```console
$ docker pull traefik@sha256:4ef3e69079e5f6a982a83811751f643a0650e1a4f71ccc2bab6bb1f5170e7e33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.7-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:701b71c4467a5791a68ac569b178be95ac8e2ac1d12850bbccf545da33d8e012
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.0 MB (22047931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f296796f038d615fa323bcee22357938321488c22aad9496d45eb36da2df70d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 03:37:55 GMT
RUN apk --no-cache add ca-certificates
# Fri, 14 Dec 2018 18:22:05 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Fri, 14 Dec 2018 18:22:05 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Fri, 14 Dec 2018 18:22:05 GMT
EXPOSE 80
# Fri, 14 Dec 2018 18:22:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 14 Dec 2018 18:22:06 GMT
CMD ["traefik"]
# Fri, 14 Dec 2018 18:22:06 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:b0a1be82f8cc135d2c9a3d9c9611618e7b89a4503548e28d822c9acb9a8af5d4`  
		Last Modified: Fri, 14 Dec 2018 18:22:34 GMT  
		Size: 19.5 MB (19531698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9482593d974d5f78fa37fe908768d495693671a0913ca34f7631c65097142f3`  
		Last Modified: Fri, 14 Dec 2018 18:22:29 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:99b73bff00e816a9ba289e79b3fbc55899a52a4f0b2248d13ccf6defdd49e31c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 MB (20792832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a89f0d360c7d18b078a9a57112a2964afff4e8019dac36f0de85d883e10de69c`
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
# Sat, 15 Dec 2018 08:50:08 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Sat, 15 Dec 2018 08:50:09 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Sat, 15 Dec 2018 08:50:09 GMT
EXPOSE 80
# Sat, 15 Dec 2018 08:50:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 15 Dec 2018 08:50:10 GMT
CMD ["traefik"]
# Sat, 15 Dec 2018 08:50:10 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:bef842f0e3c92ae9a84c199ceb6fc77b92f27133360c311cd575537bc7d148f2`  
		Last Modified: Sat, 15 Dec 2018 08:50:47 GMT  
		Size: 18.3 MB (18336815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20183a4e1446312c844b1c6b2f775e0e62bf141f236f627f1c3f1f40967e3a25`  
		Last Modified: Sat, 15 Dec 2018 08:50:40 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:70990d0e66eaba1d970e740a3d58cba59e6842c0dcea95a666d654303fb24a64
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.3 MB (20301319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4aaca77971bc00ed3e9a16f243103bc9cf0c3c0c02677e8fc58a8dddfecef07d`
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
# Tue, 18 Dec 2018 10:37:39 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 18 Dec 2018 10:37:39 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Tue, 18 Dec 2018 10:37:40 GMT
EXPOSE 80
# Tue, 18 Dec 2018 10:37:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Dec 2018 10:37:41 GMT
CMD ["traefik"]
# Tue, 18 Dec 2018 10:37:42 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:02971c76063c5060951e838efa67035208583ba50b71afe399e5dcc0bf770465`  
		Last Modified: Tue, 18 Dec 2018 10:38:29 GMT  
		Size: 17.9 MB (17892529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f47cc955e2bc939bce6173ee99e1e6cceae6122bc4f08553a7265ef225f6150`  
		Last Modified: Tue, 18 Dec 2018 10:38:21 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7-nanoserver`

```console
$ docker pull traefik@sha256:dab3b3af8657f1f821b2e8947b6799a4bfeff83046e2ea01af30b847d59abdf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:1.7-nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:23ade1379d4633b4217492d2ac9cc2ef9ea6276c814837398f03e7198195267c
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **454.9 MB (454949415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:316ca53666594442d6e749fa5e6a995229f74c747622ca376f6a3362c1aefc38`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Sat, 15 Dec 2018 10:17:00 GMT
RUN cmd /S /C #(nop) COPY file:85f0cb8152d40607f362217669e9dac76cec4e13e2c349137c39c6e852dc1d09 in \traefik.exe 
# Sat, 15 Dec 2018 10:17:03 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Sat, 15 Dec 2018 10:17:05 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Sat, 15 Dec 2018 10:17:06 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Mon, 17 Sep 2018 20:04:15 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6f2071dcd7294537bba55b3061704ef1370748e91982193b9e0fa4ebc114589b`  
		Last Modified: Tue, 09 Oct 2018 18:02:39 GMT  
		Size: 182.7 MB (182705816 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:82a10a190e0bb25fd837a56e66417602281fbed332a6dcea96cd1db236018db7`  
		Last Modified: Sat, 15 Dec 2018 10:17:30 GMT  
		Size: 19.5 MB (19549736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93d7601634949f2aaa833a6e4231cf0bd8facdab6fc7d04744bc629ef4252d54`  
		Last Modified: Sat, 15 Dec 2018 10:17:23 GMT  
		Size: 956.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed5586dfb26d0277802e1929cf3148676aab39f614c928783f1a4637e3e444bb`  
		Last Modified: Sat, 15 Dec 2018 10:17:23 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9638f01bcff9ff570676885279c4738e8f86640adc6917464bc13e240489c745`  
		Last Modified: Sat, 15 Dec 2018 10:17:23 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:dab3b3af8657f1f821b2e8947b6799a4bfeff83046e2ea01af30b847d59abdf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:1.7-nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:23ade1379d4633b4217492d2ac9cc2ef9ea6276c814837398f03e7198195267c
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **454.9 MB (454949415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:316ca53666594442d6e749fa5e6a995229f74c747622ca376f6a3362c1aefc38`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Sat, 15 Dec 2018 10:17:00 GMT
RUN cmd /S /C #(nop) COPY file:85f0cb8152d40607f362217669e9dac76cec4e13e2c349137c39c6e852dc1d09 in \traefik.exe 
# Sat, 15 Dec 2018 10:17:03 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Sat, 15 Dec 2018 10:17:05 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Sat, 15 Dec 2018 10:17:06 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Mon, 17 Sep 2018 20:04:15 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6f2071dcd7294537bba55b3061704ef1370748e91982193b9e0fa4ebc114589b`  
		Last Modified: Tue, 09 Oct 2018 18:02:39 GMT  
		Size: 182.7 MB (182705816 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:82a10a190e0bb25fd837a56e66417602281fbed332a6dcea96cd1db236018db7`  
		Last Modified: Sat, 15 Dec 2018 10:17:30 GMT  
		Size: 19.5 MB (19549736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93d7601634949f2aaa833a6e4231cf0bd8facdab6fc7d04744bc629ef4252d54`  
		Last Modified: Sat, 15 Dec 2018 10:17:23 GMT  
		Size: 956.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed5586dfb26d0277802e1929cf3148676aab39f614c928783f1a4637e3e444bb`  
		Last Modified: Sat, 15 Dec 2018 10:17:23 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9638f01bcff9ff570676885279c4738e8f86640adc6917464bc13e240489c745`  
		Last Modified: Sat, 15 Dec 2018 10:17:23 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:alpine`

```console
$ docker pull traefik@sha256:4ef3e69079e5f6a982a83811751f643a0650e1a4f71ccc2bab6bb1f5170e7e33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:alpine` - linux; amd64

```console
$ docker pull traefik@sha256:701b71c4467a5791a68ac569b178be95ac8e2ac1d12850bbccf545da33d8e012
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.0 MB (22047931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f296796f038d615fa323bcee22357938321488c22aad9496d45eb36da2df70d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 03:37:55 GMT
RUN apk --no-cache add ca-certificates
# Fri, 14 Dec 2018 18:22:05 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Fri, 14 Dec 2018 18:22:05 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Fri, 14 Dec 2018 18:22:05 GMT
EXPOSE 80
# Fri, 14 Dec 2018 18:22:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 14 Dec 2018 18:22:06 GMT
CMD ["traefik"]
# Fri, 14 Dec 2018 18:22:06 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:b0a1be82f8cc135d2c9a3d9c9611618e7b89a4503548e28d822c9acb9a8af5d4`  
		Last Modified: Fri, 14 Dec 2018 18:22:34 GMT  
		Size: 19.5 MB (19531698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9482593d974d5f78fa37fe908768d495693671a0913ca34f7631c65097142f3`  
		Last Modified: Fri, 14 Dec 2018 18:22:29 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:99b73bff00e816a9ba289e79b3fbc55899a52a4f0b2248d13ccf6defdd49e31c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 MB (20792832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a89f0d360c7d18b078a9a57112a2964afff4e8019dac36f0de85d883e10de69c`
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
# Sat, 15 Dec 2018 08:50:08 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Sat, 15 Dec 2018 08:50:09 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Sat, 15 Dec 2018 08:50:09 GMT
EXPOSE 80
# Sat, 15 Dec 2018 08:50:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 15 Dec 2018 08:50:10 GMT
CMD ["traefik"]
# Sat, 15 Dec 2018 08:50:10 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:bef842f0e3c92ae9a84c199ceb6fc77b92f27133360c311cd575537bc7d148f2`  
		Last Modified: Sat, 15 Dec 2018 08:50:47 GMT  
		Size: 18.3 MB (18336815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20183a4e1446312c844b1c6b2f775e0e62bf141f236f627f1c3f1f40967e3a25`  
		Last Modified: Sat, 15 Dec 2018 08:50:40 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:70990d0e66eaba1d970e740a3d58cba59e6842c0dcea95a666d654303fb24a64
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.3 MB (20301319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4aaca77971bc00ed3e9a16f243103bc9cf0c3c0c02677e8fc58a8dddfecef07d`
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
# Tue, 18 Dec 2018 10:37:39 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 18 Dec 2018 10:37:39 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Tue, 18 Dec 2018 10:37:40 GMT
EXPOSE 80
# Tue, 18 Dec 2018 10:37:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Dec 2018 10:37:41 GMT
CMD ["traefik"]
# Tue, 18 Dec 2018 10:37:42 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:02971c76063c5060951e838efa67035208583ba50b71afe399e5dcc0bf770465`  
		Last Modified: Tue, 18 Dec 2018 10:38:29 GMT  
		Size: 17.9 MB (17892529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f47cc955e2bc939bce6173ee99e1e6cceae6122bc4f08553a7265ef225f6150`  
		Last Modified: Tue, 18 Dec 2018 10:38:21 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:latest`

```console
$ docker pull traefik@sha256:a9512e9e1d2c0eda3a971926f50e97467fbeecfe07eeeedc4224af4ee5329a4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:latest` - linux; amd64

```console
$ docker pull traefik@sha256:efedc4f8419177f5fedc410df2d330795dd1bd140e9c4c8050c897dbee0d3035
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.7 MB (19666751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0a0d72714037f9cf7b958d9e0778693c45b1cc6b0e3c87b69ad2603809027a7`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 14 Dec 2018 18:21:56 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Fri, 14 Dec 2018 18:21:56 GMT
COPY file:4a8df4a19b37dce5a17b4f169910f5dfd9a1bca381e5831a48a0a4742c5b7d6f in / 
# Fri, 14 Dec 2018 18:21:57 GMT
EXPOSE 80
# Fri, 14 Dec 2018 18:21:57 GMT
VOLUME [/tmp]
# Fri, 14 Dec 2018 18:21:57 GMT
ENTRYPOINT ["/traefik"]
# Fri, 14 Dec 2018 18:21:57 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:7a433ecdf92bfc5080060a97efa862edf0deca55fcfa76a6a01b911c431695fd`  
		Last Modified: Fri, 14 Dec 2018 18:22:18 GMT  
		Size: 135.0 KB (135043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fbbd8a41c7fdace4ae19b8bca8a5e98a70b551c8973d0c57ef7c8389f03c0e9`  
		Last Modified: Fri, 14 Dec 2018 18:22:23 GMT  
		Size: 19.5 MB (19531708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:latest` - linux; arm variant v6

```console
$ docker pull traefik@sha256:f1210218496ff8a5475b723f4ceff810a2366da36ff309c49c9a7f78efd4fa34
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.5 MB (18471740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4779e9c9c1d9455d8d79c3056c6342a48ed1422d37f1ced84823ee3d221cb44c`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 15 Dec 2018 08:49:55 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Sat, 15 Dec 2018 08:49:56 GMT
COPY file:9185d8f3941eead638fba040a9e3ea7e7b70b93c62dc0a41b4541fcc5053804c in / 
# Sat, 15 Dec 2018 08:49:57 GMT
EXPOSE 80
# Sat, 15 Dec 2018 08:49:57 GMT
VOLUME [/tmp]
# Sat, 15 Dec 2018 08:49:58 GMT
ENTRYPOINT ["/traefik"]
# Sat, 15 Dec 2018 08:49:58 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5527833b12791749e5c8242af5e3795dc1e6b2fe58811c452979252cf978fce9`  
		Last Modified: Sat, 15 Dec 2018 08:50:23 GMT  
		Size: 135.0 KB (135038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8881fd196757b28dad27a5c6257832d5470eae25b194a61ddd5ef6edb1a71b3f`  
		Last Modified: Sat, 15 Dec 2018 08:50:30 GMT  
		Size: 18.3 MB (18336702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:latest` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:69d9d0c99e4805db068be5e560ab72b0e4a70571c54e62cde0f6b1320468fa84
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.0 MB (18027429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:988011f49bae60635adcc34aee6e9cbfff8b9369c942d5e9482d91718631eb76`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 18 Dec 2018 10:37:13 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Tue, 18 Dec 2018 10:37:16 GMT
COPY file:d3135af1d593eef42dba574bcf6e4d9995903f88e4b89c1ba92c26f09393e9cf in / 
# Tue, 18 Dec 2018 10:37:17 GMT
EXPOSE 80
# Tue, 18 Dec 2018 10:37:17 GMT
VOLUME [/tmp]
# Tue, 18 Dec 2018 10:37:18 GMT
ENTRYPOINT ["/traefik"]
# Tue, 18 Dec 2018 10:37:19 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:93231411b7777ed5066dad65f929b35b680bfac1ea1fc2ff0c9fb935cc83d75a`  
		Last Modified: Tue, 18 Dec 2018 10:37:58 GMT  
		Size: 135.0 KB (135036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a85314a8764d5cd30b286d7ef7a7c0066bc00689890fc3bf231a946265f1dd6d`  
		Last Modified: Tue, 18 Dec 2018 10:38:06 GMT  
		Size: 17.9 MB (17892393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:maroilles`

```console
$ docker pull traefik@sha256:a9512e9e1d2c0eda3a971926f50e97467fbeecfe07eeeedc4224af4ee5329a4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:maroilles` - linux; amd64

```console
$ docker pull traefik@sha256:efedc4f8419177f5fedc410df2d330795dd1bd140e9c4c8050c897dbee0d3035
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.7 MB (19666751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0a0d72714037f9cf7b958d9e0778693c45b1cc6b0e3c87b69ad2603809027a7`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 14 Dec 2018 18:21:56 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Fri, 14 Dec 2018 18:21:56 GMT
COPY file:4a8df4a19b37dce5a17b4f169910f5dfd9a1bca381e5831a48a0a4742c5b7d6f in / 
# Fri, 14 Dec 2018 18:21:57 GMT
EXPOSE 80
# Fri, 14 Dec 2018 18:21:57 GMT
VOLUME [/tmp]
# Fri, 14 Dec 2018 18:21:57 GMT
ENTRYPOINT ["/traefik"]
# Fri, 14 Dec 2018 18:21:57 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:7a433ecdf92bfc5080060a97efa862edf0deca55fcfa76a6a01b911c431695fd`  
		Last Modified: Fri, 14 Dec 2018 18:22:18 GMT  
		Size: 135.0 KB (135043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fbbd8a41c7fdace4ae19b8bca8a5e98a70b551c8973d0c57ef7c8389f03c0e9`  
		Last Modified: Fri, 14 Dec 2018 18:22:23 GMT  
		Size: 19.5 MB (19531708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:maroilles` - linux; arm variant v6

```console
$ docker pull traefik@sha256:f1210218496ff8a5475b723f4ceff810a2366da36ff309c49c9a7f78efd4fa34
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.5 MB (18471740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4779e9c9c1d9455d8d79c3056c6342a48ed1422d37f1ced84823ee3d221cb44c`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 15 Dec 2018 08:49:55 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Sat, 15 Dec 2018 08:49:56 GMT
COPY file:9185d8f3941eead638fba040a9e3ea7e7b70b93c62dc0a41b4541fcc5053804c in / 
# Sat, 15 Dec 2018 08:49:57 GMT
EXPOSE 80
# Sat, 15 Dec 2018 08:49:57 GMT
VOLUME [/tmp]
# Sat, 15 Dec 2018 08:49:58 GMT
ENTRYPOINT ["/traefik"]
# Sat, 15 Dec 2018 08:49:58 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5527833b12791749e5c8242af5e3795dc1e6b2fe58811c452979252cf978fce9`  
		Last Modified: Sat, 15 Dec 2018 08:50:23 GMT  
		Size: 135.0 KB (135038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8881fd196757b28dad27a5c6257832d5470eae25b194a61ddd5ef6edb1a71b3f`  
		Last Modified: Sat, 15 Dec 2018 08:50:30 GMT  
		Size: 18.3 MB (18336702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:maroilles` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:69d9d0c99e4805db068be5e560ab72b0e4a70571c54e62cde0f6b1320468fa84
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.0 MB (18027429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:988011f49bae60635adcc34aee6e9cbfff8b9369c942d5e9482d91718631eb76`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 18 Dec 2018 10:37:13 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Tue, 18 Dec 2018 10:37:16 GMT
COPY file:d3135af1d593eef42dba574bcf6e4d9995903f88e4b89c1ba92c26f09393e9cf in / 
# Tue, 18 Dec 2018 10:37:17 GMT
EXPOSE 80
# Tue, 18 Dec 2018 10:37:17 GMT
VOLUME [/tmp]
# Tue, 18 Dec 2018 10:37:18 GMT
ENTRYPOINT ["/traefik"]
# Tue, 18 Dec 2018 10:37:19 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:93231411b7777ed5066dad65f929b35b680bfac1ea1fc2ff0c9fb935cc83d75a`  
		Last Modified: Tue, 18 Dec 2018 10:37:58 GMT  
		Size: 135.0 KB (135036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a85314a8764d5cd30b286d7ef7a7c0066bc00689890fc3bf231a946265f1dd6d`  
		Last Modified: Tue, 18 Dec 2018 10:38:06 GMT  
		Size: 17.9 MB (17892393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:maroilles-alpine`

```console
$ docker pull traefik@sha256:4ef3e69079e5f6a982a83811751f643a0650e1a4f71ccc2bab6bb1f5170e7e33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:maroilles-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:701b71c4467a5791a68ac569b178be95ac8e2ac1d12850bbccf545da33d8e012
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.0 MB (22047931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f296796f038d615fa323bcee22357938321488c22aad9496d45eb36da2df70d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 03:37:55 GMT
RUN apk --no-cache add ca-certificates
# Fri, 14 Dec 2018 18:22:05 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Fri, 14 Dec 2018 18:22:05 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Fri, 14 Dec 2018 18:22:05 GMT
EXPOSE 80
# Fri, 14 Dec 2018 18:22:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 14 Dec 2018 18:22:06 GMT
CMD ["traefik"]
# Fri, 14 Dec 2018 18:22:06 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:b0a1be82f8cc135d2c9a3d9c9611618e7b89a4503548e28d822c9acb9a8af5d4`  
		Last Modified: Fri, 14 Dec 2018 18:22:34 GMT  
		Size: 19.5 MB (19531698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9482593d974d5f78fa37fe908768d495693671a0913ca34f7631c65097142f3`  
		Last Modified: Fri, 14 Dec 2018 18:22:29 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:maroilles-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:99b73bff00e816a9ba289e79b3fbc55899a52a4f0b2248d13ccf6defdd49e31c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 MB (20792832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a89f0d360c7d18b078a9a57112a2964afff4e8019dac36f0de85d883e10de69c`
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
# Sat, 15 Dec 2018 08:50:08 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Sat, 15 Dec 2018 08:50:09 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Sat, 15 Dec 2018 08:50:09 GMT
EXPOSE 80
# Sat, 15 Dec 2018 08:50:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 15 Dec 2018 08:50:10 GMT
CMD ["traefik"]
# Sat, 15 Dec 2018 08:50:10 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:bef842f0e3c92ae9a84c199ceb6fc77b92f27133360c311cd575537bc7d148f2`  
		Last Modified: Sat, 15 Dec 2018 08:50:47 GMT  
		Size: 18.3 MB (18336815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20183a4e1446312c844b1c6b2f775e0e62bf141f236f627f1c3f1f40967e3a25`  
		Last Modified: Sat, 15 Dec 2018 08:50:40 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:maroilles-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:70990d0e66eaba1d970e740a3d58cba59e6842c0dcea95a666d654303fb24a64
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.3 MB (20301319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4aaca77971bc00ed3e9a16f243103bc9cf0c3c0c02677e8fc58a8dddfecef07d`
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
# Tue, 18 Dec 2018 10:37:39 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 18 Dec 2018 10:37:39 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Tue, 18 Dec 2018 10:37:40 GMT
EXPOSE 80
# Tue, 18 Dec 2018 10:37:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Dec 2018 10:37:41 GMT
CMD ["traefik"]
# Tue, 18 Dec 2018 10:37:42 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:02971c76063c5060951e838efa67035208583ba50b71afe399e5dcc0bf770465`  
		Last Modified: Tue, 18 Dec 2018 10:38:29 GMT  
		Size: 17.9 MB (17892529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f47cc955e2bc939bce6173ee99e1e6cceae6122bc4f08553a7265ef225f6150`  
		Last Modified: Tue, 18 Dec 2018 10:38:21 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:maroilles-nanoserver`

```console
$ docker pull traefik@sha256:dab3b3af8657f1f821b2e8947b6799a4bfeff83046e2ea01af30b847d59abdf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:maroilles-nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:23ade1379d4633b4217492d2ac9cc2ef9ea6276c814837398f03e7198195267c
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **454.9 MB (454949415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:316ca53666594442d6e749fa5e6a995229f74c747622ca376f6a3362c1aefc38`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Sat, 15 Dec 2018 10:17:00 GMT
RUN cmd /S /C #(nop) COPY file:85f0cb8152d40607f362217669e9dac76cec4e13e2c349137c39c6e852dc1d09 in \traefik.exe 
# Sat, 15 Dec 2018 10:17:03 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Sat, 15 Dec 2018 10:17:05 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Sat, 15 Dec 2018 10:17:06 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Mon, 17 Sep 2018 20:04:15 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6f2071dcd7294537bba55b3061704ef1370748e91982193b9e0fa4ebc114589b`  
		Last Modified: Tue, 09 Oct 2018 18:02:39 GMT  
		Size: 182.7 MB (182705816 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:82a10a190e0bb25fd837a56e66417602281fbed332a6dcea96cd1db236018db7`  
		Last Modified: Sat, 15 Dec 2018 10:17:30 GMT  
		Size: 19.5 MB (19549736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93d7601634949f2aaa833a6e4231cf0bd8facdab6fc7d04744bc629ef4252d54`  
		Last Modified: Sat, 15 Dec 2018 10:17:23 GMT  
		Size: 956.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed5586dfb26d0277802e1929cf3148676aab39f614c928783f1a4637e3e444bb`  
		Last Modified: Sat, 15 Dec 2018 10:17:23 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9638f01bcff9ff570676885279c4738e8f86640adc6917464bc13e240489c745`  
		Last Modified: Sat, 15 Dec 2018 10:17:23 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:maroilles-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:dab3b3af8657f1f821b2e8947b6799a4bfeff83046e2ea01af30b847d59abdf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:maroilles-nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:23ade1379d4633b4217492d2ac9cc2ef9ea6276c814837398f03e7198195267c
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **454.9 MB (454949415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:316ca53666594442d6e749fa5e6a995229f74c747622ca376f6a3362c1aefc38`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Sat, 15 Dec 2018 10:17:00 GMT
RUN cmd /S /C #(nop) COPY file:85f0cb8152d40607f362217669e9dac76cec4e13e2c349137c39c6e852dc1d09 in \traefik.exe 
# Sat, 15 Dec 2018 10:17:03 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Sat, 15 Dec 2018 10:17:05 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Sat, 15 Dec 2018 10:17:06 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Mon, 17 Sep 2018 20:04:15 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6f2071dcd7294537bba55b3061704ef1370748e91982193b9e0fa4ebc114589b`  
		Last Modified: Tue, 09 Oct 2018 18:02:39 GMT  
		Size: 182.7 MB (182705816 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:82a10a190e0bb25fd837a56e66417602281fbed332a6dcea96cd1db236018db7`  
		Last Modified: Sat, 15 Dec 2018 10:17:30 GMT  
		Size: 19.5 MB (19549736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93d7601634949f2aaa833a6e4231cf0bd8facdab6fc7d04744bc629ef4252d54`  
		Last Modified: Sat, 15 Dec 2018 10:17:23 GMT  
		Size: 956.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed5586dfb26d0277802e1929cf3148676aab39f614c928783f1a4637e3e444bb`  
		Last Modified: Sat, 15 Dec 2018 10:17:23 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9638f01bcff9ff570676885279c4738e8f86640adc6917464bc13e240489c745`  
		Last Modified: Sat, 15 Dec 2018 10:17:23 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:nanoserver`

```console
$ docker pull traefik@sha256:dab3b3af8657f1f821b2e8947b6799a4bfeff83046e2ea01af30b847d59abdf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:23ade1379d4633b4217492d2ac9cc2ef9ea6276c814837398f03e7198195267c
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **454.9 MB (454949415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:316ca53666594442d6e749fa5e6a995229f74c747622ca376f6a3362c1aefc38`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Sat, 15 Dec 2018 10:17:00 GMT
RUN cmd /S /C #(nop) COPY file:85f0cb8152d40607f362217669e9dac76cec4e13e2c349137c39c6e852dc1d09 in \traefik.exe 
# Sat, 15 Dec 2018 10:17:03 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Sat, 15 Dec 2018 10:17:05 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Sat, 15 Dec 2018 10:17:06 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Mon, 17 Sep 2018 20:04:15 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6f2071dcd7294537bba55b3061704ef1370748e91982193b9e0fa4ebc114589b`  
		Last Modified: Tue, 09 Oct 2018 18:02:39 GMT  
		Size: 182.7 MB (182705816 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:82a10a190e0bb25fd837a56e66417602281fbed332a6dcea96cd1db236018db7`  
		Last Modified: Sat, 15 Dec 2018 10:17:30 GMT  
		Size: 19.5 MB (19549736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93d7601634949f2aaa833a6e4231cf0bd8facdab6fc7d04744bc629ef4252d54`  
		Last Modified: Sat, 15 Dec 2018 10:17:23 GMT  
		Size: 956.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed5586dfb26d0277802e1929cf3148676aab39f614c928783f1a4637e3e444bb`  
		Last Modified: Sat, 15 Dec 2018 10:17:23 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9638f01bcff9ff570676885279c4738e8f86640adc6917464bc13e240489c745`  
		Last Modified: Sat, 15 Dec 2018 10:17:23 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:nanoserver-sac2016`

```console
$ docker pull traefik@sha256:dab3b3af8657f1f821b2e8947b6799a4bfeff83046e2ea01af30b847d59abdf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:23ade1379d4633b4217492d2ac9cc2ef9ea6276c814837398f03e7198195267c
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **454.9 MB (454949415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:316ca53666594442d6e749fa5e6a995229f74c747622ca376f6a3362c1aefc38`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Sat, 15 Dec 2018 10:17:00 GMT
RUN cmd /S /C #(nop) COPY file:85f0cb8152d40607f362217669e9dac76cec4e13e2c349137c39c6e852dc1d09 in \traefik.exe 
# Sat, 15 Dec 2018 10:17:03 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Sat, 15 Dec 2018 10:17:05 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Sat, 15 Dec 2018 10:17:06 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Mon, 17 Sep 2018 20:04:15 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6f2071dcd7294537bba55b3061704ef1370748e91982193b9e0fa4ebc114589b`  
		Last Modified: Tue, 09 Oct 2018 18:02:39 GMT  
		Size: 182.7 MB (182705816 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:82a10a190e0bb25fd837a56e66417602281fbed332a6dcea96cd1db236018db7`  
		Last Modified: Sat, 15 Dec 2018 10:17:30 GMT  
		Size: 19.5 MB (19549736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93d7601634949f2aaa833a6e4231cf0bd8facdab6fc7d04744bc629ef4252d54`  
		Last Modified: Sat, 15 Dec 2018 10:17:23 GMT  
		Size: 956.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed5586dfb26d0277802e1929cf3148676aab39f614c928783f1a4637e3e444bb`  
		Last Modified: Sat, 15 Dec 2018 10:17:23 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9638f01bcff9ff570676885279c4738e8f86640adc6917464bc13e240489c745`  
		Last Modified: Sat, 15 Dec 2018 10:17:23 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7`

```console
$ docker pull traefik@sha256:a9512e9e1d2c0eda3a971926f50e97467fbeecfe07eeeedc4224af4ee5329a4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.7` - linux; amd64

```console
$ docker pull traefik@sha256:efedc4f8419177f5fedc410df2d330795dd1bd140e9c4c8050c897dbee0d3035
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.7 MB (19666751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0a0d72714037f9cf7b958d9e0778693c45b1cc6b0e3c87b69ad2603809027a7`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 14 Dec 2018 18:21:56 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Fri, 14 Dec 2018 18:21:56 GMT
COPY file:4a8df4a19b37dce5a17b4f169910f5dfd9a1bca381e5831a48a0a4742c5b7d6f in / 
# Fri, 14 Dec 2018 18:21:57 GMT
EXPOSE 80
# Fri, 14 Dec 2018 18:21:57 GMT
VOLUME [/tmp]
# Fri, 14 Dec 2018 18:21:57 GMT
ENTRYPOINT ["/traefik"]
# Fri, 14 Dec 2018 18:21:57 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:7a433ecdf92bfc5080060a97efa862edf0deca55fcfa76a6a01b911c431695fd`  
		Last Modified: Fri, 14 Dec 2018 18:22:18 GMT  
		Size: 135.0 KB (135043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fbbd8a41c7fdace4ae19b8bca8a5e98a70b551c8973d0c57ef7c8389f03c0e9`  
		Last Modified: Fri, 14 Dec 2018 18:22:23 GMT  
		Size: 19.5 MB (19531708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7` - linux; arm variant v6

```console
$ docker pull traefik@sha256:f1210218496ff8a5475b723f4ceff810a2366da36ff309c49c9a7f78efd4fa34
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.5 MB (18471740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4779e9c9c1d9455d8d79c3056c6342a48ed1422d37f1ced84823ee3d221cb44c`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 15 Dec 2018 08:49:55 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Sat, 15 Dec 2018 08:49:56 GMT
COPY file:9185d8f3941eead638fba040a9e3ea7e7b70b93c62dc0a41b4541fcc5053804c in / 
# Sat, 15 Dec 2018 08:49:57 GMT
EXPOSE 80
# Sat, 15 Dec 2018 08:49:57 GMT
VOLUME [/tmp]
# Sat, 15 Dec 2018 08:49:58 GMT
ENTRYPOINT ["/traefik"]
# Sat, 15 Dec 2018 08:49:58 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5527833b12791749e5c8242af5e3795dc1e6b2fe58811c452979252cf978fce9`  
		Last Modified: Sat, 15 Dec 2018 08:50:23 GMT  
		Size: 135.0 KB (135038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8881fd196757b28dad27a5c6257832d5470eae25b194a61ddd5ef6edb1a71b3f`  
		Last Modified: Sat, 15 Dec 2018 08:50:30 GMT  
		Size: 18.3 MB (18336702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:69d9d0c99e4805db068be5e560ab72b0e4a70571c54e62cde0f6b1320468fa84
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.0 MB (18027429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:988011f49bae60635adcc34aee6e9cbfff8b9369c942d5e9482d91718631eb76`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 18 Dec 2018 10:37:13 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Tue, 18 Dec 2018 10:37:16 GMT
COPY file:d3135af1d593eef42dba574bcf6e4d9995903f88e4b89c1ba92c26f09393e9cf in / 
# Tue, 18 Dec 2018 10:37:17 GMT
EXPOSE 80
# Tue, 18 Dec 2018 10:37:17 GMT
VOLUME [/tmp]
# Tue, 18 Dec 2018 10:37:18 GMT
ENTRYPOINT ["/traefik"]
# Tue, 18 Dec 2018 10:37:19 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:93231411b7777ed5066dad65f929b35b680bfac1ea1fc2ff0c9fb935cc83d75a`  
		Last Modified: Tue, 18 Dec 2018 10:37:58 GMT  
		Size: 135.0 KB (135036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a85314a8764d5cd30b286d7ef7a7c0066bc00689890fc3bf231a946265f1dd6d`  
		Last Modified: Tue, 18 Dec 2018 10:38:06 GMT  
		Size: 17.9 MB (17892393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7.6`

```console
$ docker pull traefik@sha256:a9512e9e1d2c0eda3a971926f50e97467fbeecfe07eeeedc4224af4ee5329a4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.7.6` - linux; amd64

```console
$ docker pull traefik@sha256:efedc4f8419177f5fedc410df2d330795dd1bd140e9c4c8050c897dbee0d3035
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.7 MB (19666751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0a0d72714037f9cf7b958d9e0778693c45b1cc6b0e3c87b69ad2603809027a7`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 14 Dec 2018 18:21:56 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Fri, 14 Dec 2018 18:21:56 GMT
COPY file:4a8df4a19b37dce5a17b4f169910f5dfd9a1bca381e5831a48a0a4742c5b7d6f in / 
# Fri, 14 Dec 2018 18:21:57 GMT
EXPOSE 80
# Fri, 14 Dec 2018 18:21:57 GMT
VOLUME [/tmp]
# Fri, 14 Dec 2018 18:21:57 GMT
ENTRYPOINT ["/traefik"]
# Fri, 14 Dec 2018 18:21:57 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:7a433ecdf92bfc5080060a97efa862edf0deca55fcfa76a6a01b911c431695fd`  
		Last Modified: Fri, 14 Dec 2018 18:22:18 GMT  
		Size: 135.0 KB (135043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fbbd8a41c7fdace4ae19b8bca8a5e98a70b551c8973d0c57ef7c8389f03c0e9`  
		Last Modified: Fri, 14 Dec 2018 18:22:23 GMT  
		Size: 19.5 MB (19531708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7.6` - linux; arm variant v6

```console
$ docker pull traefik@sha256:f1210218496ff8a5475b723f4ceff810a2366da36ff309c49c9a7f78efd4fa34
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.5 MB (18471740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4779e9c9c1d9455d8d79c3056c6342a48ed1422d37f1ced84823ee3d221cb44c`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 15 Dec 2018 08:49:55 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Sat, 15 Dec 2018 08:49:56 GMT
COPY file:9185d8f3941eead638fba040a9e3ea7e7b70b93c62dc0a41b4541fcc5053804c in / 
# Sat, 15 Dec 2018 08:49:57 GMT
EXPOSE 80
# Sat, 15 Dec 2018 08:49:57 GMT
VOLUME [/tmp]
# Sat, 15 Dec 2018 08:49:58 GMT
ENTRYPOINT ["/traefik"]
# Sat, 15 Dec 2018 08:49:58 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5527833b12791749e5c8242af5e3795dc1e6b2fe58811c452979252cf978fce9`  
		Last Modified: Sat, 15 Dec 2018 08:50:23 GMT  
		Size: 135.0 KB (135038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8881fd196757b28dad27a5c6257832d5470eae25b194a61ddd5ef6edb1a71b3f`  
		Last Modified: Sat, 15 Dec 2018 08:50:30 GMT  
		Size: 18.3 MB (18336702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7.6` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:69d9d0c99e4805db068be5e560ab72b0e4a70571c54e62cde0f6b1320468fa84
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.0 MB (18027429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:988011f49bae60635adcc34aee6e9cbfff8b9369c942d5e9482d91718631eb76`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 18 Dec 2018 10:37:13 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Tue, 18 Dec 2018 10:37:16 GMT
COPY file:d3135af1d593eef42dba574bcf6e4d9995903f88e4b89c1ba92c26f09393e9cf in / 
# Tue, 18 Dec 2018 10:37:17 GMT
EXPOSE 80
# Tue, 18 Dec 2018 10:37:17 GMT
VOLUME [/tmp]
# Tue, 18 Dec 2018 10:37:18 GMT
ENTRYPOINT ["/traefik"]
# Tue, 18 Dec 2018 10:37:19 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:93231411b7777ed5066dad65f929b35b680bfac1ea1fc2ff0c9fb935cc83d75a`  
		Last Modified: Tue, 18 Dec 2018 10:37:58 GMT  
		Size: 135.0 KB (135036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a85314a8764d5cd30b286d7ef7a7c0066bc00689890fc3bf231a946265f1dd6d`  
		Last Modified: Tue, 18 Dec 2018 10:38:06 GMT  
		Size: 17.9 MB (17892393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7.6-alpine`

```console
$ docker pull traefik@sha256:4ef3e69079e5f6a982a83811751f643a0650e1a4f71ccc2bab6bb1f5170e7e33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.7.6-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:701b71c4467a5791a68ac569b178be95ac8e2ac1d12850bbccf545da33d8e012
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.0 MB (22047931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f296796f038d615fa323bcee22357938321488c22aad9496d45eb36da2df70d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 03:37:55 GMT
RUN apk --no-cache add ca-certificates
# Fri, 14 Dec 2018 18:22:05 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Fri, 14 Dec 2018 18:22:05 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Fri, 14 Dec 2018 18:22:05 GMT
EXPOSE 80
# Fri, 14 Dec 2018 18:22:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 14 Dec 2018 18:22:06 GMT
CMD ["traefik"]
# Fri, 14 Dec 2018 18:22:06 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:b0a1be82f8cc135d2c9a3d9c9611618e7b89a4503548e28d822c9acb9a8af5d4`  
		Last Modified: Fri, 14 Dec 2018 18:22:34 GMT  
		Size: 19.5 MB (19531698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9482593d974d5f78fa37fe908768d495693671a0913ca34f7631c65097142f3`  
		Last Modified: Fri, 14 Dec 2018 18:22:29 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7.6-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:99b73bff00e816a9ba289e79b3fbc55899a52a4f0b2248d13ccf6defdd49e31c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 MB (20792832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a89f0d360c7d18b078a9a57112a2964afff4e8019dac36f0de85d883e10de69c`
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
# Sat, 15 Dec 2018 08:50:08 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Sat, 15 Dec 2018 08:50:09 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Sat, 15 Dec 2018 08:50:09 GMT
EXPOSE 80
# Sat, 15 Dec 2018 08:50:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 15 Dec 2018 08:50:10 GMT
CMD ["traefik"]
# Sat, 15 Dec 2018 08:50:10 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:bef842f0e3c92ae9a84c199ceb6fc77b92f27133360c311cd575537bc7d148f2`  
		Last Modified: Sat, 15 Dec 2018 08:50:47 GMT  
		Size: 18.3 MB (18336815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20183a4e1446312c844b1c6b2f775e0e62bf141f236f627f1c3f1f40967e3a25`  
		Last Modified: Sat, 15 Dec 2018 08:50:40 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7.6-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:70990d0e66eaba1d970e740a3d58cba59e6842c0dcea95a666d654303fb24a64
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.3 MB (20301319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4aaca77971bc00ed3e9a16f243103bc9cf0c3c0c02677e8fc58a8dddfecef07d`
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
# Tue, 18 Dec 2018 10:37:39 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 18 Dec 2018 10:37:39 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Tue, 18 Dec 2018 10:37:40 GMT
EXPOSE 80
# Tue, 18 Dec 2018 10:37:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Dec 2018 10:37:41 GMT
CMD ["traefik"]
# Tue, 18 Dec 2018 10:37:42 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:02971c76063c5060951e838efa67035208583ba50b71afe399e5dcc0bf770465`  
		Last Modified: Tue, 18 Dec 2018 10:38:29 GMT  
		Size: 17.9 MB (17892529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f47cc955e2bc939bce6173ee99e1e6cceae6122bc4f08553a7265ef225f6150`  
		Last Modified: Tue, 18 Dec 2018 10:38:21 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7.6-nanoserver`

```console
$ docker pull traefik@sha256:dab3b3af8657f1f821b2e8947b6799a4bfeff83046e2ea01af30b847d59abdf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:v1.7.6-nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:23ade1379d4633b4217492d2ac9cc2ef9ea6276c814837398f03e7198195267c
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **454.9 MB (454949415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:316ca53666594442d6e749fa5e6a995229f74c747622ca376f6a3362c1aefc38`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Sat, 15 Dec 2018 10:17:00 GMT
RUN cmd /S /C #(nop) COPY file:85f0cb8152d40607f362217669e9dac76cec4e13e2c349137c39c6e852dc1d09 in \traefik.exe 
# Sat, 15 Dec 2018 10:17:03 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Sat, 15 Dec 2018 10:17:05 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Sat, 15 Dec 2018 10:17:06 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Mon, 17 Sep 2018 20:04:15 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6f2071dcd7294537bba55b3061704ef1370748e91982193b9e0fa4ebc114589b`  
		Last Modified: Tue, 09 Oct 2018 18:02:39 GMT  
		Size: 182.7 MB (182705816 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:82a10a190e0bb25fd837a56e66417602281fbed332a6dcea96cd1db236018db7`  
		Last Modified: Sat, 15 Dec 2018 10:17:30 GMT  
		Size: 19.5 MB (19549736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93d7601634949f2aaa833a6e4231cf0bd8facdab6fc7d04744bc629ef4252d54`  
		Last Modified: Sat, 15 Dec 2018 10:17:23 GMT  
		Size: 956.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed5586dfb26d0277802e1929cf3148676aab39f614c928783f1a4637e3e444bb`  
		Last Modified: Sat, 15 Dec 2018 10:17:23 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9638f01bcff9ff570676885279c4738e8f86640adc6917464bc13e240489c745`  
		Last Modified: Sat, 15 Dec 2018 10:17:23 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7.6-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:dab3b3af8657f1f821b2e8947b6799a4bfeff83046e2ea01af30b847d59abdf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:v1.7.6-nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:23ade1379d4633b4217492d2ac9cc2ef9ea6276c814837398f03e7198195267c
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **454.9 MB (454949415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:316ca53666594442d6e749fa5e6a995229f74c747622ca376f6a3362c1aefc38`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Sat, 15 Dec 2018 10:17:00 GMT
RUN cmd /S /C #(nop) COPY file:85f0cb8152d40607f362217669e9dac76cec4e13e2c349137c39c6e852dc1d09 in \traefik.exe 
# Sat, 15 Dec 2018 10:17:03 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Sat, 15 Dec 2018 10:17:05 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Sat, 15 Dec 2018 10:17:06 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Mon, 17 Sep 2018 20:04:15 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6f2071dcd7294537bba55b3061704ef1370748e91982193b9e0fa4ebc114589b`  
		Last Modified: Tue, 09 Oct 2018 18:02:39 GMT  
		Size: 182.7 MB (182705816 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:82a10a190e0bb25fd837a56e66417602281fbed332a6dcea96cd1db236018db7`  
		Last Modified: Sat, 15 Dec 2018 10:17:30 GMT  
		Size: 19.5 MB (19549736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93d7601634949f2aaa833a6e4231cf0bd8facdab6fc7d04744bc629ef4252d54`  
		Last Modified: Sat, 15 Dec 2018 10:17:23 GMT  
		Size: 956.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed5586dfb26d0277802e1929cf3148676aab39f614c928783f1a4637e3e444bb`  
		Last Modified: Sat, 15 Dec 2018 10:17:23 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9638f01bcff9ff570676885279c4738e8f86640adc6917464bc13e240489c745`  
		Last Modified: Sat, 15 Dec 2018 10:17:23 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7-alpine`

```console
$ docker pull traefik@sha256:4ef3e69079e5f6a982a83811751f643a0650e1a4f71ccc2bab6bb1f5170e7e33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.7-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:701b71c4467a5791a68ac569b178be95ac8e2ac1d12850bbccf545da33d8e012
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.0 MB (22047931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f296796f038d615fa323bcee22357938321488c22aad9496d45eb36da2df70d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 03:37:55 GMT
RUN apk --no-cache add ca-certificates
# Fri, 14 Dec 2018 18:22:05 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Fri, 14 Dec 2018 18:22:05 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Fri, 14 Dec 2018 18:22:05 GMT
EXPOSE 80
# Fri, 14 Dec 2018 18:22:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 14 Dec 2018 18:22:06 GMT
CMD ["traefik"]
# Fri, 14 Dec 2018 18:22:06 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:b0a1be82f8cc135d2c9a3d9c9611618e7b89a4503548e28d822c9acb9a8af5d4`  
		Last Modified: Fri, 14 Dec 2018 18:22:34 GMT  
		Size: 19.5 MB (19531698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9482593d974d5f78fa37fe908768d495693671a0913ca34f7631c65097142f3`  
		Last Modified: Fri, 14 Dec 2018 18:22:29 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:99b73bff00e816a9ba289e79b3fbc55899a52a4f0b2248d13ccf6defdd49e31c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 MB (20792832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a89f0d360c7d18b078a9a57112a2964afff4e8019dac36f0de85d883e10de69c`
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
# Sat, 15 Dec 2018 08:50:08 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Sat, 15 Dec 2018 08:50:09 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Sat, 15 Dec 2018 08:50:09 GMT
EXPOSE 80
# Sat, 15 Dec 2018 08:50:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 15 Dec 2018 08:50:10 GMT
CMD ["traefik"]
# Sat, 15 Dec 2018 08:50:10 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:bef842f0e3c92ae9a84c199ceb6fc77b92f27133360c311cd575537bc7d148f2`  
		Last Modified: Sat, 15 Dec 2018 08:50:47 GMT  
		Size: 18.3 MB (18336815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20183a4e1446312c844b1c6b2f775e0e62bf141f236f627f1c3f1f40967e3a25`  
		Last Modified: Sat, 15 Dec 2018 08:50:40 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:70990d0e66eaba1d970e740a3d58cba59e6842c0dcea95a666d654303fb24a64
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.3 MB (20301319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4aaca77971bc00ed3e9a16f243103bc9cf0c3c0c02677e8fc58a8dddfecef07d`
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
# Tue, 18 Dec 2018 10:37:39 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 18 Dec 2018 10:37:39 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Tue, 18 Dec 2018 10:37:40 GMT
EXPOSE 80
# Tue, 18 Dec 2018 10:37:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Dec 2018 10:37:41 GMT
CMD ["traefik"]
# Tue, 18 Dec 2018 10:37:42 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:02971c76063c5060951e838efa67035208583ba50b71afe399e5dcc0bf770465`  
		Last Modified: Tue, 18 Dec 2018 10:38:29 GMT  
		Size: 17.9 MB (17892529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f47cc955e2bc939bce6173ee99e1e6cceae6122bc4f08553a7265ef225f6150`  
		Last Modified: Tue, 18 Dec 2018 10:38:21 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7-nanoserver`

```console
$ docker pull traefik@sha256:dab3b3af8657f1f821b2e8947b6799a4bfeff83046e2ea01af30b847d59abdf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:v1.7-nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:23ade1379d4633b4217492d2ac9cc2ef9ea6276c814837398f03e7198195267c
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **454.9 MB (454949415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:316ca53666594442d6e749fa5e6a995229f74c747622ca376f6a3362c1aefc38`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Sat, 15 Dec 2018 10:17:00 GMT
RUN cmd /S /C #(nop) COPY file:85f0cb8152d40607f362217669e9dac76cec4e13e2c349137c39c6e852dc1d09 in \traefik.exe 
# Sat, 15 Dec 2018 10:17:03 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Sat, 15 Dec 2018 10:17:05 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Sat, 15 Dec 2018 10:17:06 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Mon, 17 Sep 2018 20:04:15 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6f2071dcd7294537bba55b3061704ef1370748e91982193b9e0fa4ebc114589b`  
		Last Modified: Tue, 09 Oct 2018 18:02:39 GMT  
		Size: 182.7 MB (182705816 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:82a10a190e0bb25fd837a56e66417602281fbed332a6dcea96cd1db236018db7`  
		Last Modified: Sat, 15 Dec 2018 10:17:30 GMT  
		Size: 19.5 MB (19549736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93d7601634949f2aaa833a6e4231cf0bd8facdab6fc7d04744bc629ef4252d54`  
		Last Modified: Sat, 15 Dec 2018 10:17:23 GMT  
		Size: 956.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed5586dfb26d0277802e1929cf3148676aab39f614c928783f1a4637e3e444bb`  
		Last Modified: Sat, 15 Dec 2018 10:17:23 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9638f01bcff9ff570676885279c4738e8f86640adc6917464bc13e240489c745`  
		Last Modified: Sat, 15 Dec 2018 10:17:23 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:dab3b3af8657f1f821b2e8947b6799a4bfeff83046e2ea01af30b847d59abdf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:v1.7-nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:23ade1379d4633b4217492d2ac9cc2ef9ea6276c814837398f03e7198195267c
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **454.9 MB (454949415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:316ca53666594442d6e749fa5e6a995229f74c747622ca376f6a3362c1aefc38`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Sat, 15 Dec 2018 10:17:00 GMT
RUN cmd /S /C #(nop) COPY file:85f0cb8152d40607f362217669e9dac76cec4e13e2c349137c39c6e852dc1d09 in \traefik.exe 
# Sat, 15 Dec 2018 10:17:03 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Sat, 15 Dec 2018 10:17:05 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Sat, 15 Dec 2018 10:17:06 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Mon, 17 Sep 2018 20:04:15 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6f2071dcd7294537bba55b3061704ef1370748e91982193b9e0fa4ebc114589b`  
		Last Modified: Tue, 09 Oct 2018 18:02:39 GMT  
		Size: 182.7 MB (182705816 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:82a10a190e0bb25fd837a56e66417602281fbed332a6dcea96cd1db236018db7`  
		Last Modified: Sat, 15 Dec 2018 10:17:30 GMT  
		Size: 19.5 MB (19549736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93d7601634949f2aaa833a6e4231cf0bd8facdab6fc7d04744bc629ef4252d54`  
		Last Modified: Sat, 15 Dec 2018 10:17:23 GMT  
		Size: 956.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed5586dfb26d0277802e1929cf3148676aab39f614c928783f1a4637e3e444bb`  
		Last Modified: Sat, 15 Dec 2018 10:17:23 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9638f01bcff9ff570676885279c4738e8f86640adc6917464bc13e240489c745`  
		Last Modified: Sat, 15 Dec 2018 10:17:23 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
