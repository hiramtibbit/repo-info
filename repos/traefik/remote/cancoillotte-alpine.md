## `traefik:cancoillotte-alpine`

```console
$ docker pull traefik@sha256:e0c606d7c02e4dfeeed77de082b44b24f5b57ae7e2f5c6ccdce429033d2f77c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:cancoillotte-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:1b5723b95f73f21164d14f7003aed392c687da1ed71eb225f237d55230069d2e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.3 MB (16323435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57ec903ecd2097e12af60ae4b1d3bfc138c6e045ea9eeac4ed2c6d35907a8998`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 01:28:51 GMT
RUN apk --no-cache add ca-certificates
# Mon, 12 Feb 2018 17:49:25 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.5.2/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Mon, 12 Feb 2018 17:49:25 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Mon, 12 Feb 2018 17:49:25 GMT
EXPOSE 80/tcp
# Mon, 12 Feb 2018 17:49:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 12 Feb 2018 17:49:26 GMT
CMD ["traefik"]
# Mon, 12 Feb 2018 17:49:26 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.2 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:051314bcc7279f0816169a779da9c17c098c7fa4f2d90151db4cbab5f2abbe91`  
		Last Modified: Mon, 12 Feb 2018 17:57:30 GMT  
		Size: 14.0 MB (13980357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c02ab74747065282a88d7550a466d92c17227635034b721cddddc1262221592`  
		Last Modified: Mon, 12 Feb 2018 17:57:26 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:cancoillotte-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:ead09ff1330633d3fe790f67191b9d279481c1864c9706f741e3ac7b2206a4cd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 MB (15442111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d352de1252258ccc3742ea2ae418336f6dd27be542e71023d098cca5f78190ab`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:35 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Wed, 25 Oct 2017 23:28:36 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:36 GMT
CMD ["/bin/sh"]
# Wed, 15 Nov 2017 00:48:35 GMT
RUN apk --no-cache add ca-certificates
# Tue, 13 Feb 2018 00:48:41 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.5.2/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Tue, 13 Feb 2018 00:48:42 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Tue, 13 Feb 2018 00:48:42 GMT
EXPOSE 80/tcp
# Tue, 13 Feb 2018 00:48:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 13 Feb 2018 00:48:42 GMT
CMD ["traefik"]
# Tue, 13 Feb 2018 00:48:42 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cda69762aee1588fa82aeabf1af6d6ad24f737cce1451fab2e0199849b1e12e`  
		Last Modified: Wed, 25 Oct 2017 23:28:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a327851d323fa2321bd95a42227f24138450e43ea70af9570970baf49ae6ba`  
		Last Modified: Wed, 15 Nov 2017 00:49:06 GMT  
		Size: 352.2 KB (352157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c50ba9be74c15df0817d88a6b52032769244d8e1e1a59a8bf30dfe45fc5b6b87`  
		Last Modified: Tue, 13 Feb 2018 00:49:13 GMT  
		Size: 13.1 MB (13123456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e417a2f9b0376e416d8eda0a1f5b250a404e0e348ede3ad73b04c6740717ce0d`  
		Last Modified: Tue, 13 Feb 2018 00:49:09 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
