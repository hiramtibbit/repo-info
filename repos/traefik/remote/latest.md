## `traefik:latest`

```console
$ docker pull traefik@sha256:be34ed0baca36a538752a363bb78ba37f2fc26c7a561e371e8e369cdafb393a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:latest` - linux; amd64

```console
$ docker pull traefik@sha256:4b49761d77bbb645a3f23c60319661b2f4a3984022af83feba4ff56c341758d6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13968769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71151a2404d26a17dd493bba2bc1b5d26f75ae38685eb861f8074892992eabe7`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:11:40 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Mon, 12 Feb 2018 17:49:02 GMT
COPY file:415d80e5666c654973362f16f82196c0fb1cc800e320a748c2290d38a0d0b66d in / 
# Mon, 12 Feb 2018 17:49:02 GMT
EXPOSE 80/tcp
# Mon, 12 Feb 2018 17:49:02 GMT
ENTRYPOINT ["/traefik"]
# Mon, 12 Feb 2018 17:49:03 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5d3835484afecc78dccfa2f7d4fcf273aacfe0c7600b957314e38488f3942045`  
		Last Modified: Fri, 03 Nov 2017 22:12:12 GMT  
		Size: 155.2 KB (155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57b704e469e3fdf4634d7cae5eeb3449992107af0711e534d5f807d66a9db197`  
		Last Modified: Mon, 12 Feb 2018 17:49:48 GMT  
		Size: 13.8 MB (13813617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:latest` - linux; arm variant v6

```console
$ docker pull traefik@sha256:f97e013a9d24022a8d351683eea5a2154854b1d0ef30fb39abc6172cb81618be
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13110300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63a3bc5d2d1d33aaf780341856ec7e95f0cd615f115890502509e01dc5b74b78`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 13 Feb 2018 00:48:32 GMT
COPY file:ff6bf13b40ef20dbb3a206bdc507711c3b6594905b5d60e13cbfcf836bfdde30 in / 
# Tue, 13 Feb 2018 00:48:32 GMT
EXPOSE 80/tcp
# Tue, 13 Feb 2018 00:48:32 GMT
ENTRYPOINT ["/traefik"]
# Tue, 13 Feb 2018 00:48:33 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:194d822026d38350daeea1fa22b155e90c929aafc6fb7fa1d3059849fddfe9cd`  
		Last Modified: Tue, 13 Feb 2018 00:48:54 GMT  
		Size: 13.0 MB (12955116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:latest` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:f796e665986bb758be4fd9dc763c432952e334a2b10c534634feca884db7c8dc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.8 MB (12773570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd0e7611f83ab94bdaa569d41a1539d3bbc836cc69bf4b7e766431035c3952f2`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 13 Feb 2018 05:54:55 GMT
COPY file:ce23572cfb3d099da7f1a3f457c97491dfbded84add02f3329bbe1b7c90bfeb2 in / 
# Tue, 13 Feb 2018 05:54:55 GMT
EXPOSE 80/tcp
# Tue, 13 Feb 2018 05:54:56 GMT
ENTRYPOINT ["/traefik"]
# Tue, 13 Feb 2018 05:54:57 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45c49b251ac7e5abdab4bbe1c23e54ab7691b1fffdfc0f927b05e6839626c708`  
		Last Modified: Tue, 13 Feb 2018 05:55:50 GMT  
		Size: 12.6 MB (12618419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
