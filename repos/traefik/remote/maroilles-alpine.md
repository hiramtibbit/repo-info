## `traefik:maroilles-alpine`

```console
$ docker pull traefik@sha256:5bfdac060499d6f400f9a8464392d64db34333ce3f219245508e320d3fb200e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:maroilles-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:18b9010d897db13626938ae83b9a4e5893a7f238a3f855730368f99b4c009c53
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.1 MB (22121933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8958b0d04475d47aa79c687daf3c384a9aedc9cd7ccfaf8125b7f1626c4805b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 04:53:58 GMT
RUN apk --no-cache add ca-certificates
# Tue, 08 Jan 2019 23:52:58 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.7/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 08 Jan 2019 23:52:58 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Tue, 08 Jan 2019 23:52:59 GMT
EXPOSE 80
# Tue, 08 Jan 2019 23:52:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 08 Jan 2019 23:52:59 GMT
CMD ["traefik"]
# Tue, 08 Jan 2019 23:52:59 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.7 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:50cd2a96573dae37cb6f90347a4ea6a28746f03b35a43b10f74a194b920e4104`  
		Last Modified: Tue, 08 Jan 2019 23:53:24 GMT  
		Size: 19.6 MB (19605420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9b3bbabfe45ac023af782fd938cf2a86ed67752ce9e168677105549976647ed`  
		Last Modified: Tue, 08 Jan 2019 23:53:20 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:maroilles-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:eb4e143f857c96d10d7226f9df1d3607847a02e023d87725f4ab4e82db8308b3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 MB (20856832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9f3385158594c1abe972fc97c121440bba159162b9a709181ae07516b296f3c`
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
# Wed, 09 Jan 2019 08:57:52 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.7/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 09 Jan 2019 08:57:52 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 09 Jan 2019 08:57:53 GMT
EXPOSE 80
# Wed, 09 Jan 2019 08:57:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 09 Jan 2019 08:57:53 GMT
CMD ["traefik"]
# Wed, 09 Jan 2019 08:57:54 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.7 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:fc3bcc92037368d8f1d56819a18788ea17741fe3f1a25f74b9e9b9f78ff2f35f`  
		Last Modified: Wed, 09 Jan 2019 08:58:30 GMT  
		Size: 18.4 MB (18401326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02eb2e0b727229e23fce225bca3a768423bd2b1e3179b24a0367c9c91e0f88f1`  
		Last Modified: Wed, 09 Jan 2019 08:58:23 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:maroilles-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:9fc741f6b99526a960967e756cc08428accfc77b5380a55cec30108fcdd2c6f7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.4 MB (20366770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abeb00662aef2c35644640aa73e116f481db8d69d67daa64b5e376b14d8fca51`
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
# Wed, 09 Jan 2019 11:46:24 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.7/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 09 Jan 2019 11:46:26 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 09 Jan 2019 11:46:27 GMT
EXPOSE 80
# Wed, 09 Jan 2019 11:46:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 09 Jan 2019 11:46:28 GMT
CMD ["traefik"]
# Wed, 09 Jan 2019 11:46:29 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.7 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:37aba876c5adb2dfed079254df8c1b8038a60e0292a734e9e1f484bb88b320db`  
		Last Modified: Wed, 09 Jan 2019 11:47:20 GMT  
		Size: 18.0 MB (17957757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00b036c89e31ca759c210c898cea16f4160841b075795fe43e5afba39a72c453`  
		Last Modified: Wed, 09 Jan 2019 11:47:12 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
