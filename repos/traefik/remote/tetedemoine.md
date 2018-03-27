## `traefik:tetedemoine`

```console
$ docker pull traefik@sha256:fd09c82603f77cd6927c352ee2e90990fd4ed4ec1b5cc7a0f2b94e81284b633b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:tetedemoine` - linux; amd64

```console
$ docker pull traefik@sha256:8d727f9dd0c4e8de291655e706dd11e0082a82649901043ccefa856efd747e15
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14313214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:657d27b7f3d281faf5930169f2b5456080535b76d679c8a03aa4447060b6e9f9`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:11:40 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Mon, 26 Mar 2018 22:58:33 GMT
COPY file:d16de243486f2ece2835469c122a8799dc4c695b9691c8c6019ab806b8a7e320 in / 
# Mon, 26 Mar 2018 22:58:33 GMT
EXPOSE 80/tcp
# Mon, 26 Mar 2018 22:58:34 GMT
ENTRYPOINT ["/traefik"]
# Mon, 26 Mar 2018 22:58:34 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5d3835484afecc78dccfa2f7d4fcf273aacfe0c7600b957314e38488f3942045`  
		Last Modified: Fri, 03 Nov 2017 22:12:12 GMT  
		Size: 155.2 KB (155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57dff4bf027cf012cb271d35d5da0fa90298f386fa3181002d7dae6fa7e37ca2`  
		Last Modified: Mon, 26 Mar 2018 22:59:51 GMT  
		Size: 14.2 MB (14158062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:tetedemoine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:aac502ee54f7354afd89daf7f9e4f1ff49c5e9f281486e2ca560a2be2809d1c3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 MB (13705594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2421ad0ef477b4aa98c7442c4ac286fdeaee9824e9af355447a70c34af5e20fc`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Mon, 26 Mar 2018 23:48:24 GMT
COPY file:7810abc00b21e1d90206239fb23a9f1fe6bdc46c4844607bcfdc70010bb5a03c in / 
# Mon, 26 Mar 2018 23:48:25 GMT
EXPOSE 80/tcp
# Mon, 26 Mar 2018 23:48:25 GMT
ENTRYPOINT ["/traefik"]
# Mon, 26 Mar 2018 23:48:25 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c180fc5960d7266dc572589225ec7bebeb129d83159b8c2fcd5639974ed8b25`  
		Last Modified: Mon, 26 Mar 2018 23:48:55 GMT  
		Size: 13.6 MB (13550410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:tetedemoine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:8b07f8b3f650e25afe7dc4da883f8b479870a378710cd42caa44de4d93f20937
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 MB (13420474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be8520cb10fdcdbad0cac5bc3ee9e33d0ff5a90e3e4f189cd550a218b7a04b1c`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 27 Mar 2018 04:55:21 GMT
COPY file:db905fb25b2ae4222ca0383cea2b01c603890234f6c60958add02a6d0ac748c2 in / 
# Tue, 27 Mar 2018 04:55:22 GMT
EXPOSE 80/tcp
# Tue, 27 Mar 2018 04:55:23 GMT
ENTRYPOINT ["/traefik"]
# Tue, 27 Mar 2018 04:55:24 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6afcf0d78305d73a95d6ce9cf0100c478fa7a7dcbb42f18783a63dd7893d112e`  
		Last Modified: Tue, 27 Mar 2018 04:56:49 GMT  
		Size: 13.3 MB (13265323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
