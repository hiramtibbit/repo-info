<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `traefik`

-	[`traefik:1.7`](#traefik17)
-	[`traefik:1.7.10`](#traefik1710)
-	[`traefik:1.7.10-alpine`](#traefik1710-alpine)
-	[`traefik:1.7.10-nanoserver`](#traefik1710-nanoserver)
-	[`traefik:1.7.10-nanoserver-sac2016`](#traefik1710-nanoserver-sac2016)
-	[`traefik:1.7-alpine`](#traefik17-alpine)
-	[`traefik:1.7-nanoserver`](#traefik17-nanoserver)
-	[`traefik:1.7-nanoserver-sac2016`](#traefik17-nanoserver-sac2016)
-	[`traefik:2.0`](#traefik20)
-	[`traefik:2.0.0-alpha4`](#traefik200-alpha4)
-	[`traefik:2.0.0-alpha4-alpine`](#traefik200-alpha4-alpine)
-	[`traefik:2.0.0-alpha4-nanoserver`](#traefik200-alpha4-nanoserver)
-	[`traefik:2.0.0-alpha4-nanoserver-sac2016`](#traefik200-alpha4-nanoserver-sac2016)
-	[`traefik:2.0-alpine`](#traefik20-alpine)
-	[`traefik:2.0-nanoserver`](#traefik20-nanoserver)
-	[`traefik:2.0-nanoserver-sac2016`](#traefik20-nanoserver-sac2016)
-	[`traefik:alpine`](#traefikalpine)
-	[`traefik:faisselle`](#traefikfaisselle)
-	[`traefik:faisselle-alpine`](#traefikfaisselle-alpine)
-	[`traefik:faisselle-nanoserver`](#traefikfaisselle-nanoserver)
-	[`traefik:faisselle-nanoserver-sac2016`](#traefikfaisselle-nanoserver-sac2016)
-	[`traefik:latest`](#traefiklatest)
-	[`traefik:maroilles`](#traefikmaroilles)
-	[`traefik:maroilles-alpine`](#traefikmaroilles-alpine)
-	[`traefik:maroilles-nanoserver`](#traefikmaroilles-nanoserver)
-	[`traefik:maroilles-nanoserver-sac2016`](#traefikmaroilles-nanoserver-sac2016)
-	[`traefik:nanoserver`](#traefiknanoserver)
-	[`traefik:nanoserver-sac2016`](#traefiknanoserver-sac2016)
-	[`traefik:v1.7`](#traefikv17)
-	[`traefik:v1.7.10`](#traefikv1710)
-	[`traefik:v1.7.10-alpine`](#traefikv1710-alpine)
-	[`traefik:v1.7.10-nanoserver`](#traefikv1710-nanoserver)
-	[`traefik:v1.7.10-nanoserver-sac2016`](#traefikv1710-nanoserver-sac2016)
-	[`traefik:v1.7-alpine`](#traefikv17-alpine)
-	[`traefik:v1.7-nanoserver`](#traefikv17-nanoserver)
-	[`traefik:v1.7-nanoserver-sac2016`](#traefikv17-nanoserver-sac2016)
-	[`traefik:v2.0`](#traefikv20)
-	[`traefik:v2.0.0-alpha4`](#traefikv200-alpha4)
-	[`traefik:v2.0.0-alpha4-alpine`](#traefikv200-alpha4-alpine)
-	[`traefik:v2.0.0-alpha4-nanoserver`](#traefikv200-alpha4-nanoserver)
-	[`traefik:v2.0.0-alpha4-nanoserver-sac2016`](#traefikv200-alpha4-nanoserver-sac2016)
-	[`traefik:v2.0-alpine`](#traefikv20-alpine)
-	[`traefik:v2.0-nanoserver`](#traefikv20-nanoserver)
-	[`traefik:v2.0-nanoserver-sac2016`](#traefikv20-nanoserver-sac2016)

## `traefik:1.7`

```console
$ docker pull traefik@sha256:f2566c50f26be475c4b6aef803662b1809c721cec398899172bf604277f56fda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.7` - linux; amd64

```console
$ docker pull traefik@sha256:b713d421276e33610f7dbbd25b3cc8d030f41277cc82f641316ed737a56d282a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 MB (20164791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb5ce07475c690dbfbc475ebf0b57bf2e8dc5bc9a89dce64616738685e708080`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 19 Mar 2019 21:34:26 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Mon, 01 Apr 2019 23:25:51 GMT
COPY file:82442c484066dcb603a5be72f299226172b964bf443829f2bc3cb98321a3e28d in / 
# Mon, 01 Apr 2019 23:25:51 GMT
EXPOSE 80
# Mon, 01 Apr 2019 23:25:51 GMT
VOLUME [/tmp]
# Mon, 01 Apr 2019 23:25:52 GMT
ENTRYPOINT ["/traefik"]
# Mon, 01 Apr 2019 23:25:52 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.10 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:d572f7c8e98390811ccda70b3cd865d413636517e557d586db244257f25ef6df`  
		Last Modified: Tue, 19 Mar 2019 21:35:04 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bc858cf9fbac23402c8332110827b816e70cd46c661b6a66e7e6b51d836e459`  
		Last Modified: Mon, 01 Apr 2019 23:26:39 GMT  
		Size: 20.0 MB (20032769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7` - linux; arm variant v6

```console
$ docker pull traefik@sha256:24330678303795425bc9b266fdce965b8e42b198ef9fe9a438b2b6b70169cede
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.9 MB (18923560 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01850066fd84d41b8d868aaed1bd4ed656542b9f56fc59d718c1d39f78b77ebe`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 20 Mar 2019 08:11:08 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Tue, 02 Apr 2019 07:50:41 GMT
COPY file:4b166d1adf566e18c0265294ace79755a8ae153e8f526eec85f8aaa5a34f5ec7 in / 
# Tue, 02 Apr 2019 07:50:42 GMT
EXPOSE 80
# Tue, 02 Apr 2019 07:50:42 GMT
VOLUME [/tmp]
# Tue, 02 Apr 2019 07:50:43 GMT
ENTRYPOINT ["/traefik"]
# Tue, 02 Apr 2019 07:50:43 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.10 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:2b85204ff61918278f159c68b7d115600c72173e7f4db3f92d97b8ef4be1c8e9`  
		Last Modified: Wed, 20 Mar 2019 08:11:50 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e664ab2c823408e7ebcc668ca32d9a340cf178d274c93ff732827772294974d`  
		Last Modified: Tue, 02 Apr 2019 07:51:50 GMT  
		Size: 18.8 MB (18791538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:ee04d3a166454e1aa151c3db2d5fc28bf468d1df9a57f89fc2ad692a8d02fb67
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.5 MB (18484324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68b14650c762c979abb0dd8b2ae1b2fad22af5370e47b1939c33a742f2a33da3`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 20 Mar 2019 10:26:00 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Tue, 02 Apr 2019 11:57:08 GMT
COPY file:cf94a8d70533867aec59d12db70096409984bb273547f8c6454e3718598979cb in / 
# Tue, 02 Apr 2019 11:57:09 GMT
EXPOSE 80
# Tue, 02 Apr 2019 11:57:10 GMT
VOLUME [/tmp]
# Tue, 02 Apr 2019 11:57:11 GMT
ENTRYPOINT ["/traefik"]
# Tue, 02 Apr 2019 11:57:11 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.10 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:4e8329e705d7c968f3a066e73302387c1fa99df2d2bd76c27312b2522e19eccc`  
		Last Modified: Wed, 20 Mar 2019 10:27:32 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fad81449bf88a2e22e3eb9445362116e21c5d2975ae90bbec7a87cfa805663c0`  
		Last Modified: Tue, 02 Apr 2019 11:58:47 GMT  
		Size: 18.4 MB (18352302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7.10`

```console
$ docker pull traefik@sha256:f2566c50f26be475c4b6aef803662b1809c721cec398899172bf604277f56fda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.7.10` - linux; amd64

```console
$ docker pull traefik@sha256:b713d421276e33610f7dbbd25b3cc8d030f41277cc82f641316ed737a56d282a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 MB (20164791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb5ce07475c690dbfbc475ebf0b57bf2e8dc5bc9a89dce64616738685e708080`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 19 Mar 2019 21:34:26 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Mon, 01 Apr 2019 23:25:51 GMT
COPY file:82442c484066dcb603a5be72f299226172b964bf443829f2bc3cb98321a3e28d in / 
# Mon, 01 Apr 2019 23:25:51 GMT
EXPOSE 80
# Mon, 01 Apr 2019 23:25:51 GMT
VOLUME [/tmp]
# Mon, 01 Apr 2019 23:25:52 GMT
ENTRYPOINT ["/traefik"]
# Mon, 01 Apr 2019 23:25:52 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.10 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:d572f7c8e98390811ccda70b3cd865d413636517e557d586db244257f25ef6df`  
		Last Modified: Tue, 19 Mar 2019 21:35:04 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bc858cf9fbac23402c8332110827b816e70cd46c661b6a66e7e6b51d836e459`  
		Last Modified: Mon, 01 Apr 2019 23:26:39 GMT  
		Size: 20.0 MB (20032769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7.10` - linux; arm variant v6

```console
$ docker pull traefik@sha256:24330678303795425bc9b266fdce965b8e42b198ef9fe9a438b2b6b70169cede
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.9 MB (18923560 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01850066fd84d41b8d868aaed1bd4ed656542b9f56fc59d718c1d39f78b77ebe`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 20 Mar 2019 08:11:08 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Tue, 02 Apr 2019 07:50:41 GMT
COPY file:4b166d1adf566e18c0265294ace79755a8ae153e8f526eec85f8aaa5a34f5ec7 in / 
# Tue, 02 Apr 2019 07:50:42 GMT
EXPOSE 80
# Tue, 02 Apr 2019 07:50:42 GMT
VOLUME [/tmp]
# Tue, 02 Apr 2019 07:50:43 GMT
ENTRYPOINT ["/traefik"]
# Tue, 02 Apr 2019 07:50:43 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.10 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:2b85204ff61918278f159c68b7d115600c72173e7f4db3f92d97b8ef4be1c8e9`  
		Last Modified: Wed, 20 Mar 2019 08:11:50 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e664ab2c823408e7ebcc668ca32d9a340cf178d274c93ff732827772294974d`  
		Last Modified: Tue, 02 Apr 2019 07:51:50 GMT  
		Size: 18.8 MB (18791538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7.10` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:ee04d3a166454e1aa151c3db2d5fc28bf468d1df9a57f89fc2ad692a8d02fb67
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.5 MB (18484324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68b14650c762c979abb0dd8b2ae1b2fad22af5370e47b1939c33a742f2a33da3`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 20 Mar 2019 10:26:00 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Tue, 02 Apr 2019 11:57:08 GMT
COPY file:cf94a8d70533867aec59d12db70096409984bb273547f8c6454e3718598979cb in / 
# Tue, 02 Apr 2019 11:57:09 GMT
EXPOSE 80
# Tue, 02 Apr 2019 11:57:10 GMT
VOLUME [/tmp]
# Tue, 02 Apr 2019 11:57:11 GMT
ENTRYPOINT ["/traefik"]
# Tue, 02 Apr 2019 11:57:11 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.10 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:4e8329e705d7c968f3a066e73302387c1fa99df2d2bd76c27312b2522e19eccc`  
		Last Modified: Wed, 20 Mar 2019 10:27:32 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fad81449bf88a2e22e3eb9445362116e21c5d2975ae90bbec7a87cfa805663c0`  
		Last Modified: Tue, 02 Apr 2019 11:58:47 GMT  
		Size: 18.4 MB (18352302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7.10-alpine`

```console
$ docker pull traefik@sha256:0531581bde9da0670fc2c7a4e419e1cc38abff74e7ba06410bf2b1b55c70ef15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.7.10-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:da73b77fb05d8c35bf37143a34911256a5437710d60969afd56f5b71847fd77a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23485866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1930b7508541abea87aad96fda1c625649345127bb39376ad138fe71ac0c0a98`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 02:01:13 GMT
RUN apk --no-cache add ca-certificates tzdata
# Wed, 10 Apr 2019 02:01:29 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.10/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 10 Apr 2019 02:01:30 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 10 Apr 2019 02:01:30 GMT
EXPOSE 80
# Wed, 10 Apr 2019 02:01:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 10 Apr 2019 02:01:30 GMT
CMD ["traefik"]
# Wed, 10 Apr 2019 02:01:31 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.10 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dfd896cc066730f98b1aefc2de088832b91f007ec2c2f53ef92d5001ddb3edf`  
		Last Modified: Wed, 10 Apr 2019 02:02:00 GMT  
		Size: 695.6 KB (695613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de06b56851280bdc0f30da017c2d29b8785dde8bcf2b606e3c6f43569a0cbb73`  
		Last Modified: Wed, 10 Apr 2019 02:02:22 GMT  
		Size: 20.0 MB (20032924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4d82a21fa27eb7b47a2ef70bef4a422e376d68d4c8f180f5194ba60994ad84f`  
		Last Modified: Wed, 10 Apr 2019 02:02:15 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7.10-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:4670f5e2da5be470c3fa7f6ae78cdb225a1f89b0345a95f3ab127d43bb947e8b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.0 MB (22033195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a33de8095854a4d018280dddacc655db1465e86ab67f3c7117b938b335a087e5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 09:15:52 GMT
RUN apk --no-cache add ca-certificates tzdata
# Wed, 10 Apr 2019 09:16:12 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.10/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 10 Apr 2019 09:16:13 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 10 Apr 2019 09:16:13 GMT
EXPOSE 80
# Wed, 10 Apr 2019 09:16:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 10 Apr 2019 09:16:14 GMT
CMD ["traefik"]
# Wed, 10 Apr 2019 09:16:14 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.10 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b90ce778eff7cd2e5d262717e5e338956cfbf92843a587a31645f1cec1b5536`  
		Last Modified: Wed, 10 Apr 2019 09:16:33 GMT  
		Size: 697.8 KB (697833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d6245f717c4fdcd96066b55e50ce2290f3b0ff7269a38dd2eebc41580ba9e92`  
		Last Modified: Wed, 10 Apr 2019 09:16:56 GMT  
		Size: 18.8 MB (18791603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:105ff5cea9e815f795c4dd84df17cee298164606feb1ef2a91c0d9765bfdefe7`  
		Last Modified: Wed, 10 Apr 2019 09:16:49 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7.10-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:f6ad879899954f56b21128bbeb2c8d760d35e0d2c8c652e445f6c64a8bc9f42f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.7 MB (21739264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:558cc9f2685dc690c8d1ca8dadfbf0ae6c9a0679fa4554ea47449f7507e4540a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 10 Apr 2019 08:49:11 GMT
ADD file:30e0a8ccdca70b20b8ce637f0ba5108157f4ba491447d20aafbe45d82392bd81 in / 
# Wed, 10 Apr 2019 08:49:12 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 09:36:07 GMT
RUN apk --no-cache add ca-certificates tzdata
# Wed, 10 Apr 2019 09:36:37 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.10/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 10 Apr 2019 09:36:38 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 10 Apr 2019 09:36:38 GMT
EXPOSE 80
# Wed, 10 Apr 2019 09:36:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 10 Apr 2019 09:36:40 GMT
CMD ["traefik"]
# Wed, 10 Apr 2019 09:36:40 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.10 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:6f37394be673296a0fdc21b819c5df40431baf7d3af121bee451726dd1457493`  
		Last Modified: Wed, 10 Apr 2019 08:50:38 GMT  
		Size: 2.7 MB (2688778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6b6a9317b7c02cc788a6ba35551c6123602739f7084d0dc6d7727dcedc4a84a`  
		Last Modified: Wed, 10 Apr 2019 09:37:07 GMT  
		Size: 697.7 KB (697724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc826008d08022887b8c8c54fcea827e4b1e8e204a01fe9fbfaf228f67da7fb`  
		Last Modified: Wed, 10 Apr 2019 09:37:36 GMT  
		Size: 18.4 MB (18352441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc83b9105836f45ba501e09e49f84dbf65e41dff44a9db8f07f984964069e446`  
		Last Modified: Wed, 10 Apr 2019 09:37:28 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7.10-nanoserver`

```console
$ docker pull traefik@sha256:20f42ab8772342c9f534987e2fcd6f43004562f46d51ef74a5565591075e073a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:1.7.10-nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:add0a056a5a371a2836e9b9dd24e45551213af45a2267da62e27feec1c9e3249
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.4 MB (455435633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9d57a27979fe63e900eeddf405608e7d040ba2640d1ae0a7a02fdb05abd1aae`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Tue, 02 Apr 2019 09:17:35 GMT
RUN cmd /S /C #(nop) COPY file:0bbc8a39c96d8e5a4f5c12a7b29e48fec0a673e5d2147b1835e67fe2240b10c4 in \traefik.exe 
# Tue, 02 Apr 2019 09:17:45 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Tue, 02 Apr 2019 09:17:46 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 02 Apr 2019 09:17:47 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.10 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:16be2745a9e19c356c3d0e39205eedd69978836f322c08de9227398c31130071`  
		Last Modified: Tue, 02 Apr 2019 09:19:08 GMT  
		Size: 20.0 MB (20035980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:792624ef3958595dd24291208f96e11a26771b72ade6c7b317fdc52030ea50bb`  
		Last Modified: Tue, 02 Apr 2019 09:19:00 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d28053dd6f94d43497c1a86f7b1c003bbdb90eb4112ebc8779d94a0fa4335e`  
		Last Modified: Tue, 02 Apr 2019 09:19:00 GMT  
		Size: 942.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23404f6a8ee12360687ee599f80402846e7e8116dcefeee764413a92c1eaca60`  
		Last Modified: Tue, 02 Apr 2019 09:19:00 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7.10-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:20f42ab8772342c9f534987e2fcd6f43004562f46d51ef74a5565591075e073a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:1.7.10-nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:add0a056a5a371a2836e9b9dd24e45551213af45a2267da62e27feec1c9e3249
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.4 MB (455435633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9d57a27979fe63e900eeddf405608e7d040ba2640d1ae0a7a02fdb05abd1aae`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Tue, 02 Apr 2019 09:17:35 GMT
RUN cmd /S /C #(nop) COPY file:0bbc8a39c96d8e5a4f5c12a7b29e48fec0a673e5d2147b1835e67fe2240b10c4 in \traefik.exe 
# Tue, 02 Apr 2019 09:17:45 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Tue, 02 Apr 2019 09:17:46 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 02 Apr 2019 09:17:47 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.10 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:16be2745a9e19c356c3d0e39205eedd69978836f322c08de9227398c31130071`  
		Last Modified: Tue, 02 Apr 2019 09:19:08 GMT  
		Size: 20.0 MB (20035980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:792624ef3958595dd24291208f96e11a26771b72ade6c7b317fdc52030ea50bb`  
		Last Modified: Tue, 02 Apr 2019 09:19:00 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d28053dd6f94d43497c1a86f7b1c003bbdb90eb4112ebc8779d94a0fa4335e`  
		Last Modified: Tue, 02 Apr 2019 09:19:00 GMT  
		Size: 942.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23404f6a8ee12360687ee599f80402846e7e8116dcefeee764413a92c1eaca60`  
		Last Modified: Tue, 02 Apr 2019 09:19:00 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7-alpine`

```console
$ docker pull traefik@sha256:0531581bde9da0670fc2c7a4e419e1cc38abff74e7ba06410bf2b1b55c70ef15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.7-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:da73b77fb05d8c35bf37143a34911256a5437710d60969afd56f5b71847fd77a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23485866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1930b7508541abea87aad96fda1c625649345127bb39376ad138fe71ac0c0a98`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 02:01:13 GMT
RUN apk --no-cache add ca-certificates tzdata
# Wed, 10 Apr 2019 02:01:29 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.10/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 10 Apr 2019 02:01:30 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 10 Apr 2019 02:01:30 GMT
EXPOSE 80
# Wed, 10 Apr 2019 02:01:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 10 Apr 2019 02:01:30 GMT
CMD ["traefik"]
# Wed, 10 Apr 2019 02:01:31 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.10 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dfd896cc066730f98b1aefc2de088832b91f007ec2c2f53ef92d5001ddb3edf`  
		Last Modified: Wed, 10 Apr 2019 02:02:00 GMT  
		Size: 695.6 KB (695613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de06b56851280bdc0f30da017c2d29b8785dde8bcf2b606e3c6f43569a0cbb73`  
		Last Modified: Wed, 10 Apr 2019 02:02:22 GMT  
		Size: 20.0 MB (20032924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4d82a21fa27eb7b47a2ef70bef4a422e376d68d4c8f180f5194ba60994ad84f`  
		Last Modified: Wed, 10 Apr 2019 02:02:15 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:4670f5e2da5be470c3fa7f6ae78cdb225a1f89b0345a95f3ab127d43bb947e8b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.0 MB (22033195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a33de8095854a4d018280dddacc655db1465e86ab67f3c7117b938b335a087e5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 09:15:52 GMT
RUN apk --no-cache add ca-certificates tzdata
# Wed, 10 Apr 2019 09:16:12 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.10/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 10 Apr 2019 09:16:13 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 10 Apr 2019 09:16:13 GMT
EXPOSE 80
# Wed, 10 Apr 2019 09:16:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 10 Apr 2019 09:16:14 GMT
CMD ["traefik"]
# Wed, 10 Apr 2019 09:16:14 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.10 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b90ce778eff7cd2e5d262717e5e338956cfbf92843a587a31645f1cec1b5536`  
		Last Modified: Wed, 10 Apr 2019 09:16:33 GMT  
		Size: 697.8 KB (697833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d6245f717c4fdcd96066b55e50ce2290f3b0ff7269a38dd2eebc41580ba9e92`  
		Last Modified: Wed, 10 Apr 2019 09:16:56 GMT  
		Size: 18.8 MB (18791603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:105ff5cea9e815f795c4dd84df17cee298164606feb1ef2a91c0d9765bfdefe7`  
		Last Modified: Wed, 10 Apr 2019 09:16:49 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:f6ad879899954f56b21128bbeb2c8d760d35e0d2c8c652e445f6c64a8bc9f42f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.7 MB (21739264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:558cc9f2685dc690c8d1ca8dadfbf0ae6c9a0679fa4554ea47449f7507e4540a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 10 Apr 2019 08:49:11 GMT
ADD file:30e0a8ccdca70b20b8ce637f0ba5108157f4ba491447d20aafbe45d82392bd81 in / 
# Wed, 10 Apr 2019 08:49:12 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 09:36:07 GMT
RUN apk --no-cache add ca-certificates tzdata
# Wed, 10 Apr 2019 09:36:37 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.10/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 10 Apr 2019 09:36:38 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 10 Apr 2019 09:36:38 GMT
EXPOSE 80
# Wed, 10 Apr 2019 09:36:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 10 Apr 2019 09:36:40 GMT
CMD ["traefik"]
# Wed, 10 Apr 2019 09:36:40 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.10 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:6f37394be673296a0fdc21b819c5df40431baf7d3af121bee451726dd1457493`  
		Last Modified: Wed, 10 Apr 2019 08:50:38 GMT  
		Size: 2.7 MB (2688778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6b6a9317b7c02cc788a6ba35551c6123602739f7084d0dc6d7727dcedc4a84a`  
		Last Modified: Wed, 10 Apr 2019 09:37:07 GMT  
		Size: 697.7 KB (697724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc826008d08022887b8c8c54fcea827e4b1e8e204a01fe9fbfaf228f67da7fb`  
		Last Modified: Wed, 10 Apr 2019 09:37:36 GMT  
		Size: 18.4 MB (18352441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc83b9105836f45ba501e09e49f84dbf65e41dff44a9db8f07f984964069e446`  
		Last Modified: Wed, 10 Apr 2019 09:37:28 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7-nanoserver`

```console
$ docker pull traefik@sha256:20f42ab8772342c9f534987e2fcd6f43004562f46d51ef74a5565591075e073a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:1.7-nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:add0a056a5a371a2836e9b9dd24e45551213af45a2267da62e27feec1c9e3249
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.4 MB (455435633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9d57a27979fe63e900eeddf405608e7d040ba2640d1ae0a7a02fdb05abd1aae`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Tue, 02 Apr 2019 09:17:35 GMT
RUN cmd /S /C #(nop) COPY file:0bbc8a39c96d8e5a4f5c12a7b29e48fec0a673e5d2147b1835e67fe2240b10c4 in \traefik.exe 
# Tue, 02 Apr 2019 09:17:45 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Tue, 02 Apr 2019 09:17:46 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 02 Apr 2019 09:17:47 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.10 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:16be2745a9e19c356c3d0e39205eedd69978836f322c08de9227398c31130071`  
		Last Modified: Tue, 02 Apr 2019 09:19:08 GMT  
		Size: 20.0 MB (20035980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:792624ef3958595dd24291208f96e11a26771b72ade6c7b317fdc52030ea50bb`  
		Last Modified: Tue, 02 Apr 2019 09:19:00 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d28053dd6f94d43497c1a86f7b1c003bbdb90eb4112ebc8779d94a0fa4335e`  
		Last Modified: Tue, 02 Apr 2019 09:19:00 GMT  
		Size: 942.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23404f6a8ee12360687ee599f80402846e7e8116dcefeee764413a92c1eaca60`  
		Last Modified: Tue, 02 Apr 2019 09:19:00 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:20f42ab8772342c9f534987e2fcd6f43004562f46d51ef74a5565591075e073a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:1.7-nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:add0a056a5a371a2836e9b9dd24e45551213af45a2267da62e27feec1c9e3249
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.4 MB (455435633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9d57a27979fe63e900eeddf405608e7d040ba2640d1ae0a7a02fdb05abd1aae`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Tue, 02 Apr 2019 09:17:35 GMT
RUN cmd /S /C #(nop) COPY file:0bbc8a39c96d8e5a4f5c12a7b29e48fec0a673e5d2147b1835e67fe2240b10c4 in \traefik.exe 
# Tue, 02 Apr 2019 09:17:45 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Tue, 02 Apr 2019 09:17:46 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 02 Apr 2019 09:17:47 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.10 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:16be2745a9e19c356c3d0e39205eedd69978836f322c08de9227398c31130071`  
		Last Modified: Tue, 02 Apr 2019 09:19:08 GMT  
		Size: 20.0 MB (20035980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:792624ef3958595dd24291208f96e11a26771b72ade6c7b317fdc52030ea50bb`  
		Last Modified: Tue, 02 Apr 2019 09:19:00 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d28053dd6f94d43497c1a86f7b1c003bbdb90eb4112ebc8779d94a0fa4335e`  
		Last Modified: Tue, 02 Apr 2019 09:19:00 GMT  
		Size: 942.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23404f6a8ee12360687ee599f80402846e7e8116dcefeee764413a92c1eaca60`  
		Last Modified: Tue, 02 Apr 2019 09:19:00 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:2.0`

```console
$ docker pull traefik@sha256:f1f02f0aaf88c9ae3886817b1d0f9aea481908fa4e29bafb72b03875f0c5fb77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:2.0` - linux; amd64

```console
$ docker pull traefik@sha256:7e577295f2aefb8b7037c54afbab8e7b29debedd876ae417ab9bb5d704a937df
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.4 MB (17448159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1653dfd3a96b93feafc6eb9ecb00858089161400739d2612aae34aa14b2b4730`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 19 Mar 2019 21:34:26 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Thu, 18 Apr 2019 00:00:20 GMT
COPY file:6276ff2d0f22504d5f2478b52297ca9943316559452df289d0152d650e097a4b in / 
# Thu, 18 Apr 2019 00:00:20 GMT
EXPOSE 80
# Thu, 18 Apr 2019 00:00:20 GMT
VOLUME [/tmp]
# Thu, 18 Apr 2019 00:00:20 GMT
ENTRYPOINT ["/traefik"]
# Thu, 18 Apr 2019 00:00:21 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha4 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:d572f7c8e98390811ccda70b3cd865d413636517e557d586db244257f25ef6df`  
		Last Modified: Tue, 19 Mar 2019 21:35:04 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7b1ec87dccdc3565126b2306fc184b98172237d9130ccf06d962f5accf26c0f`  
		Last Modified: Thu, 18 Apr 2019 00:00:58 GMT  
		Size: 17.3 MB (17316137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:2.0` - linux; arm variant v6

```console
$ docker pull traefik@sha256:1fa40edbee6bf1eec68b5953384c88a131070c4237b295e9162b90f5e756eac0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.3 MB (16338821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4244adcddffe976da1ad1663fc9bedafee308666f91222b06355928788cd4466`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 20 Mar 2019 08:11:08 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Thu, 18 Apr 2019 08:32:49 GMT
COPY file:8de1a468915584ddfd7edc22a7817cf39eee53c48babade63c877651bf72b19d in / 
# Thu, 18 Apr 2019 08:32:50 GMT
EXPOSE 80
# Thu, 18 Apr 2019 08:32:50 GMT
VOLUME [/tmp]
# Thu, 18 Apr 2019 08:32:50 GMT
ENTRYPOINT ["/traefik"]
# Thu, 18 Apr 2019 08:32:51 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha4 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:2b85204ff61918278f159c68b7d115600c72173e7f4db3f92d97b8ef4be1c8e9`  
		Last Modified: Wed, 20 Mar 2019 08:11:50 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f27df8b6bb5a87b7768f01a1d6d74adc5a651dda5490b82b1eefc579abf308bb`  
		Last Modified: Thu, 18 Apr 2019 08:34:02 GMT  
		Size: 16.2 MB (16206799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:2.0.0-alpha4`

```console
$ docker pull traefik@sha256:f1f02f0aaf88c9ae3886817b1d0f9aea481908fa4e29bafb72b03875f0c5fb77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:2.0.0-alpha4` - linux; amd64

```console
$ docker pull traefik@sha256:7e577295f2aefb8b7037c54afbab8e7b29debedd876ae417ab9bb5d704a937df
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.4 MB (17448159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1653dfd3a96b93feafc6eb9ecb00858089161400739d2612aae34aa14b2b4730`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 19 Mar 2019 21:34:26 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Thu, 18 Apr 2019 00:00:20 GMT
COPY file:6276ff2d0f22504d5f2478b52297ca9943316559452df289d0152d650e097a4b in / 
# Thu, 18 Apr 2019 00:00:20 GMT
EXPOSE 80
# Thu, 18 Apr 2019 00:00:20 GMT
VOLUME [/tmp]
# Thu, 18 Apr 2019 00:00:20 GMT
ENTRYPOINT ["/traefik"]
# Thu, 18 Apr 2019 00:00:21 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha4 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:d572f7c8e98390811ccda70b3cd865d413636517e557d586db244257f25ef6df`  
		Last Modified: Tue, 19 Mar 2019 21:35:04 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7b1ec87dccdc3565126b2306fc184b98172237d9130ccf06d962f5accf26c0f`  
		Last Modified: Thu, 18 Apr 2019 00:00:58 GMT  
		Size: 17.3 MB (17316137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:2.0.0-alpha4` - linux; arm variant v6

```console
$ docker pull traefik@sha256:1fa40edbee6bf1eec68b5953384c88a131070c4237b295e9162b90f5e756eac0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.3 MB (16338821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4244adcddffe976da1ad1663fc9bedafee308666f91222b06355928788cd4466`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 20 Mar 2019 08:11:08 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Thu, 18 Apr 2019 08:32:49 GMT
COPY file:8de1a468915584ddfd7edc22a7817cf39eee53c48babade63c877651bf72b19d in / 
# Thu, 18 Apr 2019 08:32:50 GMT
EXPOSE 80
# Thu, 18 Apr 2019 08:32:50 GMT
VOLUME [/tmp]
# Thu, 18 Apr 2019 08:32:50 GMT
ENTRYPOINT ["/traefik"]
# Thu, 18 Apr 2019 08:32:51 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha4 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:2b85204ff61918278f159c68b7d115600c72173e7f4db3f92d97b8ef4be1c8e9`  
		Last Modified: Wed, 20 Mar 2019 08:11:50 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f27df8b6bb5a87b7768f01a1d6d74adc5a651dda5490b82b1eefc579abf308bb`  
		Last Modified: Thu, 18 Apr 2019 08:34:02 GMT  
		Size: 16.2 MB (16206799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:2.0.0-alpha4-alpine`

```console
$ docker pull traefik@sha256:91dc99490f97bcac63861bfd804d97c3920f3d8fce27550736f11209c70ba165
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:2.0.0-alpha4-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:13aac7a3b7eb7dcab2ec161d7716fb6955df786d07748eb98ff9e51a5f4aa5b2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 MB (20769403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e6e45ed43e7beed7f0a9b098f06ac3d84795cf5a84a5a9ab7b0d379aec43d5b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 02:01:13 GMT
RUN apk --no-cache add ca-certificates tzdata
# Thu, 18 Apr 2019 00:00:31 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/containous/traefik/releases/download/v2.0.0-alpha4/traefik_v2.0.0-alpha4_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Thu, 18 Apr 2019 00:00:31 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Thu, 18 Apr 2019 00:00:31 GMT
EXPOSE 80
# Thu, 18 Apr 2019 00:00:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 18 Apr 2019 00:00:31 GMT
CMD ["traefik"]
# Thu, 18 Apr 2019 00:00:31 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha4 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dfd896cc066730f98b1aefc2de088832b91f007ec2c2f53ef92d5001ddb3edf`  
		Last Modified: Wed, 10 Apr 2019 02:02:00 GMT  
		Size: 695.6 KB (695613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3365942d1f6222d33908578b295a7bfd26ef91502febfae8ba024d260f9d48da`  
		Last Modified: Thu, 18 Apr 2019 00:01:07 GMT  
		Size: 17.3 MB (17316460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8198b15db7e0f1b7164cb35d175795a9f395d1f33b9ab8006971d91ff815f130`  
		Last Modified: Thu, 18 Apr 2019 00:01:04 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:2.0.0-alpha4-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:ad6375d899c02498ebffbc49149e71c7b5795833aa8e70637936a29b2916f9da
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.4 MB (19448468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0498884157fac3022dd98650986acfc1417e0aa383ae9a7ea9fbd97a705f5afb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 09:15:52 GMT
RUN apk --no-cache add ca-certificates tzdata
# Thu, 18 Apr 2019 08:32:59 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/containous/traefik/releases/download/v2.0.0-alpha4/traefik_v2.0.0-alpha4_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Thu, 18 Apr 2019 08:33:00 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Thu, 18 Apr 2019 08:33:01 GMT
EXPOSE 80
# Thu, 18 Apr 2019 08:33:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 18 Apr 2019 08:33:01 GMT
CMD ["traefik"]
# Thu, 18 Apr 2019 08:33:02 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha4 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b90ce778eff7cd2e5d262717e5e338956cfbf92843a587a31645f1cec1b5536`  
		Last Modified: Wed, 10 Apr 2019 09:16:33 GMT  
		Size: 697.8 KB (697833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec3070869560d3f2ce061eebf47aeeb24292fc7fe086027e9b16691600091aa3`  
		Last Modified: Thu, 18 Apr 2019 08:34:17 GMT  
		Size: 16.2 MB (16206872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8ef16a0239fc7797039c7bf07b17b30978dcb50671b2112a1fc98c5aa16403d`  
		Last Modified: Thu, 18 Apr 2019 08:34:11 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:2.0.0-alpha4-nanoserver`

```console
$ docker pull traefik@sha256:3e58963fe20afc73d4f3af533233f03d22166812bc4b1e5678e4c71375567c4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:2.0.0-alpha4-nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:282a68de735b8569af06f1b246c2048d20652c74aea25c4dec7a48d89a61102d
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.7 MB (452699359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53af306dc84bf9d777e23b9751a8ebc8828345e13e2849def961e15d6a3483bd`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Thu, 18 Apr 2019 09:31:30 GMT
RUN cmd /S /C #(nop) COPY file:f5d7bc66858ac5145aa17aaf5598825dd7d56948e3d950ea0bedc5d718ec029a in \traefik.exe 
# Thu, 18 Apr 2019 09:31:38 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Thu, 18 Apr 2019 09:31:39 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Thu, 18 Apr 2019 09:31:40 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha4 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:538e5a9cc836f82795394287767591a4b93ae6a1dcd2233a0ba99210816cae9b`  
		Last Modified: Thu, 18 Apr 2019 09:32:13 GMT  
		Size: 17.3 MB (17299694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:492626a8f1da221547e14ae8338c7f9fb59a792c5221ff8dcaf22f44db0437d0`  
		Last Modified: Thu, 18 Apr 2019 09:32:09 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dd5012cac867a3f09f87478eece96a96096eed50c30b9e46144e92c640f1dd9`  
		Last Modified: Thu, 18 Apr 2019 09:32:09 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43f63b6c096f1133f75e4d3a69b639900dc820dc2d9d2578a6dbe58244525042`  
		Last Modified: Thu, 18 Apr 2019 09:32:10 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:2.0.0-alpha4-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:3e58963fe20afc73d4f3af533233f03d22166812bc4b1e5678e4c71375567c4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:2.0.0-alpha4-nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:282a68de735b8569af06f1b246c2048d20652c74aea25c4dec7a48d89a61102d
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.7 MB (452699359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53af306dc84bf9d777e23b9751a8ebc8828345e13e2849def961e15d6a3483bd`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Thu, 18 Apr 2019 09:31:30 GMT
RUN cmd /S /C #(nop) COPY file:f5d7bc66858ac5145aa17aaf5598825dd7d56948e3d950ea0bedc5d718ec029a in \traefik.exe 
# Thu, 18 Apr 2019 09:31:38 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Thu, 18 Apr 2019 09:31:39 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Thu, 18 Apr 2019 09:31:40 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha4 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:538e5a9cc836f82795394287767591a4b93ae6a1dcd2233a0ba99210816cae9b`  
		Last Modified: Thu, 18 Apr 2019 09:32:13 GMT  
		Size: 17.3 MB (17299694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:492626a8f1da221547e14ae8338c7f9fb59a792c5221ff8dcaf22f44db0437d0`  
		Last Modified: Thu, 18 Apr 2019 09:32:09 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dd5012cac867a3f09f87478eece96a96096eed50c30b9e46144e92c640f1dd9`  
		Last Modified: Thu, 18 Apr 2019 09:32:09 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43f63b6c096f1133f75e4d3a69b639900dc820dc2d9d2578a6dbe58244525042`  
		Last Modified: Thu, 18 Apr 2019 09:32:10 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:2.0-alpine`

```console
$ docker pull traefik@sha256:91dc99490f97bcac63861bfd804d97c3920f3d8fce27550736f11209c70ba165
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:2.0-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:13aac7a3b7eb7dcab2ec161d7716fb6955df786d07748eb98ff9e51a5f4aa5b2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 MB (20769403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e6e45ed43e7beed7f0a9b098f06ac3d84795cf5a84a5a9ab7b0d379aec43d5b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 02:01:13 GMT
RUN apk --no-cache add ca-certificates tzdata
# Thu, 18 Apr 2019 00:00:31 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/containous/traefik/releases/download/v2.0.0-alpha4/traefik_v2.0.0-alpha4_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Thu, 18 Apr 2019 00:00:31 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Thu, 18 Apr 2019 00:00:31 GMT
EXPOSE 80
# Thu, 18 Apr 2019 00:00:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 18 Apr 2019 00:00:31 GMT
CMD ["traefik"]
# Thu, 18 Apr 2019 00:00:31 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha4 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dfd896cc066730f98b1aefc2de088832b91f007ec2c2f53ef92d5001ddb3edf`  
		Last Modified: Wed, 10 Apr 2019 02:02:00 GMT  
		Size: 695.6 KB (695613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3365942d1f6222d33908578b295a7bfd26ef91502febfae8ba024d260f9d48da`  
		Last Modified: Thu, 18 Apr 2019 00:01:07 GMT  
		Size: 17.3 MB (17316460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8198b15db7e0f1b7164cb35d175795a9f395d1f33b9ab8006971d91ff815f130`  
		Last Modified: Thu, 18 Apr 2019 00:01:04 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:2.0-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:ad6375d899c02498ebffbc49149e71c7b5795833aa8e70637936a29b2916f9da
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.4 MB (19448468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0498884157fac3022dd98650986acfc1417e0aa383ae9a7ea9fbd97a705f5afb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 09:15:52 GMT
RUN apk --no-cache add ca-certificates tzdata
# Thu, 18 Apr 2019 08:32:59 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/containous/traefik/releases/download/v2.0.0-alpha4/traefik_v2.0.0-alpha4_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Thu, 18 Apr 2019 08:33:00 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Thu, 18 Apr 2019 08:33:01 GMT
EXPOSE 80
# Thu, 18 Apr 2019 08:33:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 18 Apr 2019 08:33:01 GMT
CMD ["traefik"]
# Thu, 18 Apr 2019 08:33:02 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha4 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b90ce778eff7cd2e5d262717e5e338956cfbf92843a587a31645f1cec1b5536`  
		Last Modified: Wed, 10 Apr 2019 09:16:33 GMT  
		Size: 697.8 KB (697833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec3070869560d3f2ce061eebf47aeeb24292fc7fe086027e9b16691600091aa3`  
		Last Modified: Thu, 18 Apr 2019 08:34:17 GMT  
		Size: 16.2 MB (16206872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8ef16a0239fc7797039c7bf07b17b30978dcb50671b2112a1fc98c5aa16403d`  
		Last Modified: Thu, 18 Apr 2019 08:34:11 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:2.0-nanoserver`

```console
$ docker pull traefik@sha256:3e58963fe20afc73d4f3af533233f03d22166812bc4b1e5678e4c71375567c4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:2.0-nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:282a68de735b8569af06f1b246c2048d20652c74aea25c4dec7a48d89a61102d
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.7 MB (452699359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53af306dc84bf9d777e23b9751a8ebc8828345e13e2849def961e15d6a3483bd`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Thu, 18 Apr 2019 09:31:30 GMT
RUN cmd /S /C #(nop) COPY file:f5d7bc66858ac5145aa17aaf5598825dd7d56948e3d950ea0bedc5d718ec029a in \traefik.exe 
# Thu, 18 Apr 2019 09:31:38 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Thu, 18 Apr 2019 09:31:39 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Thu, 18 Apr 2019 09:31:40 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha4 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:538e5a9cc836f82795394287767591a4b93ae6a1dcd2233a0ba99210816cae9b`  
		Last Modified: Thu, 18 Apr 2019 09:32:13 GMT  
		Size: 17.3 MB (17299694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:492626a8f1da221547e14ae8338c7f9fb59a792c5221ff8dcaf22f44db0437d0`  
		Last Modified: Thu, 18 Apr 2019 09:32:09 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dd5012cac867a3f09f87478eece96a96096eed50c30b9e46144e92c640f1dd9`  
		Last Modified: Thu, 18 Apr 2019 09:32:09 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43f63b6c096f1133f75e4d3a69b639900dc820dc2d9d2578a6dbe58244525042`  
		Last Modified: Thu, 18 Apr 2019 09:32:10 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:2.0-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:3e58963fe20afc73d4f3af533233f03d22166812bc4b1e5678e4c71375567c4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:2.0-nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:282a68de735b8569af06f1b246c2048d20652c74aea25c4dec7a48d89a61102d
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.7 MB (452699359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53af306dc84bf9d777e23b9751a8ebc8828345e13e2849def961e15d6a3483bd`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Thu, 18 Apr 2019 09:31:30 GMT
RUN cmd /S /C #(nop) COPY file:f5d7bc66858ac5145aa17aaf5598825dd7d56948e3d950ea0bedc5d718ec029a in \traefik.exe 
# Thu, 18 Apr 2019 09:31:38 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Thu, 18 Apr 2019 09:31:39 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Thu, 18 Apr 2019 09:31:40 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha4 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:538e5a9cc836f82795394287767591a4b93ae6a1dcd2233a0ba99210816cae9b`  
		Last Modified: Thu, 18 Apr 2019 09:32:13 GMT  
		Size: 17.3 MB (17299694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:492626a8f1da221547e14ae8338c7f9fb59a792c5221ff8dcaf22f44db0437d0`  
		Last Modified: Thu, 18 Apr 2019 09:32:09 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dd5012cac867a3f09f87478eece96a96096eed50c30b9e46144e92c640f1dd9`  
		Last Modified: Thu, 18 Apr 2019 09:32:09 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43f63b6c096f1133f75e4d3a69b639900dc820dc2d9d2578a6dbe58244525042`  
		Last Modified: Thu, 18 Apr 2019 09:32:10 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:alpine`

```console
$ docker pull traefik@sha256:0531581bde9da0670fc2c7a4e419e1cc38abff74e7ba06410bf2b1b55c70ef15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:alpine` - linux; amd64

```console
$ docker pull traefik@sha256:da73b77fb05d8c35bf37143a34911256a5437710d60969afd56f5b71847fd77a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23485866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1930b7508541abea87aad96fda1c625649345127bb39376ad138fe71ac0c0a98`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 02:01:13 GMT
RUN apk --no-cache add ca-certificates tzdata
# Wed, 10 Apr 2019 02:01:29 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.10/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 10 Apr 2019 02:01:30 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 10 Apr 2019 02:01:30 GMT
EXPOSE 80
# Wed, 10 Apr 2019 02:01:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 10 Apr 2019 02:01:30 GMT
CMD ["traefik"]
# Wed, 10 Apr 2019 02:01:31 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.10 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dfd896cc066730f98b1aefc2de088832b91f007ec2c2f53ef92d5001ddb3edf`  
		Last Modified: Wed, 10 Apr 2019 02:02:00 GMT  
		Size: 695.6 KB (695613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de06b56851280bdc0f30da017c2d29b8785dde8bcf2b606e3c6f43569a0cbb73`  
		Last Modified: Wed, 10 Apr 2019 02:02:22 GMT  
		Size: 20.0 MB (20032924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4d82a21fa27eb7b47a2ef70bef4a422e376d68d4c8f180f5194ba60994ad84f`  
		Last Modified: Wed, 10 Apr 2019 02:02:15 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:4670f5e2da5be470c3fa7f6ae78cdb225a1f89b0345a95f3ab127d43bb947e8b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.0 MB (22033195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a33de8095854a4d018280dddacc655db1465e86ab67f3c7117b938b335a087e5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 09:15:52 GMT
RUN apk --no-cache add ca-certificates tzdata
# Wed, 10 Apr 2019 09:16:12 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.10/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 10 Apr 2019 09:16:13 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 10 Apr 2019 09:16:13 GMT
EXPOSE 80
# Wed, 10 Apr 2019 09:16:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 10 Apr 2019 09:16:14 GMT
CMD ["traefik"]
# Wed, 10 Apr 2019 09:16:14 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.10 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b90ce778eff7cd2e5d262717e5e338956cfbf92843a587a31645f1cec1b5536`  
		Last Modified: Wed, 10 Apr 2019 09:16:33 GMT  
		Size: 697.8 KB (697833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d6245f717c4fdcd96066b55e50ce2290f3b0ff7269a38dd2eebc41580ba9e92`  
		Last Modified: Wed, 10 Apr 2019 09:16:56 GMT  
		Size: 18.8 MB (18791603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:105ff5cea9e815f795c4dd84df17cee298164606feb1ef2a91c0d9765bfdefe7`  
		Last Modified: Wed, 10 Apr 2019 09:16:49 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:f6ad879899954f56b21128bbeb2c8d760d35e0d2c8c652e445f6c64a8bc9f42f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.7 MB (21739264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:558cc9f2685dc690c8d1ca8dadfbf0ae6c9a0679fa4554ea47449f7507e4540a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 10 Apr 2019 08:49:11 GMT
ADD file:30e0a8ccdca70b20b8ce637f0ba5108157f4ba491447d20aafbe45d82392bd81 in / 
# Wed, 10 Apr 2019 08:49:12 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 09:36:07 GMT
RUN apk --no-cache add ca-certificates tzdata
# Wed, 10 Apr 2019 09:36:37 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.10/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 10 Apr 2019 09:36:38 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 10 Apr 2019 09:36:38 GMT
EXPOSE 80
# Wed, 10 Apr 2019 09:36:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 10 Apr 2019 09:36:40 GMT
CMD ["traefik"]
# Wed, 10 Apr 2019 09:36:40 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.10 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:6f37394be673296a0fdc21b819c5df40431baf7d3af121bee451726dd1457493`  
		Last Modified: Wed, 10 Apr 2019 08:50:38 GMT  
		Size: 2.7 MB (2688778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6b6a9317b7c02cc788a6ba35551c6123602739f7084d0dc6d7727dcedc4a84a`  
		Last Modified: Wed, 10 Apr 2019 09:37:07 GMT  
		Size: 697.7 KB (697724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc826008d08022887b8c8c54fcea827e4b1e8e204a01fe9fbfaf228f67da7fb`  
		Last Modified: Wed, 10 Apr 2019 09:37:36 GMT  
		Size: 18.4 MB (18352441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc83b9105836f45ba501e09e49f84dbf65e41dff44a9db8f07f984964069e446`  
		Last Modified: Wed, 10 Apr 2019 09:37:28 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:faisselle`

```console
$ docker pull traefik@sha256:f1f02f0aaf88c9ae3886817b1d0f9aea481908fa4e29bafb72b03875f0c5fb77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:faisselle` - linux; amd64

```console
$ docker pull traefik@sha256:7e577295f2aefb8b7037c54afbab8e7b29debedd876ae417ab9bb5d704a937df
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.4 MB (17448159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1653dfd3a96b93feafc6eb9ecb00858089161400739d2612aae34aa14b2b4730`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 19 Mar 2019 21:34:26 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Thu, 18 Apr 2019 00:00:20 GMT
COPY file:6276ff2d0f22504d5f2478b52297ca9943316559452df289d0152d650e097a4b in / 
# Thu, 18 Apr 2019 00:00:20 GMT
EXPOSE 80
# Thu, 18 Apr 2019 00:00:20 GMT
VOLUME [/tmp]
# Thu, 18 Apr 2019 00:00:20 GMT
ENTRYPOINT ["/traefik"]
# Thu, 18 Apr 2019 00:00:21 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha4 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:d572f7c8e98390811ccda70b3cd865d413636517e557d586db244257f25ef6df`  
		Last Modified: Tue, 19 Mar 2019 21:35:04 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7b1ec87dccdc3565126b2306fc184b98172237d9130ccf06d962f5accf26c0f`  
		Last Modified: Thu, 18 Apr 2019 00:00:58 GMT  
		Size: 17.3 MB (17316137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:faisselle` - linux; arm variant v6

```console
$ docker pull traefik@sha256:1fa40edbee6bf1eec68b5953384c88a131070c4237b295e9162b90f5e756eac0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.3 MB (16338821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4244adcddffe976da1ad1663fc9bedafee308666f91222b06355928788cd4466`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 20 Mar 2019 08:11:08 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Thu, 18 Apr 2019 08:32:49 GMT
COPY file:8de1a468915584ddfd7edc22a7817cf39eee53c48babade63c877651bf72b19d in / 
# Thu, 18 Apr 2019 08:32:50 GMT
EXPOSE 80
# Thu, 18 Apr 2019 08:32:50 GMT
VOLUME [/tmp]
# Thu, 18 Apr 2019 08:32:50 GMT
ENTRYPOINT ["/traefik"]
# Thu, 18 Apr 2019 08:32:51 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha4 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:2b85204ff61918278f159c68b7d115600c72173e7f4db3f92d97b8ef4be1c8e9`  
		Last Modified: Wed, 20 Mar 2019 08:11:50 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f27df8b6bb5a87b7768f01a1d6d74adc5a651dda5490b82b1eefc579abf308bb`  
		Last Modified: Thu, 18 Apr 2019 08:34:02 GMT  
		Size: 16.2 MB (16206799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:faisselle-alpine`

```console
$ docker pull traefik@sha256:91dc99490f97bcac63861bfd804d97c3920f3d8fce27550736f11209c70ba165
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:faisselle-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:13aac7a3b7eb7dcab2ec161d7716fb6955df786d07748eb98ff9e51a5f4aa5b2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 MB (20769403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e6e45ed43e7beed7f0a9b098f06ac3d84795cf5a84a5a9ab7b0d379aec43d5b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 02:01:13 GMT
RUN apk --no-cache add ca-certificates tzdata
# Thu, 18 Apr 2019 00:00:31 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/containous/traefik/releases/download/v2.0.0-alpha4/traefik_v2.0.0-alpha4_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Thu, 18 Apr 2019 00:00:31 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Thu, 18 Apr 2019 00:00:31 GMT
EXPOSE 80
# Thu, 18 Apr 2019 00:00:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 18 Apr 2019 00:00:31 GMT
CMD ["traefik"]
# Thu, 18 Apr 2019 00:00:31 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha4 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dfd896cc066730f98b1aefc2de088832b91f007ec2c2f53ef92d5001ddb3edf`  
		Last Modified: Wed, 10 Apr 2019 02:02:00 GMT  
		Size: 695.6 KB (695613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3365942d1f6222d33908578b295a7bfd26ef91502febfae8ba024d260f9d48da`  
		Last Modified: Thu, 18 Apr 2019 00:01:07 GMT  
		Size: 17.3 MB (17316460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8198b15db7e0f1b7164cb35d175795a9f395d1f33b9ab8006971d91ff815f130`  
		Last Modified: Thu, 18 Apr 2019 00:01:04 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:faisselle-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:ad6375d899c02498ebffbc49149e71c7b5795833aa8e70637936a29b2916f9da
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.4 MB (19448468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0498884157fac3022dd98650986acfc1417e0aa383ae9a7ea9fbd97a705f5afb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 09:15:52 GMT
RUN apk --no-cache add ca-certificates tzdata
# Thu, 18 Apr 2019 08:32:59 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/containous/traefik/releases/download/v2.0.0-alpha4/traefik_v2.0.0-alpha4_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Thu, 18 Apr 2019 08:33:00 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Thu, 18 Apr 2019 08:33:01 GMT
EXPOSE 80
# Thu, 18 Apr 2019 08:33:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 18 Apr 2019 08:33:01 GMT
CMD ["traefik"]
# Thu, 18 Apr 2019 08:33:02 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha4 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b90ce778eff7cd2e5d262717e5e338956cfbf92843a587a31645f1cec1b5536`  
		Last Modified: Wed, 10 Apr 2019 09:16:33 GMT  
		Size: 697.8 KB (697833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec3070869560d3f2ce061eebf47aeeb24292fc7fe086027e9b16691600091aa3`  
		Last Modified: Thu, 18 Apr 2019 08:34:17 GMT  
		Size: 16.2 MB (16206872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8ef16a0239fc7797039c7bf07b17b30978dcb50671b2112a1fc98c5aa16403d`  
		Last Modified: Thu, 18 Apr 2019 08:34:11 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:faisselle-nanoserver`

```console
$ docker pull traefik@sha256:3e58963fe20afc73d4f3af533233f03d22166812bc4b1e5678e4c71375567c4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:faisselle-nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:282a68de735b8569af06f1b246c2048d20652c74aea25c4dec7a48d89a61102d
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.7 MB (452699359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53af306dc84bf9d777e23b9751a8ebc8828345e13e2849def961e15d6a3483bd`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Thu, 18 Apr 2019 09:31:30 GMT
RUN cmd /S /C #(nop) COPY file:f5d7bc66858ac5145aa17aaf5598825dd7d56948e3d950ea0bedc5d718ec029a in \traefik.exe 
# Thu, 18 Apr 2019 09:31:38 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Thu, 18 Apr 2019 09:31:39 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Thu, 18 Apr 2019 09:31:40 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha4 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:538e5a9cc836f82795394287767591a4b93ae6a1dcd2233a0ba99210816cae9b`  
		Last Modified: Thu, 18 Apr 2019 09:32:13 GMT  
		Size: 17.3 MB (17299694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:492626a8f1da221547e14ae8338c7f9fb59a792c5221ff8dcaf22f44db0437d0`  
		Last Modified: Thu, 18 Apr 2019 09:32:09 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dd5012cac867a3f09f87478eece96a96096eed50c30b9e46144e92c640f1dd9`  
		Last Modified: Thu, 18 Apr 2019 09:32:09 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43f63b6c096f1133f75e4d3a69b639900dc820dc2d9d2578a6dbe58244525042`  
		Last Modified: Thu, 18 Apr 2019 09:32:10 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:faisselle-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:3e58963fe20afc73d4f3af533233f03d22166812bc4b1e5678e4c71375567c4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:faisselle-nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:282a68de735b8569af06f1b246c2048d20652c74aea25c4dec7a48d89a61102d
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.7 MB (452699359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53af306dc84bf9d777e23b9751a8ebc8828345e13e2849def961e15d6a3483bd`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Thu, 18 Apr 2019 09:31:30 GMT
RUN cmd /S /C #(nop) COPY file:f5d7bc66858ac5145aa17aaf5598825dd7d56948e3d950ea0bedc5d718ec029a in \traefik.exe 
# Thu, 18 Apr 2019 09:31:38 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Thu, 18 Apr 2019 09:31:39 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Thu, 18 Apr 2019 09:31:40 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha4 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:538e5a9cc836f82795394287767591a4b93ae6a1dcd2233a0ba99210816cae9b`  
		Last Modified: Thu, 18 Apr 2019 09:32:13 GMT  
		Size: 17.3 MB (17299694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:492626a8f1da221547e14ae8338c7f9fb59a792c5221ff8dcaf22f44db0437d0`  
		Last Modified: Thu, 18 Apr 2019 09:32:09 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dd5012cac867a3f09f87478eece96a96096eed50c30b9e46144e92c640f1dd9`  
		Last Modified: Thu, 18 Apr 2019 09:32:09 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43f63b6c096f1133f75e4d3a69b639900dc820dc2d9d2578a6dbe58244525042`  
		Last Modified: Thu, 18 Apr 2019 09:32:10 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:latest`

```console
$ docker pull traefik@sha256:f2566c50f26be475c4b6aef803662b1809c721cec398899172bf604277f56fda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:latest` - linux; amd64

```console
$ docker pull traefik@sha256:b713d421276e33610f7dbbd25b3cc8d030f41277cc82f641316ed737a56d282a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 MB (20164791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb5ce07475c690dbfbc475ebf0b57bf2e8dc5bc9a89dce64616738685e708080`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 19 Mar 2019 21:34:26 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Mon, 01 Apr 2019 23:25:51 GMT
COPY file:82442c484066dcb603a5be72f299226172b964bf443829f2bc3cb98321a3e28d in / 
# Mon, 01 Apr 2019 23:25:51 GMT
EXPOSE 80
# Mon, 01 Apr 2019 23:25:51 GMT
VOLUME [/tmp]
# Mon, 01 Apr 2019 23:25:52 GMT
ENTRYPOINT ["/traefik"]
# Mon, 01 Apr 2019 23:25:52 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.10 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:d572f7c8e98390811ccda70b3cd865d413636517e557d586db244257f25ef6df`  
		Last Modified: Tue, 19 Mar 2019 21:35:04 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bc858cf9fbac23402c8332110827b816e70cd46c661b6a66e7e6b51d836e459`  
		Last Modified: Mon, 01 Apr 2019 23:26:39 GMT  
		Size: 20.0 MB (20032769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:latest` - linux; arm variant v6

```console
$ docker pull traefik@sha256:24330678303795425bc9b266fdce965b8e42b198ef9fe9a438b2b6b70169cede
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.9 MB (18923560 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01850066fd84d41b8d868aaed1bd4ed656542b9f56fc59d718c1d39f78b77ebe`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 20 Mar 2019 08:11:08 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Tue, 02 Apr 2019 07:50:41 GMT
COPY file:4b166d1adf566e18c0265294ace79755a8ae153e8f526eec85f8aaa5a34f5ec7 in / 
# Tue, 02 Apr 2019 07:50:42 GMT
EXPOSE 80
# Tue, 02 Apr 2019 07:50:42 GMT
VOLUME [/tmp]
# Tue, 02 Apr 2019 07:50:43 GMT
ENTRYPOINT ["/traefik"]
# Tue, 02 Apr 2019 07:50:43 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.10 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:2b85204ff61918278f159c68b7d115600c72173e7f4db3f92d97b8ef4be1c8e9`  
		Last Modified: Wed, 20 Mar 2019 08:11:50 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e664ab2c823408e7ebcc668ca32d9a340cf178d274c93ff732827772294974d`  
		Last Modified: Tue, 02 Apr 2019 07:51:50 GMT  
		Size: 18.8 MB (18791538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:latest` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:ee04d3a166454e1aa151c3db2d5fc28bf468d1df9a57f89fc2ad692a8d02fb67
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.5 MB (18484324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68b14650c762c979abb0dd8b2ae1b2fad22af5370e47b1939c33a742f2a33da3`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 20 Mar 2019 10:26:00 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Tue, 02 Apr 2019 11:57:08 GMT
COPY file:cf94a8d70533867aec59d12db70096409984bb273547f8c6454e3718598979cb in / 
# Tue, 02 Apr 2019 11:57:09 GMT
EXPOSE 80
# Tue, 02 Apr 2019 11:57:10 GMT
VOLUME [/tmp]
# Tue, 02 Apr 2019 11:57:11 GMT
ENTRYPOINT ["/traefik"]
# Tue, 02 Apr 2019 11:57:11 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.10 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:4e8329e705d7c968f3a066e73302387c1fa99df2d2bd76c27312b2522e19eccc`  
		Last Modified: Wed, 20 Mar 2019 10:27:32 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fad81449bf88a2e22e3eb9445362116e21c5d2975ae90bbec7a87cfa805663c0`  
		Last Modified: Tue, 02 Apr 2019 11:58:47 GMT  
		Size: 18.4 MB (18352302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:maroilles`

```console
$ docker pull traefik@sha256:f2566c50f26be475c4b6aef803662b1809c721cec398899172bf604277f56fda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:maroilles` - linux; amd64

```console
$ docker pull traefik@sha256:b713d421276e33610f7dbbd25b3cc8d030f41277cc82f641316ed737a56d282a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 MB (20164791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb5ce07475c690dbfbc475ebf0b57bf2e8dc5bc9a89dce64616738685e708080`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 19 Mar 2019 21:34:26 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Mon, 01 Apr 2019 23:25:51 GMT
COPY file:82442c484066dcb603a5be72f299226172b964bf443829f2bc3cb98321a3e28d in / 
# Mon, 01 Apr 2019 23:25:51 GMT
EXPOSE 80
# Mon, 01 Apr 2019 23:25:51 GMT
VOLUME [/tmp]
# Mon, 01 Apr 2019 23:25:52 GMT
ENTRYPOINT ["/traefik"]
# Mon, 01 Apr 2019 23:25:52 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.10 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:d572f7c8e98390811ccda70b3cd865d413636517e557d586db244257f25ef6df`  
		Last Modified: Tue, 19 Mar 2019 21:35:04 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bc858cf9fbac23402c8332110827b816e70cd46c661b6a66e7e6b51d836e459`  
		Last Modified: Mon, 01 Apr 2019 23:26:39 GMT  
		Size: 20.0 MB (20032769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:maroilles` - linux; arm variant v6

```console
$ docker pull traefik@sha256:24330678303795425bc9b266fdce965b8e42b198ef9fe9a438b2b6b70169cede
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.9 MB (18923560 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01850066fd84d41b8d868aaed1bd4ed656542b9f56fc59d718c1d39f78b77ebe`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 20 Mar 2019 08:11:08 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Tue, 02 Apr 2019 07:50:41 GMT
COPY file:4b166d1adf566e18c0265294ace79755a8ae153e8f526eec85f8aaa5a34f5ec7 in / 
# Tue, 02 Apr 2019 07:50:42 GMT
EXPOSE 80
# Tue, 02 Apr 2019 07:50:42 GMT
VOLUME [/tmp]
# Tue, 02 Apr 2019 07:50:43 GMT
ENTRYPOINT ["/traefik"]
# Tue, 02 Apr 2019 07:50:43 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.10 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:2b85204ff61918278f159c68b7d115600c72173e7f4db3f92d97b8ef4be1c8e9`  
		Last Modified: Wed, 20 Mar 2019 08:11:50 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e664ab2c823408e7ebcc668ca32d9a340cf178d274c93ff732827772294974d`  
		Last Modified: Tue, 02 Apr 2019 07:51:50 GMT  
		Size: 18.8 MB (18791538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:maroilles` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:ee04d3a166454e1aa151c3db2d5fc28bf468d1df9a57f89fc2ad692a8d02fb67
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.5 MB (18484324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68b14650c762c979abb0dd8b2ae1b2fad22af5370e47b1939c33a742f2a33da3`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 20 Mar 2019 10:26:00 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Tue, 02 Apr 2019 11:57:08 GMT
COPY file:cf94a8d70533867aec59d12db70096409984bb273547f8c6454e3718598979cb in / 
# Tue, 02 Apr 2019 11:57:09 GMT
EXPOSE 80
# Tue, 02 Apr 2019 11:57:10 GMT
VOLUME [/tmp]
# Tue, 02 Apr 2019 11:57:11 GMT
ENTRYPOINT ["/traefik"]
# Tue, 02 Apr 2019 11:57:11 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.10 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:4e8329e705d7c968f3a066e73302387c1fa99df2d2bd76c27312b2522e19eccc`  
		Last Modified: Wed, 20 Mar 2019 10:27:32 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fad81449bf88a2e22e3eb9445362116e21c5d2975ae90bbec7a87cfa805663c0`  
		Last Modified: Tue, 02 Apr 2019 11:58:47 GMT  
		Size: 18.4 MB (18352302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:maroilles-alpine`

```console
$ docker pull traefik@sha256:0531581bde9da0670fc2c7a4e419e1cc38abff74e7ba06410bf2b1b55c70ef15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:maroilles-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:da73b77fb05d8c35bf37143a34911256a5437710d60969afd56f5b71847fd77a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23485866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1930b7508541abea87aad96fda1c625649345127bb39376ad138fe71ac0c0a98`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 02:01:13 GMT
RUN apk --no-cache add ca-certificates tzdata
# Wed, 10 Apr 2019 02:01:29 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.10/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 10 Apr 2019 02:01:30 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 10 Apr 2019 02:01:30 GMT
EXPOSE 80
# Wed, 10 Apr 2019 02:01:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 10 Apr 2019 02:01:30 GMT
CMD ["traefik"]
# Wed, 10 Apr 2019 02:01:31 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.10 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dfd896cc066730f98b1aefc2de088832b91f007ec2c2f53ef92d5001ddb3edf`  
		Last Modified: Wed, 10 Apr 2019 02:02:00 GMT  
		Size: 695.6 KB (695613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de06b56851280bdc0f30da017c2d29b8785dde8bcf2b606e3c6f43569a0cbb73`  
		Last Modified: Wed, 10 Apr 2019 02:02:22 GMT  
		Size: 20.0 MB (20032924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4d82a21fa27eb7b47a2ef70bef4a422e376d68d4c8f180f5194ba60994ad84f`  
		Last Modified: Wed, 10 Apr 2019 02:02:15 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:maroilles-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:4670f5e2da5be470c3fa7f6ae78cdb225a1f89b0345a95f3ab127d43bb947e8b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.0 MB (22033195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a33de8095854a4d018280dddacc655db1465e86ab67f3c7117b938b335a087e5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 09:15:52 GMT
RUN apk --no-cache add ca-certificates tzdata
# Wed, 10 Apr 2019 09:16:12 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.10/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 10 Apr 2019 09:16:13 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 10 Apr 2019 09:16:13 GMT
EXPOSE 80
# Wed, 10 Apr 2019 09:16:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 10 Apr 2019 09:16:14 GMT
CMD ["traefik"]
# Wed, 10 Apr 2019 09:16:14 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.10 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b90ce778eff7cd2e5d262717e5e338956cfbf92843a587a31645f1cec1b5536`  
		Last Modified: Wed, 10 Apr 2019 09:16:33 GMT  
		Size: 697.8 KB (697833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d6245f717c4fdcd96066b55e50ce2290f3b0ff7269a38dd2eebc41580ba9e92`  
		Last Modified: Wed, 10 Apr 2019 09:16:56 GMT  
		Size: 18.8 MB (18791603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:105ff5cea9e815f795c4dd84df17cee298164606feb1ef2a91c0d9765bfdefe7`  
		Last Modified: Wed, 10 Apr 2019 09:16:49 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:maroilles-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:f6ad879899954f56b21128bbeb2c8d760d35e0d2c8c652e445f6c64a8bc9f42f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.7 MB (21739264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:558cc9f2685dc690c8d1ca8dadfbf0ae6c9a0679fa4554ea47449f7507e4540a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 10 Apr 2019 08:49:11 GMT
ADD file:30e0a8ccdca70b20b8ce637f0ba5108157f4ba491447d20aafbe45d82392bd81 in / 
# Wed, 10 Apr 2019 08:49:12 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 09:36:07 GMT
RUN apk --no-cache add ca-certificates tzdata
# Wed, 10 Apr 2019 09:36:37 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.10/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 10 Apr 2019 09:36:38 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 10 Apr 2019 09:36:38 GMT
EXPOSE 80
# Wed, 10 Apr 2019 09:36:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 10 Apr 2019 09:36:40 GMT
CMD ["traefik"]
# Wed, 10 Apr 2019 09:36:40 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.10 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:6f37394be673296a0fdc21b819c5df40431baf7d3af121bee451726dd1457493`  
		Last Modified: Wed, 10 Apr 2019 08:50:38 GMT  
		Size: 2.7 MB (2688778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6b6a9317b7c02cc788a6ba35551c6123602739f7084d0dc6d7727dcedc4a84a`  
		Last Modified: Wed, 10 Apr 2019 09:37:07 GMT  
		Size: 697.7 KB (697724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc826008d08022887b8c8c54fcea827e4b1e8e204a01fe9fbfaf228f67da7fb`  
		Last Modified: Wed, 10 Apr 2019 09:37:36 GMT  
		Size: 18.4 MB (18352441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc83b9105836f45ba501e09e49f84dbf65e41dff44a9db8f07f984964069e446`  
		Last Modified: Wed, 10 Apr 2019 09:37:28 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:maroilles-nanoserver`

```console
$ docker pull traefik@sha256:20f42ab8772342c9f534987e2fcd6f43004562f46d51ef74a5565591075e073a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:maroilles-nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:add0a056a5a371a2836e9b9dd24e45551213af45a2267da62e27feec1c9e3249
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.4 MB (455435633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9d57a27979fe63e900eeddf405608e7d040ba2640d1ae0a7a02fdb05abd1aae`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Tue, 02 Apr 2019 09:17:35 GMT
RUN cmd /S /C #(nop) COPY file:0bbc8a39c96d8e5a4f5c12a7b29e48fec0a673e5d2147b1835e67fe2240b10c4 in \traefik.exe 
# Tue, 02 Apr 2019 09:17:45 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Tue, 02 Apr 2019 09:17:46 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 02 Apr 2019 09:17:47 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.10 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:16be2745a9e19c356c3d0e39205eedd69978836f322c08de9227398c31130071`  
		Last Modified: Tue, 02 Apr 2019 09:19:08 GMT  
		Size: 20.0 MB (20035980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:792624ef3958595dd24291208f96e11a26771b72ade6c7b317fdc52030ea50bb`  
		Last Modified: Tue, 02 Apr 2019 09:19:00 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d28053dd6f94d43497c1a86f7b1c003bbdb90eb4112ebc8779d94a0fa4335e`  
		Last Modified: Tue, 02 Apr 2019 09:19:00 GMT  
		Size: 942.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23404f6a8ee12360687ee599f80402846e7e8116dcefeee764413a92c1eaca60`  
		Last Modified: Tue, 02 Apr 2019 09:19:00 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:maroilles-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:20f42ab8772342c9f534987e2fcd6f43004562f46d51ef74a5565591075e073a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:maroilles-nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:add0a056a5a371a2836e9b9dd24e45551213af45a2267da62e27feec1c9e3249
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.4 MB (455435633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9d57a27979fe63e900eeddf405608e7d040ba2640d1ae0a7a02fdb05abd1aae`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Tue, 02 Apr 2019 09:17:35 GMT
RUN cmd /S /C #(nop) COPY file:0bbc8a39c96d8e5a4f5c12a7b29e48fec0a673e5d2147b1835e67fe2240b10c4 in \traefik.exe 
# Tue, 02 Apr 2019 09:17:45 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Tue, 02 Apr 2019 09:17:46 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 02 Apr 2019 09:17:47 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.10 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:16be2745a9e19c356c3d0e39205eedd69978836f322c08de9227398c31130071`  
		Last Modified: Tue, 02 Apr 2019 09:19:08 GMT  
		Size: 20.0 MB (20035980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:792624ef3958595dd24291208f96e11a26771b72ade6c7b317fdc52030ea50bb`  
		Last Modified: Tue, 02 Apr 2019 09:19:00 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d28053dd6f94d43497c1a86f7b1c003bbdb90eb4112ebc8779d94a0fa4335e`  
		Last Modified: Tue, 02 Apr 2019 09:19:00 GMT  
		Size: 942.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23404f6a8ee12360687ee599f80402846e7e8116dcefeee764413a92c1eaca60`  
		Last Modified: Tue, 02 Apr 2019 09:19:00 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:nanoserver`

```console
$ docker pull traefik@sha256:20f42ab8772342c9f534987e2fcd6f43004562f46d51ef74a5565591075e073a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:add0a056a5a371a2836e9b9dd24e45551213af45a2267da62e27feec1c9e3249
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.4 MB (455435633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9d57a27979fe63e900eeddf405608e7d040ba2640d1ae0a7a02fdb05abd1aae`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Tue, 02 Apr 2019 09:17:35 GMT
RUN cmd /S /C #(nop) COPY file:0bbc8a39c96d8e5a4f5c12a7b29e48fec0a673e5d2147b1835e67fe2240b10c4 in \traefik.exe 
# Tue, 02 Apr 2019 09:17:45 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Tue, 02 Apr 2019 09:17:46 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 02 Apr 2019 09:17:47 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.10 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:16be2745a9e19c356c3d0e39205eedd69978836f322c08de9227398c31130071`  
		Last Modified: Tue, 02 Apr 2019 09:19:08 GMT  
		Size: 20.0 MB (20035980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:792624ef3958595dd24291208f96e11a26771b72ade6c7b317fdc52030ea50bb`  
		Last Modified: Tue, 02 Apr 2019 09:19:00 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d28053dd6f94d43497c1a86f7b1c003bbdb90eb4112ebc8779d94a0fa4335e`  
		Last Modified: Tue, 02 Apr 2019 09:19:00 GMT  
		Size: 942.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23404f6a8ee12360687ee599f80402846e7e8116dcefeee764413a92c1eaca60`  
		Last Modified: Tue, 02 Apr 2019 09:19:00 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:nanoserver-sac2016`

```console
$ docker pull traefik@sha256:20f42ab8772342c9f534987e2fcd6f43004562f46d51ef74a5565591075e073a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:add0a056a5a371a2836e9b9dd24e45551213af45a2267da62e27feec1c9e3249
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.4 MB (455435633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9d57a27979fe63e900eeddf405608e7d040ba2640d1ae0a7a02fdb05abd1aae`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Tue, 02 Apr 2019 09:17:35 GMT
RUN cmd /S /C #(nop) COPY file:0bbc8a39c96d8e5a4f5c12a7b29e48fec0a673e5d2147b1835e67fe2240b10c4 in \traefik.exe 
# Tue, 02 Apr 2019 09:17:45 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Tue, 02 Apr 2019 09:17:46 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 02 Apr 2019 09:17:47 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.10 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:16be2745a9e19c356c3d0e39205eedd69978836f322c08de9227398c31130071`  
		Last Modified: Tue, 02 Apr 2019 09:19:08 GMT  
		Size: 20.0 MB (20035980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:792624ef3958595dd24291208f96e11a26771b72ade6c7b317fdc52030ea50bb`  
		Last Modified: Tue, 02 Apr 2019 09:19:00 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d28053dd6f94d43497c1a86f7b1c003bbdb90eb4112ebc8779d94a0fa4335e`  
		Last Modified: Tue, 02 Apr 2019 09:19:00 GMT  
		Size: 942.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23404f6a8ee12360687ee599f80402846e7e8116dcefeee764413a92c1eaca60`  
		Last Modified: Tue, 02 Apr 2019 09:19:00 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7`

```console
$ docker pull traefik@sha256:f2566c50f26be475c4b6aef803662b1809c721cec398899172bf604277f56fda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.7` - linux; amd64

```console
$ docker pull traefik@sha256:b713d421276e33610f7dbbd25b3cc8d030f41277cc82f641316ed737a56d282a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 MB (20164791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb5ce07475c690dbfbc475ebf0b57bf2e8dc5bc9a89dce64616738685e708080`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 19 Mar 2019 21:34:26 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Mon, 01 Apr 2019 23:25:51 GMT
COPY file:82442c484066dcb603a5be72f299226172b964bf443829f2bc3cb98321a3e28d in / 
# Mon, 01 Apr 2019 23:25:51 GMT
EXPOSE 80
# Mon, 01 Apr 2019 23:25:51 GMT
VOLUME [/tmp]
# Mon, 01 Apr 2019 23:25:52 GMT
ENTRYPOINT ["/traefik"]
# Mon, 01 Apr 2019 23:25:52 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.10 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:d572f7c8e98390811ccda70b3cd865d413636517e557d586db244257f25ef6df`  
		Last Modified: Tue, 19 Mar 2019 21:35:04 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bc858cf9fbac23402c8332110827b816e70cd46c661b6a66e7e6b51d836e459`  
		Last Modified: Mon, 01 Apr 2019 23:26:39 GMT  
		Size: 20.0 MB (20032769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7` - linux; arm variant v6

```console
$ docker pull traefik@sha256:24330678303795425bc9b266fdce965b8e42b198ef9fe9a438b2b6b70169cede
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.9 MB (18923560 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01850066fd84d41b8d868aaed1bd4ed656542b9f56fc59d718c1d39f78b77ebe`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 20 Mar 2019 08:11:08 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Tue, 02 Apr 2019 07:50:41 GMT
COPY file:4b166d1adf566e18c0265294ace79755a8ae153e8f526eec85f8aaa5a34f5ec7 in / 
# Tue, 02 Apr 2019 07:50:42 GMT
EXPOSE 80
# Tue, 02 Apr 2019 07:50:42 GMT
VOLUME [/tmp]
# Tue, 02 Apr 2019 07:50:43 GMT
ENTRYPOINT ["/traefik"]
# Tue, 02 Apr 2019 07:50:43 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.10 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:2b85204ff61918278f159c68b7d115600c72173e7f4db3f92d97b8ef4be1c8e9`  
		Last Modified: Wed, 20 Mar 2019 08:11:50 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e664ab2c823408e7ebcc668ca32d9a340cf178d274c93ff732827772294974d`  
		Last Modified: Tue, 02 Apr 2019 07:51:50 GMT  
		Size: 18.8 MB (18791538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:ee04d3a166454e1aa151c3db2d5fc28bf468d1df9a57f89fc2ad692a8d02fb67
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.5 MB (18484324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68b14650c762c979abb0dd8b2ae1b2fad22af5370e47b1939c33a742f2a33da3`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 20 Mar 2019 10:26:00 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Tue, 02 Apr 2019 11:57:08 GMT
COPY file:cf94a8d70533867aec59d12db70096409984bb273547f8c6454e3718598979cb in / 
# Tue, 02 Apr 2019 11:57:09 GMT
EXPOSE 80
# Tue, 02 Apr 2019 11:57:10 GMT
VOLUME [/tmp]
# Tue, 02 Apr 2019 11:57:11 GMT
ENTRYPOINT ["/traefik"]
# Tue, 02 Apr 2019 11:57:11 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.10 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:4e8329e705d7c968f3a066e73302387c1fa99df2d2bd76c27312b2522e19eccc`  
		Last Modified: Wed, 20 Mar 2019 10:27:32 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fad81449bf88a2e22e3eb9445362116e21c5d2975ae90bbec7a87cfa805663c0`  
		Last Modified: Tue, 02 Apr 2019 11:58:47 GMT  
		Size: 18.4 MB (18352302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7.10`

```console
$ docker pull traefik@sha256:f2566c50f26be475c4b6aef803662b1809c721cec398899172bf604277f56fda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.7.10` - linux; amd64

```console
$ docker pull traefik@sha256:b713d421276e33610f7dbbd25b3cc8d030f41277cc82f641316ed737a56d282a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 MB (20164791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb5ce07475c690dbfbc475ebf0b57bf2e8dc5bc9a89dce64616738685e708080`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 19 Mar 2019 21:34:26 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Mon, 01 Apr 2019 23:25:51 GMT
COPY file:82442c484066dcb603a5be72f299226172b964bf443829f2bc3cb98321a3e28d in / 
# Mon, 01 Apr 2019 23:25:51 GMT
EXPOSE 80
# Mon, 01 Apr 2019 23:25:51 GMT
VOLUME [/tmp]
# Mon, 01 Apr 2019 23:25:52 GMT
ENTRYPOINT ["/traefik"]
# Mon, 01 Apr 2019 23:25:52 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.10 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:d572f7c8e98390811ccda70b3cd865d413636517e557d586db244257f25ef6df`  
		Last Modified: Tue, 19 Mar 2019 21:35:04 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bc858cf9fbac23402c8332110827b816e70cd46c661b6a66e7e6b51d836e459`  
		Last Modified: Mon, 01 Apr 2019 23:26:39 GMT  
		Size: 20.0 MB (20032769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7.10` - linux; arm variant v6

```console
$ docker pull traefik@sha256:24330678303795425bc9b266fdce965b8e42b198ef9fe9a438b2b6b70169cede
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.9 MB (18923560 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01850066fd84d41b8d868aaed1bd4ed656542b9f56fc59d718c1d39f78b77ebe`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 20 Mar 2019 08:11:08 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Tue, 02 Apr 2019 07:50:41 GMT
COPY file:4b166d1adf566e18c0265294ace79755a8ae153e8f526eec85f8aaa5a34f5ec7 in / 
# Tue, 02 Apr 2019 07:50:42 GMT
EXPOSE 80
# Tue, 02 Apr 2019 07:50:42 GMT
VOLUME [/tmp]
# Tue, 02 Apr 2019 07:50:43 GMT
ENTRYPOINT ["/traefik"]
# Tue, 02 Apr 2019 07:50:43 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.10 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:2b85204ff61918278f159c68b7d115600c72173e7f4db3f92d97b8ef4be1c8e9`  
		Last Modified: Wed, 20 Mar 2019 08:11:50 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e664ab2c823408e7ebcc668ca32d9a340cf178d274c93ff732827772294974d`  
		Last Modified: Tue, 02 Apr 2019 07:51:50 GMT  
		Size: 18.8 MB (18791538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7.10` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:ee04d3a166454e1aa151c3db2d5fc28bf468d1df9a57f89fc2ad692a8d02fb67
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.5 MB (18484324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68b14650c762c979abb0dd8b2ae1b2fad22af5370e47b1939c33a742f2a33da3`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 20 Mar 2019 10:26:00 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Tue, 02 Apr 2019 11:57:08 GMT
COPY file:cf94a8d70533867aec59d12db70096409984bb273547f8c6454e3718598979cb in / 
# Tue, 02 Apr 2019 11:57:09 GMT
EXPOSE 80
# Tue, 02 Apr 2019 11:57:10 GMT
VOLUME [/tmp]
# Tue, 02 Apr 2019 11:57:11 GMT
ENTRYPOINT ["/traefik"]
# Tue, 02 Apr 2019 11:57:11 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.10 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:4e8329e705d7c968f3a066e73302387c1fa99df2d2bd76c27312b2522e19eccc`  
		Last Modified: Wed, 20 Mar 2019 10:27:32 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fad81449bf88a2e22e3eb9445362116e21c5d2975ae90bbec7a87cfa805663c0`  
		Last Modified: Tue, 02 Apr 2019 11:58:47 GMT  
		Size: 18.4 MB (18352302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7.10-alpine`

```console
$ docker pull traefik@sha256:0531581bde9da0670fc2c7a4e419e1cc38abff74e7ba06410bf2b1b55c70ef15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.7.10-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:da73b77fb05d8c35bf37143a34911256a5437710d60969afd56f5b71847fd77a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23485866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1930b7508541abea87aad96fda1c625649345127bb39376ad138fe71ac0c0a98`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 02:01:13 GMT
RUN apk --no-cache add ca-certificates tzdata
# Wed, 10 Apr 2019 02:01:29 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.10/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 10 Apr 2019 02:01:30 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 10 Apr 2019 02:01:30 GMT
EXPOSE 80
# Wed, 10 Apr 2019 02:01:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 10 Apr 2019 02:01:30 GMT
CMD ["traefik"]
# Wed, 10 Apr 2019 02:01:31 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.10 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dfd896cc066730f98b1aefc2de088832b91f007ec2c2f53ef92d5001ddb3edf`  
		Last Modified: Wed, 10 Apr 2019 02:02:00 GMT  
		Size: 695.6 KB (695613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de06b56851280bdc0f30da017c2d29b8785dde8bcf2b606e3c6f43569a0cbb73`  
		Last Modified: Wed, 10 Apr 2019 02:02:22 GMT  
		Size: 20.0 MB (20032924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4d82a21fa27eb7b47a2ef70bef4a422e376d68d4c8f180f5194ba60994ad84f`  
		Last Modified: Wed, 10 Apr 2019 02:02:15 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7.10-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:4670f5e2da5be470c3fa7f6ae78cdb225a1f89b0345a95f3ab127d43bb947e8b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.0 MB (22033195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a33de8095854a4d018280dddacc655db1465e86ab67f3c7117b938b335a087e5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 09:15:52 GMT
RUN apk --no-cache add ca-certificates tzdata
# Wed, 10 Apr 2019 09:16:12 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.10/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 10 Apr 2019 09:16:13 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 10 Apr 2019 09:16:13 GMT
EXPOSE 80
# Wed, 10 Apr 2019 09:16:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 10 Apr 2019 09:16:14 GMT
CMD ["traefik"]
# Wed, 10 Apr 2019 09:16:14 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.10 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b90ce778eff7cd2e5d262717e5e338956cfbf92843a587a31645f1cec1b5536`  
		Last Modified: Wed, 10 Apr 2019 09:16:33 GMT  
		Size: 697.8 KB (697833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d6245f717c4fdcd96066b55e50ce2290f3b0ff7269a38dd2eebc41580ba9e92`  
		Last Modified: Wed, 10 Apr 2019 09:16:56 GMT  
		Size: 18.8 MB (18791603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:105ff5cea9e815f795c4dd84df17cee298164606feb1ef2a91c0d9765bfdefe7`  
		Last Modified: Wed, 10 Apr 2019 09:16:49 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7.10-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:f6ad879899954f56b21128bbeb2c8d760d35e0d2c8c652e445f6c64a8bc9f42f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.7 MB (21739264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:558cc9f2685dc690c8d1ca8dadfbf0ae6c9a0679fa4554ea47449f7507e4540a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 10 Apr 2019 08:49:11 GMT
ADD file:30e0a8ccdca70b20b8ce637f0ba5108157f4ba491447d20aafbe45d82392bd81 in / 
# Wed, 10 Apr 2019 08:49:12 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 09:36:07 GMT
RUN apk --no-cache add ca-certificates tzdata
# Wed, 10 Apr 2019 09:36:37 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.10/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 10 Apr 2019 09:36:38 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 10 Apr 2019 09:36:38 GMT
EXPOSE 80
# Wed, 10 Apr 2019 09:36:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 10 Apr 2019 09:36:40 GMT
CMD ["traefik"]
# Wed, 10 Apr 2019 09:36:40 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.10 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:6f37394be673296a0fdc21b819c5df40431baf7d3af121bee451726dd1457493`  
		Last Modified: Wed, 10 Apr 2019 08:50:38 GMT  
		Size: 2.7 MB (2688778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6b6a9317b7c02cc788a6ba35551c6123602739f7084d0dc6d7727dcedc4a84a`  
		Last Modified: Wed, 10 Apr 2019 09:37:07 GMT  
		Size: 697.7 KB (697724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc826008d08022887b8c8c54fcea827e4b1e8e204a01fe9fbfaf228f67da7fb`  
		Last Modified: Wed, 10 Apr 2019 09:37:36 GMT  
		Size: 18.4 MB (18352441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc83b9105836f45ba501e09e49f84dbf65e41dff44a9db8f07f984964069e446`  
		Last Modified: Wed, 10 Apr 2019 09:37:28 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7.10-nanoserver`

```console
$ docker pull traefik@sha256:20f42ab8772342c9f534987e2fcd6f43004562f46d51ef74a5565591075e073a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:v1.7.10-nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:add0a056a5a371a2836e9b9dd24e45551213af45a2267da62e27feec1c9e3249
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.4 MB (455435633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9d57a27979fe63e900eeddf405608e7d040ba2640d1ae0a7a02fdb05abd1aae`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Tue, 02 Apr 2019 09:17:35 GMT
RUN cmd /S /C #(nop) COPY file:0bbc8a39c96d8e5a4f5c12a7b29e48fec0a673e5d2147b1835e67fe2240b10c4 in \traefik.exe 
# Tue, 02 Apr 2019 09:17:45 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Tue, 02 Apr 2019 09:17:46 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 02 Apr 2019 09:17:47 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.10 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:16be2745a9e19c356c3d0e39205eedd69978836f322c08de9227398c31130071`  
		Last Modified: Tue, 02 Apr 2019 09:19:08 GMT  
		Size: 20.0 MB (20035980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:792624ef3958595dd24291208f96e11a26771b72ade6c7b317fdc52030ea50bb`  
		Last Modified: Tue, 02 Apr 2019 09:19:00 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d28053dd6f94d43497c1a86f7b1c003bbdb90eb4112ebc8779d94a0fa4335e`  
		Last Modified: Tue, 02 Apr 2019 09:19:00 GMT  
		Size: 942.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23404f6a8ee12360687ee599f80402846e7e8116dcefeee764413a92c1eaca60`  
		Last Modified: Tue, 02 Apr 2019 09:19:00 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7.10-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:20f42ab8772342c9f534987e2fcd6f43004562f46d51ef74a5565591075e073a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:v1.7.10-nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:add0a056a5a371a2836e9b9dd24e45551213af45a2267da62e27feec1c9e3249
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.4 MB (455435633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9d57a27979fe63e900eeddf405608e7d040ba2640d1ae0a7a02fdb05abd1aae`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Tue, 02 Apr 2019 09:17:35 GMT
RUN cmd /S /C #(nop) COPY file:0bbc8a39c96d8e5a4f5c12a7b29e48fec0a673e5d2147b1835e67fe2240b10c4 in \traefik.exe 
# Tue, 02 Apr 2019 09:17:45 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Tue, 02 Apr 2019 09:17:46 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 02 Apr 2019 09:17:47 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.10 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:16be2745a9e19c356c3d0e39205eedd69978836f322c08de9227398c31130071`  
		Last Modified: Tue, 02 Apr 2019 09:19:08 GMT  
		Size: 20.0 MB (20035980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:792624ef3958595dd24291208f96e11a26771b72ade6c7b317fdc52030ea50bb`  
		Last Modified: Tue, 02 Apr 2019 09:19:00 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d28053dd6f94d43497c1a86f7b1c003bbdb90eb4112ebc8779d94a0fa4335e`  
		Last Modified: Tue, 02 Apr 2019 09:19:00 GMT  
		Size: 942.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23404f6a8ee12360687ee599f80402846e7e8116dcefeee764413a92c1eaca60`  
		Last Modified: Tue, 02 Apr 2019 09:19:00 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7-alpine`

```console
$ docker pull traefik@sha256:0531581bde9da0670fc2c7a4e419e1cc38abff74e7ba06410bf2b1b55c70ef15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.7-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:da73b77fb05d8c35bf37143a34911256a5437710d60969afd56f5b71847fd77a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23485866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1930b7508541abea87aad96fda1c625649345127bb39376ad138fe71ac0c0a98`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 02:01:13 GMT
RUN apk --no-cache add ca-certificates tzdata
# Wed, 10 Apr 2019 02:01:29 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.10/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 10 Apr 2019 02:01:30 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 10 Apr 2019 02:01:30 GMT
EXPOSE 80
# Wed, 10 Apr 2019 02:01:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 10 Apr 2019 02:01:30 GMT
CMD ["traefik"]
# Wed, 10 Apr 2019 02:01:31 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.10 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dfd896cc066730f98b1aefc2de088832b91f007ec2c2f53ef92d5001ddb3edf`  
		Last Modified: Wed, 10 Apr 2019 02:02:00 GMT  
		Size: 695.6 KB (695613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de06b56851280bdc0f30da017c2d29b8785dde8bcf2b606e3c6f43569a0cbb73`  
		Last Modified: Wed, 10 Apr 2019 02:02:22 GMT  
		Size: 20.0 MB (20032924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4d82a21fa27eb7b47a2ef70bef4a422e376d68d4c8f180f5194ba60994ad84f`  
		Last Modified: Wed, 10 Apr 2019 02:02:15 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:4670f5e2da5be470c3fa7f6ae78cdb225a1f89b0345a95f3ab127d43bb947e8b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.0 MB (22033195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a33de8095854a4d018280dddacc655db1465e86ab67f3c7117b938b335a087e5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 09:15:52 GMT
RUN apk --no-cache add ca-certificates tzdata
# Wed, 10 Apr 2019 09:16:12 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.10/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 10 Apr 2019 09:16:13 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 10 Apr 2019 09:16:13 GMT
EXPOSE 80
# Wed, 10 Apr 2019 09:16:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 10 Apr 2019 09:16:14 GMT
CMD ["traefik"]
# Wed, 10 Apr 2019 09:16:14 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.10 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b90ce778eff7cd2e5d262717e5e338956cfbf92843a587a31645f1cec1b5536`  
		Last Modified: Wed, 10 Apr 2019 09:16:33 GMT  
		Size: 697.8 KB (697833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d6245f717c4fdcd96066b55e50ce2290f3b0ff7269a38dd2eebc41580ba9e92`  
		Last Modified: Wed, 10 Apr 2019 09:16:56 GMT  
		Size: 18.8 MB (18791603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:105ff5cea9e815f795c4dd84df17cee298164606feb1ef2a91c0d9765bfdefe7`  
		Last Modified: Wed, 10 Apr 2019 09:16:49 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:f6ad879899954f56b21128bbeb2c8d760d35e0d2c8c652e445f6c64a8bc9f42f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.7 MB (21739264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:558cc9f2685dc690c8d1ca8dadfbf0ae6c9a0679fa4554ea47449f7507e4540a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 10 Apr 2019 08:49:11 GMT
ADD file:30e0a8ccdca70b20b8ce637f0ba5108157f4ba491447d20aafbe45d82392bd81 in / 
# Wed, 10 Apr 2019 08:49:12 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 09:36:07 GMT
RUN apk --no-cache add ca-certificates tzdata
# Wed, 10 Apr 2019 09:36:37 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.10/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 10 Apr 2019 09:36:38 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 10 Apr 2019 09:36:38 GMT
EXPOSE 80
# Wed, 10 Apr 2019 09:36:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 10 Apr 2019 09:36:40 GMT
CMD ["traefik"]
# Wed, 10 Apr 2019 09:36:40 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.10 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:6f37394be673296a0fdc21b819c5df40431baf7d3af121bee451726dd1457493`  
		Last Modified: Wed, 10 Apr 2019 08:50:38 GMT  
		Size: 2.7 MB (2688778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6b6a9317b7c02cc788a6ba35551c6123602739f7084d0dc6d7727dcedc4a84a`  
		Last Modified: Wed, 10 Apr 2019 09:37:07 GMT  
		Size: 697.7 KB (697724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc826008d08022887b8c8c54fcea827e4b1e8e204a01fe9fbfaf228f67da7fb`  
		Last Modified: Wed, 10 Apr 2019 09:37:36 GMT  
		Size: 18.4 MB (18352441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc83b9105836f45ba501e09e49f84dbf65e41dff44a9db8f07f984964069e446`  
		Last Modified: Wed, 10 Apr 2019 09:37:28 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7-nanoserver`

```console
$ docker pull traefik@sha256:20f42ab8772342c9f534987e2fcd6f43004562f46d51ef74a5565591075e073a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:v1.7-nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:add0a056a5a371a2836e9b9dd24e45551213af45a2267da62e27feec1c9e3249
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.4 MB (455435633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9d57a27979fe63e900eeddf405608e7d040ba2640d1ae0a7a02fdb05abd1aae`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Tue, 02 Apr 2019 09:17:35 GMT
RUN cmd /S /C #(nop) COPY file:0bbc8a39c96d8e5a4f5c12a7b29e48fec0a673e5d2147b1835e67fe2240b10c4 in \traefik.exe 
# Tue, 02 Apr 2019 09:17:45 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Tue, 02 Apr 2019 09:17:46 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 02 Apr 2019 09:17:47 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.10 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:16be2745a9e19c356c3d0e39205eedd69978836f322c08de9227398c31130071`  
		Last Modified: Tue, 02 Apr 2019 09:19:08 GMT  
		Size: 20.0 MB (20035980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:792624ef3958595dd24291208f96e11a26771b72ade6c7b317fdc52030ea50bb`  
		Last Modified: Tue, 02 Apr 2019 09:19:00 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d28053dd6f94d43497c1a86f7b1c003bbdb90eb4112ebc8779d94a0fa4335e`  
		Last Modified: Tue, 02 Apr 2019 09:19:00 GMT  
		Size: 942.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23404f6a8ee12360687ee599f80402846e7e8116dcefeee764413a92c1eaca60`  
		Last Modified: Tue, 02 Apr 2019 09:19:00 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:20f42ab8772342c9f534987e2fcd6f43004562f46d51ef74a5565591075e073a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:v1.7-nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:add0a056a5a371a2836e9b9dd24e45551213af45a2267da62e27feec1c9e3249
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.4 MB (455435633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9d57a27979fe63e900eeddf405608e7d040ba2640d1ae0a7a02fdb05abd1aae`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Tue, 02 Apr 2019 09:17:35 GMT
RUN cmd /S /C #(nop) COPY file:0bbc8a39c96d8e5a4f5c12a7b29e48fec0a673e5d2147b1835e67fe2240b10c4 in \traefik.exe 
# Tue, 02 Apr 2019 09:17:45 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Tue, 02 Apr 2019 09:17:46 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 02 Apr 2019 09:17:47 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.10 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:16be2745a9e19c356c3d0e39205eedd69978836f322c08de9227398c31130071`  
		Last Modified: Tue, 02 Apr 2019 09:19:08 GMT  
		Size: 20.0 MB (20035980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:792624ef3958595dd24291208f96e11a26771b72ade6c7b317fdc52030ea50bb`  
		Last Modified: Tue, 02 Apr 2019 09:19:00 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d28053dd6f94d43497c1a86f7b1c003bbdb90eb4112ebc8779d94a0fa4335e`  
		Last Modified: Tue, 02 Apr 2019 09:19:00 GMT  
		Size: 942.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23404f6a8ee12360687ee599f80402846e7e8116dcefeee764413a92c1eaca60`  
		Last Modified: Tue, 02 Apr 2019 09:19:00 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v2.0`

```console
$ docker pull traefik@sha256:f1f02f0aaf88c9ae3886817b1d0f9aea481908fa4e29bafb72b03875f0c5fb77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:v2.0` - linux; amd64

```console
$ docker pull traefik@sha256:7e577295f2aefb8b7037c54afbab8e7b29debedd876ae417ab9bb5d704a937df
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.4 MB (17448159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1653dfd3a96b93feafc6eb9ecb00858089161400739d2612aae34aa14b2b4730`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 19 Mar 2019 21:34:26 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Thu, 18 Apr 2019 00:00:20 GMT
COPY file:6276ff2d0f22504d5f2478b52297ca9943316559452df289d0152d650e097a4b in / 
# Thu, 18 Apr 2019 00:00:20 GMT
EXPOSE 80
# Thu, 18 Apr 2019 00:00:20 GMT
VOLUME [/tmp]
# Thu, 18 Apr 2019 00:00:20 GMT
ENTRYPOINT ["/traefik"]
# Thu, 18 Apr 2019 00:00:21 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha4 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:d572f7c8e98390811ccda70b3cd865d413636517e557d586db244257f25ef6df`  
		Last Modified: Tue, 19 Mar 2019 21:35:04 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7b1ec87dccdc3565126b2306fc184b98172237d9130ccf06d962f5accf26c0f`  
		Last Modified: Thu, 18 Apr 2019 00:00:58 GMT  
		Size: 17.3 MB (17316137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v2.0` - linux; arm variant v6

```console
$ docker pull traefik@sha256:1fa40edbee6bf1eec68b5953384c88a131070c4237b295e9162b90f5e756eac0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.3 MB (16338821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4244adcddffe976da1ad1663fc9bedafee308666f91222b06355928788cd4466`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 20 Mar 2019 08:11:08 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Thu, 18 Apr 2019 08:32:49 GMT
COPY file:8de1a468915584ddfd7edc22a7817cf39eee53c48babade63c877651bf72b19d in / 
# Thu, 18 Apr 2019 08:32:50 GMT
EXPOSE 80
# Thu, 18 Apr 2019 08:32:50 GMT
VOLUME [/tmp]
# Thu, 18 Apr 2019 08:32:50 GMT
ENTRYPOINT ["/traefik"]
# Thu, 18 Apr 2019 08:32:51 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha4 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:2b85204ff61918278f159c68b7d115600c72173e7f4db3f92d97b8ef4be1c8e9`  
		Last Modified: Wed, 20 Mar 2019 08:11:50 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f27df8b6bb5a87b7768f01a1d6d74adc5a651dda5490b82b1eefc579abf308bb`  
		Last Modified: Thu, 18 Apr 2019 08:34:02 GMT  
		Size: 16.2 MB (16206799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v2.0.0-alpha4`

```console
$ docker pull traefik@sha256:f1f02f0aaf88c9ae3886817b1d0f9aea481908fa4e29bafb72b03875f0c5fb77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:v2.0.0-alpha4` - linux; amd64

```console
$ docker pull traefik@sha256:7e577295f2aefb8b7037c54afbab8e7b29debedd876ae417ab9bb5d704a937df
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.4 MB (17448159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1653dfd3a96b93feafc6eb9ecb00858089161400739d2612aae34aa14b2b4730`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 19 Mar 2019 21:34:26 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Thu, 18 Apr 2019 00:00:20 GMT
COPY file:6276ff2d0f22504d5f2478b52297ca9943316559452df289d0152d650e097a4b in / 
# Thu, 18 Apr 2019 00:00:20 GMT
EXPOSE 80
# Thu, 18 Apr 2019 00:00:20 GMT
VOLUME [/tmp]
# Thu, 18 Apr 2019 00:00:20 GMT
ENTRYPOINT ["/traefik"]
# Thu, 18 Apr 2019 00:00:21 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha4 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:d572f7c8e98390811ccda70b3cd865d413636517e557d586db244257f25ef6df`  
		Last Modified: Tue, 19 Mar 2019 21:35:04 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7b1ec87dccdc3565126b2306fc184b98172237d9130ccf06d962f5accf26c0f`  
		Last Modified: Thu, 18 Apr 2019 00:00:58 GMT  
		Size: 17.3 MB (17316137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v2.0.0-alpha4` - linux; arm variant v6

```console
$ docker pull traefik@sha256:1fa40edbee6bf1eec68b5953384c88a131070c4237b295e9162b90f5e756eac0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.3 MB (16338821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4244adcddffe976da1ad1663fc9bedafee308666f91222b06355928788cd4466`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 20 Mar 2019 08:11:08 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Thu, 18 Apr 2019 08:32:49 GMT
COPY file:8de1a468915584ddfd7edc22a7817cf39eee53c48babade63c877651bf72b19d in / 
# Thu, 18 Apr 2019 08:32:50 GMT
EXPOSE 80
# Thu, 18 Apr 2019 08:32:50 GMT
VOLUME [/tmp]
# Thu, 18 Apr 2019 08:32:50 GMT
ENTRYPOINT ["/traefik"]
# Thu, 18 Apr 2019 08:32:51 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha4 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:2b85204ff61918278f159c68b7d115600c72173e7f4db3f92d97b8ef4be1c8e9`  
		Last Modified: Wed, 20 Mar 2019 08:11:50 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f27df8b6bb5a87b7768f01a1d6d74adc5a651dda5490b82b1eefc579abf308bb`  
		Last Modified: Thu, 18 Apr 2019 08:34:02 GMT  
		Size: 16.2 MB (16206799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v2.0.0-alpha4-alpine`

```console
$ docker pull traefik@sha256:91dc99490f97bcac63861bfd804d97c3920f3d8fce27550736f11209c70ba165
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:v2.0.0-alpha4-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:13aac7a3b7eb7dcab2ec161d7716fb6955df786d07748eb98ff9e51a5f4aa5b2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 MB (20769403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e6e45ed43e7beed7f0a9b098f06ac3d84795cf5a84a5a9ab7b0d379aec43d5b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 02:01:13 GMT
RUN apk --no-cache add ca-certificates tzdata
# Thu, 18 Apr 2019 00:00:31 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/containous/traefik/releases/download/v2.0.0-alpha4/traefik_v2.0.0-alpha4_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Thu, 18 Apr 2019 00:00:31 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Thu, 18 Apr 2019 00:00:31 GMT
EXPOSE 80
# Thu, 18 Apr 2019 00:00:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 18 Apr 2019 00:00:31 GMT
CMD ["traefik"]
# Thu, 18 Apr 2019 00:00:31 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha4 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dfd896cc066730f98b1aefc2de088832b91f007ec2c2f53ef92d5001ddb3edf`  
		Last Modified: Wed, 10 Apr 2019 02:02:00 GMT  
		Size: 695.6 KB (695613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3365942d1f6222d33908578b295a7bfd26ef91502febfae8ba024d260f9d48da`  
		Last Modified: Thu, 18 Apr 2019 00:01:07 GMT  
		Size: 17.3 MB (17316460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8198b15db7e0f1b7164cb35d175795a9f395d1f33b9ab8006971d91ff815f130`  
		Last Modified: Thu, 18 Apr 2019 00:01:04 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v2.0.0-alpha4-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:ad6375d899c02498ebffbc49149e71c7b5795833aa8e70637936a29b2916f9da
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.4 MB (19448468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0498884157fac3022dd98650986acfc1417e0aa383ae9a7ea9fbd97a705f5afb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 09:15:52 GMT
RUN apk --no-cache add ca-certificates tzdata
# Thu, 18 Apr 2019 08:32:59 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/containous/traefik/releases/download/v2.0.0-alpha4/traefik_v2.0.0-alpha4_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Thu, 18 Apr 2019 08:33:00 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Thu, 18 Apr 2019 08:33:01 GMT
EXPOSE 80
# Thu, 18 Apr 2019 08:33:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 18 Apr 2019 08:33:01 GMT
CMD ["traefik"]
# Thu, 18 Apr 2019 08:33:02 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha4 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b90ce778eff7cd2e5d262717e5e338956cfbf92843a587a31645f1cec1b5536`  
		Last Modified: Wed, 10 Apr 2019 09:16:33 GMT  
		Size: 697.8 KB (697833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec3070869560d3f2ce061eebf47aeeb24292fc7fe086027e9b16691600091aa3`  
		Last Modified: Thu, 18 Apr 2019 08:34:17 GMT  
		Size: 16.2 MB (16206872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8ef16a0239fc7797039c7bf07b17b30978dcb50671b2112a1fc98c5aa16403d`  
		Last Modified: Thu, 18 Apr 2019 08:34:11 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v2.0.0-alpha4-nanoserver`

```console
$ docker pull traefik@sha256:3e58963fe20afc73d4f3af533233f03d22166812bc4b1e5678e4c71375567c4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:v2.0.0-alpha4-nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:282a68de735b8569af06f1b246c2048d20652c74aea25c4dec7a48d89a61102d
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.7 MB (452699359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53af306dc84bf9d777e23b9751a8ebc8828345e13e2849def961e15d6a3483bd`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Thu, 18 Apr 2019 09:31:30 GMT
RUN cmd /S /C #(nop) COPY file:f5d7bc66858ac5145aa17aaf5598825dd7d56948e3d950ea0bedc5d718ec029a in \traefik.exe 
# Thu, 18 Apr 2019 09:31:38 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Thu, 18 Apr 2019 09:31:39 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Thu, 18 Apr 2019 09:31:40 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha4 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:538e5a9cc836f82795394287767591a4b93ae6a1dcd2233a0ba99210816cae9b`  
		Last Modified: Thu, 18 Apr 2019 09:32:13 GMT  
		Size: 17.3 MB (17299694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:492626a8f1da221547e14ae8338c7f9fb59a792c5221ff8dcaf22f44db0437d0`  
		Last Modified: Thu, 18 Apr 2019 09:32:09 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dd5012cac867a3f09f87478eece96a96096eed50c30b9e46144e92c640f1dd9`  
		Last Modified: Thu, 18 Apr 2019 09:32:09 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43f63b6c096f1133f75e4d3a69b639900dc820dc2d9d2578a6dbe58244525042`  
		Last Modified: Thu, 18 Apr 2019 09:32:10 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v2.0.0-alpha4-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:3e58963fe20afc73d4f3af533233f03d22166812bc4b1e5678e4c71375567c4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:v2.0.0-alpha4-nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:282a68de735b8569af06f1b246c2048d20652c74aea25c4dec7a48d89a61102d
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.7 MB (452699359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53af306dc84bf9d777e23b9751a8ebc8828345e13e2849def961e15d6a3483bd`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Thu, 18 Apr 2019 09:31:30 GMT
RUN cmd /S /C #(nop) COPY file:f5d7bc66858ac5145aa17aaf5598825dd7d56948e3d950ea0bedc5d718ec029a in \traefik.exe 
# Thu, 18 Apr 2019 09:31:38 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Thu, 18 Apr 2019 09:31:39 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Thu, 18 Apr 2019 09:31:40 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha4 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:538e5a9cc836f82795394287767591a4b93ae6a1dcd2233a0ba99210816cae9b`  
		Last Modified: Thu, 18 Apr 2019 09:32:13 GMT  
		Size: 17.3 MB (17299694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:492626a8f1da221547e14ae8338c7f9fb59a792c5221ff8dcaf22f44db0437d0`  
		Last Modified: Thu, 18 Apr 2019 09:32:09 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dd5012cac867a3f09f87478eece96a96096eed50c30b9e46144e92c640f1dd9`  
		Last Modified: Thu, 18 Apr 2019 09:32:09 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43f63b6c096f1133f75e4d3a69b639900dc820dc2d9d2578a6dbe58244525042`  
		Last Modified: Thu, 18 Apr 2019 09:32:10 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v2.0-alpine`

```console
$ docker pull traefik@sha256:91dc99490f97bcac63861bfd804d97c3920f3d8fce27550736f11209c70ba165
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:v2.0-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:13aac7a3b7eb7dcab2ec161d7716fb6955df786d07748eb98ff9e51a5f4aa5b2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 MB (20769403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e6e45ed43e7beed7f0a9b098f06ac3d84795cf5a84a5a9ab7b0d379aec43d5b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 02:01:13 GMT
RUN apk --no-cache add ca-certificates tzdata
# Thu, 18 Apr 2019 00:00:31 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/containous/traefik/releases/download/v2.0.0-alpha4/traefik_v2.0.0-alpha4_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Thu, 18 Apr 2019 00:00:31 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Thu, 18 Apr 2019 00:00:31 GMT
EXPOSE 80
# Thu, 18 Apr 2019 00:00:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 18 Apr 2019 00:00:31 GMT
CMD ["traefik"]
# Thu, 18 Apr 2019 00:00:31 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha4 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dfd896cc066730f98b1aefc2de088832b91f007ec2c2f53ef92d5001ddb3edf`  
		Last Modified: Wed, 10 Apr 2019 02:02:00 GMT  
		Size: 695.6 KB (695613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3365942d1f6222d33908578b295a7bfd26ef91502febfae8ba024d260f9d48da`  
		Last Modified: Thu, 18 Apr 2019 00:01:07 GMT  
		Size: 17.3 MB (17316460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8198b15db7e0f1b7164cb35d175795a9f395d1f33b9ab8006971d91ff815f130`  
		Last Modified: Thu, 18 Apr 2019 00:01:04 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v2.0-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:ad6375d899c02498ebffbc49149e71c7b5795833aa8e70637936a29b2916f9da
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.4 MB (19448468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0498884157fac3022dd98650986acfc1417e0aa383ae9a7ea9fbd97a705f5afb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 09:15:52 GMT
RUN apk --no-cache add ca-certificates tzdata
# Thu, 18 Apr 2019 08:32:59 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/containous/traefik/releases/download/v2.0.0-alpha4/traefik_v2.0.0-alpha4_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Thu, 18 Apr 2019 08:33:00 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Thu, 18 Apr 2019 08:33:01 GMT
EXPOSE 80
# Thu, 18 Apr 2019 08:33:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 18 Apr 2019 08:33:01 GMT
CMD ["traefik"]
# Thu, 18 Apr 2019 08:33:02 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha4 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b90ce778eff7cd2e5d262717e5e338956cfbf92843a587a31645f1cec1b5536`  
		Last Modified: Wed, 10 Apr 2019 09:16:33 GMT  
		Size: 697.8 KB (697833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec3070869560d3f2ce061eebf47aeeb24292fc7fe086027e9b16691600091aa3`  
		Last Modified: Thu, 18 Apr 2019 08:34:17 GMT  
		Size: 16.2 MB (16206872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8ef16a0239fc7797039c7bf07b17b30978dcb50671b2112a1fc98c5aa16403d`  
		Last Modified: Thu, 18 Apr 2019 08:34:11 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v2.0-nanoserver`

```console
$ docker pull traefik@sha256:3e58963fe20afc73d4f3af533233f03d22166812bc4b1e5678e4c71375567c4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:v2.0-nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:282a68de735b8569af06f1b246c2048d20652c74aea25c4dec7a48d89a61102d
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.7 MB (452699359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53af306dc84bf9d777e23b9751a8ebc8828345e13e2849def961e15d6a3483bd`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Thu, 18 Apr 2019 09:31:30 GMT
RUN cmd /S /C #(nop) COPY file:f5d7bc66858ac5145aa17aaf5598825dd7d56948e3d950ea0bedc5d718ec029a in \traefik.exe 
# Thu, 18 Apr 2019 09:31:38 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Thu, 18 Apr 2019 09:31:39 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Thu, 18 Apr 2019 09:31:40 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha4 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:538e5a9cc836f82795394287767591a4b93ae6a1dcd2233a0ba99210816cae9b`  
		Last Modified: Thu, 18 Apr 2019 09:32:13 GMT  
		Size: 17.3 MB (17299694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:492626a8f1da221547e14ae8338c7f9fb59a792c5221ff8dcaf22f44db0437d0`  
		Last Modified: Thu, 18 Apr 2019 09:32:09 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dd5012cac867a3f09f87478eece96a96096eed50c30b9e46144e92c640f1dd9`  
		Last Modified: Thu, 18 Apr 2019 09:32:09 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43f63b6c096f1133f75e4d3a69b639900dc820dc2d9d2578a6dbe58244525042`  
		Last Modified: Thu, 18 Apr 2019 09:32:10 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v2.0-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:3e58963fe20afc73d4f3af533233f03d22166812bc4b1e5678e4c71375567c4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:v2.0-nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:282a68de735b8569af06f1b246c2048d20652c74aea25c4dec7a48d89a61102d
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.7 MB (452699359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53af306dc84bf9d777e23b9751a8ebc8828345e13e2849def961e15d6a3483bd`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Thu, 18 Apr 2019 09:31:30 GMT
RUN cmd /S /C #(nop) COPY file:f5d7bc66858ac5145aa17aaf5598825dd7d56948e3d950ea0bedc5d718ec029a in \traefik.exe 
# Thu, 18 Apr 2019 09:31:38 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Thu, 18 Apr 2019 09:31:39 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Thu, 18 Apr 2019 09:31:40 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha4 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:538e5a9cc836f82795394287767591a4b93ae6a1dcd2233a0ba99210816cae9b`  
		Last Modified: Thu, 18 Apr 2019 09:32:13 GMT  
		Size: 17.3 MB (17299694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:492626a8f1da221547e14ae8338c7f9fb59a792c5221ff8dcaf22f44db0437d0`  
		Last Modified: Thu, 18 Apr 2019 09:32:09 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dd5012cac867a3f09f87478eece96a96096eed50c30b9e46144e92c640f1dd9`  
		Last Modified: Thu, 18 Apr 2019 09:32:09 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43f63b6c096f1133f75e4d3a69b639900dc820dc2d9d2578a6dbe58244525042`  
		Last Modified: Thu, 18 Apr 2019 09:32:10 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
