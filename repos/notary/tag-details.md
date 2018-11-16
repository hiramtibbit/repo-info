<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `notary`

-	[`notary:server`](#notaryserver)
-	[`notary:server-0.6.1`](#notaryserver-061)
-	[`notary:signer`](#notarysigner)
-	[`notary:signer-0.6.1`](#notarysigner-061)

## `notary:server`

```console
$ docker pull notary@sha256:d59e4ecc20198447a9818e7f16d0a02ba1d9905de71e5354bc8ee0017304a244
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:server` - linux; amd64

```console
$ docker pull notary@sha256:88bddb53072ae1b018b3b09ac1974be903800e3595ec31401fc3c73ffb66affd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6239608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16b632e954ca01326ecc36ff0c7bb651baf9dcf92366b322b112f697193eb3d5`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 23:57:36 GMT
EXPOSE 4443/tcp
# Tue, 11 Sep 2018 23:57:36 GMT
COPY file:e0e3204ef0b253b4cb710125fb7780914daff79cb06e65bfd4e44ee5c6a69a75 in /notary/server/ 
# Tue, 11 Sep 2018 23:57:37 GMT
COPY file:f2a069fbf8217b93f22caec2c889c13a9ad6c10fd0ce97ffe350a3997ca55804 in /notary/server/ 
# Tue, 11 Sep 2018 23:57:37 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Tue, 11 Sep 2018 23:57:37 GMT
WORKDIR /notary/server
# Tue, 11 Sep 2018 23:57:38 GMT
RUN adduser -D -H -g "" notary
# Tue, 11 Sep 2018 23:57:38 GMT
USER [notary]
# Tue, 11 Sep 2018 23:57:38 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Tue, 11 Sep 2018 23:57:38 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 11 Sep 2018 23:57:38 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:176147d1183da92e05482a5560407bfc56af52bc61b1cb5bdb323d4c7d6a8867`  
		Last Modified: Tue, 11 Sep 2018 23:59:01 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9504875b8162730788ff7df926b72bcbb2bae4690f5195b6d62ec961ffc12056`  
		Last Modified: Tue, 11 Sep 2018 23:59:02 GMT  
		Size: 4.0 MB (4030701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:070baad58e0d2d397143ab9f03defb8b016fc8d57eab900d496727c0e2e00292`  
		Last Modified: Tue, 11 Sep 2018 23:59:01 GMT  
		Size: 377.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9ff31535c882e16ca7c737f9b9852e6b03e10cd1cd3fdf653beecdedf3dffff`  
		Last Modified: Tue, 11 Sep 2018 23:59:01 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:server-0.6.1`

**does not exist** (yet?)

## `notary:signer`

```console
$ docker pull notary@sha256:96b3233123addb3cab68946026db0fbd89e4b08459cfed859205262462695e35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:signer` - linux; amd64

```console
$ docker pull notary@sha256:60ecc9c90abc63af7ed83ee21f127ba460def531caa6442e16a05c509bb30028
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5859841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43acde9041a4fc5108db410b656bb9b376f8b62cf881ba6319bff0f12966d4cf`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 23:57:45 GMT
EXPOSE 4444/tcp
# Tue, 11 Sep 2018 23:57:45 GMT
EXPOSE 7899/tcp
# Tue, 11 Sep 2018 23:57:46 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Tue, 11 Sep 2018 23:57:46 GMT
COPY file:b4880bc0053393461a478577052beead051248deb6011be41a90f10b7243c4a0 in /notary/signer/ 
# Tue, 11 Sep 2018 23:57:46 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Tue, 11 Sep 2018 23:57:46 GMT
WORKDIR /notary/signer
# Tue, 11 Sep 2018 23:57:47 GMT
RUN adduser -D -H -g "" notary
# Tue, 11 Sep 2018 23:57:47 GMT
USER [notary]
# Tue, 11 Sep 2018 23:57:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Tue, 11 Sep 2018 23:57:48 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 11 Sep 2018 23:57:48 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:248c58325b1887532e4b2788c3109560be67d0cdd5e9b7df37c938069a7908f0`  
		Last Modified: Tue, 11 Sep 2018 23:59:14 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1c84de1b31c78046bd4d329107cc3fe955898a648d4fbb3f59e55b185f88c90`  
		Last Modified: Tue, 11 Sep 2018 23:59:15 GMT  
		Size: 3.7 MB (3650996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17e81169eeb5cd70b3c006149c093167587d4eca0cb83231aa8a187254ec0eb7`  
		Last Modified: Tue, 11 Sep 2018 23:59:14 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43344d41cddcde7d6d3357e7640f8ecb373dda4f5d9b09713411017f47b22d92`  
		Last Modified: Tue, 11 Sep 2018 23:59:14 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer-0.6.1`

**does not exist** (yet?)
