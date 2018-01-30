## `traefik:latest`

```console
$ docker pull traefik@sha256:a60f36880bbe8049cffb05f2f5d00d3068a327dfaebf85dab025c1d23b91f5bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:latest` - linux; amd64

```console
$ docker pull traefik@sha256:6e4a52e962ae092e3829c04101ecd7357a8cfe07d753fc41e3145d6c8200f3fc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13966130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f4f407e37eb553c48e3714d11cba273361e46b8dad1da77f5ae8e2ebc729a3a`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:11:40 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Mon, 29 Jan 2018 17:51:05 GMT
COPY file:30388a3329d923e68ae4b9658686e8a059d159d5f7a20e1af6a132f6fb0096fc in / 
# Mon, 29 Jan 2018 17:51:06 GMT
EXPOSE 80/tcp
# Mon, 29 Jan 2018 17:51:06 GMT
ENTRYPOINT ["/traefik"]
# Mon, 29 Jan 2018 17:51:06 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5d3835484afecc78dccfa2f7d4fcf273aacfe0c7600b957314e38488f3942045`  
		Last Modified: Fri, 03 Nov 2017 22:12:12 GMT  
		Size: 155.2 KB (155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f441a212b27c102c51b1d897378c7bf3b7cabccfd71ad3543ebc4b09bfee992`  
		Last Modified: Mon, 29 Jan 2018 17:52:17 GMT  
		Size: 13.8 MB (13810978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:latest` - linux; arm variant v6

```console
$ docker pull traefik@sha256:7706af3a85172ae8dfc484cf52b0d85548e9ff37d5f635639eeaaef800a69468
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13106519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3203c9bece6ca8ecacd7689f002f1c1be7591c0b3bf2fb2366f02c273f0fb9b`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 30 Jan 2018 00:48:32 GMT
COPY file:99327110161788da713e00367570948406debea0d320629119b8be20a275b2eb in / 
# Tue, 30 Jan 2018 00:48:32 GMT
EXPOSE 80/tcp
# Tue, 30 Jan 2018 00:48:32 GMT
ENTRYPOINT ["/traefik"]
# Tue, 30 Jan 2018 00:48:32 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:774c40f65264e253a5a5638bb2dd61f447112f6aa2fc8ac8d38334c3d2aea6a4`  
		Last Modified: Tue, 30 Jan 2018 00:48:55 GMT  
		Size: 13.0 MB (12951335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:latest` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:5fe69ddd9904b7f555759c4c662ec269a6023c797e073121f11804af0860daa7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.8 MB (12771882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f5efc3d608ac69879bf459dd69f1a61d03da4a221ea980dadbbdda0c2b90204`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 30 Jan 2018 05:54:46 GMT
COPY file:8d1e7379b82097b2e92b125ef91a9d2cbb8845836732bc5168bd5a8c3c406146 in / 
# Tue, 30 Jan 2018 05:54:47 GMT
EXPOSE 80/tcp
# Tue, 30 Jan 2018 05:54:47 GMT
ENTRYPOINT ["/traefik"]
# Tue, 30 Jan 2018 05:54:48 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a9ab118d1a6d8b2fdd8f0ad7d9b368f6e0b7c9211915875feb6c71de2bd2203`  
		Last Modified: Tue, 30 Jan 2018 05:55:42 GMT  
		Size: 12.6 MB (12616731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
