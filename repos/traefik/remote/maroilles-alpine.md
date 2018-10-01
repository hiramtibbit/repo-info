## `traefik:maroilles-alpine`

```console
$ docker pull traefik@sha256:88872e55cab27e7bba4b6e061c6a2601484ad5de65fb9805e432cae0e0ebdcc8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:maroilles-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:1e0f4d722318ac705441be193f6965019a3eee846f3aa40d48dfa56c6d9798c4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.5 MB (21500798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57542fff505e4d985798c5ed4b173a7f0a5b3e2ed10672429bfc0e1683be415f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 03:37:55 GMT
RUN apk --no-cache add ca-certificates
# Mon, 01 Oct 2018 19:20:27 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.1/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Mon, 01 Oct 2018 19:20:27 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Mon, 01 Oct 2018 19:20:28 GMT
EXPOSE 80/tcp
# Mon, 01 Oct 2018 19:20:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 01 Oct 2018 19:20:28 GMT
CMD ["traefik"]
# Mon, 01 Oct 2018 19:20:28 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.1 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:28e7e52160677b87880b5897ce81c2352b11944c633dd1fb403ee5a3ff49d9d5`  
		Last Modified: Mon, 01 Oct 2018 19:21:57 GMT  
		Size: 19.0 MB (18984564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8510aeb5ff7fd39186bfe325ce771cde621ea6c667ed11dbbe1b0355be4e4449`  
		Last Modified: Mon, 01 Oct 2018 19:21:53 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
