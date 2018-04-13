## `traefik:tetedemoine`

```console
$ docker pull traefik@sha256:60161bbc27d6d098786f63e318be2d53214e04027f0d1a8f6429d48b15ef21e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:tetedemoine` - linux; amd64

```console
$ docker pull traefik@sha256:faa8e8cd9f363d6d25fa87d22c21351f8995c836a98dc73baf94977dad4c0a71
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 MB (14578613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:274aeeeeb34dfb5ee76af4a15e9a8e22f1c93a5b67126ea209eff51b07f0154c`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:11:40 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 12 Apr 2018 18:10:32 GMT
COPY file:0bc8123027538011b5b4dca49544b2a4fd3191e4bbea02d98e8e9c7c85cc0721 in / 
# Thu, 12 Apr 2018 18:10:32 GMT
EXPOSE 80/tcp
# Thu, 12 Apr 2018 18:10:33 GMT
ENTRYPOINT ["/traefik"]
# Thu, 12 Apr 2018 18:10:33 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5d3835484afecc78dccfa2f7d4fcf273aacfe0c7600b957314e38488f3942045`  
		Last Modified: Fri, 03 Nov 2017 22:12:12 GMT  
		Size: 155.2 KB (155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b305ecb87a776d07062c053d03bf6c549a3e93d74f7825c62de9f1ff4b310d0a`  
		Last Modified: Thu, 12 Apr 2018 18:14:24 GMT  
		Size: 14.4 MB (14423461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:tetedemoine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:05f4123fd481dbece5f35a16f0722763d25ac0b408c781f308f5be6a023b1847
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13966504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f64da8d7c0f1e9f45b0f4395c01d6a01fed20ef1efc8dfbd6eabd4a8a814abd`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Fri, 13 Apr 2018 07:59:47 GMT
COPY file:4c140378f06ad8221b925b2cb1be66543007237c63483f9e17704072b2e23895 in / 
# Fri, 13 Apr 2018 07:59:47 GMT
EXPOSE 80/tcp
# Fri, 13 Apr 2018 07:59:48 GMT
ENTRYPOINT ["/traefik"]
# Fri, 13 Apr 2018 07:59:48 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d3e87e7bf2752be7faa348c508c5f4d0460d1671ffbcce3e75a9a5eab9a856c`  
		Last Modified: Fri, 13 Apr 2018 08:00:19 GMT  
		Size: 13.8 MB (13811320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:tetedemoine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:9765122dfeb3933dcb63fb20d0c4ad0d747e9294442e1b8363ce092060d4c46d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 MB (13672982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e05182dacac3795517b6716c30b147644514df0a965b07eaa0bbbf9dd5c4b846`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Fri, 13 Apr 2018 08:54:13 GMT
COPY file:14f2457249dd743281d9bd0ff01fa3ffae18a9c142f33d536285e7f1cf879fee in / 
# Fri, 13 Apr 2018 08:54:14 GMT
EXPOSE 80/tcp
# Fri, 13 Apr 2018 08:54:15 GMT
ENTRYPOINT ["/traefik"]
# Fri, 13 Apr 2018 08:54:16 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0c5b5499b3968093b0f78df07c0e4f45c04ddda14f45e72d352e4f05d81c668`  
		Last Modified: Fri, 13 Apr 2018 08:55:47 GMT  
		Size: 13.5 MB (13517831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
