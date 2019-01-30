## `traefik:alpine`

```console
$ docker pull traefik@sha256:cefbe749e5cdb82b681aa4dc2410889eec5b13e90a87c1ad4ee59d149f0394e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:alpine` - linux; amd64

```console
$ docker pull traefik@sha256:25352654e13c39c16da77d760cce6cf637b7a28304a64ec38607b2c8668ac408
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.1 MB (22127439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49549b1de79f49791fe9f9a24a22d1e3b81a86373322657e1b0a172af6e5bb3e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 04:53:58 GMT
RUN apk --no-cache add ca-certificates
# Tue, 29 Jan 2019 22:20:58 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.8/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 29 Jan 2019 22:20:58 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Tue, 29 Jan 2019 22:20:58 GMT
EXPOSE 80
# Tue, 29 Jan 2019 22:20:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 29 Jan 2019 22:20:58 GMT
CMD ["traefik"]
# Tue, 29 Jan 2019 22:20:58 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.8 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:e76466c193c5ded69bb0c4af6430106bd3877f4fcb4e00c156d06fbc6289d584`  
		Last Modified: Tue, 29 Jan 2019 22:21:23 GMT  
		Size: 19.6 MB (19610928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94d1244f6fa5826679e3595be6a20ac510e61d68926e3a468401fd4d6c1f2d93`  
		Last Modified: Tue, 29 Jan 2019 22:21:18 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:a66ee4228378934c64af840dff577682e98f90289829932011cc972631a0ddd9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 MB (20871072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f785fea382cee7a3df06595b8b8f4883fe42ff8786592b7b107f8984766dd71`
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
# Wed, 30 Jan 2019 09:02:58 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.8/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 30 Jan 2019 09:02:59 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 30 Jan 2019 09:02:59 GMT
EXPOSE 80
# Wed, 30 Jan 2019 09:02:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 30 Jan 2019 09:03:00 GMT
CMD ["traefik"]
# Wed, 30 Jan 2019 09:03:00 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.8 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:14598f513b839471e6d882af09ef6ba48dafa54c2f2f7d75907771105fe17b85`  
		Last Modified: Wed, 30 Jan 2019 09:03:37 GMT  
		Size: 18.4 MB (18415566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e23fa311876639d4a2637c54650c7a621c2b0e47c503356865328ca68cbb44`  
		Last Modified: Wed, 30 Jan 2019 09:03:30 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:e6982d995eb7739917b704b9bec357969bcbf5b16f8f9b04d6147444cf091416
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.4 MB (20381062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a73b08b0805c4c36ee065388db1bebbf540e929def55688105d7bbfb31f241a7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 13:43:36 GMT
RUN apk --no-cache add ca-certificates
# Wed, 30 Jan 2019 10:55:38 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.8/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 30 Jan 2019 10:55:39 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 30 Jan 2019 10:55:39 GMT
EXPOSE 80
# Wed, 30 Jan 2019 10:55:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 30 Jan 2019 10:55:40 GMT
CMD ["traefik"]
# Wed, 30 Jan 2019 10:55:42 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.8 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a2b17ded4e203e2a62b383c829dcb8886b0dcb120aed18a8b522e09b42ad404`  
		Last Modified: Fri, 21 Dec 2018 13:44:24 GMT  
		Size: 308.7 KB (308679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d22bb59f46bcf8f73c997b2013b8ee43e41aabda8b12fc63780adc03d49aa2f3`  
		Last Modified: Wed, 30 Jan 2019 10:56:33 GMT  
		Size: 18.0 MB (17972047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd0821180a005eaa0a51bf991b774abfa10dd8a3bd5aaf5968377ca79e2cb50d`  
		Last Modified: Wed, 30 Jan 2019 10:56:25 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
