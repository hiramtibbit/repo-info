## `traefik:maroilles-alpine`

```console
$ docker pull traefik@sha256:cdd57a4fed93e7e0cb774773a62738225c50e64a5582aa65190cebdbf9b3b404
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:maroilles-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:48d5a043328daa6f74a62dcb103cc91eab7b0a6579f824e21c08ab05e6775818
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23483612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04e6979b12278d9b49519bc7c00c0c4fb6101f71f4556fd366dfdaad112a348f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Tue, 19 Mar 2019 21:34:34 GMT
RUN apk --no-cache add ca-certificates tzdata
# Mon, 01 Apr 2019 23:25:58 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.10/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Mon, 01 Apr 2019 23:25:58 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Mon, 01 Apr 2019 23:25:58 GMT
EXPOSE 80
# Mon, 01 Apr 2019 23:25:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 01 Apr 2019 23:25:59 GMT
CMD ["traefik"]
# Mon, 01 Apr 2019 23:25:59 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.10 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da730c0fd9c0e8b204f2894f8ab1293199077d88c42212eb16ae90e49e567e56`  
		Last Modified: Tue, 19 Mar 2019 21:35:14 GMT  
		Size: 695.6 KB (695639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8dc58886ecd079d879402bf71d63aa9f992b77b449e0e10782b0013da142d0c`  
		Last Modified: Mon, 01 Apr 2019 23:26:50 GMT  
		Size: 20.0 MB (20032923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d47a920874bf3da6b734ca56457f01db80af12a818488ce94077607ba464e37`  
		Last Modified: Mon, 01 Apr 2019 23:26:45 GMT  
		Size: 321.0 B  
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
