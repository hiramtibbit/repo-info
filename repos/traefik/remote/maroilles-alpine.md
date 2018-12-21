## `traefik:maroilles-alpine`

```console
$ docker pull traefik@sha256:7efc7b04f261c02675d9c3e4f107f6d58d1bcd61cc26a6ad99d38f2ca1a91300
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:maroilles-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:e9fe29c1a1d5e1b27b89086a2b27b4b4728a865228eaa496679dd18f2fc07466
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.0 MB (22048186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e8d573a4f30d2e91e9e0f5ca0260df7f68ed3a831a2ea486bf73c6ba85250fc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 04:53:58 GMT
RUN apk --no-cache add ca-certificates
# Fri, 21 Dec 2018 04:54:01 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Fri, 21 Dec 2018 04:54:02 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Fri, 21 Dec 2018 04:54:02 GMT
EXPOSE 80
# Fri, 21 Dec 2018 04:54:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 21 Dec 2018 04:54:02 GMT
CMD ["traefik"]
# Fri, 21 Dec 2018 04:54:03 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c18a9262634964799b67862ee79826ace112ae633d4d8a3b01ea93080cfe58de`  
		Last Modified: Fri, 21 Dec 2018 04:54:21 GMT  
		Size: 309.2 KB (309168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ea78f0fd2ea64375f074c11f660805fe75b5513b8d7022878456a0dd0a73b5c`  
		Last Modified: Fri, 21 Dec 2018 04:54:26 GMT  
		Size: 19.5 MB (19531676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6973c96a131fc651a3207bdd621ff549730560addafdd0fbd3494d179f297ed`  
		Last Modified: Fri, 21 Dec 2018 04:54:21 GMT  
		Size: 317.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:maroilles-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:85be6587d3f99469caf1b4b41f13578d90f27459de00acdcdaa2551fdd51a8ef
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 MB (20792327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d85acbb641975d58815b784ceb6d225413015570998c1ba405e3f3ec9d97d9d7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 09:53:18 GMT
RUN apk --no-cache add ca-certificates
# Fri, 21 Dec 2018 09:53:23 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Fri, 21 Dec 2018 09:53:24 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Fri, 21 Dec 2018 09:53:24 GMT
EXPOSE 80
# Fri, 21 Dec 2018 09:53:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 21 Dec 2018 09:53:25 GMT
CMD ["traefik"]
# Fri, 21 Dec 2018 09:53:25 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd485441b01cc4ef3ab52710f7201ceb020dc43dc03817910acdb2d3a6353db3`  
		Last Modified: Fri, 21 Dec 2018 09:53:40 GMT  
		Size: 309.2 KB (309228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d05b73c1ba32f257b81784ff3bf792b95be394dbc76ba14e2190d053dbb8903`  
		Last Modified: Fri, 21 Dec 2018 09:53:47 GMT  
		Size: 18.3 MB (18336824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:914d4247e5f4a962e5dbee8a161cd38621a35a76a8528b19b761f3763e579230`  
		Last Modified: Fri, 21 Dec 2018 09:53:40 GMT  
		Size: 318.0 B  
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
