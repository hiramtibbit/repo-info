## `traefik:tetedemoine`

```console
$ docker pull traefik@sha256:95057fb8248499b9ddedef139ad7f56169e344cc69fd685a7d0daa8adaa72d01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:tetedemoine` - linux; amd64

```console
$ docker pull traefik@sha256:a49afa04eab91c5eccef63e1c22560365b16779b17ab404feeed2c4a19b7d696
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.9 MB (14888244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8b7f7e1c8d890faae86dc8f22136d13a322289d75c2c8ce33dcae81947f914c`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:11:40 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 05 Jun 2018 17:53:51 GMT
COPY file:1cf6828b90bf50fe31d45e267baa3d72366e13a44614b5096d61146d90776863 in / 
# Tue, 05 Jun 2018 17:53:51 GMT
EXPOSE 80/tcp
# Tue, 05 Jun 2018 17:53:51 GMT
ENTRYPOINT ["/traefik"]
# Tue, 05 Jun 2018 17:53:51 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5d3835484afecc78dccfa2f7d4fcf273aacfe0c7600b957314e38488f3942045`  
		Last Modified: Fri, 03 Nov 2017 22:12:12 GMT  
		Size: 155.2 KB (155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9956c661348afd49c27bccc1f201ff0b64006f6a79d40b94d660194c55a7cfe`  
		Last Modified: Tue, 05 Jun 2018 17:54:23 GMT  
		Size: 14.7 MB (14733092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:tetedemoine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:c7c9162710e9814d128f7beba2028b478713e63a88eeb58ee1762337433dbd34
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14268712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3dec8f667d29e1bde0f1ed20e5a053c938216b7e43a2dcc96878a9d4c510914`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 05 Jun 2018 17:47:09 GMT
COPY file:32fbdf8e57d557aad963d8bd9d585745365aa5e1a10014bd09de379a8cfa852a in / 
# Tue, 05 Jun 2018 17:47:09 GMT
EXPOSE 80/tcp
# Tue, 05 Jun 2018 17:47:09 GMT
ENTRYPOINT ["/traefik"]
# Tue, 05 Jun 2018 17:47:10 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f83355cc339d9deb653708b614aa94a58316e0b3def1f5ee9bb0d10e0087c3a`  
		Last Modified: Tue, 05 Jun 2018 17:47:36 GMT  
		Size: 14.1 MB (14113528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:tetedemoine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:30f5f623159316dcedbd11463f1f311ce90be1b7b49d144563fadacd267f3d16
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13970156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14549af24dbcd8d63a4d63b66c7f641a2b0d1665dfa67da4abcf80c13e530391`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 05 Jun 2018 17:47:58 GMT
COPY file:a0022dfe017fe2b717fd7f556158fa25f3daf02b436aa1cbe270d3a8f160d238 in / 
# Tue, 05 Jun 2018 17:47:59 GMT
EXPOSE 80/tcp
# Tue, 05 Jun 2018 17:47:59 GMT
ENTRYPOINT ["/traefik"]
# Tue, 05 Jun 2018 17:48:00 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a085d104228aea736e7db0572509c2b5269de957d6818fa4b4c3cd454dde7159`  
		Last Modified: Tue, 05 Jun 2018 17:48:56 GMT  
		Size: 13.8 MB (13815005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
