## `traefik:maroilles-alpine`

```console
$ docker pull traefik@sha256:83441331cd6514377a9ec4601cad11cd241c2e7f2c81c2d3694a7de02e5ffb86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:maroilles-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:8e7d393868ecdcb527366713cb260ac4f5e4e91cde8167e8216293728bc1a39b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.8 MB (21837984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c856088343ab95128284c86be5c67b99418b52f6b5161ddadfbd60ba76ba9758`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 03:37:55 GMT
RUN apk --no-cache add ca-certificates
# Mon, 15 Oct 2018 21:13:31 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.3/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Mon, 15 Oct 2018 21:13:32 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Mon, 15 Oct 2018 21:13:32 GMT
EXPOSE 80/tcp
# Mon, 15 Oct 2018 21:13:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 15 Oct 2018 21:13:32 GMT
CMD ["traefik"]
# Mon, 15 Oct 2018 21:13:32 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.3 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:05e7f84e5f04dd8833f0d5e5c83df26342e69bf6ba750154ed1a72732cca9276`  
		Last Modified: Mon, 15 Oct 2018 21:14:49 GMT  
		Size: 19.3 MB (19321752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2dd5b8dca35db1ace190ed9e1f78ac8895c856bce45d37b9d5a960b8951ca9a`  
		Last Modified: Mon, 15 Oct 2018 21:14:45 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
