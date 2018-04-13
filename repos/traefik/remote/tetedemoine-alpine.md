## `traefik:tetedemoine-alpine`

```console
$ docker pull traefik@sha256:34b244439832454dc10ae9c9a4be7367cbbc20c7e73641ebc23d500d35750be3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:tetedemoine-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:a2e3b7c5cc6ee9ebcd3ed95caab9a842d200aca22f3e3ebbd31854d1b9f25a44
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16933348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9189f1fa5a8c8ecb58521a6042409339779226425b397166f0fa1f523e787ed4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 01:28:51 GMT
RUN apk --no-cache add ca-certificates
# Thu, 12 Apr 2018 18:11:13 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.0-rc5/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Thu, 12 Apr 2018 18:11:13 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Thu, 12 Apr 2018 18:11:13 GMT
EXPOSE 80/tcp
# Thu, 12 Apr 2018 18:11:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 12 Apr 2018 18:11:14 GMT
CMD ["traefik"]
# Thu, 12 Apr 2018 18:11:14 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc5 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:49b9c2b57b675dbaa3ad71bc0353f533766b07215ee9869c778883c1039f7466`  
		Last Modified: Thu, 12 Apr 2018 18:24:07 GMT  
		Size: 14.6 MB (14590269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b24a1eda792a0e80d16c868177d08cdbc290c7702bb46f3e08b940db7ae7bf7`  
		Last Modified: Thu, 12 Apr 2018 18:24:03 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:tetedemoine-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:7e34d0a559d3df3d8b833066c780f4a7a45b9b646cd6e00b8100abf385863167
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.3 MB (16297015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0b0274762be088d1ad1bde9266d61ae25d80ac48133325c25d5d13840fdcc9d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:35 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Wed, 25 Oct 2017 23:28:36 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:36 GMT
CMD ["/bin/sh"]
# Tue, 27 Mar 2018 23:48:29 GMT
RUN apk --no-cache add ca-certificates
# Fri, 13 Apr 2018 07:59:58 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.0-rc5/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Fri, 13 Apr 2018 07:59:58 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Fri, 13 Apr 2018 07:59:58 GMT
EXPOSE 80/tcp
# Fri, 13 Apr 2018 07:59:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 13 Apr 2018 07:59:59 GMT
CMD ["traefik"]
# Fri, 13 Apr 2018 07:59:59 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc5 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:9fb8d1c03fc58c04041b17fe9ed11a9273389da04d65602bb6c6a65845a88161`  
		Last Modified: Tue, 27 Mar 2018 23:49:15 GMT  
		Size: 352.2 KB (352153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0862469e2f506f4d4f3816140a9d1dd292b64f4accb92c954baf8ef33777fd9`  
		Last Modified: Fri, 13 Apr 2018 08:00:34 GMT  
		Size: 14.0 MB (13978364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47c0bdec6957096047e26e8e58459b799bbf2462cd4147c2dcdd35996809d0f3`  
		Last Modified: Fri, 13 Apr 2018 08:00:29 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
