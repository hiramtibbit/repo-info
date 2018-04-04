## `traefik:tetedemoine-alpine`

```console
$ docker pull traefik@sha256:cc0e48156b24ee9ad41674ddbccf7c4122d011e9d96b7546d4c86c5ed4749282
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:tetedemoine-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:b30941d6c61ec13cb4f2ee86aff9db238d5eeb03b9958372237ec1400f476564
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16658490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7d19f78a20fe87b7d4ec31725a2f405b324e83a87ff2a873f75303ce5697df7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 01:28:51 GMT
RUN apk --no-cache add ca-certificates
# Wed, 04 Apr 2018 17:18:58 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.0-rc4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 04 Apr 2018 17:18:59 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 04 Apr 2018 17:18:59 GMT
EXPOSE 80/tcp
# Wed, 04 Apr 2018 17:18:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 04 Apr 2018 17:19:00 GMT
CMD ["traefik"]
# Wed, 04 Apr 2018 17:19:00 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e3eb27e4ab8454370b50d5b8d9c153713bebe12c43d63dac2ae368fcce7d6d4`  
		Last Modified: Wed, 10 Jan 2018 01:30:19 GMT  
		Size: 351.0 KB (350991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4395b57c801fefb4e920c2932f7f75fab0de6f19fd49febcd962ca6f05afbc3`  
		Last Modified: Wed, 04 Apr 2018 17:21:17 GMT  
		Size: 14.3 MB (14315410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7112b5d9f3cf768efff7add4bb912335c6bbcd29ba50464631102a2106e21f0a`  
		Last Modified: Wed, 04 Apr 2018 17:21:14 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
