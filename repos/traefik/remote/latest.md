## `traefik:latest`

```console
$ docker pull traefik@sha256:9374949104d63ebe6c6b01a20f26ee7fef6a8778d7c09855b8aa544c8d1822c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:latest` - linux; arm variant v6

```console
$ docker pull traefik@sha256:c4c82baf7e74162fdc3e59981214236c211c956177036be59420de692520ec53
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 MB (13235381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35432e6ca8a0c5f31fe7deb875dd7fc1a3a5121520e9c0d6e898e20b9d651d3a`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 15 Mar 2018 23:48:25 GMT
COPY file:81a8c5cbebf4ec1b8f794eed3a8bbfb963571825cc8917de6db828f7abe03c67 in / 
# Thu, 15 Mar 2018 23:48:25 GMT
EXPOSE 80/tcp
# Thu, 15 Mar 2018 23:48:26 GMT
ENTRYPOINT ["/traefik"]
# Thu, 15 Mar 2018 23:48:26 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a2b5589619111002fd55cff1b55cbf9363e5d6f3cf677ed11af800a50ac09d4`  
		Last Modified: Thu, 15 Mar 2018 23:48:50 GMT  
		Size: 13.1 MB (13080197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:latest` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:af362c3e2aba2258f0b4357a32f86c9f508985153c1f645da264f9964440b6e3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 MB (12882648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0006c2d4ff90f49f68264a3dc0ff87ca104f5ebb2cb2d8b833db89ad01ddd67a`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Fri, 16 Mar 2018 04:55:17 GMT
COPY file:07fc6a89166180ca7f38065f1f3f1001b8300f17d3f31791ec092d253ec8f3e6 in / 
# Fri, 16 Mar 2018 04:55:18 GMT
EXPOSE 80/tcp
# Fri, 16 Mar 2018 04:55:18 GMT
ENTRYPOINT ["/traefik"]
# Fri, 16 Mar 2018 04:55:19 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d32d3f00ec48c5e6d1d0aad98cb0dc99e9860c1794079af113d6f096db21cc13`  
		Last Modified: Fri, 16 Mar 2018 04:56:33 GMT  
		Size: 12.7 MB (12727497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
