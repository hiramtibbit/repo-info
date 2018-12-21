## `traefik:alpine`

```console
$ docker pull traefik@sha256:b29da773182ac846e4d7523d5d890114900debb21ff76c4da4af52c19c043f43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:alpine` - linux; amd64

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
