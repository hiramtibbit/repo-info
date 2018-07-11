## `traefik:tetedemoine-alpine`

```console
$ docker pull traefik@sha256:1ead48163fdcc13129e1da073c936d98c36cfb85d740450d2aad65a9f19eae7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:tetedemoine-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:4deef77f1919ac49d92ae1e640fd849b184ef92c2cd116101b85833c2396b141
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17267757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2762fe66f6ce85b43023c568ba77ed98a319e105181625ab0757c3e91e6ff92d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 18:46:58 GMT
RUN apk --no-cache add ca-certificates
# Tue, 10 Jul 2018 21:40:01 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.5/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Tue, 10 Jul 2018 21:40:02 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Tue, 10 Jul 2018 21:40:02 GMT
EXPOSE 80/tcp
# Tue, 10 Jul 2018 21:40:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 10 Jul 2018 21:40:02 GMT
CMD ["traefik"]
# Tue, 10 Jul 2018 21:40:03 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:a073c86ecf9e0f29180e80e9638d4c741970695851ea48247276c32c57e40282`  
		Last Modified: Fri, 06 Jul 2018 14:16:26 GMT  
		Size: 2.0 MB (2014658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0c55a74f9d93e30b92f7faffc5770afb8e8d803a8cf3e9e5a3c5a9482dc60a4`  
		Last Modified: Fri, 06 Jul 2018 18:47:37 GMT  
		Size: 351.3 KB (351276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ee9c4cc408948b2dabb958472d3e5ccf47d105bd7a9738bdd95ba954413f3af`  
		Last Modified: Tue, 10 Jul 2018 21:42:04 GMT  
		Size: 14.9 MB (14901481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d49691f3590e5701d4b437625fba1c7bc124d225e740943e081abfe07e99695c`  
		Last Modified: Tue, 10 Jul 2018 21:41:57 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:tetedemoine-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:3724813239e0a7f01b652cf5327bdd97c1e56d0ea9fc3182c87e732695e0023c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.6 MB (16600193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:872e72450ce16793674ced9c0d19351dd73927c19fe071b7d8d9a3ece0c26cdc`
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
# Wed, 11 Jul 2018 08:14:13 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.5/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 11 Jul 2018 08:14:13 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 11 Jul 2018 08:14:13 GMT
EXPOSE 80/tcp
# Wed, 11 Jul 2018 08:14:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Jul 2018 08:14:14 GMT
CMD ["traefik"]
# Wed, 11 Jul 2018 08:14:14 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.5 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:460ff6fb16f3a441230952b50d88364b36232afda7514a0e5c8babe47cd298e5`  
		Last Modified: Wed, 11 Jul 2018 08:14:51 GMT  
		Size: 14.3 MB (14281542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7dec1c21dd9dfd0eba1ed8b069aafd2b7445a049cbe0385bbf02e57ef681c9c`  
		Last Modified: Wed, 11 Jul 2018 08:14:47 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:tetedemoine-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:cf1d6380d94d68e1ca2b08be002cdd26d144d164212e14a59c2e0faf439064d1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.3 MB (16255035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3addbad06b7bdae21ba2fe86322f19df532dcd00cccf5aa843e480d090537642`
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
# Wed, 11 Jul 2018 09:51:30 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.5/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 11 Jul 2018 09:51:37 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 11 Jul 2018 09:51:38 GMT
EXPOSE 80/tcp
# Wed, 11 Jul 2018 09:51:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Jul 2018 09:51:39 GMT
CMD ["traefik"]
# Wed, 11 Jul 2018 09:51:50 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.5 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:c38a1c97f87060fffba6cb042cee602b9401ece9c9ff84e9949f7645ea8be27f`  
		Last Modified: Wed, 11 Jul 2018 09:54:25 GMT  
		Size: 14.0 MB (13988277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3329d98465ee7d7a2647df727b492cad25413b09d030c306627bd7407af4e9cf`  
		Last Modified: Wed, 11 Jul 2018 09:54:19 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
