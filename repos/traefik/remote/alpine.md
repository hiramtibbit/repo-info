## `traefik:alpine`

```console
$ docker pull traefik@sha256:2f14705932256d8ac7ade7686c3fcce950a9d279ddaf533642ce60d88ee3b2ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:alpine` - linux; amd64

```console
$ docker pull traefik@sha256:4ae4f4a666153052b4eb9837f36f9b24b8eaf7108f67c75cdc2fc013b3d41aa4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17263094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46a2d0f0ffc5d62ba6aefe9590a0041923ff7bb9e680516e197ff3c9f43405ae`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Fri, 07 Sep 2018 19:05:18 GMT
RUN apk --no-cache add ca-certificates
# Fri, 07 Sep 2018 19:05:49 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Fri, 07 Sep 2018 19:05:49 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Fri, 07 Sep 2018 19:05:50 GMT
EXPOSE 80/tcp
# Fri, 07 Sep 2018 19:05:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 07 Sep 2018 19:05:50 GMT
CMD ["traefik"]
# Fri, 07 Sep 2018 19:05:50 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8d4712d1be358e9c3e60fd8a65c71e6c209a7d53c238f635ba114b54d930aa6`  
		Last Modified: Fri, 07 Sep 2018 19:06:45 GMT  
		Size: 309.0 KB (308994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e523320589e5b2ec42d9a051030cfd0bee9a6339ff7a23e03f7772e4bbd570cb`  
		Last Modified: Fri, 07 Sep 2018 19:08:11 GMT  
		Size: 14.7 MB (14747236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11c48cd1bd32b9e6e7175c1971b7d208d116cf6c6e5e4b5c7ff060da43ccf0e7`  
		Last Modified: Fri, 07 Sep 2018 19:08:07 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:888b31cd2d071a5273c21abfef38227f91dddd72be8dbf9a93b99debde1a61a1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.6 MB (16575633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3f65ac3b6aa4a4856300d2b316122268e2e2204401139394abddced1fc85809`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 06 Jul 2018 07:53:29 GMT
ADD file:122e3422d9afa971806601812374fdd9d00c8edc8e9a6df7256e2caa85fab6d1 in / 
# Fri, 06 Jul 2018 07:53:30 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 07:53:30 GMT
CMD ["/bin/sh"]
# Tue, 21 Aug 2018 08:16:06 GMT
RUN apk --no-cache add ca-certificates
# Tue, 21 Aug 2018 08:16:09 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 21 Aug 2018 08:16:09 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Tue, 21 Aug 2018 08:16:10 GMT
EXPOSE 80/tcp
# Tue, 21 Aug 2018 08:16:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 21 Aug 2018 08:16:10 GMT
CMD ["traefik"]
# Tue, 21 Aug 2018 08:16:12 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:ee7d700abbf209aa401ef5d53f86af298a25e8154b3259036e9307d08f255c5d`  
		Last Modified: Fri, 06 Jul 2018 07:53:45 GMT  
		Size: 2.1 MB (2145998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1653f4692c1ccea69cd46121d4f1371957f66e97a20141371dd4da10ebaec19`  
		Last Modified: Fri, 06 Jul 2018 07:53:45 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e3741e04b3be7fb453781e203a24158ad61489d212d7b9285d7236fa567f95e`  
		Last Modified: Tue, 21 Aug 2018 08:16:44 GMT  
		Size: 309.1 KB (309060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8236c8b6db9754e75681c4798034c94e52887a29315d296e2336fd8f71dfa0a9`  
		Last Modified: Tue, 21 Aug 2018 08:16:49 GMT  
		Size: 14.1 MB (14120080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22cbf1b6c827beae4a3b8daa3f64ebb27b71c5368494c594a8358a917225df2b`  
		Last Modified: Tue, 21 Aug 2018 08:16:44 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:a8a3b0ac3eaebe991fbb368ea4a283d95c04dbd121669323d2f06837d681ad42
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.2 MB (16242718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:348d2007b8d6fcbfc7d50189505c1d3ef2a5ddbec90c0e963a0c53493ec7d2eb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 06 Jul 2018 08:41:03 GMT
ADD file:199a5a48bddabaf1f649f58f3b17c323a1aa1a50e939dfdea3542e4041e91b7b in / 
# Fri, 06 Jul 2018 08:41:03 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:41:04 GMT
CMD ["/bin/sh"]
# Tue, 21 Aug 2018 08:49:31 GMT
RUN apk --no-cache add ca-certificates
# Tue, 21 Aug 2018 08:49:45 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 21 Aug 2018 08:49:46 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Tue, 21 Aug 2018 08:49:47 GMT
EXPOSE 80/tcp
# Tue, 21 Aug 2018 08:49:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 21 Aug 2018 08:49:49 GMT
CMD ["traefik"]
# Tue, 21 Aug 2018 08:49:50 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:47e04371c99027fae42871b720fdc6cdddcb65062bfa05f0c3bb0a594cb5bbbd`  
		Last Modified: Wed, 27 Jun 2018 19:15:35 GMT  
		Size: 2.1 MB (2099514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4103359e1ecd9a7253d8b8a041d4e81db1ff4a5e1950bc0e02305d221c9e6c2`  
		Last Modified: Fri, 06 Jul 2018 08:42:09 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87a50d65b66d7801cbbcb03c8219cfe5e06020edaabd8d268d626208d994abb6`  
		Last Modified: Tue, 21 Aug 2018 08:52:38 GMT  
		Size: 308.5 KB (308511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c5f94f835bb1a69147d312a8cd3fa5b43276336fa1fd0999dee051b5bdb11e6`  
		Last Modified: Tue, 21 Aug 2018 08:52:44 GMT  
		Size: 13.8 MB (13834198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e7c73973a88f42ad1f51df7c3f84c4fa832c6cdcae92c9eda63ae864a6b8a94`  
		Last Modified: Tue, 21 Aug 2018 08:52:39 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
