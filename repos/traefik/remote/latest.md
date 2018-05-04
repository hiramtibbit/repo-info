## `traefik:latest`

```console
$ docker pull traefik@sha256:e73cd6200db21263718e4a3cd9c42ce5bb2b4dadf633408df2b4478b48a3110b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:latest` - linux; amd64

```console
$ docker pull traefik@sha256:c0b38d758c0fbb19189a0fddbb264c76f0ac8fba0e4d602916d3402bae31c93d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 MB (15419838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28da388cd99aec323e1880dc55025853604a4b1ed758184971afccb934f04a85`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:11:40 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 03 May 2018 20:56:19 GMT
COPY file:acd37092810a71fe4aaba045884576735310c0821460db9e4fed9618ee078900 in / 
# Thu, 03 May 2018 20:56:20 GMT
EXPOSE 80/tcp
# Thu, 03 May 2018 20:56:22 GMT
ENTRYPOINT ["/traefik"]
# Thu, 03 May 2018 20:56:22 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5d3835484afecc78dccfa2f7d4fcf273aacfe0c7600b957314e38488f3942045`  
		Last Modified: Fri, 03 Nov 2017 22:12:12 GMT  
		Size: 155.2 KB (155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be4b9d03cf4c7b1addf5873baa21dd64fafc83bc9d97f79f630369acdf4cdbd8`  
		Last Modified: Thu, 03 May 2018 20:59:43 GMT  
		Size: 15.3 MB (15264686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:latest` - linux; arm variant v6

```console
$ docker pull traefik@sha256:80d864d4d37d6dde91ae363564930fc39ddeed50f9df75b47e28814b02a89b29
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.8 MB (14801825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8eb01753118f4b03514932ec45316af2eeca03aa907d512539c81ec6b9d41a5f`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Fri, 04 May 2018 08:01:31 GMT
COPY file:ab5d714b7e22103d024028295088c1cbfe909c9b39da33d6a6f417be91c9fd92 in / 
# Fri, 04 May 2018 08:01:31 GMT
EXPOSE 80/tcp
# Fri, 04 May 2018 08:01:31 GMT
ENTRYPOINT ["/traefik"]
# Fri, 04 May 2018 08:01:32 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7ef3bc3e19946b0f290ea390c8cb019ddc40683f282c0ad47c17a54e0aa526a`  
		Last Modified: Fri, 04 May 2018 08:01:58 GMT  
		Size: 14.6 MB (14646641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
