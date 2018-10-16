## `traefik:alpine`

```console
$ docker pull traefik@sha256:930871d5e6e69c5b5d2ea7155a86ffc27d61409be8c87ccc96bc0e7250bc22c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:alpine` - linux; amd64

```console
$ docker pull traefik@sha256:8e7d393868ecdcb527366713cb260ac4f5e4e91cde8167e8216293728bc1a39b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.8 MB (21837984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c856088343ab95128284c86be5c67b99418b52f6b5161ddadfbd60ba76ba9758`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 03:37:55 GMT
RUN apk --no-cache add ca-certificates
# Mon, 15 Oct 2018 21:13:31 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.3/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Mon, 15 Oct 2018 21:13:32 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Mon, 15 Oct 2018 21:13:32 GMT
EXPOSE 80/tcp
# Mon, 15 Oct 2018 21:13:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 15 Oct 2018 21:13:32 GMT
CMD ["traefik"]
# Mon, 15 Oct 2018 21:13:32 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.3 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:05e7f84e5f04dd8833f0d5e5c83df26342e69bf6ba750154ed1a72732cca9276`  
		Last Modified: Mon, 15 Oct 2018 21:14:49 GMT  
		Size: 19.3 MB (19321752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2dd5b8dca35db1ace190ed9e1f78ac8895c856bce45d37b9d5a960b8951ca9a`  
		Last Modified: Mon, 15 Oct 2018 21:14:45 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:38edc9f189b767682935b7cc33c110f3a29445809dc92b84f7a162c933a53805
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 MB (20605381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:424e7719461587ad1cdba61f5f06050f38c2262064b17e9d88a033762bbb9903`
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
# Tue, 16 Oct 2018 07:54:13 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.3/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 16 Oct 2018 07:54:14 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Tue, 16 Oct 2018 07:54:14 GMT
EXPOSE 80/tcp
# Tue, 16 Oct 2018 07:54:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 Oct 2018 07:54:15 GMT
CMD ["traefik"]
# Tue, 16 Oct 2018 07:54:16 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.3 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:8865385a397850ffea1e123260b915ebb2885873706644f8c5e87cc235a4f2f7`  
		Last Modified: Tue, 16 Oct 2018 07:55:00 GMT  
		Size: 18.1 MB (18149363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83fc46e6162595ee4b5000797ee9464cadfd341b2411d42e437e1b8cf56dd379`  
		Last Modified: Tue, 16 Oct 2018 07:54:54 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:907f53a1e072f80db24850bf9c9f1b4c3eabbc61ad50bd650199175b937b3c28
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.1 MB (20112145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96178582c6b6c2ae8367a443a9024bda10c7d820c9ee094d5c390fcb4b777c21`
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
# Tue, 16 Oct 2018 11:33:34 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.3/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 16 Oct 2018 11:33:35 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Tue, 16 Oct 2018 11:33:36 GMT
EXPOSE 80/tcp
# Tue, 16 Oct 2018 11:33:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 Oct 2018 11:33:38 GMT
CMD ["traefik"]
# Tue, 16 Oct 2018 11:33:39 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.3 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:29fb3c623fc9a4b50c4538ce68bb04d3b4daa4d971e54848d92f6dddff8bad91`  
		Last Modified: Tue, 16 Oct 2018 11:35:35 GMT  
		Size: 17.7 MB (17703356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:394792d308ccac3ee1ec0ddc530b5ba4e04aa353fe85de10b1da534441e31b99`  
		Last Modified: Tue, 16 Oct 2018 11:35:21 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
