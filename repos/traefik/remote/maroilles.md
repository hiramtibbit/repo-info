## `traefik:maroilles`

```console
$ docker pull traefik@sha256:6bd56652c7e833d2af080825e0b3b45a53e38f63abdebe3ef9c521ab419f5a18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:maroilles` - linux; amd64

```console
$ docker pull traefik@sha256:a684eabb07572780ae26f2128b1d22927cd07a852d88653127894335e8c5d635
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.1 MB (16116024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a053c6ddab18e6f582cd1cdf2d7f4f3c9c5ccb668c39a531fd64d6e74907d26`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 16 Jun 2018 06:01:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 17 Jul 2018 23:29:41 GMT
COPY file:823416be9ca92c00616a43927a1342324ff5b2139a6851ddfa2548b8fe4a63c3 in / 
# Tue, 17 Jul 2018 23:29:42 GMT
EXPOSE 80/tcp
# Tue, 17 Jul 2018 23:29:42 GMT
ENTRYPOINT ["/traefik"]
# Tue, 17 Jul 2018 23:29:43 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:03732cc4924a93fcbcbed879c4c63aad534a63a64e9919eceddf48d7602407b5`  
		Last Modified: Sat, 16 Jun 2018 06:03:25 GMT  
		Size: 155.2 KB (155150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bf755c1d99376372ede988336880c06d371f91044aff02158d9846a458c6b04`  
		Last Modified: Tue, 17 Jul 2018 23:30:43 GMT  
		Size: 16.0 MB (15960874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:maroilles` - linux; arm variant v6

```console
$ docker pull traefik@sha256:36156e08b8534b5d6cd34034791e2c143d0dbab4fb346fd4e89ab45764ba4326
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 MB (15459185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f172b5e456286163eacd5611445db7eeb6cbc2a912c07eed9b9103e721379b67`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 18 Jul 2018 08:21:50 GMT
COPY file:7a22ad8b61835c41645746dff419d5d2e706d7023141e9d29e571f1c8ac8c510 in / 
# Wed, 18 Jul 2018 08:21:50 GMT
EXPOSE 80/tcp
# Wed, 18 Jul 2018 08:21:50 GMT
ENTRYPOINT ["/traefik"]
# Wed, 18 Jul 2018 08:21:50 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d66d80e6667c275375d1f6f6147bea10d432c02d7d2a9fe1276371768d28503`  
		Last Modified: Wed, 18 Jul 2018 08:22:21 GMT  
		Size: 15.3 MB (15304001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:maroilles` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:c45119b395dfdc87d7311ca2a1ef4a3ac27e1496f53655bc65f6e29ceb1f05ba
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.2 MB (15167838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b686b53cf7e64da6b4055fccd14629c4c14ca4e0fa034c30b90ada3653a08aa`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 18 Jul 2018 08:40:13 GMT
COPY file:ddc5fa85afa58cee09434d7a5b68ee66d826b0fa09bd1595a03c76f85ee84183 in / 
# Wed, 18 Jul 2018 08:40:14 GMT
EXPOSE 80/tcp
# Wed, 18 Jul 2018 08:40:15 GMT
ENTRYPOINT ["/traefik"]
# Wed, 18 Jul 2018 08:40:15 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc839df70f175be3239a573ab6183006b9792db6df97def301ea31382330cafa`  
		Last Modified: Wed, 18 Jul 2018 08:41:35 GMT  
		Size: 15.0 MB (15012687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
