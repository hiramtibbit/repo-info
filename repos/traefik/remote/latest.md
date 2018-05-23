## `traefik:latest`

```console
$ docker pull traefik@sha256:31de7b1e00170aade28f808f879ee5b237ab85461e5bbd46a40f3d609252d5b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:latest` - linux; amd64

```console
$ docker pull traefik@sha256:f8730d883f69c339b86356b815219cd2a5085762979fea934a0324f9e85e672c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.9 MB (14854196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5edf95c5a688b198e9d068f0930a596ce13f355255f2dea8200ad4ab21ddb23`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:11:40 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 22 May 2018 17:35:36 GMT
COPY file:01b53bda9d00036627573f3240791881e5a6c326964264e862f7815e0ca32b9d in / 
# Tue, 22 May 2018 17:35:36 GMT
EXPOSE 80/tcp
# Tue, 22 May 2018 17:35:37 GMT
ENTRYPOINT ["/traefik"]
# Tue, 22 May 2018 17:35:37 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5d3835484afecc78dccfa2f7d4fcf273aacfe0c7600b957314e38488f3942045`  
		Last Modified: Fri, 03 Nov 2017 22:12:12 GMT  
		Size: 155.2 KB (155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f88ca25e71d61b4b4386aff52525e0976c900ead075b26956289fd2fe806f200`  
		Last Modified: Tue, 22 May 2018 17:36:06 GMT  
		Size: 14.7 MB (14699044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:latest` - linux; arm variant v6

```console
$ docker pull traefik@sha256:1c456ad86dfd675c016f06c7b372096110d5152b2df17cdace621f7d740ab41e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 MB (14237286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14a0770fb5ef30d4b74d395ebe6ae84de88e4fe19a3e1d1b1752a5a7eefd7a1f`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 23 May 2018 08:02:43 GMT
COPY file:b1101aa874e64e6c37796932e9a867541049bfb37e2f0b0da2865148875e5cfd in / 
# Wed, 23 May 2018 08:02:44 GMT
EXPOSE 80/tcp
# Wed, 23 May 2018 08:02:44 GMT
ENTRYPOINT ["/traefik"]
# Wed, 23 May 2018 08:02:45 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40fc7549f85b402d15165cbe3cb39bff4087efeffdcb82a0d8a66fd3c0d75296`  
		Last Modified: Wed, 23 May 2018 08:03:12 GMT  
		Size: 14.1 MB (14082102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:latest` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:4d3023f25e9ac5b978186ad2fb3f44790a93fede978876e25e1d9e25011da66c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 MB (13947635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:327f3cd201815b231e79ffbd25e548cf8f819ae342871f6814b33778d611824b`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 23 May 2018 09:58:58 GMT
COPY file:08613ad6a91af01fed010016e17aaac3e06dd84f195d97e16085fbbf4a779229 in / 
# Wed, 23 May 2018 09:58:58 GMT
EXPOSE 80/tcp
# Wed, 23 May 2018 09:58:59 GMT
ENTRYPOINT ["/traefik"]
# Wed, 23 May 2018 09:59:00 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d67dff6ba0a5c87055de2029e2ed0a093b0ee196bd4d0c716c09cf556c607e2`  
		Last Modified: Wed, 23 May 2018 09:59:59 GMT  
		Size: 13.8 MB (13792484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
