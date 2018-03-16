## `traefik:cancoillotte-alpine`

```console
$ docker pull traefik@sha256:66d553e9d55f759c4bfc64a741835fb9d1eec1316304f6dc2d2151c84075947c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:cancoillotte-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:a23c7a367ec7c2c393e5beea0f870fd2251d6352b697d1414b7991dcc5d8dd62
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.4 MB (16439702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adb52c73636ca298f308971a1163641169256d5084d3ec639c255620d4bcd9eb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 01:28:51 GMT
RUN apk --no-cache add ca-certificates
# Fri, 16 Mar 2018 07:19:05 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.5.4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Fri, 16 Mar 2018 07:19:06 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Fri, 16 Mar 2018 07:19:06 GMT
EXPOSE 80/tcp
# Fri, 16 Mar 2018 07:19:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Mar 2018 07:19:07 GMT
CMD ["traefik"]
# Fri, 16 Mar 2018 07:19:07 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:d0993fa6d68be32db4245a1478c59a52017069fa0f127acaf75cffd0b06d2546`  
		Last Modified: Fri, 16 Mar 2018 07:36:18 GMT  
		Size: 14.1 MB (14096624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caa004eb906b265c9cad367574d57eef2925cce583ec2370d5083b0cc575473a`  
		Last Modified: Fri, 16 Mar 2018 07:36:14 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:cancoillotte-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:71cc57f4a22fe87b9f12bb53167adc1e90387c46ef364f18be1f6afb2353a215
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 MB (15567581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3d1bb0a3bed743146ae92c7cf5f64e458274065bf0db78cc9d05b0ea8d246df`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Mon, 26 Feb 2018 23:48:26 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Mon, 26 Feb 2018 23:48:27 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Mon, 26 Feb 2018 23:48:28 GMT
CMD ["/bin/sh"]
# Tue, 27 Feb 2018 18:02:37 GMT
RUN apk --no-cache add ca-certificates
# Thu, 15 Mar 2018 23:48:35 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.5.4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Thu, 15 Mar 2018 23:48:36 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Thu, 15 Mar 2018 23:48:36 GMT
EXPOSE 80/tcp
# Thu, 15 Mar 2018 23:48:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 15 Mar 2018 23:48:36 GMT
CMD ["traefik"]
# Thu, 15 Mar 2018 23:48:36 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:448db471625a0828399cd99cb762a514458df032a36e5a23df975081ab87bc41`  
		Last Modified: Mon, 26 Feb 2018 23:49:11 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dacf7725132f7dfebb9d4f9956e103b93820ea07b89ac6b4676874f2ae3b9d9d`  
		Last Modified: Tue, 27 Feb 2018 18:02:53 GMT  
		Size: 352.2 KB (352159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29c6c49184ca4a01f0e7dc2c34cce4e713523b84a44db881fc1a644e14075b08`  
		Last Modified: Thu, 15 Mar 2018 23:49:10 GMT  
		Size: 13.2 MB (13248919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64c01deba8f5506a1d940299dc0b62784a3da1fece73b049f3f88e3feac7f57d`  
		Last Modified: Thu, 15 Mar 2018 23:49:05 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:cancoillotte-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:cc4e442cece8db3502f2a94d93b28723c27b1922485827526a7cf0231db0eb65
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.2 MB (15162369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a0dc2e38b34426d4066971076be3a6178f08413040cf363feee80250880f293`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:58 GMT
ADD file:45b5d3b8d5490ba7edfca2cf6f54cdcf49c772b0b3a2302ce69a7af061007aa4 in / 
# Wed, 25 Oct 2017 23:28:59 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:59 GMT
CMD ["/bin/sh"]
# Wed, 15 Nov 2017 05:55:26 GMT
RUN apk --no-cache add ca-certificates
# Fri, 16 Mar 2018 04:55:57 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.5.4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Fri, 16 Mar 2018 04:55:58 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Fri, 16 Mar 2018 04:55:59 GMT
EXPOSE 80/tcp
# Fri, 16 Mar 2018 04:55:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Mar 2018 04:56:00 GMT
CMD ["traefik"]
# Fri, 16 Mar 2018 04:56:01 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ff6b7ff3a208b8399e701e7ea1b7edbdc654c8c60d33c6f09a7803e2dda776`  
		Last Modified: Wed, 25 Oct 2017 23:29:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fcc5af9467e49f936c4812ee156fc62e6efaa954ca3165d15b03ae39805932f`  
		Last Modified: Wed, 15 Nov 2017 05:58:01 GMT  
		Size: 351.5 KB (351494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:570e2b9952fc571e6809bc8839fafecf856f0c5ee83d3588679a3a4d5ac63c3e`  
		Last Modified: Fri, 16 Mar 2018 04:58:29 GMT  
		Size: 12.9 MB (12895609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5e29b5b5bdced39fa905d02326dbf79771fc670686491a864f8e273d7066da0`  
		Last Modified: Fri, 16 Mar 2018 04:58:24 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
