## `traefik:alpine`

```console
$ docker pull traefik@sha256:32e32027c1e33a2a503c2e4ebc3e81da0d4b1c20cd584a6c8e89aa7deb56707e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:alpine` - linux; amd64

```console
$ docker pull traefik@sha256:f0101c41eac2ff634b87fe1489c02e78cd5f91b8f23f0c179e5959fa3571e256
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17263450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93613ddb0e25ddb4f99031fa628bf112722f86281855cc39ac7efffc3395be1c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 03:37:55 GMT
RUN apk --no-cache add ca-certificates
# Wed, 12 Sep 2018 03:38:09 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 12 Sep 2018 03:38:09 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Wed, 12 Sep 2018 03:38:09 GMT
EXPOSE 80/tcp
# Wed, 12 Sep 2018 03:38:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 12 Sep 2018 03:38:10 GMT
CMD ["traefik"]
# Wed, 12 Sep 2018 03:38:10 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:c85326782b5d035a27b842bb16349fa48b704cc94161f8973c8a97a5abd6c546`  
		Last Modified: Wed, 12 Sep 2018 03:39:01 GMT  
		Size: 14.7 MB (14747215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c9b2016abc54550090a1073ca098d008383b626cdfe8ace1448b888eeb783f4`  
		Last Modified: Wed, 12 Sep 2018 03:38:58 GMT  
		Size: 321.0 B  
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
