## `traefik:alpine`

```console
$ docker pull traefik@sha256:12a43157fd8d5625416344ec62a7bbb761c065c491db5eecb3a6ea392ae66657
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:alpine` - linux; amd64

```console
$ docker pull traefik@sha256:ec9fb2b516d761470e92789541de36b987abafbe24545e7327e61b89d6df7284
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.5 MB (21499463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1545aa48563651c9bdec9eae25e37e00ced30734b883c7b48c419d5135b2460f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 03:37:55 GMT
RUN apk --no-cache add ca-certificates
# Mon, 24 Sep 2018 22:27:50 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Mon, 24 Sep 2018 22:27:50 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Mon, 24 Sep 2018 22:27:50 GMT
EXPOSE 80/tcp
# Mon, 24 Sep 2018 22:27:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 24 Sep 2018 22:27:51 GMT
CMD ["traefik"]
# Mon, 24 Sep 2018 22:27:51 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:d0484ee3a46de0900d68d6232665a394e481b32b1163c91a2ce708820ef9b15a`  
		Last Modified: Mon, 24 Sep 2018 22:28:56 GMT  
		Size: 19.0 MB (18983228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f2db0b1be44a7e26429c00b9c3de8ef3dd6d43c69aebbe074b7ab7e0a46f3bb`  
		Last Modified: Mon, 24 Sep 2018 22:28:51 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
