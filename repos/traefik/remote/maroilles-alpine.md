## `traefik:maroilles-alpine`

```console
$ docker pull traefik@sha256:6209fe8b97c5987fce0626ddb7c86b08970260780714066ef05d7fa20b773684
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

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
