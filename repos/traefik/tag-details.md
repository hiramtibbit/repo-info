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
-	[`traefik:2.0.0-alpha3`](#traefik200-alpha3)
-	[`traefik:2.0.0-alpha3-alpine`](#traefik200-alpha3-alpine)
-	[`traefik:2.0.0-alpha3-nanoserver`](#traefik200-alpha3-nanoserver)
-	[`traefik:2.0.0-alpha3-nanoserver-sac2016`](#traefik200-alpha3-nanoserver-sac2016)
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
-	[`traefik:v2.0.0-alpha3`](#traefikv200-alpha3)
-	[`traefik:v2.0.0-alpha3-alpine`](#traefikv200-alpha3-alpine)
-	[`traefik:v2.0.0-alpha3-nanoserver`](#traefikv200-alpha3-nanoserver)
-	[`traefik:v2.0.0-alpha3-nanoserver-sac2016`](#traefikv200-alpha3-nanoserver-sac2016)
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
$ docker pull traefik@sha256:e1f955ae485db473e8fdac0367841c3975da99a8311f75868ac7902f14d5b42f
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
$ docker pull traefik@sha256:36110e67e765ac0054aeafb08e9046dd69ece4215ea81dcfca4e84e4b3ae70b4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.0 MB (22030457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16893f32b7430219006e390cd04292a7b0e73386826dda38d0533e8176e8aec5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Wed, 20 Mar 2019 08:11:18 GMT
RUN apk --no-cache add ca-certificates tzdata
# Tue, 02 Apr 2019 07:50:53 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.10/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 02 Apr 2019 07:50:53 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Tue, 02 Apr 2019 07:50:54 GMT
EXPOSE 80
# Tue, 02 Apr 2019 07:50:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 02 Apr 2019 07:50:55 GMT
CMD ["traefik"]
# Tue, 02 Apr 2019 07:50:55 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.10 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6314be2c2dcc3c8a055f297334197e12c827db9ea8694abfa1403a33ef05cff4`  
		Last Modified: Wed, 20 Mar 2019 08:12:04 GMT  
		Size: 697.8 KB (697849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d0f238fc8ef931df7ff10b1b00eb219d505237ac0d049520b26bf078d6ea5e6`  
		Last Modified: Tue, 02 Apr 2019 07:52:08 GMT  
		Size: 18.8 MB (18791614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a740ccdcb2ab3297fc866d0121729ce92ed1a703aa3363df0330085a2f50444`  
		Last Modified: Tue, 02 Apr 2019 07:52:01 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7.10-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:2b7675b4620763ae7fa7f2e643c349c8a986647109e09c7b1e836b77988decf4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.7 MB (21738418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2d0098aef366723c4119e6570a98bc5825f7dd2c19372d3124e5dcb21fac48a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Wed, 20 Mar 2019 10:26:26 GMT
RUN apk --no-cache add ca-certificates tzdata
# Tue, 02 Apr 2019 11:57:28 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.10/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 02 Apr 2019 11:57:29 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Tue, 02 Apr 2019 11:57:30 GMT
EXPOSE 80
# Tue, 02 Apr 2019 11:57:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 02 Apr 2019 11:57:31 GMT
CMD ["traefik"]
# Tue, 02 Apr 2019 11:57:32 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.10 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c06e367c47bf6fdf493d111d7a35959ef3cebd22a8e0a4c3c560afe5c23dbcc4`  
		Last Modified: Wed, 20 Mar 2019 10:27:57 GMT  
		Size: 697.7 KB (697719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5212da0aa90307448e4a6fe21f8afc7ef5ce84ee52e0e8910ab9cd92a4d8f563`  
		Last Modified: Tue, 02 Apr 2019 11:59:10 GMT  
		Size: 18.4 MB (18352441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b43d398eebfa2baef84401599bb300eb1839a5073ef471ca9b1eebbec169a10`  
		Last Modified: Tue, 02 Apr 2019 11:59:02 GMT  
		Size: 319.0 B  
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
$ docker pull traefik@sha256:e1f955ae485db473e8fdac0367841c3975da99a8311f75868ac7902f14d5b42f
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
$ docker pull traefik@sha256:36110e67e765ac0054aeafb08e9046dd69ece4215ea81dcfca4e84e4b3ae70b4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.0 MB (22030457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16893f32b7430219006e390cd04292a7b0e73386826dda38d0533e8176e8aec5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Wed, 20 Mar 2019 08:11:18 GMT
RUN apk --no-cache add ca-certificates tzdata
# Tue, 02 Apr 2019 07:50:53 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.10/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 02 Apr 2019 07:50:53 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Tue, 02 Apr 2019 07:50:54 GMT
EXPOSE 80
# Tue, 02 Apr 2019 07:50:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 02 Apr 2019 07:50:55 GMT
CMD ["traefik"]
# Tue, 02 Apr 2019 07:50:55 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.10 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6314be2c2dcc3c8a055f297334197e12c827db9ea8694abfa1403a33ef05cff4`  
		Last Modified: Wed, 20 Mar 2019 08:12:04 GMT  
		Size: 697.8 KB (697849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d0f238fc8ef931df7ff10b1b00eb219d505237ac0d049520b26bf078d6ea5e6`  
		Last Modified: Tue, 02 Apr 2019 07:52:08 GMT  
		Size: 18.8 MB (18791614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a740ccdcb2ab3297fc866d0121729ce92ed1a703aa3363df0330085a2f50444`  
		Last Modified: Tue, 02 Apr 2019 07:52:01 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:2b7675b4620763ae7fa7f2e643c349c8a986647109e09c7b1e836b77988decf4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.7 MB (21738418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2d0098aef366723c4119e6570a98bc5825f7dd2c19372d3124e5dcb21fac48a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Wed, 20 Mar 2019 10:26:26 GMT
RUN apk --no-cache add ca-certificates tzdata
# Tue, 02 Apr 2019 11:57:28 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.10/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 02 Apr 2019 11:57:29 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Tue, 02 Apr 2019 11:57:30 GMT
EXPOSE 80
# Tue, 02 Apr 2019 11:57:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 02 Apr 2019 11:57:31 GMT
CMD ["traefik"]
# Tue, 02 Apr 2019 11:57:32 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.10 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c06e367c47bf6fdf493d111d7a35959ef3cebd22a8e0a4c3c560afe5c23dbcc4`  
		Last Modified: Wed, 20 Mar 2019 10:27:57 GMT  
		Size: 697.7 KB (697719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5212da0aa90307448e4a6fe21f8afc7ef5ce84ee52e0e8910ab9cd92a4d8f563`  
		Last Modified: Tue, 02 Apr 2019 11:59:10 GMT  
		Size: 18.4 MB (18352441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b43d398eebfa2baef84401599bb300eb1839a5073ef471ca9b1eebbec169a10`  
		Last Modified: Tue, 02 Apr 2019 11:59:02 GMT  
		Size: 319.0 B  
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
$ docker pull traefik@sha256:a8ced49825b3eb4ffee7d7c2a534a80d3d663acf6e5d5be647ec98f90e941f09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:2.0` - linux; amd64

```console
$ docker pull traefik@sha256:3d226c81544a5e2b89e49b08920700b81f23bfcfac945bad8fe517603535f4db
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.4 MB (17363031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25d98378e8e5c489fe6a6bf9e36619396f3190c163fd2b6539d640312f5444d1`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 19 Mar 2019 21:34:26 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Mon, 01 Apr 2019 23:25:33 GMT
COPY file:be85656df6d46b00ca55821f6b9f3f644d0f796050faea5d6166a3b2d32939c9 in / 
# Mon, 01 Apr 2019 23:25:33 GMT
EXPOSE 80
# Mon, 01 Apr 2019 23:25:34 GMT
VOLUME [/tmp]
# Mon, 01 Apr 2019 23:25:34 GMT
ENTRYPOINT ["/traefik"]
# Mon, 01 Apr 2019 23:25:34 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v2.0.0-alpha3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:d572f7c8e98390811ccda70b3cd865d413636517e557d586db244257f25ef6df`  
		Last Modified: Tue, 19 Mar 2019 21:35:04 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f77a3e21df160a4038d9eab34b8caf446405aba5c2e0df2336e394e24be95973`  
		Last Modified: Mon, 01 Apr 2019 23:26:16 GMT  
		Size: 17.2 MB (17231009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:2.0` - linux; arm variant v6

```console
$ docker pull traefik@sha256:6a7380197444c20905b78d05a8b4d875e43411834ad7bfcedb4d3af0d8b74343
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.3 MB (16256124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77467825f15991820281388b5e9262a33cda535dc35c2addf88a134916e8e79c`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 20 Mar 2019 08:11:08 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Tue, 02 Apr 2019 07:50:09 GMT
COPY file:6f475f414462fa7e4122ab048c44ce84759345791554238c1ccb7632e1675997 in / 
# Tue, 02 Apr 2019 07:50:10 GMT
EXPOSE 80
# Tue, 02 Apr 2019 07:50:11 GMT
VOLUME [/tmp]
# Tue, 02 Apr 2019 07:50:11 GMT
ENTRYPOINT ["/traefik"]
# Tue, 02 Apr 2019 07:50:12 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v2.0.0-alpha3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:2b85204ff61918278f159c68b7d115600c72173e7f4db3f92d97b8ef4be1c8e9`  
		Last Modified: Wed, 20 Mar 2019 08:11:50 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c48d9caef4adc9597bc988ec9ab1c6159ccc0080441d95247febb902cbcffc1c`  
		Last Modified: Tue, 02 Apr 2019 07:51:20 GMT  
		Size: 16.1 MB (16124102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:2.0` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:edba110a3435a4df87452c4596a53b6b2efd2e604fe53fa723d8856149d61c57
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.0 MB (15986324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:232f6146a5dbd7151566da880f1b3c1ad50912ffdfe87f2bc2e8949816f5d64e`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 20 Mar 2019 10:26:00 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Tue, 02 Apr 2019 11:56:25 GMT
COPY file:380a9176b4e6441a396b9dbceb40197fe6b849b2c84d139bc53f643fe071ff01 in / 
# Tue, 02 Apr 2019 11:56:26 GMT
EXPOSE 80
# Tue, 02 Apr 2019 11:56:27 GMT
VOLUME [/tmp]
# Tue, 02 Apr 2019 11:56:28 GMT
ENTRYPOINT ["/traefik"]
# Tue, 02 Apr 2019 11:56:29 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v2.0.0-alpha3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:4e8329e705d7c968f3a066e73302387c1fa99df2d2bd76c27312b2522e19eccc`  
		Last Modified: Wed, 20 Mar 2019 10:27:32 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd5b29aa83eed6d73ac50fdf451d4c5152273159c1a9d89a9eef56282d2e7958`  
		Last Modified: Tue, 02 Apr 2019 11:58:06 GMT  
		Size: 15.9 MB (15854302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:2.0.0-alpha3`

```console
$ docker pull traefik@sha256:a8ced49825b3eb4ffee7d7c2a534a80d3d663acf6e5d5be647ec98f90e941f09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:2.0.0-alpha3` - linux; amd64

```console
$ docker pull traefik@sha256:3d226c81544a5e2b89e49b08920700b81f23bfcfac945bad8fe517603535f4db
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.4 MB (17363031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25d98378e8e5c489fe6a6bf9e36619396f3190c163fd2b6539d640312f5444d1`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 19 Mar 2019 21:34:26 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Mon, 01 Apr 2019 23:25:33 GMT
COPY file:be85656df6d46b00ca55821f6b9f3f644d0f796050faea5d6166a3b2d32939c9 in / 
# Mon, 01 Apr 2019 23:25:33 GMT
EXPOSE 80
# Mon, 01 Apr 2019 23:25:34 GMT
VOLUME [/tmp]
# Mon, 01 Apr 2019 23:25:34 GMT
ENTRYPOINT ["/traefik"]
# Mon, 01 Apr 2019 23:25:34 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v2.0.0-alpha3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:d572f7c8e98390811ccda70b3cd865d413636517e557d586db244257f25ef6df`  
		Last Modified: Tue, 19 Mar 2019 21:35:04 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f77a3e21df160a4038d9eab34b8caf446405aba5c2e0df2336e394e24be95973`  
		Last Modified: Mon, 01 Apr 2019 23:26:16 GMT  
		Size: 17.2 MB (17231009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:2.0.0-alpha3` - linux; arm variant v6

```console
$ docker pull traefik@sha256:6a7380197444c20905b78d05a8b4d875e43411834ad7bfcedb4d3af0d8b74343
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.3 MB (16256124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77467825f15991820281388b5e9262a33cda535dc35c2addf88a134916e8e79c`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 20 Mar 2019 08:11:08 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Tue, 02 Apr 2019 07:50:09 GMT
COPY file:6f475f414462fa7e4122ab048c44ce84759345791554238c1ccb7632e1675997 in / 
# Tue, 02 Apr 2019 07:50:10 GMT
EXPOSE 80
# Tue, 02 Apr 2019 07:50:11 GMT
VOLUME [/tmp]
# Tue, 02 Apr 2019 07:50:11 GMT
ENTRYPOINT ["/traefik"]
# Tue, 02 Apr 2019 07:50:12 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v2.0.0-alpha3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:2b85204ff61918278f159c68b7d115600c72173e7f4db3f92d97b8ef4be1c8e9`  
		Last Modified: Wed, 20 Mar 2019 08:11:50 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c48d9caef4adc9597bc988ec9ab1c6159ccc0080441d95247febb902cbcffc1c`  
		Last Modified: Tue, 02 Apr 2019 07:51:20 GMT  
		Size: 16.1 MB (16124102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:2.0.0-alpha3` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:edba110a3435a4df87452c4596a53b6b2efd2e604fe53fa723d8856149d61c57
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.0 MB (15986324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:232f6146a5dbd7151566da880f1b3c1ad50912ffdfe87f2bc2e8949816f5d64e`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 20 Mar 2019 10:26:00 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Tue, 02 Apr 2019 11:56:25 GMT
COPY file:380a9176b4e6441a396b9dbceb40197fe6b849b2c84d139bc53f643fe071ff01 in / 
# Tue, 02 Apr 2019 11:56:26 GMT
EXPOSE 80
# Tue, 02 Apr 2019 11:56:27 GMT
VOLUME [/tmp]
# Tue, 02 Apr 2019 11:56:28 GMT
ENTRYPOINT ["/traefik"]
# Tue, 02 Apr 2019 11:56:29 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v2.0.0-alpha3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:4e8329e705d7c968f3a066e73302387c1fa99df2d2bd76c27312b2522e19eccc`  
		Last Modified: Wed, 20 Mar 2019 10:27:32 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd5b29aa83eed6d73ac50fdf451d4c5152273159c1a9d89a9eef56282d2e7958`  
		Last Modified: Tue, 02 Apr 2019 11:58:06 GMT  
		Size: 15.9 MB (15854302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:2.0.0-alpha3-alpine`

```console
$ docker pull traefik@sha256:d2918752540bc7e35be23d13c2bbf1a7899f77c85b902c51c6804c79373599a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:2.0.0-alpha3-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:ede672de72d65c1f52cb6790a91672198af661204882d4523f67912b1d6d9717
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 MB (20683899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dc5ce0681f93c13b6a41146220721558ff92af86ce81a1261e21a8a8b09ee1c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 02:01:13 GMT
RUN apk --no-cache add ca-certificates tzdata
# Wed, 10 Apr 2019 02:01:16 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/containous/traefik/releases/download/v2.0.0-alpha3/traefik_v2.0.0-alpha3_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Wed, 10 Apr 2019 02:01:16 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 10 Apr 2019 02:01:17 GMT
EXPOSE 80
# Wed, 10 Apr 2019 02:01:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 10 Apr 2019 02:01:17 GMT
CMD ["traefik"]
# Wed, 10 Apr 2019 02:01:18 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v2.0.0-alpha3 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:62c17a140dd26d78ed1a188b962b494b07c5525122ecc2fdb9234786c99667d3`  
		Last Modified: Wed, 10 Apr 2019 02:02:05 GMT  
		Size: 17.2 MB (17230959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dae03f04e8abd467d5eba187102cd0e9082fea7a9606848d4c6589843b83802f`  
		Last Modified: Wed, 10 Apr 2019 02:01:59 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:2.0.0-alpha3-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:ac2285fc17fed1fa2512f43389c8bb0f94477fe667f41b301ab93405e61a2dd7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.4 MB (19363146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb93aac9d49c55af792275842bf4a3a987fbfe4b1db6f529940a65c74b920ade`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Wed, 20 Mar 2019 08:11:18 GMT
RUN apk --no-cache add ca-certificates tzdata
# Tue, 02 Apr 2019 07:50:21 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/containous/traefik/releases/download/v2.0.0-alpha3/traefik_v2.0.0-alpha3_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Tue, 02 Apr 2019 07:50:22 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Tue, 02 Apr 2019 07:50:22 GMT
EXPOSE 80
# Tue, 02 Apr 2019 07:50:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 02 Apr 2019 07:50:23 GMT
CMD ["traefik"]
# Tue, 02 Apr 2019 07:50:23 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v2.0.0-alpha3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6314be2c2dcc3c8a055f297334197e12c827db9ea8694abfa1403a33ef05cff4`  
		Last Modified: Wed, 20 Mar 2019 08:12:04 GMT  
		Size: 697.8 KB (697849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84a743b632ebad002b41af7259bf4db098df4a0c77d9cf797836c2babc4f07fe`  
		Last Modified: Tue, 02 Apr 2019 07:51:34 GMT  
		Size: 16.1 MB (16124304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b90db1d5757824e0bbf292c2657312384cec9239a7b599a48db4d7af53ece288`  
		Last Modified: Tue, 02 Apr 2019 07:51:29 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:2.0.0-alpha3-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:06300011900b2aa63af358977992a30bc8d15ed00e59b53a76d1761b890a30a2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.2 MB (19240410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfcd0b085b14af5255cca1fd53274471bf0b86d82608eece368ba42d23ccaf93`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Wed, 20 Mar 2019 10:26:26 GMT
RUN apk --no-cache add ca-certificates tzdata
# Tue, 02 Apr 2019 11:56:42 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/containous/traefik/releases/download/v2.0.0-alpha3/traefik_v2.0.0-alpha3_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Tue, 02 Apr 2019 11:56:43 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Tue, 02 Apr 2019 11:56:44 GMT
EXPOSE 80
# Tue, 02 Apr 2019 11:56:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 02 Apr 2019 11:56:45 GMT
CMD ["traefik"]
# Tue, 02 Apr 2019 11:56:46 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v2.0.0-alpha3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c06e367c47bf6fdf493d111d7a35959ef3cebd22a8e0a4c3c560afe5c23dbcc4`  
		Last Modified: Wed, 20 Mar 2019 10:27:57 GMT  
		Size: 697.7 KB (697719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eddcc93b968c5338a8eee3366f2fb4582d34b2fc9cee432b6061453453dfc15`  
		Last Modified: Tue, 02 Apr 2019 11:58:25 GMT  
		Size: 15.9 MB (15854431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8decff9af9aff0e80bf1ec19c4ce89d15e0c6286ac1031eb28e385aca9596442`  
		Last Modified: Tue, 02 Apr 2019 11:58:19 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:2.0.0-alpha3-nanoserver`

```console
$ docker pull traefik@sha256:1bde70b3ce0f9b2bde32a954873096d7d2d2121bf3f19eef4b37867a3a506e28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:2.0.0-alpha3-nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:d7a8f4eaf5d720815db11f1b99bfba48df7b240dbb079fc190ec1341c9dac61a
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.6 MB (452618280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49f8107c75d440f4141ac7ec46c2e79dddbeecc0d92f2927000bc0d2b9af6cf0`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Tue, 02 Apr 2019 09:17:17 GMT
RUN cmd /S /C #(nop) COPY file:098a3abb192e02b73ce743fc9c3d574580a52476f26f04f3f915217170b159da in \traefik.exe 
# Tue, 02 Apr 2019 09:17:23 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Tue, 02 Apr 2019 09:17:25 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 02 Apr 2019 09:17:26 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v2.0.0-alpha3 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:e3b1d73100208feba6c4a54d481f6ba1a0636595b6d22e89ebca4f344cb1224b`  
		Last Modified: Tue, 02 Apr 2019 09:18:19 GMT  
		Size: 17.2 MB (17218620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc7bc2c268c946d742ed9f7431d4c36719e2841a545362626163f6adedd9741e`  
		Last Modified: Tue, 02 Apr 2019 09:18:12 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc4278fd6c5e5ed76342ab36b6667acce57e1b19f52ce0aead02d9cf5cf3cfa5`  
		Last Modified: Tue, 02 Apr 2019 09:18:12 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f0dcdf498be55860735a619cf6cbea1561be208db8978bb58bb44bef094087`  
		Last Modified: Tue, 02 Apr 2019 09:18:12 GMT  
		Size: 943.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:2.0.0-alpha3-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:1bde70b3ce0f9b2bde32a954873096d7d2d2121bf3f19eef4b37867a3a506e28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:2.0.0-alpha3-nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:d7a8f4eaf5d720815db11f1b99bfba48df7b240dbb079fc190ec1341c9dac61a
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.6 MB (452618280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49f8107c75d440f4141ac7ec46c2e79dddbeecc0d92f2927000bc0d2b9af6cf0`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Tue, 02 Apr 2019 09:17:17 GMT
RUN cmd /S /C #(nop) COPY file:098a3abb192e02b73ce743fc9c3d574580a52476f26f04f3f915217170b159da in \traefik.exe 
# Tue, 02 Apr 2019 09:17:23 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Tue, 02 Apr 2019 09:17:25 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 02 Apr 2019 09:17:26 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v2.0.0-alpha3 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:e3b1d73100208feba6c4a54d481f6ba1a0636595b6d22e89ebca4f344cb1224b`  
		Last Modified: Tue, 02 Apr 2019 09:18:19 GMT  
		Size: 17.2 MB (17218620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc7bc2c268c946d742ed9f7431d4c36719e2841a545362626163f6adedd9741e`  
		Last Modified: Tue, 02 Apr 2019 09:18:12 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc4278fd6c5e5ed76342ab36b6667acce57e1b19f52ce0aead02d9cf5cf3cfa5`  
		Last Modified: Tue, 02 Apr 2019 09:18:12 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f0dcdf498be55860735a619cf6cbea1561be208db8978bb58bb44bef094087`  
		Last Modified: Tue, 02 Apr 2019 09:18:12 GMT  
		Size: 943.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:2.0-alpine`

```console
$ docker pull traefik@sha256:d2918752540bc7e35be23d13c2bbf1a7899f77c85b902c51c6804c79373599a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:2.0-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:ede672de72d65c1f52cb6790a91672198af661204882d4523f67912b1d6d9717
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 MB (20683899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dc5ce0681f93c13b6a41146220721558ff92af86ce81a1261e21a8a8b09ee1c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 02:01:13 GMT
RUN apk --no-cache add ca-certificates tzdata
# Wed, 10 Apr 2019 02:01:16 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/containous/traefik/releases/download/v2.0.0-alpha3/traefik_v2.0.0-alpha3_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Wed, 10 Apr 2019 02:01:16 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 10 Apr 2019 02:01:17 GMT
EXPOSE 80
# Wed, 10 Apr 2019 02:01:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 10 Apr 2019 02:01:17 GMT
CMD ["traefik"]
# Wed, 10 Apr 2019 02:01:18 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v2.0.0-alpha3 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:62c17a140dd26d78ed1a188b962b494b07c5525122ecc2fdb9234786c99667d3`  
		Last Modified: Wed, 10 Apr 2019 02:02:05 GMT  
		Size: 17.2 MB (17230959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dae03f04e8abd467d5eba187102cd0e9082fea7a9606848d4c6589843b83802f`  
		Last Modified: Wed, 10 Apr 2019 02:01:59 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:2.0-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:ac2285fc17fed1fa2512f43389c8bb0f94477fe667f41b301ab93405e61a2dd7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.4 MB (19363146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb93aac9d49c55af792275842bf4a3a987fbfe4b1db6f529940a65c74b920ade`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Wed, 20 Mar 2019 08:11:18 GMT
RUN apk --no-cache add ca-certificates tzdata
# Tue, 02 Apr 2019 07:50:21 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/containous/traefik/releases/download/v2.0.0-alpha3/traefik_v2.0.0-alpha3_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Tue, 02 Apr 2019 07:50:22 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Tue, 02 Apr 2019 07:50:22 GMT
EXPOSE 80
# Tue, 02 Apr 2019 07:50:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 02 Apr 2019 07:50:23 GMT
CMD ["traefik"]
# Tue, 02 Apr 2019 07:50:23 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v2.0.0-alpha3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6314be2c2dcc3c8a055f297334197e12c827db9ea8694abfa1403a33ef05cff4`  
		Last Modified: Wed, 20 Mar 2019 08:12:04 GMT  
		Size: 697.8 KB (697849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84a743b632ebad002b41af7259bf4db098df4a0c77d9cf797836c2babc4f07fe`  
		Last Modified: Tue, 02 Apr 2019 07:51:34 GMT  
		Size: 16.1 MB (16124304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b90db1d5757824e0bbf292c2657312384cec9239a7b599a48db4d7af53ece288`  
		Last Modified: Tue, 02 Apr 2019 07:51:29 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:2.0-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:06300011900b2aa63af358977992a30bc8d15ed00e59b53a76d1761b890a30a2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.2 MB (19240410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfcd0b085b14af5255cca1fd53274471bf0b86d82608eece368ba42d23ccaf93`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Wed, 20 Mar 2019 10:26:26 GMT
RUN apk --no-cache add ca-certificates tzdata
# Tue, 02 Apr 2019 11:56:42 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/containous/traefik/releases/download/v2.0.0-alpha3/traefik_v2.0.0-alpha3_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Tue, 02 Apr 2019 11:56:43 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Tue, 02 Apr 2019 11:56:44 GMT
EXPOSE 80
# Tue, 02 Apr 2019 11:56:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 02 Apr 2019 11:56:45 GMT
CMD ["traefik"]
# Tue, 02 Apr 2019 11:56:46 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v2.0.0-alpha3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c06e367c47bf6fdf493d111d7a35959ef3cebd22a8e0a4c3c560afe5c23dbcc4`  
		Last Modified: Wed, 20 Mar 2019 10:27:57 GMT  
		Size: 697.7 KB (697719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eddcc93b968c5338a8eee3366f2fb4582d34b2fc9cee432b6061453453dfc15`  
		Last Modified: Tue, 02 Apr 2019 11:58:25 GMT  
		Size: 15.9 MB (15854431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8decff9af9aff0e80bf1ec19c4ce89d15e0c6286ac1031eb28e385aca9596442`  
		Last Modified: Tue, 02 Apr 2019 11:58:19 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:2.0-nanoserver`

```console
$ docker pull traefik@sha256:1bde70b3ce0f9b2bde32a954873096d7d2d2121bf3f19eef4b37867a3a506e28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:2.0-nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:d7a8f4eaf5d720815db11f1b99bfba48df7b240dbb079fc190ec1341c9dac61a
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.6 MB (452618280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49f8107c75d440f4141ac7ec46c2e79dddbeecc0d92f2927000bc0d2b9af6cf0`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Tue, 02 Apr 2019 09:17:17 GMT
RUN cmd /S /C #(nop) COPY file:098a3abb192e02b73ce743fc9c3d574580a52476f26f04f3f915217170b159da in \traefik.exe 
# Tue, 02 Apr 2019 09:17:23 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Tue, 02 Apr 2019 09:17:25 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 02 Apr 2019 09:17:26 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v2.0.0-alpha3 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:e3b1d73100208feba6c4a54d481f6ba1a0636595b6d22e89ebca4f344cb1224b`  
		Last Modified: Tue, 02 Apr 2019 09:18:19 GMT  
		Size: 17.2 MB (17218620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc7bc2c268c946d742ed9f7431d4c36719e2841a545362626163f6adedd9741e`  
		Last Modified: Tue, 02 Apr 2019 09:18:12 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc4278fd6c5e5ed76342ab36b6667acce57e1b19f52ce0aead02d9cf5cf3cfa5`  
		Last Modified: Tue, 02 Apr 2019 09:18:12 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f0dcdf498be55860735a619cf6cbea1561be208db8978bb58bb44bef094087`  
		Last Modified: Tue, 02 Apr 2019 09:18:12 GMT  
		Size: 943.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:2.0-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:1bde70b3ce0f9b2bde32a954873096d7d2d2121bf3f19eef4b37867a3a506e28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:2.0-nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:d7a8f4eaf5d720815db11f1b99bfba48df7b240dbb079fc190ec1341c9dac61a
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.6 MB (452618280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49f8107c75d440f4141ac7ec46c2e79dddbeecc0d92f2927000bc0d2b9af6cf0`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Tue, 02 Apr 2019 09:17:17 GMT
RUN cmd /S /C #(nop) COPY file:098a3abb192e02b73ce743fc9c3d574580a52476f26f04f3f915217170b159da in \traefik.exe 
# Tue, 02 Apr 2019 09:17:23 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Tue, 02 Apr 2019 09:17:25 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 02 Apr 2019 09:17:26 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v2.0.0-alpha3 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:e3b1d73100208feba6c4a54d481f6ba1a0636595b6d22e89ebca4f344cb1224b`  
		Last Modified: Tue, 02 Apr 2019 09:18:19 GMT  
		Size: 17.2 MB (17218620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc7bc2c268c946d742ed9f7431d4c36719e2841a545362626163f6adedd9741e`  
		Last Modified: Tue, 02 Apr 2019 09:18:12 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc4278fd6c5e5ed76342ab36b6667acce57e1b19f52ce0aead02d9cf5cf3cfa5`  
		Last Modified: Tue, 02 Apr 2019 09:18:12 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f0dcdf498be55860735a619cf6cbea1561be208db8978bb58bb44bef094087`  
		Last Modified: Tue, 02 Apr 2019 09:18:12 GMT  
		Size: 943.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:alpine`

```console
$ docker pull traefik@sha256:e1f955ae485db473e8fdac0367841c3975da99a8311f75868ac7902f14d5b42f
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
$ docker pull traefik@sha256:36110e67e765ac0054aeafb08e9046dd69ece4215ea81dcfca4e84e4b3ae70b4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.0 MB (22030457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16893f32b7430219006e390cd04292a7b0e73386826dda38d0533e8176e8aec5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Wed, 20 Mar 2019 08:11:18 GMT
RUN apk --no-cache add ca-certificates tzdata
# Tue, 02 Apr 2019 07:50:53 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.10/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 02 Apr 2019 07:50:53 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Tue, 02 Apr 2019 07:50:54 GMT
EXPOSE 80
# Tue, 02 Apr 2019 07:50:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 02 Apr 2019 07:50:55 GMT
CMD ["traefik"]
# Tue, 02 Apr 2019 07:50:55 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.10 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6314be2c2dcc3c8a055f297334197e12c827db9ea8694abfa1403a33ef05cff4`  
		Last Modified: Wed, 20 Mar 2019 08:12:04 GMT  
		Size: 697.8 KB (697849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d0f238fc8ef931df7ff10b1b00eb219d505237ac0d049520b26bf078d6ea5e6`  
		Last Modified: Tue, 02 Apr 2019 07:52:08 GMT  
		Size: 18.8 MB (18791614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a740ccdcb2ab3297fc866d0121729ce92ed1a703aa3363df0330085a2f50444`  
		Last Modified: Tue, 02 Apr 2019 07:52:01 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:2b7675b4620763ae7fa7f2e643c349c8a986647109e09c7b1e836b77988decf4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.7 MB (21738418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2d0098aef366723c4119e6570a98bc5825f7dd2c19372d3124e5dcb21fac48a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Wed, 20 Mar 2019 10:26:26 GMT
RUN apk --no-cache add ca-certificates tzdata
# Tue, 02 Apr 2019 11:57:28 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.10/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 02 Apr 2019 11:57:29 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Tue, 02 Apr 2019 11:57:30 GMT
EXPOSE 80
# Tue, 02 Apr 2019 11:57:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 02 Apr 2019 11:57:31 GMT
CMD ["traefik"]
# Tue, 02 Apr 2019 11:57:32 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.10 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c06e367c47bf6fdf493d111d7a35959ef3cebd22a8e0a4c3c560afe5c23dbcc4`  
		Last Modified: Wed, 20 Mar 2019 10:27:57 GMT  
		Size: 697.7 KB (697719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5212da0aa90307448e4a6fe21f8afc7ef5ce84ee52e0e8910ab9cd92a4d8f563`  
		Last Modified: Tue, 02 Apr 2019 11:59:10 GMT  
		Size: 18.4 MB (18352441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b43d398eebfa2baef84401599bb300eb1839a5073ef471ca9b1eebbec169a10`  
		Last Modified: Tue, 02 Apr 2019 11:59:02 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:faisselle`

```console
$ docker pull traefik@sha256:a8ced49825b3eb4ffee7d7c2a534a80d3d663acf6e5d5be647ec98f90e941f09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:faisselle` - linux; amd64

```console
$ docker pull traefik@sha256:3d226c81544a5e2b89e49b08920700b81f23bfcfac945bad8fe517603535f4db
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.4 MB (17363031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25d98378e8e5c489fe6a6bf9e36619396f3190c163fd2b6539d640312f5444d1`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 19 Mar 2019 21:34:26 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Mon, 01 Apr 2019 23:25:33 GMT
COPY file:be85656df6d46b00ca55821f6b9f3f644d0f796050faea5d6166a3b2d32939c9 in / 
# Mon, 01 Apr 2019 23:25:33 GMT
EXPOSE 80
# Mon, 01 Apr 2019 23:25:34 GMT
VOLUME [/tmp]
# Mon, 01 Apr 2019 23:25:34 GMT
ENTRYPOINT ["/traefik"]
# Mon, 01 Apr 2019 23:25:34 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v2.0.0-alpha3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:d572f7c8e98390811ccda70b3cd865d413636517e557d586db244257f25ef6df`  
		Last Modified: Tue, 19 Mar 2019 21:35:04 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f77a3e21df160a4038d9eab34b8caf446405aba5c2e0df2336e394e24be95973`  
		Last Modified: Mon, 01 Apr 2019 23:26:16 GMT  
		Size: 17.2 MB (17231009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:faisselle` - linux; arm variant v6

```console
$ docker pull traefik@sha256:6a7380197444c20905b78d05a8b4d875e43411834ad7bfcedb4d3af0d8b74343
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.3 MB (16256124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77467825f15991820281388b5e9262a33cda535dc35c2addf88a134916e8e79c`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 20 Mar 2019 08:11:08 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Tue, 02 Apr 2019 07:50:09 GMT
COPY file:6f475f414462fa7e4122ab048c44ce84759345791554238c1ccb7632e1675997 in / 
# Tue, 02 Apr 2019 07:50:10 GMT
EXPOSE 80
# Tue, 02 Apr 2019 07:50:11 GMT
VOLUME [/tmp]
# Tue, 02 Apr 2019 07:50:11 GMT
ENTRYPOINT ["/traefik"]
# Tue, 02 Apr 2019 07:50:12 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v2.0.0-alpha3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:2b85204ff61918278f159c68b7d115600c72173e7f4db3f92d97b8ef4be1c8e9`  
		Last Modified: Wed, 20 Mar 2019 08:11:50 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c48d9caef4adc9597bc988ec9ab1c6159ccc0080441d95247febb902cbcffc1c`  
		Last Modified: Tue, 02 Apr 2019 07:51:20 GMT  
		Size: 16.1 MB (16124102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:faisselle` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:edba110a3435a4df87452c4596a53b6b2efd2e604fe53fa723d8856149d61c57
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.0 MB (15986324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:232f6146a5dbd7151566da880f1b3c1ad50912ffdfe87f2bc2e8949816f5d64e`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 20 Mar 2019 10:26:00 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Tue, 02 Apr 2019 11:56:25 GMT
COPY file:380a9176b4e6441a396b9dbceb40197fe6b849b2c84d139bc53f643fe071ff01 in / 
# Tue, 02 Apr 2019 11:56:26 GMT
EXPOSE 80
# Tue, 02 Apr 2019 11:56:27 GMT
VOLUME [/tmp]
# Tue, 02 Apr 2019 11:56:28 GMT
ENTRYPOINT ["/traefik"]
# Tue, 02 Apr 2019 11:56:29 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v2.0.0-alpha3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:4e8329e705d7c968f3a066e73302387c1fa99df2d2bd76c27312b2522e19eccc`  
		Last Modified: Wed, 20 Mar 2019 10:27:32 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd5b29aa83eed6d73ac50fdf451d4c5152273159c1a9d89a9eef56282d2e7958`  
		Last Modified: Tue, 02 Apr 2019 11:58:06 GMT  
		Size: 15.9 MB (15854302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:faisselle-alpine`

```console
$ docker pull traefik@sha256:d2918752540bc7e35be23d13c2bbf1a7899f77c85b902c51c6804c79373599a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:faisselle-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:ede672de72d65c1f52cb6790a91672198af661204882d4523f67912b1d6d9717
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 MB (20683899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dc5ce0681f93c13b6a41146220721558ff92af86ce81a1261e21a8a8b09ee1c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 02:01:13 GMT
RUN apk --no-cache add ca-certificates tzdata
# Wed, 10 Apr 2019 02:01:16 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/containous/traefik/releases/download/v2.0.0-alpha3/traefik_v2.0.0-alpha3_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Wed, 10 Apr 2019 02:01:16 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 10 Apr 2019 02:01:17 GMT
EXPOSE 80
# Wed, 10 Apr 2019 02:01:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 10 Apr 2019 02:01:17 GMT
CMD ["traefik"]
# Wed, 10 Apr 2019 02:01:18 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v2.0.0-alpha3 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:62c17a140dd26d78ed1a188b962b494b07c5525122ecc2fdb9234786c99667d3`  
		Last Modified: Wed, 10 Apr 2019 02:02:05 GMT  
		Size: 17.2 MB (17230959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dae03f04e8abd467d5eba187102cd0e9082fea7a9606848d4c6589843b83802f`  
		Last Modified: Wed, 10 Apr 2019 02:01:59 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:faisselle-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:ac2285fc17fed1fa2512f43389c8bb0f94477fe667f41b301ab93405e61a2dd7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.4 MB (19363146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb93aac9d49c55af792275842bf4a3a987fbfe4b1db6f529940a65c74b920ade`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Wed, 20 Mar 2019 08:11:18 GMT
RUN apk --no-cache add ca-certificates tzdata
# Tue, 02 Apr 2019 07:50:21 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/containous/traefik/releases/download/v2.0.0-alpha3/traefik_v2.0.0-alpha3_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Tue, 02 Apr 2019 07:50:22 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Tue, 02 Apr 2019 07:50:22 GMT
EXPOSE 80
# Tue, 02 Apr 2019 07:50:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 02 Apr 2019 07:50:23 GMT
CMD ["traefik"]
# Tue, 02 Apr 2019 07:50:23 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v2.0.0-alpha3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6314be2c2dcc3c8a055f297334197e12c827db9ea8694abfa1403a33ef05cff4`  
		Last Modified: Wed, 20 Mar 2019 08:12:04 GMT  
		Size: 697.8 KB (697849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84a743b632ebad002b41af7259bf4db098df4a0c77d9cf797836c2babc4f07fe`  
		Last Modified: Tue, 02 Apr 2019 07:51:34 GMT  
		Size: 16.1 MB (16124304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b90db1d5757824e0bbf292c2657312384cec9239a7b599a48db4d7af53ece288`  
		Last Modified: Tue, 02 Apr 2019 07:51:29 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:faisselle-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:06300011900b2aa63af358977992a30bc8d15ed00e59b53a76d1761b890a30a2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.2 MB (19240410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfcd0b085b14af5255cca1fd53274471bf0b86d82608eece368ba42d23ccaf93`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Wed, 20 Mar 2019 10:26:26 GMT
RUN apk --no-cache add ca-certificates tzdata
# Tue, 02 Apr 2019 11:56:42 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/containous/traefik/releases/download/v2.0.0-alpha3/traefik_v2.0.0-alpha3_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Tue, 02 Apr 2019 11:56:43 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Tue, 02 Apr 2019 11:56:44 GMT
EXPOSE 80
# Tue, 02 Apr 2019 11:56:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 02 Apr 2019 11:56:45 GMT
CMD ["traefik"]
# Tue, 02 Apr 2019 11:56:46 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v2.0.0-alpha3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c06e367c47bf6fdf493d111d7a35959ef3cebd22a8e0a4c3c560afe5c23dbcc4`  
		Last Modified: Wed, 20 Mar 2019 10:27:57 GMT  
		Size: 697.7 KB (697719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eddcc93b968c5338a8eee3366f2fb4582d34b2fc9cee432b6061453453dfc15`  
		Last Modified: Tue, 02 Apr 2019 11:58:25 GMT  
		Size: 15.9 MB (15854431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8decff9af9aff0e80bf1ec19c4ce89d15e0c6286ac1031eb28e385aca9596442`  
		Last Modified: Tue, 02 Apr 2019 11:58:19 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:faisselle-nanoserver`

```console
$ docker pull traefik@sha256:1bde70b3ce0f9b2bde32a954873096d7d2d2121bf3f19eef4b37867a3a506e28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:faisselle-nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:d7a8f4eaf5d720815db11f1b99bfba48df7b240dbb079fc190ec1341c9dac61a
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.6 MB (452618280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49f8107c75d440f4141ac7ec46c2e79dddbeecc0d92f2927000bc0d2b9af6cf0`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Tue, 02 Apr 2019 09:17:17 GMT
RUN cmd /S /C #(nop) COPY file:098a3abb192e02b73ce743fc9c3d574580a52476f26f04f3f915217170b159da in \traefik.exe 
# Tue, 02 Apr 2019 09:17:23 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Tue, 02 Apr 2019 09:17:25 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 02 Apr 2019 09:17:26 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v2.0.0-alpha3 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:e3b1d73100208feba6c4a54d481f6ba1a0636595b6d22e89ebca4f344cb1224b`  
		Last Modified: Tue, 02 Apr 2019 09:18:19 GMT  
		Size: 17.2 MB (17218620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc7bc2c268c946d742ed9f7431d4c36719e2841a545362626163f6adedd9741e`  
		Last Modified: Tue, 02 Apr 2019 09:18:12 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc4278fd6c5e5ed76342ab36b6667acce57e1b19f52ce0aead02d9cf5cf3cfa5`  
		Last Modified: Tue, 02 Apr 2019 09:18:12 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f0dcdf498be55860735a619cf6cbea1561be208db8978bb58bb44bef094087`  
		Last Modified: Tue, 02 Apr 2019 09:18:12 GMT  
		Size: 943.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:faisselle-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:1bde70b3ce0f9b2bde32a954873096d7d2d2121bf3f19eef4b37867a3a506e28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:faisselle-nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:d7a8f4eaf5d720815db11f1b99bfba48df7b240dbb079fc190ec1341c9dac61a
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.6 MB (452618280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49f8107c75d440f4141ac7ec46c2e79dddbeecc0d92f2927000bc0d2b9af6cf0`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Tue, 02 Apr 2019 09:17:17 GMT
RUN cmd /S /C #(nop) COPY file:098a3abb192e02b73ce743fc9c3d574580a52476f26f04f3f915217170b159da in \traefik.exe 
# Tue, 02 Apr 2019 09:17:23 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Tue, 02 Apr 2019 09:17:25 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 02 Apr 2019 09:17:26 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v2.0.0-alpha3 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:e3b1d73100208feba6c4a54d481f6ba1a0636595b6d22e89ebca4f344cb1224b`  
		Last Modified: Tue, 02 Apr 2019 09:18:19 GMT  
		Size: 17.2 MB (17218620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc7bc2c268c946d742ed9f7431d4c36719e2841a545362626163f6adedd9741e`  
		Last Modified: Tue, 02 Apr 2019 09:18:12 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc4278fd6c5e5ed76342ab36b6667acce57e1b19f52ce0aead02d9cf5cf3cfa5`  
		Last Modified: Tue, 02 Apr 2019 09:18:12 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f0dcdf498be55860735a619cf6cbea1561be208db8978bb58bb44bef094087`  
		Last Modified: Tue, 02 Apr 2019 09:18:12 GMT  
		Size: 943.0 B  
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
$ docker pull traefik@sha256:e1f955ae485db473e8fdac0367841c3975da99a8311f75868ac7902f14d5b42f
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
$ docker pull traefik@sha256:36110e67e765ac0054aeafb08e9046dd69ece4215ea81dcfca4e84e4b3ae70b4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.0 MB (22030457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16893f32b7430219006e390cd04292a7b0e73386826dda38d0533e8176e8aec5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Wed, 20 Mar 2019 08:11:18 GMT
RUN apk --no-cache add ca-certificates tzdata
# Tue, 02 Apr 2019 07:50:53 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.10/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 02 Apr 2019 07:50:53 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Tue, 02 Apr 2019 07:50:54 GMT
EXPOSE 80
# Tue, 02 Apr 2019 07:50:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 02 Apr 2019 07:50:55 GMT
CMD ["traefik"]
# Tue, 02 Apr 2019 07:50:55 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.10 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6314be2c2dcc3c8a055f297334197e12c827db9ea8694abfa1403a33ef05cff4`  
		Last Modified: Wed, 20 Mar 2019 08:12:04 GMT  
		Size: 697.8 KB (697849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d0f238fc8ef931df7ff10b1b00eb219d505237ac0d049520b26bf078d6ea5e6`  
		Last Modified: Tue, 02 Apr 2019 07:52:08 GMT  
		Size: 18.8 MB (18791614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a740ccdcb2ab3297fc866d0121729ce92ed1a703aa3363df0330085a2f50444`  
		Last Modified: Tue, 02 Apr 2019 07:52:01 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:maroilles-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:2b7675b4620763ae7fa7f2e643c349c8a986647109e09c7b1e836b77988decf4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.7 MB (21738418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2d0098aef366723c4119e6570a98bc5825f7dd2c19372d3124e5dcb21fac48a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Wed, 20 Mar 2019 10:26:26 GMT
RUN apk --no-cache add ca-certificates tzdata
# Tue, 02 Apr 2019 11:57:28 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.10/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 02 Apr 2019 11:57:29 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Tue, 02 Apr 2019 11:57:30 GMT
EXPOSE 80
# Tue, 02 Apr 2019 11:57:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 02 Apr 2019 11:57:31 GMT
CMD ["traefik"]
# Tue, 02 Apr 2019 11:57:32 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.10 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c06e367c47bf6fdf493d111d7a35959ef3cebd22a8e0a4c3c560afe5c23dbcc4`  
		Last Modified: Wed, 20 Mar 2019 10:27:57 GMT  
		Size: 697.7 KB (697719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5212da0aa90307448e4a6fe21f8afc7ef5ce84ee52e0e8910ab9cd92a4d8f563`  
		Last Modified: Tue, 02 Apr 2019 11:59:10 GMT  
		Size: 18.4 MB (18352441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b43d398eebfa2baef84401599bb300eb1839a5073ef471ca9b1eebbec169a10`  
		Last Modified: Tue, 02 Apr 2019 11:59:02 GMT  
		Size: 319.0 B  
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
$ docker pull traefik@sha256:e1f955ae485db473e8fdac0367841c3975da99a8311f75868ac7902f14d5b42f
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
$ docker pull traefik@sha256:36110e67e765ac0054aeafb08e9046dd69ece4215ea81dcfca4e84e4b3ae70b4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.0 MB (22030457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16893f32b7430219006e390cd04292a7b0e73386826dda38d0533e8176e8aec5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Wed, 20 Mar 2019 08:11:18 GMT
RUN apk --no-cache add ca-certificates tzdata
# Tue, 02 Apr 2019 07:50:53 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.10/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 02 Apr 2019 07:50:53 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Tue, 02 Apr 2019 07:50:54 GMT
EXPOSE 80
# Tue, 02 Apr 2019 07:50:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 02 Apr 2019 07:50:55 GMT
CMD ["traefik"]
# Tue, 02 Apr 2019 07:50:55 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.10 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6314be2c2dcc3c8a055f297334197e12c827db9ea8694abfa1403a33ef05cff4`  
		Last Modified: Wed, 20 Mar 2019 08:12:04 GMT  
		Size: 697.8 KB (697849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d0f238fc8ef931df7ff10b1b00eb219d505237ac0d049520b26bf078d6ea5e6`  
		Last Modified: Tue, 02 Apr 2019 07:52:08 GMT  
		Size: 18.8 MB (18791614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a740ccdcb2ab3297fc866d0121729ce92ed1a703aa3363df0330085a2f50444`  
		Last Modified: Tue, 02 Apr 2019 07:52:01 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7.10-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:2b7675b4620763ae7fa7f2e643c349c8a986647109e09c7b1e836b77988decf4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.7 MB (21738418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2d0098aef366723c4119e6570a98bc5825f7dd2c19372d3124e5dcb21fac48a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Wed, 20 Mar 2019 10:26:26 GMT
RUN apk --no-cache add ca-certificates tzdata
# Tue, 02 Apr 2019 11:57:28 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.10/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 02 Apr 2019 11:57:29 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Tue, 02 Apr 2019 11:57:30 GMT
EXPOSE 80
# Tue, 02 Apr 2019 11:57:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 02 Apr 2019 11:57:31 GMT
CMD ["traefik"]
# Tue, 02 Apr 2019 11:57:32 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.10 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c06e367c47bf6fdf493d111d7a35959ef3cebd22a8e0a4c3c560afe5c23dbcc4`  
		Last Modified: Wed, 20 Mar 2019 10:27:57 GMT  
		Size: 697.7 KB (697719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5212da0aa90307448e4a6fe21f8afc7ef5ce84ee52e0e8910ab9cd92a4d8f563`  
		Last Modified: Tue, 02 Apr 2019 11:59:10 GMT  
		Size: 18.4 MB (18352441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b43d398eebfa2baef84401599bb300eb1839a5073ef471ca9b1eebbec169a10`  
		Last Modified: Tue, 02 Apr 2019 11:59:02 GMT  
		Size: 319.0 B  
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
$ docker pull traefik@sha256:e1f955ae485db473e8fdac0367841c3975da99a8311f75868ac7902f14d5b42f
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
$ docker pull traefik@sha256:36110e67e765ac0054aeafb08e9046dd69ece4215ea81dcfca4e84e4b3ae70b4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.0 MB (22030457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16893f32b7430219006e390cd04292a7b0e73386826dda38d0533e8176e8aec5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Wed, 20 Mar 2019 08:11:18 GMT
RUN apk --no-cache add ca-certificates tzdata
# Tue, 02 Apr 2019 07:50:53 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.10/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 02 Apr 2019 07:50:53 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Tue, 02 Apr 2019 07:50:54 GMT
EXPOSE 80
# Tue, 02 Apr 2019 07:50:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 02 Apr 2019 07:50:55 GMT
CMD ["traefik"]
# Tue, 02 Apr 2019 07:50:55 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.10 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6314be2c2dcc3c8a055f297334197e12c827db9ea8694abfa1403a33ef05cff4`  
		Last Modified: Wed, 20 Mar 2019 08:12:04 GMT  
		Size: 697.8 KB (697849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d0f238fc8ef931df7ff10b1b00eb219d505237ac0d049520b26bf078d6ea5e6`  
		Last Modified: Tue, 02 Apr 2019 07:52:08 GMT  
		Size: 18.8 MB (18791614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a740ccdcb2ab3297fc866d0121729ce92ed1a703aa3363df0330085a2f50444`  
		Last Modified: Tue, 02 Apr 2019 07:52:01 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:2b7675b4620763ae7fa7f2e643c349c8a986647109e09c7b1e836b77988decf4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.7 MB (21738418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2d0098aef366723c4119e6570a98bc5825f7dd2c19372d3124e5dcb21fac48a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Wed, 20 Mar 2019 10:26:26 GMT
RUN apk --no-cache add ca-certificates tzdata
# Tue, 02 Apr 2019 11:57:28 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.10/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 02 Apr 2019 11:57:29 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Tue, 02 Apr 2019 11:57:30 GMT
EXPOSE 80
# Tue, 02 Apr 2019 11:57:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 02 Apr 2019 11:57:31 GMT
CMD ["traefik"]
# Tue, 02 Apr 2019 11:57:32 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.10 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c06e367c47bf6fdf493d111d7a35959ef3cebd22a8e0a4c3c560afe5c23dbcc4`  
		Last Modified: Wed, 20 Mar 2019 10:27:57 GMT  
		Size: 697.7 KB (697719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5212da0aa90307448e4a6fe21f8afc7ef5ce84ee52e0e8910ab9cd92a4d8f563`  
		Last Modified: Tue, 02 Apr 2019 11:59:10 GMT  
		Size: 18.4 MB (18352441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b43d398eebfa2baef84401599bb300eb1839a5073ef471ca9b1eebbec169a10`  
		Last Modified: Tue, 02 Apr 2019 11:59:02 GMT  
		Size: 319.0 B  
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
$ docker pull traefik@sha256:a8ced49825b3eb4ffee7d7c2a534a80d3d663acf6e5d5be647ec98f90e941f09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v2.0` - linux; amd64

```console
$ docker pull traefik@sha256:3d226c81544a5e2b89e49b08920700b81f23bfcfac945bad8fe517603535f4db
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.4 MB (17363031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25d98378e8e5c489fe6a6bf9e36619396f3190c163fd2b6539d640312f5444d1`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 19 Mar 2019 21:34:26 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Mon, 01 Apr 2019 23:25:33 GMT
COPY file:be85656df6d46b00ca55821f6b9f3f644d0f796050faea5d6166a3b2d32939c9 in / 
# Mon, 01 Apr 2019 23:25:33 GMT
EXPOSE 80
# Mon, 01 Apr 2019 23:25:34 GMT
VOLUME [/tmp]
# Mon, 01 Apr 2019 23:25:34 GMT
ENTRYPOINT ["/traefik"]
# Mon, 01 Apr 2019 23:25:34 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v2.0.0-alpha3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:d572f7c8e98390811ccda70b3cd865d413636517e557d586db244257f25ef6df`  
		Last Modified: Tue, 19 Mar 2019 21:35:04 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f77a3e21df160a4038d9eab34b8caf446405aba5c2e0df2336e394e24be95973`  
		Last Modified: Mon, 01 Apr 2019 23:26:16 GMT  
		Size: 17.2 MB (17231009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v2.0` - linux; arm variant v6

```console
$ docker pull traefik@sha256:6a7380197444c20905b78d05a8b4d875e43411834ad7bfcedb4d3af0d8b74343
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.3 MB (16256124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77467825f15991820281388b5e9262a33cda535dc35c2addf88a134916e8e79c`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 20 Mar 2019 08:11:08 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Tue, 02 Apr 2019 07:50:09 GMT
COPY file:6f475f414462fa7e4122ab048c44ce84759345791554238c1ccb7632e1675997 in / 
# Tue, 02 Apr 2019 07:50:10 GMT
EXPOSE 80
# Tue, 02 Apr 2019 07:50:11 GMT
VOLUME [/tmp]
# Tue, 02 Apr 2019 07:50:11 GMT
ENTRYPOINT ["/traefik"]
# Tue, 02 Apr 2019 07:50:12 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v2.0.0-alpha3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:2b85204ff61918278f159c68b7d115600c72173e7f4db3f92d97b8ef4be1c8e9`  
		Last Modified: Wed, 20 Mar 2019 08:11:50 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c48d9caef4adc9597bc988ec9ab1c6159ccc0080441d95247febb902cbcffc1c`  
		Last Modified: Tue, 02 Apr 2019 07:51:20 GMT  
		Size: 16.1 MB (16124102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v2.0` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:edba110a3435a4df87452c4596a53b6b2efd2e604fe53fa723d8856149d61c57
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.0 MB (15986324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:232f6146a5dbd7151566da880f1b3c1ad50912ffdfe87f2bc2e8949816f5d64e`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 20 Mar 2019 10:26:00 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Tue, 02 Apr 2019 11:56:25 GMT
COPY file:380a9176b4e6441a396b9dbceb40197fe6b849b2c84d139bc53f643fe071ff01 in / 
# Tue, 02 Apr 2019 11:56:26 GMT
EXPOSE 80
# Tue, 02 Apr 2019 11:56:27 GMT
VOLUME [/tmp]
# Tue, 02 Apr 2019 11:56:28 GMT
ENTRYPOINT ["/traefik"]
# Tue, 02 Apr 2019 11:56:29 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v2.0.0-alpha3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:4e8329e705d7c968f3a066e73302387c1fa99df2d2bd76c27312b2522e19eccc`  
		Last Modified: Wed, 20 Mar 2019 10:27:32 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd5b29aa83eed6d73ac50fdf451d4c5152273159c1a9d89a9eef56282d2e7958`  
		Last Modified: Tue, 02 Apr 2019 11:58:06 GMT  
		Size: 15.9 MB (15854302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v2.0.0-alpha3`

```console
$ docker pull traefik@sha256:a8ced49825b3eb4ffee7d7c2a534a80d3d663acf6e5d5be647ec98f90e941f09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v2.0.0-alpha3` - linux; amd64

```console
$ docker pull traefik@sha256:3d226c81544a5e2b89e49b08920700b81f23bfcfac945bad8fe517603535f4db
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.4 MB (17363031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25d98378e8e5c489fe6a6bf9e36619396f3190c163fd2b6539d640312f5444d1`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 19 Mar 2019 21:34:26 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Mon, 01 Apr 2019 23:25:33 GMT
COPY file:be85656df6d46b00ca55821f6b9f3f644d0f796050faea5d6166a3b2d32939c9 in / 
# Mon, 01 Apr 2019 23:25:33 GMT
EXPOSE 80
# Mon, 01 Apr 2019 23:25:34 GMT
VOLUME [/tmp]
# Mon, 01 Apr 2019 23:25:34 GMT
ENTRYPOINT ["/traefik"]
# Mon, 01 Apr 2019 23:25:34 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v2.0.0-alpha3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:d572f7c8e98390811ccda70b3cd865d413636517e557d586db244257f25ef6df`  
		Last Modified: Tue, 19 Mar 2019 21:35:04 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f77a3e21df160a4038d9eab34b8caf446405aba5c2e0df2336e394e24be95973`  
		Last Modified: Mon, 01 Apr 2019 23:26:16 GMT  
		Size: 17.2 MB (17231009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v2.0.0-alpha3` - linux; arm variant v6

```console
$ docker pull traefik@sha256:6a7380197444c20905b78d05a8b4d875e43411834ad7bfcedb4d3af0d8b74343
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.3 MB (16256124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77467825f15991820281388b5e9262a33cda535dc35c2addf88a134916e8e79c`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 20 Mar 2019 08:11:08 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Tue, 02 Apr 2019 07:50:09 GMT
COPY file:6f475f414462fa7e4122ab048c44ce84759345791554238c1ccb7632e1675997 in / 
# Tue, 02 Apr 2019 07:50:10 GMT
EXPOSE 80
# Tue, 02 Apr 2019 07:50:11 GMT
VOLUME [/tmp]
# Tue, 02 Apr 2019 07:50:11 GMT
ENTRYPOINT ["/traefik"]
# Tue, 02 Apr 2019 07:50:12 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v2.0.0-alpha3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:2b85204ff61918278f159c68b7d115600c72173e7f4db3f92d97b8ef4be1c8e9`  
		Last Modified: Wed, 20 Mar 2019 08:11:50 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c48d9caef4adc9597bc988ec9ab1c6159ccc0080441d95247febb902cbcffc1c`  
		Last Modified: Tue, 02 Apr 2019 07:51:20 GMT  
		Size: 16.1 MB (16124102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v2.0.0-alpha3` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:edba110a3435a4df87452c4596a53b6b2efd2e604fe53fa723d8856149d61c57
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.0 MB (15986324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:232f6146a5dbd7151566da880f1b3c1ad50912ffdfe87f2bc2e8949816f5d64e`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 20 Mar 2019 10:26:00 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Tue, 02 Apr 2019 11:56:25 GMT
COPY file:380a9176b4e6441a396b9dbceb40197fe6b849b2c84d139bc53f643fe071ff01 in / 
# Tue, 02 Apr 2019 11:56:26 GMT
EXPOSE 80
# Tue, 02 Apr 2019 11:56:27 GMT
VOLUME [/tmp]
# Tue, 02 Apr 2019 11:56:28 GMT
ENTRYPOINT ["/traefik"]
# Tue, 02 Apr 2019 11:56:29 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v2.0.0-alpha3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:4e8329e705d7c968f3a066e73302387c1fa99df2d2bd76c27312b2522e19eccc`  
		Last Modified: Wed, 20 Mar 2019 10:27:32 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd5b29aa83eed6d73ac50fdf451d4c5152273159c1a9d89a9eef56282d2e7958`  
		Last Modified: Tue, 02 Apr 2019 11:58:06 GMT  
		Size: 15.9 MB (15854302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v2.0.0-alpha3-alpine`

```console
$ docker pull traefik@sha256:d2918752540bc7e35be23d13c2bbf1a7899f77c85b902c51c6804c79373599a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v2.0.0-alpha3-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:ede672de72d65c1f52cb6790a91672198af661204882d4523f67912b1d6d9717
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 MB (20683899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dc5ce0681f93c13b6a41146220721558ff92af86ce81a1261e21a8a8b09ee1c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 02:01:13 GMT
RUN apk --no-cache add ca-certificates tzdata
# Wed, 10 Apr 2019 02:01:16 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/containous/traefik/releases/download/v2.0.0-alpha3/traefik_v2.0.0-alpha3_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Wed, 10 Apr 2019 02:01:16 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 10 Apr 2019 02:01:17 GMT
EXPOSE 80
# Wed, 10 Apr 2019 02:01:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 10 Apr 2019 02:01:17 GMT
CMD ["traefik"]
# Wed, 10 Apr 2019 02:01:18 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v2.0.0-alpha3 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:62c17a140dd26d78ed1a188b962b494b07c5525122ecc2fdb9234786c99667d3`  
		Last Modified: Wed, 10 Apr 2019 02:02:05 GMT  
		Size: 17.2 MB (17230959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dae03f04e8abd467d5eba187102cd0e9082fea7a9606848d4c6589843b83802f`  
		Last Modified: Wed, 10 Apr 2019 02:01:59 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v2.0.0-alpha3-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:ac2285fc17fed1fa2512f43389c8bb0f94477fe667f41b301ab93405e61a2dd7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.4 MB (19363146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb93aac9d49c55af792275842bf4a3a987fbfe4b1db6f529940a65c74b920ade`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Wed, 20 Mar 2019 08:11:18 GMT
RUN apk --no-cache add ca-certificates tzdata
# Tue, 02 Apr 2019 07:50:21 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/containous/traefik/releases/download/v2.0.0-alpha3/traefik_v2.0.0-alpha3_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Tue, 02 Apr 2019 07:50:22 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Tue, 02 Apr 2019 07:50:22 GMT
EXPOSE 80
# Tue, 02 Apr 2019 07:50:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 02 Apr 2019 07:50:23 GMT
CMD ["traefik"]
# Tue, 02 Apr 2019 07:50:23 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v2.0.0-alpha3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6314be2c2dcc3c8a055f297334197e12c827db9ea8694abfa1403a33ef05cff4`  
		Last Modified: Wed, 20 Mar 2019 08:12:04 GMT  
		Size: 697.8 KB (697849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84a743b632ebad002b41af7259bf4db098df4a0c77d9cf797836c2babc4f07fe`  
		Last Modified: Tue, 02 Apr 2019 07:51:34 GMT  
		Size: 16.1 MB (16124304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b90db1d5757824e0bbf292c2657312384cec9239a7b599a48db4d7af53ece288`  
		Last Modified: Tue, 02 Apr 2019 07:51:29 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v2.0.0-alpha3-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:06300011900b2aa63af358977992a30bc8d15ed00e59b53a76d1761b890a30a2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.2 MB (19240410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfcd0b085b14af5255cca1fd53274471bf0b86d82608eece368ba42d23ccaf93`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Wed, 20 Mar 2019 10:26:26 GMT
RUN apk --no-cache add ca-certificates tzdata
# Tue, 02 Apr 2019 11:56:42 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/containous/traefik/releases/download/v2.0.0-alpha3/traefik_v2.0.0-alpha3_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Tue, 02 Apr 2019 11:56:43 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Tue, 02 Apr 2019 11:56:44 GMT
EXPOSE 80
# Tue, 02 Apr 2019 11:56:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 02 Apr 2019 11:56:45 GMT
CMD ["traefik"]
# Tue, 02 Apr 2019 11:56:46 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v2.0.0-alpha3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c06e367c47bf6fdf493d111d7a35959ef3cebd22a8e0a4c3c560afe5c23dbcc4`  
		Last Modified: Wed, 20 Mar 2019 10:27:57 GMT  
		Size: 697.7 KB (697719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eddcc93b968c5338a8eee3366f2fb4582d34b2fc9cee432b6061453453dfc15`  
		Last Modified: Tue, 02 Apr 2019 11:58:25 GMT  
		Size: 15.9 MB (15854431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8decff9af9aff0e80bf1ec19c4ce89d15e0c6286ac1031eb28e385aca9596442`  
		Last Modified: Tue, 02 Apr 2019 11:58:19 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v2.0.0-alpha3-nanoserver`

```console
$ docker pull traefik@sha256:1bde70b3ce0f9b2bde32a954873096d7d2d2121bf3f19eef4b37867a3a506e28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:v2.0.0-alpha3-nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:d7a8f4eaf5d720815db11f1b99bfba48df7b240dbb079fc190ec1341c9dac61a
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.6 MB (452618280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49f8107c75d440f4141ac7ec46c2e79dddbeecc0d92f2927000bc0d2b9af6cf0`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Tue, 02 Apr 2019 09:17:17 GMT
RUN cmd /S /C #(nop) COPY file:098a3abb192e02b73ce743fc9c3d574580a52476f26f04f3f915217170b159da in \traefik.exe 
# Tue, 02 Apr 2019 09:17:23 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Tue, 02 Apr 2019 09:17:25 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 02 Apr 2019 09:17:26 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v2.0.0-alpha3 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:e3b1d73100208feba6c4a54d481f6ba1a0636595b6d22e89ebca4f344cb1224b`  
		Last Modified: Tue, 02 Apr 2019 09:18:19 GMT  
		Size: 17.2 MB (17218620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc7bc2c268c946d742ed9f7431d4c36719e2841a545362626163f6adedd9741e`  
		Last Modified: Tue, 02 Apr 2019 09:18:12 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc4278fd6c5e5ed76342ab36b6667acce57e1b19f52ce0aead02d9cf5cf3cfa5`  
		Last Modified: Tue, 02 Apr 2019 09:18:12 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f0dcdf498be55860735a619cf6cbea1561be208db8978bb58bb44bef094087`  
		Last Modified: Tue, 02 Apr 2019 09:18:12 GMT  
		Size: 943.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v2.0.0-alpha3-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:1bde70b3ce0f9b2bde32a954873096d7d2d2121bf3f19eef4b37867a3a506e28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:v2.0.0-alpha3-nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:d7a8f4eaf5d720815db11f1b99bfba48df7b240dbb079fc190ec1341c9dac61a
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.6 MB (452618280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49f8107c75d440f4141ac7ec46c2e79dddbeecc0d92f2927000bc0d2b9af6cf0`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Tue, 02 Apr 2019 09:17:17 GMT
RUN cmd /S /C #(nop) COPY file:098a3abb192e02b73ce743fc9c3d574580a52476f26f04f3f915217170b159da in \traefik.exe 
# Tue, 02 Apr 2019 09:17:23 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Tue, 02 Apr 2019 09:17:25 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 02 Apr 2019 09:17:26 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v2.0.0-alpha3 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:e3b1d73100208feba6c4a54d481f6ba1a0636595b6d22e89ebca4f344cb1224b`  
		Last Modified: Tue, 02 Apr 2019 09:18:19 GMT  
		Size: 17.2 MB (17218620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc7bc2c268c946d742ed9f7431d4c36719e2841a545362626163f6adedd9741e`  
		Last Modified: Tue, 02 Apr 2019 09:18:12 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc4278fd6c5e5ed76342ab36b6667acce57e1b19f52ce0aead02d9cf5cf3cfa5`  
		Last Modified: Tue, 02 Apr 2019 09:18:12 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f0dcdf498be55860735a619cf6cbea1561be208db8978bb58bb44bef094087`  
		Last Modified: Tue, 02 Apr 2019 09:18:12 GMT  
		Size: 943.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v2.0-alpine`

```console
$ docker pull traefik@sha256:d2918752540bc7e35be23d13c2bbf1a7899f77c85b902c51c6804c79373599a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v2.0-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:ede672de72d65c1f52cb6790a91672198af661204882d4523f67912b1d6d9717
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 MB (20683899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dc5ce0681f93c13b6a41146220721558ff92af86ce81a1261e21a8a8b09ee1c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 02:01:13 GMT
RUN apk --no-cache add ca-certificates tzdata
# Wed, 10 Apr 2019 02:01:16 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/containous/traefik/releases/download/v2.0.0-alpha3/traefik_v2.0.0-alpha3_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Wed, 10 Apr 2019 02:01:16 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 10 Apr 2019 02:01:17 GMT
EXPOSE 80
# Wed, 10 Apr 2019 02:01:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 10 Apr 2019 02:01:17 GMT
CMD ["traefik"]
# Wed, 10 Apr 2019 02:01:18 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v2.0.0-alpha3 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:62c17a140dd26d78ed1a188b962b494b07c5525122ecc2fdb9234786c99667d3`  
		Last Modified: Wed, 10 Apr 2019 02:02:05 GMT  
		Size: 17.2 MB (17230959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dae03f04e8abd467d5eba187102cd0e9082fea7a9606848d4c6589843b83802f`  
		Last Modified: Wed, 10 Apr 2019 02:01:59 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v2.0-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:ac2285fc17fed1fa2512f43389c8bb0f94477fe667f41b301ab93405e61a2dd7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.4 MB (19363146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb93aac9d49c55af792275842bf4a3a987fbfe4b1db6f529940a65c74b920ade`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Wed, 20 Mar 2019 08:11:18 GMT
RUN apk --no-cache add ca-certificates tzdata
# Tue, 02 Apr 2019 07:50:21 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/containous/traefik/releases/download/v2.0.0-alpha3/traefik_v2.0.0-alpha3_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Tue, 02 Apr 2019 07:50:22 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Tue, 02 Apr 2019 07:50:22 GMT
EXPOSE 80
# Tue, 02 Apr 2019 07:50:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 02 Apr 2019 07:50:23 GMT
CMD ["traefik"]
# Tue, 02 Apr 2019 07:50:23 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v2.0.0-alpha3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6314be2c2dcc3c8a055f297334197e12c827db9ea8694abfa1403a33ef05cff4`  
		Last Modified: Wed, 20 Mar 2019 08:12:04 GMT  
		Size: 697.8 KB (697849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84a743b632ebad002b41af7259bf4db098df4a0c77d9cf797836c2babc4f07fe`  
		Last Modified: Tue, 02 Apr 2019 07:51:34 GMT  
		Size: 16.1 MB (16124304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b90db1d5757824e0bbf292c2657312384cec9239a7b599a48db4d7af53ece288`  
		Last Modified: Tue, 02 Apr 2019 07:51:29 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v2.0-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:06300011900b2aa63af358977992a30bc8d15ed00e59b53a76d1761b890a30a2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.2 MB (19240410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfcd0b085b14af5255cca1fd53274471bf0b86d82608eece368ba42d23ccaf93`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Wed, 20 Mar 2019 10:26:26 GMT
RUN apk --no-cache add ca-certificates tzdata
# Tue, 02 Apr 2019 11:56:42 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/containous/traefik/releases/download/v2.0.0-alpha3/traefik_v2.0.0-alpha3_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Tue, 02 Apr 2019 11:56:43 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Tue, 02 Apr 2019 11:56:44 GMT
EXPOSE 80
# Tue, 02 Apr 2019 11:56:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 02 Apr 2019 11:56:45 GMT
CMD ["traefik"]
# Tue, 02 Apr 2019 11:56:46 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v2.0.0-alpha3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c06e367c47bf6fdf493d111d7a35959ef3cebd22a8e0a4c3c560afe5c23dbcc4`  
		Last Modified: Wed, 20 Mar 2019 10:27:57 GMT  
		Size: 697.7 KB (697719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eddcc93b968c5338a8eee3366f2fb4582d34b2fc9cee432b6061453453dfc15`  
		Last Modified: Tue, 02 Apr 2019 11:58:25 GMT  
		Size: 15.9 MB (15854431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8decff9af9aff0e80bf1ec19c4ce89d15e0c6286ac1031eb28e385aca9596442`  
		Last Modified: Tue, 02 Apr 2019 11:58:19 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v2.0-nanoserver`

```console
$ docker pull traefik@sha256:1bde70b3ce0f9b2bde32a954873096d7d2d2121bf3f19eef4b37867a3a506e28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:v2.0-nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:d7a8f4eaf5d720815db11f1b99bfba48df7b240dbb079fc190ec1341c9dac61a
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.6 MB (452618280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49f8107c75d440f4141ac7ec46c2e79dddbeecc0d92f2927000bc0d2b9af6cf0`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Tue, 02 Apr 2019 09:17:17 GMT
RUN cmd /S /C #(nop) COPY file:098a3abb192e02b73ce743fc9c3d574580a52476f26f04f3f915217170b159da in \traefik.exe 
# Tue, 02 Apr 2019 09:17:23 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Tue, 02 Apr 2019 09:17:25 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 02 Apr 2019 09:17:26 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v2.0.0-alpha3 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:e3b1d73100208feba6c4a54d481f6ba1a0636595b6d22e89ebca4f344cb1224b`  
		Last Modified: Tue, 02 Apr 2019 09:18:19 GMT  
		Size: 17.2 MB (17218620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc7bc2c268c946d742ed9f7431d4c36719e2841a545362626163f6adedd9741e`  
		Last Modified: Tue, 02 Apr 2019 09:18:12 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc4278fd6c5e5ed76342ab36b6667acce57e1b19f52ce0aead02d9cf5cf3cfa5`  
		Last Modified: Tue, 02 Apr 2019 09:18:12 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f0dcdf498be55860735a619cf6cbea1561be208db8978bb58bb44bef094087`  
		Last Modified: Tue, 02 Apr 2019 09:18:12 GMT  
		Size: 943.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v2.0-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:1bde70b3ce0f9b2bde32a954873096d7d2d2121bf3f19eef4b37867a3a506e28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:v2.0-nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:d7a8f4eaf5d720815db11f1b99bfba48df7b240dbb079fc190ec1341c9dac61a
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.6 MB (452618280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49f8107c75d440f4141ac7ec46c2e79dddbeecc0d92f2927000bc0d2b9af6cf0`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Tue, 02 Apr 2019 09:17:17 GMT
RUN cmd /S /C #(nop) COPY file:098a3abb192e02b73ce743fc9c3d574580a52476f26f04f3f915217170b159da in \traefik.exe 
# Tue, 02 Apr 2019 09:17:23 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Tue, 02 Apr 2019 09:17:25 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 02 Apr 2019 09:17:26 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v2.0.0-alpha3 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:e3b1d73100208feba6c4a54d481f6ba1a0636595b6d22e89ebca4f344cb1224b`  
		Last Modified: Tue, 02 Apr 2019 09:18:19 GMT  
		Size: 17.2 MB (17218620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc7bc2c268c946d742ed9f7431d4c36719e2841a545362626163f6adedd9741e`  
		Last Modified: Tue, 02 Apr 2019 09:18:12 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc4278fd6c5e5ed76342ab36b6667acce57e1b19f52ce0aead02d9cf5cf3cfa5`  
		Last Modified: Tue, 02 Apr 2019 09:18:12 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f0dcdf498be55860735a619cf6cbea1561be208db8978bb58bb44bef094087`  
		Last Modified: Tue, 02 Apr 2019 09:18:12 GMT  
		Size: 943.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
