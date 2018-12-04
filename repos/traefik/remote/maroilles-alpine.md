## `traefik:maroilles-alpine`

```console
$ docker pull traefik@sha256:86a81f6159b023618a0ccf7d6bd925d79f6d4c55d03d16e6d162ec54756ab793
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:maroilles-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:c77e1743c66dc3939c9d38d79238d0211426d0b3d9ab90afd7aeffa7025ef3c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.0 MB (22046849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:990385f35a14b309e02b7078c798c6680bbf5b24ad38e244f3ceaddc57c8194f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 03:37:55 GMT
RUN apk --no-cache add ca-certificates
# Tue, 04 Dec 2018 01:18:56 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.5/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 04 Dec 2018 01:19:10 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Tue, 04 Dec 2018 01:19:10 GMT
EXPOSE 80/tcp
# Tue, 04 Dec 2018 01:19:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 04 Dec 2018 01:19:11 GMT
CMD ["traefik"]
# Tue, 04 Dec 2018 01:19:11 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.5 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:0b53d941771778747140beb7f6fd90261c6bef9748b4bdda8184000b1b5de233`  
		Last Modified: Tue, 04 Dec 2018 01:22:01 GMT  
		Size: 19.5 MB (19530616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc3a62d94db1f5044347231e75cfd951be55e14987424391b243b880db2d7057`  
		Last Modified: Tue, 04 Dec 2018 01:21:56 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:maroilles-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:fab1798c7ec690e0e89ee71b9c2e7d39e2dfed613f66273e6d54083abe68acb1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 MB (20792117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4429ec35756e9105204ae3f9ed76a0909cfee4b519cfe73024dfbc9d8a6c8e4`
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
# Tue, 04 Dec 2018 09:10:24 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.5/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 04 Dec 2018 09:10:25 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Tue, 04 Dec 2018 09:10:25 GMT
EXPOSE 80/tcp
# Tue, 04 Dec 2018 09:10:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 04 Dec 2018 09:10:26 GMT
CMD ["traefik"]
# Tue, 04 Dec 2018 09:10:26 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.5 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:ed0d7394b704264a940cac126f93461f1c79791daf177afcba4d333696967460`  
		Last Modified: Tue, 04 Dec 2018 09:11:15 GMT  
		Size: 18.3 MB (18336103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:580132669f27c2b4c56f2a63bae7acff5b2e51ff3672ee453df076581d12b8e3`  
		Last Modified: Tue, 04 Dec 2018 09:11:09 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:maroilles-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:4098e8189adc01d3bcdffb82483d875172444d3bdef309a4bf17b25699d1f123
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.3 MB (20300433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9da8b2fa79b3bd2f6aa9f03292845c83cd9bab563f8826acbd9814575531c918`
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
# Tue, 04 Dec 2018 14:01:35 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.5/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 04 Dec 2018 14:01:35 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Tue, 04 Dec 2018 14:01:36 GMT
EXPOSE 80/tcp
# Tue, 04 Dec 2018 14:01:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 04 Dec 2018 14:01:38 GMT
CMD ["traefik"]
# Tue, 04 Dec 2018 14:01:38 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.5 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:8c7d764b769ad58678971f80adc1f538dcc0afe140332fdb4dfa32237f1dbd1b`  
		Last Modified: Tue, 04 Dec 2018 14:03:14 GMT  
		Size: 17.9 MB (17891642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e5d3c16e89847b07edc861ca1312a045c7b8ed5ec8c4fd329bb263f18b77472`  
		Last Modified: Tue, 04 Dec 2018 14:03:06 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
